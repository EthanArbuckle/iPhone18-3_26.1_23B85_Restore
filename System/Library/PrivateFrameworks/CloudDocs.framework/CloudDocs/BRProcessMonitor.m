@interface BRProcessMonitor
- (BOOL)_isProcessForeground:(id)a3 bundleID:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BRProcessMonitor

- (BOOL)_isProcessForeground:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_isProcessForeground_bundleID__onceToken != -1)
  {
    [BRProcessMonitor _isProcessForeground:bundleID:];
  }

  v7 = [_isProcessForeground_bundleID__EXTENSION_BUNDLE_IDS containsObject:v6];
  v8 = [v5 taskState];
  if (v8 == 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v7 & 1) == 0 && v8 == 4)
  {
    v10 = [v5 endowmentNamespaces];
    v9 = [v10 containsObject:@"com.apple.frontboard.visibility"];
  }

  return v9;
}

uint64_t __50__BRProcessMonitor__isProcessForeground_bundleID___block_invoke()
{
  _isProcessForeground_bundleID__EXTENSION_BUNDLE_IDS = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F23E63B8];

  return MEMORY[0x1EEE66BB8]();
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRProcessMonitor initForProcessID:observer:]_block_invoke", 60);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__BRProcessMonitor_initForProcessID_observer___block_invoke_cold_1(a1, v4, v5);
  }

  v6 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:*(a1 + 32)];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  [v3 setPredicates:v7];
  v8 = [MEMORY[0x1E69C7630] descriptor];
  [v8 setValues:1];
  [v8 setEndowmentNamespaces:&unk_1F23E63D0];
  [v3 setStateDescriptor:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__BRProcessMonitor_initForProcessID_observer___block_invoke_23;
  v10[3] = &unk_1E7A15448;
  v13 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  [v3 setUpdateHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke_23(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a3 pid] == *(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    if (WeakRetained)
    {
      v8 = [v6 state];
      v9 = [*(a1 + 32) _isProcessForeground:v8 bundleID:*(a1 + 40)];
      v10 = brc_bread_crumbs("[BRProcessMonitor initForProcessID:observer:]_block_invoke", 76);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = 138413314;
        v16 = v13;
        v17 = 1024;
        v18 = v14;
        v19 = 1024;
        v20 = v9;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = v10;
        _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Received an update handler for bundleID = %@, pid = %d, isForeground = %d, update = %@%@", &v15, 0x2Cu);
      }

      [WeakRetained process:*(a1 + 48) didBecomeForeground:v9];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  [self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  objc_storeWeak(&self->_weakObserver, 0);
}

- (void)dealloc
{
  [(BRProcessMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRProcessMonitor;
  [(BRProcessMonitor *)&v3 dealloc];
}

- (void)initForProcessID:(os_log_t)log observer:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] There is no bundleID for the provided pid %d%@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6[0] = 67109634;
  v6[1] = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] creating monitor for %d with bundleID = %@%@", v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

@end