@interface FCFetchOperation
- (FCFetchOperation)init;
- (void)cancel;
- (void)finishExecutingWithError:(id)error;
- (void)finishExecutingWithFetchedObject:(id)object;
- (void)finishExecutingWithResult:(id)result;
- (void)finishExecutingWithStatus:(unint64_t)status;
- (void)finishFromEarlyCancellation;
- (void)operationDidFinishWithError:(id)error;
- (void)takeInputsFromFetchOperation:(id)operation;
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

- (void)finishExecutingWithResult:(id)result
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (!resultCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_result)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (-[FCFetchOperation shouldFailOnMissingObjects](selfCopy, "shouldFailOnMissingObjects") && ![resultCopy status] && objc_msgSend(resultCopy, "anyMissingObjects"))
    {
      cachePolicy = [(FCFetchOperation *)selfCopy cachePolicy];
      v7 = MEMORY[0x1E696ABC0];
      if (cachePolicy == 3)
      {
        missingObjectDescriptions = [resultCopy missingObjectDescriptions];
        v9 = [v7 fc_notCachedErrorWithMissingObjects:missingObjectDescriptions];
      }

      else
      {
        missingObjectDescriptions = [resultCopy missingObjectDescriptions];
        v16 = missingObjectDescriptions;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v9 = [v7 fc_partialFailureErrorWithUserInfo:v11];
      }

      v12 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v9];

      resultCopy = v12;
    }

    objc_storeStrong(&selfCopy->_result, resultCopy);
    objc_sync_exit(selfCopy);

    error = [resultCopy error];
    [(FCOperation *)selfCopy finishedPerformingOperationWithError:error];
    selfCopy = error;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)finishExecutingWithFetchedObject:(id)object
{
  v4 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:object error:0];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)finishExecutingWithStatus:(unint64_t)status
{
  v4 = [FCFetchOperationResult resultWithStatus:status fetchedObject:0 error:0];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)finishExecutingWithError:(id)error
{
  v4 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:error];
  [(FCFetchOperation *)self finishExecutingWithResult:v4];
}

- (void)takeInputsFromFetchOperation:(id)operation
{
  operationCopy = operation;
  -[FCOperation setQualityOfService:](self, "setQualityOfService:", [operationCopy qualityOfService]);
  -[FCOperation setRelativePriority:](self, "setRelativePriority:", [operationCopy relativePriority]);
  -[FCFetchOperation setCachePolicy:](self, "setCachePolicy:", [operationCopy cachePolicy]);
  [operationCopy maximumCachedAge];
  [(FCFetchOperation *)self setMaximumCachedAge:?];
  shouldFailOnMissingObjects = [operationCopy shouldFailOnMissingObjects];

  [(FCFetchOperation *)self setShouldFailOnMissingObjects:shouldFailOnMissingObjects];
}

- (void)operationDidFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionBlock = [(FCFetchOperation *)self fetchCompletionBlock];
  if (errorCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_result)
    {
      v7 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:errorCopy];
      result = selfCopy->_result;
      selfCopy->_result = v7;
    }

    objc_sync_exit(selfCopy);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __48__FCFetchOperation_operationDidFinishWithError___block_invoke;
  v19 = &unk_1E7C37778;
  selfCopy2 = self;
  v21 = fetchCompletionBlock;
  v9 = fetchCompletionBlock;
  v10 = _Block_copy(&v16);
  if ([(FCFetchOperation *)self canSendFetchCompletionSynchronously:v16])
  {
    v10[2](v10);
  }

  else
  {
    fetchCompletionQueue = [(FCFetchOperation *)self fetchCompletionQueue];
    v12 = fetchCompletionQueue;
    if (fetchCompletionQueue)
    {
      v13 = fetchCompletionQueue;
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