@interface HMDHH2MigrationLogEventsAnalyzer
- (HMDHH2MigrationLogEventsAnalyzer)initWithDataSource:(id)source;
- (void)observeEvent:(id)event;
- (void)runDailyTask;
@end

@implementation HMDHH2MigrationLogEventsAnalyzer

- (void)runDailyTask
{
  queue = [(HMDHH2MigrationLogEventsAnalyzer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHH2MigrationLogEventsAnalyzer_runDailyTask__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__HMDHH2MigrationLogEventsAnalyzer_runDailyTask__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) counterGroup];
  [v1 resetEventCounters];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  queue = [(HMDHH2MigrationLogEventsAnalyzer *)self queue];
  dispatch_assert_queue_V2(queue);

  v19 = eventCopy;
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
      error = [v7 error];
      if (error)
      {
        counterGroup = error;
        error2 = [v7 error];
        domain = [error2 domain];
        v12 = [domain isEqualToString:*MEMORY[0x277CCFD28]];

        if (v12)
        {
          code = [error2 code];
          if ((code - 2704) <= 0x1C)
          {
            if (((1 << (code + 112)) & 0x1F718102) != 0)
            {
LABEL_10:

LABEL_21:
              goto LABEL_22;
            }

            if (code == 2704)
            {
              userInfo = [error2 userInfo];
              v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

          if ((code - 75) < 2 || code == 2013)
          {
            goto LABEL_10;
          }
        }

LABEL_20:
        counterGroup = [(HMDHH2MigrationLogEventsAnalyzer *)self counterGroup];
        [counterGroup incrementEventCounterForEventName:@"migrationFailureToTriggerTTRCounter"];
        goto LABEL_21;
      }
    }
  }

LABEL_22:
}

- (HMDHH2MigrationLogEventsAnalyzer)initWithDataSource:(id)source
{
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = HMDHH2MigrationLogEventsAnalyzer;
  v5 = [(HMDHH2MigrationLogEventsAnalyzer *)&v21 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    v7 = [legacyCountersManager counterGroupForName:@"HMDHH2MigrationLogEventsAnalyzerGroupName"];
    counterGroup = v5->_counterGroup;
    v5->_counterGroup = v7;

    logEventDispatcher = [sourceCopy logEventDispatcher];
    clientQueue = [logEventDispatcher clientQueue];
    queue = v5->_queue;
    v5->_queue = clientQueue;

    logEventDispatcher2 = [sourceCopy logEventDispatcher];
    [logEventDispatcher2 addObserver:v5 forEventClass:objc_opt_class()];

    radarInitiator = [sourceCopy radarInitiator];

    if (radarInitiator)
    {
      v14 = [HMDCounterThresholdTTRTrigger alloc];
      radarInitiator2 = [sourceCopy radarInitiator];
      v16 = [(HMDCounterThresholdTTRTrigger *)v14 initWithThreshold:1 displayReason:@"HH2 migration failed" radarInitiator:radarInitiator2];
      migrationFailureTTRTrigger = v5->_migrationFailureTTRTrigger;
      v5->_migrationFailureTTRTrigger = v16;

      legacyCountersManager2 = [sourceCopy legacyCountersManager];
      [legacyCountersManager2 addObserver:v5->_migrationFailureTTRTrigger forEventName:@"migrationFailureToTriggerTTRCounter" requestGroup:@"HMDHH2MigrationLogEventsAnalyzerGroupName"];
    }

    dailyScheduler = [sourceCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:v5];
  }

  return v5;
}

@end