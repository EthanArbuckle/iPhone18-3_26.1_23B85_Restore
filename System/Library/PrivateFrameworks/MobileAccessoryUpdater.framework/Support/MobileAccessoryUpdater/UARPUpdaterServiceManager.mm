@interface UARPUpdaterServiceManager
- (BOOL)automaticUpdatesDisabledByBootArgForService:(id)a3;
- (BOOL)automaticUpdatesDisabledForIdentifier:(id)a3;
- (BOOL)automaticUpdatesDisabledForService:(id)a3;
- (BOOL)bypassProgressForUARPConsent:(id)a3 sendConsent:(BOOL)a4;
- (BOOL)consentDisabledForModelNumber:(id)a3;
- (BOOL)consentDisabledForUARPConsent:(id)a3 sendConsent:(BOOL)a4;
- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5;
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5;
- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)handleBsdNotificationReceived:(id)a3 identifier:(id)a4;
- (BOOL)handleEAEventStreamMessage:(id)a3 updater:(id)a4 identifer:(id)a5;
- (BOOL)handleIOKitEventStreamMessage:(id)a3 updater:(id)a4 identifier:(id)a5;
- (BOOL)handleXPCStreamEvent:(id)a3;
- (BOOL)isXPCEventStreamSupported:(id)a3;
- (BOOL)queryIsBusy;
- (UARPUpdaterServiceManager)initWithQueue:(id)a3;
- (id)keyComponents:(id)a3;
- (id)queryPendingTssRequestsForUpdater:(id)a3;
- (id)updaterForAccessoryNeedingConsentWithName:(id)a3;
- (id)updaterForRegistryEntryID:(id)a3;
- (id)updaterForServiceName:(id)a3;
- (void)bsdNotificationRulesChangedForUpdaterServiceInstance:(id)a3 notificationNames:(id)a4;
- (void)checkinDASActivities;
- (void)checkinDASActivityRulesForUpdaterServiceInstance:(id)a3 dasActivities:(id)a4;
- (void)consentReceived:(id)a3;
- (void)consentReceivedPostLogoutMode:(id)a3;
- (void)dasActivityRulesChangedForUpdaterServiceInstance:(id)a3 dasActivities:(id)a4;
- (void)dealloc;
- (void)handleDASXPCActivity:(id)a3;
- (void)initServiceNameList;
- (void)matchingRulesChangedForUpdaterServiceInstance:(id)a3 matchingRules:(id)a4;
- (void)queryLaunchRules;
- (void)tssResponse:(id)a3 updaterName:(id)a4;
@end

@implementation UARPUpdaterServiceManager

- (UARPUpdaterServiceManager)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = UARPUpdaterServiceManager;
  v4 = [(UARPUpdaterServiceManager *)&v6 init];
  if (v4)
  {
    v4->_log = os_log_create("com.apple.accessoryupdater.uarp", "updaterManager");
    [(UARPUpdaterServiceManager *)v4 initServiceNameList];
    v4->_queue = a3;
    v4->_busyServiceNameList = objc_alloc_init(NSMutableSet);
  }

  return v4;
}

- (void)initServiceNameList
{
  v3 = +[NSMutableArray array];
  v4 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:[NSURL fileURLWithPath:1 isDirectory:?], 0, 1, 0];
  v5 = [(NSDirectoryEnumerator *)v4 nextObject];
  if (v5)
  {
    v7 = v5;
    *&v6 = 138412290;
    v19 = v6;
    do
    {
      v8 = [NSBundle bundleWithURL:v7, v19];
      if (v8)
      {
        v9 = v8;
        if ([-[NSDictionary objectForKeyedSubscript:](-[NSBundle infoDictionary](v8 "infoDictionary")])
        {
          v10 = [(NSBundle *)v9 bundleIdentifier];
          if (v10)
          {
            v11 = v10;
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v21 = v11;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Located UARP updater bundle %@", buf, 0xCu);
            }

            v13 = [[UARPUpdaterServiceInstance alloc] initWithServiceBundle:v9 delegate:self];
            v14 = [(UARPUpdaterServiceManager *)self automaticUpdatesDisabledForService:[(UARPUpdaterServiceInstance *)v13 serviceName]];
            v15 = [(UARPUpdaterServiceManager *)self automaticUpdatesDisabledByBootArgForService:[(UARPUpdaterServiceInstance *)v13 serviceName]];
            if ((v14 & 1) == 0 && (v15 & 1) == 0)
            {
              v16 = self->_log;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = [(UARPUpdaterServiceInstance *)v13 serviceName];
                *buf = v19;
                v21 = v17;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UARP updater service enabled %@", buf, 0xCu);
              }

              [v3 addObject:v13];
            }
          }
        }
      }

      else
      {
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v19;
          v21 = v7;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to access XPC bundle at %@", buf, 0xCu);
        }
      }

      v7 = [(NSDirectoryEnumerator *)v4 nextObject];
    }

    while (v7);
  }

  self->_updaterList = [[NSArray alloc] initWithArray:v3];
}

