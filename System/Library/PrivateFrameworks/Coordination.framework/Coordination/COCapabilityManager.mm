@interface COCapabilityManager
- (COCapabilityManager)init;
- (COCapabilityManager)initWithConnectionProvider:(id)provider;
- (NSArray)observers;
- (NSSet)registeredCapabilities;
- (NSXPCConnection)lastConnection;
- (id)_remoteInterfaceWithErrorHandler:(id)handler;
- (id)addObserverForCapability:(id)capability inCluster:(id)cluster usingBlock:(id)block;
- (void)_lostConnectionToService;
- (void)_notifyObserver:(id)observer available:(BOOL)available;
- (void)_registerCapabililty:(id)capabililty;
- (void)_registerObserver:(id)observer;
- (void)_withLock:(id)lock;
- (void)availabilityChanged:(BOOL)changed ofCapability:(id)capability inCluster:(id)cluster;
- (void)dealloc;
- (void)registerCapability:(id)capability;
- (void)removeObserver:(id)observer;
- (void)setObservers:(id)observers;
- (void)setRegisteredCapabilities:(id)capabilities;
- (void)unregisterCapability:(id)capability;
@end

@implementation COCapabilityManager

- (COCapabilityManager)initWithConnectionProvider:(id)provider
{
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = COCapabilityManager;
  v6 = [(COCapabilityManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_provider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    registeredCapabilities = v7->_registeredCapabilities;
    v7->_registeredCapabilities = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    observers = v7->_observers;
    v7->_observers = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.coordination.COCapabilityManager.observer", v12);
    observerQueue = v7->_observerQueue;
    v7->_observerQueue = v13;

    v15 = COLogForCategory(3);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(COCapabilityManager *)v7 initWithConnectionProvider:providerCopy, v15];
    }
  }

  return v7;
}

- (COCapabilityManager)init
{
  v3 = objc_alloc_init(_COCapabilityManagerConnectionProvider);
  v4 = [(COCapabilityManager *)self initWithConnectionProvider:v3];

  return v4;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__COCapabilityManager_dealloc__block_invoke;
  v4[3] = &unk_278E12430;
  v4[4] = self;
  [(COCapabilityManager *)self _withLock:v4];
  v3.receiver = self;
  v3.super_class = COCapabilityManager;
  [(COCapabilityManager *)&v3 dealloc];
}

void __30__COCapabilityManager_dealloc__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) lastConnection];
  v1 = [v3 co_originalInterruptionHandler];
  [v3 setInterruptionHandler:v1];

  v2 = [v3 co_originalInvalidationHandler];
  [v3 setInvalidationHandler:v2];

  [v3 invalidate];
}

- (void)registerCapability:(id)capability
{
  capabilityCopy = capability;
  registeredCapabilities = [(COCapabilityManager *)self registeredCapabilities];
  v6 = [registeredCapabilities containsObject:capabilityCopy];

  if (v6)
  {
    v7 = COLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityManager registerCapability:];
    }
  }

  else
  {
    registeredCapabilities2 = [(COCapabilityManager *)self registeredCapabilities];
    v9 = [registeredCapabilities2 setByAddingObject:capabilityCopy];

    [(COCapabilityManager *)self setRegisteredCapabilities:v9];
    [(COCapabilityManager *)self _registerCapabililty:capabilityCopy];
  }
}

- (void)unregisterCapability:(id)capability
{
  capabilityCopy = capability;
  registeredCapabilities = [(COCapabilityManager *)self registeredCapabilities];
  if ([registeredCapabilities containsObject:capabilityCopy])
  {
    v6 = [registeredCapabilities mutableCopy];
    [v6 removeObject:capabilityCopy];
    [(COCapabilityManager *)self setRegisteredCapabilities:v6];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__COCapabilityManager_unregisterCapability___block_invoke;
    v10[3] = &unk_278E131D8;
    objc_copyWeak(&v12, &location);
    v7 = capabilityCopy;
    v11 = v7;
    v8 = [(COCapabilityManager *)self _remoteInterfaceWithErrorHandler:v10];
    v9 = COLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [COCapabilityManager unregisterCapability:];
    }

    [v8 unregisterCapability:v7];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = COLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [COCapabilityManager unregisterCapability:];
    }
  }
}

