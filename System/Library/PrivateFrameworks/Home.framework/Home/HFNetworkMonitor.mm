@interface HFNetworkMonitor
+ (id)sharedInstance;
- (BOOL)isNetworkAvailable;
- (BOOL)isNetworkExpensive;
- (HFNetworkMonitor)init;
- (id)_observers;
- (unint64_t)_addObserver:(id)observer;
- (unint64_t)_removeObserver:(id)observer;
- (void)_notifyObserver:(id)observer networkIsAvailable:(BOOL)available;
- (void)_notifyObserver:(id)observer networkIsExpensive:(BOOL)expensive;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation HFNetworkMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HFNetworkMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03C78 != -1)
  {
    dispatch_once(&qword_280E03C78, block);
  }

  v2 = _MergedGlobals_316;

  return v2;
}

void __34__HFNetworkMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_316;
  _MergedGlobals_316 = v1;
}

- (HFNetworkMonitor)init
{
  v17.receiver = self;
  v17.super_class = HFNetworkMonitor;
  v2 = [(HFNetworkMonitor *)&v17 init];
  if (v2)
  {
    v3 = nw_path_monitor_create();
    networkPathMonitor = v2->_networkPathMonitor;
    v2->_networkPathMonitor = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.Home.HFNetworkMonitor.accessQueue", v5);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v6;

    networkPathMonitor = [(HFNetworkMonitor *)v2 networkPathMonitor];
    accessQueue = [(HFNetworkMonitor *)v2 accessQueue];
    nw_path_monitor_set_queue(networkPathMonitor, accessQueue);

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    objc_initWeak(&location, v2);
    networkPathMonitor2 = [(HFNetworkMonitor *)v2 networkPathMonitor];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __24__HFNetworkMonitor_init__block_invoke;
    v14[3] = &unk_277E011E0;
    objc_copyWeak(&v15, &location);
    nw_path_monitor_set_update_handler(networkPathMonitor2, v14);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __24__HFNetworkMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessQueue];
  dispatch_assert_queue_V2(v5);

  status = nw_path_get_status(v3);
  if ([WeakRetained currentNetworkPathStatus] != status)
  {
    [WeakRetained setCurrentNetworkPathStatus:status];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [WeakRetained _observers];
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [WeakRetained _notifyObserver:*(*(&v28 + 1) + 8 * v11++) networkIsAvailable:status == 1];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }
  }

  v12 = MEMORY[0x20F327220](v3);
  v13 = [WeakRetained currentNetworkPathIsExpensive];
  if (!v13 || (v14 = v13, [WeakRetained currentNetworkPathIsExpensive], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v14, v12 != v16))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [WeakRetained setCurrentNetworkPathIsExpensive:v17];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [WeakRetained _observers];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        v22 = 0;
        do
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [WeakRetained _notifyObserver:*(*(&v24 + 1) + 8 * v22++) networkIsExpensive:v12];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = [(HFNetworkMonitor *)self _addObserver:observerCopy];
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HFNetworkMonitor_addObserver___block_invoke;
  block[3] = &unk_277DF37C0;
  v9 = observerCopy;
  v10 = v5;
  block[4] = self;
  v7 = observerCopy;
  dispatch_async(accessQueue, block);
}

void __32__HFNetworkMonitor_addObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startMonitoring];
  if (*(a1 + 48) > 1uLL || [*(a1 + 32) hasMonitoredNetworkBefore])
  {
    [*(a1 + 32) _notifyObserver:*(a1 + 40) networkIsAvailable:{objc_msgSend(*(a1 + 32), "currentNetworkPathStatus") == 1}];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = [v3 currentNetworkPathIsExpensive];
    [v3 _notifyObserver:v2 networkIsExpensive:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (void)removeObserver:(id)observer
{
  v4 = [(HFNetworkMonitor *)self _removeObserver:observer];
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__HFNetworkMonitor_removeObserver___block_invoke;
  v6[3] = &unk_277DF5CD0;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(accessQueue, v6);
}

uint64_t __35__HFNetworkMonitor_removeObserver___block_invoke(uint64_t result)
{
  if (!*(result + 40))
  {
    return [*(result + 32) _stopMonitoring];
  }

  return result;
}

- (BOOL)isNetworkAvailable
{
  selfCopy = self;
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(HFNetworkMonitor *)selfCopy accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HFNetworkMonitor_isNetworkAvailable__block_invoke;
  block[3] = &unk_277E01208;
  block[5] = &v8;
  block[6] = a2;
  block[4] = selfCopy;
  dispatch_sync(accessQueue2, block);

  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

uint64_t __38__HFNetworkMonitor_isNetworkAvailable__block_invoke(uint64_t a1)
{
  if (!+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([*(a1 + 32) isMonitoringNetwork] & 1) == 0)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HFNetworkMonitor.m" lineNumber:117 description:@"Not actively monitoring network. Add an observer to gain accurate data."];
  }

  result = [*(a1 + 32) currentNetworkPathStatus];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

- (BOOL)isNetworkExpensive
{
  selfCopy = self;
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(HFNetworkMonitor *)selfCopy accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HFNetworkMonitor_isNetworkExpensive__block_invoke;
  block[3] = &unk_277E01208;
  block[5] = &v8;
  block[6] = a2;
  block[4] = selfCopy;
  dispatch_sync(accessQueue2, block);

  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

void __38__HFNetworkMonitor_isNetworkExpensive__block_invoke(uint64_t a1)
{
  if (!+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ([*(a1 + 32) isMonitoringNetwork] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HFNetworkMonitor.m" lineNumber:131 description:@"Not actively monitoring network. Add an observer to gain accurate data."];
  }

  v3 = [*(a1 + 32) currentNetworkPathIsExpensive];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
}

- (unint64_t)_addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  v5 = [(NSHashTable *)self->_observers count];
  os_unfair_lock_unlock(&self->_observersLock);
  return v5;
}

- (unint64_t)_removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  v5 = [(NSHashTable *)self->_observers count];
  os_unfair_lock_unlock(&self->_observersLock);
  return v5;
}

- (id)_observers
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observersLock);

  return v3;
}

- (void)_startMonitoring
{
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (![(HFNetworkMonitor *)self isMonitoringNetwork])
  {
    networkPathMonitor = [(HFNetworkMonitor *)self networkPathMonitor];
    nw_path_monitor_start(networkPathMonitor);

    [(HFNetworkMonitor *)self setIsMonitoringNetwork:1];
  }
}

- (void)_stopMonitoring
{
  accessQueue = [(HFNetworkMonitor *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(HFNetworkMonitor *)self isMonitoringNetwork])
  {
    networkPathMonitor = [(HFNetworkMonitor *)self networkPathMonitor];
    nw_path_monitor_cancel(networkPathMonitor);

    [(HFNetworkMonitor *)self setIsMonitoringNetwork:0];

    [(HFNetworkMonitor *)self setHasMonitoredNetworkBefore:1];
  }
}

- (void)_notifyObserver:(id)observer networkIsAvailable:(BOOL)available
{
  availableCopy = available;
  observerCopy = observer;
  if (availableCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy networkDidBecomeAvailable:self];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [observerCopy networkDidBecomeUnavailable:self];
  }
}

- (void)_notifyObserver:(id)observer networkIsExpensive:(BOOL)expensive
{
  expensiveCopy = expensive;
  observerCopy = observer;
  if (expensiveCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [observerCopy networkDidBecomeExpensive:self];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [observerCopy networkDidBecomeInexpensive:self];
  }
}

@end