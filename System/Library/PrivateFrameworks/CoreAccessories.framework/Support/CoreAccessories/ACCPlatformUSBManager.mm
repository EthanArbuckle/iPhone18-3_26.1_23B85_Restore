@interface ACCPlatformUSBManager
+ (id)sharedManager;
- (ACCPlatformUSBManager)init;
- (BOOL)sendUSBNotificationForEndpointUUID:(id)d withMode:(id)mode andFault:(id)fault force:(BOOL)force;
- (BOOL)setUSBModeForEndpointUUID:(id)d newMode:(int)mode;
- (BOOL)setUSBModeMonitoringForEndpointUUID:(id)d withState:(BOOL)state;
- (int)getCachedUSBFaultForEndpointUUID:(id)d;
- (int)getCachedUSBModeForEndpointUUID:(id)d;
- (int)getUSBModeForEndpointUUID:(id)d;
- (void)addSubscriberForEndpointUUID:(id)d andFeature:(id)feature;
- (void)removeSubscriberForEndpointUUID:(id)d andFeature:(id)feature;
- (void)updateSubscriberForEndpointUUID:(id)d forFeature:(id)feature;
- (void)usbFaultOccurredHandler:(id)handler;
- (void)usbModeChangedHandler:(id)handler;
@end

@implementation ACCPlatformUSBManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__ACCPlatformUSBManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)addSubscriberForEndpointUUID:(id)d andFeature:(id)feature
{
  dCopy = d;
  featureCopy = feature;
  v7 = featureCopy;
  if (dCopy && featureCopy)
  {
    if (featureCopy == @"USBModeSubscribers")
    {
      v33 = @"USBModeCachedState";
      v15 = _getUSBModePluginInstance();
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 USBModeForEndpointUUID:dCopy]);
      v34 = v16;
      v9 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

      v31 = dCopy;
      v32 = v9;
      v12 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers = [v17 usbModeSubscribers];
      [usbModeSubscribers addObject:v12];

      v19 = +[ACCPlatformUSBManager sharedManager];
      subscriberList = [v19 subscriberList];
      v21 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers2 = [v21 usbModeSubscribers];
      [subscriberList setObject:usbModeSubscribers2 forKey:@"USBModeSubscribers"];
LABEL_17:

      goto LABEL_18;
    }

    if (featureCopy == @"USBFaultSubscribers")
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

          v27 = dCopy;
          v28 = v19;
          subscriberList = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v23 = +[ACCPlatformUSBManager sharedManager];
          usbFaultSubscribers = [v23 usbFaultSubscribers];
          [usbFaultSubscribers addObject:subscriberList];

          v21 = +[ACCPlatformUSBManager sharedManager];
          usbModeSubscribers2 = [v21 subscriberList];
          v25 = +[ACCPlatformUSBManager sharedManager];
          usbFaultSubscribers2 = [v25 usbFaultSubscribers];
          [usbModeSubscribers2 setObject:usbFaultSubscribers2 forKey:@"USBFaultSubscribers"];

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

- (void)removeSubscriberForEndpointUUID:(id)d andFeature:(id)feature
{
  dCopy = d;
  featureCopy = feature;
  v7 = featureCopy;
  if (dCopy && featureCopy)
  {
    if (featureCopy == @"USBModeSubscribers")
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers = [v15 usbModeSubscribers];

      v10 = [usbModeSubscribers countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v10)
      {
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(usbModeSubscribers);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = [v19 objectForKey:dCopy];

            if (v20)
            {
              v10 = v19;
              goto LABEL_24;
            }
          }

          v10 = [usbModeSubscribers countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v21 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers2 = [v21 usbModeSubscribers];
      [usbModeSubscribers2 removeObject:v10];

      v23 = +[ACCPlatformUSBManager sharedManager];
      subscriberList = [v23 subscriberList];
      v25 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers3 = [v25 usbModeSubscribers];
      v27 = @"USBModeSubscribers";
      goto LABEL_27;
    }

    if (featureCopy == @"USBFaultSubscribers")
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = +[ACCPlatformUSBManager sharedManager];
      usbFaultSubscribers = [v8 usbFaultSubscribers];

      v10 = [usbFaultSubscribers countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v10)
      {
        v11 = *v31;
        while (2)
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(usbFaultSubscribers);
            }

            v13 = *(*(&v30 + 1) + 8 * j);
            v14 = [v13 objectForKey:dCopy];

            if (v14)
            {
              v10 = v13;
              goto LABEL_26;
            }
          }

          v10 = [usbFaultSubscribers countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v28 = +[ACCPlatformUSBManager sharedManager];
      usbFaultSubscribers2 = [v28 usbFaultSubscribers];
      [usbFaultSubscribers2 removeObject:v10];

      v23 = +[ACCPlatformUSBManager sharedManager];
      subscriberList = [v23 subscriberList];
      v25 = +[ACCPlatformUSBManager sharedManager];
      usbModeSubscribers3 = [v25 usbFaultSubscribers];
      v27 = @"USBFaultSubscribers";
LABEL_27:
      [subscriberList setObject:usbModeSubscribers3 forKey:v27];
    }
  }
}

- (void)updateSubscriberForEndpointUUID:(id)d forFeature:(id)feature
{
  if (d && feature)
  {
    featureCopy = feature;
    dCopy = d;
    [(ACCPlatformUSBManager *)self removeSubscriberForEndpointUUID:dCopy andFeature:featureCopy];
    [(ACCPlatformUSBManager *)self addSubscriberForEndpointUUID:dCopy andFeature:featureCopy];
  }
}

