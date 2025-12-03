@interface FCWebURLResolutionEndpointConnection
+ (id)_bloomFilterScheduler;
+ (id)_sharedProxyingScheduler;
- (FCWebURLResolutionEndpointConnection)init;
- (FCWebURLResolutionEndpointConnection)initWithConfigurationManager:(id)manager cachesDirectoryURL:(id)l networkReachability:(id)reachability;
- (id)_articleIDWithHash:(id)hash lists:(id)lists storeFrontID:(id)d;
- (id)_fetchBloomFilterInfoPromiseWithQualityOfService:(int64_t)service;
- (id)_fetchConfigIfNeededPromiseWithCoreConfiguration:(id)configuration qualityOfService:(int64_t)service;
- (id)_fetchConfigPromiseWithQualityOfService:(int64_t)service;
- (id)_fetchCoreConfigurationIfNeededPromiseWithQualityOfService:(int64_t)service;
- (id)_fetchListsPromiseWithConfig:(id)config coreConfiguration:(id)configuration hash:(id)hash qualityOfService:(int64_t)service;
- (id)_hashOfURLWithWebURL:(id)l config:(id)config;
- (void)_fetchListsPromiseThroughProxy:(BOOL)proxy withResourceURL:(id)l qualityOfService:(int64_t)service completion:(id)completion;
- (void)fetchWebURLBloomFilterInfoWithQualityOfService:(int64_t)service completion:(id)completion;
- (void)resolveWebURL:(id)l withQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCWebURLResolutionEndpointConnection

- (FCWebURLResolutionEndpointConnection)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCWebURLResolutionEndpointConnection init]";
    v10 = 2080;
    v11 = "FCWebURLResolutionEndpointConnection.m";
    v12 = 1024;
    v13 = 45;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCWebURLResolutionEndpointConnection init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCWebURLResolutionEndpointConnection)initWithConfigurationManager:(id)manager cachesDirectoryURL:(id)l networkReachability:(id)reachability
{
  v38 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  lCopy = l;
  reachabilityCopy = reachability;
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configurationManager"];
    *buf = 136315906;
    v31 = "[FCWebURLResolutionEndpointConnection initWithConfigurationManager:cachesDirectoryURL:networkReachability:]";
    v32 = 2080;
    v33 = "FCWebURLResolutionEndpointConnection.m";
    v34 = 1024;
    v35 = 52;
    v36 = 2114;
    v37 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (lCopy)
    {
      goto LABEL_6;
    }
  }

  else if (lCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cachesDirectoryURL"];
    *buf = 136315906;
    v31 = "[FCWebURLResolutionEndpointConnection initWithConfigurationManager:cachesDirectoryURL:networkReachability:]";
    v32 = 2080;
    v33 = "FCWebURLResolutionEndpointConnection.m";
    v34 = 1024;
    v35 = 53;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!reachabilityCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
    *buf = 136315906;
    v31 = "[FCWebURLResolutionEndpointConnection initWithConfigurationManager:cachesDirectoryURL:networkReachability:]";
    v32 = 2080;
    v33 = "FCWebURLResolutionEndpointConnection.m";
    v34 = 1024;
    v35 = 54;
    v36 = 2114;
    v37 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v29.receiver = self;
  v29.super_class = FCWebURLResolutionEndpointConnection;
  v12 = [(FCWebURLResolutionEndpointConnection *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configurationManager, manager);
    v14 = [lCopy copy];
    cachesDirectoryURL = v13->_cachesDirectoryURL;
    v13->_cachesDirectoryURL = v14;

    objc_storeStrong(&v13->_networkReachability, reachability);
    v16 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_152];
    lazyStoreFrontIDPromise = v13->_lazyStoreFrontIDPromise;
    v13->_lazyStoreFrontIDPromise = v16;

    v18 = objc_opt_new();
    canonicalizer = v13->_canonicalizer;
    v13->_canonicalizer = v18;

    v20 = objc_opt_new();
    hasher = v13->_hasher;
    v13->_hasher = v20;

    v22 = objc_opt_new();
    bucketer = v13->_bucketer;
    v13->_bucketer = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

id __108__FCWebURLResolutionEndpointConnection_initWithConfigurationManager_cachesDirectoryURL_networkReachability___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithResolver:&__block_literal_global_17_1];

  return v0;
}

