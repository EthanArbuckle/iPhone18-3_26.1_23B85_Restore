@interface FCSearchOperation
- (BOOL)validateOperation;
- (FCSearchOperation)initWithSearchText:(id)a3 cloudContext:(id)a4 parsecQueryID:(unint64_t)a5;
- (id)_fetchFullHeadlineResultsForArticles:(id)a3;
- (id)_fetchResultsForArticlesWithBatchSize:(unint64_t)a3;
- (id)_fetchResultsForTagsWithBatchSize:(unint64_t)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCSearchOperation

- (FCSearchOperation)initWithSearchText:(id)a3 cloudContext:(id)a4 parsecQueryID:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = FCSearchOperation;
  v11 = [(FCOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_searchString, a3);
    objc_storeStrong(&v12->_cloudContext, a4);
    v12->_parsecQueryID = a5;
    v12->_shouldFetchFullHeadline = 0;
    v13 = objc_opt_new();
    searchResult = v12->_searchResult;
    v12->_searchResult = v13;
  }

  return v12;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(FCSearchOperation *)self cloudContext];

  if (!v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Search operation requires a cloud context"];
    v6 = 136315906;
    v7 = "[FCSearchOperation validateOperation]";
    v8 = 2080;
    v9 = "FCSearchOperation.m";
    v10 = 1024;
    v11 = 87;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  result = v2 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v3 = [(FCSearchOperation *)self batchSize];
  v4 = 20;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__FCSearchOperation_performOperation__block_invoke;
  v14[3] = &unk_1E7C3CB30;
  if (v3 > 0x14)
  {
    v4 = v3;
  }

  v14[4] = self;
  v14[5] = v4;
  v5 = [MEMORY[0x1E69B68F8] firstly:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__FCSearchOperation_performOperation__block_invoke_2;
  v13[3] = &unk_1E7C48170;
  v13[4] = self;
  v6 = [v5 then:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__FCSearchOperation_performOperation__block_invoke_3;
  v12[3] = &unk_1E7C48198;
  v12[4] = self;
  v7 = [v6 then:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__FCSearchOperation_performOperation__block_invoke_4;
  v11[3] = &unk_1E7C48198;
  v11[4] = self;
  v8 = [v7 then:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__FCSearchOperation_performOperation__block_invoke_5;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v8 error:v10];
}

uint64_t __37__FCSearchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 searchResult];
  [v5 setTagSearchResult:v4];

  v6 = *(a1 + 32);
  v7 = [v6 batchSize];

  return [v6 _fetchResultsForArticlesWithBatchSize:v7];
}

id __37__FCSearchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldFetchFullHeadline])
  {
    v4 = [*(a1 + 32) _fetchFullHeadlineResultsForArticles:v3];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

uint64_t __37__FCSearchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 searchResult];
  [v5 setArticleSearchResult:v4];

  [*(a1 + 32) finishedPerformingOperationWithError:0];
  return 0;
}

void __37__FCSearchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 fc_isCancellationError];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v5];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(FCSearchOperation *)self searchResultsBlock];

  if (v4)
  {
    v5 = [(FCSearchOperation *)self searchResultsBlock];
    v6 = [(FCSearchOperation *)self searchResult];
    (v5)[2](v5, v6, v7);
  }
}

- (id)_fetchResultsForTagsWithBatchSize:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__FCSearchOperation__fetchResultsForTagsWithBatchSize___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __55__FCSearchOperation__fetchResultsForTagsWithBatchSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) cloudContext];
  v9 = v8;
  if (v8)
  {
    if ([v8 conformsToProtocol:&unk_1F2E92618])
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
  [v7 setContentContext:v11];

  v12 = [*(a1 + 32) searchString];
  [v7 setSearchString:v12];

  [v7 setUserFacingTagOptions:3];
  [v7 setBatchSize:*(a1 + 40)];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __55__FCSearchOperation__fetchResultsForTagsWithBatchSize___block_invoke_2;
  v18 = &unk_1E7C481C0;
  v19 = v6;
  v20 = v5;
  v13 = v5;
  v14 = v6;
  [v7 setSearchResultsBlock:&v15];
  [*(a1 + 32) associateChildOperation:{v7, v15, v16, v17, v18}];
  [v7 start];
}

