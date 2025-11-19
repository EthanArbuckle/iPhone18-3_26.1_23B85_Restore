@interface _DKMotionMonitor
+ (id)_eventWithState:(id)a3 startDate:(id)a4 endDate:(id)a5;
+ (id)log;
+ (unint64_t)_activityTypeToMotionState:(id)a3;
- (id)classesForSecureStateDecoding;
- (id)initForUnitTest:(BOOL)a3;
- (void)addMotionActivity:(id)a3;
- (void)addState:(id)a3;
- (void)computeDominantMotionState;
- (void)deactivate;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)update;
@end

@implementation _DKMotionMonitor

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[_DKMotionMonitor log];
  }

  v3 = log_log;

  return v3;
}

+ (id)_eventWithState:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CFE238] unknown];
  if ([v7 unsignedIntValue] == 2)
  {
    v11 = [MEMORY[0x277CFE238] walking];
  }

  else if ([v7 unsignedIntValue] == 1)
  {
    v11 = [MEMORY[0x277CFE238] stationary];
  }

  else if ([v7 unsignedIntValue] == 3)
  {
    v11 = [MEMORY[0x277CFE238] running];
  }

  else if ([v7 unsignedIntValue] == 4)
  {
    v11 = [MEMORY[0x277CFE238] cycling];
  }

  else if ([v7 unsignedIntValue] == 5)
  {
    v11 = [MEMORY[0x277CFE238] automotive];
  }

  else
  {
    if ([v7 unsignedIntValue] != 6)
    {
      goto LABEL_14;
    }

    v11 = [MEMORY[0x277CFE238] stationaryAutomotive];
  }

  v12 = v11;

  v10 = v12;
LABEL_14:
  v13 = MEMORY[0x277CFE1D8];
  v14 = [MEMORY[0x277CFE298] motionStream];
  v15 = v8;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CBEAA8] date];
    if (v9)
    {
LABEL_16:
      v16 = [v13 eventWithStream:v14 startDate:v15 endDate:v9 value:v10];
      if (v8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v18 = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 eventWithStream:v14 startDate:v15 endDate:v18 value:v10];

  if (!v8)
  {
LABEL_17:
  }

LABEL_18:

  return v16;
}

- (id)classesForSecureStateDecoding
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)initForUnitTest:(BOOL)a3
{
  v34.receiver = self;
  v34.super_class = _DKMotionMonitor;
  v4 = [(_DKMonitor *)&v34 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(_DKMonitor *)v4 instantState];
    v7 = [v6 objectForKeyedSubscript:@"kMotionStateBuffer"];

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v9 = [(_DKMonitor *)v5 instantState];
      [v9 setObject:v8 forKeyedSubscript:@"kMotionStateBuffer"];
    }

    if ([MEMORY[0x277CC1CD0] isActivityAvailable])
    {
      v5->_monitoringActivity = 1;
      v5->_activateTimer = 1;
      v5->_currentDominantMotionState = 0;
      v10 = BiomeLibrary();
      v11 = [v10 Motion];
      v12 = [v11 Activity];
      v13 = [v12 source];
      source = v5->_source;
      v5->_source = v13;

      if (a3)
      {
        v5->_dominantActivityInterval = 2.0;
      }

      else
      {
        v5->_dominantActivityInterval = 60.0;
        v15 = objc_alloc_init(MEMORY[0x277CC1CD0]);
        activityManager = v5->_activityManager;
        v5->_activityManager = v15;

        if ([MEMORY[0x277CFE088] isRunningOnInternalBuild])
        {
          v17 = 1;
        }

        else
        {
          v18 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v17 = [v18 applicationIsInstalled:@"com.appleuserstudies.flubber"];
        }

        v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v20 = v19;
        if (v17)
        {
          v21 = [v19 objectForKey:@"_DKCDisableMotionMonitor"];
          if (v21)
          {
            v22 = [v20 BOOLForKey:@"_DKCDisableMotionMonitor"] ^ 1;
          }

          else
          {
            v22 = 1;
          }

          v5->_shouldRecordMotion = v22;
        }

        else
        {
          v5->_shouldRecordMotion = 0;
        }
      }

      v23 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = v5->_operationQueue;
      v5->_operationQueue = v23;

      v25 = v5->_operationQueue;
      v26 = [(_DKMonitor *)v5 queue];
      [(NSOperationQueue *)v25 setUnderlyingQueue:v26];

      v27 = [(_DKMonitor *)v5 queue];
      v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v27);
      motionStateProcessingTimer = v5->_motionStateProcessingTimer;
      v5->_motionStateProcessingTimer = v28;

      v30 = v5->_motionStateProcessingTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __36___DKMotionMonitor_initForUnitTest___block_invoke;
      handler[3] = &unk_27856F060;
      v33 = v5;
      dispatch_source_set_event_handler(v30, handler);
      dispatch_source_set_timer(v5->_motionStateProcessingTimer, 0, (v5->_dominantActivityInterval * 1000000000.0), 0x3B9ACA00uLL);
      dispatch_activate(v5->_motionStateProcessingTimer);
    }
  }

  return v5;
}