- (void)dealloc
{
  [(NSArray *)self->_serviceNameList dealloc];

  v3.receiver = self;
  v3.super_class = UARPUpdaterServiceManager;
  [(UARPUpdaterServiceManager *)&v3 dealloc];
}

- (void)queryLaunchRules
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "First launch. Querying plugin launch rules.", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  updaterList = self->_updaterList;
  v5 = [(NSArray *)updaterList countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(updaterList);
        }

        [*(*(&v9 + 1) + 8 * i) queryLaunchRules];
      }

      v6 = [(NSArray *)updaterList countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)checkinDASActivities
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  updaterList = self->_updaterList;
  v3 = [(NSArray *)updaterList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(updaterList);
        }

        [*(*(&v7 + 1) + 8 * i) checkinDASActivities];
      }

      v4 = [(NSArray *)updaterList countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)matchingRulesChangedForUpdaterServiceInstance:(id)a3 matchingRules:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001679C;
  block[3] = &unk_100081800;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(queue, block);
}

- (void)bsdNotificationRulesChangedForUpdaterServiceInstance:(id)a3 notificationNames:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016A98;
  block[3] = &unk_100081800;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(queue, block);
}

- (void)dasActivityRulesChangedForUpdaterServiceInstance:(id)a3 dasActivities:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016CDC;
  block[3] = &unk_100081800;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(queue, block);
}

- (void)checkinDASActivityRulesForUpdaterServiceInstance:(id)a3 dasActivities:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F94;
  block[3] = &unk_100081800;
  block[4] = a4;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(queue, block);
}

- (id)updaterForServiceName:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  updaterList = self->_updaterList;
  v5 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(updaterList);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "serviceName")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)updaterForAccessoryNeedingConsentWithName:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  updaterList = self->_updaterList;
  v5 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(updaterList);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "accessoriesNeedingConsent")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)bypassProgressForUARPConsent:(id)a3 sendConsent:(BOOL)a4
{
  v4 = a4;
  v7 = -[UARPUpdaterServiceManager updaterForAccessoryNeedingConsentWithName:](self, "updaterForAccessoryNeedingConsentWithName:", [a3 accessoryName]);
  if ([v7 consentDisabledForService])
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = -[UARPUpdaterServiceManager consentDisabledForModelNumber:](self, "consentDisabledForModelNumber:", [a3 appleModelNumber]);
  if (v8 && v4)
  {
LABEL_6:
    [v7 consentReceivedPostLogoutMode:a3];
LABEL_7:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)consentDisabledForUARPConsent:(id)a3 sendConsent:(BOOL)a4
{
  v4 = a4;
  v7 = -[UARPUpdaterServiceManager updaterForAccessoryNeedingConsentWithName:](self, "updaterForAccessoryNeedingConsentWithName:", [a3 accessoryName]);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = [v7 serviceName];
    v13 = 2114;
    v14 = [a3 accessoryName];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Check if consent is diabled for service %{public}@ accessory %{public}@", &v11, 0x16u);
  }

  if ([v7 consentDisabledForService])
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = -[UARPUpdaterServiceManager consentDisabledForModelNumber:](self, "consentDisabledForModelNumber:", [a3 appleModelNumber]);
  if (v9 && v4)
  {
LABEL_8:
    [v7 consentReceived:a3];
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (id)updaterForRegistryEntryID:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  updaterList = self->_updaterList;
  v5 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(updaterList);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 isTrackingIONotificationPortForRegistryEntryID:a3])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)updaterList countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)keyComponents:(id)a3
{
  v4 = [NSCharacterSet characterSetWithCharactersInString:@", "];

  return [a3 componentsSeparatedByCharactersInSet:v4];
}

