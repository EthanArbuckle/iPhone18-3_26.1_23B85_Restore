@interface FCOperationThrottler
- (BOOL)suspended;
- (FCOperationThrottler)init;
- (FCOperationThrottler)initWithDelegate:(id)a3;
- (FCOperationThrottler)initWithDelegate:(id)a3 updateQueue:(id)a4;
- (void)addCompletionForCurrentOperation:(id)a3;
- (void)dealloc;
- (void)setSuspended:(BOOL)a3;
- (void)tickleWithCompletion:(id)a3;
@end

@implementation FCOperationThrottler

- (BOOL)suspended
{
  v2 = self;
  objc_sync_enter(v2);
  suspended = v2->_suspended;
  objc_sync_exit(v2);

  return suspended;
}

- (FCOperationThrottler)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCOperationThrottler init]";
    v10 = 2080;
    v11 = "FCOperationThrottler.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCOperationThrottler)initWithDelegate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate != nil"];
    *buf = 136315906;
    v12 = "[FCOperationThrottler initWithDelegate:]";
    v13 = 2080;
    v14 = "FCOperationThrottler.m";
    v15 = 1024;
    v16 = 31;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create(0, v5);
  v7 = [(FCOperationThrottler *)self initWithDelegate:v4 updateQueue:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCOperationThrottler)initWithDelegate:(id)a3 updateQueue:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate != nil"];
    *location = 136315906;
    *&location[4] = "[FCOperationThrottler initWithDelegate:updateQueue:]";
    v33 = 2080;
    v34 = "FCOperationThrottler.m";
    v35 = 1024;
    v36 = 38;
    v37 = 2114;
    v38 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);
  }

  v31.receiver = self;
  v31.super_class = FCOperationThrottler;
  v8 = [(FCOperationThrottler *)&v31 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      objc_initWeak(location, v8);
      objc_initWeak(&from, v6);
      v10 = dispatch_group_create();
      objc_storeStrong(&v9->_handlerSynchronizationGroup, v10);
      objc_storeStrong(&v9->_serialQueue, a4);
      v11 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v7);
      dispatchSource = v9->_dispatchSource;
      v9->_dispatchSource = v11;
      v13 = v11;

      objc_initWeak(&v29, v13);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke;
      handler[3] = &unk_1E7C480F8;
      v14 = v10;
      v24 = v14;
      objc_copyWeak(&v26, &from);
      objc_copyWeak(&v27, location);
      objc_copyWeak(&v28, &v29);
      v15 = v7;
      v25 = v15;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_group_enter(v14);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_5;
      v20[3] = &unk_1E7C36C58;
      v21 = v15;
      v22 = v14;
      v16 = v14;
      dispatch_source_set_cancel_handler(v13, v20);
      dispatch_resume(v13);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&v26);

      objc_destroyWeak(&v29);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {

      v9 = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

void __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_2;
  v3[3] = &unk_1E7C480D0;
  objc_copyWeak(&v5, (a1 + 56));
  objc_copyWeak(&v6, (a1 + 64));
  v4 = *(a1 + 40);
  FCPerformIfNonNil(WeakRetained, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_3;
  v6[3] = &unk_1E7C480A8;
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[4];
  FCPerformIfNonNil(WeakRetained, v6);

  objc_destroyWeak(&v9);
}

void __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) operationThrottlerPerformOperation:v3];
  }

  else if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    dispatch_suspend(WeakRetained);
    dispatch_suspend(*(a1 + 40));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_4;
    v8[3] = &unk_1E7C36C58;
    v9 = WeakRetained;
    v6 = *(a1 + 32);
    v10 = *(a1 + 40);
    v7 = WeakRetained;
    [v6 operationThrottler:v3 performAsyncOperationWithCompletion:v8];
  }
}

void __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_4(uint64_t a1)
{
  dispatch_resume(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_resume(v2);
}

void __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FCOperationThrottler_initWithDelegate_updateQueue___block_invoke_6;
  block[3] = &unk_1E7C36EA0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dealloc
{
  dispatch_source_cancel(self->_dispatchSource);
  v3.receiver = self;
  v3.super_class = FCOperationThrottler;
  [(FCOperationThrottler *)&v3 dealloc];
}

- (void)tickleWithCompletion:(id)a3
{
  if (a3)
  {
    dispatch_group_notify(self->_handlerSynchronizationGroup, self->_serialQueue, a3);
  }

  dispatchSource = self->_dispatchSource;

  dispatch_source_merge_data(dispatchSource, 1uLL);
}

- (void)addCompletionForCurrentOperation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v8 = "[FCOperationThrottler addCompletionForCurrentOperation:]";
    v9 = 2080;
    v10 = "FCOperationThrottler.m";
    v11 = 1024;
    v12 = 135;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  dispatch_async(self->_serialQueue, v4);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_suspended != v3)
  {
    obj->_suspended = v3;
    dispatchSource = obj->_dispatchSource;
    if (v3)
    {
      dispatch_suspend(dispatchSource);
    }

    else
    {
      dispatch_resume(dispatchSource);
    }

    v4 = obj;
  }

  objc_sync_exit(v4);
}

@end