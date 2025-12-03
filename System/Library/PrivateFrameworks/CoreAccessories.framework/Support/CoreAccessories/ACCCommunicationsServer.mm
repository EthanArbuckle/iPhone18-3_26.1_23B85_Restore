@interface ACCCommunicationsServer
+ (id)sharedServer;
- (ACCCommunicationsServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification;
- (BOOL)endAllCalls;
- (BOOL)initiateCallToVoicemail;
- (BOOL)initiateRedial;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)mergeCalls;
- (BOOL)swapCalls;
- (NSXPCConnection)activeConnection;
- (unint64_t)invokeBlockOnClients:(id)clients synchronous:(BOOL)synchronous;
- (void)refreshClientData;
- (void)sendUpdatedSubscriberList;
- (void)triggerCallStateUpdates;
- (void)triggerCommunicationsUpdate;
- (void)triggerUpdateForListType:(int)type coalesce:(BOOL)coalesce;
@end

@implementation ACCCommunicationsServer

- (ACCCommunicationsServer)initWithXPCServiceName:(id)name andFeatureNotification:(const char *)notification
{
  v10.receiver = self;
  v10.super_class = ACCCommunicationsServer;
  v4 = [(ACCFeatureServer *)&v10 initWithXPCServiceName:name andFeatureNotification:notification];
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
    v34 = xpcServiceName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[#Communications] New XPC connection for: %@", buf, 0xCu);
  }

  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCCommunicationsXPCServerProtocol];
  [connectionCopy setExportedInterface:v12];

  v13 = [[ACCCommunicationsServerRemote alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v13];

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACCCommunicationsXPCClientProtocol];
  [connectionCopy setRemoteObjectInterface:v14];

  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_100225C98;
  objc_copyWeak(&v29, &from);
  v28[4] = self;
  objc_copyWeak(&v30, &location);
  [connectionCopy setInvalidationHandler:v28];
  clientConnections = [(ACCCommunicationsServer *)self clientConnections];
  [clientConnections addObject:connectionCopy];

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
    clientConnections2 = [(ACCCommunicationsServer *)self clientConnections];
    v19 = [clientConnections2 count];
    *buf = 134217984;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#Communications] There are now %lu client(s).", buf, 0xCu);
  }

  [connectionCopy resume];
  clientConnections3 = [(ACCCommunicationsServer *)self clientConnections];
  v21 = [clientConnections3 count] == 1;

  if (v21)
  {
    [(ACCCommunicationsServer *)self setActiveConnection:connectionCopy];
    activeConnection = [(ACCCommunicationsServer *)self activeConnection];
    v23 = [activeConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_44];
    [(ACCCommunicationsServer *)self setRemoteObject:v23];

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
      remoteObject = [(ACCCommunicationsServer *)self remoteObject];
      [(ACCCommunicationsServer *)remoteObject listener:buf shouldAcceptNewConnection:v24];
    }
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

id __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
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
    v21 = 138412290;
    v22 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Communications] XPC connection invalidated: %@", &v21, 0xCu);
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
    v21 = 134217984;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[#Communications] There are now %lu client(s).", &v21, 0xCu);
  }

  return [a1[4] refreshClientData];
}

void __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke_82(id a1, NSError *a2)
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
    __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke_82_cold_2();
  }
}

- (unint64_t)invokeBlockOnClients:(id)clients synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  clientsCopy = clients;
  clientConnections = [(ACCCommunicationsServer *)self clientConnections];
  v8 = [clientConnections copy];

  if (gLogObjects)
  {
    v9 = gNumLogObjects < 5;
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
    v11 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v27 = [v8 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#Communications] Invoking block on %lu client(s)...", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (synchronousCopy)
        {
          [v18 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_85];
        }

        else
        {
          [v18 remoteObjectProxyWithErrorHandler:{&__block_literal_global_88, v21}];
        }
        v19 = ;
        if (clientsCopy)
        {
          clientsCopy[2](clientsCopy, v19);
          ++v15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __60__ACCCommunicationsServer_invokeBlockOnClients_synchronous___block_invoke(id a1, NSError *a2)
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
    __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke_82_cold_2();
  }
}

void __60__ACCCommunicationsServer_invokeBlockOnClients_synchronous___block_invoke_86(id a1, NSError *a2)
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
    __62__ACCCommunicationsServer_listener_shouldAcceptNewConnection___block_invoke_82_cold_2();
  }
}