- (BOOL)isXPCEventStreamSupported:(id)a3
{
  if ([a3 isEqualToString:@"com.apple.iokit.matching"])
  {
    return 1;
  }

  return [a3 isEqualToString:@"com.apple.ExternalAccessory.matching"];
}

- (BOOL)handleXPCStreamEvent:(id)a3
{
  v5 = [(UARPUpdaterServiceManager *)self keyComponents:[NSString stringWithUTF8String:xpc_dictionary_get_string(a3, _xpc_event_key_name)]];
  if ([v5 count] != 3)
  {
    goto LABEL_10;
  }

  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [(UARPUpdaterServiceManager *)self updaterForServiceName:v6];
  if (!v7)
  {
    v11 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      return v11;
    }

    sub_10004B2BC();
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v5 objectAtIndexedSubscript:2];
  if ([v9 isEqualToString:@"com.apple.iokit.matching"])
  {
    if ([(UARPUpdaterServiceManager *)self handleIOKitEventStreamMessage:a3 updater:v8 identifier:v10])
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"com.apple.ExternalAccessory.matching"])
  {
    if ([(UARPUpdaterServiceManager *)self handleEAEventStreamMessage:a3 updater:v8 identifer:v10])
    {
LABEL_14:
      [(NSMutableSet *)self->_busyServiceNameList addObject:v6];
      LOBYTE(v11) = 1;
      return v11;
    }

LABEL_10:
    LOBYTE(v11) = 0;
    return v11;
  }

  v11 = [v9 isEqualToString:@"com.apple.notifyd.matching"];
  if (v11)
  {
    v11 = [(UARPUpdaterServiceManager *)self handleBsdNotificationReceived:v8 identifier:v10];
    if (v11)
    {
      goto LABEL_14;
    }
  }

  return v11;
}

- (void)handleDASXPCActivity:(id)a3
{
  v5 = xpc_activity_copy_criteria(a3);
  if (v5)
  {
    v6 = v5;
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v6);
    v8 = [v7 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "name")}];
    state = xpc_activity_get_state(a3);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[UARPUpdaterServiceManager handleDASXPCActivity:]";
      v20 = 2112;
      v21 = v8;
      v22 = 2048;
      v23 = state;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: activity %@, state %ld", &v18, 0x20u);
    }

    if (state == 2)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "RUN Handler called for activity: %@, criteria: %@", &v18, 0x16u);
      }

      if (!xpc_activity_set_state(a3, 4) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004B32C();
      }

      v12 = [(UARPUpdaterServiceManager *)self keyComponents:v8];
      if ([v12 count] == 3)
      {
        v13 = [v12 objectAtIndexedSubscript:1];
        v14 = [(UARPUpdaterServiceManager *)self updaterForServiceName:v13];
        if (v14)
        {
          v15 = v14;
          v16 = [v7 mutableCopy];
          [v16 removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "name")}];
          v17 = -[UARPServiceUpdaterDASMatchingRule initWithIdentifier:matchingDictionary:]([UARPServiceUpdaterDASMatchingRule alloc], "initWithIdentifier:matchingDictionary:", [v12 objectAtIndexedSubscript:2], v16);
          [v15 dasActivityReceived:v17];
          [(NSMutableSet *)self->_busyServiceNameList addObject:v13];

          if (!xpc_activity_set_state(a3, 5) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10004B40C();
          }
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10004B2BC();
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004B39C();
      }
    }
  }
}

- (BOOL)automaticUpdatesDisabledForIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = CFPreferencesCopyAppValue(@"disabledProductIdentifiers", @"com.apple.mobileaccessoryupdater");
  LOBYTE(v3) = [objc_msgSend(v4 objectForKeyedSubscript:{objc_msgSend(v3, "objectAtIndex:", 0)), "BOOLValue"}];

  return v3;
}

