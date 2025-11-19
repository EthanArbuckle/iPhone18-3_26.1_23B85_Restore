@interface ACCExternalAccessoryServer
+ (id)sharedServer;
- (ACCExternalAccessoryServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4;
- (BOOL)accessoryClosingExternalAccessorySession:(id)a3;
- (BOOL)externalAccessoryArrived:(id)a3;
- (BOOL)externalAccessoryLeft:(id)a3;
- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4;
- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 toExternalAccessoryClient:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)sendNMEASentence:(id)a3 forAccessoryUUID:(id)a4 withTimestamps:(id)a5;
- (BOOL)sendToClientsNotification:(id)a3 withPayload:(id)a4 aboutAccessory:(id)a5;
- (BOOL)startDestinationSharing:(id)a3 options:(unint64_t)a4;
- (BOOL)stopDestinationSharing:(id)a3;
- (BOOL)vehicleStatusDidChange:(id)a3 forAccessoryUUID:(id)a4;
- (id)_eaClientsForAccessory:(id)a3;
- (id)_externalAccessoryForUUID:(id)a3;
- (id)externalAccessoryClientConnected:(id)a3;
- (void)_launchUnregisteredClientApps:(id)a3 knownClientApps:(id)a4;
- (void)notifyClientOfConnectedAccessories:(id)a3;
- (void)notifyClientOfConnectedDestinationSharingAccessories:(id)a3;
- (void)notifyClientOfConnectedVehicleStatus:(id)a3;
- (void)updateExternalAccessoryInfo:(id)a3;
@end

@implementation ACCExternalAccessoryServer

- (ACCExternalAccessoryServer)initWithXPCServiceName:(id)a3 andFeatureNotification:(const char *)a4
{
  v14.receiver = self;
  v14.super_class = ACCExternalAccessoryServer;
  v4 = [(ACCFeatureServer *)&v14 initWithXPCServiceName:a3 andFeatureNotification:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    eaClientConnectionsMutable = v4->_eaClientConnectionsMutable;
    v4->_eaClientConnectionsMutable = v5;

    v7 = objc_alloc_init(NSMutableSet);
    eaAccessoriesMutable = v4->_eaAccessoriesMutable;
    v4->_eaAccessoriesMutable = v7;

    v9 = objc_alloc_init(NSMutableSet);
    activeDestinationSharingUUIDs = v4->_activeDestinationSharingUUIDs;
    v4->_activeDestinationSharingUUIDs = v9;

    v11 = objc_alloc_init(NSLock);
    connectedAccessoryLock = v4->_connectedAccessoryLock;
    v4->_connectedAccessoryLock = v11;

    if (initWithXPCServiceName_andFeatureNotification__onceToken != -1)
    {
      [ACCExternalAccessoryServer initWithXPCServiceName:andFeatureNotification:];
    }
  }

  platform_system_createFolder("/var/mobile/Library/ExternalAccessory", 750);
  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (listener_shouldAcceptNewConnection__onceToken != -1)
  {
    [ACCExternalAccessoryServer listener:shouldAcceptNewConnection:];
  }

  if (gLogObjects)
  {
    v8 = gNumLogObjects < 10;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = @"com.apple.accessories.externalaccessory-server";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] New XPC connection for: %@", buf, 0xCu);
  }

  [v7 setExportedInterface:listener_shouldAcceptNewConnection__serverInterface];
  v11 = [[ACCExternalAccessoryClientInfo alloc] initWithXPCConnection:v7];
  v12 = [[ACCExternalAccessoryServerRemote alloc] initWithClientInfo:v11];
  [v7 setExportedObject:v12];

  [v7 setRemoteObjectInterface:listener_shouldAcceptNewConnection__clientInterface];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_110;
  v21[3] = &unk_100225C98;
  objc_copyWeak(&v22, &from);
  v21[4] = self;
  objc_copyWeak(&v23, &location);
  [v7 setInvalidationHandler:v21];
  v13 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
  [v13 lock];

  v14 = [(ACCExternalAccessoryServer *)self eaClientConnectionsMutable];
  [v14 addObject:v11];

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v15 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v15 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v18 = [v17 count];
    *buf = 134217984;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] There are now %lu client(s).", buf, 0xCu);
  }

  v19 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
  [v19 unlock];

  [v7 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCExternalAccessoryXPCServerProtocol];
  v2 = listener_shouldAcceptNewConnection__serverInterface;
  listener_shouldAcceptNewConnection__serverInterface = v1;

  listener_shouldAcceptNewConnection__clientInterface = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCExternalAccessoryXPCClientProtocol];

  _objc_release_x1();
}

