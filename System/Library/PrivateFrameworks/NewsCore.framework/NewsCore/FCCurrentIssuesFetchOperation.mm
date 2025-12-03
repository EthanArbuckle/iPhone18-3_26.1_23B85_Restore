@interface FCCurrentIssuesFetchOperation
- (BOOL)validateOperation;
- (FCCurrentIssuesFetchOperation)init;
- (FCCurrentIssuesFetchOperation)initWithContext:(id)context;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCurrentIssuesFetchOperation

- (FCCurrentIssuesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCurrentIssuesFetchOperation init]";
    v10 = 2080;
    v11 = "FCCurrentIssuesFetchOperation.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCurrentIssuesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCurrentIssuesFetchOperation)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FCCurrentIssuesFetchOperation;
  v6 = [(FCOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  context = [(FCCurrentIssuesFetchOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current issues fetch operation requires a context"];
    v6 = 136315906;
    v7 = "[FCCurrentIssuesFetchOperation validateOperation]";
    v8 = 2080;
    v9 = "FCCurrentIssuesFetchOperation.m";
    v10 = 1024;
    v11 = 64;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  result = context != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v29[1] = *MEMORY[0x1E69E9840];
  context = [(FCCurrentIssuesFetchOperation *)self context];
  configurationManager = [context configurationManager];
  configuration = [configurationManager configuration];
  paidBundleConfig = [configuration paidBundleConfig];
  recommendableIssuesTagList = [paidBundleConfig recommendableIssuesTagList];

  if (recommendableIssuesTagList)
  {
    v8 = recommendableIssuesTagList;
    v9 = objc_alloc_init(FCRecordChainFetchOperation);
    context2 = [(FCCurrentIssuesFetchOperation *)self context];
    [(FCRecordChainFetchOperation *)v9 setContext:context2];

    v11 = +[FCEdgeCacheHint edgeCacheHintForCurrentIssues];
    [(FCRecordChainFetchOperation *)v9 setEdgeCacheHint:v11];

    v29[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [(FCRecordChainFetchOperation *)v9 setTopLevelRecordIDs:v12];

    v27[0] = @"TagList";
    v26 = @"tagIDs";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v28[0] = v13;
    v27[1] = @"Tag";
    v25 = @"latestIssueIDs";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27[2] = @"Issue";
    v28[1] = v14;
    v28[2] = MEMORY[0x1E695E0F0];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [(FCRecordChainFetchOperation *)v9 setLinkKeysByRecordType:v15];

    cachePolicy = [(FCCurrentIssuesFetchOperation *)self cachePolicy];
    v17 = cachePolicy;
    if (cachePolicy)
    {
      v18 = cachePolicy;
    }

    else
    {
      v18 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
    }

    v19 = v18;

    v23 = @"TagList";
    v24 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [(FCRecordChainFetchOperation *)v9 setCachePoliciesByRecordType:v20];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_2;
    v22[3] = &unk_1E7C39358;
    v22[4] = self;
    [(FCRecordChainFetchOperation *)v9 setRecordChainCompletionHandler:v22];
    [(FCOperation *)self associateChildOperation:v9];
    [(FCOperation *)v9 start];
  }

  else
  {
    v22[5] = MEMORY[0x1E69E9820];
    v22[6] = 3221225472;
    v22[7] = __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke;
    v22[8] = &unk_1E7C36EA0;
    v22[9] = self;
    [(FCCurrentIssuesFetchOperation *)self setResultIssues:MEMORY[0x1E695E0F0]];
    [(FCOperation *)self finishedPerformingOperationWithError:0];
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setResultIssues:MEMORY[0x1E695E0F0]];
  v2 = *(a1 + 32);

  return [v2 finishedPerformingOperationWithError:0];
}

void __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v20[5] = MEMORY[0x1E69E9820];
    v20[6] = 3221225472;
    v20[7] = __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_3;
    v20[8] = &unk_1E7C36C58;
    v21 = *(a1 + 32);
    v22 = v6;
    [v21 finishedPerformingOperationWithError:v22];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E703C8];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E703E0];
    v10 = [*(a1 + 32) context];
    v11 = [v10 tagController];
    v12 = [v11 channelsForTagRecords:v8];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_18;
    v20[3] = &unk_1E7C3FF08;
    v20[4] = *(a1 + 32);
    v13 = [v9 heldRecordsPassingTest:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_2_20;
    v17[3] = &unk_1E7C3B1B0;
    v14 = *(a1 + 32);
    v18 = v12;
    v19 = v14;
    v15 = v12;
    v16 = [v13 transformRecordsWithBlock:v17];
    [*(a1 + 32) setResultIssues:v16];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

uint64_t __49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 contentStoreFrontID];
  v6 = [v3 isAllowedInStorefront:v5];

  return v6;
}

FCIssue *__49__FCCurrentIssuesFetchOperation_performOperation__block_invoke_2_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 channelTagID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [FCIssue alloc];
    v12 = [*(a1 + 40) context];
    v13 = [v12 assetManager];
    v14 = [(FCIssue *)v11 initWithIssueRecord:v5 assetManager:v13 interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  fetchCompletionHandler = [(FCCurrentIssuesFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCCurrentIssuesFetchOperation *)self fetchCompletionHandler];
    resultIssues = [(FCCurrentIssuesFetchOperation *)self resultIssues];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, resultIssues, errorCopy);
  }
}

@end