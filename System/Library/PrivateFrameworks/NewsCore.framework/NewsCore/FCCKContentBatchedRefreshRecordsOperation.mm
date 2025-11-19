@interface FCCKContentBatchedRefreshRecordsOperation
- (BOOL)validateOperation;
- (FCCKContentBatchedRefreshRecordsOperation)init;
- (void)_continueRefreshing;
- (void)operationWillFinishWithError:(id)a3;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)a1;
@end

@implementation FCCKContentBatchedRefreshRecordsOperation

- (FCCKContentBatchedRefreshRecordsOperation)init
{
  v16.receiver = self;
  v16.super_class = FCCKContentBatchedRefreshRecordsOperation;
  v2 = [(FCOperation *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableArray);
    remainingRecordIDBatches = v2->_remainingRecordIDBatches;
    v2->_remainingRecordIDBatches = v3;

    v5 = objc_alloc_init(FCThreadSafeMutableSet);
    refreshedRecordIDs = v2->_refreshedRecordIDs;
    v2->_refreshedRecordIDs = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableDictionary);
    updatedRecordsByRecordID = v2->_updatedRecordsByRecordID;
    v2->_updatedRecordsByRecordID = v7;

    v9 = objc_alloc_init(FCThreadSafeMutableSet);
    deletedRecordIDs = v2->_deletedRecordIDs;
    v2->_deletedRecordIDs = v9;

    v11 = objc_alloc_init(FCThreadSafeMutableDictionary);
    errorsByRecordID = v2->_errorsByRecordID;
    v2->_errorsByRecordID = v11;

    v13 = objc_alloc_init(FCThreadSafeMutableArray);
    allOperationErrors = v2->_allOperationErrors;
    v2->_allOperationErrors = v13;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v2 = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"refresh operation must have a database"];
    v10 = 136315906;
    v11 = "[FCCKContentBatchedRefreshRecordsOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKContentBatchedRefreshRecordsOperation.m";
    v14 = 1024;
    v15 = 55;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_14:
    recordIDs = 0;
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_5:
  recordIDs = v2->_recordIDs;
LABEL_6:
  if (![(NSArray *)recordIDs count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"refresh operation must have record IDs"];
    v10 = 136315906;
    v11 = "[FCCKContentBatchedRefreshRecordsOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKContentBatchedRefreshRecordsOperation.m";
    v14 = 1024;
    v15 = 56;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
    goto LABEL_12;
  }

  v4 = v2->_database;
  if (v4)
  {
    v5 = v4;
    LOBYTE(v2) = [(NSArray *)v2->_recordIDs count]!= 0;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)prepareOperation
{
  if (self)
  {
    recordIDs = self->_recordIDs;
    if (self->_canaryRecordID)
    {
      v3 = 399;
    }

    else
    {
      v3 = 400;
    }
  }

  else
  {
    recordIDs = 0;
    v3 = 400;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__FCCKContentBatchedRefreshRecordsOperation_prepareOperation__block_invoke;
  v4[3] = &unk_1E7C3C550;
  v4[4] = self;
  [(NSArray *)recordIDs fc_visitSubarraysWithMaxCount:v3 block:v4];
}

uint64_t __61__FCCKContentBatchedRefreshRecordsOperation_prepareOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 424);
  }

  else
  {
    v3 = 0;
  }

  return [v3 addObject:a2];
}

- (void)_continueRefreshing
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__65;
    v16 = __Block_byref_object_dispose__65;
    v17 = 0;
    v2 = a1[53];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke;
    v11[3] = &unk_1E7C44578;
    v11[4] = &v12;
    [v2 readWriteWithAccessor:v11];

    if ([v13[5] count])
    {
      v3 = dispatch_group_create();
      v4 = v13[5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_3;
      v8[3] = &unk_1E7C3C5F0;
      v8[4] = a1;
      v5 = v3;
      v9 = v5;
      [v4 enumerateObjectsUsingBlock:v8];
      v6 = FCDispatchQueueForQualityOfService([a1 qualityOfService]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_6;
      block[3] = &unk_1E7C36EA0;
      block[4] = a1;
      dispatch_group_notify(v5, v6, block);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_2;
      v10[3] = &unk_1E7C36EA0;
      v10[4] = a1;
      __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_2(v10);
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 removeAllObjects];
}

void __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = v3;
  if (v5)
  {
    v7 = *(v5 + 408);
    v6 = v3;
    if (v7)
    {
      v8 = v7;
      v6 = [v4 arrayByAddingObject:v8];
    }
  }

  v9 = objc_alloc_init(FCCKContentFetchOperation);
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 376);
  }

  else
  {
    v12 = 0;
  }

  [(FCCKContentFetchOperation *)v9 setDatabase:v12];
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v13, v6, 384);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 392);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 fc_subdictionaryForKeys:v4];
  [(FCCKContentFetchOperation *)v10 setRecordIDsToETags:v16];

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 400);
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = 0;
  if (v10)
  {
LABEL_12:
    objc_setProperty_nonatomic_copy(v10, v17, v19, 400);
  }