void __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_110(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setInvalidationHandler:0];

  v76 = a1;
  v3 = objc_loadWeakRetained(a1 + 5);
  [v3 setExportedObject:0];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    *buf = 138412290;
    v105 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] XPC connection invalidated: %@", buf, 0xCu);
  }

  v8 = [v76[4] connectedAccessoryLock];
  [v8 lock];

  v9 = [v76[4] eaClientConnectionsMutable];
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_111;
  v99[3] = &unk_100226570;
  objc_copyWeak(&v100, v76 + 5);
  v10 = [v9 objectsPassingTest:v99];

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v11 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_110_cold_3(v110, [v10 count], v11);
  }

  v13 = [v76[4] connectedAccessoryLock];
  [v13 unlock];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v10;
  v74 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
  if (v74)
  {
    v73 = *v96;
    do
    {
      for (i = 0; i != v74; i = i + 1)
      {
        if (*v96 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v95 + 1) + 8 * i);
        v15 = +[NSMutableArray array];
        v78 = +[NSMutableArray array];
        v16 = [v76[4] connectedAccessoryLock];
        [v16 lock];

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v17 = [v14 eaSessionUUIDs];
        v18 = [v17 countByEnumeratingWithState:&v91 objects:v108 count:16];
        if (v18)
        {
          v19 = *v92;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v92 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v91 + 1) + 8 * j);
              v22 = gLogObjects;
              v23 = gNumLogObjects;
              if (gLogObjects)
              {
                v24 = gNumLogObjects < 10;
              }

              else
              {
                v24 = 1;
              }

              if (v24)
              {
                v26 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v105 = v22;
                  v106 = 1024;
                  LODWORD(v107) = v23;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v25 = &_os_log_default;
              }

              else
              {
                v26 = *(gLogObjects + 72);
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v14 bundleID];
                *buf = 138412546;
                v105 = v21;
                v106 = 2112;
                v107 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Close EA session for eaSessionUUID %@, client %@ exited", buf, 0x16u);
              }

              [v15 addObject:v21];
            }

            v18 = [v17 countByEnumeratingWithState:&v91 objects:v108 count:16];
          }

          while (v18);
        }

        v28 = [v76[4] connectedAccessoryLock];
        [v28 unlock];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v77 = v15;
        v29 = [v77 countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v29)
        {
          v30 = *v88;
          do
          {
            for (k = 0; k != v29; k = k + 1)
            {
              if (*v88 != v30)
              {
                objc_enumerationMutation(v77);
              }

              v32 = *(*(&v87 + 1) + 8 * k);
              v33 = +[ACCExternalAccessorySessionManager sharedManager];
              v34 = [v33 closeSessionForEASessionUUID:v32];

              if (v34)
              {
                [v78 addObject:v32];
              }

              else
              {
                v35 = gLogObjects;
                v36 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 10)
                {
                  v37 = *(gLogObjects + 72);
                }

                else
                {
                  v37 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v105 = v35;
                    v106 = 1024;
                    LODWORD(v107) = v36;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v38 = &_os_log_default;
                }

                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v105 = v32;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Session could not be closed for eaSessionUUID %@", buf, 0xCu);
                }
              }
            }

            v29 = [v77 countByEnumeratingWithState:&v87 objects:v103 count:16];
          }

          while (v29);
        }

        v39 = [v76[4] connectedAccessoryLock];
        [v39 lock];

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v40 = v78;
        v41 = [v40 countByEnumeratingWithState:&v83 objects:v102 count:16];
        if (v41)
        {
          v42 = *v84;
          do
          {
            for (m = 0; m != v41; m = m + 1)
            {
              if (*v84 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v83 + 1) + 8 * m);
              v45 = [v14 eaSessionUUIDs];
              [v45 removeObject:v44];
            }

            v41 = [v40 countByEnumeratingWithState:&v83 objects:v102 count:16];
          }

          while (v41);
        }

        v46 = objc_loadWeakRetained(v76 + 6);
        v47 = [v46 eaClientConnectionsMutable];
        [v47 removeObject:v14];

        v48 = gLogObjects;
        v49 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 10)
        {
          v50 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v105 = v48;
            v106 = 1024;
            LODWORD(v107) = v49;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v51 = &_os_log_default;
          v50 = &_os_log_default;
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v14 bundleID];
          v53 = [v14 activeLocationAccessoryUUIDs];
          *buf = 138412546;
          v105 = v52;
          v106 = 2112;
          v107 = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[#Location] Client %@ went away, StopLocation for active accessories %@", buf, 0x16u);
        }

        v54 = [v14 activeLocationAccessoryUUIDs];
        v55 = [v54 copy];

        v56 = [v76[4] connectedAccessoryLock];
        [v56 unlock];

        if (v55)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v57 = v55;
          v58 = [v57 countByEnumeratingWithState:&v79 objects:v101 count:16];
          if (v58)
          {
            v59 = *v80;
            do
            {
              for (n = 0; n != v58; n = n + 1)
              {
                if (*v80 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                v61 = *(*(&v79 + 1) + 8 * n);
                v62 = gLogObjects;
                v63 = gNumLogObjects;
                if (gLogObjects)
                {
                  v64 = gNumLogObjects < 10;
                }

                else
                {
                  v64 = 1;
                }

                if (v64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v105 = v62;
                    v106 = 1024;
                    LODWORD(v107) = v63;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v65 = &_os_log_default;
                  v66 = &_os_log_default;
                }

                else
                {
                  v66 = *(gLogObjects + 72);
                }

                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v105 = v61;
                  _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "[#Location] StopLocation accessory %@", buf, 0xCu);
                }

                platform_location_stop(v61);
              }

              v58 = [v57 countByEnumeratingWithState:&v79 objects:v101 count:16];
            }

            while (v58);
          }
        }
      }

      v74 = [obj countByEnumeratingWithState:&v95 objects:v109 count:16];
    }

    while (v74);
  }

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v67 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v67 = &_os_log_default;
    v68 = &_os_log_default;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v69 = objc_loadWeakRetained(v76 + 6);
    v70 = [v69 eaClientConnectionsMutable];
    v71 = [v70 count];
    *buf = 134217984;
    v105 = v71;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] There are now %lu client(s).", buf, 0xCu);
  }

  objc_destroyWeak(&v100);
}

id __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_111(uint64_t a1, void *a2)
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

