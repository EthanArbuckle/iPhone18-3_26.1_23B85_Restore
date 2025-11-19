@interface EDSearchableIndexScheduler
+ (BOOL)isDeferrableActivityType:(id)a3;
+ (NSSet)deferrableActivityTypes;
+ (OS_os_log)log;
+ (id)activityTypes;
+ (id)taskTypes;
- (BOOL)hasAvailableIndexingBudgetForSearchableIndexSchedulable:(id)a3;
- (BOOL)isDataSourceIndexingPermitted;
- (BOOL)isIndexingEnabledForActivityType:(id)a3;
- (BOOL)isIndexingEnabledForTaskType:(id)a3;
- (EDSearchableIndexSchedulable)schedulable;
- (EDSearchableIndexScheduler)initWithSchedulable:(id)a3;
- (double)maintenanceIndexingTime;
- (double)otherIndexingTime;
- (id)_xpcActivityIdentifierForActivityType:(id)a3;
- (id)_xpcCriteriaBuilderBlockForActivityType:(id)a3;
- (void)_beginIndexingForTaskType:(id)a3 task:(id)a4;
- (void)_deferActivitiesIfNecessary;
- (void)_disableIndexingForActivityType:(id)a3 defer:(BOOL)a4;
- (void)_disableIndexingForTaskType:(id)a3;
- (void)_enableIndexingForActivityType:(id)a3;
- (void)_enableIndexingForTaskType:(id)a3;
- (void)_logIndexingPowerEventWithIdentifier:(id)a3 additionalEventData:(id)a4 usePersistentLog:(BOOL)a5;
- (void)_periodicallyCheckForDeferralIfNecessary;
- (void)_registerActivityForType:(id)a3 builder:(id)a4 runner:(id)a5;
- (void)_startScheduling;
- (void)_stopIndexingForTaskType:(id)a3 requestRetry:(BOOL)a4 backlogComplete:(BOOL)a5;
- (void)_stopScheduling;
- (void)beginIndexingForActivityType:(id)a3 activity:(id)a4;
- (void)dealloc;
- (void)deferIndexingForActivityType:(id)a3;
- (void)indexingDidFinishForSearchableIndexSchedulable:(id)a3 backlogComplete:(BOOL)a4;
- (void)indexingDidResumeForSearchableIndexSchedulable:(id)a3;
- (void)indexingDidSuspendForSearchableIndexSchedulable:(id)a3;
- (void)searchableIndexSchedulable:(id)a3 didGenerateImportantPowerEventWithIdentifier:(id)a4 eventData:(id)a5;
- (void)searchableIndexSchedulable:(id)a3 didGeneratePowerEventWithIdentifier:(id)a4 eventData:(id)a5;
- (void)searchableIndexSchedulable:(id)a3 didIndexForTime:(double)a4;
- (void)searchableIndexSchedulable:(id)a3 didIndexItemCount:(int64_t)a4 lastItemDateReceived:(id)a5;
- (void)setScheduling:(BOOL)a3;
@end

@implementation EDSearchableIndexScheduler

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDSearchableIndexScheduler_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_92 != -1)
  {
    dispatch_once(&log_onceToken_92, block);
  }

  v2 = log_log_92;

  return v2;
}

void __33__EDSearchableIndexScheduler_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_92;
  log_log_92 = v1;
}

+ (id)activityTypes
{
  if (activityTypes_onceToken != -1)
  {
    +[EDSearchableIndexScheduler activityTypes];
  }

  v3 = activityTypes_activityTypes;

  return v3;
}

void __43__EDSearchableIndexScheduler_activityTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"budgeted", @"maintenance", 0}];
  v1 = activityTypes_activityTypes;
  activityTypes_activityTypes = v0;
}

+ (NSSet)deferrableActivityTypes
{
  if (deferrableActivityTypes_onceToken != -1)
  {
    +[EDSearchableIndexScheduler deferrableActivityTypes];
  }

  v3 = deferrableActivityTypes_deferrableActivityTypes;

  return v3;
}

void __53__EDSearchableIndexScheduler_deferrableActivityTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"budgeted"];
  v1 = deferrableActivityTypes_deferrableActivityTypes;
  deferrableActivityTypes_deferrableActivityTypes = v0;
}

