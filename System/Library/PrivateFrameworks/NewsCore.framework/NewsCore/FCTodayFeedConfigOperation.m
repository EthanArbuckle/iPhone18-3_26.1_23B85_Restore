@interface FCTodayFeedConfigOperation
- (BOOL)validateOperation;
- (FCTodayFeedConfigOperation)initWithContext:(id)a3 appConfig:(id)a4 request:(id)a5;
- (id)_fetchFromCK;
- (id)_fetchFromNewsEdge;
- (id)fetchCompletionHandler;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)setFetchCompletionHandler:(id)a3;
@end

@implementation FCTodayFeedConfigOperation

- (FCTodayFeedConfigOperation)initWithContext:(id)a3 appConfig:(id)a4 request:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = FCTodayFeedConfigOperation;
  v12 = [(FCOperation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_appConfig, a4);
    v14 = [v11 copy];
    request = v13->_request;
    v13->_request = v14;

    v16 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    completionLock = v13->_completionLock;
    v13->_completionLock = v16;
  }

  return v13;
}

- (id)fetchCompletionHandler
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__33;
  v11 = __Block_byref_object_dispose__33;
  v12 = 0;
  v3 = [(FCTodayFeedConfigOperation *)self completionLock];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCTodayFeedConfigOperation_fetchCompletionHandler__block_invoke;
  v6[3] = &unk_1E7C37160;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__FCTodayFeedConfigOperation_fetchCompletionHandler__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 368));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setFetchCompletionHandler:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(FCTodayFeedConfigOperation *)self completionLock];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCTodayFeedConfigOperation_setFetchCompletionHandler___block_invoke;
  v8[3] = &unk_1E7C40248;
  v8[4] = self;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 performWithLockSync:v8];

  if (*(v12 + 24) == 1)
  {
    v7 = [(FCTodayFeedConfigOperation *)self reusableCompletionHandler];
    (v7)[2](v7, v6);
  }

  _Block_object_dispose(&v11, 8);
}

void __56__FCTodayFeedConfigOperation_setFetchCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reusableCompletionHandler];

  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 368);
    *(v4 + 368) = v3;

    MEMORY[0x1EEE66BB8](v3, v5);
  }
}

- (BOOL)validateOperation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(FCTodayFeedConfigOperation *)self context];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Today feed config operation must have a context"];
    v13 = 136315906;
    v14 = "[FCTodayFeedConfigOperation validateOperation]";
    v15 = 2080;
    v16 = "FCTodayFeedConfigOperation.m";
    v17 = 1024;
    v18 = 127;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v4 = [(FCTodayFeedConfigOperation *)self appConfig];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Today feed config operation must have an app config"];
    v13 = 136315906;
    v14 = "[FCTodayFeedConfigOperation validateOperation]";
    v15 = 2080;
    v16 = "FCTodayFeedConfigOperation.m";
    v17 = 1024;
    v18 = 131;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v5 = [(FCTodayFeedConfigOperation *)self request];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Today feed config operation must have a request"];
    v13 = 136315906;
    v14 = "[FCTodayFeedConfigOperation validateOperation]";
    v15 = 2080;
    v16 = "FCTodayFeedConfigOperation.m";
    v17 = 1024;
    v18 = 135;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6 && v5 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v3 = [(FCTodayFeedConfigOperation *)self parentNetworkActivity];

  if (v3)
  {
    v4 = [FCNetworkActivity activityWithLabel:2];
    v5 = [(FCTodayFeedConfigOperation *)self parentNetworkActivity];
    [v4 setParentActivity:v5];

    [v4 startActivity];
    [(FCTodayFeedConfigOperation *)self setNetworkActivity:v4];
  }

  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(FCTodayFeedConfigOperation *)self _fetchFromCK];
  v8 = zalgo();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke;
  v26[3] = &unk_1E7C36C58;
  v26[4] = self;
  v27 = v6;
  v9 = v6;
  v10 = [v7 alwaysOn:v8 always:v26];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [(FCTodayFeedConfigOperation *)self _fetchFromNewsEdge];
  v13 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_12;
  v24[3] = &unk_1E7C36C58;
  v24[4] = self;
  v25 = v11;
  v14 = v11;
  v15 = [v12 alwaysOn:v13 always:v24];

  v16 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_13;
  v22[3] = &unk_1E7C40298;
  v22[4] = self;
  v23 = v12;
  v17 = v12;
  v18 = [v7 thenOn:v16 then:v22];

  v19 = zalgo();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_19;
  v21[3] = &unk_1E7C36E50;
  v21[4] = self;
  v20 = [v7 errorOn:v19 error:v21];
}

