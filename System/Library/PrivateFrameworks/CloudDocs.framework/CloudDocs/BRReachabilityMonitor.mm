@interface BRReachabilityMonitor
+ (id)sharedReachabilityMonitor;
- (BOOL)isCellularNetwork;
- (BOOL)isNetworkReachable;
- (BRReachabilityMonitor)init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation BRReachabilityMonitor

void __29__BRReachabilityMonitor_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [BRNWPathMonitorWrapper getStatusOfPath:v3];
    v6 = (v5 & 0xFFFFFFFD) == 1 && [BRNWPathMonitorWrapper pathHasDNS:v3];
    v7 = brc_bread_crumbs("[BRReachabilityMonitor init]_block_invoke", 63);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __29__BRReachabilityMonitor_init__block_invoke_cold_1(v7, v5, v8);
    }

    v9 = WeakRetained[40];
    v10 = WeakRetained[24];
    v16 = v10 != v6;
    WeakRetained[24] = v6;
    WeakRetained[40] = [BRNWPathMonitorWrapper usingCellular:v3];
    v11 = brc_bread_crumbs("[BRReachabilityMonitor init]_block_invoke", 68);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __29__BRReachabilityMonitor_init__block_invoke_cold_2(WeakRetained + 40, v11, v12);
    }

    v13 = WeakRetained[40];
    if (v10 != v6 || v9 != v13)
    {
      v14 = v9 != v13;
      v15 = *(WeakRetained + 2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__BRReachabilityMonitor_init__block_invoke_8;
      block[3] = &unk_1E7A154C8;
      v18 = WeakRetained;
      v20 = v16;
      v19 = *(a1 + 32);
      v21 = v14;
      v22 = v9;
      dispatch_async(v15, block);
    }
  }
}

void __29__BRReachabilityMonitor_init__block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Got network updated status %u%@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __29__BRReachabilityMonitor_init__block_invoke_cold_2(_BYTE *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = "NO";
  if (*a1)
  {
    v3 = "YES";
  }

  v5 = 136315394;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Got cellular network %s%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (id)sharedReachabilityMonitor
{
  if (sharedReachabilityMonitor_onceToken != -1)
  {
    +[BRReachabilityMonitor sharedReachabilityMonitor];
  }

  v3 = sharedReachabilityMonitor_monitor;

  return v3;
}

uint64_t __50__BRReachabilityMonitor_sharedReachabilityMonitor__block_invoke()
{
  sharedReachabilityMonitor_monitor = objc_alloc_init(BRReachabilityMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (BRReachabilityMonitor)init
{
  v18.receiver = self;
  v18.super_class = BRReachabilityMonitor;
  v2 = [(BRReachabilityMonitor *)&v18 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    reachabilityObservers = v2->_reachabilityObservers;
    v2->_reachabilityObservers = weakObjectsHashTable;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.reachability", v6);

    queue = v2->_queue;
    v2->_queue = v7;

    objc_initWeak(&location, v2);
    v9 = v2->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __29__BRReachabilityMonitor_init__block_invoke;
    v14[3] = &unk_1E7A154F0;
    objc_copyWeak(&v16, &location);
    v10 = v2;
    v15 = v10;
    v11 = [BRNWPathMonitorWrapper createPathMonitorWithQueue:v9 changeHandler:v14];
    pathMonitor = v10->_pathMonitor;
    v10->_pathMonitor = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__BRReachabilityMonitor_init__block_invoke_8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (*(a1 + 48) == 1)
        {
          [*(*(&v9 + 1) + 8 * v6) reachabilityMonitor:*(a1 + 40) didChangeReachabilityStatusTo:{*(*(a1 + 32) + 24), v9}];
        }

        if (*(a1 + 49) == 1)
        {
          [*(a1 + 32) _updateCellularNetworkStatusForObserver:v7 isCellularNetwork:*(*(a1 + 32) + 40) previousCellularStatus:*(a1 + 50)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [BRNWPathMonitorWrapper cancelPathMonitor:self->_pathMonitor];
  v3.receiver = self;
  v3.super_class = BRReachabilityMonitor;
  [(BRReachabilityMonitor *)&v3 dealloc];
}

- (BOOL)isNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__BRReachabilityMonitor_isNetworkReachable__block_invoke;
  v5[3] = &unk_1E7A15518;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCellularNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__BRReachabilityMonitor_isCellularNetwork__block_invoke;
  v5[3] = &unk_1E7A15518;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__BRReachabilityMonitor_isCellularNetwork__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__BRReachabilityMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __37__BRReachabilityMonitor_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  [*(a1 + 40) reachabilityMonitor:*(a1 + 32) didChangeReachabilityStatusTo:*(*(a1 + 32) + 24)];
  v2 = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 40);

    return [v4 reachabilityMonitor:? didChangeCellularNetworkTo:?];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__BRReachabilityMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

@end