@interface FCCKContentFetchOperation
- (BOOL)validateOperation;
- (FCCKContentFetchOperation)init;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)setDatabase:(uint64_t)a1;
- (void)setRecordIDsToETags:(uint64_t)a1;
@end

@implementation FCCKContentFetchOperation

- (FCCKContentFetchOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCKContentFetchOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_networkEventType = 9;
  }

  return result;
}

- (BOOL)validateOperation
{
  v2 = self;
  v17 = *MEMORY[0x1E69E9840];
  if (!self || (v3 = self->_database) == 0 || (recordIDs = v2->_recordIDs, v3, !recordIDs))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid operation"];
      v9 = 136315906;
      v10 = "[FCCKContentFetchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCCKContentFetchOperation.m";
      v13 = 1024;
      v14 = 52;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);

      if (!v2)
      {
        goto LABEL_9;
      }
    }

    else if (!v2)
    {
      goto LABEL_9;
    }
  }

  v5 = v2->_database;
  if (v5)
  {
    LOBYTE(v2) = v2->_recordIDs != 0;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)performOperation
{
  location[16] = *MEMORY[0x1E69E9840];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke;
  v89[3] = &unk_1E7C36EC8;
  v89[4] = self;
  v65 = [MEMORY[0x1E695DF20] fc_dictionary:v89];
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  if ([(FCCKContentDatabase *)database shouldUseCloudd])
  {
    v3 = objc_alloc(MEMORY[0x1E695B938]);
    if (self)
    {
      newValue = [v3 initWithRecordIDs:self->_recordIDs];
      [newValue setRecordIDsToETags:self->_recordIDsToETags];
      [newValue setDesiredKeys:self->_desiredKeys];
      v4 = self;
      perRecordCompletionBlock = self->_perRecordCompletionBlock;
    }

    else
    {
      newValue = [v3 initWithRecordIDs:0];
      [newValue setRecordIDsToETags:0];
      [newValue setDesiredKeys:0];
      perRecordCompletionBlock = 0;
      v4 = 0;
    }

    v6 = v4 == 0;
    [newValue setPerRecordCompletionBlock:perRecordCompletionBlock];
    [newValue setAdditionalRequestHTTPHeaders:v66];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_2;
    v88[3] = &unk_1E7C45048;
    v88[4] = self;
    [newValue setPerRecordCompletionBlock:v88];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_4;
    v87[3] = &unk_1E7C39358;
    v87[4] = self;
    [newValue setFetchRecordsCompletionBlock:v87];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_5;
    v86[3] = &unk_1E7C3F4C8;
    v86[4] = self;
    [newValue setRequestCompletedBlock:v86];
    [(FCOperation *)self associateChildOperation:newValue];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_database;
    }

    [(FCCKContentDatabase *)v7 addOperation:newValue];
    goto LABEL_56;
  }

  newValue = [MEMORY[0x1E695DF70] array];
  v69 = [MEMORY[0x1E695DF90] dictionary];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  if (self)
  {
    recordIDs = self->_recordIDs;
  }

  else
  {
    recordIDs = 0;
  }

  obj = recordIDs;
  v70 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v70)
  {
    v68 = *v83;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v82 + 1) + 8 * v9);
        if (self)
        {
          v10 = objc_opt_new();
          v11 = objc_opt_new();
          [v10 setRequest:v11];

          v12 = CKCreateGUID();
          v13 = [v10 request];
          [v13 setOperationUUID:v12];

          v14 = [v10 request];
          [v14 setType:211];

          v15 = objc_opt_new();
          [v10 setRecordRetrieveRequest:v15];

          v16 = +[FCCKProtocolTranslator sharedInstance];
          v17 = [(FCCKProtocolTranslator *)v16 pRecordIdentifierFromRecordID:v73];
          v18 = [v10 recordRetrieveRequest];
          [v18 setRecordIdentifier:v17];

          v19 = [(NSDictionary *)self->_recordIDsToETags objectForKeyedSubscript:v73];
          v20 = [v10 recordRetrieveRequest];
          [v20 setClientVersionETag:v19];

          if (self->_desiredKeys)
          {
            v21 = objc_opt_new();
            v22 = [v10 recordRetrieveRequest];
            [v22 setRequestedFields:v21];

            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v23 = self->_desiredKeys;
            v24 = [(NSArray *)v23 countByEnumeratingWithState:&v90 objects:location count:16];
            if (v24)
            {
              v25 = *v91;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v91 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v90 + 1) + 8 * i);
                  v28 = objc_opt_new();
                  [v28 setName:v27];
                  v29 = [v10 recordRetrieveRequest];
                  v30 = [v29 requestedFields];
                  [v30 addFields:v28];
                }

                v24 = [(NSArray *)v23 countByEnumeratingWithState:&v90 objects:location count:16];
              }

              while (v24);
            }
          }
        }

        else
        {
          v10 = 0;
        }

        [newValue addObject:v10];
        v31 = [v10 request];
        v32 = [v31 operationUUID];
        [v69 setObject:v73 forKey:v32];

        ++v9;
      }

      while (v9 != v70);
      v33 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v94 count:16];
      v70 = v33;
    }

    while (v33);
  }

  v34 = [FCCKDirectRequestOperation alloc];
  if (self)
  {
    v35 = self->_database;
  }

  else
  {
    v35 = 0;
  }

  v36 = [(FCCKContentDatabase *)v35 networkReachability];
  v37 = [(FCCKDirectRequestOperation *)v34 initWithNetworkReachability:v36];

  if (v37)
  {
    *(v37 + 408) = 1;
  }

  if (self)
  {
    v39 = [(FCCKContentDatabase *)self->_database baseURLForRecordFetch];
    if (v37)
    {
      objc_setProperty_nonatomic_copy(v37, v38, v39, 392);
    }

    v40 = self->_database;
  }

  else
  {
    v61 = [0 baseURLForRecordFetch];
    if (v37)
    {
      objc_setProperty_nonatomic_copy(v37, v60, v61, 392);
    }

    v40 = 0;
  }

  v42 = [(FCCKContentDatabase *)v40 containerIdentifier];
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v41, v42, 400);
  }

  if (self)
  {
    v43 = [(FCCKContentDatabase *)self->_database isProductionEnvironment];
    if (v37)
    {
      *(v37 + 376) = v43;
      objc_setProperty_nonatomic_copy(v37, v44, newValue, 384);
      objc_setProperty_nonatomic_copy(v37, v45, v66, 416);
    }

    v46 = self;
    v47 = self->_database;
  }

  else
  {
    v62 = [0 isProductionEnvironment];
    if (v37)
    {
      *(v37 + 376) = v62;
      objc_setProperty_nonatomic_copy(v37, v63, newValue, 384);
      objc_setProperty_nonatomic_copy(v37, v64, v66, 416);
    }

    v47 = 0;
    v46 = 0;
  }

  v48 = v46 == 0;
  v49 = [(FCCKContentDatabase *)v47 networkBehaviorMonitor];
  [(FCCKDirectRequestOperation *)v37 setNetworkBehaviorMonitor:v49];

  if (v48)
  {
    if (!v37)
    {
      goto LABEL_48;
    }

    optimizationPolicy = 0;
    *(v37 + 380) = 0;
    goto LABEL_47;
  }

  if (v37)
  {
    *(v37 + 380) = self->_networkEventType;
    optimizationPolicy = self->_optimizationPolicy;
LABEL_47:
    *(v37 + 440) = optimizationPolicy;
    objc_setProperty_nonatomic_copy(v37, v50, &__block_literal_global_23_0, 448);
  }

