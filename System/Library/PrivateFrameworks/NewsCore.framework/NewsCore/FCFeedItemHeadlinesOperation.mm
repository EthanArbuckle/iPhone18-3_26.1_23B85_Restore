@interface FCFeedItemHeadlinesOperation
- (BOOL)validateOperation;
- (FCFeedItemHeadlinesOperation)init;
- (FCMapTable)feedItemScoreProfiles;
- (void)_fetchUnadornedHeadlinesWithCompletionHandler:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)setFeedItemScoreProfiles:(id)a3;
@end

@implementation FCFeedItemHeadlinesOperation

- (FCFeedItemHeadlinesOperation)init
{
  v7.receiver = self;
  v7.super_class = FCFeedItemHeadlinesOperation;
  v2 = [(FCOperation *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_feedPersonalizationConfigurationSet = 0;
    v4 = objc_alloc_init(FCFeedItemHeadlinesOperationProperties);
    properties = v3->_properties;
    v3->_properties = v4;
  }

  return v3;
}

- (FCMapTable)feedItemScoreProfiles
{
  v2 = [(FCFeedItemHeadlinesOperation *)self properties];
  v3 = [v2 feedItemScoreProfiles];

  return v3;
}

- (void)setFeedItemScoreProfiles:(id)a3
{
  v4 = a3;
  v5 = [(FCFeedItemHeadlinesOperation *)self properties];
  [v5 setFeedItemScoreProfiles:v4];
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(FCFeedItemHeadlinesOperation *)self configuration];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed item headlines operation must have a configuration"];
    v12 = 136315906;
    v13 = "[FCFeedItemHeadlinesOperation validateOperation]";
    v14 = 2080;
    v15 = "FCFeedItemHeadlinesOperation.m";
    v16 = 1024;
    v17 = 72;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v4 = [(FCFeedItemHeadlinesOperation *)self context];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed item headlines operation must have a context"];
    v12 = 136315906;
    v13 = "[FCFeedItemHeadlinesOperation validateOperation]";
    v14 = 2080;
    v15 = "FCFeedItemHeadlinesOperation.m";
    v16 = 1024;
    v17 = 73;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v5 = [(FCFeedItemHeadlinesOperation *)self configuration];
  if (v5)
  {
    v6 = [(FCFeedItemHeadlinesOperation *)self context];
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
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__FCFeedItemHeadlinesOperation_performOperation__block_invoke;
  v2[3] = &unk_1E7C37750;
  v2[4] = self;
  [(FCFeedItemHeadlinesOperation *)self _fetchUnadornedHeadlinesWithCompletionHandler:v2];
}

void __48__FCFeedItemHeadlinesOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v46 = [a2 fc_dictionaryWithKeySelector:sel_articleID];
    v6 = [*(a1 + 32) properties];
    v7 = [v6 feedItemScoreProfiles];

    v8 = a1;
    v45 = v7;
    if (!v7)
    {
      v9 = NewsCoreUserDefaults();
      v10 = [v9 BOOLForKey:@"personalization_disabled"];

      if (v10)
      {
        v45 = 0;
      }

      else
      {
        v11 = [*(v8 + 32) personalizer];
        v12 = [*(v8 + 32) feedItems];
        v13 = [v11 sortItems:v12 options:1 configurationSet:{objc_msgSend(*(v8 + 32), "feedPersonalizationConfigurationSet")}];

        v45 = [v13 scoreProfiles];
      }
    }

    v44 = [MEMORY[0x1E695DF70] array];
    v43 = [FCMapTable mapTableWithKeyOptions:512 valueOptions:0];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [*(v8 + 32) feedItems];
    v14 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
      do
      {
        v17 = 0;
        do
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v51 + 1) + 8 * v17);
          v19 = objc_opt_class();
          v20 = [v18 articleID];
          v21 = [v46 objectForKeyedSubscript:v20];
          v22 = FCCheckedDynamicCast(v19, v21);

          if (v22)
          {
            v23 = v8;
            v24 = [v18 feedID];
            [v22 setSurfacedByBinID:v24];

            [v22 setFeedOrder:{objc_msgSend(v18, "order")}];
            [v18 globalUserFeedback];
            [v22 setGlobalUserFeedback:?];
            if ([v18 isEvergreen])
            {
              [v22 markAsEvergreen];
            }

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v25 = [v18 surfacedByArticleListIDs];
            v26 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v48;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  [v22 addSurfacedByArticleListID:*(*(&v47 + 1) + 8 * i)];
                }

                v27 = [v25 countByEnumeratingWithState:&v47 objects:v63 count:16];
              }

              while (v27);
            }

            v8 = v23;
            v30 = [*(v23 + 32) feedContextByFeedID];
            v31 = [v18 feedID];
            v32 = [v30 fc_safeObjectForKey:v31];

            if (v32)
            {
              v33 = [v32 sectionID];
              [v22 setSurfacedBySectionID:v33];

              v34 = [v32 channelID];
              [v22 setSurfacedByChannelID:v34];

              v35 = [v32 topicID];
              [v22 setSurfacedByTopicID:v35];

              [v22 setTopStoryType:{objc_msgSend(v32, "isTopStories")}];
            }

            v36 = [v45 objectForKey:v18];
            if (v36)
            {
              [v22 setScoreProfile:v36];
              [v36 sortingScore];
              [v22 setTileProminenceScore:?];
            }

            else
            {
              v37 = [*(v23 + 32) personalizer];

              if (v37 && !NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"personalizer should have provided a score"];
                *buf = 136315906;
                v56 = "[FCFeedItemHeadlinesOperation performOperation]_block_invoke";
                v57 = 2080;
                v58 = "FCFeedItemHeadlinesOperation.m";
                v59 = 1024;
                v60 = 133;
                v61 = 2114;
                v62 = v38;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }
            }

            [v44 addObject:v22];
            [v43 setObject:v22 forKey:v18];
          }

          ++v17;
        }

        while (v17 != v15);
        v39 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
        v15 = v39;
      }

      while (v39);
    }

    [*(v8 + 32) setResultHeadlines:v44];
    v40 = [*(v8 + 32) properties];
    [v40 setResultHeadlinesByFeedItem:v43];

    a1 = v8;
    v5 = 0;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v5];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v11 = a3;
  v4 = [(FCFeedItemHeadlinesOperation *)self headlinesCompletionHandler];

  if (v4)
  {
    v5 = [(FCFeedItemHeadlinesOperation *)self headlinesCompletionHandler];
    v6 = [(FCFeedItemHeadlinesOperation *)self resultHeadlines];
    (v5)[2](v5, v6, v11);
  }

  v7 = [(FCFeedItemHeadlinesOperation *)self headlinesMapCompletionHandler];

  if (v7)
  {
    v8 = [(FCFeedItemHeadlinesOperation *)self headlinesMapCompletionHandler];
    v9 = [(FCFeedItemHeadlinesOperation *)self properties];
    v10 = [v9 resultHeadlinesByFeedItem];
    (v8)[2](v8, v10, v11);
  }
}

