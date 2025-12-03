@interface ACCPlatformPluginManager
+ (id)sharedManager;
- (ACCPlatformPluginManager)init;
- (id)initClass:(Class)class;
- (id)pluginInstanceWithProtocol:(id)protocol fallbackToTransportPlugins:(BOOL)plugins;
- (id)pluginInstancesWithProtocol:(id)protocol includeTransportPlugins:(BOOL)plugins;
- (unint64_t)addPlatformPlugInBundleSearchPaths;
- (unint64_t)initAllPlugIns;
- (unint64_t)loadAllBundles;
- (unint64_t)startAllPlugIns;
- (unint64_t)stopAllPlugIns;
- (void)addPlatformPlugInBundleSearchPaths;
- (void)initAllPlugIns;
- (void)loadAllBundles;
@end

@implementation ACCPlatformPluginManager

- (ACCPlatformPluginManager)init
{
  v5.receiver = self;
  v5.super_class = ACCPlatformPluginManager;
  v2 = [(ACCPluginManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ACCPlatformPluginManager *)v2 addPlatformPlugInBundleSearchPaths];
  }

  return v3;
}

- (unint64_t)addPlatformPlugInBundleSearchPaths
{
  v8.receiver = self;
  v8.super_class = ACCPlatformPluginManager;
  v3 = [(ACCPluginManager *)&v8 addBundleSearchPath:@"/System/Library/CoreAccessories/PlugIns/Platform" recursive:0];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 6;
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
    v6 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCPlatformPluginManager *)self addPlatformPlugInBundleSearchPaths];
  }

  return v3;
}

- (unint64_t)loadAllBundles
{
  v11.receiver = self;
  v11.super_class = ACCPlatformPluginManager;
  v3 = [(ACCPluginManager *)&v11 loadBundlesWithExtension:@"platform"];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 6;
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
    v6 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Loaded %lu platform plugin bundle(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v7 = *(gLogObjects + 40);
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
    [(ACCPlatformPluginManager *)self loadAllBundles];
  }

  return v3;
}

- (unint64_t)initAllPlugIns
{
  v11.receiver = self;
  v11.super_class = ACCPlatformPluginManager;
  initAllPlugIns = [(ACCPluginManager *)&v11 initAllPlugIns];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 6;
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
    v6 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = initAllPlugIns;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initialized %lu platform plugin(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 6)
  {
    v7 = *(gLogObjects + 40);
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
    [(ACCPlatformPluginManager *)self initAllPlugIns];
  }

  return initAllPlugIns;
}

- (unint64_t)startAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCPlatformPluginManager;
  startAllPlugIns = [(ACCPluginManager *)&v7 startAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
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
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = startAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started %lu platform plugin(s)", buf, 0xCu);
  }

  return startAllPlugIns;
}

- (unint64_t)stopAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCPlatformPluginManager;
  stopAllPlugIns = [(ACCPluginManager *)&v7 stopAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 6;
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
    v5 = *(gLogObjects + 40);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = stopAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stopped %lu platform plugin(s)", buf, 0xCu);
  }

  return stopAllPlugIns;
}

