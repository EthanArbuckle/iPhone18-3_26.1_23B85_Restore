@interface MSPSharedTripCapabilityLevelFetcher
+ (id)sharedFetcher;
- (MSPSharedTripCapabilityLevelFetcher)init;
- (id)_processResults:(id)a3;
- (id)serviceNameForContact:(id)a3;
- (unint64_t)capabilityLevelForContact:(id)a3;
- (void)_connectionInterrupted:(id)a3;
- (void)_connectionInvalidated:(id)a3;
- (void)_fetchQueuesDidUpdate;
- (void)_openConnectionIfNeeded;
- (void)cancelCapabilityLevelRequestForContact:(id)a3;
- (void)cancelCapabilityLevelRequestForContacts:(id)a3;
- (void)capabilityLevelsDidUpdate:(id)a3;
- (void)fetchCapabilityLevelForContact:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)notifyObservers:(id)a3;
- (void)registerObserver:(id)a3;
- (void)requestCapabilityLevelsForContacts:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)verifyBlockedStatuses;
@end

@implementation MSPSharedTripCapabilityLevelFetcher

+ (id)sharedFetcher
{
  if (MSPSharedTripSharingAvailable())
  {
    if (sharedFetcher__once != -1)
    {
      +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    }

    v2 = sharedFetcher__sharedFetcher;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_fetchQueuesDidUpdate
{
  [(MSPSharedTripCapabilityLevelFetcher *)self _openConnectionIfNeeded];
  v4 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v3 = [(NSMutableOrderedSet *)self->_fetchQueue array];
  [v4 fetchCapabilitiesForContacts:v3];
}

- (void)_openConnectionIfNeeded
{
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip.Capabilities" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697C9D0];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28696C798];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    [v6 setClasses:v10 forSelector:sel_capabilityLevelsDidUpdate_ argumentIndex:0 ofReply:0];

    [(NSXPCConnection *)self->_connection setExportedInterface:v6];
    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection _setQueue:self->_workQueue];
    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_connection);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__MSPSharedTripCapabilityLevelFetcher__openConnectionIfNeeded__block_invoke;
    v14[3] = &unk_279865EA8;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, &from);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__MSPSharedTripCapabilityLevelFetcher__openConnectionIfNeeded__block_invoke_2;
    v11[3] = &unk_279865EA8;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, &from);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

uint64_t __52__MSPSharedTripCapabilityLevelFetcher_sharedFetcher__block_invoke()
{
  sharedFetcher__sharedFetcher = objc_alloc_init(MSPSharedTripCapabilityLevelFetcher);

  return MEMORY[0x2821F96F8]();
}

- (MSPSharedTripCapabilityLevelFetcher)init
{
  v14.receiver = self;
  v14.super_class = MSPSharedTripCapabilityLevelFetcher;
  v2 = [(MSPSharedTripCapabilityLevelFetcher *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0EC08]);
    v4 = [v3 initWithProtocol:&unk_28696CAB0 queue:MEMORY[0x277D85CD0]];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statusesByIdentifier = v2->_statusesByIdentifier;
    v2->_statusesByIdentifier = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.Maps.MSPSharedTripCapabilityLevelFetcher", v10);
    workQueue = v2->_workQueue;
    v2->_workQueue = v11;
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "MSPSharedTripCapabilityLevelFetcher registerObserver %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterObserver:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "MSPSharedTripCapabilityLevelFetcher unregisterObserver %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyObservers:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134218243;
    v8 = [v4 count];
    v9 = 2113;
    v10 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEBUG, "MSPSharedTripCapabilityLevelFetcher notifyObservers for %lu updated handles: %{private}@", &v7, 0x16u);
  }

  [(GEOObserverHashTable *)self->_observers capabilityLevelFetcher:self didUpdateCapabilityLevelsForHandles:v4];
  [(GEOObserverHashTable *)self->_observers capabilityLevelsDidUpdate];

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)capabilityLevelForContact:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 handleForIDS];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  workQueue = self->_workQueue;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v34 = __65__MSPSharedTripCapabilityLevelFetcher_capabilityLevelForContact___block_invoke;
  v35 = &unk_279866180;
  v38 = &v39;
  v36 = self;
  v7 = v5;
  v37 = v7;
  v8 = workQueue;
  v9 = v33;
  label = dispatch_queue_get_label(v8);
  v11 = dispatch_queue_get_label(0);
  if (label == v11 || label && v11 && !strcmp(label, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v34(v9);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    dispatch_sync(v8, v9);
  }

  v13 = [MEMORY[0x277D0EC70] sharedPlatform];
  if ([v13 isInternalInstall])
  {
    IsValid = MSPSharedTripVirtualReceiverIsValid(v7);

    if (IsValid)
    {
      CapabilityType = MSPSharedTripVirtualReceiverHandleGetCapabilityType(v7);
      v16 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        if (CapabilityType > 4)
        {
          v17 = @"Unknown";
        }

        else
        {
          v17 = *(&off_279867E10 + CapabilityType);
        }

        *buf = 138543618;
        v46 = v7;
        v47 = 2114;
        v48 = v17;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact virtual receiver %{public}@ supports %{public}@", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = v40[5];
  if (!v18 || [v18 isExpired])
  {
    v16 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 stringValue];
      v20 = v40[5];
      *buf = 138412546;
      v46 = v19;
      v47 = 2114;
      v48 = v20;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact cache miss for handle %@ (%{public}@)", buf, 0x16u);
    }

    CapabilityType = 0;
    goto LABEL_18;
  }

  if ([v40[5] isBlocked])
  {
    v16 = MSPGetSharedTripCapabilityFetchingLog();
    CapabilityType = 1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v23 = [v4 stringValue];
      *buf = 138412290;
      v46 = v23;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact returning invalid for blocked handle %@", buf, 0xCu);

LABEL_23:
      CapabilityType = 1;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v24 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v4 stringValue];
    v26 = v40[5];
    *buf = 138412546;
    v46 = v25;
    v47 = 2114;
    v48 = v26;
    _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_INFO, "capabilityLevelForContact cache hit for handle %@ (%{public}@)", buf, 0x16u);
  }

  if ([v40[5] status] != 1)
  {
    if ([v4 isPhoneNumber])
    {
      v16 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v30 = [v4 stringValue];
        *buf = 138412290;
        v46 = v30;
        _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact returning cached SMS capability type for %@", buf, 0xCu);
      }

      CapabilityType = 2;
      goto LABEL_18;
    }

    v16 = MSPGetSharedTripCapabilityFetchingLog();
    CapabilityType = 1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v31 = [v4 stringValue];
      *buf = 138412290;
      v46 = v31;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact returning cached invalid capability type for %@", buf, 0xCu);

      goto LABEL_23;
    }

