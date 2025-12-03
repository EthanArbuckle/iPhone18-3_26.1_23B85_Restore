@interface FCFeedPrewarmer
- (FCFeedPrewarmer)initWithContentContext:(id)context;
- (void)finishPrewarmingRequestForKey:(id)key completion:(id)completion;
- (void)startPrewarmingRequest:(id)request;
@end

@implementation FCFeedPrewarmer

- (FCFeedPrewarmer)initWithContentContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = FCFeedPrewarmer;
  v6 = [(FCFeedPrewarmer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
    v8 = objc_alloc_init(FCThreadSafeMutableDictionary);
    prewarmOperations = v7->_prewarmOperations;
    v7->_prewarmOperations = v8;
  }

  return v7;
}

- (void)startPrewarmingRequest:(id)request
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [FCFeedPrewarmOperation alloc];
  contentContext = [(FCFeedPrewarmer *)self contentContext];
  v7 = [(FCFeedPrewarmOperation *)v5 initWithPrewarmRequest:requestCopy contentContext:contentContext];

  [(FCOperation *)v7 setQualityOfService:25];
  [(FCOperation *)v7 setRelativePriority:1];
  prewarmOperations = [(FCFeedPrewarmer *)self prewarmOperations];
  requestKey = [requestCopy requestKey];
  [prewarmOperations setObject:v7 forKey:requestKey];

  v10 = FCFeedPrewarmLog;
  if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    requestKey2 = [requestCopy requestKey];
    operationID = [(FCOperation *)v7 operationID];
    v16 = 138543618;
    v17 = requestKey2;
    v18 = 2114;
    v19 = operationID;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "will prewarm feeds for key=%{public}@, operationID=%{public}@", &v16, 0x16u);
  }

  fc_prewarmQueue = [MEMORY[0x1E696ADC8] fc_prewarmQueue];
  [fc_prewarmQueue addOperation:v7];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)finishPrewarmingRequestForKey:(id)key completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  completionCopy = completion;
  prewarmOperations = [(FCFeedPrewarmer *)self prewarmOperations];
  v9 = [prewarmOperations objectForKey:keyCopy];

  if (v9)
  {
    v10 = v9;
    v11 = FCFeedPrewarmLog;
    if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      operationID = [v10 operationID];
      *buf = 138543618;
      v22 = keyCopy;
      v23 = 2114;
      v24 = operationID;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "will finish prewarm operation for key=%{public}@, operationID=%{public}@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke_4;
    v16[3] = &unk_1E7C43DB0;
    v17 = completionCopy;
    v14 = completionCopy;
    [v10 commitResultsOnceWithCompletionHandler:v16];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke;
    v18[3] = &unk_1E7C37BC0;
    v19 = keyCopy;
    v20 = completionCopy;
    v10 = completionCopy;
    __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke(v18);

    v14 = v19;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCFeedPrewarmLog;
  if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "found no prewarm operation for key=%{public}@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [FCFeedPrewarmResult alloc];
    v6 = [(FCFeedPrewarmResult *)v5 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:MEMORY[0x1E695E0F0] networkEvents:MEMORY[0x1E695E0F0]];
    (*(v4 + 16))(v4, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end