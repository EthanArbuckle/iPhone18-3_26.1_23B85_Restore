@interface ACCConnectionInfoServer
+ (id)sharedServer;
- (ACCConnectionInfoServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)accessoryConnectionFiltered:(id)a3 forClient:(id)a4;
- (BOOL)accessoryEndpointFiltered:(id)a3 forConnection:(id)a4 forClient:(id)a5;
- (BOOL)checkClient:(id)a3 hasEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (id)copyClientUID:(id)a3;
- (void)_updateFilteredListForClient:(id)a3 forConnection:(id)a4;
- (void)_updateFilteredListForClient:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryConnectionDetached:(id)a3 forClient:(id)a4;
- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4 forClient:(id)a5;
- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5;
- (void)accessoryEndpointUpdate:(id)a3 protocol:(int)a4 properties:(id)a5 forConnection:(id)a6;
- (void)configStreamCategoriesResponse:(id)a3 forEndpoint:(id)a4 connection:(id)a5 client:(id)a6 success:(BOOL)a7;
- (void)configStreamCategoryListReady:(id)a3 connection:(id)a4 client:(id)a5;
- (void)configStreamPropertyResponse:(unsigned __int8)a3 forCategory:(unsigned __int16)a4 forEndpoint:(id)a5 connection:(id)a6 client:(id)a7 value:(id)a8 success:(BOOL)a9;
- (void)handleInterceptData:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)notifyClientOfConnections:(id)a3;
- (void)notifyOfClient:(id)a3 bundleID:(id)a4 forClient:(id)a5 withFilter:(id)a6;
- (void)notifyOfClient:(id)a3 bundleID:(id)a4 forClient:(id)a5 withFilter:(id)a6 forIdentifier:(id)a7;
- (void)removeConnection:(id)a3 forClientFilter:(id)a4;
- (void)removeEndpoint:(id)a3 connection:(id)a4 forClientFilter:(id)a5;
- (void)setInterceptState:(BOOL)a3 forEndpoint:(id)a4 connection:(id)a5 clientInfo:(id)a6;
- (void)updateFilteredListForClient:(id)a3;
@end

@implementation ACCConnectionInfoServer

- (ACCConnectionInfoServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 9;
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
    v9 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfoServer initWithXPCServiceName: %@", buf, 0xCu);
  }

  v22.receiver = self;
  v22.super_class = ACCConnectionInfoServer;
  v10 = [(ACCFeatureServer *)&v22 initWithXPCServiceName:v6 andFeatureNotification:a4];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableSet);
    clientConnections = v10->_clientConnections;
    v10->_clientConnections = v11;

    v13 = objc_alloc_init(NSMutableSet);
    accessories = v10->_accessories;
    v10->_accessories = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    endpoints = v10->_endpoints;
    v10->_endpoints = v15;

    v17 = objc_alloc_init(NSLock);
    connectedAccessoryLock = v10->_connectedAccessoryLock;
    v10->_connectedAccessoryLock = v17;

    v19 = objc_alloc_init(NSLock);
    clientListLock = v10->_clientListLock;
    v10->_clientListLock = v19;
  }

  return v10;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = @"com.apple.accessories.connection-info-server";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCConnectionInfoXPCServerProtocol];
  [v7 setExportedInterface:v11];

  v12 = [[ACCConnectionInfoClientInfo alloc] initWithXPCConnection:v7];
  v13 = [[ACCConnectionInfoServerRemote alloc] initWithClientInfo:v12];
  [v7 setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCConnectionInfoXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke;
  v29[3] = &unk_100225C98;
  objc_copyWeak(&v30, &from);
  v29[4] = self;
  objc_copyWeak(&v31, &location);
  [v7 setInvalidationHandler:v29];
  v15 = [(ACCConnectionInfoServer *)self clientListLock];
  [v15 lock];

  v16 = [(ACCConnectionInfoServer *)self clientConnections];
  [v16 addObject:v12];

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(ACCConnectionInfoServer *)self clientConnections];
    v20 = [v19 count];
    *buf = 134217984;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "There are now %lu client(s).", buf, 0xCu);
  }

  v21 = [(ACCConnectionInfoServer *)self clientListLock];
  [v21 unlock];

  [v7 resume];
  if (![(ACCConnectionInfoClientInfo *)v12 allConnectionsNotificationsEntitlement])
  {
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v22 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v22 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(ACCConnectionInfoClientInfo *)v12 clientUID];
      v25 = [(ACCConnectionInfoClientInfo *)v12 clientBundleID];
      v26 = [(ACCConnectionInfoClientInfo *)v12 allConnectionsNotificationsEntitlement];
      *buf = 138412802;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      v38 = 1024;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Client %@ (%@) not entitled for showallconnections!!! return %d", buf, 0x1Cu);
    }
  }

  v27 = [(ACCConnectionInfoClientInfo *)v12 allConnectionsNotificationsEntitlement];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v27;
}

void __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setInvalidationHandler:0];

  v3 = objc_loadWeakRetained(a1 + 5);
  [v3 setExportedObject:0];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated: %@", buf, 0xCu);
  }

  v8 = [a1[4] clientListLock];
  [v8 lock];

  v9 = [a1[4] clientConnections];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke_201;
  v29[3] = &unk_100226570;
  objc_copyWeak(&v30, a1 + 5);
  v10 = [v9 objectsPassingTest:v29];

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v11 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke_cold_3(buf, [v10 count], v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [a1[4] clientConnections];
        [v18 removeObject:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v19 = *(gLogObjects + 64);
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
    v21 = objc_loadWeakRetained(a1 + 6);
    v22 = [v21 clientConnections];
    v23 = [v22 count];
    *v31 = 134217984;
    v32 = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "There are now %lu client(s).", v31, 0xCu);
  }

  v24 = [a1[4] clientListLock];
  [v24 unlock];

  objc_destroyWeak(&v30);
}