- (void)refreshClientData
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
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Communications] Refreshing client data...", v16, 2u);
  }

  subFeatureSubscribers = [(ACCFeatureServer *)self subFeatureSubscribers];
  v7 = [subFeatureSubscribers containsObject:@"CallStateUpdates"];

  if (v7)
  {
    [(ACCCommunicationsServer *)self triggerCallStateUpdates];
  }

  subFeatureSubscribers2 = [(ACCFeatureServer *)self subFeatureSubscribers];
  v9 = [subFeatureSubscribers2 containsObject:@"CommunicationsUpdates"];

  if (v9)
  {
    [(ACCCommunicationsServer *)self triggerCommunicationsUpdate];
  }

  subFeatureSubscribers3 = [(ACCFeatureServer *)self subFeatureSubscribers];
  v11 = [subFeatureSubscribers3 containsObject:@"ListUpdates_Recents"];

  if (v11)
  {
    [(ACCCommunicationsServer *)self triggerUpdateForListType:0 coalesce:0];
  }

  subFeatureSubscribers4 = [(ACCFeatureServer *)self subFeatureSubscribers];
  v13 = [subFeatureSubscribers4 containsObject:@"ListUpdates_Recents_Coalesced"];

  if (v13)
  {
    [(ACCCommunicationsServer *)self triggerUpdateForListType:0 coalesce:1];
  }

  subFeatureSubscribers5 = [(ACCFeatureServer *)self subFeatureSubscribers];
  v15 = [subFeatureSubscribers5 containsObject:@"ListUpdates_Favorites"];

  if (v15)
  {
    [(ACCCommunicationsServer *)self triggerUpdateForListType:1 coalesce:0];
  }
}

- (void)sendUpdatedSubscriberList
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
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Communications] sendUpdatedSubscriberList...", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __52__ACCCommunicationsServer_sendUpdatedSubscriberList__block_invoke;
  v8[3] = &unk_10022AA58;
  v8[4] = self;
  [(ACCCommunicationsServer *)self invokeBlockOnClients:v8 synchronous:0];
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ACCCommunicationsServer sendUpdatedSubscriberList];
  }
}

void __52__ACCCommunicationsServer_sendUpdatedSubscriberList__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 subFeatureSubscribers];
  v4 = [v5 allObjects];
  [v3 updateSubscriberList:v4 withReply:&__block_literal_global_91];
}

void __52__ACCCommunicationsServer_sendUpdatedSubscriberList__block_invoke_2(id a1, BOOL a2)
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __52__ACCCommunicationsServer_sendUpdatedSubscriberList__block_invoke_2_cold_2(a2, v5);
  }
}

- (void)triggerCallStateUpdates
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __50__ACCCommunicationsServer_triggerCallStateUpdates__block_invoke;
  v3[3] = &unk_10022AAA8;
  v3[4] = &v4;
  [(ACCCommunicationsServer *)self invokeBlockOnClients:v3 synchronous:1];
  if ((v5[3] & 1) == 0)
  {
    v2 = dispatch_get_global_queue(0, 0);
    dispatch_async(v2, &__block_literal_global_94_0);
  }

  _Block_object_dispose(&v4, 8);
}

id __50__ACCCommunicationsServer_triggerCallStateUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __50__ACCCommunicationsServer_triggerCallStateUpdates__block_invoke_2;
  v3[3] = &unk_10022AA80;
  v3[4] = *(a1 + 32);
  return [a2 triggerCallStateUpdatesWithReply:v3];
}

uint64_t __50__ACCCommunicationsServer_triggerCallStateUpdates__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __50__ACCCommunicationsServer_triggerCallStateUpdates__block_invoke_3(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Communications] No clients handle call state updates, sending default call state...", v5, 2u);
  }

  v4 = platform_communications_copyDefaultCallState();
  platform_communications_callStateUpdate(v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)triggerCommunicationsUpdate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __54__ACCCommunicationsServer_triggerCommunicationsUpdate__block_invoke;
  v3[3] = &unk_10022AAA8;
  v3[4] = &v4;
  [(ACCCommunicationsServer *)self invokeBlockOnClients:v3 synchronous:1];
  if ((v5[3] & 1) == 0)
  {
    v2 = dispatch_get_global_queue(0, 0);
    dispatch_async(v2, &__block_literal_global_96_0);
  }

  _Block_object_dispose(&v4, 8);
}

