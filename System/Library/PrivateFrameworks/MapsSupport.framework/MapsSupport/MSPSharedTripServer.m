@interface MSPSharedTripServer
+ (void)migrateIfNeeded;
- (BOOL)_connectionCanControlReceiving:(id)a3;
- (BOOL)_connectionCanControlSharing:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MSPSharedTripServer)init;
- (id)_subscribedConnectionsForTripID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)connections;
- (void)_purgeSubscriptionsForConnection:(id)a3;
- (void)blockSharedTrip:(id)a3;
- (void)checkinWithCompletion:(id)a3;
- (void)cleanConnections;
- (void)clearBlockedTripIdentifiers;
- (void)createControllers;
- (void)createXPCListener;
- (void)dealloc;
- (void)etaController:(id)a3 didUpdateDestinationForSharedTrip:(id)a4;
- (void)etaController:(id)a3 didUpdateETAForSharedTrip:(id)a4;
- (void)etaController:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4;
- (void)etaController:(id)a3 didUpdateRouteForSharedTrip:(id)a4;
- (void)etaController:(id)a3 sharedTripDidBecomeAvailable:(id)a4;
- (void)etaController:(id)a3 sharedTripDidBecomeUnavailable:(id)a4;
- (void)etaController:(id)a3 sharedTripDidClose:(id)a4;
- (void)fetchActiveHandlesWithCompletion:(id)a3;
- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3;
- (void)fetchSharedTripsWithCompletion:(id)a3;
- (void)fetchSharingIdentityWithCompletion:(id)a3;
- (void)invalidateActiveHandlesForSenderController:(id)a3;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4;
- (void)senderController:(id)a3 didInvalidateSharedTripWithError:(id)a4;
- (void)senderController:(id)a3 didStartSharingWithGroupIdentifier:(id)a4;
- (void)startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6;
- (void)startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4;
- (void)stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4;
- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4;
- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4;
@end

@implementation MSPSharedTripServer

- (MSPSharedTripServer)init
{
  v5.receiver = self;
  v5.super_class = MSPSharedTripServer;
  v2 = [(MSPSharedTripServer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSPSharedTripServer *)v2 createControllers];
    [(MSPSharedTripServer *)v3 createXPCListener];
  }

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  [(MSPSharedTripServer *)self cleanConnections];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v7 = "[MSPSharedTripServer dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSharedTripServer;
  [(MSPSharedTripServer *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)cleanConnections
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v17 = "[MSPSharedTripServer cleanConnections]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 invalidate];
        [v9 setExportedObject:0];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(MSPReceiverETAController *)self->_receivingController cleanTimer];
  [(NSXPCListener *)self->_listener invalidate];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)createXPCListener
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_listener)
  {
    v3 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136380675;
      v14 = "[MSPSharedTripServer createXPCListener]";
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", &v13, 0xCu);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    connections = self->_connections;
    self->_connections = v4;

    v6 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    peersByConnection = self->_peersByConnection;
    self->_peersByConnection = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    connectionSubscriptionsByTripID = self->_connectionSubscriptionsByTripID;
    self->_connectionSubscriptionsByTripID = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip"];
    listener = self->_listener;
    self->_listener = v10;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:MEMORY[0x277D85CD0]];
    [(NSXPCListener *)self->_listener resume];
    notify_post(MSPSharedTripServerStartDarwinNotification);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v6 = a4;
  v7 = [[MSPSharedTripXPCPeer alloc] initWithConnection:v6];
  if ([(MSPSharedTripXPCPeer *)v7 canControlSharing]|| [(MSPSharedTripXPCPeer *)v7 canControlReceiving])
  {
    [(NSMapTable *)self->_peersByConnection setObject:v7 forKey:v6];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286963800];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0, v20}];
    [v8 setClasses:v11 forSelector:sel_fetchSharedTripsWithCompletion_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v8 setClasses:v14 forSelector:sel_checkinWithCompletion_ argumentIndex:3 ofReply:1];

    [v6 setExportedInterface:v8];
    [v6 setExportedObject:self];
    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286972300];
    [v6 setRemoteObjectInterface:v15];

    [v6 _setQueue:MEMORY[0x277D85CD0]];
    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v29 = v6;
      v30 = 1024;
      v31 = [(MSPSharedTripXPCPeer *)v7 canControlSharing];
      v32 = 1024;
      v33 = [(MSPSharedTripXPCPeer *)v7 canControlReceiving];
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "[Server] Accepting new connection: %@, can share: %d, can receive: %d", buf, 0x18u);
    }

    objc_initWeak(buf, v6);
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_279865EA8;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [v6 setInvalidationHandler:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke_113;
    v21[3] = &unk_279865EA8;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [v6 setInterruptionHandler:v21];
    [(NSMutableSet *)self->_connections addObject:v6];
    [v6 resume];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    v17 = 1;
  }

  else
  {
    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[Server] will not accept connection due to missing entitlements: %@", buf, 0xCu);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection invalidated: %@", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    [v4[6] removeObject:WeakRetained];
    [v5[8] removeObjectForKey:WeakRetained];
    [v5 _purgeSubscriptionsForConnection:WeakRetained];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke_113(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection interrupted: %@", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    [v4[6] removeObject:WeakRetained];
    [v5[8] removeObjectForKey:WeakRetained];
    [v5 _purgeSubscriptionsForConnection:WeakRetained];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connectionCanControlSharing:(id)a3
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:a3];
  v4 = [v3 canControlSharing];

  return v4;
}

