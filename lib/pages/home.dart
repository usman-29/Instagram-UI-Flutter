import 'package:flutter/material.dart';
import 'package:practice_app/util/bubble_stories.dart';
import 'package:practice_app/util/user_posts.dart';

class UserName extends StatelessWidget {
  UserName({super.key});
  final List people = [
    "Mark",
    "Steve",
    "Bill",
    "David",
    "Tom",
    "Jerry",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Instagram"),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return UserPosts(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