id __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke_201(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [a2 XPCConnection];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 isEqual:WeakRetained];

  return v5;
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v3 = a3;
  if (([v3 allConnectionsNotificationsEntitlement] & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 9;
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
      v6 = *(gLogObjects + 64);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 clientUID];
      v8 = [v3 clientBundleID];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = [v3 allConnectionsNotificationsEntitlement];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptXPCConnection: client %@ (%@) not entitled for showallconnections!!! return %d", &v11, 0x1Cu);
    }
  }

  v9 = [v3 allConnectionsNotificationsEntitlement];

  return v9;
}

- (void)notifyOfClient:(id)a3 bundleID:(id)a4 forClient:(id)a5 withFilter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 9;
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
    v16 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v12 clientUID];
    v18 = [v12 clientBundleID];
    v19 = [v12 accessoryFilterDictionary];
    v21 = 138413570;
    v22 = v17;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "clientUID received %@ -> %@, clientBundleID %@ -> %@, accessoryFilterDictionary %@ -> %@", &v21, 0x3Eu);
  }

  [v12 setClientUID:v10];
  [v12 setClientBundleID:v11];
  if ([v12 hasHIDClient])
  {
    v20 = 0;
  }

  else
  {
    v20 = v13;
  }

  [v12 setAccessoryFilterDictionary:v20];
  [(ACCConnectionInfoServer *)self updateFilteredListForClient:v12];
  [(ACCConnectionInfoServer *)self notifyClientOfConnections:v12];
}

- (void)notifyOfClient:(id)a3 bundleID:(id)a4 forClient:(id)a5 withFilter:(id)a6 forIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 9;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v18 = &_os_log_default;
  }

  else
  {
    v19 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v14 clientUID];
    v21 = [v14 clientBundleID];
    v22 = [v14 accessoryFilterDictionary];
    v23 = 138413570;
    v24 = v20;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "clientUID received %@ -> %@, clientBundleID %@ -> %@, accessoryFilterDictionary %@ -> %@", &v23, 0x3Eu);
  }

  [v14 setClientUID:v12];
  [v14 setClientBundleID:v13];
  [v14 setHasHIDClient:1];
  [v14 setAccessoryFilterDictionary:0];
  [(ACCConnectionInfoServer *)self updateFilteredListForClient:v14];
  [(ACCConnectionInfoServer *)self notifyClientOfConnections:v14];
}

- (BOOL)checkClient:(id)a3 hasEntitlement:(id)a4
{
  v5 = a4;
  v6 = [a3 XPCConnection];
  v7 = [v6 hasEntitlement:v5];

  return v7;
}

- (id)copyClientUID:(id)a3
{
  v3 = [a3 clientUID];
  v4 = [v3 copy];

  return v4;
}

- (void)notifyClientOfConnections:(id)a3
{
  v54 = a3;
  v3 = platform_connectionInfo_accessoryConnections();
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
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
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v54 clientUID];
    v8 = [v54 clientBundleID];
    v9 = [(__CFSet *)v3 count];
    v10 = [v54 accessoryFilterDictionary];
    *buf = 138413058;
    v66 = v7;
    v67 = 2112;
    v68 = v8;
    v69 = 2048;
    v70 = v9;
    v71 = 2112;
    v72 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "clientUID %@ (%@), notify of connections (%lu), accessoryFilterDictionary %@", buf, 0x2Au);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v48 = [(__CFSet *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v48)
  {
    v47 = *v60;
    v11 = &_os_log_default;
    do
    {
      v12 = 0;
      do
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * v12);
        v14 = platform_connectionInfo_accessoryConnectionType(v13);
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects)
        {
          v17 = gNumLogObjects < 9;
        }

        else
        {
          v17 = 1;
        }

        v51 = v12;
        if (v17)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v66 = v15;
            v67 = 1024;
            LODWORD(v68) = v16;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v18 = &_os_log_default;
          v19 = &_os_log_default;
        }

        else
        {
          v19 = *(gLogObjects + 64);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v44 = [v54 clientUID];
          v45 = [v54 clientBundleID];
          *buf = 138412802;
          v66 = v44;
          v67 = 2112;
          v68 = v45;
          v69 = 2112;
          v70 = v13;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "clientUID received %@ (%@), sending attach of connection %@", buf, 0x20u);
        }

        v20 = platform_connectionInfo_accessoryInfoForConnection(v13);
        v49 = platform_connectionInfo_accessoryPropertiesForConnection(v13);
        v50 = v20;
        [ACCConnectionInfoServer accessoryConnectionAttached:"accessoryConnectionAttached:type:info:properties:forClient:" type:v13 info:v14 properties:v20 forClient:?];
        v21 = platform_connectionInfo_accessoryEndpoints(v13);
        v22 = gLogObjects;
        v23 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 9)
        {
          v11 = *(gLogObjects + 64);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v66 = v22;
            v67 = 1024;
            LODWORD(v68) = v23;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v24 = &_os_log_default;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v25 = [v54 clientUID];
          v26 = [v54 clientBundleID];
          v27 = [(__CFSet *)v21 count];
          *buf = 138413058;
          v66 = v25;
          v67 = 2112;
          v68 = v26;
          v69 = 2048;
          v70 = v27;
          v71 = 2112;
          v72 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "clientUID received %@ (%@), sending notify of existing endpoints (%lu) for connection %@", buf, 0x2Au);
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v52 = v21;
        v28 = [(__CFSet *)v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v56;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v56 != v30)
              {
                objc_enumerationMutation(v52);
              }

              v32 = *(*(&v55 + 1) + 8 * i);
              v33 = platform_connectionInfo_endpointTransportType(v13, v32);
              v34 = platform_connectionInfo_endpointProtocol(v13, v32);
              v35 = gLogObjects;
              v36 = gNumLogObjects;
              if (gLogObjects)
              {
                v37 = gNumLogObjects < 9;
              }

              else
              {
                v37 = 1;
              }

              if (v37)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v66 = v35;
                  v67 = 1024;
                  LODWORD(v68) = v36;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v38 = &_os_log_default;
                v39 = &_os_log_default;
              }

              else
              {
                v39 = *(gLogObjects + 64);
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                v42 = [v54 clientUID];
                v43 = [v54 clientBundleID];
                *buf = 138413058;
                v66 = v42;
                v67 = 2112;
                v68 = v43;
                v69 = 2112;
                v70 = v32;
                v71 = 2112;
                v72 = v13;
                _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "clientUID received %@ (%@), sending attach of endpoints %@ for connection %@", buf, 0x2Au);
              }

              v40 = platform_connectionInfo_accessoryPropertiesForEndpoint(v13, v32);
              [(ACCConnectionInfoServer *)self accessoryEndpointAttached:v32 transportType:v33 protocol:v34 properties:v40 forConnection:v13 forClient:v54];
              if (platform_connectionInfo_checkConfigStreamCategoryListReady(v13, v32))
              {
                v41 = [v54 clientUID];
                [(ACCConnectionInfoServer *)self configStreamCategoryListReady:v32 connection:v13 client:v41];
              }
            }

            v29 = [(__CFSet *)v52 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v29);
        }

        v12 = v51 + 1;
        v11 = &_os_log_default;
      }

      while ((v51 + 1) != v48);
      v48 = [(__CFSet *)obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v48);
  }
}

