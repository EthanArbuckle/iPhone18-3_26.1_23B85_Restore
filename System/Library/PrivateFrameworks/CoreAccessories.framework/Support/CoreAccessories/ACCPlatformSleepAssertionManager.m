@interface ACCPlatformSleepAssertionManager
+ (id)sharedManager;
- (ACCPlatformSleepAssertionManager)init;
- (void)_addSleepAssertionForUUID:(id)a3;
- (void)_removeSleepAssertionForUUID:(id)a3 expiredOnly:(BOOL)a4;
- (void)addSleepAssertionForUUID:(id)a3;
- (void)dealloc;
- (void)powerInfoChangeNotificationHandler:(id)a3;
- (void)updateAssertions;
@end

@implementation ACCPlatformSleepAssertionManager

- (ACCPlatformSleepAssertionManager)init
{
  v10.receiver = self;
  v10.super_class = ACCPlatformSleepAssertionManager;
  v2 = [(ACCPlatformSleepAssertionManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessoryd.sleepAssertionUUIDsLock", 0);
    sleepAssertionUUIDsLock = v2->_sleepAssertionUUIDsLock;
    v2->_sleepAssertionUUIDsLock = v3;

    sleepAssertionUUIDs = v2->_sleepAssertionUUIDs;
    v2->_sleepAssertionUUIDs = 0;

    sleepAssertionTimersForUUIDs = v2->_sleepAssertionTimersForUUIDs;
    v2->_sleepAssertionTimersForUUIDs = 0;

    batteryNotificationClientUUID = v2->_batteryNotificationClientUUID;
    v2->_batteryNotificationClientUUID = 0;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"powerInfoChangeNotificationHandler:" name:ACCPlatformIOKitPowerPlugin_BatteryChargingTypeChanged object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ACCPlatformIOKitPowerPlugin_IsExternalChargerConnected object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:ACCPlatformIOKitPowerPlugin_BatteryChargingTypeChanged object:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDsLock];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __43__ACCPlatformSleepAssertionManager_dealloc__block_invoke;
        block[3] = &unk_100225968;
        block[4] = v10;
        dispatch_sync(v11, block);

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionTimersForUUIDs];
  [v12 removeAllObjects];

  [(ACCPlatformSleepAssertionManager *)self setSleepAssertionTimersForUUIDs:0];
  v13 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];
  [v13 removeAllObjects];

  [(ACCPlatformSleepAssertionManager *)self setSleepAssertionUUIDs:0];
  v14.receiver = self;
  v14.super_class = ACCPlatformSleepAssertionManager;
  [(ACCPlatformSleepAssertionManager *)&v14 dealloc];
}

void __43__ACCPlatformSleepAssertionManager_dealloc__block_invoke(uint64_t a1)
{
  v2 = _getSleepAssertionPluginInstance();
  [v2 destroySleepAssertionForUUID:*(a1 + 32)];
}