- (BOOL)consentDisabledForModelNumber:(id)a3
{
  v4 = CFPreferencesCopyAppValue(@"disabledConsentProductIdentifiers", @"com.apple.mobileaccessoryupdater");
  LOBYTE(a3) = [objc_msgSend(v4 objectForKeyedSubscript:{a3), "BOOLValue"}];

  return a3;
}

- (BOOL)automaticUpdatesDisabledForService:(id)a3
{
  v5 = CFPreferencesCopyAppValue(@"disabledUARPServices", @"com.apple.mobileaccessoryupdater");
  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{a3), "BOOLValue"}];

  if (v6)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "UARP updater service disabled %@", &v9, 0xCu);
    }
  }

  return v6;
}

- (BOOL)automaticUpdatesDisabledByBootArgForService:(id)a3
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"disable_%@", [objc_msgSend(objc_msgSend(a3 componentsSeparatedByString:{@".", "lastObject"), "lowercaseString"}]);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004B47C();
  }

  [(NSString *)v4 UTF8String];
  os_parse_boot_arg_int();
  return 0;
}

- (BOOL)handleIOKitEventStreamMessage:(id)a3 updater:(id)a4 identifier:(id)a5
{
  v9 = [(UARPUpdaterServiceManager *)self automaticUpdatesDisabledForIdentifier:a5];
  if (v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = a5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Ignoring IOKit event because automatic updates are disabled for %@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = [[UARPServiceUpdaterMatchedIOKitRule alloc] initWithIdentifier:a5 registryEntryID:xpc_dictionary_get_uint64(a3, "IOMatchLaunchServiceID")];
    [a4 ioKitRuleMatched:v11];
  }

  return v9 ^ 1;
}

- (BOOL)handleBsdNotificationReceived:(id)a3 identifier:(id)a4
{
  [a3 disabledProductIdentifiers:{CFPreferencesCopyAppValue(@"disabledProductIdentifiers", @"com.apple.mobileaccessoryupdater"}];
  [a3 bsdNotificationReceived:a4];
  return 1;
}

- (BOOL)handleEAEventStreamMessage:(id)a3 updater:(id)a4 identifer:(id)a5
{
  v9 = [(UARPUpdaterServiceManager *)self automaticUpdatesDisabledForIdentifier:a5];
  if (v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = a5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Ignoring EA event because automatic updates are disabled for %@", &v15, 0xCu);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(a3, "EAMatchingSerialNumber");
    v12 = value;
    if (value)
    {
      if (xpc_get_type(value) == &_xpc_type_string)
      {
        v12 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v12)];
      }

      else
      {
        v12 = 0;
      }
    }

    v13 = [[UARPServiceUpdaterMatchedEARule alloc] initWithEAIdentifier:a5 accessorySerialNumber:v12];
    [a4 eaRuleMatched:v13];
  }

  return v9 ^ 1;
}

- (void)consentReceived:(id)a3
{
  v4 = -[UARPUpdaterServiceManager updaterForAccessoryNeedingConsentWithName:](self, "updaterForAccessoryNeedingConsentWithName:", [a3 accessoryName]);

  [v4 consentReceived:a3];
}

- (void)consentReceivedPostLogoutMode:(id)a3
{
  v4 = -[UARPUpdaterServiceManager updaterForAccessoryNeedingConsentWithName:](self, "updaterForAccessoryNeedingConsentWithName:", [a3 accessoryName]);

  [v4 consentReceivedPostLogoutMode:a3];
}

- (BOOL)queryIsBusy
{
  if (![(NSMutableSet *)self->_busyServiceNameList count])
  {
    return 0;
  }

  v21 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_busyServiceNameList;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = 0;
    v5 = *v31;
    v20 = *v31;
    do
    {
      v6 = 0;
      v23 = v4;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        v8 = [(UARPUpdaterServiceManager *)self updaterForServiceName:v7, v20];
        if ([v8 queryIsServiceBusy])
        {
          v22 = 1;
        }

        else
        {
          v25 = v6;
          v9 = [v8 findAndReleaseAllIONotificationPorts];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v26 + 1) + 8 * i);
                log = self->_log;
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v35 = "[UARPUpdaterServiceManager queryIsBusy]";
                  v36 = 2112;
                  v37 = v7;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Releasing still registered IONotificationPort for %@", buf, 0x16u);
                }

                IONotificationPortDestroy([v14 pointerValue]);
              }

              v11 = [v9 countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v11);
          }

          [v21 addObject:v7];
          v5 = v20;
          v4 = v23;
          v6 = v25;
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v4);
  }

  else
  {
    v22 = 0;
  }

  [(NSMutableSet *)self->_busyServiceNameList minusSet:v21];
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    busyServiceNameList = self->_busyServiceNameList;
    *buf = 136315394;
    v35 = "[UARPUpdaterServiceManager queryIsBusy]";
    v36 = 2112;
    v37 = busyServiceNameList;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: Busy Services: %@", buf, 0x16u);
  }

  return v22;
}

- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v5 = [a3 unsignedLongLongValue];
  v6 = IORegistryEntryIDMatching(v5);
  if (!v6)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB60();
    }

    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  if (!MatchingService)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BAE4();
    }

    return 0;
  }

  v8 = MatchingService;
  v48 = v5;
  v49 = a3;
  entryID = 0;
  memset(name, 0, sizeof(name));
  memset(location, 0, sizeof(location));
  IORegistryEntryGetRegistryEntryID(MatchingService, &entryID);
  IORegistryEntryGetName(v8, name);
  IORegistryEntryGetLocationInPlane(v8, "IOService", location);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    if (location[0])
    {
      v40 = "@";
    }

    else
    {
      v40 = "";
    }

    parent[0] = 136316674;
    if (location[0])
    {
      v41 = location;
    }

    else
    {
      v41 = "";
    }

    *&parent[1] = "IOPortGetParentPortForService";
    LOWORD(parent[3]) = 1024;
    *(&parent[3] + 2) = v8;
    HIWORD(parent[4]) = 2080;
    *&parent[5] = name;
    LOWORD(parent[7]) = 2080;
    *(&parent[7] + 2) = v40;
    HIWORD(parent[9]) = 2080;
    *&parent[10] = v41;
    LOWORD(parent[12]) = 2048;
    *(&parent[12] + 2) = entryID;
    HIWORD(parent[14]) = 1024;
    parent[15] = 1;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: service: %d (%s%s%s, 0x%llx), builtIn: %d", parent, 0x40u);
  }

  v50 = self;
  IOObjectRetain(v8);
  object = v8;
  while (!IORegistryEntryInPlane(v8, "IOPort"))
  {
    LODWORD(v72[0]) = 0;
    ParentEntry = IORegistryEntryGetParentEntry(v8, "IOService", v72);
    IOObjectRelease(v8);
    v8 = v72[0];
    if (ParentEntry)
    {
      v14 = 0;
    }

    else
    {
      v14 = v72[0];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      parent[0] = 136315394;
      *&parent[1] = "IOPortGetParentPortForService";
      LOWORD(parent[3]) = 1024;
      *(&parent[3] + 2) = v14;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Walking up IOService plane for currentService: %d", parent, 0x12u);
      if (!v14)
      {
LABEL_29:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          parent[0] = 136316162;
          if (location[0])
          {
            v15 = "@";
          }

          else
          {
            v15 = "";
          }

          *&parent[1] = "IOPortGetParentPortForService";
          v16 = location;
          if (!location[0])
          {
            v16 = "";
          }

          LOWORD(parent[3]) = 2080;
          *(&parent[3] + 2) = "IOPort";
          HIWORD(parent[5]) = 2080;
          *&parent[6] = name;
          LOWORD(parent[8]) = 2080;
          *(&parent[8] + 2) = v15;
          HIWORD(parent[10]) = 2080;
          *&parent[11] = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Could not find upstream service in %s plane! (service: %s%s%s)", parent, 0x34u);
        }

        goto LABEL_39;
      }
    }

    else if (!v14)
    {
      goto LABEL_29;
    }
  }

  v9 = kCFAllocatorDefault;
  while (1)
  {
    if (v8 != object && IOObjectConformsTo(v8, "IOPort"))
    {
      v10 = IORegistryEntryCreateCFProperty(v8, @"BuiltIn", kCFAllocatorDefault, 0);
      if (v10)
      {
        if ([v10 BOOLValue])
        {
          v42 = object;
          goto LABEL_81;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004B500(v78, &v79);
      }
    }

    parent[0] = 0;
    v11 = IORegistryEntryGetParentEntry(v8, "IOPort", parent);
    IOObjectRelease(v8);
    if (v11)
    {
      break;
    }

    v12 = IOObjectConformsTo(parent[0], "IOService");
    v8 = parent[0];
    if (!v12)
    {
      IOObjectRelease(parent[0]);
      goto LABEL_39;
    }

    if (!parent[0])
    {
      goto LABEL_39;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004B554();
  }

LABEL_39:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004B5D8();
  }

  v17 = object;
  IOObjectRetain(object);
  v18 = 0;
  v19 = 0;
  v9 = kCFAllocatorDefault;
  while (1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      parent[0] = 136315394;
      *&parent[1] = "IOPortGetParentPortForService";
      LOWORD(parent[3]) = 1024;
      *(&parent[3] + 2) = v17;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: Checking currentEntry: %d", parent, 0x12u);
    }

    v20 = IORegistryEntryCreateCFProperty(v17, @"port-type", kCFAllocatorDefault, 0);
    if (v20)
    {
      v21 = v20;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 length] == 4)
      {
        v18 = *[v21 bytes];
        if (v18 >= 0x15)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            parent[0] = 136315394;
            *&parent[1] = "IOPortGetParentPortForService";
            LOWORD(parent[3]) = 2080;
            *(&parent[3] + 2) = "port-type";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid %s property value", parent, 0x16u);
          }

          v18 = 0;
        }
      }
    }

    v22 = IORegistryEntryCreateCFProperty(v17, @"port-number", kCFAllocatorDefault, 0);
    if (v22)
    {
      v23 = v22;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 length] == 4)
      {
        v19 = *[v23 bytes];
        if ((v19 - 100) <= 0xFFFFFF9C)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            parent[0] = 136315394;
            *&parent[1] = "IOPortGetParentPortForService";
            LOWORD(parent[3]) = 2080;
            *(&parent[3] + 2) = "port-type";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Invalid %s property value", parent, 0x16u);
          }

          v19 = 0;
          goto LABEL_60;
        }
      }
    }

    if (v18 && v19)
    {
      break;
    }

