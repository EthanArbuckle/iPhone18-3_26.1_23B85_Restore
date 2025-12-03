@interface FCCKContentQueryOperation
+ (id)_requestOperationsForQuery:(id)query cursor:(id)cursor desiredKeys:(id)keys resultsLimit:(unint64_t)limit;
+ (void)streamRecordsWithDatabase:(void *)database query:(void *)query desiredKeys:(uint64_t)keys resultsLimit:(uint64_t)limit queryPriority:(int)priority networkEventType:(void *)type edgeCacheHint:(void *)hint recordHandler:(void *)self0 networkEventHandler:(void *)self1 completionHandler:;
- (BOOL)validateOperation;
- (FCCKContentQueryOperation)init;
- (id)_ckCursorFromQueryResponse:(id)response;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)setCursor:(uint64_t)cursor;
- (void)setDatabase:(uint64_t)database;
- (void)setQuery:(uint64_t)query;
@end

@implementation FCCKContentQueryOperation

- (FCCKContentQueryOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCKContentQueryOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_networkEventType = 0;
    result->_queryPriority = 200;
  }

  return result;
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't issue query without a database"];
      v12 = 136315906;
      v13 = "[FCCKContentQueryOperation validateOperation]";
      v14 = 2080;
      v15 = "FCCKContentQueryOperation.m";
      v16 = 1024;
      v17 = 64;
      v18 = 2114;
      v19 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
      goto LABEL_13;
    }
  }

  v4 = self->_query;
  if (!v4)
  {
    if (self->_cursor)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't issue query without a query or cursor"];
      v12 = 136315906;
      v13 = "[FCCKContentQueryOperation validateOperation]";
      v14 = 2080;
      v15 = "FCCKContentQueryOperation.m";
      v16 = 1024;
      v17 = 68;
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
    }

    v5 = 0;
    if (!self)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_10:
  v5 = 1;
LABEL_11:
  if (self->_networkEventType)
  {
    v6 = 1;
    goto LABEL_19;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't issue a query without a valid network event type"];
    v12 = 136315906;
    v13 = "[FCCKContentQueryOperation validateOperation]";
    v14 = 2080;
    v15 = "FCCKContentQueryOperation.m";
    v16 = 1024;
    v17 = 72;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v6 = 0;
LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
  return v3 & v6 & v5;
}

- (void)prepareOperation
{
  if (self)
  {
    v3 = self->_edgeCacheHint;
    if (v3)
    {
      v4 = v3;
      v5 = NewsCoreUserDefaults();
      v6 = [v5 BOOLForKey:@"disable_cloudkit_edge_caching"];

      if (v6)
      {

        objc_setProperty_nonatomic_copy(self, v7, 0, 448);
      }
    }
  }
}