void __46__FCTodayFeedConfigOperation_performOperation__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    [*(a1 + 40) fc_timeIntervalUntilNow];
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = (fmax(v6, 0.0) * 1000.0);
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums fetching config from CK", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46__FCTodayFeedConfigOperation_performOperation__block_invoke_12(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    [*(a1 + 40) fc_timeIntervalUntilNow];
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = (fmax(v6, 0.0) * 1000.0);
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums fetching config from News Edge", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __46__FCTodayFeedConfigOperation_performOperation__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordsByType];
  [*(a1 + 32) setResultCKRecordsByType:v4];

  v5 = [v3 configData];

  [*(a1 + 32) setResultCKConfigData:v5];
  v6 = [*(a1 + 32) appConfig];
  [v6 todayFeedConfigEndpointTimeoutAfterCK];
  v8 = v7;

  v9 = MEMORY[0x1E69B68F8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_2;
  v18[3] = &unk_1E7C3CB30;
  v19 = *(a1 + 40);
  v20 = v8;
  v10 = [v9 firstly:v18];
  v11 = zalgo();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_3;
  v17[3] = &unk_1E7C40270;
  v17[4] = *(a1 + 32);
  v12 = [v10 thenOn:v11 then:v17];
  v13 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__FCTodayFeedConfigOperation_performOperation__block_invoke_4;
  v16[3] = &unk_1E7C36E50;
  v16[4] = *(a1 + 32);
  v14 = [v12 errorOn:v13 error:v16];

  return v14;
}

id __46__FCTodayFeedConfigOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setResultNewsEdgeConfigData:v3];
  [*(a1 + 32) finishedPerformingOperationWithError:0];

  return v3;
}

void __46__FCTodayFeedConfigOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x1E69B6930]])
  {
    goto LABEL_5;
  }

  v5 = [v3 code];
  v6 = *MEMORY[0x1E69B6938];

  if (v5 == v6)
  {
    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v4 = v7;
      v9 = [v8 shortOperationDescription];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ timed out waiting for config from News Edge, falling back to CK", &v11, 0xCu);

LABEL_5:
    }
  }

  [*(a1 + 32) finishedPerformingOperationWithError:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [FCTodayFeedConfigResponse alloc];
    v7 = [(FCTodayFeedConfigOperation *)self resultCKConfigData];
    v8 = [(FCTodayFeedConfigOperation *)self resultCKRecordsByType];
    v9 = [(FCTodayFeedConfigOperation *)self resultNewsEdgeConfigData];
    v5 = [(FCTodayFeedConfigResponse *)v6 initWithCKConfigData:v7 ckRecordsByType:v8 newsEdgeConfigData:v9];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__33;
  v29 = __Block_byref_object_dispose__33;
  v30 = 0;
  v10 = [(FCTodayFeedConfigOperation *)self completionLock];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __59__FCTodayFeedConfigOperation_operationWillFinishWithError___block_invoke;
  v20 = &unk_1E7C3A350;
  v21 = self;
  v11 = v5;
  v22 = v11;
  v12 = v4;
  v23 = v12;
  v24 = &v25;
  [v10 performWithLockSync:&v17];

  v13 = [(FCTodayFeedConfigOperation *)self networkActivity:v17];

  if (v13)
  {
    v14 = [(FCTodayFeedConfigOperation *)self networkActivity];
    [v14 completeActivityWithSuccess:v4 == 0];

    v15 = [(FCTodayFeedConfigOperation *)self parentNetworkActivity];
    [v15 completeActivityWithSuccess:v4 == 0];
  }

  v16 = [(FCTodayFeedConfigOperation *)self reusableCompletionHandler];
  v16[2](v16, v26[5]);

  _Block_object_dispose(&v25, 8);
}