LABEL_18:

    goto LABEL_19;
  }

  v27 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v40[5] capabilityType];
    if (v28 > 4)
    {
      v29 = @"Unknown";
    }

    else
    {
      v29 = *(&off_279867E10 + v28);
    }

    v32 = [v4 stringValue];
    *buf = 138543618;
    v46 = v29;
    v47 = 2112;
    v48 = v32;
    _os_log_impl(&dword_25813A000, v27, OS_LOG_TYPE_INFO, "capabilityLevelForContact returning cached %{public}@ capability type for %@", buf, 0x16u);
  }

  CapabilityType = [v40[5] capabilityType];
LABEL_19:

  _Block_object_dispose(&v39, 8);
  v21 = *MEMORY[0x277D85DE8];
  return CapabilityType;
}

uint64_t __65__MSPSharedTripCapabilityLevelFetcher_capabilityLevelForContact___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)serviceNameForContact:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 handleForIDS];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  workQueue = self->_workQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v26 = __61__MSPSharedTripCapabilityLevelFetcher_serviceNameForContact___block_invoke;
  v27 = &unk_279866180;
  v30 = &v31;
  v28 = self;
  v7 = v5;
  v29 = v7;
  v8 = workQueue;
  v9 = v25;
  label = dispatch_queue_get_label(v8);
  v11 = dispatch_queue_get_label(0);
  if (label == v11 || label && v11 && !strcmp(label, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v26(v9);
    objc_autoreleasePoolPop(v12);
  }

  else
  {
    dispatch_sync(v8, v9);
  }

  v13 = [MEMORY[0x277D0EC70] sharedPlatform];
  if ([v13 isInternalInstall])
  {
    IsValid = MSPSharedTripVirtualReceiverIsValid(v7);

    if (IsValid)
    {
      v15 = MSPSharedTripVirtualReceiverHandleGetServiceName(v7);
      v16 = MSPGetSharedTripCapabilityFetchingLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *buf = 138543618;
      v38 = v7;
      v39 = 2114;
      v40 = v15;
      v17 = "serviceNameForContact virtual receiver %{public}@ is %{public}@";
      v18 = v16;
      v19 = 22;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v20 = v32[5];
  if (!v20 || [v20 isExpired])
  {
    v16 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = [v4 stringValue];
      v22 = v32[5];
      *buf = 138412546;
      v38 = v21;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact cache miss for handle %@ (%{public}@)", buf, 0x16u);
    }

LABEL_16:
    v15 = 0;
    goto LABEL_23;
  }

  if ([v32[5] isBlocked])
  {
    v16 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v38 = v7;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_INFO, "capabilityLevelForContact nil service name for blocked %{private}@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v15 = [v32[5] serviceName];
  v16 = MSPGetSharedTripCapabilityFetchingLog();
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    goto LABEL_23;
  }

  *buf = 138543362;
  v38 = v15;
  v17 = "capabilityLevelForContact returning cached service name %{public}@";
  v18 = v16;
  v19 = 12;
LABEL_22:
  _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
LABEL_23:

  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __61__MSPSharedTripCapabilityLevelFetcher_serviceNameForContact___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_processResults:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __55__MSPSharedTripCapabilityLevelFetcher__processResults___block_invoke;
  v13 = &unk_279867A90;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __55__MSPSharedTripCapabilityLevelFetcher__processResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v9];
  if (([v5 isEffectivelyEqualToStatus:v6] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = IDSCopyRawAddressForDestination();
    [v7 addObject:v8];
  }

  if ([*(*(a1 + 32) + 24) containsObject:v9])
  {
    [*(*(a1 + 32) + 24) removeObject:v9];
  }

  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:v9];
}

