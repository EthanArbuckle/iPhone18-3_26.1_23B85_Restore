@interface BCSRemoteFetchCloudKit
- (BCSRemoteFetchCloudKit)initWithEnvironment:(id)environment database:(id)database databaseContainer:(id)container queryOperationFactory:(id)factory coalesceHelper:(id)helper bloomFilterExtractor:(id)extractor operationGroupFactory:(id)groupFactory metricFactory:(id)self0;
- (id)_queryOperationForQuery:(void *)query clientBundleID:(void *)d systemTask:(void *)task requestSpecificAdditionalHTTPHeaders:(uint64_t)headers type:(void *)type singleFetchCompletion:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)shardItemFromURL:(id)l type:(int64_t)type;
- (id)succinctDescription;
- (void)_configureOperationForQuery:(void *)query clientBundleID:(void *)d systemTask:(void *)task requestSpecificAdditionalHTTPHeaders:(uint64_t)headers type:;
- (void)fetchConfigItemWithType:(int64_t)type clientBundleID:(id)d systemTask:(id)task completion:(id)completion;
- (void)fetchItemsWithBucketStartIndex:(int64_t)index endIndex:(int64_t)endIndex type:(int64_t)type forClientBundleID:(id)d completion:(id)completion;
- (void)fetchMegashardItemWithType:(int64_t)type clientBundleID:(id)d systemTask:(id)task completion:(id)completion;
- (void)fetchShardMatching:(id)matching clientBundleID:(id)d completion:(id)completion;
@end

@implementation BCSRemoteFetchCloudKit

- (BCSRemoteFetchCloudKit)initWithEnvironment:(id)environment database:(id)database databaseContainer:(id)container queryOperationFactory:(id)factory coalesceHelper:(id)helper bloomFilterExtractor:(id)extractor operationGroupFactory:(id)groupFactory metricFactory:(id)self0
{
  metricFactoryCopy = metricFactory;
  groupFactoryCopy = groupFactory;
  extractorCopy = extractor;
  extractorCopy2 = extractor;
  helperCopy = helper;
  helperCopy2 = helper;
  factoryCopy = factory;
  factoryCopy2 = factory;
  containerCopy = container;
  containerCopy2 = container;
  databaseCopy = database;
  databaseCopy2 = database;
  obj = environment;
  environmentCopy = environment;
  v24 = objc_alloc_init(BCSCloudKitQueryProvider);
  v25 = environmentCopy;
  v26 = databaseCopy2;
  v43 = containerCopy2;
  v27 = v24;
  v28 = factoryCopy2;
  v29 = helperCopy2;
  v30 = extractorCopy2;
  v31 = groupFactoryCopy;
  v32 = metricFactoryCopy;
  if (self)
  {
    v44.receiver = self;
    v44.super_class = BCSRemoteFetchCloudKit;
    v33 = [(BCSRemoteFetchCloudKit *)&v44 init];
    self = v33;
    if (v33)
    {
      objc_storeStrong(&v33->_environment, obj);
      objc_storeStrong(&self->_database, databaseCopy);
      objc_storeStrong(&self->_databaseContainer, containerCopy);
      objc_storeStrong(&self->_queryProvider, v24);
      objc_storeStrong(&self->_queryOperationFactory, factoryCopy);
      objc_storeStrong(&self->_coalesceHelper, helperCopy);
      objc_storeStrong(&self->_bloomFilterExtractor, extractorCopy);
      objc_storeStrong(&self->_operationGroupFactory, groupFactory);
      objc_storeStrong(&self->_metricFactory, metricFactory);
    }
  }

  selfCopy = self;
  return selfCopy;
}

- (void)fetchConfigItemWithType:(int64_t)type clientBundleID:(id)d systemTask:(id)task completion:(id)completion
{
  v62[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  taskCopy = task;
  completionCopy = completion;
  v13 = ABSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSRemoteFetchCloudKit fetchConfigItemWithType:clientBundleID:systemTask:completion:]";
    _os_log_debug_impl(&dword_242072000, v13, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    v58 = 0;
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"cloudkit_config_fetch_type_%ld", type];
    v15 = [[BCSCoalesceObjectConfig alloc] initWithCompletionBlock:completionCopy coalesceKey:type];
    if (taskCopy)
    {
      v16 = self ? self->_coalesceHelper : 0;
      if ([(BCSCoalesceHelperProtocol *)v16 isDuplicateRequest:v15])
      {
        v17 = ABSLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[BCSRemoteFetchCloudKit fetchConfigItemWithType:clientBundleID:systemTask:completion:]";
          _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "New request is a scheduled duplicate and already in progress:%s", buf, 0xCu);
        }

        v59 = *MEMORY[0x277CCA450];
        v60 = @"Request is a scheduled duplicate and already in progress";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v19 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v18];
        completionCopy[2](completionCopy, 0, v19);

