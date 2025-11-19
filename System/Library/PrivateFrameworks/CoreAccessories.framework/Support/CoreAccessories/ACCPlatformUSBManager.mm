@interface ACCPlatformUSBManager
+ (id)sharedManager;
- (ACCPlatformUSBManager)init;
- (BOOL)sendUSBNotificationForEndpointUUID:(id)a3 withMode:(id)a4 andFault:(id)a5 force:(BOOL)a6;
- (BOOL)setUSBModeForEndpointUUID:(id)a3 newMode:(int)a4;
- (BOOL)setUSBModeMonitoringForEndpointUUID:(id)a3 withState:(BOOL)a4;
- (int)getCachedUSBFaultForEndpointUUID:(id)a3;
- (int)getCachedUSBModeForEndpointUUID:(id)a3;
- (int)getUSBModeForEndpointUUID:(id)a3;
- (void)addSubscriberForEndpointUUID:(id)a3 andFeature:(id)a4;
- (void)removeSubscriberForEndpointUUID:(id)a3 andFeature:(id)a4;
- (void)updateSubscriberForEndpointUUID:(id)a3 forFeature:(id)a4;
- (void)usbFaultOccurredHandler:(id)a3;
- (void)usbModeChangedHandler:(id)a3;
@end

@implementation ACCPlatformUSBManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__ACCPlatformUSBManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_10 != -1)
  {
    dispatch_once(&sharedManager_once_10, block);
  }

  v2 = sharedManager_sharedInstance_10;

  return v2;
}

uint64_t __38__ACCPlatformUSBManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (ACCPlatformUSBManager)init
{
  v7.receiver = self;
  v7.super_class = ACCPlatformUSBManager;
  v2 = [(ACCPlatformUSBManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __29__ACCPlatformUSBManager_init__block_invoke;
    block[3] = &unk_100225968;
    v6 = v2;
    if (init_onceToken != -1)
    {
      dispatch_once(&init_onceToken, block);
    }
  }

  return v3;
}

id __29__ACCPlatformUSBManager_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = objc_alloc_init(NSMutableArray);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v8;

  [*(*(a1 + 32) + 24) setObject:*(*(a1 + 32) + 8) forKey:@"USBModeSubscribers"];
  v11 = *(a1 + 32);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);

  return [v12 setObject:v13 forKey:@"USBFaultSubscribers"];
}

- (void)addSubscriberForEndpointUUID:(id)a3 andFeature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    if (v6 == @"USBModeSubscribers")
    {
      v33 = @"USBModeCachedState";
      v15 = _getUSBModePluginInstance();
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 USBModeForEndpointUUID:v5]);
      v34 = v16;
      v9 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

      v31 = v5;
      v32 = v9;
      v12 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = +[ACCPlatformUSBManager sharedManager];
      v18 = [v17 usbModeSubscribers];
      [v18 addObject:v12];

      v19 = +[ACCPlatformUSBManager sharedManager];
      v20 = [v19 subscriberList];
      v21 = +[ACCPlatformUSBManager sharedManager];
      v22 = [v21 usbModeSubscribers];
      [v20 setObject:v22 forKey:@"USBModeSubscribers"];
LABEL_17:

      goto LABEL_18;
    }

    if (v6 == @"USBFaultSubscribers")
    {
      v8 = _getUSBFaultPluginInstance();
      v9 = v8;
      if (v8)
      {
        if ([v8 getUSBFaultStateforType:2])
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        v11 = [NSNumber numberWithInt:v10];
        v29 = @"USBFaultCachedState";
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = v11;
LABEL_14:
          v30 = v14;
          v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          if (v13)
          {
          }

          v27 = v5;
          v28 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v23 = +[ACCPlatformUSBManager sharedManager];
          v24 = [v23 usbFaultSubscribers];
          [v24 addObject:v20];

          v21 = +[ACCPlatformUSBManager sharedManager];
          v22 = [v21 subscriberList];
          v25 = +[ACCPlatformUSBManager sharedManager];
          v26 = [v25 usbFaultSubscribers];
          [v22 setObject:v26 forKey:@"USBFaultSubscribers"];

          goto LABEL_17;
        }
      }

      else
      {
        v29 = @"USBFaultCachedState";
      }

      v14 = +[NSNull null];
      v12 = 0;
      v13 = 1;
      goto LABEL_14;
    }
  }

