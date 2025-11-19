@interface ACCHIDServer
+ (id)sharedServer;
- (ACCHIDServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (NSXPCConnection)activeConnection;
- (void)unregisterAllDescriptors:(id)a3;
@end

@implementation ACCHIDServer

- (ACCHIDServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v10.receiver = self;
  v10.super_class = ACCHIDServer;
  v4 = [(ACCFeatureServer *)&v10 initWithXPCServiceName:a3 andFeatureNotification:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    clientConnections = v4->_clientConnections;
    v4->_clientConnections = v5;

    activeConnection = v4->_activeConnection;
    v4->_activeConnection = 0;

    remoteObject = v4->_remoteObject;
    v4->_remoteObject = 0;
  }

  return v4;
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
    v34 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#HID] New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AccessoryHIDXPCServerProtocol];
  [v7 setExportedInterface:v12];

  v13 = [[ACCHIDServerRemote alloc] initWithXPCConnection:v7];
  [v7 setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AccessoryHIDXPCClientProtocol];
  [v7 setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __51__ACCHIDServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_100225C98;
  objc_copyWeak(&v29, &from);
  v28[4] = self;
  objc_copyWeak(&v30, &location);
  [v7 setInvalidationHandler:v28];
  v15 = [(ACCHIDServer *)self clientConnections];
  [v15 addObject:v7];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v16 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v16 = &_os_log_default;
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(ACCHIDServer *)self clientConnections];
    v19 = [v18 count];
    *buf = 134217984;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#HID] There are now %lu client(s).", buf, 0xCu);
  }

  [v7 resume];
  v20 = [(ACCHIDServer *)self clientConnections];
  v21 = [v20 count] == 1;

  if (v21)
  {
    [(ACCHIDServer *)self setActiveConnection:v7];
    v22 = [(ACCHIDServer *)self activeConnection];
    v23 = [v22 remoteObjectProxyWithErrorHandler:&__block_literal_global_6];
    [(ACCHIDServer *)self setRemoteObject:v23];

    if (gLogObjects && gNumLogObjects >= 5)
    {
      v24 = *(gLogObjects + 32);
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
      v26 = [(ACCHIDServer *)self remoteObject];
      [(ACCHIDServer *)v26 listener:buf shouldAcceptNewConnection:v24];
    }
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __51__ACCHIDServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
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
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v20 = 138412290;
    v21 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#HID] XPC connection invalidated: %@", &v20, 0xCu);
  }

  v6 = objc_loadWeakRetained(a1 + 5);
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained(a1 + 5);
  v8 = [a1[4] activeConnection];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = objc_loadWeakRetained(a1 + 6);
    [v10 setActiveConnection:0];

    v11 = objc_loadWeakRetained(a1 + 6);
    [v11 setRemoteObject:0];
  }

  v12 = objc_loadWeakRetained(a1 + 6);
  v13 = [v12 clientConnections];
  v14 = objc_loadWeakRetained(a1 + 5);
  [v13 removeObject:v14];

  if (gLogObjects && gNumLogObjects >= 5)
  {
    v15 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_loadWeakRetained(a1 + 6);
    v18 = [v17 clientConnections];
    v19 = [v18 count];
    v20 = 134217984;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[#HID] There are now %lu client(s).", &v20, 0xCu);
  }
}

void __51__ACCHIDServer_listener_shouldAcceptNewConnection___block_invoke_71(id a1, NSError *a2)
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
    __51__ACCHIDServer_listener_shouldAcceptNewConnection___block_invoke_71_cold_2(v2, v5);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [(ACCHIDServer *)self clientConnections];
  if ([v5 count])
  {
    v6 = [(ACCHIDServer *)self clientConnections];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 isEqual:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__ACCHIDServer_registerHIDDescriptor_componentID_dictionary___block_invoke(id a1, NSString *a2)
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[#HID] registerHIDDescriptor descriptorUUID: %@", &v6, 0xCu);
  }
}

void __52__ACCHIDServer_unregisterHIDDescriptor_componentID___block_invoke(id a1, BOOL a2)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__ACCHIDServer_unregisterHIDDescriptor_componentID___block_invoke_cold_2();
  }
}

- (void)unregisterAllDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(ACCHIDServer *)self remoteObject];
  [v5 unregisterAllDescriptors:v4 withReply:&__block_literal_global_80];
}

void __41__ACCHIDServer_unregisterAllDescriptors___block_invoke(id a1, BOOL a2)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__ACCHIDServer_unregisterAllDescriptors___block_invoke_cold_2();
  }
}

void __44__ACCHIDServer_inReport_componentID_report___block_invoke(id a1, BOOL a2)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__ACCHIDServer_inReport_componentID_report___block_invoke_cold_2();
  }
}

void __73__ACCHIDServer_getReportResponse_componentID_reportType_reportID_report___block_invoke(id a1, BOOL a2)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __73__ACCHIDServer_getReportResponse_componentID_reportType_reportID_report___block_invoke_cold_2();
  }
}

- (NSXPCConnection)activeConnection
{
  v3 = [(ACCHIDServer *)self clientConnections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ACCHIDServer *)self clientConnections];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__ACCHIDServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_1 != -1)
  {
    dispatch_once(&sharedServer_once_1, block);
  }

  v2 = sharedServer_sharedInstance_1;

  return v2;
}

uint64_t __28__ACCHIDServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_1 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.hid" andFeatureNotification:"com.apple.accessories.hid.availability-changed"];

  return _objc_release_x1();
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#HID] Get remote object: %@", buf, 0xCu);
}

void __51__ACCHIDServer_listener_shouldAcceptNewConnection___block_invoke_71_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#HID] XPC connection error: %@", &v2, 0xCu);
}

@end