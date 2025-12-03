@interface ACCConnectionInfoServer
+ (id)sharedServer;
- (ACCConnectionInfoServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)accessoryConnectionFiltered:(id)filtered forClient:(id)client;
- (BOOL)accessoryEndpointFiltered:(id)filtered forConnection:(id)connection forClient:(id)client;
- (BOOL)checkClient:(id)client hasEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (id)copyClientUID:(id)d;
- (void)_updateFilteredListForClient:(id)client forConnection:(id)connection;
- (void)_updateFilteredListForClient:(id)client forEndpoint:(id)endpoint connection:(id)connection;
- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryConnectionDetached:(id)detached forClient:(id)client;
- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection forClient:(id)client;
- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)configStreamCategoriesResponse:(id)response forEndpoint:(id)endpoint connection:(id)connection client:(id)client success:(BOOL)success;
- (void)configStreamCategoryListReady:(id)ready connection:(id)connection client:(id)client;
- (void)configStreamPropertyResponse:(unsigned __int8)response forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection client:(id)client value:(id)value success:(BOOL)success;
- (void)handleInterceptData:(id)data forEndpoint:(id)endpoint connection:(id)connection;
- (void)notifyClientOfConnections:(id)connections;
- (void)notifyOfClient:(id)client bundleID:(id)d forClient:(id)forClient withFilter:(id)filter;
- (void)notifyOfClient:(id)client bundleID:(id)d forClient:(id)forClient withFilter:(id)filter forIdentifier:(id)identifier;
- (void)removeConnection:(id)connection forClientFilter:(id)filter;
- (void)removeEndpoint:(id)endpoint connection:(id)connection forClientFilter:(id)filter;
- (void)setInterceptState:(BOOL)state forEndpoint:(id)endpoint connection:(id)connection clientInfo:(id)info;
- (void)updateFilteredListForClient:(id)client;
@end

@implementation ACCConnectionInfoServer

- (ACCConnectionInfoServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  nameCopy = name;
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
    v24 = nameCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfoServer initWithXPCServiceName: %@", buf, 0xCu);
  }

  v22.receiver = self;
  v22.super_class = ACCConnectionInfoServer;
  v10 = [(ACCFeatureServer *)&v22 initWithXPCServiceName:nameCopy andFeatureNotification:notification];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
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
  [connectionCopy setExportedInterface:v11];

  v12 = [[ACCConnectionInfoClientInfo alloc] initWithXPCConnection:connectionCopy];
  v13 = [[ACCConnectionInfoServerRemote alloc] initWithClientInfo:v12];
  [connectionCopy setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCConnectionInfoXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __62__ACCConnectionInfoServer_listener_shouldAcceptNewConnection___block_invoke;
  v29[3] = &unk_100225C98;
  objc_copyWeak(&v30, &from);
  v29[4] = self;
  objc_copyWeak(&v31, &location);
  [connectionCopy setInvalidationHandler:v29];
  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  clientConnections = [(ACCConnectionInfoServer *)self clientConnections];
  [clientConnections addObject:v12];

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
    clientConnections2 = [(ACCConnectionInfoServer *)self clientConnections];
    v20 = [clientConnections2 count];
    *buf = 134217984;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "There are now %lu client(s).", buf, 0xCu);
  }

  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

  [connectionCopy resume];
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
      clientUID = [(ACCConnectionInfoClientInfo *)v12 clientUID];
      clientBundleID = [(ACCConnectionInfoClientInfo *)v12 clientBundleID];
      allConnectionsNotificationsEntitlement = [(ACCConnectionInfoClientInfo *)v12 allConnectionsNotificationsEntitlement];
      *buf = 138412802;
      v35 = clientUID;
      v36 = 2112;
      v37 = clientBundleID;
      v38 = 1024;
      v39 = allConnectionsNotificationsEntitlement;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Client %@ (%@) not entitled for showallconnections!!! return %d", buf, 0x1Cu);
    }
  }

  allConnectionsNotificationsEntitlement2 = [(ACCConnectionInfoClientInfo *)v12 allConnectionsNotificationsEntitlement];
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return allConnectionsNotificationsEntitlement2;
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

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy allConnectionsNotificationsEntitlement] & 1) == 0)
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
      clientUID = [connectionCopy clientUID];
      clientBundleID = [connectionCopy clientBundleID];
      v11 = 138412802;
      v12 = clientUID;
      v13 = 2112;
      v14 = clientBundleID;
      v15 = 1024;
      allConnectionsNotificationsEntitlement = [connectionCopy allConnectionsNotificationsEntitlement];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptXPCConnection: client %@ (%@) not entitled for showallconnections!!! return %d", &v11, 0x1Cu);
    }
  }

  allConnectionsNotificationsEntitlement2 = [connectionCopy allConnectionsNotificationsEntitlement];

  return allConnectionsNotificationsEntitlement2;
}

