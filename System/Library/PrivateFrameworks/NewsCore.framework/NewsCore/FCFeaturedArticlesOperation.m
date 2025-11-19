@interface FCFeaturedArticlesOperation
- (BOOL)validateOperation;
- (FCFeaturedArticlesOperation)init;
- (FCFeaturedArticlesOperation)initWithContext:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCFeaturedArticlesOperation

- (FCFeaturedArticlesOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeaturedArticlesOperation init]";
    v10 = 2080;
    v11 = "FCFeaturedArticlesOperation.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeaturedArticlesOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeaturedArticlesOperation)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FCFeaturedArticlesOperation;
  v6 = [(FCOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [MEMORY[0x1E695DEC8] array];
    networkEvents = v7->_networkEvents;
    v7->_networkEvents = v8;
  }

  return v7;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self && self->_context)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"current featured headlines fetch operation requires a context"];
      v6 = 136315906;
      v7 = "[FCFeaturedArticlesOperation validateOperation]";
      v8 = 2080;
      v9 = "FCFeaturedArticlesOperation.m";
      v10 = 1024;
      v11 = 60;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)performOperation
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__FCFeaturedArticlesOperation_performOperation__block_invoke;
  v16[3] = &unk_1E7C396C0;
  v16[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v16];
  v4 = zalgo();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__FCFeaturedArticlesOperation_performOperation__block_invoke_2;
  v15[3] = &unk_1E7C3B298;
  v15[4] = self;
  v5 = [v3 thenOn:v4 then:v15];
  v6 = zalgo();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__FCFeaturedArticlesOperation_performOperation__block_invoke_3;
  v14[3] = &unk_1E7C3B2C0;
  v14[4] = self;
  v7 = [v5 thenOn:v6 then:v14];
  v8 = zalgo();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__FCFeaturedArticlesOperation_performOperation__block_invoke_4;
  v13[3] = &unk_1E7C3B2C0;
  v13[4] = self;
  v9 = [v7 thenOn:v8 then:v13];
  v10 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__FCFeaturedArticlesOperation_performOperation__block_invoke_5;
  v12[3] = &unk_1E7C36E50;
  v12[4] = self;
  v11 = [v9 errorOn:v10 error:v12];
}

id __47__FCFeaturedArticlesOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 384) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __47__FCFeaturedArticlesOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 paidBundleConfig];
    v4 = [v3 featuredArticlesTagList];

    if (v4)
    {
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E69B68F8]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_2;
      v11[3] = &unk_1E7C3B310;
      v11[4] = v2;
      v12 = v5;
      v7 = v5;
      v8 = [v6 initWithResolver:v11];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E69B68F8]);
      v8 = [v9 initWithValue:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __47__FCFeaturedArticlesOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__FCFeaturedArticlesOperation__promiseFeedItemsFromArticleRecords___block_invoke;
    v6[3] = &unk_1E7C3B338;
    v6[4] = v2;
    v3 = [a2 fc_arrayByTransformingWithBlock:v6];
    v4 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __47__FCFeaturedArticlesOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((v2 + 392), a2);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  [v4 finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(FCFeaturedArticlesOperation *)self fetchCompletionHandler];

  if (v4)
  {
    v5 = [(FCFeaturedArticlesOperation *)self fetchCompletionHandler];
    v6 = v5;
    if (self)
    {
      resultFeedItems = self->_resultFeedItems;
    }

    else
    {
      resultFeedItems = 0;
    }

    (*(v5 + 16))(v5, resultFeedItems, v8);
  }
}

