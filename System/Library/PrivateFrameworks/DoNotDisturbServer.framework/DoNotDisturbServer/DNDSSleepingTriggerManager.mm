@interface DNDSSleepingTriggerManager
- (DNDSSleepingTriggerManager)init;
- (DNDSSleepingTriggerManagerDataSource)dataSource;
- (void)_configureSleepingTriggerWithMode:(id)a3;
- (void)_refreshWithMode:(id)a3 event:(id)a4;
- (void)refresh;
@end

@implementation DNDSSleepingTriggerManager

- (DNDSSleepingTriggerManager)init
{
  v8.receiver = self;
  v8.super_class = DNDSSleepingTriggerManager;
  v2 = [(DNDSSleepingTriggerManager *)&v8 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.private.biome-sleeping.queue"];
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v3;

    if ([(DNDSSleepingTriggerManager *)v2 _featureEnabled])
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
  if ([(DNDSSleepingTriggerManager *)self _featureEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v4 = [WeakRetained sleepingModeForSleepingTriggerManager:self];

    [(DNDSSleepingTriggerManager *)self _configureSleepingTriggerWithMode:v4];
    [(DNDSSleepingTriggerManager *)self _refreshWithMode:v4 event:0];
    v5 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Updated assertions for sleeping trigger: mode=%{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "No action taken for request to refresh sleeping trigger; automatic entry not supported", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithMode:(id)a3 event:(id)a4
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DNDSSleepingTriggerManager *)self dataSource];
  v9 = [v6 modeIdentifier];
  v118 = 0;
  v10 = [v8 triggerManager:self assertionsWithClientIdentifer:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v118];
  v11 = v118;
  v12 = [v10 firstObject];
  if (v7)
  {
    v99 = v8;
    v13 = v9;
    v14 = [v7 eventBody];
    v15 = [v14 sleepModeChangeReason];

    if (v15 <= 8 && ((1 << v15) & 0x181) != 0)
    {
      v16 = DNDSLogSleepingTrigger;
      v9 = v13;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v13;
        v97 = v12;
        v94 = v10;
        v17 = [v7 eventBody];
        v18 = DNDBMSleepModeChangeReasonToString([v17 sleepModeChangeReason]);
        v19 = [v7 eventBody];
        v20 = [v19 sleepModeState];
        v21 = v6;
        if (v20 > 2)
        {
          v22 = @"unspecified";
        }

        else
        {
          v22 = off_278F8B3F0[v20];
        }

        v45 = [v7 eventBody];
        v46 = [v45 expectedEndDate];
        *buf = 138543874;
        v121 = v18;
        v122 = 2114;
        v123 = v22;
        v124 = 2114;
        v125 = v46;
        _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@", buf, 0x20u);

        v12 = v97;
        v8 = v99;
        v10 = v94;
        v9 = v95;
        v6 = v21;
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v9 = v13;
    if (v13)
    {
      v27 = v6;
      v115 = v11;
      v28 = [v99 triggerManager:self assertionsWithClientIdentifer:@"com.apple.focus.activity-manager" error:&v115];
      v91 = v115;

      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke;
      v113[3] = &unk_278F8A0B0;
      v29 = v12;
      v30 = v13;
      v114 = v30;
      v31 = [v28 bs_filter:v113];

      v98 = v29;
      if (v29)
      {
        if ([v31 count])
        {
          v32 = DNDSLogSleepingTrigger;
          if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v121 = v30;
            v122 = 2114;
            v123 = v98;
            v124 = 2114;
            v125 = v31;
            _os_log_error_impl(&dword_24912E000, v32, OS_LOG_TYPE_ERROR, "Existing assertions found for sleeping trigger manager and activity manager; modeID=%{public}@ assertion=%{public}@ userAssertion=%{public}@", buf, 0x20u);
          }
        }
      }

      v33 = [v31 count];
      v90 = [v31 bs_compactMap:&__block_literal_global_19];
      v34 = [v7 eventBody];
      v35 = [v34 sleepModeState];

      if ((v35 - 1) > 1)
      {
        if (!v98 && !v33)
        {
          v12 = 0;
          v6 = v27;
          v69 = v90;
          v68 = v91;
LABEL_51:

          v16 = v114;
          v11 = v68;
          v9 = v13;
LABEL_52:
          v8 = v99;
          goto LABEL_53;
        }

        v86 = v7;
        v89 = self;
        v96 = v13;
        v93 = v27;
        v70 = DNDSLogSleepingTrigger;
        if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v121 = v30;
          v122 = 2114;
          v123 = v98;
          _os_log_impl(&dword_24912E000, v70, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion for sleeping trigger in response to event; previousModeID=%{public}@ assertion=%{public}@", buf, 0x16u);
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v85 = v31;
        v71 = v31;
        v72 = [v71 countByEnumeratingWithState:&v104 objects:v119 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v105;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v105 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = DNDSLogSleepingTrigger;
              if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
              {
                v77 = *(*(&v104 + 1) + 8 * i);
                *buf = 138543618;
                v121 = v30;
                v122 = 2114;
                v123 = v77;
                _os_log_impl(&dword_24912E000, v76, OS_LOG_TYPE_DEFAULT, "Invalidating active user assertion for associated mode in response to event; previousModeID=%{public}@ assertion=%{public}@", buf, 0x16u);
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v104 objects:v119 count:16];
          }

          while (v73);
        }

        v78 = [v90 arrayByAddingObject:@"com.apple.donotdisturb.private.sleeping-trigger"];

        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_17;
        v101[3] = &unk_278F8A128;
        v69 = v78;
        v102 = v69;
        v103 = v30;
        v79 = [v99 triggerManager:v89 performModeAssertionUpdatesWithHandler:v101];

        v80 = v102;
        v6 = v93;
        v13 = v96;
        v68 = v91;
      }

      else
      {
        v84 = v31;
        v36 = v10;
        v37 = v7;
        v38 = v33 != 0;
        v39 = objc_alloc_init(MEMORY[0x277D05A40]);
        [v39 setIdentifier:@"com.apple.donotdisturb.trigger.sleeping"];
        [v39 setModeIdentifier:v30];
        v40 = [v37 eventBody];
        v41 = [v40 expectedEndDate];
        [v39 setUserVisibleEndDate:v41];

        v86 = v37;
        v42 = [v37 eventBody];
        v43 = [v42 sleepModeChangeReason] - 1;
        if (v43 > 7)
        {
          v44 = 0;
        }

        else
        {
          v44 = qword_2491FFB38[v43];
        }

        v68 = v91;
        [v39 setReason:{v44, v84}];

        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_2;
        v108[3] = &unk_278F8AE18;
        v112 = v38;
        v109 = v90;
        v110 = v30;
        v111 = v39;
        v80 = v39;
        v81 = self;
        v69 = v109;
        v82 = [v99 triggerManager:v81 performModeAssertionUpdatesWithHandler:v108];

        v10 = v36;
        v6 = v27;
      }

      v31 = v85;
      v7 = v86;
      v12 = v98;
      goto LABEL_51;
    }

    if ([v10 count])
    {
      v61 = DNDSLogSleepingTrigger;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
        v63 = [(__CFString *)v12 details];
        [v63 modeIdentifier];
        v88 = self;
        v65 = v64 = v6;
        *buf = 138543362;
        v121 = v65;
        _os_log_impl(&dword_24912E000, v62, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for sleeping trigger in response to event; previousModeID=%{public}@", buf, 0xCu);

        v9 = 0;
        v6 = v64;
        self = v88;
      }

      v16 = [(__CFString *)v12 UUID];
      v100 = v11;
      v8 = v99;
      v66 = [v99 triggerManager:self invalidateModeAssertionWithUUID:v16 reason:3 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v100];
      v53 = v100;
LABEL_31:
      v67 = v53;

      v11 = v67;
LABEL_53:

      goto LABEL_54;
    }

LABEL_32:
    v8 = v99;
    goto LABEL_54;
  }

  if ([v10 count])
  {
    if (!v9)
    {
      v47 = DNDSLogSleepingTrigger;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        v49 = [(__CFString *)v12 details];
        [v49 modeIdentifier];
        v87 = self;
        v51 = v50 = v6;
        *buf = 138543362;
        v121 = v51;
        _os_log_impl(&dword_24912E000, v48, OS_LOG_TYPE_DEFAULT, "Invalidating active assertion no mode identifer for sleeping trigger; previousModeID=%{public}@", buf, 0xCu);

        v9 = 0;
        v6 = v50;
        self = v87;
      }

      v16 = [(__CFString *)v12 UUID];
      v117 = v11;
      v52 = [v8 triggerManager:self invalidateModeAssertionWithUUID:v16 reason:2 reasonOverride:0 clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v117];
      v53 = v117;
      goto LABEL_31;
    }

    v99 = v8;
    v92 = v6;
    v23 = [(__CFString *)v12 details];
    [v23 modeIdentifier];
    v25 = v24 = v9;
    v26 = [v24 isEqualToString:v25];

    if ((v26 & 1) == 0)
    {
      v54 = [(__CFString *)v12 details];
      v16 = [v54 mutableCopy];

      [v16 setModeIdentifier:v24];
      v55 = DNDSLogSleepingTrigger;
      v9 = v24;
      if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v55;
        v57 = [(__CFString *)v12 details];
        v58 = [v57 modeIdentifier];
        *buf = 138543618;
        v121 = v24;
        v122 = 2114;
        v123 = v58;
        _os_log_impl(&dword_24912E000, v56, OS_LOG_TYPE_DEFAULT, "Updating active assertion to new mode identifer for sleeping trigger; modeID=%{public}@ previousModeID=%{public}@", buf, 0x16u);

        v9 = v24;
      }

      v116 = v11;
      v8 = v99;
      v59 = [v99 triggerManager:self takeModeAssertionWithDetails:v16 clientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" error:&v116];
      v60 = v116;

      v11 = v60;
      v6 = v92;
      goto LABEL_53;
    }

    v6 = v92;
    v9 = v24;
    goto LABEL_32;
  }

LABEL_54:

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 details];
  v4 = [v3 modeIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 source];
  v3 = [v2 clientIdentifier];

  return v3;
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:*(a1 + 32)];
    v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:v6 details:0 source:v5 reason:4 reasonOverride:0];

    v8 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = v8;
      v12 = [v9 lifetime];
      v25 = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Invalidating user assertion(s) for mode in response to event; modeID=%{public}@ lifetime=%{public}@", &v25, 0x16u);
    }

    v13 = [v3 invalidateAssertionsForRequest:v7];
  }

  v14 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
  v15 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = v15;
    v19 = [v16 lifetime];
    v25 = 138543618;
    v26 = v17;
    v27 = 2114;
    v28 = v19;
    _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for sleeping trigger in response to event; modeID=%{public}@ lifetime=%{public}@", &v25, 0x16u);
  }

  v20 = *(a1 + 48);
  v21 = [MEMORY[0x277CBEAA8] date];
  v22 = [v3 takeAssertionWithDetails:v20 source:v14 startDate:v21];

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __53__DNDSSleepingTriggerManager__refreshWithMode_event___block_invoke_17(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [DNDSModeAssertionInvalidationPredicate predicateForAssertionClientIdentifiers:*(a1 + 32)];
  v5 = [objc_alloc(MEMORY[0x277D05988]) initWithClientIdentifier:@"com.apple.donotdisturb.private.sleeping-trigger" deviceIdentifier:0];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [DNDSModeAssertionInvalidationRequest requestWithPredicate:v4 requestDate:v6 details:0 source:v5 reason:3 reasonOverride:0];

  v8 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating assertion(s) for mode in response to event; modeID=%{public}@", &v13, 0xCu);
  }

  v10 = [v3 invalidateAssertionsForRequest:v7];

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_configureSleepingTriggerWithMode:(id)a3
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
    v7 = DNDSLogSleepingTrigger;
    if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Adding biome sleeping event monitor; mode=%{public}@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.donotdisturb.sleepingTrigger" targetQueue:self->_biomeQueue];
    v9 = [MEMORY[0x277CF1B58] sleepModeStream];
    v10 = [v9 publisher];
    v11 = [v10 subscribeOn:v8];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke_29;
    v16 = &unk_278F8AC30;
    v17 = self;
    v18 = v4;
    v6 = [v11 sinkWithCompletion:&__block_literal_global_28 receiveInput:&v13];

    [(NSMutableDictionary *)self->_sinks setObject:v6 forKeyedSubscript:@"system", v13, v14, v15, v16, v17];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(DNDSLogSleepingTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = a2;
    v6 = [v5 state];
    v7 = [v5 error];

    v9 = 134218242;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Sleeping subscription completed: state=%ld error=%{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__DNDSSleepingTriggerManager__configureSleepingTriggerWithMode___block_invoke_29(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 eventBody];
    v6 = DNDBMSleepModeChangeReasonToString([v5 sleepModeChangeReason]);
    v7 = [v3 eventBody];
    v8 = [v7 sleepModeState];
    if (v8 > 2)
    {
      v9 = @"unspecified";
    }

    else
    {
      v9 = off_278F8B3F0[v8];
    }

    v10 = [v3 eventBody];
    v11 = [v10 expectedEndDate];
    [v3 timestamp];
    v22 = 138544130;
    v23 = v6;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Received sleeping event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@ timestamp:%f", &v22, 0x2Au);
  }

  [*(a1 + 32) _refreshWithMode:*(a1 + 40) event:v3];
  v13 = DNDSLogSleepingTrigger;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v3 eventBody];
    v15 = DNDBMSleepModeChangeReasonToString([v14 sleepModeChangeReason]);
    v16 = [v3 eventBody];
    v17 = [v16 sleepModeState];
    if (v17 > 2)
    {
      v18 = @"unspecified";
    }

    else
    {
      v18 = off_278F8B3F0[v17];
    }

    v19 = [v3 eventBody];
    v20 = [v19 expectedEndDate];
    v22 = 138543874;
    v23 = v15;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Processed sleeping event: reason=%{public}@ state=%{public}@ expectedEnd=%{public}@", &v22, 0x20u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (DNDSSleepingTriggerManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end