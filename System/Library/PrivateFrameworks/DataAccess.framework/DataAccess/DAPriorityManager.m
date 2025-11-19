@interface DAPriorityManager
+ (id)sharedManager;
- (DAPriorityManager)init;
- (id)appIDsToDataclasses;
- (id)stateString;
- (int)_recalculatePriority;
- (void)_setNewPriority;
- (void)_updateForegroundDataclasses;
- (void)bumpDataclassesToUIPriority:(int64_t)a3;
- (void)dealloc;
- (void)requestPriority:(int)a3 forClient:(id)a4 dataclasses:(int64_t)a5;
- (void)setupProcessStateMonitor;
@end

@implementation DAPriorityManager

+ (id)sharedManager
{
  if (sVendPriorityManagers == 1)
  {
    if (sharedManager_onceToken != -1)
    {
      +[DAPriorityManager sharedManager];
    }

    v3 = sharedManager_sSharedDAPriorityManager;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __34__DAPriorityManager_sharedManager__block_invoke()
{
  sharedManager_sSharedDAPriorityManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)appIDsToDataclasses
{
  if (appIDsToDataclasses_onceToken != -1)
  {
    [DAPriorityManager appIDsToDataclasses];
  }

  v3 = appIDsToDataclasses_sAppIDsToDataclasses;

  return v3;
}

void __40__DAPriorityManager_appIDsToDataclasses__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CF78A0];
  v3[1] = @"com.apple.MobileAddressBook";
  v4[0] = &unk_285AAFC28;
  v4[1] = &unk_285AAFC40;
  v3[2] = @"com.apple.mobilephone";
  v3[3] = @"com.apple.mobilenotes";
  v4[2] = &unk_285AAFC40;
  v4[3] = &unk_285AAFC58;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = appIDsToDataclasses_sAppIDsToDataclasses;
  appIDsToDataclasses_sAppIDsToDataclasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateForegroundDataclasses
{
  foregroundDataclasses = self->_foregroundDataclasses;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(DAPriorityManager *)self appIDsToDataclasses];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DAPriorityManager__updateForegroundDataclasses__block_invoke;
  v6[3] = &unk_278F13A80;
  v6[4] = self;
  v6[5] = &v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = v8[3];
  if (v5 != foregroundDataclasses)
  {
    self->_foregroundDataclasses = v5;
    [(DAPriorityManager *)self _setNewPriority];
  }

  _Block_object_dispose(&v7, 8);
}

void __49__DAPriorityManager__updateForegroundDataclasses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:a2];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) |= [v7 intValue];
  }
}

- (DAPriorityManager)init
{
  v13.receiver = self;
  v13.super_class = DAPriorityManager;
  v2 = [(DAPriorityManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
    clientsToPriorityRequests = v2->_clientsToPriorityRequests;
    v2->_clientsToPriorityRequests = v3;

    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [(DAPriorityManager *)v2 appIDsToDataclasses];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];
    cachedAppState = v2->_cachedAppState;
    v2->_cachedAppState = v7;

    [(DAPriorityManager *)v2 setupProcessStateMonitor];
    v12 = 0;
    v9 = SBSSpringBoardServerPort();
    MEMORY[0x24C1CDF90](v9, &sDeviceIsLocked, &v12);
    if (init_onceToken != -1)
    {
      [DAPriorityManager init];
    }

    notify_register_dispatch(*MEMORY[0x277D67770], &init_notifToken, init_SBLockQueue, &__block_literal_global_34);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel__setNewPriority name:@"SBLockStateChanged" object:0];

    v2->_currentPriority = 0x80000000;
    [(DAPriorityManager *)v2 _setNewPriority];
  }

  return v2;
}

uint64_t __25__DAPriorityManager_init__block_invoke()
{
  init_SBLockQueue = dispatch_queue_create("com.apple.dataaccessd.sblockqueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __25__DAPriorityManager_init__block_invoke_2()
{
  state64 = 0;
  notify_get_state(init_notifToken, &state64);
  sDeviceIsLocked = state64 != 0;
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBLockStateChanged" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBLockStateChanged" object:0];

  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v4.receiver = self;
  v4.super_class = DAPriorityManager;
  [(DAPriorityManager *)&v4 dealloc];
}

- (void)setupProcessStateMonitor
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D46F80];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DAPriorityManager_setupProcessStateMonitor__block_invoke;
  v6[3] = &unk_278F13AF0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 monitorWithConfiguration:v6];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__DAPriorityManager_setupProcessStateMonitor__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_285AAFC70];
  [v3 setStateDescriptor:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained appIDsToDataclasses];
  v7 = [v6 allKeys];

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:*(*(&v17 + 1) + 8 * v12)];
        [v8 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [v3 setPredicates:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__DAPriorityManager_setupProcessStateMonitor__block_invoke_2;
  v15[3] = &unk_278F13AC8;
  objc_copyWeak(&v16, (a1 + 32));
  [v3 setUpdateHandler:v15];
  objc_destroyWeak(&v16);

  v14 = *MEMORY[0x277D85DE8];
}

void __45__DAPriorityManager_setupProcessStateMonitor__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 state];
  v9 = [v8 taskState];

  v10 = [v7 state];

  v11 = [v10 endowmentNamespaces];

  v12 = [v11 containsObject:@"com.apple.frontboard.visibility"];
  v13 = [v6 bundle];
  v14 = [v13 identifier];

  if (v14)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained appWithBundleID:v14 isNowRunningAndVisible:(v9 == 4) & v12];
  }

  else
  {
    WeakRetained = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(WeakRetained, v16))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_24844D000, WeakRetained, v16, "Ignoring an update for a process (%@) without a bundle identifier", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(DAPriorityManager *)v4 clientsToPriorityRequests];
  v6 = [v5 count];

  if (v6)
  {
    [v3 appendString:@"------\nDAPriorityManager: \n"];
    v7 = [(DAPriorityManager *)v4 clientsToPriorityRequests];
    v8 = [v7 keyEnumerator];
    v9 = 0;
    while (1)
    {

      v10 = [v8 nextObject];

      if (!v10)
      {
        break;
      }

      v11 = [(DAPriorityManager *)v4 clientsToPriorityRequests];
      v7 = [v11 objectForKey:v10];

      if (([v7 refreshDataclasses] & 0x7F) == 0)
      {
        v9 = v10;
        if (([v7 UIDataclasses] & 0x7F) == 0)
        {
          continue;
        }
      }

      [v3 appendFormat:@"\t[%@ ", v10];
      if (([v7 refreshDataclasses] & 0x7F) != 0)
      {
        [v3 appendFormat:@"Refresh: 0x%lx ", objc_msgSend(v7, "refreshDataclasses") & 0x7F];
      }

      if (([v7 UIDataclasses] & 0x7F) != 0)
      {
        [v3 appendFormat:@"UI: 0x%lx ", objc_msgSend(v7, "UIDataclasses") & 0x7F];
      }

      [v3 appendFormat:@"]\n"];
      v9 = v10;
    }

    [v3 appendString:@"------\n"];
  }

  objc_sync_exit(v4);

  return v3;
}

