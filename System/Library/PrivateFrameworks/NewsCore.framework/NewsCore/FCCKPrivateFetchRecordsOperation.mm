@interface FCCKPrivateFetchRecordsOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateFetchRecordsOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FCCKPrivateFetchRecordsOperation;
  v3 = [(FCCKPrivateDatabaseOperation *)&v9 validateOperation];
  v4 = [(FCCKPrivateFetchRecordsOperation *)self recordIDs];
  v5 = [v4 count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch an empty list of record IDs"];
    *buf = 136315906;
    v11 = "[FCCKPrivateFetchRecordsOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKPrivateFetchRecordsOperation.m";
    v14 = 1024;
    v15 = 27;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v5)
  {
    result = v3;
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
  if ([(FCCKPrivateDatabaseOperation *)self skipPreflight])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(FCCKPrivateDatabaseOperation *)self database];
  v6 = [(FCCKPrivateFetchRecordsOperation *)self recordIDs];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke;
  v10[3] = &unk_1E7C39678;
  v11 = v3;
  v12 = self;
  v7 = v3;
  [(FCCKPrivateDatabase *)v5 enumeratePayloadsWithRecordIDs:v6 records:0 zoneIDs:0 zones:0 options:v4 payloadHandler:v10];

  v8 = [(FCCKPrivateFetchRecordsOperation *)self qualityOfService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke_3;
  v9[3] = &unk_1E7C37750;
  v9[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v7 notifyWhenFinishWithQoS:v8 completionHandler:v9];
}

void __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) operationWillStart];
  v4 = objc_alloc_init(MEMORY[0x1E695B938]);
  if (v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setRecordIDs:v6];

  v7 = [*(a1 + 40) desiredKeys];
  [v4 setDesiredKeys:v7];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke_2;
  v13 = &unk_1E7C40918;
  v14 = *(a1 + 32);
  v15 = v3;
  v8 = v3;
  [v4 setFetchRecordsCompletionBlock:&v10];
  if (v3)
  {
    v9 = v8[5];
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 40) runChildCKOperation:v4 destination:{v9, v10, v11, v12, v13}];
}

void __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  if (v5)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  v9 = [v7 allValues];

  [v4 operationDidFinishWithItemIDs:v10 resultItems:v9 error:v6];
}

void __52__FCCKPrivateFetchRecordsOperation_performOperation__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 fc_dictionaryWithKeyBlock:&__block_literal_global_85];
  [*(a1 + 32) setResultRecordsByRecordID:v5];

  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCCKPrivateFetchRecordsOperation *)self fetchRecordsCompletionBlock];

  if (v4)
  {
    v5 = [(FCCKPrivateFetchRecordsOperation *)self fetchRecordsCompletionBlock];
    v6 = [(FCCKPrivateFetchRecordsOperation *)self resultRecordsByRecordID];
    (v5)[2](v5, v6, v7);
  }
}

@end