- (void)capabilityLevelsDidUpdate:(id)a3
{
  v4 = [(MSPSharedTripCapabilityLevelFetcher *)self _processResults:a3];
  if ([v4 count])
  {
    [(MSPSharedTripCapabilityLevelFetcher *)self notifyObservers:v4];
  }
}

void __62__MSPSharedTripCapabilityLevelFetcher__openConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _connectionInvalidated:v2];
}

void __62__MSPSharedTripCapabilityLevelFetcher__openConnectionIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _connectionInterrupted:v2];
}

- (void)_connectionInvalidated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 _xpcConnection];
  v7 = [v5 stringWithUTF8String:xpc_connection_copy_invalidation_reason()];

  v8 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[Service] Connection invalidated: %@, reason: %{public}@", &v11, 0x16u);
  }

  connection = self->_connection;
  self->_connection = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_connectionInterrupted:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[Service] Connection invalidated: %@", &v8, 0xCu);
  }

  connection = self->_connection;
  self->_connection = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestCapabilityLevelsForContacts:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_not_V2(workQueue);
  v6 = MapsMap(v5, &__block_literal_global_75);

  v7 = self->_workQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__MSPSharedTripCapabilityLevelFetcher_requestCapabilityLevelsForContacts___block_invoke_2;
  v9[3] = &unk_279865EF8;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(v7, v9);
}

uint64_t __74__MSPSharedTripCapabilityLevelFetcher_requestCapabilityLevelsForContacts___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEBUG, "fetchCapabilityLevelForContacts enqueing destinations %@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) addObjectsFromArray:*(a1 + 32)];
  result = [*(a1 + 40) _fetchQueuesDidUpdate];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelCapabilityLevelRequestForContacts:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_workQueue);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MSPSharedTripCapabilityLevelFetcher_cancelCapabilityLevelRequestForContacts___block_invoke;
  v7[3] = &unk_279865EF8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __79__MSPSharedTripCapabilityLevelFetcher_cancelCapabilityLevelRequestForContacts___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MapsMap(*(a1 + 32), &__block_literal_global_77_0);
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v2];
  if ([*(*(a1 + 40) + 24) intersectsSet:v3])
  {
    [*(*(a1 + 40) + 24) minusSet:v3];
    v4 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "capabilityLevelNoLongerNeededForContact did remove %@ across Maps/Messages queues", &v6, 0xCu);
    }

    [*(a1 + 40) _fetchQueuesDidUpdate];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelCapabilityLevelRequestForContact:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_not_V2(workQueue);
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [(MSPSharedTripCapabilityLevelFetcher *)self cancelCapabilityLevelRequestForContacts:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchCapabilityLevelForContact:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  workQueue = self->_workQueue;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  dispatch_assert_queue_not_V2(workQueue);
  v13 = [[_MSPSharedTripSingleCapabilityLevelFetcher alloc] initWithContact:v12 timeout:v11 queue:v10 completion:a4];

  [(_MSPSharedTripSingleCapabilityLevelFetcher *)v13 start];
}

- (void)verifyBlockedStatuses
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_workQueue);
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "Will verify existing blocked handles are still blocked", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  statusesByIdentifier = self->_statusesByIdentifier;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__MSPSharedTripCapabilityLevelFetcher_verifyBlockedStatuses__block_invoke;
  v10[3] = &unk_279867B30;
  v6 = v4;
  v11 = v6;
  [(NSMutableDictionary *)statusesByIdentifier enumerateKeysAndObjectsUsingBlock:v10];
  if (v6)
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      *buf = 134217984;
      v13 = v8;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "- removing %lu blocked handles from statuses", buf, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_statusesByIdentifier removeObjectsForKeys:v6];

  v9 = *MEMORY[0x277D85DE8];
}

void __60__MSPSharedTripCapabilityLevelFetcher_verifyBlockedStatuses__block_invoke(uint64_t a1, void *a2, void *a3)
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

    [*(a1 + 32) addObject:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end