@interface DMCNetworkMonitor
- (BOOL)deviceMightHaveNetworkStrict:(BOOL)a3;
- (DMCNetworkMonitor)init;
- (id)_interfaceType;
- (void)_evaluateNetwork;
- (void)_notifyRegularClients;
- (void)_notifyStrictClients;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)waitForNetworkWithTimeout:(double)a3 strict:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation DMCNetworkMonitor

- (DMCNetworkMonitor)init
{
  v12.receiver = self;
  v12.super_class = DMCNetworkMonitor;
  v2 = [(DMCNetworkMonitor *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pathEvaluator = v2->_pathEvaluator;
    v2->_pathEvaluator = v3;

    v5 = objc_opt_new();
    cachedCompletionHandlers = v2->_cachedCompletionHandlers;
    v2->_cachedCompletionHandlers = v5;

    v7 = objc_opt_new();
    cachedStrictCompletionHandlers = v2->_cachedStrictCompletionHandlers;
    v2->_cachedStrictCompletionHandlers = v7;

    v9 = dispatch_queue_create("com.apple.DMCNetworkMonitor.worker-queue", 0);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v9;
  }

  return v2;
}

- (void)dealloc
{
  [(DMCNetworkMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = DMCNetworkMonitor;
  [(DMCNetworkMonitor *)&v3 dealloc];
}

- (void)waitForNetworkWithTimeout:(double)a3 strict:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(DMCNetworkMonitor *)self workerQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke;
  v11[3] = &unk_1E7ADCD98;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v10 = v8;
  dispatch_async(v9, v11);
}

void __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) deviceMightHaveNetworkStrict:*(a1 + 56)])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7ADCD48;
    v19 = v21;
    v20 = *(a1 + 48);
    v18 = *(a1 + 40);
    v3 = MEMORY[0x1B2731A20](v17);
    v4 = *(a1 + 48);
    if (v4 > 0.0)
    {
      v5 = dispatch_time(0, (v4 * 1000000000.0));
      v6 = [*(a1 + 32) workerQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_5;
      block[3] = &unk_1E7ADCD70;
      v16 = v3;
      dispatch_after(v5, v6, block);
    }

    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_INFO, "DMCNetworkMonitor: Waiting for network...", buf, 2u);
    }

    v8 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v9 = [v8 cachedStrictCompletionHandlers];
      v10 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2_8;
      v12[3] = &unk_1E7ADCD70;
      v12[4] = v3;
      v11 = MEMORY[0x1B2731A20](v12);
      [v9 addObject:v11];
    }

    else
    {
      v9 = [v8 cachedCompletionHandlers];
      v10 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_7;
      v13[3] = &unk_1E7ADCD70;
      v13[4] = v3;
      v11 = MEMORY[0x1B2731A20](v13);
      [v9 addObject:v11];
    }

    if (([*(a1 + 32) isMonitoring] & 1) == 0)
    {
      [*(a1 + 32) _startMonitoring];
    }

    _Block_object_dispose(v21, 8);
  }
}

uint64_t __72__DMCNetworkMonitor_waitForNetworkWithTimeout_strict_completionHandler___block_invoke_2(uint64_t result, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(result + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if (a2)
    {
      v4 = *DMCLogObjects();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v3 + 48);
        v7 = 134217984;
        v8 = v5;
        _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Timedout waiting for network after %.1f seconds", &v7, 0xCu);
      }
    }

    result = (*(*(v3 + 32) + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_notifyRegularClients
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(DMCNetworkMonitor *)self cachedCompletionHandlers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v10 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(DMCNetworkMonitor *)self cachedCompletionHandlers];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_notifyStrictClients
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(DMCNetworkMonitor *)self cachedStrictCompletionHandlers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v10 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(DMCNetworkMonitor *)self cachedStrictCompletionHandlers];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoring
{
  [(DMCNetworkMonitor *)self setIsMonitoring:1];
  v3 = nw_path_monitor_create();
  [(DMCNetworkMonitor *)self setPathMonitor:v3];

  v4 = [(DMCNetworkMonitor *)self pathMonitor];
  v5 = [(DMCNetworkMonitor *)self workerQueue];
  nw_path_monitor_set_queue(v4, v5);

  v6 = [(DMCNetworkMonitor *)self pathMonitor];
  update_handler[0] = MEMORY[0x1E69E9820];
  update_handler[1] = 3221225472;
  update_handler[2] = __37__DMCNetworkMonitor__startMonitoring__block_invoke;
  update_handler[3] = &unk_1E7ADCDC0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v6, update_handler);

  v7 = [(DMCNetworkMonitor *)self pathMonitor];
  nw_path_monitor_start(v7);
}

- (void)_stopMonitoring
{
  v3 = [(DMCNetworkMonitor *)self pathMonitor];
  nw_path_monitor_cancel(v3);

  [(DMCNetworkMonitor *)self setPathMonitor:0];

  [(DMCNetworkMonitor *)self setIsMonitoring:0];
}

- (BOOL)deviceMightHaveNetworkStrict:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(DMCNetworkMonitor *)self pathEvaluator];
  v6 = [v5 path];
  v7 = [v6 status];

  if (v7 == 3)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(DMCNetworkMonitor *)self _interfaceType];
      v17 = 134218242;
      v18 = 3;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Device might have network now. path status: %ld, interface type: %{public}@", &v17, 0x16u);
    }

    v11 = !a3;
  }

  else if (v7 == 1)
  {
    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(DMCNetworkMonitor *)self _interfaceType];
      v17 = 134218242;
      v11 = 1;
      v18 = 1;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_DEFAULT, "DMCNetworkMonitor: Device should have network now. path status: %ld, interface type: %{public}@", &v17, 0x16u);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_interfaceType
{
  v2 = [(DMCNetworkMonitor *)self pathEvaluator];
  v3 = [v2 path];
  v4 = [v3 interface];
  v5 = [v4 type];

  if (v5 > 4)
  {
    return @"Cellular";
  }

  else
  {
    return off_1E7ADCDE0[v5];
  }
}

- (void)_evaluateNetwork
{
  v3 = [(DMCNetworkMonitor *)self workerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__DMCNetworkMonitor__evaluateNetwork__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__DMCNetworkMonitor__evaluateNetwork__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceMightHaveNetworkStrict:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _notifyRegularClients];
    [*(a1 + 32) _notifyStrictClients];
  }

  else
  {
    if (![v3 deviceMightHaveNetworkStrict:0])
    {
      return;
    }

    [*(a1 + 32) _notifyRegularClients];
    v5 = [*(a1 + 32) cachedStrictCompletionHandlers];
    v6 = [v5 count];

    if (v6)
    {
      return;
    }
  }

  v4 = *(a1 + 32);

  [v4 _stopMonitoring];
}

@end