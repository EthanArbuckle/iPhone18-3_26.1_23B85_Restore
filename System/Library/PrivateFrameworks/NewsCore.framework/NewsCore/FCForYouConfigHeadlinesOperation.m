@interface FCForYouConfigHeadlinesOperation
- (BOOL)validateOperation;
- (id)_edgeCacheHint;
- (id)forYouConfigRecordID;
- (id)localTodayFeedConfiguration;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCForYouConfigHeadlinesOperation

- (BOOL)validateOperation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(FCForYouConfigHeadlinesOperation *)self configuration];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch ForYouConfig without a configuration"];
    v16 = 136315906;
    v17 = "[FCForYouConfigHeadlinesOperation validateOperation]";
    v18 = 2080;
    v19 = "FCForYouConfigHeadlinesOperation.m";
    v20 = 1024;
    v21 = 57;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  v4 = [(FCForYouConfigHeadlinesOperation *)self bundleSubscriptionManager];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch ForYouConfig headlines without a bundle subscription manager"];
    v16 = 136315906;
    v17 = "[FCForYouConfigHeadlinesOperation validateOperation]";
    v18 = 2080;
    v19 = "FCForYouConfigHeadlinesOperation.m";
    v20 = 1024;
    v21 = 61;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  v5 = [(FCForYouConfigHeadlinesOperation *)self context];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch ForYouConfig headlines without a context"];
    v16 = 136315906;
    v17 = "[FCForYouConfigHeadlinesOperation validateOperation]";
    v18 = 2080;
    v19 = "FCForYouConfigHeadlinesOperation.m";
    v20 = 1024;
    v21 = 65;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  v6 = [(FCForYouConfigHeadlinesOperation *)self fields];
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have headline fields to fetch ForYouConfig headlines"];
    v16 = 136315906;
    v17 = "[FCForYouConfigHeadlinesOperation validateOperation]";
    v18 = 2080;
    v19 = "FCForYouConfigHeadlinesOperation.m";
    v20 = 1024;
    v21 = 69;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  result = !v7 && v5 != 0 && v6 != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v40[6] = *MEMORY[0x1E69E9840];
  v3 = [(FCForYouConfigHeadlinesOperation *)self configuration];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke;
  v34[3] = &unk_1E7C36D40;
  v34[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v34];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_2;
  v33[3] = &unk_1E7C36D40;
  v33[4] = self;
  v5 = [MEMORY[0x1E695DEC8] fc_array:v33];
  v6 = MEMORY[0x1E695DEC8];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_3;
  v31[3] = &unk_1E7C3B110;
  v31[4] = self;
  v23 = v3;
  v32 = v23;
  v7 = [v6 fc_array:v31];
  v8 = objc_alloc_init(FCRecordChainFetchOperation);
  v9 = [(FCForYouConfigHeadlinesOperation *)self context];
  [(FCRecordChainFetchOperation *)v8 setContext:v9];

  v10 = [(FCForYouConfigHeadlinesOperation *)self _edgeCacheHint];
  [(FCRecordChainFetchOperation *)v8 setEdgeCacheHint:v10];

  v24 = v7;
  [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v7];
  v39[0] = @"ArticleList";
  v38 = @"articleIDs";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v40[0] = v11;
  v39[1] = @"Article";
  v37[0] = @"sourceChannelTagID";
  v37[1] = @"parentIssueID";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v40[1] = v12;
  v40[2] = v5;
  v39[2] = @"AudioConfig";
  v39[3] = @"ForYouConfig";
  v25 = v4;
  v40[3] = v4;
  v40[4] = MEMORY[0x1E695E0F0];
  v39[4] = @"Issue";
  v39[5] = @"Tag";
  v40[5] = MEMORY[0x1E695E0F0];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:6];
  [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v13];

  v35[0] = @"ArticleList";
  v14 = [(FCForYouConfigHeadlinesOperation *)self articleListCachePolicy];
  v15 = v14;
  if (!v14)
  {
    v15 = +[FCCachePolicy defaultCachePolicy];
  }

  v36[0] = v15;
  v35[1] = @"AudioConfig";
  v16 = [(FCForYouConfigHeadlinesOperation *)self forYouConfigCachePolicy];
  v17 = v16;
  if (!v16)
  {
    v17 = +[FCCachePolicy defaultCachePolicy];
  }

  v36[1] = v17;
  v35[2] = @"ForYouConfig";
  v18 = [(FCForYouConfigHeadlinesOperation *)self forYouConfigCachePolicy];
  v19 = v18;
  if (!v18)
  {
    v19 = +[FCCachePolicy defaultCachePolicy];
  }

  v36[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [(FCRecordChainFetchOperation *)v8 setCachePoliciesByRecordType:v20];

  if (!v18)
  {
  }

  if (!v16)
  {
  }

  if (!v14)
  {
  }

  if ([(FCForYouConfigHeadlinesOperation *)self shouldFetchEditorialSectionTags])
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_4;
    v28[3] = &unk_1E7C40980;
    v29 = v23;
    v30 = self;
    [(FCRecordChainFetchOperation *)v8 setDynamicCachePolicyBlock:v28];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_5;
  v26[3] = &unk_1E7C40918;
  v26[4] = self;
  v27 = v23;
  v21 = v23;
  [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:v26];
  [(FCOperation *)self associateChildOperation:v8];
  [(FCOperation *)v8 start];

  v22 = *MEMORY[0x1E69E9840];
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) fields] & 2) != 0)
  {
    [v3 addObject:@"todayFeedTopStoriesArticleIDs"];
  }

  if (([*(a1 + 32) fields] & 4) != 0)
  {
    [v3 addObject:@"editorialArticleListIDs"];
  }

  if (([*(a1 + 32) fields] & 8) != 0)
  {
    [v3 addObject:@"trendingArticleListID"];
  }

  if (([*(a1 + 32) fields] & 0x10) != 0)
  {
    [v3 addObject:@"spotlightArticleID"];
  }

  if ([*(a1 + 32) shouldFetchEditorialSectionTags])
  {
    [v3 addObject:@"editorialSectionTagIDs"];
  }
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) fields] & 0x40) != 0)
  {
    [v3 addObject:@"dailyBriefingArticleID"];
  }
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) forYouConfigRecordID];
  [v12 addObject:v3];

  v4 = [*(a1 + 32) additionalArticleListIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [*(a1 + 32) additionalArticleListIDs];
    [v12 addObjectsFromArray:v6];
  }

  v7 = [*(a1 + 32) additionalTagIDs];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [*(a1 + 32) additionalTagIDs];
    [v12 addObjectsFromArray:v9];
  }

  if (([*(a1 + 32) fields] & 0x40) != 0)
  {
    v10 = [*(a1 + 40) audioConfigRecordID];

    if (v10)
    {
      v11 = [*(a1 + 40) audioConfigRecordID];
      [v12 addObject:v11];
    }
  }
}