- (void)_addSleepAssertionForUUID:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] _addSleepAssertionForUUID: uuid %@", buf, 0xCu);
  }

  if (v4)
  {
    v8 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];

    if (!v8)
    {
      v9 = objc_alloc_init(NSMutableSet);
      [(ACCPlatformSleepAssertionManager *)self setSleepAssertionUUIDs:v9];
    }

    v10 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionTimersForUUIDs];

    if (!v10)
    {
      v11 = +[NSMutableDictionary dictionary];
      [(ACCPlatformSleepAssertionManager *)self setSleepAssertionTimersForUUIDs:v11];
    }

    ConnectionWithUUID = acc_manager_getConnectionWithUUID(v4);
    if (ConnectionWithUUID)
    {
      Type = acc_connection_getType(ConnectionWithUUID);
      v13 = Type == 4;
    }

    else
    {
      v13 = 0;
      Type = 11;
    }

    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    dispatch_source_set_timer(v14, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __62__ACCPlatformSleepAssertionManager__addSleepAssertionForUUID___block_invoke;
    handler[3] = &unk_100225A08;
    handler[4] = self;
    v15 = v4;
    v48 = v15;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_activate(v14);
    v16 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionTimersForUUIDs];
    [v16 setObject:v14 forKey:v15];

    v17 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];
    [v17 addObject:v15];

    v18 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];
    v19 = [v18 count];

    if (v19 == 1)
    {
      v20 = +[NSNotificationCenter defaultCenter];
      [v20 addObserver:self selector:"powerInfoChangeNotificationHandler:" name:ACCPlatformIOKitPowerPlugin_IsExternalChargerConnected object:0];

      v21 = _getACPowerPluginInstance();
      v22 = [v21 createBatteryNotificationClient];
      [(ACCPlatformSleepAssertionManager *)self setBatteryNotificationClientUUID:v22];

      v23 = _getACPowerPluginInstance();
      -[ACCPlatformSleepAssertionManager setIsOnAC:](self, "setIsOnAC:", [v23 isExternalChargerConnected]);

      v24 = _getACPowerPluginInstance();
      -[ACCPlatformSleepAssertionManager setChargingTypeExternalIsInductive:](self, "setChargingTypeExternalIsInductive:", [v24 getExternalBatteryChargingTypeIsInductive]);
    }

    if ([(ACCPlatformSleepAssertionManager *)self isOnAC])
    {
      v25 = acc_userDefaults_BOOLForKey(@"IgnoreIsOnAC") ^ 1;
    }

    else
    {
      v25 = 0;
    }

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v26 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v26 = &_os_log_default;
      v27 = &_os_log_default;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(ACCPlatformSleepAssertionManager *)self isOnAC];
      v29 = [(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive];
      *buf = 138413314;
      v50 = v15;
      v51 = 1024;
      v52 = v28;
      v53 = 1024;
      v54 = v25;
      v55 = 1024;
      v56 = v29;
      v57 = 1024;
      v58 = v13;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Addded sleep assertion timer for uuid %@, isOnAC %d -> %d, chargingTypeExternalIsInductive %d, bIsInductiveConnection %d", buf, 0x24u);
    }

    if (v25 && ![(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive])
    {
      v43 = _getSleepAssertionPluginInstance();
      [v43 createSleepAssertionForUUID:v15];

      if ((v13 | platform_systemInfo_isWatch()) != 1)
      {
LABEL_44:
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v40 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v40 = &_os_log_default;
          v41 = &_os_log_default;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v42 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDs];
          *buf = 138412290;
          v50 = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[#SleepAssertions] sleepAssertionUUIDs: %@", buf, 0xCu);
        }

        goto LABEL_53;
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v31 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v31 = &_os_log_default;
        v44 = &_os_log_default;
      }

      v33 = 300000000000;
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_43:

        v37 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionTimersForUUIDs];
        v38 = [v37 objectForKey:v15];
        v39 = dispatch_time(0, v33);
        dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0);

        goto LABEL_44;
      }

      v45 = [(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive];
      *buf = 134218496;
      v50 = 300;
      v51 = 1024;
      v52 = Type;
      v53 = 1024;
      v54 = v45;
      v34 = "[#SleepAssertions] Holding sleep assertion for [%lld] secs on connectionType:%{coreacc:ACCConnection_Type_t}d, externalIsInductive %d";
      v35 = v31;
      v36 = 24;
    }

    else
    {
      v30 = _getSleepAssertionPluginInstance();
      [v30 createSleepAssertionForUUID:v15];

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v31 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v31 = &_os_log_default;
        v32 = &_os_log_default;
      }

      v33 = 5000000000;
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 134218240;
      v50 = 5;
      v51 = 1024;
      v52 = Type;
      v34 = "[#SleepAssertions] Holding temporary sleep assertion for [%lld] secs on connectionType:%{coreacc:ACCConnection_Type_t}d";
      v35 = v31;
      v36 = 18;
    }

    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
    goto LABEL_43;
  }

LABEL_53:
}

