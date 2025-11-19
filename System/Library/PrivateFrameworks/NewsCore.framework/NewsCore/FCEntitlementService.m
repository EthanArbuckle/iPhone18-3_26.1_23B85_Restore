@interface FCEntitlementService
- (FCEntitlementService)initWithConfigurationManager:(id)a3;
- (void)clearTimer;
- (void)performEntitlementWithIgnoreCache:(BOOL)a3 completion:(id)a4;
- (void)startTimerWithTimeoutDuration:(double)a3;
@end

@implementation FCEntitlementService

- (FCEntitlementService)initWithConfigurationManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = FCEntitlementService;
  v6 = [(FCEntitlementService *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    blocks = v6->_blocks;
    v6->_blocks = v7;

    v9 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v6->_accessLock;
    v6->_accessLock = v9;

    objc_storeStrong(&v6->_configurationManager, a3);
  }

  return v6;
}

- (void)performEntitlementWithIgnoreCache:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FCEntitlementService *)self configurationManager];
  v8 = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FCEntitlementService_performEntitlementWithIgnoreCache_completion___block_invoke;
  v10[3] = &unk_1E7C3F478;
  v12 = a3;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 fetchConfigurationIfNeededWithCompletionQueue:v8 completion:v10];
}

uint64_t __69__FCEntitlementService_performEntitlementWithIgnoreCache_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [a2 entitlementsRequestTimeoutDurationInSeconds];
  v6 = *(a1 + 40);

  return [v3 _performEntitlementWithIgnoreCache:v4 requestTimeoutDuration:v5 completion:v6];
}

void __93__FCEntitlementService__performEntitlementWithIgnoreCache_requestTimeoutDuration_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = FCPurchaseLog;
  if (v8)
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v11 = v9;
    *buf = 138412802;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v8;
    _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "%@ failed to fetch entitlements with entitlements:%{public}@, error: %{public}@", buf, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    v11 = v9;
    v13 = objc_opt_class();
    v14 = [*(a1 + 40) fc_millisecondTimeIntervalUntilNow];
    *buf = 138412802;
    v34 = v13;
    v35 = 2048;
    v36 = v14;
    v37 = 2114;
    v38 = v7;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Entitlements response received in %llums with entitlements: %{public}@", buf, 0x20u);
  }

LABEL_7:
  v15 = [*(a1 + 32) accessLock];
  [v15 lock];

  v16 = [*(a1 + 32) blocks];
  v17 = [v16 copy];

  if ([*(a1 + 32) requestInProgress])
  {
    v18 = [*(a1 + 32) entitlementRequestTimer];
    [v18 invalidate];

    [*(a1 + 32) setEntitlementRequestTimer:0];
    v19 = [*(a1 + 32) blocks];
    [v19 removeAllObjects];

    [*(a1 + 32) setRequestInProgress:0];
  }

  v20 = [*(a1 + 32) accessLock];
  [v20 unlock];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v17;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        if (v26)
        {
          (*(v26 + 16))(v26, v7, a3, v8);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)startTimerWithTimeoutDuration:(double)a3
{
  v5 = [(FCEntitlementService *)self entitlementRequestTimer];

  if (!v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__FCEntitlementService_startTimerWithTimeoutDuration___block_invoke;
    v6[3] = &unk_1E7C3C970;
    v6[4] = self;
    *&v6[5] = a3;
    FCPerformBlockOnMainThread(v6);
  }
}

void __54__FCEntitlementService_startTimerWithTimeoutDuration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_clearTimer selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setEntitlementRequestTimer:v2];
}

- (void)clearTimer
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138412290;
    v25 = objc_opt_class();
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%@ clearing the timer", buf, 0xCu);
  }

  v5 = [(FCEntitlementService *)self accessLock];
  [v5 lock];

  v6 = [(FCEntitlementService *)self blocks];
  v7 = [v6 copy];

  v8 = [(FCEntitlementService *)self blocks];
  [v8 removeAllObjects];

  v9 = [(FCEntitlementService *)self entitlementRequestTimer];
  [v9 invalidate];

  [(FCEntitlementService *)self setEntitlementRequestTimer:0];
  [(FCEntitlementService *)self setRequestInProgress:0];
  v10 = [(FCEntitlementService *)self accessLock];
  [v10 unlock];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EntitlementsProviderErrorDomain" code:3001 userInfo:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (v17)
        {
          (*(v17 + 16))(v17, 0, 0, v11);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end