- (void)notifyOfClient:(id)client bundleID:(id)d forClient:(id)forClient withFilter:(id)filter
{
  clientCopy = client;
  dCopy = d;
  forClientCopy = forClient;
  filterCopy = filter;
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
    clientUID = [forClientCopy clientUID];
    clientBundleID = [forClientCopy clientBundleID];
    accessoryFilterDictionary = [forClientCopy accessoryFilterDictionary];
    v21 = 138413570;
    v22 = clientUID;
    v23 = 2112;
    v24 = clientCopy;
    v25 = 2112;
    v26 = clientBundleID;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = accessoryFilterDictionary;
    v31 = 2112;
    v32 = filterCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "clientUID received %@ -> %@, clientBundleID %@ -> %@, accessoryFilterDictionary %@ -> %@", &v21, 0x3Eu);
  }

  [forClientCopy setClientUID:clientCopy];
  [forClientCopy setClientBundleID:dCopy];
  if ([forClientCopy hasHIDClient])
  {
    v20 = 0;
  }

  else
  {
    v20 = filterCopy;
  }

  [forClientCopy setAccessoryFilterDictionary:v20];
  [(ACCConnectionInfoServer *)self updateFilteredListForClient:forClientCopy];
  [(ACCConnectionInfoServer *)self notifyClientOfConnections:forClientCopy];
}

- (void)notifyOfClient:(id)client bundleID:(id)d forClient:(id)forClient withFilter:(id)filter forIdentifier:(id)identifier
{
  clientCopy = client;
  dCopy = d;
  forClientCopy = forClient;
  filterCopy = filter;
  identifierCopy = identifier;
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
    clientUID = [forClientCopy clientUID];
    clientBundleID = [forClientCopy clientBundleID];
    accessoryFilterDictionary = [forClientCopy accessoryFilterDictionary];
    v23 = 138413570;
    v24 = clientUID;
    v25 = 2112;
    v26 = clientCopy;
    v27 = 2112;
    v28 = clientBundleID;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = accessoryFilterDictionary;
    v33 = 2112;
    v34 = filterCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "clientUID received %@ -> %@, clientBundleID %@ -> %@, accessoryFilterDictionary %@ -> %@", &v23, 0x3Eu);
  }

  [forClientCopy setClientUID:clientCopy];
  [forClientCopy setClientBundleID:dCopy];
  [forClientCopy setHasHIDClient:1];
  [forClientCopy setAccessoryFilterDictionary:0];
  [(ACCConnectionInfoServer *)self updateFilteredListForClient:forClientCopy];
  [(ACCConnectionInfoServer *)self notifyClientOfConnections:forClientCopy];
}

- (BOOL)checkClient:(id)client hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  xPCConnection = [client XPCConnection];
  v7 = [xPCConnection hasEntitlement:entitlementCopy];

  return v7;
}

- (id)copyClientUID:(id)d
{
  clientUID = [d clientUID];
  v4 = [clientUID copy];

  return v4;
}