void __108__FCWebURLResolutionEndpointConnection_initWithConfigurationManager_cachesDirectoryURL_networkReachability___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "determining storefront ID", buf, 2u);
  }

  v4 = +[FCAppleAccount sharedAccount];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __108__FCWebURLResolutionEndpointConnection_initWithConfigurationManager_cachesDirectoryURL_networkReachability___block_invoke_19;
  v7[3] = &unk_1E7C37778;
  v8 = v4;
  v9 = v2;
  v5 = v4;
  v6 = v2;
  [v5 loadStoreFrontWithCompletionHandler:v7];
}

void __108__FCWebURLResolutionEndpointConnection_initWithConfigurationManager_cachesDirectoryURL_networkReachability___block_invoke_19(uint64_t a1)
{
  v2 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "loaded storefront ID", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) contentStoreFrontID];
  (*(v3 + 16))(v3, v4);
}

- (void)resolveWebURL:(id)l withQualityOfService:(int64_t)service completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v10 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138739971;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "resolving web URL %{sensitive}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__72;
  v48 = __Block_byref_object_dispose__72;
  v49 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__72;
  v43[4] = __Block_byref_object_dispose__72;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__72;
  v41[4] = __Block_byref_object_dispose__72;
  v42 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke;
  v40[3] = &unk_1E7C396C0;
  v40[4] = self;
  v11 = [MEMORY[0x1E69B68F8] firstly:v40];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2;
  v39[3] = &unk_1E7C452F0;
  v39[4] = self;
  v39[5] = &buf;
  v39[6] = service;
  v12 = [v11 then:v39];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_3;
  v35[3] = &unk_1E7C45318;
  v13 = lCopy;
  v36 = v13;
  selfCopy = self;
  serviceCopy = service;
  v14 = [v12 then:v35];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_27;
  v34[3] = &unk_1E7C45340;
  v34[4] = self;
  v34[5] = v43;
  v34[6] = service;
  v15 = [v14 then:v34];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2_29;
  v29[3] = &unk_1E7C45368;
  v31 = v41;
  v29[4] = self;
  v16 = v13;
  v30 = v16;
  v32 = v43;
  serviceCopy2 = service;
  v17 = [v15 then:v29];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_31;
  v25[3] = &unk_1E7C45390;
  v25[4] = self;
  v27 = v41;
  p_buf = &buf;
  v18 = completionCopy;
  v26 = v18;
  v19 = [v17 then:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2_33;
  v23[3] = &unk_1E7C40A20;
  v23[4] = self;
  v20 = v18;
  v24 = v20;
  v21 = [v19 error:v23];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x1E69E9840];
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) lazyStoreFrontIDPromise];
  v2 = [v1 value];

  return v2;
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) _fetchBloomFilterInfoPromiseWithQualityOfService:*(a1 + 48)];

  return v5;
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 fc_maybeContainsURL:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) _fetchCoreConfigurationIfNeededPromiseWithQualityOfService:*(a1 + 48)];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_4;
    v5[3] = &unk_1E7C396C0;
    v5[4] = *(a1 + 40);
    v3 = __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_4(v5);
  }

  return v3;
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_4(uint64_t a1)
{
  v2 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "bloom filter did not contain domain", v7, 2u);
  }

  v3 = objc_alloc(MEMORY[0x1E69B68F8]);
  v4 = [*(a1 + 32) _bloomFilterError];
  v5 = [v3 initWithError:v4];

  return v5;
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_27(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) _fetchConfigIfNeededPromiseWithCoreConfiguration:*(*(*(a1 + 40) + 8) + 40) qualityOfService:*(a1 + 48)];

  return v5;
}

id __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2_29(void *a1, void *a2)
{
  v3 = a2;
  v4 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "querying bucket", v15, 2u);
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = [v3 bucketGroupConfig];
  v8 = [v5 _hashOfURLWithWebURL:v6 config:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = a1[4];
  v12 = [v3 bucketGroupConfig];
  v13 = [v11 _fetchListsPromiseWithConfig:v12 coreConfiguration:*(*(a1[7] + 8) + 40) hash:*(*(a1[6] + 8) + 40) qualityOfService:a1[8]];

  return v13;
}

uint64_t __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _articleIDWithHash:*(*(*(a1 + 48) + 8) + 40) lists:a2 storeFrontID:*(*(*(a1 + 56) + 8) + 40)];
  (*(*(a1 + 40) + 16))();

  return 0;
}