LABEL_40:
        goto LABEL_41;
      }
    }

    if (self)
    {
      coalesceHelper = self->_coalesceHelper;
    }

    else
    {
      coalesceHelper = 0;
    }

    [(BCSCoalesceHelperProtocol *)coalesceHelper enqueueCoalesceObject:v15 isDuplicateRequest:&v58];
    v21 = v58;
    v22 = ABSLogCommon();
    v18 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[BCSRemoteFetchCloudKit fetchConfigItemWithType:clientBundleID:systemTask:completion:]";
        _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "New request is duplicate and already in progress:%s", buf, 0xCu);
      }

      goto LABEL_40;
    }

    v49 = dCopy;
    v23 = os_signpost_id_generate(v22);

    v48 = type;
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v25 = metricFactory;
    measurementFactory = [(BCSMetricFactoryProtocol *)v25 measurementFactory];
    environment = [(BCSRemoteFetchCloudKit *)self environment];
    v28 = [measurementFactory configCloudKitFetchAndDecodeTimingMeasurementForType:objc_msgSend(environment identifier:{"type"), v23}];

    [v28 begin];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __87__BCSRemoteFetchCloudKit_fetchConfigItemWithType_clientBundleID_systemTask_completion___block_invoke;
    v54[3] = &unk_278D39F58;
    v18 = v28;
    v55 = v18;
    selfCopy = self;
    v57 = v48;
    v46 = MEMORY[0x245D07100](v54);
    if (self)
    {
      v29 = self->_metricFactory;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    measurementFactory2 = [(BCSMetricFactoryProtocol *)v30 measurementFactory];
    environment2 = [(BCSRemoteFetchCloudKit *)self environment];
    v33 = [measurementFactory2 configCloudKitFetchTimingMeasurementForType:objc_msgSend(environment2 identifier:{"type"), v23}];

    v34 = v33;
    [v33 begin];
    if (self)
    {
      queryProvider = self->_queryProvider;
    }

    else
    {
      queryProvider = 0;
    }

    v36 = [(BCSCloudKitQueryProviding *)queryProvider queryForFetchConfigItemWithType:type];
    v47 = v15;
    v37 = 0;
    if (self)
    {
      if (type <= 2)
      {
        if (type == 1)
        {
          v62[0] = @"X-CloudKit-BusinessChat-QueryName";
          v38 = @"ChatSuggestConfig";
          goto LABEL_34;
        }

        if (type == 2)
        {
          v62[0] = @"X-CloudKit-BusinessLink-QueryName";
          v38 = @"DomainLinkConfig";
          goto LABEL_34;
        }
      }

      else
      {
        switch(type)
        {
          case 3:
            v62[0] = @"X-CloudKit-BusinessCaller-QueryName";
            v38 = @"CallerIdConfig";
            goto LABEL_34;
          case 4:
            v62[0] = @"X-CloudKit-BusinessEmail-QueryName";
            v38 = @"BrandedEmailConfig";
            goto LABEL_34;
          case 5:
            v62[0] = @"X-CloudKit-WebPresentment-QueryName";
            v38 = @"WebPresentmentConfig";
LABEL_34:
            *buf = v38;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
            break;
        }
      }
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __87__BCSRemoteFetchCloudKit_fetchConfigItemWithType_clientBundleID_systemTask_completion___block_invoke_90;
    v50[3] = &unk_278D39F80;
    v39 = v34;
    v51 = v39;
    typeCopy = type;
    v40 = v46;
    v52 = v40;
    v41 = v36;
    v42 = [(BCSRemoteFetchCloudKit *)&self->super.isa _queryOperationForQuery:v36 clientBundleID:v49 systemTask:taskCopy requestSpecificAdditionalHTTPHeaders:v37 type:type singleFetchCompletion:v50];

    if ((type - 1) <= 4)
    {
      keysRequestedForCloudKitFetch = [(__objc2_class *)*off_278D3A180[type - 1] keysRequestedForCloudKitFetch];
      [v42 setDesiredKeys:keysRequestedForCloudKitFetch];
    }

    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    dCopy = v49;
    [(BCSCloudKitDatabaseProtocol *)database addOperation:v42];

    v15 = v47;
    type = v48;
    goto LABEL_40;
  }

LABEL_41:

  v45 = *MEMORY[0x277D85DE8];
}

