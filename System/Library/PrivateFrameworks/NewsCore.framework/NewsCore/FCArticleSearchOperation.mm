@interface FCArticleSearchOperation
- (BOOL)validateOperation;
- (FCArticleSearchOperation)initWithParsecQueryID:(unint64_t)a3;
- (void)_performSearchQuery:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCArticleSearchOperation

- (FCArticleSearchOperation)initWithParsecQueryID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FCArticleSearchOperation;
  result = [(FCOperation *)&v5 init];
  if (result)
  {
    result->_parsecQueryID = a3;
  }

  return result;
}

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(FCArticleSearchOperation *)self query];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article search operation requires a query"];
    v10 = 136315906;
    v11 = "[FCArticleSearchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCArticleSearchOperation.m";
    v14 = 1024;
    v15 = 80;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  v4 = [(FCArticleSearchOperation *)self articleSearchCompletion];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article search operation requires a completion"];
    v10 = 136315906;
    v11 = "[FCArticleSearchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCArticleSearchOperation.m";
    v14 = 1024;
    v15 = 84;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__FCArticleSearchOperation_performOperation__block_invoke;
  v2[3] = &unk_1E7C43E40;
  v2[4] = self;
  [(FCArticleSearchOperation *)self _performSearchQuery:v2];
}

void __44__FCArticleSearchOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v9 = a4;
  v8 = a3;
  [v7 setResults:a2];
  [*(a1 + 32) setFeedbackResult:v8];

  [*(a1 + 32) setSearchError:v9];
  [*(a1 + 32) finishedPerformingOperationWithError:v9];
}

- (void)_performSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [[FCArticleSearchStream alloc] initWithParsecQueryID:[(FCArticleSearchOperation *)self parsecQueryID]];
  v6 = [(FCArticleSearchOperation *)self cloudContext];
  [(FCArticleSearchStream *)v5 setCloudContext:v6];

  v7 = [(FCArticleSearchOperation *)self query];
  [(FCArticleSearchStream *)v5 setQuery:v7];

  v8 = [(FCArticleSearchOperation *)self keyboardInputMode];
  [(FCArticleSearchStream *)v5 setKeyboardInputMode:v8];

  [(FCArticleSearchOperation *)self scale];
  [(FCArticleSearchStream *)v5 setScale:?];
  v9 = [(FCArticleSearchOperation *)self resultsLimit];
  v10 = [(FCArticleSearchOperation *)self qualityOfService];
  v11 = FCDispatchQueueForQualityOfService([(FCArticleSearchOperation *)self qualityOfService]);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __48__FCArticleSearchOperation__performSearchQuery___block_invoke;
  v18 = &unk_1E7C43E68;
  v19 = v5;
  v20 = v4;
  v12 = v5;
  v13 = v4;
  v14 = [(FCArticleSearchStream *)v12 fetchMoreResultsWithLimit:v9 qualityOfService:v10 callbackQueue:v11 completionHandler:&v15];

  [(FCOperation *)self associateChildOperation:v14, v15, v16, v17, v18];
}

void __48__FCArticleSearchOperation__performSearchQuery___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    [v8 fc_isCancellationError];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [(FCStreamingResults *)[FCArticleStreamingResults alloc] initWithResults:v11 followedByStream:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(FCArticleSearchOperation *)self articleSearchCompletion];

  if (v4)
  {
    v5 = [(FCArticleSearchOperation *)self articleSearchCompletion];
    v6 = [(FCArticleSearchOperation *)self results];
    v7 = [(FCArticleSearchOperation *)self feedbackResult];
    (v5)[2](v5, v6, v7, v8);
  }
}

@end