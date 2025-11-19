@interface ACCNavigationServer
+ (id)sharedServer;
- (ACCNavigationServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)accessoryNavigationAttached:(id)a3 componentList:(id)a4;
- (void)accessoryNavigationDetached:(id)a3;
- (void)accessoryNavigationObjectDetectionUpdateInfo:(id)a3 componentIdList:(id)a4 updateInfo:(id)a5;
- (void)accessoryNavigationStartRouteGuidance:(id)a3 componentIdList:(id)a4 options:(unint64_t)a5;
- (void)accessoryNavigationStopRouteGuidance:(id)a3 componentIdList:(id)a4;
- (void)dealloc;
- (void)iterateAttachedConnectionsSync:(id)a3;
- (void)iterateNavigationProviderListSync:(id)a3;
- (void)notifyOfProvider:(id)a3 connection:(id)a4;
@end

@implementation ACCNavigationServer

- (ACCNavigationServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = ACCNavigationServer;
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
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] initWithXPCServiceName: serviceName='%@' notification='%s' self=%@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    navigationProviderInfoList = v7->_navigationProviderInfoList;
    v7->_navigationProviderInfoList = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    navigationProviderInfoListByProviderUID = v7->_navigationProviderInfoListByProviderUID;
    v7->_navigationProviderInfoListByProviderUID = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    registeredAccessoryConnections = v7->_registeredAccessoryConnections;
    v7->_registeredAccessoryConnections = v15;
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Navigation] dealloc: self=%@", buf, 0xCu);
  }

  navigationProviderInfoList = self->_navigationProviderInfoList;
  self->_navigationProviderInfoList = 0;

  navigationProviderInfoListByProviderUID = self->_navigationProviderInfoListByProviderUID;
  self->_navigationProviderInfoListByProviderUID = 0;

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  v9.receiver = self;
  v9.super_class = ACCNavigationServer;
  [(ACCFeatureServer *)&v9 dealloc];
}

- (void)iterateNavigationProviderListSync:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_navigationProviderInfoList allValues];
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
    v30 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCNavigationXPCServerProtocol];
  [v7 setExportedInterface:v12];

  v13 = [[ACCNavigationServerRemote alloc] initWithXPCConnection:v7];
  [v7 setExportedObject:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCNavigationXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke;
  v24[3] = &unk_100227718;
  objc_copyWeak(&v25, &from);
  objc_copyWeak(&v26, &location);
  [v7 setInvalidationHandler:v24];
  v15 = objc_alloc_init(_ACCNavigationProviderInfo);
  [(_ACCNavigationProviderInfo *)v15 setConnection:v7];
  [(_ACCNavigationProviderInfo *)v15 setServerRemote:v13];
  v16 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_40];
  [(_ACCNavigationProviderInfo *)v15 setRemoteObject:v16];

  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 hash]);
  [(NSMutableDictionary *)self->_navigationProviderInfoList setObject:v15 forKey:v17];
  objc_storeStrong(&self->_navigationProviderInfo, v15);
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

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    navigationProviderInfo = self->_navigationProviderInfo;
    *buf = 138412290;
    v30 = navigationProviderInfo;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[#Navigation] providerInfo=%@", buf, 0xCu);
  }

  [v7 resume];
  v21 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke_148;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_async(v21, block);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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
    v7 = [v6 navigationProviderInfo];
    v14 = 138412546;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Navigation] XPC connection invalidated! %@ providerInfo=%@", &v14, 0x16u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setInvalidationHandler:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 hash]);

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 navigationProviderInfoList];
  [v12 removeObjectForKey:v10];

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setNavigationProviderInfo:0];
}

void __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke_146(id a1, NSError *a2)
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Navigation] XPC connection error!", &v8, 2u);
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#Navigation] %@", &v8, 0xCu);
  }
}

