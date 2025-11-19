@interface ACCBLEPairingServer
+ (id)sharedServer;
- (ACCBLEPairingServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)accessoryReserved:(id)a3 connHash:(id)a4;
- (BOOL)accessoryReserved:(id)a3 xpcConn:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)releaseAccessory:(id)a3 connHash:(id)a4;
- (BOOL)releaseAccessory:(id)a3 xpcConn:(id)a4;
- (BOOL)reserveAccessory:(id)a3 xpcConn:(id)a4;
- (void)accessoryBLEPairingAttached:(id)a3 blePairingUUID:(id)a4 accInfoDict:(id)a5 supportedPairTypes:(id)a6;
- (void)accessoryBLEPairingDetached:(id)a3 blePairingUUID:(id)a4;
- (void)accessoryBLEPairingFinished:(id)a3 blePairingUUID:(id)a4;
- (void)dealloc;
- (void)iterateAttachedConnectionsSync:(id)a3;
- (void)iterateBLEPairingProviderListSync:(id)a3;
@end

@implementation ACCBLEPairingServer

- (ACCBLEPairingServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = ACCBLEPairingServer;
  v7 = [(ACCFeatureServer *)&v18 initWithXPCServiceName:v6 andFeatureNotification:a4];
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
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
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = v6;
    v21 = 2080;
    v22 = a4;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initWithXPCServiceName: serviceName='%@' notification='%s' self=%@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    registeredAccessoryConnections = v7->_registeredAccessoryConnections;
    v7->_registeredAccessoryConnections = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    blePairingProviderList = v7->_blePairingProviderList;
    v7->_blePairingProviderList = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    blePairingProviderListByUID = v7->_blePairingProviderListByUID;
    v7->_blePairingProviderListByUID = v15;
  }

  return v7;
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 5;
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
    v5 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc: self=%@", buf, 0xCu);
  }

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  blePairingProviderList = self->_blePairingProviderList;
  self->_blePairingProviderList = 0;

  blePairingProviderListByUID = self->_blePairingProviderListByUID;
  self->_blePairingProviderListByUID = 0;

  v9.receiver = self;
  v9.super_class = ACCBLEPairingServer;
  [(ACCFeatureServer *)&v9 dealloc];
}

- (void)iterateAttachedConnectionsSync:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_registeredAccessoryConnections allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 1;
      v4[2](v4, v10, &v11);
      if (v11 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)iterateBLEPairingProviderListSync:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_blePairingProviderList allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      v11 = 1;
      v4[2](v4, v10, &v11);
      if (v11 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)reserveAccessory:(id)a3 xpcConn:(id)a4
{
  v6 = a3;
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a4 hash]);
  v8 = [(NSMutableDictionary *)self->_blePairingProviderList objectForKey:v7];
  v9 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v12 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 138413058;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v10;
    v20 = "reserveAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Failed to reserve! no provider or accessory";
    goto LABEL_46;
  }

  v13 = [v9 activeProvider];

  if (!v13)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v21 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138413058;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "reserveAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Reserve OK!", &v27, 0x2Au);
    }

    v12 = [v8 providerUID];
    [v10 setActiveProvider:v12];
    goto LABEL_40;
  }

  v14 = [v10 activeProvider];
  v15 = [v8 providerUID];
  v16 = [v14 isEqualToString:v15];

  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 4;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v16)
  {
    if (v18)
    {
      v12 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    v27 = 138413058;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v10;
    v20 = "reserveAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Failed to reserve! already reserved for another provider";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v20, &v27, 0x2Au);
LABEL_47:
    v24 = 0;
    goto LABEL_48;
  }

  if (v18)
  {
    v12 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138413058;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "reserveAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Already reserved!", &v27, 0x2Au);
  }

LABEL_40:
  v24 = 1;
LABEL_48:

  return v24;
}

