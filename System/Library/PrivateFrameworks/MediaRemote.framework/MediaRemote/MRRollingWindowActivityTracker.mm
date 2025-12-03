@interface MRRollingWindowActivityTracker
- (BOOL)isRunning;
- (MRRollingWindowActivityTracker)initWithActivityName:(id)name maxAllowedTime:(double)time windowDuration:(double)duration handler:(id)handler;
- (NSString)debugDescription;
- (NSString)description;
- (double)_onQueue_timeRemainingUntilThreshold;
- (double)_onQueue_timeSpentInWindow;
- (double)timeRemainingUntilThreshold;
- (double)timeSpentInWindow;
- (id)mostRecentContext;
- (void)_onQueue_scheduleThresholdTimer;
- (void)_onQueue_thresholdReached;
- (void)dealloc;
- (void)startActivityTrackingWithContext:(id)context;
- (void)stopActivityTracking;
@end

@implementation MRRollingWindowActivityTracker

- (MRRollingWindowActivityTracker)initWithActivityName:(id)name maxAllowedTime:(double)time windowDuration:(double)duration handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = MRRollingWindowActivityTracker;
  v13 = [(MRRollingWindowActivityTracker *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_activityName, name);
    v14->_windowDuration = duration;
    v14->_maxAllowedTime = time;
    v15 = MEMORY[0x1A58E3570](handlerCopy);
    handler = v14->_handler;
    v14->_handler = v15;

    array = [MEMORY[0x1E695DF70] array];
    enabledPeriods = v14->_enabledPeriods;
    v14->_enabledPeriods = array;

    v14->_running = 0;
    nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.%@", objc_opt_class(), nameCopy];
    v20 = dispatch_queue_create([nameCopy UTF8String], 0);
    queue = v14->_queue;
    v14->_queue = v20;
  }

  return v14;
}

