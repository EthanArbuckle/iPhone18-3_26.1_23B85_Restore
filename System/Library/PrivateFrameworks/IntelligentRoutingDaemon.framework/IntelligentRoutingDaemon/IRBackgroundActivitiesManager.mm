@interface IRBackgroundActivitiesManager
- (IRBackgroundActivitiesManager)initWithServer:(id)server;
- (IRSessionServer)server;
- (void)registerForRepeatingBackgroundXPCActivityWithIdentifier:(id)identifier interval:(int64_t)interval isDiskIntensive:(BOOL)intensive isMemoryIntensive:(BOOL)memoryIntensive handler:(id)handler;
@end

@implementation IRBackgroundActivitiesManager

- (IRBackgroundActivitiesManager)initWithServer:(id)server
{
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = IRBackgroundActivitiesManager;
  v5 = [(IRBackgroundActivitiesManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(IRBackgroundActivitiesManager *)v5 setServer:serverCopy];
    mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
    [(IRBackgroundActivitiesManager *)v6 setScheduler:mEMORY[0x277CF0810]];

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.intelligentroutingd.IRBackgroundActivitiesManager", v8);
    [(IRBackgroundActivitiesManager *)v6 setQueue:v9];
  }

  return v6;
}

- (void)registerForRepeatingBackgroundXPCActivityWithIdentifier:(id)identifier interval:(int64_t)interval isDiskIntensive:(BOOL)intensive isMemoryIntensive:(BOOL)memoryIntensive handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(IRBackgroundActivitiesManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke;
  block[3] = &unk_2797E2440;
  block[4] = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  intervalCopy = interval;
  intensiveCopy = intensive;
  memoryIntensiveCopy = memoryIntensive;
  v15 = handlerCopy;
  v16 = identifierCopy;
  dispatch_async(queue, block);
}

void __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*v2 scheduler];
  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_2;
  v22[3] = &unk_2797E2418;
  objc_copyWeak(&v25, &location);
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  LOBYTE(v5) = [v3 registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:v22];

  if (v5)
  {
    v7 = [*(a1 + 32) scheduler];
    v8 = [v7 taskRequestForIdentifier:*v4];

    if (v8)
    {
      v9 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v4;
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEFAULT, "#background-activity-manager, Task %@ already submitted, bailing out", buf, 0xCu);
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:*v4];
      [v12 setInterval:*(a1 + 56)];
      [v12 setMinDurationBetweenInstances:*(a1 + 56) * 0.8];
      [v12 setPriority:1];
      [v12 setRequiresUserInactivity:1];
      if (*(a1 + 64))
      {
        v13 = 1;
      }

      else
      {
        v13 = *(a1 + 65);
      }

      [v12 setResourceIntensive:v13 & 1];
      if (*(a1 + 64) == 1)
      {
        [v12 setResources:{objc_msgSend(v12, "resources") | 4}];
      }

      if (*(a1 + 65) == 1)
      {
        [v12 setResources:{objc_msgSend(v12, "resources") | 2}];
      }

      v14 = [*(a1 + 32) scheduler];
      v21 = 0;
      v15 = [v14 submitTaskRequest:v12 error:&v21];
      v16 = v21;

      v17 = *MEMORY[0x277D21260];
      v18 = *MEMORY[0x277D21260];
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v4;
          *buf = 138412290;
          v28 = v19;
          _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_DEFAULT, "#background-activity-manager, Task %@ registered and submitted", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_cold_2(v4, v16, v17);
      }
    }
  }

  else
  {
    v11 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_cold_1((a1 + 40), v11);
    }
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v20 = *MEMORY[0x277D85DE8];
}

void __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    v7 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = MEMORY[0x277CBEAA8];
      v10 = v7;
      v11 = [v9 date];
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_DEFAULT, "#background-activity-manager, Task %@ started at %@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_18;
    v13[3] = &unk_2797E0BA8;
    v14 = *(a1 + 32);
    [v3 setExpirationHandler:v13];
    [v3 setTaskCompleted];
    (*(*(a1 + 40) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25543D000, v2, OS_LOG_TYPE_DEFAULT, "#background-activity-manager, Task %@ expired", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (IRSessionServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

void __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25543D000, a2, OS_LOG_TYPE_ERROR, "#background-activity-manager, [ErrorId - Task already registered] Task %@ already registered, something went wrong!", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __140__IRBackgroundActivitiesManager_registerForRepeatingBackgroundXPCActivityWithIdentifier_interval_isDiskIntensive_isMemoryIntensive_handler___block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25543D000, log, OS_LOG_TYPE_ERROR, "#background-activity-manager, [ErrorId - Task cannot submit] Task %@ could not be submitted with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end