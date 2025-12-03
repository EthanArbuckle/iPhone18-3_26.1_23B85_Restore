@interface _BPSDebounceInner
- (_BPSDebounceInner)initWithDownstream:(id)downstream for:(double)for getTimestamp:(id)timestamp;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSDebounceInner

- (_BPSDebounceInner)initWithDownstream:(id)downstream for:(double)for getTimestamp:(id)timestamp
{
  downstreamCopy = downstream;
  timestampCopy = timestamp;
  v19.receiver = self;
  v19.super_class = _BPSDebounceInner;
  v11 = [(_BPSDebounceInner *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, downstream);
    v12->_dueTime = for;
    lastEvent = v12->_lastEvent;
    v12->_lastEvent = 0;

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    lastArrivalTimestamp = v12->_lastArrivalTimestamp;
    v12->_lastArrivalTimestamp = distantFuture;

    v16 = [timestampCopy copy];
    getTimestamp = v12->_getTimestamp;
    v12->_getTimestamp = v16;

    v12->_lock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSDebounceInner receiveCompletion:];
  }

  downstream = [(_BPSDebounceInner *)selfCopy downstream];
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

  [v7 timeIntervalSinceDate:selfCopy->_lastArrivalTimestamp];
  if (v9 >= selfCopy->_dueTime)
  {
    v10 = selfCopy->_lastEvent;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&selfCopy->_lastArrivalTimestamp, v7);
  objc_storeStrong(&selfCopy->_lastEvent, input);
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v10)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_BPSDebounceInner receiveInput:];
    }

    downstream = [(_BPSDebounceInner *)selfCopy downstream];
    v13 = [downstream receiveInput:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSDebounceInner *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
}

- (void)receiveCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)receiveInput:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 description];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)receiveInput:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C871B000, v0, OS_LOG_TYPE_DEBUG, "deliverying: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end