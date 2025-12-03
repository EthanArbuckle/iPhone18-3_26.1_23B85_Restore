@interface ACCTransportPluginManager
+ (id)sharedManager;
- (ACCTransportPluginManager)init;
- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d;
- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d;
- (BOOL)setAuthenticationStatus:(int)status andCertificateData:(id)data authCTA:(BOOL)a forConnectionWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d;
- (BOOL)setSupervisedTransportsRestricted:(BOOL)restricted forConnectionWithUUID:(id)d;
- (id)allConnectionUUIDs;
- (id)allEndpointsUUIDs;
- (id)certificateCapabilitiesForConnectionWithUUID:(id)d;
- (id)certificateDataForConnectionWithUUID:(id)d;
- (id)certificateSerialForConnectionWithUUID:(id)d;
- (id)certificateSerialStringForConnectionWithUUID:(id)d;
- (id)connectionUUIDForEndpointWithUUID:(id)d;
- (id)endpointUUIDsForConnectionWithUUID:(id)d;
- (id)identifierForConnectionWithUUID:(id)d;
- (id)identifierForEndpointWithUUID:(id)d;
- (id)initClass:(Class)class;
- (id)propertiesForConnectionWithUUID:(id)d;
- (id)propertiesForEndpointWithUUID:(id)d;
- (int)authStatusForConnectionWithUUID:(id)d authType:(int)type;
- (int)connectionTypeForConnectionWithUUID:(id)d;
- (int)protocolForEndpointWithUUID:(id)d;
- (int)transportTypeForEndpointWithUUID:(id)d;
- (unint64_t)addTransportPlugInBundleSearchPaths;
- (unint64_t)initAllPlugIns;
- (unint64_t)loadAllBundles;
- (unint64_t)startAllPlugIns;
- (unint64_t)stopAllPlugIns;
- (void)addTransportPlugInBundleSearchPaths;
- (void)initAllPlugIns;
- (void)loadAllBundles;
@end

@implementation ACCTransportPluginManager

- (id)allEndpointsUUIDs
{
  v2 = acc_manager_copyAllEndpoints();
  allKeys = [(__CFDictionary *)v2 allKeys];
  v4 = [NSSet setWithArray:allKeys];

  return v4;
}

- (ACCTransportPluginManager)init
{
  v7.receiver = self;
  v7.super_class = ACCTransportPluginManager;
  v2 = [(ACCPluginManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(ACCTransportPluginManager *)v2 addTransportPlugInBundleSearchPaths];
    v4 = objc_alloc_init(NSMutableDictionary);
    endpointDataOutHandlers = v3->_endpointDataOutHandlers;
    v3->_endpointDataOutHandlers = v4;
  }

  return v3;
}

- (unint64_t)addTransportPlugInBundleSearchPaths
{
  v8.receiver = self;
  v8.super_class = ACCTransportPluginManager;
  v3 = [(ACCPluginManager *)&v8 addBundleSearchPath:@"/System/Library/CoreAccessories/PlugIns/Transports" recursive:0];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)self addTransportPlugInBundleSearchPaths];
  }

  return v3;
}

- (unint64_t)loadAllBundles
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v16 = v4;
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v13.receiver = self;
  v13.super_class = ACCTransportPluginManager;
  v6 = [(ACCPluginManager *)&v13 loadBundlesWithExtension:@"transport" andClasses:v5];

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v7 = *(gLogObjects + 8);
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Loaded %lu transport plugin bundle(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v9 = *(gLogObjects + 8);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)self loadAllBundles];
  }

  return v6;
}

- (unint64_t)initAllPlugIns
{
  v11.receiver = self;
  v11.super_class = ACCTransportPluginManager;
  initAllPlugIns = [(ACCPluginManager *)&v11 initAllPlugIns];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v13 = initAllPlugIns;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initialized %lu transport plugin(s)", buf, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v7 = *(gLogObjects + 8);
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
    [(ACCTransportPluginManager *)self initAllPlugIns];
  }

  return initAllPlugIns;
}

- (unint64_t)startAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCTransportPluginManager;
  startAllPlugIns = [(ACCPluginManager *)&v7 startAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
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
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = startAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started %lu transport plugin(s)", buf, 0xCu);
  }

  return startAllPlugIns;
}

