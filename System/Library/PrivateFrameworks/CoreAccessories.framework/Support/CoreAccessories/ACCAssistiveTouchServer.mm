@interface ACCAssistiveTouchServer
+ (id)sharedServer;
- (ACCAssistiveTouchServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (void)accessoryAssistiveTouchAttached:(id)attached;
- (void)accessoryAssistiveTouchDetached:(id)detached;
- (void)dealloc;
- (void)iterateAttachedConnectionsSync:(id)sync;
- (void)requestState:(id)state;
@end

@implementation ACCAssistiveTouchServer

- (ACCAssistiveTouchServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = ACCAssistiveTouchServer;
  v7 = [(ACCFeatureServer *)&v17 initWithXPCServiceName:nameCopy andFeatureNotification:notification];
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
    v19 = nameCopy;
    v20 = 2080;
    notificationCopy = notification;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initWithXPCServiceName: serviceName='%@' notification='%s' self=%@", buf, 0x20u);
  }

  if (v7)
  {
    assistiveTouchProviderInfo = v7->_assistiveTouchProviderInfo;
    v7->_assistiveTouchProviderInfo = 0;

    v12 = objc_alloc_init(NSLock);
    registeredAccessoryConnectionsLock = v7->_registeredAccessoryConnectionsLock;
    v7->_registeredAccessoryConnectionsLock = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    registeredAccessoryConnections = v7->_registeredAccessoryConnections;
    v7->_registeredAccessoryConnections = v14;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc: self=%@", buf, 0xCu);
  }

  assistiveTouchProviderInfo = self->_assistiveTouchProviderInfo;
  self->_assistiveTouchProviderInfo = 0;

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  registeredAccessoryConnectionsLock = self->_registeredAccessoryConnectionsLock;
  self->_registeredAccessoryConnectionsLock = 0;

  v9.receiver = self;
  v9.super_class = ACCAssistiveTouchServer;
  [(ACCFeatureServer *)&v9 dealloc];
}

- (void)iterateAttachedConnectionsSync:(id)sync
{
  syncCopy = sync;
  [(NSLock *)self->_registeredAccessoryConnectionsLock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_registeredAccessoryConnections allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 1;
      accessoryUID = [v10 accessoryUID];
      syncCopy[2](syncCopy, accessoryUID, &v12);

      if (v12 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(NSLock *)self->_registeredAccessoryConnectionsLock unlock];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
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
    xpcServiceName = self->super._xpcServiceName;
    *buf = 138412290;
    v29 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCAssistiveTouchXPCServerProtocol];
  [connectionCopy setExportedInterface:v12];

  v13 = [[ACCAssistiveTouchServerRemote alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCAssistiveTouchXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __62__ACCAssistiveTouchServer_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_100227718;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  [connectionCopy setInvalidationHandler:v23];
  v15 = objc_alloc_init(_ACCAssistiveTouchProviderInfo);
  [(_ACCAssistiveTouchProviderInfo *)v15 setConnection:connectionCopy];
  [(_ACCAssistiveTouchProviderInfo *)v15 setServerRemote:v13];
  v16 = [connectionCopy remoteObjectProxyWithErrorHandler:&__block_literal_global_33];
  [(_ACCAssistiveTouchProviderInfo *)v15 setRemoteObject:v16];

  objc_storeStrong(&self->_assistiveTouchProviderInfo, v15);
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v17 = *(gLogObjects + 32);
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
    assistiveTouchProviderInfo = self->_assistiveTouchProviderInfo;
    *buf = 138412290;
    v29 = assistiveTouchProviderInfo;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "providerInfo=%@", buf, 0xCu);
  }

  [connectionCopy resume];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__ACCAssistiveTouchServer_listener_shouldAcceptNewConnection___block_invoke_114;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_async(v20, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __62__ACCAssistiveTouchServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 assistiveTouchProviderInfo];
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated! %@ providerInfo=%@", &v10, 0x16u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setInvalidationHandler:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setAssistiveTouchProviderInfo:0];
}

void __62__ACCAssistiveTouchServer_listener_shouldAcceptNewConnection___block_invoke_112(id a1, NSError *a2)
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

