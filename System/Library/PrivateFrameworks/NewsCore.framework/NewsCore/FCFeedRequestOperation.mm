@interface FCFeedRequestOperation
+ (id)feedRequestContentEnvironmentTokenWithContext:(id)a3;
+ (void)streamFeedItemsWithContext:(id)a3 feedRequests:(id)a4 feedItemHandler:(id)a5 networkEventHandler:(id)a6 completionHandler:(id)a7;
- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4;
- (BOOL)validateOperation;
- (FCFeedRequestOperation)init;
- (FCFeedResponse)_failureResponseForRequest:(void *)a3 error:;
- (NSArray)networkEvents;
- (id)_additionalHTTPHeadersForOrderFeedRequest;
- (uint64_t)_countOfDroppedFeeds;
- (unint64_t)maxRetries;
- (void)_gatherAllOrderFeedResponsesWithCompletionHandler:(void *)a1;
- (void)_reportProgressWithFeedItems:(id *)a1;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
- (void)setResultHeldArticleRecords:(uint64_t)a1;
- (void)setResultHeldIssueRecords:(uint64_t)a1;
- (void)setResultHeldTagRecords:(uint64_t)a1;
@end

@implementation FCFeedRequestOperation

+ (id)feedRequestContentEnvironmentTokenWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v13 = "+[FCFeedRequestOperation feedRequestContentEnvironmentTokenWithContext:]";
    v14 = 2080;
    v15 = "FCFeedRequestOperation.m";
    v16 = 1024;
    v17 = 90;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 contentEnvironmentToken];
  v6 = [v3 internalContentContext];
  v7 = [v6 feedDatabase];
  v8 = [v4 stringWithFormat:@"%@-%zd", v5, objc_msgSend(v7, "endpoint")];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (FCFeedRequestOperation)init
{
  v13.receiver = self;
  v13.super_class = FCFeedRequestOperation;
  v2 = [(FCOperation *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    progressReportedFeedItems = v2->_progressReportedFeedItems;
    v2->_progressReportedFeedItems = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultFeedResponses = v2->_resultFeedResponses;
    v2->_resultFeedResponses = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableNetworkEvents = v2->_mutableNetworkEvents;
    v2->_mutableNetworkEvents = v7;

    feedRequests = v2->_feedRequests;
    v10 = MEMORY[0x1E695E0F0];
    v2->_feedRequests = MEMORY[0x1E695E0F0];

    feedTransformations = v2->_feedTransformations;
    v2->_feedTransformations = v10;

    v2->_queryBudget = 10;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [(FCFeedRequestOperation *)self context];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires a context"];
    *buf = 136315906;
    v45 = "[FCFeedRequestOperation validateOperation]";
    v46 = 2080;
    v47 = "FCFeedRequestOperation.m";
    v48 = 1024;
    v49 = 112;
    v50 = 2114;
    v51 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [(FCFeedRequestOperation *)self configuration];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires a configuration"];
    *buf = 136315906;
    v45 = "[FCFeedRequestOperation validateOperation]";
    v46 = 2080;
    v47 = "FCFeedRequestOperation.m";
    v48 = 1024;
    v49 = 113;
    v50 = 2114;
    v51 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFeedRequestOperation *)self feedRequests];
  v6 = [v5 count];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed request operation requires at least one request"];
    *buf = 136315906;
    v45 = "[FCFeedRequestOperation validateOperation]";
    v46 = 2080;
    v47 = "FCFeedRequestOperation.m";
    v48 = 1024;
    v49 = 114;
    v50 = 2114;
    v51 = v37;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = self;
  v8 = [(FCFeedRequestOperation *)self feedRequests];
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      v12 = 0;
      do
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        v14 = [v13 feedID];
        if (v14)
        {
          if ([v7 containsObject:v14] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"only one feed request is allowed per feedID and feedID %@ is duplicated", v14];
            *buf = 136315906;
            v45 = "[FCFeedRequestOperation validateOperation]";
            v46 = 2080;
            v47 = "FCFeedRequestOperation.m";
            v48 = 1024;
            v49 = 128;
            v50 = 2114;
            v51 = v27;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          [v7 addObject:v14];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a feed ID"];
          *buf = 136315906;
          v45 = "[FCFeedRequestOperation validateOperation]";
          v46 = 2080;
          v47 = "FCFeedRequestOperation.m";
          v48 = 1024;
          v49 = 124;
          v50 = 2114;
          v51 = v24;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v15 = [v13 feedRange];
        v16 = [v15 top];

        if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a non-nil range top"];
          *buf = 136315906;
          v45 = "[FCFeedRequestOperation validateOperation]";
          v46 = 2080;
          v47 = "FCFeedRequestOperation.m";
          v48 = 1024;
          v49 = 132;
          v50 = 2114;
          v51 = v25;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v17 = [v13 feedRange];
        v18 = [v17 bottom];

        if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed requests must have a non-nil range bottom"];
          *buf = 136315906;
          v45 = "[FCFeedRequestOperation validateOperation]";
          v46 = 2080;
          v47 = "FCFeedRequestOperation.m";
          v48 = 1024;
          v49 = 133;
          v50 = 2114;
          v51 = v26;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          if (!v14)
          {
            goto LABEL_38;
          }
        }

        else if (!v14)
        {
          goto LABEL_38;
        }

        v19 = [v13 feedRange];
        v20 = [v19 top];
        if (!v20)
        {

LABEL_38:
          LOBYTE(v23) = 0;
          goto LABEL_39;
        }

        v21 = v20;
        v22 = [v13 feedRange];
        v23 = [v22 bottom];

        if (!v23)
        {
          goto LABEL_39;
        }

        ++v12;
      }

      while (v10 != v12);
      v28 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v10 = v28;
      LOBYTE(v23) = 1;
    }

    while (v28);
  }

  else
  {
    LOBYTE(v23) = 1;
  }

LABEL_39:

  v29 = [(FCFeedRequestOperation *)v38 context];
  if (v29)
  {
    v30 = [(FCFeedRequestOperation *)v38 configuration];
    if (v30)
    {
      v31 = [(FCFeedRequestOperation *)v38 feedRequests];
      if ([v31 count])
      {
        v32 = v23;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)prepareOperation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(FCFeedRequestOperation *)self feedDatabase];

  if (!v3)
  {
    v4 = [(FCFeedRequestOperation *)self context];
    v5 = [v4 internalContentContext];
    v6 = [v5 feedDatabase];
    [(FCFeedRequestOperation *)self setFeedDatabase:v6];
  }

  v7 = [(FCFeedRequestOperation *)self configuration];

  if (!v7)
  {
    v8 = [(FCFeedRequestOperation *)self context];
    v9 = [v8 configurationManager];
    v10 = [v9 configuration];
    [(FCFeedRequestOperation *)self setConfiguration:v10];
  }

  v11 = [(FCFeedRequestOperation *)self feedRequests];
  v12 = [v11 fc_setByTransformingWithBlock:&__block_literal_global_104];
  if (self)
  {
    objc_storeStrong(&self->_nonExpendableFeedIDs, v12);
  }

  if ([(FCFeedRequestOperation *)self maxCount]>= 0x190)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"max count should be reasonable; pass zero if you don't want a limit"];
      v19 = 136315906;
      v20 = "[FCFeedRequestOperation prepareOperation]";
      v21 = 2080;
      v22 = "FCFeedRequestOperation.m";
      v23 = 1024;
      v24 = 163;
      v25 = 2114;
      v26 = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);
    }

    [(FCFeedRequestOperation *)self setMaxCount:0];
  }

  v13 = [(FCFeedRequestOperation *)self feedRequests];
  if ([v13 count] != 1)
  {
    goto LABEL_17;
  }

  v14 = [(FCFeedRequestOperation *)self feedRequests];
  v15 = [v14 firstObject];
  if (([v15 hasMaxCount] & 1) == 0)
  {

    goto LABEL_16;
  }

  v16 = [(FCFeedRequestOperation *)self maxCount];

  if (!v16)
  {
    v13 = [(FCFeedRequestOperation *)self feedRequests];
    v14 = [v13 firstObject];
    -[FCFeedRequestOperation setMaxCount:](self, "setMaxCount:", [v14 maxCount]);
LABEL_16:

LABEL_17:
  }

  v17 = *MEMORY[0x1E69E9840];
}