id __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 2 && ([v5 parentID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "editorialChannelID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = [*(a1 + 40) editorialSectionTagCachePolicy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishedPerformingOperationWithError:a3];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E69B68F8]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_6;
    v20[3] = &unk_1E7C39ED0;
    v20[4] = *(a1 + 32);
    v7 = [v6 initWithResolver:v20];
    v8 = zalgo();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_8;
    v19[3] = &unk_1E7C409A8;
    v19[4] = *(a1 + 32);
    v9 = [v7 thenOn:v8 then:v19];
    v10 = zalgo();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_9;
    v15[3] = &unk_1E7C3C4E8;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v14 = [v9 thenOn:v10 then:v15];
  }
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) personalizer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_7;
  v6[3] = &unk_1E7C379C8;
  v7 = v3;
  v5 = v3;
  [v4 prepareForUseWithCompletionHandler:v6];
}

uint64_t __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_9(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E704E8];
  v3 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70500];
  v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70518];
  v5 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70530];
  v6 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70548];
  v7 = [v2 onlyRecord];
  v8 = [FCForYouConfig alloc];
  v9 = [v2 onlyInterestToken];
  v42 = v7;
  v10 = [(FCForYouConfig *)v8 initWithRecord:v7 interestToken:v9];
  [*(a1 + 40) setResultForYouConfig:v10];

  v11 = [*(a1 + 40) context];
  v12 = [v11 tagController];
  v13 = [v12 tagsForTagRecords:v6];
  [*(a1 + 40) setResultTagsByID:v13];

  v43 = v4;
  v14 = [v4 transformRecordsByIDWithBlock:&__block_literal_global_74];
  [*(a1 + 40) setResultArticleListsByID:v14];

  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) context];
  v17 = [v16 assetManager];
  v18 = [*(a1 + 40) resultArticleListsByID];
  v19 = [v18 allValues];
  v20 = FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(v15, v17, v5, v6, v3, v19, 1);
  [*(a1 + 40) setResultHeadlinesByArticleListID:v20];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_2_35;
  v48[3] = &unk_1E7C371F8;
  v48[4] = *(a1 + 40);
  v21 = [MEMORY[0x1E695DFD8] fc_set:v48];
  if ([v21 count])
  {
    v22 = *(a1 + 48);
    v23 = [*(a1 + 40) context];
    v24 = [v23 assetManager];
    v25 = [*(a1 + 40) resultTagsByID];
    v26 = FCHeadlinesByArticleIDFromHeldRecords(v22, v24, v21, v5, v25, v3, 1, 1);
    [*(a1 + 40) setResultHeadlinesByArticleID:v26];
  }

  v27 = [*(a1 + 40) personalizer];

  if (v27)
  {
    v41 = v3;
    v28 = [MEMORY[0x1E695DF70] array];
    v29 = [*(a1 + 40) resultHeadlinesByArticleID];
    v30 = [v29 allValues];
    [v28 addObjectsFromArray:v30];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = [*(a1 + 40) resultHeadlinesByArticleListID];
    v32 = [v31 allValues];

    v33 = [v32 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v45;
      do
      {
        v36 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [v28 addObjectsFromArray:*(*(&v44 + 1) + 8 * v36++)];
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v34);
    }

    v37 = [*(a1 + 40) personalizer];
    FCAssignPersonalizationScoresToHeadlines(v28, v37, 0);

    v3 = v41;
  }

  v38 = [*(a1 + 40) resultForYouConfig];
  [*(a1 + 40) setForYouConfig:v38];

  [*(a1 + 40) finishedPerformingOperationWithError:0];
  v39 = *MEMORY[0x1E69E9840];
  return 0;
}