void __55__FCSearchOperation__fetchResultsForTagsWithBatchSize___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v24 = *(a1 + 32);
    v23 = v9;
    v24[2](v24, v23);
  }

  else
  {
    v10 = objc_alloc_init(FCTagSearchOperationResult);
    if ([v7 count])
    {
      v11 = [v7 underlyingStream];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = objc_opt_new();
      }

      v14 = v13;

      v15 = [v7 array];
      v16 = [[FCStreamingResults alloc] initWithResults:v15 followedByStream:v14];
      [(FCTagSearchOperationResult *)v10 setChannels:v16];
    }

    if ([v8 count])
    {
      v17 = [v8 underlyingStream];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = objc_opt_new();
      }

      v20 = v19;

      v21 = [v8 array];
      v22 = [[FCStreamingResults alloc] initWithResults:v21 followedByStream:v20];
      [(FCTagSearchOperationResult *)v10 setTopics:v22];
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_fetchResultsForArticlesWithBatchSize:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__FCSearchOperation__fetchResultsForArticlesWithBatchSize___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __59__FCSearchOperation__fetchResultsForArticlesWithBatchSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = -[FCArticleSearchOperation initWithParsecQueryID:]([FCArticleSearchOperation alloc], "initWithParsecQueryID:", [*(a1 + 32) parsecQueryID]);
  v8 = [*(a1 + 32) cloudContext];
  [(FCArticleSearchOperation *)v7 setCloudContext:v8];

  v9 = [*(a1 + 32) searchString];
  [(FCArticleSearchOperation *)v7 setQuery:v9];

  [(FCArticleSearchOperation *)v7 setResultsLimit:*(a1 + 40)];
  v10 = [*(a1 + 32) keyboardInputMode];
  [(FCArticleSearchOperation *)v7 setKeyboardInputMode:v10];

  [*(a1 + 32) scale];
  [(FCArticleSearchOperation *)v7 setScale:?];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__FCSearchOperation__fetchResultsForArticlesWithBatchSize___block_invoke_2;
  v16 = &unk_1E7C481E8;
  v17 = v6;
  v18 = v5;
  v11 = v5;
  v12 = v6;
  [(FCArticleSearchOperation *)v7 setArticleSearchCompletion:&v13];
  [*(a1 + 32) associateChildOperation:{v7, v13, v14, v15, v16}];
  [(FCOperation *)v7 start];
}

void __59__FCSearchOperation__fetchResultsForArticlesWithBatchSize___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v12 = *(a1 + 32);
    v11 = v9;
    v12[2](v12, v11);
  }

  else
  {
    v10 = objc_alloc_init(FCArticleSearchOperationResult);
    [(FCArticleSearchOperationResult *)v10 setArticles:v7];
    [(FCArticleSearchOperationResult *)v10 setFeedBack:v8];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_fetchFullHeadlineResultsForArticles:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke;
  v9[3] = &unk_1E7C3B310;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = [v5 initWithResolver:v9];

  return v7;
}

void __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) articles];
  v8 = [v7 array];

  v9 = [v8 fc_arrayByTransformingWithBlock:&__block_literal_global_193];
  v10 = [FCArticleHeadlinesFetchOperation alloc];
  v11 = [*(a1 + 40) cloudContext];
  v12 = [(FCArticleHeadlinesFetchOperation *)v10 initWithContext:v11 articleIDs:v9 ignoreCacheForArticleIDs:0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke_3;
  v17[3] = &unk_1E7C48250;
  v21 = v6;
  v18 = v9;
  v19 = v8;
  v20 = *(a1 + 32);
  v22 = v5;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  [(FCFetchOperation *)v12 setFetchCompletionBlock:v17];
  [*(a1 + 40) associateChildOperation:v12];
  [(FCOperation *)v12 start];
}

void __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke_3(id *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 status])
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke_4;
    v39[3] = &unk_1E7C37BC0;
    v40 = v3;
    v41 = a1[7];
    __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke_4(v39);

    v4 = v40;
  }

  else
  {
    v34 = v3;
    v5 = [v3 fetchedObject];
    v4 = [v5 fc_dictionaryWithKeyBlock:&__block_literal_global_242_1];

    v6 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v4 count];
      v9 = [a1[4] count];
      *buf = 134218240;
      v44 = v8;
      v45 = 2048;
      v46 = v9;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_INFO, "inflated %lu of %lu search results", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = a1;
    v11 = a1[5];
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = [v16 articleID];
          v18 = [v4 objectForKey:v17];

          v19 = v16;
          v20 = v19;
          if (v18)
          {
            [v19 setInflatedHeadline:v18];
          }

          else
          {
            v21 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = [v20 articleID];
              *buf = 138412290;
              v44 = v23;
              _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "failed to inflate search result headline with article ID: %@", buf, 0xCu);
            }
          }

          [v10 addObject:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v13);
    }

    v24 = [v33[6] articles];
    v25 = [v24 underlyingStream];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = objc_opt_new();
    }

    v28 = v27;

    v29 = objc_alloc_init(FCArticleSearchOperationResult);
    v30 = [(FCStreamingResults *)[FCArticleStreamingResults alloc] initWithResults:v10 followedByStream:v28];
    [(FCArticleSearchOperationResult *)v29 setArticles:v30];

    v31 = [v33[6] feedBack];
    [(FCArticleSearchOperationResult *)v29 setFeedBack:v31];

    (*(v33[8] + 2))();
    v3 = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __58__FCSearchOperation__fetchFullHeadlineResultsForArticles___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v8 = [v6 error];
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to inflate search result headlines with error: %@", &v9, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) error];
  (*(v3 + 16))(v3, v4);

  v5 = *MEMORY[0x1E69E9840];
}

@end