id __42__FCFeedRequestOperation_prepareOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isExpendable])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 feedID];
  }

  return v3;
}

- (void)performOperation
{
  v19 = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__FCFeedRequestOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C36EA0;
  v13[4] = self;
  v3 = v13;
  if (self)
  {
    v4 = [(FCFeedRequestOperation *)self prewarmRequestKey];

    if (v4)
    {
      v5 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(FCOperation *)self shortOperationDescription];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will wait for prewarming to finish", &buf, 0xCu);
      }

      v8 = [(FCFeedRequestOperation *)self context];
      v9 = [v8 internalContentContext];
      v10 = [v9 feedPrewarmer];
      v11 = [(FCFeedRequestOperation *)self prewarmRequestKey];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v15 = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_69;
      v16 = &unk_1E7C421E0;
      v17 = self;
      v18 = v3;
      [v10 finishPrewarmingRequestForKey:v11 completion:&buf];
    }

    else
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v15 = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke;
      v16 = &unk_1E7C37BC0;
      v17 = self;
      v18 = v3;
      __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke(&buf);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__FCFeedRequestOperation_performOperation__block_invoke(uint64_t a1)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) feedRequests];
  v4 = [v3 fc_dictionaryWithKeySelector:sel_feedID];
  if (*v2)
  {
    objc_storeStrong((*v2 + 488), v4);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_2;
  v53[3] = &unk_1E7C36EC8;
  v53[4] = *(a1 + 32);
  v5 = [MEMORY[0x1E695DF20] fc_dictionary:v53];
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong((v6 + 496), v5);
  }

  v7 = [*(a1 + 32) edgeCacheHint];
  v8 = v7 == 0;

  v9 = *(a1 + 32);
  if (v8)
  {
    v37 = [*(a1 + 32) feedDatabase];
    v38 = [v37 endpoint] == 1;

    if (v38)
    {
      v39 = *(a1 + 32);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_4;
      v51[3] = &unk_1E7C36E50;
      v51[4] = v39;
      [(FCFeedRequestOperation *)v39 _gatherAllOrderFeedResponsesWithCompletionHandler:v51];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MultiFeed is no longer supported"];
        *newValue = 136315906;
        *&newValue[4] = "[FCFeedRequestOperation performOperation]_block_invoke";
        *&newValue[12] = 2080;
        *&newValue[14] = "FCFeedRequestOperation.m";
        *&newValue[22] = 1024;
        LODWORD(v57) = 208;
        WORD2(v57) = 2114;
        *(&v57 + 6) = v50;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", newValue, 0x26u);
      }

      v47 = *(a1 + 32);
      v48 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
      [v47 finishedPerformingOperationWithError:v48];
    }
  }

  else
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __42__FCFeedRequestOperation_performOperation__block_invoke_3;
    v52[3] = &unk_1E7C36E50;
    v52[4] = v9;
    v10 = v52;
    if (v9)
    {
      v11 = [v9 feedRequests];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke;
      v55[3] = &unk_1E7C421B8;
      v55[4] = v9;
      v12 = [v11 fc_arrayByTransformingWithBlock:v55];

      v13 = objc_alloc_init(FCCKOrderFeedQueryOperation);
      v14 = [v9 context];
      v15 = [v14 internalContentContext];
      v16 = [v15 contentDatabase];
      [(FCCKOrderFeedQueryOperation *)v13 setDatabase:v16];

      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v17, v12, 376);
        v18 = [(FCFeedRequestOperation *)v9 _additionalHTTPHeadersForOrderFeedRequest];
        objc_setProperty_nonatomic_copy(v13, v19, v18, 416);
      }

      else
      {
        v18 = [(FCFeedRequestOperation *)v9 _additionalHTTPHeadersForOrderFeedRequest];
      }

      v20 = [v9 edgeCacheHint];
      v22 = v20;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v21, v20, 424);

        v23 = [v9 maxCount];
        v24 = 4000;
        if (v23)
        {
          v24 = v23;
        }

        v13->_resultsLimit = v24;
        v13->_queryPriority = 300;
      }

      else
      {

        [v9 maxCount];
      }

      v25 = [v9 context];
      v26 = [v25 internalContentContext];

      v27 = [v9 context];
      v28 = [v27 contentStoreFrontID];

      v29 = MEMORY[0x1E69B6E30];
      v30 = [v26 articleRecordSource];
      v31 = [v29 keysForFeedItemAndArticleRecordWithRecordSource:v30];

      if (([v9 options] & 2) != 0)
      {
        v32 = [v26 articleRecordSource];
        v33 = [v32 desiredKeys];
        v34 = [v31 arrayByAddingObjectsFromArray:v33];

        v31 = v34;
      }

      if (([v9 options] & 4) != 0)
      {
        v40 = [v26 tagRecordSource];
        v41 = [v40 desiredKeys];
        v42 = [v31 arrayByAddingObjectsFromArray:v41];

        v62[0] = @"sourceChannelTagID";
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
        v31 = v42;
      }

      else
      {
        v36 = 0;
      }

      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v35, v31, 384);
        objc_setProperty_nonatomic_copy(v13, v43, v36, 408);
      }

      objc_initWeak(&location, v13);
      *newValue = MEMORY[0x1E69E9820];
      *&newValue[8] = 3221225472;
      *&newValue[16] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_2;
      *&v57 = &unk_1E7C42258;
      *(&v57 + 1) = v9;
      objc_copyWeak(v61, &location);
      v44 = v26;
      v58 = v44;
      v45 = v28;
      v59 = v45;
      v60 = v10;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v46, newValue, 440);
      }

      [v9 associateChildOperation:v13];
      [(FCOperation *)v13 start];

      objc_destroyWeak(v61);
      objc_destroyWeak(&location);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void __42__FCFeedRequestOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 32) feedRequests];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_alloc_init(FCFeedDatabaseLookup);
        v11 = [v9 feedID];
        [(FCFeedDatabaseLookup *)v10 setFeedID:v11];

        v12 = [v9 feedRange];
        [(FCFeedDatabaseLookup *)v10 setFeedRange:v12];

        -[FCFeedDatabaseLookup setMaxCount:](v10, "setMaxCount:", [v9 maxCount]);
        -[FCFeedDatabaseLookup setCachedOnly:](v10, "setCachedOnly:", [v9 cachedOnly]);
        v13 = [v9 requiredFeature];
        [(FCFeedDatabaseLookup *)v10 setRequiredFeature:v13];

        v14 = [v9 feedID];
        [v3 setObject:v10 forKey:v14];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_gatherAllOrderFeedResponsesWithCompletionHandler:(void *)a1
{
  v135 = *MEMORY[0x1E69E9840];
  v103 = a2;
  v112 = a1;
  if (a1)
  {
    v105 = [MEMORY[0x1E695DF90] dictionary];
    newValue = [MEMORY[0x1E695DF70] array];
    v106 = [MEMORY[0x1E695DF90] dictionary];
    v3 = [a1 feedRequests];
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke;
    v129[3] = &unk_1E7C421B8;
    v129[4] = v112;
    v104 = [v3 fc_arrayByTransformingWithBlock:v129];

    v102 = [MEMORY[0x1E695DF00] date];
    LOBYTE(v3) = [v112 maxCount] == 0;
    v4 = [v112 feedDatabase];
    v5 = v4;
    if (v3)
    {
      [v4 performDatabaseLookups:v104];
    }

    else
    {
      [v4 performDatabaseLookups:v104 boundedByCount:{objc_msgSend(v112, "maxCount")}];
    }
    v6 = ;

    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v112 shortOperationDescription];
      v10 = [v102 fc_millisecondTimeIntervalUntilNow];
      v11 = [v104 count];
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      v133 = v11;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to lookup %lu feeds in the database", buf, 0x20u);
    }

    v12 = [v112 feedRequests];
    v13 = [v12 count] < 3;

    if (v13)
    {
      v14 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = [v112 shortOperationDescription];
        *buf = 138543874;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v104;
        *&buf[22] = 2114;
        v133 = v6;
        _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ did perform database lookups: %{public}@,\nresults:%{public}@", buf, 0x20u);
      }
    }

    v108 = [MEMORY[0x1E695DF70] array];
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v6;
    v110 = [obj countByEnumeratingWithState:&v125 objects:v131 count:16];
    if (v110)
    {
      v109 = *v126;
      do
      {
        v17 = 0;
        do
        {
          if (*v126 != v109)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v125 + 1) + 8 * v17);
          v19 = [*(v112 + 488) objectForKey:v18];
          v20 = [*(v112 + 496) objectForKey:v18];
          v21 = [obj objectForKey:v18];
          if ([v21 ckFromOrder] && (!objc_msgSend(v20, "hasMaxCount") || (objc_msgSend(v21, "feedItems"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), LODWORD(v23) = v23 < objc_msgSend(v20, "maxCount"), v22, v23)))
          {
            v24 = [v21 ckFromOrder];
            if ([v21 ckToOrder])
            {
              v25 = [v21 ckToOrder] - 1;
            }

            else
            {
              v25 = 0;
            }

            v26 = [FCFeedRange feedRangeWithMaxOrder:v24 minOrder:v25];
            v28 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v18 feedRange:v26];
            v29 = [v20 maxCount];
            if (v28)
            {
              if (v29 >= 0xFFFF)
              {
                v30 = 0xFFFFLL;
              }

              else
              {
                v30 = v29;
              }

              if (!v29)
              {
                v30 = 0xFFFFLL;
              }

              v28[4] = v30;
            }

            if ([v20 hasMaxCount])
            {
              v31 = [v20 maxCount];
              v32 = [v21 feedItems];
              v33 = v31 > [v32 count];

              if (v33)
              {
                v34 = [v20 maxCount];
                v35 = [v21 feedItems];
                v36 = [v35 count];
                if (v28)
                {
                  v37 = v34 - v36;
                  if ((v34 - v36) >= 0xFFFF)
                  {
                    v37 = 0xFFFFLL;
                  }

                  if (v34 == v36)
                  {
                    v37 = 0xFFFFLL;
                  }

                  v28[4] = v37;
                }
              }
            }

            [newValue addObject:v28];
            if (v28)
            {
              v38 = v28[1];
            }

            else
            {
              v38 = 0;
            }

            v39 = v38;
            [v106 setObject:v19 forKey:v39];

            v40 = [v21 insertionToken];
            [v105 setObject:v40 forKey:v18];
          }

          else
          {
            v26 = objc_alloc_init(FCFeedResponse);
            [(FCFeedResponse *)v26 setFeedID:v18];
            v27 = [v21 feedItems];
            [(FCFeedResponse *)v26 setFeedItems:v27];

            -[FCFeedResponse setExhaustedRequestRange:](v26, "setExhaustedRequestRange:", [v21 exhaustedRange]);
            [*(v112 + 520) setObject:v26 forKey:v18];
            v28 = [v21 feedItems];
            [v108 addObjectsFromArray:v28];
          }

          ++v17;
        }

        while (v110 != v17);
        v41 = [obj countByEnumeratingWithState:&v125 objects:v131 count:16];
        v110 = v41;
      }

      while (v41);
    }

    [(FCFeedRequestOperation *)v112 _reportProgressWithFeedItems:v108];
    if ([newValue count])
    {
      v42 = v112;
      v43 = *(v112 + 504);
      if (v43)
      {
        *(v112 + 504) = v43 - 1;
        v44 = [MEMORY[0x1E695DF00] date];
        v45 = objc_alloc_init(FCCKBatchedOrderFeedQueryOperation);
        v46 = [v112 context];
        v47 = [v46 internalContentContext];
        v48 = [v47 contentDatabase];
        [(FCCKBatchedOrderFeedQueryOperation *)v45 setDatabase:v48];

        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v49, newValue, 376);
          v50 = [(FCFeedRequestOperation *)v112 _additionalHTTPHeadersForOrderFeedRequest];
          objc_setProperty_nonatomic_copy(v45, v51, v50, 416);
        }

        else
        {
          v50 = [(FCFeedRequestOperation *)v112 _additionalHTTPHeadersForOrderFeedRequest];
        }

        v52 = [v112 edgeCacheHint];
        v54 = v52;
        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v53, v52, 424);

          v55 = [v112 relativePriority];
          v56 = 300;
          if (!v55)
          {
            v56 = 200;
          }

          if (v55 == -1)
          {
            v56 = 100;
          }

          v45->_queryPriority = v56;
        }

        else
        {

          [v112 relativePriority];
        }

        if ([v112 maxCount])
        {
          v57 = [v112 maxCount];
        }

        else
        {
          v57 = 4000;
        }

        if (v45)
        {
          v45->_resultsLimit = v57;
        }

        v78 = [v112 context];
        v79 = [v78 internalContentContext];

        v80 = [v112 context];
        v81 = [v80 contentStoreFrontID];

        v82 = MEMORY[0x1E69B6E30];
        v83 = [v79 articleRecordSource];
        v84 = [v82 keysForFeedItemAndArticleRecordWithRecordSource:v83];

        v85 = [MEMORY[0x1E695DF70] array];
        if (([v112 options] & 2) != 0)
        {
          v86 = [v79 articleRecordSource];
          v87 = [v86 desiredKeys];
          v88 = [v84 arrayByAddingObjectsFromArray:v87];

          v84 = v88;
        }

        if (([v112 options] & 4) != 0)
        {
          v89 = [v79 tagRecordSource];
          v90 = [v89 desiredKeys];
          v91 = [v84 arrayByAddingObjectsFromArray:v90];

          [v85 addObject:@"sourceChannelTagID"];
          v84 = v91;
        }

        if (([v112 options] & 8) != 0)
        {
          v93 = [v79 issueRecordSource];
          v94 = [v93 desiredKeys];
          v95 = [v84 arrayByAddingObjectsFromArray:v94];

          [v85 addObject:@"parentIssueID"];
          v84 = v95;
        }

        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v92, v84, 384);
          objc_setProperty_nonatomic_copy(v45, v96, v85, 408);
        }

        objc_initWeak(buf, v45);
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_86;
        v113[3] = &unk_1E7C42230;
        v113[4] = v112;
        objc_copyWeak(&v120, buf);
        v97 = v79;
        v114 = v97;
        v115 = v106;
        v98 = v81;
        v116 = v98;
        v117 = v105;
        v99 = v44;
        v118 = v99;
        v119 = v103;
        if (v45)
        {
          objc_setProperty_nonatomic_copy(v45, v100, v113, 432);
        }

        [v112 associateChildOperation:v45];
        [(FCOperation *)v45 start];

        objc_destroyWeak(&v120);
        objc_destroyWeak(buf);
      }

      else
      {
        v58 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v59 = v58;
          v60 = [v112 shortOperationDescription];
          v61 = [v106 count];
          v62 = [v112 feedRequests];
          v63 = [v62 count];
          *buf = 138543874;
          *&buf[4] = v60;
          *&buf[12] = 2048;
          *&buf[14] = v61;
          *&buf[22] = 2048;
          v133 = v63;
          _os_log_impl(&dword_1B63EF000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ exceeded query budget, will fail remaining %lu of %lu requests", buf, 0x20u);

          v42 = v112;
        }

        v64 = MEMORY[0x1E696ABC0];
        v65 = [v42 errorUserInfo];
        v66 = [v64 fc_exceededQueryBudgetErrorWithAdditionalUserInfo:v65];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v67 = [v106 allValues];
        v68 = [v67 countByEnumeratingWithState:&v121 objects:v130 count:16];
        if (v68)
        {
          v69 = *v122;
          do
          {
            for (i = 0; i != v68; ++i)
            {
              if (*v122 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v121 + 1) + 8 * i);
              v72 = [(FCFeedRequestOperation *)v112 _failureResponseForRequest:v71 error:v66];
              v73 = *(v112 + 520);
              v74 = [v71 feedID];
              [v73 setObject:v72 forKey:v74];
            }

            v68 = [v67 countByEnumeratingWithState:&v121 objects:v130 count:16];
          }

          while (v68);
        }

        v75 = *(v112 + 520);
        v76 = [v75 allValues];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __45__FCFeedRequestOperation__countOfFailedFeeds__block_invoke;
        v133 = &unk_1E7C42280;
        v134 = v112;
        [v76 fc_countOfObjectsPassingTest:buf];

        if (([v112 options] & 0x10) == 0)
        {
          v77 = *(v112 + 480);
          if ([v77 count] >= 3)
          {
            vcvtmd_u64_f64(vcvtd_n_f64_u64([*(v112 + 480) count], 1uLL));
          }
        }

        v103[2]();
      }
    }

    else
    {
      (v103[2])(v103, 0);
    }
  }

  v101 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v158 = *MEMORY[0x1E69E9840];
  v113 = a3;
  v118 = self;
  if (v113)
  {
    v4 = MEMORY[0x1E695E0F0];
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (self)
    {
      resultFeedResponses = self->_resultFeedResponses;
    }

    else
    {
      resultFeedResponses = 0;
    }

    v7 = [(NSMutableDictionary *)resultFeedResponses allValues];
    v117 = [MEMORY[0x1E695DF70] array];
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v141 objects:v157 count:16];
    if (v8)
    {
      v9 = *v142;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v142 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v141 + 1) + 8 * i);
          v12 = [v11 feedItems];
          v13 = v12 == 0;

          if (!v13)
          {
            v14 = [v11 feedItems];
            [v117 addObjectsFromArray:v14];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v141 objects:v157 count:16];
      }

      while (v8);
    }

    v15 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(FCOperation *)v118 shortOperationDescription];
      v18 = [v117 count];
      v19 = [obj count];
      *buf = 138543874;
      v148 = v17;
      v149 = 2048;
      v150 = v18;
      v151 = 2048;
      *v152 = v19;
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ gathered %lu feed items from %lu feeds", buf, 0x20u);
    }

    v20 = [(FCFeedRequestOperation *)v118 requestCompletionHandlerWithHeldRecords];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [(FCFeedRequestOperation *)v118 options];
      if ((v22 & 0xE) != 0)
      {
        v23 = objc_opt_new();
        v24 = objc_opt_new();
        v115 = objc_opt_new();
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v25 = v117;
        v26 = [v25 countByEnumeratingWithState:&v137 objects:v156 count:16];
        if (v26)
        {
          v27 = *v138;
          do
          {
            v28 = 0;
            do
            {
              if (*v138 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v137 + 1) + 8 * v28);
              if ((v22 & 2) != 0)
              {
                v30 = [*(*(&v137 + 1) + 8 * v28) articleID];
                if (v118)
                {
                  resultHeldArticleRecords = v118->_resultHeldArticleRecords;
                }

                else
                {
                  resultHeldArticleRecords = 0;
                }

                v32 = [(FCHeldRecords *)resultHeldArticleRecords recordWithID:v30];
                v33 = v32 == 0;

                if (v33)
                {
                  [v23 addObject:v30];
                }
              }

              if ((v22 & 4) != 0)
              {
                v34 = [v29 sourceChannelID];
                if (v34)
                {
                  v35 = v118 ? v118->_resultHeldTagRecords : 0;
                  v36 = [(FCHeldRecords *)v35 recordWithID:v34];
                  v37 = v36 == 0;

                  if (v37)
                  {
                    [v24 addObject:v34];
                  }
                }
              }

              if ((v22 & 8) != 0)
              {
                v38 = [v29 parentIssueID];
                if (v38)
                {
                  v39 = v118 ? v118->_resultHeldTagRecords : 0;
                  v40 = [(FCHeldRecords *)v39 recordWithID:v38];
                  v41 = v40 == 0;

                  if (v41)
                  {
                    [v115 addObject:v38];
                  }
                }
              }

              ++v28;
            }

            while (v26 != v28);
            v42 = [v25 countByEnumeratingWithState:&v137 objects:v156 count:16];
            v26 = v42;
          }

          while (v42);
        }

        v43 = [(FCFeedRequestOperation *)v118 context];
        v44 = [v43 internalContentContext];

        v45 = [v44 articleRecordSource];
        v46 = [v23 allObjects];
        v47 = [v45 cachedRecordsWithIDs:v46];

        if (v118)
        {
          v48 = v118;
          v49 = v118->_resultHeldArticleRecords;
        }

        else
        {
          v49 = 0;
          v48 = 0;
        }

        v50 = v48 == 0;
        v51 = v49;
        v52 = [FCHeldRecords heldRecordsByMerging:v51 with:v47];
        [(FCFeedRequestOperation *)v118 setResultHeldArticleRecords:v52];

        v53 = [v44 tagRecordSource];
        v54 = [v24 allObjects];
        v55 = [v53 cachedRecordsWithIDs:v54];

        if (v50)
        {
          resultHeldTagRecords = 0;
          v56 = v118;
        }

        else
        {
          v56 = v118;
          resultHeldTagRecords = v118->_resultHeldTagRecords;
        }

        v58 = v56 == 0;
        v59 = resultHeldTagRecords;
        v60 = [FCHeldRecords heldRecordsByMerging:v59 with:v55];
        [(FCFeedRequestOperation *)v118 setResultHeldTagRecords:v60];

        v61 = [v44 issueRecordSource];
        v62 = [v115 allObjects];
        v63 = [v61 cachedRecordsWithIDs:v62];

        if (v58)
        {
          resultHeldIssueRecords = 0;
        }

        else
        {
          resultHeldIssueRecords = v118->_resultHeldIssueRecords;
        }

        v65 = resultHeldIssueRecords;
        v66 = [FCHeldRecords heldRecordsByMerging:v65 with:v63];
        [(FCFeedRequestOperation *)v118 setResultHeldIssueRecords:v66];
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v68 = v67;
    v69 = [v117 copy];
    v133 = 0;
    v134 = &v133;
    v135 = 0x2020000000;
    v136 = 1;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v70 = [(FCFeedRequestOperation *)v118 feedTransformations];
    v71 = [v70 countByEnumeratingWithState:&v129 objects:v155 count:16];
    if (v71)
    {
      v72 = *v130;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v130 != v72)
          {
            objc_enumerationMutation(v70);
          }

          v74 = *(*(&v129 + 1) + 8 * j);
          objc_opt_class();
          if (v74 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v75 = v74;
            v76 = [v75 transformFeedItemsWithResults:v69];
            v128[0] = MEMORY[0x1E69E9820];
            v128[1] = 3221225472;
            v128[2] = __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke;
            v128[3] = &unk_1E7C3C618;
            v128[4] = &v133;
            v77 = [v76 fc_arrayByTransformingWithBlock:v128];

            v69 = v77;
          }

          else
          {
            [v74 transformFeedItems:v69];
            v75 = 0;
            v69 = v76 = v69;
          }
        }

        v71 = [v70 countByEnumeratingWithState:&v129 objects:v155 count:16];
      }

      while (v71);
    }

    if (v134[3] != 1)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v79 = v78;
      v80 = FCOperationLog;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [(FCOperation *)v118 shortOperationDescription];
        v82 = [v117 count];
        v83 = [v69 count];
        v84 = FCFeedFilterOptionsToNSString(v134[3]);
        *buf = 138544386;
        v148 = v81;
        v149 = 2048;
        v150 = v82;
        v151 = 2048;
        *v152 = v83;
        *&v152[8] = 2048;
        *&v152[10] = (fmax(v79 - v68, 0.0) * 1000.0);
        v153 = 2114;
        v154 = v84;
        _os_log_impl(&dword_1B63EF000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ filtered from %lu to %lu feed items, time=%llums, reasons=%{public}@", buf, 0x34u);
      }
    }

    v85 = v69;
    v86 = [MEMORY[0x1E695DF90] dictionary];
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v4 = v85;
    v87 = [v4 countByEnumeratingWithState:&v124 objects:v146 count:16];
    if (v87)
    {
      v88 = *v125;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v125 != v88)
          {
            objc_enumerationMutation(v4);
          }

          v90 = *(*(&v124 + 1) + 8 * k);
          v91 = [v90 feedID];
          v92 = [v86 objectForKeyedSubscript:v91];
          v93 = v92 == 0;

          if (v93)
          {
            v94 = [MEMORY[0x1E695DF70] arrayWithObject:v90];
            v95 = [v90 feedID];
            [v86 setObject:v94 forKeyedSubscript:v95];
          }

          else
          {
            v94 = [v90 feedID];
            v95 = [v86 objectForKeyedSubscript:v94];
            [v95 addObject:v90];
          }
        }

        v87 = [v4 countByEnumeratingWithState:&v124 objects:v146 count:16];
      }

      while (v87);
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v5 = obj;
    v96 = [v5 countByEnumeratingWithState:&v120 objects:v145 count:16];
    if (v96)
    {
      v97 = *v121;
      do
      {
        for (m = 0; m != v96; ++m)
        {
          if (*v121 != v97)
          {
            objc_enumerationMutation(v5);
          }

          v99 = *(*(&v120 + 1) + 8 * m);
          v100 = [v99 feedID];
          v101 = [v86 objectForKeyedSubscript:v100];
          [v99 setFeedItems:v101];
        }

        v96 = [v5 countByEnumeratingWithState:&v120 objects:v145 count:16];
      }

      while (v96);
    }

    _Block_object_dispose(&v133, 8);
    if (v118)
    {
      v102 = v118->_resultFeedResponses;
    }

    else
    {
      v102 = 0;
    }

    v103 = v102;
    v104 = [(NSMutableDictionary *)v103 count];
    v105 = [(FCFeedRequestOperation *)v118 feedRequests];

    LOBYTE(v104) = v104 == [v105 count];
    if ((v104 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"each feed request must have a corresponding response"];
      *buf = 136315906;
      v148 = "[FCFeedRequestOperation operationWillFinishWithError:]";
      v149 = 2080;
      v150 = "FCFeedRequestOperation.m";
      v151 = 1024;
      *v152 = 345;
      *&v152[4] = 2114;
      *&v152[6] = v112;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    [(FCFeedRequestOperation *)&v118->super.super.super.isa _reportProgressWithFeedItems:v4];
  }

  v106 = [(FCFeedRequestOperation *)v118 requestCompletionHandler];

  if (v106)
  {
    v107 = [(FCFeedRequestOperation *)v118 requestCompletionHandler];
    (v107)[2](v107, v5, v4, v114);
  }

  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke_52;
  v119[3] = &unk_1E7C36EC8;
  v119[4] = v118;
  v108 = [MEMORY[0x1E695DF20] fc_dictionary:v119];
  v109 = [(FCFeedRequestOperation *)v118 requestCompletionHandlerWithHeldRecords];

  if (v109)
  {
    v110 = [(FCFeedRequestOperation *)v118 requestCompletionHandlerWithHeldRecords];
    (v110)[2](v110, v5, v4, v108, v114);
  }

  v111 = *MEMORY[0x1E69E9840];
}

