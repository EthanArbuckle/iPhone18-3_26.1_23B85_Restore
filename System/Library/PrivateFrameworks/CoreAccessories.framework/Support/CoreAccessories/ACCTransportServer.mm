@interface ACCTransportServer
+ (id)sharedServer;
- (ACCTransportServer)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)receivedSecureTunnelData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (BOOL)receivedSecureTunnelData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5 toClient:(id)a6;
- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5 toClient:(id)a6;
- (id)clientInfoForConnectionWithUUID:(id)a3;
- (void)dealloc;
- (void)propertiesDidChange:(id)a3 forConnectionWithUUID:(id)a4 previousProperties:(id)a5;
- (void)propertiesDidChange:(id)a3 forEndpointWithUUID:(id)a4 previousProperties:(id)a5 connectionUUID:(id)a6;
- (void)receivedSecureTunnelDataHandler:(void *)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (void)startServer;
- (void)suspendServer;
@end

@implementation ACCTransportServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__ACCTransportServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_10 != -1)
  {
    dispatch_once(&sharedServer_once_10, block);
  }

  v2 = sharedServer_sharedInstance_10;

  return v2;
}

- (ACCTransportServer)init
{
  v10.receiver = self;
  v10.super_class = ACCTransportServer;
  v2 = [(ACCTransportServer *)&v10 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessories.transport-server"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = objc_alloc_init(NSMutableSet);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v5;

    v7 = objc_alloc_init(NSLock);
    clientConnectionsLock = v2->_clientConnectionsLock;
    v2->_clientConnectionsLock = v7;

    v2->_token = -1;
    notify_register_check("com.apple.accessories.transport-server.availability-changed", &v2->_token);
  }

  return v2;
}

- (void)dealloc
{
  token = self->_token;
  if ((token & 0x80000000) == 0)
  {
    notify_cancel(token);
  }

  v4.receiver = self;
  v4.super_class = ACCTransportServer;
  [(ACCTransportServer *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 3;
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
    v10 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = @"com.apple.accessories.transport-server";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCTransportXPCServerProtocol];
  [v7 setExportedInterface:v11];

  v12 = [[ACCTransportClientInfo alloc] initWithXPCConnection:v7];
  v13 = [[ACCTransportServerRemote alloc] initWithClientInfo:v12];
  [v7 setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCTransportXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __57__ACCTransportServer_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_100227108;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  v23[4] = self;
  [v7 setInvalidationHandler:v23];
  v15 = [(ACCTransportServer *)self clientConnectionsLock];
  [v15 lock];

  v16 = [(ACCTransportServer *)self clientConnections];
  [v16 addObject:v12];

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v17 = *(gLogObjects + 16);
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
    v19 = [(ACCTransportServer *)self clientConnections];
    v20 = [v19 count];
    *buf = 134217984;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "There are now %lu client(s).", buf, 0xCu);
  }

  v21 = [(ACCTransportServer *)self clientConnectionsLock];
  [v21 unlock];

  [v7 resume];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __57__ACCTransportServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setInvalidationHandler:0];

  v3 = objc_loadWeakRetained(a1 + 5);
  [v3 setExportedObject:0];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    *buf = 138412290;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated: %@", buf, 0xCu);
  }

  v8 = objc_loadWeakRetained(a1 + 6);
  v9 = [v8 clientConnectionsLock];
  [v9 lock];

  v10 = [a1[4] clientConnections];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = __57__ACCTransportServer_listener_shouldAcceptNewConnection___block_invoke_119;
  v42[3] = &unk_100226570;
  objc_copyWeak(&v43, a1 + 5);
  v11 = [v10 objectsPassingTest:v42];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v11;
  v12 = 0;
  v13 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v13)
  {
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = [v16 connectionUUIDs];
        v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v19)
        {
          v20 = *v35;
          do
          {
            v21 = 0;
            v12 += v19;
            do
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v17);
              }

              acc_manager_removeConnectionWithUUID(*(*(&v34 + 1) + 8 * v21), v18);
              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v34 objects:v44 count:16];
          }

          while (v19);
        }

        v22 = objc_loadWeakRetained(a1 + 6);
        v23 = [v22 clientConnections];
        [v23 removeObject:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v13);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v24 = *(gLogObjects + 16);
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

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v47) = v12;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Cleaned up %u connection(s) left behind by transport client...", buf, 8u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v26 = *(gLogObjects + 16);
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
    v28 = objc_loadWeakRetained(a1 + 6);
    v29 = [v28 clientConnections];
    v30 = [v29 count];
    *buf = 134217984;
    v47 = v30;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "There are now %lu transport client(s).", buf, 0xCu);
  }

  v31 = objc_loadWeakRetained(a1 + 6);
  v32 = [v31 clientConnectionsLock];
  [v32 unlock];

  objc_destroyWeak(&v43);
}

id __57__ACCTransportServer_listener_shouldAcceptNewConnection___block_invoke_119(uint64_t a1, void *a2)
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

- (void)startServer
{
  v3 = [(ACCTransportServer *)self listener];
  [v3 resume];

  token = self->_token;
  if ((token & 0x80000000) == 0)
  {
    notify_set_state(token, 1uLL);
  }

  notify_post("com.apple.accessories.transport-server.availability-changed");
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
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
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started accessory transport server!", v8, 2u);
  }
}