- (void)notifyClientOfConnections:(id)connections
{
  connectionsCopy = connections;
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
    clientUID = [connectionsCopy clientUID];
    clientBundleID = [connectionsCopy clientBundleID];
    v9 = [(__CFSet *)v3 count];
    accessoryFilterDictionary = [connectionsCopy accessoryFilterDictionary];
    *buf = 138413058;
    v66 = clientUID;
    v67 = 2112;
    v68 = clientBundleID;
    v69 = 2048;
    v70 = v9;
    v71 = 2112;
    v72 = accessoryFilterDictionary;
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
          clientUID2 = [connectionsCopy clientUID];
          clientBundleID2 = [connectionsCopy clientBundleID];
          *buf = 138412802;
          v66 = clientUID2;
          v67 = 2112;
          v68 = clientBundleID2;
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
          clientUID3 = [connectionsCopy clientUID];
          clientBundleID3 = [connectionsCopy clientBundleID];
          v27 = [(__CFSet *)v21 count];
          *buf = 138413058;
          v66 = clientUID3;
          v67 = 2112;
          v68 = clientBundleID3;
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
                clientUID4 = [connectionsCopy clientUID];
                clientBundleID4 = [connectionsCopy clientBundleID];
                *buf = 138413058;
                v66 = clientUID4;
                v67 = 2112;
                v68 = clientBundleID4;
                v69 = 2112;
                v70 = v32;
                v71 = 2112;
                v72 = v13;
                _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "clientUID received %@ (%@), sending attach of endpoints %@ for connection %@", buf, 0x2Au);
              }

              v40 = platform_connectionInfo_accessoryPropertiesForEndpoint(v13, v32);
              [(ACCConnectionInfoServer *)self accessoryEndpointAttached:v32 transportType:v33 protocol:v34 properties:v40 forConnection:v13 forClient:connectionsCopy];
              if (platform_connectionInfo_checkConfigStreamCategoryListReady(v13, v32))
              {
                clientUID5 = [connectionsCopy clientUID];
                [(ACCConnectionInfoServer *)self configStreamCategoryListReady:v32 connection:v13 client:clientUID5];
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

- (void)setInterceptState:(BOOL)state forEndpoint:(id)endpoint connection:(id)connection clientInfo:(id)info
{
  if (state)
  {
    endpointCopy = endpoint;
    interceptEnabled = [info interceptEnabled];
    [interceptEnabled addObject:endpointCopy];
  }
}

- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties
{
  attachedCopy = attached;
  infoCopy = info;
  propertiesCopy = properties;
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
    v42 = attachedCopy;
    v43 = 2048;
    v44 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sending accessoryConnectionAttached for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  connectedAccessoryLock = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock lock];

  if (([(NSMutableSet *)self->_accessories containsObject:attachedCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_accessories addObject:attachedCopy];
  }

  connectedAccessoryLock2 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock2 unlock];

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v18 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v26 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v26];
          [(ACCConnectionInfoServer *)self accessoryConnectionAttached:attachedCopy type:type info:infoCopy properties:propertiesCopy forClient:v26];
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

- (void)accessoryConnectionDetached:(id)detached
{
  detachedCopy = detached;
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
    v34 = detachedCopy;
    v35 = 2048;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "sending accessoryConnectionDetached for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  connectedAccessoryLock = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock lock];

  [(NSMutableSet *)self->_accessories removeObject:detachedCopy];
  connectedAccessoryLock2 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock2 unlock];

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v12 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v20 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self accessoryConnectionDetached:detachedCopy forClient:v20];
          [(ACCConnectionInfoServer *)self removeConnection:detachedCopy forClientFilter:v20];
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