- (void)setResultHeldArticleRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 528), a2);
  }
}

- (void)setResultHeldTagRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 536), a2);
  }
}

- (void)setResultHeldIssueRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 544), a2);
  }
}

id __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) |= [v3 filteredReasons];
  if ([v3 isFiltered])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 item];
  }

  return v4;
}

- (void)_reportProgressWithFeedItems:(id *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [a1 progressHandler];
    v6 = _Block_copy(v5);

    if (v6)
    {
      v7 = _Block_copy(v6);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__FCFeedRequestOperation__reportProgressWithFeedItems___block_invoke_2;
      v15[3] = &unk_1E7C42320;
      v15[4] = a1;
      v8 = [v3 fc_arrayOfObjectsFailingTest:v15];
      if ([v8 count])
      {
        v7[2](v7, v8);
        [a1[64] addObjectsFromArray:v8];
        v9 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [a1 operationID];
          v12 = [v4 fc_millisecondTimeIntervalUntilNow];
          v13 = [v8 count];
          *buf = 138543874;
          v17 = v11;
          v18 = 2048;
          v19 = v12;
          v20 = 2048;
          v21 = v13;
          _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to report %lu feed items via progress handler", buf, 0x20u);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __55__FCFeedRequestOperation_operationWillFinishWithError___block_invoke_52(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) options] & 2) != 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 528);
    }

    else
    {
      v4 = 0;
    }

    [v9 setObject:v4 forKeyedSubscript:&unk_1F2E70668];
  }

  if (([*(a1 + 32) options] & 4) != 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 536);
    }

    else
    {
      v6 = 0;
    }

    [v9 setObject:v6 forKeyedSubscript:&unk_1F2E70680];
  }

  if (([*(a1 + 32) options] & 8) != 0)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 544);
    }

    else
    {
      v8 = 0;
    }

    [v9 setObject:v8 forKeyedSubscript:&unk_1F2E70698];
  }
}

