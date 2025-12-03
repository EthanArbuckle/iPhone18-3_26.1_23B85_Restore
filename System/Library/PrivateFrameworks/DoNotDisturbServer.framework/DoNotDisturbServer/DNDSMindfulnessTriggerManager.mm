@interface DNDSMindfulnessTriggerManager
- (DNDSMindfulnessTriggerManager)init;
- (DNDSMindfulnessTriggerManagerDataSource)dataSource;
- (void)_configureTriggerWithMode:(id)mode;
- (void)_refreshWithMode:(id)mode event:(id)event;
- (void)refresh;
@end

@implementation DNDSMindfulnessTriggerManager

- (DNDSMindfulnessTriggerManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSMindfulnessTriggerManager;
  v2 = [(DNDSMindfulnessTriggerManager *)&v8 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-mindfulness.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    if ([(DNDSMindfulnessTriggerManager *)v2 _featureEnabled])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      sinks = v2->_sinks;
      v2->_sinks = dictionary;
    }
  }

  return v2;
}

- (void)refresh
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(DNDSMindfulnessTriggerManager *)self _featureEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained mindfulnessModeForMindfulnessTriggerManager:self];

    [(DNDSMindfulnessTriggerManager *)self _configureTriggerWithMode:v4];
    [(DNDSMindfulnessTriggerManager *)self _refreshWithMode:v4 event:0];
    v5 = DNDSLogMindfulnessTrigger;
    if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for mindfulness trigger: mode=%{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = DNDSLogMindfulnessTrigger;
    if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "No action taken for request to refresh mindfulness trigger; automatic entry not supported", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithMode:(id)mode event:(id)event
{
  v64 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  modeCopy = mode;
  dataSource = [(DNDSMindfulnessTriggerManager *)self dataSource];
  modeIdentifier = [modeCopy modeIdentifier];

  v59 = 0;
  v10 = [dataSource triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v59];
  v11 = v59;
  if (!eventCopy)
  {
    if ([v10 count])
    {
      firstObject = [v10 firstObject];
      v14 = firstObject;
      if (modeIdentifier)
      {
        details = [firstObject details];
        modeIdentifier2 = [details modeIdentifier];
        v21 = [modeIdentifier isEqualToString:modeIdentifier2];

        if (v21)
        {
          v16 = v11;
        }

        else
        {
          details2 = [v14 details];
          v45 = [details2 mutableCopy];

          [v45 setModeIdentifier:modeIdentifier];
          v57 = v11;
          v46 = [dataSource triggerManager:self takeModeAssertionWithDetails:v45 clientIdentifier:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v57];
          v16 = v57;

          v47 = DNDSLogMindfulnessTrigger;
          if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v47;
            details3 = [v14 details];
            modeIdentifier3 = [details3 modeIdentifier];
            *buf = 138543618;
            v61 = modeIdentifier;
            v62 = 2114;
            v63 = modeIdentifier3;
            _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for mindfulness session trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        uUID = [firstObject UUID];
        v58 = v11;
        v39 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v58];
        v16 = v58;

        v40 = DNDSLogMindfulnessTrigger;
        if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
          details4 = [v14 details];
          modeIdentifier4 = [details4 modeIdentifier];
          *buf = 138543362;
          v61 = modeIdentifier4;
          _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for mindfulness session trigger; previousModeID=%{public}@", buf, 0xCu);
        }
      }

      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (modeIdentifier)
  {
    eventBody = [eventCopy eventBody];
    stateType = [eventBody stateType];

    if (stateType != 2)
    {
      if (stateType == 1 && ![v10 count])
      {
        v14 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v14 setIdentifier:@"com.apple.donotdisturb.trigger.mindfulness"];
        [v14 setLifetime:0];
        [v14 setModeIdentifier:modeIdentifier];
        v56 = v11;
        v15 = [dataSource triggerManager:self takeModeAssertionWithDetails:v14 clientIdentifier:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v56];
        v16 = v56;

        v17 = DNDSLogMindfulnessTrigger;
        if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v61 = modeIdentifier;
          _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for mindfulness session trigger in response to event; modeID=%{public}@", buf, 0xCu);
        }

LABEL_25:

        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if ([v10 count])
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __56__DNDSMindfulnessTriggerManager__refreshWithMode_event___block_invoke;
      v54[3] = &unk_278F8A0B0;
      v55 = modeIdentifier;
      v30 = [v10 bs_filter:v54];
      firstObject2 = [v30 firstObject];

      if (firstObject2)
      {
        uUID2 = [firstObject2 UUID];
        v53 = v11;
        v33 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID2 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v53];
        v16 = v53;

        v34 = DNDSLogMindfulnessTrigger;
        if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          details5 = [firstObject2 details];
          modeIdentifier5 = [details5 modeIdentifier];
          *buf = 138543362;
          v61 = modeIdentifier5;
          _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for mindfulness session trigger in response to event; previousModeID=%{public}@", buf, 0xCu);
        }
      }

      else
      {
        v16 = v11;
      }

      goto LABEL_28;
    }

LABEL_19:
    v16 = v11;
    goto LABEL_28;
  }

  if (![v10 count])
  {
    goto LABEL_19;
  }

  firstObject3 = [v10 firstObject];
  uUID3 = [firstObject3 UUID];
  v52 = v11;
  v24 = [dataSource triggerManager:self invalidateModeAssertionWithUUID:uUID3 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.mindfulness-trigger" error:&v52];
  v16 = v52;

  v25 = DNDSLogMindfulnessTrigger;
  if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    firstObject4 = [v10 firstObject];
    details6 = [firstObject4 details];
    modeIdentifier6 = [details6 modeIdentifier];
    *buf = 138543362;
    v61 = modeIdentifier6;
    _os_log_impl(&dword_24912E000, v26, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for mindfulness session trigger in response to event, trigger is disabled; previousModeID=%{public}@", buf, 0xCu);
  }

LABEL_28:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __56__DNDSMindfulnessTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)_configureTriggerWithMode:(id)mode
{
  v21 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = [(NSMutableDictionary *)self->_sinks objectForKeyedSubscript:@"system"];
  v6 = v5;
  if (!modeCopy || v5)
  {
    if (!modeCopy && v5)
    {
      [v5 cancel];
      [(NSMutableDictionary *)self->_sinks removeObjectForKey:@"system"];
    }
  }

  else
  {
    v7 = DNDSLogMindfulnessTrigger;
    if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = modeCopy;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome mindfulness session event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.mindfulnessTrigger" targetQueue:self->_biomeQueue];
    mindfulnessStream = [MEMORY[0x277CF1B58] mindfulnessStream];
    publisher = [mindfulnessStream publisher];
    v11 = [publisher subscribeOn:v8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __59__DNDSMindfulnessTriggerManager__configureTriggerWithMode___block_invoke_19;
    v16 = &unk_278F8AC30;
    selfCopy = self;
    v18 = modeCopy;
    v6 = [v11 sinkWithCompletion:&__block_literal_global_28 receiveInput:&v13];

    [(NSMutableDictionary *)self->_sinks setObject:v6 forKeyedSubscript:@"system", v13, v14, v15, v16, selfCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__DNDSMindfulnessTriggerManager__configureTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogMindfulnessTrigger;
  if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Mindfulness session subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __59__DNDSMindfulnessTriggerManager__configureTriggerWithMode___block_invoke_19(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogMindfulnessTrigger;
  if (os_log_type_enabled(DNDSLogMindfulnessTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 eventBody];
    v7 = [v6 stateType];
    if ((v7 - 1) > 3)
    {
      v8 = @"unspecified";
    }

    else
    {
      v8 = off_278F8BB68[v7 - 1];
    }

    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Received mindfulness session event: eventType=%{public}@", &v17, 0xCu);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v9 = DNDSLogMindfulnessTrigger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 eventBody];
    v11 = [v10 stateType] - 1;
    if (v11 > 3)
    {
      v12 = @"unspecified";
    }

    else
    {
      v12 = off_278F8BB68[v11];
    }

    v13 = [v3 eventBody];
    v14 = [v13 sessionType];
    if (v14 > 2)
    {
      v15 = @"unspecified";
    }

    else
    {
      v15 = off_278F8BB88[v14];
    }

    v17 = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v15;
    _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Updated assertions for mindfulness session event: eventType=%{public}@ sessionType=%{public}@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (DNDSMindfulnessTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end