FCArticleList *__52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FCArticleList alloc] initWithRecord:v5 interestToken:v4];

  return v6;
}

void __52__FCForYouConfigHeadlinesOperation_performOperation__block_invoke_2_35(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) fields] & 2) != 0)
  {
    v3 = [*(a1 + 32) resultForYouConfig];
    v4 = [v3 todayFeedTopStoriesArticleIDs];
    [v9 addObjectsFromArray:v4];
  }

  if (([*(a1 + 32) fields] & 0x10) != 0)
  {
    v5 = [*(a1 + 32) resultForYouConfig];
    v6 = [v5 spotlightArticleID];

    if (v6)
    {
      v7 = [*(a1 + 32) resultForYouConfig];
      v8 = [v7 spotlightArticleID];
      [v9 addObject:v8];
    }
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v17 = a3;
  [(FCForYouConfigHeadlinesOperation *)self setError:?];
  v4 = [(FCForYouConfigHeadlinesOperation *)self headlinesCompletionHandler];

  if (v4)
  {
    v5 = [(FCForYouConfigHeadlinesOperation *)self headlinesCompletionHandler];
    v6 = [(FCForYouConfigHeadlinesOperation *)self resultForYouConfig];
    v7 = [(FCForYouConfigHeadlinesOperation *)self resultArticleListsByID];
    v8 = [(FCForYouConfigHeadlinesOperation *)self resultHeadlinesByArticleListID];
    v9 = [(FCForYouConfigHeadlinesOperation *)self resultHeadlinesByArticleID];
    (v5)[2](v5, v6, v7, v8, v9, v17);
  }

  v10 = [(FCForYouConfigHeadlinesOperation *)self headlinesAndTagsCompletionHandler];

  if (v10)
  {
    v11 = [(FCForYouConfigHeadlinesOperation *)self headlinesAndTagsCompletionHandler];
    v12 = [(FCForYouConfigHeadlinesOperation *)self resultForYouConfig];
    v13 = [(FCForYouConfigHeadlinesOperation *)self resultArticleListsByID];
    v14 = [(FCForYouConfigHeadlinesOperation *)self resultHeadlinesByArticleListID];
    v15 = [(FCForYouConfigHeadlinesOperation *)self resultHeadlinesByArticleID];
    v16 = [(FCForYouConfigHeadlinesOperation *)self resultTagsByID];
    (v11)[2](v11, v12, v13, v14, v15, v16, v17);
  }
}

