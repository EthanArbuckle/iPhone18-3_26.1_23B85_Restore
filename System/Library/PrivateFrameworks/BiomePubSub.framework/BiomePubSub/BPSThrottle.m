@interface BPSThrottle
- (BPSThrottle)initWithUpstream:(id)a3 interval:(double)a4 latest:(BOOL)a5 getTimestamp:(id)a6;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)nextEvent;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSThrottle

- (BPSThrottle)initWithUpstream:(id)a3 interval:(double)a4 latest:(BOOL)a5 getTimestamp:(id)a6
{
  v12 = a3;
  v13 = a6;
  if (a4 < 0.0)
  {
    [BPSThrottle initWithUpstream:a2 interval:self latest:? getTimestamp:?];
  }

  v23.receiver = self;
  v23.super_class = BPSThrottle;
  v14 = [(BPSThrottle *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_upstream, a3);
    v15->_interval = a4;
    v15->_latest = a5;
    v16 = [v13 copy];
    getTimestamp = v15->_getTimestamp;
    v15->_getTimestamp = v16;

    intervalEvent = v15->_intervalEvent;
    v15->_intervalEvent = 0;

    v19 = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v15->_nextIntervalBoundary;
    v15->_nextIntervalBoundary = v19;

    startTimestamp = v15->_startTimestamp;
    v15->_startTimestamp = 0;
  }

  return v15;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSDebounce subscribe:];
  }

  v6 = [_BPSThrottleInner alloc];
  [(BPSThrottle *)self interval];
  v8 = v7;
  v9 = [(BPSThrottle *)self latest];
  v10 = [(BPSThrottle *)self getTimestamp];
  v11 = [(_BPSThrottleInner *)v6 initWithDownstream:v4 interval:v9 latest:v10 getTimestamp:v8];

  v12 = [(BPSThrottle *)self upstream];
  [v12 subscribe:v11];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSThrottle *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(BPSThrottle *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    *&v5 = 138412802;
    v35 = v5;
    while (1)
    {
      v6 = [(BPSThrottle *)self getTimestamp];
      v7 = (v6)[2](v6, v4);

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = [v7 description];
        *__y = v35;
        *&__y[4] = v26;
        v37 = 2112;
        v38 = v4;
        v39 = 2112;
        v40 = v27;
        _os_log_debug_impl(&dword_1C871B000, v8, OS_LOG_TYPE_DEBUG, "%@ - receiving: %@ at %@", __y, 0x20u);
      }

      v9 = [(BPSThrottle *)self nextIntervalBoundary];
      v10 = [MEMORY[0x1E695DF00] distantPast];
      v11 = [v9 isEqualToDate:v10];

      if (v11)
      {
        break;
      }

      v12 = [(BPSThrottle *)self nextIntervalBoundary];
      v13 = [v7 compare:v12];

      if (v13 == 1)
      {
        v14 = [(BPSThrottle *)self intervalEvent];

        if (v14)
        {
          v14 = [(BPSThrottle *)self intervalEvent];
        }

        v15 = [(BPSThrottle *)self startTimestamp];
        [v7 timeIntervalSinceDate:v15];
        v17 = v16;

        [(BPSThrottle *)self interval];
        v19 = 1.0 - modf(v17 / v18, __y);
        v20 = objc_alloc(MEMORY[0x1E695DF00]);
        [(BPSThrottle *)self interval];
        v22 = [v20 initWithTimeInterval:v7 sinceDate:(v19 * v21)];
        [(BPSThrottle *)self setNextIntervalBoundary:v22];

        [(BPSThrottle *)self setIntervalEvent:v4];
        if (v14)
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
        [(BPSThrottle *)self setIntervalEvent:v4];
      }

      v24 = [(BPSThrottle *)self upstream];
      v25 = [v24 nextEvent];

      v4 = v25;
      if (!v25)
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

    v14 = v4;
LABEL_22:
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)reset
{
  [(BPSThrottle *)self setIntervalEvent:0];
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [(BPSThrottle *)self setNextIntervalBoundary:v3];

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