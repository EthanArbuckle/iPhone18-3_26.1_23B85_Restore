@interface FCBoostableOperationThrottler
- (BOOL)suspended;
- (FCBoostableOperationThrottler)init;
- (FCBoostableOperationThrottler)initWithDelegate:(id)delegate;
- (FCBoostableOperationThrottler)initWithDelegate:(id)delegate queue:(id)queue;
- (FCBoostableOperationThrottlerDelegate)delegate;
- (unint64_t)allUnhandledMergedData;
- (void)boostToQualityOfService:(int64_t)service;
- (void)setSuspended:(BOOL)suspended;
- (void)tickleWithQualityOfService:(int64_t)service data:(unint64_t)data completion:(id)completion;
@end

@implementation FCBoostableOperationThrottler

- (FCBoostableOperationThrottlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FCBoostableOperationThrottler)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCBoostableOperationThrottler init]";
    v10 = 2080;
    v11 = "FCOperationThrottler.m";
    v12 = 1024;
    v13 = 272;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCBoostableOperationThrottler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCBoostableOperationThrottler)initWithDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate != nil"];
    *buf = 136315906;
    v12 = "[FCBoostableOperationThrottler initWithDelegate:]";
    v13 = 2080;
    v14 = "FCOperationThrottler.m";
    v15 = 1024;
    v16 = 277;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("FCBoostableOperationThrottler.serial", v5);

  v7 = [(FCBoostableOperationThrottler *)self initWithDelegate:delegateCopy queue:v6];
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCBoostableOperationThrottler)initWithDelegate:(id)delegate queue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate != nil"];
    *buf = 136315906;
    v16 = "[FCBoostableOperationThrottler initWithDelegate:queue:]";
    v17 = 2080;
    v18 = "FCOperationThrottler.m";
    v19 = 1024;
    v20 = 285;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (queueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue != nil"];
    *buf = 136315906;
    v16 = "[FCBoostableOperationThrottler initWithDelegate:queue:]";
    v17 = 2080;
    v18 = "FCOperationThrottler.m";
    v19 = 1024;
    v20 = 286;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FCBoostableOperationThrottler;
  v8 = [(FCBoostableOperationThrottler *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v9->_workPendingLock._os_unfair_lock_opaque = 0;
    v9->_workPendingQualityOfService = -1;
    objc_storeStrong(&v9->_serialWorkQueue, queue);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)tickleWithQualityOfService:(int64_t)service data:(unint64_t)data completion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock_with_options();
  if ([(FCBoostableOperationThrottler *)self workPending])
  {
    [(FCBoostableOperationThrottler *)self setWorkPendingQualityOfService:FCHigherQualityOfService([(FCBoostableOperationThrottler *)self workPendingQualityOfService], service)];
    [(FCBoostableOperationThrottler *)self setWorkPendingMergedData:[(FCBoostableOperationThrottler *)self workPendingMergedData]| data];
    os_unfair_lock_unlock(&self->_workPendingLock);
  }

  else
  {
    [(FCBoostableOperationThrottler *)self setWorkPending:1];
    [(FCBoostableOperationThrottler *)self setWorkPendingQualityOfService:FCHigherQualityOfService([(FCBoostableOperationThrottler *)self workPendingQualityOfService], service)];
    [(FCBoostableOperationThrottler *)self setWorkPendingMergedData:[(FCBoostableOperationThrottler *)self workPendingMergedData]| data];
    os_unfair_lock_unlock(&self->_workPendingLock);
    delegate = [(FCBoostableOperationThrottler *)self delegate];
    objc_initWeak(&location, delegate);

    serialWorkQueue = [(FCBoostableOperationThrottler *)self serialWorkQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke;
    v14[3] = &unk_1E7C48148;
    v14[4] = self;
    objc_copyWeak(&v15, &location);
    FCDispatchAsyncWithQualityOfService(serialWorkQueue, service, v14);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  serialWorkQueue2 = [(FCBoostableOperationThrottler *)self serialWorkQueue];
  v12 = serialWorkQueue2;
  if (completionCopy)
  {
    v13 = completionCopy;
  }

  else
  {
    v13 = &__block_literal_global_191;
  }

  FCDispatchAsyncWithQualityOfService(serialWorkQueue2, service, v13);
}

void __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(a1 + 32) setWorkPending:0];
  v3 = [*(a1 + 32) workPendingQualityOfService];
  v7[3] = v3;
  [*(a1 + 32) setWorkPendingQualityOfService:-1];
  [*(a1 + 32) setMergedData:{objc_msgSend(*(a1 + 32), "workPendingMergedData")}];
  [*(a1 + 32) setWorkPendingMergedData:0];
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_2;
  v5[3] = &unk_1E7C48120;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  FCPerformIfNonNil(WeakRetained, v5);

  _Block_object_dispose(&v6, 8);
}

void __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_3;
  aBlock[3] = &unk_1E7C36EA0;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) serialWorkQueue];
      dispatch_suspend(v5);

      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 40) + 8) + 24);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_4;
      v15[3] = &unk_1E7C37778;
      v8 = v4;
      v15[4] = *(a1 + 32);
      v16 = v8;
      [v3 operationThrottler:v6 performAsyncOperationWithQualityOfService:v7 completion:v15];
      v9 = v16;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      v10 = [*(a1 + 32) serialWorkQueue];
      dispatch_suspend(v10);

      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_5;
      v13[3] = &unk_1E7C37778;
      v12 = v4;
      v13[4] = *(a1 + 32);
      v14 = v12;
      [v3 operationThrottler:v11 performAsyncOperationWithCompletion:v13];
      v9 = v14;
    }

    goto LABEL_8;
  }

  [v3 operationThrottlerPerformOperation:*(a1 + 32)];
  v4[2](v4);
LABEL_8:
}

void __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(a1 + 32) setMergedData:0];
  v3 = (*(a1 + 32) + 12);

  os_unfair_lock_unlock(v3);
}

void __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) serialWorkQueue];
  dispatch_resume(v2);
}

void __76__FCBoostableOperationThrottler_tickleWithQualityOfService_data_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) serialWorkQueue];
  dispatch_resume(v2);
}

- (void)boostToQualityOfService:(int64_t)service
{
  serialWorkQueue = [(FCBoostableOperationThrottler *)self serialWorkQueue];
  FCDispatchAsyncWithQualityOfService(serialWorkQueue, service, &__block_literal_global_130_0);
}

- (unint64_t)allUnhandledMergedData
{
  os_unfair_lock_lock_with_options();
  workPendingMergedData = [(FCBoostableOperationThrottler *)self workPendingMergedData];
  mergedData = [(FCBoostableOperationThrottler *)self mergedData];
  os_unfair_lock_unlock(&self->_workPendingLock);
  return mergedData | workPendingMergedData;
}

- (BOOL)suspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  objc_sync_exit(selfCopy);

  return suspended;
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_suspended != suspendedCopy)
  {
    obj->_suspended = suspendedCopy;
    [(FCBoostableOperationThrottler *)obj serialWorkQueue];
    if (suspendedCopy)
      v5 = {;
      dispatch_suspend(v5);
    }

    else
      v5 = {;
      dispatch_resume(v5);
    }

    v4 = obj;
  }

  objc_sync_exit(v4);
}

@end