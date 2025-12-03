@interface FCCKPrivateFetchRecordZonesOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateFetchRecordZonesOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FCCKPrivateFetchRecordZonesOperation;
  validateOperation = [(FCCKPrivateDatabaseOperation *)&v9 validateOperation];
  recordZoneIDs = [(FCCKPrivateFetchRecordZonesOperation *)self recordZoneIDs];
  v5 = [recordZoneIDs count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch an empty list of record zone IDs"];
    *buf = 136315906;
    v11 = "[FCCKPrivateFetchRecordZonesOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKPrivateFetchRecordZonesOperation.m";
    v14 = 1024;
    v15 = 27;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v5)
  {
    result = validateOperation;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v3 = objc_alloc_init(FCCKPrivateDatabaseCKOperationResults);
  skipPreflight = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  database = [(FCCKPrivateDatabaseOperation *)self database];
  recordZoneIDs = [(FCCKPrivateFetchRecordZonesOperation *)self recordZoneIDs];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke;
  v10[3] = &unk_1E7C39678;
  v11 = v3;
  selfCopy = self;
  v7 = v3;
  [(FCCKPrivateDatabase *)database enumeratePayloadsWithRecordIDs:0 records:recordZoneIDs zoneIDs:0 zones:skipPreflight options:v10 payloadHandler:?];

  qualityOfService = [(FCCKPrivateFetchRecordZonesOperation *)self qualityOfService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke_3;
  v9[3] = &unk_1E7C37750;
  v9[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v7 notifyWhenFinishWithQoS:qualityOfService completionHandler:v9];
}

void __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695B928]);
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setRecordZoneIDs:v6];

  [*(a1 + 32) operationWillStart];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke_2;
  v12 = &unk_1E7C40918;
  v13 = *(a1 + 32);
  v14 = v3;
  v7 = v3;
  [v4 setFetchRecordZonesCompletionBlock:&v9];
  if (v3)
  {
    v8 = v7[5];
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 40) runChildCKOperation:v4 destination:{v8, v9, v10, v11, v12}];
}

void __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  if (v5)
  {
    v8 = *(v5 + 24);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  v9 = [v7 allValues];

  [v4 operationDidFinishWithItemIDs:v10 resultItems:v9 error:v6];
}

void __56__FCCKPrivateFetchRecordZonesOperation_performOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 fc_dictionaryWithKeyBlock:&__block_literal_global_72];
  [*(a1 + 32) setResultRecordZonesByZoneID:v5];

  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchRecordZonesCompletionBlock = [(FCCKPrivateFetchRecordZonesOperation *)self fetchRecordZonesCompletionBlock];

  if (fetchRecordZonesCompletionBlock)
  {
    fetchRecordZonesCompletionBlock2 = [(FCCKPrivateFetchRecordZonesOperation *)self fetchRecordZonesCompletionBlock];
    resultRecordZonesByZoneID = [(FCCKPrivateFetchRecordZonesOperation *)self resultRecordZonesByZoneID];
    (fetchRecordZonesCompletionBlock2)[2](fetchRecordZonesCompletionBlock2, resultRecordZonesByZoneID, errorCopy);
  }
}

@end