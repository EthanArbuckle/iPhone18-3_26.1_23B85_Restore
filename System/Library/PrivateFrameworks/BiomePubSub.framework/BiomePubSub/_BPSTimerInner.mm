@interface _BPSTimerInner
- (_BPSTimerInner)initWithDownstream:(id)downstream interval:(double)interval getTimestamp:(id)timestamp;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSTimerInner

- (_BPSTimerInner)initWithDownstream:(id)downstream interval:(double)interval getTimestamp:(id)timestamp
{
  downstreamCopy = downstream;
  timestampCopy = timestamp;
  v19.receiver = self;
  v19.super_class = _BPSTimerInner;
  v11 = [(_BPSTimerInner *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, downstream);
    v12->_interval = interval;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v12->_nextIntervalBoundary;
    v12->_nextIntervalBoundary = distantPast;

    startTimestamp = v12->_startTimestamp;
    v12->_startTimestamp = 0;

    v16 = [timestampCopy copy];
    getTimestamp = v12->_getTimestamp;
    v12->_getTimestamp = v16;

    v12->_lock._os_unfair_lock_opaque = 0;
  }

  return v12;
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

  downstream = [(_BPSTimerInner *)selfCopy downstream];
  [downstream receiveCompletion:completionCopy];
}

- (int64_t)receiveInput:(id)input
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  v6 = (*(selfCopy->_getTimestamp + 2))();
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSDebounceInner *)inputCopy receiveInput:v6];
  }

  p_nextIntervalBoundary = &selfCopy->_nextIntervalBoundary;
  nextIntervalBoundary = selfCopy->_nextIntervalBoundary;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(nextIntervalBoundary) = [(NSDate *)nextIntervalBoundary isEqualToDate:distantPast];

  if (nextIntervalBoundary)
  {
    objc_storeStrong(&selfCopy->_startTimestamp, v6);
    v11 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v6 sinceDate:selfCopy->_interval];
    v12 = selfCopy->_nextIntervalBoundary;
    selfCopy->_nextIntervalBoundary = v11;
  }

  else if ([v6 compare:*p_nextIntervalBoundary] == 1 && objc_msgSend(v6, "compare:", *p_nextIntervalBoundary) == 1)
  {
    do
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(_BPSTimerInner *)v19 receiveInput:v20, v13];
      }

      downstream = [(_BPSTimerInner *)selfCopy downstream];
      [downstream receiveInput:selfCopy->_nextIntervalBoundary];

      os_unfair_lock_lock(&selfCopy->_lock);
      v15 = [MEMORY[0x1E695DF00] dateWithTimeInterval:selfCopy->_nextIntervalBoundary sinceDate:selfCopy->_interval];
      v16 = selfCopy->_nextIntervalBoundary;
      selfCopy->_nextIntervalBoundary = v15;
    }

    while ([v6 compare:selfCopy->_nextIntervalBoundary] == 1);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSTimerInner *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)receiveCompletion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)receiveInput:(void *)a3 .cold.2(uint8_t *a1, id *a2, void *a3, NSObject *a4)
{
  v7 = [*a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1C871B000, a4, OS_LOG_TYPE_DEBUG, "delivering: %@", a1, 0xCu);
}

@end