- (BOOL)externalAccessoryArrived:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v5 lock];

    v6 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = __55__ACCExternalAccessoryServer_externalAccessoryArrived___block_invoke;
    v46[3] = &unk_100226CE0;
    v7 = v4;
    v47 = v7;
    v8 = [v6 objectsPassingTest:v46];

    v9 = [(ACCExternalAccessoryServer *)self eaAccessoriesMutable];
    v38 = v7;
    [v9 addObject:v7];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = self;
      v35 = v4;
      v12 = 0;
      v13 = *v43;
      v36 = kACCExternalAccessoryNameKey;
      v14 = &audioProductCerts_endpoint_publish_onceToken;
      do
      {
        v15 = 0;
        v16 = v12;
        do
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v42 + 1) + 8 * v15);
          v12 = [v38 EAAccessoryDictionary];

          v18 = v14[491];
          v19 = gNumLogObjects;
          if (v18)
          {
            v20 = gNumLogObjects < 10;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v49 = v18;
              v50 = 1024;
              LODWORD(v51) = v19;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v21 = &_os_log_default;
            v22 = &_os_log_default;
          }

          else
          {
            v22 = *(v18 + 72);
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v17 bundleID];
            v23 = v11;
            v25 = v24 = v14;
            v26 = [v12 objectForKey:v36];
            *buf = 138412546;
            v49 = v25;
            v50 = 2112;
            v51 = v26;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Notified of externalAccessoryArrived...sending EAAccessoryArrived to client %@ for accessory name %@", buf, 0x16u);

            v14 = v24;
            v11 = v23;
          }

          v27 = [v17 XPCConnection];
          v28 = [v27 remoteObjectProxyWithErrorHandler:&__block_literal_global_117];
          [v28 ExternalAccessoryArrived:v12];

          if ([v17 canSendLaunchEvent])
          {
            v29 = [v17 bundleID];
            platform_system_launchApplicationToBackground(v29);
          }

          v15 = v15 + 1;
          v16 = v12;
        }

        while (v11 != v15);
        v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v11);

      self = v34;
      v4 = v35;
    }

    v30 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __55__ACCExternalAccessoryServer_externalAccessoryArrived___block_invoke_118;
    block[3] = &unk_100226D28;
    block[4] = self;
    v40 = v38;
    v41 = obj;
    v31 = obj;
    dispatch_async(v30, block);

    v32 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v32 unlock];

    [(ACCFeatureServer *)self sendNotification];
  }

  return v4 != 0;
}

id __55__ACCExternalAccessoryServer_externalAccessoryArrived___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 canSendConnectionEventForAccessory:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

void __55__ACCExternalAccessoryServer_externalAccessoryArrived___block_invoke_114(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)externalAccessoryLeft:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v5 lock];

    v6 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = __52__ACCExternalAccessoryServer_externalAccessoryLeft___block_invoke;
    v57[3] = &unk_100226CE0;
    v49 = v4;
    v7 = v4;
    v58 = v7;
    v8 = [v6 objectsPassingTest:v57];

    v9 = [v7 EAAccessoryDictionary];
    v10 = [v9 copy];

    v11 = [(ACCExternalAccessoryServer *)self eaAccessoriesMutable];
    [v11 removeObject:v7];

    v12 = [(ACCExternalAccessoryServer *)self activeDestinationSharingUUIDs];
    v50 = v7;
    v13 = [v7 primaryEndpointUUID];
    v14 = [v12 containsObject:v13];

    if (v14)
    {
      v15 = [(ACCExternalAccessoryServer *)self activeDestinationSharingUUIDs];
      v16 = [v7 primaryEndpointUUID];
      [v15 removeObject:v16];
    }

    v48 = self;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v8;
    v17 = v7;
    v52 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v52)
    {
      v18 = *v54;
      v19 = &audioProductCerts_endpoint_publish_onceToken;
      v20 = &_os_log_default;
      do
      {
        v21 = 0;
        do
        {
          if (*v54 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v53 + 1) + 8 * v21);
          v23 = v19[491];
          v24 = gNumLogObjects;
          if (v23)
          {
            v25 = gNumLogObjects < 10;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v60 = v23;
              v61 = 1024;
              LODWORD(v62) = v24;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v26 = &_os_log_default;
          }

          else
          {
            v20 = *(v23 + 72);
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v22 bundleID];
            [v22 activeLocationAccessoryUUIDs];
            v28 = v19;
            v30 = v29 = v18;
            v31 = [v30 count];
            [v17 primaryEndpointUUID];
            v33 = v32 = v10;
            *buf = 138412802;
            v60 = v27;
            v61 = 2048;
            v62 = v31;
            v63 = 2112;
            v64 = v33;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[#Location] Remove from client(%@) activeLocationAccessoryUUIDs(%lu): %@", buf, 0x20u);

            v10 = v32;
            v17 = v50;

            v18 = v29;
            v19 = v28;
          }

          v34 = [v17 primaryEndpointUUID];
          [v22 removeLocationAccessoryUUID:v34];

          v35 = v19[491];
          v36 = gNumLogObjects;
          if (v35 && gNumLogObjects >= 10)
          {
            v37 = *(v35 + 72);
          }

          else
          {
            v37 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v60 = v35;
              v61 = 1024;
              LODWORD(v62) = v36;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v38 = &_os_log_default;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v22 bundleID];
            v40 = [ACCExternalAccessory accessoryDictionaryForLogging:v10];
            *buf = 138412546;
            v60 = v39;
            v61 = 2112;
            v62 = v40;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Sending EAAccessoryLeft to client %@ for %@", buf, 0x16u);
          }

          v41 = [v22 XPCConnection];
          v42 = [v41 remoteObjectProxyWithErrorHandler:&__block_literal_global_122];
          [v42 ExternalAccessoryLeft:v10];

          if ([v22 canSendLaunchEvent])
          {
            v43 = [v22 bundleID];
            platform_system_launchApplicationToBackground(v43);
          }

          v21 = v21 + 1;
          v20 = &_os_log_default;
        }

        while (v52 != v21);
        v52 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v52);
    }

    v44 = [(ACCExternalAccessoryServer *)v48 connectedAccessoryLock];
    [v44 unlock];

    v45 = +[ACCExternalAccessorySessionManager sharedManager];
    v46 = [v10 objectForKey:kACCExternalAccessoryPrimaryUUID];
    [v45 closeSessionsForPrimaryAccessoryUUID:v46];

    v4 = v49;
  }

  return v4 != 0;
}

id __52__ACCExternalAccessoryServer_externalAccessoryLeft___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 canSendConnectionEventForAccessory:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

