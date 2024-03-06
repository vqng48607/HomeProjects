import 'package:flutter/material.dart';

void main(){
  BoxDecoration companyNameDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.yellow,
      width: 2.0,
    )
  );

  Widget companyNameWidget = Container(
    alignment: Alignment.center,
    height: 40,
    decoration: companyNameDecoration,
    margin: const EdgeInsets.only(left: 80.0, right: 80.0),

    child: const Text("Company Name", 
      style: TextStyle(
        color: Colors.blue, 
        fontSize: 30
      ),
    ),
  );

  Widget questionWidget = const Text("Question",
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 15
    ),
  );

  Widget thumbsWidget = const Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      Icon(
        Icons.thumb_up,
        color: Colors.amber,
        size: 30,
      ),
      Icon(
        Icons.thumb_down,
        color: Colors.amber,
        size: 30,
      ),
    ],
  );

  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          title: companyNameWidget,
        ),  
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            questionWidget,
            thumbsWidget,
          ],
        ),
      ),
    ),
  );
}         