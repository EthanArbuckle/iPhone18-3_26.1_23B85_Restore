@interface FCFeedPrewarmer
- (FCFeedPrewarmer)initWithContentContext:(id)a3;
- (void)finishPrewarmingRequestForKey:(id)a3 completion:(id)a4;
- (void)startPrewarmingRequest:(id)a3;
@end

@implementation FCFeedPrewarmer

- (FCFeedPrewarmer)initWithContentContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCFeedPrewarmer;
  v6 = [(FCFeedPrewarmer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, a3);
    v8 = objc_alloc_init(FCThreadSafeMutableDictionary);
    prewarmOperations = v7->_prewarmOperations;
    v7->_prewarmOperations = v8;
  }

  return v7;
}

- (void)startPrewarmingRequest:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [FCFeedPrewarmOperation alloc];
  v6 = [(FCFeedPrewarmer *)self contentContext];
  v7 = [(FCFeedPrewarmOperation *)v5 initWithPrewarmRequest:v4 contentContext:v6];

  [(FCOperation *)v7 setQualityOfService:25];
  [(FCOperation *)v7 setRelativePriority:1];
  v8 = [(FCFeedPrewarmer *)self prewarmOperations];
  v9 = [v4 requestKey];
  [v8 setObject:v7 forKey:v9];

  v10 = FCFeedPrewarmLog;
  if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 requestKey];
    v13 = [(FCOperation *)v7 operationID];
    v16 = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "will prewarm feeds for key=%{public}@, operationID=%{public}@", &v16, 0x16u);
  }

  v14 = [MEMORY[0x1E696ADC8] fc_prewarmQueue];
  [v14 addOperation:v7];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)finishPrewarmingRequestForKey:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FCFeedPrewarmer *)self prewarmOperations];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
    v11 = FCFeedPrewarmLog;
    if (os_log_type_enabled(FCFeedPrewarmLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 operationID];
      *buf = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "will finish prewarm operation for key=%{public}@, operationID=%{public}@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke_4;
    v16[3] = &unk_1E7C43DB0;
    v17 = v7;
    v14 = v7;
    [v10 commitResultsOnceWithCompletionHandler:v16];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__FCFeedPrewarmer_finishPrewarmingRequestForKey_completion___block_invoke;
    v18[3] = &unk_1E7C37BC0;
    v19 = v6;
    v20 = v7;
    v10 = v7;
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