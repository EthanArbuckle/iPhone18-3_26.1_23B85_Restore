@interface DNDSAppForegroundTriggerManager
- (DNDSAppForegroundTriggerManager)init;
- (DNDSAppForegroundTriggerManagerDataSource)dataSource;
- (void)_coalescingQueue_coalesceWithTriggerConfiguration:(id)a3 event:(id)a4;
- (void)_coalescingQueue_resetCoalescingTimer;
- (void)_configureAppForegroundTriggerWithConfiguration:(id)a3;
- (void)_refreshIfNeccessaryForEvent:(id)a3;
- (void)_refreshWithTriggerConfiguration:(id)a3 event:(id)a4;
- (void)refresh;
@end

@implementation DNDSAppForegroundTriggerManager

- (DNDSAppForegroundTriggerManager)init
{
  v11.receiver = self;
  v11.super_class = DNDSAppForegroundTriggerManager;
  v2 = [(DNDSAppForegroundTriggerManager *)&v11 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-app-launch.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.donotdisturb.appForeground.coalescing", v5);
    coalescingQueue = v2->_coalescingQueue;
    v2->_coalescingQueue = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    sinks = v2->_sinks;
    v2->_sinks = v8;
  }

  return v2;
}

- (void)refresh
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained appForegroundTriggerConfigurationForAppForegroundTriggerManager:self];

  [(DNDSAppForegroundTriggerManager *)self _configureAppForegroundTriggerWithConfiguration:v4];
  [(DNDSAppForegroundTriggerManager *)self _refreshWithTriggerConfiguration:v4 event:0];
  v5 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for app launch triggers: configuration=%@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithTriggerConfiguration:(id)a3 event:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v44 = a4;
  [(DNDSAppForegroundTriggerManager *)self dataSource];
  v58 = 0;
  v47 = v46 = self;
  v7 = [v47 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.app-launch" error:&v58];
  v8 = v58;
  v9 = MEMORY[0x277CBEB98];
  v45 = v6;
  v10 = [v6 triggeringBundleIdentifiers];
  v48 = [v9 setWithArray:v10];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        v17 = [v16 source];
        v18 = [v17 deviceIdentifier];

        if (!v18)
        {
          v19 = [v16 details];
          v20 = [v19 identifier];

          if ([v20 hasSuffix:@".donotdisturb.trigger"])
          {
            v21 = [v20 stringByReplacingOccurrencesOfString:@".donotdisturb.trigger" withString:&stru_285C26090];

            if (([v48 containsObject:v21] & 1) == 0)
            {
              v22 = DNDSLogAppForegroundTrigger;
              if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v60 = v21;
                _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Don't have trigger for identifier '%@'. Invalidating...", buf, 0xCu);
              }

              v23 = [v16 UUID];
              v53 = v8;
              v24 = [v47 triggerManager:v46 invalidateModeAssertionWithUUID:v23 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v53];
              v25 = v53;

              v8 = v25;
            }
          }

          else
          {
            v21 = v20;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v13);
  }

  if (v44)
  {
    v26 = DNDSLogAppForegroundTrigger;
    v27 = v45;
    if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v44;
      _os_log_impl(&dword_24912E000, v26, OS_LOG_TYPE_DEFAULT, "Refreshing with event %@", buf, 0xCu);
    }

    v28 = [v44 eventBody];
    v29 = [v28 isStarting];

    v30 = [v44 eventBody];
    v31 = [v30 bundleID];

    v32 = [v45 modeIdentifierForBundleIdentifier:v31];
    v33 = v32;
    if (v29)
    {
      v34 = objc_alloc_init(MEMORY[0x277D05A40]);
      v35 = [v31 stringByAppendingString:@".donotdisturb.trigger"];
      [v34 setIdentifier:v35];

      [v34 setLifetime:0];
      [v34 setModeIdentifier:v33];
      [v34 setReason:3];
      v52 = v8;
      v36 = [v47 triggerManager:v46 takeModeAssertionWithDetails:v34 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v52];
      v37 = v52;

      v8 = v37;
    }

    else
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __74__DNDSAppForegroundTriggerManager__refreshWithTriggerConfiguration_event___block_invoke;
      v50[3] = &unk_278F8A0B0;
      v51 = v32;
      v38 = [v11 bs_filter:v50];
      v39 = [v38 firstObject];

      if (v39)
      {
        v40 = [v39 UUID];
        v49 = v8;
        v41 = [v47 triggerManager:v46 invalidateModeAssertionWithUUID:v40 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.app-launch" error:&v49];
        v42 = v49;

        v8 = v42;
      }

      v34 = v51;
    }
  }

  else
  {
    v27 = v45;
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __74__DNDSAppForegroundTriggerManager__refreshWithTriggerConfiguration_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_configureAppForegroundTriggerWithConfiguration:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 triggeringBundleIdentifiers];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v9 = v8;

  v10 = [(DNDSAppForegroundTriggerConfiguration *)self->_currentTriggerConfiguration triggeringBundleIdentifiers];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA60] array];
  }

  v13 = v12;

  v14 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  if (([v9 isEqual:v13] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_sinks setObject:0 forKeyedSubscript:@"system"];
    [v14 cancel];

    objc_storeStrong(&self->_currentTriggerConfiguration, a3);
    v14 = 0;
  }

  if (![v9 count] || v14)
  {
    if (![v9 count] && v14)
    {
      [v14 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v23 = v5;
    v15 = DNDSLogAppForegroundTrigger;
    if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Adding biome app launch event monitor for %{public}@", buf, 0xCu);
    }

    v16 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.appLaunch" targetQueue:self->_biomeQueue];
    v17 = [MEMORY[0x277CF1B58] appLaunch];
    v18 = [v17 publisher];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v20 = [v18 filterWithKeyPath:@"eventBody.bundleID" comparison:3 value:v19];
    v21 = [v20 subscribeOn:v16];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke_28;
    v24[3] = &unk_278F8A0F8;
    v24[4] = self;
    v14 = [v21 sinkWithCompletion:&__block_literal_global_1 receiveInput:v24];

    [(NSMutableDictionary *)self->_sinks setObject:v14 forKeyedSubscript:@"system"];
    v5 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "AppLaunch subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __83__DNDSAppForegroundTriggerManager__configureAppForegroundTriggerWithConfiguration___block_invoke_28(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 bundleID];
    v8 = [v3 eventBody];
    if ([v8 isStarting])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    v10 = [v3 eventBody];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received app launch event: bundleID=%{public}@ starting=%{public}@ event=%{public}@", &v12, 0x20u);
  }

  [*(a1 + 32) _refreshIfNeccessaryForEvent:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_refreshIfNeccessaryForEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained appForegroundTriggerConfigurationForAppForegroundTriggerManager:self];

  coalescingQueue = self->_coalescingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DNDSAppForegroundTriggerManager__refreshIfNeccessaryForEvent___block_invoke;
  block[3] = &unk_278F89E30;
  block[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(coalescingQueue, block);
}

- (void)_coalescingQueue_coalesceWithTriggerConfiguration:(id)a3 event:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  latestEvent = self->_latestEvent;
  if (latestEvent)
  {
    v9 = [(BMStoreEvent *)latestEvent eventBody];
    v10 = [v9 bundleID];
    v11 = [v7 eventBody];
    v12 = [v11 bundleID];
    v13 = [v10 isEqualToString:v12];

    if ((v13 & 1) == 0)
    {
      [(DNDSAppForegroundTriggerManager *)self _coalescingQueue_resetCoalescingTimer];
      [(DNDSAppForegroundTriggerManager *)self _coalescingQueue_refreshWithTriggerConfiguration:v6];
      v14 = DNDSLogAppForegroundTrigger;
      if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_latestEvent;
        v16 = v14;
        v17 = [(BMStoreEvent *)v15 eventBody];
        *buf = 138543362;
        v29 = v17;
        _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "reset coalescing timer due to bundleID change; updated assertions for app launch event: event=%{public}@", buf, 0xCu);
      }
    }
  }

  objc_storeStrong(&self->_latestEvent, a4);
  if (!self->_coalescingTimer)
  {
    v18 = os_transaction_create();
    eventCoalescingTransaction = self->_eventCoalescingTransaction;
    self->_eventCoalescingTransaction = v18;

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_coalescingQueue);
    coalescingTimer = self->_coalescingTimer;
    self->_coalescingTimer = v20;

    v22 = self->_coalescingTimer;
    v23 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    v24 = self->_coalescingTimer;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __91__DNDSAppForegroundTriggerManager__coalescingQueue_coalesceWithTriggerConfiguration_event___block_invoke;
    v26[3] = &unk_278F89F48;
    v26[4] = self;
    v27 = v6;
    dispatch_source_set_event_handler(v24, v26);
    dispatch_resume(self->_coalescingTimer);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __91__DNDSAppForegroundTriggerManager__coalescingQueue_coalesceWithTriggerConfiguration_event___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _coalescingQueue_refreshWithTriggerConfiguration:*(a1 + 40)];
  v2 = DNDSLogAppForegroundTrigger;
  if (os_log_type_enabled(DNDSLogAppForegroundTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = v2;
    v5 = [v3 eventBody];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "coalescing timer fired; updated assertions for app launch event: event=%{public}@", &v10, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  result = [*(a1 + 32) _coalescingQueue_resetCoalescingTimer];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_coalescingQueue_resetCoalescingTimer
{
  coalescingTimer = self->_coalescingTimer;
  if (coalescingTimer)
  {
    dispatch_source_cancel(coalescingTimer);
    v4 = self->_coalescingTimer;
    self->_coalescingTimer = 0;

    eventCoalescingTransaction = self->_eventCoalescingTransaction;
    self->_eventCoalescingTransaction = 0;
  }
}

- (DNDSAppForegroundTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end