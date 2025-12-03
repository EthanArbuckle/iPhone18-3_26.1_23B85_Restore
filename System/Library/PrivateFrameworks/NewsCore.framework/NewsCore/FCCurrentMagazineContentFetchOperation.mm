@interface FCCurrentMagazineContentFetchOperation
- (BOOL)validateOperation;
- (FCCurrentMagazineContentFetchOperation)init;
- (FCCurrentMagazineContentFetchOperation)initWithContext:(id)context configIssueIDs:(id)ds configArticleIDs:(id)iDs trendingArticleListID:(id)d;
- (id)_filterInaccessibleHeadlines:(uint64_t)headlines;
- (id)_filterInaccessibleIssues:(uint64_t)issues;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCCurrentMagazineContentFetchOperation

- (FCCurrentMagazineContentFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCurrentMagazineContentFetchOperation init]";
    v10 = 2080;
    v11 = "FCCurrentMagazineContentFetchOperation.m";
    v12 = 1024;
    v13 = 57;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCurrentMagazineContentFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCCurrentMagazineContentFetchOperation)initWithContext:(id)context configIssueIDs:(id)ds configArticleIDs:(id)iDs trendingArticleListID:(id)d
{
  contextCopy = context;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = FCCurrentMagazineContentFetchOperation;
  v15 = [(FCOperation *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    v17 = [dsCopy copy];
    configIssueIDs = v16->_configIssueIDs;
    v16->_configIssueIDs = v17;

    v19 = [iDsCopy copy];
    configArticleIDs = v16->_configArticleIDs;
    v16->_configArticleIDs = v19;

    v21 = [dCopy copy];
    trendingArticleListID = v16->_trendingArticleListID;
    v16->_trendingArticleListID = v21;

    cachedPolicy = v16->_cachedPolicy;
    v16->_cachedPolicy = 0;

    v16->_contentOptions = 7;
  }

  return v16;
}

- (BOOL)validateOperation
{
  v19 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current magazine content fetch operation requires a context"];
      v11 = 136315906;
      v12 = "[FCCurrentMagazineContentFetchOperation validateOperation]";
      v13 = 2080;
      v14 = "FCCurrentMagazineContentFetchOperation.m";
      v15 = 1024;
      v16 = 84;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
LABEL_9:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current magazine content fetch operation requires config issue IDs"];
        v11 = 136315906;
        v12 = "[FCCurrentMagazineContentFetchOperation validateOperation]";
        v13 = 2080;
        v14 = "FCCurrentMagazineContentFetchOperation.m";
        v15 = 1024;
        v16 = 88;
        v17 = 2114;
        v18 = v9;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
      }

      v4 = 0;
      if (!self)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if (!self->_configIssueIDs)
  {
    goto LABEL_9;
  }

  v4 = 1;
LABEL_12:
  if (self->_configArticleIDs)
  {
    v5 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current magazine content fetch operation requires config article IDs"];
    v11 = 136315906;
    v12 = "[FCCurrentMagazineContentFetchOperation validateOperation]";
    v13 = 2080;
    v14 = "FCCurrentMagazineContentFetchOperation.m";
    v15 = 1024;
    v16 = 92;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v5 = 0;
LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return v5 & v4 & v3;
}

- (void)performOperation
{
  v3 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__21;
  v26[4] = __Block_byref_object_dispose__21;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__21;
  v24[4] = __Block_byref_object_dispose__21;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__21;
  v22[4] = __Block_byref_object_dispose__21;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__21;
  v20[4] = __Block_byref_object_dispose__21;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__21;
  v18[4] = __Block_byref_object_dispose__21;
  v19 = 0;
  dispatch_group_enter(v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__FCCurrentMagazineContentFetchOperation_performOperation__block_invoke;
  v11[3] = &unk_1E7C3B0C0;
  v13 = v26;
  v14 = v24;
  v15 = v22;
  v16 = v20;
  v17 = v18;
  v4 = v3;
  v12 = v4;
  v5 = v11;
  if (self)
  {
    v6 = self->_context;
    configurationManager = [(FCCloudContext *)v6 configurationManager];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke;
    v28[3] = &unk_1E7C3B248;
    v28[4] = self;
    v8 = v5;

    v29 = v8;
    FCCoreConfigurationFetch(configurationManager, v28);
  }

  v9 = FCDispatchQueueForQualityOfService([(FCCurrentMagazineContentFetchOperation *)self qualityOfService]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__FCCurrentMagazineContentFetchOperation_performOperation__block_invoke_2;
  v10[3] = &unk_1E7C3B0E8;
  v10[4] = self;
  v10[5] = v18;
  v10[6] = v26;
  v10[7] = v24;
  v10[8] = v22;
  v10[9] = v20;
  dispatch_group_notify(v4, v9, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
}

void __58__FCCurrentMagazineContentFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v11;
  v30 = v11;

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v12;
  v20 = v12;

  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v13;
  v23 = v13;

  v24 = *(*(a1 + 64) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v14;
  v26 = v14;

  v27 = *(*(a1 + 72) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v15;
  v29 = v15;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __58__FCCurrentMagazineContentFetchOperation_performOperation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(*(v2 + 8) + 40))
  {
    return [*(a1 + 32) finishedPerformingOperationWithError:{MEMORY[0x1E69E9820], 3221225472, __58__FCCurrentMagazineContentFetchOperation_performOperation__block_invoke_3, &unk_1E7C3A3A0, *(a1 + 32), v2}];
  }

  v4 = [(FCCurrentMagazineContentFetchOperation *)*(a1 + 32) _filterInaccessibleIssues:?];
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong((v6 + 424), v8);
  }

  v9 = [(FCCurrentMagazineContentFetchOperation *)*(a1 + 32) _filterInaccessibleHeadlines:?];
  v10 = v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v7;
    }

    objc_storeStrong((v11 + 432), v12);
  }

  v13 = [(FCCurrentMagazineContentFetchOperation *)*(a1 + 32) _filterInaccessibleIssues:?];
  v14 = v13;
  v15 = *(a1 + 32);
  if (v15)
  {
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v7;
    }

    objc_storeStrong((v15 + 440), v16);
  }

  v17 = [(FCCurrentMagazineContentFetchOperation *)*(a1 + 32) _filterInaccessibleHeadlines:?];
  v18 = v17;
  v19 = *(a1 + 32);
  if (v19)
  {
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = v7;
    }

    objc_storeStrong((v19 + 448), v20);
  }

  v21 = *(a1 + 32);

  return [v21 finishedPerformingOperationWithError:0];
}