LABEL_48:
  v52 = [MEMORY[0x1E695DF90] dictionary];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_8;
  v79[3] = &unk_1E7C47AD0;
  v54 = v52;
  v80 = v54;
  v81 = self;
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v53, v79, 456);
  }

  objc_initWeak(location, v37);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_10;
  v74[3] = &unk_1E7C47AF8;
  v55 = v69;
  v75 = v55;
  v76 = self;
  v56 = v54;
  v77 = v56;
  objc_copyWeak(&v78, location);
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v57, v74, 464);
  }

  [(FCOperation *)self associateChildOperation:v37];
  if ([(FCOperation *)self relativePriority]< 1)
  {
    v58 = [MEMORY[0x1E696ADC8] fc_throttledCKRequestOperationQueue];
    [v58 addOperation:v37];
  }

  else
  {
    [v37 start];
  }

  objc_destroyWeak(&v78);

  objc_destroyWeak(location);
LABEL_56:

  v59 = *MEMORY[0x1E69E9840];
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) relativePriority];
  v5 = 300;
  if (!v4)
  {
    v5 = 200;
  }

  if (v4 == -1)
  {
    v5 = 100;
  }

  v6 = [v3 stringWithFormat:@"%lu", v5];
  [v8 setObject:v6 forKeyedSubscript:@"X-Apple-CloudKit-Request-Priority"];

  v7 = *(a1 + 32);
  if (v7 && *(v7 + 368) == 1)
  {
    [v8 setObject:@"true" forKeyedSubscript:@"X-Apple-Permanent-Asset-URLs"];
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 416);
      if (v10)
      {
        (*(v10 + 16))(v10, v11, v7, v8);
      }
    }
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
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
      v12 = [v10 arrayByAddingObject:v5];
      v13 = 0;
    }

    else
    {
      v16[0] = v5;
      v13 = 1;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v8 = 0;
      v12 = v10;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v11, v12, 432);
    }

    if ((v13 & 1) == 0)
    {
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FCCKProtocolTranslator sharedInstance];
  v13 = [(FCCKProtocolTranslator *)v4 recordFromPRecord:v3];

  v5 = v13;
  if (v13)
  {
    v6 = v13;
    v7 = *(a1 + 32);
    v8 = [v6 recordID];
    [v7 setObject:v6 forKey:v8];

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 416);
      if (v10)
      {
        v11 = v10;
        v12 = [v6 recordID];
        (v10)[2](v11, v6, v12, 0);
      }
    }

    v5 = v13;
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v41 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        v14 = 0;
        do
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * v14);
          v16 = *(a1 + 32);
          v17 = [v15 response];
          v18 = [v17 operationUUID];
          v19 = [v16 objectForKey:v18];

          if (v19)
          {
            v20 = [v15 response];
            v21 = [v20 operationUUID];
            v22 = [v41 objectForKey:v21];

            if (v22)
            {
              [v9 setObject:v22 forKey:v19];
              v23 = *(a1 + 40);
              if (v23)
              {
                v24 = *(v23 + 416);
                if (v24)
                {
                  v25 = *(v24 + 16);
                  goto LABEL_12;
                }
              }
            }

            else
            {
              v26 = [*(a1 + 48) objectForKey:v19];

              if (!v26)
              {
                v27 = *(a1 + 40);
                if (v27)
                {
                  v28 = *(v27 + 416);
                  if (v28)
                  {
                    v25 = *(v28 + 16);
LABEL_12:
                    v25();
                  }
                }
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v29 = [v10 countByEnumeratingWithState:&v42 objects:v49 count:16];
        v12 = v29;
      }

      while (v29);
    }

    if ([v9 count])
    {
      v47 = *MEMORY[0x1E695B798];
      v48 = v9;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v31 = [MEMORY[0x1E695B978] errorWithCode:1011 userInfo:v30 format:@"Failed to fetch some records"];
      v8 = [v31 CKClientSuitableError];
    }

    else
    {
      v8 = 0;
    }

    v7 = v40;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v33 = WeakRetained;
  if (WeakRetained)
  {
    v34 = *(WeakRetained + 59);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v46 = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v38 = *(a1 + 40);
  if (v38)
  {
    objc_setProperty_nonatomic_copy(v38, v36, v37, 432);
  }

  [*(a1 + 40) finishedPerformingOperationWithError:v8];
  v39 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695B778]];

  if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't return errors from the internal domain"];
    v12 = 136315906;
    v13 = "[FCCKContentFetchOperation operationWillFinishWithError:]";
    v14 = 2080;
    v15 = "FCCKContentFetchOperation.m";
    v16 = 1024;
    v17 = 188;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    database = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  database = self->_database;
LABEL_5:
  [(FCCKContentDatabase *)database maximumRetryAfterForCK];
  v8 = [v4 fc_errorWithMaximumRetryAfter:?];

  if (self)
  {
    fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
    if (fetchRecordsCompletionBlock)
    {
      fetchRecordsCompletionBlock[2](fetchRecordsCompletionBlock, v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDatabase:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 376), a2);
  }
}

- (void)setRecordIDsToETags:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 392), a2);
  }
}

@end