- (BOOL)releaseAccessory:(id)a3 connHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_blePairingProviderList objectForKey:v7];
  v9 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 5;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v20 = &_os_log_default;
      v13 = &_os_log_default;
    }

    else
    {
      v20 = *(gLogObjects + 32);
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v26 = 138413058;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v10;
    v21 = "releaseAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Failed to release! no provider or accessory";
    goto LABEL_38;
  }

  v14 = [v9 activeProvider];
  v15 = [v8 providerUID];
  v16 = [v14 isEqualToString:v15];

  if (gLogObjects)
  {
    v17 = gNumLogObjects <= 4;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v16)
  {
    if (v18)
    {
      v20 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v20 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v26 = 138413058;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v10;
    v21 = "releaseAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Failed to release! not reserved";
LABEL_38:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, &v26, 0x2Au);
LABEL_39:

    v23 = 0;
    goto LABEL_40;
  }

  if (v18)
  {
    v19 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413058;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "releaseAccessory: %@, xpcConn hash %@, provider %@, accessory %@: Release OK!", &v26, 0x2Au);
  }

  [v10 setActiveProvider:0];
  v23 = 1;
LABEL_40:

  return v23;
}

- (BOOL)releaseAccessory:(id)a3 xpcConn:(id)a4
{
  v6 = a3;
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a4 hash]);
  LOBYTE(self) = [(ACCBLEPairingServer *)self releaseAccessory:v6 connHash:v7];

  return self;
}

- (BOOL)accessoryReserved:(id)a3 connHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_blePairingProviderList objectForKey:v7];
  v9 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 5;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v13 = &_os_log_default;
    }

    else
    {
      v18 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413058;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "accessoryReserved: %@, xpcConn hash %@, provider %@, accessory %@: No provider or accessory", &v20, 0x2Au);
    }

    LOBYTE(v16) = 0;
  }

  else
  {
    v14 = [v9 activeProvider];
    v15 = [v8 providerUID];
    v16 = [v14 isEqualToString:v15];

    if (gLogObjects && gNumLogObjects >= 5)
    {
      v18 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413314;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v10;
      v28 = 1024;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "accessoryReserved: %@, xpcConn hash %@, provider %@, accessory %@: success = %d", &v20, 0x30u);
    }
  }

  return v16;
}

- (BOOL)accessoryReserved:(id)a3 xpcConn:(id)a4
{
  v6 = a3;
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a4 hash]);
  LOBYTE(self) = [(ACCBLEPairingServer *)self accessoryReserved:v6 connHash:v7];

  return self;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpcServiceName = self->super._xpcServiceName;
    *buf = 138412290;
    v34 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCBLEPairingXPCServerProtocol];
  [v6 setExportedInterface:v11];

  v12 = [[ACCBLEPairingServerRemote alloc] initWithXPCConnection:v6];
  [v6 setExportedObject:v12];
  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCBLEPairingXPCClientProtocol];
  [v6 setRemoteObjectInterface:v13];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_100227108;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  v28[4] = self;
  [v6 setInvalidationHandler:v28];
  v14 = objc_alloc_init(_ACCBLEPairingProviderInfo);
  [(_ACCBLEPairingProviderInfo *)v14 setConnection:v6];
  [(_ACCBLEPairingProviderInfo *)v14 setServerRemote:v12];
  v15 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_11];
  [(_ACCBLEPairingProviderInfo *)v14 setRemoteObject:v15];

  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 hash]);
  [(NSMutableDictionary *)self->_blePairingProviderList setObject:v14 forKey:v16];
  blePairingProviderListByUID = self->_blePairingProviderListByUID;
  v18 = [(_ACCBLEPairingProviderInfo *)v14 providerUID];
  [(NSMutableDictionary *)blePairingProviderListByUID setObject:v14 forKey:v18];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v19 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v20 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(NSMutableDictionary *)self->_blePairingProviderList count];
    *buf = 134217984;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "There are now %lu BLEPairingProvider(s).", buf, 0xCu);
  }

  [v6 resume];
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_171;
  block[3] = &unk_100225A08;
  block[4] = self;
  v27 = v14;
  v23 = v14;
  dispatch_async(v22, block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
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
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    *buf = 138412290;
    v31 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated! %@", buf, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 hash]);

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 blePairingProviderList];
  v11 = [v10 objectForKey:v8];

  v12 = *(a1 + 32);
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_165;
  v27 = &unk_1002270E0;
  objc_copyWeak(&v29, (a1 + 48));
  v13 = v8;
  v28 = v13;
  [v12 iterateAttachedConnectionsSync:&v24];
  v14 = objc_loadWeakRetained((a1 + 48));
  v15 = [v14 blePairingProviderListByUID];
  v16 = [v11 providerUID];
  [v15 removeObjectForKey:v16];

  v17 = objc_loadWeakRetained((a1 + 48));
  v18 = [v17 blePairingProviderList];
  [v18 removeObjectForKey:v13];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v19 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v20 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_loadWeakRetained((a1 + 48));
    v22 = [v21 blePairingProviderList];
    v23 = [v22 count];
    *buf = 134217984;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "There are now %lu BLEPairingProvider(s).", buf, 0xCu);
  }

  objc_destroyWeak(&v29);
}