- (void)dealloc
{
  [(_DKMotionMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKMotionMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v14.receiver = self;
  v14.super_class = _DKMotionMonitor;
  if ([(_DKMonitor *)&v14 instantMonitorNeedsActivation])
  {
    v3 = objc_autoreleasePoolPush();
    if (self->_monitoringActivity)
    {
      objc_initWeak(&location, self);
      v4 = [MEMORY[0x277CBEAA8] date];
      activityManager = self->_activityManager;
      operationQueue = self->_operationQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __25___DKMotionMonitor_start__block_invoke;
      v11[3] = &unk_27856F088;
      objc_copyWeak(&v12, &location);
      [(CMMotionActivityManager *)activityManager queryActivityStartingFromDate:v4 toDate:v4 toQueue:operationQueue withHandler:v11];
      v7 = self->_activityManager;
      v8 = self->_operationQueue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __25___DKMotionMonitor_start__block_invoke_2;
      v9[3] = &unk_27856F0D8;
      objc_copyWeak(&v10, &location);
      v9[4] = self;
      [(CMMotionActivityManager *)v7 startActivityUpdatesToQueue:v8 withHandler:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&v12);

      objc_destroyWeak(&location);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKMotionMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKMotionMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  v3 = objc_autoreleasePoolPush();
  if (self->_monitoringActivity)
  {
    dispatch_source_cancel(self->_motionStateProcessingTimer);
    self->_monitoringActivity = 0;
    [(CMMotionActivityManager *)self->_activityManager stopActivityUpdates];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)synchronouslyReflectCurrentValue
{
  if ([MEMORY[0x277CC1CD0] isActivityAvailable])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentDominantMotionState];
    v3 = [MEMORY[0x277CFE318] userContext];
    v4 = [MEMORY[0x277CFE338] keyPathForMotionState];
    [v3 setObject:v5 forKeyedSubscript:v4];
  }
}

- (void)addMotionActivity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 startDate];

    v4 = v11;
    if (v5)
    {
      v6 = [_DKMotionMonitor _activityTypeToMotionState:v11];
      v7 = [_DKTemporalNumericState alloc];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      v9 = [v11 startDate];
      v10 = [(_DKTemporalNumericState *)v7 initWithState:v8 timestamp:v9];

      [(_DKMotionMonitor *)self addState:v10];
      v4 = v11;
    }
  }
}

- (void)addState:(id)a3
{
  v10 = a3;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = [(_DKMonitor *)self instantState];
  v7 = [v6 objectForKeyedSubscript:@"kMotionStateBuffer"];

  if (self->_activateTimer)
  {
    self->_activateTimer = 0;
    motionStateProcessingTimer = self->_motionStateProcessingTimer;
    v9 = dispatch_time(0, (self->_dominantActivityInterval * 1000000000.0));
    dispatch_source_set_timer(motionStateProcessingTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  [v7 addObject:v10];

  objc_autoreleasePoolPop(v5);
}

- (void)computeDominantMotionState
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = [(_DKMonitor *)self instantState];
  v6 = [v5 objectForKeyedSubscript:@"kMotionStateBuffer"];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v28 = [MEMORY[0x277CBEAA8] date];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46___DKMotionMonitor_computeDominantMotionState__block_invoke;
  v24[3] = &unk_27856F100;
  v26 = v27;
  v8 = v7;
  v25 = v8;
  [v6 enumerateObjectsWithOptions:2 usingBlock:v24];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0x10000000000000;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46___DKMotionMonitor_computeDominantMotionState__block_invoke_47;
  v18[3] = &unk_27856F128;
  v18[4] = v23;
  v18[5] = &v19;
  [v8 enumerateKeysAndObjectsUsingBlock:v18];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20[3]];
  v10 = [MEMORY[0x277CFE318] userContext];
  v11 = [MEMORY[0x277CFE338] keyPathForMotionState];
  [v10 setObject:v9 forKeyedSubscript:v11];

  self->_currentDominantMotionState = v20[3];
  self->_activateTimer = 1;
  v12 = [v6 lastObject];
  if ([v6 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    currentDominantMotionState = self->_currentDominantMotionState;
    v14 = [v12 state];
    v15 = currentDominantMotionState != [v14 unsignedLongLongValue];
  }

  [v6 removeAllObjects];
  if (v15)
  {
    [(_DKMotionMonitor *)self addState:v12];
  }

  [(_DKMonitor *)self saveState];
  if (self->_shouldRecordMotion)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20[3]];
    v17 = [_DKMotionMonitor _eventWithState:v16 startDate:0 endDate:0];
    [(_DKMonitor *)self setCurrentEvent:v17 inferHistoricalState:1];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v27, 8);
  objc_autoreleasePoolPop(v4);
}

- (void)update
{
  v3 = +[_DKMotionMonitor log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Periodic update starting", buf, 2u);
  }

  v4 = os_transaction_create();
  v5 = [(_DKMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26___DKMotionMonitor_update__block_invoke;
  v7[3] = &unk_27856F0B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (unint64_t)_activityTypeToMotionState:(id)a3
{
  v3 = a3;
  if ([v3 walking])
  {
    v4 = 2;
  }

  else if ([v3 cycling])
  {
    v4 = 4;
  }

  else if ([v3 running])
  {
    v4 = 3;
  }

  else
  {
    v5 = [v3 automotive];
    v6 = [v3 stationary];
    v7 = 5;
    if (v6)
    {
      v7 = 6;
    }

    if (v5)
    {
      v4 = v7;
    }

    else
    {
      v4 = v6;
    }
  }

  return v4;
}

@end