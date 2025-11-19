@interface _BPSTimerInner
- (_BPSTimerInner)initWithDownstream:(id)a3 interval:(double)a4 getTimestamp:(id)a5;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation _BPSTimerInner

- (_BPSTimerInner)initWithDownstream:(id)a3 interval:(double)a4 getTimestamp:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _BPSTimerInner;
  v11 = [(_BPSTimerInner *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_downstream, a3);
    v12->_interval = a4;
    v13 = [MEMORY[0x1E695DF00] distantPast];
    nextIntervalBoundary = v12->_nextIntervalBoundary;
    v12->_nextIntervalBoundary = v13;

    startTimestamp = v12->_startTimestamp;
    v12->_startTimestamp = 0;

    v16 = [v10 copy];
    getTimestamp = v12->_getTimestamp;
    v12->_getTimestamp = v16;

    v12->_lock._os_unfair_lock_opaque = 0;
  }

  return v12;
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

  v7 = [(_BPSTimerInner *)v4 downstream];
  [v7 receiveCompletion:v5];
}

- (int64_t)receiveInput:(id)a3
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  v6 = (*(v5->_getTimestamp + 2))();
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(_BPSDebounceInner *)v4 receiveInput:v6];
  }

  p_nextIntervalBoundary = &v5->_nextIntervalBoundary;
  nextIntervalBoundary = v5->_nextIntervalBoundary;
  v10 = [MEMORY[0x1E695DF00] distantPast];
  LODWORD(nextIntervalBoundary) = [(NSDate *)nextIntervalBoundary isEqualToDate:v10];

  if (nextIntervalBoundary)
  {
    objc_storeStrong(&v5->_startTimestamp, v6);
    v11 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v6 sinceDate:v5->_interval];
    v12 = v5->_nextIntervalBoundary;
    v5->_nextIntervalBoundary = v11;
  }

  else if ([v6 compare:*p_nextIntervalBoundary] == 1 && objc_msgSend(v6, "compare:", *p_nextIntervalBoundary) == 1)
  {
    do
    {
      os_unfair_lock_unlock(&v5->_lock);
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(_BPSTimerInner *)v19 receiveInput:v20, v13];
      }

      v14 = [(_BPSTimerInner *)v5 downstream];
      [v14 receiveInput:v5->_nextIntervalBoundary];

      os_unfair_lock_lock(&v5->_lock);
      v15 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v5->_nextIntervalBoundary sinceDate:v5->_interval];
      v16 = v5->_nextIntervalBoundary;
      v5->_nextIntervalBoundary = v15;
    }

    while ([v6 compare:v5->_nextIntervalBoundary] == 1);
  }

  os_unfair_lock_unlock(&v5->_lock);

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = [(_BPSTimerInner *)self downstream];
  [v5 receiveSubscription:v4];
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