LABEL_18:
}

- (void)removeSubscriberForEndpointUUID:(id)a3 andFeature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    if (v6 == @"USBModeSubscribers")
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = +[ACCPlatformUSBManager sharedManager];
      v16 = [v15 usbModeSubscribers];

      v10 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v10)
      {
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v16);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = [v19 objectForKey:v5];

            if (v20)
            {
              v10 = v19;
              goto LABEL_24;
            }
          }

          v10 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v21 = +[ACCPlatformUSBManager sharedManager];
      v22 = [v21 usbModeSubscribers];
      [v22 removeObject:v10];

      v23 = +[ACCPlatformUSBManager sharedManager];
      v24 = [v23 subscriberList];
      v25 = +[ACCPlatformUSBManager sharedManager];
      v26 = [v25 usbModeSubscribers];
      v27 = @"USBModeSubscribers";
      goto LABEL_27;
    }

    if (v6 == @"USBFaultSubscribers")
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = +[ACCPlatformUSBManager sharedManager];
      v9 = [v8 usbFaultSubscribers];

      v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        v11 = *v31;
        while (2)
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v30 + 1) + 8 * j);
            v14 = [v13 objectForKey:v5];

            if (v14)
            {
              v10 = v13;
              goto LABEL_26;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v28 = +[ACCPlatformUSBManager sharedManager];
      v29 = [v28 usbFaultSubscribers];
      [v29 removeObject:v10];

      v23 = +[ACCPlatformUSBManager sharedManager];
      v24 = [v23 subscriberList];
      v25 = +[ACCPlatformUSBManager sharedManager];
      v26 = [v25 usbFaultSubscribers];
      v27 = @"USBFaultSubscribers";
LABEL_27:
      [v24 setObject:v26 forKey:v27];
    }
  }
}

- (void)updateSubscriberForEndpointUUID:(id)a3 forFeature:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    [(ACCPlatformUSBManager *)self removeSubscriberForEndpointUUID:v7 andFeature:v6];
    [(ACCPlatformUSBManager *)self addSubscriberForEndpointUUID:v7 andFeature:v6];
  }
}

- (int)getUSBModeForEndpointUUID:(id)a3
{
  v3 = a3;
  v4 = _getUSBModePluginInstance();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 USBModeForEndpointUUID:v3];
    if (v6 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (v6 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#USB] getUSBModeForEndpointUUID: %@, usbModePluginInstance=%@ usbMode=%d", &v13, 0x1Cu);
  }

  return v8;
}

- (BOOL)setUSBModeForEndpointUUID:(id)a3 newMode:(int)a4
{
  v6 = a3;
  v7 = _getUSBModePluginInstance();
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_bluetooth_copyNameForMacAddress_cold_1();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = v6;
    v23 = 1024;
    v24 = a4;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#USB] setUSBModeForEndpointUUID: %@ usbModeToSet=%d, usbModePluginInstance=%@", buf, 0x1Cu);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v11 = [v7 USBModeForEndpointUUID:v6];
  v12 = v11;
  if ((a4 != 1 || v11 != 2) && (a4 || v11 != 1))
  {
    if (a4 == 1)
    {
      v15 = v7;
      v16 = 1;
LABEL_22:
      v14 = [v15 setUSBMode:v16 forEndpointUUID:v6];
      goto LABEL_23;
    }

    if (!a4)
    {
      v15 = v7;
      v16 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v14 = 0;
    goto LABEL_23;
  }

  v13 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __59__ACCPlatformUSBManager_setUSBModeForEndpointUUID_newMode___block_invoke;
  block[3] = &unk_10022A0B8;
  block[4] = self;
  v19 = v6;
  v20 = v12;
  dispatch_async(v13, block);

  v14 = 1;
LABEL_23:

  return v14;
}

void __59__ACCPlatformUSBManager_setUSBModeForEndpointUUID_newMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  [v1 sendUSBNotificationForEndpointUUID:v2 withMode:v3 andFault:0 force:1];
}