- (unint64_t)stopAllPlugIns
{
  v7.receiver = self;
  v7.super_class = ACCTransportPluginManager;
  stopAllPlugIns = [(ACCPluginManager *)&v7 stopAllPlugIns];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
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
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = stopAllPlugIns;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Stopped %lu transport plugin(s)", buf, 0xCu);
  }

  return stopAllPlugIns;
}

- (id)initClass:(Class)class
{
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v5 = [[class alloc] initWithDelegate:self];
  }

  else
  {
    v5 = objc_alloc_init(class);
  }

  v6 = v5;

  return v6;
}

- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  endpointDataOutHandlers = [(ACCTransportPluginManager *)self endpointDataOutHandlers];
  v12 = [endpointDataOutHandlers objectForKey:dCopy];

  if (v12)
  {
    v13 = (v12)[2](v12, iDCopy, dCopy, dataCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setSupervisedTransportsRestricted:(BOOL)restricted forConnectionWithUUID:(id)d
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __85__ACCTransportPluginManager_setSupervisedTransportsRestricted_forConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002272E0;
  dCopy = d;
  restrictedCopy = restricted;
  v11 = dCopy;
  v12 = &v14;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v6 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[ACCTransportPluginManager setSupervisedTransportsRestricted:forConnectionWithUUID:]";
      v20 = 2112;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8 & 1;
}

uint64_t __85__ACCTransportPluginManager_setSupervisedTransportsRestricted_forConnectionWithUUID___block_invoke(uint64_t a1, uint64_t *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __85__ACCTransportPluginManager_setSupervisedTransportsRestricted_forConnectionWithUUID___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = acc_connection_setSupervisedTransportsRestricted(a2, *(a1 + 48));
  return 1;
}

- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d
{
  propertiesCopy = properties;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __65__ACCTransportPluginManager_setProperties_forConnectionWithUUID___block_invoke;
  v12[3] = &unk_100227308;
  dCopy = d;
  v13 = dCopy;
  v7 = propertiesCopy;
  v14 = v7;
  v15 = &v16;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v12) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[ACCTransportPluginManager setProperties:forConnectionWithUUID:]";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

uint64_t __65__ACCTransportPluginManager_setProperties_forConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __65__ACCTransportPluginManager_setProperties_forConnectionWithUUID___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = acc_connection_setProperties(a2, *(a1 + 40));
  return 1;
}

- (BOOL)setAuthenticationStatus:(int)status andCertificateData:(id)data authCTA:(BOOL)a forConnectionWithUUID:(id)d
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __102__ACCTransportPluginManager_setAuthenticationStatus_andCertificateData_authCTA_forConnectionWithUUID___block_invoke;
  v16[3] = &unk_100227330;
  dCopy = d;
  v17 = dCopy;
  aCopy = a;
  statusCopy = status;
  v11 = dataCopy;
  v18 = v11;
  v19 = &v22;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v16) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v12 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[ACCTransportPluginManager setAuthenticationStatus:andCertificateData:authCTA:forConnectionWithUUID:]";
      v28 = 2112;
      v29 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  v14 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14 & 1;
}

uint64_t __102__ACCTransportPluginManager_setAuthenticationStatus_andCertificateData_authCTA_forConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __102__ACCTransportPluginManager_setAuthenticationStatus_andCertificateData_authCTA_forConnectionWithUUID___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = acc_connection_setAuthCertData(a2, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) &= acc_connection_setAuthCTAAAllowed(a2, *(a1 + 60));
  *(*(*(a1 + 48) + 8) + 24) &= acc_connection_setAuthStatus(a2, 0, *(a1 + 56));
  return 1;
}

- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d
{
  infoCopy = info;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __66__ACCTransportPluginManager_setAccessoryInfo_forEndpointWithUUID___block_invoke;
  v12[3] = &unk_100227358;
  dCopy = d;
  v13 = dCopy;
  v7 = infoCopy;
  v14 = v7;
  v15 = &v16;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v12) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[ACCTransportPluginManager setAccessoryInfo:forEndpointWithUUID:]";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

uint64_t __66__ACCTransportPluginManager_setAccessoryInfo_forEndpointWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __66__ACCTransportPluginManager_setAccessoryInfo_forEndpointWithUUID___block_invoke_cold_2(a1);
  }

  v7 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) = acc_endpoint_setAccessoryInfoOverridesWithDictionary(a2);
  return 1;
}

- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d
{
  propertiesCopy = properties;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __63__ACCTransportPluginManager_setProperties_forEndpointWithUUID___block_invoke;
  v12[3] = &unk_100227358;
  dCopy = d;
  v13 = dCopy;
  v7 = propertiesCopy;
  v14 = v7;
  v15 = &v16;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v12) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v8 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[ACCTransportPluginManager setProperties:forEndpointWithUUID:]";
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

uint64_t __63__ACCTransportPluginManager_setProperties_forEndpointWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 2;
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
    v6 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __63__ACCTransportPluginManager_setProperties_forEndpointWithUUID___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = acc_endpoint_setProperties(a2, *(a1 + 40));
  return 1;
}

- (id)connectionUUIDForEndpointWithUUID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __63__ACCTransportPluginManager_connectionUUIDForEndpointWithUUID___block_invoke;
  v8[3] = &unk_100227380;
  v8[4] = &v9;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v8) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[ACCTransportPluginManager connectionUUIDForEndpointWithUUID:]";
      v17 = 2112;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __63__ACCTransportPluginManager_connectionUUIDForEndpointWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(a2 + 8));
  }

  return 1;
}

- (id)allConnectionUUIDs
{
  v2 = acc_manager_copyAllConnections();
  allKeys = [(__CFDictionary *)v2 allKeys];
  v4 = [NSSet setWithArray:allKeys];

  return v4;
}

- (id)endpointUUIDsForConnectionWithUUID:(id)d
{
  v3 = acc_manager_copyEndpointUUIDsForConnection(d);

  return v3;
}

- (int)authStatusForConnectionWithUUID:(id)d authType:(int)type
{
  dCopy = d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __70__ACCTransportPluginManager_authStatusForConnectionWithUUID_authType___block_invoke;
  v13[3] = &unk_1002273A8;
  v13[4] = &v15;
  typeCopy = type;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v13) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v6 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[ACCTransportPluginManager authStatusForConnectionWithUUID:authType:]";
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v8 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(v16 + 6);
    *buf = 136315906;
    v20 = "[ACCTransportPluginManager authStatusForConnectionWithUUID:authType:]";
    v21 = 2112;
    v22 = dCopy;
    v23 = 1024;
    typeCopy2 = type;
    v25 = 1024;
    v26 = v12;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s: connectionUUID %@, authType %{coreacc:ACCAuthInfo_Type_t}d, authStatus %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x22u);
  }

  v10 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (int)connectionTypeForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 11;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __65__ACCTransportPluginManager_connectionTypeForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager connectionTypeForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy connectionTypeForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)certificateDataForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __66__ACCTransportPluginManager_certificateDataForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager certificateDataForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy certificateDataForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __66__ACCTransportPluginManager_certificateDataForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  AuthInfo = acc_connection_getAuthInfo(a2);
  if (AuthInfo)
  {
    v4 = acc_authInfo_copyCertData(AuthInfo);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (id)certificateSerialForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__ACCTransportPluginManager_certificateSerialForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager certificateSerialForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy certificateSerialForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __68__ACCTransportPluginManager_certificateSerialForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  AuthInfo = acc_connection_getAuthInfo(a2);
  if (AuthInfo)
  {
    v4 = acc_authInfo_copyCertSerial(AuthInfo);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (id)certificateSerialStringForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__ACCTransportPluginManager_certificateSerialStringForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager certificateSerialStringForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy certificateSerialStringForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__ACCTransportPluginManager_certificateSerialStringForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  AuthInfo = acc_connection_getAuthInfo(a2);
  if (AuthInfo)
  {
    v4 = acc_authInfo_copyCertSerialString(AuthInfo);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (id)certificateCapabilitiesForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __74__ACCTransportPluginManager_certificateCapabilitiesForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager certificateCapabilitiesForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy certificateCapabilitiesForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __74__ACCTransportPluginManager_certificateCapabilitiesForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  AuthInfo = acc_connection_getAuthInfo(a2);
  if (AuthInfo)
  {
    v4 = acc_authInfo_copyCertCapabilities(AuthInfo);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (int)transportTypeForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 18;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __62__ACCTransportPluginManager_transportTypeForEndpointWithUUID___block_invoke;
  v10[3] = &unk_100227380;
  v10[4] = &v11;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager transportTypeForEndpointWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy transportTypeForEndpointWithUUID:v12];
  }

  v8 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int)protocolForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 19;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __57__ACCTransportPluginManager_protocolForEndpointWithUUID___block_invoke;
  v10[3] = &unk_100227380;
  v10[4] = &v11;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager protocolForEndpointWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy protocolForEndpointWithUUID:v12];
  }

  v8 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)identifierForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__ACCTransportPluginManager_identifierForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager identifierForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy identifierForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __61__ACCTransportPluginManager_identifierForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = acc_connection_copyIdentifier(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)identifierForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__ACCTransportPluginManager_identifierForEndpointWithUUID___block_invoke;
  v10[3] = &unk_100227380;
  v10[4] = &v11;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager identifierForEndpointWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy identifierForEndpointWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __59__ACCTransportPluginManager_identifierForEndpointWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = acc_endpoint_copyIdentifier(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)propertiesForConnectionWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__ACCTransportPluginManager_propertiesForConnectionWithUUID___block_invoke;
  v10[3] = &unk_1002273D0;
  v10[4] = &v11;
  if ((acc_manager_protectedConnectionCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager propertiesForConnectionWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy propertiesForConnectionWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __61__ACCTransportPluginManager_propertiesForConnectionWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = acc_connection_copyProperties(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (id)propertiesForEndpointWithUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__1;
  v12[3] = __Block_byref_object_dispose__1;
  v13 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __59__ACCTransportPluginManager_propertiesForEndpointWithUUID___block_invoke;
  v10[3] = &unk_100227380;
  v10[4] = &v11;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v10) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v4 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[ACCTransportPluginManager propertiesForEndpointWithUUID:]";
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v6 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACCTransportPluginManager *)dCopy propertiesForEndpointWithUUID:v12];
  }

  v8 = *(v12[0] + 40);
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __59__ACCTransportPluginManager_propertiesForEndpointWithUUID___block_invoke(uint64_t a1, pthread_mutex_t *a2)
{
  v3 = acc_endpoint_copyProperties(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v7 = dCopy;
  if (dataCopy && dCopy)
  {
    v8 = dataCopy;
    v9 = acc_manager_processIncomingDataForEndpointWithUUID(v7, v8);
    CFRelease(v8);
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 2;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPluginManager processIncomingData:v12 forEndpointWithUUID:?];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__ACCTransportPluginManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_1 != -1)
  {
    dispatch_once(&sharedManager_once_1, block);
  }

  v2 = sharedManager_sharedInstance_1;

  return v2;
}