void __52__ACCExternalAccessoryServer_externalAccessoryLeft___block_invoke_120(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)sendToClientsNotification:(id)a3 withPayload:(id)a4 aboutAccessory:(id)a5
{
  v8 = a3;
  v40 = a4;
  v9 = a5;
  v10 = v9;
  v41 = v8;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (gLogObjects)
    {
      v34 = gNumLogObjects < 10;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v33 = &_os_log_default;
      v35 = &_os_log_default;
    }

    else
    {
      v33 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [ACCExternalAccessoryServer sendToClientsNotification:v10 withPayload:v41 aboutAccessory:v33];
    }
  }

  else
  {
    v13 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v13 lock];

    v37 = self;
    v14 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = __83__ACCExternalAccessoryServer_sendToClientsNotification_withPayload_aboutAccessory___block_invoke;
    v46[3] = &unk_100226CE0;
    v38 = v10;
    v15 = v10;
    v47 = v15;
    v16 = [v14 objectsPassingTest:v46];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      v20 = &_os_log_default;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v42 + 1) + 8 * i);
          v23 = [v15 EAAccessoryDictionary];
          v24 = gLogObjects;
          v25 = gNumLogObjects;
          if (gLogObjects)
          {
            v26 = gNumLogObjects < 10;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v49 = v24;
              v50 = 1024;
              LODWORD(v51) = v25;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v27 = &_os_log_default;
          }

          else
          {
            v20 = *(gLogObjects + 72);
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v22 bundleID];
            v29 = [ACCExternalAccessory accessoryDictionaryForLogging:v23];
            *buf = 136316418;
            v49 = "[ACCExternalAccessoryServer sendToClientsNotification:withPayload:aboutAccessory:]";
            v50 = 2112;
            v51 = v15;
            v52 = 2112;
            v53 = v41;
            v54 = 2112;
            v55 = v40;
            v56 = 2112;
            v57 = v28;
            v58 = 2112;
            v59 = v29;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s %@ sending notification %@ with payload %@ to client %@ for %@", buf, 0x3Eu);
          }

          v30 = [v22 XPCConnection];
          v31 = [v30 remoteObjectProxyWithErrorHandler:&__block_literal_global_125];
          [v31 handleIncomingNotification:v41 withPayload:v40 aboutAccessory:v23];

          v20 = &_os_log_default;
        }

        v18 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
      }

      while (v18);
    }

    v32 = [(ACCExternalAccessoryServer *)v37 connectedAccessoryLock];
    [v32 unlock];

    v33 = v47;
    v10 = v38;
  }

  return v12;
}

id __83__ACCExternalAccessoryServer_sendToClientsNotification_withPayload_aboutAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 canSendConnectionEventForAccessory:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

void __83__ACCExternalAccessoryServer_sendToClientsNotification_withPayload_aboutAccessory___block_invoke_123(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)updateExternalAccessoryInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v5 lock];

    v29 = self;
    v6 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __58__ACCExternalAccessoryServer_updateExternalAccessoryInfo___block_invoke;
    v37[3] = &unk_100226CE0;
    v30 = v4;
    v7 = v4;
    v38 = v7;
    v8 = [v6 objectsPassingTest:v37];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v8;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v32)
    {
      v9 = *v34;
      v10 = &audioProductCerts_endpoint_publish_onceToken;
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          v14 = [v7 EAAccessoryDictionary];
          v15 = v10[491];
          v16 = *(v11 + 984);
          if (v15)
          {
            v17 = v16 < 10;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v40 = v15;
              v41 = 1024;
              LODWORD(v42) = v16;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v18 = &_os_log_default;
            v19 = &_os_log_default;
          }

          else
          {
            v19 = *(v15 + 72);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            [v13 bundleID];
            v20 = v9;
            v21 = v11;
            v23 = v22 = v10;
            v24 = [v7 EAName];
            *buf = 138412546;
            v40 = v23;
            v41 = 2112;
            v42 = v24;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending updateExternalAccessoryInfo to client %@ for %@", buf, 0x16u);

            v10 = v22;
            v11 = v21;
            v9 = v20;
          }

          v25 = [v13 XPCConnection];
          v26 = [v25 remoteObjectProxyWithErrorHandler:&__block_literal_global_128];
          v27 = [v7 primaryEndpointUUID];
          [v26 updateAccessoryInfo:v14 forUUID:v27];

          v12 = v12 + 1;
        }

        while (v32 != v12);
        v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v32);
    }

    v28 = [(ACCExternalAccessoryServer *)v29 connectedAccessoryLock];
    [v28 unlock];

    v4 = v30;
  }
}

id __58__ACCExternalAccessoryServer_updateExternalAccessoryInfo___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 canSendConnectionEventForAccessory:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

void __58__ACCExternalAccessoryServer_updateExternalAccessoryInfo___block_invoke_126(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (id)externalAccessoryClientConnected:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 10;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 bundleID];
    *buf = 138412290;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notified of client %@ connected...", buf, 0xCu);
  }

  v9 = [(ACCExternalAccessoryServer *)self eaAccessories];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __63__ACCExternalAccessoryServer_externalAccessoryClientConnected___block_invoke;
  v31[3] = &unk_100226CE0;
  v26 = v4;
  v32 = v26;
  v10 = [v9 objectsPassingTest:v31];

  v11 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = gLogObjects;
        v19 = gNumLogObjects;
        if (gLogObjects)
        {
          v20 = gNumLogObjects < 10;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v34 = v18;
            v35 = 1024;
            LODWORD(v36) = v19;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v21 = &_os_log_default;
          v22 = &_os_log_default;
        }

        else
        {
          v22 = *(gLogObjects + 72);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v26 bundleID];
          v24 = [v17 EAName];
          *buf = 138412546;
          v34 = v23;
          v35 = 2112;
          v36 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending initial EAAccessoryArrived in array to client %@ for %@", buf, 0x16u);
        }

        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v14);
  }

  return v11;
}

