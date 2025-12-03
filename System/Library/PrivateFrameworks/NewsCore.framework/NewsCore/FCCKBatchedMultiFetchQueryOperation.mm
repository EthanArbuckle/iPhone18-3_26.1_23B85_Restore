@interface FCCKBatchedMultiFetchQueryOperation
- (BOOL)validateOperation;
- (FCCKBatchedMultiFetchQueryOperation)init;
- (id)networkEvents;
- (void)_continueFetching;
- (void)operationWillFinishWithError:(id)error;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)database;
- (void)setKnownRecordIDsToEtags:(uint64_t)etags;
- (void)setRecordIDs:(uint64_t)ds;
- (void)setRecordSpecs:(uint64_t)specs;
@end

@implementation FCCKBatchedMultiFetchQueryOperation

- (FCCKBatchedMultiFetchQueryOperation)init
{
  v12.receiver = self;
  v12.super_class = FCCKBatchedMultiFetchQueryOperation;
  v2 = [(FCOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableArray);
    remainingRecordIDBatches = v2->_remainingRecordIDBatches;
    v2->_remainingRecordIDBatches = v3;

    v5 = objc_alloc_init(FCThreadSafeMutableSet);
    resultMissingRecordIDs = v2->_resultMissingRecordIDs;
    v2->_resultMissingRecordIDs = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableArray);
    allErrors = v2->_allErrors;
    v2->_allErrors = v7;

    v9 = objc_alloc_init(FCThreadSafeMutableArray);
    allNetworkEvents = v2->_allNetworkEvents;
    v2->_allNetworkEvents = v9;

    v2->_maxParallelBatches = -1;
  }

  return v2;
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
      v8 = "[FCCKBatchedMultiFetchQueryOperation validateOperation]";
      v9 = 2080;
      v10 = "FCCKBatchedMultiFetchQueryOperation.m";
      v11 = 1024;
      v12 = 56;
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

- (void)prepareOperation
{
  if (self)
  {
    if (!self->_maxBatchSize)
    {
      self->_maxBatchSize = 500;
    }

    v3 = self->_recordIDs;
    v4 = v3;
    if (self->_edgeCacheHint)
    {
      v5 = [(NSArray *)v3 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

      v4 = v5;
    }

    maxBatchSize = self->_maxBatchSize;
  }

  else
  {
    v4 = 0;
    maxBatchSize = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCCKBatchedMultiFetchQueryOperation_prepareOperation__block_invoke;
  v7[3] = &unk_1E7C3C550;
  v7[4] = self;
  [v4 fc_visitSubarraysWithMaxCount:maxBatchSize block:v7];
}

uint64_t __55__FCCKBatchedMultiFetchQueryOperation_prepareOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 472);
  }

  else
  {
    v3 = 0;
  }

  return [v3 addObject:a2];
}

- (void)_continueFetching
{
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__28;
    v16 = __Block_byref_object_dispose__28;
    v17 = 0;
    v2 = self[59];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke;
    v11[3] = &unk_1E7C3C578;
    v11[4] = self;
    v11[5] = &v12;
    [v2 readWriteWithAccessor:v11];

    if ([v13[5] count])
    {
      v3 = dispatch_group_create();
      v4 = v13[5];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_3;
      v8[3] = &unk_1E7C3C5F0;
      v8[4] = self;
      v5 = v3;
      v9 = v5;
      [v4 enumerateObjectsUsingBlock:v8];
      v6 = FCDispatchQueueForQualityOfService([self qualityOfService]);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_6;
      v7[3] = &unk_1E7C36EA0;
      v7[4] = self;
      dispatch_group_notify(v5, v6, v7);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_2;
      v10[3] = &unk_1E7C36EA0;
      v10[4] = self;
      __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_2(v10);
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 408);
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

void __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FCCKMultiFetchQueryOperation);
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 376);
  }

  else
  {
    v7 = 0;
  }

  [(FCCKMultiFetchQueryOperation *)v4 setDatabase:v7];
  [(FCCKMultiFetchQueryOperation *)v5 setRecordIDs:v3];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 392);
  }

  else
  {
    v9 = 0;
  }

  [(FCCKMultiFetchQueryOperation *)v5 setRecordSpecs:v9];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 416);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 fc_subdictionaryForKeys:v3];
  [(FCCKMultiFetchQueryOperation *)v5 setKnownRecordIDsToEtags:v12];

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 424);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 0;
  if (v5)
  {
LABEL_9:
    objc_setProperty_nonatomic_copy(v5, v13, v15, 408);
    v14 = *(a1 + 32);
  }

