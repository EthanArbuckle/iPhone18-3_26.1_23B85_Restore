@interface FCRecordsFetchOperation
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCRecordsFetchOperation

- (void)performOperation
{
  if ([(NSArray *)self->_recordIdentifiers count])
  {
    [(FCRecordSource *)self->_recordSource _prepareForUse];
    v55 = [MEMORY[0x1E695DF00] date];
    queue = FCDispatchQueueForQualityOfService([(FCRecordsFetchOperation *)self qualityOfService]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    recordSource = self->_recordSource;
    if (recordSource)
    {
      recordSource = recordSource->_cacheCoordinator;
    }

    recordIdentifiers = self->_recordIdentifiers;
    v8 = recordSource;
    v9 = [(FCRecordSource *)v8 holdTokensForKeys:recordIdentifiers];

    if ([(FCFetchOperation *)self cachePolicy])
    {
      defaultCachePolicy = self;
    }

    else
    {
      v11 = self->_recordSource;
      if (v11)
      {
        defaultCachePolicy = v11->_defaultCachePolicy;
      }

      else
      {
        defaultCachePolicy = 0;
      }
    }

    v12 = [(FCFetchOperation *)defaultCachePolicy cachePolicy];
    if ([(FCFetchOperation *)self cachePolicy])
    {
      v13 = self;
    }

    else
    {
      v14 = self->_recordSource;
      if (v14)
      {
        v13 = v14->_defaultCachePolicy;
      }

      else
      {
        v13 = 0;
      }
    }

    [(FCFetchOperation *)v13 maximumCachedAge];
    v16 = v15;
    v17 = [MEMORY[0x1E695DFD8] setWithArray:self->_ignoreCacheForRecordIDs];
    v18 = self->_recordSource;
    if (v18)
    {
      cacheCoordinator = v18->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke;
    v79[3] = &unk_1E7C38C70;
    v79[4] = self;
    v50 = v9;
    v80 = v50;
    v51 = v17;
    v81 = v51;
    v58 = v5;
    v82 = v58;
    v85 = v12;
    v86 = v16;
    v20 = v4;
    v83 = v20;
    v21 = v3;
    v84 = v21;
    [(FCCacheCoordinator *)cacheCoordinator performCacheRead:v79];
    v22 = dispatch_group_create();
    v52 = v20;
    if ([v20 count])
    {
      dispatch_group_enter(v22);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_306;
      aBlock[3] = &unk_1E7C38C98;
      aBlock[4] = self;
      v23 = v20;
      v76 = v23;
      v77 = v54;
      v49 = v22;
      v78 = v22;
      v24 = _Block_copy(aBlock);
      v25 = objc_alloc_init(FCRecordSourceFetchContext);
      v26 = v25;
      if (v25)
      {
        v25->_refresh = 0;
      }

      v27 = self->_recordSource;
      if (v27)
      {
        v27 = v27->_fetchCoordinator;
      }

      v28 = v27;
      v29 = [(FCRecordSource *)v28 fetchKeys:v23 context:v26 qualityOfService:[(FCRecordsFetchOperation *)self qualityOfService] relativePriority:[(FCOperation *)self relativePriority] completionQueue:queue completion:v24];
      fetchToken = self->_fetchToken;
      self->_fetchToken = v29;
    }

    if ([v58 count])
    {
      dispatch_group_enter(v22);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_307;
      v69[3] = &unk_1E7C38CE8;
      v69[4] = self;
      v31 = v58;
      v70 = v31;
      v74 = v12;
      v71 = v55;
      v72 = v53;
      v73 = v22;
      v32 = _Block_copy(v69);
      v33 = objc_alloc_init(FCRecordSourceFetchContext);
      v34 = v33;
      if (v33)
      {
        v33->_refresh = 1;
        v33->_cachePolicy = v12;
        v33->_maxCachedAge = v16;
      }

      if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1 || [v51 count])
      {
        v35 = self->_recordSource;
        if (v35)
        {
          v35 = v35->_fetchCoordinator;
        }

        v36 = v35;
        v37 = [(FCRecordSource *)v36 fetchKeysUnconditionally:v31 context:v34 qualityOfService:[(FCRecordsFetchOperation *)self qualityOfService] relativePriority:[(FCOperation *)self relativePriority] completionQueue:queue completion:v32];
      }

      else
      {
        v48 = self->_recordSource;
        if (v48)
        {
          v48 = v48->_fetchCoordinator;
        }

        v36 = v48;
        v37 = [(FCRecordSource *)v36 fetchKeys:v31 context:v34 qualityOfService:[(FCRecordsFetchOperation *)self qualityOfService] relativePriority:[(FCOperation *)self relativePriority] completionQueue:queue completion:v32];
      }

      refreshToken = self->_refreshToken;
      self->_refreshToken = v37;
    }

    if (FCDispatchGroupIsEmpty(v22))
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_312;
      v64[3] = &unk_1E7C376C8;
      v39 = &v65;
      v65 = v21;
      v40 = &v66;
      v41 = v54;
      v66 = v54;
      v42 = &v67;
      v43 = v53;
      v67 = v53;
      v44 = v68;
      v45 = v21;
      v46 = v50;
      v68[0] = v50;
      v68[1] = self;
      __43__FCRecordsFetchOperation_performOperation__block_invoke_312(v64);
      v47 = queue;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_3;
      block[3] = &unk_1E7C376C8;
      v39 = &v60;
      v60 = v21;
      v40 = &v61;
      v41 = v54;
      v61 = v54;
      v42 = &v62;
      v43 = v53;
      v62 = v53;
      v44 = v63;
      v45 = v21;
      v46 = v50;
      v63[0] = v50;
      v63[1] = self;
      v47 = queue;
      dispatch_group_notify(v22, queue, block);
    }
  }

  else
  {
    v57 = objc_alloc_init(FCHeldRecords);
    [(FCFetchOperation *)self finishExecutingWithFetchedObject:v57];
  }
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 440), *(a1 + 40));
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(*(a1 + 32) + 424);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v31;
    v7 = 0x1EDB0F000uLL;
    *&v4 = 136315906;
    v29 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = *(v7 + 2236);
        v11 = *(*(a1 + 32) + v10);
        if (v11)
        {
          v12 = *(v11 + 112);
        }

        else
        {
          v12 = 0;
        }

        if ([v12 cacheContainsKey:{*(*(&v30 + 1) + 8 * v8), v29, v30}])
        {
          if ([*(a1 + 48) containsObject:v9])
          {
            v13 = *(a1 + 56);
LABEL_21:
            [v13 addObject:v9];
            goto LABEL_42;
          }

          v16 = *(*(a1 + 32) + v10);
          if (v16)
          {
            v17 = *(v16 + 104);
          }

          else
          {
            v17 = 0;
          }

          v15 = [v17 objectForKey:v9];
          v18 = [(FCFaultableRecord *)v15 recordBase];
          v19 = v18;
          v14 = 0;
          v20 = *(a1 + 80);
          if (v20 > 3)
          {
            if ((v20 - 4) < 2)
            {
              if (![(NTPBRecordBase *)v18 needsAssetURLRefresh])
              {
                v22 = [v19 fetchDate];
                if (v22 && (v23 = v22, v24 = [v19 fc_isCachedAgeLessThan:*(a1 + 88)], v23, !v24))
                {
                  [*(a1 + 56) addObject:v9];
                  v14 = 0;
                }

                else
                {
                  v25 = [(FCFaultableRecord *)v15 record];
                  v14 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v25 error:0];
                }

                v7 = 0x1EDB0F000;
                goto LABEL_39;
              }

              goto LABEL_24;
            }
          }

          else
          {
            if ((v20 - 2) < 2)
            {
              if (-[NTPBRecordBase hasExpiredAssetURLs](v18) || *(a1 + 88) != 0.0 && [v19 fc_isCachedAgeGreaterThan:?])
              {
                v14 = [FCFetchOperationResult resultWithStatus:2 fetchedObject:0 error:0];
                v21 = [MEMORY[0x1E695DFD8] setWithObject:v9];
                [v14 setMissingObjectDescriptions:v21];
              }

              else
              {
                v21 = [(FCFaultableRecord *)v15 record];
                v14 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v21 error:0];
              }

              goto LABEL_39;
            }

            if (v20)
            {
              if (v20 != 1)
              {
                goto LABEL_39;
              }

LABEL_24:
              [*(a1 + 56) addObject:v9];
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record sources must always specify a concrete default cache policy"];
              *buf = v29;
              v35 = "[FCRecordsFetchOperation performOperation]_block_invoke";
              v36 = 2080;
              v37 = "FCRecordSource.m";
              v38 = 1024;
              v39 = 1459;
              v40 = 2114;
              v41 = v26;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v14 = 0;
          }