+ (id)taskTypes
{
  if (taskTypes_onceToken != -1)
  {
    +[EDSearchableIndexScheduler taskTypes];
  }

  v3 = taskTypes_taskTypes;

  return v3;
}

void __39__EDSearchableIndexScheduler_taskTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"fastpass"];
  v1 = taskTypes_taskTypes;
  taskTypes_taskTypes = v0;
}

+ (BOOL)isDeferrableActivityType:(id)a3
{
  v3 = a3;
  v4 = +[EDSearchableIndexScheduler deferrableActivityTypes];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (EDSearchableIndexScheduler)initWithSchedulable:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EDSearchableIndexScheduler;
  v5 = [(EDSearchableIndexScheduler *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_schedulable, v4);
    v7 = [@"com.apple.email.searchableIndex.scheduler" stringByAppendingString:@".indexingStateQueue"];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    indexingStateQueue = v6->_indexingStateQueue;
    v6->_indexingStateQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activities = v6->_activities;
    v6->_activities = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasks = v6->_tasks;
    v6->_tasks = v14;

    v16 = objc_alloc_init(EDSearchableIndexSchedulerState);
    state = v6->_state;
    v6->_state = v16;

    v18 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Initializing scheduler", v20, 2u);
    }
  }

  return v6;
}

- (void)dealloc
{
  [(EDSearchableIndexScheduler *)self _stopAllIndexingBacklogComplete:0];
  v3.receiver = self;
  v3.super_class = EDSearchableIndexScheduler;
  [(EDSearchableIndexScheduler *)&v3 dealloc];
}

- (void)setScheduling:(BOOL)a3
{
  if (self->_scheduling != a3)
  {
    self->_scheduling = a3;
    if (a3)
    {
      [(EDSearchableIndexScheduler *)self _startScheduling];
    }

    else
    {
      [(EDSearchableIndexScheduler *)self _stopScheduling];
    }
  }
}

- (id)_xpcActivityIdentifierForActivityType:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.email.searchableIndex.scheduler", a3];

  return v3;
}

- (id)_xpcCriteriaBuilderBlockForActivityType:(id)a3
{
  v5 = a3;
  if ([v5 isEqual:@"budgeted"])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__EDSearchableIndexScheduler__xpcCriteriaBuilderBlockForActivityType___block_invoke;
    aBlock[3] = &unk_1E82571A8;
    v15 = v5;
    v16 = self;
    v6 = _Block_copy(aBlock);
    v7 = v15;
LABEL_5:

    goto LABEL_7;
  }

  if ([v5 isEqual:@"maintenance"])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__EDSearchableIndexScheduler__xpcCriteriaBuilderBlockForActivityType___block_invoke_47;
    v11[3] = &unk_1E82571A8;
    v12 = v5;
    v13 = self;
    v6 = _Block_copy(v11);
    v7 = v12;
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexScheduler.m" lineNumber:186 description:{@"Attempting to find a criteria builder block indexing for an unsupported activity type: %@", v5}];

  v6 = 0;
LABEL_7:
  v9 = _Block_copy(v6);

  return v9;
}

void __70__EDSearchableIndexScheduler__xpcCriteriaBuilderBlockForActivityType___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v11 = 138543618;
    v12 = v5;
    v13 = 2048;
    v14 = 3600;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Configuring %{public}@ actvitity with interval: %lld", &v11, 0x16u);
  }

  xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9CB0], 3600);
  xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9C68], 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 0);
  v6 = [*(a1 + 40) requireClassA];
  v7 = v3;
  v8 = v7;
  v9 = MEMORY[0x1E69E9D98];
  if (!v6)
  {
    v9 = MEMORY[0x1E69E9DA8];
  }

  xpc_dictionary_set_BOOL(v7, *v9, 1);

  v10 = *MEMORY[0x1E69E9840];
}

