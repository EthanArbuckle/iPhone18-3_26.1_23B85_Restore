@interface FCCKOrderFeedQueryOperation
+ (id)_constructQueryForRequests:(id)a3 resultsLimit:(unint64_t)a4 queryPriority:(unint64_t)a5 articleLinkKeys:(id)a6;
+ (id)_predicateForPerFeedFieldName:(id)a3 key:(id)a4 defaultValue:(id)a5 requests:(id)a6;
+ (id)_requiredKeys;
+ (void)streamRecordsWithDatabase:(void *)a3 feedRequests:(void *)a4 desiredKeys:(uint64_t)a5 resultsLimit:(uint64_t)a6 queryPriority:(void *)a7 articleLinkKeys:(void *)a8 recordHandler:(void *)a9 networkEventHandler:(void *)a10 completionHandler:;
- (BOOL)validateOperation;
- (id)_feedRelativeDictionaryFromResultsArray:(id)a3;
- (id)_responseForRequest:(id)a3 feedItemAndArticleRecords:(id)a4 allFeedItemAndArticleRecords:(id)a5 wasDropped:(id)a6 reachedMinOrder:(id)a7 reachedEnd:(id)a8 nextOrder:(id)a9;
- (void)_processResultsRecord:(id)a3 feedItemAndArticleRecords:(id)a4 tagRecords:(id)a5 issueRecords:(id)a6 requestUUID:(id)a7;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
- (void)setDatabase:(uint64_t)a1;
- (void)setResultError:(uint64_t)a1;
- (void)setResultFeedItemAndArticleRecords:(uint64_t)a1;
- (void)setResultFeedResponses:(uint64_t)a1;
- (void)setResultIssueRecords:(uint64_t)a1;
- (void)setResultTagRecords:(uint64_t)a1;
@end

@implementation FCCKOrderFeedQueryOperation

- (BOOL)validateOperation
{
  v2 = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed query must have a database"];
    v10 = 136315906;
    v11 = "[FCCKOrderFeedQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKOrderFeedQueryOperation.m";
    v14 = 1024;
    v15 = 83;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_14:
    feedRequests = 0;
    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_5:
  feedRequests = v2->_feedRequests;
LABEL_6:
  if (![(NSArray *)feedRequests count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed query must have at least one feed request"];
    v10 = 136315906;
    v11 = "[FCCKOrderFeedQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKOrderFeedQueryOperation.m";
    v14 = 1024;
    v15 = 84;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
    goto LABEL_12;
  }

  v4 = v2->_database;
  if (v4)
  {
    v5 = v4;
    LOBYTE(v2) = [(NSArray *)v2->_feedRequests count]!= 0;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)prepareOperation
{
  v2 = self;
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_feedRequests;
  }

  if ([(FCCKOrderFeedQueryOperation *)self count]>= 0x191 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"exceeded maximum number of feed requests"];
    v15 = 136315906;
    v16 = "[FCCKOrderFeedQueryOperation prepareOperation]";
    v17 = 2080;
    v18 = "FCCKOrderFeedQueryOperation.m";
    v19 = 1024;
    v20 = 92;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);

    if (v2)
    {
      goto LABEL_6;
    }

LABEL_19:
    feedRequests = 0;
    goto LABEL_7;
  }

  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_6:
  feedRequests = v2->_feedRequests;
  if ([(NSArray *)feedRequests count]< 0x191)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v2)
  {
    v4 = v2->_feedRequests;
  }

  else
  {
    v4 = 0;
  }

  v6 = [(NSArray *)v4 fc_subarrayWithMaxCount:400];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 376);
  }

  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
  {
    v13 = v7;
    v14 = [(FCOperation *)v2 shortOperationDescription];
    v15 = 138543362;
    v16 = v14;
    _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "%{public}@ dropping feeds because the limit was exeeded", &v15, 0xCu);

    if (v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:
    if (v2)
    {
LABEL_14:
      v8 = v2->_feedRequests;
      goto LABEL_15;
    }
  }

  v8 = 0;
LABEL_15:
  v10 = [(NSArray *)v8 sortedArrayUsingComparator:&__block_literal_global_68];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v9, v10, 376);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __47__FCCKOrderFeedQueryOperation_prepareOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  v6 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v4[1];
LABEL_4:
  v8 = v6;
  v9 = [v8 caseInsensitiveCompare:v7];

  return v9;
}