- (void)accessoryConnectionDetached:(id)detached forClient:(id)client
{
  detachedCopy = detached;
  clientCopy = client;
  v8 = [(ACCConnectionInfoServer *)self accessoryConnectionFiltered:detachedCopy forClient:clientCopy];
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
      xPCConnection = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      xPCConnection = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_DEBUG))
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

    clientUID = [clientCopy clientUID];

    if (clientUID)
    {
      xPCConnection = [clientCopy XPCConnection];
      v16 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_206];
      [v16 accessoryConnectionDetached:detachedCopy];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 9)
      {
        xPCConnection = *(gLogObjects + 64);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        xPCConnection = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_DEBUG))
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

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  detachedCopy = detached;
  connectionCopy = connection;
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
    v38 = detachedCopy;
    v39 = 2112;
    v40 = connectionCopy;
    v41 = 2048;
    v42 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "sending accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  connectedAccessoryLock = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock lock];

  v13 = [(NSMutableDictionary *)self->_endpoints objectForKey:connectionCopy];
  v14 = v13;
  if (v13)
  {
    [v13 removeObject:detachedCopy];
  }

  v31 = v14;
  connectedAccessoryLock2 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock2 unlock];

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v17 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v24 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self accessoryEndpointDetached:detachedCopy forConnection:connectionCopy forClient:v24];
          [(ACCConnectionInfoServer *)self removeEndpoint:detachedCopy connection:connectionCopy forClientFilter:v24];
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

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection forClient:(id)client
{
  detachedCopy = detached;
  connectionCopy = connection;
  clientCopy = client;
  v11 = [(ACCConnectionInfoServer *)self accessoryEndpointFiltered:detachedCopy forConnection:connectionCopy forClient:clientCopy];
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
      xPCConnection = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      xPCConnection = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_DEBUG))
    {
      clientUID = [clientCopy clientUID];
      clientBundleID = [clientCopy clientBundleID];
      v24 = 138413058;
      v25 = detachedCopy;
      v26 = 2112;
      v27 = connectionCopy;
      v28 = 2112;
      v29 = clientUID;
      v30 = 2112;
      v31 = clientBundleID;
      _os_log_debug_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_DEBUG, "Skip sending filtered accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to client %@ (%@)", &v24, 0x2Au);

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
      clientUID2 = [clientCopy clientUID];
      clientBundleID2 = [clientCopy clientBundleID];
      v24 = 138413058;
      v25 = detachedCopy;
      v26 = 2112;
      v27 = connectionCopy;
      v28 = 2112;
      v29 = clientUID2;
      v30 = 2112;
      v31 = clientBundleID2;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "sending accessoryEndpointDetached for endpointUUID %@, connectionUUID %@, to client %@ (%@)", &v24, 0x2Au);
    }

    clientUID3 = [clientCopy clientUID];

    if (clientUID3)
    {
      xPCConnection = [clientCopy XPCConnection];
      clientUID = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_210];
      [clientUID accessoryEndpointDetached:detachedCopy forConnection:connectionCopy];
      goto LABEL_24;
    }

    if (gLogObjects && gNumLogObjects >= 9)
    {
      xPCConnection = *(gLogObjects + 64);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      xPCConnection = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_DEBUG))
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

- (BOOL)accessoryConnectionFiltered:(id)filtered forClient:(id)client
{
  filteredCopy = filtered;
  clientCopy = client;
  v7 = clientCopy;
  if (filteredCopy && clientCopy && ([clientCopy filteredAccessories], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", filteredCopy), v8, v9))
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

- (BOOL)accessoryEndpointFiltered:(id)filtered forConnection:(id)connection forClient:(id)client
{
  filteredCopy = filtered;
  connectionCopy = connection;
  clientCopy = client;
  v10 = clientCopy;
  if (filteredCopy && connectionCopy && clientCopy)
  {
    filteredAccessories = [clientCopy filteredAccessories];
    if ([filteredAccessories containsObject:connectionCopy])
    {

      goto LABEL_7;
    }

    filteredEndpoints = [v10 filteredEndpoints];
    v13 = [filteredEndpoints containsObject:filteredCopy];

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
        clientUID = [v10 clientUID];
        clientBundleID = [v10 clientBundleID];
        v24 = 138413058;
        v25 = connectionCopy;
        v26 = 2112;
        v27 = filteredCopy;
        v28 = 2112;
        v29 = clientUID;
        v30 = 2112;
        v31 = clientBundleID;
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
    clientUID2 = [v10 clientUID];
    clientBundleID2 = [v10 clientBundleID];
    v24 = 138413058;
    v25 = connectionCopy;
    v26 = 2112;
    v27 = filteredCopy;
    v28 = 2112;
    v29 = clientUID2;
    v30 = 2112;
    v31 = clientBundleID2;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "endpoint %@ - %@ NOT filtered for client %@ (%@)", &v24, 0x2Au);
  }

  v17 = 0;
LABEL_27:

  return v17;
}

- (void)updateFilteredListForClient:(id)client
{
  clientCopy = client;
  connectedAccessoryLock = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock lock];

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

        [(ACCConnectionInfoServer *)self _updateFilteredListForClient:clientCopy forConnection:*(*(&v14 + 1) + 8 * i), v14];
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  connectedAccessoryLock2 = [(ACCConnectionInfoServer *)self connectedAccessoryLock];
  [connectedAccessoryLock2 unlock];

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
    [(ACCConnectionInfoServer *)clientCopy updateFilteredListForClient:v12];
  }
}