void __70__EDSearchableIndexScheduler__xpcCriteriaBuilderBlockForActivityType___block_invoke_47(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v13 = 138543618;
    v14 = v5;
    v15 = 2048;
    v16 = 64800;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Configuring %{public}@ actvitity with interval: %lld", &v13, 0x16u);
  }

  xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9CB0], 64800);
  xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 1);
  v6 = [MEMORY[0x1E699AE70] protectionClass];
  v7 = v6 == *MEMORY[0x1E696A378];

  if (v7)
  {
    v8 = [*(a1 + 40) requireClassA];
    v9 = v3;
    v10 = v9;
    v11 = MEMORY[0x1E69E9D98];
    if (!v8)
    {
      v11 = MEMORY[0x1E69E9DA8];
    }

    xpc_dictionary_set_BOOL(v9, *v11, 1);
  }

  else
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D58], 1);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_startScheduling
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Starting scheduling", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = +[EDSearchableIndexScheduler activityTypes];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(EDSearchableIndexScheduler *)self _xpcCriteriaBuilderBlockForActivityType:v8];
        if (v9)
        {
          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __46__EDSearchableIndexScheduler__startScheduling__block_invoke;
          aBlock[3] = &unk_1E82571D0;
          objc_copyWeak(&v20, buf);
          aBlock[4] = v8;
          v10 = _Block_copy(aBlock);
          [(EDSearchableIndexScheduler *)self _registerActivityForType:v8 builder:v9 runner:v10];

          objc_destroyWeak(&v20);
          objc_destroyWeak(buf);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  objc_initWeak(buf, self);
  v11 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v12 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__EDSearchableIndexScheduler__startScheduling__block_invoke_57;
  v17[3] = &unk_1E82571F8;
  objc_copyWeak(&v18, buf);
  v13 = [v11 registerForTaskWithIdentifier:@"com.apple.email.search.FastPass" usingQueue:v12 launchHandler:v17];

  if (v13)
  {
    v14 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Registered search fast pass.", v16, 2u);
    }
  }

  else
  {
    v14 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [EDSearchableIndexScheduler _startScheduling];
    }
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v15 = *MEMORY[0x1E69E9840];
}

void __46__EDSearchableIndexScheduler__startScheduling__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!xpc_activity_set_state(v3, 4))
    {
      v5 = +[EDSearchableIndexScheduler log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        state = xpc_activity_get_state(v3);
        __46__EDSearchableIndexScheduler__startScheduling__block_invoke_cold_1(v6, v9, state, v5);
      }
    }

    [WeakRetained beginIndexingForActivityType:*(a1 + 32) activity:v3];
  }

  else
  {
    xpc_activity_set_state(v3, 5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __46__EDSearchableIndexScheduler__startScheduling__block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Search fast pass task started.", v7, 2u);
    }

    [WeakRetained _beginIndexingForTaskType:@"fastpass" task:v3];
  }

  else
  {
    v6 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__EDSearchableIndexScheduler__startScheduling__block_invoke_57_cold_1();
    }

    [v3 setTaskCompleted];
  }
}

- (void)_registerActivityForType:(id)a3 builder:(id)a4 runner:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if ([v13 isEqual:@"budgeted"])
  {
    v11 = @"com.apple.email.searchableIndex.scheduler.budgeted";
LABEL_5:
    [(__CFString *)v11 UTF8String];
    ef_xpc_activity_register();
    goto LABEL_7;
  }

  if ([v13 isEqual:@"maintenance"])
  {
    v11 = @"com.apple.email.searchableIndex.scheduler.maintenance";
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"EDSearchableIndexScheduler.m" lineNumber:249 description:{@"Attempting to register unsupported activity type: %@", v13}];

LABEL_7:
}

- (void)_stopScheduling
{
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDSearchableIndexScheduler__stopScheduling__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __45__EDSearchableIndexScheduler__stopScheduling__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopAllIndexingBacklogComplete:0];
  v1 = [MEMORY[0x1E698E4B8] sharedScheduler];
  [v1 deregisterTaskWithIdentifier:@"com.apple.email.search.FastPass"];

  v2 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "_stopScheduling - deregistered search fast pass", v3, 2u);
  }
}