void __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCCKMultiFetchQueryOperation);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 384);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 internalContentContext];
  v11 = [v10 contentDatabase];
  [(FCCKMultiFetchQueryOperation *)v7 setDatabase:v11];

  v13 = +[FCEdgeCacheHint edgeCacheHintForFeaturedArticles];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v12, v13, 408);
  }

  v38[0] = *(a1 + 40);
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [(FCCKMultiFetchQueryOperation *)v7 setRecordIDs:v14];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_3;
  v37[3] = &unk_1E7C36D40;
  v37[4] = *(a1 + 32);
  v15 = [MEMORY[0x1E695DEC8] fc_array:v37];
  [(FCCKMultiFetchQueryOperation *)v7 setRecordSpecs:v15];

  v16 = objc_opt_new();
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_4;
  newValue[3] = &unk_1E7C37FE0;
  v18 = v16;
  v36 = v18;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v17, newValue, 440);
  }

  objc_initWeak(&location, v7);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_5;
  v28 = &unk_1E7C3B2E8;
  v19 = v6;
  v20 = *(a1 + 32);
  v31 = v19;
  v29 = v20;
  objc_copyWeak(&v33, &location);
  v21 = v5;
  v32 = v21;
  v23 = v18;
  v30 = v23;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v22, &v25, 448);
  }

  [*(a1 + 32) associateChildOperation:{v7, v25, v26, v27, v28, v29}];
  [(FCOperation *)v7 start];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x1E69E9840];
}

void __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"TagList", 16);
    objc_setProperty_nonatomic_copy(v6, v7, MEMORY[0x1E695E0F0], 24);
  }

  v44[0] = @"tagIDs";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v8, v9, 32);
  }

  [v3 addObject:v6];
  v10 = objc_opt_new();
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic_copy(v10, v11, @"Tag", 16);
    objc_setProperty_nonatomic_copy(v12, v13, MEMORY[0x1E695E0F0], 24);
  }

  v43[0] = @"latestIssueIDs";
  v43[1] = @"currentNonIssueBundleFeaturedArticleListID";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v14, v15, 32);
  }

  [v3 addObject:v12];
  v16 = objc_opt_new();
  v18 = v16;
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v17, @"Issue", 16);
    objc_setProperty_nonatomic_copy(v18, v19, MEMORY[0x1E695E0F0], 24);
  }

  v42 = @"bundleFeaturedArticleIDs";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  if (v18)
  {
    objc_setProperty_nonatomic_copy(v18, v20, v21, 32);
  }

  [v3 addObject:v18];
  v22 = objc_opt_new();
  v24 = v22;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v23, @"ArticleList", 16);
    objc_setProperty_nonatomic_copy(v24, v25, MEMORY[0x1E695E0F0], 24);
  }

  v41 = @"articleIDs";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  if (v24)
  {
    objc_setProperty_nonatomic_copy(v24, v26, v27, 32);
  }

  [v3 addObject:v24];
  v28 = objc_opt_new();
  v30 = v28;
  if (v28)
  {
    objc_setProperty_nonatomic_copy(v28, v29, @"Article", 16);
  }

  v31 = MEMORY[0x1E69B6E30];
  v32 = *(a1 + 32);
  if (v32)
  {
    v33 = *(v32 + 384);
  }

  else
  {
    v33 = 0;
  }

  v34 = [v33 internalContentContext];
  v35 = [v34 articleRecordSource];
  v36 = [v31 keysForArticleRecordWithRecordSource:v35];
  v38 = v36;
  if (v30)
  {
    objc_setProperty_nonatomic_copy(v30, v37, v36, 24);

    objc_setProperty_nonatomic_copy(v30, v39, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v30];

  v40 = *MEMORY[0x1E69E9840];
}

void __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 recordType];
  v4 = [v3 isEqualToString:@"Article"];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __71__FCFeaturedArticlesOperation__promiseArticleRecordsWithConfiguration___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v11 = *(a1 + 48);
    v10 = v4;
    v11[2](v11, v10);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(WeakRetained + 53);
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 376), v7);

    v8 = *(a1 + 56);
    v9 = [*(a1 + 40) readOnlyArray];
    (*(v8 + 16))(v8, v9);
  }
}

id __67__FCFeaturedArticlesOperation__promiseFeedItemsFromArticleRecords___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69B6E30];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[48];
  }

  v6 = v5;
  v7 = a2;
  v8 = [v6 contentStoreFrontID];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 384);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 internalContentContext];
  v12 = [v11 articleRecordSource];
  v13 = [v4 feedItemFromCKRecord:v7 storefrontID:v8 recordSource:v12];

  [v13 markAsEvergreen];

  return v13;
}

@end