- (void)performOperation
{
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __45__FCCKContentQueryOperation_performOperation__block_invoke;
  v53[3] = &unk_1E7C36EC8;
  v53[4] = self;
  v3 = [MEMORY[0x1E695DF20] fc_dictionary:v53];
  if (self)
  {
    if ([(FCCKContentDatabase *)self->_database shouldUseCloudd])
    {
      v4 = self->_cursor;
      v5 = objc_alloc(MEMORY[0x1E695BA48]);
      if (v4)
      {
        v6 = [v5 initWithCursor:self->_cursor];
      }

      else
      {
        v6 = [v5 initWithQuery:self->_query];
      }

      [v6 setResultsLimit:self->_resultsLimit];
      [v6 setDesiredKeys:self->_desiredKeys];
      recordFetchedBlock = self->_recordFetchedBlock;
      goto LABEL_34;
    }

    v7 = [FCCKDirectRequestOperation alloc];
    database = self->_database;
  }

  else
  {
    if ([0 shouldUseCloudd])
    {
      v6 = [objc_alloc(MEMORY[0x1E695BA48]) initWithQuery:0];
      [v6 setResultsLimit:0];
      [v6 setDesiredKeys:0];
      recordFetchedBlock = 0;
LABEL_34:
      [v6 setRecordFetchedBlock:recordFetchedBlock];
      configuration = [v6 configuration];
      v33 = [configuration copy];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = objc_opt_new();
      }

      v36 = v35;

      [v36 setAdditionalRequestHTTPHeaders:v3];
      [v6 setConfiguration:v36];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __45__FCCKContentQueryOperation_performOperation__block_invoke_2;
      v52[3] = &unk_1E7C44978;
      v52[4] = self;
      [v6 setQueryCompletionBlock:v52];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __45__FCCKContentQueryOperation_performOperation__block_invoke_3;
      v51[3] = &unk_1E7C3F4C8;
      v51[4] = self;
      [v6 setRequestCompletedBlock:v51];
      [(FCOperation *)self associateChildOperation:v6];
      if (self)
      {
        v37 = self->_database;
      }

      else
      {
        v37 = 0;
      }

      [(FCCKContentDatabase *)v37 addOperation:v6];

      goto LABEL_42;
    }

    v7 = [FCCKDirectRequestOperation alloc];
    database = 0;
  }

  networkReachability = [(FCCKContentDatabase *)database networkReachability];
  v6 = [(FCCKDirectRequestOperation *)v7 initWithNetworkReachability:networkReachability];

  if (v6)
  {
    *(v6 + 408) = 2;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __45__FCCKContentQueryOperation_performOperation__block_invoke_5;
  v50[3] = &unk_1E7C449A0;
  v50[4] = self;
  v11 = __45__FCCKContentQueryOperation_performOperation__block_invoke_5(v50);
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v10, v11, 392);
  }

  if (self)
  {
    containerIdentifier = [(FCCKContentDatabase *)self->_database containerIdentifier];
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v12, containerIdentifier, 400);
    }

    v14 = self->_database;
  }

  else
  {
    containerIdentifier2 = [0 containerIdentifier];
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v39, containerIdentifier2, 400);
    }

    v14 = 0;
  }

  isProductionEnvironment = [(FCCKContentDatabase *)v14 isProductionEnvironment];
  if (v6)
  {
    *(v6 + 376) = isProductionEnvironment;
  }

  v16 = objc_opt_class();
  if (self)
  {
    v17 = self->_query;
    v18 = self->_cursor;
    v19 = self->_desiredKeys;
    resultsLimit = self->_resultsLimit;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    resultsLimit = 0;
  }

  v22 = [v16 _requestOperationsForQuery:v17 cursor:v18 desiredKeys:v19 resultsLimit:resultsLimit];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v21, v22, 384);
  }

  if (self)
  {
    networkBehaviorMonitor = [(FCCKContentDatabase *)self->_database networkBehaviorMonitor];
    [(FCCKDirectRequestOperation *)v6 setNetworkBehaviorMonitor:networkBehaviorMonitor];

    if (v6)
    {
      *(v6 + 380) = self->_networkEventType;
      networkActivityBlock = self->_networkActivityBlock;
LABEL_23:
      objc_setProperty_nonatomic_copy(v6, v24, networkActivityBlock, 488);
      objc_setProperty_nonatomic_copy(v6, v26, v3, 416);
      if (self)
      {
        objc_setProperty_nonatomic_copy(v6, v27, self->_edgeCacheHint, 432);
        *(v6 + 378) = self->_ignoreCache;
        optimizationPolicy = self->_optimizationPolicy;
      }

      else
      {
        objc_setProperty_nonatomic_copy(v6, v27, 0, 432);
        optimizationPolicy = 0;
        *(v6 + 378) = 0;
      }

      *(v6 + 440) = optimizationPolicy;
      objc_setProperty_nonatomic_copy(v6, v28, &__block_literal_global_31_0, 448);
    }
  }

  else
  {
    networkBehaviorMonitor2 = [0 networkBehaviorMonitor];
    [(FCCKDirectRequestOperation *)v6 setNetworkBehaviorMonitor:networkBehaviorMonitor2];

    if (v6)
    {
      networkActivityBlock = 0;
      *(v6 + 380) = 0;
      goto LABEL_23;
    }
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __45__FCCKContentQueryOperation_performOperation__block_invoke_2_32;
  newValue[3] = &unk_1E7C449C8;
  newValue[4] = self;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v24, newValue, 456);
  }

  objc_initWeak(&location, v6);
  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __45__FCCKContentQueryOperation_performOperation__block_invoke_3_35;
  v45 = &unk_1E7C449F0;
  objc_copyWeak(&v47, &location);
  selfCopy = self;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v30, &v42, 464);
  }

  [(FCOperation *)self associateChildOperation:v6, v42, v43, v44, v45, selfCopy];
  if ([(FCOperation *)self relativePriority]< 1)
  {
    fc_throttledCKRequestOperationQueue = [MEMORY[0x1E696ADC8] fc_throttledCKRequestOperationQueue];
    [fc_throttledCKRequestOperationQueue addOperation:v6];
  }

  else
  {
    [v6 start];
  }

  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);
