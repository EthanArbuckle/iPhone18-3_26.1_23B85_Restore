@interface ACCVoiceOverServer
+ (id)sharedServer;
- (ACCVoiceOverServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (void)accessoryVoiceOverAttached:(id)a3;
- (void)accessoryVoiceOverDetached:(id)a3;
- (void)accessoryVoiceOverStartCursorInformationUpdate:(id)a3;
- (void)accessoryVoiceOverStartInformationUpdate:(id)a3;
- (void)accessoryVoiceOverStopCursorInformationUpdate:(id)a3;
- (void)accessoryVoiceOverStopInformationUpdate:(id)a3;
- (void)dealloc;
- (void)iterateAttachedConnectionsSync:(id)a3;
@end

@implementation ACCVoiceOverServer

- (ACCVoiceOverServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = ACCVoiceOverServer;
  v7 = [(ACCFeatureServer *)&v14 initWithXPCServiceName:v6 andFeatureNotification:a4];
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
    v16 = v6;
    v17 = 2080;
    v18 = a4;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initWithXPCServiceName: serviceName='%@' notification='%s' self=%@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    registeredAccessoryConnections = v7->_registeredAccessoryConnections;
    v7->_registeredAccessoryConnections = v11;
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
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc: self=%@", buf, 0xCu);
  }

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  v7.receiver = self;
  v7.super_class = ACCVoiceOverServer;
  [(ACCFeatureServer *)&v7 dealloc];
}

- (void)iterateAttachedConnectionsSync:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_registeredAccessoryConnections allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 1;
      v11 = [v10 accessoryUID];
      v4[2](v4, v11, &v12);

      if (v12 != 1)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
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
    xpcServiceName = self->super._xpcServiceName;
    *buf = 138412290;
    v29 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCVoiceOverXPCServerProtocol];
  [v7 setExportedInterface:v12];

  v13 = [[ACCVoiceOverServerRemote alloc] initWithXPCConnection:v7];
  [v7 setExportedObject:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCVoiceOverXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __57__ACCVoiceOverServer_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_100227718;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  [v7 setInvalidationHandler:v23];
  v15 = objc_alloc_init(_ACCVoiceOverProviderInfo);
  [(_ACCVoiceOverProviderInfo *)v15 setConnection:v7];
  [(_ACCVoiceOverProviderInfo *)v15 setServerRemote:v13];
  v16 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_23];
  [(_ACCVoiceOverProviderInfo *)v15 setRemoteObject:v16];

  objc_storeStrong(&self->_voiceOverProviderInfo, v15);
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    *buf = 138412290;
    v29 = voiceOverProviderInfo;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "providerInfo=%@", buf, 0xCu);
  }

  [v7 resume];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__ACCVoiceOverServer_listener_shouldAcceptNewConnection___block_invoke_125;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_async(v20, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __57__ACCVoiceOverServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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
    v7 = [v6 voiceOverProviderInfo];
    v10 = 138412546;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated! %@ providerInfo=%@", &v10, 0x16u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setInvalidationHandler:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setVoiceOverProviderInfo:0];
}

void __57__ACCVoiceOverServer_listener_shouldAcceptNewConnection___block_invoke_123(id a1, NSError *a2)
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

void __57__ACCVoiceOverServer_listener_shouldAcceptNewConnection___block_invoke_125(uint64_t a1)
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
    v5 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inform provider of attached accessories %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(*(a1 + 32) + 64) allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(a1 + 32) + 56);
        if (v11)
        {
          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v11 remoteObject];
          v14 = [v12 accessoryUID];
          [v13 accessoryVoiceOverAttached:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  voiceOverProviderInfo = self->_voiceOverProviderInfo;
  if (voiceOverProviderInfo)
  {
    v6 = [(_ACCVoiceOverProviderInfo *)voiceOverProviderInfo connection];
    v7 = [v6 isEqual:v4];
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
    v11 = self->_voiceOverProviderInfo;
    v13[0] = 67109634;
    v13[1] = v7;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "VoiceOver server, shouldAcceptConnection=%d _voiceOverProviderInfo=%@ connection=%@", v13, 0x1Cu);
  }

  return v7;
}

- (void)accessoryVoiceOverAttached:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, accessoryVoiceOverAttached: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, accessoryVoiceOverAttached: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (!v8)
  {
    v8 = [[_ACCVoiceOverAccessoryInfo alloc] initWithUID:v4];
    [(NSMutableDictionary *)self->_registeredAccessoryConnections setObject:v8 forKey:v4];
  }

  v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
  [v11 accessoryVoiceOverAttached:v4];
}

- (void)accessoryVoiceOverDetached:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, accessoryVoiceOverDetached: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, accessoryVoiceOverDetached: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (v8)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:v4];
  }

  v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
  [v11 accessoryVoiceOverDetached:v4];
}

- (void)accessoryVoiceOverStartInformationUpdate:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, startInformationUpdate: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, startInformationUpdate: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (v8)
  {
    v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
    [v11 accessoryVoiceOverStartInformationUpdate:v4];
  }
}

- (void)accessoryVoiceOverStopInformationUpdate:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, stopInformationUpdate: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, stopInformationUpdate: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (v8)
  {
    v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
    [v11 accessoryVoiceOverStopInformationUpdate:v4];
  }
}

- (void)accessoryVoiceOverStartCursorInformationUpdate:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, startCursorInformationUpdate: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, startCursorInformationUpdate: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (v8)
  {
    v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
    [v11 accessoryVoiceOverStartCursorInformationUpdate:v4];
  }
}

- (void)accessoryVoiceOverStopCursorInformationUpdate:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "VoiceOver server, stopCursorInformationUpdate: %@", &v13, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v4];
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
    voiceOverProviderInfo = self->_voiceOverProviderInfo;
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = voiceOverProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "VoiceOver server, stopCursorInformationUpdate: %@, accessory=%@ _voiceOverProviderInfo=%@", &v13, 0x20u);
  }

  if (v8)
  {
    v11 = [(_ACCVoiceOverProviderInfo *)self->_voiceOverProviderInfo remoteObject];
    [v11 accessoryVoiceOverStopCursorInformationUpdate:v4];
  }
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__ACCVoiceOverServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_6 != -1)
  {
    dispatch_once(&sharedServer_once_6, block);
  }

  v2 = sharedServer_sharedInstance_6;

  return v2;
}

uint64_t __34__ACCVoiceOverServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_6 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.voiceover" andFeatureNotification:"com.apple.accessories.voiceover.availability-changed"];

  return _objc_release_x1();
}

@end