- (void)_fetchUnadornedHeadlinesWithCompletionHandler:(id)a3
{
  v106 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v4 = [(FCFeedItemHeadlinesOperation *)self context];
  v5 = [v4 internalContentContext];
  v73 = [v5 articleRecordSource];

  v6 = [(FCFeedItemHeadlinesOperation *)self context];
  v7 = [v6 internalContentContext];
  v70 = [v7 issueRecordSource];

  v8 = [(FCFeedItemHeadlinesOperation *)self context];
  v9 = [v8 internalContentContext];
  v68 = [v9 tagRecordSource];

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [MEMORY[0x1E695DFA8] set];
  v78 = [MEMORY[0x1E695DFA8] set];
  [MEMORY[0x1E695DFA8] set];
  v77 = v76 = self;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v13 = [(FCFeedItemHeadlinesOperation *)self feedItems];
  v14 = [v13 countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v102;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v102 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v101 + 1) + 8 * i);
        v19 = [v18 articleID];
        [v12 addObject:v19];
        [v10 setObject:v18 forKey:v19];
        v20 = [v18 sourceChannelID];

        if (v20)
        {
          v21 = [v18 sourceChannelID];
          [v78 addObject:v21];
        }

        v22 = [v18 parentIssueID];

        if (v22)
        {
          v23 = [v18 parentIssueID];
          [v77 addObject:v23];
        }

        v24 = [v18 feedID];

        if (v24)
        {
          v25 = [v11 objectForKeyedSubscript:v19];
          if (!v25)
          {
            v25 = [MEMORY[0x1E695DF70] array];
            [v11 setObject:v25 forKeyedSubscript:v19];
          }

          v26 = [v18 feedID];
          [v25 addObject:v26];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v101 objects:v105 count:16];
    }

    while (v15);
  }

  v27 = [v12 allObjects];
  v28 = [v73 cachedRecordsWithIDs:v27];

  v29 = [v78 allObjects];
  v30 = [v68 cachedRecordsWithIDs:v29];

  v31 = [v77 allObjects];
  v32 = [v70 cachedRecordsWithIDs:v31];

  v33 = [MEMORY[0x1E695DFA8] set];
  [v33 unionSet:v12];
  [v33 unionSet:v78];
  [v33 unionSet:v77];
  v67 = v28;
  v34 = [v28 allRecordIDs];
  [v33 fc_removeObjectsFromArray:v34];

  v64 = v30;
  v35 = [v30 allRecordIDs];
  [v33 fc_removeObjectsFromArray:v35];

  v62 = v32;
  v36 = [v32 allRecordIDs];
  v75 = v33;
  [v33 fc_removeObjectsFromArray:v36];

  if (![(FCFeedItemHeadlinesOperation *)v76 cachedOnly])
  {
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke;
    v97[3] = &unk_1E7C44EC0;
    v97[4] = v76;
    v98 = v11;
    v99 = v10;
    v100 = v33;
    [v28 enumerateRecordsAndInterestTokensWithBlock:v97];
  }

  v37 = MEMORY[0x1E695DEC8];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_3;
  v93[3] = &unk_1E7C3B1F8;
  v38 = v73;
  v94 = v38;
  v69 = v68;
  v95 = v69;
  v71 = v70;
  v96 = v71;
  v39 = [v37 fc_array:v93];
  v40 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
  v41 = [(FCFeedItemHeadlinesOperation *)v76 context];
  v42 = [v41 internalContentContext];
  v43 = [v42 contentDatabase];
  [(FCCKContentBatchedFetchRecordsOperation *)v40 setDatabase:v43];

  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v44, v39, 384);
  }

  if (![(FCFeedItemHeadlinesOperation *)v76 cachedOnly])
  {
    v45 = [v75 allObjects];
    v47 = [v45 fc_arrayByTransformingWithBlock:&__block_literal_global_141];
    if (v40)
    {
      objc_setProperty_nonatomic_copy(v40, v46, v47, 376);
    }
  }

  v74 = v39;
  v48 = objc_opt_new();
  v49 = objc_opt_new();
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_5;
  newValue[3] = &unk_1E7C38B88;
  v50 = v48;
  v91 = v50;
  v52 = v49;
  v92 = v52;
  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v51, newValue, 416);
  }

  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_6;
  v79[3] = &unk_1E7C44EE8;
  v80 = v50;
  v81 = v38;
  v60 = v50;
  v82 = v69;
  v83 = v71;
  v84 = v76;
  v85 = v67;
  v86 = v64;
  v87 = v62;
  v88 = v52;
  v89 = v65;
  v66 = v65;
  v61 = v52;
  v63 = v62;
  v53 = v64;
  v54 = v67;
  v72 = v71;
  v55 = v69;
  v56 = v38;
  v58 = v60;
  if (v40)
  {
    objc_setProperty_nonatomic_copy(v40, v57, v79, 424);
  }

  [(FCOperation *)v76 associateChildOperation:v40];
  [(FCOperation *)v40 start];

  v59 = *MEMORY[0x1E69E9840];
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2;
  v11 = &unk_1E7C44E98;
  v12 = *(a1 + 32);
  v4 = v3;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (__78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2(&v8))
  {
    v5 = *(a1 + 56);
    v6 = [v4 base];
    v7 = [v6 identifier];
    [v5 addObject:v7];
  }
}

