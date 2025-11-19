@interface ThreadNetworkManagerSelfHealHandler
- (ThreadNetworkManagerSelfHealHandler)init;
- (void)cleanUpThreadKeychainEntries;
- (void)initSelfHealThreadNetworkTimer;
- (void)selfHealThreadNetworkTimerHandler;
@end

@implementation ThreadNetworkManagerSelfHealHandler

- (ThreadNetworkManagerSelfHealHandler)init
{
  v3.receiver = self;
  v3.super_class = ThreadNetworkManagerSelfHealHandler;
  return [(ThreadNetworkManagerSelfHealHandler *)&v3 init];
}

- (void)initSelfHealThreadNetworkTimer
{
  v3 = arc4random();
  v4 = sub_100007454(1);
  v5 = v3 % 0x349 + 600;
  v6 = 60 * v5;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
    v31 = 1024;
    v32 = 53;
    v33 = 2048;
    *&v34 = 60 * v5;
    v35 = 1024;
    LODWORD(v36) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d : initiating self heal thread network timer, default waitTime (secs) : %ld, randomWatiTimeInMinutes : %d", buf, 0x22u);
  }

  v7 = sub_10000573C("SelfHealTimeStamp");
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
    v31 = 1024;
    v32 = 58;
    v33 = 2048;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d : initiating self heal thread network timer, selfHealTimeStamp : %f", buf, 0x1Cu);
  }

  v9 = dispatch_time(0, 1000000000 * v6);
  if (v7 != 0.0)
  {
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = v11;

    if (v12 <= 1657720000.0)
    {
      v16 = sub_100007454(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
        v31 = 1024;
        v32 = 82;
        v33 = 2048;
        v34 = v12;
        v35 = 2048;
        v36 = 0x41D8B3B330000000;
        v37 = 2048;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d : Invalid case : current timestamp :%f is less than default time stamp :%f of self heal thread network timer, default wait time in secs : %ld", buf, 0x30u);
      }

      goto LABEL_12;
    }

    v13 = sub_100007454(1);
    v14 = v7 + 604800.0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
      v31 = 1024;
      v32 = 69;
      v33 = 2048;
      v34 = v12;
      v35 = 2048;
      v36 = *&v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s:%d : self heal thread network timer, current time : %f,  next stop to trigger timer : %f ", buf, 0x26u);
    }

    if (v12 < v14)
    {
      v15 = v14 - v12;
      v9 = dispatch_time(0, (v15 * 1000000000.0));
      v16 = sub_100007454(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
        v31 = 1024;
        v32 = 75;
        v33 = 2048;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s:%d : current is less than periodicity of self heal thread network timer, wait time in secs : %f", buf, 0x1Cu);
      }

LABEL_12:

      goto LABEL_17;
    }

    v9 = dispatch_time(0, 0);
  }

LABEL_17:
  v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v18 = dispatch_queue_create("selfHeal.ThreadNetwork.Queue", v17);
  selfHealThreadNetworkTimerQueue = self->_selfHealThreadNetworkTimerQueue;
  self->_selfHealThreadNetworkTimerQueue = v18;

  v20 = self->_selfHealThreadNetworkTimerQueue;
  if (!v20)
  {
    v26 = sub_100007454(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100055A60();
    }

    __assert_rtn("[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]", "ThreadNetworkManager_SelfHealHandler.mm", 91, "false");
  }

  v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v20);
  selfHealThreadNetworkTimer = self->_selfHealThreadNetworkTimer;
  self->_selfHealThreadNetworkTimer = v21;

  v23 = self->_selfHealThreadNetworkTimer;
  if (!v23)
  {
    v27 = sub_100007454(1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000559D8();
    }

    __assert_rtn("[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]", "ThreadNetworkManager_SelfHealHandler.mm", 99, "false");
  }

  dispatch_source_set_timer(v23, v9, 0x2260FF9290000uLL, 0);
  v24 = self->_selfHealThreadNetworkTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100007E38;
  handler[3] = &unk_100078920;
  handler[4] = self;
  dispatch_source_set_event_handler(v24, handler);
  v25 = sub_100007454(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]";
    v31 = 1024;
    v32 = 114;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s:%d : activating self heal thread network timer", buf, 0x12u);
  }

  dispatch_activate(self->_selfHealThreadNetworkTimer);
}

- (void)selfHealThreadNetworkTimerHandler
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ThreadNetworkManagerSelfHealHandler selfHealThreadNetworkTimerHandler]";
    v10 = 1024;
    v11 = 122;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d: Self heal thread network timer handler", &v8, 0x12u);
  }

  v5 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v6 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initApplePrivateStoreWithBackingStore:v5];
  if (v6)
  {
    [(ThreadNetworkManagerSelfHealHandler *)self cleanUpThreadKeychainEntries];
    v7 = sub_100007454(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[ThreadNetworkManagerSelfHealHandler selfHealThreadNetworkTimerHandler]";
      v10 = 1024;
      v11 = 140;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: Self heal thread network timer handler Done", &v8, 0x12u);
    }
  }

  else
  {
    v7 = sub_100007454(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100055AE0();
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)cleanUpThreadKeychainEntries
{
  v2 = sub_100007454(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ThreadNetworkManagerSelfHealHandler cleanUpThreadKeychainEntries]";
    v9 = 1024;
    v10 = 146;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:%d: Starting the cleanup for thread keychain database", &v7, 0x12u);
  }

  v3 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v4 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initApplePrivateStoreWithBackingStore:v3];
  v5 = v4;
  if (v4)
  {
    [v4 cleanThreadKeychainDatabase:&stru_100078960];
  }

  else
  {
    v6 = sub_100007454(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100055B68();
    }
  }
}

@end