- (id)_edgeCacheHint
{
  v18 = *MEMORY[0x1E69E9840];
  if (([(FCForYouConfigHeadlinesOperation *)self fields]& 4) != 0)
  {
    v4 = +[FCEdgeCacheHint edgeCacheHintForEditorial];
    goto LABEL_10;
  }

  if (([(FCForYouConfigHeadlinesOperation *)self fields]& 2) != 0)
  {
    v4 = +[FCEdgeCacheHint edgeCacheHintForTopStories];
    goto LABEL_10;
  }

  v3 = [(FCForYouConfigHeadlinesOperation *)self fields];
  if (v3 <= 7)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      v10 = 136315906;
      v11 = "[FCForYouConfigHeadlinesOperation _edgeCacheHint]";
      v12 = 2080;
      v13 = "FCForYouConfigHeadlinesOperation.m";
      v14 = 1024;
      v15 = 283;
      v16 = 2114;
      v17 = v7;
      v8 = MEMORY[0x1E69E9C10];
    }

    else
    {
      if (v3 != 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      v10 = 136315906;
      v11 = "[FCForYouConfigHeadlinesOperation _edgeCacheHint]";
      v12 = 2080;
      v13 = "FCForYouConfigHeadlinesOperation.m";
      v14 = 1024;
      v15 = 284;
      v16 = 2114;
      v17 = v7;
      v8 = MEMORY[0x1E69E9C10];
    }

    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    goto LABEL_11;
  }

  switch(v3)
  {
    case 8:
      v4 = +[FCEdgeCacheHint edgeCacheHintForTrending];
      goto LABEL_10;
    case 16:
      v4 = +[FCEdgeCacheHint edgeCacheHintForSpotlight];
LABEL_10:
      if (v4)
      {
        goto LABEL_14;
      }

      break;
    case 32:
      v4 = +[FCEdgeCacheHint edgeCacheHintForForYouConfig];
      goto LABEL_10;
  }

LABEL_11:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected to have an edge cache hint for all ForYouConfig operations"];
    v10 = 136315906;
    v11 = "[FCForYouConfigHeadlinesOperation _edgeCacheHint]";
    v12 = 2080;
    v13 = "FCForYouConfigHeadlinesOperation.m";
    v14 = 1024;
    v15 = 294;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  v4 = 0;
LABEL_14:
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)forYouConfigRecordID
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(FCForYouConfigHeadlinesOperation *)self bundleSubscriptionManager];
  v4 = [v3 cachedSubscription];
  v5 = objc_getAssociatedObject(v4, (v4 + 1));
  v6 = [v5 unsignedIntegerValue];
  v7 = v6;
  v8 = objc_getAssociatedObject(v4, ~v6);
  v9 = [v8 unsignedIntegerValue] ^ v7;

  v10 = [(FCForYouConfigHeadlinesOperation *)self configuration];
  v11 = v10;
  if (v9)
  {
    [v10 forYouPremiumRecordConfigID];
  }

  else
  {
    [v10 forYouRecordConfigID];
  }
  v12 = ;

  v13 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(FCOperation *)self shortOperationDescription];
    v18 = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching the ForYouConfig with recordID: %{public}@", &v18, 0x16u);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)localTodayFeedConfiguration
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:@"news.modules.today_feed.debug_feed_config.enabled"];

  v4 = NewsCoreUserDefaults();
  v5 = [v4 objectForKey:@"news.modules.today_feed.debug_feed_config.url"];

  if (NFInternalBuild() && v3 && [v5 length])
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = objc_alloc(MEMORY[0x1E69B68F8]);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__FCForYouConfigHeadlinesOperation_localTodayFeedConfiguration__block_invoke_3;
      v13[3] = &unk_1E7C39ED0;
      v14 = v8;
      v10 = v8;
      v11 = [v9 initWithResolver:v13];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:0];
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:0];
  }

  return v11;
}

void __63__FCForYouConfigHeadlinesOperation_localTodayFeedConfiguration__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695AC78] sharedSession];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__FCForYouConfigHeadlinesOperation_localTodayFeedConfiguration__block_invoke_4;
  v8[3] = &unk_1E7C400C0;
  v9 = v3;
  v6 = v3;
  v7 = [v4 dataTaskWithURL:v5 completionHandler:v8];

  [v7 resume];
}

void __63__FCForYouConfigHeadlinesOperation_localTodayFeedConfiguration__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  (*(*(a1 + 32) + 16))();
}

@end