- (id)pluginInstanceWithProtocol:(id)protocol fallbackToTransportPlugins:(BOOL)plugins
{
  pluginsCopy = plugins;
  protocolCopy = protocol;
  v29 = protocolCopy;
  v7 = [NSArray arrayWithObjects:&v29 count:1];
  v8 = [(ACCPluginManager *)self pluginInstancesWithProtocols:v7 matchAny:0];

  if (v8 && [v8 count])
  {
    if ([v8 count] < 2)
    {
      goto LABEL_37;
    }

    if (gLogObjects && gNumLogObjects >= 6)
    {
      v9 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginManager pluginInstanceWithProtocol:protocolCopy fallbackToTransportPlugins:?];
    }

    goto LABEL_36;
  }

  if (pluginsCopy)
  {
    if (gLogObjects && gNumLogObjects >= 6)
    {
      v10 = *(gLogObjects + 40);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACCPlatformPluginManager pluginInstanceWithProtocol:protocolCopy fallbackToTransportPlugins:?];
    }

    v12 = +[ACCTransportPluginManager sharedManager];
    v28 = protocolCopy;
    v13 = [NSArray arrayWithObjects:&v28 count:1];
    v14 = [v12 pluginInstancesWithProtocols:v13 matchAny:0];

    if (v14)
    {
      if ([v14 count])
      {
        if ([v14 count] < 2)
        {
          v8 = v14;
          goto LABEL_37;
        }

        if (gLogObjects && gNumLogObjects >= 6)
        {
          v9 = *(gLogObjects + 40);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v9 = &_os_log_default;
          v16 = &_os_log_default;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformPluginManager pluginInstanceWithProtocol:protocolCopy fallbackToTransportPlugins:?];
        }

        v8 = v14;
LABEL_36:

LABEL_37:
        anyObject = [v8 anyObject];
        if (anyObject)
        {
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_38:
  if (gLogObjects && gNumLogObjects >= 6)
  {
    v18 = *(gLogObjects + 40);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v18 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromProtocol(protocolCopy);
    v21 = v20;
    v22 = "NO";
    if (pluginsCopy)
    {
      v22 = "YES";
    }

    v24 = 138412546;
    v25 = v20;
    v26 = 2080;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Couldn't find a platform/transport plugin conforming to protocol: %@ (fallbackToTransportPlugins: %s)", &v24, 0x16u);
  }

  anyObject = 0;
LABEL_49:

  return anyObject;
}

- (id)pluginInstancesWithProtocol:(id)protocol includeTransportPlugins:(BOOL)plugins
{
  pluginsCopy = plugins;
  protocolCopy = protocol;
  v7 = +[NSMutableSet set];
  v18 = protocolCopy;
  v8 = [NSArray arrayWithObjects:&v18 count:1];
  v9 = [(ACCPluginManager *)self pluginInstancesWithProtocols:v8 matchAny:0];

  if (v9)
  {
    allObjects = [v9 allObjects];
    [v7 addObjectsFromArray:allObjects];
  }

  if (pluginsCopy)
  {
    v11 = +[ACCTransportPluginManager sharedManager];
    v17 = protocolCopy;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v13 = [v11 pluginInstancesWithProtocols:v12 matchAny:0];

    if (v13)
    {
      allObjects2 = [v13 allObjects];
      [v7 addObjectsFromArray:allObjects2];
    }
  }

  if ([v7 count])
  {
    v15 = [NSSet setWithSet:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)initClass:(Class)class
{
  v4 = objc_alloc_init(class);

  return v4;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ACCPlatformPluginManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_3 != -1)
  {
    dispatch_once(&sharedManager_once_3, block);
  }

  v2 = sharedManager_sharedInstance_3;

  return v2;
}

uint64_t __41__ACCPlatformPluginManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_3 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (void)addPlatformPlugInBundleSearchPaths
{
  pluginBundleSearchPaths = [self pluginBundleSearchPaths];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v2, v3, "Added bundle search paths: %@", v4, v5, v6, v7, v8);
}

- (void)loadAllBundles
{
  a2->receiver = self;
  a2->super_class = ACCPlatformPluginManager;
  pluginBundles = [(objc_super *)a2 pluginBundles];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCPlatformPluginManager.pluginBundles: %@", v5, v6, v7, v8, v9);
}

- (void)initAllPlugIns
{
  a2->receiver = self;
  a2->super_class = ACCPlatformPluginManager;
  pluginInstances = [(objc_super *)a2 pluginInstances];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCPlatformPluginManager.pluginInstances: %@", v5, v6, v7, v8, v9);
}

- (void)pluginInstanceWithProtocol:(Protocol *)a1 fallbackToTransportPlugins:.cold.2(Protocol *a1)
{
  v1 = NSStringFromProtocol(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v2, v3, "Multiple platform plugins found with protocol: %@\nChoosing one at random...", v4, v5, v6, v7, v8);
}

- (void)pluginInstanceWithProtocol:(Protocol *)a1 fallbackToTransportPlugins:.cold.4(Protocol *a1)
{
  v1 = NSStringFromProtocol(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v2, v3, "Couldn't find a platform plugin conforming to protocol: %@\nFalling back to searching transport plugins...", v4, v5, v6, v7, v8);
}

- (void)pluginInstanceWithProtocol:(Protocol *)a1 fallbackToTransportPlugins:.cold.6(Protocol *a1)
{
  v1 = NSStringFromProtocol(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v2, v3, "Multiple transport plugins found with protocol: %@\nChoosing one at random...", v4, v5, v6, v7, v8);
}

@end