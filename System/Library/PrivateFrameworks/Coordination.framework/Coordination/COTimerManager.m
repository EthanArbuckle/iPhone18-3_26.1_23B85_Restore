@interface COTimerManager
- (BOOL)_canDispatchForAssociatedAccessory;
- (COTimerManager)init;
- (COTimerManager)initWithConnectionProvider:(id)a3;
- (COTimerManager)initWithConnectionProvider:(id)a3 distributedTimersClient:(id)a4;
- (NSXPCConnection)lastConnection;
- (id)_remoteInterfaceWithErrorHandler:(id)a3;
- (id)_sendRequestWithName:(id)a3 forTimer:(id)a4 distributedTimers:(id)a5 coordination:(id)a6;
- (id)_timersForAccessory:(id)a3;
- (id)addObserverForName:(id)a3 queue:(id)a4 usingBlock:(id)a5;
- (id)addTimer:(id)a3;
- (id)dismissTimerWithIdentifier:(id)a3;
- (id)initForAccessory:(id)a3 withConnectionProvider:(id)a4;
- (id)removeTimer:(id)a3;
- (id)timers;
- (id)timersForAccessories:(id)a3;
- (id)timersForAccessory:(id)a3;
- (id)timersForAccessoryMementos:(id)a3;
- (id)updateTimer:(id)a3;
- (void)_activateDistributedTimersMonitoring;
- (void)_canDispatchForAssociatedAccessory;
- (void)_emitNotificationForName:(id)a3 timer:(id)a4;
- (void)_handleDTTimerClientEvent:(int64_t)a3 dtTimer:(id)a4;
- (void)_handleNotification:(id)a3;
- (void)_lostConnectionToService;
- (void)_registerObserverWithName:(id)a3;
- (void)_updateCanDispatch;
- (void)_updateMonitoring;
- (void)_withLock:(id)a3;
- (void)dealloc;
- (void)postNotificationName:(id)a3 withUserInfo:(id)a4 callback:(id)a5;
- (void)removeObserver:(id)a3;
@end

@implementation COTimerManager

- (COTimerManager)initWithConnectionProvider:(id)a3 distributedTimersClient:(id)a4
{
  v31[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = COTimerManager;
  v9 = [(COTimerManager *)&v24 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    if (+[COFeatureStatus isCOClusterEnabled])
    {
      v11 = +[COCluster homeCluster];
    }

    else
    {
      v11 = @"COClusterHome";
    }

    cluster = v10->_cluster;
    v10->_cluster = v11;

    v13 = objc_alloc_init(COObserverSet);
    observers = v10->_observers;
    v10->_observers = v13;

    objc_storeStrong(&v10->_provider, a3);
    objc_storeStrong(&v10->_dtClient, a4);
    v15 = [v8 error];
    v10->_canDispatch = v15 == 0;

    v31[0] = 0;
    v31[1] = 0;
    if (xpc_get_instance())
    {
      v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v31];
      instanceID = v10->_instanceID;
      v10->_instanceID = v16;
    }

    v18 = COLogForCategory(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v10->_instanceID;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 134218498;
      v26 = v10;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_244328000, v18, OS_LOG_TYPE_DEFAULT, "%p manager created for %@ with %@ provider", buf, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (COTimerManager)initWithConnectionProvider:(id)a3
{
  v4 = a3;
  v5 = MakeDTTimerClient_0(0);
  v6 = [(COTimerManager *)self initWithConnectionProvider:v4 distributedTimersClient:v5];

  return v6;
}

- (id)initForAccessory:(id)a3 withConnectionProvider:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueIdentifier];
  v9 = MakeDTTimerClient_0(v8);

  v10 = [(COTimerManager *)self initWithConnectionProvider:v7 distributedTimersClient:v9];
  if (v10)
  {
    v11 = COLogForCategory(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HMAccessory *)v10->_accessory uniqueIdentifier];
      *buf = 134218242;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p manager set accessory %@", buf, 0x16u);
    }

    if (+[COFeatureStatus isCOClusterEnabled])
    {
      v13 = [v6 home];
      v14 = [COCluster homeClusterForHomeKitHome:v13];
      cluster = v10->_cluster;
      v10->_cluster = v14;
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      v13 = [v6 home];
      cluster = [v13 uniqueIdentifier];
      v17 = [cluster UUIDString];
      v18 = [v16 stringWithFormat:@"com.apple.%@-home-mesh", v17];
      v19 = v10->_cluster;
      v10->_cluster = v18;
    }

    v20 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:v6];
    memento = v10->_memento;
    v10->_memento = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (COTimerManager)init
{
  v3 = objc_alloc_init(_COTimerManagerConnectionProvider);
  v4 = [(COTimerManager *)self initWithConnectionProvider:v3];

  return v4;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__COTimerManager_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COTimerManager *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COTimerManager;
  [(COTimerManager *)&v3 dealloc];
}

