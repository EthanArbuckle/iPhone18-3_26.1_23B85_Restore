@interface DNDSGamingTriggerManager
- (DNDSGamingTriggerManager)init;
- (DNDSGamingTriggerManagerDataSource)dataSource;
- (void)_configureTriggerWithMode:(id)a3;
- (void)_refreshWithMode:(id)a3 event:(id)a4;
- (void)refresh;
@end

@implementation DNDSGamingTriggerManager

- (DNDSGamingTriggerManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSGamingTriggerManager;
  v2 = [(DNDSGamingTriggerManager *)&v8 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-gaming.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    if ([(DNDSGamingTriggerManager *)v2 _featureEnabled])
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      sinks = v2->_sinks;
      v2->_sinks = v5;
    }
  }

  return v2;
}

- (void)refresh
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(DNDSGamingTriggerManager *)self _featureEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained gamingModeForGamingTriggerManager:self];

    [(DNDSGamingTriggerManager *)self _configureTriggerWithMode:v4];
    [(DNDSGamingTriggerManager *)self _refreshWithMode:v4 event:0];
    v5 = DNDSLogGamingTrigger;
    if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for gaming trigger: mode=%{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = DNDSLogGamingTrigger;
    if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "No action taken for request to refresh gaming trigger; automatic entry not supported", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithMode:(id)a3 event:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(DNDSGamingTriggerManager *)self dataSource];
  v9 = [v7 modeIdentifier];

  v59 = 0;
  v10 = [v8 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.gaming-trigger" error:&v59];
  v11 = v59;
  if (!v6)
  {
    if (![v10 count])
    {
      goto LABEL_16;
    }

    v23 = [v10 firstObject];
    v24 = v23;
    if (v9)
    {
      v25 = [v23 details];
      v26 = [v25 modeIdentifier];
      v27 = [v9 isEqualToString:v26];

      if (v27)
      {
        v18 = v11;
      }

      else
      {
        v44 = [v24 details];
        v45 = [v44 mutableCopy];

        [v45 setModeIdentifier:v9];
        v57 = v11;
        v46 = [v8 triggerManager:self takeModeAssertionWithDetails:v45 clientIdentifier:@"com.apple.donotdisturb.private.gaming-trigger" error:&v57];
        v18 = v57;

        v47 = DNDSLogGamingTrigger;
        if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v47;
          v49 = [v24 details];
          v50 = [v49 modeIdentifier];
          *buf = 138543618;
          v61 = v9;
          v62 = 2114;
          v63 = v50;
          _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for game controller trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v36 = [v23 UUID];
      v58 = v11;
      v37 = [v8 triggerManager:self invalidateModeAssertionWithUUID:v36 reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.gaming-trigger" error:&v58];
      v18 = v58;

      v38 = DNDSLogGamingTrigger;
      if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = [v24 details];
        v41 = [v40 modeIdentifier];
        *buf = 138543362;
        v61 = v41;
        _os_log_impl(&dword_24912E000, v39, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for game controller trigger; previousModeID=%{public}@", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  if (v9)
  {
    v12 = [v6 eventBody];
    v13 = [v12 isControllerConnected];

    if (!v13 || [v10 count])
    {
      if ([v10 count])
      {
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __51__DNDSGamingTriggerManager__refreshWithMode_event___block_invoke;
        v54[3] = &unk_278F8A0B0;
        v55 = v9;
        v14 = [v10 bs_filter:v54];
        v15 = [v14 firstObject];

        if (v15)
        {
          v16 = [v15 UUID];
          v53 = v11;
          v17 = [v8 triggerManager:self invalidateModeAssertionWithUUID:v16 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.gaming-trigger" error:&v53];
          v18 = v53;

          v19 = DNDSLogGamingTrigger;
          if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            v21 = [v15 details];
            v22 = [v21 modeIdentifier];
            *buf = 138543362;
            v61 = v22;
            _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for game controller trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
          }
        }

        else
        {
          v18 = v11;
        }

        goto LABEL_27;
      }

LABEL_16:
      v18 = v11;
      goto LABEL_27;
    }

    v24 = objc_alloc_init(MEMORY[0x277D05A40]);
    [v24 setIdentifier:@"com.apple.donotdisturb.trigger.gaming"];
    [v24 setLifetime:0];
    [v24 setModeIdentifier:v9];
    v56 = v11;
    v42 = [v8 triggerManager:self takeModeAssertionWithDetails:v24 clientIdentifier:@"com.apple.donotdisturb.private.gaming-trigger" error:&v56];
    v18 = v56;

    v43 = DNDSLogGamingTrigger;
    if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v61 = v9;
      _os_log_impl(&dword_24912E000, v43, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for game controller trigger in response to event; modeID=%{public}@", buf, 0xCu);
    }

LABEL_26:

    goto LABEL_27;
  }

  if (![v10 count])
  {
    goto LABEL_16;
  }

  v28 = [v10 firstObject];
  v29 = [v28 UUID];
  v52 = v11;
  v30 = [v8 triggerManager:self invalidateModeAssertionWithUUID:v29 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.gaming-trigger" error:&v52];
  v18 = v52;

  v31 = DNDSLogGamingTrigger;
  if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v31;
    v33 = [v10 firstObject];
    v34 = [v33 details];
    v35 = [v34 modeIdentifier];
    *buf = 138543362;
    v61 = v35;
    _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for game controller trigger in response to event, trigger is disabled; previousModeID=%{public}@", buf, 0xCu);
  }

LABEL_27:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __51__DNDSGamingTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_configureTriggerWithMode:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  v6 = v5;
  if (!v4 || v5)
  {
    if (!v4 && v5)
    {
      [v5 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v7 = DNDSLogGamingTrigger;
    if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome game controller event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.gamingTrigger" targetQueue:self->_biomeQueue];
    v9 = [MEMORY[0x277CF1B58] gameControllerStream];
    v10 = [v9 publisher];
    v11 = [v10 subscribeOn:v8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__DNDSGamingTriggerManager__configureTriggerWithMode___block_invoke_19;
    v16 = &unk_278F8AC30;
    v17 = self;
    v18 = v4;
    v6 = [v11 sinkWithCompletion:&__block_literal_global_35 receiveInput:&v13];

    [(NSMutableDictionary *)self->_sinks setObject:v6 forKeyedSubscript:@"system", v13, v14, v15, v16, v17];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __54__DNDSGamingTriggerManager__configureTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogGamingTrigger;
  if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Game controller subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __54__DNDSGamingTriggerManager__configureTriggerWithMode___block_invoke_19(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogGamingTrigger;
  if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 isControllerConnected];
    v8 = [v3 eventBody];
    v16 = 67109376;
    v17 = v7;
    v18 = 2048;
    v19 = [v8 numberOfControllersConnected];
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received controller event: isControllerConnected=%{BOOL}d number=%lu", &v16, 0x12u);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v9 = DNDSLogGamingTrigger;
  if (os_log_type_enabled(DNDSLogGamingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v3 eventBody];
    v12 = [v11 isControllerConnected];
    v13 = [v3 eventBody];
    v14 = [v13 numberOfControllersConnected];
    v16 = 67109376;
    v17 = v12;
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Updated assertions for controller event: isControllerConnected=%{BOOL}d number=%lu", &v16, 0x12u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (DNDSGamingTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end