- (void)_updateFilteredListForClient:(id)client forConnection:(id)connection
{
  clientCopy = client;
  connectionCopy = connection;
  accessoryFilterDictionary = [clientCopy accessoryFilterDictionary];
  v9 = [accessoryFilterDictionary objectForKey:ACCConnectionInfoFilterAllowConnectionType];
  unsignedIntValue = [v9 unsignedIntValue];
  if ([(NSMutableSet *)self->_accessories containsObject:connectionCopy])
  {
    v11 = platform_connectionInfo_accessoryConnectionType(connectionCopy);
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
      clientUID = [clientCopy clientUID];
      [clientCopy clientBundleID];
      *buf = 138413570;
      v44 = clientUID;
      v46 = v45 = 2112;
      v34 = v46;
      v47 = 2112;
      v48 = connectionCopy;
      v49 = 1024;
      *v50 = v14;
      *&v50[4] = 2112;
      *&v50[6] = v9;
      v51 = 1024;
      v52 = unsignedIntValue;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@, clientInfo.clientBundleID %@, %@ connTypeMask %xh, connTypeFilterValue %@ (%xh)", buf, 0x36u);

      v15 = &audioProductCerts_endpoint_publish_onceToken;
    }

    filteredAccessories = [clientCopy filteredAccessories];
    v17 = filteredAccessories;
    if (!v9 || (v14 & unsignedIntValue) != 0)
    {
      [filteredAccessories removeObject:connectionCopy];

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
      [filteredAccessories addObject:connectionCopy];

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

    v23 = [(NSMutableDictionary *)self->_endpoints objectForKey:connectionCopy];
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
      clientUID2 = [clientCopy clientUID];
      clientBundleID = [clientCopy clientBundleID];
      *buf = 138413058;
      v44 = clientUID2;
      v45 = 2112;
      v46 = clientBundleID;
      v47 = 2112;
      v48 = connectionCopy;
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

          [(ACCConnectionInfoServer *)self _updateFilteredListForClient:clientCopy forEndpoint:*(*(&v38 + 1) + 8 * i) connection:connectionCopy];
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
    [ACCConnectionInfoServer _updateFilteredListForClient:clientCopy forConnection:v32];
  }
}

- (void)_updateFilteredListForClient:(id)client forEndpoint:(id)endpoint connection:(id)connection
{
  clientCopy = client;
  endpointCopy = endpoint;
  connectionCopy = connection;
  accessoryFilterDictionary = [clientCopy accessoryFilterDictionary];
  v12 = [accessoryFilterDictionary objectForKey:ACCConnectionInfoFilterAllowEndpointTransport];
  v13 = [accessoryFilterDictionary objectForKey:ACCConnectionInfoFilterAllowEndpointProtocol];
  if (v12 | v13)
  {
    unsignedIntValue = [v12 unsignedIntValue];
    unsignedIntValue2 = [v13 unsignedIntValue];
    v15 = [(NSMutableDictionary *)self->_endpoints objectForKey:connectionCopy];
    if ([v15 containsObject:endpointCopy])
    {
      v32 = unsignedIntValue2;
      v16 = platform_connectionInfo_endpointTransportType(connectionCopy, endpointCopy);
      v33 = platform_connectionInfo_endpointProtocol(connectionCopy, endpointCopy);
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
        clientUID = [clientCopy clientUID];
        [clientCopy clientBundleID];
        *buf = 138413826;
        v37 = clientUID;
        v39 = v38 = 2112;
        v30 = v39;
        v40 = 2112;
        v41 = connectionCopy;
        v42 = 2112;
        v43 = endpointCopy;
        v44 = 1024;
        v45 = v19;
        v46 = 2112;
        v47 = v12;
        v48 = 1024;
        v49 = unsignedIntValue;
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
        clientUID2 = [clientCopy clientUID];
        clientUID = [clientCopy clientBundleID];
        *buf = 138413826;
        v37 = clientUID2;
        v38 = 2112;
        v39 = clientUID;
        v40 = 2112;
        v41 = connectionCopy;
        v42 = 2112;
        v43 = endpointCopy;
        v44 = 1024;
        v45 = v22;
        v46 = 2112;
        v47 = v13;
        v48 = 1024;
        v49 = v32;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "updateFilteredListForClient:%@ (%@), %@ - %@ endpProtocolMask %xh, endpProtocolFilterValue %@ (%xh)", buf, 0x40u);
      }

      if ((!v12 || (v19 & unsignedIntValue) != 0) && (!v13 || (v22 & v32) != 0))
      {
        filteredEndpoints = [clientCopy filteredEndpoints];
        [filteredEndpoints removeObject:endpointCopy];

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
        filteredEndpoints2 = [clientCopy filteredEndpoints];
        [filteredEndpoints2 addObject:endpointCopy];

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
    [ACCConnectionInfoServer _updateFilteredListForClient:clientCopy forEndpoint:v28 connection:?];
  }
}

