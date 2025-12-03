@interface _DKMotionMonitor
+ (id)_eventWithState:(id)state startDate:(id)date endDate:(id)endDate;
+ (id)log;
+ (unint64_t)_activityTypeToMotionState:(id)state;
- (id)classesForSecureStateDecoding;
- (id)initForUnitTest:(BOOL)test;
- (void)addMotionActivity:(id)activity;
- (void)addState:(id)state;
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

+ (id)_eventWithState:(id)state startDate:(id)date endDate:(id)endDate
{
  stateCopy = state;
  dateCopy = date;
  endDateCopy = endDate;
  unknown = [MEMORY[0x277CFE238] unknown];
  if ([stateCopy unsignedIntValue] == 2)
  {
    walking = [MEMORY[0x277CFE238] walking];
  }

  else if ([stateCopy unsignedIntValue] == 1)
  {
    walking = [MEMORY[0x277CFE238] stationary];
  }

  else if ([stateCopy unsignedIntValue] == 3)
  {
    walking = [MEMORY[0x277CFE238] running];
  }

  else if ([stateCopy unsignedIntValue] == 4)
  {
    walking = [MEMORY[0x277CFE238] cycling];
  }

  else if ([stateCopy unsignedIntValue] == 5)
  {
    walking = [MEMORY[0x277CFE238] automotive];
  }

  else
  {
    if ([stateCopy unsignedIntValue] != 6)
    {
      goto LABEL_14;
    }

    walking = [MEMORY[0x277CFE238] stationaryAutomotive];
  }

  v12 = walking;

  unknown = v12;
LABEL_14:
  v13 = MEMORY[0x277CFE1D8];
  motionStream = [MEMORY[0x277CFE298] motionStream];
  date = dateCopy;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    if (endDateCopy)
    {
LABEL_16:
      v16 = [v13 eventWithStream:motionStream startDate:date endDate:endDateCopy value:unknown];
      if (dateCopy)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 eventWithStream:motionStream startDate:date endDate:distantFuture value:unknown];

  if (!dateCopy)
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

- (id)initForUnitTest:(BOOL)test
{
  v34.receiver = self;
  v34.super_class = _DKMotionMonitor;
  v4 = [(_DKMonitor *)&v34 init];
  v5 = v4;
  if (v4)
  {
    instantState = [(_DKMonitor *)v4 instantState];
    v7 = [instantState objectForKeyedSubscript:@"kMotionStateBuffer"];

    if (!v7)
    {
      array = [MEMORY[0x277CBEB18] array];
      instantState2 = [(_DKMonitor *)v5 instantState];
      [instantState2 setObject:array forKeyedSubscript:@"kMotionStateBuffer"];
    }

    if ([MEMORY[0x277CC1CD0] isActivityAvailable])
    {
      v5->_monitoringActivity = 1;
      v5->_activateTimer = 1;
      v5->_currentDominantMotionState = 0;
      v10 = BiomeLibrary();
      motion = [v10 Motion];
      activity = [motion Activity];
      source = [activity source];
      source = v5->_source;
      v5->_source = source;

      if (test)
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
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v17 = [defaultWorkspace applicationIsInstalled:@"com.appleuserstudies.flubber"];
        }

        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v20 = standardUserDefaults;
        if (v17)
        {
          v21 = [standardUserDefaults objectForKey:@"_DKCDisableMotionMonitor"];
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
      queue = [(_DKMonitor *)v5 queue];
      [(NSOperationQueue *)v25 setUnderlyingQueue:queue];

      queue2 = [(_DKMonitor *)v5 queue];
      v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue2);
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
      date = [MEMORY[0x277CBEAA8] date];
      activityManager = self->_activityManager;
      operationQueue = self->_operationQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __25___DKMotionMonitor_start__block_invoke;
      v11[3] = &unk_27856F088;
      objc_copyWeak(&v12, &location);
      [(CMMotionActivityManager *)activityManager queryActivityStartingFromDate:date toDate:date toQueue:operationQueue withHandler:v11];
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
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForMotionState = [MEMORY[0x277CFE338] keyPathForMotionState];
    [userContext setObject:v5 forKeyedSubscript:keyPathForMotionState];
  }
}

- (void)addMotionActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v11 = activityCopy;
    startDate = [activityCopy startDate];

    activityCopy = v11;
    if (startDate)
    {
      v6 = [_DKMotionMonitor _activityTypeToMotionState:v11];
      v7 = [_DKTemporalNumericState alloc];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      startDate2 = [v11 startDate];
      v10 = [(_DKTemporalNumericState *)v7 initWithState:v8 timestamp:startDate2];

      [(_DKMotionMonitor *)self addState:v10];
      activityCopy = v11;
    }
  }
}

- (void)addState:(id)state
{
  stateCopy = state;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  instantState = [(_DKMonitor *)self instantState];
  v7 = [instantState objectForKeyedSubscript:@"kMotionStateBuffer"];

  if (self->_activateTimer)
  {
    self->_activateTimer = 0;
    motionStateProcessingTimer = self->_motionStateProcessingTimer;
    v9 = dispatch_time(0, (self->_dominantActivityInterval * 1000000000.0));
    dispatch_source_set_timer(motionStateProcessingTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  [v7 addObject:stateCopy];

  objc_autoreleasePoolPop(v5);
}

- (void)computeDominantMotionState
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  instantState = [(_DKMonitor *)self instantState];
  v6 = [instantState objectForKeyedSubscript:@"kMotionStateBuffer"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  date = [MEMORY[0x277CBEAA8] date];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46___DKMotionMonitor_computeDominantMotionState__block_invoke;
  v24[3] = &unk_27856F100;
  v26 = v27;
  v8 = dictionary;
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
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForMotionState = [MEMORY[0x277CFE338] keyPathForMotionState];
  [userContext setObject:v9 forKeyedSubscript:keyPathForMotionState];

  self->_currentDominantMotionState = v20[3];
  self->_activateTimer = 1;
  lastObject = [v6 lastObject];
  if ([v6 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    currentDominantMotionState = self->_currentDominantMotionState;
    state = [lastObject state];
    v15 = currentDominantMotionState != [state unsignedLongLongValue];
  }

  [v6 removeAllObjects];
  if (v15)
  {
    [(_DKMotionMonitor *)self addState:lastObject];
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
  queue = [(_DKMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26___DKMotionMonitor_update__block_invoke;
  v7[3] = &unk_27856F0B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

+ (unint64_t)_activityTypeToMotionState:(id)state
{
  stateCopy = state;
  if ([stateCopy walking])
  {
    v4 = 2;
  }

  else if ([stateCopy cycling])
  {
    v4 = 4;
  }

  else if ([stateCopy running])
  {
    v4 = 3;
  }

  else
  {
    automotive = [stateCopy automotive];
    stationary = [stateCopy stationary];
    v7 = 5;
    if (stationary)
    {
      v7 = 6;
    }

    if (automotive)
    {
      v4 = v7;
    }

    else
    {
      v4 = stationary;
    }
  }

  return v4;
}

@end