void __25__COTimerManager_dealloc__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) lastConnection];
  v1 = [v3 co_originalInterruptionHandler];
  [v3 setInterruptionHandler:v1];

  v2 = [v3 co_originalInvalidationHandler];
  [v3 setInvalidationHandler:v2];

  [v3 invalidate];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_remoteInterfaceWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke;
  v7[3] = &unk_278E122F0;
  v7[4] = self;
  v7[5] = &v8;
  [(COTimerManager *)self _withLock:v7];
  v5 = [v9[5] remoteObjectProxyWithErrorHandler:v4];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 timerManagerServiceConnection];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [*(a1 + 32) lastConnection];

  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCAE90];
    v9 = &unk_2857B9248;
    v10 = [v8 interfaceWithProtocol:v9];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    [v10 setClasses:v17 forSelector:sel_postNotificationName_withUserInfo_callback_ argumentIndex:1 ofReply:0];
    [*(*(*(a1 + 40) + 8) + 40) setExportedInterface:v10];
    v34 = [[COTimerManagerMediator alloc] initWithTimerManager:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setExportedObject:?];
    v18 = &unk_2857BCBB0;

    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v18];

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];

    [v19 setClasses:v22 forSelector:sel_timersAsAccessory_asInstance_withCallback_ argumentIndex:0 ofReply:1];
    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];

    [v19 setClasses:v27 forSelector:sel_timersAsAccessory_forAccessories_callback_ argumentIndex:0 ofReply:1];
    [*(*(*(a1 + 40) + 8) + 40) setRemoteObjectInterface:v19];
    objc_initWeak(location, *(a1 + 32));
    v28 = [*(*(*(a1 + 40) + 8) + 40) interruptionHandler];
    v29 = [*(*(*(a1 + 40) + 8) + 40) invalidationHandler];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInterruptionHandler:v28];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInvalidationHandler:v29];
    v30 = *(*(*(a1 + 40) + 8) + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_2;
    v38[3] = &unk_278E128A0;
    v31 = v28;
    v39 = v31;
    objc_copyWeak(&v40, location);
    [v30 setInterruptionHandler:v38];
    v32 = *(*(*(a1 + 40) + 8) + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_127;
    v35[3] = &unk_278E128A0;
    v33 = v29;
    v36 = v33;
    objc_copyWeak(&v37, location);
    [v32 setInvalidationHandler:v35];
    [*(a1 + 32) setLastConnection:*(*(*(a1 + 40) + 8) + 40)];
    [*(*(*(a1 + 40) + 8) + 40) resume];
    objc_destroyWeak(&v37);

    objc_destroyWeak(&v40);
    objc_destroyWeak(location);
  }
}

void __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1();
    }
  }
}

void __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_127(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_127_cold_1();
    }
  }
}