- (int)getUSBModeForEndpointUUID:(id)d
{
  dCopy = d;
  v4 = _getUSBModePluginInstance();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 USBModeForEndpointUUID:dCopy];
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
    v14 = dCopy;
    v15 = 2112;
    v16 = v5;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#USB] getUSBModeForEndpointUUID: %@, usbModePluginInstance=%@ usbMode=%d", &v13, 0x1Cu);
  }

  return v8;
}

- (BOOL)setUSBModeForEndpointUUID:(id)d newMode:(int)mode
{
  dCopy = d;
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
    v22 = dCopy;
    v23 = 1024;
    modeCopy = mode;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#USB] setUSBModeForEndpointUUID: %@ usbModeToSet=%d, usbModePluginInstance=%@", buf, 0x1Cu);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v11 = [v7 USBModeForEndpointUUID:dCopy];
  v12 = v11;
  if ((mode != 1 || v11 != 2) && (mode || v11 != 1))
  {
    if (mode == 1)
    {
      v15 = v7;
      v16 = 1;
LABEL_22:
      v14 = [v15 setUSBMode:v16 forEndpointUUID:dCopy];
      goto LABEL_23;
    }

    if (!mode)
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
  v19 = dCopy;
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

- (BOOL)setUSBModeMonitoringForEndpointUUID:(id)d withState:(BOOL)state
{
  stateCopy = state;
  dCopy = d;
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[ACCPlatformUSBManager sharedManager];
  if (stateCopy)
  {
    [v7 addObserver:v8 selector:"usbModeChangedHandler:" name:ACCPlatformUSBModePlugin_USBModeDidChangeNotification object:0];

    [(ACCPlatformUSBManager *)self addSubscriberForEndpointUUID:dCopy andFeature:@"USBModeSubscribers"];
  }

  else
  {
    [v7 removeObserver:v8 name:ACCPlatformUSBModePlugin_USBModeDidChangeNotification object:0];

    [(ACCPlatformUSBManager *)self removeSubscriberForEndpointUUID:dCopy andFeature:@"USBModeSubscribers"];
  }

  return 1;
}

- (void)usbModeChangedHandler:(id)handler
{
  handlerCopy = handler;
  userInfo = [handlerCopy userInfo];
  v8 = [userInfo objectForKey:ACCPlatformUSBModePlugin_USBMode];

  userInfo2 = [handlerCopy userInfo];

  v7 = [userInfo2 objectForKey:ACCPlatformUSBModePlugin_ConnectionUUID];

  [(ACCPlatformUSBManager *)self sendUSBNotificationForEndpointUUID:v7 withMode:v8 andFault:0 force:0];
}

- (void)usbFaultOccurredHandler:(id)handler
{
  handlerCopy = handler;
  userInfo = [handlerCopy userInfo];
  v10 = [userInfo objectForKey:ACCPlatformUSBFaultPlugin_USBFaultNotification_ConnectionUUIDKey];

  userInfo2 = [handlerCopy userInfo];

  v7 = [userInfo2 objectForKey:ACCPlatformUSBFaultPlugin_USBFaultNotification_FaultTypeKey];

  v8 = _getUSBModePluginInstance();
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 USBModeForEndpointUUID:v10] != 0);
  [(ACCPlatformUSBManager *)self sendUSBNotificationForEndpointUUID:v10 withMode:v9 andFault:v7 force:0];
}

- (int)getCachedUSBModeForEndpointUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = +[ACCPlatformUSBManager sharedManager];
    usbModeSubscribers = [v4 usbModeSubscribers];

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
            objc_enumerationMutation(usbModeSubscribers);
          }

          v18 = [*(v33 + 8 * i) objectForKey:dCopy];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 objectForKey:@"USBModeCachedState"];
            if (v20)
            {
              v30 = v20;
              intValue = [v20 intValue];

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

    intValue = -1;
LABEL_13:
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (int)getCachedUSBFaultForEndpointUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = +[ACCPlatformUSBManager sharedManager];
    usbModeSubscribers = [v4 usbModeSubscribers];

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
            objc_enumerationMutation(usbModeSubscribers);
          }

          v17 = [*(v31 + 8 * i) objectForKey:dCopy];
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

- (BOOL)sendUSBNotificationForEndpointUUID:(id)d withMode:(id)mode andFault:(id)fault force:(BOOL)force
{
  dCopy = d;
  modeCopy = mode;
  faultCopy = fault;
  v12 = 0;
  if (dCopy && modeCopy)
  {
    v13 = [OUTLINED_FUNCTION_2_38() getCachedUSBModeForEndpointUUID:?];
    v14 = [OUTLINED_FUNCTION_2_38() getCachedUSBFaultForEndpointUUID:?];
    intValue = [modeCopy intValue];
    if (intValue == -1 || (v16 = intValue, v13 == intValue) && !force && v14 == [faultCopy intValue])
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

      v12 = platform_usb_send_notification(dCopy, [NSNumber numberWithInt:v19], faultCopy);
      [OUTLINED_FUNCTION_2_38() updateSubscriberForEndpointUUID:? forFeature:?];
      [OUTLINED_FUNCTION_2_38() updateSubscriberForEndpointUUID:? forFeature:?];
    }
  }

  return v12;
}

@end