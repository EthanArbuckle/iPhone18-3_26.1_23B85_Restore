@interface DBProcessMonitor
- (DBProcessMonitor)init;
- (void)_appStateUpdated:(id)a3 processHandle:(id)a4;
- (void)_handleDeathWithIdentifier:(id)a3 isCrash:(BOOL)a4 pid:(int)a5;
- (void)_startMonitoringProcess;
- (void)addObserver:(id)a3;
- (void)invalidate;
@end

@implementation DBProcessMonitor

void __43__DBProcessMonitor__startMonitoringProcess__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _appStateUpdated:v6 processHandle:v7];
}

- (DBProcessMonitor)init
{
  v9.receiver = self;
  v9.super_class = DBProcessMonitor;
  v2 = [(DBProcessMonitor *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF89C0]);
    v4 = [v3 initWithProtocol:&unk_285ABBDE0 callbackQueue:MEMORY[0x277D85CD0]];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    handleMapTable = v2->_handleMapTable;
    v2->_handleMapTable = v6;

    [(DBProcessMonitor *)v2 _startMonitoringProcess];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBProcessMonitor *)self observers];
  [v5 addObserver:v4];
}

- (void)_startMonitoringProcess
{
  v3 = [(DBProcessMonitor *)self processMonitor];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = +[DBApplicationController sharedInstance];
    v6 = [v5 allApplications];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__DBProcessMonitor__startMonitoringProcess__block_invoke;
    v18[3] = &unk_278F02650;
    v7 = v4;
    v19 = v7;
    [v6 enumerateObjectsUsingBlock:v18];

    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D46F80];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __43__DBProcessMonitor__startMonitoringProcess__block_invoke_2;
    v14 = &unk_278F037F0;
    v9 = v7;
    v15 = v9;
    objc_copyWeak(&v16, &location);
    v10 = [v8 monitorWithConfiguration:&v11];
    [(DBProcessMonitor *)self setProcessMonitor:v10, v11, v12, v13, v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __43__DBProcessMonitor__startMonitoringProcess__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D46FA0];
  v5 = [a2 bundleIdentifier];
  v4 = [v3 predicateMatchingBundleIdentifier:v5];
  [v2 addObject:v4];
}

void __43__DBProcessMonitor__startMonitoringProcess__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setServiceClass:33];
  [v3 setPredicates:*(a1 + 32)];
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v3 setStateDescriptor:v4];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__DBProcessMonitor__startMonitoringProcess__block_invoke_3;
  v5[3] = &unk_278F037C8;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 setUpdateHandler:v5];
  objc_destroyWeak(&v6);
}

- (void)_handleDeathWithIdentifier:(id)a3 isCrash:(BOOL)a4 pid:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = DBLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromBOOL();
    v18 = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    v22 = 1026;
    v23 = v5;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Observed death of process: %{public}@, crashed: %{public}@, pid: %{public}d", &v18, 0x1Cu);
  }

  v11 = [(DBProcessMonitor *)self handleMapTable];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = [(DBProcessMonitor *)self handleMapTable];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v14 removeObjectForKey:v15];
  }

  v16 = [(DBProcessMonitor *)self observers];
  [v16 processMonitor:self shouldHandleDeathOfBundleIdentifier:v8 isCrash:v6];

  v17 = [(DBProcessMonitor *)self observers];
  [v17 processMonitor:self didHandleDeathOfBundleIdentifier:v8];
}

- (void)_appStateUpdated:(id)a3 processHandle:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 state];
  v9 = [v8 isRunning];

  if (v9)
  {
    v10 = [(DBProcessMonitor *)self handleMapTable];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "pid")}];
    v12 = [v10 objectForKey:v11];

    if (v12 == v7)
    {
      v19 = DBLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v7 bundle];
        v21 = [v20 identifier];
        *buf = 138412290;
        v29 = v21;
        _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "already have handle for process: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v13 = DBLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 bundle];
        v15 = [v14 identifier];
        v16 = [v7 pid];
        *buf = 138543618;
        v29 = v15;
        v30 = 1026;
        v31 = v16;
        _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Now monitoring process death for identifier: %{public}@, pid: %{public}d", buf, 0x12u);
      }

      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __51__DBProcessMonitor__appStateUpdated_processHandle___block_invoke;
      v25 = &unk_278F03818;
      objc_copyWeak(&v26, &location);
      [v7 monitorForDeath:&v22];
      v17 = [(DBProcessMonitor *)self handleMapTable:v22];
      v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "pid")}];
      [v17 setObject:v7 forKey:v18];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }
}

void __51__DBProcessMonitor__appStateUpdated_processHandle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 bundle];
  v8 = [v7 identifier];
  v9 = [v5 status];

  v10 = [v9 isCrash];
  v11 = [v6 pid];

  [WeakRetained _handleDeathWithIdentifier:v8 isCrash:v10 pid:v11];
}

- (void)invalidate
{
  v3 = [(DBProcessMonitor *)self processMonitor];
  [v3 invalidate];

  [(DBProcessMonitor *)self setProcessMonitor:0];
}

@end