@interface FCCKPrivateBatchedDeleteRecordsOperation
- (BOOL)validateOperation;
- (FCCKPrivateBatchedDeleteRecordsOperation)init;
- (void)_continueModifying;
- (void)operationWillFinishWithError:(id)a3;
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
  v3 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v4 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];
  v5 = v4 != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)performOperation
{
  v3 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self recordIDsToDelete];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self remainingBatchesOfRecordIDsToDelete];
    v6 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self recordIDsToDelete];
    [v5 addObject:v6];
  }

  [(FCCKPrivateBatchedDeleteRecordsOperation *)self _continueModifying];
}

- (void)operationWillFinishWithError:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v5 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultErrorsByRecordID];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E695B740];
      v15 = *MEMORY[0x1E695B798];
      v9 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultErrorsByRecordID];
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v4 = [v7 errorWithDomain:v8 code:2 userInfo:v10];
    }

    else
    {
      v4 = 0;
    }
  }

  v11 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self deleteRecordsCompletionBlock];

  if (v11)
  {
    v12 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self deleteRecordsCompletionBlock];
    v13 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self resultDeletedRecordIDs];
    (v12)[2](v12, v13, v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_continueModifying
{
  v3 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self remainingBatchesOfRecordIDsToDelete];
  v4 = [v3 firstObject];

  if ([v4 count])
  {
    v5 = objc_alloc_init(FCCKPrivateDeleteRecordsOperation);
    [(FCCKPrivateDeleteRecordsOperation *)v5 setRecordIDsToDelete:v4];
    [(FCCKPrivateDatabaseOperation *)v5 setSkipPreflight:[(FCCKPrivateBatchedDeleteRecordsOperation *)self skipPreflight]];
    [(FCCKPrivateDatabaseOperation *)v5 setHandleIdentityLoss:[(FCCKPrivateBatchedDeleteRecordsOperation *)self handleIdentityLoss]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__FCCKPrivateBatchedDeleteRecordsOperation__continueModifying__block_invoke;
    v7[3] = &unk_1E7C37750;
    v7[4] = self;
    [(FCCKPrivateDeleteRecordsOperation *)v5 setDeleteRecordsCompletionBlock:v7];
    [(FCOperation *)self associateChildOperation:v5];
    v6 = [(FCCKPrivateBatchedDeleteRecordsOperation *)self database];
    [(FCCKPrivateDatabase *)v6 addOperation:v5];
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