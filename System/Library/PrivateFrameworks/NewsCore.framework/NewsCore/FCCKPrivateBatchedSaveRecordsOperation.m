@interface FCCKPrivateBatchedSaveRecordsOperation
- (BOOL)validateOperation;
- (FCCKPrivateBatchedSaveRecordsOperation)init;
- (void)_continueModifying;
- (void)_subdivideRemainingBatches;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateBatchedSaveRecordsOperation

- (FCCKPrivateBatchedSaveRecordsOperation)init
{
  v11.receiver = self;
  v11.super_class = FCCKPrivateBatchedSaveRecordsOperation;
  v2 = [(FCOperation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_skipPreflight = 0;
    v2->_identityLossResponse = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    remainingBatchesOfRecordsToSave = v3->_remainingBatchesOfRecordsToSave;
    v3->_remainingBatchesOfRecordsToSave = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultSavedRecords = v3->_resultSavedRecords;
    v3->_resultSavedRecords = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultErrorsByRecordID = v3->_resultErrorsByRecordID;
    v3->_resultErrorsByRecordID = v8;
  }

  return v3;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"modify operation must have a database"];
    v9 = 136315906;
    v10 = "[FCCKPrivateBatchedSaveRecordsOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateBatchedSaveRecordsOperation.m";
    v13 = 1024;
    v14 = 50;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v4 = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];
  v5 = v4 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)performOperation
{
  v3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self recordsToSave];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
    v6 = [(FCCKPrivateBatchedSaveRecordsOperation *)self recordsToSave];
    [v5 addObject:v6];

    v7 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
    v8 = [v7 firstObject];
    v9 = [v8 count];

    if (v9 >= 0x191)
    {
      do
      {
        [(FCCKPrivateBatchedSaveRecordsOperation *)self _subdivideRemainingBatches];
        v10 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        v11 = [v10 firstObject];
        v12 = [v11 count];
      }

      while (v12 > 0x190);
    }
  }

  [(FCCKPrivateBatchedSaveRecordsOperation *)self _continueModifying];
}

- (void)operationWillFinishWithError:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultErrorsByRecordID];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E695B740];
      v15 = *MEMORY[0x1E695B798];
      v9 = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultErrorsByRecordID];
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v4 = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  v11 = [(FCCKPrivateBatchedSaveRecordsOperation *)self saveRecordsCompletionBlock];

  if (v11)
  {
    v12 = [(FCCKPrivateBatchedSaveRecordsOperation *)self saveRecordsCompletionBlock];
    v13 = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultSavedRecords];
    (v12)[2](v12, v13, v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_continueModifying
{
  v3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  v4 = [v3 firstObject];

  if ([v4 count])
  {
    v5 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    [(FCCKPrivateSaveRecordsOperation *)v5 setRecordsToSave:v4];
    [(FCCKPrivateSaveRecordsOperation *)v5 setSavePolicy:[(FCCKPrivateBatchedSaveRecordsOperation *)self savePolicy]];
    [(FCCKPrivateDatabaseOperation *)v5 setSkipPreflight:[(FCCKPrivateBatchedSaveRecordsOperation *)self skipPreflight]];
    [(FCCKPrivateDatabaseOperation *)v5 setIdentityLossResponse:[(FCCKPrivateBatchedSaveRecordsOperation *)self identityLossResponse]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__FCCKPrivateBatchedSaveRecordsOperation__continueModifying__block_invoke;
    v7[3] = &unk_1E7C37750;
    v7[4] = self;
    [(FCCKPrivateSaveRecordsOperation *)v5 setSaveRecordsCompletionBlock:v7];
    [(FCOperation *)self associateChildOperation:v5];
    v6 = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];
    [(FCCKPrivateDatabase *)v6 addOperation:v5];
  }

  else
  {
    [(FCOperation *)self finishedPerformingOperationWithError:0];
  }
}

void __60__FCCKPrivateBatchedSaveRecordsOperation__continueModifying__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v5 fc_isCKErrorWithCode:27])
  {
    [*(a1 + 32) _subdivideRemainingBatches];
    [*(a1 + 32) _continueModifying];
  }

  else if (v5 && [v5 code] != 2)
  {
    [*(a1 + 32) finishedPerformingOperationWithError:v5];
  }

  else
  {
    if (v13)
    {
      v6 = [*(a1 + 32) resultSavedRecords];
      [v6 addObjectsFromArray:v13];
    }

    v7 = [*(a1 + 32) remainingBatchesOfRecordsToSave];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [*(a1 + 32) remainingBatchesOfRecordsToSave];
      [v9 fc_removeFirstObject];
    }

    v10 = [v5 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

    if (v11)
    {
      v12 = [*(a1 + 32) resultErrorsByRecordID];
      [v12 addEntriesFromDictionary:v11];
    }

    [*(a1 + 32) _continueModifying];
  }
}

- (void)_subdivideRemainingBatches
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  v4 = [v3 copy];

  v5 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  [v5 removeAllObjects];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 count] >> 1;
        v13 = [v11 subarrayWithRange:{0, v12}];
        v14 = [v11 subarrayWithRange:{v12, objc_msgSend(v11, "count") - v12}];
        v15 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        [v15 addObject:v13];

        v16 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        [v16 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end