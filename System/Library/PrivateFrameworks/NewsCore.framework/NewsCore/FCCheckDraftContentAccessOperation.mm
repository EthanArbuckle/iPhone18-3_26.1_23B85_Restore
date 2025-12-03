@interface FCCheckDraftContentAccessOperation
- (BOOL)validateOperation;
- (FCCheckDraftContentAccessOperation)init;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCheckDraftContentAccessOperation

- (FCCheckDraftContentAccessOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCheckDraftContentAccessOperation;
  return [(FCOperation *)&v3 init];
}

- (BOOL)validateOperation
{
  v25 = *MEMORY[0x1E69E9840];
  context = [(FCCheckDraftContentAccessOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires context"];
    v17 = 136315906;
    v18 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v19 = 2080;
    v20 = "FCCheckDraftContentAccessOperation.m";
    v21 = 1024;
    v22 = 36;
    v23 = 2114;
    v24 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
  }

  channelMemberships = [(FCCheckDraftContentAccessOperation *)self channelMemberships];

  if (!channelMemberships && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires channel memberships"];
    v17 = 136315906;
    v18 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v19 = 2080;
    v20 = "FCCheckDraftContentAccessOperation.m";
    v21 = 1024;
    v22 = 40;
    v23 = 2114;
    v24 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
  }

  issueIDs = [(FCCheckDraftContentAccessOperation *)self issueIDs];
  if (issueIDs)
  {

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  articleIDs = [(FCCheckDraftContentAccessOperation *)self articleIDs];

  if (articleIDs)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires content IDs"];
    v17 = 136315906;
    v18 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v19 = 2080;
    v20 = "FCCheckDraftContentAccessOperation.m";
    v21 = 1024;
    v22 = 44;
    v23 = 2114;
    v24 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
  }

  v7 = 0;
LABEL_11:
  checkAccessCompletion = [(FCCheckDraftContentAccessOperation *)self checkAccessCompletion];

  if (!checkAccessCompletion && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"check draft content access operation requires completion"];
    v17 = 136315906;
    v18 = "[FCCheckDraftContentAccessOperation validateOperation]";
    v19 = 2080;
    v20 = "FCCheckDraftContentAccessOperation.m";
    v21 = 1024;
    v22 = 48;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
  }

  if (context)
  {
    v9 = channelMemberships == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (checkAccessCompletion)
  {
    result = v10;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v62 = *MEMORY[0x1E69E9840];
  channelMemberships = [(FCCheckDraftContentAccessOperation *)self channelMemberships];
  articleIDs = [(FCCheckDraftContentAccessOperation *)self articleIDs];
  issueIDs = [(FCCheckDraftContentAccessOperation *)self issueIDs];
  v6 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = articleIDs;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObject:*(*(&v50 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v46 = 0u;
  v12 = issueIDs;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v6 addObject:*(*(&v46 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v14);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = channelMemberships;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * k);
        draftIssueListID = [v22 draftIssueListID];
        [v6 fc_safelyAddObject:draftIssueListID];

        draftArticleListID = [v22 draftArticleListID];
        [v6 fc_safelyAddObject:draftArticleListID];
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v19);
  }

  v25 = objc_opt_new();
  context = [(FCCheckDraftContentAccessOperation *)self context];
  [v25 setContext:context];

  allObjects = [v6 allObjects];
  [v25 setTopLevelRecordIDs:allObjects];

  selfCopy = self;
  v57[0] = @"Article";
  v57[1] = @"ArticleList";
  v58[0] = MEMORY[0x1E695E0F0];
  v58[1] = MEMORY[0x1E695E0F0];
  v58[2] = MEMORY[0x1E695E0F0];
  v57[2] = @"Issue";
  v57[3] = @"IssueList";
  v56 = @"issueIDs";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  v58[3] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:4];
  [v25 setLinkKeysByRecordType:v29];

  v54[0] = @"Article";
  v30 = +[FCCachePolicy ignoreCacheCachePolicy];
  v55[0] = v30;
  v54[1] = @"ArticleList";
  v31 = +[FCCachePolicy ignoreCacheCachePolicy];
  v55[1] = v31;
  v54[2] = @"Issue";
  v32 = +[FCCachePolicy ignoreCacheCachePolicy];
  v55[2] = v32;
  v54[3] = @"IssueList";
  v33 = +[FCCachePolicy ignoreCacheCachePolicy];
  v55[3] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:4];
  [v25 setCachePoliciesByRecordType:v34];

  [v25 setShouldReturnErrorWhenSomeRecordsMissing:0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke;
  v39[3] = &unk_1E7C417A0;
  v39[4] = selfCopy;
  v40 = v12;
  v41 = v7;
  v35 = v7;
  v36 = v12;
  [v25 setRecordChainCompletionHandler:v39];
  [(FCOperation *)selfCopy associateChildOperation:v25];
  [v25 start];

  v37 = *MEMORY[0x1E69E9840];
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [a1[4] finishedPerformingOperationWithError:a3];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x1E695DFD8];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_2;
    v39[3] = &unk_1E7C371F8;
    v28 = v5;
    v26 = v5;
    v40 = v26;
    v8 = [v7 fc_set:v39];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = a1[5];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "containsObject:", v14)}];
          [v6 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v11);
    }

    v16 = MEMORY[0x1E695DFD8];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_26;
    v33[3] = &unk_1E7C371F8;
    v34 = v26;
    v17 = [v16 fc_set:v33];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = a1;
    v18 = a1[6];
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * j);
          v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v17, "containsObject:", v23, v27)}];
          [v6 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v20);
    }

    [v27[4] setResultAccessByContentID:v6];
    [v27[4] finishedPerformingOperationWithError:0];

    v5 = v28;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705C0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 allRecords];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v25 + 1) + 8 * i) issueIDs];
        [v3 fc_safelyAddObjects:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705D8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 allRecords];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if (([v17 isDraft] & 1) == 0)
        {
          v18 = [v17 base];
          v19 = [v18 identifier];
          [v3 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __54__FCCheckDraftContentAccessOperation_performOperation__block_invoke_26(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705F0];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [v4 allRecords];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v36 + 1) + 8 * i) articleIDs];
        [v3 fc_safelyAddObjects:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E705D8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 allRecords];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * j) allArticleIDs];
        [v3 fc_safelyAddObjects:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v14);
  }

  v18 = [*(a1 + 32) objectForKeyedSubscript:&unk_1F2E70608];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [v18 allRecords];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * k);
        if (([v24 isDraft] & 1) == 0)
        {
          v25 = [v24 base];
          v26 = [v25 identifier];
          [v3 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  checkAccessCompletion = [(FCCheckDraftContentAccessOperation *)self checkAccessCompletion];
  resultAccessByContentID = [(FCCheckDraftContentAccessOperation *)self resultAccessByContentID];
  checkAccessCompletion[2](checkAccessCompletion, resultAccessByContentID, errorCopy);
}

@end