id __63__ACCExternalAccessoryServer_externalAccessoryClientConnected___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result canSendConnectionEventForAccessory:a2];
  }

  return result;
}

- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __89__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier___block_invoke;
    v14[3] = &unk_100226CE0;
    v9 = v6;
    v15 = v9;
    v10 = [v8 objectsPassingTest:v14];

    v11 = [v10 anyObject];
    v12 = [(ACCExternalAccessoryServer *)self handleIncomingExternalAccessoryData:v7 forEASessionIdentifier:v9 toExternalAccessoryClient:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __89__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 eaSessionUUIDs];
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

- (BOOL)accessoryClosingExternalAccessorySession:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __71__ACCExternalAccessoryServer_accessoryClosingExternalAccessorySession___block_invoke;
    v19[3] = &unk_100226CE0;
    v6 = v4;
    v20 = v6;
    v7 = [v5 objectsPassingTest:v19];

    v8 = [v7 anyObject];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      v11 = [v8 XPCConnection];
      v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_130];
      [v12 accessoryCloseExternalAccessorySession:v6];

      v13 = [v9 eaSessionUUIDs];
      [v13 removeObject:v6];

      if (gLogObjects && gNumLogObjects >= 10)
      {
        v14 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v14 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 bundleID];
        *buf = 138412546;
        v22 = v6;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accessory closing eaSessionUUID %@ for client %@", buf, 0x16u);
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v14 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v14 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACCExternalAccessoryServer accessoryClosingExternalAccessorySession:];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __71__ACCExternalAccessoryServer_accessoryClosingExternalAccessorySession___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 eaSessionUUIDs];
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

void __71__ACCExternalAccessoryServer_accessoryClosingExternalAccessorySession___block_invoke_2(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)handleIncomingExternalAccessoryData:(id)a3 forEASessionIdentifier:(id)a4 toExternalAccessoryClient:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v8 == 0;
  v12 = !v11;
  if (!v11)
  {
    v13 = a3;
    v14 = [v9 XPCConnection];
    v15 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_132];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __115__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier_toExternalAccessoryClient___block_invoke_133;
    v17[3] = &unk_100226DF0;
    v18 = v7;
    v19 = v9;
    v20 = 0;
    [v15 handleIncomingExternalAccessoryData:v13 forEASessionIdentifier:v18 withReply:v17];
  }

  return v12;
}

void __115__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier_toExternalAccessoryClient___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

void __115__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier_toExternalAccessoryClient___block_invoke_133(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 10;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __115__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier_toExternalAccessoryClient___block_invoke_133_cold_2(a1, v4);
  }
}

- (BOOL)sendNMEASentence:(id)a3 forAccessoryUUID:(id)a4 withTimestamps:(id)a5
{
  v38 = a3;
  v8 = a4;
  v37 = a5;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 10;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v47 = v38;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#Location] nmeaSentence: %@ from %@", buf, 0x16u);
  }

  v12 = 0;
  if (v38 && v8)
  {
    v13 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v13 lock];

    v14 = [(ACCExternalAccessoryServer *)self eaClientConnections];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __79__ACCExternalAccessoryServer_sendNMEASentence_forAccessoryUUID_withTimestamps___block_invoke;
    v43[3] = &unk_100226CE0;
    v35 = v8;
    v15 = v8;
    v44 = v15;
    v16 = [v14 objectsPassingTest:v43];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    v34 = v17 != 0;
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = gLogObjects;
          v23 = gNumLogObjects;
          if (gLogObjects)
          {
            v24 = gNumLogObjects < 10;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v47 = v22;
              v48 = 1024;
              LODWORD(v49) = v23;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v25 = &_os_log_default;
            v26 = &_os_log_default;
          }

          else
          {
            v26 = *(gLogObjects + 72);
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v31 = [v21 bundleID];
            *buf = 138412546;
            v47 = v31;
            v48 = 2112;
            v49 = v15;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "[#Location] sending nmea sentence to location client %@ for endpoint UUID %@", buf, 0x16u);
          }

          v27 = [v38 copy];
          v28 = [v37 copy];
          v29 = [v21 XPCConnection];
          v30 = [v29 remoteObjectProxyWithErrorHandler:&__block_literal_global_137];
          [v30 enqueueLocationNMEASentence:v27 forUUID:v15 withTimestamps:v28];
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v18);
    }

    v32 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
    [v32 unlock];

    v8 = v35;
    v12 = v34;
  }

  return v12;
}

id __79__ACCExternalAccessoryServer_sendNMEASentence_forAccessoryUUID_withTimestamps___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 containsLocationAccessoryUUID:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

void __79__ACCExternalAccessoryServer_sendNMEASentence_forAccessoryUUID_withTimestamps___block_invoke_135(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __79__ACCExternalAccessoryServer_sendNMEASentence_forAccessoryUUID_withTimestamps___block_invoke_135_cold_2();
  }
}

- (void)notifyClientOfConnectedAccessories:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessoryServer *)self eaAccessories];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = __65__ACCExternalAccessoryServer_notifyClientOfConnectedAccessories___block_invoke;
  v35[3] = &unk_100226CE0;
  v6 = v4;
  v36 = v6;
  v7 = [v5 objectsPassingTest:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v32;
    v12 = &audioProductCerts_endpoint_publish_onceToken;
    v13 = &_os_log_default;
    v29 = v6;
    do
    {
      v14 = 0;
      v15 = v10;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * v14);
        v17 = v12[491];
        v18 = gNumLogObjects;
        if (v17)
        {
          v19 = gNumLogObjects < 10;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v38 = v17;
            v39 = 1024;
            LODWORD(v40) = v18;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v20 = &_os_log_default;
        }

        else
        {
          v13 = *(v17 + 72);
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v6 bundleID];
          v22 = v9;
          v23 = v11;
          v24 = v12;
          v25 = [v16 EAAccessoryDictionary];
          v26 = [ACCExternalAccessory accessoryDictionaryForLogging:v25];
          *buf = 138412546;
          v38 = v21;
          v39 = 2112;
          v40 = v26;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#ExternalAccessory] Sending EAAccessoryArrived to client connected %@ for %@", buf, 0x16u);

          v12 = v24;
          v11 = v23;
          v9 = v22;
          v6 = v29;
        }

        v10 = [v16 EAAccessoryDictionary];

        v27 = [v6 XPCConnection];
        v28 = [v27 remoteObjectProxyWithErrorHandler:&__block_literal_global_140];
        [v28 ExternalAccessoryArrived:v10];

        v14 = v14 + 1;
        v15 = v10;
        v13 = &_os_log_default;
      }

      while (v9 != v14);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v9);
  }
}

