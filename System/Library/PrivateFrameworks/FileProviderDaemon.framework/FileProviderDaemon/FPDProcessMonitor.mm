@interface FPDProcessMonitor
- (BOOL)_isProcessForeground:(id)a3;
- (BOOL)isForeground;
- (FPDProcessMonitor)initWithExcludedBundleIDs:(id)a3;
- (FPDProcessMonitorDelegate)delegate;
- (id)description;
- (id)prettyDescription;
- (void)_configureAppMonitor:(id)a3;
- (void)_createMonitor;
- (void)_handleProcessStateUpdate:(id)a3;
- (void)_invalidate;
- (void)_updateMonitoredBundleIDs;
- (void)addPIDToObserve:(int)a3;
- (void)addPIDToObserveSync:(int)a3;
- (void)invalidate;
- (void)process:(int)a3 didBecomeForeground:(BOOL)a4;
- (void)removePIDToObserve:(int)a3;
- (void)setDelegate:(id)a3;
@end

@implementation FPDProcessMonitor

- (void)_createMonitor
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FPDProcessMonitor__createMonitor__block_invoke;
  v5[3] = &unk_1E83BECC8;
  v5[4] = self;
  v3 = [MEMORY[0x1E69C75F8] monitorWithConfiguration:v5];
  monitor = self->_monitor;
  self->_monitor = v3;
}

- (BOOL)isForeground
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_foregroundBundleIDs count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (FPDProcessMonitorDelegate)delegate
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  objc_sync_exit(v2);

  return WeakRetained;
}

- (void)_updateMonitoredBundleIDs
{
  dispatch_assert_queue_V2(self->_notificationQueue);
  monitor = self->_monitor;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__FPDProcessMonitor__updateMonitoredBundleIDs__block_invoke;
  v4[3] = &unk_1E83BECC8;
  v4[4] = self;
  [(RBSProcessMonitor *)monitor updateConfiguration:v4];
}

- (FPDProcessMonitor)initWithExcludedBundleIDs:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FPDProcessMonitor;
  v5 = [(FPDProcessMonitor *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.fileproviderd.process-monitor", v6);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bundleIDForPID = v5->_bundleIDForPID;
    v5->_bundleIDForPID = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    pids = v5->_pids;
    v5->_pids = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    foregroundBundleIDs = v5->_foregroundBundleIDs;
    v5->_foregroundBundleIDs = v15;

    v17 = v5->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__FPDProcessMonitor_initWithExcludedBundleIDs___block_invoke;
    block[3] = &unk_1E83BE068;
    v18 = v5;
    v23 = v18;
    dispatch_async(v17, block);
    v19 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    excludedBundleIDs = v18->_excludedBundleIDs;
    v18->_excludedBundleIDs = v19;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FPDProcessMonitor *)self prettyDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)prettyDescription
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSMutableSet *)v2->_foregroundBundleIDs count])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSMutableSet *)v2->_foregroundBundleIDs allObjects];
    v5 = [v4 componentsJoinedByString:{@", "}];
    v6 = [v3 stringWithFormat:@"foreground:{%@}", v5];
LABEL_5:
    v8 = v6;

    goto LABEL_6;
  }

  if ([(NSCountedSet *)v2->_bundleIDs count])
  {
    v7 = MEMORY[0x1E696AEC0];
    v4 = [(NSCountedSet *)v2->_bundleIDs allObjects];
    v5 = [v4 componentsJoinedByString:{@", "}];
    v6 = [v7 stringWithFormat:@"observing:{%@}", v5];
    goto LABEL_5;
  }

  v8 = @"no process observed";
LABEL_6:
  objc_sync_exit(v2);

  return v8;
}

