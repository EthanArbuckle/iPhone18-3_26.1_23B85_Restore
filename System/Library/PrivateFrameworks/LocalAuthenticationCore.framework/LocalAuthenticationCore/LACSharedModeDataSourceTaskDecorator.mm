@interface LACSharedModeDataSourceTaskDecorator
- (LACSharedModeDataSourceTaskDecorator)initWithDataSource:(id)source replyQueue:(id)queue;
- (LACSharedModeDataSourceTaskDecorator)initWithDataSource:(id)source runtime:(id)runtime replyQueue:(id)queue;
- (double)_timeoutForRequestWithOptions:(id)options;
- (id)_sharedModeBackgroundTaskWithOptions:(id)options;
- (id)_sharedModeFromBackgroundTaskResult:(id)result;
- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion;
@end

@implementation LACSharedModeDataSourceTaskDecorator

- (LACSharedModeDataSourceTaskDecorator)initWithDataSource:(id)source replyQueue:(id)queue
{
  queueCopy = queue;
  sourceCopy = source;
  v8 = objc_alloc_init(LACSharedModeDataSourceTaskDecoratorRuntime);
  v9 = [(LACSharedModeDataSourceTaskDecorator *)self initWithDataSource:sourceCopy runtime:v8 replyQueue:queueCopy];

  return v9;
}

- (LACSharedModeDataSourceTaskDecorator)initWithDataSource:(id)source runtime:(id)runtime replyQueue:(id)queue
{
  sourceCopy = source;
  runtimeCopy = runtime;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = LACSharedModeDataSourceTaskDecorator;
  v12 = [(LACSharedModeDataSourceTaskDecorator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v13->_runtime, runtime);
    objc_storeStrong(&v13->_replyQueue, queue);
  }

  return v13;
}

- (void)fetchSharedModeWithOptions:(id)options completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = LACLogSharedMode();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  v9 = [(LACSharedModeDataSourceTaskDecorator *)self _sharedModeBackgroundTaskWithOptions:optionsCopy];
  [(LACSharedModeDataSourceTaskDecorator *)self _timeoutForRequestWithOptions:optionsCopy];
  v11 = v10;
  replyQueue = self->_replyQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__LACSharedModeDataSourceTaskDecorator_fetchSharedModeWithOptions_completion___block_invoke;
  v16[3] = &unk_1E7A958F8;
  objc_copyWeak(&v19, &location);
  v13 = completionCopy;
  v18 = v13;
  v14 = v9;
  v17 = v14;
  [v14 runWithTimeout:replyQueue queue:v16 completion:v11];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x1E69E9840];
}

void __78__LACSharedModeDataSourceTaskDecorator_fetchSharedModeWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _sharedModeFromBackgroundTaskResult:v3];
    v7 = LACLogSharedMode();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_sharedModeBackgroundTaskWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v5 = [LACBackgroundTask alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__LACSharedModeDataSourceTaskDecorator__sharedModeBackgroundTaskWithOptions___block_invoke;
  v9[3] = &unk_1E7A95948;
  objc_copyWeak(&v11, &location);
  v6 = optionsCopy;
  v10 = v6;
  v7 = [(LACBackgroundTask *)v5 initWithIdentifier:@"SharedModeStateQuery" worker:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __77__LACSharedModeDataSourceTaskDecorator__sharedModeBackgroundTaskWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__LACSharedModeDataSourceTaskDecorator__sharedModeBackgroundTaskWithOptions___block_invoke_2;
    v8[3] = &unk_1E7A95920;
    v9 = v3;
    [v6 fetchSharedModeWithOptions:v7 completion:v8];
  }
}

void __77__LACSharedModeDataSourceTaskDecorator__sharedModeBackgroundTaskWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[LACBackgroundTaskResult alloc] initWithValue:v3];

  (*(v2 + 16))(v2, v4);
}

- (id)_sharedModeFromBackgroundTaskResult:(id)result
{
  resultCopy = result;
  value = [resultCopy value];
  if (value && (v6 = value, [resultCopy value], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, v6, (isKindOfClass & 1) != 0))
  {
    [(LACSharedModeDataSourceTaskDecoratorRuntime *)self->_runtime resetMaxValue];
    value2 = [resultCopy value];
  }

  else
  {
    error = [resultCopy error];

    if (error)
    {
      error2 = [resultCopy error];
      domain = [error2 domain];
      if ([domain isEqualToString:@"LACBackgroundTaskErrorDomain"])
      {
        error3 = [resultCopy error];
        code = [error3 code];

        if (code == 2)
        {
          [(LACSharedModeDataSourceTaskDecoratorRuntime *)self->_runtime halveMaxValue];
        }
      }

      else
      {
      }

      v15 = LACLogSharedMode();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(LACSharedModeDataSourceTaskDecorator *)self _sharedModeFromBackgroundTaskResult:resultCopy, v15];
      }
    }

    value2 = +[LACSharedMode defaultSharedMode];
  }

  v16 = value2;

  return v16;
}

- (double)_timeoutForRequestWithOptions:(id)options
{
  isPreflight = [options isPreflight];
  runtime = self->_runtime;
  if (isPreflight)
  {

    [(LACSharedModeDataSourceTaskDecoratorRuntime *)runtime minValue];
  }

  else
  {

    [(LACSharedModeDataSourceTaskDecoratorRuntime *)runtime maxValue];
  }

  return result;
}

- (void)_sharedModeFromBackgroundTaskResult:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 error];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1B0233000, a3, OS_LOG_TYPE_ERROR, "%{public}@ query finished with error %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end