- (void)_lostConnectionToService
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(COTimerManager *)self observers];
  v4 = [v3 registeredNames];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(COTimerManager *)self _registerObserverWithName:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = COLogForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = self;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p posting reset notification", buf, 0xCu);
  }

  [(COTimerManager *)self postNotificationName:@"COTimerManagerStateReset" withUserInfo:0 callback:&__block_literal_global_8];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_sendRequestWithName:(id)a3 forTimer:(id)a4 distributedTimers:(id)a5 coordination:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = arc4random();
  v16 = COLogForCategory(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [v11 timerID];
    v17 = v35 = v11;
    v18 = [(COTimerManager *)self dtClient];
    *buf = 134219010;
    v49 = self;
    v50 = 1024;
    v51 = v15;
    v52 = 2114;
    v53 = v10;
    v54 = 2114;
    v55 = v17;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p (%u) %{public}@ timer %{public}@ [DT: %p]", buf, 0x30u);

    v11 = v35;
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke;
  v43[3] = &unk_278E129E8;
  v47 = v15;
  v19 = v10;
  v44 = v19;
  v20 = v11;
  v45 = v20;
  v21 = v14;
  v46 = v21;
  v22 = MEMORY[0x245D5F6A0](v43);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_130;
  v40[3] = &unk_278E12A10;
  v40[4] = self;
  v23 = v22;
  v41 = v23;
  v24 = v13;
  v42 = v24;
  v25 = MEMORY[0x245D5F6A0](v40);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_2;
  v36[3] = &unk_278E12A38;
  v39 = v15;
  v26 = v25;
  v37 = v26;
  v27 = v23;
  v38 = v27;
  v28 = MEMORY[0x245D5F6A0](v36);
  v29 = [(COTimerManager *)self dtClient];

  if (v29)
  {
    v30 = [objc_alloc(MEMORY[0x277D05800]) initWithMTTimer:v20];
    v31 = [(COTimerManager *)self dtClient];
    v12[2](v12, v31, v30, v28);
  }

  else
  {
    v26[2](v26);
  }

  v32 = v21;

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

void __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_cold_1(a1, v3, v5);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) timerID];
      v10[0] = 67109634;
      v10[1] = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%u: %{public}@ timer %{public}@ done", v10, 0x1Cu);
    }

    [*(a1 + 48) finishWithNoResult];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_130(uint64_t a1)
{
  [*(a1 + 32) _remoteInterfaceWithErrorHandler:*(a1 + 40)];
  if (objc_claimAutoreleasedReturnValue())
  {
    v2 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

void __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3 || [v3 code] != 8)
  {

    goto LABEL_8;
  }

  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"DTError"];

  if (!v6)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  v7 = COLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", v10, 8u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateCanDispatch
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [(COTimerManager *)self dtClient];
  v4 = [v3 error];

  if ((v4 == 0) != [(COTimerManager *)self canDispatch])
  {
    if ((v4 == 0) != [(COTimerManager *)self canDispatch])
    {
      [(COTimerManager *)self setCanDispatch:v4 == 0];
    }

    v5 = [(COTimerManager *)self observers];
    v6 = [v5 registeredNames];
    v7 = [v6 containsObject:@"COTimerManagerCanDispatchDidUpdate"];

    if (v7)
    {
      v8 = [(COTimerManager *)self accessory];

      if (v8)
      {
        v9 = [(COTimerManager *)self accessory];
        v10 = [v9 uniqueIdentifier];

        v18 = @"COAccessoryDispatchabilityKey";
        v16 = v10;
        v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[COTimerManager canDispatch](self, "canDispatch")}];
        v17 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v19[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      }

      else
      {
        v13 = 0;
      }

      v14 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COTimerManagerCanDispatchDidUpdate" object:self userInfo:v13];
      [(COTimerManager *)self _handleNotification:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_emitNotificationForName:(id)a3 timer:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = *MEMORY[0x277D296B0];
    v21 = v7;
    v22 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v23[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(COTimerManager *)self observers];
  v13 = [v12 registeredNames];
  v14 = [v13 containsObject:v6];

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:v6 object:self userInfo:v11];
    [(COTimerManager *)self _handleNotification:v15];
  }

  v16 = [(COTimerManager *)self observers];
  v17 = [v16 registeredNames];
  v18 = [v17 containsObject:@"COTimerManagerTimersChanged"];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COTimerManagerTimersChanged" object:self userInfo:v11];
    [(COTimerManager *)self _handleNotification:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDTTimerClientEvent:(int64_t)a3 dtTimer:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = COLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(COTimerManager *)self dtMonitoring];
    v13 = "no";
    *v19 = 134218754;
    *&v19[12] = 2048;
    *&v19[4] = self;
    if (v12)
    {
      v13 = "yes";
    }

    *&v19[14] = a3;
    v20 = 2112;
    v21 = v6;
    v22 = 2080;
    v23 = v13;
    _os_log_debug_impl(&dword_244328000, v7, OS_LOG_TYPE_DEBUG, "%p got Distributed Timers event: %ld [%@] (dtMonitoring: %s)", v19, 0x2Au);
  }

  if (a3 != 11)
  {
    if (v6)
    {
      v8 = [v6 mtTimer];
      if (!v8)
      {
        v9 = COLogForCategory(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [COTimerManager _handleDTTimerClientEvent:dtTimer:];
        }

        v8 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v8 = 0;
    }

    if (a3 <= 4)
    {
      if (a3 < 3)
      {
        v10 = COLogForCategory(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 134218240;
          *&v19[4] = self;
          *&v19[12] = 2048;
          *&v19[14] = a3;
          _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p ignored DistributedTimers event %ld", v19, 0x16u);
        }

LABEL_35:

        goto LABEL_36;
      }

      if (a3 == 3)
      {
        v14 = [(COTimerManager *)self observers];
        v15 = [v14 registeredNames];
        v16 = [v15 containsObject:@"COTimerManagerStateReset"];

        if (v16)
        {
          v17 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"COTimerManagerStateReset" object:self userInfo:0];
          [(COTimerManager *)self _handleNotification:v17];
        }

        goto LABEL_36;
      }

      if (a3 == 4)
      {
        [(COTimerManager *)self _updateCanDispatch];
LABEL_36:

        goto LABEL_37;
      }

LABEL_33:
      v10 = COLogForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [COAlarmManager _handleDTTimerClientEvent:dtTimer:];
      }

      goto LABEL_35;
    }

    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v11 = @"COTimerManagerTimersAdded";
      }

      else
      {
        v11 = @"COTimerManagerTimersUpdated";
      }
    }

    else
    {
      switch(a3)
      {
        case 7:
          v11 = @"COTimerManagerTimersRemoved";
          break;
        case 9:
          v11 = @"COTimerManagerFiringTimerDismissed";
          break;
        case 10:
          v11 = @"COTimerManagerTimerFired";
          break;
        default:
          goto LABEL_33;
      }
    }

    [(COTimerManager *)self _emitNotificationForName:v11 timer:v8, *v19];
    goto LABEL_36;
  }

  [(COTimerManager *)self _updateMonitoring];
