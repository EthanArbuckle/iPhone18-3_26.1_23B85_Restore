@interface BPSTimer
- (BOOL)completed;
- (BPSTimer)initWithUpstream:(id)upstream interval:(double)interval getTimestamp:(id)timestamp;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)nextEvent;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSTimer

- (BPSTimer)initWithUpstream:(id)upstream interval:(double)interval getTimestamp:(id)timestamp
{
  upstreamCopy = upstream;
  timestampCopy = timestamp;
  if (interval <= 0.0)
  {
    [BPSTimer initWithUpstream:a2 interval:self getTimestamp:?];
  }

  v21.receiver = self;
  v21.super_class = BPSTimer;
  v12 = [(BPSTimer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, upstream);
    v13->_interval = interval;
    v14 = [timestampCopy copy];
    getTimestamp = v13->_getTimestamp;
    v13->_getTimestamp = v14;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v13->_nextIntervalBoundary;
    v13->_nextIntervalBoundary = distantPast;

    v18 = objc_opt_new();
    pendingTimers = v13->_pendingTimers;
    v13->_pendingTimers = v18;
  }

  return v13;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSDebounce subscribe:];
  }

  v6 = [_BPSTimerInner alloc];
  [(BPSTimer *)self interval];
  v8 = v7;
  getTimestamp = [(BPSTimer *)self getTimestamp];
  v10 = [(_BPSTimerInner *)v6 initWithDownstream:subscribeCopy interval:getTimestamp getTimestamp:v8];

  upstream = [(BPSTimer *)self upstream];
  [upstream subscribe:v10];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSTimer *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v49 = *MEMORY[0x1E69E9840];
  pendingTimers = [(BPSTimer *)self pendingTimers];
  v4 = [pendingTimers count];

  if (v4)
  {
    pendingTimers2 = [(BPSTimer *)self pendingTimers];
    nextEvent2 = [pendingTimers2 objectAtIndexedSubscript:0];

    pendingTimers3 = [(BPSTimer *)self pendingTimers];
    [pendingTimers3 removeObjectAtIndex:0];

    nextEvent = __biome_log_for_category();
    if (os_log_type_enabled(nextEvent, OS_LOG_TYPE_DEBUG))
    {
      [BPSTimer nextEvent];
    }

    goto LABEL_4;
  }

  upstream = [(BPSTimer *)self upstream];
  nextEvent = [upstream nextEvent];

  if (!nextEvent)
  {
    nextEvent2 = 0;
    goto LABEL_5;
  }

  *&v12 = 138412802;
  v42 = v12;
  while (1)
  {
    getTimestamp = [(BPSTimer *)self getTimestamp];
    v14 = (getTimestamp)[2](getTimestamp, nextEvent);

    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = [v14 description];
      *buf = v42;
      v44 = v37;
      v45 = 2112;
      v46 = nextEvent;
      v47 = 2112;
      v48 = v38;
      _os_log_debug_impl(&dword_1C871B000, v15, OS_LOG_TYPE_DEBUG, "%@ - receiving: %@ at %@", buf, 0x20u);
    }

    nextIntervalBoundary = [(BPSTimer *)self nextIntervalBoundary];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v18 = [nextIntervalBoundary isEqualToDate:distantPast];

    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1E695DF00];
    [(BPSTimer *)self interval];
    v20 = [v19 dateWithTimeInterval:v14 sinceDate:?];
    [(BPSTimer *)self setNextIntervalBoundary:v20];

    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v39 = objc_opt_class();
      nextIntervalBoundary2 = [(BPSTimer *)self nextIntervalBoundary];
      *buf = 138412546;
      v44 = v39;
      v45 = 2112;
      v46 = nextIntervalBoundary2;
      _os_log_debug_impl(&dword_1C871B000, v21, OS_LOG_TYPE_DEBUG, "%@ - started with nextIntervalBoundary: %@", buf, 0x16u);
    }

LABEL_25:
    upstream2 = [(BPSTimer *)self upstream];
    nextEvent2 = [upstream2 nextEvent];

    nextEvent = nextEvent2;
    if (!nextEvent2)
    {
      goto LABEL_5;
    }
  }

  nextIntervalBoundary3 = [(BPSTimer *)self nextIntervalBoundary];
  v23 = [v14 compare:nextIntervalBoundary3];

  if (v23 != 1)
  {
    goto LABEL_25;
  }

  nextEvent2 = 0;
  do
  {
    if (nextEvent2)
    {
      pendingTimers4 = [(BPSTimer *)self pendingTimers];
      nextIntervalBoundary4 = [(BPSTimer *)self nextIntervalBoundary];
      [pendingTimers4 addObject:nextIntervalBoundary4];
    }

    else
    {
      nextEvent2 = [(BPSTimer *)self nextIntervalBoundary];
    }

    v26 = MEMORY[0x1E695DF00];
    [(BPSTimer *)self interval];
    v28 = v27;
    nextIntervalBoundary5 = [(BPSTimer *)self nextIntervalBoundary];
    v30 = [v26 dateWithTimeInterval:nextIntervalBoundary5 sinceDate:v28];
    [(BPSTimer *)self setNextIntervalBoundary:v30];

    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      nextIntervalBoundary6 = [(BPSTimer *)self nextIntervalBoundary];
      *buf = 138412546;
      v44 = v34;
      v45 = 2112;
      v46 = nextIntervalBoundary6;
      _os_log_debug_impl(&dword_1C871B000, v31, OS_LOG_TYPE_DEBUG, "%@ - set new nextIntervalBoundary: %@", buf, 0x16u);
    }

    nextIntervalBoundary7 = [(BPSTimer *)self nextIntervalBoundary];
    v33 = [v14 compare:nextIntervalBoundary7];
  }

  while (v33 == 1);
  if (!nextEvent2)
  {
    goto LABEL_25;
  }

  v41 = __biome_log_for_category();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [BPSTimer nextEvent];
  }

LABEL_4:
LABEL_5:
  v9 = *MEMORY[0x1E69E9840];

  return nextEvent2;
}

- (void)reset
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(BPSTimer *)self setNextIntervalBoundary:distantPast];

  v4 = objc_opt_new();
  [(BPSTimer *)self setPendingTimers:v4];

  v5.receiver = self;
  v5.super_class = BPSTimer;
  [(BPSPublisher *)&v5 reset];
}

- (BOOL)completed
{
  pendingTimers = [(BPSTimer *)self pendingTimers];
  v4 = [pendingTimers count];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = BPSTimer;
  return [(BPSPublisher *)&v6 completed];
}

- (void)initWithUpstream:(uint64_t)a1 interval:(uint64_t)a2 getTimestamp:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSTimer.m" lineNumber:123 description:@"interval should be greater than 0"];
}

- (void)nextEvent
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end