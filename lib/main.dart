import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless does not change ,, changless > but the statefull widget is changefull. can be changed .
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //this widget is the 7adena of the application, and is the container of containers.,,and is also a widget.
      debugShowCheckedModeBanner: false,
      title: 'First Flutter  project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Tareq Marwan Alshawwa 20190221
        // طارق مروان الشوا  20190221
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.blueAccent),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   // child: ClipRRect(
        //   //   borderRadius: BorderRadius.circular(50),
        //   //   child: Image.asset(
        //   //     'assets/images/pic.jpeg',
        //   //     fit: BoxFit.cover,
        //   //     height: 10,
        //   //   ),
        //   // ),
        // ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15),
        //     child: Row(
        //       children: const [
        //         Padding(
        //           padding: EdgeInsets.only(right: 15.0),
        //           child: Icon(
        //             Icons.search,
        //             color: Colors.blue,
        //           ),
        //         ),
        //         Icon(
        //           Icons.notifications,
        //           color: Colors.blue,
        //         )
        //       ],
        //     ),
        //   )
        // ],
      ),
      // wrap with widger that has the attributes you wish to have , wrap them with container because it contains most attributes. or expanded widget. that means that expanded widget makes your widgets better on all devices so use it instead.
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        //vyzor app

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
            width: 100,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child:ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstRoute()),
                  );
                },
                child: const Center(
                  child: Text('Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child:ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
           },
          child: const Center(
          child: Text('Sign In',
          style: TextStyle(fontSize: 18),
        ),
      ),
    ))
        ],
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: 100,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Create Username',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'First Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Last Name',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Age',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
            const SizedBox(
              height: 100,
              width: 100,
            ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ElevatedButton(
            child: const Text('Sign Up!'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          )
          ],

        )

      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: 100,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Create Username',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);          },
              child: const Text('Sign In!'),
            ),
          ],
        )

      ),
    );
  }
}