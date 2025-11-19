@interface FCCKPrivateSaveDatabaseSubscriptionOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateSaveDatabaseSubscriptionOperation

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = FCCKPrivateSaveDatabaseSubscriptionOperation;
  v3 = [(FCCKPrivateDatabaseOperation *)&v8 validateOperation];
  v4 = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self subscriptionID];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save database subscriptions without a subscription ID"];
    *buf = 136315906;
    v10 = "[FCCKPrivateSaveDatabaseSubscriptionOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateSaveDatabaseSubscriptionOperation.m";
    v13 = 1024;
    v14 = 20;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v4)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v3 = objc_alloc_init(FCCKPrivateDatabaseCKOperationResults);
  v4 = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  v5 = [(FCCKPrivateDatabaseOperation *)self database];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke;
  v9[3] = &unk_1E7C37838;
  v10 = v3;
  v11 = self;
  v6 = v3;
  [(FCCKPrivateDatabase *)v5 enumerateActiveDestinationsWithOptions:v4 handler:v9];

  v7 = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self qualityOfService];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_4;
  v8[3] = &unk_1E7C37750;
  v8[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v6 notifyWhenFinishWithQoS:v7 completionHandler:v8];
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) operationWillStart];
  v4 = objc_alloc_init(MEMORY[0x1E695B968]);
  v5 = [*(a1 + 40) subscriptionID];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v4 setSubscriptionIDs:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_2;
  v10[3] = &unk_1E7C37810;
  v9 = *(a1 + 32);
  v7 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = a2;
  [v4 setFetchSubscriptionCompletionBlock:v10];
  [*(a1 + 40) runChildCKOperation:v4 destination:a2];

  v8 = *MEMORY[0x1E69E9840];
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 allValues];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 notificationInfo];
    v9 = [v8 shouldSendContentAvailable];
    v10 = [*(a1 + 32) notificationInfo];
    v11 = [v10 shouldSendContentAvailable];

    if (v9 == v11)
    {
      goto LABEL_5;
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695B8C0]);
  v13 = [*(a1 + 32) subscriptionID];
  v14 = [v12 initWithSubscriptionID:v13];

  v15 = [*(a1 + 32) notificationInfo];
  [v14 setNotificationInfo:v15];

  if (!v14)
  {
LABEL_5:
    v20 = *(a1 + 40);
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v25 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v20 operationDidFinishWithItemIDs:v16 resultItems:0 error:v5];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695B9C8]);
    v26[0] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v16 setSubscriptionsToSave:v17];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_3;
    v22[3] = &unk_1E7C377E8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v23 = v18;
    v24 = v19;
    [v16 setModifySubscriptionsCompletionBlock:v22];
    [*(a1 + 32) runChildCKOperation:v16 destination:*(a1 + 48)];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __64__FCCKPrivateSaveDatabaseSubscriptionOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a4;
  v8 = [v4 numberWithInteger:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 operationDidFinishWithItemIDs:v9 resultItems:0 error:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v6 = a3;
  v4 = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self saveDatabaseSubscriptionCompletionBlock];

  if (v4)
  {
    v5 = [(FCCKPrivateSaveDatabaseSubscriptionOperation *)self saveDatabaseSubscriptionCompletionBlock];
    (v5)[2](v5, v6);
  }
}

@end