id __62__ACCAssistiveTouchServer_listener_shouldAcceptNewConnection___block_invoke_114(uint64_t a1)
{
  [*(*(a1 + 32) + 72) lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 32) + 56);
        if (v7)
        {
          v8 = *(*(&v12 + 1) + 8 * v6);
          v9 = [v7 remoteObject];
          v10 = [v8 accessoryUID];
          [v9 accessoryAssistiveTouchAttached:v10];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 72) unlock];
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  assistiveTouchProviderInfo = self->_assistiveTouchProviderInfo;
  if (assistiveTouchProviderInfo)
  {
    connection = [(_ACCAssistiveTouchProviderInfo *)assistiveTouchProviderInfo connection];
    v7 = [connection isEqual:connectionCopy];
  }

  else
  {
    v7 = 0;
  }

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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_assistiveTouchProviderInfo;
    v13[0] = 67109634;
    v13[1] = v7;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "AssistiveTouch server, shouldAcceptConnection=%d _assistiveTouchProviderInfo=%@ connection=%@", v13, 0x1Cu);
  }

  return v7;
}

- (void)accessoryAssistiveTouchAttached:(id)attached
{
  attachedCopy = attached;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
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
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = attachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AssistiveTouch server, accessoryAssistiveTouchAttached: %@", &v13, 0xCu);
  }

  [(NSLock *)self->_registeredAccessoryConnectionsLock lock];
  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:attachedCopy];

  if (!v8)
  {
    v9 = [[_ACCAssistiveTouchAccessoryInfo alloc] initWithUID:attachedCopy];
    [(NSMutableDictionary *)self->_registeredAccessoryConnections setObject:v9 forKey:attachedCopy];
  }

  [(NSLock *)self->_registeredAccessoryConnectionsLock unlock];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v10 = *(gLogObjects + 32);
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
    [(ACCAssistiveTouchServer *)attachedCopy accessoryAssistiveTouchAttached:?];
  }

  remoteObject = [(_ACCAssistiveTouchProviderInfo *)self->_assistiveTouchProviderInfo remoteObject];
  [remoteObject accessoryAssistiveTouchAttached:attachedCopy];
}

- (void)accessoryAssistiveTouchDetached:(id)detached
{
  detachedCopy = detached;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
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
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = detachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AssistiveTouch server, accessoryAssistiveTouchDetached: %@", &v12, 0xCu);
  }

  [(NSLock *)self->_registeredAccessoryConnectionsLock lock];
  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:detachedCopy];

  if (v8)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:detachedCopy];
  }

  [(NSLock *)self->_registeredAccessoryConnectionsLock unlock];
  if (gLogObjects && gNumLogObjects >= 5)
  {
    v9 = *(gLogObjects + 32);
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
    [(ACCAssistiveTouchServer *)detachedCopy accessoryAssistiveTouchDetached:?];
  }

  remoteObject = [(_ACCAssistiveTouchProviderInfo *)self->_assistiveTouchProviderInfo remoteObject];
  [remoteObject accessoryAssistiveTouchDetached:detachedCopy];
}

- (void)requestState:(id)state
{
  stateCopy = state;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
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
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = stateCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "requestState: accessoryUID=%@", &v11, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v8 = *(gLogObjects + 32);
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
    [(ACCAssistiveTouchServer *)stateCopy requestState:?];
  }

  remoteObject = [(_ACCAssistiveTouchProviderInfo *)self->_assistiveTouchProviderInfo remoteObject];
  [remoteObject requestState:stateCopy];
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__ACCAssistiveTouchServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServer_once_8 != -1)
  {
    dispatch_once(&sharedServer_once_8, block);
  }

  v2 = sharedServer_sharedInstance_8;

  return v2;
}

uint64_t __39__ACCAssistiveTouchServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_8 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.assistivetouch" andFeatureNotification:"com.apple.accessories.assistivetouch.availability-changed"];

  return _objc_release_x1();
}

- (void)accessoryAssistiveTouchAttached:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_10_18(&_mh_execute_header, v3, v4, "AssistiveTouch server, accessoryAssistiveTouchAttached: %@, _assistiveTouchProviderInfo=%@");
}

- (void)accessoryAssistiveTouchDetached:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_10_18(&_mh_execute_header, v3, v4, "AssistiveTouch server, accessoryAssistiveTouchDetached: %@, _assistiveTouchProviderInfo=%@");
}

- (void)requestState:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  OUTLINED_FUNCTION_2_35();
  OUTLINED_FUNCTION_10_18(&_mh_execute_header, v3, v4, "AssistiveTouch server, requestState: %@, _assistiveTouchProviderInfo=%@");
}

@end