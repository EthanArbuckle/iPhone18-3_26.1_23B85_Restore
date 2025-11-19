@interface HFDebugStateDumpManager
+ (id)sharedInstance;
- (HFDebugStateDumpManager)init;
- (id)_performStateDump:(BOOL)a3;
- (id)registerStateDumpHandler:(id)a3 withName:(id)a4;
- (void)_listenForAttachmentRequestNotifications;
- (void)_writeStateDump;
- (void)dealloc;
@end

@implementation HFDebugStateDumpManager

+ (id)sharedInstance
{
  if (_MergedGlobals_269 != -1)
  {
    dispatch_once(&_MergedGlobals_269, &__block_literal_global_4_8);
  }

  v3 = qword_280E030F8;

  return v3;
}

void __41__HFDebugStateDumpManager_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFDebugStateDumpManager);
  v1 = qword_280E030F8;
  qword_280E030F8 = v0;
}

- (HFDebugStateDumpManager)init
{
  v14.receiver = self;
  v14.super_class = HFDebugStateDumpManager;
  v2 = [(HFDebugStateDumpManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Home.HFStateHandlerQueue", 0);
    [(HFDebugStateDumpManager *)v2 setStateHandlerQueue:v3];

    v4 = objc_opt_new();
    [(HFDebugStateDumpManager *)v2 setStateDumpHandlersByName:v4];

    objc_initWeak(&location, v2);
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __31__HFDebugStateDumpManager_init__block_invoke;
    v11 = &unk_277DF3CC8;
    objc_copyWeak(&v12, &location);
    notify_register_dispatch("com.apple.Home.logStateDump", &v2->_logStateDumpNotifyToken, v5, &v8);

    [(HFDebugStateDumpManager *)v2 _listenForAttachmentRequestNotifications:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__HFDebugStateDumpManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _performStateDump:1];
}

- (void)dealloc
{
  notify_cancel([(HFDebugStateDumpManager *)self logStateDumpNotifyToken]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HFDebugStateDumpManager;
  [(HFDebugStateDumpManager *)&v4 dealloc];
}

- (id)registerStateDumpHandler:(id)a3 withName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFDebugStateDumpManager.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"stateDumpHandler"}];
  }

  v9 = [v7 copy];
  v10 = _Block_copy(v9);
  v11 = [(HFDebugStateDumpManager *)self stateDumpHandlersByName];
  [v11 setObject:v10 forKeyedSubscript:v8];

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D2C8C8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__HFDebugStateDumpManager_registerStateDumpHandler_withName___block_invoke;
  v17[3] = &unk_277DF3A68;
  objc_copyWeak(&v19, &location);
  v13 = v8;
  v18 = v13;
  v14 = [v12 tokenWithCancelationBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

void __61__HFDebugStateDumpManager_registerStateDumpHandler_withName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateDumpHandlersByName];
  [v2 removeObjectForKey:*(a1 + 32)];
}

- (id)_performStateDump:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[HFExecutionEnvironment sharedInstance];
    v11 = 138413058;
    v12 = self;
    v13 = 2080;
    v14 = "[HFDebugStateDumpManager _performStateDump:]";
    v15 = 1024;
    v16 = v3;
    v17 = 2048;
    v18 = [v6 hostProcess];
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) logToConsole = %{BOOL}d. Process = %lu", &v11, 0x26u);
  }

  v7 = [(HFDebugStateDumpManager *)self stateDumpHandlersByName];
  v8 = [v7 na_dictionaryByMappingValues:&__block_literal_global_24_4];

  if (v3 && +[HFExecutionEnvironment isHomeRelatedProcess])
  {
    [v8 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27_7];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __45__HFDebugStateDumpManager__performStateDump___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3);
  v4 = HFPrunePropertyList(v3);

  return v4;
}

void __45__HFDebugStateDumpManager__performStateDump___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = HFLogForCategory(0x45uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "State dump %@:", &v8, 0xCu);
  }

  _HFLogStateDumpNode(v5, &stru_2824B1A78, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_listenForAttachmentRequestNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleStateDumpRequest, @"HomeDiagnosticExtensionAttachmentRequestNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_writeStateDump
{
  v29 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isInternalInstall])
  {
    v3 = HFLogForCategory(0x45uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
      v5 = [v4 bundleIdentifier];
      *buf = 138412290;
      v28 = v5;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to write state dump from %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [(HFDebugStateDumpManager *)self stateDumpHandlersByName];
    v8 = [v7 na_dictionaryByMappingValues:&__block_literal_global_35_1];

    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 bundleIdentifier];

    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v11 setDateFormat:@"MM-dd-yyyy_HH:mm:ss"];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [v11 stringFromDate:v12];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"home_state_dump_%@_%@.plist", v10, v13];
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Caches/com.apple.home" isDirectory:1 relativeToURL:0];
    v16 = [v15 absoluteString];
    v17 = [v6 fileExistsAtPath:v16];

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v19 = [v15 absoluteString];
      v26 = 0;
      [v6 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v26];
      v18 = v26;

      if (v18)
      {
        v20 = HFLogForCategory(0x45uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v18;
          _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "State dump Directory Creation Error: %@", buf, 0xCu);
        }
      }
    }

    v21 = [v15 URLByAppendingPathComponent:v14];
    v25 = v18;
    [v8 writeToURL:v21 error:&v25];
    v22 = v25;

    if (v22)
    {
      v23 = HFLogForCategory(0x45uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "State dump Write Error: %@", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

id __42__HFDebugStateDumpManager__writeStateDump__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3);
  v4 = HFPrunePropertyList(v3);

  return v4;
}

@end