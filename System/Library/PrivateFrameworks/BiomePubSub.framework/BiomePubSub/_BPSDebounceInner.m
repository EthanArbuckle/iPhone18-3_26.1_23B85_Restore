@interface _BPSDebounceInner
- (_BPSDebounceInner)initWithDownstream:(id)a3 for:(double)a4 getTimestamp:(id)a5;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSDebounceInner

- (_BPSDebounceInner)initWithDownstream:(id)a3 for:(double)a4 getTimestamp:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _BPSDebounceInner;
  v11 = [(_BPSDebounceInner *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, a3);
    v12->_dueTime = a4;
    lastEvent = v12->_lastEvent;
    v12->_lastEvent = 0;

    v14 = [MEMORY[0x1E695DF00] distantFuture];
    lastArrivalTimestamp = v12->_lastArrivalTimestamp;
    v12->_lastArrivalTimestamp = v14;

    v16 = [v10 copy];
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

- (void)receiveCompletion:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSDebounceInner receiveCompletion:];
  }

  v7 = [(_BPSDebounceInner *)v4 downstream];
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

  [v7 timeIntervalSinceDate:v6->_lastArrivalTimestamp];
  if (v9 >= v6->_dueTime)
  {
    v10 = v6->_lastEvent;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v6->_lastArrivalTimestamp, v7);
  objc_storeStrong(&v6->_lastEvent, a3);
  os_unfair_lock_unlock(&v6->_lock);
  if (v10)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_BPSDebounceInner receiveInput:];
    }

    v12 = [(_BPSDebounceInner *)v6 downstream];
    v13 = [v12 receiveInput:v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSDebounceInner *)self downstream];
  [v5 receiveSubscription:v4];
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