uint64_t __42__ACCTransportPluginManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_1 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (void)addTransportPlugInBundleSearchPaths
{
  pluginBundleSearchPaths = [self pluginBundleSearchPaths];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v2, v3, "Added bundle search paths: %@", v4, v5, v6, v7, 2u);
}

- (void)loadAllBundles
{
  a2->receiver = self;
  a2->super_class = ACCTransportPluginManager;
  pluginBundles = [(objc_super *)a2 pluginBundles];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCTransportPluginManager.pluginBundles: %@", v5, v6, v7, v8, 2u);
}

- (void)initAllPlugIns
{
  a2->receiver = self;
  a2->super_class = ACCTransportPluginManager;
  pluginInstances = [(objc_super *)a2 pluginInstances];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v3, v4, "ACCTransportPluginManager.pluginInstances: %@", v5, v6, v7, v8, 2u);
}

void __85__ACCTransportPluginManager_setSupervisedTransportsRestricted_forConnectionWithUUID___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __65__ACCTransportPluginManager_setProperties_forConnectionWithUUID___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __102__ACCTransportPluginManager_setAuthenticationStatus_andCertificateData_authCTA_forConnectionWithUUID___block_invoke_cold_2(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 60);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

void __66__ACCTransportPluginManager_setAccessoryInfo_forEndpointWithUUID___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __63__ACCTransportPluginManager_setProperties_forEndpointWithUUID___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)connectionTypeForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)certificateDataForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)certificateSerialForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)certificateSerialStringForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)certificateCapabilitiesForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)transportTypeForEndpointWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)protocolForEndpointWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)identifierForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)identifierForEndpointWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)propertiesForConnectionWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)propertiesForEndpointWithUUID:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_15(a2, __stack_chk_guard);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end