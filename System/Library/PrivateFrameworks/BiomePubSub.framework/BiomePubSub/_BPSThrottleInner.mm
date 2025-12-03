@interface _BPSThrottleInner
- (_BPSThrottleInner)initWithDownstream:(id)downstream interval:(double)interval latest:(BOOL)latest getTimestamp:(id)timestamp;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSThrottleInner

- (_BPSThrottleInner)initWithDownstream:(id)downstream interval:(double)interval latest:(BOOL)latest getTimestamp:(id)timestamp
{
  downstreamCopy = downstream;
  timestampCopy = timestamp;
  v22.receiver = self;
  v22.super_class = _BPSThrottleInner;
  v13 = [(_BPSThrottleInner *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_downstream, downstream);
    v14->_interval = interval;
    v14->_latest = latest;
    intervalEvent = v14->_intervalEvent;
    v14->_intervalEvent = 0;

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v14->_nextIntervalBoundary;
    v14->_nextIntervalBoundary = distantPast;

    startTimestamp = v14->_startTimestamp;
    v14->_startTimestamp = 0;

    v19 = [timestampCopy copy];
    getTimestamp = v14->_getTimestamp;
    v14->_getTimestamp = v19;

    v14->_lock._os_unfair_lock_opaque = 0;
  }

  return v14;
}

- (void)cancel
{
  selfCopy = self;
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_BPSTimerInner cancel];
  }

  downstream = [(_BPSThrottleInner *)selfCopy downstream];
  [downstream cancel];
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSTimerInner receiveCompletion:];
  }

  downstream = [(_BPSThrottleInner *)selfCopy downstream];
  [downstream receiveCompletion:completionCopy];
}

- (int64_t)receiveInput:(id)input
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  v7 = (*(selfCopy->_getTimestamp + 2))();
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSDebounceInner *)inputCopy receiveInput:v7];
  }

  nextIntervalBoundary = selfCopy->_nextIntervalBoundary;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(nextIntervalBoundary) = [(NSDate *)nextIntervalBoundary isEqualToDate:distantPast];

  if (!nextIntervalBoundary)
  {
    if ([v7 compare:selfCopy->_nextIntervalBoundary] == 1)
    {
      intervalEvent = selfCopy->_intervalEvent;
      if (intervalEvent)
      {
        v16 = intervalEvent;
      }

      [v7 timeIntervalSinceDate:selfCopy->_startTimestamp];
      v18 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v7 sinceDate:{((1.0 - modf(v17 / selfCopy->_interval, &__y)) * selfCopy->_interval)}];
      v19 = selfCopy->_nextIntervalBoundary;
      selfCopy->_nextIntervalBoundary = v18;

      objc_storeStrong(&selfCopy->_intervalEvent, input);
      os_unfair_lock_unlock(&selfCopy->_lock);
      if (intervalEvent)
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [_BPSThrottleInner receiveInput:];
        }

        downstream = [(_BPSThrottleInner *)selfCopy downstream];
        v15 = [downstream receiveInput:intervalEvent];

        goto LABEL_14;
      }
    }

    else
    {
      if (selfCopy->_latest || !selfCopy->_intervalEvent)
      {
        objc_storeStrong(&selfCopy->_intervalEvent, input);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
    }

    v15 = 0;
    goto LABEL_20;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_BPSThrottleInner receiveInput:];
  }

  objc_storeStrong(&selfCopy->_startTimestamp, v7);
  v12 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v7 sinceDate:selfCopy->_interval];
  v13 = selfCopy->_nextIntervalBoundary;
  selfCopy->_nextIntervalBoundary = v12;

  os_unfair_lock_unlock(&selfCopy->_lock);
  intervalEvent = [(_BPSThrottleInner *)selfCopy downstream];
  v15 = [intervalEvent receiveInput:inputCopy];
LABEL_14:

LABEL_20:
  return v15;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSThrottleInner *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
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