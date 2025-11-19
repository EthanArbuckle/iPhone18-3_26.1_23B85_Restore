@interface NTCatchUpOperation
- (BOOL)validateOperation;
- (NTCatchUpOperation)init;
- (void)_fetchArticleListAndArticleIDsResultsIfNeededWithCompletion:(id)a3;
- (void)_fetchForYouResultsIfNeededWithCompletion:(id)a3;
- (void)addArticleIDsRequest:(id)a3;
- (void)addArticleIDsToExclude:(id)a3;
- (void)addArticleListRequest:(id)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)validateOperation;
@end

@implementation NTCatchUpOperation

- (NTCatchUpOperation)init
{
  v10.receiver = self;
  v10.super_class = NTCatchUpOperation;
  v2 = [(FCOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    articleListRequests = v2->_articleListRequests;
    v2->_articleListRequests = v3;

    v5 = objc_opt_new();
    articleIDsRequests = v2->_articleIDsRequests;
    v2->_articleIDsRequests = v5;

    v7 = objc_opt_new();
    articleIDsToExclude = v2->_articleIDsToExclude;
    v2->_articleIDsToExclude = v7;
  }

  return v2;
}

- (void)addArticleListRequest:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation addArticleListRequest:];
  }

  v5 = [(NTCatchUpOperation *)self articleListRequests];
  [v5 addObject:v4];
}

- (void)addArticleIDsRequest:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation addArticleIDsRequest:];
  }

  v5 = [(NTCatchUpOperation *)self articleIDsRequests];
  [v5 addObject:v4];
}

- (void)addArticleIDsToExclude:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation addArticleIDsToExclude:];
  }

  v5 = [(NTCatchUpOperation *)self articleIDsToExclude];
  [v5 unionSet:v4];
}

- (BOOL)validateOperation
{
  v4 = [(NTCatchUpOperation *)self appConfiguration];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation validateOperation];
  }

  v5 = [(NTCatchUpOperation *)self contentContext];

  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation validateOperation];
  }

  v6 = [(NTCatchUpOperation *)self feedPersonalizer];

  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation validateOperation];
  }

  v7 = [(NTCatchUpOperation *)self articleIDsRequests];
  v8 = [v7 count];
  if (!v8)
  {
    v2 = [(NTCatchUpOperation *)self articleListRequests];
    if (![v2 count])
    {

LABEL_19:
      v10 = 1;
      goto LABEL_20;
    }
  }

  v9 = [(NTCatchUpOperation *)self todayConfigOperationHeldRecordsByType];

  if (!v8)
  {
  }

  if (v9)
  {
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation validateOperation];
  }

  v10 = 0;
LABEL_20:
  if ([(NTCatchUpOperation *)self isForYouEnabled]&& ([(NTCatchUpOperation *)self forYouRequest], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [NTCatchUpOperation validateOperation];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(NTCatchUpOperation *)self catchUpCompletionHandler];

  if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation validateOperation];
  }

  if (v4)
  {
    v14 = v5 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v6 == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16 & v12;
  if (v13)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

- (void)prepareOperation
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(NTCatchUpOperation *)self setFetchDate:v3];
}

- (void)performOperation
{
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy_;
  v28[4] = __Block_byref_object_dispose_;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy_;
  v26[4] = __Block_byref_object_dispose_;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__NTCatchUpOperation_performOperation__block_invoke;
  v13[3] = &unk_279982EC0;
  v15 = v28;
  v16 = v26;
  v17 = v24;
  v4 = v3;
  v14 = v4;
  [(NTCatchUpOperation *)self _fetchForYouResultsIfNeededWithCompletion:v13];
  dispatch_group_enter(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__NTCatchUpOperation_performOperation__block_invoke_2;
  v8[3] = &unk_279982EE8;
  v10 = v22;
  v11 = v20;
  v12 = v18;
  v5 = v4;
  v9 = v5;
  [(NTCatchUpOperation *)self _fetchArticleListAndArticleIDsResultsIfNeededWithCompletion:v8];
  [(NTCatchUpOperation *)self qualityOfService];
  v6 = FCDispatchQueueForQualityOfService();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NTCatchUpOperation_performOperation__block_invoke_3;
  block[3] = &unk_279982F10;
  block[6] = v20;
  block[7] = v28;
  block[4] = self;
  block[5] = v22;
  block[8] = v26;
  block[9] = v24;
  block[10] = v18;
  dispatch_group_notify(v5, v6, block);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

void __38__NTCatchUpOperation_performOperation__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [a2 copy];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v8 copy];
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v7 copy];
  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = a1[4];

  dispatch_group_leave(v18);
}

void __38__NTCatchUpOperation_performOperation__block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [a2 copy];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [v8 copy];
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v7 copy];
  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = a1[4];

  dispatch_group_leave(v18);
}