void __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_165(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v8 accessoryUID];
  v5 = [WeakRetained accessoryReserved:v4 connHash:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v8 accessoryUID];
    [v6 releaseAccessory:v7 connHash:*(a1 + 32)];
  }
}

void __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_169(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 5;
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
    v5 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC connection error!", &v8, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v6 = *(gLogObjects + 32);
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
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }
}

void __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_171(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 5;
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
    v4 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 72);
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inform provider of attached accessories %@", buf, 0xCu);
  }

  if ([*(*(a1 + 32) + 72) count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [*(*(a1 + 32) + 72) allValues];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *(a1 + 32);
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_172;
          v13[3] = &unk_100227150;
          v13[4] = v11;
          [v12 iterateBLEPairingProviderListSync:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [*(a1 + 40) remoteObject];
    [v6 accessoryBLEPairingNoAccessories];
  }
}

void __58__ACCBLEPairingServer_listener_shouldAcceptNewConnection___block_invoke_172(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  v5 = [v14 remoteObject];

  if (v5)
  {
    v6 = [v14 remoteObject];
    v7 = [*(a1 + 32) accessoryUID];
    v8 = [*(a1 + 32) blePairingUUID];
    v9 = [*(a1 + 32) accInfoDict];
    v10 = [*(a1 + 32) supportedPairTypes];
    [v6 accessoryBLEPairingAttached:v7 blePairingUUID:v8 accInfoDict:v9 supportedPairTypes:v10];

    if ([*(a1 + 32) pairingFinished])
    {
      v11 = [v14 remoteObject];
      v12 = [*(a1 + 32) accessoryUID];
      v13 = [*(a1 + 32) blePairingUUID];
      [v11 accessoryBLEPairingFinished:v12 blePairingUUID:v13];
    }
  }

  *a3 = 1;
}

- (void)accessoryBLEPairingAttached:(id)a3 blePairingUUID:(id)a4 accInfoDict:(id)a5 supportedPairTypes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 5;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BLEPairing server, accessoryBLEPairingAttached: %@, blePairingUUID==%@, accInfoDict=%@, supportedPairTypes=%@", buf, 0x2Au);
  }

  v17 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v10];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v18 = *(gLogObjects + 32);
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

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    blePairingProviderList = self->_blePairingProviderList;
    *buf = 138412802;
    v35 = v10;
    v36 = 2112;
    v37 = v17;
    v38 = 2112;
    v39 = blePairingProviderList;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "BLEPairing server, accessoryBLEPairingAttached: %@, accessory=%@ _blePairingProviderList=%@", buf, 0x20u);
  }

  v21 = _convertAccInfoToBLEAccInfo(v12, v20, v11, v13);
  if (!v17)
  {
    v17 = [[_ACCBLEPairingAccessoryInfo alloc] initWithUID:v10 blePairingUUID:v11 accInfoDict:v21 supportedPairTypes:v13];
    [(NSMutableDictionary *)self->_registeredAccessoryConnections setObject:v17 forKey:v10];
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __97__ACCBLEPairingServer_accessoryBLEPairingAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke;
  v28[3] = &unk_100227178;
  v29 = v17;
  v30 = v10;
  v31 = v11;
  v32 = v21;
  v33 = v13;
  v22 = v13;
  v23 = v21;
  v24 = v11;
  v25 = v10;
  v26 = v17;
  [(ACCBLEPairingServer *)self iterateBLEPairingProviderListSync:v28];
}