- (BOOL)setUSBModeMonitoringForEndpointUUID:(id)a3 withState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[ACCPlatformUSBManager sharedManager];
  if (v4)
  {
    [v7 addObserver:v8 selector:"usbModeChangedHandler:" name:ACCPlatformUSBModePlugin_USBModeDidChangeNotification object:0];

    [(ACCPlatformUSBManager *)self addSubscriberForEndpointUUID:v6 andFeature:@"USBModeSubscribers"];
  }

  else
  {
    [v7 removeObserver:v8 name:ACCPlatformUSBModePlugin_USBModeDidChangeNotification object:0];

    [(ACCPlatformUSBManager *)self removeSubscriberForEndpointUUID:v6 andFeature:@"USBModeSubscribers"];
  }

  return 1;
}

- (void)usbModeChangedHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKey:ACCPlatformUSBModePlugin_USBMode];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:ACCPlatformUSBModePlugin_ConnectionUUID];

  [(ACCPlatformUSBManager *)self sendUSBNotificationForEndpointUUID:v7 withMode:v8 andFault:0 force:0];
}

- (void)usbFaultOccurredHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v10 = [v5 objectForKey:ACCPlatformUSBFaultPlugin_USBFaultNotification_ConnectionUUIDKey];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:ACCPlatformUSBFaultPlugin_USBFaultNotification_FaultTypeKey];

  v8 = _getUSBModePluginInstance();
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 USBModeForEndpointUUID:v10] != 0);
  [(ACCPlatformUSBManager *)self sendUSBNotificationForEndpointUUID:v10 withMode:v9 andFault:v7 force:0];
}

- (int)getCachedUSBModeForEndpointUUID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[ACCPlatformUSBManager sharedManager];
    v5 = [v4 usbModeSubscribers];

    v14 = OUTLINED_FUNCTION_0_20(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0, 0, 0, 0, 0, 0, 0, v40, v42);
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v18 = [*(v33 + 8 * i) objectForKey:v3];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 objectForKey:@"USBModeCachedState"];
            if (v20)
            {
              v30 = v20;
              v29 = [v20 intValue];

              goto LABEL_13;
            }
          }
        }

        v15 = OUTLINED_FUNCTION_0_20(v21, v22, v23, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v41, v43);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v29 = -1;
LABEL_13:
  }

  else
  {
    v29 = -1;
  }

  return v29;
}

- (int)getCachedUSBFaultForEndpointUUID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[ACCPlatformUSBManager sharedManager];
    v5 = [v4 usbModeSubscribers];

    v14 = OUTLINED_FUNCTION_0_20(v6, v7, v8, v9, v10, v11, v12, v13, 0, 0, 0, 0, 0, 0, 0, 0, v38, v40);
    if (v14)
    {
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = [*(v31 + 8 * i) objectForKey:v3];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 objectForKey:@"USBFaultCachedState"];
            if (v19)
            {
              v28 = v19;
              LODWORD(v14) = [v19 BOOLValue];

              goto LABEL_13;
            }
          }
        }

        v14 = OUTLINED_FUNCTION_0_20(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37, v39, v41);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LODWORD(v14) = 0;
  }

  return v14;
}

- (BOOL)sendUSBNotificationForEndpointUUID:(id)a3 withMode:(id)a4 andFault:(id)a5 force:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = [OUTLINED_FUNCTION_2_38() getCachedUSBModeForEndpointUUID:?];
    v14 = [OUTLINED_FUNCTION_2_38() getCachedUSBFaultForEndpointUUID:?];
    v15 = [v10 intValue];
    if (v15 == -1 || (v16 = v15, v13 == v15) && !a6 && v14 == [v11 intValue])
    {
      v12 = 0;
    }

    else
    {
      if (v16 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = -1;
      }

      if (v16 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      v12 = platform_usb_send_notification(v9, [NSNumber numberWithInt:v19], v11);
      [OUTLINED_FUNCTION_2_38() updateSubscriberForEndpointUUID:? forFeature:?];
      [OUTLINED_FUNCTION_2_38() updateSubscriberForEndpointUUID:? forFeature:?];
    }
  }

  return v12;
}

@end