LABEL_60:
    parent[0] = 0;
    IORegistryEntryGetParentEntry(v17, "IOService", parent);
    IOObjectRelease(v17);
    v17 = parent[0];
    if (!parent[0])
    {
      goto LABEL_70;
    }
  }

  v54 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(parent, 0, sizeof(parent));
  memset(v72, 0, sizeof(v72));
  IORegistryEntryGetRegistryEntryID(v17, &v54);
  IORegistryEntryGetName(v17, parent);
  IORegistryEntryGetLocationInPlane(v17, "IOService", v72);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    if (LOBYTE(v72[0]))
    {
      v24 = "@";
    }

    else
    {
      v24 = "";
    }

    v61 = "IOPortGetParentPortForService";
    if (LOBYTE(v72[0]))
    {
      v25 = v72;
    }

    else
    {
      v25 = "";
    }

    v62 = 2080;
    v63 = "port-type";
    v64 = 2080;
    v65 = "port-number";
    v66 = 2080;
    v67 = parent;
    v68 = 2080;
    v69 = v24;
    v70 = 2080;
    v71 = v25;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Found registry entry with %s and %s properties! (currentEntry: %s%s%s)", buf, 0x3Eu);
  }

LABEL_70:
  if (!v18 || !v19)
  {
    v42 = object;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B6A0(name, location);
    }

    goto LABEL_95;
  }

  v42 = object;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    parent[0] = 136315650;
    *&parent[1] = "IOPortGetParentPortForService";
    LOWORD(parent[3]) = 1024;
    *(&parent[3] + 2) = v18;
    HIWORD(parent[4]) = 1024;
    parent[5] = v19;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Searching for built-in port... (portType: %d, portNumber: %d)", parent, 0x18u);
  }

  v26 = IOServiceMatching("IOPort");
  v58[0] = @"PortType";
  v59[0] = [NSNumber numberWithUnsignedInt:v18];
  v58[1] = @"PortNumber";
  v27 = [NSNumber numberWithUnsignedInt:v19];
  v58[2] = @"BuiltIn";
  v59[1] = v27;
  v59[2] = &__kCFBooleanTrue;
  [(__CFDictionary *)v26 setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v59 forKeys:v58 count:3], @"IOPropertyMatch"];
  if (v26)
  {
    v28 = CFRetain(v26);
  }

  else
  {
    v28 = 0;
  }

  v29 = IOServiceGetMatchingService(kIOMainPortDefault, v28);
  if (!v29)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B904();
    }