- (void)performOperation
{
  v2 = self;
  v59 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_feedRequests;
  }

  v3 = [(FCCKOrderFeedQueryOperation *)self count];
  v4 = FCOperationLog;
  v5 = v4;
  if (v3 > 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v37 = [(FCOperation *)v2 shortOperationDescription];
      v38 = v37;
      if (v2)
      {
        feedRequests = v2->_feedRequests;
      }

      else
      {
        feedRequests = 0;
      }

      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = feedRequests;
      _os_log_debug_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ started with feed requests: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FCOperation *)v2 shortOperationDescription];
    v7 = v6;
    if (v2)
    {
      v8 = v2->_feedRequests;
    }

    else
    {
      v8 = 0;
    }

    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ started with feed requests: %@", buf, 0x16u);
  }

  v9 = objc_opt_class();
  if (v2)
  {
    v10 = v2->_feedRequests;
    resultsLimit = v2->_resultsLimit;
    queryPriority = v2->_queryPriority;
    articleLinkKeys = v2->_articleLinkKeys;
  }

  else
  {
    queryPriority = 0;
    v10 = 0;
    resultsLimit = 0;
    articleLinkKeys = 0;
  }

  v14 = articleLinkKeys;
  v15 = [v9 _constructQueryForRequests:v10 resultsLimit:resultsLimit queryPriority:queryPriority articleLinkKeys:v14];

  if (v2)
  {
    v16 = v2->_feedRequests;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSArray *)v16 count];
  v18 = FCOperationLog;
  v19 = v18;
  if (v17 > 2)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v40 = [(FCOperation *)v2 shortOperationDescription];
      v41 = v40;
      if (v2)
      {
        v42 = v2->_resultsLimit;
      }

      else
      {
        v42 = 0;
      }

      *buf = 138543874;
      *&buf[4] = v40;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      *&buf[22] = 2112;
      v56 = v15;
      _os_log_debug_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ issuing query with results limit %lu: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(FCOperation *)v2 shortOperationDescription];
    v21 = v20;
    if (v2)
    {
      v22 = v2->_resultsLimit;
    }

    else
    {
      v22 = 0;
    }

    *buf = 138543874;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v56 = v15;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ issuing query with results limit %lu: %@", buf, 0x20u);
  }

  v23 = objc_alloc_init(FCCKContentQueryOperation);
  v24 = v23;
  if (v2)
  {
    [(FCCKContentQueryOperation *)v23 setDatabase:?];
    [(FCCKContentQueryOperation *)v24 setQuery:v15];
    v26 = v24 == 0;
    if (v24)
    {
      *(v24 + 400) = v2->_resultsLimit;
      *(v24 + 372) = 10;
      objc_setProperty_nonatomic_copy(v24, v25, v2->_additionalRequestHTTPHeaders, 440);
      objc_setProperty_nonatomic_copy(v24, v27, v2->_edgeCacheHint, 448);
      *(v24 + 464) = v2->_queryPriority;
    }

    desiredKeys = v2->_desiredKeys;
  }

  else
  {
    [(FCCKContentQueryOperation *)v23 setDatabase:?];
    [(FCCKContentQueryOperation *)v24 setQuery:v15];
    if (v24)
    {
      *(v24 + 400) = 0;
      *(v24 + 372) = 10;
      objc_setProperty_nonatomic_copy(v24, v43, 0, 440);
      objc_setProperty_nonatomic_copy(v24, v44, 0, 448);
      v26 = 0;
      desiredKeys = 0;
      *(v24 + 464) = 0;
    }

    else
    {
      desiredKeys = 0;
      v26 = 1;
    }
  }

  v29 = desiredKeys;
  v30 = [objc_opt_class() _requiredKeys];
  v31 = [(NSArray *)v29 arrayByAddingObjectsFromArray:v30];
  v32 = [v31 sortedArrayUsingSelector:sel_compare_];

  if (!v26)
  {
    objc_setProperty_nonatomic_copy(v24, v33, v32, 408);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__35;
  v57 = __Block_byref_object_dispose__35;
  v58 = [MEMORY[0x1E695DF70] array];
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__35;
  v53[4] = __Block_byref_object_dispose__35;
  v54 = [MEMORY[0x1E695DF90] dictionary];
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__35;
  v51[4] = __Block_byref_object_dispose__35;
  v52 = [MEMORY[0x1E695DF90] dictionary];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__35;
  v49[4] = __Block_byref_object_dispose__35;
  v50 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __47__FCCKOrderFeedQueryOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C3B3B0;
  newValue[4] = v49;
  newValue[5] = v53;
  newValue[6] = v51;
  newValue[7] = buf;
  if (!v26)
  {
    objc_setProperty_nonatomic_copy(v24, v34, newValue, 416);
  }

  objc_initWeak(&location, v24);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __47__FCCKOrderFeedQueryOperation_performOperation__block_invoke_2;
  v45[3] = &unk_1E7C40650;
  objc_copyWeak(&v46, &location);
  v45[4] = v2;
  v45[5] = buf;
  v45[6] = v53;
  v45[7] = v49;
  v45[8] = v51;
  if (!v26)
  {
    objc_setProperty_nonatomic_copy(v24, v35, v45, 424);
  }

  [(FCOperation *)v2 associateChildOperation:v24];
  [v24 start];
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(buf, 8);
  v36 = *MEMORY[0x1E69E9840];
}