LABEL_13:
  v20 = [MEMORY[0x1E695DFA8] set];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v22 = [MEMORY[0x1E695DFA8] set];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_4;
  newValue[3] = &unk_1E7C445A0;
  v24 = v20;
  v44 = v24;
  v25 = v21;
  v45 = v25;
  v26 = v22;
  v46 = v26;
  v28 = v23;
  v47 = v28;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v27, newValue, 416);
  }

  dispatch_group_enter(*(a1 + 40));
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_5;
  v36[3] = &unk_1E7C445C8;
  v29 = *(a1 + 40);
  v36[4] = *(a1 + 32);
  v37 = v24;
  v38 = v26;
  v39 = v28;
  v40 = v25;
  v41 = v4;
  v42 = v29;
  v30 = v4;
  v31 = v25;
  v32 = v28;
  v33 = v26;
  v35 = v24;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v34, v36, 424);
  }

  [*(a1 + 32) associateChildOperation:v10];
  [(FCOperation *)v10 start];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  if (self)
  {
    refreshRecordsCompletionBlock = self->_refreshRecordsCompletionBlock;
    if (refreshRecordsCompletionBlock)
    {
      v13 = v4;
      v6 = refreshRecordsCompletionBlock;
      v7 = self->_refreshedRecordIDs;
      v8 = [(FCThreadSafeMutableSet *)v7 allObjects];
      v9 = self->_updatedRecordsByRecordID;
      v10 = [(FCThreadSafeMutableDictionary *)v9 readOnlyDictionary];
      v11 = self->_deletedRecordIDs;
      v12 = [(FCThreadSafeMutableSet *)v11 allObjects];
      v6[2](v6, v8, v10, v12, v13);

      v4 = v13;
    }
  }
}

void __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 464);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 firstObject];
  [*(a1 + 32) finishedPerformingOperationWithError:v4];
}

void __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      if ([v8 code] == 11 || objc_msgSend(v9, "code") == 2003)
      {
        [a1[6] addObject:v7];
      }

      else
      {
        [a1[7] setObject:v9 forKey:v7];
      }
    }

    else
    {
      [a1[4] addObject:v7];
      [a1[5] fc_safelySetObjectAllowingNil:v10 forKey:v7];
    }
  }
}

void __64__FCCKContentBatchedRefreshRecordsOperation__continueRefreshing__block_invoke_5(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = *(a1 + 32);
  if (!v3 || *(v3 + 368) != 1)
  {
    v9 = (a1 + 48);
    [*(a1 + 40) unionSet:*(a1 + 48)];
    goto LABEL_9;
  }

  v4 = *(v3 + 408);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = v6 ? *(v6 + 408) : 0;
    v8 = [*(a1 + 40) containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = (a1 + 48);
LABEL_9:
      [*v9 removeAllObjects];
    }
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_41;
  }

  if (!*(v10 + 408))
  {
    goto LABEL_19;
  }

  [*(a1 + 48) removeObject:?];
  v11 = *(a1 + 32);
  v12 = v11 ? *(v11 + 408) : 0;
  [*(a1 + 40) removeObject:v12];
  v13 = *(a1 + 32);
  v14 = v13 ? *(v13 + 408) : 0;
  [*(a1 + 56) removeObjectForKey:v14];
  v15 = *(a1 + 32);
  v16 = v15 ? *(v15 + 408) : 0;
  [*(a1 + 64) removeObjectForKey:v16];
  v10 = *(a1 + 32);
  if (v10)
  {
LABEL_19:
    v17 = *(v10 + 432);
  }

  else
  {
LABEL_41:
    v17 = 0;
  }

  [v17 unionSet:*(a1 + 40)];
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 456);
  }

  else
  {
    v19 = 0;
  }

  [v19 addEntriesFromDictionary:*(a1 + 56)];
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 448);
  }

  else
  {
    v21 = 0;
  }

  [v21 unionSet:*(a1 + 48)];
  if ([v33 fc_isCKErrorWithCode:27])
  {
    v22 = [*(a1 + 72) count] >> 1;
    v23 = [*(a1 + 72) subarrayWithRange:{0, v22}];
    v24 = [*(a1 + 72) subarrayWithRange:{v22, objc_msgSend(*(a1 + 72), "count") - v22}];
    v25 = *(a1 + 32);
    if (v25)
    {
      v26 = *(v25 + 424);
    }

    else
    {
      v26 = 0;
    }

    [v26 addObject:v23];
    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = *(v27 + 424);
    }

    else
    {
      v28 = 0;
    }

    [v28 addObject:v24];
  }

  else if (v33 && [v33 code] != 2)
  {
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = *(v31 + 464);
    }

    else
    {
      v32 = 0;
    }

    [v32 addObject:v33];
  }

  else
  {
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = *(v29 + 440);
    }

    else
    {
      v30 = 0;
    }

    [v30 addEntriesFromDictionary:*(a1 + 64)];
  }

  dispatch_group_leave(*(a1 + 80));
}

- (void)setDatabase:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 376), a2);
  }
}

@end