void __87__BCSRemoteFetchCloudKit_fetchConfigItemWithType_clientBundleID_systemTask_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  [v8 dequeueCoalesceObjectsForCoalesceKey:*(a1 + 48)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 configCompletionBlock];
          (*(v15 + 16))(v15, v5, v6);
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v22 = "[BCSRemoteFetchCloudKit fetchConfigItemWithType:clientBundleID:systemTask:completion:]_block_invoke";
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Wrong type of completion block added to config pool:%s", buf, 0xCu);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __87__BCSRemoteFetchCloudKit_fetchConfigItemWithType_clientBundleID_systemTask_completion___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (v5 && !v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromBCSType(*(a1 + 48));
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "Query returned, parsing config with type: %@", buf, 0xCu);
    }

    v9 = *(a1 + 48) - 1;
    if (v9 <= 4 && (v10 = [objc_alloc(*off_278D3A180[v9]) initWithRecord:v5]) != 0)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "CKFetch config item - CKRecord has incorrect format", buf, 2u);
      }

      v21 = *MEMORY[0x277CCA450];
      v22 = @"Fetch config item failed - CKRecord has incorrect format";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [BCSError errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v15];

      v11 = 0;
    }

    (*(*(a1 + 40) + 16))();

LABEL_19:
    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Fetch config item failed, nothing returned from fetch";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v16];

    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = 0;
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "CKFetch config item - error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  v13 = ABSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&dword_242072000, v13, OS_LOG_TYPE_DEFAULT, "CKFetch config item - error: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_queryOperationForQuery:(void *)query clientBundleID:(void *)d systemTask:(void *)task requestSpecificAdditionalHTTPHeaders:(uint64_t)headers type:(void *)type singleFetchCompletion:
{
  queryCopy = query;
  dCopy = d;
  taskCopy = task;
  if (self)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __140__BCSRemoteFetchCloudKit__queryOperationForQuery_clientBundleID_systemTask_requestSpecificAdditionalHTTPHeaders_type_singleFetchCompletion___block_invoke;
    v25[3] = &unk_278D3A0C0;
    v25[4] = self;
    v26 = queryCopy;
    v27 = dCopy;
    v28 = taskCopy;
    headersCopy = headers;
    typeCopy = type;
    v17 = a2;
    v18 = MEMORY[0x245D07100](v25);
    v19 = v17;
    v20 = v18;
    v21 = typeCopy;
    self = [self[5] makeQueryOperation];
    [self setQuery:v19];
    v20[2](v20, self);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v37 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __91__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_singleFetchCompletion___block_invoke;
    v33[3] = &unk_278D3A0E8;
    v35 = v36;
    v22 = v21;
    v34 = v22;
    [self setRecordFetchedBlock:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __91__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_singleFetchCompletion___block_invoke_2;
    v30[3] = &unk_278D3A110;
    v32 = v36;
    v23 = v22;
    v31 = v23;
    [self setQueryCompletionBlock:v30];

    _Block_object_dispose(v36, 8);
  }

  return self;
}

