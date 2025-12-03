@interface FCEditorialOperation
- (BOOL)validateOperation;
- (void)enumerateEditorialSectionsByRecencyWithBlock:(id)block;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCEditorialOperation

- (void)enumerateEditorialSectionsByRecencyWithBlock:(id)block
{
  blockCopy = block;
  editorialSectionGroups = [(FCEditorialOperation *)self editorialSectionGroups];
  v6 = [editorialSectionGroups sortedArrayUsingComparator:&__block_literal_global_175];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__FCEditorialOperation_enumerateEditorialSectionsByRecencyWithBlock___block_invoke_2;
  v8[3] = &unk_1E7C47100;
  v9 = blockCopy;
  v7 = blockCopy;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __69__FCEditorialOperation_enumerateEditorialSectionsByRecencyWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 publishDate];
  v6 = [v4 publishDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __69__FCEditorialOperation_enumerateEditorialSectionsByRecencyWithBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v6 section];
  v7 = [v6 headlines];

  (*(v5 + 16))(v5, v8, v7, a4);
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  configuration = [(FCEditorialOperation *)self configuration];

  if (!configuration && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"editorial operation must have a configuration"];
    v12 = 136315906;
    v13 = "[FCEditorialOperation validateOperation]";
    v14 = 2080;
    v15 = "FCEditorialOperation.m";
    v16 = 1024;
    v17 = 65;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  context = [(FCEditorialOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"editorial catch-up operation must have a context"];
    v12 = 136315906;
    v13 = "[FCEditorialOperation validateOperation]";
    v14 = 2080;
    v15 = "FCEditorialOperation.m";
    v16 = 1024;
    v17 = 66;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  configuration2 = [(FCEditorialOperation *)self configuration];
  if (configuration2)
  {
    context2 = [(FCEditorialOperation *)self context];
    v7 = context2 != 0;
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
  v24[1] = *MEMORY[0x1E69E9840];
  configuration = [(FCEditorialOperation *)self configuration];
  v4 = objc_alloc_init(FCForYouConfigHeadlinesOperation);
  [(FCForYouConfigHeadlinesOperation *)v4 setConfiguration:configuration];
  context = [(FCEditorialOperation *)self context];
  [(FCForYouConfigHeadlinesOperation *)v4 setContext:context];

  context2 = [(FCEditorialOperation *)self context];
  feedPersonalizer = [context2 feedPersonalizer];
  [(FCForYouConfigHeadlinesOperation *)v4 setPersonalizer:feedPersonalizer];

  context3 = [(FCEditorialOperation *)self context];
  bundleSubscriptionManager = [context3 bundleSubscriptionManager];
  [(FCForYouConfigHeadlinesOperation *)v4 setBundleSubscriptionManager:bundleSubscriptionManager];

  [(FCForYouConfigHeadlinesOperation *)v4 setFields:92];
  v10 = [FCCachePolicy cachePolicyWithSoftMaxAge:15.0];
  [(FCForYouConfigHeadlinesOperation *)v4 setForYouConfigCachePolicy:v10];

  v11 = [FCCachePolicy cachePolicyWithSoftMaxAge:15.0];
  [(FCForYouConfigHeadlinesOperation *)v4 setArticleListCachePolicy:v11];

  v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:15.0];
  [(FCForYouConfigHeadlinesOperation *)v4 setEditorialSectionTagCachePolicy:v12];

  editorialChannelID = [configuration editorialChannelID];

  if (editorialChannelID)
  {
    [(FCForYouConfigHeadlinesOperation *)v4 setShouldFetchEditorialSectionTags:1];
    editorialChannelID2 = [configuration editorialChannelID];
    v24[0] = editorialChannelID2;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [(FCForYouConfigHeadlinesOperation *)v4 setAdditionalTagIDs:v15];
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __40__FCEditorialOperation_performOperation__block_invoke;
  v21 = &unk_1E7C47150;
  selfCopy = self;
  v23 = configuration;
  v16 = configuration;
  [(FCForYouConfigHeadlinesOperation *)v4 setHeadlinesAndTagsCompletionHandler:&v18];
  [(FCOperation *)self associateChildOperation:v4, v18, v19, v20, v21, selfCopy];
  [(FCOperation *)v4 start];

  v17 = *MEMORY[0x1E69E9840];
}

void __40__FCEditorialOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  if (v18)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __40__FCEditorialOperation_performOperation__block_invoke_2;
    v41 = &unk_1E7C36C58;
    v42 = *(a1 + 32);
    v43 = v18;
    [v42 finishedPerformingOperationWithError:v43];
  }

  else
  {
    v20 = [v13 trendingArticleListID];
    v21 = [v15 fc_safeObjectForKey:v20];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    [*(a1 + 32) setTrendingHeadlines:v23];

    v24 = [v13 spotlightGroupConfig];
    v25 = [v24 spotlightArticleID];
    v26 = [v16 objectForKey:v25];

    v27 = [FCSpotlightOperationResult alloc];
    v28 = [v13 spotlightGroupConfig];
    v29 = [(FCSpotlightOperationResult *)v27 initWithSpotlightGroupConfig:v28 headline:v26];
    [*(a1 + 32) setSpotlightResult:v29];

    v30 = MEMORY[0x1E695DEC8];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __40__FCEditorialOperation_performOperation__block_invoke_3;
    v32[3] = &unk_1E7C47128;
    v33 = v13;
    v34 = v17;
    v35 = v14;
    v36 = v15;
    v37 = *(a1 + 40);
    v31 = [v30 fc_array:v32];
    [*(a1 + 32) setEditorialSectionGroups:v31];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

void __40__FCEditorialOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [*(a1 + 32) editorialGroupConfigs];
  v33 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v31 = v4;
    v32 = *v35;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v34 + 1) + 8 * i);
        v7 = [v6 sectionID];
        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [v6 sectionID];
          v10 = [v8 objectForKeyedSubscript:v9];
          v11 = v10;
          if (v10)
          {
            if ([v10 conformsToProtocol:&unk_1F2EA7950])
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = [v6 articleListID];
        if (v14)
        {
          v15 = *(a1 + 48);
          v16 = [v6 articleListID];
          v17 = [v15 objectForKeyedSubscript:v16];
        }

        else
        {
          v17 = 0;
        }

        v18 = [v6 articleListID];
        if (v18)
        {
          v19 = *(a1 + 56);
          v20 = [v6 articleListID];
          v21 = [v19 objectForKeyedSubscript:v20];
        }

        else
        {
          v21 = 0;
        }

        v22 = [v6 sectionID];
        v23 = [*(a1 + 64) editorialGemsSectionID];
        v24 = [v22 isEqualToString:v23];

        if (v13 && v17 && !(([v21 count] == 0) | v24 & 1))
        {
          v25 = objc_alloc_init(FCEditorialOperationGroup);
          [(FCEditorialOperationGroup *)v25 setSection:v13];
          [(FCEditorialOperationGroup *)v25 setHeadlines:v21];
          v26 = [v17 editorialMetadata];
          v27 = [v26 publishDate];
          if (v27)
          {
            [(FCEditorialOperationGroup *)v25 setPublishDate:v27];
          }

          else
          {
            [v17 lastModifiedDate];
            v29 = v28 = v3;
            [(FCEditorialOperationGroup *)v25 setPublishDate:v29];

            v3 = v28;
            v4 = v31;
          }

          [v3 addObject:v25];
        }
      }

      v33 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  [(FCEditorialOperation *)self setError:?];
  fetchCompletionHandler = [(FCEditorialOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCEditorialOperation *)self fetchCompletionHandler];
    (fetchCompletionHandler2)[2](fetchCompletionHandler2, errorCopy);
  }
}

@end