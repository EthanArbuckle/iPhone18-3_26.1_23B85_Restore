@interface _SYMultiSuspendableQueue
- (NSString)name;
- (PBCodable)stateForLogging;
- (_SYMultiSuspendableQueue)initWithName:(id)a3 qosClass:(unsigned int)a4 serial:(BOOL)a5 target:(id)a6;
- (void)dealloc;
- (void)resume;
- (void)suspend;
@end

@implementation _SYMultiSuspendableQueue

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  atomic_fetch_or(&self->_resumeCount, 0);
  [v3 setResumeCount:?];
  label = dispatch_queue_get_label(self->_queue);
  if (label)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:label];
    [v3 setLabel:v5];
  }

  v6 = dispatch_queue_get_label(self->_targetQueue);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    [v3 setTarget:v7];
  }

  return v3;
}

- (_SYMultiSuspendableQueue)initWithName:(id)a3 qosClass:(unsigned int)a4 serial:(BOOL)a5 target:(id)a6
{
  v10 = a3;
  v11 = a6;
  v31.receiver = self;
  v31.super_class = _SYMultiSuspendableQueue;
  v12 = [(_SYMultiSuspendableQueue *)&v31 init];
  if (v12)
  {
    if (a5)
    {
      v13 = 0;
    }

    else
    {
      v13 = MEMORY[0x1E69E96A8];
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = v14;
    if (a4)
    {
      v16 = dispatch_queue_attr_make_with_qos_class(v14, a4, 0);

      v15 = v16;
    }

    v17 = dispatch_queue_create_with_target_V2([v10 UTF8String], v15, v11);
    v18 = *(v12 + 1);
    *(v12 + 1) = v17;

    *(v12 + 2) = v11;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s.%p", objc_msgSend(v10, "UTF8String"), v12];
    v20 = *(v12 + 5);
    *(v12 + 5) = v19;

    atomic_store(1u, v12 + 8);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v21 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
    {
      [_SYMultiSuspendableQueue initWithName:v12 + 8 qosClass:v21 serial:? target:?];
    }

    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v23 = *(v12 + 6);
    *(v12 + 6) = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v25 = *(v12 + 7);
    *(v12 + 7) = v24;

    objc_initWeak(&location, v12);
    v26 = dispatch_get_global_queue(0, 0);
    objc_copyWeak(&v29, &location);
    *(v12 + 3) = os_state_add_handler();

    v27 = v12;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1DF835000, a2, 0x90u, "Queue %{public}@ deallocated while suspended", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (NSString)name
{
  v2 = MEMORY[0x1E696AEC0];
  label = dispatch_queue_get_label(self->_queue);

  return [v2 stringWithUTF8String:label];
}

- (void)suspend
{
  v15 = *MEMORY[0x1E69E9840];
  if (atomic_fetch_add(&self->_resumeCount, 0xFFFFFFFF) == 1)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      logDescriptor = self->_logDescriptor;
      v11 = 138543362;
      v12 = logDescriptor;
      _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Suspending %{public}@", &v11, 0xCu);
    }

    dispatch_suspend(self->_queue);
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    v6 = self->_logDescriptor;
    v7 = atomic_load(&self->_resumeCount);
    v11 = 138543618;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_INFO, "%{public}@ resume count: %d", &v11, 0x12u);
  }

  v8 = [MEMORY[0x1E696AF00] callStackSymbols];
  v9 = self;
  objc_sync_enter(v9);
  [(NSMutableArray *)v9->_latestSuspendBacktraces addObject:v8];
  if ([(NSMutableArray *)v9->_latestSuspendBacktraces count]>= 4)
  {
    [(NSMutableArray *)v9->_latestSuspendBacktraces removeObjectAtIndex:0];
  }

  objc_sync_exit(v9);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DF835000, a2, 0x90u, "Over-resume detected for queue %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithName:(os_log_t)log qosClass:serial:target:.cold.2(uint64_t *a1, unsigned int *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = atomic_load(a2);
  v6 = 138543618;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&dword_1DF835000, log, OS_LOG_TYPE_DEBUG, "%{public}@ resume count: %d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end