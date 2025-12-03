@interface BPSThrottle
- (BPSThrottle)initWithUpstream:(id)upstream interval:(double)interval latest:(BOOL)latest getTimestamp:(id)timestamp;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)nextEvent;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSThrottle

- (BPSThrottle)initWithUpstream:(id)upstream interval:(double)interval latest:(BOOL)latest getTimestamp:(id)timestamp
{
  upstreamCopy = upstream;
  timestampCopy = timestamp;
  if (interval < 0.0)
  {
    [BPSThrottle initWithUpstream:a2 interval:self latest:? getTimestamp:?];
  }

  v23.receiver = self;
  v23.super_class = BPSThrottle;
  v14 = [(BPSThrottle *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_upstream, upstream);
    v15->_interval = interval;
    v15->_latest = latest;
    v16 = [timestampCopy copy];
    getTimestamp = v15->_getTimestamp;
    v15->_getTimestamp = v16;

    intervalEvent = v15->_intervalEvent;
    v15->_intervalEvent = 0;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v15->_nextIntervalBoundary;
    v15->_nextIntervalBoundary = distantPast;

    startTimestamp = v15->_startTimestamp;
    v15->_startTimestamp = 0;
  }

  return v15;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSDebounce subscribe:];
  }

  v6 = [_BPSThrottleInner alloc];
  [(BPSThrottle *)self interval];
  v8 = v7;
  latest = [(BPSThrottle *)self latest];
  getTimestamp = [(BPSThrottle *)self getTimestamp];
  v11 = [(_BPSThrottleInner *)v6 initWithDownstream:subscribeCopy interval:latest latest:getTimestamp getTimestamp:v8];

  upstream = [(BPSThrottle *)self upstream];
  [upstream subscribe:v11];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSThrottle *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v41 = *MEMORY[0x1E69E9840];
  upstream = [(BPSThrottle *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    *&v5 = 138412802;
    v35 = v5;
    while (1)
    {
      getTimestamp = [(BPSThrottle *)self getTimestamp];
      v7 = (getTimestamp)[2](getTimestamp, nextEvent);

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = [v7 description];
        *__y = v35;
        *&__y[4] = v26;
        v37 = 2112;
        v38 = nextEvent;
        v39 = 2112;
        v40 = v27;
        _os_log_debug_impl(&dword_1C871B000, v8, OS_LOG_TYPE_DEBUG, "%@ - receiving: %@ at %@", __y, 0x20u);
      }

      nextIntervalBoundary = [(BPSThrottle *)self nextIntervalBoundary];
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      v11 = [nextIntervalBoundary isEqualToDate:distantPast];

      if (v11)
      {
        break;
      }

      nextIntervalBoundary2 = [(BPSThrottle *)self nextIntervalBoundary];
      v13 = [v7 compare:nextIntervalBoundary2];

      if (v13 == 1)
      {
        intervalEvent = [(BPSThrottle *)self intervalEvent];

        if (intervalEvent)
        {
          intervalEvent = [(BPSThrottle *)self intervalEvent];
        }

        startTimestamp = [(BPSThrottle *)self startTimestamp];
        [v7 timeIntervalSinceDate:startTimestamp];
        v17 = v16;

        [(BPSThrottle *)self interval];
        v19 = 1.0 - modf(v17 / v18, __y);
        v20 = objc_alloc(MEMORY[0x1E695DF00]);
        [(BPSThrottle *)self interval];
        v22 = [v20 initWithTimeInterval:v7 sinceDate:(v19 * v21)];
        [(BPSThrottle *)self setNextIntervalBoundary:v22];

        [(BPSThrottle *)self setIntervalEvent:nextEvent];
        if (intervalEvent)
        {
          v31 = __biome_log_for_category();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [BPSDebounce nextEvent];
          }

          goto LABEL_22;
        }
      }

      else if ([(BPSThrottle *)self latest]|| ([(BPSThrottle *)self intervalEvent], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        [(BPSThrottle *)self setIntervalEvent:nextEvent];
      }

      upstream2 = [(BPSThrottle *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
      if (!nextEvent2)
      {
        goto LABEL_15;
      }
    }

    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BPSThrottle nextEvent];
    }

    [(BPSThrottle *)self setStartTimestamp:v7];
    v29 = MEMORY[0x1E695DF00];
    [(BPSThrottle *)self interval];
    v30 = [v29 dateWithTimeInterval:v7 sinceDate:?];
    [(BPSThrottle *)self setNextIntervalBoundary:v30];

    intervalEvent = nextEvent;
LABEL_22:
  }

  else
  {
LABEL_15:
    intervalEvent = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return intervalEvent;
}

- (void)reset
{
  [(BPSThrottle *)self setIntervalEvent:0];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(BPSThrottle *)self setNextIntervalBoundary:distantPast];

  [(BPSThrottle *)self setStartTimestamp:0];
  v4.receiver = self;
  v4.super_class = BPSThrottle;
  [(BPSPublisher *)&v4 reset];
}

- (void)initWithUpstream:(uint64_t)a1 interval:(uint64_t)a2 latest:getTimestamp:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSThrottle.m" lineNumber:139 description:@"interval should be greater than or equal to 0"];
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