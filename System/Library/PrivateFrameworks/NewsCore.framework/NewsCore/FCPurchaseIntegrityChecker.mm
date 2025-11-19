@interface FCPurchaseIntegrityChecker
- (void)isUserEntitledToSubscriptionForPurchaseID:(id)a3 completion:(id)a4;
@end

@implementation FCPurchaseIntegrityChecker

- (void)isUserEntitledToSubscriptionForPurchaseID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698B560] sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__FCPurchaseIntegrityChecker_isUserEntitledToSubscriptionForPurchaseID_completion___block_invoke;
  v10[3] = &unk_1E7C459F0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 getSubscriptionEntitlementsForSegment:0 ignoreCaches:1 withResultHandler:v10];
}

void __83__FCPurchaseIntegrityChecker_isUserEntitledToSubscriptionForPurchaseID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = FCPurchaseLog;
  if (v7)
  {
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "isUserEntitledToSubscriptionForPurchaseID: error:%{public}@", &buf, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "isUserEntitledToSubscriptionForPurchaseID: subscriptions: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__75;
    v18 = __Block_byref_object_dispose__75;
    v19 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__FCPurchaseIntegrityChecker_isUserEntitledToSubscriptionForPurchaseID_completion___block_invoke_1;
    v12[3] = &unk_1E7C459C8;
    v13 = *(a1 + 32);
    p_buf = &buf;
    [v6 enumerateObjectsUsingBlock:v12];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, *(*(&buf + 1) + 40));
    }

    _Block_object_dispose(&buf, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __83__FCPurchaseIntegrityChecker_isUserEntitledToSubscriptionForPurchaseID_completion___block_invoke_1(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 inAppAdamID];
  v8 = [v7 stringValue];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    v10 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 inAppAdamID];
      v13 = [v12 stringValue];
      v14 = *(a1 + 32);
      v19 = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "isUserEntitledToSubscriptionForPurchaseID: subscriptionEntitlement: %{public}@ matched with purchaseID: %{public}@", &v19, 0x16u);
    }

    v15 = [[FCSubscriptionEntitlement alloc] initWithASDEntitlement:v6];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a4 = 1;
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end