void __86__FCWebURLResolutionEndpointConnection_resolveWebURL_withQualityOfService_completion___block_invoke_2_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _bloomFilterError];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchWebURLBloomFilterInfoWithQualityOfService:(int64_t)service completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v20 = "[FCWebURLResolutionEndpointConnection fetchWebURLBloomFilterInfoWithQualityOfService:completion:]";
    v21 = 2080;
    v22 = "FCWebURLResolutionEndpointConnection.m";
    v23 = 1024;
    v24 = 130;
    v25 = 2114;
    v26 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __98__FCWebURLResolutionEndpointConnection_fetchWebURLBloomFilterInfoWithQualityOfService_completion___block_invoke;
  v18[3] = &unk_1E7C3CB30;
  v18[4] = self;
  v18[5] = service;
  v7 = [MEMORY[0x1E69B68F8] firstly:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__FCWebURLResolutionEndpointConnection_fetchWebURLBloomFilterInfoWithQualityOfService_completion___block_invoke_2;
  v16[3] = &unk_1E7C453B8;
  v8 = completionCopy;
  v17 = v8;
  v9 = [v7 then:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__FCWebURLResolutionEndpointConnection_fetchWebURLBloomFilterInfoWithQualityOfService_completion___block_invoke_3;
  v14[3] = &unk_1E7C39F48;
  v15 = v8;
  v10 = v8;
  v11 = [v9 error:v14];

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedProxyingScheduler
{
  if (qword_1EDB278A0 != -1)
  {
    dispatch_once(&qword_1EDB278A0, &__block_literal_global_38_3);
  }

  v3 = _MergedGlobals_198;

  return v3;
}

void __64__FCWebURLResolutionEndpointConnection__sharedProxyingScheduler__block_invoke()
{
  v0 = +[FCAssetDownloadOperation sharedURLSession];
  v1 = [v0 configuration];
  v7 = [v1 copy];

  [v7 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
  [v7 set_sourceApplicationSecondaryIdentifier:@"com.apple.news.urlresolution"];
  v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v2 setName:@"FCWebURLResolutionEndpointConnection.bucketDownloadCallbackQueue"];
  v3 = [MEMORY[0x1E696AE30] processInfo];
  [v2 setMaxConcurrentOperationCount:{objc_msgSend(v3, "processorCount")}];

  v4 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v7 delegate:0 delegateQueue:v2];
  v5 = [[FCURLRequestScheduler alloc] initWithURLSession:v4];
  v6 = _MergedGlobals_198;
  _MergedGlobals_198 = v5;
}

+ (id)_bloomFilterScheduler
{
  if (qword_1EDB278B0 != -1)
  {
    dispatch_once(&qword_1EDB278B0, &__block_literal_global_51_3);
  }

  v3 = qword_1EDB278A8;

  return v3;
}

void __61__FCWebURLResolutionEndpointConnection__bloomFilterScheduler__block_invoke()
{
  v0 = +[FCAssetDownloadOperation sharedURLSession];
  v1 = [v0 configuration];
  v6 = [v1 copy];

  v2 = [objc_alloc(MEMORY[0x1E695AC38]) initWithMemoryCapacity:0 diskCapacity:10000000 directoryURL:0];
  [v6 setURLCache:v2];

  [v6 setRequestCachePolicy:0];
  v3 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v6 delegate:0 delegateQueue:0];
  v4 = [[FCURLRequestScheduler alloc] initWithURLSession:v3];
  v5 = qword_1EDB278A8;
  qword_1EDB278A8 = v4;
}

- (id)_fetchCoreConfigurationIfNeededPromiseWithQualityOfService:(int64_t)service
{
  v4 = objc_alloc(MEMORY[0x1E69B68F8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__FCWebURLResolutionEndpointConnection__fetchCoreConfigurationIfNeededPromiseWithQualityOfService___block_invoke;
  v7[3] = &unk_1E7C39ED0;
  v7[4] = self;
  v5 = [v4 initWithResolver:v7];

  return v5;
}

void __99__FCWebURLResolutionEndpointConnection__fetchCoreConfigurationIfNeededPromiseWithQualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configurationManager];
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__FCWebURLResolutionEndpointConnection__fetchCoreConfigurationIfNeededPromiseWithQualityOfService___block_invoke_2;
  v7[3] = &unk_1E7C39EA8;
  v8 = v3;
  v6 = v3;
  [v4 fetchConfigurationIfNeededWithCompletionQueue:v5 completion:v7];
}

