@interface FCParsecArticleSearchOperation
- (BOOL)validateOperation;
- (FCParsecArticleSearchOperation)initWithMoreResults:(id)results parsecQueryID:(unint64_t)d;
- (id)_rankingFeedbackWithSection:(id)section;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCParsecArticleSearchOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  query = [(FCParsecArticleSearchOperation *)self query];

  if (!query && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article search operation requires a query"];
    v10 = 136315906;
    v11 = "[FCParsecArticleSearchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCParsecArticleSearchOperation.m";
    v14 = 1024;
    v15 = 40;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  articleSearchCompletionHandler = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];

  if (!articleSearchCompletionHandler && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"article search operation requires a completion"];
    v10 = 136315906;
    v11 = "[FCParsecArticleSearchOperation validateOperation]";
    v12 = 2080;
    v13 = "FCParsecArticleSearchOperation.m";
    v14 = 1024;
    v15 = 44;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (query)
  {
    v5 = articleSearchCompletionHandler == 0;
  }

  else
  {
    v5 = 1;
  }

  result = !v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (FCParsecArticleSearchOperation)initWithMoreResults:(id)results parsecQueryID:(unint64_t)d
{
  resultsCopy = results;
  v11.receiver = self;
  v11.super_class = FCParsecArticleSearchOperation;
  v8 = [(FCOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_moreResults, results);
    v9->_parsecQueryID = d;
  }

  return v9;
}

- (void)performOperation
{
  v24 = *MEMORY[0x1E69E9840];
  previousRankingFeedback = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
  if (previousRankingFeedback)
  {
  }

  else
  {
    moreResults = [(FCParsecArticleSearchOperation *)self moreResults];

    if (moreResults && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have previous ranking feedback when fetching more results"];
      *buf = 136315906;
      v17 = "[FCParsecArticleSearchOperation performOperation]";
      v18 = 2080;
      v19 = "FCParsecArticleSearchOperation.m";
      v20 = 1024;
      v21 = 64;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  moreResults2 = [(FCParsecArticleSearchOperation *)self moreResults];

  if (moreResults2)
  {
    moreResults3 = [(FCParsecArticleSearchOperation *)self moreResults];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__FCParsecArticleSearchOperation_performOperation__block_invoke;
    v15[3] = &unk_1E7C37750;
    v15[4] = self;
    [moreResults3 loadSearchResultsWithCompletionAndErrorHandler:v15];
  }

  else
  {
    moreResults3 = [MEMORY[0x1E6998670] fc_sharedParsecSession];
    v7 = MEMORY[0x1E6998648];
    query = [(FCParsecArticleSearchOperation *)self query];
    v9 = [v7 searchRequestWithString:query triggerEvent:1 queryId:{-[FCParsecArticleSearchOperation parsecQueryID](self, "parsecQueryID")}];

    keyboardInputMode = [(FCParsecArticleSearchOperation *)self keyboardInputMode];
    [v9 setKeyboardInputMode:keyboardInputMode];

    [(FCParsecArticleSearchOperation *)self scale];
    [v9 setScale:?];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__FCParsecArticleSearchOperation_performOperation__block_invoke_3;
    v14[3] = &unk_1E7C3ED78;
    v14[4] = self;
    v11 = [moreResults3 taskWithRequest:v9 completion:v14];
    [v11 resume];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __50__FCParsecArticleSearchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = *(a1 + 32);
    v20 = v6;
    [v19 finishedPerformingOperationWithError:{v20, v18, 3221225472, __50__FCParsecArticleSearchOperation_performOperation__block_invoke_2, &unk_1E7C36C58, v19}];
  }

  else
  {
    if (v5 && [v5 count])
    {
      objc_opt_class();
      v8 = [v5 lastObject];
      v9 = [v8 moreResults];
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      [*(a1 + 32) setMoreResults:v11];

      [*(a1 + 32) setResults:v5];
    }

    else
    {
      [*(a1 + 32) setResults:MEMORY[0x1E695E0F0]];
      [*(a1 + 32) setMoreResults:0];
    }

    v12 = *(a1 + 32);
    v13 = [v12 previousRankingFeedback];
    v14 = [v13 sections];
    v15 = [v14 firstObject];
    v16 = [v15 section];
    v17 = [v12 _rankingFeedbackWithSection:v16];
    [*(a1 + 32) setRankingFeedback:v17];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

void __50__FCParsecArticleSearchOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v20 = v6;
  if (!v6)
  {
    v7 = a3;
    v8 = [v7 results];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    if ([v11 count])
    {
      objc_opt_class();
      v12 = [v11 lastObject];
      v13 = [v12 moreResults];
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [*(a1 + 32) setMoreResults:v15];

      [*(a1 + 32) setResults:v11];
    }

    else
    {
      [*(a1 + 32) setResults:MEMORY[0x1E695E0F0]];
      [*(a1 + 32) setMoreResults:0];
    }

    v16 = *(a1 + 32);
    v17 = [v7 sections];

    v18 = [v17 firstObject];
    v19 = [v16 _rankingFeedbackWithSection:v18];
    [*(a1 + 32) setRankingFeedback:v19];

    v6 = 0;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  rankingFeedback = [(FCParsecArticleSearchOperation *)self rankingFeedback];
  v6 = errorCopy | rankingFeedback;

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"successful parsec search operation should always have ranking feedback"];
    v16 = 136315906;
    v17 = "[FCParsecArticleSearchOperation operationWillFinishWithError:]";
    v18 = 2080;
    v19 = "FCParsecArticleSearchOperation.m";
    v20 = 1024;
    v21 = 130;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  rankingFeedback2 = [(FCParsecArticleSearchOperation *)self rankingFeedback];

  if (!rankingFeedback2)
  {
    previousRankingFeedback = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
    [(FCParsecArticleSearchOperation *)self setRankingFeedback:previousRankingFeedback];
  }

  articleSearchCompletionHandler = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];

  if (articleSearchCompletionHandler)
  {
    articleSearchCompletionHandler2 = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];
    results = [(FCParsecArticleSearchOperation *)self results];
    moreResults = [(FCParsecArticleSearchOperation *)self moreResults];
    rankingFeedback3 = [(FCParsecArticleSearchOperation *)self rankingFeedback];
    (articleSearchCompletionHandler2)[2](articleSearchCompletionHandler2, results, moreResults, rankingFeedback3, errorCopy);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_rankingFeedbackWithSection:(id)section
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (section)
  {
    v4 = [section copy];
    results = [(FCParsecArticleSearchOperation *)self results];
    [v4 setResults:results];

    previousRankingFeedback = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
    sections = [previousRankingFeedback sections];
    firstObject = [sections firstObject];
    results2 = [firstObject results];
    v10 = [results2 fc_arrayByTransformingWithBlock:&__block_literal_global_51];

    v11 = MEMORY[0x1E695DEC8];
    results3 = [(FCParsecArticleSearchOperation *)self results];
    v13 = [v11 fc_arrayByAddingObjectsFromArray:results3 toArray:v10];

    v14 = [v13 fc_arrayByTransformingWithBlock:&__block_literal_global_21_0];
    v15 = [objc_alloc(MEMORY[0x1E69CA418]) initWithResults:v14 section:v4 localSectionPosition:0 personalizationScore:0.0];
    v20[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x1E69CA340]) initWithSections:v16 blendingDuration:0.0];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id __62__FCParsecArticleSearchOperation__rankingFeedbackWithSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69CA388];
  v3 = a2;
  v4 = [[v2 alloc] initWithResult:v3 hiddenResults:0 duplicateResults:0 localResultPosition:0];

  return v4;
}

@end