LABEL_37:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_activateDistributedTimersMonitoring
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(COTimerManager *)self dtClient];
  if (v3)
  {
    v4 = [(COTimerManager *)self dtClient];
    v5 = [v4 eventHandler];

    if (!v5)
    {
      objc_initWeak(&location, self);
      v15 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v16, &location);
      v6 = [(COTimerManager *)self dtClient:v15];
      [v6 setEventHandler:&v15];

      v7 = COLogForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [COAlarmManager _activateDistributedTimersMonitoring];
      }

      v8 = [(COTimerManager *)self dtClient];
      [v8 activate];

      [(COTimerManager *)self setDtMonitoring:+[COFeatureStatus isDistributedTimersForHH1Enabled]];
      if (![(COTimerManager *)self dtMonitoring])
      {
        v9 = [MEMORY[0x277D05810] statusFlags];
        v10 = COLogForCategory(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v19 = self;
          v20 = 2048;
          v21 = v9;
          _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p DTTimerClientStatusFlags: %ld", buf, 0x16u);
        }

        [(COTimerManager *)self setDtMonitoring:(v9 >> 1) & 1];
      }

      v11 = COLogForCategory(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(COTimerManager *)self dtMonitoring];
        v13 = "no";
        if (v12)
        {
          v13 = "yes";
        }

        *buf = 134218242;
        v19 = self;
        v20 = 2080;
        v21 = v13;
        _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p activated DTTimerClient, using Distribued Timers for events: %s", buf, 0x16u);
      }

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __54__COTimerManager__activateDistributedTimersMonitoring__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDTTimerClientEvent:a2 dtTimer:v5];
}

- (void)_updateMonitoring
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(COTimerManager *)self dtMonitoring])
  {
    v3 = [MEMORY[0x277D05810] statusFlags];
    v4 = COLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v27 = self;
      v28 = 2048;
      v29 = v3;
      _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%p DTTimerClientStatusFlags update, now: %ld", buf, 0x16u);
    }

    v5 = COLogForCategory(1);
    v6 = v5;
    if ((v3 & 2) != 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = self;
        _os_log_impl(&dword_244328000, v6, OS_LOG_TYPE_DEFAULT, "%p switching observers to Distributed Timers", buf, 0xCu);
      }

      [(COTimerManager *)self setDtMonitoring:1];
      v7 = [(COTimerManager *)self observers];
      v6 = [v7 registeredNames];

      if ([v6 count])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __35__COTimerManager__updateMonitoring__block_invoke;
        v24[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
        v24[4] = self;
        v8 = [(COTimerManager *)self _remoteInterfaceWithErrorHandler:v24];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = v6;
        obj = v6;
        v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              v14 = COLogForCategory(1);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218242;
                v27 = self;
                v28 = 2112;
                v29 = v13;
                _os_log_debug_impl(&dword_244328000, v14, OS_LOG_TYPE_DEBUG, "%p removing observer %@ from coordinated", buf, 0x16u);
              }

              v15 = [(COTimerManager *)self memento];
              v19[0] = MEMORY[0x277D85DD0];
              v19[1] = 3221225472;
              v19[2] = __35__COTimerManager__updateMonitoring__block_invoke_138;
              v19[3] = &unk_278E12AA8;
              v19[4] = v13;
              v19[5] = self;
              [v8 removeObserverForNotificationName:v13 asAccessory:v15 withCallback:v19];

              ++v12;
            }

            while (v10 != v12);
            v10 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v10);
        }

        v6 = v17;
      }

      else
      {
        v8 = COLogForCategory(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [COAlarmManager _updateMonitoring];
        }
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmManager _updateMonitoring];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __35__COTimerManager__updateMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35__COTimerManager__updateMonitoring__block_invoke_cold_1(a1);
  }
}

