@interface FCClientEndpointConnection
- (FCClientEndpointConnection)initWithConfigurationManager:(id)a3;
- (FCClientEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4;
- (void)configurationManager:(id)a3 configurationDidChange:(id)a4;
- (void)reportConcern:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)reportConcernV2:(id)a3 callbackQueue:(id)a4 completion:(id)a5;
- (void)submitWebAccessWithTagID:(id)a3 purchaseID:(id)a4 emailAddress:(id)a5 purchaseReceipt:(id)a6 countryCode:(id)a7 languageCode:(id)a8 callbackQueue:(id)a9 completion:(id)a10;
- (void)updateBaseURLWith:(id)a3;
@end

@implementation FCClientEndpointConnection

- (FCClientEndpointConnection)initWithConfigurationManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCEndpointConnection);
  v6 = [(FCClientEndpointConnection *)self initWithEndpointConnection:v5 configurationManager:v4];

  return v6;
}

- (FCClientEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = FCClientEndpointConnection;
  v9 = [(FCClientEndpointConnection *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointConnection, a3);
    objc_storeStrong(&v10->_configurationManager, a4);
    v11 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v11;

    v13 = [(FCClientEndpointConnection *)v10 configurationManager];
    [v13 addObserver:v10];

    objc_initWeak(&location, v10);
    v14 = [(FCClientEndpointConnection *)v10 serialQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__FCClientEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke;
    v16[3] = &unk_1E7C3BD20;
    objc_copyWeak(&v17, &location);
    [v14 enqueueBlock:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __78__FCClientEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained configurationManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__FCClientEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke_2;
  v8[3] = &unk_1E7C3B248;
  v9 = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = WeakRetained;
  [v5 fetchConfigurationIfNeededWithCompletion:v8];
}

void __78__FCClientEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch endpoint configuration with error: %{public}@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) updateBaseURLWith:v5];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reportConcernV2:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(FCClientEndpointConnection *)self serialQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FCClientEndpointConnection_reportConcernV2_callbackQueue_completion___block_invoke;
  v15[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v19, &location);
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v11 enqueueBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __71__FCClientEndpointConnection_reportConcernV2_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained baseURL];

  if (v5)
  {
    v6 = [WeakRetained baseURL];
    v7 = [v6 URLByAppendingPathComponent:@"v2/userConcern"];

    v8 = [WeakRetained endpointConnection];
    v9 = *MEMORY[0x1E695ABC0];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__FCClientEndpointConnection_reportConcernV2_callbackQueue_completion___block_invoke_2;
    v16[3] = &unk_1E7C3BD48;
    v17 = v7;
    v18 = v3;
    v19 = *(a1 + 48);
    v12 = v7;
    LODWORD(v13) = v9;
    [v8 performHTTPRequestWithURL:v12 method:@"POST" data:v10 contentType:@"application/json" priority:1 requiresMescalSigning:v11 callbackQueue:v13 completion:v16];
  }

  else
  {
    v3[2](v3);
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void __71__FCClientEndpointConnection_reportConcernV2_callbackQueue_completion___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  if (a3)
  {
    v6 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [a3 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, v6 == 0, v6);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v8 = a1[6];
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)reportConcern:(id)a3 callbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(FCClientEndpointConnection *)self serialQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__FCClientEndpointConnection_reportConcern_callbackQueue_completion___block_invoke;
  v15[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v19, &location);
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v11 enqueueBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __69__FCClientEndpointConnection_reportConcern_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained baseURL];

  if (v5)
  {
    v6 = [WeakRetained baseURL];
    v7 = [v6 URLByAppendingPathComponent:@"reportConcern"];

    v8 = [WeakRetained endpointConnection];
    v9 = [*(a1 + 32) data];
    v10 = *MEMORY[0x1E695ABC0];
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__FCClientEndpointConnection_reportConcern_callbackQueue_completion___block_invoke_2;
    v16[3] = &unk_1E7C3BD98;
    v17 = v7;
    v18 = v3;
    v19 = *(a1 + 48);
    v12 = v7;
    LODWORD(v13) = v10;
    [v8 performHTTPRequestWithURL:v12 method:@"POST" data:v9 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v11 callbackQueue:v13 completion:v16];
  }

  else
  {
    v3[2](v3);
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void __69__FCClientEndpointConnection_reportConcern_callbackQueue_completion___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  (*(a1[5] + 16))();
  if (v10)
  {
    v7 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v10 statusCode], a1[4]);
    v8 = a1[6];
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0, v7);
    }
  }

  else
  {
    v9 = a1[6];
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

- (void)submitWebAccessWithTagID:(id)a3 purchaseID:(id)a4 emailAddress:(id)a5 purchaseReceipt:(id)a6 countryCode:(id)a7 languageCode:(id)a8 callbackQueue:(id)a9 completion:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = objc_alloc_init(MEMORY[0x1E69B6F48]);
  v31 = v15;
  [v23 setChannelId:v15];
  v30 = v16;
  v24 = v16;
  v25 = v17;
  [v23 setIapId:v24];
  [v23 setEmail:v17];
  [v23 setPurchaseReceipt:v18];
  [v23 setCountry:v19];
  [v23 setLanguage:v20];
  objc_initWeak(&location, self);
  v26 = [(FCClientEndpointConnection *)self serialQueue];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __145__FCClientEndpointConnection_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_countryCode_languageCode_callbackQueue_completion___block_invoke;
  v33[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v37, &location);
  v27 = v23;
  v34 = v27;
  v28 = v21;
  v35 = v28;
  v29 = v22;
  v36 = v29;
  [v26 enqueueBlock:v33];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __145__FCClientEndpointConnection_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_countryCode_languageCode_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained baseURL];

  if (v5)
  {
    v6 = [WeakRetained baseURL];
    v7 = [v6 URLByAppendingPathComponent:@"publisherWebAccessOptIn"];

    v8 = [WeakRetained endpointConnection];
    v9 = [*(a1 + 32) data];
    v10 = *MEMORY[0x1E695ABC0];
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __145__FCClientEndpointConnection_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_countryCode_languageCode_callbackQueue_completion___block_invoke_2;
    v16[3] = &unk_1E7C3BD48;
    v17 = v7;
    v18 = v3;
    v19 = *(a1 + 48);
    v12 = v7;
    LODWORD(v13) = v10;
    [v8 performHTTPRequestWithURL:v12 method:@"POST" data:v9 contentType:@"application/x-protobuf" priority:1 requiresMescalSigning:v11 callbackQueue:v13 completion:v16];
  }

  else
  {
    v3[2](v3);
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void __145__FCClientEndpointConnection_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_countryCode_languageCode_callbackQueue_completion___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a4;
  if (a3)
  {
    v6 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [a3 statusCode], a1[4]);
    (*(a1[5] + 16))();
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, v6 == 0, v6);
    }
  }

  else
  {
    (*(a1[5] + 16))();
    v8 = a1[6];
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

- (void)updateBaseURLWith:(id)a3
{
  v4 = [FCBaseURLConfiguration CAPIBaseURLForConfiguration:a3];
  [(FCClientEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)a3 configurationDidChange:(id)a4
{
  v5 = a4;
  v6 = [(FCClientEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FCClientEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 enqueueBlock:v8];
}

void __74__FCClientEndpointConnection_configurationManager_configurationDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 updateBaseURLWith:v3];
  v4[2]();
}

@end