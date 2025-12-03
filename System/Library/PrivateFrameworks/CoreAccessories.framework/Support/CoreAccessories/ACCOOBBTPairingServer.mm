@interface ACCOOBBTPairingServer
+ (id)sharedServer;
- (ACCOOBBTPairingServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (void)accessoryOOBBTPairingAttached:(id)attached accInfoDict:(id)dict;
- (void)accessoryOOBBTPairingBTAccessoryInfo:(id)info oobBtPairingUID:(id)d accessoryMacAddr:(id)addr deviceClass:(unsigned int)class;
- (void)accessoryOOBBTPairingDetached:(id)detached;
- (void)dealloc;
- (void)iterateAttachedConnectionsSync:(id)sync;
- (void)notifyOfProvider:(id)provider connection:(id)connection;
@end

@implementation ACCOOBBTPairingServer

- (ACCOOBBTPairingServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ACCOOBBTPairingServer;
  v7 = [(ACCFeatureServer *)&v14 initWithXPCServiceName:nameCopy andFeatureNotification:notification];
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
    v16 = nameCopy;
    v17 = 2080;
    notificationCopy = notification;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc: self=%@", buf, 0xCu);
  }

  registeredAccessoryConnections = self->_registeredAccessoryConnections;
  self->_registeredAccessoryConnections = 0;

  v7.receiver = self;
  v7.super_class = ACCOOBBTPairingServer;
  [(ACCFeatureServer *)&v7 dealloc];
}

- (void)iterateAttachedConnectionsSync:(id)sync
{
  syncCopy = sync;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
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

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCOOBBTPairingXPCServerProtocol];
  [connectionCopy setExportedInterface:v12];

  v13 = [[ACCOOBBTPairingServerRemote alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCOOBBTPairingXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_100227718;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  [connectionCopy setInvalidationHandler:v23];
  v15 = objc_alloc_init(_ACCOOBBTPairingProviderInfo);
  [(_ACCOOBBTPairingProviderInfo *)v15 setConnection:connectionCopy];
  [(_ACCOOBBTPairingProviderInfo *)v15 setServerRemote:v13];
  v16 = [connectionCopy remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  [(_ACCOOBBTPairingProviderInfo *)v15 setRemoteObject:v16];

  objc_storeStrong(&self->_oobBtPairingProviderInfo, v15);
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
    oobBtPairingProviderInfo = self->_oobBtPairingProviderInfo;
    *buf = 138412290;
    v29 = oobBtPairingProviderInfo;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "providerInfo=%@", buf, 0xCu);
  }

  [connectionCopy resume];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_137;
  block[3] = &unk_100225968;
  block[4] = self;
  dispatch_async(v20, block);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_cold_2(a1, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInvalidationHandler:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setOobBtPairingProviderInfo:0];
}

void __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_135(id a1, NSError *a2)
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_135_cold_2(v5);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_135_cold_4(v2, v6);
  }
}

void __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_137(uint64_t a1)
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
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inform provider of attached accessories %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [*(*(a1 + 32) + 64) allValues];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(a1 + 32) + 56);
        if (v10)
        {
          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v10 remoteObject];
          if (v12)
          {
            v13 = v12;
            v14 = [*(*(a1 + 32) + 56) remoteObject];
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              v16 = [*(*(a1 + 32) + 56) remoteObject];
              v17 = [v11 accessoryUID];
              v18 = [v11 accInfoDict];
              [v16 accessoryOOBBTPairingAttached:v17 accInfoDict:v18];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  oobBtPairingProviderInfo = self->_oobBtPairingProviderInfo;
  if (oobBtPairingProviderInfo)
  {
    connection = [(_ACCOOBBTPairingProviderInfo *)oobBtPairingProviderInfo connection];
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_oobBtPairingProviderInfo;
    v13[0] = 67109634;
    v13[1] = v7;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "OOBBTPairing server, shouldAcceptConnection=%d _oobBtPairingProviderInfo=%@ connection=%@", v13, 0x1Cu);
  }

  return v7;
}

