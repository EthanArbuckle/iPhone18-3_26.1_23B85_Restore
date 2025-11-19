@interface MSPSharedTripCapabilityFetchingServer
- (BOOL)_connectionCanControlSharing:(id)a3;
- (BOOL)_shouldPermitFetchingHandle:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MSPSharedTripCapabilityFetchingServer)init;
- (id)_resolvedStatusForHandle:(id)a3;
- (void)_checkBlockList;
- (void)_notifyPeersForIDSHandlesIfNeeded:(id)a3;
- (void)_performBlockOnAllCachedStatus:(id)a3;
- (void)_performBlockOnAllQueues:(id)a3;
- (void)_removePeerForConnection:(id)a3;
- (void)_scheduleCoalescedBlockListCheckIfNeeded;
- (void)_startMonitoringSystemBlockListIfNeeded;
- (void)_stopMonitoringSystemBlockList;
- (void)_systemBlockListDidUpdate;
- (void)_verifyCurrentlyBlockedStatuses;
- (void)cancelFetchCapabilitiesForContacts:(id)a3;
- (void)capabilityFetchingQueue:(id)a3 didFetchStatusForHandles:(id)a4;
- (void)cleanConnections;
- (void)createXPCListener;
- (void)dealloc;
- (void)fetchCapabilitiesForContacts:(id)a3;
@end

@implementation MSPSharedTripCapabilityFetchingServer

- (MSPSharedTripCapabilityFetchingServer)init
{
  v32.receiver = self;
  v32.super_class = MSPSharedTripCapabilityFetchingServer;
  v2 = [(MSPSharedTripCapabilityFetchingServer *)&v32 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    peersByConnection = v2->_peersByConnection;
    v2->_peersByConnection = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.Maps.SharedTrip.Capabilities", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [[MSPSharedTripIDSCapabilityFetchingQueue alloc] initWithIDSService:@"com.apple.private.alloy.maps.eta" capabilityType:4 delegate:v2 queue:v2->_workQueue label:@"Maps"];
    mapsStatusFetchQueue = v2->_mapsStatusFetchQueue;
    v2->_mapsStatusFetchQueue = v8;

    v10 = [[MSPSharedTripIDSCapabilityFetchingQueue alloc] initWithIDSService:@"com.apple.madrid" capabilityType:3 delegate:v2 queue:v2->_workQueue label:@"iMessage"];
    messagesStatusFetchQueue = v2->_messagesStatusFetchQueue;
    v2->_messagesStatusFetchQueue = v10;

    v12 = [[MSPSharedTripMessagesCapabilityFetchingQueue alloc] initWithDelegate:v2 queue:v2->_workQueue label:@"Text Message"];
    textMessageStatusFetchQueue = v2->_textMessageStatusFetchQueue;
    v2->_textMessageStatusFetchQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToMapsStatus = v2->_identifierToMapsStatus;
    v2->_identifierToMapsStatus = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToMessagesStatus = v2->_identifierToMessagesStatus;
    v2->_identifierToMessagesStatus = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToTextMessageStatus = v2->_identifierToTextMessageStatus;
    v2->_identifierToTextMessageStatus = v18;

    GEOConfigGetDouble();
    v21 = v20;
    objc_initWeak(&location, v2);
    v22 = v2->_workQueue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __45__MSPSharedTripCapabilityFetchingServer_init__block_invoke;
    v29 = &unk_2798679B0;
    objc_copyWeak(&v30, &location);
    v23 = [GCDTimer scheduledTimerWithTimeInterval:v22 queue:1 repeating:&v26 block:v21];
    purgeTimer = v2->_purgeTimer;
    v2->_purgeTimer = v23;

    [(MSPSharedTripCapabilityFetchingServer *)v2 createXPCListener:v26];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__MSPSharedTripCapabilityFetchingServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _purgeExpiredStatuses];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_blockListMonitoringObserver];

  [(GCDTimer *)self->_purgeTimer invalidate];
  [(MSPSharedTripCapabilityFetchingServer *)self cleanConnections];
  v4 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136380675;
    v8 = "[MSPSharedTripCapabilityFetchingServer dealloc]";
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[Server] %{private}s", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = MSPSharedTripCapabilityFetchingServer;
  [(MSPSharedTripCapabilityFetchingServer *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cleanConnections
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136380675;
    v18 = "[MSPSharedTripCapabilityFetchingServer cleanConnections]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[Server] %{private}s", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMapTable *)self->_peersByConnection keyEnumerator];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 invalidate];
        [v10 setExportedObject:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSXPCListener *)self->_listener invalidate];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)createXPCListener
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_listener)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 136380675;
      v10 = "[MSPSharedTripCapabilityFetchingServer createXPCListener]";
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[Server] %{private}s", &v9, 0xCu);
    }

    v4 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    peersByConnection = self->_peersByConnection;
    self->_peersByConnection = v4;

    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip.Capabilities"];
    listener = self->_listener;
    self->_listener = v6;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:self->_workQueue];
    [(NSXPCListener *)self->_listener resume];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MSPSharedTripXPCPeer *)[MSPSharedTripCapabilityFetchingPeer alloc] initWithConnection:v7];
  v9 = [(MSPSharedTripXPCPeer *)v8 canControlSharing];
  if (v9)
  {
    [(NSMapTable *)self->_peersByConnection setObject:v8 forKey:v7];
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697C9D0];
    [v7 setExportedInterface:v10];

    [v7 setExportedObject:self];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28696C798];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    [v11 setClasses:v15 forSelector:sel_capabilityLevelsDidUpdate_ argumentIndex:0 ofReply:0];

    [v7 setRemoteObjectInterface:v11];
    [v7 _setQueue:self->_workQueue];
    v16 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "[Server] Accepting new connection: %@", buf, 0xCu);
    }

    objc_initWeak(buf, v7);
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke;
    v22[3] = &unk_279865EA8;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    [v7 setInvalidationHandler:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke_90;
    v19[3] = &unk_279865EA8;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(&v21, &location);
    [v7 setInterruptionHandler:v19];
    [v7 resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_ERROR, "[Server] will not accept connection due to missing sharing entitlement: %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

void __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection invalidated: %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removePeerForConnection:WeakRetained];

  v5 = *MEMORY[0x277D85DE8];
}

