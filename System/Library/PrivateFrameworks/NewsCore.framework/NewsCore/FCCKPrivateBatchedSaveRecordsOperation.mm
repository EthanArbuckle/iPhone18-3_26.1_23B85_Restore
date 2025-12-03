@interface FCCKPrivateBatchedSaveRecordsOperation
- (BOOL)validateOperation;
- (FCCKPrivateBatchedSaveRecordsOperation)init;
- (void)_continueModifying;
- (void)_subdivideRemainingBatches;
- (void)operationWillFinishWithError:(id)error;
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
  database = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];

  if (!database && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  database2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];
  v5 = database2 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)performOperation
{
  recordsToSave = [(FCCKPrivateBatchedSaveRecordsOperation *)self recordsToSave];
  v4 = [recordsToSave count];

  if (v4)
  {
    remainingBatchesOfRecordsToSave = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
    recordsToSave2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self recordsToSave];
    [remainingBatchesOfRecordsToSave addObject:recordsToSave2];

    remainingBatchesOfRecordsToSave2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
    firstObject = [remainingBatchesOfRecordsToSave2 firstObject];
    v9 = [firstObject count];

    if (v9 >= 0x191)
    {
      do
      {
        [(FCCKPrivateBatchedSaveRecordsOperation *)self _subdivideRemainingBatches];
        remainingBatchesOfRecordsToSave3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        firstObject2 = [remainingBatchesOfRecordsToSave3 firstObject];
        v12 = [firstObject2 count];
      }

      while (v12 > 0x190);
    }
  }

  [(FCCKPrivateBatchedSaveRecordsOperation *)self _continueModifying];
}

- (void)operationWillFinishWithError:(id)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    resultErrorsByRecordID = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultErrorsByRecordID];
    v6 = [resultErrorsByRecordID count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E695B740];
      v15 = *MEMORY[0x1E695B798];
      resultErrorsByRecordID2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultErrorsByRecordID];
      v16[0] = resultErrorsByRecordID2;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      errorCopy = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    }

    else
    {
      errorCopy = 0;
    }
  }

  saveRecordsCompletionBlock = [(FCCKPrivateBatchedSaveRecordsOperation *)self saveRecordsCompletionBlock];

  if (saveRecordsCompletionBlock)
  {
    saveRecordsCompletionBlock2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self saveRecordsCompletionBlock];
    resultSavedRecords = [(FCCKPrivateBatchedSaveRecordsOperation *)self resultSavedRecords];
    (saveRecordsCompletionBlock2)[2](saveRecordsCompletionBlock2, resultSavedRecords, errorCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_continueModifying
{
  remainingBatchesOfRecordsToSave = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  firstObject = [remainingBatchesOfRecordsToSave firstObject];

  if ([firstObject count])
  {
    v5 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    [(FCCKPrivateSaveRecordsOperation *)v5 setRecordsToSave:firstObject];
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
    database = [(FCCKPrivateBatchedSaveRecordsOperation *)self database];
    [(FCCKPrivateDatabase *)database addOperation:v5];
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
  remainingBatchesOfRecordsToSave = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  v4 = [remainingBatchesOfRecordsToSave copy];

  remainingBatchesOfRecordsToSave2 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
  [remainingBatchesOfRecordsToSave2 removeAllObjects];

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
        remainingBatchesOfRecordsToSave3 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        [remainingBatchesOfRecordsToSave3 addObject:v13];

        remainingBatchesOfRecordsToSave4 = [(FCCKPrivateBatchedSaveRecordsOperation *)self remainingBatchesOfRecordsToSave];
        [remainingBatchesOfRecordsToSave4 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end