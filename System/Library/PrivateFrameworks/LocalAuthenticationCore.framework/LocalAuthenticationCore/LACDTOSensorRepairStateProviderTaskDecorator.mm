@interface LACDTOSensorRepairStateProviderTaskDecorator
- (LACDTOSensorRepairStateProviderTaskDecorator)initWithProvider:(id)provider replyQueue:(id)queue;
- (id)_repairStateBackgroundTask;
- (void)dealloc;
- (void)fetchRepairStateWithCompletion:(id)completion;
@end

@implementation LACDTOSensorRepairStateProviderTaskDecorator

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "%@ will dealloc", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (LACDTOSensorRepairStateProviderTaskDecorator)initWithProvider:(id)provider replyQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = LACDTOSensorRepairStateProviderTaskDecorator;
  v9 = [(LACDTOSensorRepairStateProviderTaskDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_replyQueue, queue);
  }

  return v10;
}

- (void)fetchRepairStateWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTask);

  if (WeakRetained)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is busy", self->_provider];
    v7 = [LACError errorWithCode:-1000 debugDescription:v6];
    v8 = LACLogDTOSensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOSensorRepairStateProviderCRAdapter *)self _fetchRepairStateWithCompletion:v7, v8];
    }

    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    _repairStateBackgroundTask = [(LACDTOSensorRepairStateProviderTaskDecorator *)self _repairStateBackgroundTask];
    objc_initWeak(&location, self);
    replyQueue = self->_replyQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__LACDTOSensorRepairStateProviderTaskDecorator_fetchRepairStateWithCompletion___block_invoke;
    v11[3] = &unk_1E7A958F8;
    objc_copyWeak(&v14, &location);
    v13 = completionCopy;
    v6 = _repairStateBackgroundTask;
    v12 = v6;
    [v6 runWithTimeout:replyQueue queue:v11 completion:1.0];
    objc_storeWeak(&self->_backgroundTask, v6);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __79__LACDTOSensorRepairStateProviderTaskDecorator_fetchRepairStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 3, 0);
    v6 = [v3 error];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 domain];
      v9 = [v8 isEqualToString:@"LACBackgroundTaskErrorDomain"];

      if (!v9)
      {
        (*(*(a1 + 40) + 16))();
        goto LABEL_10;
      }

      v10 = LACLogDTOSensor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = v5;
        v17 = 2114;
        v18 = v7;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ failed with background task error %{public}@. Resolving to unknown repair state.", &v15, 0x16u);
      }

      v11 = *(a1 + 40);
      v12 = [[LACDTOMutableSensorRepairState alloc] initWithFlag:0];
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = [v3 value];
    }

    v13 = v12;
    (*(v11 + 16))(v11, v12, 0);

LABEL_10:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_repairStateBackgroundTask
{
  objc_initWeak(&location, self);
  v2 = [LACBackgroundTask alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__LACDTOSensorRepairStateProviderTaskDecorator__repairStateBackgroundTask__block_invoke;
  v5[3] = &unk_1E7A95BF0;
  objc_copyWeak(&v6, &location);
  v3 = [(LACBackgroundTask *)v2 initWithIdentifier:@"RepairStateQuery" worker:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

void __74__LACDTOSensorRepairStateProviderTaskDecorator__repairStateBackgroundTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__LACDTOSensorRepairStateProviderTaskDecorator__repairStateBackgroundTask__block_invoke_2;
    v7[3] = &unk_1E7A97E98;
    v8 = v3;
    [v6 fetchRepairStateWithCompletion:v7];
  }
}

void __74__LACDTOSensorRepairStateProviderTaskDecorator__repairStateBackgroundTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [LACBackgroundTaskResult alloc];
  if (v5)
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithError:v5];
  }

  else
  {
    v8 = [(LACBackgroundTaskResult *)v7 initWithValue:v10];
  }

  v9 = v8;
  (*(v6 + 16))(v6, v8);
}

@end