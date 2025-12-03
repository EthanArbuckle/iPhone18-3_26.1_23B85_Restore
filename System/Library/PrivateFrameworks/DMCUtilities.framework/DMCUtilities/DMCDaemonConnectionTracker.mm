@interface DMCDaemonConnectionTracker
- (DMCDaemonConnectionTracker)initWithProcessName:(id)name connectionThreshold:(unint64_t)threshold requestThreshold:(unint64_t)requestThreshold;
- (void)trackConnectionFromPID:(int)d;
- (void)trackRequestFromPID:(int)d;
@end

@implementation DMCDaemonConnectionTracker

- (DMCDaemonConnectionTracker)initWithProcessName:(id)name connectionThreshold:(unint64_t)threshold requestThreshold:(unint64_t)requestThreshold
{
  nameCopy = name;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v24.receiver = self;
    v24.super_class = DMCDaemonConnectionTracker;
    v9 = [(DMCDaemonConnectionTracker *)&v24 init];
    if (v9)
    {
      v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_connection_tracker", nameCopy];
      v12 = dispatch_queue_create([nameCopy UTF8String], v10);
      queue = v9->_queue;
      v9->_queue = v12;

      v14 = objc_opt_new();
      requestCache = v9->_requestCache;
      v9->_requestCache = v14;

      v16 = objc_opt_new();
      connectionCache = v9->_connectionCache;
      v9->_connectionCache = v16;

      v18 = objc_opt_new();
      pidNameCache = v9->_pidNameCache;
      v9->_pidNameCache = v18;

      v20 = [nameCopy copy];
      clientName = v9->_clientName;
      v9->_clientName = v20;

      v9->_connectionThreshold = threshold * 3.0;
      v9->_requestThreshold = requestThreshold * 3.0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)trackConnectionFromPID:(int)d
{
  v5 = [MEMORY[0x1E695DF00] now];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke;
  block[3] = &unk_1E7ADC4C0;
  dCopy = d;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _nameForProcessWithPID:*(a1 + 48) cache:*(*(a1 + 32) + 56)];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "New connection from %{public}@(%d)", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v8 = *(a1 + 40);
  v9 = *(v6 + 40);
  v10 = v8;
  v11 = v3;
  v12 = v7;
  v13 = dispatch_time(0, 3000000000);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___scheduleCleanup_block_invoke;
  v34 = &unk_1E7ADC5F0;
  v35 = v9;
  v36 = v11;
  v37 = *&v10;
  v14 = v10;
  v15 = v11;
  v16 = v9;
  dispatch_after(v13, v12, buf);

  v17 = *(*(a1 + 32) + 64);
  v18 = *(a1 + 40);
  v19 = *(*(a1 + 32) + 40);
  v20 = v18;
  v21 = v15;
  v22 = [v19 objectForKeyedSubscript:v21];
  LODWORD(v15) = v22 == 0;

  if (v15)
  {
    v23 = objc_opt_new();
    [v19 setObject:v23 forKeyedSubscript:v21];
  }

  v24 = [v19 objectForKeyedSubscript:v21];
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ([v24 count])
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___queue_verifyThresholdAndAddDateRecord_block_invoke;
    v34 = &unk_1E7ADC5C8;
    v35 = v20;
    v36 = &v29;
    v37 = v17;
    [v24 enumerateObjectsUsingBlock:buf];
  }

  v25 = v30[3];
  [v24 addObject:v20];
  _Block_object_dispose(&v29, 8);

  if (v17 <= v25)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke_cold_1(v21, v2);
    }

    v26 = [*(*v2 + 40) objectForKeyedSubscript:v21];
    [v26 removeAllObjects];

    v27 = *(*v2 + 8);
    if (v27)
    {
      (*(v27 + 16))(v27, *(a1 + 48), v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)trackRequestFromPID:(int)d
{
  v5 = [MEMORY[0x1E695DF00] now];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke;
  block[3] = &unk_1E7ADC4C0;
  dCopy = d;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) _nameForProcessWithPID:*(a1 + 48) cache:*(*(a1 + 32) + 56)];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "New request from %{public}@(%d)", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v8 = *(a1 + 40);
  v9 = *(v6 + 48);
  v10 = v8;
  v11 = v3;
  v12 = v7;
  v13 = dispatch_time(0, 3000000000);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___scheduleCleanup_block_invoke;
  v34 = &unk_1E7ADC5F0;
  v35 = v9;
  v36 = v11;
  v37 = *&v10;
  v14 = v10;
  v15 = v11;
  v16 = v9;
  dispatch_after(v13, v12, buf);

  v17 = *(*(a1 + 32) + 72);
  v18 = *(a1 + 40);
  v19 = *(*(a1 + 32) + 48);
  v20 = v18;
  v21 = v15;
  v22 = [v19 objectForKeyedSubscript:v21];
  LODWORD(v15) = v22 == 0;

  if (v15)
  {
    v23 = objc_opt_new();
    [v19 setObject:v23 forKeyedSubscript:v21];
  }

  v24 = [v19 objectForKeyedSubscript:v21];
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  if ([v24 count])
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___queue_verifyThresholdAndAddDateRecord_block_invoke;
    v34 = &unk_1E7ADC5C8;
    v35 = v20;
    v36 = &v29;
    v37 = v17;
    [v24 enumerateObjectsUsingBlock:buf];
  }

  v25 = v30[3];
  [v24 addObject:v20];
  _Block_object_dispose(&v29, 8);

  if (v17 <= v25)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke_cold_1(v21, v2);
    }

    v26 = [*(*v2 + 48) objectForKeyedSubscript:v21];
    [v26 removeAllObjects];

    v27 = *(*v2 + 16);
    if (v27)
    {
      (*(v27 + 16))(v27, *(a1 + 48), v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __53__DMCDaemonConnectionTracker_trackConnectionFromPID___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  [*(*a2 + 32) UTF8String];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s has established too many connections to %s in the last %.1f second.", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void __50__DMCDaemonConnectionTracker_trackRequestFromPID___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  [*(*a2 + 32) UTF8String];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1B1630000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s has made too many requests to %s in the last %.1f second.", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

@end