@interface LACDTOLostModeController
- (LACBackgroundTask)lostModeBackgroundTask;
- (LACDTOLostModeController)initWithLostModeProvider:(id)provider store:(id)store workQueue:(id)queue;
- (id)_lostModeStateFromBackgroundTaskResult:(id)result;
- (void)_runLostModeBackgroundTaskWithStrategy:(int64_t)strategy completion:(id)completion;
- (void)_runLostModeBackgroundTaskWithTimeout:(double)timeout completion:(id)completion;
- (void)_storeLostModeState:(id)state completion:(id)completion;
- (void)fetchLostMode:(id)mode completion:(id)completion;
@end

@implementation LACDTOLostModeController

- (LACDTOLostModeController)initWithLostModeProvider:(id)provider store:(id)store workQueue:(id)queue
{
  providerCopy = provider;
  storeCopy = store;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = LACDTOLostModeController;
  v12 = [(LACDTOLostModeController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lostModeProvider, provider);
    objc_storeStrong(&v13->_store, store);
    objc_storeStrong(&v13->_workQueue, queue);
  }

  return v13;
}

- (void)fetchLostMode:(id)mode completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  completionCopy = completion;
  StrategyFromRequest = LACDTOLostModeFetchStrategyFromRequest(modeCopy);
  v9 = LACLogDTOLostMode();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromLACDTOLostModeFetchStrategy(StrategyFromRequest);
    *buf = 138543618;
    selfCopy = self;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query with '%@' strategy", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__LACDTOLostModeController_fetchLostMode_completion___block_invoke;
  v13[3] = &unk_1E7A96808;
  objc_copyWeak(&v15, buf);
  v11 = completionCopy;
  v14 = v11;
  [(LACDTOLostModeController *)self _runLostModeBackgroundTaskWithStrategy:StrategyFromRequest completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];
}

void __53__LACDTOLostModeController_fetchLostMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = LACLogDTOLostMode();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %@", buf, 0x16u);
    }

    dispatch_assert_queue_V2(WeakRetained[3]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__LACDTOLostModeController_fetchLostMode_completion___block_invoke_1;
    v7[3] = &unk_1E7A967E0;
    v7[4] = WeakRetained;
    v9 = *(a1 + 32);
    v8 = v3;
    [(dispatch_queue_t *)WeakRetained _storeLostModeState:v8 completion:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __53__LACDTOLostModeController_fetchLostMode_completion___block_invoke_1(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    dispatch_assert_queue_V2(*(v4 + 24));
    if (v3)
    {
      v5 = LACLogDTOLostMode();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[4];
        v11 = 138543618;
        v12 = v6;
        v13 = 2114;
        v14 = v3;
        _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query with error %{public}@", &v11, 0x16u);
      }

      v7 = a1[6];
      v8 = +[LACDTOLostModeState nullInstance];
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      v9 = a1[5];
      (*(a1[6] + 16))();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (LACBackgroundTask)lostModeBackgroundTask
{
  lostModeBackgroundTask = self->_lostModeBackgroundTask;
  if (!lostModeBackgroundTask)
  {
    objc_initWeak(&location, self);
    v4 = [LACBackgroundTask alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__LACDTOLostModeController_lostModeBackgroundTask__block_invoke;
    v8[3] = &unk_1E7A95BF0;
    objc_copyWeak(&v9, &location);
    v5 = [(LACBackgroundTask *)v4 initWithIdentifier:@"LostModeStateQuery" worker:v8];
    v6 = self->_lostModeBackgroundTask;
    self->_lostModeBackgroundTask = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    lostModeBackgroundTask = self->_lostModeBackgroundTask;
  }

  return lostModeBackgroundTask;
}

void __50__LACDTOLostModeController_lostModeBackgroundTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[LACDTOSignpostEvent lostModeQueryWillStart];
    [v5 send];

    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__LACDTOLostModeController_lostModeBackgroundTask__block_invoke_2;
    v7[3] = &unk_1E7A96830;
    v8 = v3;
    [v6 lostModeStateWithCompletion:v7];
  }
}

void __50__LACDTOLostModeController_lostModeBackgroundTask__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[LACDTOSignpostEvent lostModeQueryDidFinish];
  [v4 send];

  v5 = *(a1 + 32);
  v6 = [[LACBackgroundTaskResult alloc] initWithValue:v3];

  (*(v5 + 16))(v5, v6);
}

- (void)_runLostModeBackgroundTaskWithStrategy:(int64_t)strategy completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (strategy == 1)
  {
    v7 = LACLogDTOLostMode();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will skip query because current ratchet state allows it", &v10, 0xCu);
    }

    v8 = +[LACDTOLostModeState nullInstance];
    completionCopy[2](completionCopy, v8);

    completionCopy = v8;
  }

  else
  {
    [(LACDTOLostModeController *)self _runLostModeBackgroundTaskWithTimeout:completionCopy completion:1.35];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_runLostModeBackgroundTaskWithTimeout:(double)timeout completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = LACLogDTOLostMode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform query with %.2f sec timeout", buf, 0x16u);
  }

  lostModeBackgroundTask = [(LACDTOLostModeController *)self lostModeBackgroundTask];
  workQueue = self->_workQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__LACDTOLostModeController__runLostModeBackgroundTaskWithTimeout_completion___block_invoke;
  v12[3] = &unk_1E7A95C18;
  objc_copyWeak(&v14, &location);
  v10 = completionCopy;
  v13 = v10;
  [lostModeBackgroundTask runWithTimeout:workQueue queue:v12 completion:timeout];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];
}

void __77__LACDTOLostModeController__runLostModeBackgroundTaskWithTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained _lostModeStateFromBackgroundTaskResult:v7];
    (*(v5 + 16))(v5, v6);
  }
}

- (id)_lostModeStateFromBackgroundTaskResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  value = [resultCopy value];
  if (value && (v6 = value, [resultCopy value], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    value2 = [resultCopy value];
  }

  else
  {
    error = [resultCopy error];

    if (error)
    {
      v11 = LACLogDTOLostMode();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        error2 = [resultCopy error];
        v16 = 138543618;
        selfCopy = self;
        v18 = 2114;
        v19 = error2;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ query finished with error %{public}@", &v16, 0x16u);
      }
    }

    value2 = +[LACDTOLostModeState nullInstance];
  }

  v13 = value2;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_storeLostModeState:(id)state completion:(id)completion
{
  completionCopy = completion;
  stateCopy = state;
  v8 = [LACDTOKVStoreValue alloc];
  isInLostMode = [stateCopy isInLostMode];

  v10 = [(LACDTOKVStoreValue *)v8 initWithBoolValue:isInLostMode];
  [(LACDTOKVStore *)self->_store setValue:v10 forKey:2 completion:completionCopy];
}

@end