BOOL __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) rapidUpdateRefreshTest];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) behaviorFlags];

    if (v4)
    {
      v5 = MEMORY[0x1E695DF00];
      v6 = [*(a1 + 40) base];
      v7 = [v6 fetchDate];
      v8 = [v5 dateWithPBDate:v7];
      [v8 fc_timeIntervalUntilNow];
      v10 = v9;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = *(a1 + 48);
      v12 = [*(a1 + 40) base];
      v13 = [v12 identifier];
      v14 = [v11 objectForKeyedSubscript:v13];

      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * v18);
            v20 = [*(a1 + 32) rapidUpdateRefreshTest];
            LOBYTE(v19) = v20[2](v20, v19, v10);

            if (v19)
            {
              v25 = 1;
              goto LABEL_13;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v21 = *(a1 + 56);
  v22 = [*(a1 + 40) base];
  v23 = [v22 identifier];
  v14 = [v21 objectForKeyedSubscript:v23];

  v24 = [v14 backendArticleVersion];
  v25 = v24 > [*(a1 + 40) backendArticleVersion];
LABEL_13:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 desiredKeys];
  [v4 addObjectsFromArray:v5];

  v6 = [*(a1 + 40) desiredKeys];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 48) desiredKeys];
  [v4 addObjectsFromArray:v7];
}

