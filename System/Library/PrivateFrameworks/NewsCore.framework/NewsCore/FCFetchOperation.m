@interface FCFetchOperation
- (FCFetchOperation)init;
- (void)cancel;
- (void)finishExecutingWithError:(id)a3;
- (void)finishExecutingWithFetchedObject:(id)a3;
- (void)finishExecutingWithResult:(id)a3;
- (void)finishExecutingWithStatus:(unint64_t)a3;
- (void)finishFromEarlyCancellation;
- (void)operationDidFinishWithError:(id)a3;
- (void)takeInputsFromFetchOperation:(id)a3;
@end

@implementation FCFetchOperation

- (FCFetchOperation)init
{
  v3.receiver = self;
  v3.super_class = FCFetchOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_cachePolicy = 0;
  }

  return result;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = FCFetchOperation;
  [(FCOperation *)&v4 cancel];
  if ([(FCOperation *)self hasOperationStarted])
  {
    v3 = [FCFetchOperationResult resultWithStatus:1 fetchedObject:0 error:0];
    [(FCFetchOperation *)self finishExecutingWithResult:v3];
  }
}

- (void)finishExecutingWithResult:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't finish executing a fetch operation without a result"];
    *buf = 136315906;
    v18 = "[FCFetchOperation finishExecutingWithResult:]";
    v19 = 2080;
    v20 = "FCFetchOperation.m";
    v21 = 1024;
    v22 = 73;
    v23 = 2114;
    v24 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = self;
  objc_sync_enter(v5);
  if (v5->_result)
  {
    objc_sync_exit(v5);
  }

  else
  {
    if (-[FCFetchOperation shouldFailOnMissingObjects](v5, "shouldFailOnMissingObjects") && ![v4 status] && objc_msgSend(v4, "anyMissingObjects"))
    {
      v6 = [(FCFetchOperation *)v5 cachePolicy];
      v7 = MEMORY[0x1E696ABC0];
      if (v6 == 3)
      {
        v8 = [v4 missingObjectDescriptions];
        v9 = [v7 fc_notCachedErrorWithMissingObjects:v8];
      }

      else
      {
        v8 = [v4 missingObjectDescriptions];
        v16 = v8;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v9 = [v7 fc_partialFailureErrorWithUserInfo:v11];
      }

      v12 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v9];

      v4 = v12;
    }

    objc_storeStrong(&v5->_result, v4);
    objc_sync_exit(v5);

    v13 = [v4 error];
    [(FCOperation *)v5 finishedPerformingOperationWithError:v13];
    v5 = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)finishExecutingWithFetchedObject:(id)a3
{
  v4 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:a3 error:0];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)finishExecutingWithStatus:(unint64_t)a3
{
  v4 = [FCFetchOperationResult resultWithStatus:a3 fetchedObject:0 error:0];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)finishExecutingWithError:(id)a3
{
  v4 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:a3];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)takeInputsFromFetchOperation:(id)a3
{
  v4 = a3;
  -[FCOperation setQualityOfService:](self, "setQualityOfService:", [v4 qualityOfService]);
  -[FCOperation setRelativePriority:](self, "setRelativePriority:", [v4 relativePriority]);
  -[FCFetchOperation setCachePolicy:](self, "setCachePolicy:", [v4 cachePolicy]);
  [v4 maximumCachedAge];
  [(FCFetchOperation *)self setMaximumCachedAge:?];
  v5 = [v4 shouldFailOnMissingObjects];

  [(FCFetchOperation *)self setShouldFailOnMissingObjects:v5];
}

- (void)operationDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(FCFetchOperation *)self fetchCompletionBlock];
  if (v4)
  {
    v6 = self;
    objc_sync_enter(v6);
    if (!v6->_result)
    {
      v7 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v4];
      result = v6->_result;
      v6->_result = v7;
    }

    objc_sync_exit(v6);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __48__FCFetchOperation_operationDidFinishWithError___block_invoke;
  v19 = &unk_1E7C37778;
  v20 = self;
  v21 = v5;
  v9 = v5;
  v10 = _Block_copy(&v16);
  if ([(FCFetchOperation *)self canSendFetchCompletionSynchronously:v16])
  {
    v10[2](v10);
  }

  else
  {
    v11 = [(FCFetchOperation *)self fetchCompletionQueue];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = FCDispatchQueueForQualityOfService([(FCFetchOperation *)self qualityOfService]);
    }

    v14 = v13;

    v15 = FCBlockWithQualityOfService([(FCFetchOperation *)self qualityOfService], v10);
    dispatch_async(v14, v15);
  }
}

void __48__FCFetchOperation_operationDidFinishWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) result];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)finishFromEarlyCancellation
{
  v3 = [FCFetchOperationResult resultWithStatus:1 fetchedObject:0 error:0];
  [(FCFetchOperation *)self finishExecutingWithResult:v3];
}

@end