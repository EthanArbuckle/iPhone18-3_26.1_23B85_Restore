@interface FCFeedPrewarmOperation
- (FCFeedPrewarmOperation)initWithPrewarmRequest:(id)a3 contentContext:(id)a4;
- (id)_commitQueryResult:(id)a3;
- (void)commitResultsOnceWithCompletionHandler:(id)a3;
- (void)performOperation;
@end

@implementation FCFeedPrewarmOperation

- (FCFeedPrewarmOperation)initWithPrewarmRequest:(id)a3 contentContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = FCFeedPrewarmOperation;
  v9 = [(FCOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prewarmRequest, a3);
    objc_storeStrong(&v10->_contentContext, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    feedIDsByCKFeedID = v10->_feedIDsByCKFeedID;
    v10->_feedIDsByCKFeedID = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestRangeByFeedID = v10->_requestRangeByFeedID;
    v10->_requestRangeByFeedID = v13;
  }

  return v10;
}

- (void)commitResultsOnceWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(FCOperation *)self startIfNeeded];
  v5 = [(FCFeedPrewarmOperation *)self lazyResultPromise];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"lazy result promise should be created as soon as the operation starts"];
    *buf = 136315906;
    v21 = "[FCFeedPrewarmOperation commitResultsOnceWithCompletionHandler:]";
    v22 = 2080;
    v23 = "FCFeedPrewarmOperation.m";
    v24 = 1024;
    v25 = 65;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E7C396C0;
  v19[4] = self;
  v6 = [MEMORY[0x1E69B68F8] firstly:v19];
  v7 = zalgo();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_1E7C396E8;
  v8 = v4;
  v18 = v8;
  v9 = [v6 thenOn:v7 then:v17];
  v10 = zalgo();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_1E7C39710;
  v15[4] = self;
  v16 = v8;
  v11 = v8;
  v12 = [v9 errorOn:v10 error:v15];

  v13 = *MEMORY[0x1E69E9840];
}

id __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) lazyResultPromise];
  v2 = [v1 value];

  return v2;
}

void __65__FCFeedPrewarmOperation_commitResultsOnceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [FCFeedPrewarmResult alloc];
  v6 = [*(a1 + 32) prewarmRequest];
  v4 = [v6 feedRequests];
  v5 = [(FCFeedPrewarmResult *)v3 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:v4 networkEvents:MEMORY[0x1E695E0F0]];
  (*(v2 + 16))(v2, v5);
}

- (void)performOperation
{
  v3 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v4 = [v3 feedRequests];
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_16];

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(FCFeedPrewarmOperation *)self contentContext];
  v8 = [v7 internalContentContext];
  v9 = [v8 feedDatabase];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_2;
  v56[3] = &unk_1E7C39758;
  v56[4] = self;
  v10 = v6;
  v57 = v10;
  [v9 enumerateRangesMissingFromLookups:v5 visitor:v56];

  if ([v10 count])
  {
    v49 = v5;
    v11 = objc_alloc_init(FCCKBatchedOrderFeedQueryOperation);
    v12 = [(FCFeedPrewarmOperation *)self contentContext];
    v13 = [v12 internalContentContext];
    v14 = [v13 contentDatabase];
    [(FCCKBatchedOrderFeedQueryOperation *)v11 setDatabase:v14];

    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v15, v10, 376);
      v11->_resultsLimit = 4000;
    }

    v16 = MEMORY[0x1E69B6E30];
    v17 = [(FCFeedPrewarmOperation *)self contentContext];
    v18 = [v17 internalContentContext];
    v19 = [v18 articleRecordSource];
    v20 = [v16 keysForFeedItemAndArticleRecordWithRecordSource:v19];

    v21 = [MEMORY[0x1E695DF70] array];
    v22 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    LOBYTE(v18) = [v22 options];

    if ((v18 & 2) != 0)
    {
      v23 = [(FCFeedPrewarmOperation *)self contentContext];
      v24 = [v23 internalContentContext];
      v25 = [v24 articleRecordSource];
      v26 = [v25 desiredKeys];
      v27 = [v20 arrayByAddingObjectsFromArray:v26];

      v20 = v27;
    }

    v28 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    v29 = [v28 options];

    if ((v29 & 4) != 0)
    {
      v30 = [(FCFeedPrewarmOperation *)self contentContext];
      v31 = [v30 internalContentContext];
      v32 = [v31 tagRecordSource];
      v33 = [v32 desiredKeys];
      v34 = [v20 arrayByAddingObjectsFromArray:v33];

      [v21 addObject:@"sourceChannelTagID"];
      v20 = v34;
    }

    v35 = [(FCFeedPrewarmOperation *)self prewarmRequest];
    v36 = [v35 options];

    if ((v36 & 8) != 0)
    {
      v38 = [(FCFeedPrewarmOperation *)self contentContext];
      v39 = [v38 internalContentContext];
      v40 = [v39 issueRecordSource];
      v41 = [v40 desiredKeys];
      v42 = [v20 arrayByAddingObjectsFromArray:v41];

      [v21 addObject:@"parentIssueID"];
      v20 = v42;
    }

    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v37, v20, 384);
      objc_setProperty_nonatomic_copy(v11, v43, v21, 408);
    }

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_5;
    newValue[3] = &unk_1E7C39780;
    newValue[4] = self;
    if (v11)
    {
      objc_setProperty_nonatomic_copy(v11, v37, newValue, 432);
      queryCompletionPromise = v11->_queryCompletionPromise;
    }

    else
    {
      queryCompletionPromise = 0;
    }

    v45 = queryCompletionPromise;
    v46 = objc_alloc(MEMORY[0x1E69B68D8]);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_6;
    v51[3] = &unk_1E7C397D0;
    v52 = v45;
    v53 = self;
    v47 = v45;
    v48 = [v46 initWithConstructor:v51];
    [(FCFeedPrewarmOperation *)self setLazyResultPromise:v48];

    [(FCOperation *)self associateChildOperation:v11];
    [(FCOperation *)v11 start];

    v5 = v50;
  }

  else
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_3;
    v55[3] = &unk_1E7C36EA0;
    v55[4] = self;
    __42__FCFeedPrewarmOperation_performOperation__block_invoke_3(v55);
  }
}