- (void)accessoryOOBBTPairingAttached:(id)attached accInfoDict:(id)dict
{
  attachedCopy = attached;
  dictCopy = dict;
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
    v11 = platform_oobBtPairing_accessoryDictionaryForLogging(dictCopy);
    v24 = 138412546;
    v25 = attachedCopy;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "OOBBTPairing server, accessoryOOBBTPairingAttached: %@, accInfoDict=%@", &v24, 0x16u);
  }

  v12 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:attachedCopy];
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

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    oobBtPairingProviderInfo = self->_oobBtPairingProviderInfo;
    v24 = 138412802;
    v25 = attachedCopy;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = oobBtPairingProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "OOBBTPairing server, accessoryOOBBTPairingAttached: %@, registeredAccessory=%@ _oobBtPairingProviderInfo=%@", &v24, 0x20u);
  }

  if (!v12)
  {
    v12 = [[_ACCOOBBTPairingAccessoryInfo alloc] initWithUID:attachedCopy accInfoDict:dictCopy];
    [(NSMutableDictionary *)self->_registeredAccessoryConnections setObject:v12 forKey:attachedCopy];
  }

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

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v23 = self->_oobBtPairingProviderInfo;
    v24 = 138412802;
    v25 = attachedCopy;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v23;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "OOBBTPairing server, accessoryOOBBTPairingAttached: %@, accessory=%@ _oobBtPairingProviderInfo=%@", &v24, 0x20u);
  }

  if (v12)
  {
    remoteObject = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
    if (remoteObject)
    {
      v18 = remoteObject;
      remoteObject2 = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        remoteObject3 = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
        [remoteObject3 accessoryOOBBTPairingAttached:attachedCopy accInfoDict:dictCopy];
      }
    }
  }
}

- (void)accessoryOOBBTPairingDetached:(id)detached
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = detachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OOBBTPairing server, accessoryOOBBTPairingDetached: %@", &v17, 0xCu);
  }

  v8 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:detachedCopy];
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
    oobBtPairingProviderInfo = self->_oobBtPairingProviderInfo;
    v17 = 138412802;
    v18 = detachedCopy;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = oobBtPairingProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "OOBBTPairing server, accessoryOOBBTPairingDetached: %@, accessory=%@ _oobBtPairingProviderInfo=%@", &v17, 0x20u);
  }

  if (v8)
  {
    [(NSMutableDictionary *)self->_registeredAccessoryConnections removeObjectForKey:detachedCopy];
  }

  remoteObject = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
  if (remoteObject)
  {
    v12 = remoteObject;
    remoteObject2 = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      remoteObject3 = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
      [remoteObject3 accessoryOOBBTPairingDetached:detachedCopy];
    }
  }
}