id __65__ACCExternalAccessoryServer_notifyClientOfConnectedAccessories___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result canSendConnectionEventForAccessory:a2];
  }

  return result;
}

void __65__ACCExternalAccessoryServer_notifyClientOfConnectedAccessories___block_invoke_138(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __65__ACCExternalAccessoryServer_notifyClientOfConnectedAccessories___block_invoke_138_cold_2();
  }
}

- (void)notifyClientOfConnectedDestinationSharingAccessories:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(ACCExternalAccessoryServer *)self activeDestinationSharingUUIDs];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 134218240;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [(ACCExternalAccessoryServer *)self _externalAccessoryForUUID:v10, v22];
        if ([v4 canSendConnectionEventForAccessory:v11])
        {
          v12 = gLogObjects;
          v13 = gNumLogObjects;
          if (gLogObjects)
          {
            v14 = gNumLogObjects < 10;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v29 = v12;
              v30 = 1024;
              LODWORD(v31) = v13;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v15 = &_os_log_default;
            v16 = &_os_log_default;
          }

          else
          {
            v16 = *(gLogObjects + 72);
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v4 bundleID];
            v18 = [v11 EAName];
            *buf = 138412546;
            v29 = v17;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notifying Destination Sharing started to client %@ for accessory %@", buf, 0x16u);
          }

          v19 = [v11 destinationSharingOptions];
          v20 = [v4 XPCConnection];
          v21 = [v20 remoteObjectProxyWithErrorHandler:&__block_literal_global_142];
          [v21 startDestinationSharingForUUID:v10 options:v19];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }
}

void __83__ACCExternalAccessoryServer_notifyClientOfConnectedDestinationSharingAccessories___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (void)notifyClientOfConnectedVehicleStatus:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessoryServer *)self eaAccessories];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke;
  v36[3] = &unk_100226CE0;
  v6 = v4;
  v37 = v6;
  v7 = [v5 objectsPassingTest:v36];

  if ([v7 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = v7;
      v11 = *v33;
      obj = v8;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [v13 vehicleStatus];

          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects)
          {
            v17 = gNumLogObjects <= 9;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if (v14)
          {
            if (v18)
            {
              v19 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v40 = v15;
                v41 = 1024;
                v42 = v16;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v21 = &_os_log_default;
              v19 = &_os_log_default;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v6 bundleID];
              *buf = 138412290;
              v40 = v22;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] eaAccessoryVehicleStatus has valid vehicleStatus, sending to client connected %@", buf, 0xCu);
            }

            v20 = [v6 XPCConnection];
            v23 = [v20 remoteObjectProxyWithErrorHandler:&__block_literal_global_145];
            v24 = [v13 vehicleStatus];
            v25 = [v24 copy];
            v26 = [v13 primaryEndpointUUID];
            [v23 vehicleStatusUpdate:v25 forUUID:v26];
          }

          else
          {
            if (v18)
            {
              v20 = *(gLogObjects + 72);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v40 = v15;
                v41 = 1024;
                v42 = v16;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v27 = &_os_log_default;
              v20 = &_os_log_default;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v6 bundleID];
              *buf = 138412290;
              v40 = v28;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] no vehicleStatus for eaAccessoryVehicleStatus for endpointUUID %@, skip notifying", buf, 0xCu);
            }
          }
        }

        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v10);
      v7 = v30;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v8 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v8 = &_os_log_default;
      v29 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] No eaAccessoriesForClient, skip notifying", buf, 2u);
    }
  }
}

id __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result canSendConnectionEventForAccessory:a2];
  }

  return result;
}

void __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke_143(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke_143_cold_2();
  }
}