- (void)setInterceptState:(BOOL)a3 forEndpoint:(id)a4 connection:(id)a5 clientInfo:(id)a6
{
  if (a3)
  {
    v7 = a4;
    v8 = [a6 interceptEnabled];
    [v8 addObject:v7];
  }
}

- (void)accessoryConnectionAttached:(id)a3 type:(int)a4 info:(id)a5 properties:(id)a6
{
  v35 = a3;
  v9 = a5;
  v10 = a6;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412546;
    v42 = v35;
    v43 = 2048;
    v44 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sending accessoryConnectionAttached for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  v15 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v15 lock];

  if (([(NSMutableSet *)self->_accessories containsObject:v35]& 1) == 0)
  {
    [(NSMutableSet *)self->_accessories addObject:v35];
  }

  v16 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v16 unlock];

  v17 = [(ACCConnectionInfoServer *)self clientListLock];
  [v17 lock];

  v18 = [(NSMutableSet *)self->_clientConnections copy];
  v19 = [(ACCConnectionInfoServer *)self clientListLock];
  [v19 unlock];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = *v37;
    *&v22 = 134218240;
    v33 = v22;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        v27 = [v26 clientUID];

        if (v27)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v26];
          [(ACCConnectionInfoServer *)self accessoryConnectionAttached:v35 type:a4 info:v9 properties:v10 forClient:v26];
        }

        else
        {
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (gLogObjects)
          {
            v30 = gNumLogObjects < 9;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v33;
              v42 = v28;
              v43 = 1024;
              LODWORD(v44) = v29;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v31 = &_os_log_default;
            v32 = &_os_log_default;
          }

          else
          {
            v32 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v23);
  }
}

void __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)accessoryConnectionDetached:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 9;
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
    v7 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412546;
    v34 = v4;
    v35 = 2048;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "sending accessoryConnectionDetached for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  v9 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v9 lock];

  [(NSMutableSet *)self->_accessories removeObject:v4];
  v10 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v10 unlock];

  v11 = [(ACCConnectionInfoServer *)self clientListLock];
  [v11 lock];

  v12 = [(NSMutableSet *)self->_clientConnections copy];
  v13 = [(ACCConnectionInfoServer *)self clientListLock];
  [v13 unlock];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v29;
    *&v16 = 134218240;
    v27 = v16;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = [v20 clientUID];

        if (v21)
        {
          [(ACCConnectionInfoServer *)self accessoryConnectionDetached:v4 forClient:v20];
          [(ACCConnectionInfoServer *)self removeConnection:v4 forClientFilter:v20];
        }

        else
        {
          v22 = gLogObjects;
          v23 = gNumLogObjects;
          if (gLogObjects)
          {
            v24 = gNumLogObjects < 9;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v34 = v22;
              v35 = 1024;
              LODWORD(v36) = v23;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v25 = &_os_log_default;
            v26 = &_os_log_default;
          }

          else
          {
            v26 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)accessoryConnectionDetached:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCConnectionInfoServer *)self accessoryConnectionFiltered:v6 forClient:v7];
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 8;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v8)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCConnectionInfoServer accessoryConnectionDetached:forClient:];
    }
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCConnectionInfoServer accessoryConnectionDetached:forClient:];
    }

    v15 = [v7 clientUID];

    if (v15)
    {
      v11 = [v7 XPCConnection];
      v16 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_206];
      [v16 accessoryConnectionDetached:v6];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 9)
      {
        v11 = *(gLogObjects + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v11 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ACCConnectionInfoServer accessoryConnectionAttached:type:info:properties:forClient:];
      }
    }
  }
}

void __65__ACCConnectionInfoServer_accessoryConnectionDetached_forClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