- (id)_fetchConfigIfNeededPromiseWithCoreConfiguration:(id)configuration qualityOfService:(int64_t)service
{
  v37 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "coreConfiguration"];
    *buf = 136315906;
    *v34 = "[FCWebURLResolutionEndpointConnection _fetchConfigIfNeededPromiseWithCoreConfiguration:qualityOfService:]";
    *&v34[8] = 2080;
    *&v34[10] = "FCWebURLResolutionEndpointConnection.m";
    *&v34[18] = 1024;
    *&v34[20] = 187;
    v35 = 2114;
    v36 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  cachesDirectoryURL = [(FCWebURLResolutionEndpointConnection *)self cachesDirectoryURL];
  v8 = [cachesDirectoryURL URLByAppendingPathComponent:@"bucketGroupConfigResponse3"];

  v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v8];
  v10 = [objc_alloc(MEMORY[0x1E69B6D28]) initWithData:v9];
  v11 = v10;
  if (!v10)
  {
    v24 = FCWebURLResolutionLog;
    if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "fetching new bucket group config because we have no cached data", buf, 2u);
    }

    goto LABEL_15;
  }

  selfCopy = self;
  serviceCopy = service;
  bucketGroupConfig = [v10 bucketGroupConfig];
  validUntilDate = [bucketGroupConfig validUntilDate];

  v15 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:validUntilDate];
  bucketGroupConfig2 = [v11 bucketGroupConfig];
  version = [bucketGroupConfig2 version];

  minimumBucketGroupConfigVersion = [configurationCopy minimumBucketGroupConfigVersion];
  date = [MEMORY[0x1E695DF00] date];
  v20 = [date fc_isEarlierThan:v15];

  v21 = FCWebURLResolutionLog;
  v22 = os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT);
  if (!v20 || minimumBucketGroupConfigVersion > version)
  {
    service = serviceCopy;
    if (v22)
    {
      *buf = 67109634;
      *v34 = version;
      *&v34[4] = 2114;
      *&v34[6] = v15;
      *&v34[14] = 2048;
      *&v34[16] = minimumBucketGroupConfigVersion;
      _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "fetching new bucket group config of version %d because expiration date %{public}@ was in the past or cached version did not meet or exceed minimum version of %lld", buf, 0x1Cu);
    }

    self = selfCopy;
LABEL_15:
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __106__FCWebURLResolutionEndpointConnection__fetchConfigIfNeededPromiseWithCoreConfiguration_qualityOfService___block_invoke;
    v32[3] = &unk_1E7C3CB30;
    v32[4] = self;
    v32[5] = service;
    v25 = [MEMORY[0x1E69B68F8] firstly:v32];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __106__FCWebURLResolutionEndpointConnection__fetchConfigIfNeededPromiseWithCoreConfiguration_qualityOfService___block_invoke_2;
    v30[3] = &unk_1E7C453E0;
    v31 = v8;
    v23 = [v25 then:v30];

    goto LABEL_16;
  }

  if (v22)
  {
    *buf = 67109634;
    *v34 = version;
    *&v34[4] = 2114;
    *&v34[6] = v15;
    *&v34[14] = 2048;
    *&v34[16] = minimumBucketGroupConfigVersion;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "using cached bucket group config of version %d because expiration date %{public}@ was not in the past and cached version met or exceeded minimum version of %lld", buf, 0x1Cu);
  }

  v23 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v11];
LABEL_16:

  v26 = *MEMORY[0x1E69E9840];

  return v23;
}

id __106__FCWebURLResolutionEndpointConnection__fetchConfigIfNeededPromiseWithCoreConfiguration_qualityOfService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];
  [v4 writeToURL:*(a1 + 32) atomically:1];

  v5 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:v3];

  return v5;
}