LABEL_39:

          goto LABEL_40;
        }

        if (*(a1 + 80) != 3)
        {
          v13 = *(a1 + 64);
          goto LABEL_21;
        }

        v14 = [FCFetchOperationResult resultWithStatus:2 fetchedObject:0 error:0];
        v15 = [MEMORY[0x1E695DFD8] setWithObject:v9];
        [v14 setMissingObjectDescriptions:v15];
LABEL_40:

        if (v14)
        {
          [*(a1 + 72) addObject:v14];
        }

LABEL_42:
        ++v8;
      }

      while (v5 != v8);
      v27 = [v2 countByEnumeratingWithState:&v30 objects:v42 count:16];
      v5 = v27;
    }

    while (v27);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_312(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = [MEMORY[0x1E695DFA8] set];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__FCRecordsFetchOperation_performOperation__block_invoke_2_313;
  v11 = &unk_1E7C38D10;
  v3 = v2;
  v12 = v3;
  v13 = &v28;
  v14 = &v22;
  v15 = &v16;
  v4 = _Block_copy(&v8);
  [*(a1 + 32) enumerateObjectsUsingBlock:{v4, v8, v9, v10, v11}];
  [*(a1 + 40) enumerateObjectsUsingBlock:v4];
  [*(a1 + 48) enumerateObjectsUsingBlock:v4];
  v5 = v29[3];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[FCHeldRecords alloc] initWithRecordsByID:v3 interestTokensByID:*(a1 + 56)];
    v5 = v29[3];
  }

  v7 = [FCFetchOperationResult resultWithStatus:v5 fetchedObject:v6 error:v23[5]];
  [v7 setMissingObjectDescriptions:v17[5]];
  [*(a1 + 64) finishExecutingWithResult:v7];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_2_313(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 fetchedObject];

  if (v3)
  {
    v4 = [v14 fetchedObject];
    v5 = [v4 base];
    v6 = a1[4];
    v7 = [v5 identifier];
    [v6 setObject:v4 forKey:v7];
  }

  if ([v14 status] < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[5] + 8) + 24) = [v14 status];
  }

  if ([v14 status] == 3)
  {
    v8 = [v14 error];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [v14 error];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_10:
  if ([v14 status])
  {
    v12 = *(*(a1[7] + 8) + 40);
    v13 = [v14 missingObjectDescriptions];
    [v12 fc_safelyUnionSet:v13];
  }
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_306(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  if (v2)
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_2;
  v6[3] = &unk_1E7C376A0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 performCacheRead:v6];
  dispatch_group_leave(*(a1 + 56));
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v27;
    v6 = off_1E7C34000;
    *&v3 = 138543874;
    v24 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        v9 = *(*(a1 + 40) + 416);
        if (v9)
        {
          v10 = *(v9 + 112);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 cacheContainsKey:{*(*(&v26 + 1) + 8 * v7), v24}];
        v12 = *(*(a1 + 40) + 416);
        if (v11)
        {
          if (v12)
          {
            v12 = v12[13];
          }

          v13 = [v12 objectForKey:v8];
          v14 = v6[181];
          v15 = [(FCFaultableRecord *)v13 record];
          v16 = [(__objc2_class *)v14 resultWithStatus:0 fetchedObject:v15 error:0];
        }

        else
        {
          v13 = [(FCRecordSource *)v12 _fetchErrorForKey:v8];
          v16 = [(__objc2_class *)v6[181] resultWithStatus:3 fetchedObject:0 error:v13];
          v17 = FCRecordSourceLog;
          if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
          {
            v18 = v5;
            v19 = *(a1 + 40);
            v20 = v17;
            v21 = [v19 operationID];
            *buf = v24;
            v31 = v21;
            v32 = 2114;
            v33 = v8;
            v34 = 2114;
            v35 = v13;
            _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_INFO, "operation with ID %{public}@ failed to fetch record %{public}@ with error %{public}@", buf, 0x20u);

            v5 = v18;
            v6 = off_1E7C34000;
          }

          v15 = [MEMORY[0x1E695DFD8] setWithObject:v8];
          [v16 setMissingObjectDescriptions:v15];
        }

        [*(a1 + 48) addObject:v16];
        ++v7;
      }

      while (v4 != v7);
      v22 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
      v4 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_307(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  if (v2)
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v3 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__FCRecordsFetchOperation_performOperation__block_invoke_2_308;
  v10[3] = &unk_1E7C38CC0;
  v4 = *(a1 + 40);
  v13 = *(a1 + 72);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 32);
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 performCacheRead:v10];
  dispatch_group_leave(*(a1 + 64));
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_2_308(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v2)
  {
    v4 = v2;
    v27 = *v29;
    *&v3 = 136315906;
    v25 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = *(*(a1 + 40) + 416);
        if (v7)
        {
          v8 = *(v7 + 104);
        }

        else
        {
          v8 = 0;
        }

        v9 = [v8 objectForKey:{*(*(&v28 + 1) + 8 * v5), v25}];
        v10 = [(FCFaultableRecord *)v9 recordBase];
        v11 = v10;
        if (!v9)
        {
          v14 = [(FCRecordSource *)*(*(a1 + 40) + 416) _fetchErrorForKey:v6];
          v15 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v14];

          goto LABEL_25;
        }

        v12 = *(a1 + 64);
        v13 = 1;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