LABEL_10:
  if (v14)
  {
    v16 = *(v14 + 368);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = 0;
  if (v5)
  {
LABEL_12:
    *(v5 + 368) = v16 & 1;
    v14 = *(a1 + 32);
  }

LABEL_13:
  if (v14)
  {
    v17 = *(v14 + 432);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  if (v5)
  {
LABEL_15:
    *(v5 + 416) = v17;
    v14 = *(a1 + 32);
  }

LABEL_16:
  if (v14)
  {
    v18 = *(v14 + 372);
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = 0;
  if (v5)
  {
LABEL_18:
    *(v5 + 372) = v18;
    v14 = *(a1 + 32);
  }

LABEL_19:
  if (v14)
  {
    v19 = *(v14 + 440);
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v19 = 0;
  if (v5)
  {
LABEL_21:
    objc_setProperty_nonatomic_copy(v5, v13, v19, 432);
  }

LABEL_22:
  dispatch_group_enter(*(a1 + 40));
  objc_initWeak(&location, v5);
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_4;
  newValue[3] = &unk_1E7C3C5A0;
  newValue[4] = *(a1 + 32);
  v21 = v3;
  v29 = v21;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v20, newValue, 440);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_5;
  v24[3] = &unk_1E7C3C5C8;
  v24[4] = *(a1 + 32);
  objc_copyWeak(&v27, &location);
  v22 = v21;
  v25 = v22;
  v26 = *(a1 + 40);
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v23, v24, 448);
  }

  [*(a1 + 32) associateChildOperation:v5];
  [v5 start];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (id)networkEvents
{
  if (self)
  {
    self = [self[62] readOnlyArray];
    v1 = vars8;
  }

  return self;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      v9 = errorCopy;
      v6 = queryCompletionHandler;
      v7 = self->_resultMissingRecordIDs;
      readOnlySet = [(FCThreadSafeMutableSet *)v7 readOnlySet];
      v6[2](v6, readOnlySet, v9);

      errorCopy = v9;
    }
  }
}

void __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 488);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 firstObject];
  [*(a1 + 32) finishedPerformingOperationWithError:v4];
}

uint64_t __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v3 = *(v5 + 448);
    if (v3)
    {
      v6 = *(a1 + 40);
      v8 = v4;
      v3 = v3[2]();
      v4 = v8;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __56__FCCKBatchedMultiFetchQueryOperation__continueFetching__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[62];
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 53);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v7 addObjectsFromArray:v11];

  if ([v5 fc_isCKErrorWithCode:27])
  {
    v12 = [*(a1 + 40) count] >> 1;
    v13 = [*(a1 + 40) subarrayWithRange:{0, v12}];
    v14 = [*(a1 + 40) subarrayWithRange:{v12, objc_msgSend(*(a1 + 40), "count") - v12}];
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 472);
    }

    else
    {
      v16 = 0;
    }

    [v16 addObject:v13];
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 472);
    }

    else
    {
      v18 = 0;
    }

    [v18 addObject:v14];
  }

  else if (v5 && [v5 code] != 2)
  {
    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = *(v30 + 488);
    }

    else
    {
      v31 = 0;
    }

    [v31 addObject:v5];
  }

  else
  {
    v19 = *(a1 + 32);
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = *(v19 + 456);
    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = v20 + 2;
    v22 = *(a1 + 40);
    v23 = v20;
    v24 = objc_loadWeakRetained((a1 + 56));
    v25 = v24;
    v26 = v24 ? *(v24 + 53) : 0;
    v27 = v26;
    v28 = [v27 firstObject];
    (*v21)(v23, v22, v32, v28);

    v19 = *(a1 + 32);
    if (v19)
    {
LABEL_18:
      v29 = *(v19 + 480);
    }

    else
    {
LABEL_29:
      v29 = 0;
    }

    [v29 unionSet:v32];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 376), a2);
  }
}

- (void)setRecordIDs:(uint64_t)ds
{
  if (ds)
  {
    objc_storeStrong((ds + 384), a2);
  }
}

- (void)setRecordSpecs:(uint64_t)specs
{
  if (specs)
  {
    objc_storeStrong((specs + 392), a2);
  }
}

- (void)setKnownRecordIDsToEtags:(uint64_t)etags
{
  if (etags)
  {
    objc_storeStrong((etags + 416), a2);
  }
}

@end