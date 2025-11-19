@interface ACCPlatformPowerManager
+ (id)sharedManager;
- (ACCPlatformPowerManager)init;
- (void)addAccessoryForEndpointUID:(id)a3 andBitmask:(unint64_t)a4 andOldBitmask:(unint64_t)a5;
- (void)removeAccessoryForEndpointUID:(id)a3;
@end

@implementation ACCPlatformPowerManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__ACCPlatformPowerManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_2 != -1)
  {
    dispatch_once(&sharedManager_once_2, block);
  }

  v2 = sharedManager_sharedInstance_2;

  return v2;
}

uint64_t __40__ACCPlatformPowerManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_2 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (ACCPlatformPowerManager)init
{
  v5.receiver = self;
  v5.super_class = ACCPlatformPowerManager;
  v2 = [(ACCPlatformPowerManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(ACCPlatformPowerManager *)v2 setPowerAccessories:v3];
  }

  return v2;
}

- (void)addAccessoryForEndpointUID:(id)a3 andBitmask:(unint64_t)a4 andOldBitmask:(unint64_t)a5
{
  v7 = a3;
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
      platform_connectionInfo_configStreamGetCategories_cold_2();
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
    v18 = 138412802;
    v19 = v7;
    v20 = 2048;
    v21 = a4;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#Power] addAccessoryForEndpointUID: endpointUID %@, updateTypesBitMask %llx, oldUpdateTypesBitmask %llx", &v18, 0x20u);
  }

  if (v7)
  {
    v11 = +[ACCPlatformPowerManager sharedManager];
    v12 = [v11 powerAccessories];
    v13 = [v12 objectForKey:v7];

    if (v13)
    {
      [(ACCPlatformPowerInfo *)v13 stopPowerUpdates];
      [(ACCPlatformPowerInfo *)v13 setUpdateTypesBitmask:a4];
      [(ACCPlatformPowerInfo *)v13 setOldUpdateTypesBitmask:a5];
      v14 = [(ACCPlatformPowerInfo *)v13 applePencilBatteryNotificationClientUUID];

      if (!v14)
      {
LABEL_20:
        [(ACCPlatformPowerInfo *)v13 startPowerUpdates];
        goto LABEL_26;
      }

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v13 selector:"powerInfoChangeNotificationHandler:" name:ACCPlatformIOKitPowerPlugin_BatteryChargeLevel object:0];
    }

    else
    {
      v13 = [[ACCPlatformPowerInfo alloc] initWithEndpointUID:v7 andBitmask:a4 andOldBitmask:a5];
      v15 = +[ACCPlatformPowerManager sharedManager];
      v16 = [v15 powerAccessories];
      [v16 setObject:v13 forKey:v7];
    }

    goto LABEL_20;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v13 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "[#Power] addAccessoryForEndpointUID, invalid endpointUID passed in! endpointUID=%@", &v18, 0xCu);
  }

LABEL_26:
}

- (void)removeAccessoryForEndpointUID:(id)a3
{
  v8 = a3;
  v3 = +[ACCPlatformPowerManager sharedManager];
  v4 = [v3 powerAccessories];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    [v5 stopPowerUpdates];
    v6 = +[ACCPlatformPowerManager sharedManager];
    v7 = [v6 powerAccessories];
    [v7 removeObjectForKey:v8];
  }
}

@end