- (BOOL)_connectionCanControlReceiving:(id)a3
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:a3];
  v4 = [v3 canControlReceiving];

  return v4;
}

- (id)connections
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NSMutableSet *)self->_connections copy];

  return v3;
}

- (id)_subscribedConnectionsForTripID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !v4;
    }

    if (!v8)
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "[Server] Initialising subscriptions for trip %@", &v12, 0xCu);
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID setObject:v7 forKeyedSubscript:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_purgeSubscriptionsForConnection:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Server] Purging subscriptions for %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  connectionSubscriptionsByTripID = self->_connectionSubscriptionsByTripID;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__MSPSharedTripServer__purgeSubscriptionsForConnection___block_invoke;
  v27[3] = &unk_279865ED0;
  v21 = v4;
  v28 = v21;
  v8 = v6;
  v29 = v8;
  [(NSMutableDictionary *)connectionSubscriptionsByTripID enumerateKeysAndObjectsUsingBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:v14 createIfNeeded:0];
        if (![v15 count])
        {
          v16 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v14;
            _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Server] Unsubscribing from trip %@, no more connections", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID setObject:0 forKeyedSubscript:v14];
          receivingController = self->_receivingController;
          v22 = 0;
          [(MSPReceiverETAController *)receivingController unsubscribeFromUpdatesToSharedTrip:v14 error:&v22];
          v18 = v22;
          if (v18)
          {
            v19 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v31 = v14;
              v32 = 2112;
              v33 = v18;
              _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_ERROR, "[Server] Error unsubscribing from trip %@ for purged connection: %@", buf, 0x16u);
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __56__MSPSharedTripServer__purgeSubscriptionsForConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
    [v5 removeObject:*(a1 + 32)];
  }
}

- (void)createControllers
{
  v3 = objc_alloc_init(MSPSharedTripRelay);
  idsRelay = self->_idsRelay;
  self->_idsRelay = v3;

  [(MSPSharedTripRelay *)self->_idsRelay setAvailabilityDelegate:self];
  v5 = [[MSPSenderETAController alloc] initWithRelay:self->_idsRelay];
  sendingController = self->_sendingController;
  self->_sendingController = v5;

  [(MSPSenderETAController *)self->_sendingController setDelegate:self];
  v7 = [[MSPReceiverETAController alloc] initWithRelay:self->_idsRelay];
  receivingController = self->_receivingController;
  self->_receivingController = v7;

  [(MSPReceiverETAController *)self->_receivingController setDelegate:self];
  v9 = objc_alloc_init(MSPSharedTripCapabilityFetchingServer);
  capabilityFetchingServer = self->_capabilityFetchingServer;
  self->_capabilityFetchingServer = v9;

  MEMORY[0x2821F96F8]();
}