LABEL_42:
}

void __45__FCCKContentQueryOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 464);
  }

  else
  {
    v5 = 0;
  }

  v9 = a2;
  v6 = [v3 stringWithFormat:@"%lu", v5];
  [v9 setObject:v6 forKeyedSubscript:@"X-Apple-CloudKit-Request-Priority"];

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 440);
  }

  else
  {
    v8 = 0;
  }

  [v9 addEntriesFromDictionary:v8];
}

id __45__FCCKContentQueryOperation_performOperation__block_invoke_5(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 384);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:@"MultiFetch"];

  v6 = *(a1 + 32);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = *(v6 + 448);
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = v7;
      if (v8)
      {
        v10 = *(v8 + 376);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 baseURLForEdgeCachedMultiFetch];
LABEL_17:
      v19 = v11;

      goto LABEL_28;
    }

    if (v8)
    {
      v21 = *(v8 + 376);
    }

    else
    {
LABEL_32:
      v21 = 0;
    }

    v20 = [v21 baseURLForMultiFetch];
  }

  else
  {
    if (v6)
    {
      v12 = *(v6 + 384);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 recordType];
    v14 = [v13 isEqualToString:@"OrderFeed"];

    if (v14)
    {
      v15 = *(a1 + 32);
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = *(v15 + 448);
      v17 = *(a1 + 32);
      if (v16)
      {
        v9 = v16;
        if (v17)
        {
          v18 = *(v17 + 376);
        }

        else
        {
          v18 = 0;
        }

        v11 = [v18 baseURLForEdgeCachedOrderFeed];
        goto LABEL_17;
      }

      if (v17)
      {
        v22 = *(v17 + 376);
      }

      else
      {
LABEL_35:
        v22 = 0;
      }

      v20 = [v22 baseURLForOrderFeed];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsupported query type, falling back to hardcoded base URL"];
        v26 = 136315906;
        v27 = "[FCCKContentQueryOperation performOperation]_block_invoke_5";
        v28 = 2080;
        v29 = "FCCKContentQueryOperation.m";
        v30 = 1024;
        v31 = 123;
        v32 = 2114;
        v33 = v25;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v26, 0x26u);
      }

      v20 = [MEMORY[0x1E695DFF8] URLWithString:@"https://gateway.icloud.com:443/ckdatabase"];
    }
  }

  v19 = v20;
LABEL_28:
  v23 = *MEMORY[0x1E69E9840];

  return v19;
}

void __45__FCCKContentQueryOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 requestUUID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 432)) != 0)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = v9[54];
      }

      v10 = v9;
      v11 = [v10 arrayByAddingObject:v5];
      [*(a1 + 32) setRequestUUIDs:v11];
    }

    else
    {
      v13[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [*(a1 + 32) setRequestUUIDs:v8];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45__FCCKContentQueryOperation_performOperation__block_invoke_2_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[FCCKProtocolTranslator sharedInstance];
  v4 = [(FCCKProtocolTranslator *)v7 recordFromPRecord:v3];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 416);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }
  }
}

void __45__FCCKContentQueryOperation_performOperation__block_invoke_3_35(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 60);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 40));
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 60);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v32[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [*(a1 + 32) setNetworkEvents:v14];
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 59);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v31 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [*(a1 + 32) setRequestUUIDs:v19];

  v20 = [v5 domain];
  LODWORD(v18) = [v20 isEqualToString:*MEMORY[0x1E695B778]];

  if (v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't return errors from the internal domain"];
    v23 = 136315906;
    v24 = "[FCCKContentQueryOperation performOperation]_block_invoke_3";
    v25 = 2080;
    v26 = "FCCKContentQueryOperation.m";
    v27 = 1024;
    v28 = 162;
    v29 = 2114;
    v30 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v23, 0x26u);
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v5];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)error
{
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  errorCopy = error;
  [(FCCKContentDatabase *)database maximumRetryAfterForCK];
  v7 = [errorCopy fc_errorWithMaximumRetryAfter:?];

  if (self)
  {
    queryCompletionBlock = self->_queryCompletionBlock;
  }

  else
  {
    queryCompletionBlock = 0;
  }

  queryCompletionBlock[2](queryCompletionBlock, 0, v7);
}