- (unint64_t)maxRetries
{
  v2 = [(FCFeedRequestOperation *)self configuration];
  v3 = [v2 maxRetriesForDroppedFeeds];

  return v3;
}

- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = FCFeedRequestOperation;
  if ([(FCOperation *)&v13 canRetryWithError:v6 retryAfter:a4])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [v6 domain];
    v7 = [v8 isEqualToString:@"FCErrorDomain"];
    if (v7)
    {
      v9 = [v6 code];

      if (v9 != 2)
      {
        LOBYTE(v7) = 0;
        goto LABEL_8;
      }

      v10 = [FCOperationDelayedRetrySignal alloc];
      v8 = [(FCFeedRequestOperation *)self configuration];
      [v8 delayBeforeRetryingDroppedFeeds];
      *a4 = [(FCOperationDelayedRetrySignal *)v10 initWithDelay:exp2(v11 * [(FCOperation *)self retryCount])];
    }
  }

LABEL_8:

  return v7;
}

- (void)resetForRetry
{
  if (self)
  {
    [(NSMutableDictionary *)self->_resultFeedResponses removeAllObjects];
    objc_storeStrong(&self->_resultHeldTagRecords, 0);
    objc_storeStrong(&self->_resultHeldArticleRecords, 0);
    objc_storeStrong(&self->_resultHeldIssueRecords, 0);
    self->_queryBudget = 10;
  }

  else
  {

    [0 removeAllObjects];
  }
}

