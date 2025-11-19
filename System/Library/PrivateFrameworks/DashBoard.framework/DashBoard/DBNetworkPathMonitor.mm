@interface DBNetworkPathMonitor
- (DBNetworkPathMonitor)init;
- (id)description;
- (void)_networkPathUpdated:(id)a3;
- (void)_startNetworkPathMonitorNow;
- (void)_stopNetworkPathMonitorNow;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)startNetworkPathMonitorWithIdentifier:(id)a3;
- (void)stopNetworkPathMonitorWithIdentifier:(id)a3;
@end

@implementation DBNetworkPathMonitor

void __51__DBNetworkPathMonitor__startNetworkPathMonitorNow__block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _networkPathUpdated:v3];
}

- (id)description
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(DBNetworkPathMonitor *)self activeAssertions];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = [(DBNetworkPathMonitor *)self networkPath];
  if (v10 > 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_278F039C0[v10];
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = @"YES";
  if ([(DBNetworkPathMonitor *)self isNetworkReachable])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (![(DBNetworkPathMonitor *)self networkPathMonitorActive])
  {
    v15 = @"NO";
  }

  v17 = [v3 componentsJoinedByString:{@", "}];
  v18 = [v12 stringWithFormat:@"<%@: %p path=%@ reachable=%@ active=%@ assertions=[%@]>", v14, self, v11, v16, v15, v17];

  return v18;
}

- (DBNetworkPathMonitor)init
{
  v13.receiver = self;
  v13.super_class = DBNetworkPathMonitor;
  v2 = [(DBNetworkPathMonitor *)&v13 init];
  if (v2)
  {
    v3 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [DBNetworkPathMonitor init];
    }

    v4 = objc_opt_new();
    activeAssertions = v2->_activeAssertions;
    v2->_activeAssertions = v4;

    v6 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285ADE570];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INTERACTIVE, 0);

    v10 = dispatch_queue_create("com.apple.DashBoard.NetworkPathMonitor", v9);
    workQueue = v2->_workQueue;
    v2->_workQueue = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBNetworkPathMonitor dealloc];
  }

  [(DBNetworkPathMonitor *)self _stopNetworkPathMonitorNow];
  v4.receiver = self;
  v4.super_class = DBNetworkPathMonitor;
  [(DBNetworkPathMonitor *)&v4 dealloc];
}

- (void)startNetworkPathMonitorWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBNetworkPathMonitor *)self activeAssertions];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DBNetworkPathMonitor startNetworkPathMonitorWithIdentifier:];
    }

    v8 = [(DBNetworkPathMonitor *)self activeAssertions];
    [v8 addObject:v4];

    if (![(DBNetworkPathMonitor *)self networkPathMonitorActive])
    {
      v9 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [DBNetworkPathMonitor startNetworkPathMonitorWithIdentifier:];
      }

      [(DBNetworkPathMonitor *)self _startNetworkPathMonitorNow];
    }
  }
}

- (void)stopNetworkPathMonitorWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBNetworkPathMonitor *)self activeAssertions];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DBNetworkPathMonitor stopNetworkPathMonitorWithIdentifier:];
    }

    v8 = [(DBNetworkPathMonitor *)self activeAssertions];
    [v8 removeObject:v4];

    if ([(DBNetworkPathMonitor *)self networkPathMonitorActive])
    {
      v9 = [(DBNetworkPathMonitor *)self activeAssertions];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = DBLogForCategory(9uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [DBNetworkPathMonitor stopNetworkPathMonitorWithIdentifier:];
        }

        [(DBNetworkPathMonitor *)self _stopNetworkPathMonitorNow];
      }
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBNetworkPathMonitor *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBNetworkPathMonitor *)self observers];
  [v5 removeObserver:v4];
}

- (void)_startNetworkPathMonitorNow
{
  v3 = [(DBNetworkPathMonitor *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DBNetworkPathMonitor__startNetworkPathMonitorNow__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v3, block);
}

void __51__DBNetworkPathMonitor__startNetworkPathMonitorNow__block_invoke(uint64_t a1)
{
  v2 = nw_path_monitor_create();
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 setPathMonitor:v2];

  v5 = [*v3 pathMonitor];

  if (v5)
  {
    objc_initWeak(&location, *v3);
    v6 = [*v3 pathMonitor];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __51__DBNetworkPathMonitor__startNetworkPathMonitorNow__block_invoke_76;
    v22 = &unk_278F039A0;
    objc_copyWeak(&v23, &location);
    nw_path_monitor_set_update_handler(v6, &v19);

    v7 = [*v3 pathMonitor];
    v8 = [*v3 workQueue];
    nw_path_monitor_set_queue(v7, v8);

    v9 = [*v3 pathMonitor];
    nw_path_monitor_start(v9);

    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    if (evaluator_for_endpoint)
    {
      v11 = nw_path_evaluator_copy_path();
      [*v3 _networkPathUpdated:v11];
    }

    [*v3 setNetworkPathMonitorActive:1];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __51__DBNetworkPathMonitor__startNetworkPathMonitorNow__block_invoke_cold_1(v3, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

- (void)_stopNetworkPathMonitorNow
{
  v3 = [(DBNetworkPathMonitor *)self pathMonitor];

  if (v3)
  {
    v4 = [(DBNetworkPathMonitor *)self pathMonitor];
    nw_path_monitor_cancel(v4);

    [(DBNetworkPathMonitor *)self setPathMonitor:0];
  }

  [(DBNetworkPathMonitor *)self setNetworkPath:0];
}

- (void)_networkPathUpdated:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBNetworkPathMonitor _networkPathUpdated:];
  }

  v6 = [(DBNetworkPathMonitor *)self currentPath];
  is_equal = nw_path_is_equal(v6, v4);

  v8 = [(DBNetworkPathMonitor *)self isNetworkReachable];
  [(DBNetworkPathMonitor *)self setNetworkReachable:(nw_path_get_status(v4) & 0xFFFFFFFD) == 1];
  if (is_equal)
  {
    if (v8 == [(DBNetworkPathMonitor *)self isNetworkReachable])
    {
      goto LABEL_14;
    }

    v9 = [(DBNetworkPathMonitor *)self observers];
    [v9 networkPathMonitor:self didChangeNetworkReachable:{-[DBNetworkPathMonitor isNetworkReachable](self, "isNetworkReachable")}];
  }

  else
  {
    v10 = 1;
    while ((MEMORY[0x24C1CCCF0](v4, (v10 - 1)) & 1) == 0)
    {
      if (++v10 == 6)
      {
        v10 = 1;
        break;
      }
    }

    [(DBNetworkPathMonitor *)self setNetworkPath:v10];
    [(DBNetworkPathMonitor *)self setCurrentPath:v4];
    if (v8 != [(DBNetworkPathMonitor *)self isNetworkReachable])
    {
      v11 = [(DBNetworkPathMonitor *)self observers];
      [v11 networkPathMonitor:self didChangeNetworkReachable:{-[DBNetworkPathMonitor isNetworkReachable](self, "isNetworkReachable")}];
    }

    v9 = [(DBNetworkPathMonitor *)self observers];
    [v9 networkPathMonitorDidChangeNetworkPath:self];
  }

LABEL_14:
  v12 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DBNetworkPathMonitor _networkPathUpdated:];
  }
}

@end