+ (id)_requestOperationsForQuery:(id)query cursor:(id)cursor desiredKeys:(id)keys resultsLimit:(unint64_t)limit
{
  v49 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  cursorCopy = cursor;
  keysCopy = keys;
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  [v12 setRequest:v13];

  v14 = CKCreateGUID();
  request = [v12 request];
  [request setOperationUUID:v14];

  request2 = [v12 request];
  [request2 setType:220];

  request3 = [v12 request];
  [request3 setLast:1];

  v18 = objc_opt_new();
  [v12 setQueryRetrieveRequest:v18];

  if (cursorCopy)
  {
    data = [cursorCopy data];
    queryRetrieveRequest = [v12 queryRetrieveRequest];
    [queryRetrieveRequest setContinuationMarker:data];
  }

  else if (queryCopy)
  {
    v21 = +[FCCKProtocolTranslator sharedInstance];
    v46 = 0;
    v22 = [(FCCKProtocolTranslator *)v21 pQueryFromQuery:queryCopy error:&v46];
    v23 = v46;
    queryRetrieveRequest2 = [v12 queryRetrieveRequest];
    [queryRetrieveRequest2 setQuery:v22];
  }

  if (keysCopy)
  {
    v40 = cursorCopy;
    v41 = queryCopy;
    v25 = objc_opt_new();
    queryRetrieveRequest3 = [v12 queryRetrieveRequest];
    [queryRetrieveRequest3 setRequestedFields:v25];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = keysCopy;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * i);
          v33 = objc_opt_new();
          [v33 setName:v32];
          queryRetrieveRequest4 = [v12 queryRetrieveRequest];
          requestedFields = [queryRetrieveRequest4 requestedFields];
          [requestedFields addFields:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v29);
    }

    cursorCopy = v40;
    queryCopy = v41;
  }

  if (limit)
  {
    if (limit >= 0x7FFFFFFF)
    {
      limit = 0x7FFFFFFFLL;
    }

    queryRetrieveRequest5 = [v12 queryRetrieveRequest];
    [queryRetrieveRequest5 setLimit:limit];
  }

  v47 = v12;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)_ckCursorFromQueryResponse:(id)response
{
  v3 = MEMORY[0x1E695BA40];
  responseCopy = response;
  v5 = [v3 alloc];
  continuationMarker = [responseCopy continuationMarker];

  v7 = objc_alloc(MEMORY[0x1E695BA90]);
  v8 = [v7 initWithZoneName:*MEMORY[0x1E695B800] ownerName:*MEMORY[0x1E695B728]];
  v9 = [v5 initWithData:continuationMarker zoneID:v8];

  return v9;
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 376), a2);
  }
}

- (void)setQuery:(uint64_t)query
{
  if (query)
  {
    objc_storeStrong((query + 384), a2);
  }
}

- (void)setCursor:(uint64_t)cursor
{
  if (cursor)
  {
    objc_storeStrong((cursor + 392), a2);
  }
}

