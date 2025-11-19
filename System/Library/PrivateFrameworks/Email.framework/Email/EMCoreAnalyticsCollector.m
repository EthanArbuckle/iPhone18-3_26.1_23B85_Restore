@interface EMCoreAnalyticsCollector
+ (id)log;
- (EMCoreAnalyticsCollector)init;
- (id)registerForLogEventsWithBlock:(id)a3;
- (id)registerForLogEventsWithPeriodicDataProvider:(id)a3;
- (void)_logPeriodicEvents;
- (void)_registerXPCActivity;
- (void)logOneTimeEvent:(id)a3;
@end

@implementation EMCoreAnalyticsCollector

- (EMCoreAnalyticsCollector)init
{
  v10.receiver = self;
  v10.super_class = EMCoreAnalyticsCollector;
  v2 = [(EMCoreAnalyticsCollector *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E699B7F0]);
    v4 = objc_opt_new();
    v5 = [v3 initWithObject:v4];
    blocks = v2->_blocks;
    v2->_blocks = v5;

    v7 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EMCoreAnalyticsCollector.oneTimeScheduler"];
    oneTimeScheduler = v2->_oneTimeScheduler;
    v2->_oneTimeScheduler = v7;
  }

  return v2;
}

void __31__EMCoreAnalyticsCollector_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_9;
  log_log_9 = v1;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EMCoreAnalyticsCollector_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

- (id)registerForLogEventsWithPeriodicDataProvider:(id)a3
{
  objc_initWeak(&location, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__EMCoreAnalyticsCollector_registerForLogEventsWithPeriodicDataProvider___block_invoke;
  v6[3] = &unk_1E826C070;
  objc_copyWeak(&v7, &location);
  v4 = [(EMCoreAnalyticsCollector *)self registerForLogEventsWithBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __73__EMCoreAnalyticsCollector_registerForLogEventsWithPeriodicDataProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained coreAnalyticsPeriodicEvent];
    v4 = [v3 name];
    v5 = v3;
    AnalyticsSendEventLazy();
  }
}

- (id)registerForLogEventsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke;
  v18[3] = &unk_1E826CA80;
  objc_copyWeak(&v20, &location);
  v7 = v5;
  v19 = v7;
  [v6 addCancelationBlock:v18];
  v8 = [(EMCoreAnalyticsCollector *)self blocks];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke_3;
  v15[3] = &unk_1E826CAA8;
  v9 = v7;
  v16 = v9;
  v10 = v4;
  v17 = v10;
  [v8 performWhileLocked:v15];

  if ((atomic_exchange(&self->_didRegister._Value, 1u) & 1) == 0)
  {
    v11 = dispatch_time(0, 5000000000);
    v12 = dispatch_get_global_queue(-32768, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke_4;
    v14[3] = &unk_1E826C098;
    v14[4] = self;
    dispatch_after(v11, v12, v14);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v6;
}

void __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained blocks];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke_2;
    v5[3] = &unk_1E826CA58;
    v6 = *(a1 + 32);
    [v4 performWhileLocked:v5];
  }
}

void __58__EMCoreAnalyticsCollector_registerForLogEventsWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 40) copy];
  v4 = _Block_copy(v3);
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

- (void)logOneTimeEvent:(id)a3
{
  v4 = a3;
  v5 = [(EMCoreAnalyticsCollector *)self oneTimeScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__EMCoreAnalyticsCollector_logOneTimeEvent___block_invoke;
  v7[3] = &unk_1E826C098;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __44__EMCoreAnalyticsCollector_logOneTimeEvent___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[EMCoreAnalyticsCollector log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_INFO, "Logging one time event for provider %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) name];
  v6 = *(a1 + 32);
  AnalyticsSendEventLazy();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_registerXPCActivity
{
  if (_registerXPCActivity_onceToken != -1)
  {
    [EMCoreAnalyticsCollector _registerXPCActivity];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_3;
  aBlock[3] = &unk_1E826CAF0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = +[EMCoreAnalyticsCollector log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_INFO, "Registering Core Analytics Periodic Activity", v5, 2u);
  }

  ef_xpc_activity_register();
}

void __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke()
{
  v0 = _os_activity_create(&dword_1C6655000, "Mail CoreAnalytics Periodic Collector Activity", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
  v1 = _registerXPCActivity_periodicCoreAnalayticsCollectorActivity;
  _registerXPCActivity_periodicCoreAnalayticsCollectorActivity = v0;
}

void __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF0]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9D88], 1);
  v3 = v2;
  v4 = _os_feature_enabled_impl();
  v5 = v3;
  v6 = MEMORY[0x1E69E9DA8];
  if (!v4)
  {
    v6 = MEMORY[0x1E69E9D98];
  }

  v7 = v5;
  xpc_dictionary_set_BOOL(v5, *v6, 1);
}

void __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _registerXPCActivity_periodicCoreAnalayticsCollectorActivity;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_4;
  v6[3] = &unk_1E826C148;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  os_activity_apply(v4, v6);
}

void __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _logPeriodicEvents];
  if (!xpc_activity_set_state(*(a1 + 40), 5))
  {
    v2 = +[EMCoreAnalyticsCollector log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      state = xpc_activity_get_state(*(a1 + 40));
      __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_4_cold_1(v5, state, v2);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_logPeriodicEvents
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v2 = [(EMCoreAnalyticsCollector *)self blocks];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__EMCoreAnalyticsCollector__logPeriodicEvents__block_invoke;
  v14[3] = &unk_1E826CB18;
  v14[4] = &v15;
  [v2 performWhileLocked:v14];

  v3 = +[EMCoreAnalyticsCollector log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v16[5] count];
    *buf = 134217984;
    v23 = v4;
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Logging periodic events for %ld providers", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v16[5];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void __46__EMCoreAnalyticsCollector__logPeriodicEvents__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 allValues];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __48__EMCoreAnalyticsCollector__registerXPCActivity__block_invoke_4_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 1024;
  *(buf + 14) = 5;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "Failed to transition from state %ld to state %d.", buf, 0x12u);
}

@end