- (NSArray)networkEvents
{
  if (self)
  {
    self = self->_mutableNetworkEvents;
  }

  return self;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ has no prewarm request key", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 successfulRequests];
  if ([v4 count])
  {
  }

  else
  {
    v5 = [v3 failedRequests];
    v6 = [v5 count];

    if (!v6)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2;
      v43[3] = &unk_1E7C37BC0;
      v35 = *(a1 + 40);
      v43[4] = *(a1 + 32);
      v44 = v35;
      __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2(v43);
      v18 = v44;
      goto LABEL_21;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[59];
  }

  v8 = v7;
  v9 = [v3 networkEvents];
  [v8 fc_safelyAddObjectsFromArray:v9];

  v10 = *(a1 + 32);
  if (v10)
  {
    v10 = v10[60];
  }

  v11 = v10;
  v12 = [v3 feedIDs];
  v13 = 2 * [v11 fc_countOfObjectsIntersectingSet:v12];
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 480);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 count];

  if (v13 < v16)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70;
    v41[3] = &unk_1E7C37BC0;
    v17 = *(a1 + 40);
    v41[4] = *(a1 + 32);
    v42 = v17;
    __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70(v41);
    v18 = v42;
LABEL_21:

    goto LABEL_22;
  }

  v19 = [v3 successfulRequests];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_71;
  v40[3] = &unk_1E7C39890;
  v40[4] = *(a1 + 32);
  v20 = [v19 fc_countOfObjectsPassingTest:v40];

  v21 = [v3 failedRequests];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2_73;
  v39[3] = &unk_1E7C39890;
  v39[4] = *(a1 + 32);
  v22 = [v21 fc_countOfObjectsPassingTest:v39];

  if (v20 >= 10 * v22)
  {
    v27 = [v3 successfulRequests];
    v28 = [v27 fc_dictionaryWithKeyBlock:&__block_literal_global_76];

    v29 = [*(a1 + 32) feedRequests];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_4;
    v37[3] = &unk_1E7C421B8;
    v25 = v28;
    v38 = v25;
    v30 = [v29 fc_arrayByTransformingWithBlock:v37];
    [*(a1 + 32) setFeedRequests:v30];

    [*(a1 + 32) setEdgeCacheHint:0];
    v31 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = v31;
      v34 = [v32 shortOperationDescription];
      *buf = 138543362;
      v46 = v34;
      _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ prewarming finished with enough successful feeds", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v23 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = v23;
    v26 = [v24 shortOperationDescription];
    *buf = 138543362;
    v46 = v26;
    _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ prewarming finished without enough successful feeds", buf, 0xCu);

LABEL_18:
  }

  (*(*(a1 + 40) + 16))();
LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ found no matching prewarm request", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_70(uint64_t a1)
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
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ had insufficient overlap with prewarm request", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[60];
  }

  v4 = v3;
  v5 = [a2 feedID];
  v6 = [v4 containsObject:v5];

  return v6;
}

uint64_t __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_2_73(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[60];
  }

  v4 = v3;
  v5 = [a2 feedID];
  v6 = [v4 containsObject:v5];

  return v6;
}

id __65__FCFeedRequestOperation__finishPrewarmingWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 feedID];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = v6;
    v8 = [v3 copy];
    v9 = [v3 feedRange];
    v10 = [v7 feedRange];

    v11 = [v9 feedRangeByIntersectingWithRange:v10];
    [v8 setFeedRange:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 feedID];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 520);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 496);
    }

    else
    {
      v9 = 0;
    }

    v7 = [v9 objectForKey:v3];
  }

  return v7;
}

- (FCFeedResponse)_failureResponseForRequest:(void *)a3 error:
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v6 = objc_alloc_init(FCFeedResponse);
    v7 = [v5 feedID];

    [(FCFeedResponse *)v6 setFeedID:v7];
    [(FCFeedResponse *)v6 setError:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_additionalHTTPHeadersForOrderFeedRequest
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 472) lastObject];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 HTTPResponseHeaders];
    v4 = [v3 objectForKeyedSubscript:@"X-Apple-News-Retry"];

    if (v4)
    {
      v10 = @"X-Apple-News-Retry";
      v11[0] = v4;
      v5 = MEMORY[0x1E695DF20];
      v6 = v4;
      v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v99 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[59];
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v9 = [(FCCKBatchedOrderFeedQueryOperation *)WeakRetained networkEvents];
  [v7 addObjectsFromArray:v9];

  if (!v99)
  {
    if (([*(a1 + 32) options] & 2) != 0)
    {
      v11 = [*(a1 + 40) articleRecordSource];
      if (v5)
      {
        v12 = v5[1];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v11 saveArticleRecords:v13];

      v15 = *(a1 + 32);
      if (v15)
      {
        v15 = v15[66];
      }

      v16 = v15;
      v17 = [FCHeldRecords heldRecordsByMerging:v16 with:v14];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldArticleRecords:v17];
    }

    if (([*(a1 + 32) options] & 4) != 0)
    {
      v18 = [*(a1 + 40) tagRecordSource];
      if (v5)
      {
        v19 = v5[3];
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [v18 saveTagRecords:v20];

      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = v22[67];
      }

      v23 = v22;
      v24 = [FCHeldRecords heldRecordsByMerging:v23 with:v21];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldTagRecords:v24];
    }

    if (([*(a1 + 32) options] & 8) != 0)
    {
      v25 = [*(a1 + 40) issueRecordSource];
      if (v5)
      {
        v26 = v5[4];
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v28 = [v25 saveRecords:v27];

      v29 = *(a1 + 32);
      if (v29)
      {
        v29 = v29[68];
      }

      v30 = v29;
      v31 = [FCHeldRecords heldRecordsByMerging:v30 with:v28];
      [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldIssueRecords:v31];
    }

    v98 = [MEMORY[0x1E695DF00] date];
    v101 = [MEMORY[0x1E695DF70] array];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    if (v5)
    {
      v32 = v5[2];
    }

    else
    {
      v32 = 0;
    }

    v97 = v5;
    obj = v32;
    v103 = [obj countByEnumeratingWithState:&v113 objects:v132 count:16];
    v33 = 0;
    if (v103)
    {
      v102 = *v114;
      do
      {
        v34 = 0;
        do
        {
          if (*v114 != v102)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v113 + 1) + 8 * v34);
          v36 = *(a1 + 48);
          if (v35)
          {
            v37 = *(v35 + 16);
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          v39 = [v36 objectForKey:v38];

          v40 = [v39 feedID];
          if (v35)
          {
            v41 = *(v35 + 24);
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_3;
          v109[3] = &unk_1E7C42208;
          v43 = *(a1 + 56);
          v44 = *(a1 + 32);
          v110 = v43;
          v111 = v44;
          v45 = v40;
          v112 = v45;
          v46 = [v42 fc_arrayByTransformingWithBlock:v109];

          if (!v35 || *(v35 + 10) != 1 || [v46 count])
          {
            v104 = v33 + 1;
            v47 = [*(a1 + 32) feedDatabase];
            v48 = [v39 feedID];
            v49 = *(a1 + 64);
            v50 = [v39 feedID];
            v51 = [v49 objectForKey:v50];
            v52 = *(a1 + 72);
            if (!v35)
            {
              LOBYTE(v96) = 0;
              [v47 saveFeedItems:v46 forFeedID:v48 insertionToken:v51 requestDate:v52 reachedToOrder:0 extent:0 reachedEnd:v96];

              v61 = [v39 feedRange];
              v57 = FCFeedItemsCoveredByRange(v46, v61);

              [v101 addObjectsFromArray:v57];
              v33 = v104;
              goto LABEL_43;
            }

            LOBYTE(v96) = *(v35 + 8);
            [v47 saveFeedItems:v46 forFeedID:v48 insertionToken:v51 requestDate:v52 reachedToOrder:*(v35 + 9) extent:*(v35 + 32) reachedEnd:v96];

            v53 = [v39 feedRange];
            v54 = FCFeedItemsCoveredByRange(v46, v53);

            [v101 addObjectsFromArray:v54];
            v33 = v104;
          }

          if (*(v35 + 10) != 1)
          {
            goto LABEL_44;
          }

          v55 = *(a1 + 32);
          v56 = [MEMORY[0x1E696ABC0] fc_feedDroppedError];
          v57 = [(FCFeedRequestOperation *)v55 _failureResponseForRequest:v39 error:v56];

          v58 = *(a1 + 32);
          if (v58)
          {
            v58 = v58[65];
          }

          v59 = v58;
          v60 = [v39 feedID];
          [v59 setObject:v57 forKey:v60];

LABEL_43:
LABEL_44:

          ++v34;
        }

        while (v103 != v34);
        v62 = [obj countByEnumeratingWithState:&v113 objects:v132 count:16];
        v103 = v62;
      }

      while (v62);
    }

    v63 = FCFeedDatabaseLog;
    v5 = v97;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v64 = a1;
      v65 = *(a1 + 32);
      v66 = v63;
      v67 = [v65 operationID];
      v68 = [v98 fc_millisecondTimeIntervalUntilNow];
      v69 = v33;
      if (v97)
      {
        v70 = v97[1];
      }

      else
      {
        v70 = 0;
      }

      v71 = v70;
      v72 = [v71 count];
      *buf = 138544130;
      v125 = v67;
      v126 = 2048;
      v127 = v68;
      v128 = 2048;
      v129 = v69;
      v130 = 2048;
      v131 = v72;
      _os_log_impl(&dword_1B63EF000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ took %llums to save %lu feeds and %lu feed items in the database", buf, 0x2Au);

      a1 = v64;
    }

    [(FCFeedRequestOperation *)*(a1 + 32) _reportProgressWithFeedItems:v101];
    v73 = [(FCFeedRequestOperation *)*(a1 + 32) _countOfDroppedFeeds];
    v74 = v73;
    v75 = *(a1 + 32);
    if (v75)
    {
      if (([*(a1 + 32) options] & 0x10) != 0)
      {
        v79 = *(a1 + 32);
      }

      else
      {
        v76 = [v75 retryCount];
        if (v76 != [v75 maxRetries] || (v77 = 0.5, objc_msgSend(v75[60], "count") <= 2))
        {
          v77 = 0.1;
        }

        v78 = [v75[60] count];
        v79 = *(a1 + 32);
        if (v74 > vcvtmd_u64_f64(v77 * v78))
        {
          v80 = *(a1 + 80);
          v81 = MEMORY[0x1E696ABC0];
          if (v79)
          {
            v79 = v79[60];
          }

          goto LABEL_62;
        }
      }

      if (v79)
      {
        v79 = v79[65];
      }
    }

    else
    {
      v79 = 0;
      if (v73)
      {
        v80 = *(a1 + 80);
        v81 = MEMORY[0x1E696ABC0];
        v5 = v97;
LABEL_62:
        v82 = v79;
        v83 = [v81 fc_requestDroppedErrorForDroppedFeeds:v74 totalFeeds:{objc_msgSend(v82, "count")}];
        (*(v80 + 16))(v80, v83);

LABEL_80:
        v10 = 0;
        goto LABEL_81;
      }

      v5 = v97;
    }

    v84 = v79;
    v85 = [v84 count];
    v86 = [*(a1 + 32) feedRequests];

    v87 = [v86 count];
    if (v85 == v87)
    {
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      if (([*(a1 + 32) options] & 0x10) != 0)
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v88 = *(a1 + 32);
        if (v88)
        {
          v89 = *(v88 + 496);
        }

        else
        {
          v89 = 0;
        }

        v90 = [v89 allValues];
        v91 = [v90 countByEnumeratingWithState:&v105 objects:v123 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v106;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              if (*v106 != v93)
              {
                objc_enumerationMutation(v90);
              }

              [*(*(&v105 + 1) + 8 * i) setCachedOnly:1];
            }

            v92 = [v90 countByEnumeratingWithState:&v105 objects:v123 count:16];
          }

          while (v92);
        }
      }

      [(FCFeedRequestOperation *)*(a1 + 32) _gatherAllOrderFeedResponsesWithCompletionHandler:?];
    }

    goto LABEL_80;
  }

  v117 = MEMORY[0x1E69E9820];
  v118 = 3221225472;
  v119 = __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_2;
  v120 = &unk_1E7C36C58;
  v121 = *(a1 + 32);
  v10 = v99;
  v122 = v99;
  [v121 finishedPerformingOperationWithError:v122];