void __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke_148(uint64_t a1)
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
    v5 = *(*(a1 + 32) + 80);
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Navigation] Inform provider of attached accessories %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [*(*(a1 + 32) + 80) allValues];
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
        v13[2] = __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke_149;
        v13[3] = &unk_10022A218;
        v13[4] = v11;
        [v12 iterateNavigationProviderListSync:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void __58__ACCNavigationServer_listener_shouldAcceptNewConnection___block_invoke_149(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  v5 = [v4 remoteObject];

  if (v5)
  {
    v6 = [v4 remoteObject];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v4 remoteObject];
      v9 = [*(a1 + 32) accessoryUID];
      v10 = [*(a1 + 32) componentList];
      v11 = [v10 allValues];
      [v8 accessoryNavigationAttached:v9 componentList:v11];
    }

    v12 = [*(a1 + 32) startedComponentList];
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v13 = *(gLogObjects + 32);
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) accessoryUID];
      *buf = 138412546;
      v41 = v15;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#Navigation] Inform provider of pending start for accessory %@, startedComponentList %@", buf, 0x16u);
    }

    v16 = [*(a1 + 32) componentList];
    if ([v16 count])
    {
      v17 = [v4 remoteObject];
      v18 = objc_opt_respondsToSelector();

      if ((v18 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v16 = v12;
      v19 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v31 = v12;
        v32 = a3;
        v21 = *v36;
        obj = v16;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v36 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v35 + 1) + 8 * i);
            v24 = [v23 objectForKey:ACCNav_DispComp_ComponentID];
            v25 = [v23 objectForKey:__kComponentOptionsKey];
            v26 = [NSArray arrayWithObjects:v24, 0];
            [v4 remoteObject];
            v28 = v27 = v4;
            v29 = [*(a1 + 32) accessoryUID];
            if ([v26 count])
            {
              v30 = v26;
            }

            else
            {
              v30 = 0;
            }

            [v28 accessoryNavigationStartRouteGuidance:v29 componentIdList:v30 options:{objc_msgSend(v25, "unsignedLongLongValue")}];

            v4 = v27;
          }

          v16 = obj;
          v20 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v20);
        v12 = v31;
        a3 = v32;
      }
    }

    goto LABEL_26;
  }

LABEL_27:
  *a3 = 1;
}

- (void)accessoryNavigationAttached:(id)a3 componentList:(id)a4
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
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] Navigation server, accessoryNavigationAttached: %@, componentList=%@", buf, 0x16u);
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
    navigationProviderInfo = self->_navigationProviderInfo;
    *buf = 138412802;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = navigationProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[#Navigation] Navigation server, accessoryNavigationAttached: %@, accessory=%@ _navigationProviderInfo=%@", buf, 0x20u);
  }

  if (v11 || (v11 = [[_ACCNavigationAccessoryInfo alloc] initWithUID:v6 componentList:v7], [(NSMutableDictionary *)self->_registeredAccessoryConnections setObject:v11 forKey:v6], v11))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __65__ACCNavigationServer_accessoryNavigationAttached_componentList___block_invoke;
    v15[3] = &unk_10022A240;
    v16 = v6;
    v17 = v7;
    [(ACCNavigationServer *)self iterateNavigationProviderListSync:v15];
  }
}

void __65__ACCNavigationServer_accessoryNavigationAttached_componentList___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 remoteObject];
  if (v5)
  {
    v6 = v5;
    v7 = [v10 remoteObject];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v10 remoteObject];
      [v9 accessoryNavigationAttached:*(a1 + 32) componentList:*(a1 + 40)];
    }
  }

  *a3 = 1;
}

- (void)accessoryNavigationDetached:(id)a3
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Navigation] Navigation server, accessoryNavigationDetached: %@", buf, 0xCu);
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
    navigationProviderInfo = self->_navigationProviderInfo;
    *buf = 138412802;
    v16 = v4;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = navigationProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[#Navigation] Navigation server, accessoryNavigationDetached: %@, accessory=%@ _navigationProviderInfo=%@", buf, 0x20u);
  }

  if (v8)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:v4];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __51__ACCNavigationServer_accessoryNavigationDetached___block_invoke;
  v13[3] = &unk_10022A218;
  v14 = v4;
  v11 = v4;
  [(ACCNavigationServer *)self iterateNavigationProviderListSync:v13];
}

void __51__ACCNavigationServer_accessoryNavigationDetached___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 remoteObject];
  if (v5)
  {
    v6 = v5;
    v7 = [v10 remoteObject];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v10 remoteObject];
      [v9 accessoryNavigationDetached:*(a1 + 32)];
    }
  }

  *a3 = 1;
}

- (void)accessoryNavigationStartRouteGuidance:(id)a3 componentIdList:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 5;
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
    v12 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v37 = v8;
    v38 = 2112;
    v39 = v9;
    v40 = 2048;
    v41 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#Navigation] Navigation server, accessoryNavigationStartRouteGuidance: %@, componentIdList=%@, options=%llxh", buf, 0x20u);
  }

  v13 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v8];
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    navigationProviderInfo = self->_navigationProviderInfo;
    *buf = 138412802;
    v37 = v8;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = navigationProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[#Navigation] Navigation server, accessoryNavigationStartRouteGuidance: %@, accessory=%@ _navigationProviderInfo=%@", buf, 0x20u);
  }

  if (v13)
  {
    v25 = self;
    v16 = v9;
    v17 = v16;
    if (!v16)
    {
      v16 = [v13 componentIdList];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          [v13 setComponent:v23 options:a5];
          [v13 setComponent:v23 started:1];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __85__ACCNavigationServer_accessoryNavigationStartRouteGuidance_componentIdList_options___block_invoke;
    v26[3] = &unk_10022A268;
    v27 = v8;
    v28 = v17;
    v30 = a5;
    v29 = v13;
    [(ACCNavigationServer *)v25 iterateNavigationProviderListSync:v26];
  }
}