- (BOOL)_isProcessForeground:(id)a3
{
  v3 = a3;
  [v3 taskState];
  if (RBSTaskStateIsRunning())
  {
    v4 = [v3 endowmentNamespaces];
    v5 = [v4 containsObject:@"com.apple.frontboard.visibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleProcessStateUpdate:(id)a3
{
  notificationQueue = self->_notificationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(notificationQueue);
  v8 = [v5 process];
  v6 = [v8 pid];
  v7 = [v5 state];

  [(FPDProcessMonitor *)self process:v6 didBecomeForeground:[(FPDProcessMonitor *)self _isProcessForeground:v7]];
}

- (void)_configureAppMonitor:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(NSCountedSet *)self->_bundleIDs allObjects];
  v6 = [v5 fp_map:&__block_literal_global_3];

  [v4 setPredicates:v6];
  v7 = [MEMORY[0x1E69C7630] descriptor];
  if ([v6 count])
  {
    [v7 setValues:1];
    [v7 setEndowmentNamespaces:&unk_1F4C628C8];
  }

  else
  {
    [v7 setValues:0];
  }

  [v4 setStateDescriptor:v7];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__FPDProcessMonitor__configureAppMonitor___block_invoke_2;
  v8[3] = &unk_1E83BECA0;
  objc_copyWeak(&v9, &location);
  [v4 setUpdateHandler:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __42__FPDProcessMonitor__configureAppMonitor___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained notificationQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__FPDProcessMonitor__configureAppMonitor___block_invoke_3;
    v9[3] = &unk_1E83BE158;
    v9[4] = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

- (void)_invalidate
{
  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;
}

- (void)process:(int)a3 didBecomeForeground:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  bundleIDForPID = self->_bundleIDForPID;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v9 = [(NSMutableDictionary *)bundleIDForPID objectForKeyedSubscript:v8];

  if (v9)
  {
    section = __fp_create_section();
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = @"background";
      *buf = 134218754;
      v20 = section;
      v21 = 2112;
      if (v4)
      {
        v18 = @"foreground";
      }

      v22 = self;
      v23 = 1024;
      v24 = a3;
      v25 = 2112;
      v26 = v18;
      _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received a notif for %@ that [%d] became %@", buf, 0x26u);
    }

    v12 = self;
    objc_sync_enter(v12);
    v13 = [(FPDProcessMonitor *)v12 isForeground];
    foregroundBundleIDs = v12->_foregroundBundleIDs;
    if (v4)
    {
      [(NSMutableSet *)foregroundBundleIDs addObject:v9];
    }

    else
    {
      [(NSMutableSet *)foregroundBundleIDs removeObject:v9];
    }

    v15 = [(FPDProcessMonitor *)v12 isForeground];
    objc_sync_exit(v12);

    if (v13 != v15)
    {
      v16 = [(FPDProcessMonitor *)v12 delegate];
      [v16 processMonitor:v12 didBecomeForeground:v15];
    }

    __fp_leave_section_Debug();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addPIDToObserve:(int)a3
{
  if (a3 >= 1)
  {
    v8 = v3;
    v9 = v4;
    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__FPDProcessMonitor_addPIDToObserve___block_invoke;
    v6[3] = &unk_1E83BECF0;
    v6[4] = self;
    v7 = a3;
    dispatch_async(notificationQueue, v6);
  }
}

- (void)addPIDToObserveSync:(int)a3
{
  if (a3 >= 1)
  {
    v8 = v3;
    v9 = v4;
    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__FPDProcessMonitor_addPIDToObserveSync___block_invoke;
    v6[3] = &unk_1E83BECF0;
    v6[4] = self;
    v7 = a3;
    dispatch_sync(notificationQueue, v6);
  }
}

- (void)removePIDToObserve:(int)a3
{
  if (a3 >= 1)
  {
    v8 = v3;
    v9 = v4;
    notificationQueue = self->_notificationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__FPDProcessMonitor_removePIDToObserve___block_invoke;
    v6[3] = &unk_1E83BECF0;
    v6[4] = self;
    v7 = a3;
    dispatch_sync(notificationQueue, v6);
  }
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  objc_storeWeak(&v2->_delegate, 0);
  objc_sync_exit(v2);

  notificationQueue = v2->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FPDProcessMonitor_invalidate__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = v2;
  dispatch_sync(notificationQueue, block);
}

- (void)setDelegate:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  objc_storeWeak(&v4->_delegate, v5);

  objc_sync_exit(v4);
  notificationQueue = v4->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDProcessMonitor_setDelegate___block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = v4;
  dispatch_async(notificationQueue, block);
}

void __33__FPDProcessMonitor_setDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 processMonitor:*(a1 + 32) didBecomeForeground:{objc_msgSend(*(a1 + 32), "isForeground")}];
}

- (void)_addPIDToObserve:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_addPIDToObserve:(int)a1 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle is excluded %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_addPIDToObserve:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] no bundle ID for %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end