void __62__ACCPlatformSleepAssertionManager__addSleepAssertionForUUID___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Sleep assertion timer fired!!  Cleaning up held sleep assertion.", v7, 2u);
  }

  v5 = [*(a1 + 32) sleepAssertionTimersForUUIDs];
  v6 = [v5 objectForKey:*(a1 + 40)];

  if (v6)
  {
    dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  [*(a1 + 32) removeExpiredSleepAssertionForUUID:*(a1 + 40)];
}

- (void)addSleepAssertionForUUID:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 7;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] addSleepAssertionForUUID: uuid %@", buf, 0xCu);
  }

  if (v4)
  {
    v8 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDsLock];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __61__ACCPlatformSleepAssertionManager_addSleepAssertionForUUID___block_invoke;
    v9[3] = &unk_100225A08;
    v9[4] = self;
    v10 = v4;
    dispatch_sync(v8, v9);
  }
}

- (void)_removeSleepAssertionForUUID:(id)a3 expiredOnly:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDsLock];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __77__ACCPlatformSleepAssertionManager__removeSleepAssertionForUUID_expiredOnly___block_invoke;
    block[3] = &unk_100225A30;
    v9 = v6;
    v10 = self;
    v11 = a4;
    dispatch_sync(v7, block);
  }
}

void __77__ACCPlatformSleepAssertionManager__removeSleepAssertionForUUID_expiredOnly___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Remove sleep assertion timer for uuid %@", &v17, 0xCu);
  }

  v6 = [*(a1 + 40) sleepAssertionTimersForUUIDs];
  [v6 removeObjectForKey:*(a1 + 32)];

  if ((*(a1 + 48) & 1) == 0)
  {
    v7 = [*(a1 + 40) sleepAssertionUUIDs];
    [v7 removeObject:*(a1 + 32)];
  }

  v8 = [*(a1 + 40) sleepAssertionUUIDs];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = _getACPowerPluginInstance();
    v11 = [*(a1 + 40) batteryNotificationClientUUID];
    [v10 destroyBatteryNotificationsForClient:v11];

    [*(a1 + 40) setBatteryNotificationClientUUID:0];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 removeObserver:*(a1 + 40) name:ACCPlatformIOKitPowerPlugin_IsExternalChargerConnected object:0];
  }

  v13 = _getSleepAssertionPluginInstance();
  [v13 destroySleepAssertionForUUID:*(a1 + 32)];

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v14 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = [*(a1 + 40) sleepAssertionUUIDs];
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[#SleepAssertions] sleepAssertionUUIDs: %@", &v17, 0xCu);
  }
}

