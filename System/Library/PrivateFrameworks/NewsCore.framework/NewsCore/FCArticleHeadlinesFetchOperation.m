@interface FCArticleHeadlinesFetchOperation
- (FCArticleHeadlinesFetchOperation)init;
- (FCArticleHeadlinesFetchOperation)initWithContext:(id)a3 articleIDs:(id)a4 ignoreCacheForArticleIDs:(id)a5;
- (id)determineAppropriateFetchStepsWithCompletion:(id)a3;
- (id)fetchConfigWithCompletion:(id)a3;
- (id)fetchRecordsWithCompletion:(id)a3;
@end

@implementation FCArticleHeadlinesFetchOperation

- (FCArticleHeadlinesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleHeadlinesFetchOperation init]";
    v10 = 2080;
    v11 = "FCArticleHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 259;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleHeadlinesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleHeadlinesFetchOperation)initWithContext:(id)a3 articleIDs:(id)a4 ignoreCacheForArticleIDs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCArticleHeadlinesFetchOperation;
  v12 = [(FCMultiStepFetchOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_articleIDs, a4);
    objc_storeStrong(&v13->_ignoreCacheForArticleIDs, a5);
    [(FCMultiStepFetchOperation *)v13 addFetchStep:sel_determineAppropriateFetchStepsWithCompletion_];
  }

  return v13;
}

- (id)determineAppropriateFetchStepsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCArticleHeadlinesFetchOperation *)self configuration];

  if (!v5)
  {
    [(FCMultiStepFetchOperation *)self addNonCriticalFetchStep:sel_fetchConfigWithCompletion_];
  }

  [(FCMultiStepFetchOperation *)self addFetchStep:sel_fetchRecordsWithCompletion_];
  v4[2](v4, 0);

  return 0;
}

- (id)fetchConfigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FCArticleHeadlinesFetchOperation *)self context];
  v6 = [v5 configurationManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__FCArticleHeadlinesFetchOperation_fetchConfigWithCompletion___block_invoke;
  v9[3] = &unk_1E7C3B248;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  FCCoreConfigurationFetch(v6, v9);

  return 0;
}

void __62__FCArticleHeadlinesFetchOperation_fetchConfigWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {

    v6 = 0;
    v7 = 3;
  }

  else
  {
    v7 = 0;
    v6 = v9;
  }

  v10 = v6;
  [*(a1 + 32) setConfiguration:v6];
  v8 = [FCFetchOperationResult resultWithStatus:v7 fetchedObject:v10 error:v5];
  (*(*(a1 + 40) + 16))();
}

- (id)fetchRecordsWithCompletion:(id)a3
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FCArticleHeadlinesFetchOperation *)self articleIDs];
  v6 = objc_alloc_init(FCRecordChainFetchOperation);
  v7 = [(FCArticleHeadlinesFetchOperation *)self context];
  [(FCRecordChainFetchOperation *)v6 setContext:v7];

  [(FCRecordChainFetchOperation *)v6 setTopLevelRecordIDs:v5];
  v25[0] = @"Article";
  v24[0] = @"sourceChannelTagID";
  v24[1] = @"parentIssueID";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v26[0] = v8;
  v26[1] = MEMORY[0x1E695E0F0];
  v25[1] = @"Tag";
  v25[2] = @"Issue";
  v26[2] = MEMORY[0x1E695E0F0];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [(FCRecordChainFetchOperation *)v6 setLinkKeysByRecordType:v9];

  v10 = objc_opt_new();
  if ([(FCArticleHeadlinesFetchOperation *)self overrideArticleCachePolicy])
  {
    v11 = [(FCArticleHeadlinesFetchOperation *)self articleCachePolicy];
  }

  else
  {
    v11 = [(FCFetchOperation *)self cachePolicy];
  }

  [v10 setCachePolicy:v11];
  if ([(FCArticleHeadlinesFetchOperation *)self overrideArticleCachePolicy])
  {
    [(FCArticleHeadlinesFetchOperation *)self articleMaximumCachedAge];
  }

  else
  {
    [(FCFetchOperation *)self maximumCachedAge];
  }

  [v10 setMaximumCachedAge:?];
  v12 = objc_opt_new();
  if ([(FCArticleHeadlinesFetchOperation *)self overrideTagCachePolicy])
  {
    v13 = [(FCArticleHeadlinesFetchOperation *)self tagCachePolicy];
  }

  else
  {
    v13 = [(FCFetchOperation *)self cachePolicy];
  }

  [v12 setCachePolicy:v13];
  if ([(FCArticleHeadlinesFetchOperation *)self overrideTagCachePolicy])
  {
    [(FCArticleHeadlinesFetchOperation *)self tagMaximumCachedAge];
  }

  else
  {
    [(FCFetchOperation *)self maximumCachedAge];
  }

  [v12 setMaximumCachedAge:?];
  v22[0] = @"Article";
  v22[1] = @"Tag";
  v23[0] = v10;
  v23[1] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [(FCRecordChainFetchOperation *)v6 setCachePoliciesByRecordType:v14];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke;
  v19[3] = &unk_1E7C378E8;
  v19[4] = self;
  v20 = v5;
  v21 = v4;
  v15 = v4;
  v16 = v5;
  [(FCRecordChainFetchOperation *)v6 setRecordChainCompletionHandler:v19];

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