void __111__ACCConnectionInfoServer_accessoryEndpointAttached_transportType_protocol_properties_forConnection_forClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
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
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412802;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "sending accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  v12 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v12 lock];

  v13 = [(NSMutableDictionary *)self->_endpoints objectForKey:v7];
  v14 = v13;
  if (v13)
  {
    [v13 removeObject:v6];
  }

  v31 = v14;
  v15 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v15 unlock];

  v16 = [(ACCConnectionInfoServer *)self clientListLock];
  [v16 lock];

  v17 = [(NSMutableSet *)self->_clientConnections copy];
  v18 = [(ACCConnectionInfoServer *)self clientListLock];
  [v18 unlock];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        v25 = [v24 clientUID];

        if (v25)
        {
          [(ACCConnectionInfoServer *)self accessoryEndpointDetached:v6 forConnection:v7 forClient:v24];
          [(ACCConnectionInfoServer *)self removeEndpoint:v6 connection:v7 forClientFilter:v24];
        }

        else
        {
          v26 = gLogObjects;
          v27 = gNumLogObjects;
          if (gLogObjects)
          {
            v28 = gNumLogObjects < 9;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v38 = v26;
              v39 = 1024;
              LODWORD(v40) = v27;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v29 = &_os_log_default;
            v30 = &_os_log_default;
          }

          else
          {
            v30 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACCConnectionInfoServer *)self accessoryEndpointFiltered:v8 forConnection:v9 forClient:v10];
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 8;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v11)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v10 clientUID];
      v18 = [v10 clientBundleID];
      v24 = 138413058;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Skip sending filtered accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to client %@ (%@)", &v24, 0x2Au);

LABEL_24:
    }
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v10 clientUID];
      v23 = [v10 clientBundleID];
      v24 = 138413058;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "sending accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to client %@ (%@)", &v24, 0x2Au);
    }

    v20 = [v10 clientUID];

    if (v20)
    {
      v14 = [v10 XPCConnection];
      v17 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_210];
      [v17 accessoryEndpointDetached:v8 forConnection:v9];
      goto LABEL_24;
    }

    if (gLogObjects && gNumLogObjects >= 9)
    {
      v14 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ACCConnectionInfoServer accessoryConnectionAttached:type:info:properties:forClient:];
    }
  }
}

void __77__ACCConnectionInfoServer_accessoryEndpointDetached_forConnection_forClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)accessoryConnectionFiltered:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6 && ([v6 filteredAccessories], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", v5), v8, v9))
  {
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v10 = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACCConnectionInfoServer accessoryConnectionFiltered:forClient:];
    }

    v13 = 1;
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v12 = &_os_log_default;
    }

    else
    {
      v10 = *(gLogObjects + 64);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACCConnectionInfoServer accessoryConnectionFiltered:forClient:];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)accessoryEndpointFiltered:(id)a3 forConnection:(id)a4 forClient:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8 && v9)
  {
    v11 = [v9 filteredAccessories];
    if ([v11 containsObject:v8])
    {

      goto LABEL_7;
    }

    v12 = [v10 filteredEndpoints];
    v13 = [v12 containsObject:v7];

    if (v13)
    {
LABEL_7:
      if (gLogObjects && gNumLogObjects >= 9)
      {
        v14 = *(gLogObjects + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v10 clientUID];
        v23 = [v10 clientBundleID];
        v24 = 138413058;
        v25 = v8;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "endpoint %@ - %@ filtered for client %@ (%@)", &v24, 0x2Au);
      }

      v17 = 1;
      goto LABEL_27;
    }
  }

  if (gLogObjects)
  {
    v15 = gNumLogObjects < 9;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v16 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v10 clientUID];
    v21 = [v10 clientBundleID];
    v24 = 138413058;
    v25 = v8;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "endpoint %@ - %@ NOT filtered for client %@ (%@)", &v24, 0x2Au);
  }

  v17 = 0;
LABEL_27:

  return v17;
}

- (void)updateFilteredListForClient:(id)a3
{
  v4 = a3;
  v5 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v5 lock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_accessories;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        [(ACCConnectionInfoServer *)self _updateFilteredListForClient:v4 forConnection:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [v11 unlock];

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v12 = *(gLogObjects + 64);
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
    [(ACCConnectionInfoServer *)v4 updateFilteredListForClient:v12];
  }
}

- (void)_updateFilteredListForClient:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessoryFilterDictionary];
  v9 = [v8 objectForKey:ACCConnectionInfoFilterAllowConnectionType];
  v10 = [v9 unsignedIntValue];
  if ([(NSMutableSet *)self->_accessories containsObject:v7])
  {
    v11 = platform_connectionInfo_accessoryConnectionType(v7);
    if (gLogObjects && gNumLogObjects >= 9)
    {
      v12 = *(gLogObjects + 64);
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

    v14 = 1 << v11;
    v15 = &audioProductCerts_endpoint_publish_onceToken;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v6 clientUID];
      [v6 clientBundleID];
      *buf = 138413570;
      v44 = v37;
      v46 = v45 = 2112;
      v34 = v46;
      v47 = 2112;
      v48 = v7;
      v49 = 1024;
      *v50 = v14;
      *&v50[4] = 2112;
      *&v50[6] = v9;
      v51 = 1024;
      v52 = v10;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@, clientInfo.clientBundleID %@, %@ connTypeMask %xh, connTypeFilterValue %@ (%xh)", buf, 0x36u);

      v15 = &audioProductCerts_endpoint_publish_onceToken;
    }

    v16 = [v6 filteredAccessories];
    v17 = v16;
    if (!v9 || (v14 & v10) != 0)
    {
      [v16 removeObject:v7];

      v20 = v15[491];
      if (v20 && gNumLogObjects >= 9)
      {
        v19 = *(v20 + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v19 = &_os_log_default;
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ACCConnectionInfoServer _updateFilteredListForClient:forConnection:];
      }
    }

    else
    {
      [v16 addObject:v7];

      v18 = v15[491];
      if (v18 && gNumLogObjects >= 9)
      {
        v19 = *(v18 + 64);
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

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [ACCConnectionInfoServer _updateFilteredListForClient:forConnection:];
      }
    }

    v23 = [(NSMutableDictionary *)self->_endpoints objectForKey:v7];
    v24 = v15[491];
    if (v24 && gNumLogObjects >= 9)
    {
      v25 = *(v24 + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v25 = &_os_log_default;
      v26 = &_os_log_default;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v6 clientUID];
      v36 = [v6 clientBundleID];
      *buf = 138413058;
      v44 = v35;
      v45 = 2112;
      v46 = v36;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      *v50 = v23;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@ (%@), connection %@, process endpointSet %@ ", buf, 0x2Au);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v23;
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(ACCConnectionInfoServer *)self _updateFilteredListForClient:v6 forEndpoint:*(*(&v38 + 1) + 8 * i) connection:v7];
        }

        v29 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v29);
    }
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v32 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v32 = &_os_log_default;
    v33 = &_os_log_default;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [ACCConnectionInfoServer _updateFilteredListForClient:v6 forConnection:v32];
  }
}