- (void)powerInfoChangeNotificationHandler:(id)a3
{
  v4 = [a3 name];
  if (([v4 isEqualToString:ACCPlatformIOKitPowerPlugin_IsExternalChargerConnected] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", ACCPlatformIOKitPowerPlugin_BatteryChargingTypeChanged))
  {
    v5 = [(ACCPlatformSleepAssertionManager *)self isOnAC];
    v6 = [(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive];
    v7 = _getACPowerPluginInstance();
    -[ACCPlatformSleepAssertionManager setIsOnAC:](self, "setIsOnAC:", [v7 isExternalChargerConnected]);

    v8 = _getACPowerPluginInstance();
    -[ACCPlatformSleepAssertionManager setChargingTypeExternalIsInductive:](self, "setChargingTypeExternalIsInductive:", [v8 getExternalBatteryChargingTypeIsInductive]);

    if (gLogObjects && gNumLogObjects >= 7)
    {
      v9 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138413314;
      v12 = v4;
      v13 = 1024;
      v14 = [(ACCPlatformSleepAssertionManager *)self isOnAC];
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = [(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive];
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#SleepAssertions] Received notification: %@, isOnAC: %d, oldVal: %d, chargingTypeExternalIsInductive: %d, oldExtInductive: %d\n", &v11, 0x24u);
    }

    if (v5 != [(ACCPlatformSleepAssertionManager *)self isOnAC]|| v6 != [(ACCPlatformSleepAssertionManager *)self chargingTypeExternalIsInductive])
    {
      [(ACCPlatformSleepAssertionManager *)self updateAssertions];
    }
  }
}

- (void)updateAssertions
{
  v3 = [(ACCPlatformSleepAssertionManager *)self sleepAssertionUUIDsLock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ACCPlatformSleepAssertionManager_updateAssertions__block_invoke;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __52__ACCPlatformSleepAssertionManager_updateAssertions__block_invoke(uint64_t a1)
{
  v42 = _getSleepAssertionPluginInstance();
  if ([*(a1 + 32) isOnAC])
  {
    v2 = acc_userDefaults_BOOLForKey(@"IgnoreIsOnAC") ^ 1;
  }

  else
  {
    v2 = 0;
  }

  if (gLogObjects)
  {
    v3 = gNumLogObjects < 7;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) isOnAC];
    v7 = [*(a1 + 32) chargingTypeExternalIsInductive];
    *buf = 67109632;
    *v48 = v6;
    *&v48[4] = 1024;
    *&v48[6] = v2;
    LOWORD(v49) = 1024;
    *(&v49 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] updateAssertions: isOnAC %d -> %d, chargingTypeExternalIsInductive %d", buf, 0x14u);
  }

  v8 = [NSSet alloc];
  v9 = [*(a1 + 32) sleepAssertionUUIDs];
  v10 = [v8 initWithSet:v9 copyItems:0];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v44;
    *&v12 = 134218240;
    v40 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        v17 = [*(a1 + 32) sleepAssertionTimersForUUIDs];
        v18 = [v17 objectForKey:v16];

        if (v18 || ([*(a1 + 32) _addSleepAssertionForUUID:v16], objc_msgSend(*(a1 + 32), "sleepAssertionTimersForUUIDs"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", v16), v18 = objc_claimAutoreleasedReturnValue(), v19, v18))
        {
          if (!v2 || ([*(a1 + 32) chargingTypeExternalIsInductive] & 1) != 0)
          {
            [v42 destroySleepAssertionForUUID:v16];
            v20 = gLogObjects;
            v21 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v22 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v40;
                *v48 = v20;
                *&v48[8] = 1024;
                LODWORD(v49) = v21;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = &_os_log_default;
              v22 = &_os_log_default;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v48 = v16;
              v24 = v22;
              v25 = "[#SleepAssertions] Disable sleep assertion for uuid %@";
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          [v42 createSleepAssertionForUUID:v16];
          v28 = platform_systemInfo_isWatch();
          v29 = gLogObjects;
          v30 = gNumLogObjects;
          if (gLogObjects)
          {
            v31 = gNumLogObjects <= 6;
          }

          else
          {
            v31 = 1;
          }

          v32 = !v31;
          if (v28)
          {
            if (v32)
            {
              v33 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v40;
                *v48 = v29;
                *&v48[8] = 1024;
                LODWORD(v49) = v30;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v37 = &_os_log_default;
              v33 = &_os_log_default;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              *v48 = 300;
              *&v48[8] = 2112;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[#SleepAssertions] Holding sleep assertion for [%lld] secs for uuid %@", buf, 0x16u);
            }

            v27 = dispatch_time(0, 300000000000);
            v26 = v18;
          }

          else
          {
            if (v32)
            {
              v22 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v40;
                *v48 = v29;
                *&v48[8] = 1024;
                LODWORD(v49) = v30;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v38 = &_os_log_default;
              v22 = &_os_log_default;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v48 = v16;
              v24 = v22;
              v25 = "[#SleepAssertions] Holding sleep assertion (no timeout) for uuid %@";
LABEL_31:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
            }

LABEL_32:

            v26 = v18;
            v27 = -1;
          }

          dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
          goto LABEL_34;
        }

        v34 = gLogObjects;
        v35 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v18 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v40;
            *v48 = v34;
            *&v48[8] = 1024;
            LODWORD(v49) = v35;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v36 = &_os_log_default;
          v18 = &_os_log_default;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v48 = v16;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[#SleepAssertions] Failed to get sleep assertion for uuid %@ !!", buf, 0xCu);
        }

LABEL_34:

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v39 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      v13 = v39;
    }

    while (v39);
  }
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__ACCPlatformSleepAssertionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __49__ACCPlatformSleepAssertionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

@end