void __35__COTimerManager__updateMonitoring__block_invoke_138(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v14 = 134218498;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      v8 = "%p failed to remove observer for %@ from coordinated: %@";
      v9 = v4;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
    }
  }

  else if (v5)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = 134218242;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v8 = "%p removed observer for %@ from coordinated";
    v9 = v4;
    v10 = 22;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_timersForAccessory:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = arc4random();
  v7 = COLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 uniqueIdentifier];
    v9 = [(COTimerManager *)self dtClient];
    *buf = 134218754;
    v39 = self;
    v40 = 1024;
    v41 = v6;
    v42 = 2114;
    v43 = v8;
    v44 = 2048;
    v45 = v9;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p (%u) retrieving timers for %{public}@ [DT: %p]", buf, 0x26u);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __38__COTimerManager__timersForAccessory___block_invoke;
  v35[3] = &unk_278E12AD0;
  v37 = v6;
  v10 = v5;
  v36 = v10;
  v11 = MEMORY[0x245D5F6A0](v35);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __38__COTimerManager__timersForAccessory___block_invoke_139;
  v32[3] = &unk_278E13468;
  v34 = v6;
  v12 = v10;
  v33 = v12;
  v13 = MEMORY[0x245D5F6A0](v32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __38__COTimerManager__timersForAccessory___block_invoke_141;
  v28[3] = &unk_278E12B68;
  v28[4] = self;
  v14 = v11;
  v30 = v14;
  v15 = v4;
  v29 = v15;
  v16 = v13;
  v31 = v16;
  v17 = MEMORY[0x245D5F6A0](v28);
  v18 = [(COTimerManager *)self dtClient];

  if (v18)
  {
    v19 = [(COTimerManager *)self dtClient];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__COTimerManager__timersForAccessory___block_invoke_3;
    v23[3] = &unk_278E12B90;
    v27 = v6;
    v24 = v17;
    v25 = v14;
    v26 = v16;
    [v19 fetchTimersWithCompletionHandler:v23];
  }

  else
  {
    v17[2](v17);
  }

  v20 = v12;

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void __38__COTimerManager__timersForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__COTimerManager__timersForAccessory___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) finishWithError:v3];
}

void __38__COTimerManager__timersForAccessory___block_invoke_139(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%u: retrieving timers done: %@", v7, 0x12u);
  }

  [*(a1 + 32) finishWithResult:v3];
  v6 = *MEMORY[0x277D85DE8];
}

void __38__COTimerManager__timersForAccessory___block_invoke_141(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteInterfaceWithErrorHandler:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) instanceID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__COTimerManager__timersForAccessory___block_invoke_2;
  v5[3] = &unk_278E12B40;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 timersAsAccessory:v3 asInstance:v4 withCallback:v5];
}

uint64_t __38__COTimerManager__timersForAccessory___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __38__COTimerManager__timersForAccessory___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 8 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"DTError"), v8, v9))
    {
      v10 = COLogForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 56);
        v14[0] = 67109120;
        v14[1] = v11;
        _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", v14, 8u);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = TimersForDTTimers(v5);
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canDispatchForAssociatedAccessory
{
  v3 = COLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(COTimerManager *)self _canDispatchForAssociatedAccessory];
  }

  v4 = [(COTimerManager *)self dtClient];

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [MEMORY[0x277D05810] statusFlags];
  if (v5)
  {
    v7 = COLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [COAlarmManager _canDispatchForAssociatedAccessory];
    }

    v9 = 0;
  }

  else
  {
    if ((v5 & 2) == 0)
    {
      v6 = COLogForCategory(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [COAlarmManager _canDispatchForAssociatedAccessory];
      }

LABEL_9:
      v7 = [(COTimerManager *)self accessory];
      v8 = [(COTimerManager *)self instanceID];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = (v7 | v8) == 0;
      if (v7 | v8)
      {
        v10 = COLogForCategory(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [COAlarmManager _canDispatchForAssociatedAccessory];
        }

        v11 = [(COTimerManager *)self provider];
        v12 = [v11 timerManagerServiceConnection];

        v13 = [(COTimerManager *)self _remoteInterfaceWithErrorHandler:&__block_literal_global_144];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __52__COTimerManager__canDispatchForAssociatedAccessory__block_invoke_2;
        v20[3] = &unk_278E12CE8;
        v20[4] = &v21;
        v20[5] = self;
        v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v20];
        v15 = [(COTimerManager *)self memento];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __52__COTimerManager__canDispatchForAssociatedAccessory__block_invoke_145;
        v19[3] = &unk_278E12D10;
        v19[4] = &v21;
        [v14 canDispatchAsAccessory:v15 asInstance:v8 reply:v19];

        v9 = *(v22 + 24);
      }

      else
      {
        v9 = 1;
      }

      _Block_object_dispose(&v21, 8);

      goto LABEL_20;
    }

    v16 = [(COTimerManager *)self dtClient];
    v17 = [v16 error];
    v9 = v17 == 0;

    v7 = COLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmManager _canDispatchForAssociatedAccessory];
    }
  }

LABEL_20:

  return v9 & 1;
}

