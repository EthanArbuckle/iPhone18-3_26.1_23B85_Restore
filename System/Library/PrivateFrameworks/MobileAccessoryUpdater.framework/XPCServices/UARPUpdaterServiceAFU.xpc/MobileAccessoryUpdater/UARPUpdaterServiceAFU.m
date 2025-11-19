@interface UARPUpdaterServiceAFU
- (UARPUpdaterServiceAFU)init;
- (void)getIsBusyStatusWithReply:(id)a3;
- (void)getMatchingServicesListWithReply:(id)a3;
- (void)ioKitRuleMatched:(id)a3;
@end

@implementation UARPUpdaterServiceAFU

- (UARPUpdaterServiceAFU)init
{
  v11.receiver = self;
  v11.super_class = UARPUpdaterServiceAFU;
  v2 = [(UARPUpdaterServiceAFU *)&v11 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.UARPUpdaterServiceAFU", "service");
    log = v2->_log;
    v2->_log = v3;

    v5 = objc_opt_new();
    controllers = v2->_controllers;
    v2->_controllers = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
    v8 = dispatch_queue_create("com.apple.accessoryupdater.UARPUpdaterServiceAFU", v7);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v8;
  }

  return v2;
}

- (void)getMatchingServicesListWithReply:(id)a3
{
  v19 = a3;
  v3 = objc_opt_new();
  v4 = +[NSBundle mainBundle];
  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKeyedSubscript:@"MatchingDevices"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [UARPServiceUpdaterAccessoryMatchingRule alloc];
        v13 = [v11 objectForKeyedSubscript:@"Identifier"];
        v14 = [v11 objectForKeyedSubscript:@"MatchingType"];
        v15 = [v11 objectForKeyedSubscript:@"MatchingDictionary"];
        v16 = [v12 initWithIdentifier:v13 xpcEventStream:v14 matchingDictionary:v15];

        [v3 addObject:v16];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[UARPUpdaterServiceAFU getMatchingServicesListWithReply:]";
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: replied %@ ", buf, 0x16u);
  }

  v19[2](v19, v3);
}

- (void)ioKitRuleMatched:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[UARPUpdaterServiceAFU ioKitRuleMatched:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  v6 = +[UARPUpdaterServiceAFUPreferences sharedInstance];
  v7 = [v6 overriddenFirmwareAssetDirectoryURL];

  v8 = [AppleFirmwareUpdateController alloc];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 registryEntryID]);
  v10 = [v7 path];
  v11 = [v8 initWithRegistryEntryID:v9 fwAssetDirectory:v10];

  if (v11)
  {
    v12 = [(UARPUpdaterServiceAFU *)self controllers];
    [v12 addObject:v11];

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000013E4;
    block[3] = &unk_100004270;
    v16 = v11;
    v17 = self;
    v18 = v4;
    dispatch_async(serialQueue, block);
  }

  else
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100001BB0(v4, v14);
    }
  }
}

- (void)getIsBusyStatusWithReply:(id)a3
{
  v6 = a3;
  v4 = [(UARPUpdaterServiceAFU *)self controllers];
  v5 = [v4 count] != 0;

  v6[2](v6, v5);
}

@end