- (void)beginIndexingForActivityType:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EDSearchableIndexScheduler_beginIndexingForActivityType_activity___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__EDSearchableIndexScheduler_beginIndexingForActivityType_activity___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activities];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v5 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__EDSearchableIndexScheduler_beginIndexingForActivityType_activity___block_invoke_cold_1((a1 + 40), v5);
    }

    xpc_activity_set_state(v4, 5);
    v6 = [*(a1 + 32) state];
    [v6 disableIndexingForActivityType:*v3];
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) activities];
  [v8 setObject:v7 forKeyedSubscript:*v3];

  if ([*v3 isEqual:@"maintenance"])
  {
    v9 = [*(a1 + 32) state];
    [v9 setMaintenanceIndexingTime:0.0];

    v10 = [*(a1 + 32) schedulable];
    [v10 performMaintenancePreWork];
  }

  [*(a1 + 32) _enableIndexingForActivityType:*(a1 + 40)];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = @"activityType";
  v16[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 _logIndexingPowerEventWithIdentifier:@"Enabled indexing." additionalEventData:v13 usePersistentLog:1];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_beginIndexingForTaskType:(id)a3 task:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(EDSearchableIndexScheduler *)self tasks];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(EDSearchableIndexScheduler *)v6 _beginIndexingForTaskType:v10 task:v11];
    }

    [v10 setTaskCompleted];
  }

  v12 = [(EDSearchableIndexScheduler *)self tasks];
  [v12 setObject:v7 forKeyedSubscript:v6];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __61__EDSearchableIndexScheduler__beginIndexingForTaskType_task___block_invoke;
  v19 = &unk_1E8250098;
  objc_copyWeak(&v21, &location);
  v13 = v6;
  v20 = v13;
  [v7 setExpirationHandler:&v16];
  [(EDSearchableIndexScheduler *)self _enableIndexingForTaskType:v13, v16, v17, v18, v19];
  v23 = @"taskType";
  v24[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(EDSearchableIndexScheduler *)self _logIndexingPowerEventWithIdentifier:@"Enabled indexing." additionalEventData:v14 usePersistentLog:1];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x1E69E9840];
}

void __61__EDSearchableIndexScheduler__beginIndexingForTaskType_task___block_invoke(uint64_t a1)
{
  v2 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Search fast pass task expired.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained indexingStateQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__EDSearchableIndexScheduler__beginIndexingForTaskType_task___block_invoke_66;
    v6[3] = &unk_1E8250128;
    v6[4] = v4;
    v7 = *(a1 + 32);
    dispatch_async(v5, v6);
  }
}

- (void)_stopIndexingForTaskType:(id)a3 requestRetry:(BOOL)a4 backlogComplete:(BOOL)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(EDSearchableIndexScheduler *)self tasks];
  v11 = [v10 objectForKeyedSubscript:v8];

  [(EDSearchableIndexScheduler *)self _disableIndexingForTaskType:v8];
  v12 = [(EDSearchableIndexScheduler *)self tasks];
  [v12 removeObjectForKey:v8];

  if (v11)
  {
    if (v6)
    {
      v20 = 0;
      v13 = [v11 setTaskExpiredWithRetryAfter:&v20 error:300.0];
      v14 = v20;
      if (v13)
      {
        v15 = +[EDSearchableIndexScheduler log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v8;
          _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ task requested more time", buf, 0xCu);
        }
      }

      else
      {
        v15 = +[EDSearchableIndexScheduler log];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [EDSearchableIndexScheduler _stopIndexingForTaskType:v8 requestRetry:v14 backlogComplete:v15];
        }
      }
    }

    else
    {
      if (v8 == @"fastpass" && !a5)
      {
        v16 = +[EDSearchableIndexScheduler log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "reportFeatureCheckpoint BGSystemTaskFeatureCheckpointPreviewAvailable for kSemanticSearchFeatureCode", buf, 2u);
        }

        [MEMORY[0x1E698E4A0] reportFeatureCheckpoint:30 forFeature:301 error:0];
      }

      v17 = +[EDSearchableIndexScheduler log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v8;
        _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ task completed", buf, 0xCu);
      }

      [v11 setTaskCompleted];
    }
  }

  v21 = @"taskType";
  v22 = v8;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [(EDSearchableIndexScheduler *)self _logIndexingPowerEventWithIdentifier:@"Stopped indexing." additionalEventData:v18 usePersistentLog:1];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deferIndexingForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__EDSearchableIndexScheduler_deferIndexingForActivityType___block_invoke;
  v7[3] = &unk_1E8250128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_deferActivitiesIfNecessary
{
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v3);

  activities = self->_activities;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__EDSearchableIndexScheduler__deferActivitiesIfNecessary__block_invoke;
  v5[3] = &unk_1E8257220;
  v5[4] = self;
  [(NSMutableDictionary *)activities enumerateKeysAndObjectsUsingBlock:v5];
}

