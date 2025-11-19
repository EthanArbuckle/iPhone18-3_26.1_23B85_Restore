@interface LACDTOLocationProviderTaskDecorator
- (LACBackgroundTask)locationStateBackgroundTask;
- (LACDTOLocationProviderTaskDecorator)initWithLocationProvider:(id)a3 workQueue:(id)a4;
- (id)_locationStateFromBackgroundTaskResult:(id)a3;
- (void)_runLocationStateBackgroundTask:(double)a3 completion:(id)a4;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
@end

@implementation LACDTOLocationProviderTaskDecorator

- (LACDTOLocationProviderTaskDecorator)initWithLocationProvider:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTOLocationProviderTaskDecorator;
  v9 = [(LACDTOLocationProviderTaskDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationProvider, a3);
    objc_storeStrong(&v10->_workQueue, a4);
  }

  return v10;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(LACDTOLocationProviderTaskDecorator *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(LACDTOLocationProviderTaskDecorator *)self _runLocationStateBackgroundTask:v5 completion:1.0];
}

- (LACBackgroundTask)locationStateBackgroundTask
{
  locationStateBackgroundTask = self->_locationStateBackgroundTask;
  if (!locationStateBackgroundTask)
  {
    objc_initWeak(&location, self);
    v4 = [LACBackgroundTask alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__LACDTOLocationProviderTaskDecorator_locationStateBackgroundTask__block_invoke;
    v8[3] = &unk_1E7A95BF0;
    objc_copyWeak(&v9, &location);
    v5 = [(LACBackgroundTask *)v4 initWithIdentifier:@"LocationStateQuery" worker:v8];
    v6 = self->_locationStateBackgroundTask;
    self->_locationStateBackgroundTask = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    locationStateBackgroundTask = self->_locationStateBackgroundTask;
  }

  return locationStateBackgroundTask;
}

void __66__LACDTOLocationProviderTaskDecorator_locationStateBackgroundTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__LACDTOLocationProviderTaskDecorator_locationStateBackgroundTask__block_invoke_2;
    v7[3] = &unk_1E7A95BC8;
    v8 = v3;
    [v6 checkIsInFamiliarLocationWithCompletion:v7];
  }
}

void __66__LACDTOLocationProviderTaskDecorator_locationStateBackgroundTask__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[LACBackgroundTaskResult alloc] initWithValue:v3];

  (*(v2 + 16))(v2, v4);
}

- (void)_runLocationStateBackgroundTask:(double)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = LACLogDTOLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform query with %.2f sec timeout", buf, 0x16u);
  }

  v8 = [(LACDTOLocationProviderTaskDecorator *)self locationStateBackgroundTask];
  workQueue = self->_workQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__LACDTOLocationProviderTaskDecorator__runLocationStateBackgroundTask_completion___block_invoke;
  v12[3] = &unk_1E7A95C18;
  objc_copyWeak(&v14, &location);
  v10 = v6;
  v13 = v10;
  [v8 runWithTimeout:workQueue queue:v12 completion:a3];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x1E69E9840];
}

void __82__LACDTOLocationProviderTaskDecorator__runLocationStateBackgroundTask_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained _locationStateFromBackgroundTaskResult:v7];
    (*(v5 + 16))(v5, v6);
  }
}

- (id)_locationStateFromBackgroundTaskResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 value];
  if (v5 && (v6 = v5, [v4 value], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    v9 = [v4 value];
  }

  else
  {
    v10 = [v4 error];

    if (v10)
    {
      v11 = LACLogDTOLocation();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 error];
        v16 = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v12;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ query finished with error %{public}@", &v16, 0x16u);
      }
    }

    v9 = +[LACDTOLocationState nullInstance];
  }

  v13 = v9;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end