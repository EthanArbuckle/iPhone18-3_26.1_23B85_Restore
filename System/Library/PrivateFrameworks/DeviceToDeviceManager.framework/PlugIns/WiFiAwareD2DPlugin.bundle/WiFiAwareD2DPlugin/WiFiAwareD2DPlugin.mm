uint64_t sub_968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DD4;
  v10[3] = &unk_40E0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = 3;
  v10[6] = a3;
  v7 = [[WiFiP2PDNSServiceDiscoveryManager alloc] initUsingWiFiAware:1 serviceCallback:v10];
  v8 = qword_8088;
  qword_8088 = v7;

  objc_autoreleasePoolPop(v6);
  return 0;
}

uint64_t sub_A5C()
{
  v0 = objc_autoreleasePoolPush();
  v1 = qword_8088;
  qword_8088 = 0;

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t sub_A9C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = qword_8088;
  v6 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1 value:a2 resolve:0];
  [v5 startServiceDiscoveryWithConfiguration:v6];

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t sub_B24(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = qword_8088;
  v6 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1 value:a2 resolve:0];
  [v5 stopServiceDiscoveryWithConfiguration:v6];

  objc_autoreleasePoolPop(v4);
  return 0;
}

uint64_t sub_BAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = qword_8088;
  v4 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1];
  [v3 startServiceDiscoveryWithConfiguration:v4];

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t sub_C28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = qword_8088;
  v4 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1];
  [v3 stopServiceDiscoveryWithConfiguration:v4];

  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_CA4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = qword_8088;
  v6 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1 value:a2 resolve:1];
  [v5 startServiceDiscoveryWithConfiguration:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_D34(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = qword_8088;
  v6 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:a1 value:a2 resolve:1];
  [v5 stopServiceDiscoveryWithConfiguration:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_DD4(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F40;
  block[3] = &unk_40C0;
  v11 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = a2;
  v21 = a3;
  v22 = *(a1 + 56);
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v14 = *(a1 + 48);
  v17 = v13;
  v19 = v14;
  CFRunLoopPerformBlock(v11, kCFRunLoopDefaultMode, block);
  CFRunLoopWakeUp(*(a1 + 32));
}