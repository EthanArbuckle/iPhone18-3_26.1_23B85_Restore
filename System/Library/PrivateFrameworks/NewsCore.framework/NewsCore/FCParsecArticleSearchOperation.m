@interface FCParsecArticleSearchOperation
- (BOOL)validateOperation;
- (FCParsecArticleSearchOperation)initWithMoreResults:(id)a3 parsecQueryID:(unint64_t)a4;
- (id)_rankingFeedbackWithSection:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCParsecArticleSearchOperation

- (BOOL)validateOperation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(FCParsecArticleSearchOperation *)self query];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v4 = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

- (FCParsecArticleSearchOperation)initWithMoreResults:(id)a3 parsecQueryID:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FCParsecArticleSearchOperation;
  v8 = [(FCOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_moreResults, a3);
    v9->_parsecQueryID = a4;
  }

  return v9;
}

- (void)performOperation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
  if (v3)
  {
  }

  else
  {
    v4 = [(FCParsecArticleSearchOperation *)self moreResults];

    if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v5 = [(FCParsecArticleSearchOperation *)self moreResults];

  if (v5)
  {
    v6 = [(FCParsecArticleSearchOperation *)self moreResults];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__FCParsecArticleSearchOperation_performOperation__block_invoke;
    v15[3] = &unk_1E7C37750;
    v15[4] = self;
    [v6 loadSearchResultsWithCompletionAndErrorHandler:v15];
  }

  else
  {
    v6 = [MEMORY[0x1E6998670] fc_sharedParsecSession];
    v7 = MEMORY[0x1E6998648];
    v8 = [(FCParsecArticleSearchOperation *)self query];
    v9 = [v7 searchRequestWithString:v8 triggerEvent:1 queryId:{-[FCParsecArticleSearchOperation parsecQueryID](self, "parsecQueryID")}];

    v10 = [(FCParsecArticleSearchOperation *)self keyboardInputMode];
    [v9 setKeyboardInputMode:v10];

    [(FCParsecArticleSearchOperation *)self scale];
    [v9 setScale:?];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__FCParsecArticleSearchOperation_performOperation__block_invoke_3;
    v14[3] = &unk_1E7C3ED78;
    v14[4] = self;
    v11 = [v6 taskWithRequest:v9 completion:v14];
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

- (void)operationWillFinishWithError:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCParsecArticleSearchOperation *)self rankingFeedback];
  v6 = v4 | v5;

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

  v7 = [(FCParsecArticleSearchOperation *)self rankingFeedback];

  if (!v7)
  {
    v8 = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
    [(FCParsecArticleSearchOperation *)self setRankingFeedback:v8];
  }

  v9 = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];

  if (v9)
  {
    v10 = [(FCParsecArticleSearchOperation *)self articleSearchCompletionHandler];
    v11 = [(FCParsecArticleSearchOperation *)self results];
    v12 = [(FCParsecArticleSearchOperation *)self moreResults];
    v13 = [(FCParsecArticleSearchOperation *)self rankingFeedback];
    (v10)[2](v10, v11, v12, v13, v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_rankingFeedbackWithSection:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 copy];
    v5 = [(FCParsecArticleSearchOperation *)self results];
    [v4 setResults:v5];

    v6 = [(FCParsecArticleSearchOperation *)self previousRankingFeedback];
    v7 = [v6 sections];
    v8 = [v7 firstObject];
    v9 = [v8 results];
    v10 = [v9 fc_arrayByTransformingWithBlock:&__block_literal_global_51];

    v11 = MEMORY[0x1E695DEC8];
    v12 = [(FCParsecArticleSearchOperation *)self results];
    v13 = [v11 fc_arrayByAddingObjectsFromArray:v12 toArray:v10];

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