LABEL_95:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004B9A8(name, location);
    }

    IOObjectRelease(v42);
LABEL_98:
    if (os_log_type_enabled(v50[4], OS_LOG_TYPE_ERROR))
    {
      sub_10004BA68();
    }

    return 0;
  }

  v8 = v29;
LABEL_81:
  *&v72[0] = 0;
  IORegistryEntryGetRegistryEntryID(v42, v72);
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"PortDescription", v9, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    if (location[0])
    {
      v31 = "@";
    }

    else
    {
      v31 = "";
    }

    parent[0] = 136316674;
    v32 = location;
    if (!location[0])
    {
      v32 = "";
    }

    *&parent[1] = "IOPortGetParentPortForService";
    LOWORD(parent[3]) = 2080;
    *(&parent[3] + 2) = "built-in";
    HIWORD(parent[5]) = 2112;
    *&parent[6] = CFProperty;
    LOWORD(parent[8]) = 2048;
    *(&parent[8] + 2) = *&v72[0];
    HIWORD(parent[10]) = 2080;
    *&parent[11] = name;
    LOWORD(parent[13]) = 2080;
    *(&parent[13] + 2) = v31;
    HIWORD(parent[15]) = 2080;
    *&v74 = v32;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: Found %s port %@ (0x%llx) for service %s%s%s!", parent, 0x48u);
  }

  IOObjectRelease(v42);
  if (!v8)
  {
    goto LABEL_98;
  }

  v33 = IORegistryEntryCreateCFProperty(v8, @"PortType", 0, 0);
  v34 = IORegistryEntryCreateCFProperty(v8, @"PortNumber", 0, 0);
  IOObjectRelease(v8);
  if (!v33 || !v34)
  {
    if (os_log_type_enabled(v50[4], OS_LOG_TYPE_ERROR))
    {
      sub_10004B888();
    }

    return 0;
  }

  v35 = IOServiceMatching("IOPortTransportState");
  v56[0] = @"ParentPortType";
  v56[1] = @"ParentPortNumber";
  v57[0] = v33;
  v57[1] = v34;
  v56[2] = @"Active";
  v56[3] = @"AuthorizationRequired";
  v57[2] = &__kCFBooleanTrue;
  v57[3] = &__kCFBooleanTrue;
  v56[4] = @"AuthorizationStatus";
  v57[4] = &off_1000881A8;
  [(__CFDictionary *)v35 setObject:[NSDictionary forKeyedSubscript:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v57 forKeys:v56 count:5], @"IOPropertyMatch"];
  *location = 0;
  v36 = IONotificationPortCreate(kIOMasterPortDefault);
  IONotificationPortSetDispatchQueue(v36, v50[3]);
  if (v35)
  {
    v37 = CFRetain(v35);
  }

  else
  {
    v37 = 0;
  }

  v43 = IOServiceAddMatchingNotification(v36, "IOServiceMatched", v37, sub_100019304, 0, location);
  v38 = v43 == 0;
  if (v43)
  {
    if (os_log_type_enabled(v50[4], OS_LOG_TYPE_ERROR))
    {
      sub_10004B790();
    }

    IONotificationPortDestroy(v36);
  }

  else
  {
    v44 = [(dispatch_queue_t *)v50 updaterForRegistryEntryID:v49];
    v45 = v50[4];
    if (v44)
    {
      v46 = v44;
      if (os_log_type_enabled(v50[4], OS_LOG_TYPE_INFO))
      {
        *name = 136315394;
        *&name[4] = "[UARPUpdaterServiceManager enableTRMSystemAuthenticationForRegistryEntryID:]";
        *&name[12] = 2048;
        *&name[14] = v48;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s: Enabling TRM System Authentication Mode for registryEntryID: 0x%llx", name, 0x16u);
      }

      [v46 storeIONotificationPort:+[NSValue valueWithPointer:](NSValue forRegistryEntryID:{"valueWithPointer:", v36, v48), v49}];
    }

    else if (os_log_type_enabled(v50[4], OS_LOG_TYPE_ERROR))
    {
      sub_10004B80C();
    }

    v47 = v50[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001957C;
    block[3] = &unk_100081848;
    v53 = *location;
    dispatch_async(v47, block);
  }

  return v38;
}

- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v5 = [(UARPUpdaterServiceManager *)self updaterForRegistryEntryID:?];
  if (!v5)
  {
    v10 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    sub_10004BCB4(a3);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 findAndReleaseIONotificationPortForRegistryEntryID:a3];
  log = self->_log;
  if (!v7)
  {
    v10 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      return v10;
    }

    sub_10004BC30(a3);
LABEL_11:
    LOBYTE(v10) = 0;
    return v10;
  }

  v9 = v7;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[UARPUpdaterServiceManager disableTRMSystemAuthenticationForRegistryEntryID:]";
    v14 = 2048;
    v15 = [a3 unsignedLongLongValue];
    v16 = 2112;
    v17 = [v6 serviceName];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Releasing registered IONotificationPort for registryEntryID: 0x%llx / %@", &v12, 0x20u);
  }

  IONotificationPortDestroy([v9 pointerValue]);

  LOBYTE(v10) = 1;
  return v10;
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5
{
  v9 = [UARPSupportedAccessory findByAppleModelNumber:a4];
  if (!v9 || (v10 = v9, ![v9 updaterName]))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BDBC();
    }

    return 0;
  }

  v11 = -[UARPUpdaterServiceManager updaterForServiceName:](self, "updaterForServiceName:", [v10 updaterName]);
  if (!v11)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BD38(v10);
    }

    return 0;
  }

  return [v11 dynamicAssetSolicitation:a3 modelNumber:a4 notifyService:a5];
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5
{
  v9 = [a4 count];
  if (v9)
  {
    v22 = a3;
    v23 = a5;
    v10 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [a4 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(a4);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [UARPSupportedAccessory findByAppleModelNumber:v16];
          v18 = v17;
          if (!v13)
          {
            v13 = [v17 updaterName];
          }

          if ([v18 updaterName] && (objc_msgSend(v13, "isEqualToString:", objc_msgSend(v18, "updaterName")) & 1) != 0)
          {
            [v10 addObject:v16];
          }

          else
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v29 = "[UARPUpdaterServiceManager dynamicAssetSolicitation:modelNumbers:notifyService:]";
              v30 = 2112;
              v31 = v18;
              v32 = 2112;
              v33 = v13;
              _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Discarding accessory %@ that does not belong to selected service %@", buf, 0x20u);
            }
          }
        }

        v12 = [a4 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v20 = [(UARPUpdaterServiceManager *)self updaterForServiceName:v13];
    if (v20)
    {
      LOBYTE(v9) = [v20 dynamicAssetSolicitation:v22 modelNumbers:+[NSArray arrayWithArray:](NSArray notifyService:{"arrayWithArray:", v10), v23}];
    }

    else
    {
      LODWORD(v9) = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        sub_10004BE38();
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)queryPendingTssRequestsForUpdater:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[UARPUpdaterServiceManager queryPendingTssRequestsForUpdater:]";
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: For service %@", &v9, 0x16u);
  }

  v6 = [(UARPUpdaterServiceManager *)self updaterForServiceName:a3];
  if (v6)
  {
    v7 = [v6 queryPendingTssRequests];
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BEB4();
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004BF30();
    }

    return &__NSArray0__struct;
  }

  return v7;
}

- (void)tssResponse:(id)a3 updaterName:(id)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[UARPUpdaterServiceManager tssResponse:updaterName:]";
    v11 = 2112;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: For service %@", &v9, 0x16u);
  }

  v8 = [(UARPUpdaterServiceManager *)self updaterForServiceName:a4];
  if (v8)
  {
    [v8 tssResponse:a3];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004BFAC();
  }
}

@end