void __59__FCTodayFeedConfigOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__FCTodayFeedConfigOperation_operationWillFinishWithError___block_invoke_2;
  v7[3] = &unk_1E7C402C0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [*(a1 + 32) setReusableCompletionHandler:v7];
  v2 = _Block_copy(*(*(a1 + 32) + 368));
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 368);
  *(v5 + 368) = 0;
}

uint64_t __59__FCTodayFeedConfigOperation_operationWillFinishWithError___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 16))(a2, *(result + 32), *(result + 40));
  }

  return result;
}

- (id)_fetchFromCK
{
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke;
  v6[3] = &unk_1E7C39ED0;
  v6[4] = self;
  v4 = [v3 initWithResolver:v6];

  return v4;
}

void __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCRecordChainFetchOperation);
  v8 = [*(a1 + 32) context];
  [(FCRecordChainFetchOperation *)v7 setContext:v8];

  v9 = [*(a1 + 32) cachePolicy];
  [(FCRecordChainFetchOperation *)v7 setCachePolicy:v9];

  v10 = +[FCEdgeCacheHint edgeCacheHintForForYouConfig];
  [(FCRecordChainFetchOperation *)v7 setEdgeCacheHint:v10];

  [(FCRecordChainFetchOperation *)v7 setNetworkEventType:14];
  v11 = [*(a1 + 32) networkActivity];

  if (v11)
  {
    objc_initWeak(location, *(a1 + 32));
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_2;
    v29[3] = &unk_1E7C402E8;
    objc_copyWeak(&v30, location);
    [(FCRecordChainFetchOperation *)v7 setNetworkActivityBlock:v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_3;
  v28[3] = &unk_1E7C36D40;
  v28[4] = *(a1 + 32);
  v12 = [MEMORY[0x1E695DEC8] fc_array:v28];
  [(FCRecordChainFetchOperation *)v7 setTopLevelRecordIDs:v12];

  v37[0] = @"ForYouConfig";
  v36 = @"todayFeedTopStoriesArticleIDs";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v38[0] = v13;
  v37[1] = @"Article";
  v35[0] = @"sourceChannelTagID";
  v35[1] = @"parentIssueID";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v38[1] = v14;
  v37[2] = @"ArticleList";
  v34 = @"articleIDs";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v38[2] = v15;
  v37[3] = @"Tag";
  v37[4] = @"Issue";
  v38[3] = MEMORY[0x1E695E0F0];
  v38[4] = MEMORY[0x1E695E0F0];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
  [(FCRecordChainFetchOperation *)v7 setLinkKeysByRecordType:v16];

  v17 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v17;
    v20 = [v18 shortOperationDescription];
    v21 = [(FCRecordChainFetchOperation *)v7 topLevelRecordIDs];
    *location = 138543618;
    *&location[4] = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch config from CK with top-level record IDs: %{public}@", location, 0x16u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_28;
  v25[3] = &unk_1E7C40310;
  v25[4] = *(a1 + 32);
  v26 = v6;
  v27 = v5;
  v22 = v5;
  v23 = v6;
  [(FCRecordChainFetchOperation *)v7 setRecordChainCompletionHandler:v25];
  [*(a1 + 32) associateChildOperation:v7];
  [(FCOperation *)v7 start];

  v24 = *MEMORY[0x1E69E9840];
}

id __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [FCNetworkActivity activityWithLabel:4];
  v3 = [WeakRetained networkActivity];
  [v2 setParentActivity:v3];

  return v2;
}

