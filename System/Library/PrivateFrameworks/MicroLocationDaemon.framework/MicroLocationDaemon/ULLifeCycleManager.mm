@interface ULLifeCycleManager
- (ULLifeCycleManager)init;
- (id)_createSourceForSignal:(int)signal withBlock:(id)block;
- (void)_exitWithDate:(id)date;
- (void)_spinUpListeners;
- (void)_spinUpModulesConstructorsAndDependencies;
- (void)_spinUpSignals;
- (void)_spinUpWakeUpNotifications;
- (void)_start;
- (void)dealloc;
- (void)start;
@end

@implementation ULLifeCycleManager

void __48__ULLifeCycleManager__spinUpWakeUpNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ULLifeCycleManager__spinUpWakeUpNotifications__block_invoke_2;
  v7[3] = &unk_2798D44B0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__ULLifeCycleManager__spinUpWakeUpNotifications__block_invoke_2(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86430]);
  if (string)
  {
    v3 = string;
    if (!strcmp("RTLocationsOfInterestDidClearNotification", string) || !strcmp("com.apple.Preferences.ResetPrivacyWarningsNotification", v3))
    {
      v4 = [*(a1 + 40) logicAdapter];
      [v4 purgeMicroLocationData];
    }
  }
}

- (ULLifeCycleManager)init
{
  v8.receiver = self;
  v8.super_class = ULLifeCycleManager;
  v2 = [(ULLifeCycleManager *)&v8 init];
  if (v2)
  {
    v3 = +[ULEnvironment standardEnvironment];
    [(ULLifeCycleManager *)v2 setEnvironment:v3];

    environment = [(ULLifeCycleManager *)v2 environment];
    queue = [environment queue];
    [(ULLifeCycleManager *)v2 setQueue:queue];

    v6 = [MEMORY[0x277CBEB58] set];
    [(ULLifeCycleManager *)v2 setSignals:v6];
  }

  return v2;
}

- (void)dealloc
{
  signals = [(ULLifeCycleManager *)self signals];
  [signals enumerateObjectsUsingBlock:&__block_literal_global_163];

  v4.receiver = self;
  v4.super_class = ULLifeCycleManager;
  [(ULLifeCycleManager *)&v4 dealloc];
}

- (void)start
{
  queue = [(ULLifeCycleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ULLifeCycleManager_start__block_invoke;
  block[3] = &unk_2798D4160;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_start
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(ULLifeCycleManager *)self queue];
  dispatch_assert_queue_V2(queue);

  date = [MEMORY[0x277CBEAA8] date];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULLifeCycleManager _start];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "[ULLifeCycleManager]: %@", &v14, 0xCu);
  }

  [(ULLifeCycleManager *)self _spinUpSignals];
  [(ULLifeCycleManager *)self _spinUpModulesConstructorsAndDependencies];
  [(ULLifeCycleManager *)self _spinUpListeners];
  [(ULLifeCycleManager *)self _spinUpWakeUpNotifications];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULLifeCycleManager _start];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = MEMORY[0x277CCABB0];
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:date];
    v12 = [v10 numberWithDouble:?];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "[ULLifeCycleManager]: %@, finished, latency: %@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_spinUpSignals
{
  objc_initWeak(&location, self);
  signals = [(ULLifeCycleManager *)self signals];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __36__ULLifeCycleManager__spinUpSignals__block_invoke;
  v8 = &unk_2798D4348;
  objc_copyWeak(&v9, &location);
  v4 = [(ULLifeCycleManager *)self _createSourceForSignal:15 withBlock:&v5];
  [signals addObject:{v4, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__ULLifeCycleManager__spinUpSignals__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLifeCycleManager _start];
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "Handle SIGTERM", buf, 2u);
    }

    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [WeakRetained environment];
    v5 = [v4 queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__ULLifeCycleManager__spinUpSignals__block_invoke_11;
    v7[3] = &unk_2798D44B0;
    v7[4] = WeakRetained;
    v8 = v3;
    v6 = v3;
    dispatch_async(v5, v7);
  }
}

- (void)_spinUpModulesConstructorsAndDependencies
{
  queue = [(ULLifeCycleManager *)self queue];
  [ULTimerFactory setPrimaryQueue:queue];

  operator new();
}

- (void)_spinUpListeners
{
  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.milod.xpc.service"];
  server = [(ULLifeCycleManager *)self server];
  [v4 setDelegate:server];

  [v4 resume];
}

- (void)_spinUpWakeUpNotifications
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__ULLifeCycleManager__spinUpWakeUpNotifications__block_invoke;
  handler[3] = &unk_2798D57E0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], handler);
}

- (void)_exitWithDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(ULLifeCycleManager *)self environment];
  queue = [environment queue];
  dispatch_assert_queue_V2(queue);

  v7 = +[ULTransactionManager shared];
  [v7 invalidateAllTransactions];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULLifeCycleManager _start];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:dateCopy];
    v11 = [v9 numberWithDouble:?];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Clean exit in: %@", &v13, 0xCu);
  }

  xpc_transaction_exit_clean();
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createSourceForSignal:(int)signal withBlock:(id)block
{
  blockCopy = block;
  queue = [(ULLifeCycleManager *)self queue];
  dispatch_assert_queue_V2(queue);

  signal(signal, 1);
  v8 = dispatch_source_create(MEMORY[0x277D85D30], signal, 0, MEMORY[0x277D85CD0]);
  dispatch_source_set_event_handler(v8, blockCopy);
  dispatch_resume(v8);

  return v8;
}

@end