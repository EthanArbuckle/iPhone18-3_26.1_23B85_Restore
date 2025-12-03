@interface FCCKPrivateBatchedDeleteRecordsOperation
- (BOOL)validateOperation;
- (FCCKPrivateBatchedDeleteRecordsOperation)init;
- (void)_continueModifying;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCKPrivateBatchedDeleteRecordsOperation

- (FCCKPrivateBatchedDeleteRecordsOperation)init
{
  v11.receiver = self;
  v11.super_class = FCCKPrivateBatchedDeleteRecordsOperation;
  v2 = [(FCOperation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_skipPreflight = 0;
    v2->_handleIdentityLoss = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    remainingBatchesOfRecordIDsToDelete = v3->_remainingBatchesOfRecordIDsToDelete;
    v3->_remainingBatchesOfRecordIDsToDelete = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultDeletedRecordIDs = v3->_resultDeletedRecordIDs;
    v3->_resultDeletedRecordIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultErrorsByRecordID = v3->_resultErrorsByRecordID;
    v3->_resultErrorsByRecordID = v8;
  }

  return v3;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  database = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];

  if (!database && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"modify operation must have a database"];
    v9 = 136315906;
    v10 = "[FCCKPrivateBatchedDeleteRecordsOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateBatchedDeleteRecordsOperation.m";
    v13 = 1024;
    v14 = 46;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  database2 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];
  v5 = database2 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)performOperation
{
  recordIDsToDelete = [(FCCKPrivateBatchedDeleteRecordsOperation *)self recordIDsToDelete];
  v4 = [recordIDsToDelete count];

  if (v4)
  {
    remainingBatchesOfRecordIDsToDelete = [(FCCKPrivateBatchedDeleteRecordsOperation *)self remainingBatchesOfRecordIDsToDelete];
    recordIDsToDelete2 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self recordIDsToDelete];
    [remainingBatchesOfRecordIDsToDelete addObject:recordIDsToDelete2];
  }

  [(FCCKPrivateBatchedDeleteRecordsOperation *)self _continueModifying];
}

- (void)operationWillFinishWithError:(id)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    resultErrorsByRecordID = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultErrorsByRecordID];
    v6 = [resultErrorsByRecordID count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E695B740];
      v15 = *MEMORY[0x1E695B798];
      resultErrorsByRecordID2 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultErrorsByRecordID];
      v16[0] = resultErrorsByRecordID2;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      errorCopy = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    }

    else
    {
      errorCopy = 0;
    }
  }

  deleteRecordsCompletionBlock = [(FCCKPrivateBatchedDeleteRecordsOperation *)self deleteRecordsCompletionBlock];

  if (deleteRecordsCompletionBlock)
  {
    deleteRecordsCompletionBlock2 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self deleteRecordsCompletionBlock];
    resultDeletedRecordIDs = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultDeletedRecordIDs];
    (deleteRecordsCompletionBlock2)[2](deleteRecordsCompletionBlock2, resultDeletedRecordIDs, errorCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_continueModifying
{
  remainingBatchesOfRecordIDsToDelete = [(FCCKPrivateBatchedDeleteRecordsOperation *)self remainingBatchesOfRecordIDsToDelete];
  firstObject = [remainingBatchesOfRecordIDsToDelete firstObject];

  if ([firstObject count])
  {
    v5 = objc_alloc_init(FCCKPrivateDeleteRecordsOperation);
    [(FCCKPrivateDeleteRecordsOperation *)v5 setRecordIDsToDelete:firstObject];
    [(FCCKPrivateDatabaseOperation *)v5 setSkipPreflight:[(FCCKPrivateBatchedDeleteRecordsOperation *)self skipPreflight]];
    [(FCCKPrivateDatabaseOperation *)v5 setHandleIdentityLoss:[(FCCKPrivateBatchedDeleteRecordsOperation *)self handleIdentityLoss]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__FCCKPrivateBatchedDeleteRecordsOperation__continueModifying__block_invoke;
    v7[3] = &unk_1E7C37750;
    v7[4] = self;
    [(FCCKPrivateDeleteRecordsOperation *)v5 setDeleteRecordsCompletionBlock:v7];
    [(FCOperation *)self associateChildOperation:v5];
    database = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];
    [(FCCKPrivateDatabase *)database addOperation:v5];
  }

  else
  {
    [(FCOperation *)self finishedPerformingOperationWithError:0];
  }
}

void __62__FCCKPrivateBatchedDeleteRecordsOperation__continueModifying__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v5 = a3;
  if ([v5 fc_isCKErrorWithCode:27])
  {
    v25 = a1;
    v6 = [*(a1 + 32) remainingBatchesOfRecordIDsToDelete];
    v7 = [v6 copy];
    [v6 removeAllObjects];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 count] >> 1;
          v15 = [v13 subarrayWithRange:{0, v14}];
          v16 = [v13 subarrayWithRange:{v14, objc_msgSend(v13, "count") - v14}];
          [v6 addObject:v15];
          [v6 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    [*(v25 + 32) _continueModifying];
  }

  else if (v5 && [v5 code] != 2)
  {
    [*(a1 + 32) finishedPerformingOperationWithError:v5];
  }

  else
  {
    if (v26)
    {
      v17 = [*(a1 + 32) resultDeletedRecordIDs];
      [v17 addObjectsFromArray:v26];
    }

    v18 = [*(a1 + 32) remainingBatchesOfRecordIDsToDelete];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [*(a1 + 32) remainingBatchesOfRecordIDsToDelete];
      [v20 fc_removeFirstObject];
    }

    v21 = [v5 userInfo];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

    if (v22)
    {
      v23 = [*(a1 + 32) resultErrorsByRecordID];
      [v23 addEntriesFromDictionary:v22];
    }

    [*(a1 + 32) _continueModifying];
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end