void __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke_90(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection interrupted: %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removePeerForConnection:WeakRetained];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_connectionCanControlSharing:(id)a3
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:a3];
  v4 = [v3 canControlSharing];

  return v4;
}

- (void)_removePeerForConnection:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_peersByConnection objectForKey:v4];
    if (v5)
    {
      v6 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "[Server] Removing peer %{public}@", buf, 0xCu);
      }

      v7 = [v5 requestedHandles];
      v8 = [v7 array];
      v9 = [v5 removeRequestedHandles:v8];

      [(NSMapTable *)self->_peersByConnection removeObjectForKey:v4];
      if ([v9 count])
      {
        v10 = MSPGetSharedTripCapabilityFetchingLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v15 = v9;
          _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_INFO, "[Server] Clearing peer's requested handles from queue: %{private}@", buf, 0xCu);
        }

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __66__MSPSharedTripCapabilityFetchingServer__removePeerForConnection___block_invoke;
        v12[3] = &unk_2798679D8;
        v13 = v9;
        [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v12];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchCapabilitiesForContacts:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripCapabilityFetchingServer *)self _connectionCanControlSharing:v5])
  {

    v41 = v5;
    [(NSMapTable *)self->_peersByConnection objectForKey:v5];
    v57 = 0;
    v40 = v58 = 0;
    [v40 updateRequestedHandles:v4 added:&v58 removed:&v57];
    v39 = v58;
    v43 = v57;
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v53 = __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke;
    v54 = &unk_279867A00;
    v55 = self;
    v44 = v6;
    v56 = v44;
    v42 = v4;
    v7 = v4;
    v8 = v52;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v59 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v60;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = (v53)(v8, *(*(&v59 + 1) + 8 * i), v13);
          if (v16)
          {
            [v9 addObject:v16];
          }

          ++v13;
        }

        v12 = [v10 countByEnumeratingWithState:&v59 objects:buf count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    if ([v44 count])
    {
      v18 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v44 count];
        *buf = 134218243;
        v65 = v19;
        v66 = 2113;
        v67 = v44;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, "Filtered out %lu contacts: %{private}@", buf, 0x16u);
      }
    }

    v20 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138478339;
      v65 = v17;
      v66 = 2113;
      v67 = v39;
      v68 = 2113;
      v69 = v43;
      _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_INFO, "Fetch contacts: %{private}@\n\tAdded: %{private}@,\n\tRemoved: %{private}@", buf, 0x20u);
    }

    v21 = v17;

    v22 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v39, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = v39;
    v24 = [v23 countByEnumeratingWithState:&v48 objects:v63 count:16];
    v4 = v42;
    if (v24)
    {
      v25 = v24;
      v26 = *v49;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v48 + 1) + 8 * j);
          v29 = [(MSPSharedTripCapabilityFetchingServer *)self _resolvedStatusForHandle:v28, v39];
          v30 = v29;
          if (v29 && ([v29 isExpired] & 1) == 0)
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v25);
    }

    if ([v22 count])
    {
      v31 = MSPGetSharedTripCapabilityFetchingLog();
      v32 = v40;
      v5 = v41;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = [v22 count];
        *buf = 134217984;
        v65 = v33;
        _os_log_impl(&dword_25813A000, v31, OS_LOG_TYPE_INFO, "%lu handles have cached statuses, removing from handles to fetch", buf, 0xCu);
      }

      v34 = [v23 mutableCopy];
      [v34 minusSet:v22];
      v35 = [v34 copy];

      [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v22];
      v23 = v35;
    }

    else
    {
      v32 = v40;
      v5 = v41;
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke_95;
    v45[3] = &unk_279867A28;
    v46 = v23;
    v47 = v43;
    v37 = v43;
    v36 = v23;
    [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v45];
  }

  else
  {
    v36 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[MSPSharedTripCapabilityFetchingServer fetchCapabilitiesForContacts:]";
      v66 = 2112;
      v67 = v5;
      _os_log_impl(&dword_25813A000, v36, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v32 = v5;
  }

  v38 = *MEMORY[0x277D85DE8];
}