- (void)removeConnection:(id)connection forClientFilter:(id)filter
{
  connectionCopy = connection;
  filterCopy = filter;
  filteredAccessories = [filterCopy filteredAccessories];
  v8 = [filteredAccessories containsObject:connectionCopy];

  if (v8)
  {
    filteredAccessories2 = [filterCopy filteredAccessories];
    [filteredAccessories2 removeObject:connectionCopy];
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

- (void)removeEndpoint:(id)endpoint connection:(id)connection forClientFilter:(id)filter
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  filterCopy = filter;
  filteredEndpoints = [filterCopy filteredEndpoints];
  v11 = [filteredEndpoints containsObject:endpointCopy];

  if (v11)
  {
    filteredEndpoints2 = [filterCopy filteredEndpoints];
    [filteredEndpoints2 removeObject:endpointCopy];
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
    clientUID = [filterCopy clientUID];
    clientBundleID = [filterCopy clientBundleID];
    filteredEndpoints3 = [filterCopy filteredEndpoints];
    v18 = 138413314;
    v19 = clientUID;
    v20 = 2112;
    v21 = clientBundleID;
    v22 = 2112;
    v23 = connectionCopy;
    v24 = 2112;
    v25 = endpointCopy;
    v26 = 2112;
    v27 = filteredEndpoints3;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "client %@ (%@), connectionUUID %@, endpointUUID %@, remove from filteredEndpoints %@", &v18, 0x34u);
  }
}

- (void)accessoryEndpointUpdate:(id)update protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  updateCopy = update;
  propertiesCopy = properties;
  connectionCopy = connection;
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
    *v44 = protocol;
    *&v44[4] = 2112;
    *&v44[6] = updateCopy;
    *&v44[14] = 2112;
    *&v44[16] = connectionCopy;
    *&v44[24] = 2048;
    *&v44[26] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "sending accessoryEndpointUpdate:protocol %d for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x26u);
  }

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v16 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v23 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v23];
          if (![(ACCConnectionInfoServer *)self accessoryEndpointFiltered:updateCopy forConnection:connectionCopy forClient:v23])
          {
            xPCConnection = [v23 XPCConnection];
            clientUID2 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_212];
            [clientUID2 accessoryEndpointUpdate:updateCopy protocol:protocol properties:propertiesCopy forConnection:connectionCopy];
LABEL_37:

            goto LABEL_38;
          }

          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            xPCConnection = *(gLogObjects + 64);
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
            xPCConnection = &_os_log_default;
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            clientUID2 = [v23 clientUID];
            clientBundleID = [v23 clientBundleID];
            *buf = 138413058;
            *v44 = updateCopy;
            *&v44[8] = 2112;
            *&v44[10] = connectionCopy;
            *&v44[18] = 2112;
            *&v44[20] = clientUID2;
            *&v44[28] = 2112;
            *&v44[30] = clientBundleID;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryEndpointUpdate for endpointUUID %@, connectionUUID %@, to client %@ (%@)", buf, 0x2Au);

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
            xPCConnection = &_os_log_default;
          }

          else
          {
            xPCConnection = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
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

- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties
{
  changedCopy = changed;
  propertiesCopy = properties;
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
    v39 = changedCopy;
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "sending accessoryConnectionInfoPropertyChanged for connectionUUID %@, to %lu clients", buf, 0x16u);
  }

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v12 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v20 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v20];
          if (![(ACCConnectionInfoServer *)self accessoryConnectionFiltered:changedCopy forClient:v20])
          {
            xPCConnection = [v20 XPCConnection];
            clientUID2 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_214];
            [clientUID2 accessoryConnectionInfoPropertyChanged:changedCopy properties:propertiesCopy];
