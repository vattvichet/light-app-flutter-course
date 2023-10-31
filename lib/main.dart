import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  bool isLightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Light"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: isLightOn == false ? Colors.black : Colors.amber,
                    spreadRadius: 0.1,
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 80.5,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor:
                      isLightOn == false ? Colors.black : Colors.amber,
                  radius: 78,
                ),
              ),
            ),
            Container(
              width: 5,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                isLightOn = !isLightOn;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  isLightOn == false ? "Turn on!" : "Turn off!",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