void __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 request];
  v6 = [v5 forYouConfigID];
  [v4 addObject:v6];

  v8 = [*(a1 + 32) request];
  v7 = [v8 additionalRecordIDs];
  [v4 addObjectsFromArray:v7];
}

void __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_2_29;
    v9[3] = &unk_1E7C38FF0;
    v9[4] = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 40);
    __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_2_29(v9);
  }

  else
  {
    v8 = [[FCTodayFeedConfigCKResult alloc] initWithRecordsByType:v5];
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __42__FCTodayFeedConfigOperation__fetchFromCK__block_invoke_2_29(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = a1[5];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered error fetching config from CK: %{public}@", &v10, 0x16u);
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_fetchFromNewsEdge
{
  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke;
  v6[3] = &unk_1E7C39ED0;
  v6[4] = self;
  v4 = [v3 initWithResolver:v6];

  return v4;
}

void __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) appConfig];
  v8 = [v7 todayFeedConfigRequestsEnabled];

  if (v8)
  {
    v9 = [*(a1 + 32) context];
    v10 = [v9 appConfigurationManager];
    v11 = v10;
    if (v10)
    {
      if ([v10 conformsToProtocol:&unk_1F2E8A1A0])
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

    if (v13)
    {
      v14 = *(a1 + 32);
      v29 = v13;
      v15 = [v14 networkActivity];

      if (v15)
      {
        objc_initWeak(location, *(a1 + 32));
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_82;
        aBlock[3] = &unk_1E7C40338;
        objc_copyWeak(&v34, location);
        v27 = _Block_copy(aBlock);
        objc_destroyWeak(&v34);
        objc_destroyWeak(location);
      }

      else
      {
        v27 = 0;
      }

      v16 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = v16;
        v19 = [v17 shortOperationDescription];
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v19;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch config from News Edge", location, 0xCu);
      }

      v20 = FCDispatchQueueForQualityOfService([*(a1 + 32) qualityOfService]);
      v21 = [*(a1 + 32) request];
      v22 = [v21 feedType];
      v23 = [*(a1 + 32) request];
      v24 = [v23 formatVersion];
      v25 = [*(a1 + 32) cachePolicy];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_85;
      v30[3] = &unk_1E7C40360;
      v30[4] = *(a1 + 32);
      v31 = v6;
      v32 = v5;
      [v29 fetchTodayFeedConfigurationIfNeededWithCompletionQueue:v20 feedType:v22 formatVersion:v24 cachePolicy:v25 networkActivityBlock:v28 completion:v30];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_81;
      v35[3] = &unk_1E7C37BC0;
      v35[4] = *(a1 + 32);
      v36 = v5;
      __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_81(v35);
    }
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2;
    v37[3] = &unk_1E7C37BC0;
    v37[4] = *(a1 + 32);
    v38 = v5;
    __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2(v37);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will skip News Edge because it's disabled in the app config", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_81(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will skip News Edge because there's no config manager", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

id __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x1E69C6D78];
  v3 = [WeakRetained networkActivity];
  v4 = [v3 token];
  v5 = [v2 activityWithDomain:54 label:3 parentToken:v4];

  return v5;
}

void __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_85(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2_86;
    v6[3] = &unk_1E7C38FF0;
    v6[4] = *(a1 + 32);
    v7 = v4;
    v8 = *(a1 + 40);
    __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2_86(v6);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __48__FCTodayFeedConfigOperation__fetchFromNewsEdge__block_invoke_2_86(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = a1[5];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered error fetching config from News Edge: %{public}@", &v10, 0x16u);
  }

  v7 = a1[5];
  result = (*(a1[6] + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end