- (id)_fetchConfigPromiseWithQualityOfService:(int64_t)service
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = service;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCNewsAssetServerHostName();
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/owl-bucket-groups/currentBucketGroupConfig", v7];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    v10 = [FCAssetDownloadOperation alloc];
    v11 = [*(a1 + 32) networkReachability];
    v12 = [(FCAssetDownloadOperation *)v10 initWithNetworkReachability:v11];

    [(FCAssetDownloadOperation *)v12 setURL:v9];
    [(FCAssetDownloadOperation *)v12 setLoggingKey:@"webURLResolution:config"];
    [(FCOperation *)v12 setQualityOfService:*(a1 + 40)];
    [(FCAssetDownloadOperation *)v12 setDownloadDestination:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_3;
    v15[3] = &unk_1E7C45408;
    v16 = v6;
    v17 = v5;
    v13 = v6;
    [(FCAssetDownloadOperation *)v12 setDataDownloadCompletionHandler:v15];
    v14 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v14 addOperation:v12];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_2;
    v18[3] = &unk_1E7C379C8;
    v19 = v6;
    v8 = v6;
    __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_2(v18);
    v9 = v19;
  }
}

void __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:8 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B6D28]) initWithData:v6];
    if (v8)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_5;
      v9[3] = &unk_1E7C379C8;
      v10 = *(a1 + 32);
      __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_5(v9);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_4;
    v14 = &unk_1E7C37778;
    v16 = *(a1 + 32);
    v15 = v7;
    v16[2](v16, v15);

    v8 = v16;
  }
}

void __80__FCWebURLResolutionEndpointConnection__fetchConfigPromiseWithQualityOfService___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)_fetchBloomFilterInfoPromiseWithQualityOfService:(int64_t)service
{
  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke;
  v8[3] = &unk_1E7C405B8;
  v8[4] = self;
  v8[5] = service;
  v6 = [v5 initWithResolver:v8];

  return v6;
}

void __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCNewsAssetServerHostName();
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/open-web-links/domainBloomFilter", v7];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    v10 = *(a1 + 32);
    v11 = [objc_opt_class() _bloomFilterScheduler];
    v12 = [FCAssetDownloadOperation alloc];
    v13 = [*(a1 + 32) networkReachability];
    v14 = [(FCAssetDownloadOperation *)v12 initWithNetworkReachability:v13 URLRequestScheduler:v11];

    [(FCAssetDownloadOperation *)v14 setURL:v9];
    [(FCAssetDownloadOperation *)v14 setLoggingKey:@"webURLResolution:bloomFilter"];
    [(FCOperation *)v14 setQualityOfService:*(a1 + 40)];
    [(FCAssetDownloadOperation *)v14 setCachePolicy:0];
    [(FCAssetDownloadOperation *)v14 setDownloadDestination:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_3;
    v17[3] = &unk_1E7C45408;
    v18 = v6;
    v19 = v5;
    v15 = v6;
    [(FCAssetDownloadOperation *)v14 setDataDownloadCompletionHandler:v17];
    v16 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v16 addOperation:v14];
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_2;
    v20[3] = &unk_1E7C379C8;
    v21 = v6;
    v8 = v6;
    __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_2(v20);
    v9 = v21;
  }
}

void __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:8 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B6D20]) initWithData:v6];
    if (v8)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_5;
      v9[3] = &unk_1E7C379C8;
      v10 = *(a1 + 32);
      __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_5(v9);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_4;
    v14 = &unk_1E7C37778;
    v16 = *(a1 + 32);
    v15 = v7;
    v16[2](v16, v15);

    v8 = v16;
  }
}