void __85__ACCNavigationServer_accessoryNavigationStartRouteGuidance_componentIdList_options___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 remoteObject];

  if (v6)
  {
    v7 = [v5 remoteObject];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v5 remoteObject];
      [v9 accessoryNavigationStartRouteGuidance:a1[4] componentIdList:a1[5] options:a1[7]];
    }

    else
    {
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
        __85__ACCNavigationServer_accessoryNavigationStartRouteGuidance_componentIdList_options___block_invoke_cold_2(a1);
      }
    }
  }

  *a3 = 1;
}

- (void)accessoryNavigationStopRouteGuidance:(id)a3 componentIdList:(id)a4
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
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] Navigation server, accessoryNavigationStopRouteGuidance: %@, componentIdList=%@", buf, 0x16u);
  }

  v11 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v6];
  if (v11)
  {
    v12 = v7;
    v13 = v12;
    if (!v12)
    {
      v12 = [v11 componentIdList];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v11 setComponent:*(*(&v23 + 1) + 8 * i) started:0];
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __76__ACCNavigationServer_accessoryNavigationStopRouteGuidance_componentIdList___block_invoke;
    v19[3] = &unk_10022A290;
    v20 = v6;
    v21 = v13;
    v22 = v11;
    [(ACCNavigationServer *)self iterateNavigationProviderListSync:v19];
  }
}

void __76__ACCNavigationServer_accessoryNavigationStopRouteGuidance_componentIdList___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 remoteObject];
  if (v6 && (v7 = v6, [v5 remoteObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [v5 remoteObject];
    [v10 accessoryNavigationStopRouteGuidance:*(a1 + 32) componentIdList:*(a1 + 40)];
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 5;
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
      v10 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __76__ACCNavigationServer_accessoryNavigationStopRouteGuidance_componentIdList___block_invoke_cold_2(a1);
    }
  }

  *a3 = 1;
}

- (void)accessoryNavigationObjectDetectionUpdateInfo:(id)a3 componentIdList:(id)a4 updateInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 5;
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
    v13 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[#Navigation] Navigation server, accessoryNavigationObjectDetectionUpdateInfo: %@, componentIdList=%@, updateInfo=%@", buf, 0x20u);
  }

  v14 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:v8];
  if (v14)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __95__ACCNavigationServer_accessoryNavigationObjectDetectionUpdateInfo_componentIdList_updateInfo___block_invoke;
    v15[3] = &unk_10022A2B8;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v19 = v14;
    [(ACCNavigationServer *)self iterateNavigationProviderListSync:v15];
  }
}

void __95__ACCNavigationServer_accessoryNavigationObjectDetectionUpdateInfo_componentIdList_updateInfo___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 remoteObject];
  if (v6 && (v7 = v6, [v5 remoteObject], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [v5 remoteObject];
    [v10 accessoryNavigationObjectDetection:a1[4] componentIdList:a1[5] updateInfo:a1[6]];
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 5;
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
      v10 = *(gLogObjects + 32);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __95__ACCNavigationServer_accessoryNavigationObjectDetectionUpdateInfo_componentIdList_updateInfo___block_invoke_cold_2(a1);
    }
  }

  *a3 = 1;
}

- (void)notifyOfProvider:(id)a3 connection:(id)a4
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
    navigationProviderInfo = self->_navigationProviderInfo;
    v17 = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = navigationProviderInfo;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Navigation] Navigation server, notifyOfProvider: %@ connection: %@, _navigationProviderInfo=%@", &v17, 0x20u);
  }

  v12 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v7 hash]);
  v13 = [(NSMutableDictionary *)self->_navigationProviderInfoList objectForKey:v12];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 connection];
    v16 = [v15 isEqual:v7];

    if (v16)
    {
      [v14 setProviderUID:v6];
    }
  }
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__ACCNavigationServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_11 != -1)
  {
    dispatch_once(&sharedServer_once_11, block);
  }

  v2 = sharedServer_sharedInstance_11;

  return v2;
}

uint64_t __35__ACCNavigationServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_11 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.navigation" andFeatureNotification:"com.apple.accessories.navigation.availability-changed"];

  return _objc_release_x1();
}

void __85__ACCNavigationServer_accessoryNavigationStartRouteGuidance_componentIdList_options___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_1_36();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void __76__ACCNavigationServer_accessoryNavigationStopRouteGuidance_componentIdList___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_1_36();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void __95__ACCNavigationServer_accessoryNavigationObjectDetectionUpdateInfo_componentIdList_updateInfo___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_1_36();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end