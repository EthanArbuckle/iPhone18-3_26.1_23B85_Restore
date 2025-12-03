@interface MSPSharedTripServer
+ (void)migrateIfNeeded;
- (BOOL)_connectionCanControlReceiving:(id)receiving;
- (BOOL)_connectionCanControlSharing:(id)sharing;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSPSharedTripServer)init;
- (id)_subscribedConnectionsForTripID:(id)d createIfNeeded:(BOOL)needed;
- (id)connections;
- (void)_purgeSubscriptionsForConnection:(id)connection;
- (void)blockSharedTrip:(id)trip;
- (void)checkinWithCompletion:(id)completion;
- (void)cleanConnections;
- (void)clearBlockedTripIdentifiers;
- (void)createControllers;
- (void)createXPCListener;
- (void)dealloc;
- (void)etaController:(id)controller didUpdateDestinationForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateETAForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateReachedDestinationForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateRouteForSharedTrip:(id)trip;
- (void)etaController:(id)controller sharedTripDidBecomeAvailable:(id)available;
- (void)etaController:(id)controller sharedTripDidBecomeUnavailable:(id)unavailable;
- (void)etaController:(id)controller sharedTripDidClose:(id)close;
- (void)fetchActiveHandlesWithCompletion:(id)completion;
- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)completion;
- (void)fetchSharedTripsWithCompletion:(id)completion;
- (void)fetchSharingIdentityWithCompletion:(id)completion;
- (void)invalidateActiveHandlesForSenderController:(id)controller;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)reportUserConfirmationOfSharingIdentity:(id)identity completion:(id)completion;
- (void)senderController:(id)controller didInvalidateSharedTripWithError:(id)error;
- (void)senderController:(id)controller didStartSharingWithGroupIdentifier:(id)identifier;
- (void)startSharingTripWithContacts:(id)contacts capabilityType:(unint64_t)type serviceName:(id)name completion:(id)completion;
- (void)startSharingTripWithMessagesGroup:(id)group completion:(id)completion;
- (void)stopSharingTripWithContacts:(id)contacts reason:(unint64_t)reason completion:(id)completion;
- (void)stopSharingTripWithMessagesGroup:(id)group reason:(unint64_t)reason completion:(id)completion;
- (void)stopSharingTripWithReason:(unint64_t)reason completion:(id)completion;
- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion;
- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion;
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

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    peersByConnection = self->_peersByConnection;
    self->_peersByConnection = weakToStrongObjectsMapTable;

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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [[MSPSharedTripXPCPeer alloc] initWithConnection:connectionCopy];
  if ([(MSPSharedTripXPCPeer *)v7 canControlSharing]|| [(MSPSharedTripXPCPeer *)v7 canControlReceiving])
  {
    [(NSMapTable *)self->_peersByConnection setObject:v7 forKey:connectionCopy];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286963800];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0, listenerCopy}];
    [v8 setClasses:v11 forSelector:sel_fetchSharedTripsWithCompletion_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v8 setClasses:v14 forSelector:sel_checkinWithCompletion_ argumentIndex:3 ofReply:1];

    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286972300];
    [connectionCopy setRemoteObjectInterface:v15];

    [connectionCopy _setQueue:MEMORY[0x277D85CD0]];
    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v29 = connectionCopy;
      v30 = 1024;
      canControlSharing = [(MSPSharedTripXPCPeer *)v7 canControlSharing];
      v32 = 1024;
      canControlReceiving = [(MSPSharedTripXPCPeer *)v7 canControlReceiving];
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "[Server] Accepting new connection: %@, can share: %d, can receive: %d", buf, 0x18u);
    }

    objc_initWeak(buf, connectionCopy);
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_279865EA8;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [connectionCopy setInvalidationHandler:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke_113;
    v21[3] = &unk_279865EA8;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [connectionCopy setInterruptionHandler:v21];
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    [connectionCopy resume];
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
      v29 = connectionCopy;
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

- (BOOL)_connectionCanControlSharing:(id)sharing
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:sharing];
  canControlSharing = [v3 canControlSharing];

  return canControlSharing;
}

- (BOOL)_connectionCanControlReceiving:(id)receiving
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:receiving];
  canControlReceiving = [v3 canControlReceiving];

  return canControlReceiving;
}

