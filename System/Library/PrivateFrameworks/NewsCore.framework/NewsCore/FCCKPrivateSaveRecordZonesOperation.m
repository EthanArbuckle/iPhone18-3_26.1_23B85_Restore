@interface FCCKPrivateSaveRecordZonesOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateSaveRecordZonesOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FCCKPrivateSaveRecordZonesOperation;
  v3 = [(FCCKPrivateDatabaseOperation *)&v9 validateOperation];
  v4 = [(FCCKPrivateSaveRecordZonesOperation *)self recordZonesToSave];
  v5 = [v4 count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save zones without zones to save"];
    *buf = 136315906;
    v11 = "[FCCKPrivateSaveRecordZonesOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKPrivateSaveRecordZonesOperation.m";
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
  v4 = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  v5 = [(FCCKPrivateDatabaseOperation *)self database];
  v6 = [(FCCKPrivateSaveRecordZonesOperation *)self recordZonesToSave];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke;
  v10[3] = &unk_1E7C39678;
  v10[4] = self;
  v11 = v3;
  v7 = v3;
  [(FCCKPrivateDatabase *)v5 enumeratePayloadsWithRecordIDs:0 records:0 zoneIDs:v6 zones:v4 options:v10 payloadHandler:?];

  v8 = [(FCCKPrivateSaveRecordZonesOperation *)self qualityOfService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke_2_11;
  v9[3] = &unk_1E7C37750;
  v9[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v7 notifyWhenFinishWithQoS:v8 completionHandler:v9];
}

void __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  if (v3)
  {
    v5 = v3[4];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setRecordZonesToSave:v6];

  -[CKDatabaseOperation setFc_canBypassEncryptionRequirement:](v4, [*(a1 + 32) canBypassEncryptionRequirement]);
  [*(a1 + 40) operationWillStart];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke_2;
  v12 = &unk_1E7C39650;
  v13 = v3;
  v14 = *(a1 + 40);
  v7 = v3;
  [v4 setModifyRecordZonesCompletionBlock:&v9];
  if (v3)
  {
    v8 = v7[5];
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) runChildCKOperation:v4 destination:{v8, v9, v10, v11, v12}];
}

void __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a2;
  if ([a3 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have any deleted zones when saving zones"];
    v14 = 136315906;
    v15 = "[FCCKPrivateSaveRecordZonesOperation performOperation]_block_invoke_2";
    v16 = 2080;
    v17 = "FCCKPrivateSaveRecordZonesOperation.m";
    v18 = 1024;
    v19 = 58;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v14, 0x26u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[4];
  }

  v10 = v9;
  v11 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_180];

  [*(a1 + 40) operationDidFinishWithItemIDs:v11 resultItems:v8 error:v7];
  v12 = *MEMORY[0x1E69E9840];
}

void __55__FCCKPrivateSaveRecordZonesOperation_performOperation__block_invoke_2_11(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultSavedRecordZones:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCCKPrivateSaveRecordZonesOperation *)self saveRecordZonesCompletionBlock];

  if (v4)
  {
    v5 = [(FCCKPrivateSaveRecordZonesOperation *)self saveRecordZonesCompletionBlock];
    v6 = [(FCCKPrivateSaveRecordZonesOperation *)self resultSavedRecordZones];
    (v5)[2](v5, v6, v7);
  }
}

@end