+ (void)streamRecordsWithDatabase:(void *)database query:(void *)query desiredKeys:(uint64_t)keys resultsLimit:(uint64_t)limit queryPriority:(int)priority networkEventType:(void *)type edgeCacheHint:(void *)hint recordHandler:(void *)self0 networkEventHandler:(void *)self1 completionHandler:
{
  v15 = a2;
  databaseCopy = database;
  queryCopy = query;
  typeCopy = type;
  hintCopy = hint;
  handlerCopy = handler;
  eventHandlerCopy = eventHandler;
  v18 = objc_opt_self();
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke;
  v59[3] = &__block_descriptor_40_e29_v16__0__NSMutableDictionary_8l;
  v59[4] = limit;
  v19 = [MEMORY[0x1E695DF20] fc_dictionary:v59];
  v20 = [FCCKDirectRequestOperation alloc];
  networkReachability = [v15 networkReachability];
  v22 = [(FCCKDirectRequestOperation *)v20 initWithNetworkReachability:networkReachability];

  if (v22)
  {
    *(v22 + 408) = 2;
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_2;
  v55[3] = &unk_1E7C44A38;
  v23 = databaseCopy;
  v56 = v23;
  v24 = typeCopy;
  v57 = v24;
  v25 = v15;
  v58 = v25;
  v27 = __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_2(v55);
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v26, v27, 392);
  }

  containerIdentifier = [v25 containerIdentifier];
  v30 = containerIdentifier;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v29, containerIdentifier, 400);

    *(v22 + 376) = [v25 isProductionEnvironment];
    v31 = [v18 _requestOperationsForQuery:v23 cursor:0 desiredKeys:queryCopy resultsLimit:keys];
    objc_setProperty_nonatomic_copy(v22, v32, v31, 384);
  }

  else
  {

    [v25 isProductionEnvironment];
    v31 = [v18 _requestOperationsForQuery:v23 cursor:0 desiredKeys:queryCopy resultsLimit:keys];
  }

  networkBehaviorMonitor = [v25 networkBehaviorMonitor];
  [(FCCKDirectRequestOperation *)v22 setNetworkBehaviorMonitor:networkBehaviorMonitor];

  if (v22)
  {
    *(v22 + 380) = priority;
    objc_setProperty_nonatomic_copy(v22, v34, v19, 416);
    objc_setProperty_nonatomic_copy(v22, v35, v24, 432);
    *(v22 + 440) = FCProcessIsMemoryConstrained();
    objc_setProperty_nonatomic_copy(v22, v36, &__block_literal_global_96_1, 448);
  }

  else
  {
    FCProcessIsMemoryConstrained();
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_2_97;
  newValue[3] = &unk_1E7C44A60;
  v38 = hintCopy;
  v54 = v38;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v37, newValue, 456);
  }

  objc_initWeak(&location, v22);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_3;
  v48[3] = &unk_1E7C44A88;
  objc_copyWeak(&v51, &location);
  v39 = handlerCopy;
  v49 = v39;
  v41 = eventHandlerCopy;
  v50 = v41;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v40, v48, 464);
  }

  [v22 start];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

void __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 stringWithFormat:@"%lu", v3];
  [v4 setObject:v5 forKeyedSubscript:@"X-Apple-CloudKit-Request-Priority"];
}

id __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) recordType];
  v3 = [v2 isEqualToString:@"MultiFetch"];

  if (v3)
  {
    v4 = *(a1 + 48);
    if (*(a1 + 40))
    {
      [v4 baseURLForEdgeCachedMultiFetch];
    }

    else
    {
      [v4 baseURLForMultiFetch];
    }

    v5 = LABEL_4:;
    goto LABEL_13;
  }

  v6 = [*(a1 + 32) recordType];
  v7 = [v6 isEqualToString:@"OrderFeed"];

  if (v7)
  {
    v8 = *(a1 + 48);
    if (*(a1 + 40))
    {
      [v8 baseURLForEdgeCachedOrderFeed];
    }

    else
    {
      [v8 baseURLForOrderFeed];
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsupported query type, falling back to hardcoded base URL"];
    v12 = 136315906;
    v13 = "+[FCCKContentQueryOperation(Streaming) streamRecordsWithDatabase:query:desiredKeys:resultsLimit:queryPriority:networkEventType:edgeCacheHint:recordHandler:networkEventHandler:completionHandler:]_block_invoke_2";
    v14 = 2080;
    v15 = "FCCKContentQueryOperation.m";
    v16 = 1024;
    v17 = 266;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://gateway.icloud.com:443/ckdatabase"];
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

void __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_2_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[FCCKProtocolTranslator sharedInstance];
  v4 = [(FCCKProtocolTranslator *)v5 recordFromPRecord:v3];

  (*(*(a1 + 32) + 16))();
}

void __194__FCCKContentQueryOperation_Streaming__streamRecordsWithDatabase_query_desiredKeys_resultsLimit_queryPriority_networkEventType_edgeCacheHint_recordHandler_networkEventHandler_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 60);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

@end