void __44__COCapabilityManager_unregisterCapability___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218498;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to unregister Capability(%@): %@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)addObserverForCapability:(id)capability inCluster:(id)cluster usingBlock:(id)block
{
  blockCopy = block;
  capabilityCopy = capability;
  v10 = [COCluster _clusterForCluster:cluster];
  v11 = [[_COCapabilityObserver alloc] initWithCapability:capabilityCopy cluster:v10 block:blockCopy];

  observers = [(COCapabilityManager *)self observers];
  v13 = [observers mutableCopy];

  [v13 addObject:v11];
  [(COCapabilityManager *)self setObservers:v13];
  v14 = COLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [COCapabilityManager addObserverForCapability:inCluster:usingBlock:];
  }

  [(COCapabilityManager *)self _registerObserver:v11];

  return v11;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(COCapabilityManager *)self observers];
  v6 = [observers indexOfObject:observerCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [observers mutableCopy];
    v9 = [v8 objectAtIndex:v7];
    [v8 removeObjectAtIndex:v7];
    [(COCapabilityManager *)self setObservers:v8];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__COCapabilityManager_removeObserver___block_invoke;
    v14[3] = &unk_278E131D8;
    objc_copyWeak(&v16, &location);
    v15 = observerCopy;
    v10 = [(COCapabilityManager *)self _remoteInterfaceWithErrorHandler:v14];
    v11 = COLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [COCapabilityManager removeObserver:];
    }

    capability = [v9 capability];
    cluster = [v9 cluster];
    [v10 removeObserverForCapability:capability inCluster:cluster];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __38__COCapabilityManager_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218754;
      v9 = WeakRetained;
      v10 = 2048;
      v11 = v7;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to remove Observer(%p/%@): %@", &v8, 0x2Au);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)availabilityChanged:(BOOL)changed ofCapability:(id)capability inCluster:(id)cluster
{
  changedCopy = changed;
  v36 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  clusterCopy = cluster;
  v9 = COLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    selfCopy = self;
    if (changedCopy)
    {
      v10 = 89;
    }

    else
    {
      v10 = 78;
    }

    v30 = 2112;
    v31 = capabilityCopy;
    v32 = 2112;
    v33 = clusterCopy;
    v34 = 1024;
    v35 = v10;
    _os_log_impl(&dword_244328000, v9, OS_LOG_TYPE_DEFAULT, "%p received notification that Capability(%@) in Cluster(%@) is Available(%c)", buf, 0x26u);
  }

  selfCopy2 = self;
  observers = [(COCapabilityManager *)self observers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [observers countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(observers);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        capability = [v16 capability];
        if ([capability isEqualToString:capabilityCopy])
        {
          cluster = [v16 cluster];
          v19 = [cluster isEqual:clusterCopy];

          if (v19)
          {
            [(COCapabilityManager *)selfCopy2 _notifyObserver:v16 available:changedCopy];
          }
        }

        else
        {
        }
      }

      v13 = [observers countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (NSSet)registeredCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__COCapabilityManager_registeredCapabilities__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setRegisteredCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__COCapabilityManager_setRegisteredCapabilities___block_invoke;
  v6[3] = &unk_278E12368;
  v7 = capabilitiesCopy;
  selfCopy = self;
  v5 = capabilitiesCopy;
  [(COCapabilityManager *)self _withLock:v6];
}

uint64_t __49__COCapabilityManager_setRegisteredCapabilities___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != *(*(a1 + 40) + 16))
  {
    result = [result isEqualToSet:?];
    if ((result & 1) == 0)
    {
      v3 = [*(a1 + 32) copy];
      v4 = *(a1 + 40);
      v5 = *(v4 + 16);
      *(v4 + 16) = v3;

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

- (NSArray)observers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__COCapabilityManager_observers__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COCapabilityManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setObservers:(id)observers
{
  observersCopy = observers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__COCapabilityManager_setObservers___block_invoke;
  v6[3] = &unk_278E12368;
  v7 = observersCopy;
  selfCopy = self;
  v5 = observersCopy;
  [(COCapabilityManager *)self _withLock:v6];
}

uint64_t __36__COCapabilityManager_setObservers___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != *(*(a1 + 40) + 24))
  {
    result = [result isEqualToArray:?];
    if ((result & 1) == 0)
    {
      v3 = [*(a1 + 32) copy];
      v4 = *(a1 + 40);
      v5 = *(v4 + 24);
      *(v4 + 24) = v3;

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

- (void)_notifyObserver:(id)observer available:(BOOL)available
{
  availableCopy = available;
  v29 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v7 = COLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (availableCopy)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    capability = [observerCopy capability];
    cluster = [observerCopy cluster];
    *buf = 134219266;
    selfCopy = self;
    v19 = 2048;
    v20 = observerCopy;
    v21 = 2112;
    v22 = observerCopy;
    v23 = 1024;
    v24 = v8;
    v25 = 2112;
    v26 = capability;
    v27 = 2112;
    v28 = cluster;
    _os_log_impl(&dword_244328000, v7, OS_LOG_TYPE_DEFAULT, "%p notifying Observer(%p/%@) of Availability(%c) for Capability(%@) in Cluster(%@)", buf, 0x3Au);
  }

  observerQueue = [(COCapabilityManager *)self observerQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__COCapabilityManager__notifyObserver_available___block_invoke;
  v14[3] = &unk_278E133C0;
  v15 = observerCopy;
  v16 = availableCopy;
  v12 = observerCopy;
  dispatch_async(observerQueue, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_remoteInterfaceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke;
  v7[3] = &unk_278E122F0;
  v7[4] = self;
  v7[5] = &v8;
  [(COCapabilityManager *)self _withLock:v7];
  v5 = [v9[5] remoteObjectProxyWithErrorHandler:handlerCopy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = [v2 capabilityManagerServiceConnection];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [*(a1 + 32) lastConnection];

  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCAE90];
    v9 = &unk_2857B89E8;
    v10 = [v8 interfaceWithProtocol:v9];
    v11 = +[COCluster _allowedClusterClasses];
    [v10 setClasses:v11 forSelector:sel_availabilityChanged_ofCapability_inCluster_ argumentIndex:2 ofReply:0];

    v12 = [[COCapabilityManagerClientInterfaceMediator alloc] initWithCapabilityManager:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setExportedInterface:v10];
    [*(*(*(a1 + 40) + 8) + 40) setExportedObject:v12];
    v13 = &unk_2857BCB50;

    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:v13];

    v15 = +[COCluster _allowedClusterClasses];
    [v14 setClasses:v15 forSelector:sel_addObserverForCapability_inCluster_ argumentIndex:1 ofReply:0];

    v16 = +[COCluster _allowedClusterClasses];
    [v14 setClasses:v16 forSelector:sel_removeObserverForCapability_inCluster_ argumentIndex:1 ofReply:0];

    [*(*(*(a1 + 40) + 8) + 40) setRemoteObjectInterface:v14];
    objc_initWeak(&location, *(a1 + 32));
    v17 = [*(*(*(a1 + 40) + 8) + 40) interruptionHandler];
    v18 = [*(*(*(a1 + 40) + 8) + 40) invalidationHandler];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInterruptionHandler:v17];
    [*(*(*(a1 + 40) + 8) + 40) co_setOriginalInvalidationHandler:v18];
    v19 = *(*(*(a1 + 40) + 8) + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_2;
    v26[3] = &unk_278E128A0;
    v20 = v17;
    v27 = v20;
    objc_copyWeak(&v28, &location);
    [v19 setInterruptionHandler:v26];
    v21 = *(*(*(a1 + 40) + 8) + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_68;
    v23[3] = &unk_278E128A0;
    v22 = v18;
    v24 = v22;
    objc_copyWeak(&v25, &location);
    [v21 setInvalidationHandler:v23];
    [*(a1 + 32) setLastConnection:*(*(*(a1 + 40) + 8) + 40)];
    [*(*(*(a1 + 40) + 8) + 40) resume];
    objc_destroyWeak(&v25);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1(WeakRetained, v4);
    }
  }
}

void __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = COLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_68_cold_1(WeakRetained, v4);
    }
  }
}