- (int)_recalculatePriority
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DAPriorityManager *)v2 clientsToPriorityRequests];
  v4 = [v3 keyEnumerator];
  v5 = 0;
  v6 = 0;
  for (i = 0; ; i = v8)
  {

    v8 = [v4 nextObject];

    if (!v8)
    {
      break;
    }

    v9 = [(DAPriorityManager *)v2 clientsToPriorityRequests];
    v3 = [v9 objectForKey:v8];

    v6 |= [v3 refreshDataclasses];
    v5 |= [v3 UIDataclasses];
  }

  objc_sync_exit(v2);
  if (v5)
  {
    return 0;
  }

  if (sDeviceIsLocked || (v2->_foregroundDataclasses & v6) != 0)
  {
    return 18;
  }

  return 4096;
}

- (void)_setNewPriority
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(DAPriorityManager *)self _recalculatePriority];
  if (v3 != self->_currentPriority)
  {
    v4 = v3;
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_impl(&dword_24844D000, v5, v6, "DAPERF: DAPriorityManager is changing the priority to %d", v8, 8u);
    }

    setpriority(4, 0, v4);
    self->_currentPriority = v4;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestPriority:(int)a3 forClient:(id)a4 dataclasses:(int64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (!v9)
  {
    [DAPriorityManager requestPriority:a2 forClient:self dataclasses:?];
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(DAPriorityManager *)v10 clientsToPriorityRequests];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v12 = objc_opt_new();
    [(NSMapTable *)v10->_clientsToPriorityRequests setObject:v12 forKey:v9];
  }

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    if (a3 > 2)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_278F13B10[a3];
    }

    v22 = 138412802;
    v23 = v9;
    v24 = 2112;
    v25 = v15;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&dword_24844D000, v13, v14, "Client %@ requested priority %@ for dataclasses 0x%lx", &v22, 0x20u);
  }

  switch(a3)
  {
    case 2:
      v19 = a5 & 0x7F;
      [v12 setRefreshDataclasses:{objc_msgSend(v12, "refreshDataclasses") & (v19 ^ 0x7F)}];
      v17 = [v12 UIDataclasses] | v19;
      goto LABEL_16;
    case 1:
      v18 = a5 & 0x7F;
      [v12 setRefreshDataclasses:{objc_msgSend(v12, "refreshDataclasses") | v18}];
      v17 = [v12 UIDataclasses] & (v18 ^ 0x7F);
      goto LABEL_16;
    case 0:
      v16 = ~a5 & 0x7F;
      [v12 setRefreshDataclasses:{objc_msgSend(v12, "refreshDataclasses") & v16}];
      v17 = [v12 UIDataclasses] & v16;
LABEL_16:
      [v12 setUIDataclasses:v17];
      break;
  }

  if (![v12 refreshDataclasses] && !objc_msgSend(v12, "UIDataclasses"))
  {
    v20 = [(DAPriorityManager *)v10 clientsToPriorityRequests];
    [v20 removeObjectForKey:v9];
  }

  [(DAPriorityManager *)v10 _setNewPriority];

  objc_sync_exit(v10);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)bumpDataclassesToUIPriority:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(&dword_24844D000, v5, v6, "Bumping all client priority requests for dataclasses 0x%lx to UI. Open bar, dude!", &v14, 0xCu);
  }

  v7 = [(DAPriorityManager *)v4 clientsToPriorityRequests];
  v8 = [v7 keyEnumerator];

  for (i = 0; ; i = v10)
  {
    v10 = [v8 nextObject];

    if (!v10)
    {
      break;
    }

    v11 = [(DAPriorityManager *)v4 clientsToPriorityRequests];
    v12 = [v11 objectForKey:v10];

    [v12 setUIDataclasses:{objc_msgSend(v12, "UIDataclasses") | objc_msgSend(v12, "refreshDataclasses") & a3}];
    [v12 setRefreshDataclasses:{objc_msgSend(v12, "refreshDataclasses") & ~a3 & 0x7FLL}];
  }

  objc_sync_exit(v4);
  [(DAPriorityManager *)v4 _setNewPriority];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestPriority:(uint64_t)a1 forClient:(uint64_t)a2 dataclasses:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAPriorityManager.m" lineNumber:258 description:@"You can't request priority with a nil client"];
}

@end