id __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = 32;
    v11 = v7;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = 40;
    v11 = v8;
  }

  [*(a1 + v10) setObject:v11 forKey:v12];
LABEL_6:
}

void __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v53 = a2;
  v57 = [MEMORY[0x1E695DF70] array];
  v56 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v52 = a1;
  v3 = [*(a1 + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v61;
    do
    {
      v7 = 0;
      do
      {
        if (*v61 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v60 + 1) + 8 * v7);
        v9 = [v8 recordType];
        v10 = [v9 isEqualToString:@"Article"];

        if (v10)
        {
          v11 = v57;
LABEL_12:
          [v11 addObject:v8];
          goto LABEL_13;
        }

        v12 = [v8 recordType];
        v13 = [v12 isEqualToString:@"Tag"];

        if (v13)
        {
          v11 = v56;
          goto LABEL_12;
        }

        v14 = [v8 recordType];
        v15 = [v14 isEqualToString:@"Issue"];

        if (v15)
        {
          v11 = v55;
          goto LABEL_12;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v16 = objc_alloc(MEMORY[0x1E696AEC0]);
          v17 = [v8 recordType];
          v18 = [v16 initWithFormat:@"unexpected record type %@", v17];
          *buf = 136315906;
          v65 = "[FCFeedItemHeadlinesOperation _fetchUnadornedHeadlinesWithCompletionHandler:]_block_invoke_6";
          v66 = 2080;
          v67 = "FCFeedItemHeadlinesOperation.m";
          v68 = 1024;
          v69 = 311;
          v70 = 2114;
          v71 = v18;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_13:
        ++v7;
      }

      while (v5 != v7);
      v19 = [v3 countByEnumeratingWithState:&v60 objects:v72 count:16];
      v5 = v19;
    }

    while (v19);
  }

  v20 = [*(v52 + 40) saveArticleRecords:v57];
  v21 = [*(v52 + 48) saveTagRecords:v56];
  v22 = [*(v52 + 56) saveRecords:v55];
  v23 = [*(v52 + 64) configuration];
  v54 = v20;
  v24 = [FCHeldRecords heldRecordsByMerging:v20 with:*(v52 + 72)];
  v25 = v21;
  v26 = [FCHeldRecords heldRecordsByMerging:v21 with:*(v52 + 80)];
  v51 = v22;
  v27 = [FCHeldRecords heldRecordsByMerging:v22 with:*(v52 + 88)];
  v28 = [*(v52 + 64) feedItems];
  v29 = [v28 fc_setByTransformingWithBlock:&__block_literal_global_37_0];

  v30 = [*(v52 + 64) context];
  v31 = [v30 tagController];
  v48 = v26;
  v32 = [v31 channelsForTagRecords:v26];

  v33 = [*(v52 + 64) context];
  v34 = [v33 assetManager];
  v49 = v24;
  v50 = v23;
  v35 = FCHeadlinesByArticleIDFromHeldRecords(v23, v34, v29, v24, v32, v27, [*(v52 + 64) shouldFilterHeadlinesWithoutSourceChannels], 1);

  v36 = [*(v52 + 64) feedItems];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2_38;
  v58[3] = &unk_1E7C3C7A0;
  v37 = v35;
  v59 = v37;
  v38 = [v36 fc_arrayByTransformingWithBlock:v58];

  v39 = [v38 count];
  v40 = [*(v52 + 64) feedItems];
  v41 = [v40 count];

  if (v39 >= v41)
  {
    v44 = 0;
    v42 = v53;
    v43 = v54;
  }

  else
  {
    v42 = v53;
    if (v53)
    {
      v43 = v54;
      if ([v53 fc_isCKUnknownItemError])
      {
        v44 = 0;
      }

      else
      {
        v44 = v53;
      }

      if (![v38 count])
      {
        v45 = v53;
LABEL_29:
        v47 = v45;

        v44 = v47;
      }
    }

    else
    {
      v43 = v54;
      if (![v38 count])
      {
        v44 = [*(v52 + 96) allValues];
        v45 = [v44 firstObject];
        goto LABEL_29;
      }

      v44 = 0;
    }
  }

  (*(*(v52 + 104) + 16))();

  v46 = *MEMORY[0x1E69E9840];
}

id __78__FCFeedItemHeadlinesOperation__fetchUnadornedHeadlinesWithCompletionHandler___block_invoke_2_38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 articleID];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

@end