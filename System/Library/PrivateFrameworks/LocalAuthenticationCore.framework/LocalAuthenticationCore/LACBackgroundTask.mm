@interface LACBackgroundTask
- (LACBackgroundTask)initWithIdentifier:(id)identifier worker:(id)worker;
- (LACBackgroundTaskDelegate)delegate;
- (id)description;
- (id)runSynchronouslyWithTimeout:(double)timeout;
- (void)_queuedCompleteTaskWithResult:(id)result;
- (void)_queuedRunInReplyQueue:(id)queue;
- (void)_queuedRunWithTimeout:(double)timeout replyQueue:(id)queue completion:(id)completion;
- (void)_queuedStartWorkerIfNeeded;
- (void)_queuedStartWorkerWatchdogWithTimeout:(double)timeout;
- (void)_queuedStopWorkerWatchdog;
- (void)dealloc;
- (void)runWithTimeout:(double)timeout queue:(id)queue completion:(id)completion;
@end

@implementation LACBackgroundTask

void __47__LACBackgroundTask__queuedStartWorkerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__LACBackgroundTask__queuedStartWorkerIfNeeded__block_invoke_2;
    v5[3] = &unk_1E7A95F40;
    objc_copyWeak(&v6, (a1 + 32));
    (*(v4 + 16))(v4, v5);
    objc_destroyWeak(&v6);
  }
}

- (void)_queuedStopWorkerWatchdog
{
  dispatch_assert_queue_V2(self->_innerQueue);
  watchdog = self->_watchdog;
  if (watchdog)
  {
    [(LACTimer *)watchdog cancel];
  }

  v4 = objc_alloc_init(LACTimer);
  v5 = self->_watchdog;
  self->_watchdog = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier: %@", self->_identifier];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v6 componentsJoinedByString:@" "];;
  v8 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v7];;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_queuedStartWorkerIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@ ignoring run request because is already running", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __47__LACBackgroundTask__queuedStartWorkerIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__LACBackgroundTask__queuedStartWorkerIfNeeded__block_invoke_3;
    v7[3] = &unk_1E7A956E0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)dealloc
{
  v3 = LACLogTask();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(LACSharedModeDataSourceFTRCAdapter *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = LACBackgroundTask;
  [(LACBackgroundTask *)&v4 dealloc];
}

- (LACBackgroundTask)initWithIdentifier:(id)identifier worker:(id)worker
{
  identifierCopy = identifier;
  workerCopy = worker;
  v17.receiver = self;
  v17.super_class = LACBackgroundTask;
  v9 = [(LACBackgroundTask *)&v17 init];
  if (v9)
  {
    v10 = _Block_copy(workerCopy);
    worker = v9->_worker;
    v9->_worker = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v13];
    innerQueue = v9->_innerQueue;
    v9->_innerQueue = v14;

    objc_storeStrong(&v9->_replyQueue, v9->_innerQueue);
    v9->_isWorkerRunning = 0;
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v9;
}

- (id)runSynchronouslyWithTimeout:(double)timeout
{
  v5 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_7);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__LACBackgroundTask_runSynchronouslyWithTimeout___block_invoke_5;
  v14[3] = &unk_1E7A95EC8;
  v16 = &v17;
  v6 = v5;
  v15 = v6;
  [(LACBackgroundTask *)self runWithTimeout:v14 completion:timeout];
  v7 = dispatch_time(0, ((timeout + 0.05) * 1000000000.0));
  if (dispatch_block_wait(v6, v7))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sync request timed out after %.3f secs", *&timeout];
    v9 = [LACBackgroundTaskErrorBuilder errorWithCode:2 debugDescription:v8];
    v10 = [[LACBackgroundTaskResult alloc] initWithError:v9];
    v11 = v18[5];
    v18[5] = v10;
  }

  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __49__LACBackgroundTask_runSynchronouslyWithTimeout___block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)runWithTimeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  objc_initWeak(&location, self);
  innerQueue = self->_innerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__LACBackgroundTask_runWithTimeout_queue_completion___block_invoke;
  block[3] = &unk_1E7A95EF0;
  objc_copyWeak(v16, &location);
  v16[1] = *&timeout;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __53__LACBackgroundTask_runWithTimeout_queue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queuedRunWithTimeout:*(a1 + 32) replyQueue:*(a1 + 40) completion:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_queuedRunWithTimeout:(double)timeout replyQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_innerQueue);
  if (self->_currentHandler || self->_isWorkerRunning)
  {
    objc_initWeak(&location, self);
    replyQueue = queueCopy;
    if (!queueCopy)
    {
      replyQueue = self->_replyQueue;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__LACBackgroundTask__queuedRunWithTimeout_replyQueue_completion___block_invoke;
    v14[3] = &unk_1E7A95D70;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = completionCopy;
    dispatch_async(replyQueue, v14);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = queueCopy;
    if (!queueCopy)
    {
      v11 = self->_replyQueue;
    }

    objc_storeStrong(&self->_replyQueue, v11);
    v12 = _Block_copy(completionCopy);
    currentHandler = self->_currentHandler;
    self->_currentHandler = v12;

    [(LACBackgroundTask *)self _queuedStartWorkerWatchdogWithTimeout:timeout];
    [(LACBackgroundTask *)self _queuedStartWorkerIfNeeded];
  }
}