void __38__NTCatchUpOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = NTSharedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) count];
    v4 = [*(*(*(a1 + 48) + 8) + 40) count];
    v5 = [*(*(*(a1 + 56) + 8) + 40) items];
    v6 = [v5 count];
    v7 = [*(a1 + 32) isForYouEnabled];
    v13 = 134218752;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_INFO, "fetched %lu sets of articleList headlines, %lu sets of articleIDs headlines, %lu For You headlines (enabled: %d)", &v13, 0x26u);
  }

  [*(a1 + 32) setResultsByArticleListID:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) setResultsByArticleIDsRequestID:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) setForYouResults:*(*(*(a1 + 56) + 8) + 40)];
  [*(a1 + 32) setForYouFetchInfo:*(*(*(a1 + 64) + 8) + 40)];
  v8 = *(*(*(a1 + 72) + 8) + 40);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(*(*(a1 + 80) + 8) + 40);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = NTSharedLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v9 localizedDescription];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_ERROR, "Encountered error %@ while attempting to catch up", &v13, 0xCu);
  }

LABEL_9:
  [*(a1 + 32) finishedPerformingOperationWithError:v9];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = NTSharedLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_25BF21000, v5, OS_LOG_TYPE_ERROR, "Catch up operation failed with error: %{public}@", &v8, 0xCu);
    }
  }

  v6 = [(NTCatchUpOperation *)self catchUpCompletionHandler];
  (v6)[2](v6, self, v4);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchForYouResultsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation _fetchForYouResultsIfNeededWithCompletion:];
  }

  if ([(NTCatchUpOperation *)self isForYouEnabled])
  {
    v5 = [(NTCatchUpOperation *)self forYouSource];
    if (v5 == 2)
    {
      v8 = 1;
    }

    else if (v5)
    {
      v8 = 0;
    }

    else
    {
      v6 = [(NTCatchUpOperation *)self appConfiguration];
      if (objc_opt_respondsToSelector())
      {
        v7 = [(NTCatchUpOperation *)self appConfiguration];
        v8 = [v7 widgetForYouFromDaemonEnabled];
      }

      else
      {
        v8 = 0;
      }
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_2;
    v18[3] = &unk_279982F38;
    v19 = v8;
    v18[4] = self;
    v10 = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_2(v18);
    v11 = [(NTCatchUpOperation *)self forYouRequest];
    v12 = [(NTCatchUpOperation *)self appConfiguration];
    v13 = [(NTCatchUpOperation *)self fetchDate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_3;
    v15[3] = &unk_279982F88;
    v17 = v8;
    v15[4] = self;
    v16 = v4;
    v14 = v4;
    [v10 fetchForYouWithRequest:v11 configuration:v12 fetchDate:v13 completionHandler:v15];
  }

  else
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke;
    v23 = &unk_2799827B8;
    v24 = v4;
    v9 = v4;
    if (v4)
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

uint64_t __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

id __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [NTProxyForYouService alloc];
    v3 = [*(a1 + 32) feedPersonalizer];
    v4 = [(NTProxyForYouService *)v2 initWithFeedPersonalizer:v3];
  }

  else
  {
    v5 = [NTForYouService alloc];
    v3 = [*(a1 + 32) contentContext];
    v4 = [(NTForYouService *)v5 initWithContentContext:v3];
  }

  v6 = v4;

  return v6;
}

void __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_4;
    v19[3] = &unk_279982F60;
    v23 = *(a1 + 48);
    v12 = v10;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v20 = v12;
    v21 = v13;
    v22 = v14;
    __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_4(v19);
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_90;
    v18[3] = &unk_279982880;
    v18[4] = *(a1 + 32);
    v15 = [a2 fc_arrayOfObjectsFailingTest:v18];
    if (v15)
    {
      v16 = [[NTCatchUpOperationResults alloc] initWithFeedItems:v15 supplementalInterestToken:0 feedContextByFeedID:v9];
    }

    else
    {
      v16 = 0;
    }

    v17 = [[NTCatchUpOperationForYouFetchInfo alloc] initWithAttemptedCachedOnly:a4 feedContextByFeedID:v9];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v2 = NTSharedLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_DEFAULT, "NTCatchUpOperation falling back to in-process For You request due to error: %{public}@", &v10, 0xCu);
    }

    [*(a1 + 40) setForYouSource:1];
    result = [*(a1 + 40) _fetchForYouResultsIfNeededWithCompletion:*(a1 + 48)];
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 48) + 16);
    v9 = *MEMORY[0x277D85DE8];

    return v8();
  }

  return result;
}

