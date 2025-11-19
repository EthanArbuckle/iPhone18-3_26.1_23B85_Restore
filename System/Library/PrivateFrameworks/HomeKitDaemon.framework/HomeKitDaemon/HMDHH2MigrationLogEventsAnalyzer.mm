@interface HMDHH2MigrationLogEventsAnalyzer
- (HMDHH2MigrationLogEventsAnalyzer)initWithDataSource:(id)a3;
- (void)observeEvent:(id)a3;
- (void)runDailyTask;
@end

@implementation HMDHH2MigrationLogEventsAnalyzer

- (void)runDailyTask
{
  v3 = [(HMDHH2MigrationLogEventsAnalyzer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHH2MigrationLogEventsAnalyzer_runDailyTask__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__HMDHH2MigrationLogEventsAnalyzer_runDailyTask__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) counterGroup];
  [v1 resetEventCounters];
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDHH2MigrationLogEventsAnalyzer *)self queue];
  dispatch_assert_queue_V2(v5);

  v19 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v19;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 migrationEventType] >= 4)
    {
      v8 = [v7 error];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 error];
        v11 = [v10 domain];
        v12 = [v11 isEqualToString:*MEMORY[0x277CCFD28]];

        if (v12)
        {
          v13 = [v10 code];
          if ((v13 - 2704) <= 0x1C)
          {
            if (((1 << (v13 + 112)) & 0x1F718102) != 0)
            {
LABEL_10:

LABEL_21:
              goto LABEL_22;
            }

            if (v13 == 2704)
            {
              v14 = [v10 userInfo];
              v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
              }

              else
              {
                v16 = 0;
              }

              v17 = v16;

              v18 = isTransientCloudKitError(v17);
              if (v18)
              {
                goto LABEL_22;
              }

              goto LABEL_20;
            }
          }

          if ((v13 - 75) < 2 || v13 == 2013)
          {
            goto LABEL_10;
          }
        }

LABEL_20:
        v9 = [(HMDHH2MigrationLogEventsAnalyzer *)self counterGroup];
        [v9 incrementEventCounterForEventName:@"migrationFailureToTriggerTTRCounter"];
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (HMDHH2MigrationLogEventsAnalyzer)initWithDataSource:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HMDHH2MigrationLogEventsAnalyzer;
  v5 = [(HMDHH2MigrationLogEventsAnalyzer *)&v21 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    v7 = [v6 counterGroupForName:@"HMDHH2MigrationLogEventsAnalyzerGroupName"];
    counterGroup = v5->_counterGroup;
    v5->_counterGroup = v7;

    v9 = [v4 logEventDispatcher];
    v10 = [v9 clientQueue];
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = [v4 logEventDispatcher];
    [v12 addObserver:v5 forEventClass:objc_opt_class()];

    v13 = [v4 radarInitiator];

    if (v13)
    {
      v14 = [HMDCounterThresholdTTRTrigger alloc];
      v15 = [v4 radarInitiator];
      v16 = [(HMDCounterThresholdTTRTrigger *)v14 initWithThreshold:1 displayReason:@"HH2 migration failed" radarInitiator:v15];
      migrationFailureTTRTrigger = v5->_migrationFailureTTRTrigger;
      v5->_migrationFailureTTRTrigger = v16;

      v18 = [v4 legacyCountersManager];
      [v18 addObserver:v5->_migrationFailureTTRTrigger forEventName:@"migrationFailureToTriggerTTRCounter" requestGroup:@"HMDHH2MigrationLogEventsAnalyzerGroupName"];
    }

    v19 = [v4 dailyScheduler];
    [v19 registerDailyTaskRunner:v5];
  }

  return v5;
}

@end