void __47__FCCKOrderFeedQueryOperation_performOperation__block_invoke(void *a1, void *a2)
{
  v14 = a2;
  v4 = [v14 recordType];
  v5 = [v4 isEqualToString:@"Results"];

  if (v5)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    goto LABEL_9;
  }

  v6 = [v14 recordType];
  v7 = [v6 isEqualToString:@"Tag"];

  if (v7)
  {
    v8 = a1[5];
LABEL_7:
    v11 = *(*(v8 + 8) + 40);
    v12 = [v14 recordID];
    v13 = [v12 recordName];
    [v11 setObject:v14 forKey:v13];

    goto LABEL_9;
  }

  v9 = [v14 recordType];
  v10 = [v9 isEqualToString:@"Issue"];

  if (v10)
  {
    v8 = a1[6];
    goto LABEL_7;
  }

  [*(*(a1[7] + 8) + 40) addObject:v14];
LABEL_9:
}

void __47__FCCKOrderFeedQueryOperation_performOperation__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 54);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 firstObject];

  v10 = objc_loadWeakRetained((a1 + 72));
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 59);
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
  v15 = *(a1 + 32);
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v13, v14, 432);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 376);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 count];
  v19 = FCOperationLog;
  if (v18 <= 2)
  {
    if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v20 = *(a1 + 32);
    v21 = v19;
    v22 = [v20 shortOperationDescription];
    v23 = [*(*(*(a1 + 40) + 8) + 40) count];
    v24 = [*(*(*(a1 + 48) + 8) + 40) count];
    v25 = [*(*(*(a1 + 56) + 8) + 40) values];
    v42 = 138544130;
    v43 = v22;
    v44 = 2048;
    v45 = v23;
    v46 = 2048;
    *v47 = v24;
    *&v47[8] = 2112;
    *&v47[10] = v25;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ received response with %lu FeedItemAndArticleRecords, %lu TagRecords and Results record: %@", &v42, 0x2Au);
    goto LABEL_12;
  }

  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 32);
    v21 = v19;
    v22 = [v35 shortOperationDescription];
    v36 = [*(*(*(a1 + 40) + 8) + 40) count];
    v37 = [*(*(*(a1 + 48) + 8) + 40) count];
    v25 = [*(*(*(a1 + 56) + 8) + 40) values];
    v42 = 138544130;
    v43 = v22;
    v44 = 2048;
    v45 = v36;
    v46 = 2048;
    *v47 = v37;
    *&v47[8] = 2112;
    *&v47[10] = v25;
    _os_log_debug_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEBUG, "%{public}@ received response with %lu FeedItemAndArticleRecords, %lu TagRecords and Results record: %@", &v42, 0x2Au);
LABEL_12:
  }