- (void)fetchShardMatching:(id)matching clientBundleID:(id)d completion:(id)completion
{
  v55[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  dCopy = d;
  completionCopy = completion;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSRemoteFetchCloudKit fetchShardMatching:clientBundleID:completion:]";
    _os_log_debug_impl(&dword_242072000, v11, OS_LOG_TYPE_DEBUG, "%s@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v53 = 0;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"cloudkit_shard_fetch_type_%ld_start_%lld_count_%lld", objc_msgSend(matchingCopy, "type"), objc_msgSend(matchingCopy, "startIndex"), objc_msgSend(matchingCopy, "shardCount")];
    v13 = [[BCSCoalesceObjectShard alloc] initWithCompletionBlock:completionCopy coalesceKey:v12];
    v14 = dCopy;
    if (self)
    {
      coalesceHelper = self->_coalesceHelper;
    }

    else
    {
      coalesceHelper = 0;
    }

    [(BCSCoalesceHelperProtocol *)coalesceHelper enqueueCoalesceObject:v13 isDuplicateRequest:&v53];
    v16 = v53;
    v17 = ABSLogCommon();
    v18 = v17;
    if (v16 == 1)
    {
      dCopy = v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[BCSRemoteFetchCloudKit fetchShardMatching:clientBundleID:completion:]";
        _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "New request is duplicate and already in progress:%s", buf, 0xCu);
      }

LABEL_36:

      goto LABEL_37;
    }

    v43 = v13;
    v19 = os_signpost_id_generate(v17);

    v44 = v12;
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v21 = metricFactory;
    measurementFactory = [(BCSMetricFactoryProtocol *)v21 measurementFactory];
    environment = [(BCSRemoteFetchCloudKit *)self environment];
    v24 = [measurementFactory shardCloudKitFetchAndDecodeTimingMeasurementForType:objc_msgSend(environment identifier:{"type"), v19}];

    [v24 begin];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __71__BCSRemoteFetchCloudKit_fetchShardMatching_clientBundleID_completion___block_invoke;
    v49[3] = &unk_278D39FA8;
    v18 = v24;
    v50 = v18;
    selfCopy = self;
    v52 = v44;
    v42 = MEMORY[0x245D07100](v49);
    if (self)
    {
      v25 = self->_metricFactory;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    measurementFactory2 = [(BCSMetricFactoryProtocol *)v26 measurementFactory];
    environment2 = [(BCSRemoteFetchCloudKit *)self environment];
    v29 = [measurementFactory2 shardCloudKitFetchTimingMeasurementForType:objc_msgSend(environment2 identifier:{"type"), v19}];

    [v29 begin];
    if (self)
    {
      queryProvider = self->_queryProvider;
    }

    else
    {
      queryProvider = 0;
    }

    dCopy = v14;
    v31 = [(BCSCloudKitQueryProviding *)queryProvider queryForFetchShardIdentifier:matchingCopy];
    type = [matchingCopy type];
    v33 = 0;
    if (self)
    {
      if (type > 3)
      {
        switch(type)
        {
          case 4:
            v55[0] = @"X-CloudKit-BusinessCaller-QueryName";
            v34 = @"CallerIdFilter";
            goto LABEL_29;
          case 5:
            v55[0] = @"X-CloudKit-BusinessEmail-QueryName";
            v34 = @"BrandedEmailFilter";
            goto LABEL_29;
          case 6:
            v55[0] = @"X-CloudKit-WebPresentment-QueryName";
            v34 = @"WebPresentmentFilter";
            goto LABEL_29;
        }
      }

      else
      {
        switch(type)
        {
          case 1:
            v55[0] = @"X-CloudKit-BusinessChat-QueryName";
            v34 = @"ChatSuggestFilter";
            goto LABEL_29;
          case 2:
            v55[0] = @"X-CloudKit-BusinessLink-QueryName";
            v34 = @"BusinessLinkFilterV2";
            goto LABEL_29;
          case 3:
            v55[0] = @"X-CloudKit-BusinessLink-QueryName";
            v34 = @"DomainShard";
LABEL_29:
            *buf = v34;
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
            break;
        }
      }
    }

    type2 = [matchingCopy type];
    if ((type2 - 2) > 4)
    {
      v36 = 1;
    }

    else
    {
      v36 = qword_2420E92C8[type2 - 2];
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __71__BCSRemoteFetchCloudKit_fetchShardMatching_clientBundleID_completion___block_invoke_105;
    v45[3] = &unk_278D39FD0;
    v46 = v29;
    v47 = matchingCopy;
    v48 = v42;
    v37 = v42;
    v38 = v29;
    v39 = [(BCSRemoteFetchCloudKit *)&self->super.isa _queryOperationForQuery:v31 clientBundleID:dCopy systemTask:0 requestSpecificAdditionalHTTPHeaders:v33 type:v36 singleFetchCompletion:v45];

    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    v13 = v43;
    [(BCSCloudKitDatabaseProtocol *)database addOperation:v39];

    v12 = v44;
    goto LABEL_36;
  }

LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
}

void __71__BCSRemoteFetchCloudKit_fetchShardMatching_clientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  [v8 dequeueCoalesceObjectsForCoalesceKey:*(a1 + 48)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 shardCompletionBlock];
          (*(v15 + 16))(v15, v5, v6);
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v22 = "[BCSRemoteFetchCloudKit fetchShardMatching:clientBundleID:completion:]_block_invoke";
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Wrong type of completion block added to shard pool:%s", buf, 0xCu);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__BCSRemoteFetchCloudKit_fetchShardMatching_clientBundleID_completion___block_invoke_105(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (v5 && !v6)
  {
    v7 = [*(a1 + 40) type];
    v8 = off_278D38430;
    if (v7 != 3)
    {
      v8 = off_278D38448;
    }

    v9 = [objc_alloc(*v8) initWithRecord:v5 type:{objc_msgSend(*(a1 + 40), "type")}];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "CKFetch shard item - CKRecord has incorrect format", buf, 2u);
      }

      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Fetch shard item failed - CKRecord has incorrect format";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v10 = [BCSError errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v15];
    }

    (*(*(a1 + 48) + 16))();

