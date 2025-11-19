@interface LACSharedModeDataSourceDefaultsDecorator
- (BOOL)_shouldUseMockedResponse;
- (LACSharedModeDataSourceDefaultsDecorator)initWithDataSource:(id)a3 replyQueue:(id)a4;
- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4;
@end

@implementation LACSharedModeDataSourceDefaultsDecorator

- (BOOL)_shouldUseMockedResponse
{
  if (!+[LACGlobalDomain osVariantAllowsDomainOverrides])
  {
    return 0;
  }

  v2 = +[LACGlobalDomain isSharedModeActive];
  v3 = v2 != 0;

  return v3;
}

- (LACSharedModeDataSourceDefaultsDecorator)initWithDataSource:(id)a3 replyQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACSharedModeDataSourceDefaultsDecorator;
  v9 = [(LACSharedModeDataSourceDefaultsDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_replyQueue, a4);
  }

  return v10;
}

- (void)fetchSharedModeWithOptions:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(LACSharedModeDataSourceDefaultsDecorator *)self _shouldUseMockedResponse])
  {
    v8 = LACLogSharedMode();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
    }

    v9 = +[LACGlobalDomain isSharedModeActive];
    v10 = [v9 BOOLValue];

    v11 = [[LACSharedMode alloc] initWithActive:v10 confirmed:0];
    v12 = +[LACGlobalDomain sharedModeLatency];
    [v12 doubleValue];
    v14 = v13;

    v15 = dispatch_time(0, (v14 * 1000000000.0));
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__LACSharedModeDataSourceDefaultsDecorator_fetchSharedModeWithOptions_completion___block_invoke;
    block[3] = &unk_1E7A953B0;
    block[4] = self;
    v20 = v11;
    v21 = v7;
    v17 = v11;
    dispatch_after(v15, replyQueue, block);
  }

  else
  {
    [(LACSharedModeDataSource *)self->_dataSource fetchSharedModeWithOptions:v6 completion:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __82__LACSharedModeDataSourceDefaultsDecorator_fetchSharedModeWithOptions_completion___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = LACLogSharedMode();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %{public}@", &v8, 0x16u);
  }

  v5 = a1[5];
  result = (*(a1[6] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end