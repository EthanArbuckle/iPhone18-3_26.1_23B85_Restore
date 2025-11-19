@interface _BPSThrottleInner
- (_BPSThrottleInner)initWithDownstream:(id)a3 interval:(double)a4 latest:(BOOL)a5 getTimestamp:(id)a6;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSThrottleInner

- (_BPSThrottleInner)initWithDownstream:(id)a3 interval:(double)a4 latest:(BOOL)a5 getTimestamp:(id)a6
{
  v11 = a3;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _BPSThrottleInner;
  v13 = [(_BPSThrottleInner *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_downstream, a3);
    v14->_interval = a4;
    v14->_latest = a5;
    intervalEvent = v14->_intervalEvent;
    v14->_intervalEvent = 0;

    v16 = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v14->_nextIntervalBoundary;
    v14->_nextIntervalBoundary = v16;

    startTimestamp = v14->_startTimestamp;
    v14->_startTimestamp = 0;

    v19 = [v12 copy];
    getTimestamp = v14->_getTimestamp;
    v14->_getTimestamp = v19;

    v14->_lock._os_unfair_lock_opaque = 0;
  }

  return v14;
}

- (void)cancel
{
  v2 = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_BPSTimerInner cancel];
  }

  v4 = [(_BPSThrottleInner *)v2 downstream];
  [v4 cancel];
}

- (void)receiveCompletion:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSTimerInner receiveCompletion:];
  }

  v7 = [(_BPSThrottleInner *)v4 downstream];
  [v7 receiveCompletion:v5];
}

- (int64_t)receiveInput:(id)a3
{
  v5 = a3;
  v6 = self;
  os_unfair_lock_lock(&v6->_lock);
  v7 = (*(v6->_getTimestamp + 2))();
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSDebounceInner *)v5 receiveInput:v7];
  }

  nextIntervalBoundary = v6->_nextIntervalBoundary;
  v10 = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(nextIntervalBoundary) = [(NSDate *)nextIntervalBoundary isEqualToDate:v10];

  if (!nextIntervalBoundary)
  {
    if ([v7 compare:v6->_nextIntervalBoundary] == 1)
    {
      intervalEvent = v6->_intervalEvent;
      if (intervalEvent)
      {
        v16 = intervalEvent;
      }

      [v7 timeIntervalSinceDate:v6->_startTimestamp];
      v18 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v7 sinceDate:{((1.0 - modf(v17 / v6->_interval, &__y)) * v6->_interval)}];
      v19 = v6->_nextIntervalBoundary;
      v6->_nextIntervalBoundary = v18;

      objc_storeStrong(&v6->_intervalEvent, a3);
      os_unfair_lock_unlock(&v6->_lock);
      if (intervalEvent)
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [_BPSThrottleInner receiveInput:];
        }

        v21 = [(_BPSThrottleInner *)v6 downstream];
        v15 = [v21 receiveInput:intervalEvent];

        goto LABEL_14;
      }
    }

    else
    {
      if (v6->_latest || !v6->_intervalEvent)
      {
        objc_storeStrong(&v6->_intervalEvent, a3);
      }

      os_unfair_lock_unlock(&v6->_lock);
    }

    v15 = 0;
    goto LABEL_20;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_BPSThrottleInner receiveInput:];
  }

  objc_storeStrong(&v6->_startTimestamp, v7);
  v12 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v7 sinceDate:v6->_interval];
  v13 = v6->_nextIntervalBoundary;
  v6->_nextIntervalBoundary = v12;

  os_unfair_lock_unlock(&v6->_lock);
  intervalEvent = [(_BPSThrottleInner *)v6 downstream];
  v15 = [intervalEvent receiveInput:v5];
LABEL_14:

LABEL_20:
  return v15;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSThrottleInner *)self downstream];
  [v5 receiveSubscription:v4];
}

- (void)receiveInput:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C871B000, v0, OS_LOG_TYPE_DEBUG, "delivering: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)receiveInput:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C871B000, v0, OS_LOG_TYPE_DEBUG, "delivering 1st: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end