- (void)suspendServer
{
  v3 = [(ACCTransportServer *)self listener];
  [v3 suspend];

  token = self->_token;
  if ((token & 0x80000000) == 0)
  {
    notify_set_state(token, 0);
  }

  notify_post("com.apple.accessories.transport-server.availability-changed");
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
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
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Suspended accessory transport server!", v8, 2u);
  }
}

- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ACCTransportServer *)self clientInfoForConnectionWithUUID:v8];
  LOBYTE(self) = [(ACCTransportServer *)self sendOutgoingData:v10 forEndpointWithUUID:v9 connectionUUID:v8 toClient:v11];

  return self;
}

- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5 toClient:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || a6 == 0;
  v14 = !v13;
  if (!v13)
  {
    v15 = a3;
    v16 = [a6 XPCConnection];
    v17 = [v16 remoteObjectProxyWithErrorHandler:&__block_literal_global_35];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __83__ACCTransportServer_sendOutgoingData_forEndpointWithUUID_connectionUUID_toClient___block_invoke_123;
    v19[3] = &unk_100229ED8;
    v20 = v9;
    v21 = v11;
    [v17 sendOutgoingData:v15 forEndpointWithUUID:v20 connectionUUID:v21 withReply:v19];
  }

  return v14;
}

void __83__ACCTransportServer_sendOutgoingData_forEndpointWithUUID_connectionUUID_toClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

void __83__ACCTransportServer_sendOutgoingData_forEndpointWithUUID_connectionUUID_toClient___block_invoke_123(uint64_t a1, char a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __83__ACCTransportServer_sendOutgoingData_forEndpointWithUUID_connectionUUID_toClient___block_invoke_123_cold_2(a1, a2, v6);
  }
}

- (BOOL)receivedSecureTunnelData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ACCTransportServer *)self clientInfoForConnectionWithUUID:v8];
  LOBYTE(self) = [(ACCTransportServer *)self receivedSecureTunnelData:v10 forEndpointWithUUID:v9 connectionUUID:v8 toClient:v11];

  return self;
}

- (BOOL)receivedSecureTunnelData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5 toClient:(id)a6
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || a6 == 0;
  v8 = !v7;
  if (!v7)
  {
    v11 = a4;
    v12 = a3;
    v13 = [a6 XPCConnection];
    v14 = [v13 remoteObjectProxyWithErrorHandler:&__block_literal_global_126];
    [v14 receivedSecureTunnelData:v12 forEndpoint:v11];
  }

  return v8;
}

void __91__ACCTransportServer_receivedSecureTunnelData_forEndpointWithUUID_connectionUUID_toClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

void __143__ACCTransportServer_authStateDidChange_forConnectionWithUUID_previousAuthState_authType_connectionIsAuthenticated_connectionWasAuthenticated___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)propertiesDidChange:(id)a3 forConnectionWithUUID:(id)a4 previousProperties:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ACCTransportServer *)self clientInfoForConnectionWithUUID:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 XPCConnection];
    v13 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_130_0];
    [v13 propertiesDidChange:v14 forConnectionWithUUID:v8 previousProperties:v9];
  }
}

void __83__ACCTransportServer_propertiesDidChange_forConnectionWithUUID_previousProperties___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)propertiesDidChange:(id)a3 forEndpointWithUUID:(id)a4 previousProperties:(id)a5 connectionUUID:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ACCTransportServer *)self clientInfoForConnectionWithUUID:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 XPCConnection];
    v16 = [v15 remoteObjectProxyWithErrorHandler:&__block_literal_global_132_0];
    [v16 propertiesDidChange:v17 forEndpointWithUUID:v10 previousProperties:v11 connectionUUID:v12];
  }
}

void __96__ACCTransportServer_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)receivedSecureTunnelDataHandler:(void *)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = [(ACCTransportServer *)self clientInfoForConnectionWithUUID:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 XPCConnection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_134];
    [v12 receivedSecureTunnelDataHandler:a3 forEndpointWithUUID:v13 connectionUUID:v8];
  }
}

void __89__ACCTransportServer_receivedSecureTunnelDataHandler_forEndpointWithUUID_connectionUUID___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (id)clientInfoForConnectionWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCTransportServer *)self clientConnectionsLock];
    [v5 lock];

    v6 = [(ACCTransportServer *)self clientConnections];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __54__ACCTransportServer_clientInfoForConnectionWithUUID___block_invoke;
    v11[3] = &unk_100226CE0;
    v12 = v4;
    v7 = [v6 objectsPassingTest:v11];

    v8 = [(ACCTransportServer *)self clientConnectionsLock];
    [v8 unlock];

    v9 = [v7 anyObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __54__ACCTransportServer_clientInfoForConnectionWithUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 connectionUUIDs];
    v8 = [v7 containsObject:*(a1 + 32)];

    if (v8)
    {
      v8 = 1;
      *a3 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __34__ACCTransportServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void __83__ACCTransportServer_sendOutgoingData_forEndpointWithUUID_connectionUUID_toClient___block_invoke_123_cold_2(uint64_t a1, char a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 1024;
  v10 = a2 & 1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Send outgoing data for endpoint: %@, connection: %@, result: %d", &v5, 0x1Cu);
}

@end