void __97__ACCBLEPairingServer_accessoryBLEPairingAttached_blePairingUUID_accInfoDict_supportedPairTypes___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (a1[4])
  {
    v8 = v5;
    v6 = [v5 remoteObject];

    v5 = v8;
    if (v6)
    {
      v7 = [v8 remoteObject];
      [v7 accessoryBLEPairingAttached:a1[5] blePairingUUID:a1[6] accInfoDict:a1[7] supportedPairTypes:a1[8]];

      v5 = v8;
      *a3 = 1;
    }
  }
}

- (void)accessoryBLEPairingDetached:(id)a3 blePairingUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
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
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLEPairing server, accessoryBLEPairingDetached: %@, blePairingUUID=%@", buf, 0x16u);
  }

  v11 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v12 = *(gLogObjects + 32);
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    blePairingProviderList = self->_blePairingProviderList;
    *buf = 138412802;
    v21 = v6;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = blePairingProviderList;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BLEPairing server, accessoryBLEPairingDetached: %@, accessory=%@ _blePairingProviderList=%@", buf, 0x20u);
  }

  if (v11)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:v6];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __66__ACCBLEPairingServer_accessoryBLEPairingDetached_blePairingUUID___block_invoke;
  v17[3] = &unk_1002271A0;
  v18 = v6;
  v19 = v7;
  v14 = v7;
  v15 = v6;
  [(ACCBLEPairingServer *)self iterateBLEPairingProviderListSync:v17];
}

void __66__ACCBLEPairingServer_accessoryBLEPairingDetached_blePairingUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 remoteObject];

  if (v5)
  {
    v6 = [v7 remoteObject];
    [v6 accessoryBLEPairingDetached:*(a1 + 32) blePairingUUID:*(a1 + 40)];
  }

  *a3 = 1;
}

- (void)accessoryBLEPairingFinished:(id)a3 blePairingUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 5;
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
    v10 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BLEPairing server, accessoryBLEPairingFinished: %@, blePairingUUID=%@", buf, 0x16u);
  }

  v11 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v12 = *(gLogObjects + 32);
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    blePairingProviderList = self->_blePairingProviderList;
    *buf = 138413058;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = blePairingProviderList;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "BLEPairing server, accessoryBLEPairingFinished: %@, blePairingUUID=%@, accessory=%@ _blePairingProviderList=%@", buf, 0x2Au);
  }

  if (v11)
  {
    [v11 setPairingFinished:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __66__ACCBLEPairingServer_accessoryBLEPairingFinished_blePairingUUID___block_invoke;
    v17[3] = &unk_1002271A0;
    v18 = v6;
    v19 = v7;
    [(ACCBLEPairingServer *)self iterateBLEPairingProviderListSync:v17];

    v14 = v18;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v14 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BLEPairing server, accessoryBLEPairingFinished: %@, Invalid accessory=%@", buf, 0x16u);
    }
  }
}

void __66__ACCBLEPairingServer_accessoryBLEPairingFinished_blePairingUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 remoteObject];

  if (v5)
  {
    v6 = [v7 remoteObject];
    [v6 accessoryBLEPairingFinished:*(a1 + 32) blePairingUUID:*(a1 + 40)];
  }

  *a3 = 1;
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__ACCBLEPairingServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_3 != -1)
  {
    dispatch_once(&sharedServer_once_3, block);
  }

  v2 = sharedServer_sharedInstance_3;

  return v2;
}

uint64_t __35__ACCBLEPairingServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_3 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.blepairing" andFeatureNotification:"com.apple.accessories.blepairing.availability-changed"];

  return _objc_release_x1();
}

@end