void __52__COTimerManager__canDispatchForAssociatedAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__COAlarmManager__canDispatchForAssociatedAccessory__block_invoke_2_cold_1(a1);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (void)_handleNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [v4 userInfo];
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p forwarding notification %@: %@", &v10, 0x20u);
  }

  v8 = [(COTimerManager *)self observers];
  [v8 postNotification:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)postNotificationName:(id)a3 withUserInfo:(id)a4 callback:(id)a5
{
  v8 = MEMORY[0x277CCAB88];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithName:v11 object:self userInfo:v10];

  [(COTimerManager *)self _handleNotification:v12];
  v9[2](v9, 0);
}

- (id)timers
{
  v3 = [(COTimerManager *)self memento];
  v4 = [(COTimerManager *)self _timersForAccessory:v3];

  return v4;
}

- (id)timersForAccessory:(id)a3
{
  v4 = a3;
  v5 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:v4];

  v6 = [(COTimerManager *)self _timersForAccessory:v5];

  return v6;
}

- (id)timersForAccessories:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = arc4random();
  v7 = COLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 count];
    v9 = [(COTimerManager *)self dtClient];
    *buf = 134219010;
    v40 = self;
    v41 = 1024;
    v42 = v6;
    v43 = 2048;
    v44 = v8;
    v45 = 2114;
    v46 = v4;
    v47 = 2048;
    v48 = v9;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p (%u) retrieving timers for %ld:%{public}@ [DT: %p]", buf, 0x30u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__COTimerManager_timersForAccessories___block_invoke;
  v36[3] = &unk_278E12AD0;
  v38 = v6;
  v10 = v5;
  v37 = v10;
  v11 = MEMORY[0x245D5F6A0](v36);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__COTimerManager_timersForAccessories___block_invoke_147;
  v33[3] = &unk_278E12BB8;
  v35 = v6;
  v12 = v10;
  v34 = v12;
  v13 = MEMORY[0x245D5F6A0](v33);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__COTimerManager_timersForAccessories___block_invoke_149;
  v29[3] = &unk_278E12B68;
  v29[4] = self;
  v14 = v11;
  v31 = v14;
  v15 = v4;
  v30 = v15;
  v16 = v13;
  v32 = v16;
  v17 = MEMORY[0x245D5F6A0](v29);
  v18 = [(COTimerManager *)self dtClient];

  if (v18)
  {
    v19 = [(COTimerManager *)self dtClient];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__COTimerManager_timersForAccessories___block_invoke_5;
    v23[3] = &unk_278E12C50;
    v28 = v6;
    v25 = v17;
    v26 = v14;
    v24 = v15;
    v27 = v16;
    [v19 fetchTimersWithCompletionHandler:v23];
  }

  else
  {
    v17[2](v17);
  }

  v20 = v12;

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void __39__COTimerManager_timersForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__COTimerManager__timersForAccessory___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) finishWithError:v3];
}

void __39__COTimerManager_timersForAccessories___block_invoke_147(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7[0] = 67109378;
    v7[1] = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_244328000, v4, OS_LOG_TYPE_DEFAULT, "%u: retrieving timers done: %@", v7, 0x12u);
  }

  [*(a1 + 32) finishWithResult:v3];
  v6 = *MEMORY[0x277D85DE8];
}

void __39__COTimerManager_timersForAccessories___block_invoke_149(id *a1)
{
  v2 = [a1[4] _remoteInterfaceWithErrorHandler:a1[6]];
  v3 = [a1[5] na_map:&__block_literal_global_152];
  v4 = [a1[4] memento];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__COTimerManager_timersForAccessories___block_invoke_3;
  v5[3] = &unk_278E12C28;
  v7 = a1[6];
  v6 = a1[5];
  v8 = a1[7];
  [v2 timersAsAccessory:v4 forAccessories:v3 callback:v5];
}

COHomeKitAccessoryMemento *__39__COTimerManager_timersForAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[COHomeKitAccessoryMemento alloc] initWithHomeKitAccessory:v2];

  return v3;
}

void __39__COTimerManager_timersForAccessories___block_invoke_3(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v7 = a1[4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__COTimerManager_timersForAccessories___block_invoke_4;
    v11[3] = &unk_278E12C00;
    v12 = v5;
    v13 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v11];
    (*(a1[6] + 16))(a1[6], v8, v9, v10);
  }
}

void __39__COTimerManager_timersForAccessories___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [*(a1 + 40) setObject:v6 forKey:v7];
  }
}