- (void)_lostConnectionToService
{
  v29 = *MEMORY[0x277D85DE8];
  observers = [(COCapabilityManager *)self observers];
  registeredCapabilities = [(COCapabilityManager *)self registeredCapabilities];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = observers;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(COCapabilityManager *)self _registerObserver:*(*(&v21 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = registeredCapabilities;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(COCapabilityManager *)self _registerCapabililty:*(*(&v17 + 1) + 8 * v14++), v17];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v12);
  }

  v15 = COLogForCategory(3);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p done restoring state after lost connection to service", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerCapabililty:(id)capabililty
{
  capabililtyCopy = capabililty;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__COCapabilityManager__registerCapabililty___block_invoke;
  v8[3] = &unk_278E131D8;
  objc_copyWeak(&v10, &location);
  v5 = capabililtyCopy;
  v9 = v5;
  v6 = [(COCapabilityManager *)self _remoteInterfaceWithErrorHandler:v8];
  v7 = COLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [COCapabilityManager _registerCapabililty:];
  }

  [v6 registerCapability:v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__COCapabilityManager__registerCapabililty___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218498;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to register Capability(%@): %@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__COCapabilityManager__registerObserver___block_invoke;
  v10[3] = &unk_278E131D8;
  objc_copyWeak(&v12, &location);
  v5 = observerCopy;
  v11 = v5;
  v6 = [(COCapabilityManager *)self _remoteInterfaceWithErrorHandler:v10];
  v7 = COLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [COCapabilityManager _registerObserver:];
  }

  capability = [v5 capability];
  cluster = [v5 cluster];
  [v6 addObserverForCapability:capability inCluster:cluster];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __41__COCapabilityManager__registerObserver___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = COLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218754;
      v9 = WeakRetained;
      v10 = 2048;
      v11 = v7;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_244328000, v5, OS_LOG_TYPE_ERROR, "%p failed to add Observer(%p/%@): %@", &v8, 0x2Au);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)lastConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastConnection);

  return WeakRetained;
}

- (void)initWithConnectionProvider:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 134218242;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_244328000, a3, OS_LOG_TYPE_DEBUG, "%p created with %@ provider", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerCapability:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_244328000, v0, v1, "%p ignoring duplicate registration of Capability(%@)");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCapability:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_244328000, v0, v1, "%p cannot unregister Capability(%@) that is not registered");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCapability:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForCapability:inCluster:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_244328000, a2, OS_LOG_TYPE_ERROR, "%p connection to Capability service interrupted", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__COCapabilityManager__remoteInterfaceWithErrorHandler___block_invoke_68_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_244328000, a2, OS_LOG_TYPE_ERROR, "%p connection to Capability service invalidated", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_registerCapabililty:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerObserver:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end