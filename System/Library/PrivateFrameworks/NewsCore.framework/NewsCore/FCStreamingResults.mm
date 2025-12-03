@interface FCStreamingResults
- (BOOL)isFinished;
- (FCStreamingResults)init;
- (FCStreamingResults)initWithResults:(id)results followedByStream:(id)stream;
- (FCStreamingResults)initWithStream:(id)stream;
- (_NSRange)range;
- (id)array;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectsInRange:(_NSRange)range;
- (unint64_t)count;
- (void)addObserver:(id)observer;
- (void)fetchObjectsUpToCount:(unint64_t)count qualityOfService:(int64_t)service batchSize:(unint64_t)size completion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation FCStreamingResults

- (FCStreamingResults)init
{
  v3 = objc_opt_new();
  v4 = [(FCStreamingResults *)self initWithStream:v3];

  return v4;
}

- (FCStreamingResults)initWithStream:(id)stream
{
  v26 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  if (!streamCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stream != nil"];
    *buf = 136315906;
    v19 = "[FCStreamingResults initWithStream:]";
    v20 = 2080;
    v21 = "FCStreamingResults.m";
    v22 = 1024;
    v23 = 33;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = FCStreamingResults;
  v6 = [(FCStreamingResults *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingStream, stream);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v7->_results;
    v7->_results = v8;

    v10 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v10;

    v12 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCStreamingResults)initWithResults:(id)results followedByStream:(id)stream
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  streamCopy = stream;
  if (!streamCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stream != nil"];
    *buf = 136315906;
    v14 = "[FCStreamingResults initWithResults:followedByStream:]";
    v15 = 2080;
    v16 = "FCStreamingResults.m";
    v17 = 1024;
    v18 = 48;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [(FCStreamingResults *)self initWithStream:streamCopy];
  v9 = v8;
  if (resultsCopy && v8)
  {
    [(NSMutableArray *)v8->_results addObjectsFromArray:resultsCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isFinished
{
  underlyingStream = [(FCStreamingResults *)self underlyingStream];
  isFinished = [underlyingStream isFinished];

  return isFinished;
}

- (unint64_t)count
{
  [MEMORY[0x1E696AF00] isMainThread];
  results = [(FCStreamingResults *)self results];
  v4 = [results count];

  return v4;
}

- (_NSRange)range
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [(FCStreamingResults *)self count];
  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

- (id)objectAtIndex:(unint64_t)index
{
  [MEMORY[0x1E696AF00] isMainThread];
  results = [(FCStreamingResults *)self results];
  v6 = [results count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    results2 = [(FCStreamingResults *)self results];
    v8 = [results2 objectAtIndex:index];
  }

  return v8;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  [MEMORY[0x1E696AF00] isMainThread];

  return [(FCStreamingResults *)self objectAtIndex:subscript];
}

- (id)objectsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [MEMORY[0x1E696AF00] isMainThread];
  results = [(FCStreamingResults *)self results];
  v7 = [results subarrayWithRange:{location, length}];

  return v7;
}

- (id)array
{
  [MEMORY[0x1E696AF00] isMainThread];

  return [(FCStreamingResults *)self results];
}

- (void)fetchObjectsUpToCount:(unint64_t)count qualityOfService:(int64_t)service batchSize:(unint64_t)size completion:(id)completion
{
  completionCopy = completion;
  serialQueue = [(FCStreamingResults *)self serialQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__FCStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke;
  v13[3] = &unk_1E7C41758;
  countCopy = count;
  sizeCopy = size;
  serviceCopy = service;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [serialQueue enqueueBlockForMainThread:v13];
}

void __82__FCStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) count];
  if (*(a1 + 48) <= v4 || (v5 = v4, [*(a1 + 32) underlyingStream], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isFinished"), v6, (v7 & 1) != 0))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    v3[2](v3);
  }

  else
  {
    if (*(a1 + 48) - v5 >= *(a1 + 56))
    {
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = *(a1 + 48) - v5;
    }

    v10 = [*(a1 + 32) underlyingStream];
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__FCStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke_2;
    v16[3] = &unk_1E7C41730;
    v13 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v19 = v5;
    v20 = v14;
    v21 = v12;
    v22 = v11;
    v17 = v13;
    v18 = v3;
    v15 = [v10 fetchMoreResultsWithLimit:v9 qualityOfService:v12 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v16];
  }
}

void __82__FCStreamingResults_fetchObjectsUpToCount_qualityOfService_batchSize_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v32 = a3;
  v6 = [*(a1 + 32) results];
  v7 = [v6 count];
  v8 = *(a1 + 56);

  if (v7 != v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"async results are out of sync"];
    *buf = 136315906;
    v45 = "[FCStreamingResults fetchObjectsUpToCount:qualityOfService:batchSize:completion:]_block_invoke_2";
    v46 = 2080;
    v47 = "FCStreamingResults.m";
    v48 = 1024;
    v49 = 154;
    v50 = 2114;
    v51 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9 = [*(a1 + 32) results];
  [v9 addObjectsFromArray:v5];

  v10 = *(a1 + 56);
  v33 = v5;
  v11 = [v5 count];
  v12 = [*(a1 + 32) observers];
  v13 = [v12 copy];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v39;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v19 results:*(a1 + 32) didFetchObjectsInRange:{v10, v11}];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v16);
  }

  v20 = [*(a1 + 32) underlyingStream];
  v21 = [v20 isFinished];

  if (v21)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v14;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v27 resultsDidFinish:*(a1 + 32)];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }
  }

  if (v32)
  {
    v28 = *(a1 + 40);
    v29 = v33;
    if (v28)
    {
      (*(v28 + 16))(v28, v32);
    }
  }

  else
  {
    [*(a1 + 32) fetchObjectsUpToCount:*(a1 + 64) qualityOfService:*(a1 + 72) batchSize:*(a1 + 80) completion:*(a1 + 40)];
    v29 = v33;
  }

  (*(*(a1 + 48) + 16))();

  v30 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCStreamingResults *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", observerCopy];
      *buf = 136315906;
      v11 = "[FCStreamingResults addObserver:]";
      v12 = 2080;
      v13 = "FCStreamingResults.m";
      v14 = 1024;
      v15 = 208;
      v16 = 2114;
      v17 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    observers2 = [(FCStreamingResults *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCStreamingResults addObserver:]";
    v12 = 2080;
    v13 = "FCStreamingResults.m";
    v14 = 1024;
    v15 = 204;
    v16 = 2114;
    v17 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCStreamingResults *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v8 = "[FCStreamingResults removeObserver:]";
    v9 = 2080;
    v10 = "FCStreamingResults.m";
    v11 = 1024;
    v12 = 217;
    v13 = 2114;
    v14 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

@end