FCFeedDatabaseLookup *__42__FCFeedPrewarmOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(FCFeedDatabaseLookup);
  v4 = [v2 feedID];
  [(FCFeedDatabaseLookup *)v3 setFeedID:v4];

  v5 = [v2 feedRange];

  [(FCFeedDatabaseLookup *)v3 setFeedRange:v5];

  return v3;
}

void __42__FCFeedPrewarmOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 firstObject];
  v8 = [v7 top];
  v9 = [v5 lastObject];

  v10 = [v9 bottom];
  v16 = [FCFeedRange feedRangeWithTop:v8 bottom:v10];

  v11 = [FCCKOrderFeedUtilities orderFeedRequestForFeedID:v6 feedRange:v16];
  v12 = [*(a1 + 32) feedIDsByCKFeedID];
  if (v11)
  {
    v13 = v11[1];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setObject:v6 forKey:v14];

  v15 = [*(a1 + 32) requestRangeByFeedID];
  [v15 setObject:v16 forKey:v6];

  [*(a1 + 40) addObject:v11];
}

void __42__FCFeedPrewarmOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_17];
  [*(a1 + 32) setLazyResultPromise:v2];
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_4()
{
  v0 = objc_alloc(MEMORY[0x1E69B68F8]);
  v1 = [FCFeedPrewarmResult alloc];
  v2 = [(FCFeedPrewarmResult *)v1 initWithSuccessfulRequests:MEMORY[0x1E695E0F0] failedRequests:MEMORY[0x1E695E0F0] networkEvents:MEMORY[0x1E695E0F0]];
  v3 = [v0 initWithValue:v2];

  return v3;
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69B68F8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_7;
  v8[3] = &unk_1E7C396C0;
  v9 = *(a1 + 32);
  v3 = [v2 firstly:v8];
  v4 = zalgo();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FCFeedPrewarmOperation_performOperation__block_invoke_8;
  v7[3] = &unk_1E7C397A8;
  v7[4] = *(a1 + 40);
  v5 = [v3 thenOn:v4 then:v7];

  return v5;
}