LABEL_18:
    goto LABEL_19;
  }

  if (!v6)
  {
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Fetch shard item failed, nothing returned from fetch";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v12];

    v13 = ABSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_242072000, v13, OS_LOG_TYPE_DEFAULT, "CKFetch shard item - error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "CKFetch shard item - error: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchMegashardItemWithType:(int64_t)type clientBundleID:(id)d systemTask:(id)task completion:(id)completion
{
  v59[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  taskCopy = task;
  completionCopy = completion;
  v13 = ABSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSRemoteFetchCloudKit fetchMegashardItemWithType:clientBundleID:systemTask:completion:]";
    _os_log_debug_impl(&dword_242072000, v13, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    v55 = 0;
    type = [MEMORY[0x277CCACA8] stringWithFormat:@"cloudkit_config_and_shard_fetch_type_%ld", type];
    v15 = [[BCSCoalesceObjectMegashard alloc] initWithCompletionBlock:completionCopy coalesceKey:type];
    if (taskCopy)
    {
      v16 = self ? self->_coalesceHelper : 0;
      if ([(BCSCoalesceHelperProtocol *)v16 isDuplicateRequest:v15])
      {
        v17 = ABSLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[BCSRemoteFetchCloudKit fetchMegashardItemWithType:clientBundleID:systemTask:completion:]";
          _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "New request is a scheduled duplicate and already in progress:%s", buf, 0xCu);
        }

        v56 = *MEMORY[0x277CCA450];
        v57 = @"Request is a scheduled duplicate and already in progress";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v19 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v18];
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v19);

        goto LABEL_37;
      }
    }

    if (self)
    {
      coalesceHelper = self->_coalesceHelper;
    }

    else
    {
      coalesceHelper = 0;
    }

    [(BCSCoalesceHelperProtocol *)coalesceHelper enqueueCoalesceObject:v15 isDuplicateRequest:&v55];
    v21 = v55;
    v22 = ABSLogCommon();
    v18 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[BCSRemoteFetchCloudKit fetchMegashardItemWithType:clientBundleID:systemTask:completion:]";
        _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "New request is duplicate and already in progress:%s", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v45 = dCopy;
    v23 = os_signpost_id_generate(v22);

    v44 = type;
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v25 = metricFactory;
    measurementFactory = [(BCSMetricFactoryProtocol *)v25 measurementFactory];
    environment = [(BCSRemoteFetchCloudKit *)self environment];
    v28 = [measurementFactory megashardCloudKitFetchAndDecodeTimingMeasurementForType:objc_msgSend(environment identifier:{"type"), v23}];

    [v28 begin];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke;
    v51[3] = &unk_278D39FF8;
    v18 = v28;
    v52 = v18;
    selfCopy = self;
    v54 = v44;
    v43 = MEMORY[0x245D07100](v51);
    if (self)
    {
      v29 = self->_metricFactory;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    measurementFactory2 = [(BCSMetricFactoryProtocol *)v30 measurementFactory];
    environment2 = [(BCSRemoteFetchCloudKit *)self environment];
    v33 = [measurementFactory2 megashardCloudKitFetchTimingMeasurementForType:objc_msgSend(environment2 identifier:{"type"), v23}];

    [v33 begin];
    if (self)
    {
      queryProvider = self->_queryProvider;
    }

    else
    {
      queryProvider = 0;
    }

    v35 = [(BCSCloudKitQueryProviding *)queryProvider queryForFetchConfigItemWithType:type];
    v36 = 0;
    if (self)
    {
      if (type <= 2)
      {
        if (type == 1)
        {
          v59[0] = @"X-CloudKit-BusinessChat-QueryName";
          v37 = @"ChatSuggestConfigMegashard";
          goto LABEL_33;
        }

        if (type == 2)
        {
          v59[0] = @"X-CloudKit-BusinessLink-QueryName";
          v37 = @"DomainLinkConfigMegashards";
          goto LABEL_33;
        }
      }

      else
      {
        if (type == 3 || type == 4)
        {
          v59[0] = @"X-CloudKit-BusinessCaller-QueryName";
          v37 = @"BrandedEmailConfigMegashard";
          goto LABEL_33;
        }

        if (type == 5)
        {
          v59[0] = @"X-CloudKit-WebPresentment-QueryName";
          v37 = @"WebPresentmentConfigMegashard";
LABEL_33:
          *buf = v37;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v59 count:1];
        }
      }
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke_119;
    v46[3] = &unk_278D3A048;
    v47 = v33;
    selfCopy2 = self;
    v49 = v43;
    typeCopy = type;
    v38 = v43;
    v39 = v33;
    v40 = [(BCSRemoteFetchCloudKit *)&self->super.isa _queryOperationForQuery:v35 clientBundleID:v45 systemTask:taskCopy requestSpecificAdditionalHTTPHeaders:v36 type:type singleFetchCompletion:v46];

    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    type = v44;
    [(BCSCloudKitDatabaseProtocol *)database addOperation:v40];

    dCopy = v45;
LABEL_37:
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [*(a1 + 32) end];
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(v13 + 56);
  }

  else
  {
    v14 = 0;
  }

  [v14 dequeueCoalesceObjectsForCoalesceKey:*(a1 + 48)];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v26 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = [v20 megashardCompletionBlock];
          (*(v21 + 16))(v21, v9, v10, v11, v12);
        }

        else
        {
          v21 = ABSLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v28 = "[BCSRemoteFetchCloudKit fetchMegashardItemWithType:clientBundleID:systemTask:completion:]_block_invoke";
            _os_log_error_impl(&dword_242072000, v21, OS_LOG_TYPE_ERROR, "Wrong type of completion block added to bloom filter and config pool:%s", buf, 0xCu);
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (v5 && !v6)
  {
    v7 = *(a1 + 56);
    v8 = v7 > 4;
    v9 = (1 << v7) & 0x1A;
    if (v8 || v9 == 0)
    {
      v11 = [[BCSDomainConfigItem alloc] initWithRecord:v5];
      v12 = [(BCSDomainConfigItem *)v11 domainMegaShardURL];
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v11 = [[BCSConfigItem alloc] initWithRecord:v5];
      v12 = 0;
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v16 = [(BCSConfigItem *)v11 filterMegaShardURL];
    v17 = v16 | v12;

    if (v17)
    {
      v18 = ABSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(BCSConfigItem *)v11 filterMegaShardURL];
        *buf = 138412290;
        v40 = v19;
        _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "Extracting shard URLs from filter shard URL: %@", buf, 0xCu);
      }

      v20 = MEMORY[0x277CBEA90];
      v21 = [(BCSConfigItem *)v11 filterMegaShardURL];
      v34 = 0;
      v22 = [v20 dataWithContentsOfURL:v21 options:0 error:&v34];
      v23 = v34;

      if (!v22)
      {
        v24 = ABSLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v23;
          _os_log_error_impl(&dword_242072000, v24, OS_LOG_TYPE_ERROR, "Failed to read filter shard from disk: %@", buf, 0xCu);
        }
      }

      v25 = *(a1 + 40);
      if (v25)
      {
        v25 = v25[8];
      }

      v26 = v25;
      v27 = [(BCSConfigItem *)v11 filterMegaShardURL];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke_121;
      v31[3] = &unk_278D3A020;
      v33 = *(a1 + 48);
      v32 = v11;
      [v26 extractShardsURLsFromFilterShardURL:v27 domainShardURL:v12 completion:v31];

      goto LABEL_30;
    }

