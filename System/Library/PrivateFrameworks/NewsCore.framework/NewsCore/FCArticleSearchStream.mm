@interface FCArticleSearchStream
- (FCArticleSearchStream)initWithParsecQueryID:(unint64_t)a3;
- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6;
@end

@implementation FCArticleSearchStream

- (FCArticleSearchStream)initWithParsecQueryID:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = FCArticleSearchStream;
  v4 = [(FCArticleSearchStream *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_parsecQueryID = a3;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    articleSearchResults = v5->_articleSearchResults;
    v5->_articleSearchResults = v6;
  }

  return v5;
}

- (id)fetchMoreResultsWithLimit:(unint64_t)a3 qualityOfService:(int64_t)a4 callbackQueue:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if ([(FCArticleSearchStream *)self isFinished])
  {
    v11 = 0;
    if (v9 && v10)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke;
      block[3] = &unk_1E7C379C8;
      v29 = v10;
      dispatch_async(v9, block);

      v11 = 0;
    }
  }

  else
  {
    if ([(FCArticleSearchStream *)self fetching]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't ask a stream for more results while it's fetching"];
      *buf = 136315906;
      v31 = "[FCArticleSearchStream fetchMoreResultsWithLimit:qualityOfService:callbackQueue:completionHandler:]";
      v32 = 2080;
      v33 = "FCArticleSearchOperation.m";
      v34 = 1024;
      v35 = 172;
      v36 = 2114;
      v37 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    [(FCArticleSearchStream *)self setFetching:1];
    v12 = [FCParsecArticleSearchOperation alloc];
    v13 = [(FCArticleSearchStream *)self moreResults];
    v11 = [(FCParsecArticleSearchOperation *)v12 initWithMoreResults:v13 parsecQueryID:[(FCArticleSearchStream *)self parsecQueryID]];

    v14 = [(FCArticleSearchStream *)self cloudContext];
    [(FCParsecArticleSearchOperation *)v11 setContentContext:v14];

    v15 = [(FCArticleSearchStream *)self query];
    [(FCParsecArticleSearchOperation *)v11 setQuery:v15];

    v16 = [(FCArticleSearchStream *)self keyboardInputMode];
    [(FCParsecArticleSearchOperation *)v11 setKeyboardInputMode:v16];

    [(FCArticleSearchStream *)self scale];
    [(FCParsecArticleSearchOperation *)v11 setScale:?];
    v17 = [(FCArticleSearchStream *)self rankingFeedback];
    [(FCParsecArticleSearchOperation *)v11 setPreviousRankingFeedback:v17];

    [(FCOperation *)v11 setRelativePriority:1];
    [(FCOperation *)v11 setQualityOfService:a4];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_108;
    v24 = &unk_1E7C43EB8;
    v25 = self;
    v27 = v10;
    v26 = v9;
    [(FCParsecArticleSearchOperation *)v11 setArticleSearchCompletionHandler:&v21];
    [(FCOperation *)v11 start:v21];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

void __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_108(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_2;
  v22[3] = &unk_1E7C43E90;
  v22[4] = *(a1 + 32);
  v10 = a4;
  v11 = a3;
  v12 = [a2 fc_orderedSetByTransformingWithBlock:v22];
  v13 = [*(a1 + 32) articleSearchResults];
  [v13 unionOrderedSet:v12];

  [*(a1 + 32) setMoreResults:v11];
  [*(a1 + 32) setRankingFeedback:v10];
  [*(a1 + 32) setFinished:v11 == 0];
  [*(a1 + 32) setFetching:0];
  v14 = [[FCArticleSearchOperationFeedbackResult alloc] initWithSearchOperationRankingFeedBack:v10];

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_3;
    block[3] = &unk_1E7C3A0B0;
    v21 = v15;
    v18 = v12;
    v19 = v14;
    v20 = v9;
    dispatch_async(v16, block);
  }
}

FCArticleSearchResult *__100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCArticleSearchResult alloc];
  v5 = [*(a1 + 32) cloudContext];
  v6 = [(FCArticleSearchResult *)v4 initWithParsecSearchResult:v3 cloudContext:v5];

  return v6;
}

void __100__FCArticleSearchStream_fetchMoreResultsWithLimit_qualityOfService_callbackQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) array];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

@end