void __39__COTimerManager_timersForAccessories___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 8 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"DTError"), v8, v9))
    {
      v10 = COLogForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 64);
        *buf = 67109120;
        v24 = v11;
        _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%u: falling back to coordination", buf, 8u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = TimersForDTTimers(v5);
    v13 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v14 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__COTimerManager_timersForAccessories___block_invoke_156;
    v20[3] = &unk_278E12C00;
    v21 = v13;
    v22 = v12;
    v15 = v12;
    v16 = v13;
    [v14 enumerateObjectsUsingBlock:v20];
    (*(*(a1 + 56) + 16))(*(a1 + 56), v16, v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)timersForAccessoryMementos:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = [(COTimerManager *)self dtClient];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:MEMORY[0x277CBEC10]];
    [v5 finishWithError:v7];
    v8 = v5;
  }

  else
  {
    v9 = COLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 count];
      v11 = [v4 na_map:&__block_literal_global_160];
      v12 = [(COTimerManager *)self cluster];
      *buf = 134218754;
      v28 = self;
      v29 = 2048;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p retrieving timers for %ld:%@ in %@...", buf, 0x2Au);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__COTimerManager_timersForAccessoryMementos___block_invoke_161;
    v24[3] = &unk_278E12AA8;
    v26 = self;
    v13 = v5;
    v25 = v13;
    v14 = [(COTimerManager *)self _remoteInterfaceWithErrorHandler:v24];
    v15 = [(COTimerManager *)self memento];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__COTimerManager_timersForAccessoryMementos___block_invoke_162;
    v20[3] = &unk_278E12CC0;
    v23 = self;
    v21 = v4;
    v16 = v13;
    v22 = v16;
    [v14 timersAsAccessory:v15 forAccessories:v21 callback:v20];

    v17 = v16;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

void __45__COTimerManager_timersForAccessoryMementos___block_invoke_161(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__COTimerManager_timersForAccessoryMementos___block_invoke_161_cold_1(a1);
  }

  [*(a1 + 32) finishWithError:v3];
}

void __45__COTimerManager_timersForAccessoryMementos___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = COLogForCategory(1);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__COTimerManager_timersForAccessoryMementos___block_invoke_162_cold_1(a1);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 134218242;
      v21 = v9;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_244328000, v8, OS_LOG_TYPE_DEFAULT, "%p returned %@", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = *(a1 + 32);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__COTimerManager_timersForAccessoryMementos___block_invoke_164;
    v17 = &unk_278E12C98;
    v18 = v5;
    v19 = v10;
    v12 = v10;
    [v11 enumerateObjectsUsingBlock:&v14];
    [*(a1 + 40) finishWithResult:{v12, v14, v15, v16, v17}];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __45__COTimerManager_timersForAccessoryMementos___block_invoke_164(uint64_t a1, void *a2)
{
  v4 = [a2 uniqueIdentifier];
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

- (id)addTimer:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__COTimerManager_addTimer___block_invoke_2;
  v8[3] = &unk_278E13490;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(COTimerManager *)self _sendRequestWithName:@"add" forTimer:v5 distributedTimers:&__block_literal_global_171 coordination:v8];

  return v6;
}

void __27__COTimerManager_addTimer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 memento];
  v9 = [*(a1 + 40) instanceID];
  [v8 addTimer:v5 asAccessory:v10 asInstance:v9 withCallback:v7];
}

- (id)updateTimer:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__COTimerManager_updateTimer___block_invoke_2;
  v8[3] = &unk_278E13490;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(COTimerManager *)self _sendRequestWithName:@"update" forTimer:v5 distributedTimers:&__block_literal_global_177 coordination:v8];

  return v6;
}

void __30__COTimerManager_updateTimer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 memento];
  [v7 updateTimer:v4 asAccessory:v8 withCallback:v6];
}

- (id)removeTimer:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__COTimerManager_removeTimer___block_invoke_2;
  v8[3] = &unk_278E13490;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(COTimerManager *)self _sendRequestWithName:@"remove" forTimer:v5 distributedTimers:&__block_literal_global_182_0 coordination:v8];

  return v6;
}

void __30__COTimerManager_removeTimer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 memento];
  [v7 removeTimer:v4 asAccessory:v8 withCallback:v6];
}

- (id)dismissTimerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  v6 = [objc_alloc(MEMORY[0x277D29730]) initWithIdentifier:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__COTimerManager_dismissTimerWithIdentifier___block_invoke_2;
  v10[3] = &unk_278E13490;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(COTimerManager *)self _sendRequestWithName:@"dismiss" forTimer:v6 distributedTimers:&__block_literal_global_187_0 coordination:v10];

  return v8;
}

void __45__COTimerManager_dismissTimerWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 memento];
  [v7 dismissTimerWithIdentifier:v4 asAccessory:v8 withCallback:v6];
}