- (void)_updateFilteredListForClient:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 accessoryFilterDictionary];
  v12 = [v11 objectForKey:ACCConnectionInfoFilterAllowEndpointTransport];
  v13 = [v11 objectForKey:ACCConnectionInfoFilterAllowEndpointProtocol];
  if (v12 | v13)
  {
    v35 = [v12 unsignedIntValue];
    v14 = [v13 unsignedIntValue];
    v15 = [(NSMutableDictionary *)self->_endpoints objectForKey:v10];
    if ([v15 containsObject:v9])
    {
      v32 = v14;
      v16 = platform_connectionInfo_endpointTransportType(v10, v9);
      v33 = platform_connectionInfo_endpointProtocol(v10, v9);
      if (gLogObjects && gNumLogObjects >= 9)
      {
        v17 = *(gLogObjects + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v17 = &_os_log_default;
        v18 = &_os_log_default;
      }

      v19 = 1 << v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = [v8 clientUID];
        [v8 clientBundleID];
        *buf = 138413826;
        v37 = v31;
        v39 = v38 = 2112;
        v30 = v39;
        v40 = 2112;
        v41 = v10;
        v42 = 2112;
        v43 = v9;
        v44 = 1024;
        v45 = v19;
        v46 = 2112;
        v47 = v12;
        v48 = 1024;
        v49 = v35;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@ (%@), %@ - %@ endpTransportMask %xh, endpTransportFilterValue %@ (%xh)", buf, 0x40u);
      }

      if (gLogObjects && gNumLogObjects >= 9)
      {
        v20 = *(gLogObjects + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v20 = &_os_log_default;
        v21 = &_os_log_default;
      }

      v22 = 1 << v33;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v8 clientUID];
        v31 = [v8 clientBundleID];
        *buf = 138413826;
        v37 = v34;
        v38 = 2112;
        v39 = v31;
        v40 = 2112;
        v41 = v10;
        v42 = 2112;
        v43 = v9;
        v44 = 1024;
        v45 = v22;
        v46 = 2112;
        v47 = v13;
        v48 = 1024;
        v49 = v32;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@ (%@), %@ - %@ endpProtocolMask %xh, endpProtocolFilterValue %@ (%xh)", buf, 0x40u);
      }

      if ((!v12 || (v19 & v35) != 0) && (!v13 || (v22 & v32) != 0))
      {
        v26 = [v8 filteredEndpoints];
        [v26 removeObject:v9];

        if (gLogObjects && gNumLogObjects >= 9)
        {
          v24 = *(gLogObjects + 64);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v24 = &_os_log_default;
          v27 = &_os_log_default;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [ACCConnectionInfoServer _updateFilteredListForClient:forEndpoint:connection:];
        }
      }

      else
      {
        v23 = [v8 filteredEndpoints];
        [v23 addObject:v9];

        if (gLogObjects && gNumLogObjects >= 9)
        {
          v24 = *(gLogObjects + 64);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v24 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [ACCConnectionInfoServer _updateFilteredListForClient:forEndpoint:connection:];
        }
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v28 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v28 = &_os_log_default;
    v29 = &_os_log_default;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [ACCConnectionInfoServer _updateFilteredListForClient:v8 forEndpoint:v28 connection:?];
  }
}

- (void)removeConnection:(id)a3 forClientFilter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 filteredAccessories];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = [v6 filteredAccessories];
    [v9 removeObject:v5];
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v10 = *(gLogObjects + 64);
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
    [ACCConnectionInfoServer removeConnection:forClientFilter:];
  }
}

- (void)removeEndpoint:(id)a3 connection:(id)a4 forClientFilter:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 filteredEndpoints];
  v11 = [v10 containsObject:v7];

  if (v11)
  {
    v12 = [v9 filteredEndpoints];
    [v12 removeObject:v7];
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v13 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v9 clientUID];
    v16 = [v9 clientBundleID];
    v17 = [v9 filteredEndpoints];
    v18 = 138413314;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v17;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "client %@ (%@), connectionUUID %@, endpointUUID %@, remove from filteredEndpoints %@", &v18, 0x34u);
  }
}