void __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = a3;
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:&unk_1F2E704A0];
  v7 = [v5 objectForKeyedSubscript:&unk_1F2E704B8];
  v8 = [v5 objectForKeyedSubscript:&unk_1F2E704D0];

  if (v5)
  {
    v9 = [*(a1 + 32) context];
    v10 = [v9 tagController];
    v11 = [v10 channelsForTagRecords:v7];

    v12 = [*(a1 + 32) configuration];
    v13 = [*(a1 + 32) context];
    [v13 assetManager];
    v15 = v14 = v7;
    v16 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
    v17 = FCHeadlinesByArticleIDFromHeldRecords(v12, v15, v16, v6, v11, v8, [*(a1 + 32) shouldFilterHeadlinesWithoutSourceChannels], 1);

    v7 = v14;
    v18 = [v17 nf_objectsForKeysWithoutMarker:*(a1 + 40)];
    [*(a1 + 32) setResultHeadlines:v18];
  }

  v19 = v8;
  v20 = [*(a1 + 32) resultHeadlines];
  v21 = [v20 count];
  v22 = [*(a1 + 32) articleIDs];
  v23 = [v22 count];

  if (v21 == v23)
  {
    v24 = [*(a1 + 32) resultHeadlines];
    v25 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v24 error:0];
  }

  else
  {
    v26 = [*(a1 + 32) resultHeadlines];
    v24 = [v26 fc_setByTransformingWithBlock:&__block_literal_global_73];

    v27 = MEMORY[0x1E695DFD8];
    v28 = [*(a1 + 32) articleIDs];
    v29 = [v27 setWithArray:v28];
    v30 = [v29 fc_setByMinusingSet:v24];

    v31 = [*(a1 + 32) resultHeadlines];
    v32 = [v31 count];

    if (v32)
    {
      [*(a1 + 32) resultHeadlines];
      v34 = v33 = v7;
      v25 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v34 error:0];

      v7 = v33;
    }

    else
    {
      if ([*(a1 + 32) cachePolicy] == 3)
      {
        v35 = 2;
        v36 = 0;
      }

      else
      {
        v35 = 3;
        v36 = v40;
      }

      v25 = [FCFetchOperationResult resultWithStatus:v35 fetchedObject:0 error:v36];
    }

    v8 = v19;
    [v25 setMissingObjectDescriptions:v30];
  }

  v37 = [*(a1 + 32) interestTokenHandler];

  if (v37)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E7C40428;
    aBlock[4] = *(a1 + 32);
    v38 = _Block_copy(aBlock);
    v38[2](v38, v6);
    v38[2](v38, v7);
    v38[2](v38, v8);
  }

  (*(*(a1 + 48) + 16))();
}

void __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 interestTokensByID];
  v4 = [v3 allValues];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke_3;
  v5[3] = &unk_1E7C40400;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __63__FCArticleHeadlinesFetchOperation_fetchRecordsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 interestTokenHandler];
  v4[2](v4, v3);
}

@end