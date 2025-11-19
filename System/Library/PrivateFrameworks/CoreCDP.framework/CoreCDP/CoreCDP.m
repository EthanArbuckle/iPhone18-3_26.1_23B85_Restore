uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _CDPLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Hello world!", v4, 2u);
  }

  v2 = +[CDPDXPCListener sharedInstance];
  [v2 start];

  sub_1000009B8();
  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 1;
}

void sub_1000009B8()
{
  v0 = objc_alloc_init(CDPDManateeStateObserver);
  v1 = objc_alloc_init(CDPDAuthObserver);
  [v1 registerListener:v0];
  v2 = objc_alloc_init(CDPDFollowUpController);
  [v1 registerListener:v2];

  v3 = objc_alloc_init(CDPDCircleStateObserver);
  [v3 registerListener:v0];
  v4 = +[CDPDXPCEventObserver sharedObserver];
  [v4 registerListener:v3];

  v5 = +[CDPDXPCEventObserver sharedObserver];
  [v5 registerListener:v1];

  v6 = objc_alloc_init(CDPDBuddyStateObserver);
  v7 = +[CDPDKeychainSync keyChainSync];
  [v6 registerListener:v7];

  v8 = +[CDPDXPCEventObserver sharedObserver];
  [v8 registerListener:v6];

  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.appleaccount"];
  if (v9)
  {
    v10 = [CDPDFirstUnlockObserver alloc];
    v11 = +[CDPLocalDevice sharedInstance];
    v12 = +[CDPDBootSessionIDProvider bootSessionUUID];
    v13 = [v10 initWithUserDefaults:v9 localDevice:v11 bootSessionID:v12];

    [v13 registerListener:v0];
    v14 = +[CDPDXPCEventObserver sharedObserver];
    [v14 registerListener:v13];
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100000BD8(v13);
    }
  }

  v15 = +[CDPDXPCEventObserver sharedObserver];
  [v15 start];
}