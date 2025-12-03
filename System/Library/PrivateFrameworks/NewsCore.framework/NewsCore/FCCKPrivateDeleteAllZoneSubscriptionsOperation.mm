@interface FCCKPrivateDeleteAllZoneSubscriptionsOperation
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateDeleteAllZoneSubscriptionsOperation

- (void)performOperation
{
  fetchAllSubscriptionsOperation = [MEMORY[0x1E695B968] fetchAllSubscriptionsOperation];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__FCCKPrivateDeleteAllZoneSubscriptionsOperation_performOperation__block_invoke;
  v4[3] = &unk_1E7C3F0D0;
  v4[4] = self;
  v4[5] = 1;
  [fetchAllSubscriptionsOperation setFetchSubscriptionCompletionBlock:v4];
  [(FCCKPrivateDatabaseOperation *)self runChildCKOperation:fetchAllSubscriptionsOperation destination:1];
}

void __66__FCCKPrivateDeleteAllZoneSubscriptionsOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 allValues];
  v7 = [v6 fc_arrayOfObjectsPassingTest:&__block_literal_global_57];

  if ([v7 count])
  {
    v8 = [v7 fc_arrayByTransformingWithBlock:&__block_literal_global_3];
    v9 = objc_alloc_init(MEMORY[0x1E695B9C8]);
    [v9 setSubscriptionIDsToDelete:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FCCKPrivateDeleteAllZoneSubscriptionsOperation_performOperation__block_invoke_4;
    v10[3] = &unk_1E7C39A20;
    v10[4] = *(a1 + 32);
    [v9 setModifySubscriptionsCompletionBlock:v10];
    [*(a1 + 32) runChildCKOperation:v9 destination:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 32) finishedPerformingOperationWithError:v5];
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  deleteAllZoneSubscriptionsCompletionBlock = [(FCCKPrivateDeleteAllZoneSubscriptionsOperation *)self deleteAllZoneSubscriptionsCompletionBlock];

  if (deleteAllZoneSubscriptionsCompletionBlock)
  {
    deleteAllZoneSubscriptionsCompletionBlock2 = [(FCCKPrivateDeleteAllZoneSubscriptionsOperation *)self deleteAllZoneSubscriptionsCompletionBlock];
    (deleteAllZoneSubscriptionsCompletionBlock2)[2](deleteAllZoneSubscriptionsCompletionBlock2, errorCopy);
  }
}

@end