void __89__FCWebURLResolutionEndpointConnection__fetchBloomFilterInfoPromiseWithQualityOfService___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)_hashOfURLWithWebURL:(id)l config:(id)config
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  configCopy = config;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "webURL"];
    *buf = 136315906;
    v19 = "[FCWebURLResolutionEndpointConnection _hashOfURLWithWebURL:config:]";
    v20 = 2080;
    v21 = "FCWebURLResolutionEndpointConnection.m";
    v22 = 1024;
    v23 = 311;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (configCopy)
    {
      goto LABEL_6;
    }
  }

  else if (configCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "config"];
    *buf = 136315906;
    v19 = "[FCWebURLResolutionEndpointConnection _hashOfURLWithWebURL:config:]";
    v20 = 2080;
    v21 = "FCWebURLResolutionEndpointConnection.m";
    v22 = 1024;
    v23 = 312;
    v24 = 2114;
    v25 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  canonicalizer = [(FCWebURLResolutionEndpointConnection *)self canonicalizer];
  v9 = [canonicalizer canonicalizedURLForURL:lCopy];

  v10 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v19 = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "canonicalized URL is %{sensitive}@", buf, 0xCu);
  }

  hasher = [(FCWebURLResolutionEndpointConnection *)self hasher];
  v12 = [hasher hashForURL:v9 maxLength:{objc_msgSend(configCopy, "byteCount")}];

  v13 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = v12;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "hash is %{private}@", buf, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_fetchListsPromiseWithConfig:(id)config coreConfiguration:(id)configuration hash:(id)hash qualityOfService:(int64_t)service
{
  v39 = *MEMORY[0x1E69E9840];
  configCopy = config;
  configurationCopy = configuration;
  hashCopy = hash;
  if (!configCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "config"];
    *buf = 136315906;
    v32 = "[FCWebURLResolutionEndpointConnection _fetchListsPromiseWithConfig:coreConfiguration:hash:qualityOfService:]";
    v33 = 2080;
    v34 = "FCWebURLResolutionEndpointConnection.m";
    v35 = 1024;
    v36 = 326;
    v37 = 2114;
    v38 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (configurationCopy)
    {
      goto LABEL_6;
    }
  }

  else if (configurationCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "coreConfiguration"];
    *buf = 136315906;
    v32 = "[FCWebURLResolutionEndpointConnection _fetchListsPromiseWithConfig:coreConfiguration:hash:qualityOfService:]";
    v33 = 2080;
    v34 = "FCWebURLResolutionEndpointConnection.m";
    v35 = 1024;
    v36 = 327;
    v37 = 2114;
    v38 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!hashCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "hash"];
    *buf = 136315906;
    v32 = "[FCWebURLResolutionEndpointConnection _fetchListsPromiseWithConfig:coreConfiguration:hash:qualityOfService:]";
    v33 = 2080;
    v34 = "FCWebURLResolutionEndpointConnection.m";
    v35 = 1024;
    v36 = 328;
    v37 = 2114;
    v38 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  bucketer = [(FCWebURLResolutionEndpointConnection *)self bucketer];
  v14 = [bucketer bucketForHash:hashCopy bucketCount:{objc_msgSend(configCopy, "numberOfBuckets")}];

  v15 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v14;
    _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "bucket is %ld", buf, 0xCu);
  }

  v16 = objc_alloc(MEMORY[0x1E69B68F8]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke;
  v25[3] = &unk_1E7C45458;
  v26 = configCopy;
  selfCopy = self;
  v29 = v14;
  serviceCopy = service;
  v28 = configurationCopy;
  v17 = configurationCopy;
  v18 = configCopy;
  v19 = [v16 initWithResolver:v25];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = FCNewsAssetServerHostName();
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/owl-bucket-groups/%d/index/%zd", v7, objc_msgSend(*(a1 + 32), "version"), *(a1 + 56)];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_3;
    aBlock[3] = &unk_1E7C45430;
    aBlock[4] = *(a1 + 40);
    v10 = v9;
    v11 = *(a1 + 64);
    v22 = v10;
    v25 = v11;
    v23 = v6;
    v12 = v5;
    v24 = v12;
    v13 = _Block_copy(aBlock);
    if ([*(a1 + 48) shouldProxyURLBucketFetch])
    {
      v14 = FCWebURLResolutionLog;
      if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "trying fetch for lists through proxy", buf, 2u);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 64);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_86;
      v17[3] = &unk_1E7C42428;
      v18 = v12;
      v19 = v13;
      [v15 _fetchListsPromiseThroughProxy:1 withResourceURL:v10 qualityOfService:v16 completion:v17];
    }

    else
    {
      v13[2](v13);
    }
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_2;
    v26[3] = &unk_1E7C379C8;
    v27 = v6;
    __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_2(v26);
    v8 = v27;
  }
}

void __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:8 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_3(uint64_t a1)
{
  v2 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "trying fetch for lists directly", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_83;
  v6[3] = &unk_1E7C42428;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 _fetchListsPromiseThroughProxy:0 withResourceURL:v4 qualityOfService:v5 completion:v6];
}

