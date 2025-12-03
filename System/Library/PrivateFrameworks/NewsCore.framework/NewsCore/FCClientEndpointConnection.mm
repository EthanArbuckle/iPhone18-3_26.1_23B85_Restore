@interface FCClientEndpointConnection
- (FCClientEndpointConnection)initWithConfigurationManager:(id)manager;
- (FCClientEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)reportConcern:(id)concern callbackQueue:(id)queue completion:(id)completion;
- (void)reportConcernV2:(id)v2 callbackQueue:(id)queue completion:(id)completion;
- (void)submitWebAccessWithTagID:(id)d purchaseID:(id)iD emailAddress:(id)address purchaseReceipt:(id)receipt countryCode:(id)code languageCode:(id)languageCode callbackQueue:(id)queue completion:(id)self0;
- (void)updateBaseURLWith:(id)with;
@end

@implementation FCClientEndpointConnection

- (FCClientEndpointConnection)initWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(FCEndpointConnection);
  v6 = [(FCClientEndpointConnection *)self initWithEndpointConnection:v5 configurationManager:managerCopy];

  return v6;
}

- (FCClientEndpointConnection)initWithEndpointConnection:(id)connection configurationManager:(id)manager
{
  connectionCopy = connection;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = FCClientEndpointConnection;
  v9 = [(FCClientEndpointConnection *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointConnection, connection);
    objc_storeStrong(&v10->_configurationManager, manager);
    v11 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v11;

    configurationManager = [(FCClientEndpointConnection *)v10 configurationManager];
    [configurationManager addObserver:v10];

    objc_initWeak(&location, v10);
    serialQueue = [(FCClientEndpointConnection *)v10 serialQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__FCClientEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke;
    v16[3] = &unk_1E7C3BD20;
    objc_copyWeak(&v17, &location);
    [serialQueue enqueueBlock:v16];

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

- (void)reportConcernV2:(id)v2 callbackQueue:(id)queue completion:(id)completion
{
  v2Copy = v2;
  queueCopy = queue;
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = [(FCClientEndpointConnection *)self serialQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FCClientEndpointConnection_reportConcernV2_callbackQueue_completion___block_invoke;
  v15[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v19, &location);
  v12 = v2Copy;
  v16 = v12;
  v13 = queueCopy;
  v17 = v13;
  v14 = completionCopy;
  v18 = v14;
  [serialQueue enqueueBlock:v15];

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

- (void)reportConcern:(id)concern callbackQueue:(id)queue completion:(id)completion
{
  concernCopy = concern;
  queueCopy = queue;
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = [(FCClientEndpointConnection *)self serialQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__FCClientEndpointConnection_reportConcern_callbackQueue_completion___block_invoke;
  v15[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v19, &location);
  v12 = concernCopy;
  v16 = v12;
  v13 = queueCopy;
  v17 = v13;
  v14 = completionCopy;
  v18 = v14;
  [serialQueue enqueueBlock:v15];

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

- (void)submitWebAccessWithTagID:(id)d purchaseID:(id)iD emailAddress:(id)address purchaseReceipt:(id)receipt countryCode:(id)code languageCode:(id)languageCode callbackQueue:(id)queue completion:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  addressCopy = address;
  receiptCopy = receipt;
  codeCopy = code;
  languageCodeCopy = languageCode;
  queueCopy = queue;
  completionCopy = completion;
  v23 = objc_alloc_init(MEMORY[0x1E69B6F48]);
  v31 = dCopy;
  [v23 setChannelId:dCopy];
  v30 = iDCopy;
  v24 = iDCopy;
  v25 = addressCopy;
  [v23 setIapId:v24];
  [v23 setEmail:addressCopy];
  [v23 setPurchaseReceipt:receiptCopy];
  [v23 setCountry:codeCopy];
  [v23 setLanguage:languageCodeCopy];
  objc_initWeak(&location, self);
  serialQueue = [(FCClientEndpointConnection *)self serialQueue];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __145__FCClientEndpointConnection_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_countryCode_languageCode_callbackQueue_completion___block_invoke;
  v33[3] = &unk_1E7C3BD70;
  objc_copyWeak(&v37, &location);
  v27 = v23;
  v34 = v27;
  v28 = queueCopy;
  v35 = v28;
  v29 = completionCopy;
  v36 = v29;
  [serialQueue enqueueBlock:v33];

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

- (void)updateBaseURLWith:(id)with
{
  v4 = [FCBaseURLConfiguration CAPIBaseURLForConfiguration:with];
  [(FCClientEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(FCClientEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FCClientEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  [serialQueue enqueueBlock:v8];
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