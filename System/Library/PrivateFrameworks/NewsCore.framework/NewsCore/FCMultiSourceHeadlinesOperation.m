@interface FCMultiSourceHeadlinesOperation
- (BOOL)validateOperation;
- (FCMultiSourceHeadlinesOperation)init;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCMultiSourceHeadlinesOperation

- (FCMultiSourceHeadlinesOperation)init
{
  v12.receiver = self;
  v12.super_class = FCMultiSourceHeadlinesOperation;
  v2 = [(FCOperation *)&v12 init];
  if (v2)
  {
    v3 = +[FCCachePolicy defaultCachePolicy];
    cachePolicyForArticles = v2->_cachePolicyForArticles;
    v2->_cachePolicyForArticles = v3;

    v5 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
    cachePolicyForArticleLists = v2->_cachePolicyForArticleLists;
    v2->_cachePolicyForArticleLists = v5;

    v7 = objc_opt_new();
    articleListIDs = v2->_articleListIDs;
    v2->_articleListIDs = v7;

    v9 = objc_opt_new();
    articleIDs = v2->_articleIDs;
    v2->_articleIDs = v9;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(FCMultiSourceHeadlinesOperation *)self configuration];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multi-source headlines operation needs a configuration"];
    v12 = 136315906;
    v13 = "[FCMultiSourceHeadlinesOperation validateOperation]";
    v14 = 2080;
    v15 = "FCMultiSourceHeadlinesOperation.m";
    v16 = 1024;
    v17 = 55;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v4 = [(FCMultiSourceHeadlinesOperation *)self context];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multi-source headlines operation needs a context"];
    v12 = 136315906;
    v13 = "[FCMultiSourceHeadlinesOperation validateOperation]";
    v14 = 2080;
    v15 = "FCMultiSourceHeadlinesOperation.m";
    v16 = 1024;
    v17 = 56;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v5 = [(FCMultiSourceHeadlinesOperation *)self configuration];
  if (v5)
  {
    v6 = [(FCMultiSourceHeadlinesOperation *)self context];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)performOperation
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(FCOperation *)self shortOperationDescription];
    v6 = [(FCMultiSourceHeadlinesOperation *)self articleIDs];
    v7 = [v6 count];
    v8 = [(FCMultiSourceHeadlinesOperation *)self articleListIDs];
    *buf = 138543874;
    v43 = v5;
    v44 = 2048;
    v45 = v7;
    v46 = 2048;
    v47 = [v8 count];
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch headlines for articleIDs:%lu articleListIDs:%lu", buf, 0x20u);
  }

  v9 = [(FCMultiSourceHeadlinesOperation *)self articleIDs];
  v10 = [(FCMultiSourceHeadlinesOperation *)self articleListIDs];
  v28 = [(FCMultiSourceHeadlinesOperation *)self heldRecordsByType];
  v27 = [(FCMultiSourceHeadlinesOperation *)self shouldBypassRecordSourcePersistence];
  v11 = [(FCMultiSourceHeadlinesOperation *)self context];
  v12 = MEMORY[0x1E695DF90];
  v40[0] = @"Article";
  v39[0] = @"sourceChannelTagID";
  v39[1] = @"parentIssueID";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v41[0] = v13;
  v41[1] = MEMORY[0x1E695E0F0];
  v40[1] = @"Tag";
  v40[2] = @"Issue";
  v41[2] = MEMORY[0x1E695E0F0];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v15 = [v12 dictionaryWithDictionary:v14];

  if ([v10 count])
  {
    v38 = @"articleIDs";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [v15 setObject:v16 forKeyedSubscript:@"ArticleList"];
  }

  v17 = objc_alloc_init(FCRecordChainFetchOperation);
  [(FCRecordChainFetchOperation *)v17 setContext:v11];
  v18 = [(FCMultiSourceHeadlinesOperation *)self edgeCacheHint];
  [(FCRecordChainFetchOperation *)v17 setEdgeCacheHint:v18];

  v19 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v9 toArray:v10];
  [(FCRecordChainFetchOperation *)v17 setTopLevelRecordIDs:v19];

  [(FCRecordChainFetchOperation *)v17 setLinkKeysByRecordType:v15];
  v36[0] = @"Article";
  v20 = [(FCMultiSourceHeadlinesOperation *)self cachePolicyForArticles];
  v36[1] = @"ArticleList";
  v37[0] = v20;
  v21 = [(FCMultiSourceHeadlinesOperation *)self cachePolicyForArticleLists];
  v37[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [(FCRecordChainFetchOperation *)v17 setCachePoliciesByRecordType:v22];

  [(FCRecordChainFetchOperation *)v17 setShouldReturnErrorWhenSomeRecordsMissing:1];
  [(FCRecordChainFetchOperation *)v17 setShouldBypassRecordSourcePersistence:v27];
  if (v28)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__FCMultiSourceHeadlinesOperation_performOperation__block_invoke;
    v34[3] = &unk_1E7C42508;
    v35 = v28;
    [(FCRecordChainFetchOperation *)v17 setCachedRecordsLookupBlock:v34];
  }

  objc_initWeak(buf, v17);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__FCMultiSourceHeadlinesOperation_performOperation__block_invoke_2;
  v29[3] = &unk_1E7C42570;
  v29[4] = self;
  v23 = v10;
  v30 = v23;
  v24 = v9;
  v31 = v24;
  v25 = v11;
  v32 = v25;
  objc_copyWeak(&v33, buf);
  [(FCRecordChainFetchOperation *)v17 setRecordChainCompletionHandler:v29];
  [(FCOperation *)self associateChildOperation:v17];
  [(FCOperation *)v17 start];
  objc_destroyWeak(&v33);

  objc_destroyWeak(buf);
  v26 = *MEMORY[0x1E69E9840];
}

id __51__FCMultiSourceHeadlinesOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:a2];
  v7 = [v6 heldRecordsForIDs:v5];

  return v7;
}

void __51__FCMultiSourceHeadlinesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setResultHeldRecordsByType:v5];
  v7 = [*(a1 + 32) headlinesCompletionHandler];

  if (v7)
  {
    v43 = [v5 objectForKeyedSubscript:&unk_1F2E706B0];
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E706C8];
    v42 = [v5 objectForKeyedSubscript:&unk_1F2E706E0];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E706F8];
    v41 = [*(a1 + 32) configuration];
    v10 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 shortOperationDescription];
      *buf = 138544130;
      v47 = v13;
      v48 = 2048;
      v49 = [v8 count];
      v50 = 2048;
      v51 = [v43 count];
      v52 = 2048;
      v53 = [v9 count];
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ received articleRecords:%lu articleListRecords:%lu tagRecords:%lu requireSourceChannels:YES", buf, 0x2Au);
    }

    if (*(a1 + 40) && v8 && v9 && v43)
    {
      v14 = [v43 transformRecordsWithBlock:&__block_literal_global_110];
      v15 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        v18 = [v16 shortOperationDescription];
        v19 = [v43 count];
        v20 = [*(a1 + 48) count];
        *buf = 138543874;
        v47 = v18;
        v48 = 2048;
        v49 = v19;
        v50 = 2048;
        v51 = v20;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ transformed articleListRecords:%lu into articleLists:%lu", buf, 0x20u);
      }

      v21 = [*(a1 + 56) assetManager];
      v22 = FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(v41, v21, v8, v9, v42, v14, 1);
      [*(a1 + 32) setResultArticleListHeadlinesByArticleListID:v22];

      v23 = [v14 fc_dictionaryWithKeyBlock:&__block_literal_global_25_1];
      [*(a1 + 32) setResultArticleListsByID:v23];
    }

    if (*(a1 + 48) && v8 && v9)
    {
      v24 = [*(a1 + 56) tagController];
      v25 = [v24 channelsForTagRecords:v9];

      v26 = [*(a1 + 56) assetManager];
      v27 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 48)];
      v28 = FCHeadlinesByArticleIDFromHeldRecords(v41, v26, v27, v8, v25, v42, 1, 0);
      [*(a1 + 32) setResultArticleIDHeadlinesByArticleID:v28];
    }

    v29 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = v29;
      v32 = [v30 shortOperationDescription];
      v33 = [*(a1 + 32) resultArticleListHeadlinesByArticleListID];
      v34 = [v33 count];
      v35 = [*(a1 + 32) resultArticleIDHeadlinesByArticleID];
      v36 = [v35 count];
      *buf = 138543874;
      v47 = v32;
      v48 = 2048;
      v49 = v34;
      v50 = 2048;
      v51 = v36;
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ result articleListHeadlinesByArticleListID:%lu articleIDHeadlinesByArticleID:%lu", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v38 = [WeakRetained networkEvents];
    [*(a1 + 32) setNetworkEvents:v38];

    [*(a1 + 32) finishedPerformingOperationWithError:v6];
    v39 = v43;
  }

  else
  {
    v44 = *(a1 + 32);
    v45 = v6;
    [v44 finishedPerformingOperationWithError:v45];
    v39 = v45;
  }

  v40 = *MEMORY[0x1E69E9840];
}

FCArticleList *__51__FCMultiSourceHeadlinesOperation_performOperation__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FCArticleList alloc] initWithRecord:v5 interestToken:v4];

  return v6;
}

- (void)operationWillFinishWithError:(id)a3
{
  v12 = a3;
  v4 = [(FCMultiSourceHeadlinesOperation *)self headlinesCompletionHandler];

  if (v4)
  {
    v5 = [(FCMultiSourceHeadlinesOperation *)self headlinesCompletionHandler];
    v6 = [(FCMultiSourceHeadlinesOperation *)self resultArticleListHeadlinesByArticleListID];
    v7 = [(FCMultiSourceHeadlinesOperation *)self resultArticleListsByID];
    v8 = [(FCMultiSourceHeadlinesOperation *)self resultArticleIDHeadlinesByArticleID];
    (v5)[2](v5, v6, v7, v8, v12);
  }

  v9 = [(FCMultiSourceHeadlinesOperation *)self heldRecordsCompletionHandler];

  if (v9)
  {
    v10 = [(FCMultiSourceHeadlinesOperation *)self heldRecordsCompletionHandler];
    v11 = [(FCMultiSourceHeadlinesOperation *)self resultHeldRecordsByType];
    (v10)[2](v10, v11, v12);
  }
}

@end