LABEL_14:
  if (v4)
  {
    v26 = FCErrorForCKError(v4);
    [(FCCKOrderFeedQueryOperation *)*(a1 + 32) setResultError:v26];
  }

  else
  {
    v27 = *(*(*(a1 + 56) + 8) + 40);
    if (!v27)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must always have a Results record"];
        v42 = 136315906;
        v43 = "[FCCKOrderFeedQueryOperation performOperation]_block_invoke";
        v44 = 2080;
        v45 = "FCCKOrderFeedQueryOperation.m";
        v46 = 1024;
        *v47 = 166;
        *&v47[4] = 2114;
        *&v47[6] = v38;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v42, 0x26u);

        v27 = *(*(*(a1 + 56) + 8) + 40);
      }

      else
      {
        v27 = 0;
      }
    }

    v28 = *(a1 + 32);
    v29 = *(*(*(a1 + 40) + 8) + 40);
    v26 = [*(*(*(a1 + 48) + 8) + 40) allValues];
    v30 = [*(*(*(a1 + 64) + 8) + 40) allValues];
    [v28 _processResultsRecord:v27 feedItemAndArticleRecords:v29 tagRecords:v26 issueRecords:v30 requestUUID:v9];
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    v32 = FCOperationLog;
    if (v31[60])
    {
      if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v33 = v32;
      v34 = [v31 shortOperationDescription];
      v42 = 138543874;
      v43 = v34;
      v44 = 2114;
      v45 = v4;
      v46 = 2114;
      *v47 = v9;
      _os_log_error_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_ERROR, "%{public}@ query failed with error: %{public}@, request UUID: %{public}@", &v42, 0x20u);
      goto LABEL_32;
    }
  }

  else
  {
    v32 = FCOperationLog;
  }

  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [v31 shortOperationDescription];
  v42 = 138543618;
  v43 = v34;
  v44 = 2114;
  v45 = v9;
  _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ query succeeded with request UUID: %{public}@", &v42, 0x16u);
LABEL_32:

LABEL_33:
  v39 = *(a1 + 32);
  if (v39)
  {
    v40 = v39[60];
  }

  else
  {
    v40 = 0;
  }

  [v39 finishedPerformingOperationWithError:v40];

  v41 = *MEMORY[0x1E69E9840];
}

- (void)setResultError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 480), a2);
  }
}

- (void)resetForRetry
{
  [(FCCKOrderFeedQueryOperation *)self setResultFeedItemAndArticleRecords:?];
  [(FCCKOrderFeedQueryOperation *)self setResultTagRecords:?];
  [(FCCKOrderFeedQueryOperation *)self setResultIssueRecords:?];
  [(FCCKOrderFeedQueryOperation *)self setResultFeedResponses:?];

  [(FCCKOrderFeedQueryOperation *)self setResultError:?];
}

- (void)setResultFeedItemAndArticleRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 448), a2);
  }
}

- (void)setResultTagRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 456), a2);
  }
}

- (void)setResultIssueRecords:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 464), a2);
  }
}

- (void)setResultFeedResponses:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 472), a2);
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    feedRequests = self->_feedRequests;
  }

  else
  {
    feedRequests = 0;
  }

  v6 = [(NSArray *)feedRequests count];
  v7 = FCOperationLog;
  v8 = v7;
  if (v6 <= 2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v9 = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      resultFeedResponses = self->_resultFeedResponses;
    }

    else
    {
      resultFeedResponses = 0;
    }

    v11 = resultFeedResponses;
    v12 = [(NSArray *)v11 description];
    v26 = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with feed responses: %@", &v26, 0x16u);
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      v25 = self->_resultFeedResponses;
    }

    else
    {
      v25 = 0;
    }

    v11 = v25;
    v12 = [(NSArray *)v11 description];
    v26 = 138543618;
    v27 = v9;
    v28 = 2112;
    v29 = v12;
    _os_log_debug_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ finished with feed responses: %@", &v26, 0x16u);
LABEL_8:
  }