id __54__ACCCommunicationsServer_triggerCommunicationsUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __54__ACCCommunicationsServer_triggerCommunicationsUpdate__block_invoke_2;
  v3[3] = &unk_10022AA80;
  v3[4] = *(a1 + 32);
  return [a2 triggerCommunicationsUpdateWithReply:v3];
}

uint64_t __54__ACCCommunicationsServer_triggerCommunicationsUpdate__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __54__ACCCommunicationsServer_triggerCommunicationsUpdate__block_invoke_3(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Communications] No clients handle communications updates, sending default communications state...", v5, 2u);
  }

  v4 = platform_communications_copyDefaultCommunicationsState();
  platform_communications_communicationsUpdate(v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)triggerUpdateForListType:(int)type coalesce:(BOOL)coalesce
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke;
  v10[3] = &unk_10022AB10;
  typeCopy = type;
  coalesceCopy = coalesce;
  v10[4] = &v13;
  [(ACCCommunicationsServer *)self invokeBlockOnClients:v10 synchronous:1];
  if ((v14[3] & 1) == 0)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke_3;
    block[3] = &__block_descriptor_37_e5_v8__0l;
    typeCopy2 = type;
    coalesceCopy2 = coalesce;
    dispatch_async(v6, block);
  }

  _Block_object_dispose(&v13, 8);
}

id __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke_2;
  v5[3] = &unk_10022AA80;
  v5[4] = *(a1 + 32);
  return [a2 triggerUpdateForListType:v2 coalesce:v3 withReply:v5];
}

uint64_t __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

unint64_t __61__ACCCommunicationsServer_triggerUpdateForListType_coalesce___block_invoke_3(uint64_t a1)
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
    v5 = *(a1 + 32);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Communications] No clients handle %{coreacc:ACCCommunications_ListUpdate_Type_t}d list updates, sending list not available...", v7, 8u);
  }

  return platform_communications_listUpdate(*(a1 + 32), 0, *(a1 + 36));
}

- (BOOL)initiateCallToVoicemail
{
  remoteObject = [(ACCCommunicationsServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCCommunicationsServer *)self remoteObject];
    [remoteObject2 initiateCallToVoicemail];
  }

  return 1;
}

- (BOOL)initiateRedial
{
  remoteObject = [(ACCCommunicationsServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCCommunicationsServer *)self remoteObject];
    [remoteObject2 initiateRedial];
  }

  return 1;
}

- (BOOL)endAllCalls
{
  remoteObject = [(ACCCommunicationsServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCCommunicationsServer *)self remoteObject];
    [remoteObject2 endAllCalls];
  }

  return 1;
}

- (BOOL)swapCalls
{
  remoteObject = [(ACCCommunicationsServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCCommunicationsServer *)self remoteObject];
    [remoteObject2 swapCalls];
  }

  return 1;
}

- (BOOL)mergeCalls
{
  remoteObject = [(ACCCommunicationsServer *)self remoteObject];

  if (remoteObject)
  {
    remoteObject2 = [(ACCCommunicationsServer *)self remoteObject];
    [remoteObject2 mergeCalls];
  }

  return 1;
}

- (NSXPCConnection)activeConnection
{
  clientConnections = [(ACCCommunicationsServer *)self clientConnections];
  v4 = [clientConnections count];

  if (v4)
  {
    clientConnections2 = [(ACCCommunicationsServer *)self clientConnections];
    v6 = [clientConnections2 objectAtIndexedSubscript:0];
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
  block[2] = __39__ACCCommunicationsServer_sharedServer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedServer_once_12 != -1)
  {
    dispatch_once(&sharedServer_once_12, block);
  }

  v2 = sharedServer_sharedInstance_12;

  return v2;
}

uint64_t __39__ACCCommunicationsServer_sharedServer__block_invoke(uint64_t a1)
{
  sharedServer_sharedInstance_12 = [objc_alloc(*(a1 + 32)) initWithXPCServiceName:@"com.apple.accessories.communications" andFeatureNotification:"com.apple.accessories.communications.availability-changed"];

  return _objc_release_x1();
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[#Communications] Get remote object: %@", buf, 0xCu);
}

void __52__ACCCommunicationsServer_sendUpdatedSubscriberList__block_invoke_2_cold_2(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#Communications] Update subscriber list result: %d", v2, 8u);
}

@end