- (BOOL)startDestinationSharing:(id)a3 options:(unint64_t)a4
{
  v30 = a3;
  v6 = [(ACCExternalAccessoryServer *)self _externalAccessoryForUUID:?];
  if (v6)
  {
    v7 = [(ACCExternalAccessoryServer *)self activeDestinationSharingUUIDs];
    [v7 addObject:v30];

    [v6 setDestinationSharingOptions:a4];
    v28 = v6;
    [(ACCExternalAccessoryServer *)self _eaClientsForAccessory:v6];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v34 = 0u;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    v26 = v8 != 0;
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      v27 = *v32;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = v11[491];
          v15 = gNumLogObjects;
          if (v14)
          {
            v16 = gNumLogObjects < 10;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v36 = v14;
              v37 = 1024;
              LODWORD(v38) = v15;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v17 = &_os_log_default;
            v18 = &_os_log_default;
          }

          else
          {
            v18 = *(v14 + 72);
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            [v13 bundleID];
            v20 = v19 = v11;
            v21 = [v28 EAName];
            *buf = 138412802;
            v36 = v20;
            v37 = 2112;
            v38 = v21;
            v39 = 2048;
            v40 = a4;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending Start Destination Sharing to client %@ for accessory %@, options %llxh", buf, 0x20u);

            v11 = v19;
            v10 = v27;
          }

          v22 = [v13 XPCConnection];
          v23 = [v22 remoteObjectProxyWithErrorHandler:&__block_literal_global_147];
          [v23 startDestinationSharingForUUID:v30 options:a4];
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v9);
    }

    v6 = v28;
    v24 = v26;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __62__ACCExternalAccessoryServer_startDestinationSharing_options___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)stopDestinationSharing:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessoryServer *)self _externalAccessoryForUUID:v4];
  if (v5)
  {
    v6 = [(ACCExternalAccessoryServer *)self activeDestinationSharingUUIDs];
    [v6 removeObject:v4];

    v32 = v5;
    [(ACCExternalAccessoryServer *)self _eaClientsForAccessory:v5];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    v31 = v7 != 0;
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v10 = &audioProductCerts_endpoint_publish_onceToken;
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      v12 = &_os_log_default;
      do
      {
        v13 = 0;
        v33 = v8;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          v15 = v10[491];
          v16 = *(v11 + 984);
          if (v15)
          {
            v17 = v16 < 10;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v40 = v15;
              v41 = 1024;
              LODWORD(v42) = v16;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v18 = v12;
            v19 = v12;
          }

          else
          {
            v19 = *(v15 + 72);
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            [v14 bundleID];
            v20 = v9;
            v21 = v12;
            v22 = v4;
            v23 = v11;
            v25 = v24 = v10;
            v26 = [v32 EAName];
            *buf = 138412546;
            v40 = v25;
            v41 = 2112;
            v42 = v26;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending Stop Destination Sharing to client %@ for accessory %@", buf, 0x16u);

            v10 = v24;
            v11 = v23;
            v4 = v22;
            v12 = v21;
            v9 = v20;
            v8 = v33;
          }

          v27 = [v14 XPCConnection];
          v28 = [v27 remoteObjectProxyWithErrorHandler:&__block_literal_global_149];
          [v28 stopDestinationSharingForUUID:v4];

          v13 = v13 + 1;
        }

        while (v8 != v13);
        v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v8);
    }

    v5 = v32;
    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __53__ACCExternalAccessoryServer_stopDestinationSharing___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

void __97__ACCExternalAccessoryServer_destinationSharingStatus_success_successfulParams_forAccessoryUUID___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __86__ACCConnectionInfoServer_accessoryConnectionAttached_type_info_properties_forClient___block_invoke_cold_2();
  }
}

- (BOOL)vehicleStatusDidChange:(id)a3 forAccessoryUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCExternalAccessoryServer *)self _externalAccessoryForUUID:v7];
  v9 = v8;
  if (v8)
  {
    [v8 setVehicleStatus:v6];
    v10 = [(ACCExternalAccessoryServer *)self _eaClientsForAccessory:v9];
    if ([v10 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      v13 = v12 != 0;
      if (v12)
      {
        v14 = v12;
        obj = v11;
        v31 = v10;
        v32 = v9;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            v18 = gLogObjects;
            v19 = gNumLogObjects;
            if (gLogObjects)
            {
              v20 = gNumLogObjects < 10;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v39 = v18;
                v40 = 1024;
                LODWORD(v41) = v19;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v21 = &_os_log_default;
              v22 = &_os_log_default;
            }

            else
            {
              v22 = *(gLogObjects + 72);
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [v17 bundleID];
              *buf = 138412546;
              v39 = v7;
              v40 = 2112;
              v41 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[#VehicleInfoStatus] sending vehicle status for endpoint UUID %@ to client %@", buf, 0x16u);
            }

            v24 = [v17 XPCConnection];
            v25 = [v24 remoteObjectProxyWithErrorHandler:&__block_literal_global_159];
            v26 = [v6 copy];
            [v25 vehicleStatusUpdate:v26 forUUID:v7];
          }

          v14 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v14);
        v13 = 1;
        v10 = v31;
        v9 = v32;
        v11 = obj;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v11 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
        }

        v11 = &_os_log_default;
        v29 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] No eaClientsForAccessory, skip notifying", buf, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    if (gLogObjects)
    {
      v27 = gNumLogObjects < 10;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v10 = &_os_log_default;
      v28 = &_os_log_default;
    }

    else
    {
      v10 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#VehicleInfoStatus] no vehicleStatusAccessory found for endpoint UUID %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void __70__ACCExternalAccessoryServer_vehicleStatusDidChange_forAccessoryUUID___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke_143_cold_2();
  }
}

- (id)_externalAccessoryForUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessoryServer *)self eaAccessories];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __56__ACCExternalAccessoryServer__externalAccessoryForUUID___block_invoke;
  v10[3] = &unk_100226CE0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 objectsPassingTest:v10];

  if ([v7 count])
  {
    v8 = [v7 anyObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __56__ACCExternalAccessoryServer__externalAccessoryForUUID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 primaryEndpointUUID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *a3 = 1;
  }

  return v6;
}