- (void)etaController:(id)a3 didUpdateDestinationForSharedTrip:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 destinationDidUpdateForSharedTrip:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 destinationReachedDidUpdateForSharedTrip:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 didUpdateETAForSharedTrip:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 etaDidUpdateForSharedTrip:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 didUpdateRouteForSharedTrip:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 routeDidUpdateForSharedTrip:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 sharedTripDidBecomeAvailable:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 sharedTripDidBecomeAvailable:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 sharedTripDidBecomeUnavailable:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 sharedTripDidBecomeUnavailable:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)a3 sharedTripDidClose:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 sharedTripDidClose:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)checkinWithCompletion:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
  v7 = [(NSMapTable *)self->_peersByConnection objectForKey:v5];
  if ([v7 canControlSharing])
  {
    v8 = [(MSPSenderETAController *)self->_sendingController activeHandles];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  if ([v7 canControlSharing])
  {
    v9 = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  if ([v7 canControlReceiving])
  {
    v10 = [(MSPReceiverETAController *)self->_receivingController allTrips];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([v7 canControlSharing])
    {
      v12 = "";
    }

    else
    {
      v12 = " (not entitled)";
    }

    v13 = [v10 count];
    v14 = [v7 canControlReceiving];
    v19 = 138413571;
    v15 = "";
    if (!v14)
    {
      v15 = " (not entitled)";
    }

    v20 = v5;
    v21 = 2113;
    v22 = v6;
    v23 = 2113;
    v24 = v8;
    v25 = 2080;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2080;
    v30 = v15;
    _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] Checking in on %@ (identity: %{private}@, %{private}@%s, %lu%s trips", &v19, 0x3Eu);
  }

  v16 = [v7 canControlSharing];
  if ([v7 canControlReceiving])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v4[2](v4, v6, v8, v9, v10, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharingIdentityWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v5])
  {

    v5 = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Server] fetchSendingIdentity: %{private}@)", &v9, 0xCu);
    }

    v4[2](v4, v5);
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharingIdentityWithCompletion:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v5])
  {

    v6 = [MSPMapsDefaultsAccessor get:@"MapsSharedETADefaultSender"];
    v7 = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    v8 = [v7 handle];

    if (v8)
    {
      v5 = 0;
    }

    else
    {
      v19[0] = *MEMORY[0x277CCA068];
      *v14 = @"Invalid account for sharing";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v19 count:1];
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:5 userInfo:v9];

      if (v5)
      {
        goto LABEL_10;
      }
    }

    if (v6)
    {
      v10 = [v6 isEqual:v8]^ 1;
      goto LABEL_15;
    }

LABEL_10:
    if (v5)
    {
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138412290;
        *&v14[4] = v5;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] fetchRequiresUserConfirmationOfSharingIdentity failed with error: %@", v14, 0xCu);
      }

      v10 = 1;
      goto LABEL_19;
    }

    v10 = 1;
LABEL_15:
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "NO";
      *v14 = 136315651;
      if (v10)
      {
        v12 = "YES";
      }

      *&v14[4] = v12;
      v15 = 2113;
      v16 = v8;
      v17 = 2113;
      v18 = v6;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] fetchRequiresUserConfirmationOfSharingIdentity: %s, handle: %{private}@, last confirmed: %{private}@", v14, 0x20u);
    }

