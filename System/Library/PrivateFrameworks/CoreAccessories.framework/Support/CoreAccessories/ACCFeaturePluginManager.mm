@interface ACCFeaturePluginManager
+ (id)sharedManager;
- (ACCFeaturePluginManager)init;
- (unint64_t)addFeaturePlugInBundleSearchPaths;
- (unint64_t)initAllPlugIns;
- (unint64_t)loadAllBundles;
- (unint64_t)startAllPlugIns;
- (unint64_t)stopAllPlugIns;
- (void)initAllPlugIns;
- (void)loadAllBundles;
@end

@implementation ACCFeaturePluginManager

- (ACCFeaturePluginManager)init
{
  v8.receiver = self;
  v8.super_class = ACCFeaturePluginManager;
  v2 = [(ACCPluginManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(ACCFeaturePluginManager *)v2 addFeaturePlugInBundleSearchPaths];
  }

  return v2;
}

- (unint64_t)addFeaturePlugInBundleSearchPaths
{
  v8.receiver = self;
  v8.super_class = ACCFeaturePluginManager;
  v3 = [(ACCPluginManager *)&v8 addBundleSearchPath:@"/System/Library/CoreAccessories/PlugIns/Features" recursive:0];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)self addTransportPlugInBundleSearchPaths];
  }

  return v3;
}

- (unint64_t)loadAllBundles
{
  v11.receiver = self;
  v11.super_class = ACCFeaturePluginManager;
  v3 = [(ACCPluginManager *)&v11 loadBundlesWithExtension:@"feature"];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Loaded %lu feature plugin bundle(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCFeaturePluginManager *)self loadAllBundles];
  }

  return v3;
}

- (unint64_t)initAllPlugIns
{
  v11.receiver = self;
  v11.super_class = ACCFeaturePluginManager;
  initAllPlugIns = [(ACCPluginManager *)&v11 initAllPlugIns];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = initAllPlugIns;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initialized %lu feature plugin(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ACCFeaturePluginManager *)self initAllPlugIns];
  }

  return initAllPlugIns;
}

- (unint64_t)startAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCFeaturePluginManager;
  startAllPlugIns = [(ACCPluginManager *)&v7 startAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = startAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started %lu feature plugin(s)", buf, 0xCu);
  }

  return startAllPlugIns;
}

- (unint64_t)stopAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCFeaturePluginManager;
  stopAllPlugIns = [(ACCPluginManager *)&v7 stopAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = stopAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stopped %lu feature plugin(s)", buf, 0xCu);
  }

  return stopAllPlugIns;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__ACCFeaturePluginManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_4 != -1)
  {
    dispatch_once(&sharedManager_once_4, block);
  }

  v2 = sharedManager_sharedInstance_4;

  return v2;
}

uint64_t __40__ACCFeaturePluginManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_4 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (void)loadAllBundles
{
  a2->receiver = self;
  a2->super_class = ACCFeaturePluginManager;
  pluginBundles = [(objc_super *)a2 pluginBundles];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCFeaturePluginManager.pluginBundles: %@", v5, v6, v7, v8, 2u);
}

- (void)initAllPlugIns
{
  a2->receiver = self;
  a2->super_class = ACCFeaturePluginManager;
  pluginInstances = [(objc_super *)a2 pluginInstances];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCFeaturePluginManager.pluginInstances: %@", v5, v6, v7, v8, 2u);
}

@end