- (id)addObserverForName:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = COLogForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218242;
    v22 = self;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_244328000, v11, OS_LOG_TYPE_DEFAULT, "%p adding observer for %@", &v21, 0x16u);
  }

  v12 = [(COTimerManager *)self observers];
  v13 = [v12 registeredNames];
  v14 = [v12 addObserverForName:v8 observable:self queue:v10 usingBlock:v9];

  [(COTimerManager *)self _activateDistributedTimersMonitoring];
  if (![(COTimerManager *)self dtMonitoring])
  {
    v15 = COLogForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218242;
      v22 = self;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p using Coordination for observer %@", &v21, 0x16u);
    }

    v16 = [v13 containsObject:v8];
    v17 = COLogForCategory(1);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v18)
      {
        [COTimerManager addObserverForName:queue:usingBlock:];
      }
    }

    else
    {
      if (v18)
      {
        [COTimerManager addObserverForName:queue:usingBlock:];
      }

      [(COTimerManager *)self _registerObserverWithName:v8];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)removeObserver:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = self;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p removing observer...", buf, 0xCu);
  }

  v6 = [(COTimerManager *)self observers];
  [v6 removeObserver:v4];
  if (![(COTimerManager *)self dtMonitoring])
  {
    v7 = [v4 name];
    v8 = [v6 registeredNames];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      v10 = COLogForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [COTimerManager removeObserver:];
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __33__COTimerManager_removeObserver___block_invoke;
      v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v17[4] = self;
      v11 = [(COTimerManager *)self _remoteInterfaceWithErrorHandler:v17];
      v12 = [(COTimerManager *)self memento];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __33__COTimerManager_removeObserver___block_invoke_188;
      v14[3] = &unk_278E12AA8;
      v16 = self;
      v15 = v7;
      [v11 removeObserverForNotificationName:v15 asAccessory:v12 withCallback:v14];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __33__COTimerManager_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __35__COTimerManager__updateMonitoring__block_invoke_cold_1(a1);
  }
}

void __33__COTimerManager_removeObserver___block_invoke_188(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__COTimerManager_removeObserver___block_invoke_188_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p removed last observer for %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_registerObserverWithName:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = COLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v22 = self;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p registering observer with service for %@", buf, 0x16u);
  }

  v6 = [(COTimerManager *)self accessory];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = _COAssociatedAccessories(v6);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__COTimerManager__registerObserverWithName___block_invoke;
    v19[3] = &unk_278E12D80;
    v9 = v7;
    v20 = v9;
    [v8 enumerateObjectsUsingBlock:v19];
  }

  else
  {
    v9 = 0;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__COTimerManager__registerObserverWithName___block_invoke_2;
  v18[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v18[4] = self;
  v10 = [(COTimerManager *)self _remoteInterfaceWithErrorHandler:v18];
  v11 = [(COTimerManager *)self memento];
  v12 = [(COTimerManager *)self instanceID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__COTimerManager__registerObserverWithName___block_invoke_191;
  v15[3] = &unk_278E12AA8;
  v16 = v4;
  v17 = self;
  v13 = v4;
  [v10 addObserverForNotificationName:v13 asAccessory:v11 asInstance:v12 constraints:v9 withCallback:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __44__COTimerManager__registerObserverWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

void __44__COTimerManager__registerObserverWithName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__COTimerManager__registerObserverWithName___block_invoke_2_cold_1(a1);
  }
}

void __44__COTimerManager__registerObserverWithName___block_invoke_191(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = COLogForCategory(1);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__COTimerManager__registerObserverWithName___block_invoke_191_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p added timer observer for %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

void __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "%p connection to timer service interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__COTimerManager__remoteInterfaceWithErrorHandler___block_invoke_127_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_244328000, v0, v1, "%p connection to timer service invalidated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__COTimerManager__sendRequestWithName_forTimer_distributedTimers_coordination___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) timerID];
  v9[0] = 67109890;
  v9[1] = v5;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&dword_244328000, a3, OS_LOG_TYPE_ERROR, "%u: %{public}@ timer %{public}@ failed: %@", v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDTTimerClientEvent:dtTimer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_244328000, v0, v1, "%p ignoring Distributed Timers non-timer event", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__COTimerManager__updateMonitoring__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __38__COTimerManager__timersForAccessory___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_canDispatchForAssociatedAccessory
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a1 dtClient];
  v5 = [a1 dtClient];
  v6 = [v5 error];
  v7 = "yes";
  v9 = 134218498;
  v10 = a1;
  if (!v6)
  {
    v7 = "no";
  }

  v11 = 2048;
  v12 = v4;
  v13 = 2080;
  v14 = v7;
  _os_log_debug_impl(&dword_244328000, a2, OS_LOG_TYPE_DEBUG, "%p _canDispatchForAssociatedAccessory: %p, %s", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __45__COTimerManager_timersForAccessoryMementos___block_invoke_161_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __45__COTimerManager_timersForAccessoryMementos___block_invoke_162_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForName:queue:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForName:queue:usingBlock:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __33__COTimerManager_removeObserver___block_invoke_188_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__COTimerManager__registerObserverWithName___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __44__COTimerManager__registerObserverWithName___block_invoke_191_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

@end