- (void)dealloc
{
  thresholdTimer = [(MRRollingWindowActivityTracker *)self thresholdTimer];
  [thresholdTimer invalidate];

  v4.receiver = self;
  v4.super_class = MRRollingWindowActivityTracker;
  [(MRRollingWindowActivityTracker *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  activityName = [(MRRollingWindowActivityTracker *)self activityName];
  v6 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, activityName];

  return v6;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  activityName = [(MRRollingWindowActivityTracker *)self activityName];
  isRunning = [(MRRollingWindowActivityTracker *)self isRunning];
  [(MRRollingWindowActivityTracker *)self timeSpentInWindow];
  v8 = v7;
  [(MRRollingWindowActivityTracker *)self maxAllowedTime];
  v10 = v9;
  [(MRRollingWindowActivityTracker *)self timeRemainingUntilThreshold];
  v12 = v11;
  [(MRRollingWindowActivityTracker *)self windowDuration];
  v14 = v13;
  mostRecentContext = [(MRRollingWindowActivityTracker *)self mostRecentContext];
  v16 = [v3 initWithFormat:@"<%@:%p name=%@, tracking=%u, timeSpent=%lf/%lf, remaining=%lf, window=%lf, context=%@>", v4, self, activityName, isRunning, v8, v10, v12, v14, mostRecentContext];

  return v16;
}

- (void)startActivityTrackingWithContext:(id)context
{
  contextCopy = context;
  queue = [(MRRollingWindowActivityTracker *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MRRollingWindowActivityTracker_startActivityTrackingWithContext___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

void __67__MRRollingWindowActivityTracker_startActivityTrackingWithContext___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMostRecentContext:*(a1 + 40)];
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    v2 = MRLogCategoryDiscoveryOversize();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRActivityTracker] Start: %@ ", &v6, 0xCu);
    }

    *(*(a1 + 32) + 8) = 1;
    v4 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setEnabledSince:v4];
    [*(a1 + 32) _onQueue_scheduleThresholdTimer];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopActivityTracking
{
  queue = [(MRRollingWindowActivityTracker *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MRRollingWindowActivityTracker_stopActivityTracking__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__MRRollingWindowActivityTracker_stopActivityTracking__block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 8) == 1)
  {
    v1 = result;
    v2 = MRLogCategoryDiscoveryOversize();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(v1 + 32);
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRActivityTracker] Stop: %@ ", buf, 0xCu);
    }

    *(*(v1 + 32) + 8) = 0;
    v4 = [*(v1 + 32) enabledSince];

    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      v6 = [*(v1 + 32) enabledPeriods];
      v7 = [*(v1 + 32) enabledSince];
      v11[1] = @"end";
      v12[0] = v7;
      v12[1] = v5;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v6 addObject:v8];

      [*(v1 + 32) setEnabledSince:0];
    }

    v9 = [*(v1 + 32) thresholdTimer];
    [v9 invalidate];

    result = [*(v1 + 32) setThresholdTimer:0];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)timeSpentInWindow
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(MRRollingWindowActivityTracker *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MRRollingWindowActivityTracker_timeSpentInWindow__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __51__MRRollingWindowActivityTracker_timeSpentInWindow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_timeSpentInWindow];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)_onQueue_timeSpentInWindow
{
  v36 = *MEMORY[0x1E69E9840];
  queue = [(MRRollingWindowActivityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  date = [MEMORY[0x1E695DF00] date];
  [(MRRollingWindowActivityTracker *)self windowDuration];
  v29 = date;
  v6 = [date dateByAddingTimeInterval:-v5];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [(MRRollingWindowActivityTracker *)self enabledPeriods];
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"start"];
        v14 = [v12 objectForKeyedSubscript:@"end"];
        v15 = v14;
        if (v14 && [v14 compare:v6] != -1)
        {
          if ([v13 compare:v6] == -1)
          {
            v16 = v6;
          }

          else
          {
            v16 = v13;
          }

          v17 = v16;
          if ([v15 compare:v29] == 1)
          {
            v18 = v29;
          }

          else
          {
            v18 = v15;
          }

          [v18 timeIntervalSinceDate:v17];
          v20 = v19;

          v10 = v10 + v20;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  if (selfCopy->_running)
  {
    enabledSince = [(MRRollingWindowActivityTracker *)selfCopy enabledSince];

    if (enabledSince)
    {
      enabledSince2 = [(MRRollingWindowActivityTracker *)selfCopy enabledSince];
      if ([enabledSince2 compare:v6] == -1)
      {
        enabledSince3 = v6;
      }

      else
      {
        enabledSince3 = [(MRRollingWindowActivityTracker *)selfCopy enabledSince];
      }

      v24 = enabledSince3;

      [v29 timeIntervalSinceDate:v24];
      v10 = v10 + v25;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (double)timeRemainingUntilThreshold
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(MRRollingWindowActivityTracker *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MRRollingWindowActivityTracker_timeRemainingUntilThreshold__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __61__MRRollingWindowActivityTracker_timeRemainingUntilThreshold__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_timeRemainingUntilThreshold];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)_onQueue_timeRemainingUntilThreshold
{
  queue = [(MRRollingWindowActivityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRRollingWindowActivityTracker *)self _onQueue_timeSpentInWindow];
  v5 = v4;
  [(MRRollingWindowActivityTracker *)self maxAllowedTime];
  v7 = v6;
  result = 0.0;
  if (v5 < v7)
  {
    [(MRRollingWindowActivityTracker *)self maxAllowedTime];
    return v9 - v5;
  }

  return result;
}

- (id)mostRecentContext
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  queue = [(MRRollingWindowActivityTracker *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MRRollingWindowActivityTracker_mostRecentContext__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isRunning
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MRRollingWindowActivityTracker *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MRRollingWindowActivityTracker_isRunning__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_onQueue_scheduleThresholdTimer
{
  queue = [(MRRollingWindowActivityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRRollingWindowActivityTracker *)self _onQueue_timeRemainingUntilThreshold];
  if (self->_running)
  {
    v5 = v4;
    if (v4 > 0.0)
    {
      thresholdTimer = [(MRRollingWindowActivityTracker *)self thresholdTimer];
      [thresholdTimer invalidate];

      v7 = objc_alloc(MEMORY[0x1E69B14D8]);
      queue2 = [(MRRollingWindowActivityTracker *)self queue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__MRRollingWindowActivityTracker__onQueue_scheduleThresholdTimer__block_invoke;
      v10[3] = &unk_1E769A228;
      v10[4] = self;
      v9 = [v7 initWithInterval:0 repeats:queue2 queue:v10 block:v5];
      [(MRRollingWindowActivityTracker *)self setThresholdTimer:v9];
    }
  }
}

- (void)_onQueue_thresholdReached
{
  v14 = *MEMORY[0x1E69E9840];
  queue = [(MRRollingWindowActivityTracker *)self queue];
  dispatch_assert_queue_V2(queue);

  enabledPeriods = [(MRRollingWindowActivityTracker *)self enabledPeriods];
  [enabledPeriods removeAllObjects];

  date = [MEMORY[0x1E695DF00] date];
  [(MRRollingWindowActivityTracker *)self setEnabledSince:date];

  [(MRRollingWindowActivityTracker *)self _onQueue_scheduleThresholdTimer];
  v6 = MRLogCategoryDiscoveryOversize();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mostRecentContext = self->_mostRecentContext;
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = mostRecentContext;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRActivityTracker] Treshold Reached: %@ with context %@", &v10, 0x16u);
  }

  handler = [(MRRollingWindowActivityTracker *)self handler];
  if (handler)
  {
    dispatch_async(MEMORY[0x1E69E96A0], handler);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end