- (void)accessoryOOBBTPairingBTAccessoryInfo:(id)info oobBtPairingUID:(id)d accessoryMacAddr:(id)addr deviceClass:(unsigned int)class
{
  infoCopy = info;
  dCopy = d;
  addrCopy = addr;
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

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v40 = infoCopy;
    v41 = 2112;
    v42 = dCopy;
    v43 = 2112;
    v44 = addrCopy;
    v45 = 1024;
    classCopy2 = class;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "OOBBTPairing server, accessoryOOBBTPairingBTAccessoryInfo: %@, oobBtPairingUID=%@, accessoryMacAddr=%@, deviceClass=%xh", buf, 0x26u);
  }

  selfCopy = self;
  v16 = [(NSMutableDictionary *)self->_registeredAccessoryConnections objectForKey:infoCopy];
  v17 = v16;
  if (gLogObjects)
  {
    v18 = gNumLogObjects <= 4;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  v37 = dCopy;
  if (v16)
  {
    if (v19)
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
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v40 = "[ACCOOBBTPairingServer accessoryOOBBTPairingBTAccessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:]";
      v41 = 2112;
      v42 = infoCopy;
      v43 = 2112;
      v44 = dCopy;
      v45 = 1024;
      classCopy2 = class;
      v47 = 2112;
      v48 = addrCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "OOBBTPairing server, %s: %@, oobBtPairingUID=%@, deviceClass=%xh, setting accessoryMacAddress to %@", buf, 0x30u);
    }

    classCopy3 = class;

    v23 = addrCopy;
    [v17 setAccessoryMacAddress:addrCopy];
    remoteObject = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
    if (remoteObject)
    {
      v25 = remoteObject;
      remoteObject2 = [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo remoteObject];
      v27 = objc_opt_respondsToSelector();

      self = selfCopy;
      if (v27)
      {
        if (gLogObjects && gNumLogObjects >= 5)
        {
          v28 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v28 = &_os_log_default;
          v34 = &_os_log_default;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          oobBtPairingProviderInfo = selfCopy->_oobBtPairingProviderInfo;
          *buf = 138412802;
          v40 = infoCopy;
          v41 = 2112;
          v42 = v17;
          v43 = 2112;
          v44 = oobBtPairingProviderInfo;
          _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "OOBBTPairing server, accessoryOOBBTPairingBTAccessoryInfo: %@, accessory=%@ _oobBtPairingProviderInfo=%@", buf, 0x20u);
        }

        remoteObject3 = [(_ACCOOBBTPairingProviderInfo *)selfCopy->_oobBtPairingProviderInfo remoteObject];
        v32 = dCopy;
        [remoteObject3 accessoryOOBBTPairingBTAccessoryInfo:infoCopy oobBtPairingUID:dCopy accessoryMacAddr:addrCopy deviceClass:classCopy3];
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (v19)
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
      v29 = &_os_log_default;
    }

    v23 = addrCopy;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ACCOOBBTPairingServer accessoryOOBBTPairingBTAccessoryInfo:infoCopy oobBtPairingUID:v21 accessoryMacAddr:? deviceClass:?];
    }
  }

  if (gLogObjects && gNumLogObjects >= 5)
  {
    remoteObject3 = *(gLogObjects + 32);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    remoteObject3 = &_os_log_default;
    v31 = &_os_log_default;
  }

  v32 = v37;
  if (os_log_type_enabled(remoteObject3, OS_LOG_TYPE_DEBUG))
  {
    v33 = self->_oobBtPairingProviderInfo;
    *buf = 138412802;
    v40 = infoCopy;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v33;
    _os_log_debug_impl(&_mh_execute_header, remoteObject3, OS_LOG_TYPE_DEBUG, "accessoryOOBBTPairingBTAccessoryInfoPairing server, accessoryOOBBTPairingDetached: %@, Invalid accessory=%@ _oobBtPairingProviderInfo=%@", buf, 0x20u);
  }

LABEL_52:
}

- (void)notifyOfProvider:(id)provider connection:(id)connection
{
  providerCopy = provider;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    oobBtPairingProviderInfo = self->_oobBtPairingProviderInfo;
    v15 = 138412802;
    v16 = providerCopy;
    v17 = 2112;
    v18 = connectionCopy;
    v19 = 2112;
    v20 = oobBtPairingProviderInfo;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "OOBBTPairing server, notifyOfProvider: %@ connection: %@, _oobBtPairingProviderInfo=%@", &v15, 0x20u);
  }

  v11 = self->_oobBtPairingProviderInfo;
  if (v11)
  {
    connection = [(_ACCOOBBTPairingProviderInfo *)v11 connection];
    v13 = [connection isEqual:connectionCopy];

    if (v13)
    {
      [(_ACCOOBBTPairingProviderInfo *)self->_oobBtPairingProviderInfo setProviderUID:providerCopy];
    }
  }
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__ACCOOBBTPairingServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServer_once_4 != -1)
  {
    dispatch_once(&sharedServer_once_4, block);
  }

  v2 = sharedServer_sharedInstance_4;

  return v2;
}

uint64_t __37__ACCOOBBTPairingServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_4 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.oobbtpairing" andFeatureNotification:"com.apple.accessories.oobbtpairing.availability-changed"];

  return _objc_release_x1();
}

void __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 oobBtPairingProviderInfo];
  v7 = 138412546;
  v8 = WeakRetained;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "XPC connection invalidated! %@ providerInfo=%@", &v7, 0x16u);
}

void __60__ACCOOBBTPairingServer_listener_shouldAcceptNewConnection___block_invoke_135_cold_4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

- (void)accessoryOOBBTPairingBTAccessoryInfo:(uint64_t)a1 oobBtPairingUID:(NSObject *)a2 accessoryMacAddr:deviceClass:.cold.5(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ACCOOBBTPairingServer accessoryOOBBTPairingBTAccessoryInfo:oobBtPairingUID:accessoryMacAddr:deviceClass:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s, invalid accessoryUID=%@", &v2, 0x16u);
}

@end