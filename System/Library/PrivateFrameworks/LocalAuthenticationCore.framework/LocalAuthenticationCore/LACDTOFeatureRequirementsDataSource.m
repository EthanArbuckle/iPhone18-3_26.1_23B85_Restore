@interface LACDTOFeatureRequirementsDataSource
- (LACDTOFeatureRequirementsDataSource)initWithDevice:(id)a3 replyQueue:(id)a4;
- (void)hasHSA2AccountWithCompletion:(id)a3;
- (void)hasLocationServicesEnabledWithCompletion:(id)a3;
@end

@implementation LACDTOFeatureRequirementsDataSource

- (LACDTOFeatureRequirementsDataSource)initWithDevice:(id)a3 replyQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTOFeatureRequirementsDataSource;
  v9 = [(LACDTOFeatureRequirementsDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_replyQueue, a4);
  }

  return v10;
}

- (void)hasHSA2AccountWithCompletion:(id)a3
{
  v4 = a3;
  if (getAKAccountManagerClass_0())
  {
    objc_initWeak(&location, self);
    v5 = [LACBackgroundTask alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__LACDTOFeatureRequirementsDataSource_hasHSA2AccountWithCompletion___block_invoke;
    v15[3] = &unk_1E7A95BF0;
    objc_copyWeak(&v16, &location);
    v6 = [(LACBackgroundTask *)v5 initWithIdentifier:@"HSA2AccountQuery" worker:v15];
    replyQueue = self->_replyQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__LACDTOFeatureRequirementsDataSource_hasHSA2AccountWithCompletion___block_invoke_2;
    v11[3] = &unk_1E7A958F8;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v8 = v6;
    v12 = v8;
    [(LACBackgroundTask *)v8 runWithTimeout:replyQueue queue:v11 completion:1.0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [LACError errorWithCode:-1000 debugDescription:@"Missing AuthKit dependency"];
    v10 = LACLogDTOFeature();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOFeatureRequirementsDataSource *)v9 hasHSA2AccountWithCompletion:v10];
    }

    (*(v4 + 2))(v4, 0, v9);
  }
}

void __68__LACDTOFeatureRequirementsDataSource_hasHSA2AccountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [getAKAccountManagerClass_0() sharedInstance];
    v5 = [v4 primaryAuthKitAccount];
    v6 = [v4 securityLevelForAccount:v5] == 4;

    v7 = [LACBackgroundTaskResult alloc];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v9 = [(LACBackgroundTaskResult *)v7 initWithValue:v8];
    v10[2](v10, v9);
  }
}

void __68__LACDTOFeatureRequirementsDataSource_hasHSA2AccountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [v7 value];
    v6 = [v7 error];
    (*(v4 + 16))(v4, v5, v6);
  }
}

- (void)hasLocationServicesEnabledWithCompletion:(id)a3
{
  v4 = a3;
  if (getCLLocationManagerClass())
  {
    objc_initWeak(&location, self);
    v5 = [LACBackgroundTask alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__LACDTOFeatureRequirementsDataSource_hasLocationServicesEnabledWithCompletion___block_invoke;
    v15[3] = &unk_1E7A95BF0;
    objc_copyWeak(&v16, &location);
    v6 = [(LACBackgroundTask *)v5 initWithIdentifier:@"LocationServicesQuery" worker:v15];
    replyQueue = self->_replyQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__LACDTOFeatureRequirementsDataSource_hasLocationServicesEnabledWithCompletion___block_invoke_2;
    v11[3] = &unk_1E7A958F8;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v8 = v6;
    v12 = v8;
    [(LACBackgroundTask *)v8 runWithTimeout:replyQueue queue:v11 completion:1.0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [LACError errorWithCode:-1000 debugDescription:@"Missing CoreLocation dependency"];
    v10 = LACLogDTOFeature();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOFeatureRequirementsDataSource *)v9 hasLocationServicesEnabledWithCompletion:v10];
    }

    (*(v4 + 2))(v4, 0, v9);
  }
}

void __80__LACDTOFeatureRequirementsDataSource_hasLocationServicesEnabledWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [getCLLocationManagerClass() locationServicesEnabled];
    v5 = [LACBackgroundTaskResult alloc];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v7 = [(LACBackgroundTaskResult *)v5 initWithValue:v6];
    v8[2](v8, v7);
  }
}

void __80__LACDTOFeatureRequirementsDataSource_hasLocationServicesEnabledWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [v7 value];
    v6 = [v7 error];
    (*(v4 + 16))(v4, v5, v6);
  }
}

- (void)hasHSA2AccountWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not fetch HSA2 account %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hasLocationServicesEnabledWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not fetch LocationServices status %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end