LABEL_37:

            goto LABEL_38;
          }

          v22 = gLogObjects;
          v23 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            xPCConnection = *(gLogObjects + 64);
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
            xPCConnection = &_os_log_default;
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            clientUID2 = [v20 clientUID];
            clientBundleID = [v20 clientBundleID];
            *buf = 138412802;
            v39 = changedCopy;
            v40 = 2112;
            v41 = clientUID2;
            v42 = 2112;
            v43 = clientBundleID;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryConnectionInfoPropertyChanged for connectionUUID %@, to client %@ (%@)", buf, 0x20u);

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
            xPCConnection = &_os_log_default;
          }

          else
          {
            xPCConnection = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
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

- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection
{
  changedCopy = changed;
  propertiesCopy = properties;
  connectionCopy = connection;
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
    v42 = changedCopy;
    v43 = 2112;
    v44 = connectionCopy;
    v45 = 2048;
    v46 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "sending accessoryEndpointInfoPropertyChanged for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v15 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v22 clientUID];

        if (clientUID)
        {
          [(ACCConnectionInfoServer *)self updateFilteredListForClient:v22];
          if (![(ACCConnectionInfoServer *)self accessoryEndpointFiltered:changedCopy forConnection:connectionCopy forClient:v22])
          {
            xPCConnection = [v22 XPCConnection];
            clientUID2 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_216];
            [clientUID2 accessoryEndpointInfoPropertyChanged:changedCopy properties:propertiesCopy forConnection:connectionCopy];
LABEL_37:

            goto LABEL_38;
          }

          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 9)
          {
            xPCConnection = *(gLogObjects + 64);
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
            xPCConnection = &_os_log_default;
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            clientUID2 = [v22 clientUID];
            clientBundleID = [v22 clientBundleID];
            *buf = 138413058;
            v42 = changedCopy;
            v43 = 2112;
            v44 = connectionCopy;
            v45 = 2112;
            v46 = clientUID2;
            v47 = 2112;
            v48 = clientBundleID;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "Skip sending filtered accessoryEndpointInfoPropertyChanged for endpointUUID %@, connectionUUID %@, to client %@ (%@)", buf, 0x2Au);

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
            xPCConnection = &_os_log_default;
          }

          else
          {
            xPCConnection = *(gLogObjects + 64);
          }

          if (os_log_type_enabled(xPCConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, xPCConnection, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
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

- (void)configStreamCategoryListReady:(id)ready connection:(id)connection client:(id)client
{
  readyCopy = ready;
  connectionCopy = connection;
  clientCopy = client;
  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v10 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
    v40 = readyCopy;
    v41 = 2112;
    v42 = connectionCopy;
    v43 = 2112;
    v44 = clientCopy;
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
      clientUID = [v22 clientUID];
      if (clientUID)
      {
        v24 = clientUID;
        if (!clientCopy)
        {

LABEL_19:
          xPCConnection = [v22 XPCConnection];
          v28 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_218];
          [v28 configStreamCategoryListReady:readyCopy connection:connectionCopy];

          if (clientCopy)
          {
            v29 = v16;
            goto LABEL_35;
          }

          v19 = 1;
          goto LABEL_21;
        }

        clientUID2 = [v22 clientUID];
        v26 = [clientUID2 isEqualToString:clientCopy];

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
    v40 = readyCopy;
    v41 = 2112;
    v42 = connectionCopy;
    v43 = 2112;
    v44 = clientCopy;
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

- (void)configStreamCategoriesResponse:(id)response forEndpoint:(id)endpoint connection:(id)connection client:(id)client success:(BOOL)success
{
  successCopy = success;
  responseCopy = response;
  endpointCopy = endpoint;
  connectionCopy = connection;
  clientCopy = client;
  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v14 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v21 clientUID];
        if (clientUID)
        {
          v23 = clientUID;
          clientUID2 = [v21 clientUID];
          v25 = [clientUID2 isEqualToString:clientCopy];

          if (v25)
          {
            if (gLogObjects && gNumLogObjects >= 9)
            {
              v30 = *(gLogObjects + 64);
              v28 = endpointCopy;
              v27 = responseCopy;
            }

            else
            {
              v28 = endpointCopy;
              v27 = responseCopy;
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
              v45 = connectionCopy;
              v46 = 2112;
              v47 = clientCopy;
              v48 = 1024;
              v49 = successCopy;
              v50 = 2112;
              v51 = v27;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "sending configStreamCategoriesResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, categories %@", buf, 0x30u);
            }

            xPCConnection = [v21 XPCConnection];
            v33 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_220];
            [v33 configStreamCategoriesResponse:v27 forEndpoint:v28 connection:connectionCopy success:successCopy];

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
    v28 = endpointCopy;
    v27 = responseCopy;
    v29 = successCopy;
  }

  else
  {
    v29 = successCopy;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v26 = &_os_log_default;
    v34 = &_os_log_default;
    v28 = endpointCopy;
    v27 = responseCopy;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v43 = v28;
    v44 = 2112;
    v45 = connectionCopy;
    v46 = 2112;
    v47 = clientCopy;
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

- (void)configStreamPropertyResponse:(unsigned __int8)response forCategory:(unsigned __int16)category forEndpoint:(id)endpoint connection:(id)connection client:(id)client value:(id)value success:(BOOL)success
{
  LODWORD(v36) = response;
  HIDWORD(v36) = category;
  endpointCopy = endpoint;
  connectionCopy = connection;
  clientCopy = client;
  valueCopy = value;
  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v16 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        clientUID = [v23 clientUID];
        if (clientUID)
        {
          v25 = clientUID;
          clientUID2 = [v23 clientUID];
          v27 = [clientUID2 isEqualToString:clientCopy];

          if (v27)
          {
            if (gLogObjects && gNumLogObjects >= 9)
            {
              v29 = *(gLogObjects + 64);
              v31 = connectionCopy;
              v30 = endpointCopy;
            }

            else
            {
              v31 = connectionCopy;
              v30 = endpointCopy;
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
              v48 = clientCopy;
              v49 = 1024;
              successCopy2 = success;
              v51 = 2112;
              v52 = valueCopy;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "sending configStreamPropertyResponse for endpointUUID %@, connectionUUID %@, clientUUID %@, success %d, value %@", buf, 0x30u);
            }

            xPCConnection = [v23 XPCConnection];
            v34 = [xPCConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_222];
            [v34 configStreamPropertyResponse:v36 forCategory:HIDWORD(v36) forEndpoint:v30 connection:v31 value:valueCopy success:success];

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

  v31 = connectionCopy;
  v30 = endpointCopy;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v44 = endpointCopy;
    v45 = 2112;
    v46 = connectionCopy;
    v47 = 2112;
    v48 = clientCopy;
    v49 = 1024;
    successCopy2 = success;
    v51 = 2112;
    v52 = valueCopy;
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

- (void)handleInterceptData:(id)data forEndpoint:(id)endpoint connection:(id)connection
{
  dataCopy = data;
  endpointCopy = endpoint;
  connectionCopy = connection;
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
    v43 = endpointCopy;
    v44 = 2112;
    v45 = connectionCopy;
    v46 = 2048;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "sending handleInterceptData for endpointUUID %@, connectionUUID %@, to %lu clients", buf, 0x20u);
  }

  clientListLock = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock lock];

  v14 = [(NSMutableSet *)self->_clientConnections copy];
  clientListLock2 = [(ACCConnectionInfoServer *)self clientListLock];
  [clientListLock2 unlock];

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
        interceptEnabled = [v22 interceptEnabled];
        v24 = [interceptEnabled containsObject:endpointCopy];

        clientUID = [v22 clientUID];
        v26 = clientUID;
        if (clientUID && (v24 & 1) != 0)
        {
          xPCConnection = [v22 XPCConnection];
          v28 = [xPCConnection hasEntitlement:@"com.apple.accessory.testing"];

          if (v28)
          {
            xPCConnection2 = [v22 XPCConnection];
            v30 = [xPCConnection2 remoteObjectProxyWithErrorHandler:&__block_literal_global_227];
            [v30 handleInterceptData:dataCopy forEndpoint:endpointCopy connection:connectionCopy];

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
          xPCConnection2 = *(gLogObjects + 64);
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
          xPCConnection2 = &_os_log_default;
        }

        if (os_log_type_enabled(xPCConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, xPCConnection2, OS_LOG_TYPE_INFO, "skip processing unregistered client", buf, 2u);
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
  block[4] = self;
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