LABEL_27:
    v28 = ABSLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v28, OS_LOG_TYPE_DEFAULT, "CKFetch megashard item - couldn't extract configItem and/or bloom filter URL", buf, 2u);
    }

    v37 = *MEMORY[0x277CCA450];
    v38 = @"Fetch megashard item failed - CKRecord has incorrect format";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v23 = [BCSError errorWithDomain:@"com.apple.businessservices" code:40 userInfo:v29];

    (*(*(a1 + 48) + 16))();
LABEL_30:

LABEL_31:
    goto LABEL_32;
  }

  if (!v6)
  {
    v35 = *MEMORY[0x277CCA450];
    v36 = @"Fetch megashard item failed, nothing returned from fetch";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v11 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v14];

    v15 = ABSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = 0;
      _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "CKFetch megashard item - error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_31;
  }

  v13 = ABSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v6;
    _os_log_impl(&dword_242072000, v13, OS_LOG_TYPE_DEFAULT, "CKFetch megshard item - error: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_32:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __90__BCSRemoteFetchCloudKit_fetchMegashardItemWithType_clientBundleID_systemTask_completion___block_invoke_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (a4)
  {
    return (*(v5 + 16))(v5, 0, 0, 0, a4);
  }

  else
  {
    return (*(v5 + 16))(v5, a2, a3, *(a1 + 32));
  }
}

- (void)fetchItemsWithBucketStartIndex:(int64_t)index endIndex:(int64_t)endIndex type:(int64_t)type forClientBundleID:(id)d completion:(id)completion
{
  v83 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v14 = ABSLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSRemoteFetchCloudKit fetchItemsWithBucketStartIndex:endIndex:type:forClientBundleID:completion:]";
    _os_log_debug_impl(&dword_242072000, v14, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  }

  if (completionCopy)
  {
    v69 = 0;
    endIndex = [MEMORY[0x277CCACA8] stringWithFormat:@"cloudkit_item_fetch_type_%ld_start_%lld_end_%lld", type, index, endIndex];
    v16 = [[BCSCoalesceObjectItems alloc] initWithCompletionBlock:completionCopy coalesceKey:endIndex];
    if (self)
    {
      coalesceHelper = self->_coalesceHelper;
    }

    else
    {
      coalesceHelper = 0;
    }

    v59 = v16;
    [(BCSCoalesceHelperProtocol *)coalesceHelper enqueueCoalesceObject:v16 isDuplicateRequest:&v69];
    v18 = v69;
    v19 = ABSLogCommon();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[BCSRemoteFetchCloudKit fetchItemsWithBucketStartIndex:endIndex:type:forClientBundleID:completion:]";
        _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "New request is duplicate and already in progress:%s", &buf, 0xCu);
      }