LABEL_10:

  v13 = [FCCKOrderFeedQueryResult alloc];
  if (self)
  {
    v14 = self->_resultFeedItemAndArticleRecords;
    v15 = self->_resultFeedResponses;
    v16 = self->_resultTagRecords;
    v17 = self->_resultIssueRecords;
    networkEvents = self->_networkEvents;
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    networkEvents = 0;
  }

  v19 = [(FCCKOrderFeedQueryResult *)&v13->super.isa initWithFeedItemAndArticleRecords:v14 feedResponses:v15 tagRecords:v16 issueRecords:v17 networkEvents:networkEvents];

  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      v21 = queryCompletionHandler;
      v22 = v21;
      if (self->_resultError)
      {
        resultError = self->_resultError;
      }

      else
      {
        resultError = v4;
      }

      (*(v21 + 2))(v21, v19, resultError);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (id)_constructQueryForRequests:(id)a3 resultsLimit:(unint64_t)a4 queryPriority:(unint64_t)a5 articleLinkKeys:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E695DF70];
  v12 = a3;
  v13 = [v11 array];
  v14 = [a1 _predicateForPerFeedFieldName:@"tagID" key:@"feedID" defaultValue:0 requests:v12];
  [v13 addObject:v14];

  v15 = [a1 _predicateForPerFeedFieldName:@"maxOrder" key:@"maxOrder" defaultValue:&unk_1F2E70458 requests:v12];
  [v13 addObject:v15];

  v16 = [a1 _predicateForPerFeedFieldName:@"minOrder" key:@"minOrder" defaultValue:&unk_1F2E70470 requests:v12];
  [v13 addObject:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v18 = [a1 _predicateForPerFeedFieldName:@"hardLimit" key:@"resultsLimit" defaultValue:v17 requests:v12];
  [v13 addObject:v18];

  v19 = [a1 _predicateForPerFeedFieldName:@"topK" key:@"topK" defaultValue:&unk_1F2E70488 requests:v12];

  [v13 addObject:v19];
  v20 = MEMORY[0x1E696AE18];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v22 = [v20 predicateWithFormat:@"%K == %@", @"priority", v21];
  [v13 addObject:v22];

  if ([v10 count])
  {
    v23 = MEMORY[0x1E696AE18];
    v24 = [v10 sortedArrayUsingSelector:sel_compare_];
    v25 = [v23 predicateWithFormat:@"%K == %@", @"fetchFields", v24];
    [v13 addObject:v25];
  }

  v26 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  v27 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"OrderFeed" predicate:v26];

  return v27;
}

+ (id)_predicateForPerFeedFieldName:(id)a3 key:(id)a4 defaultValue:(id)a5 requests:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    v17 = MEMORY[0x1E69E9C10];
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v28 + 1) + 8 * v18) valueForKey:v9];
        if (v19)
        {
          v20 = v12;
          v21 = v19;
LABEL_10:
          [v20 addObject:v21];
          goto LABEL_11;
        }

        if (v10)
        {
          v20 = v12;
          v21 = v10;
          goto LABEL_10;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "defaultValue"];
          *buf = 136315906;
          v33 = "+[FCCKOrderFeedQueryOperation _predicateForPerFeedFieldName:key:defaultValue:requests:]";
          v34 = 2080;
          v35 = "FCCKOrderFeedQueryOperation.m";
          v36 = 1024;
          v37 = 261;
          v38 = 2114;
          v39 = v22;
          _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_11:

        ++v18;
      }

      while (v15 != v18);
      v23 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
      v15 = v23;
    }

    while (v23);
  }

  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", v12, v27];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)_requiredKeys
{
  if (qword_1EDB266C8 != -1)
  {
    dispatch_once(&qword_1EDB266C8, &__block_literal_global_70_0);
  }

  v3 = _MergedGlobals_28;

  return v3;
}

