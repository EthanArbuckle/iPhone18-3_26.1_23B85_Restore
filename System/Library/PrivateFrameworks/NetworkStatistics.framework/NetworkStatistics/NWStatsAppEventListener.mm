@interface NWStatsAppEventListener
- (NWAppStateEventListenerDelegate)appStateDelegate;
- (NWStatsAppEventListener)initWithQueue:(id)queue;
- (void)_applicationStateMonitorInit;
- (void)cleanupAppStateMonitor;
- (void)dealloc;
- (void)setAppStateDelegate:(id)delegate;
@end

@implementation NWStatsAppEventListener

void __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained queue];

    if (v10)
    {
      v11 = [v9 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke_3;
      block[3] = &unk_27996DAD0;
      block[4] = v9;
      v13 = v7;
      v14 = v6;
      dispatch_async(v11, block);
    }
  }
}

void __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appStateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 handleStateUpdate:*(a1 + 40) forProcess:*(a1 + 48)];
  }
}

- (NWAppStateEventListenerDelegate)appStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appStateDelegate);

  return WeakRetained;
}

- (void)_applicationStateMonitorInit
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = dlopen("/System/Library/PrivateFrameworks/RunningBoardServices.framework/RunningBoardServices", 4);
  self->_runningBoradDylibHandle = v3;
  if (v3 && (self->_RBSProcessMonitorClass = objc_getClass("RBSProcessMonitor"), self->_RBSProcessPredicateClass = objc_getClass("RBSProcessPredicate"), Class = objc_getClass("RBSProcessStateDescriptor"), self->_RBSProcessStateDescriptorClass = Class, self->_runningBoradDylibHandle) && (v5 = Class, (v6 = self->_RBSProcessMonitorClass) != 0) && self->_RBSProcessPredicateClass && v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke;
    v15[3] = &unk_27996DB20;
    v15[4] = self;
    v7 = [(objc_class *)v6 monitorWithConfiguration:v15];
    appStateMonitor = self->_appStateMonitor;
    self->_appStateMonitor = v7;
  }

  else
  {
    v9 = NStatGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      RBSProcessMonitorClass = self->_RBSProcessMonitorClass;
      RBSProcessPredicateClass = self->_RBSProcessPredicateClass;
      RBSProcessStateDescriptorClass = self->_RBSProcessStateDescriptorClass;
      runningBoradDylibHandle = self->_runningBoradDylibHandle;
      *buf = 134218752;
      v17 = runningBoradDylibHandle;
      v18 = 2048;
      v19 = RBSProcessMonitorClass;
      v20 = 2048;
      v21 = RBSProcessPredicateClass;
      v22 = 2048;
      v23 = RBSProcessStateDescriptorClass;
      _os_log_impl(&dword_25BA3A000, v9, OS_LOG_TYPE_FAULT, "RB Mapping dylib failure handle %p proc monitor %p predicate %p descriptor %p", buf, 0x2Au);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke(id *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  a1 += 4;
  v5 = [v4[4] descriptor];
  [v5 setValues:1];
  [v5 setEndowmentNamespaces:&unk_286D3E558];
  [v3 setStateDescriptor:v5];
  [v3 setEvents:1];
  v11[0] = [*(*a1 + 3) performSelector:NSSelectorFromString(&cfstr_Predicateforsy.isa)];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 setPredicates:v6];

  objc_initWeak(&location, *a1);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NWStatsAppEventListener__applicationStateMonitorInit__block_invoke_2;
  v8[3] = &unk_27996DAF8;
  objc_copyWeak(&v9, &location);
  [v3 setUpdateHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NWStatsAppEventListener *)self cleanupAppStateMonitor];
  v3.receiver = self;
  v3.super_class = NWStatsAppEventListener;
  [(NWStatsAppEventListener *)&v3 dealloc];
}

- (void)cleanupAppStateMonitor
{
  appStateMonitor = self->_appStateMonitor;
  if (appStateMonitor)
  {
    [(RBSProcessMonitor *)appStateMonitor invalidate];
    v4 = self->_appStateMonitor;
    self->_appStateMonitor = 0;
  }
}

- (void)setAppStateDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_appStateDelegate);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appStateDelegate, obj);
    if (obj)
    {
      [(NWStatsAppEventListener *)self _applicationStateMonitorInit];
    }

    else
    {
      [(NWStatsAppEventListener *)self cleanupAppStateMonitor];
    }
  }
}

- (NWStatsAppEventListener)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = NWStatsAppEventListener;
  v6 = [(NWStatsAppEventListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end