id __42__FCFeedPrewarmOperation_performOperation__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) _commitQueryResult:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)_commitQueryResult:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(FCOperation *)self shortOperationDescription];
    *buf = 138543362;
    v95 = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will commit query response to database", buf, 0xCu);
  }

  v81 = [MEMORY[0x1E695DF00] date];
  v8 = [(FCFeedPrewarmOperation *)self feedIDsByCKFeedID];
  v9 = [(FCFeedPrewarmOperation *)self requestRangeByFeedID];
  if (v4)
  {
    v10 = v4[2];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke;
  v92[3] = &unk_1E7C397F8;
  v12 = v8;
  v93 = v12;
  v82 = [v11 fc_dictionaryWithKeyBlock:v92 valueBlock:&__block_literal_global_27_0];

  v13 = [MEMORY[0x1E695DF00] date];
  if (v4)
  {
    v14 = v4[1];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3;
  v90[3] = &unk_1E7C39840;
  v90[4] = self;
  v16 = v12;
  v91 = v16;
  v83 = [v15 fc_arrayByTransformingWithBlock:v90];

  v17 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [(FCOperation *)self shortOperationDescription];
    v20 = [v13 fc_millisecondTimeIntervalUntilNow];
    *buf = 138543618;
    v95 = v19;
    v96 = 2048;
    v97 = v20;
    _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums creating feed items", buf, 0x16u);
  }

  v80 = v13;
  v21 = [MEMORY[0x1E695DF00] date];
  v22 = [(FCFeedPrewarmOperation *)self contentContext];
  v23 = [v22 internalContentContext];
  v24 = [v23 feedDatabase];
  v25 = [v16 allValues];
  [v24 saveFeedItems:v83 feedIDs:v25 extentByFeedID:v82 requestRangeByFeedID:v9];

  v26 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v28 = [(FCOperation *)self shortOperationDescription];
    v29 = [v21 fc_millisecondTimeIntervalUntilNow];
    v30 = [v83 count];
    *buf = 138543874;
    v95 = v28;
    v96 = 2048;
    v97 = v29;
    v98 = 2048;
    v99 = v30;
    _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ spent %llums saving %lu feed items", buf, 0x20u);
  }

  v31 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v32 = [v31 options];

  if ((v32 & 2) != 0)
  {
    v33 = [(FCFeedPrewarmOperation *)self contentContext];
    v34 = [v33 internalContentContext];
    v35 = [v34 articleRecordSource];
    if (v4)
    {
      v36 = v4[1];
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = [v35 saveArticleRecords:v37];
  }

  v39 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v40 = [v39 options];

  if ((v40 & 4) != 0)
  {
    v41 = [(FCFeedPrewarmOperation *)self contentContext];
    v42 = [v41 internalContentContext];
    v43 = [v42 tagRecordSource];
    if (v4)
    {
      v44 = v4[3];
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    v46 = [v43 saveTagRecords:v45];
  }

  v47 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v48 = [v47 options];

  if ((v48 & 8) != 0)
  {
    v49 = [(FCFeedPrewarmOperation *)self contentContext];
    v50 = [v49 internalContentContext];
    v51 = [v50 issueRecordSource];
    if (v4)
    {
      v52 = v4[4];
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    v54 = [v51 saveRecords:v53];
  }

  v55 = MEMORY[0x1E695DFD8];
  v79 = v21;
  if (v4)
  {
    v56 = v4[2];
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_31;
  v88[3] = &unk_1E7C39868;
  v58 = v16;
  v89 = v58;
  v59 = [v57 fc_arrayByTransformingWithBlock:v88];
  v60 = [v55 setWithArray:v59];

  v61 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v62 = [v61 feedRequests];
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2_32;
  v86[3] = &unk_1E7C39890;
  v63 = v60;
  v87 = v63;
  v64 = [v62 fc_arrayOfObjectsPassingTest:v86];

  v65 = [(FCFeedPrewarmOperation *)self prewarmRequest];
  v66 = [v65 feedRequests];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3_34;
  v84[3] = &unk_1E7C39890;
  v67 = v63;
  v85 = v67;
  v68 = [v66 fc_arrayOfObjectsPassingTest:v84];

  v69 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v70 = v69;
    v71 = [(FCOperation *)self shortOperationDescription];
    v72 = [v81 fc_millisecondTimeIntervalUntilNow];
    *buf = 138543618;
    v95 = v71;
    v96 = 2048;
    v97 = v72;
    _os_log_impl(&dword_1B63EF000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ did commit query response to database, total time = %llums", buf, 0x16u);
  }

  v73 = [FCFeedPrewarmResult alloc];
  if (v4)
  {
    v74 = v4[5];
  }

  else
  {
    v74 = 0;
  }

  v75 = v74;
  v76 = [(FCFeedPrewarmResult *)v73 initWithSuccessfulRequests:v64 failedRequests:v68 networkEvents:v75];

  v77 = *MEMORY[0x1E69E9840];

  return v76;
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v2 objectForKeyedSubscript:v4];

  return v5;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
  }

  else
  {
    v2 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 contentContext];
  v7 = [v6 contentStoreFrontID];
  v8 = [*(a1 + 32) contentContext];
  v9 = [v8 internalContentContext];
  v10 = [v9 articleRecordSource];
  v11 = [v3 feedItemFromCKRecord:v5 storefrontID:v7 recordSource:v10];

  v12 = *(a1 + 40);
  v13 = [v11 feedID];
  v14 = [v12 objectForKeyedSubscript:v13];
  [v11 setFeedID:v14];

  return v11;
}

id __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 10))
    {
      v5 = 0;
      goto LABEL_6;
    }

    v6 = *(v3 + 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = v6;
  v5 = [v7 objectForKeyedSubscript:v8];

LABEL_6:

  return v5;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_2_32(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 feedID];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __45__FCFeedPrewarmOperation__commitQueryResult___block_invoke_3_34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 feedID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end