uint64_t __44__FCCKOrderFeedQueryOperation__requiredKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"reachedMinOrder", @"reachedEnd", @"feedDropped", @"droppedFeeds", @"droppedItems", @"nextOrder", @"articleID", @"tagID", @"order", 0}];
  v1 = _MergedGlobals_28;
  _MergedGlobals_28 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_processResultsRecord:(id)a3 feedItemAndArticleRecords:(id)a4 tagRecords:(id)a5 issueRecords:(id)a6 requestUUID:(id)a7
{
  v89 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v56 = a5;
  v55 = a6;
  v58 = [v11 objectForKeyedSubscript:@"droppedFeeds"];
  if ([v58 unsignedIntegerValue])
  {
    v13 = FCOperationLog;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(FCOperation *)self shortOperationDescription];
      v15 = [v58 unsignedIntegerValue];
      if (self)
      {
        feedRequests = self->_feedRequests;
      }

      else
      {
        feedRequests = 0;
      }

      v17 = feedRequests;
      *buf = 138543874;
      v83 = v14;
      v84 = 2048;
      v85 = v15;
      v86 = 2048;
      v87[0] = [(NSArray *)v17 count];
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu of %lu feeds were dropped", buf, 0x20u);
    }
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v18 = [v11 objectForKeyedSubscript:@"reachedMinOrder"];
  v64 = [(FCCKOrderFeedQueryOperation *)self _feedRelativeDictionaryFromResultsArray:v18];

  v19 = [v11 objectForKeyedSubscript:@"reachedEnd"];
  v63 = [(FCCKOrderFeedQueryOperation *)self _feedRelativeDictionaryFromResultsArray:v19];

  v20 = [v11 objectForKeyedSubscript:@"feedDropped"];
  v62 = [(FCCKOrderFeedQueryOperation *)self _feedRelativeDictionaryFromResultsArray:v20];

  v57 = v11;
  v21 = [v11 objectForKeyedSubscript:@"nextOrder"];
  v66 = self;
  v61 = [(FCCKOrderFeedQueryOperation *)self _feedRelativeDictionaryFromResultsArray:v21];

  v72 = [MEMORY[0x1E695DF90] dictionary];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v12;
  v22 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0x1E69E9C10];
    v25 = *v78;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v78 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v77 + 1) + 8 * i);
        v28 = [v27 objectForKeyedSubscript:@"articleID"];

        if (!v28 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feedItemAndArticle must always have an ArticleID, this is a CloudKit issue please file a radar, record: %@", v27];
          *buf = 136315906;
          v83 = "[FCCKOrderFeedQueryOperation _processResultsRecord:feedItemAndArticleRecords:tagRecords:issueRecords:requestUUID:]";
          v84 = 2080;
          v85 = "FCCKOrderFeedQueryOperation.m";
          v86 = 1024;
          LODWORD(v87[0]) = 310;
          WORD2(v87[0]) = 2114;
          *(v87 + 6) = v34;
          _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v29 = [v27 objectForKeyedSubscript:@"tagID"];

        if (!v29 && os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feedItemAndArticle must always have a FeedID (currently named TagID), this is a CloudKit issue please file a radar, record: %@", v27];
          *buf = 136315906;
          v83 = "[FCCKOrderFeedQueryOperation _processResultsRecord:feedItemAndArticleRecords:tagRecords:issueRecords:requestUUID:]";
          v84 = 2080;
          v85 = "FCCKOrderFeedQueryOperation.m";
          v86 = 1024;
          LODWORD(v87[0]) = 311;
          WORD2(v87[0]) = 2114;
          *(v87 + 6) = v35;
          _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v30 = [v27 objectForKeyedSubscript:@"tagID"];
        v31 = [v72 objectForKeyedSubscript:v30];

        if (!v31)
        {
          v32 = [MEMORY[0x1E695DF70] array];
          [v72 setObject:v32 forKeyedSubscript:v30];
        }

        v33 = [v72 objectForKeyedSubscript:v30];
        [v33 addObject:v27];
      }

      v23 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v23);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  if (v66)
  {
    v36 = v66->_feedRequests;
  }

  else
  {
    v36 = 0;
  }

  v37 = v72;
  v59 = v36;
  v67 = [(NSArray *)v59 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v67)
  {
    v60 = *v74;
    do
    {
      v38 = 0;
      do
      {
        if (*v74 != v60)
        {
          objc_enumerationMutation(v59);
        }

        v39 = *(*(&v73 + 1) + 8 * v38);
        if (v39)
        {
          v40 = *(v39 + 8);
        }

        else
        {
          v40 = 0;
        }

        v71 = v40;
        v70 = [v37 objectForKeyedSubscript:?];
        if (v39)
        {
          v41 = *(v39 + 8);
        }

        else
        {
          v41 = 0;
        }

        v69 = v41;
        v42 = [v62 objectForKeyedSubscript:?];
        if (v39)
        {
          v43 = *(v39 + 8);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v45 = [v64 objectForKeyedSubscript:v44];
        if (v39)
        {
          v46 = *(v39 + 8);
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;
        v48 = [v63 objectForKeyedSubscript:v47];
        if (v39)
        {
          v49 = *(v39 + 8);
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        v51 = [v61 objectForKeyedSubscript:v50];
        v52 = [(FCCKOrderFeedQueryOperation *)v66 _responseForRequest:v39 feedItemAndArticleRecords:v70 allFeedItemAndArticleRecords:obj wasDropped:v42 reachedMinOrder:v45 reachedEnd:v48 nextOrder:v51];

        [v65 addObject:v52];
        ++v38;
        v37 = v72;
      }

      while (v67 != v38);
      v53 = [(NSArray *)v59 countByEnumeratingWithState:&v73 objects:v81 count:16];
      v67 = v53;
    }

    while (v53);
  }

  [(FCCKOrderFeedQueryOperation *)v66 setResultFeedItemAndArticleRecords:?];
  [(FCCKOrderFeedQueryOperation *)v66 setResultFeedResponses:v65];
  [(FCCKOrderFeedQueryOperation *)v66 setResultTagRecords:v56];
  [(FCCKOrderFeedQueryOperation *)v66 setResultIssueRecords:v55];

  v54 = *MEMORY[0x1E69E9840];
}

- (id)_responseForRequest:(id)a3 feedItemAndArticleRecords:(id)a4 allFeedItemAndArticleRecords:(id)a5 wasDropped:(id)a6 reachedMinOrder:(id)a7 reachedEnd:(id)a8 nextOrder:(id)a9
{
  v71 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = objc_alloc_init(FCCKOrderFeedResponse);
  v21 = v19;
  if (v13)
  {
    v22 = v13[1];
  }

  else
  {
    v22 = 0;
  }

  v66 = v15;
  if (v19)
  {
    objc_setProperty_nonatomic_copy(v19, v20, v22, 16);
    objc_setProperty_nonatomic_copy(v21, v23, v14, 24);
    v21->_wasDropped = [v15 BOOLValue];
    v24 = v17;
    v21->_reachedEnd = [v17 BOOLValue];
    v25 = v16;
    v21->_reachedMinOrder = [v16 BOOLValue];
    v26 = [v18 unsignedLongLongValue];
    v27 = v26;
    v28 = v26 == 0;
    if (v26)
    {
      v29 = v26 + 1;
    }

    else
    {
      v29 = 0;
    }

    v21->_extent = v29;
  }

  else
  {
    [v15 BOOLValue];
    v24 = v17;
    [v17 BOOLValue];
    v25 = v16;
    [v16 BOOLValue];
    v27 = [v18 unsignedLongLongValue];
    v28 = v27 == 0;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@min.%@", @"order"];
  v65 = v14;
  v31 = [v14 valueForKeyPath:v30];
  v32 = [v31 unsignedLongLongValue];

  v64 = v18;
  if (v21)
  {
    if (v21->_wasDropped)
    {
      v33 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = [(FCOperation *)self shortOperationDescription];
        feedID = v21->_feedID;
        *buf = 138543618;
        v68 = v35;
        v69 = 2114;
        v70 = feedID;
        _os_log_impl(&dword_1B63EF000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ feed was dropped: %{public}@", buf, 0x16u);
      }

      *&v21->_reachedEnd = 0;
LABEL_78:
      v21->_extent = v32;
      goto LABEL_79;
    }

    feedItemAndArticleRecords = v21->_feedItemAndArticleRecords;
  }

  else
  {
    feedItemAndArticleRecords = 0;
  }

  v38 = feedItemAndArticleRecords;
  if ([(NSArray *)v38 count]|| v21 && (v21->_reachedMinOrder || v21->_reachedEnd))
  {

    goto LABEL_19;
  }

  if (!v28)
  {
LABEL_19:
    if (v21)
    {
      if (v21->_reachedMinOrder)
      {
        goto LABEL_28;
      }

      if (!v13)
      {
        goto LABEL_28;
      }

      if (v21->_reachedEnd)
      {
        goto LABEL_28;
      }

      v39 = v13 + 5;
      if (!v13[5])
      {
        goto LABEL_28;
      }

      v40 = v21->_feedItemAndArticleRecords;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      v39 = v13 + 5;
      if (!v13[5])
      {
        goto LABEL_28;
      }

      v40 = 0;
    }

    v41 = v40;
    v42 = [(NSArray *)v41 count];
    v43 = *v39;

    if (v21 && v42 >= v43)
    {
      v21->_reachedMinOrder = 1;
    }

LABEL_28:
    if (v32)
    {
      v44 = v28;
    }

    else
    {
      v44 = 0;
    }

    if (v44)
    {
      v45 = FCOperationLog;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = [(FCOperation *)self shortOperationDescription];
        v47 = v46;
        if (v13)
        {
          v48 = v13[1];
        }

        else
        {
          v48 = 0;
        }

        *buf = 138543618;
        v68 = v46;
        v69 = 2114;
        v70 = v48;
        v49 = "%{public}@ received an invalid Results record; will repair nextOrder to correspond to the last feed item instead of zero, feedID=%{public}@";
LABEL_58:
        _os_log_error_impl(&dword_1B63EF000, v45, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
      }
    }

    else
    {
      if (v27 <= v32 || !v32)
      {
        if (!v21)
        {
          goto LABEL_79;
        }

LABEL_42:
        if (!v21->_reachedMinOrder)
        {
LABEL_76:
          if (!v21->_reachedEnd)
          {
            goto LABEL_79;
          }

          v32 = 0;
          goto LABEL_78;
        }

        if (v13)
        {
          extent = v13[3];
          if (v27 > extent)
          {
LABEL_45:
            v51 = FCOperationLog;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v55 = [(FCOperation *)self shortOperationDescription];
              v56 = v55;
              if (v13)
              {
                v57 = v13[1];
              }

              else
              {
                v57 = 0;
              }

              *buf = 138543618;
              v68 = v55;
              v69 = 2114;
              v70 = v57;
              _os_log_error_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_ERROR, "%{public}@ received an invalid Results record; will repair reachedMinOrder to be false, feedID=%{public}@", buf, 0x16u);
            }

            v21->_reachedMinOrder = 0;
            goto LABEL_76;
          }
        }

        else
        {
          if (v27)
          {
            goto LABEL_45;
          }

          extent = 0;
        }

        if (v21->_extent < extent)
        {
          extent = v21->_extent;
        }

        v21->_extent = extent;
        goto LABEL_76;
      }

      v45 = FCOperationLog;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v53 = [(FCOperation *)self shortOperationDescription];
        v47 = v53;
        if (v13)
        {
          v54 = v13[1];
        }

        else
        {
          v54 = 0;
        }

        *buf = 138543618;
        v68 = v53;
        v69 = 2114;
        v70 = v54;
        v49 = "%{public}@ received an invalid Results record; will repair nextOrder to correspond to the last feed item instead of a greater value, feedID=%{public}@";
        goto LABEL_58;
      }
    }

    if (!v21)
    {
      goto LABEL_79;
    }

    v21->_extent = v32;
    goto LABEL_42;
  }

  v52 = FCOperationLog;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v58 = [(FCOperation *)self shortOperationDescription];
    v59 = v58;
    if (v13)
    {
      v60 = v13[1];
    }

    else
    {
      v60 = 0;
    }

    *buf = 138543618;
    v68 = v58;
    v69 = 2114;
    v70 = v60;
    _os_log_error_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_ERROR, "%{public}@ received an invalid Results record; will repair response to look like the range was exhausted, feedID=%{public}@", buf, 0x16u);
  }

  if (v21)
  {
    v21->_reachedMinOrder = 1;
  }

  if (v13)
  {
    v32 = v13[3];
  }

  else
  {
    v32 = 0;
  }

  if (v21)
  {
    goto LABEL_78;
  }