LABEL_33:

      goto LABEL_34;
    }

    v58 = dCopy;
    v21 = os_signpost_id_generate(v19);

    v57 = endIndex;
    if (self)
    {
      metricFactory = self->_metricFactory;
    }

    else
    {
      metricFactory = 0;
    }

    v23 = metricFactory;
    measurementFactory = [(BCSMetricFactoryProtocol *)v23 measurementFactory];
    environment = [(BCSRemoteFetchCloudKit *)self environment];
    v26 = [measurementFactory itemCloudKitFetchAndDecodeTimingMeasurementForType:objc_msgSend(environment identifier:{"type"), v21}];

    [v26 begin];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __100__BCSRemoteFetchCloudKit_fetchItemsWithBucketStartIndex_endIndex_type_forClientBundleID_completion___block_invoke;
    v65[3] = &unk_278D3A070;
    v20 = v26;
    v66 = v20;
    selfCopy = self;
    v68 = v57;
    v54 = MEMORY[0x245D07100](v65);
    if (self)
    {
      v27 = self->_metricFactory;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    measurementFactory2 = [(BCSMetricFactoryProtocol *)v28 measurementFactory];
    environment2 = [(BCSRemoteFetchCloudKit *)self environment];
    v31 = [measurementFactory2 itemCloudKitFetchTimingMeasurementForType:objc_msgSend(environment2 identifier:{"type"), v21}];

    [v31 begin];
    if (self)
    {
      queryProvider = self->_queryProvider;
    }

    else
    {
      queryProvider = 0;
    }

    v33 = [(BCSCloudKitQueryProviding *)queryProvider queryForFetchItemsWithStartIndex:index endIndex:endIndex type:type];
    v34 = 0;
    if (self)
    {
      if (type <= 2)
      {
        if (type == 1)
        {
          v80[0] = @"X-CloudKit-BusinessChat-QueryName";
          v35 = @"ChatSuggest";
          goto LABEL_27;
        }

        if (type == 2)
        {
          v80[0] = @"X-CloudKit-BusinessLink-QueryName";
          v35 = @"BusinessLinkV2";
          goto LABEL_27;
        }
      }

      else
      {
        switch(type)
        {
          case 3:
            v80[0] = @"X-CloudKit-BusinessCaller-QueryName";
            v35 = @"CallerId";
            goto LABEL_27;
          case 4:
            v80[0] = @"X-CloudKit-BusinessCaller-QueryName";
            v35 = @"BrandedEmail";
            goto LABEL_27;
          case 5:
            v80[0] = @"X-CloudKit-WebPresentment-QueryName";
            v35 = @"WebPresentment";
LABEL_27:
            *&buf = v35;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v80 count:1];
            break;
        }
      }
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __100__BCSRemoteFetchCloudKit_fetchItemsWithBucketStartIndex_endIndex_type_forClientBundleID_completion___block_invoke_134;
    v60[3] = &unk_278D3A098;
    v61 = v31;
    selfCopy2 = self;
    v63 = v54;
    typeCopy = type;
    v55 = v54;
    v53 = v31;
    v36 = v58;
    v37 = v34;
    v56 = v33;
    v52 = v36;
    if (self)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v73 = __142__BCSRemoteFetchCloudKit__queryOperationForQuery_clientBundleID_systemTask_requestSpecificAdditionalHTTPHeaders_type_multipleFetchCompletion___block_invoke;
      v74 = &unk_278D3A0C0;
      selfCopy3 = self;
      v76 = v36;
      v77 = 0;
      v78 = v37;
      typeCopy2 = type;
      v38 = v60;
      v39 = v33;
      v40 = MEMORY[0x245D07100](&buf);
      v41 = v38;
      queryOperationFactory = self->_queryOperationFactory;
      v43 = v40;
      v44 = v39;
      makeQueryOperation = [(BCSQueryOperationFactoryProtocol *)queryOperationFactory makeQueryOperation];
      [makeQueryOperation setQuery:v44];

      v43[2](v43, makeQueryOperation);
      array = [MEMORY[0x277CBEB18] array];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __93__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_multipleFetchCompletion___block_invoke;
      v70[3] = &unk_278D3A138;
      v47 = array;
      v71 = v47;
      [makeQueryOperation setRecordFetchedBlock:v70];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __93__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_multipleFetchCompletion___block_invoke_2;
      v80[3] = &unk_278D3A160;
      v48 = v41;
      v81 = v47;
      v82 = v48;
      v49 = v47;
      [makeQueryOperation setQueryCompletionBlock:v80];
    }

    else
    {
      makeQueryOperation = 0;
    }

    endIndex = v57;
    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    [(BCSCloudKitDatabaseProtocol *)database addOperation:makeQueryOperation];

    dCopy = v58;
    goto LABEL_33;
  }

LABEL_34:

  v51 = *MEMORY[0x277D85DE8];
}