LABEL_81:
  v95 = *MEMORY[0x1E69E9840];
}

id __76__FCFeedRequestOperation__gatherAllOrderFeedResponsesWithCompletionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v5 context];
  v8 = [v7 internalContentContext];
  v9 = [v8 articleRecordSource];
  v10 = [v3 feedItemFromCKRecord:v6 storefrontID:v4 recordSource:v9];

  [v10 setFeedID:a1[6]];

  return v10;
}

- (uint64_t)_countOfDroppedFeeds
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 520);
    v3 = [v2 allValues];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__FCFeedRequestOperation__countOfDroppedFeeds__block_invoke;
    v5[3] = &unk_1E7C42280;
    v5[4] = v1;
    v1 = [v3 fc_countOfObjectsPassingTest:v5];
  }

  return v1;
}

FCCKOrderFeedRequest *__78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 feedRange];
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = v4;
    v7 = [v6 top];
    v8 = [v7 date];

    v9 = [v6 bottom];

    v10 = [v9 date];

    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [v11 components:62 fromDate:v8];
    [v12 setHour:{objc_msgSend(v12, "hour") + 1}];
    v13 = [v11 dateFromComponents:v12];
    v14 = [v11 components:62 fromDate:v10];
    v15 = [v11 dateFromComponents:v14];
    v16 = [FCFeedRange feedRangeFromDate:v13 toDate:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(FCCKOrderFeedRequest);
  v19 = [v3 feedID];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v18, v19, 8);
  }

  v20 = [v16 top];
  v21 = [v20 order];
  if (v17)
  {
    v17->_maxOrder = v21;
  }

  v22 = [v16 bottom];
  v23 = [v22 order];
  if (v17)
  {
    v17->_minOrder = v23;
  }

  v24 = [v3 maxCount];
  if (v17)
  {
    v25 = 0xFFFFLL;
    if (v24 >= 0xFFFF)
    {
      v26 = 0xFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    if (v24)
    {
      v25 = v26;
    }

    v17->_resultsLimit = v25;
  }

  return v17;
}

