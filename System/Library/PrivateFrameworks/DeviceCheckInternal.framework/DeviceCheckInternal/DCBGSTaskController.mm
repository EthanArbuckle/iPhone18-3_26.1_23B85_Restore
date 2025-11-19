@interface DCBGSTaskController
+ (id)sharedInstance;
- (BOOL)registerForTask:(id)a3;
- (BOOL)updateTaskWithIdentifier:(id)a3 withRefreshInterval:(double)a4;
- (NSMutableArray)tasks;
- (NSUserDefaults)defaultsSuite;
- (OS_dispatch_queue)expiryQueue;
- (id)fetchTaskForTaskIdentifier:(id)a3;
- (void)handleTask:(id)a3 shouldExit:(BOOL *)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DCBGSTaskController

- (NSMutableArray)tasks
{
  tasks = self->_tasks;
  if (!tasks)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_tasks;
    self->_tasks = v4;

    tasks = self->_tasks;
  }

  return tasks;
}

- (NSUserDefaults)defaultsSuite
{
  defaultsSuite = self->_defaultsSuite;
  if (!defaultsSuite)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    v5 = self->_defaultsSuite;
    self->_defaultsSuite = v4;

    defaultsSuite = self->_defaultsSuite;
  }

  return defaultsSuite;
}

- (OS_dispatch_queue)expiryQueue
{
  expiryQueue = self->_expiryQueue;
  if (!expiryQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.devicecheck.bgst.expiry", v4);
    v6 = self->_expiryQueue;
    self->_expiryQueue = v5;

    expiryQueue = self->_expiryQueue;
  }

  return expiryQueue;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DCBGSTaskController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_taskController;

  return v2;
}

uint64_t __37__DCBGSTaskController_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_taskController = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)registerForTask:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DCBGSTaskController *)v5 tasks];
  [v6 addObject:v4];

  v7 = [MEMORY[0x277CF0810] sharedScheduler];
  v8 = [v4 taskID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__DCBGSTaskController_registerForTask___block_invoke;
  v24[3] = &unk_278F59D30;
  v24[4] = v5;
  v9 = [v7 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v24];

  v10 = [(DCBGSTaskController *)v5 defaultsSuite];
  v11 = [v4 observerID];
  [v10 addObserver:v5 forKeyPath:v11 options:1 context:0];

  if (DCInternalLogSystem_onceToken_5 != -1)
  {
    [DCBGSTaskController registerForTask:];
  }

  v12 = DCInternalLogSystem_log_5;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 0;
    v14 = 0;
    v15 = 47;
    do
    {
      v16 = &aLibraryCachesC_5[v13];
      if (v15 == 47)
      {
        v14 = &aLibraryCachesC_5[v13];
      }

      v15 = v16[1];
      if (!v16[1])
      {
        break;
      }
    }

    while (v13++ < 0xFFF);
    if (v14)
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
    }

    v19 = [v4 taskID];
    v20 = v19;
    v21 = [v19 UTF8String];
    *buf = 136315906;
    v26 = v18;
    v27 = 1024;
    v28 = 86;
    v29 = 2080;
    v30 = v21;
    v31 = 1024;
    v32 = v9;
    _os_log_impl(&dword_2488FB000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registered task. { taskID=%s, success=%d }", buf, 0x22u);
  }

  objc_sync_exit(v5);
  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