id __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldPermitFetchingHandle:v3])
  {
    v4 = v3;
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    v4 = 0;
  }

  return v4;
}

- (void)cancelFetchCapabilitiesForContacts:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  if (v5 && [(MSPSharedTripCapabilityFetchingServer *)self _connectionCanControlSharing:v5])
  {

    v6 = [(NSMapTable *)self->_peersByConnection objectForKey:v5];
    v7 = [v6 removeRequestedHandles:v4];
    v8 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v14 = v4;
      v15 = 2113;
      v16 = v7;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "Cancel fetch contacts: %{private}@\n\tRemoved: %{private}@", buf, 0x16u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__MSPSharedTripCapabilityFetchingServer_cancelFetchCapabilitiesForContacts___block_invoke;
    v11[3] = &unk_2798679D8;
    v12 = v7;
    v9 = v7;
    [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v11];
  }

  else
  {
    v9 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[MSPSharedTripCapabilityFetchingServer cancelFetchCapabilitiesForContacts:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v6 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyPeersForIDSHandlesIfNeeded:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v47 = v4;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "Will notify for update of %{private}@", buf, 0xCu);
    }

    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          v13 = [(MSPSharedTripCapabilityFetchingServer *)self _resolvedStatusForHandle:v12];
          if (v13)
          {
            [v6 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v34 = v4;
      v14 = objc_alloc(MEMORY[0x277CBEB98]);
      v15 = [v6 allKeys];
      v16 = [v14 initWithArray:v15];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [(NSMapTable *)self->_peersByConnection keyEnumerator];
      v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v37)
      {
        v36 = *v39;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v39 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v38 + 1) + 8 * j);
            v19 = [(NSMapTable *)self->_peersByConnection objectForKey:v18];
            v20 = MSPGetSharedTripCapabilityFetchingLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v47 = v19;
              _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_INFO, "\tChecking peer %{public}@", buf, 0xCu);
            }

            v21 = [v19 requestedHandles];
            v22 = [v21 mutableCopy];

            if ([v22 count])
            {
              v23 = v16;
              [v22 intersectSet:v16];
              v24 = [v22 array];
              v25 = [v6 dictionaryWithValuesForKeys:v24];

              v26 = [v25 count];
              v27 = MSPGetSharedTripCapabilityFetchingLog();
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
              if (v26)
              {
                if (v28)
                {
                  v29 = [v6 count];
                  *buf = 138543875;
                  v47 = v19;
                  v48 = 2048;
                  v49 = v29;
                  v50 = 2113;
                  v51 = v6;
                  _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "\t- notifying peer %{public}@ of %lu resolved statuses: %{private}@", buf, 0x20u);
                }

                v30 = [v25 allKeys];
                v31 = [v19 removeRequestedHandles:v30];

                v27 = [v18 remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
                v32 = [v25 copy];
                [v27 capabilityLevelsDidUpdate:v32];
              }

              else if (v28)
              {
                *buf = 138477827;
                v47 = v19;
                _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "\t- Skipping %{private}@, none of the peer-requested handles have both statues yet", buf, 0xCu);
              }

              v16 = v23;
            }

            else
            {
              v25 = MSPGetSharedTripCapabilityFetchingLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v47 = v19;
                _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_INFO, "\t- Skipping %{private}@, no requested handles", buf, 0xCu);
              }
            }
          }

          v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v37);
      }

      v4 = v34;
    }

    else
    {
      v16 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "\tSkipping all peer notifications, no handles have all services checked", buf, 2u);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __75__MSPSharedTripCapabilityFetchingServer__notifyPeersForIDSHandlesIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "error calling to remote object: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_resolvedStatusForHandle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSPSharedTripCapabilityFetchingQueue *)self->_mapsStatusFetchQueue inflightHandles];
  if ([v5 containsObject:v4])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_identifierToMapsStatus objectForKeyedSubscript:v4];
  }

  v7 = [(MSPSharedTripCapabilityFetchingQueue *)self->_messagesStatusFetchQueue inflightHandles];
  if ([v7 containsObject:v4])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_identifierToMessagesStatus objectForKeyedSubscript:v4];
  }

  v9 = [(MSPSharedTripCapabilityFetchingQueue *)self->_textMessageStatusFetchQueue inflightHandles];
  if ([v9 containsObject:v4])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_identifierToTextMessageStatus objectForKeyedSubscript:v4];
  }

  if (v6 && v8 && v10)
  {
    if ([v6 status] == 1 || objc_msgSend(v6, "isBlocked"))
    {
      v11 = v6;
    }

    else if ([v8 status] == 1)
    {
      v11 = v8;
    }

    else if ([v10 status] == 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:2];
    }

    v12 = v11;
  }

  else
  {
    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 138477827;
      v17 = v4;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "\tSkipping %{private}@, we haven't fetched both services yet", &v16, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke_2;
  v9[3] = &unk_279867A90;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 isExpired])
  {
    v6 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138543619;
      v10 = v7;
      v11 = 2113;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "%{public}@: purging expired status for handle %{private}@", &v9, 0x16u);
    }

    [*(a1 + 40) removeObjectForKey:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performBlockOnAllQueues:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = *&self->_mapsStatusFetchQueue;
  textMessageStatusFetchQueue = self->_textMessageStatusFetchQueue;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:{3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_performBlockOnAllCachedStatus:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *&self->_identifierToMapsStatus;
  v11[0] = @"Maps";
  v11[1] = @"iMessage";
  v12 = v5;
  v11[2] = @"Text Message";
  identifierToTextMessageStatus = self->_identifierToTextMessageStatus;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:v11 count:3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__MSPSharedTripCapabilityFetchingServer__performBlockOnAllCachedStatus___block_invoke;
  v9[3] = &unk_279867AB8;
  v10 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)capabilityFetchingQueue:(id)a3 didFetchStatusForHandles:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->_mapsStatusFetchQueue == v11)
  {
    v7 = 32;
  }

  else if (self->_messagesStatusFetchQueue == v11)
  {
    v7 = 40;
  }

  else
  {
    if (self->_textMessageStatusFetchQueue != v11)
    {
      goto LABEL_8;
    }

    v7 = 48;
  }

  [*(&self->super.isa + v7) addEntriesFromDictionary:v6];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v6 allKeys];
  v10 = [v8 setWithArray:v9];
  [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v10];