- (void)accessoryEndpointUpdate:(id)a3 protocol:(int)a4 properties:(id)a5 forConnection:(id)a6
{
  v9 = a3;
  v37 = a5;
  v10 = a6;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 9;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 67109890;
    *v44 = a4;
    *&v44[4] = 2112;
    *&v44[6] = v9;
    *&v44[14] = 2112;
    *&v44[16] = v10;
    *&v44[24] = 2048;
    *&v44[26] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sending accessoryEndpointUpdate:protocol %d for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x26u);
  }

  v15 = [(ACCConnectionInfoServer *)self clientListLock];
  [v15 lock];

  v16 = [(NSMutableSet *)self->_clientConnections copy];
  v17 = [(ACCConnectionInfoServer *)self clientListLock];
  [v17 unlock];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v40;
    *&v19 = 134218240;
    v35 = v19;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        v24 = [v23 clientUID];

        if (v24)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v23];
          if (![(ACCConnectionInfoServer *)self accessoryEndpointFiltered:v9 forConnection:v10 forClient:v23])
          {
            v27 = [v23 XPCConnection];
            v32 = [v27 remoteObjectProxyWithErrorHandler:&__block_literal_global_212];
            [v32 accessoryEndpointUpdate:v9 protocol:a4 properties:v37 forConnection:v10];
LABEL_37:

            goto LABEL_38;
          }

          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            v27 = *(gLogObjects + 64);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              *v44 = v25;
              *&v44[8] = 1024;
              *&v44[10] = v26;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v33 = &_os_log_default;
            v27 = &_os_log_default;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v32 = [v23 clientUID];
            v34 = [v23 clientBundleID];
            *buf = 138413058;
            *v44 = v9;
            *&v44[8] = 2112;
            *&v44[10] = v10;
            *&v44[18] = 2112;
            *&v44[20] = v32;
            *&v44[28] = 2112;
            *&v44[30] = v34;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryEndpointUpdate for endpointUUID %@, connectionUUID %@, to client %@ (%@)", buf, 0x2Au);

            goto LABEL_37;
          }
        }

        else
        {
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (gLogObjects)
          {
            v30 = gNumLogObjects < 9;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              *v44 = v28;
              *&v44[8] = 1024;
              *&v44[10] = v29;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v31 = &_os_log_default;
            v27 = &_os_log_default;
          }

          else
          {
            v27 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }

LABEL_38:
      }

      v20 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v20);
  }
}

void __85__ACCConnectionInfoServer_accessoryEndpointUpdate_protocol_properties_forConnection___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4
{
  v6 = a3;
  v33 = a4;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 9;
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
    v9 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412546;
    v39 = v6;
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "sending accessoryConnectionInfoPropertyChanged for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  v11 = [(ACCConnectionInfoServer *)self clientListLock];
  [v11 lock];

  v12 = [(NSMutableSet *)self->_clientConnections copy];
  v13 = [(ACCConnectionInfoServer *)self clientListLock];
  [v13 unlock];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v35;
    *&v16 = 134218240;
    v32 = v16;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        v21 = [v20 clientUID];

        if (v21)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v20];
          if (![(ACCConnectionInfoServer *)self accessoryConnectionFiltered:v6 forClient:v20])
          {
            v24 = [v20 XPCConnection];
            v29 = [v24 remoteObjectProxyWithErrorHandler:&__block_literal_global_214];
            [v29 accessoryConnectionInfoPropertyChanged:v6 properties:v33];
LABEL_37:

            goto LABEL_38;
          }

          v22 = gLogObjects;
          v23 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            v24 = *(gLogObjects + 64);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v39 = v22;
              v40 = 1024;
              LODWORD(v41) = v23;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v30 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v29 = [v20 clientUID];
            v31 = [v20 clientBundleID];
            *buf = 138412802;
            v39 = v6;
            v40 = 2112;
            v41 = v29;
            v42 = 2112;
            v43 = v31;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryConnectionInfoPropertyChanged for connectionUUID %@, to client %@ (%@)", buf, 0x20u);

            goto LABEL_37;
          }
        }

        else
        {
          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects)
          {
            v27 = gNumLogObjects < 9;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v39 = v25;
              v40 = 1024;
              LODWORD(v41) = v26;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v28 = &_os_log_default;
            v24 = &_os_log_default;
          }

          else
          {
            v24 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }

LABEL_38:
      }

      v17 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v17);
  }
}

void __77__ACCConnectionInfoServer_accessoryConnectionInfoPropertyChanged_properties___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5
{
  v8 = a3;
  v35 = a4;
  v9 = a5;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 9;
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
    v12 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412802;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    v45 = 2048;
    v46 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "sending accessoryEndpointInfoPropertyChanged for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  v14 = [(ACCConnectionInfoServer *)self clientListLock];
  [v14 lock];

  v15 = [(NSMutableSet *)self->_clientConnections copy];
  v16 = [(ACCConnectionInfoServer *)self clientListLock];
  [v16 unlock];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    *&v18 = 134218240;
    v34 = v18;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 clientUID];

        if (v23)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v22];
          if (![(ACCConnectionInfoServer *)self accessoryEndpointFiltered:v8 forConnection:v9 forClient:v22])
          {
            v26 = [v22 XPCConnection];
            v31 = [v26 remoteObjectProxyWithErrorHandler:&__block_literal_global_216];
            [v31 accessoryEndpointInfoPropertyChanged:v8 properties:v35 forConnection:v9];
LABEL_37:

            goto LABEL_38;
          }

          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            v26 = *(gLogObjects + 64);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v42 = v24;
              v43 = 1024;
              LODWORD(v44) = v25;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v32 = &_os_log_default;
            v26 = &_os_log_default;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v31 = [v22 clientUID];
            v33 = [v22 clientBundleID];
            *buf = 138413058;
            v42 = v8;
            v43 = 2112;
            v44 = v9;
            v45 = 2112;
            v46 = v31;
            v47 = 2112;
            v48 = v33;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryEndpointInfoPropertyChanged for endpointUUID %@, connectionUUID %@, to client %@ (%@)", buf, 0x2Au);

            goto LABEL_37;
          }
        }

        else
        {
          v27 = gLogObjects;
          v28 = gNumLogObjects;
          if (gLogObjects)
          {
            v29 = gNumLogObjects < 9;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v42 = v27;
              v43 = 1024;
              LODWORD(v44) = v28;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v30 = &_os_log_default;
            v26 = &_os_log_default;
          }

          else
          {
            v26 = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
          }
        }