LABEL_19:

    v4[2](v4, v10, v8, v5);
    goto LABEL_20;
  }

  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315394;
    *&v14[4] = "[MSPSharedTripServer fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v14, 0x16u);
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportUserConfirmationOfSharingIdentity:(id)a3 completion:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v8])
  {

    v9 = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    v10 = [v9 handle];

    if (([v10 isEqualToString:v6]& 1) != 0)
    {
      [MSPMapsDefaultsAccessor set:@"MapsSharedETADefaultSender" value:v6];
      +[MSPMapsDefaultsAccessor synchronize];
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138477827;
        *&v14[4] = v6;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] reportUserConfirmationOfSharingIdentity: set user-confirmed handle: %{private}@", v14, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v17[0] = *MEMORY[0x277CCA068];
      *v14 = @"The provided sharing handle does not match the current sharing identity";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v17 count:1];
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:6 userInfo:v12];

      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138412290;
        *&v14[4] = v8;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] reportUserConfirmationOfSharingIdentity failed with error: %@", v14, 0xCu);
      }
    }

    v7[2](v7, v8);
  }

  else
  {
    v10 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "[MSPSharedTripServer reportUserConfirmationOfSharingIdentity:completion:]";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startSharingTripWithContacts:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5 completion:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v13 = [MEMORY[0x277CCAE80] currentConnection];
  if (v13 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v13])
  {

    v14 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Server] Start sharing with contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v18 = 0;
    [(MSPSenderETAController *)sendingController startSharingWith:v10 capabilityType:a4 serviceName:v11 error:&v18];
    v13 = v18;
    v12[2](v12, v13);
  }

  else
  {
    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[MSPSharedTripServer startSharingTripWithContacts:capabilityType:serviceName:completion:]";
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)startSharingTripWithMessagesGroup:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v8])
  {

    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[Service] Start sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v13 = 0;
    [(MSPSenderETAController *)sendingController startSharingWithGroup:v6 error:&v13];
    v8 = v13;
    v7[2](v7, v8);
  }

  else
  {
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[MSPSharedTripServer startSharingTripWithMessagesGroup:completion:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithContacts:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [MEMORY[0x277CCAE80] currentConnection];
  if (v10 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v10])
  {

    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with Maps/Messages contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v15 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWith:v8 reason:a4 error:&v15];
    v10 = v15;
    [MEMORY[0x277D0E788] captureUserAction:105 target:0 value:0];
    v9[2](v9, v10);
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPSharedTripServer stopSharingTripWithContacts:reason:completion:]";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithMessagesGroup:(id)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [MEMORY[0x277CCAE80] currentConnection];
  if (v10 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v10])
  {

    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v15 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithGroup:v8 reason:a4 error:&v15];
    v10 = v15;
    v9[2](v9, v10);
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPSharedTripServer stopSharingTripWithMessagesGroup:reason:completion:]";
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithReason:(unint64_t)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = [MEMORY[0x277CCAE80] currentConnection];
  if (v7 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v7])
  {

    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Server] Stop sharing", buf, 2u);
    }

    sendingController = self->_sendingController;
    v14 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithReason:a3 error:&v14];
    v7 = v14;
    v10 = [[MSPSenderETAController alloc] initWithRelay:self->_idsRelay];
    v11 = self->_sendingController;
    self->_sendingController = v10;

    [(MSPSenderETAController *)self->_sendingController setDelegate:self];
    v6[2](v6, v7);
  }

  else
  {
    v12 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[MSPSharedTripServer stopSharingTripWithReason:completion:]";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchActiveHandlesWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v5])
  {

    v5 = [(MSPSenderETAController *)self->_sendingController activeHandles];
    v6 = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Server] Fetch active handles: %@", &v9, 0xCu);
    }

    v4[2](v4, v5, v6);
  }

  else
  {
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchActiveHandlesWithCompletion:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v8])
  {

    v9 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:v6 createIfNeeded:1];
    v10 = [v9 count];
    [v9 addObject:v8];
    v11 = [v9 count];
    v12 = MSPGetSharedTripLog();
    v13 = v12;
    if (v10 == v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[Server] %@ already subscribed to trip %@", buf, 0x16u);
      }

      v7[2](v7, 0);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = [v9 count];
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Server] Added %@ to subscriptions for trip %@ (%lu subscriptions)", buf, 0x20u);
      }

      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Server] Subscribe to trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v19 = 0;
      [(MSPReceiverETAController *)receivingController subscribeToUpdatesToSharedTrip:v6 error:&v19];
      v18 = v19;
      (v7)[2](v7, v18);
    }
  }

  else
  {
    v14 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[MSPSharedTripServer subscribeToSharedTripUpdatesWithIdentifier:completion:]";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v9 = v8;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [MEMORY[0x277CCAE80] currentConnection];
  if (v8 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v8])
  {

    v9 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:v6 createIfNeeded:0];
    v10 = [v9 count];
    [v9 removeObject:v8];
    v11 = [v9 count];
    v12 = MSPGetSharedTripLog();
    v13 = v12;
    if (v10 == v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Connection %@ was not subscribed to trip: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Server] Removed connection %@ from subscriptions for trip: %@", buf, 0x16u);
      }

      if ([v9 count])
      {
        v15 = MSPGetSharedTripLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v9 count];
          *buf = 134218242;
          v21 = v16;
          v22 = 2112;
          v23 = v6;
          _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_DEBUG, "[Server] %lu subscribed connections for trip %@", buf, 0x16u);
        }
      }

      v17 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[Server] Unsubscribe from trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v19 = 0;
      [(MSPReceiverETAController *)receivingController unsubscribeFromUpdatesToSharedTrip:v6 error:&v19];
      v13 = v19;
      v7[2](v7, v13);
    }
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[MSPSharedTripServer unsubscribeFromSharedTripUpdatesWithIdentifier:completion:]";
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v9 = v8;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharedTripsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v5])
  {

    v5 = [(MSPReceiverETAController *)self->_receivingController allTrips];
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Server] Fetching all received trips: %@", &v9, 0xCu);
    }

    v4[2](v4, v5);
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharedTripsWithCompletion:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)blockSharedTrip:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v5])
  {

    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] block sharing trip: %@", &v9, 0xCu);
    }

    [(MSPReceiverETAController *)self->_receivingController blockSharedTrip:v4];
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer blockSharedTrip:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearBlockedTripIdentifiers
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  if (v3 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v3])
  {

    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[Service] clear blocked trip identifiers", &v7, 2u);
    }

    [(MSPReceiverETAController *)self->_receivingController clearBlockedTripIdentifiers];
  }

  else
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[MSPSharedTripServer clearBlockedTripIdentifiers]";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  if (v3 && [(MSPSharedTripServer *)self _connectionCanControlReceiving:v3])
  {

    v4 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[Service] purge expired blocked trip identifiers", &v7, 2u);
    }

    [(MSPReceiverETAController *)self->_receivingController purgeExpiredBlockedTripIdentifiers];
  }

  else
  {
    v5 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[MSPSharedTripServer purgeExpiredBlockedTripIdentifiers]";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)senderController:(id)a3 didStartSharingWithGroupIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 sharedTripDidStartSharingWithIdentifier:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)senderController:(id)a3 didInvalidateSharedTripWithError:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v7 = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v12 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v12])
        {

          v12 = [v12 remoteObjectProxy];
          [v12 sharedTripInvalidatedWithError:v5];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
            v21 = 2112;
            v22 = v12;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidateActiveHandlesForSenderController:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[Server] %s", buf, 0xCu);
  }

  v6 = [(MSPSharedTripServer *)self connections];
  v7 = [v4 activeHandles];
  v17 = v4;
  v8 = [v4 serviceNamesByActiveHandle];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v14 && [(MSPSharedTripServer *)self _connectionCanControlSharing:v14])
        {

          v14 = [v14 remoteObjectProxy];
          [v14 sharedTripDidUpdateRecipients:v7 withServices:v8];
        }

        else
        {
          v15 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)migrateIfNeeded
{
  v2 = [MEMORY[0x277D0EB48] sharedObject];
  [v2 runAfterFirstUnlock:MEMORY[0x277D85CD0] block:&__block_literal_global];
}

uint64_t __49__MSPSharedTripServer_Migration__migrateIfNeeded__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  if (_GEOConfigHasValue())
  {
    BOOL = GEOConfigGetBOOL();
    v1 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = BOOL;
      _os_log_impl(&dword_25813A000, v1, OS_LOG_TYPE_INFO, "Will migrate legacy Share ETA user enabled flag: %d", v5, 8u);
    }

    GEOConfigSetBOOL();
    _GEOConfigRemoveValue();
  }

  else
  {
    v2 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, "No legacy Share ETA user enabled flag to migrate", v5, 2u);
    }
  }

  +[MSPSharedTripStorageController removeFilesFromBackupsIfNeeded];
  result = +[MSPSharedTripBlocklist migrateFromiCloudKVSIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end