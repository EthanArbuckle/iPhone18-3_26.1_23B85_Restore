@interface DNDSSmartTriggerManager
- (DNDSSmartTriggerManager)init;
- (DNDSSmartTriggerManagerDataSource)dataSource;
- (void)_configureSmartTriggerWithSupportedModes:(id)a3;
- (void)_refreshIfNeccessaryForEvent:(id)a3;
- (void)_refreshWithSupportedModes:(id)a3 event:(id)a4;
- (void)refresh;
@end

@implementation DNDSSmartTriggerManager

- (DNDSSmartTriggerManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSSmartTriggerManager;
  v2 = [(DNDSSmartTriggerManager *)&v8 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-inferred-mode.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    sinks = v2->_sinks;
    v2->_sinks = v5;
  }

  return v2;
}

- (void)refresh
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained modesSupportingSmartEntryForSmartTriggerManager:self];

  [(DNDSSmartTriggerManager *)self _configureSmartTriggerWithSupportedModes:v4];
  [(DNDSSmartTriggerManager *)self _refreshWithSupportedModes:v4 event:0];
  v5 = DNDSLogSmartTrigger;
  if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for smart triggers: supportedModes=%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithSupportedModes:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DNDSSmartTriggerManager *)self dataSource];
  v9 = [v7 eventBody];
  v10 = [v9 isStart];

  v11 = [v7 eventBody];
  v12 = [v11 modeUUID];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = [v7 eventBody];
    v15 = [v14 modeUUID];
    v16 = [v13 initWithUUIDString:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 allObjects];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __60__DNDSSmartTriggerManager__refreshWithSupportedModes_event___block_invoke;
  v37[3] = &unk_278F8C300;
  v18 = v16;
  v38 = v18;
  v19 = [v17 bs_firstObjectPassingTest:v37];

  v20 = [v19 modeIdentifier];
  v36 = 0;
  v21 = [v8 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.smart-trigger" error:&v36];
  v22 = v36;
  if (v20)
  {
    if (v10)
    {
      v23 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v23 setIdentifier:@"com.apple.donotdisturb.trigger.smart"];
      [v23 setLifetime:0];
      [v23 setModeIdentifier:v20];
      v35 = v22;
      v24 = [v8 triggerManager:self takeModeAssertionWithDetails:v23 clientIdentifier:@"com.apple.donotdisturb.private.smart-trigger" error:&v35];
      v25 = v35;

      v22 = v25;
    }

    else
    {
      v31 = v6;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __60__DNDSSmartTriggerManager__refreshWithSupportedModes_event___block_invoke_2;
      v33[3] = &unk_278F8A0B0;
      v34 = v20;
      v26 = [v21 bs_filter:v33];
      v27 = [v26 firstObject];

      if (v27)
      {
        v28 = [v27 UUID];
        v32 = v22;
        v29 = [v8 triggerManager:self invalidateModeAssertionWithUUID:v28 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.smart-trigger" error:&v32];
        v30 = v32;

        v22 = v30;
      }

      v23 = v34;
      v6 = v31;
    }
  }
}

uint64_t __60__DNDSSmartTriggerManager__refreshWithSupportedModes_event___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

uint64_t __60__DNDSSmartTriggerManager__refreshWithSupportedModes_event___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_configureSmartTriggerWithSupportedModes:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  if (![v4 count] || v5)
  {
    if (![v4 count] && v5)
    {
      [v5 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v6 = DNDSLogSmartTrigger;
    if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v4 allObjects];
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome inferred mode event monitor for %{public}@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.smartTrigger" targetQueue:self->_biomeQueue];
    v10 = objc_alloc_init(MEMORY[0x277CF1998]);
    v11 = [v10 publisher];
    v12 = [v11 filterWithKeyPath:@"eventBody.isAutomationEnabled" value:MEMORY[0x277CBEC38]];
    v13 = [v12 subscribeOn:v9];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__DNDSSmartTriggerManager__configureSmartTriggerWithSupportedModes___block_invoke_24;
    v15[3] = &unk_278F8A0F8;
    v15[4] = self;
    v5 = [v13 sinkWithCompletion:&__block_literal_global_41 receiveInput:v15];

    [(NSMutableDictionary *)self->_sinks setObject:v5 forKeyedSubscript:@"system"];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __68__DNDSSmartTriggerManager__configureSmartTriggerWithSupportedModes___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogSmartTrigger;
  if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "InferredMode subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __68__DNDSSmartTriggerManager__configureSmartTriggerWithSupportedModes___block_invoke_24(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogSmartTrigger;
  if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 modeUUID];
    v8 = [v3 eventBody];
    v9 = [v8 isStart];
    v10 = @"N";
    if (v9)
    {
      v10 = @"Y";
    }

    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received inferred mode event: modeIdentifier=%{public}@ starting=%{public}@", &v12, 0x16u);
  }

  [*(a1 + 32) _refreshIfNeccessaryForEvent:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_refreshIfNeccessaryForEvent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained modesSupportingSmartEntryForSmartTriggerManager:self];

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v4 eventBody];
  v9 = [v8 modeUUID];
  v10 = [v7 initWithUUIDString:v9];

  v11 = [v6 allObjects];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__DNDSSmartTriggerManager__refreshIfNeccessaryForEvent___block_invoke;
  v19[3] = &unk_278F8C300;
  v12 = v10;
  v20 = v12;
  LODWORD(v9) = [v11 bs_containsObjectPassingTest:v19];

  if (v9)
  {
    [(DNDSSmartTriggerManager *)self _refreshWithSupportedModes:v6 event:v4];
    v13 = DNDSLogSmartTrigger;
    if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v4 eventBody];
      *buf = 138543362;
      v22 = v15;
      v16 = "Updated assertions for inferred mode event: event=%{public}@";
LABEL_6:
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    }
  }

  else
  {
    v17 = DNDSLogSmartTrigger;
    if (os_log_type_enabled(DNDSLogSmartTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v17;
      v15 = [v4 eventBody];
      *buf = 138543362;
      v22 = v15;
      v16 = "Ignored automatic entry for unsupported inferred mode event: event=%{public}@";
      goto LABEL_6;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __56__DNDSSmartTriggerManager__refreshIfNeccessaryForEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (DNDSSmartTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end