LABEL_8:
}

- (BOOL)_shouldPermitFetchingHandle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_identifierToMapsStatus objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
    if ([MSPSharedTripContact isHandleBlocked:v4])
    {
      goto LABEL_9;
    }

LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  if ([v5 isBlocked] && (objc_msgSend(v6, "isExpired") & 1) == 0)
  {
    v11 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v18 = v4;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "- %{private}@ already recorded as blocked, not expired", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (![MSPSharedTripContact isHandleBlocked:v4])
  {
    goto LABEL_14;
  }

  if ([v6 isBlocked])
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v18 = v4;
      v8 = "- %{private}@ was recorded blocked, record expired, but handle still blocked, will update record";
LABEL_11:
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_9:
  v7 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v18 = v4;
    v8 = "- %{private}@ is blocked, will record";
    goto LABEL_11;
  }

LABEL_12:

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__MSPSharedTripCapabilityFetchingServer__shouldPermitFetchingHandle___block_invoke;
  v15[3] = &unk_279867AE0;
  v9 = v4;
  v16 = v9;
  [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllCachedStatus:v15];
  v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v10];

  [(MSPSharedTripCapabilityFetchingServer *)self _startMonitoringSystemBlockListIfNeeded];
  v11 = v16;
LABEL_13:

  v12 = 0;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __69__MSPSharedTripCapabilityFetchingServer__shouldPermitFetchingHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:-2];
  [v3 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

- (void)_startMonitoringSystemBlockListIfNeeded
{
  if (!self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] Will start monitoring system block list updates", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277CFB9B8];
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__MSPSharedTripCapabilityFetchingServer__startMonitoringSystemBlockListIfNeeded__block_invoke;
    v9[3] = &unk_279867B08;
    objc_copyWeak(&v10, buf);
    v7 = [v4 addObserverForName:v5 object:0 queue:v6 usingBlock:v9];
    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __80__MSPSharedTripCapabilityFetchingServer__startMonitoringSystemBlockListIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _systemBlockListDidUpdate];
}