LABEL_79:

  v61 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_feedRelativeDictionaryFromResultsArray:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 count];
    v6 = self ? self->_feedRequests : 0;
    if (v5 != [(NSArray *)v6 count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"results don't align with feed IDs"];
      *buf = 136315906;
      v15 = "[FCCKOrderFeedQueryOperation _feedRelativeDictionaryFromResultsArray:]";
      v16 = 2080;
      v17 = "FCCKOrderFeedQueryOperation.m";
      v18 = 1024;
      v19 = 429;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  if ([v4 count])
  {
    if (self)
    {
      self = self->_feedRequests;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__FCCKOrderFeedQueryOperation__feedRelativeDictionaryFromResultsArray___block_invoke;
    v11[3] = &unk_1E7C40678;
    v12 = v4;
    v13 = v7;
    [(FCCKOrderFeedQueryOperation *)self enumerateObjectsUsingBlock:v11];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __71__FCCKOrderFeedQueryOperation__feedRelativeDictionaryFromResultsArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  if (v7)
  {
    v6 = v7[1];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) setObject:v5 forKey:v6];
}

- (void)setDatabase:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 368), a2);
  }
}

+ (void)streamRecordsWithDatabase:(void *)a3 feedRequests:(void *)a4 desiredKeys:(uint64_t)a5 resultsLimit:(uint64_t)a6 queryPriority:(void *)a7 articleLinkKeys:(void *)a8 recordHandler:(void *)a9 networkEventHandler:(void *)a10 completionHandler:
{
  v27 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a4;
  v21 = a3;
  v22 = a2;
  v23 = objc_opt_self();
  v28 = [objc_opt_class() _constructQueryForRequests:v21 resultsLimit:a5 queryPriority:a6 articleLinkKeys:v19];

  v24 = [v23 _requiredKeys];
  v25 = [v20 arrayByAddingObjectsFromArray:v24];

  v26 = [v25 sortedArrayUsingSelector:sel_compare_];

  [FCCKContentQueryOperation streamRecordsWithDatabase:v22 query:v28 desiredKeys:v26 resultsLimit:a5 queryPriority:a6 networkEventType:10 edgeCacheHint:0 recordHandler:v18 networkEventHandler:v17 completionHandler:v27];
}

@end