void __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_83(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = v4;
    v6[2](v6, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __109__FCWebURLResolutionEndpointConnection__fetchListsPromiseWithConfig_coreConfiguration_hash_qualityOfService___block_invoke_86(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (void)_fetchListsPromiseThroughProxy:(BOOL)proxy withResourceURL:(id)l qualityOfService:(int64_t)service completion:(id)completion
{
  proxyCopy = proxy;
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  if (!lCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resourceURL"];
    *buf = 136315906;
    v24 = "[FCWebURLResolutionEndpointConnection _fetchListsPromiseThroughProxy:withResourceURL:qualityOfService:completion:]";
    v25 = 2080;
    v26 = "FCWebURLResolutionEndpointConnection.m";
    v27 = 1024;
    v28 = 395;
    v29 = 2114;
    v30 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v24 = "[FCWebURLResolutionEndpointConnection _fetchListsPromiseThroughProxy:withResourceURL:qualityOfService:completion:]";
    v25 = 2080;
    v26 = "FCWebURLResolutionEndpointConnection.m";
    v27 = 1024;
    v28 = 396;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (proxyCopy)
  {
    _sharedProxyingScheduler = [objc_opt_class() _sharedProxyingScheduler];
  }

  else
  {
    _sharedProxyingScheduler = 0;
  }

  v13 = [FCAssetDownloadOperation alloc];
  networkReachability = [(FCWebURLResolutionEndpointConnection *)self networkReachability];
  v15 = [(FCAssetDownloadOperation *)v13 initWithNetworkReachability:networkReachability URLRequestScheduler:_sharedProxyingScheduler];

  [(FCAssetDownloadOperation *)v15 setURL:lCopy];
  [(FCAssetDownloadOperation *)v15 setLoggingKey:@"webURLResolution:lists"];
  [(FCOperation *)v15 setQualityOfService:service];
  [(FCAssetDownloadOperation *)v15 setDownloadDestination:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke;
  v21[3] = &unk_1E7C45480;
  v22 = completionCopy;
  v16 = completionCopy;
  [(FCAssetDownloadOperation *)v15 setDataDownloadCompletionHandler:v21];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v15];

  v18 = *MEMORY[0x1E69E9840];
}

void __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69B6CE8]) initWithData:v6];
    v9 = v8;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [v8 articleInfoLists];
      (*(v10 + 16))(v10, v11, 0);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke_3;
      v12[3] = &unk_1E7C379C8;
      v13 = *(a1 + 32);
      __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke_3(v12);
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke_2;
    v17 = &unk_1E7C37778;
    v19 = *(a1 + 32);
    v18 = v7;
    v19[2](v19, 0, v18);

    v9 = v19;
  }
}

void __115__FCWebURLResolutionEndpointConnection__fetchListsPromiseThroughProxy_withResourceURL_qualityOfService_completion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (id)_articleIDWithHash:(id)hash lists:(id)lists storeFrontID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  listsCopy = lists;
  dCopy = d;
  if (!hashCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "hash"];
    *buf = 136315906;
    v23 = "[FCWebURLResolutionEndpointConnection _articleIDWithHash:lists:storeFrontID:]";
    v24 = 2080;
    v25 = "FCWebURLResolutionEndpointConnection.m";
    v26 = 1024;
    v27 = 424;
    v28 = 2114;
    v29 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (listsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (listsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "lists"];
    *buf = 136315906;
    v23 = "[FCWebURLResolutionEndpointConnection _articleIDWithHash:lists:storeFrontID:]";
    v24 = 2080;
    v25 = "FCWebURLResolutionEndpointConnection.m";
    v26 = 1024;
    v27 = 425;
    v28 = 2114;
    v29 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "storeFrontID"];
    *buf = 136315906;
    v23 = "[FCWebURLResolutionEndpointConnection _articleIDWithHash:lists:storeFrontID:]";
    v24 = 2080;
    v25 = "FCWebURLResolutionEndpointConnection.m";
    v26 = 1024;
    v27 = 426;
    v28 = 2114;
    v29 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = [listsCopy fc_objectInSortedOrderedCollectionWithFeature:hashCopy usingFeatureProvider:&__block_literal_global_96_2 comparator:&__block_literal_global_99_0];
  articleInfos = [v10 articleInfos];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__FCWebURLResolutionEndpointConnection__articleIDWithHash_lists_storeFrontID___block_invoke_3;
  v20[3] = &unk_1E7C454E8;
  v21 = dCopy;
  v12 = dCopy;
  v13 = [articleInfos fc_firstObjectPassingTest:v20];

  articleId = [v13 articleId];

  v15 = *MEMORY[0x1E69E9840];

  return articleId;
}

uint64_t __78__FCWebURLResolutionEndpointConnection__articleIDWithHash_lists_storeFrontID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeFrontId];
  if (v4)
  {
    v5 = [v3 storeFrontId];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end