- (void)_stopMonitoringSystemBlockList
{
  if (self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] Will stop monitoring system block list updates", v7, 2u);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self->_blockListMonitoringObserver];

    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = 0;

    [(GCDTimer *)self->_blockListCoalescingTimer invalidate];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = 0;
  }
}

- (void)_systemBlockListDidUpdate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSPSharedTripCapabilityFetchingServer__systemBlockListDidUpdate__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_scheduleCoalescedBlockListCheckIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_blockListCoalescingTimer)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = 0x3FF0000000000000;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] System block list did update, scheduling coalescing check in %#.1lfs", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__MSPSharedTripCapabilityFetchingServer__scheduleCoalescedBlockListCheckIfNeeded__block_invoke;
    v8[3] = &unk_2798679B0;
    objc_copyWeak(&v9, buf);
    v5 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:v8 block:1.0];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __81__MSPSharedTripCapabilityFetchingServer__scheduleCoalescedBlockListCheckIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkBlockList];
}

- (void)_checkBlockList
{
  blockListCoalescingTimer = self->_blockListCoalescingTimer;
  self->_blockListCoalescingTimer = 0;

  v4 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[Server] Checking existing blocked statuses for now-unblocked handles...", buf, 2u);
  }

  [(MSPSharedTripCapabilityFetchingServer *)self _verifyCurrentlyBlockedStatuses];
  v5 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[Server] Checking blocklist to see if any cached statuses are now blocked...", v6, 2u);
  }

  [(MSPSharedTripCapabilityFetchingServer *)self _verifyCurrentlyUnblockedStatuses];
}

- (void)_verifyCurrentlyBlockedStatuses
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "Will verify existing blocked handles are still blocked", v4, 2u);
  }

  [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllCachedStatus:&__block_literal_global_107];
}

void __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke_2;
  v5[3] = &unk_279867B30;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 isBlocked] && !+[MSPSharedTripContact isHandleBlocked:](MSPSharedTripContact, "isHandleBlocked:", v5))
  {
    v6 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138477827;
      v9 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "- %{private}@ is no longer blocked", &v8, 0xCu);
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke_2;
  v5[3] = &unk_279867B30;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([a3 isBlocked] & 1) == 0 && +[MSPSharedTripContact isHandleBlocked:](MSPSharedTripContact, "isHandleBlocked:", v5))
  {
    v6 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "- %{private}@ is now blocked", &v9, 0xCu);
    }

    v7 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:-2];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end