- (id)_filterInaccessibleIssues:(uint64_t)issues
{
  if (issues)
  {
    v3 = *(issues + 392);
    v4 = a2;
    issueAccessChecker = [v3 issueAccessChecker];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__FCCurrentMagazineContentFetchOperation__filterInaccessibleIssues___block_invoke;
    v9[3] = &unk_1E7C3B270;
    v10 = issueAccessChecker;
    v6 = issueAccessChecker;
    v7 = [v4 fc_arrayOfObjectsPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_filterInaccessibleHeadlines:(uint64_t)headlines
{
  if (headlines)
  {
    v3 = *(headlines + 392);
    v4 = a2;
    articleAccessChecker = [v3 articleAccessChecker];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__FCCurrentMagazineContentFetchOperation__filterInaccessibleHeadlines___block_invoke;
    v9[3] = &unk_1E7C37550;
    v10 = articleAccessChecker;
    v6 = articleAccessChecker;
    v7 = [v4 fc_arrayOfObjectsPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)operationWillFinishWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = FCOperationLog;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription = [(FCOperation *)self shortOperationDescription];
      if (self)
      {
        resultConfigIssues = self->_resultConfigIssues;
      }

      else
      {
        resultConfigIssues = 0;
      }

      v7 = resultConfigIssues;
      v23 = [(NSArray *)v7 count];
      if (self)
      {
        resultConfigHeadlines = self->_resultConfigHeadlines;
      }

      else
      {
        resultConfigHeadlines = 0;
      }

      v9 = resultConfigHeadlines;
      v10 = [(NSArray *)v9 count];
      if (self)
      {
        resultCurrentIssues = self->_resultCurrentIssues;
      }

      else
      {
        resultCurrentIssues = 0;
      }

      v12 = resultCurrentIssues;
      v13 = [(NSArray *)v12 count];
      if (self)
      {
        resultTrendingHeadlines = self->_resultTrendingHeadlines;
      }

      else
      {
        resultTrendingHeadlines = 0;
      }

      v15 = resultTrendingHeadlines;
      *buf = 138544386;
      v26 = shortOperationDescription;
      v27 = 2048;
      v28 = v23;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v13;
      v33 = 2048;
      v34 = [(NSArray *)v15 count];
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with %lu config issues, %lu config headlines, %lu current issues, and %lu trending headlines", buf, 0x34u);
    }
  }

  fetchCompletionHandler = [(FCCurrentMagazineContentFetchOperation *)self fetchCompletionHandler];

  if (fetchCompletionHandler)
  {
    fetchCompletionHandler2 = [(FCCurrentMagazineContentFetchOperation *)self fetchCompletionHandler];
    if (self)
    {
      v18 = self->_resultConfigIssues;
      v19 = self->_resultConfigHeadlines;
      v20 = self->_resultCurrentIssues;
      v21 = self->_resultTrendingHeadlines;
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v19 = 0;
      v21 = 0;
    }

    (fetchCompletionHandler2)[2](fetchCompletionHandler2, v18, v19, v20, v21, errorCopy);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_2;
  v26[3] = &unk_1E7C3B110;
  v26[4] = *(a1 + 32);
  v5 = v3;
  v27 = v5;
  v6 = [v4 fc_array:v26];
  if ([v6 count])
  {
    v7 = objc_alloc_init(FCRecordChainFetchOperation);
    v8 = v7;
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 392);
    }

    else
    {
      v10 = 0;
    }

    [(FCRecordChainFetchOperation *)v7 setContext:v10];
    [(FCRecordChainFetchOperation *)v8 setTopLevelRecordIDs:v6];
    v33[0] = @"TagList";
    v32 = @"tagIDs";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v34[0] = v11;
    v33[1] = @"Tag";
    v31 = @"latestIssueIDs";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v34[1] = v12;
    v33[2] = @"Issue";
    v30 = @"channelTagID";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    v34[2] = v13;
    v33[3] = @"Article";
    v29[0] = @"sourceChannelTagID";
    v29[1] = @"parentIssueID";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v34[3] = v14;
    v33[4] = @"ArticleList";
    v28 = @"articleIDs";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v34[4] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
    [(FCRecordChainFetchOperation *)v8 setLinkKeysByRecordType:v16];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_4;
    v24[3] = &unk_1E7C3B138;
    v24[4] = *(a1 + 32);
    [(FCRecordChainFetchOperation *)v8 setDynamicCachePolicyBlock:v24];
    v17 = +[FCEdgeCacheHint edgeCacheHintForMagazineContent];
    [(FCRecordChainFetchOperation *)v8 setEdgeCacheHint:v17];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_5;
    v21[3] = &unk_1E7C3B220;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v23 = v18;
    v21[4] = v19;
    v22 = v5;
    [(FCRecordChainFetchOperation *)v8 setRecordChainCompletionHandler:v21];
    [*(a1 + 32) associateChildOperation:v8];
    [(FCOperation *)v8 start];
  }

  else
  {
    v24[5] = MEMORY[0x1E69E9820];
    v24[6] = 3221225472;
    v24[7] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_3;
    v24[8] = &unk_1E7C379C8;
    v25 = *(a1 + 40);
    (*(v25 + 2))(v25, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0);
    v8 = v25;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([*(a1 + 32) contentOptions] & 4) != 0)
  {
    v3 = [*(a1 + 40) paidBundleConfig];
    v4 = [v3 recommendableIssuesTagList];
    [v11 fc_safelyAddObject:v4];
  }

  if ([*(a1 + 32) contentOptions])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 416);
    }

    else
    {
      v6 = 0;
    }

    [v11 fc_safelyAddObject:v6];
  }

  if (([*(a1 + 32) contentOptions] & 2) != 0)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 400);
    }

    else
    {
      v8 = 0;
    }

    [v11 addObjectsFromArray:v8];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 408);
    }

    else
    {
      v10 = 0;
    }

    [v11 addObjectsFromArray:v10];
  }
}

