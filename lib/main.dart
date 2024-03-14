import 'dart:ui';
import "package:flutter/GoogleFont.dart";
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text("Alert Dialog with Stack", style: TextStyle(color: Colors.white, fontFamily: GoogleFont),),
      ),
      body: Center(
        child: ElevatedButton(
          autofocus: true,
          style: ElevatedButton.styleFrom(
            elevation: 20,
            foregroundColor: Colors.black,
            backgroundColor: Colors.red, // foreground
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 70,
                                ),
                                new Text(
                                  "Warning",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                new Text(
                                    "svikvsvsnmGRDGDGRGDRGRkvd\ndvonsgdrgdgdrgdvnsdgrgdsnvjbnsjvs\nkbvibsvsbvdgdgrdgsvisdvnd\nkjhouwedgdrgdrgdghfnvs"),

                                SizedBox(
                                  height: 20,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Close'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -50,
                          child: CircleAvatar(
                            radius: 55,
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(55)),
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1615485737651-580c9159c89a?q=80&w=2081&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('Press Here'),
        ),
      ),
    );
  }
}