void __39__DCBGSTaskController_registerForTask___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (DCInternalLogSystem_onceToken_5 != -1)
  {
    __39__DCBGSTaskController_registerForTask___block_invoke_cold_1();
  }

  v4 = DCInternalLogSystem_log_5;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 0;
    v6 = 0;
    v7 = 47;
    do
    {
      v8 = &aLibraryCachesC_5[v5];
      if (v7 == 47)
      {
        v6 = &aLibraryCachesC_5[v5];
      }

      v7 = v8[1];
      if (!v8[1])
      {
        break;
      }
    }

    while (v5++ < 0xFFF);
    if (v6)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
    }

    v11 = [v3 identifier];
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = 72;
    *&buf[18] = 2112;
    *&buf[20] = v11;
    _os_log_impl(&dword_2488FB000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d System task handler invoked. { task=%@ }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  objc_initWeak(&location, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__DCBGSTaskController_registerForTask___block_invoke_9;
  v13[3] = &unk_278F59D08;
  objc_copyWeak(&v14, &location);
  v13[4] = buf;
  [v3 setExpirationHandler:v13];
  [*(a1 + 32) handleTask:v3 shouldExit:*&buf[8] + 24];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __39__DCBGSTaskController_registerForTask___block_invoke_9(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (DCInternalLogSystem_onceToken_5 != -1)
  {
    __39__DCBGSTaskController_registerForTask___block_invoke_cold_1();
  }

  v2 = DCInternalLogSystem_log_5;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 0;
    v4 = 0;
    v5 = 47;
    do
    {
      v6 = &aLibraryCachesC_5[v3];
      if (v5 == 47)
      {
        v4 = &aLibraryCachesC_5[v3];
      }

      v5 = v6[1];
      if (!v6[1])
      {
        break;
      }
    }

    while (v3++ < 0xFFF);
    if (v4)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained identifier];
    v12 = 136315650;
    v13 = v8;
    v14 = 1024;
    v15 = 77;
    v16 = 2080;
    v17 = [v10 UTF8String];
    _os_log_impl(&dword_2488FB000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Task expiration handler invoked. { taskID=%s }", &v12, 0x1Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchTaskForTaskIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(DCBGSTaskController *)v5 tasks];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 taskID];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)updateTaskWithIdentifier:(id)a3 withRefreshInterval:(double)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  for (i = 0; ; ++i)
  {
    v9 = [(DCBGSTaskController *)v7 tasks];
    v10 = [v9 count];

    if (v10 <= i)
    {
      v15 = 0;
      goto LABEL_94;
    }

    v11 = [(DCBGSTaskController *)v7 tasks];
    v12 = [v11 objectAtIndexedSubscript:i];

    v13 = [v12 taskID];
    v14 = [v13 isEqualToString:v6];

    if (v14)
    {
      break;
    }
  }

  if (a4 < 300.0)
  {
    if (DCInternalLogSystem_onceToken_5 != -1)
    {
      __39__DCBGSTaskController_registerForTask___block_invoke_cold_1();
    }

    v16 = DCInternalLogSystem_log_5;
    if (os_log_type_enabled(DCInternalLogSystem_log_5, OS_LOG_TYPE_DEBUG))
    {
      v17 = 0;
      v18 = 0;
      v19 = 47;
      do
      {
        v20 = &aLibraryCachesC_5[v17];
        if (v19 == 47)
        {
          v18 = &aLibraryCachesC_5[v17];
        }

        v19 = v20[1];
        if (!v20[1])
        {
          break;
        }

        v21 = v17++ >= 0xFFF;
      }

      while (!v21);
      if (v18)
      {
        v22 = v18 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
      }

      *buf = 136315906;
      v73 = v22;
      v74 = 1024;
      v75 = 141;
      v76 = 2048;
      v77 = a4;
      v78 = 1024;
      LODWORD(v79) = 300;
      _os_log_impl(&dword_2488FB000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Requested refresh interval must be greater than base refresh interval. { refreshInterval=%f, baseRefreshInterval=%d }", buf, 0x22u);
    }

    v15 = 0;
    goto LABEL_93;
  }

  if (DCInternalLogSystem_onceToken_5 != -1)
  {
    __39__DCBGSTaskController_registerForTask___block_invoke_cold_1();
  }

  v23 = DCInternalLogSystem_log_5;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = 0;
    v25 = 0;
    v26 = 47;
    do
    {
      v27 = &aLibraryCachesC_5[v24];
      if (v26 == 47)
      {
        v25 = &aLibraryCachesC_5[v24];
      }

      v26 = v27[1];
      if (!v27[1])
      {
        break;
      }

      v21 = v24++ >= 0xFFF;
    }

    while (!v21);
    if (v25)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
    }

    v29 = [v12 taskID];
    *buf = 136315906;
    v73 = v28;
    v74 = 1024;
    v75 = 112;
    v76 = 2080;
    v77 = COERCE_DOUBLE([v29 UTF8String]);
    v78 = 2048;
    v79 = a4;
    _os_log_impl(&dword_2488FB000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to update task's refresh interval. { taskID=%s, refreshInterval=%f }", buf, 0x26u);
  }

  v30 = [MEMORY[0x277CF0810] sharedScheduler];
  v31 = [v12 taskID];
  v32 = [v30 taskRequestForIdentifier:v31];

  if (v32)
  {
    [v32 setInterval:a4];
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v12 setRefreshInterval:v33];

    v34 = [MEMORY[0x277CF0810] sharedScheduler];
    v71 = 0;
    v35 = [v34 updateTaskRequest:v32 error:&v71];
    v36 = v71;

    if (v36)
    {
      if (DCInternalLogSystem_onceToken_5 != -1)
      {
        [DCBGSTaskController registerForTask:];
      }

      v37 = DCInternalLogSystem_log_5;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = 0;
        v39 = 0;
        v40 = 47;
        do
        {
          v41 = &aLibraryCachesC_5[v38];
          if (v40 == 47)
          {
            v39 = &aLibraryCachesC_5[v38];
          }

          v40 = v41[1];
          if (!v41[1])
          {
            break;
          }

          v21 = v38++ >= 0xFFF;
        }

        while (!v21);
        v42 = [v36 localizedDescription];
        v43 = v42;
        if (v39)
        {
          v44 = v39 + 1;
        }

        else
        {
          v44 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
        }

        *buf = 136315650;
        v73 = v44;
        v74 = 1024;
        v75 = 127;
        v76 = 2112;
        v77 = *&v42;
        _os_log_impl(&dword_2488FB000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to update task. { error=%@ }", buf, 0x1Cu);
      }
    }

    else
    {
      if (v35)
      {
        if (DCInternalLogSystem_onceToken_5 != -1)
        {
          [DCBGSTaskController registerForTask:];
        }

        v53 = DCInternalLogSystem_log_5;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = 0;
          v55 = 0;
          v56 = 47;
          do
          {
            v57 = &aLibraryCachesC_5[v54];
            if (v56 == 47)
            {
              v55 = &aLibraryCachesC_5[v54];
            }

            v56 = v57[1];
            if (!v57[1])
            {
              break;
            }

            v21 = v54++ >= 0xFFF;
          }

          while (!v21);
          if (v55)
          {
            v58 = v55 + 1;
          }

          else
          {
            v58 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
          }

          v59 = [v12 taskID];
          v60 = v59;
          v61 = [v59 UTF8String];
          *buf = 136315906;
          v73 = v58;
          v74 = 1024;
          v75 = 136;
          v76 = 2080;
          v77 = *&v61;
          v78 = 2048;
          v79 = a4;
          _os_log_impl(&dword_2488FB000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updated task. { taskID=%s, refreshInterval=%f }", buf, 0x26u);
        }

        v62 = [(DCBGSTaskController *)v7 tasks];
        [v62 replaceObjectAtIndex:i withObject:v12];

        v15 = 1;
        goto LABEL_92;
      }

      if (DCInternalLogSystem_onceToken_5 != -1)
      {
        [DCBGSTaskController registerForTask:];
      }

      v63 = DCInternalLogSystem_log_5;
      if (os_log_type_enabled(DCInternalLogSystem_log_5, OS_LOG_TYPE_DEBUG))
      {
        v64 = 0;
        v65 = 0;
        v66 = 47;
        do
        {
          v67 = &aLibraryCachesC_5[v64];
          if (v66 == 47)
          {
            v65 = &aLibraryCachesC_5[v64];
          }

          v66 = v67[1];
          if (!v67[1])
          {
            break;
          }

          v21 = v64++ >= 0xFFF;
        }

        while (!v21);
        if (v65)
        {
          v68 = v65 + 1;
        }

        else
        {
          v68 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
        }

        *buf = 136315394;
        v73 = v68;
        v74 = 1024;
        v75 = 132;
        _os_log_impl(&dword_2488FB000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to update task.", buf, 0x12u);
      }
    }
  }

  else
  {
    if (DCInternalLogSystem_onceToken_5 != -1)
    {
      [DCBGSTaskController registerForTask:];
    }

    v36 = DCInternalLogSystem_log_5;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v45 = 0;
      v46 = 0;
      v47 = 47;
      do
      {
        v48 = &aLibraryCachesC_5[v45];
        if (v47 == 47)
        {
          v46 = &aLibraryCachesC_5[v45];
        }

        v47 = v48[1];
        if (!v48[1])
        {
          break;
        }

        v21 = v45++ >= 0xFFF;
      }

      while (!v21);
      if (v46)
      {
        v49 = v46 + 1;
      }

      else
      {
        v49 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
      }

      v50 = [v12 taskID];
      v51 = v50;
      v52 = [v50 UTF8String];
      *buf = 136315906;
      v73 = v49;
      v74 = 1024;
      v75 = 116;
      v76 = 2080;
      v77 = *&v52;
      v78 = 2048;
      v79 = a4;
      _os_log_impl(&dword_2488FB000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot update to refresh interval, failed to fetch task. { taskID=%s, refreshInterval=%f }", buf, 0x26u);
    }
  }

  v15 = 0;
LABEL_92:

LABEL_93:
LABEL_94:
  objc_sync_exit(v7);

  v69 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (DCInternalLogSystem_onceToken_5 != -1)
  {
    __39__DCBGSTaskController_registerForTask___block_invoke_cold_1();
  }

  v12 = DCInternalLogSystem_log_5;
  if (os_log_type_enabled(DCInternalLogSystem_log_5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 0;
    v14 = 0;
    v15 = 47;
    do
    {
      v16 = &aLibraryCachesC_5[v13];
      if (v15 == 47)
      {
        v14 = &aLibraryCachesC_5[v13];
      }

      v15 = v16[1];
      if (!v16[1])
      {
        break;
      }
    }

    while (v13++ < 0xFFF);
    if (v14)
    {
      v18 = v14 + 1;
    }

    else
    {
      v18 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
    }

    v34 = 136315650;
    v35 = v18;
    v36 = 1024;
    v37 = 154;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_2488FB000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Key was changed. { key=%@ }", &v34, 0x1Cu);
  }

  v19 = [(DCBGSTaskController *)self tasks];
  v20 = [v19 count];

  if (v20)
  {
    v21 = 0;
    do
    {
      v22 = [(DCBGSTaskController *)self tasks];
      v23 = [v22 objectAtIndexedSubscript:v21];
      v24 = [v23 observerID];
      v25 = [v24 isEqualToString:v9];

      if (v25)
      {
        v26 = [(DCBGSTaskController *)self tasks];
        v27 = [v26 objectAtIndexedSubscript:v21];

        v28 = [(DCBGSTaskController *)self defaultsSuite];
        v29 = [v28 integerForKey:v9];

        v30 = [v27 taskID];
        [(DCBGSTaskController *)self updateTaskWithIdentifier:v30 withRefreshInterval:v29];
      }

      ++v21;
      v31 = [(DCBGSTaskController *)self tasks];
      v32 = [v31 count];
    }

    while (v32 > v21);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleTask:(id)a3 shouldExit:(BOOL *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v7 = [(DCBGSTaskController *)v6 tasks];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [v11 taskID];
        v13 = [v5 identifier];
        v14 = v12 == v13;

        if (v14)
        {
          if (DCInternalLogSystem_onceToken_5 != -1)
          {
            [DCBGSTaskController registerForTask:];
          }

          v15 = DCInternalLogSystem_log_5;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = 0;
            v17 = 0;
            v18 = 47;
            do
            {
              v19 = &aLibraryCachesC_5[v16];
              if (v18 == 47)
              {
                v17 = &aLibraryCachesC_5[v16];
              }

              v18 = v19[1];
              if (!v19[1])
              {
                break;
              }
            }

            while (v16++ < 0xFFF);
            v21 = [v11 taskID];
            v22 = v21;
            *buf = 136315650;
            if (v17)
            {
              v23 = v17 + 1;
            }

            else
            {
              v23 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/DeviceCheckInternal/Source/Interfaces/DCBGSTaskController.m";
            }

            v33 = v23;
            v34 = 1024;
            v35 = 171;
            v36 = 2112;
            v37 = v21;
            _os_log_impl(&dword_2488FB000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invoking handler for task. { taskID=%@ }", buf, 0x1Cu);
          }

          v24 = [v11 taskHandler];
          (v24)[2](v24, v5, a4);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v8);
  }

  objc_sync_exit(obj);
  v25 = *MEMORY[0x277D85DE8];
}

@end