LABEL_38:
      }

      v19 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v19);
  }
}

void __89__ACCConnectionInfoServer_accessoryEndpointInfoPropertyChanged_properties_forConnection___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)configStreamCategoryListReady:(id)a3 connection:(id)a4 client:(id)a5
{
  v33 = a3;
  v32 = a4;
  v8 = a5;
  v9 = [(ACCConnectionInfoServer *)self clientListLock];
  [v9 lock];

  v10 = [(NSMutableSet *)self->_clientConnections copy];
  v11 = [(ACCConnectionInfoServer *)self clientListLock];
  [v11 unlock];

  v12 = &audioProductCerts_endpoint_publish_onceToken;
  v13 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 9)
  {
    v14 = *(gLogObjects + 64);
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
    *buf = 138412802;
    v40 = v33;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "sending configStreamCategoryListReady for endpointUUID %@, connectionUUID %@, clientUUID %@", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v35;
LABEL_11:
    v21 = 0;
    while (1)
    {
      if (*v35 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v34 + 1) + 8 * v21);
      v23 = [v22 clientUID];
      if (v23)
      {
        v24 = v23;
        if (!v8)
        {

LABEL_19:
          v27 = [v22 XPCConnection];
          v28 = [v27 remoteObjectProxyWithErrorHandler:&__block_literal_global_218];
          [v28 configStreamCategoryListReady:v33 connection:v32];

          if (v8)
          {
            v29 = v16;
            goto LABEL_35;
          }

          v19 = 1;
          goto LABEL_21;
        }

        v25 = [v22 clientUID];
        v26 = [v25 isEqualToString:v8];

        if (v26)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      if (v18 == ++v21)
      {
        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v18)
        {
          goto LABEL_11;
        }

        v12 = &audioProductCerts_endpoint_publish_onceToken;
        v13 = &audioProductCerts_endpoint_publish_onceToken;
        if (v19)
        {
          goto LABEL_36;
        }

        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v30 = v12[491];
  if (v30 && *(v13 + 984) >= 9)
  {
    v29 = *(v30 + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v29 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v40 = v33;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Could not find client to send configStreamCategoryListReady for endpointUUID %@, connectionUUID %@, clientUUID %@", buf, 0x20u);
  }

LABEL_35:

LABEL_36:
}

void __75__ACCConnectionInfoServer_configStreamCategoryListReady_connection_client___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)configStreamCategoriesResponse:(id)a3 forEndpoint:(id)a4 connection:(id)a5 client:(id)a6 success:(BOOL)a7
{
  v35 = a7;
  v37 = a3;
  v36 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ACCConnectionInfoServer *)self clientListLock];
  [v13 lock];

  v14 = [(NSMutableSet *)self->_clientConnections copy];
  v15 = [(ACCConnectionInfoServer *)self clientListLock];
  [v15 unlock];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [v21 clientUID];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 clientUID];
          v25 = [v24 isEqualToString:v12];

          if (v25)
          {
            if (gLogObjects && gNumLogObjects >= 9)
            {
              v30 = *(gLogObjects + 64);
              v28 = v36;
              v27 = v37;
            }

            else
            {
              v28 = v36;
              v27 = v37;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v30 = &_os_log_default;
              v31 = &_os_log_default;
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138413314;
              v43 = v28;
              v44 = 2112;
              v45 = v11;
              v46 = 2112;
              v47 = v12;
              v48 = 1024;
              v49 = v35;
              v50 = 2112;
              v51 = v27;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "sending configStreamCategoriesResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, categories %@", buf, 0x30u);
            }

            v32 = [v21 XPCConnection];
            v33 = [v32 remoteObjectProxyWithErrorHandler:&__block_literal_global_220];
            [v33 configStreamCategoriesResponse:v27 forEndpoint:v28 connection:v11 success:v35];

            v26 = v16;
            goto LABEL_27;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v26 = *(gLogObjects + 64);
    v28 = v36;
    v27 = v37;
    v29 = v35;
  }

  else
  {
    v29 = v35;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v26 = &_os_log_default;
    v34 = &_os_log_default;
    v28 = v36;
    v27 = v37;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v43 = v28;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 1024;
    v49 = v29;
    v50 = 2112;
    v51 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Could not find client to send configStreamCategoriesResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, categories %@", buf, 0x30u);
  }

LABEL_27:
}