void __57__EDSearchableIndexScheduler__deferActivitiesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (xpc_activity_should_defer(v6))
  {
    v7 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "XPC Requested deferral of activity %@", &v9, 0xCu);
    }

    [*(a1 + 32) _stopIndexingForActivityType:v5 shouldDeferIfPossible:1];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_periodicallyCheckForDeferralIfNecessary
{
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v3);

  v7 = [(EDSearchableIndexScheduler *)self state];
  if ([v7 isIndexingEnabledByActivities])
  {
    v4 = [(EDSearchableIndexScheduler *)self scheduledDeferralCheck];

    if (!v4)
    {
      [(EDSearchableIndexScheduler *)self setScheduledDeferralCheck:1];
      objc_initWeak(&location, self);
      v5 = dispatch_time(0, 3000000000);
      v6 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__EDSearchableIndexScheduler__periodicallyCheckForDeferralIfNecessary__block_invoke;
      block[3] = &unk_1E8250808;
      objc_copyWeak(&v9, &location);
      dispatch_after(v5, v6, block);

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __70__EDSearchableIndexScheduler__periodicallyCheckForDeferralIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "Checking for XPC deferral", v3, 2u);
  }

  [WeakRetained _deferActivitiesIfNecessary];
  [WeakRetained setScheduledDeferralCheck:0];
  [WeakRetained _periodicallyCheckForDeferralIfNecessary];
}

- (void)_enableIndexingForActivityType:(id)a3
{
  v11 = a3;
  v4 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(EDSearchableIndexScheduler *)self state];
  v6 = [v5 isIndexingEnabledForActivityType:v11];

  if ((v6 & 1) == 0)
  {
    v7 = [(EDSearchableIndexScheduler *)self state];
    [v7 enableIndexingForActivityType:v11];

    v8 = [(EDSearchableIndexScheduler *)self state];
    v9 = [v8 isDataSourceIndexingPermitted];
    v10 = [(EDSearchableIndexScheduler *)self schedulable];
    [v10 setDataSourceIndexingPermitted:v9];

    [(EDSearchableIndexScheduler *)self _periodicallyCheckForDeferralIfNecessary];
  }
}

- (void)_enableIndexingForTaskType:(id)a3
{
  v11 = a3;
  v4 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(EDSearchableIndexScheduler *)self state];
  v6 = [v5 isIndexingEnabledForTaskType:v11];

  if ((v6 & 1) == 0)
  {
    v7 = [(EDSearchableIndexScheduler *)self state];
    [v7 enableIndexingForTaskType:v11];

    v8 = [(EDSearchableIndexScheduler *)self state];
    v9 = [v8 isDataSourceIndexingPermitted];
    v10 = [(EDSearchableIndexScheduler *)self schedulable];
    [v10 setDataSourceIndexingPermitted:v9];
  }
}