- (id)connections
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NSMutableSet *)self->_connections copy];

  return v3;
}

- (id)_subscribedConnectionsForTripID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID objectForKeyedSubscript:dCopy];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = !neededCopy;
    }

    if (!v8)
    {
      v9 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "[Server] Initialising subscriptions for trip %@", &v12, 0xCu);
      }

      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID setObject:v7 forKeyedSubscript:dCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_purgeSubscriptionsForConnection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = connectionCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "[Server] Purging subscriptions for %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  connectionSubscriptionsByTripID = self->_connectionSubscriptionsByTripID;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__MSPSharedTripServer__purgeSubscriptionsForConnection___block_invoke;
  v27[3] = &unk_279865ED0;
  v21 = connectionCopy;
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

- (void)etaController:(id)controller didUpdateDestinationForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy destinationDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller didUpdateReachedDestinationForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy destinationReachedDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller didUpdateETAForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy etaDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller didUpdateRouteForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy routeDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller sharedTripDidBecomeAvailable:(id)available
{
  v24 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidBecomeAvailable:availableCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller sharedTripDidBecomeUnavailable:(id)unavailable
{
  v24 = *MEMORY[0x277D85DE8];
  unavailableCopy = unavailable;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidBecomeUnavailable:unavailableCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)etaController:(id)controller sharedTripDidClose:(id)close
{
  v24 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlReceiving:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidClose:closeCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)checkinWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
  v7 = [(NSMapTable *)self->_peersByConnection objectForKey:currentConnection];
  if ([v7 canControlSharing])
  {
    activeHandles = [(MSPSenderETAController *)self->_sendingController activeHandles];
  }

  else
  {
    activeHandles = MEMORY[0x277CBEBF8];
  }

  if ([v7 canControlSharing])
  {
    serviceNamesByActiveHandle = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
  }

  else
  {
    serviceNamesByActiveHandle = MEMORY[0x277CBEC10];
  }

  if ([v7 canControlReceiving])
  {
    allTrips = [(MSPReceiverETAController *)self->_receivingController allTrips];
  }

  else
  {
    allTrips = MEMORY[0x277CBEBF8];
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

    v13 = [allTrips count];
    canControlReceiving = [v7 canControlReceiving];
    v19 = 138413571;
    v15 = "";
    if (!canControlReceiving)
    {
      v15 = " (not entitled)";
    }

    v20 = currentConnection;
    v21 = 2113;
    v22 = sharingIdentity;
    v23 = 2113;
    v24 = activeHandles;
    v25 = 2080;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2080;
    v30 = v15;
    _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] Checking in on %@ (identity: %{private}@, %{private}@%s, %lu%s trips", &v19, 0x3Eu);
  }

  canControlSharing = [v7 canControlSharing];
  if ([v7 canControlReceiving])
  {
    v17 = canControlSharing | 2;
  }

  else
  {
    v17 = canControlSharing;
  }

  completionCopy[2](completionCopy, sharingIdentity, activeHandles, serviceNamesByActiveHandle, allTrips, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharingIdentityWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    currentConnection = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = currentConnection;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Server] fetchSendingIdentity: %{private}@)", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharingIdentityWithCompletion:]";
      v11 = 2112;
      v12 = currentConnection;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v6 = [MSPMapsDefaultsAccessor get:@"MapsSharedETADefaultSender"];
    sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    handle = [sharingIdentity handle];

    if (handle)
    {
      currentConnection = 0;
    }

    else
    {
      v19[0] = *MEMORY[0x277CCA068];
      *v14 = @"Invalid account for sharing";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v19 count:1];
      currentConnection = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:5 userInfo:v9];

      if (currentConnection)
      {
        goto LABEL_10;
      }
    }

    if (v6)
    {
      v10 = [v6 isEqual:handle]^ 1;
      goto LABEL_15;
    }

LABEL_10:
    if (currentConnection)
    {
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138412290;
        *&v14[4] = currentConnection;
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
      v16 = handle;
      v17 = 2113;
      v18 = v6;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] fetchRequiresUserConfirmationOfSharingIdentity: %s, handle: %{private}@, last confirmed: %{private}@", v14, 0x20u);
    }