void __100__BCSRemoteFetchCloudKit_fetchItemsWithBucketStartIndex_endIndex_type_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  [v8 dequeueCoalesceObjectsForCoalesceKey:*(a1 + 48)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 itemsCompletionBlock];
          (*(v15 + 16))(v15, v5, v6);
        }

        else
        {
          v15 = ABSLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v22 = "[BCSRemoteFetchCloudKit fetchItemsWithBucketStartIndex:endIndex:type:forClientBundleID:completion:]_block_invoke";
            _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "Wrong type of completion block added to bloom filter and config pool:%s", buf, 0xCu);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __100__BCSRemoteFetchCloudKit_fetchItemsWithBucketStartIndex_endIndex_type_forClientBundleID_completion___block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (v5 && !v6)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = v5;
    if (!v7)
    {
      v16 = 0;
LABEL_23:

      (*(*(a1 + 48) + 16))();
      goto LABEL_24;
    }

    switch(v8)
    {
      case 3:
        v10 = [BCSBusinessCallerItem itemsFromRecords:v9];
        break;
      case 2:
        v15 = [BCSLinkItemModel linkItemModelsFromRecords:v9];
        v16 = [BCSLinkItem linkItemsFromLinkItemModels:v15];

        goto LABEL_19;
      case 1:
        v10 = [BCSBusinessItem businessItemsFromRecords:v9];
        break;
      default:
        v16 = 0;
LABEL_19:
        if (![v16 count])
        {
          v17 = ABSLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "No items returned from CloudKit results", buf, 2u);
          }
        }

        goto LABEL_23;
    }

    v16 = v10;
    goto LABEL_19;
  }

  if (v6)
  {
    v11 = ABSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "CKFetch items - error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Fetch items failed, nothing returned from fetch";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v12];

    v14 = ABSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = 0;
      _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "CKFetch megashard item - error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)shardItemFromURL:(id)l type:(int64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBCSShardType(type);
    v12 = 138412546;
    v13 = lCopy;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "shardItemFromURL:%@ type:%@", &v12, 0x16u);
  }

  if (type == 3)
  {
    v8 = [[BCSDomainShardItem alloc] initWithURL:lCopy];
  }

  else
  {
    v8 = [[BCSFilterShardItem alloc] initWithURL:lCopy type:type];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCSRemoteFetchCloudKit *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSRemoteFetchCloudKit *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BCSRemoteFetchCloudKit *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_environment withName:@"iCloudEnvironment"];

  return succinctDescriptionBuilder;
}

- (void)_configureOperationForQuery:(void *)query clientBundleID:(void *)d systemTask:(void *)task requestSpecificAdditionalHTTPHeaders:(uint64_t)headers type:
{
  v32 = a2;
  taskCopy = task;
  if (self)
  {
    v12 = MEMORY[0x277CBC5F8];
    dCopy = d;
    queryCopy = query;
    v15 = [v12 alloc];
    v16 = [v15 initWithZoneName:@"_defaultZone" ownerName:*MEMORY[0x277CBBF28]];
    [v32 setZoneID:v16];

    v17 = objc_opt_new();
    environment = [self environment];
    additionalRequestHTTPHeaders = [environment additionalRequestHTTPHeaders];
    v20 = [v17 bs_dictionaryByAddingEntriesFromDictionary:additionalRequestHTTPHeaders];

    v21 = [v20 bs_dictionaryByAddingEntriesFromDictionary:taskCopy];

    configuration = [v32 configuration];
    [configuration setAdditionalRequestHTTPHeaders:v21];

    configuration2 = [v32 configuration];
    [configuration2 setSourceApplicationBundleIdentifier:queryCopy];

    configuration3 = [v32 configuration];
    [configuration3 setSystemTask:dCopy];

    if (!dCopy)
    {
      [v32 setQualityOfService:25];
      configuration4 = [v32 configuration];
      [configuration4 setDiscretionaryNetworkBehavior:0];

      configuration5 = [v32 configuration];
      [configuration5 setAutomaticallyRetryNetworkFailures:0];
    }

    makeOperationGroup = [self[9] makeOperationGroup];
    if (headers <= 2)
    {
      v28 = v32;
      if (headers == 1)
      {
        v29 = @"X-CloudKit-BusinessChat-QueryName";
        goto LABEL_15;
      }

      if (headers == 2)
      {
        v29 = @"X-CloudKit-BusinessLink-QueryName";
        goto LABEL_15;
      }
    }

    else
    {
      v28 = v32;
      switch(headers)
      {
        case 3:
          v30 = [taskCopy objectForKeyedSubscript:@"X-CloudKit-BusinessCaller-QueryName"];
          [makeOperationGroup setName:v30];

          configuration6 = [v32 configuration];
          [configuration6 set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.BrandedCalling"];
LABEL_16:

          v28 = v32;
          break;
        case 4:
          v29 = @"X-CloudKit-BusinessEmail-QueryName";
          goto LABEL_15;
        case 5:
          v29 = @"X-CloudKit-WebPresentment-QueryName";
LABEL_15:
          configuration6 = [taskCopy objectForKeyedSubscript:v29];
          [makeOperationGroup setName:configuration6];
          goto LABEL_16;
      }
    }

    [v28 setGroup:makeOperationGroup];
  }
}

uint64_t __91__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_singleFetchCompletion___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __93__BCSRemoteFetchCloudKit__queryOperationForQuery_configurationBlock_multipleFetchCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))(v4, 0);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32));
  }
}

@end