void __65__LACBackgroundTask__queuedRunWithTimeout_replyQueue_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' is already running", WeakRetained[7]];
    v4 = [LACBackgroundTaskResult alloc];
    v5 = [LACBackgroundTaskErrorBuilder errorWithCode:1 debugDescription:v3];
    v6 = [(LACBackgroundTaskResult *)v4 initWithError:v5];

    v7 = LACLogTask();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__LACBackgroundTask__queuedRunWithTimeout_replyQueue_completion___block_invoke_cold_1(a1, v6, v7);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_queuedStartWorkerWatchdogWithTimeout:(double)timeout
{
  dispatch_assert_queue_V2(self->_innerQueue);
  [(LACBackgroundTask *)self _queuedStopWorkerWatchdog];
  objc_initWeak(&location, self);
  watchdog = self->_watchdog;
  innerQueue = self->_innerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__LACBackgroundTask__queuedStartWorkerWatchdogWithTimeout___block_invoke;
  v7[3] = &unk_1E7A95F18;
  objc_copyWeak(v8, &location);
  v8[1] = *&timeout;
  [(LACTimer *)watchdog dispatchAfter:innerQueue inQueue:v7 block:timeout];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __59__LACBackgroundTask__queuedStartWorkerWatchdogWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[1]);
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request '%@' timed out after %.3f secs", v6[7], *(a1 + 40)];
    v4 = [LACBackgroundTaskErrorBuilder errorWithCode:2 debugDescription:v3];
    v5 = [[LACBackgroundTaskResult alloc] initWithError:v4];
    [(dispatch_queue_t *)v6 _queuedCompleteTaskWithResult:v5];

    WeakRetained = v6;
  }
}

- (void)_queuedCompleteTaskWithResult:(id)result
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dispatch_assert_queue_V2(self->_innerQueue);
  v5 = LACLogTask();
  error = [resultCopy error];
  v7 = 16 * (error != 0);

  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2114;
    v24 = resultCopy;
    _os_log_impl(&dword_1B0233000, v5, v7, "%{public}@ finished run with result %{public}@", buf, 0x16u);
  }

  [(LACBackgroundTask *)self _queuedStopWorkerWatchdog];
  currentHandler = self->_currentHandler;
  if (currentHandler)
  {
    v9 = [currentHandler copy];
    v10 = self->_currentHandler;
    self->_currentHandler = 0;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__LACBackgroundTask__queuedCompleteTaskWithResult___block_invoke;
    v18[3] = &unk_1E7A95798;
    v20 = v9;
    v19 = resultCopy;
    v11 = v9;
    [(LACBackgroundTask *)self _queuedRunInReplyQueue:v18];
  }

  else
  {
    delegate = [(LACBackgroundTask *)self delegate];
    v13 = delegate == 0;

    if (!v13)
    {
      objc_initWeak(buf, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__LACBackgroundTask__queuedCompleteTaskWithResult___block_invoke_2;
      v15[3] = &unk_1E7A95F68;
      objc_copyWeak(&v17, buf);
      v16 = resultCopy;
      [(LACBackgroundTask *)self _queuedRunInReplyQueue:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __51__LACBackgroundTask__queuedCompleteTaskWithResult___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 backgroundTask:v4 didCompleteTaskWithResult:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_queuedRunInReplyQueue:(id)queue
{
  innerQueue = self->_innerQueue;
  block = queue;
  dispatch_assert_queue_V2(innerQueue);
  replyQueue = self->_replyQueue;
  if (replyQueue)
  {
    v6 = replyQueue == self->_innerQueue;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    block[2]();
  }

  else
  {
    dispatch_async(replyQueue, block);
  }
}

- (LACBackgroundTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __65__LACBackgroundTask__queuedRunWithTimeout_replyQueue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed with result %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end