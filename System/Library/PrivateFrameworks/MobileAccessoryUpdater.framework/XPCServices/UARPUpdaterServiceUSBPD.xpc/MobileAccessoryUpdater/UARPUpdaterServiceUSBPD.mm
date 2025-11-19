@interface UARPUpdaterServiceUSBPD
- (UARPUpdaterServiceUSBPD)init;
- (id)getBSDNotificationsList;
- (id)getMatchingServicesList;
- (void)bsdNotificationReceived:(id)a3;
- (void)dasActivityReceived:(id)a3;
- (void)disabledProductIdentifiers:(id)a3;
- (void)getBSDNotificationsListWithReply:(id)a3;
- (void)getDASActivityListWithReply:(id)a3;
- (void)getMatchingServicesListWithReply:(id)a3;
- (void)ioKitRuleMatched:(id)a3;
@end

@implementation UARPUpdaterServiceUSBPD

- (UARPUpdaterServiceUSBPD)init
{
  v8.receiver = self;
  v8.super_class = UARPUpdaterServiceUSBPD;
  v2 = [(UARPUpdaterServiceUSBPD *)&v8 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "usbpdUpdater");
    log = v2->_log;
    v2->_log = v3;

    v5 = +[UARPUSBPDUpdater sharedInstance];
    usbpdUpdater = v2->_usbpdUpdater;
    v2->_usbpdUpdater = v5;

    [(UARPUSBPDUpdater *)v2->_usbpdUpdater setGoldRestoreDelegate:v2];
  }

  return v2;
}

- (id)getMatchingServicesList
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100025C20(log);
  }

  v47 = objc_alloc_init(NSMutableArray);
  v4 = [UARPSupportedAccessory supportedAccessoriesByTransport:8];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100025CA4();
  }

  v46 = self;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v53;
    v44 = kUARPSupportedAccessoryKeyUSBPDDeviceClassMagSafeCable;
    *&v7 = 136315650;
    v42 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [v11 hardwareID];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v11 hardwareID];
          if ([v14 isMagSafeCable])
          {
            v15 = [UARPMagSafeCable matchingDictionary:1];
            v16 = [UARPServiceUpdaterAccessoryMatchingRule alloc];
            v17 = [v11 identifier];
            v18 = [v16 initWithIdentifier:v17 xpcEventStream:@"com.apple.iokit.matching" matchingDictionary:v15];

            v19 = v46->_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v42;
              v58 = "[UARPUpdaterServiceUSBPD getMatchingServicesList]";
              v59 = 2112;
              v60 = v44;
              v61 = 2112;
              v62 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: %@ matching rule is %@", buf, 0x20u);
            }

            [v47 addObject:v18];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v8);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v20 = v5;
  v21 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v49;
    v45 = kUARPSupportedAccessoryKeyUSBPDDeviceClassUSBCLightning;
    *&v22 = 136315650;
    v43 = v22;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v48 + 1) + 8 * j);
        v27 = [v26 hardwareID];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        if (v28)
        {
          v29 = [v26 hardwareID];
          if ([v29 isUSBCLightning])
          {
            v30 = [UARPMagSafeCable matchingDictionaryUSBCLightning:v29 launchStream:1];
            v31 = [UARPServiceUpdaterAccessoryMatchingRule alloc];
            v32 = [v26 identifier];
            v33 = [v31 initWithIdentifier:v32 xpcEventStream:@"com.apple.iokit.matching" matchingDictionary:v30];

            v34 = v46->_log;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = v43;
              v58 = "[UARPUpdaterServiceUSBPD getMatchingServicesList]";
              v59 = 2112;
              v60 = v45;
              v61 = 2112;
              v62 = v33;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s: %@ matching rule is %@", buf, 0x20u);
            }

            [v47 addObject:v33];
          }
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v23);
  }

  v35 = [UARPMagSafeCable matchingDictionaryUSBCLightningDisconnectLaunchStream:1];
  v36 = [UARPServiceUpdaterAccessoryMatchingRule alloc];
  v37 = [v36 initWithIdentifier:kUARPStringUSBCLightningDisconnectNotification xpcEventStream:@"com.apple.iokit.matching" matchingDictionary:v35];
  v38 = v46->_log;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v58 = "[UARPUpdaterServiceUSBPD getMatchingServicesList]";
    v59 = 2112;
    v60 = kUARPSupportedAccessoryKeyUSBPDDeviceClassUSBCLightning;
    v61 = 2112;
    v62 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s: %@ matching rule is %@", buf, 0x20u);
  }

  [v47 addObject:v37];
  v39 = v46->_log;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v58 = "[UARPUpdaterServiceUSBPD getMatchingServicesList]";
    v59 = 2112;
    v60 = v47;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s: IOKit Matching Rules are %@", buf, 0x16u);
  }

  v40 = [NSArray arrayWithArray:v47];

  return v40;
}

- (void)getMatchingServicesListWithReply:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[UARPUpdaterServiceUSBPD getMatchingServicesListWithReply:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &v7, 0xCu);
  }

  v6 = [(UARPUpdaterServiceUSBPD *)self getMatchingServicesList];
  v4[2](v4, v6);
}

- (void)ioKitRuleMatched:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[UARPUpdaterServiceUSBPD ioKitRuleMatched:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", &v11, 0x16u);
  }

  v6 = [v4 identifier];
  if (v6)
  {
    v7 = [v4 registryEntryID];
    if (v7)
    {
      v8 = IORegistryEntryIDMatching(v7);
      if (v8)
      {
        MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
        if (MatchingService)
        {
          v10 = MatchingService;
          [(UARPUpdaterServiceUSBPD *)self matchingService:MatchingService identifier:v6];
          IOObjectRelease(v10);
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100025D20();
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100025DA0();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100025E20();
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100025E9C();
  }
}

- (id)getBSDNotificationsList
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_100025FA4(log);
  }

  v4 = objc_alloc_init(NSMutableSet);
  v5 = [UARPSupportedAccessory supportedAccessoriesByTransport:8];
  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[UARPUpdaterServiceUSBPD getBSDNotificationsList]";
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Supported Accessories %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) serviceBsdNotifications];
        [v4 unionSet:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100026028();
  }

  v13 = [v4 allObjects];

  return v13;
}

- (void)getBSDNotificationsListWithReply:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[UARPUpdaterServiceUSBPD getBSDNotificationsListWithReply:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &v7, 0xCu);
  }

  v6 = [(UARPUpdaterServiceUSBPD *)self getBSDNotificationsList];
  v4[2](v4, v6);
}

- (void)bsdNotificationReceived:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[UARPUpdaterServiceUSBPD bsdNotificationReceived:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: %@", &v6, 0x16u);
  }

  [(UARPUSBPDUpdater *)self->_usbpdUpdater bsdNotificationReceived:v4];
}

- (void)disabledProductIdentifiers:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000260A4();
  }

  [(UARPUSBPDUpdater *)self->_usbpdUpdater disabledProductIdentifiers:v4];
}

- (void)getDASActivityListWithReply:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[UARPUpdaterServiceUSBPD getDASActivityListWithReply:]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: DAS Matching Rules are %@", buf, 0x16u);
  }

  v8 = [[UARPServiceUpdaterDASMatchingRule alloc] initWithIdentifier:@"USBPDPeriodicLaunchActivity" matchingDictionary:v6];
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  v4[2](v4, v9);
}

- (void)dasActivityReceived:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[UARPUpdaterServiceUSBPD dasActivityReceived:]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &v5, 0xCu);
  }

  [(UARPUSBPDUpdater *)self->_usbpdUpdater dasActivityReceived];
}

@end