- (void)_disableIndexingForActivityType:(id)a3 defer:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(EDSearchableIndexScheduler *)self state];
  v8 = [v7 isIndexingEnabledForActivityType:v6];

  if (v8)
  {
    v9 = [(EDSearchableIndexScheduler *)self state];
    [v9 disableIndexingForActivityType:v6];

    v10 = [(EDSearchableIndexScheduler *)self state];
    v11 = [v10 isDataSourceIndexingPermitted];
    v12 = [(EDSearchableIndexScheduler *)self schedulable];
    [v12 setDataSourceIndexingPermitted:v11];

    v13 = [(EDSearchableIndexScheduler *)self activities];
    v14 = [v13 objectForKeyedSubscript:v6];

    if (v14)
    {
      v15 = v4 ? 3 : 5;
      if (!xpc_activity_set_state(v14, v15))
      {
        v16 = +[EDSearchableIndexScheduler log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = 138543874;
          v19 = v6;
          v20 = 2048;
          state = xpc_activity_get_state(v14);
          v22 = 2048;
          v23 = v15;
          _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Failed to transition %{public}@ from state %ld to state %ld.", &v18, 0x20u);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_disableIndexingForTaskType:(id)a3
{
  v11 = a3;
  v4 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(EDSearchableIndexScheduler *)self state];
  v6 = [v5 isIndexingEnabledForTaskType:v11];

  if (v6)
  {
    v7 = [(EDSearchableIndexScheduler *)self state];
    [v7 disableIndexingForTaskType:v11];

    v8 = [(EDSearchableIndexScheduler *)self state];
    v9 = [v8 isDataSourceIndexingPermitted];
    v10 = [(EDSearchableIndexScheduler *)self schedulable];
    [v10 setDataSourceIndexingPermitted:v9];
  }
}

- (BOOL)isIndexingEnabledForActivityType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EDSearchableIndexScheduler_isIndexingEnabledForActivityType___block_invoke;
  block[3] = &unk_1E8251C08;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return self;
}

void __63__EDSearchableIndexScheduler_isIndexingEnabledForActivityType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isIndexingEnabledForActivityType:*(a1 + 40)];
}

- (BOOL)isIndexingEnabledForTaskType:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EDSearchableIndexScheduler_isIndexingEnabledForTaskType___block_invoke;
  block[3] = &unk_1E8251C08;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return self;
}

void __59__EDSearchableIndexScheduler_isIndexingEnabledForTaskType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isIndexingEnabledForTaskType:*(a1 + 40)];
}

- (BOOL)isDataSourceIndexingPermitted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__EDSearchableIndexScheduler_isDataSourceIndexingPermitted__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __59__EDSearchableIndexScheduler_isDataSourceIndexingPermitted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isDataSourceIndexingPermitted];
}

- (double)otherIndexingTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__EDSearchableIndexScheduler_otherIndexingTime__block_invoke;
  v6[3] = &unk_1E8251C30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__EDSearchableIndexScheduler_otherIndexingTime__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) state];
  [v3 otherIndexingTime];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (double)maintenanceIndexingTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EDSearchableIndexScheduler_maintenanceIndexingTime__block_invoke;
  v6[3] = &unk_1E8251C30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __53__EDSearchableIndexScheduler_maintenanceIndexingTime__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) state];
  [v3 maintenanceIndexingTime];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (void)_logIndexingPowerEventWithIdentifier:(id)a3 additionalEventData:(id)a4 usePersistentLog:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(EDSearchableIndexScheduler *)self state];
  v11 = [v10 powerEventData];
  v12 = [v11 mutableCopy];

  if ([v9 count])
  {
    [v12 addEntriesFromDictionary:v9];
  }

  if (v5)
  {
    v13 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v12;
      v14 = v13;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_1C61EF000, v14, v15, "%{public}@ : %{public}@", &v17, 0x16u);
    }
  }

  else
  {
    v13 = +[EDSearchableIndexScheduler log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v12;
      v14 = v13;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_8;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)searchableIndexSchedulable:(id)a3 didIndexForTime:(double)a4
{
  v6 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__EDSearchableIndexScheduler_searchableIndexSchedulable_didIndexForTime___block_invoke;
  v7[3] = &unk_1E8250A90;
  v7[4] = self;
  *&v7[5] = a4;
  dispatch_async(v6, v7);
}

uint64_t __73__EDSearchableIndexScheduler_searchableIndexSchedulable_didIndexForTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [v2 didIndexForTime:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _deferActivitiesIfNecessary];
}