id __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) cachedPolicy];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [FCCachePolicy cachePolicyWithSoftMaxAge:60.0];
  }

  v4 = v3;

  return v4;
}

void __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v75 = MEMORY[0x1E69E9820];
    v76 = 3221225472;
    v77 = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_6;
    v78 = &unk_1E7C37778;
    v80 = *(a1 + 48);
    v79 = v6;
    (*(v80 + 2))(v80, 0, 0, 0, 0, v79);

    v7 = v80;
  }

  else
  {
    v53 = [v5 objectForKeyedSubscript:&unk_1F2E6FF48];
    v63 = [v5 objectForKeyedSubscript:&unk_1F2E6FF60];
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E6FF78];
    v62 = [v5 objectForKeyedSubscript:&unk_1F2E6FF90];
    v59 = [v5 objectForKeyedSubscript:&unk_1F2E6FFA8];
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[49];
    }

    v10 = v9;
    v11 = [v10 tagController];
    v12 = [v11 channelsForTagRecords:v63];

    v13 = MEMORY[0x1E695DFD8];
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[49];
    }

    v15 = v14;
    v16 = [v15 subscriptionController];
    v17 = [v16 mutedTagIDs];
    v18 = [v13 setWithArray:v17];

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_37;
    v73[3] = &unk_1E7C3B160;
    v73[4] = *(a1 + 32);
    v19 = v18;
    v74 = v19;
    v61 = [v62 heldRecordsPassingTest:v73];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_2_40;
    v71[3] = &unk_1E7C3B188;
    v71[4] = *(a1 + 32);
    v55 = v19;
    v72 = v55;
    v20 = [v8 heldRecordsPassingTest:v71];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_3_42;
    v68[3] = &unk_1E7C3B1B0;
    v21 = v12;
    v22 = *(a1 + 32);
    v69 = v21;
    v70 = v22;
    v60 = v20;
    v23 = [v20 transformRecordsByIDWithBlock:v68];
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v56 = v8;
    if (v24)
    {
      v24 = v24[49];
    }

    v26 = v24;
    v27 = [v26 assetManager];
    v28 = MEMORY[0x1E695DFD8];
    v29 = [v62 allRecordIDs];
    v30 = [v28 setWithArray:v29];
    v58 = FCHeadlinesByArticleIDFromHeldRecords(v25, v27, v30, v61, v21, v60, 1, 1);

    v31 = [v59 transformRecordsByIDWithBlock:&__block_literal_global_50_0];
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    if (v32)
    {
      v32 = v32[49];
    }

    v34 = v32;
    v35 = [v34 assetManager];
    v52 = v31;
    v36 = [v31 allValues];
    v57 = FCHeadlinesByArticleListIDFromHeldRecordsAndArticleLists(v33, v35, v61, v63, v60, v36, 1);

    v37 = MEMORY[0x1E695DEC8];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_6_52;
    v64[3] = &unk_1E7C3B1F8;
    v7 = v53;
    v65 = v7;
    v54 = v21;
    v66 = v54;
    v38 = v23;
    v67 = v38;
    v39 = [v37 fc_array:v64];
    v40 = *(a1 + 32);
    if (v40)
    {
      v41 = *(v40 + 400);
    }

    else
    {
      v41 = 0;
    }

    v42 = [v38 nf_objectsForKeysWithoutMarker:v41];
    v43 = *(a1 + 32);
    if (v43)
    {
      v44 = *(v43 + 408);
    }

    else
    {
      v44 = 0;
    }

    v45 = [v58 nf_objectsForKeysWithoutMarker:v44];
    v46 = *(a1 + 32);
    if (v46)
    {
      v47 = *(v46 + 416);
    }

    else
    {
      v47 = 0;
    }

    v48 = [v57 fc_safeObjectForKey:v47];
    v49 = v48;
    if (v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = [MEMORY[0x1E695DEC8] array];
    }

    v51 = v50;

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[49];
  }

  v5 = v4;
  v6 = [v5 contentStoreFrontID];
  if ([v3 isAllowedInStorefront:v6])
  {
    v7 = *(a1 + 40);
    v8 = [v3 sourceChannelTagID];
    if ([v7 containsObject:v8])
    {
      v9 = 0;
    }

    else
    {
      v10 = +[FCRestrictions sharedInstance];
      v9 = [v10 isNewsVersionAllowed:{objc_msgSend(v3, "minimumNewsVersion")}];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_2_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[49];
  }

  v5 = v4;
  v6 = [v5 contentStoreFrontID];
  if ([v3 isAllowedInStorefront:v6])
  {
    v7 = *(a1 + 40);
    v8 = [v3 channelTagID];
    v9 = [v7 containsObject:v8] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

FCIssue *__92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_3_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 channelTagID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = v9;
    v11 = [FCIssue alloc];
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 392);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 assetManager];
    v15 = [(FCIssue *)v11 initWithIssueRecord:v5 assetManager:v14 interestToken:v6 sourceChannel:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

FCArticleList *__92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_5_47(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[FCArticleList alloc] initWithRecord:v5 interestToken:v4];

  return v6;
}

void __92__FCCurrentMagazineContentFetchOperation__fetchConfigContentAndCurrentIssuesWithCompletion___block_invoke_6_52(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [*(a1 + 32) allRecords];
  v5 = [v4 firstObject];
  v6 = [v5 tagIDs];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v10)];
        v12 = v11;
        if (v11)
        {
          v13 = *(a1 + 48);
          v14 = [v11 currentIssueIDs];
          v15 = [v13 nf_objectsForKeysWithoutMarker:v14];
          [v3 fc_safelyAddObjectsFromArray:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end