LABEL_19:

    completionCopy[2](completionCopy, v10, handle, currentConnection);
    goto LABEL_20;
  }

  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v14 = 136315394;
    *&v14[4] = "[MSPSharedTripServer fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:]";
    v15 = 2112;
    v16 = currentConnection;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v14, 0x16u);
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportUserConfirmationOfSharingIdentity:(id)identity completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    handle = [sharingIdentity handle];

    if (([handle isEqualToString:identityCopy]& 1) != 0)
    {
      [MSPMapsDefaultsAccessor set:@"MapsSharedETADefaultSender" value:identityCopy];
      +[MSPMapsDefaultsAccessor synchronize];
      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138477827;
        *&v14[4] = identityCopy;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Server] reportUserConfirmationOfSharingIdentity: set user-confirmed handle: %{private}@", v14, 0xCu);
      }

      currentConnection = 0;
    }

    else
    {
      v17[0] = *MEMORY[0x277CCA068];
      *v14 = @"The provided sharing handle does not match the current sharing identity";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v17 count:1];
      currentConnection = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:6 userInfo:v12];

      v11 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v14 = 138412290;
        *&v14[4] = currentConnection;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] reportUserConfirmationOfSharingIdentity failed with error: %@", v14, 0xCu);
      }
    }

    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    handle = MSPGetSharedTripLog();
    if (os_log_type_enabled(handle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "[MSPSharedTripServer reportUserConfirmationOfSharingIdentity:completion:]";
      v15 = 2112;
      v16 = currentConnection;
      _os_log_impl(&dword_25813A000, handle, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startSharingTripWithContacts:(id)contacts capabilityType:(unint64_t)type serviceName:(id)name completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  nameCopy = name;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v14 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = contactsCopy;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Server] Start sharing with contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v18 = 0;
    [(MSPSenderETAController *)sendingController startSharingWith:contactsCopy capabilityType:type serviceName:nameCopy error:&v18];
    currentConnection = v18;
    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v16 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[MSPSharedTripServer startSharingTripWithContacts:capabilityType:serviceName:completion:]";
      v21 = 2112;
      v22 = currentConnection;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)startSharingTripWithMessagesGroup:(id)group completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v9 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = groupCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEFAULT, "[Service] Start sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v13 = 0;
    [(MSPSenderETAController *)sendingController startSharingWithGroup:groupCopy error:&v13];
    currentConnection = v13;
    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[MSPSharedTripServer startSharingTripWithMessagesGroup:completion:]";
      v16 = 2112;
      v17 = currentConnection;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithContacts:(id)contacts reason:(unint64_t)reason completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = contactsCopy;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with Maps/Messages contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v15 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWith:contactsCopy reason:reason error:&v15];
    currentConnection = v15;
    [MEMORY[0x277D0E788] captureUserAction:105 target:0 value:0];
    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPSharedTripServer stopSharingTripWithContacts:reason:completion:]";
      v18 = 2112;
      v19 = currentConnection;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithMessagesGroup:(id)group reason:(unint64_t)reason completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v11 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = groupCopy;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v15 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithGroup:groupCopy reason:reason error:&v15];
    currentConnection = v15;
    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPSharedTripServer stopSharingTripWithMessagesGroup:reason:completion:]";
      v18 = 2112;
      v19 = currentConnection;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopSharingTripWithReason:(unint64_t)reason completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Server] Stop sharing", buf, 2u);
    }

    sendingController = self->_sendingController;
    v14 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithReason:reason error:&v14];
    currentConnection = v14;
    v10 = [[MSPSenderETAController alloc] initWithRelay:self->_idsRelay];
    v11 = self->_sendingController;
    self->_sendingController = v10;

    [(MSPSenderETAController *)self->_sendingController setDelegate:self];
    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v12 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[MSPSharedTripServer stopSharingTripWithReason:completion:]";
      v17 = 2112;
      v18 = currentConnection;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchActiveHandlesWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection])
  {

    currentConnection = [(MSPSenderETAController *)self->_sendingController activeHandles];
    serviceNamesByActiveHandle = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = currentConnection;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Server] Fetch active handles: %@", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, currentConnection, serviceNamesByActiveHandle);
  }

  else
  {
    serviceNamesByActiveHandle = MSPGetSharedTripLog();
    if (os_log_type_enabled(serviceNamesByActiveHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchActiveHandlesWithCompletion:]";
      v11 = 2112;
      v12 = currentConnection;
      _os_log_impl(&dword_25813A000, serviceNamesByActiveHandle, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
  {

    v9 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:identifierCopy createIfNeeded:1];
    v10 = [v9 count];
    [v9 addObject:currentConnection];
    v11 = [v9 count];
    v12 = MSPGetSharedTripLog();
    v13 = v12;
    if (v10 == v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = currentConnection;
        v22 = 2112;
        v23 = identifierCopy;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "[Server] %@ already subscribed to trip %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v21 = currentConnection;
        v22 = 2112;
        v23 = identifierCopy;
        v24 = 2048;
        v25 = [v9 count];
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Server] Added %@ to subscriptions for trip %@ (%lu subscriptions)", buf, 0x20u);
      }

      v16 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = identifierCopy;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Server] Subscribe to trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v19 = 0;
      [(MSPReceiverETAController *)receivingController subscribeToUpdatesToSharedTrip:identifierCopy error:&v19];
      v18 = v19;
      (completionCopy)[2](completionCopy, v18);
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
      v23 = currentConnection;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v9 = currentConnection;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
  {

    v9 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:identifierCopy createIfNeeded:0];
    v10 = [v9 count];
    [v9 removeObject:currentConnection];
    v11 = [v9 count];
    v12 = MSPGetSharedTripLog();
    v13 = v12;
    if (v10 == v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = currentConnection;
        v22 = 2112;
        v23 = identifierCopy;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Connection %@ was not subscribed to trip: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v21 = currentConnection;
        v22 = 2112;
        v23 = identifierCopy;
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
          v23 = identifierCopy;
          _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_DEBUG, "[Server] %lu subscribed connections for trip %@", buf, 0x16u);
        }
      }

      v17 = MSPGetSharedTripLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = identifierCopy;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[Server] Unsubscribe from trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v19 = 0;
      [(MSPReceiverETAController *)receivingController unsubscribeFromUpdatesToSharedTrip:identifierCopy error:&v19];
      v13 = v19;
      completionCopy[2](completionCopy, v13);
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
      v23 = currentConnection;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v9 = currentConnection;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fetchSharedTripsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
  {

    currentConnection = [(MSPReceiverETAController *)self->_receivingController allTrips];
    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = currentConnection;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Server] Fetching all received trips: %@", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, currentConnection);
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharedTripsWithCompletion:]";
      v11 = 2112;
      v12 = currentConnection;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)blockSharedTrip:(id)trip
{
  v13 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
  {

    v6 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = tripCopy;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] block sharing trip: %@", &v9, 0xCu);
    }

    [(MSPReceiverETAController *)self->_receivingController blockSharedTrip:tripCopy];
  }

  else
  {
    v7 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer blockSharedTrip:]";
      v11 = 2112;
      v12 = currentConnection;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearBlockedTripIdentifiers
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
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
      v10 = currentConnection;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection && [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection])
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
      v10 = currentConnection;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)senderController:(id)controller didStartSharingWithGroupIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlSharing:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidStartSharingWithIdentifier:identifierCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)senderController:(id)controller didInvalidateSharedTripWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(connections);
        }

        remoteObjectProxy = *(*(&v15 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlSharing:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripInvalidatedWithError:errorCopy];
        }

        else
        {
          v13 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)invalidateActiveHandlesForSenderController:(id)controller
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[Server] %s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  activeHandles = [controllerCopy activeHandles];
  v17 = controllerCopy;
  serviceNamesByActiveHandle = [controllerCopy serviceNamesByActiveHandle];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = connections;
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

        remoteObjectProxy = *(*(&v18 + 1) + 8 * i);
        if (remoteObjectProxy && [(MSPSharedTripServer *)self _connectionCanControlSharing:remoteObjectProxy])
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidUpdateRecipients:activeHandles withServices:serviceNamesByActiveHandle];
        }

        else
        {
          v15 = MSPGetSharedTripLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
            v24 = 2112;
            v25 = remoteObjectProxy;
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
  mEMORY[0x277D0EB48] = [MEMORY[0x277D0EB48] sharedObject];
  [mEMORY[0x277D0EB48] runAfterFirstUnlock:MEMORY[0x277D85CD0] block:&__block_literal_global];
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