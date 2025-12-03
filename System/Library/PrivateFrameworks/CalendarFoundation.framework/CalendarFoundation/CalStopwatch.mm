@interface CalStopwatch
- (CalStopwatch)init;
- (double)markEventEnd:(id)end;
- (double)markEventSplit:(id)split;
- (id)description;
- (unint64_t)elapsedTimeAsNumber:(int)number;
- (unint64_t)elapsedTimeInNanoseconds;
- (void)markEventStart:(id)start;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation CalStopwatch

- (CalStopwatch)init
{
  v7.receiver = self;
  v7.super_class = CalStopwatch;
  v2 = [(CalStopwatch *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isRunning = 0;
    v2->_hasValidElapsedTime = 0;
    v4 = objc_opt_new();
    events = v3->_events;
    v3->_events = v4;
  }

  return v3;
}

- (void)start
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, a2, a3, "Will not start stopwatch.  It is already running.  Stopwatch: [%@].", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)elapsedTimeInNanoseconds
{
  v3 = mach_absolute_time();
  if (elapsedTimeInNanoseconds_onceToken != -1)
  {
    [CalStopwatch elapsedTimeInNanoseconds];
  }

  if (!elapsedTimeInNanoseconds_ratio)
  {
    return 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isRunning)
  {
    v5 = (v3 - selfCopy->_lastStartTime + selfCopy->_elapsedTime) * elapsedTimeInNanoseconds_ratio;
  }

  else if (selfCopy->_hasValidElapsedTime)
  {
    v5 = selfCopy->_elapsedTime * elapsedTimeInNanoseconds_ratio;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

void __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke()
{
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v1 = v0;
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke_cold_1(v1, v2);
    }
  }

  else if (info.denom)
  {
    elapsedTimeInNanoseconds_ratio = info.numer / info.denom;
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke_cold_2(v2);
    }
  }

  else
  {
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke_cold_3(v2);
    }
  }
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalStopwatch;
  v4 = [(CalStopwatch *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CalDescriptionBuilder *)v5 setKey:@"LastStartTime" withUnsignedLongLong:selfCopy->_lastStartTime];
  [(CalDescriptionBuilder *)v5 setKey:@"ElapsedTime" withUnsignedLongLong:selfCopy->_elapsedTime];
  [(CalDescriptionBuilder *)v5 setKey:@"IsRunning" withBoolean:selfCopy->_isRunning];
  [(CalDescriptionBuilder *)v5 setKey:@"HasValidElapsedTime" withBoolean:selfCopy->_hasValidElapsedTime];
  objc_sync_exit(selfCopy);

  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, a2, a3, "Will not stop stopwatch.  It is not running. Stopwatch: [%@].", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRunning = 0;
  obj->_lastStartTime = 0;
  obj->_elapsedTime = 0;
  obj->_hasValidElapsedTime = 0;
  objc_sync_exit(obj);
}

- (unint64_t)elapsedTimeAsNumber:(int)number
{
  elapsedTimeInNanoseconds = [(CalStopwatch *)self elapsedTimeInNanoseconds];
  if (number > 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_1B997D9E0[number];
  }

  return elapsedTimeInNanoseconds / v5;
}

- (void)markEventStart:(id)start
{
  startCopy = start;
  date = [MEMORY[0x1E695DF00] date];
  v6 = +[CalFoundationLogSubsystem eventTimer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(CalStopwatch *)startCopy markEventStart:v6, v7, v8, v9, v10, v11, v12];
  }

  if ([(CalStopwatch *)self usesSignalFlags])
  {
    v13 = +[CalFoundationLogSubsystem eventTimer];
    CalPerfLogStart(v13);
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithObject:date];
  [(NSMutableDictionary *)self->_events setObject:v14 forKeyedSubscript:startCopy];
}

- (double)markEventSplit:(id)split
{
  v24 = *MEMORY[0x1E69E9840];
  splitCopy = split;
  date = [MEMORY[0x1E695DF00] date];
  v6 = [(NSMutableDictionary *)self->_events objectForKeyedSubscript:splitCopy];
  lastObject = [v6 lastObject];
  firstObject = [v6 firstObject];
  v9 = 0;
  v10 = 0.0;
  if (lastObject)
  {
    [date timeIntervalSinceDate:lastObject];
    v10 = v11;
  }

  if (firstObject)
  {
    [date timeIntervalSinceDate:firstObject];
    v9 = v12;
  }

  v13 = +[CalFoundationLogSubsystem eventTimer];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v19 = splitCopy;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    _os_log_debug_impl(&dword_1B990D000, v13, OS_LOG_TYPE_DEBUG, "Event %@ has taken %f seconds so far (%f seconds since last split)", buf, 0x20u);
  }

  if ([(CalStopwatch *)self usesSignalFlags])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Split %li", splitCopy, objc_msgSend(v6, "count") + 1];
    v15 = +[CalFoundationLogSubsystem eventTimer];
    CalPerfLogPoint(v15);
  }

  [v6 addObject:date];

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (double)markEventEnd:(id)end
{
  v23 = *MEMORY[0x1E69E9840];
  endCopy = end;
  date = [MEMORY[0x1E695DF00] date];
  v6 = [(NSMutableDictionary *)self->_events objectForKeyedSubscript:endCopy];
  lastObject = [v6 lastObject];
  firstObject = [v6 firstObject];
  v9 = 0.0;
  v10 = 0;
  if (lastObject)
  {
    [date timeIntervalSinceDate:lastObject];
    v10 = v11;
  }

  if (firstObject)
  {
    [date timeIntervalSinceDate:firstObject];
    v9 = v12;
  }

  v13 = +[CalFoundationLogSubsystem eventTimer];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = endCopy;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    _os_log_debug_impl(&dword_1B990D000, v13, OS_LOG_TYPE_DEBUG, "Event %@ took a total of %f seconds (%f seconds since last split)", &v17, 0x20u);
  }

  if ([(CalStopwatch *)self usesSignalFlags])
  {
    v14 = +[CalFoundationLogSubsystem eventTimer];
    CalPerfLogEnd(v14);
  }

  [(NSMutableDictionary *)self->_events removeObjectForKey:endCopy];

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

void __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Could not acquire Mach timebase information.  Stopwatches will not work.  Error: [%d]", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __40__CalStopwatch_elapsedTimeInNanoseconds__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = elapsedTimeInNanoseconds_ratio;
  _os_log_debug_impl(&dword_1B990D000, log, OS_LOG_TYPE_DEBUG, "Mach timebase information ratio: [%u]", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)markEventStart:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1B990D000, a2, a3, "Started event %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end