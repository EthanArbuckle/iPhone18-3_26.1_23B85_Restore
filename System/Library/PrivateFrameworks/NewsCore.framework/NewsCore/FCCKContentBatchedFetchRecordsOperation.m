@interface FCCKContentBatchedFetchRecordsOperation
- (BOOL)validateOperation;
- (FCCKContentBatchedFetchRecordsOperation)init;
- (void)_continueFetching;
- (void)operationWillFinishWithError:(id)a3;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)a1;
@end

@implementation FCCKContentBatchedFetchRecordsOperation

- (FCCKContentBatchedFetchRecordsOperation)init
{
  v10.receiver = self;
  v10.super_class = FCCKContentBatchedFetchRecordsOperation;
  v2 = [(FCOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableArray);
    remainingRecordIDBatches = v2->_remainingRecordIDBatches;
    v2->_remainingRecordIDBatches = v3;

    v5 = objc_alloc_init(FCThreadSafeMutableSet);
    handledRecordIDs = v2->_handledRecordIDs;
    v2->_handledRecordIDs = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableArray);
    allOperationErrors = v2->_allOperationErrors;
    v2->_allOperationErrors = v7;

    v2->_maxParallelBatches = -1;
  }

  return v2;
}

- (void)prepareOperation
{
  v2 = self;
  if (self)
  {
    if (self->_maxBatchSize - 401 <= 0xFFFFFFFFFFFFFE6FLL)
    {
      self->_maxBatchSize = 400;
    }

    self = self->_recordIDs;
  }

  if ([(FCCKContentBatchedFetchRecordsOperation *)self count])
  {
    if (v2)
    {
      v3 = v2->_recordIDs;
      maxBatchSize = v2->_maxBatchSize;
    }

    else
    {
      v3 = 0;
      maxBatchSize = 0;
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__FCCKContentBatchedFetchRecordsOperation_prepareOperation__block_invoke;
    v5[3] = &unk_1E7C3C550;
    v5[4] = v2;
    [(NSArray *)v3 fc_visitSubarraysWithMaxCount:maxBatchSize block:v5];
  }
}

uint64_t __59__FCCKContentBatchedFetchRecordsOperation_prepareOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 432);
  }

  else
  {
    v3 = 0;
  }

  return [v3 addObject:a2];
}

- (void)_continueFetching
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__71;
    v16 = __Block_byref_object_dispose__71;
    v17 = 0;
    v2 = a1[54];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke;
    v11[3] = &unk_1E7C3C578;
    v11[4] = a1;
    v11[5] = &v12;
    [v2 readWriteWithAccessor:v11];

    if ([v13[5] count])
    {
      v3 = dispatch_group_create();
      v4 = v13[5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_3;
      v8[3] = &unk_1E7C3C5F0;
      v8[4] = a1;
      v5 = v3;
      v9 = v5;
      [v4 enumerateObjectsUsingBlock:v8];
      v6 = FCDispatchQueueForQualityOfService([a1 qualityOfService]);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_7;
      v7[3] = &unk_1E7C36EA0;
      v7[4] = a1;
      dispatch_group_notify(v5, v6, v7);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_2;
      v10[3] = &unk_1E7C36EA0;
      v10[4] = a1;
      __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_2(v10);
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 400);
  }

  else
  {
    v4 = 0;
  }

  v8 = a2;
  v5 = [v8 fc_subarrayWithMaxCount:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v8 removeObjectsInRange:{0, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count")}];
}

void __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FCCKContentFetchOperation);
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 368);
  }

  else
  {
    v7 = 0;
  }

  [(FCCKContentFetchOperation *)v4 setDatabase:v7];
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v8, v3, 384);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 384);
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (v5)
  {
LABEL_7:
    objc_setProperty_nonatomic_copy(v5, v8, v10, 400);
    v9 = *(a1 + 32);
  }

LABEL_8:
  if (v9)
  {
    v11 = *(v9 + 408);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (v5)
  {
LABEL_10:
    v5->_optimizationPolicy = v11;
    v9 = *(a1 + 32);
  }

LABEL_11:
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_4;
  newValue[3] = &unk_1E7C45048;
  newValue[4] = v9;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v8, newValue, 416);
  }

  dispatch_group_enter(*(a1 + 40));
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_6;
  v19 = &unk_1E7C36E78;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v20 = v3;
  v21 = v12;
  v22 = v13;
  v15 = v3;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v14, &v16, 424);
  }

  [*(a1 + 32) associateChildOperation:{v5, v16, v17, v18, v19}];
  [(FCOperation *)v5 start];
}

- (BOOL)validateOperation
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self || (database = self->_database) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fetch operation must have a database"];
      v7 = 136315906;
      v8 = "[FCCKContentBatchedFetchRecordsOperation validateOperation]";
      v9 = 2080;
      v10 = "FCCKContentBatchedFetchRecordsOperation.m";
      v11 = 1024;
      v12 = 48;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);

      if (self)
      {
        goto LABEL_5;
      }
    }

    else if (self)
    {
LABEL_5:
      database = self->_database;
      goto LABEL_6;
    }

    database = 0;
  }

LABEL_6:
  result = database != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)operationWillFinishWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (self)
    {
      recordIDs = self->_recordIDs;
    }

    else
    {
      recordIDs = 0;
    }

    v6 = recordIDs;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          if (self)
          {
            if (![(FCThreadSafeMutableSet *)self->_handledRecordIDs containsObject:*(*(&v16 + 1) + 8 * v10)])
            {
              perRecordCompletionBlock = self->_perRecordCompletionBlock;
              if (perRecordCompletionBlock)
              {
                perRecordCompletionBlock[2](perRecordCompletionBlock, v11, 0, v4);
              }
            }
          }

          else
          {
            [0 containsObject:{*(*(&v16 + 1) + 8 * v10), v16}];
          }

          ++v10;
        }

        while (v8 != v10);
        v13 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v8 = v13;
      }

      while (v13);
    }
  }

  if (self)
  {
    fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
    if (fetchRecordsCompletionBlock)
    {
      fetchRecordsCompletionBlock[2](fetchRecordsCompletionBlock, v4);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 448);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 firstObject];
  [*(a1 + 32) finishedPerformingOperationWithError:v4];
}

void __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = v9 ? *(v9 + 440) : 0;
    [v10 addObject:v7];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 416);
      if (v12)
      {
        (*(v12 + 16))(v12, v7, v13, v8);
      }
    }
  }
}

void __60__FCCKContentBatchedFetchRecordsOperation__continueFetching__block_invoke_6(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 fc_isCKErrorWithCode:27])
  {
    v3 = [*(a1 + 32) count] >> 1;
    v4 = [*(a1 + 32) subarrayWithRange:{0, v3}];
    v5 = [*(a1 + 32) subarrayWithRange:{v3, objc_msgSend(*(a1 + 32), "count") - v3}];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 432);
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:v4];
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 432);
    }

    else
    {
      v9 = 0;
    }

    [v9 addObject:v5];
  }

  else if (v12 && [v12 code] != 2)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 448);
    }

    else
    {
      v11 = 0;
    }

    [v11 addObject:v12];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)setDatabase:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 368), a2);
  }
}

@end