- (void)_launchUnregisteredClientApps:(id)a3 knownClientApps:(id)a4
{
  v5 = a3;
  v56 = a4;
  if (platform_system_unlockedSinceBoot())
  {
    v49 = v5;
    v6 = [v5 copyExternalAccessoryProtocols];
    v54 = +[NSMutableSet set];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v6;
    v52 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v52)
    {
      v51 = *v73;
      do
      {
        v7 = 0;
        do
        {
          if (*v73 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v72 + 1) + 8 * v7);
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects)
          {
            v11 = gNumLogObjects < 10;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v81 = v9;
              v82 = 1024;
              v83 = v10;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v12 = &_os_log_default;
            v13 = &_os_log_default;
          }

          else
          {
            v13 = *(gLogObjects + 72);
          }

          v53 = v7;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v81 = v8;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking for unregistered EA clients for protocol %@", buf, 0xCu);
          }

          v14 = platform_system_copyInstalledApplicationsForExternalAccessoryProtocol(v8);
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v55 = v14;
          v58 = [v55 countByEnumeratingWithState:&v68 objects:v78 count:16];
          if (v58)
          {
            v57 = *v69;
            do
            {
              v15 = 0;
              do
              {
                if (*v69 != v57)
                {
                  objc_enumerationMutation(v55);
                }

                v16 = *(*(&v68 + 1) + 8 * v15);
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v17 = v56;
                v18 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
                if (!v18)
                {

LABEL_42:
                  if (platform_system_applicationSupportsExternalAccessoryBackgroundMode(v16))
                  {
                    [v54 addObject:v16];
                    v29 = gLogObjects;
                    v30 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 10)
                    {
                      v31 = *(gLogObjects + 72);
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        v81 = v29;
                        v82 = 1024;
                        v83 = v30;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }

                      v34 = &_os_log_default;
                      v31 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v81 = v16;
                      v35 = v31;
                      v36 = "unregistered app %@ supports EA in the background";
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v32 = gLogObjects;
                    v33 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 10)
                    {
                      v31 = *(gLogObjects + 72);
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        v81 = v32;
                        v82 = 1024;
                        v83 = v33;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }

                      v37 = &_os_log_default;
                      v31 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v81 = v16;
                      v35 = v31;
                      v36 = "unregistered app %@ Does Not support EA in the background, don't count as an unregistered app";
LABEL_62:
                      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0xCu);
                    }
                  }

                  goto LABEL_59;
                }

                v19 = v18;
                v59 = v15;
                v20 = 0;
                v21 = *v65;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v65 != v21)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v23 = [*(*(&v64 + 1) + 8 * i) bundleID];
                    v24 = [v16 caseInsensitiveCompare:v23];

                    if (!v24)
                    {
                      v25 = gLogObjects;
                      v26 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 10)
                      {
                        v27 = *(gLogObjects + 72);
                      }

                      else
                      {
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134218240;
                          v81 = v25;
                          v82 = 1024;
                          v83 = v26;
                          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                        }

                        v28 = &_os_log_default;
                        v27 = &_os_log_default;
                      }

                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v81 = v16;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "app %@ already found in client list", buf, 0xCu);
                      }

                      v20 = 1;
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
                }

                while (v19);

                v15 = v59;
                if ((v20 & 1) == 0)
                {
                  goto LABEL_42;
                }

LABEL_59:
                v15 = v15 + 1;
              }

              while (v15 != v58);
              v38 = [v55 countByEnumeratingWithState:&v68 objects:v78 count:16];
              v58 = v38;
            }

            while (v38);
          }

          v7 = v53 + 1;
        }

        while ((v53 + 1) != v52);
        v52 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v52);
    }

    v39 = obj;

    if (gLogObjects && gNumLogObjects >= 10)
    {
      v40 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v40 = &_os_log_default;
      v43 = &_os_log_default;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [ACCExternalAccessoryServer _launchUnregisteredClientApps:knownClientApps:];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v44 = v54;
    v45 = [v44 countByEnumeratingWithState:&v60 objects:v76 count:16];
    v5 = v49;
    if (v45)
    {
      v46 = v45;
      v47 = *v61;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v61 != v47)
          {
            objc_enumerationMutation(v44);
          }

          platform_system_launchApplicationToBackground(*(*(&v60 + 1) + 8 * j));
        }

        v46 = [v44 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v46);
    }
  }

  else
  {
    if (gLogObjects)
    {
      v41 = gNumLogObjects < 10;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        mfi4Auth_protocol_messageHandler_receiveIncomingData_cold_1();
      }

      v39 = &_os_log_default;
      v42 = &_os_log_default;
    }

    else
    {
      v39 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "system not unlocked", buf, 2u);
    }
  }
}

- (id)_eaClientsForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
  [v5 lock];

  v6 = [(ACCExternalAccessoryServer *)self eaClientConnections];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __53__ACCExternalAccessoryServer__eaClientsForAccessory___block_invoke;
  v11[3] = &unk_100226CE0;
  v12 = v4;
  v7 = v4;
  v8 = [v6 objectsPassingTest:v11];

  v9 = [(ACCExternalAccessoryServer *)self connectedAccessoryLock];
  [v9 unlock];

  return v8;
}

id __53__ACCExternalAccessoryServer__eaClientsForAccessory___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 canSendConnectionEventForAccessory:*(a1 + 32)];
  }

  else
  {
    return 0;
  }
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__ACCExternalAccessoryServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedServer_once_2 != -1)
  {
    dispatch_once(&sharedServer_once_2, block);
  }

  v2 = sharedServer_sharedInstance_2;

  return v2;
}

uint64_t __42__ACCExternalAccessoryServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_2 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.externalaccessory-server" andFeatureNotification:"com.apple.accessories.externalaccessory-server.availability-changed"];

  return _objc_release_x1();
}

void __65__ACCExternalAccessoryServer_listener_shouldAcceptNewConnection___block_invoke_110_cold_3(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#ExternalAccessory] Found %lu clients in invalidation handler, should be 1", buf, 0xCu);
}

- (void)sendToClientsNotification:(uint64_t)a1 withPayload:(uint64_t)a2 aboutAccessory:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[ACCExternalAccessoryServer sendToClientsNotification:withPayload:aboutAccessory:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Received nil param. eaAccessory %@ notificationName %@", &v3, 0x20u);
}

- (void)accessoryClosingExternalAccessorySession:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __115__ACCExternalAccessoryServer_handleIncomingExternalAccessoryData_forEASessionIdentifier_toExternalAccessoryClient___block_invoke_133_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Handle incoming data for eaSessionUUID: %@, EA client: %@, result: %d", &v5, 0x1Cu);
}

void __79__ACCExternalAccessoryServer_sendNMEASentence_forAccessoryUUID_withTimestamps___block_invoke_135_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ACCExternalAccessoryServer_notifyClientOfConnectedAccessories___block_invoke_138_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __67__ACCExternalAccessoryServer_notifyClientOfConnectedVehicleStatus___block_invoke_143_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end