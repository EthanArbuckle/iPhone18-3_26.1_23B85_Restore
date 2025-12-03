@interface FCCKPrivateSaveRecordsOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateSaveRecordsOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FCCKPrivateSaveRecordsOperation;
  validateOperation = [(FCCKPrivateDatabaseOperation *)&v9 validateOperation];
  recordsToSave = [(FCCKPrivateSaveRecordsOperation *)self recordsToSave];
  v5 = [recordsToSave count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save records without records to save"];
    *buf = 136315906;
    v11 = "[FCCKPrivateSaveRecordsOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKPrivateSaveRecordsOperation.m";
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
  if ([(FCCKPrivateDatabaseOperation *)self skipPreflight])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  database = [(FCCKPrivateDatabaseOperation *)self database];
  recordsToSave = [(FCCKPrivateSaveRecordsOperation *)self recordsToSave];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke;
  v10[3] = &unk_1E7C39678;
  v11 = v3;
  selfCopy = self;
  v7 = v3;
  [(FCCKPrivateDatabase *)database enumeratePayloadsWithRecordIDs:recordsToSave records:0 zoneIDs:0 zones:v4 options:v10 payloadHandler:?];

  qualityOfService = [(FCCKPrivateSaveRecordsOperation *)self qualityOfService];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke_4;
  v9[3] = &unk_1E7C37750;
  v9[4] = self;
  [(FCCKPrivateDatabaseCKOperationResults *)v7 notifyWhenFinishWithQoS:qualityOfService completionHandler:v9];
}

void __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) operationWillStart];
  v4 = objc_alloc_init(MEMORY[0x1E695B9B8]);
  if (v3)
  {
    v5 = v3[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setRecordsToSave:v6];

  [v4 setSavePolicy:{objc_msgSend(*(a1 + 40), "savePolicy")}];
  [v4 setAtomic:0];
  -[CKDatabaseOperation setFc_canBypassEncryptionRequirement:](v4, [*(a1 + 40) canBypassEncryptionRequirement]);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke_2;
  v12 = &unk_1E7C39650;
  v13 = v3;
  v14 = *(a1 + 32);
  v7 = v3;
  [v4 setModifyRecordsCompletionBlock:&v9];
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

void __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  if (v6)
  {
    v9 = *(v6 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 fc_arrayByTransformingWithBlock:&__block_literal_global_139];

  [*(a1 + 40) operationDidFinishWithItemIDs:v11 resultItems:v8 error:v7];
}

void __51__FCCKPrivateSaveRecordsOperation_performOperation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultSavedRecords:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  saveRecordsCompletionBlock = [(FCCKPrivateSaveRecordsOperation *)self saveRecordsCompletionBlock];

  if (saveRecordsCompletionBlock)
  {
    saveRecordsCompletionBlock2 = [(FCCKPrivateSaveRecordsOperation *)self saveRecordsCompletionBlock];
    resultSavedRecords = [(FCCKPrivateSaveRecordsOperation *)self resultSavedRecords];
    (saveRecordsCompletionBlock2)[2](saveRecordsCompletionBlock2, resultSavedRecords, errorCopy);
  }
}

@end