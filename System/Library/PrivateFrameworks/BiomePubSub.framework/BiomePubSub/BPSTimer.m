@interface BPSTimer
- (BOOL)completed;
- (BPSTimer)initWithUpstream:(id)a3 interval:(double)a4 getTimestamp:(id)a5;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)nextEvent;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSTimer

- (BPSTimer)initWithUpstream:(id)a3 interval:(double)a4 getTimestamp:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (a4 <= 0.0)
  {
    [BPSTimer initWithUpstream:a2 interval:self getTimestamp:?];
  }

  v21.receiver = self;
  v21.super_class = BPSTimer;
  v12 = [(BPSTimer *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, a3);
    v13->_interval = a4;
    v14 = [v11 copy];
    getTimestamp = v13->_getTimestamp;
    v13->_getTimestamp = v14;

    v16 = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v13->_nextIntervalBoundary;
    v13->_nextIntervalBoundary = v16;

    v18 = objc_opt_new();
    pendingTimers = v13->_pendingTimers;
    v13->_pendingTimers = v18;
  }

  return v13;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSDebounce subscribe:];
  }

  v6 = [_BPSTimerInner alloc];
  [(BPSTimer *)self interval];
  v8 = v7;
  v9 = [(BPSTimer *)self getTimestamp];
  v10 = [(_BPSTimerInner *)v6 initWithDownstream:v4 interval:v9 getTimestamp:v8];

  v11 = [(BPSTimer *)self upstream];
  [v11 subscribe:v10];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSTimer *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(BPSTimer *)self pendingTimers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BPSTimer *)self pendingTimers];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [(BPSTimer *)self pendingTimers];
    [v7 removeObjectAtIndex:0];

    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BPSTimer nextEvent];
    }

    goto LABEL_4;
  }

  v11 = [(BPSTimer *)self upstream];
  v8 = [v11 nextEvent];

  if (!v8)
  {
    v6 = 0;
    goto LABEL_5;
  }

  *&v12 = 138412802;
  v42 = v12;
  while (1)
  {
    v13 = [(BPSTimer *)self getTimestamp];
    v14 = (v13)[2](v13, v8);

    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v37 = objc_opt_class();
      v38 = [v14 description];
      *buf = v42;
      v44 = v37;
      v45 = 2112;
      v46 = v8;
      v47 = 2112;
      v48 = v38;
      _os_log_debug_impl(&dword_1C871B000, v15, OS_LOG_TYPE_DEBUG, "%@ - receiving: %@ at %@", buf, 0x20u);
    }

    v16 = [(BPSTimer *)self nextIntervalBoundary];
    v17 = [MEMORY[0x1E695DF00] distantPast];
    v18 = [v16 isEqualToDate:v17];

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
      v40 = [(BPSTimer *)self nextIntervalBoundary];
      *buf = 138412546;
      v44 = v39;
      v45 = 2112;
      v46 = v40;
      _os_log_debug_impl(&dword_1C871B000, v21, OS_LOG_TYPE_DEBUG, "%@ - started with nextIntervalBoundary: %@", buf, 0x16u);
    }

LABEL_25:
    v36 = [(BPSTimer *)self upstream];
    v6 = [v36 nextEvent];

    v8 = v6;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v22 = [(BPSTimer *)self nextIntervalBoundary];
  v23 = [v14 compare:v22];

  if (v23 != 1)
  {
    goto LABEL_25;
  }

  v6 = 0;
  do
  {
    if (v6)
    {
      v24 = [(BPSTimer *)self pendingTimers];
      v25 = [(BPSTimer *)self nextIntervalBoundary];
      [v24 addObject:v25];
    }

    else
    {
      v6 = [(BPSTimer *)self nextIntervalBoundary];
    }

    v26 = MEMORY[0x1E695DF00];
    [(BPSTimer *)self interval];
    v28 = v27;
    v29 = [(BPSTimer *)self nextIntervalBoundary];
    v30 = [v26 dateWithTimeInterval:v29 sinceDate:v28];
    [(BPSTimer *)self setNextIntervalBoundary:v30];

    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v35 = [(BPSTimer *)self nextIntervalBoundary];
      *buf = 138412546;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      _os_log_debug_impl(&dword_1C871B000, v31, OS_LOG_TYPE_DEBUG, "%@ - set new nextIntervalBoundary: %@", buf, 0x16u);
    }

    v32 = [(BPSTimer *)self nextIntervalBoundary];
    v33 = [v14 compare:v32];
  }

  while (v33 == 1);
  if (!v6)
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

  return v6;
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF00] distantPast];
  [(BPSTimer *)self setNextIntervalBoundary:v3];

  v4 = objc_opt_new();
  [(BPSTimer *)self setPendingTimers:v4];

  v5.receiver = self;
  v5.super_class = BPSTimer;
  [(BPSPublisher *)&v5 reset];
}

- (BOOL)completed
{
  v3 = [(BPSTimer *)self pendingTimers];
  v4 = [v3 count];

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