uint64_t __64__NTCatchUpOperation__fetchForYouResultsIfNeededWithCompletion___block_invoke_90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 articleIDsToExclude];
  v5 = [v3 articleID];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)_fetchArticleListAndArticleIDsResultsIfNeededWithCompletion:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTCatchUpOperation _fetchArticleListAndArticleIDsResultsIfNeededWithCompletion:];
  }

  v5 = [(NTCatchUpOperation *)self articleListRequests];
  v6 = [(NTCatchUpOperation *)self articleIDsRequests];
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v7 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v31 + 1) + 8 * i) articleIDs];
          v14 = [v13 set];
          [v7 unionSet:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v10);
    }

    v15 = [v5 fc_arrayByTransformingWithBlock:&__block_literal_global_5];
    v16 = NTSharedLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v15 count];
      v18 = [v7 count];
      *buf = 134218754;
      v36 = v17;
      v37 = 2112;
      v38 = v15;
      v39 = 2048;
      v40 = v18;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&dword_25BF21000, v16, OS_LOG_TYPE_INFO, "NTCatchUpOperation fetching headlines for articleListIDs (%lu): %@  articleIDs (%lu): %@", buf, 0x2Au);
    }

    v19 = [(NTCatchUpOperation *)self contentContext];
    v20 = objc_opt_new();
    v21 = [(NTCatchUpOperation *)self appConfiguration];
    [v20 setConfiguration:v21];

    [v20 setContext:v19];
    [v20 setArticleListIDs:v15];
    v22 = [v7 allObjects];
    [v20 setArticleIDs:v22];

    [v20 setShouldBypassRecordSourcePersistence:1];
    v23 = [(NTCatchUpOperation *)self todayConfigOperationHeldRecordsByType];
    [v20 setHeldRecordsByType:v23];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_96;
    v26[3] = &unk_279983048;
    v27 = v5;
    v28 = self;
    v29 = v8;
    v30 = v4;
    [v20 setHeadlinesCompletionHandler:v26];
    [(FCOperation *)self associateChildOperation:v20];
    [v20 start];

    v6 = v25;
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_96(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = *(a1 + 32);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_2;
  v37[3] = &unk_279982FD0;
  v30 = v10;
  v38 = v30;
  v16 = v14;
  v39 = v16;
  v17 = v12;
  v40 = v17;
  v29 = v9;
  v41 = v29;
  v18 = v13;
  v42 = v18;
  [v15 enumerateObjectsUsingBlock:v37];
  v19 = [*(a1 + 40) appConfiguration];
  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = *(a1 + 48);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_3;
  v31[3] = &unk_279983020;
  v32 = v11;
  v23 = v21;
  v33 = v23;
  v24 = v17;
  v34 = v24;
  v35 = v19;
  v36 = v20;
  v25 = v20;
  v26 = v19;
  v27 = v11;
  [v22 enumerateObjectsUsingBlock:v31];
  if ([v16 count] || objc_msgSend(v23, "count"))
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = [a2 articleListID];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [*(a1 + 56) objectForKeyedSubscript:v7];
    if (v4)
    {
      v5 = [NTCatchUpOperationResults alloc];
      v6 = [(NTCatchUpOperationResults *)v5 initWithHeadlines:v4 rankingFeedback:0 actionURLsByArticleID:MEMORY[0x277CBEC10]];
      [*(a1 + 64) setObject:v6 forKeyedSubscript:v7];
    }

    else
    {
      [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v7];
    }
  }

  else
  {
    [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v7];
  }
}

void __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 articleIDs];
  v6 = [v5 array];

  v7 = [v3 overrideHeadlineMetadataByArticleID];

  v8 = [*(a1 + 32) nf_objectsForKeysWithoutMarker:v6];
  if (v8)
  {
    v9 = objc_opt_new();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_4;
    v12[3] = &unk_279982FF8;
    v13 = v7;
    v14 = *(a1 + 56);
    v15 = v9;
    v10 = v9;
    [v8 enumerateObjectsUsingBlock:v12];
    v11 = [[NTCatchUpOperationResults alloc] initWithHeadlines:v8 rankingFeedback:0 actionURLsByArticleID:v10];
    [*(a1 + 64) setObject:v11 forKeyedSubscript:v4];
  }

  else
  {
    [*(a1 + 40) setObject:*(a1 + 48) forKeyedSubscript:v4];
  }
}

void __82__NTCatchUpOperation__fetchArticleListAndArticleIDsResultsIfNeededWithCompletion___block_invoke_4(void *a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  v3 = FCCheckedDynamicCast();
  v4 = a1[4];
  v5 = [v13 articleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  [v3 applyHeadlineMetadata:v6 configuration:a1[5]];
  v7 = [v6 actionURLString];
  if (v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v6 actionURLString];
    v10 = [v8 URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = a1[6];
  v12 = [v13 articleID];
  [v11 setObject:v10 forKeyedSubscript:v12];
}

- (void)addArticleListRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleListRequest", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addArticleIDsRequest:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleIDsRequest", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addArticleIDsToExclude:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Catch up operation must have a completion handler"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchForYouResultsIfNeededWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_fetchArticleListAndArticleIDsResultsIfNeededWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "completion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end