void __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[59];
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 54);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v7 addObjectsFromArray:v11];

  if (v5)
  {
    v94 = MEMORY[0x1E69E9820];
    v95 = 3221225472;
    v96 = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_3;
    v97 = &unk_1E7C36C58;
    v98 = *(a1 + 32);
    v99 = v5;
    [v98 finishedPerformingOperationWithError:v99];

    v12 = v5;
    v13 = v84;
    goto LABEL_70;
  }

  v14 = v84;
  if (([*(a1 + 32) options] & 2) != 0)
  {
    v15 = [*(a1 + 40) articleRecordSource];
    if (v84)
    {
      v16 = *(v84 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v15 saveArticleRecords:v17];

    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = v19[66];
    }

    v20 = v19;
    v21 = [FCHeldRecords heldRecordsByMerging:v20 with:v18];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldArticleRecords:v21];

    v14 = v84;
  }

  if (([*(a1 + 32) options] & 4) != 0)
  {
    v22 = [*(a1 + 40) tagRecordSource];
    if (v14)
    {
      v23 = v14[3];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [v22 saveTagRecords:v24];

    v26 = *(a1 + 32);
    if (v26)
    {
      v26 = v26[67];
    }

    v27 = v26;
    v28 = [FCHeldRecords heldRecordsByMerging:v27 with:v25];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldTagRecords:v28];

    v14 = v84;
  }

  if (([*(a1 + 32) options] & 8) != 0)
  {
    v29 = [*(a1 + 40) issueRecordSource];
    if (v14)
    {
      v30 = v14[4];
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v32 = [v29 saveRecords:v31];

    v33 = *(a1 + 32);
    if (v33)
    {
      v33 = v33[68];
    }

    v34 = v33;
    v35 = [FCHeldRecords heldRecordsByMerging:v34 with:v32];
    [(FCFeedRequestOperation *)*(a1 + 32) setResultHeldIssueRecords:v35];

    v14 = v84;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  if (v14)
  {
    v36 = v14[2];
  }

  else
  {
    v36 = 0;
  }

  obj = v36;
  v37 = [obj countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v37)
  {
    v38 = v37;
    v86 = *v91;
    do
    {
      v39 = 0;
      do
      {
        if (*v91 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v90 + 1) + 8 * v39);
        v41 = *(a1 + 32);
        if (v41)
        {
          v41 = v41[61];
        }

        v42 = v41;
        if (v40)
        {
          v43 = *(v40 + 16);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v45 = [v42 objectForKey:v44];

        v46 = [v45 feedRange];
        if (!v40)
        {
          v61 = 0;
          goto LABEL_49;
        }

        if (*(v40 + 10) != 1)
        {
          goto LABEL_48;
        }

        v47 = *(a1 + 32);
        v48 = v40;
        v49 = v48;
        if (v47 && (v50 = v48[3], v51 = [v50 count], v50, v51))
        {
          v52 = [MEMORY[0x1E696ABC0] fc_requestDroppedErrorForDroppedFeeds:1 totalFeeds:{objc_msgSend(v47[60], "count")}];
          v53 = [v47 retryCount];
          if (v53 >= [v47 maxRetries])
          {

LABEL_48:
            v61 = *(v40 + 24);
LABEL_49:
            v62 = v61;
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_4;
            v87[3] = &unk_1E7C39840;
            v63 = *(a1 + 48);
            v64 = *(a1 + 32);
            v88 = v63;
            v89 = v64;
            v65 = [v62 fc_arrayByTransformingWithBlock:v87];

            v66 = FCFeedItemsCoveredByRange(v65, v46);
            v67 = objc_alloc_init(FCFeedResponse);
            v68 = [v45 feedID];
            [(FCFeedResponse *)v67 setFeedID:v68];

            [(FCFeedResponse *)v67 setFeedItems:v66];
            if (v40)
            {
              if (*(v40 + 9))
              {
                v69 = 1;
              }

              else
              {
                v69 = *(v40 + 8);
              }
            }

            else
            {
              v69 = 0;
            }

            [(FCFeedResponse *)v67 setExhaustedRequestRange:v69 & 1];
            v70 = *(a1 + 32);
            if (v70)
            {
              v70 = v70[65];
            }

            v71 = v70;
            v72 = [v45 feedID];
            [v71 setObject:v67 forKey:v72];

            v57 = v88;
            goto LABEL_56;
          }

          v100 = 0;
          v54 = [v47 canRetryWithError:v52 retryAfter:&v100];

          if ((v54 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        v55 = *(a1 + 32);
        v56 = [MEMORY[0x1E696ABC0] fc_feedDroppedError];
        v57 = [(FCFeedRequestOperation *)v55 _failureResponseForRequest:v45 error:v56];

        v58 = *(a1 + 32);
        if (v58)
        {
          v58 = v58[65];
        }

        v59 = v58;
        v60 = [v45 feedID];
        [v59 setObject:v57 forKey:v60];

LABEL_56:
        ++v39;
      }

      while (v38 != v39);
      v73 = [obj countByEnumeratingWithState:&v90 objects:v101 count:16];
      v38 = v73;
    }

    while (v73);
  }

  v74 = [(FCFeedRequestOperation *)*(a1 + 32) _countOfDroppedFeeds];
  v75 = *(a1 + 32);
  if (v75)
  {
    v76 = *(v75 + 480);
  }

  else
  {
    v76 = 0;
  }

  v77 = [v76 count];
  v78 = *(a1 + 56);
  if (v74 >= v77)
  {
    v79 = MEMORY[0x1E696ABC0];
    v80 = *(a1 + 32);
    if (v80)
    {
      v80 = v80[60];
    }

    v81 = v80;
    v82 = [v79 fc_requestDroppedErrorForDroppedFeeds:1 totalFeeds:{objc_msgSend(v81, "count")}];
    (*(v78 + 16))(v78, v82);
  }

  else
  {
    (*(v78 + 16))(*(a1 + 56), 0);
  }

  v12 = 0;
  v13 = v84;
LABEL_70:

  v83 = *MEMORY[0x1E69E9840];
}

id __78__FCFeedRequestOperation__gatherEdgeCachedFeedResponsesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B6E30];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 context];
  v7 = [v6 internalContentContext];
  v8 = [v7 articleRecordSource];
  v9 = [v2 feedItemFromCKRecord:v5 storefrontID:v3 recordSource:v8];

  return v9;
}

BOOL __46__FCFeedRequestOperation__countOfDroppedFeeds__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[60];
  }

  v5 = v4;
  v6 = [v3 feedID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v3 error];
    if (v8)
    {
      v9 = [v3 error];
      v10 = [v9 domain];
      if ([v10 isEqualToString:@"FCErrorDomain"])
      {
        v11 = [v3 error];
        v12 = [v11 code] == 7;
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
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL __45__FCFeedRequestOperation__countOfFailedFeeds__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[60];
  }

  v5 = v4;
  v6 = [v3 feedID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v3 error];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __55__FCFeedRequestOperation__reportProgressWithFeedItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 512);
  }

  else
  {
    v3 = 0;
  }

  return [v3 containsObject:a2];
}

+ (void)streamFeedItemsWithContext:(id)a3 feedRequests:(id)a4 feedItemHandler:(id)a5 networkEventHandler:(id)a6 completionHandler:(id)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v49 = a7;
  v14 = a4;
  v15 = [v14 fc_subarrayWithMaxCount:400];
  v16 = [v14 fc_subarrayFromCount:400];

  v17 = [v16 count];
  v18 = FCOperationLog;
  v19 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v18;
    *buf = 134218240;
    v63 = [v15 count];
    v64 = 2048;
    v65 = [v16 count];
    v21 = "FCFeedRequestOperation will stream %lu feed requests, leaving %lu for a subsequent pass due to request limit";
    v22 = v20;
    v23 = 22;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v18;
    *buf = 134217984;
    v63 = [v15 count];
    v21 = "FCFeedRequestOperation will stream %lu feed requests";
    v22 = v20;
    v23 = 12;
  }

  _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

LABEL_7:
  v47 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_263];
  v24 = MEMORY[0x1E69B6E30];
  v25 = [v11 internalContentContext];
  [v25 articleRecordSource];
  v26 = v48 = v15;
  v44 = [v24 keysForFeedItemAndArticleRecordWithRecordSource:v26];

  v27 = FCCurrentQoS();
  v28 = 100;
  v29 = 200;
  if (v27 == 33)
  {
    v29 = 300;
  }

  if (v27 == 25)
  {
    v29 = 300;
  }

  if (v27 != 9)
  {
    v28 = v29;
  }

  v43 = v28;
  v30 = [v11 contentStoreFrontID];
  v31 = [v11 internalContentContext];
  v32 = [v31 articleRecordSource];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7C422A8;
  v59 = v30;
  v60 = v32;
  v33 = v12;
  v61 = v33;
  v46 = v32;
  v45 = v30;
  v34 = _Block_copy(aBlock);
  v35 = [v11 internalContentContext];
  v36 = [v35 contentDatabase];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3;
  v51[3] = &unk_1E7C422F8;
  v52 = v16;
  v53 = v11;
  v54 = v49;
  v55 = v33;
  v56 = v13;
  v57 = a1;
  v37 = v13;
  v38 = v33;
  v39 = v11;
  v40 = v16;
  v41 = v49;
  [FCCKOrderFeedQueryOperation streamRecordsWithDatabase:v36 feedRequests:v47 desiredKeys:v44 resultsLimit:4000 queryPriority:v43 articleLinkKeys:MEMORY[0x1E695E0F0] recordHandler:v34 networkEventHandler:v37 completionHandler:v51];

  v42 = *MEMORY[0x1E69E9840];
}

void *__131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 feedID];
  v4 = [v2 feedRange];
  v5 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v3 feedRange:v4];

  v6 = [v2 maxCount];
  if (v5)
  {
    v7 = 0xFFFFLL;
    if (v6 >= 0xFFFF)
    {
      v8 = 0xFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v6)
    {
      v7 = v8;
    }

    v5[4] = v7;
  }

  return v5;
}

void __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = MEMORY[0x1E69B6E30];
  v4 = [v7 recordType];
  LODWORD(v3) = [v3 canCreateFromCKRecordType:v4];

  v5 = v7;
  if (v3)
  {
    v6 = [MEMORY[0x1E69B6E30] feedItemFromCKRecord:v7 storefrontID:a1[4] recordSource:a1[5]];
    if (v6)
    {
      (*(a1[6] + 16))();
    }

    v5 = v7;
  }
}

void __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = *(a1 + 48);
    v12 = v3;
    v13[2](v13, v12);

    v4 = v13;
  }

  else
  {
    if (![*(a1 + 32) count])
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_6;
    }

    v6 = MEMORY[0x1E69E9820];
    v5 = *(a1 + 72);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    [v5 streamFeedItemsWithContext:v7 feedRequests:v8 feedItemHandler:v9 networkEventHandler:v10 completionHandler:{v11, v6, 3221225472, __131__FCFeedRequestOperation_Streaming__streamFeedItemsWithContext_feedRequests_feedItemHandler_networkEventHandler_completionHandler___block_invoke_5, &unk_1E7C422D0}];

    v4 = v7;
  }

LABEL_6:
}

@end