LABEL_17:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't get here"];
              *buf = v25;
              v33 = "[FCRecordsFetchOperation performOperation]_block_invoke_2";
              v34 = 2080;
              v35 = "FCRecordSource.m";
              v36 = 1024;
              v37 = 1573;
              v38 = 2114;
              v39 = v22;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

              v13 = 1;
            }

            goto LABEL_19;
          }

          if (v12 == 5)
          {
LABEL_16:
            v16 = MEMORY[0x1E695DF00];
            v17 = [v10 fetchDate];
            v18 = [v16 dateWithPBDate:v17];
            v13 = [v18 fc_isLaterThan:*(a1 + 48)];
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_17;
          }

          if (v12 == 1)
          {
            goto LABEL_16;
          }
        }

LABEL_19:
        if (![(NTPBRecordBase *)v11 hasExpiredAssetURLs]&& v13 != 0)
        {
          v21 = [(FCFaultableRecord *)v9 record];
          v15 = [FCFetchOperationResult resultWithStatus:0 fetchedObject:v21 error:0];
          goto LABEL_26;
        }

        v20 = [(FCRecordSource *)*(*(a1 + 40) + 416) _fetchErrorForKey:v6];
        v15 = [FCFetchOperationResult resultWithStatus:3 fetchedObject:0 error:v20];

