@interface LegacyAudioController
+ (LegacyAudioController)sharedInstance;
- (LegacyAudioController)init;
- (NSArray)activeAccessories;
- (id)accessorySeen:(id)a3;
- (id)cachedActiveFirmwareAccessories;
- (id)loadMatchingAccessoriesList;
- (id)loadMatchingBSDNotificationsList;
- (id)loadMatchingDASActivityList;
- (void)addActiveAccessory:(id)a3;
- (void)addActiveFirmwareAnalytics:(id)a3;
- (void)dasActivityReceived:(id)a3;
- (void)removeAccessorySeen:(id)a3;
- (void)removeActiveAccessory:(id)a3;
- (void)sendActiveFirmwareAnalyticsEvent;
@end

@implementation LegacyAudioController

+ (LegacyAudioController)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009E0C;
  block[3] = &unk_10002CAE0;
  block[4] = a1;
  if (qword_100038F88 != -1)
  {
    dispatch_once(&qword_100038F88, block);
  }

  v2 = qword_100038F80;

  return v2;
}

- (LegacyAudioController)init
{
  v18.receiver = self;
  v18.super_class = LegacyAudioController;
  v2 = [(LegacyAudioController *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    internalActiveAccessories = v2->_internalActiveAccessories;
    v2->_internalActiveAccessories = v3;

    v5 = objc_alloc_init(NSMutableArray);
    internalAccessoriesSeen = v2->_internalAccessoriesSeen;
    v2->_internalAccessoriesSeen = v5;

    v7 = [(LegacyAudioController *)v2 loadMatchingAccessoriesList];
    matchingAccessoriesList = v2->_matchingAccessoriesList;
    v2->_matchingAccessoriesList = v7;

    v9 = [(LegacyAudioController *)v2 loadMatchingBSDNotificationsList];
    matchingBSDNotificationsList = v2->_matchingBSDNotificationsList;
    v2->_matchingBSDNotificationsList = v9;

    v11 = [(LegacyAudioController *)v2 loadMatchingDASActivityList];
    matchingDASActivityList = v2->_matchingDASActivityList;
    v2->_matchingDASActivityList = v11;

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UARPUpdaterServiceLegacyAudioDatabase"];
    database = v2->_database;
    v2->_database = v13;

    v15 = dispatch_queue_create("com.apple.legacyAudioController.queue", 0);
    queue = v2->_queue;
    v2->_queue = v15;
  }

  return v2;
}

- (id)accessorySeen:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A058;
  v16 = sub_10000A068;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A070;
  block[3] = &unk_10002CB08;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)removeAccessorySeen:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A244;
  v7[3] = &unk_10002C920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addActiveAccessory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A2E8;
  v7[3] = &unk_10002C920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeActiveAccessory:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A3C4;
  v7[3] = &unk_10002C920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (NSArray)activeAccessories
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000A058;
  v10 = sub_10000A068;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A4C0;
  v5[3] = &unk_10002CB30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dasActivityReceived:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A5B0;
  v7[3] = &unk_10002C920;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addActiveFirmwareAnalytics:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A6BC;
  v7[3] = &unk_10002C920;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)loadMatchingAccessoriesList
{
  v2 = MGCopyAnswer();
  if (([v2 BOOLValue] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"/AppleInternal/usr/local/misc/SupportedAccessories-iAUPLegacyAudio.plist";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Use Alternate Accessory List from %@", &v9, 0xCu);
  }

  v3 = [NSURL fileURLWithPath:@"/AppleInternal/usr/local/misc/SupportedAccessories-iAUPLegacyAudio.plist"];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3];
  v5 = [v4 objectForKeyedSubscript:@"MobileAccessoryUpdaterProperties"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"/AppleInternal/usr/local/misc/SupportedAccessories-iAUPLegacyAudio.plist";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Alternate Accessory List from %@", &v9, 0xCu);
  }

  if (!v5)
  {
LABEL_7:
    v6 = +[NSBundle mainBundle];
    v5 = [v6 objectForInfoDictionaryKey:@"MobileAccessoryUpdaterProperties"];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Loaded Native iAUP Accessory List", &v9, 2u);
    }
  }

  v7 = [v5 objectForKey:@"MatchingDevices"];

  return v7;
}

- (id)loadMatchingBSDNotificationsList
{
  v4 = @"com.apple.corespeech.voicetriggerassetchange";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)loadMatchingDASActivityList
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  v3 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [[UARPServiceUpdaterDASMatchingRule alloc] initWithIdentifier:@"PeriodicLaunchActivity" matchingDictionary:v3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (id)cachedActiveFirmwareAccessories
{
  v2 = [(NSUserDefaults *)self->_database objectForKey:@"activeFirmwareAccessories"];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)sendActiveFirmwareAnalyticsEvent
{
  [(NSUserDefaults *)self->_database objectForKey:?];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v31 = 0u;
  v2 = [v25 allValues];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = &AUDeveloperSettingsAccessoryFusingTypeToString_ptr;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = v6[183];
        v10 = objc_opt_class();
        v27 = 0;
        v11 = [v9 unarchivedObjectOfClass:v10 fromData:v8 error:&v27];
        v12 = v27;
        if (v11)
        {
          v13 = [v11 activeFirmwareVersion];

          if (v13)
          {
            v14 = objc_alloc_init(UARPActiveFirmwareAnalyticsEvent);
            v15 = [v11 modelName];
            [(UARPActiveFirmwareAnalyticsEvent *)v14 setModelName:v15];

            v16 = [v11 activeFirmwareVersion];
            [(UARPActiveFirmwareAnalyticsEvent *)v14 setActiveFirmwareVersion:v16];

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [(UARPActiveFirmwareAnalyticsEvent *)v14 modelName];
              v18 = [(UARPActiveFirmwareAnalyticsEvent *)v14 activeFirmwareVersion];
              *buf = 136315650;
              v33 = "[LegacyAudioController sendActiveFirmwareAnalyticsEvent]";
              v34 = 2112;
              v35 = v17;
              v36 = 2112;
              v37 = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: sending active Firmware Event for %@, %@", buf, 0x20u);

              v6 = &AUDeveloperSettingsAccessoryFusingTypeToString_ptr;
            }

            [(UARPActiveFirmwareAnalyticsEvent *)v14 send];
          }

          v19 = [v11 activeANCVersion];

          if (v19)
          {
            v20 = objc_alloc_init(UARPActiveFirmwareAnalyticsEvent);
            v21 = [v11 modelName];
            [(UARPActiveFirmwareAnalyticsEvent *)v20 setModelName:v21];

            v22 = [v11 activeANCVersion];
            [(UARPActiveFirmwareAnalyticsEvent *)v20 setActiveFirmwareVersion:v22];

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [(UARPActiveFirmwareAnalyticsEvent *)v20 modelName];
              v24 = [(UARPActiveFirmwareAnalyticsEvent *)v20 activeFirmwareVersion];
              *buf = 136315650;
              v33 = "[LegacyAudioController sendActiveFirmwareAnalyticsEvent]";
              v34 = 2112;
              v35 = v23;
              v36 = 2112;
              v37 = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: sending active ANC Firmware Event for %@, %@", buf, 0x20u);

              v6 = &AUDeveloperSettingsAccessoryFusingTypeToString_ptr;
            }

            [(UARPActiveFirmwareAnalyticsEvent *)v20 send];
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10001502C(v38, v12, &v39);
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v4);
  }

  [(NSUserDefaults *)self->_database removeObjectForKey:@"activeFirmwareAccessories"];
}

@end