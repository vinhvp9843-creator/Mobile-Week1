import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceFrame(
        device: Devices.ios.iPhone13,
        isFrameVisible: true,
        orientation: Orientation.portrait,
        screen: const ProfileExactlyLikeAssignment(),
      ),
    );
  }
}

class ProfileExactlyLikeAssignment extends StatelessWidget {
  const ProfileExactlyLikeAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black54, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Colors.black54, size: 22),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar 
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFE3F2FD),
              child: CircleAvatar(
                radius: 47,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=500&h=500&fit=crop&crop=face',
                ),
              ),
            ),

            SizedBox(height: 24),

            // Tên 
            Text(
              'Johan Smith',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF424242),
              ),
            ),

            SizedBox(height: 8),
            Text(
              'California, USA',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 198, 193, 193),
              ),
            ),
          ],
        ),
      ),
    );
  }
}