LABEL_25:
        v21 = [MEMORY[0x1E695DFD8] setWithObject:v6];
        [v15 setMissingObjectDescriptions:v21];
LABEL_26:

        [*(a1 + 56) addObject:v15];
        ++v5;
      }

      while (v4 != v5);
      v23 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      v4 = v23;
    }

    while (v23);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = [MEMORY[0x1E695DFA8] set];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__FCRecordsFetchOperation_performOperation__block_invoke_4;
  v11 = &unk_1E7C38D10;
  v3 = v2;
  v12 = v3;
  v13 = &v28;
  v14 = &v22;
  v15 = &v16;
  v4 = _Block_copy(&v8);
  [*(a1 + 32) enumerateObjectsUsingBlock:{v4, v8, v9, v10, v11}];
  [*(a1 + 40) enumerateObjectsUsingBlock:v4];
  [*(a1 + 48) enumerateObjectsUsingBlock:v4];
  v5 = v29[3];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [[FCHeldRecords alloc] initWithRecordsByID:v3 interestTokensByID:*(a1 + 56)];
    v5 = v29[3];
  }

  v7 = [FCFetchOperationResult resultWithStatus:v5 fetchedObject:v6 error:v23[5]];
  [v7 setMissingObjectDescriptions:v17[5]];
  [*(a1 + 64) finishExecutingWithResult:v7];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

void __43__FCRecordsFetchOperation_performOperation__block_invoke_4(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 fetchedObject];

  if (v3)
  {
    v4 = [v14 fetchedObject];
    v5 = [v4 base];
    v6 = a1[4];
    v7 = [v5 identifier];
    [v6 setObject:v4 forKey:v7];
  }

  if ([v14 status] < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[5] + 8) + 24) = [v14 status];
  }

  if ([v14 status] == 3)
  {
    v8 = [v14 error];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [v14 error];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_10:
  if ([v14 status])
  {
    v12 = *(*(a1[7] + 8) + 40);
    v13 = [v14 missingObjectDescriptions];
    [v12 fc_safelyUnionSet:v13];
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  holdTokens = self->_holdTokens;
  self->_holdTokens = 0;

  fetchToken = self->_fetchToken;
  self->_fetchToken = 0;

  refreshToken = self->_refreshToken;
  self->_refreshToken = 0;
}

@end