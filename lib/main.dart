import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Core(),
    );
  }
}

class Core extends StatelessWidget {
  const Core({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              /////SEARCH IN MAIL
              _SearchInEmail(size: size),
              /////SEARCH IN MAIL
              /////////////
              ////MAIL
              _MailArea(size: size),

              ////MAIL
              ////////////
              ///BOTTOMAPPBAR
              _BottomAppBar(),

              ///BOTTOMAPPBAR
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Color(0xffF1F4FB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.mail_outline,
            size: 28,
          ),
          Icon(
            Icons.messenger_outline_sharp,
            size: 28,
          ),
          Icon(
            Icons.people_alt_outlined,
            size: 28,
          ),
          Icon(
            Icons.video_camera_back_outlined,
            size: 28,
          ),
        ],
      ),
    );
  }
}

class _MailArea extends StatelessWidget {
  const _MailArea({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 24, 0, 24),
            child: Text(
              "Inbox",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                _Mail(),
                _Mail(),
                _Mail(),
                _Mail(),
                _Mail(),
                _Mail(),
                _Mail(),
                _Mail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Mail extends StatelessWidget {
  const _Mail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Welcome to Gmail",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff232323)),
                  ),
                ),
                Container(
                  width: 230,
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xff3F3F3F,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "8:00 AM",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Container(
                    padding: EdgeInsets.only(top: 24),
                    child: Icon(
                      Icons.star_border_outlined,
                      color: Colors.black.withOpacity(0.54),
                    )),
                SizedBox(height: 33),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchInEmail extends StatelessWidget {
  const _SearchInEmail({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      height: 58,
      width: size.width,
      decoration: BoxDecoration(
        color: Color(0xffEEF2FB),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20, 17, 17, 17),
                    child: Icon(
                      Icons.dehaze,
                      size: 24,
                    )),
                Container(
                  width: 150,
                  child: Text(
                    "Search in mail",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0, 11, 14, 11),
              child: CircleAvatar(
                radius: 18,
                backgroundImage:
                    NetworkImage("https://logodix.com/logo/76559.jpg"),
              ))
        ],
      ),
    );
  }
}