- (void)searchableIndexSchedulable:(id)a3 didIndexItemCount:(int64_t)a4 lastItemDateReceived:(id)a5
{
  v7 = a5;
  v8 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__EDSearchableIndexScheduler_searchableIndexSchedulable_didIndexItemCount_lastItemDateReceived___block_invoke;
  block[3] = &unk_1E8251A78;
  v12 = self;
  v13 = a4;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

uint64_t __96__EDSearchableIndexScheduler_searchableIndexSchedulable_didIndexItemCount_lastItemDateReceived___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndexScheduler log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v12[0] = 67109378;
    v12[1] = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "didIndexItemCount: %d lastItemDateReceived: %@", v12, 0x12u);
  }

  v5 = [*(a1 + 40) state];
  [v5 didIndexItemCount:*(a1 + 48)];

  v6 = [*(a1 + 40) state];
  if ([v6 isIndexingEnabledForTaskType:@"fastpass"])
  {
    v7 = [*(a1 + 40) state];
    if ([v7 fastPassIndexedItemCount] >= 10000)
    {

LABEL_8:
      [*(a1 + 40) _stopIndexingForTaskType:@"fastpass" requestRetry:0 backlogComplete:0];
      goto LABEL_9;
    }

    [*(a1 + 32) timeIntervalSinceNow];
    v9 = fabs(v8) < 2628000.0;

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_9:
  result = [*(a1 + 40) _deferActivitiesIfNecessary];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)indexingDidResumeForSearchableIndexSchedulable:(id)a3
{
  v4 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__EDSearchableIndexScheduler_indexingDidResumeForSearchableIndexSchedulable___block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)indexingDidSuspendForSearchableIndexSchedulable:(id)a3
{
  v4 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__EDSearchableIndexScheduler_indexingDidSuspendForSearchableIndexSchedulable___block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)indexingDidFinishForSearchableIndexSchedulable:(id)a3 backlogComplete:(BOOL)a4
{
  v6 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__EDSearchableIndexScheduler_indexingDidFinishForSearchableIndexSchedulable_backlogComplete___block_invoke;
  v7[3] = &unk_1E8256800;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
}

- (void)searchableIndexSchedulable:(id)a3 didGeneratePowerEventWithIdentifier:(id)a4 eventData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__EDSearchableIndexScheduler_searchableIndexSchedulable_didGeneratePowerEventWithIdentifier_eventData___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)searchableIndexSchedulable:(id)a3 didGenerateImportantPowerEventWithIdentifier:(id)a4 eventData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__EDSearchableIndexScheduler_searchableIndexSchedulable_didGenerateImportantPowerEventWithIdentifier_eventData___block_invoke;
  block[3] = &unk_1E8250720;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (BOOL)hasAvailableIndexingBudgetForSearchableIndexSchedulable:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -86;
  v4 = [objc_opt_class() isTurboModeIndexingEnabled];
  v5 = [(EDSearchableIndexScheduler *)self indexingStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__EDSearchableIndexScheduler_hasAvailableIndexingBudgetForSearchableIndexSchedulable___block_invoke;
  block[3] = &unk_1E8257248;
  block[4] = self;
  block[5] = &v9;
  v8 = v4;
  dispatch_sync(v5, block);

  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return self;
}

void __86__EDSearchableIndexScheduler_hasAvailableIndexingBudgetForSearchableIndexSchedulable___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deferActivitiesIfNecessary];
  if (*(a1 + 48) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) state];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isDataSourceIndexingPermitted];
  }
}

- (EDSearchableIndexSchedulable)schedulable
{
  WeakRetained = objc_loadWeakRetained(&self->_schedulable);

  return WeakRetained;
}

void __46__EDSearchableIndexScheduler__startScheduling__block_invoke_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  *(buf + 11) = 1024;
  *(buf + 6) = 4;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to transition %{public}@ from state %ld to state %d.", buf, 0x1Cu);
}

void __68__EDSearchableIndexScheduler_beginIndexingForActivityType_activity___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Attempted to begin indexing an activity type (%{public}@) that is already active - marking old ACTIVITY as DONE", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_beginIndexingForTaskType:(NSObject *)a3 task:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_2(&dword_1C61EF000, a2, a3, "Attempted to begin indexing a task type (%{public}@) that already has a task: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_stopIndexingForTaskType:(uint64_t)a1 requestRetry:(uint64_t)a2 backlogComplete:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2_2(&dword_1C61EF000, a2, a3, "%{public}@ task expired with retry failed: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end