void __96__ACCConnectionInfoServer_configStreamCategoriesResponse_forEndpoint_connection_client_success___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)configStreamPropertyResponse:(unsigned __int8)a3 forCategory:(unsigned __int16)a4 forEndpoint:(id)a5 connection:(id)a6 client:(id)a7 value:(id)a8 success:(BOOL)a9
{
  LODWORD(v36) = a3;
  HIDWORD(v36) = a4;
  v38 = a5;
  v37 = a6;
  v13 = a7;
  v14 = a8;
  v15 = [(ACCConnectionInfoServer *)self clientListLock];
  [v15 lock];

  v16 = [(NSMutableSet *)self->_clientConnections copy];
  v17 = [(ACCConnectionInfoServer *)self clientListLock];
  [v17 unlock];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * i);
        v24 = [v23 clientUID];
        if (v24)
        {
          v25 = v24;
          v26 = [v23 clientUID];
          v27 = [v26 isEqualToString:v13];

          if (v27)
          {
            if (gLogObjects && gNumLogObjects >= 9)
            {
              v29 = *(gLogObjects + 64);
              v31 = v37;
              v30 = v38;
            }

            else
            {
              v31 = v37;
              v30 = v38;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }

              v29 = &_os_log_default;
              v32 = &_os_log_default;
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138413314;
              v44 = v30;
              v45 = 2112;
              v46 = v31;
              v47 = 2112;
              v48 = v13;
              v49 = 1024;
              v50 = a9;
              v51 = 2112;
              v52 = v14;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "sending configStreamPropertyResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, value %@", buf, 0x30u);
            }

            v33 = [v23 XPCConnection];
            v34 = [v33 remoteObjectProxyWithErrorHandler:&__block_literal_global_222];
            [v34 configStreamPropertyResponse:v36 forCategory:HIDWORD(v36) forEndpoint:v30 connection:v31 value:v14 success:a9];

            v28 = v18;
            goto LABEL_27;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if (gLogObjects && gNumLogObjects >= 9)
  {
    v28 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v28 = &_os_log_default;
    v35 = &_os_log_default;
  }

  v31 = v37;
  v30 = v38;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v44 = v38;
    v45 = 2112;
    v46 = v37;
    v47 = 2112;
    v48 = v13;
    v49 = 1024;
    v50 = a9;
    v51 = 2112;
    v52 = v14;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Could not find client to send configStreamPropertyResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, value %@", buf, 0x30u);
  }

LABEL_27:
}

void __112__ACCConnectionInfoServer_configStreamPropertyResponse_forCategory_forEndpoint_connection_client_value_success___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)handleInterceptData:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v35 = a3;
  v8 = a4;
  v36 = a5;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 9;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(NSMutableSet *)self->_clientConnections count];
    *buf = 138412802;
    v43 = v8;
    v44 = 2112;
    v45 = v36;
    v46 = 2048;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "sending handleInterceptData for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  v13 = [(ACCConnectionInfoServer *)self clientListLock];
  [v13 lock];

  v14 = [(NSMutableSet *)self->_clientConnections copy];
  v15 = [(ACCConnectionInfoServer *)self clientListLock];
  [v15 unlock];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    *&v18 = 134218240;
    v34 = v18;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 interceptEnabled];
        v24 = [v23 containsObject:v8];

        v25 = [v22 clientUID];
        v26 = v25;
        if (v25 && (v24 & 1) != 0)
        {
          v27 = [v22 XPCConnection];
          v28 = [v27 hasEntitlement:@"com.apple.accessory.testing"];

          if (v28)
          {
            v29 = [v22 XPCConnection];
            v30 = [v29 remoteObjectProxyWithErrorHandler:&__block_literal_global_227];
            [v30 handleInterceptData:v35 forEndpoint:v8 connection:v36];

            goto LABEL_29;
          }
        }

        else
        {
        }

        v31 = gLogObjects;
        v32 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 9)
        {
          v29 = *(gLogObjects + 64);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v34;
            v43 = v31;
            v44 = 1024;
            LODWORD(v45) = v32;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v33 = &_os_log_default;
          v29 = &_os_log_default;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
        }

LABEL_29:
      }

      v19 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }
}

void __70__ACCConnectionInfoServer_handleInterceptData_forEndpoint_connection___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 9;
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
    v5 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__ACCConnectionInfoServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_0 != -1)
  {
    dispatch_once(&sharedServer_once_0, block);
  }

  v2 = sharedServer_sharedInstance_0;

  return v2;
}

uint64_t __39__ACCConnectionInfoServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_0 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.connection-info-server" andFeatureNotification:"com.apple.accessories.connection-info-server.availability-changed"];

  return _objc_release_x1();
}

void __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke_cold_3(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found %lu clients in invalidation handler, should be 1", buf, 0xCu);
}

- (void)accessoryConnectionAttached:type:info:properties:forClient:.cold.2()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)accessoryConnectionAttached:type:info:properties:forClient:.cold.6()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)accessoryConnectionDetached:forClient:.cold.2()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)accessoryConnectionDetached:forClient:.cold.6()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)accessoryConnectionFiltered:forClient:.cold.2()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)accessoryConnectionFiltered:forClient:.cold.4()
{
  OUTLINED_FUNCTION_3_11();
  [OUTLINED_FUNCTION_11_2(v1 v2)];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_10_4() clientBundleID];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_updateFilteredListForClient:forConnection:.cold.3()
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_3_11();
  [v2 clientUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13_3() clientBundleID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_14_4() filteredAccessories];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_16_4();
}

- (void)_updateFilteredListForClient:forConnection:.cold.5()
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_3_11();
  [v2 clientUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13_3() clientBundleID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_14_4() filteredAccessories];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_16_4();
}

- (void)_updateFilteredListForClient:forEndpoint:connection:.cold.4()
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_3_11();
  [v2 clientUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13_3() clientBundleID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_14_4() filteredEndpoints];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_16_4();
}

- (void)_updateFilteredListForClient:forEndpoint:connection:.cold.6()
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_3_11();
  [v2 clientUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13_3() clientBundleID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_14_4() filteredEndpoints];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_16_4();
}

- (void)removeConnection:forClientFilter:.cold.2()
{
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_3_11();
  [v2 clientUID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13_3() clientBundleID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_14_4() filteredAccessories];
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_16_4();
}

@end