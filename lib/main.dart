import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView and GridView Example'),
        ),
        body: SingleChildScrollView(
          //ListView Example
          child: Column(
            children: [
              const ListTile(
                title: Text('List View Example'),
              ),
              const Divider(),
              ListView(
                shrinkWrap: true,
                children: const [
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Item 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Item 2'),
                  )
                ],
              ),
              //Example of GridView
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Grid View Example'),
                    ),
                    const Divider(),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                            color: Colors.blue,
                            child: Center(
                              child: Text('Item $index',
                                  style: const TextStyle(color: Colors.white)),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
