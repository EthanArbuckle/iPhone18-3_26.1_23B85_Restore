@interface MLMediaLibraryResourcesServiceClient
+ (MLMediaLibraryResourcesServiceClient)sharedService;
- (NSXPCConnection)xpcClientConnection;
- (id)_initWithAccountChangeObserver:(id)a3;
- (id)_libraryContainerPathWithError:(id *)a3;
- (id)_musicContainerPathWithError:(id *)a3;
- (id)connectionWithListenerEndpoint:(id)a3;
- (id)libraryContainerPathWithError:(id *)a3;
- (id)musicContainerPathWithError:(id *)a3;
- (void)_performOnServerObjectWithMaxRetries:(int64_t)a3 error:(id *)a4 remoteObjectBlock:(id)a5;
- (void)emergencyDisconnectWithCompletion:(id)a3;
- (void)performDatabasePathChange:(id)a3 completion:(id)a4;
- (void)terminateForFailureToPerformDatabasePathChange;
@end

@implementation MLMediaLibraryResourcesServiceClient

- (id)connectionWithListenerEndpoint:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v4];
    [v5 setExportedObject:self];
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840E3818];
    [v5 setRemoteObjectInterface:v6];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2840DBC30];
    [v5 setExportedInterface:v7];
    [v5 setExportedObject:self];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke;
    v13[3] = &unk_278762A28;
    objc_copyWeak(&v15, location);
    v13[4] = self;
    v8 = v5;
    v14 = v8;
    [v8 setInterruptionHandler:v13];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_3;
    v11[3] = &unk_278762BD8;
    objc_copyWeak(&v12, location);
    v11[4] = self;
    [v8 setInvalidationHandler:v11];
    [v8 resume];
    v9 = v8;
    objc_destroyWeak(&v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = self;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "MLMediaLibraryResourcesServiceClient %p - Unable to create XPC Connection [no listener endpoint]", location, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

void __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = [WeakRetained accountChangeObserver];
      *buf = 134218240;
      v18 = WeakRetained;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - XPC Connection interrupted [Processing] - accountChangeObserver=%p", buf, 0x16u);
    }

    v6 = [a1[4] serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_91;
    block[3] = &unk_278765C40;
    v7 = WeakRetained;
    v14 = v7;
    v8 = a1[5];
    v9 = a1[4];
    v15 = v8;
    v16 = v9;
    dispatch_sync(v6, block);

    v10 = [a1[4] calloutQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_92;
    v11[3] = &unk_278765FB8;
    v12 = v7;
    dispatch_async(v10, v11);

    v3 = v14;
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient - XPC Connection interrupted [Unable to process ]", buf, 2u);
  }
}

void __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = WeakRetained;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Connection to media library resources service invalidated", buf, 0xCu);
  }

  v4 = [*(a1 + 32) serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_93;
  v7[3] = &unk_2787660F0;
  v5 = *(a1 + 32);
  v8 = WeakRetained;
  v9 = v5;
  v6 = WeakRetained;
  dispatch_sync(v4, v7);
}

void __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_93(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Resetting XPC connection to nil", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_91(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Resetting XPC connection to nil", &v6, 0xCu);
  }

  v4 = a1[6];
  v5 = *(v4 + 24);
  if (a1[5] == v5)
  {
    *(v4 + 24) = 0;
  }
}

void __71__MLMediaLibraryResourcesServiceClient_connectionWithListenerEndpoint___block_invoke_92(uint64_t a1)
{
  v1 = [*(a1 + 32) accountChangeObserver];
  [v1 emergencyDisconnectWithCompletion:&__block_literal_global_9029];
}

- (NSXPCConnection)xpcClientConnection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9036;
  v11 = __Block_byref_object_dispose__9037;
  v12 = 0;
  v3 = [(MLMediaLibraryResourcesServiceClient *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MLMediaLibraryResourcesServiceClient_xpcClientConnection__block_invoke;
  v6[3] = &unk_278766080;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__MLMediaLibraryResourcesServiceClient_xpcClientConnection__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 134217984;
      v18 = v4;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Creating XPC Client Connection [started]", buf, 0xCu);
    }

    v5 = +[MLMediaLibraryService sharedMediaLibraryService];
    v16 = 0;
    v6 = [v5 mediaLibraryResourcesServiceListenerEndpointWithError:&v16];
    v7 = v16;

    if (v7 || !v6)
    {
      v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 134218242;
        v18 = v9;
        v19 = 2114;
        v20 = v7;
        _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "MLMediaLibraryResourcesServiceClient %p - Creating XPC Client Connection [failed] - error=%{public}@", buf, 0x16u);
      }
    }

    v10 = [*(a1 + 32) connectionWithListenerEndpoint:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v13 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *buf = 134218242;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Creating XPC Client Connection [ended] - connection=%{public}@", buf, 0x16u);
    }

    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)terminateForFailureToPerformDatabasePathChange
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "MLMediaLibraryResourcesServiceClient %p - terminateForFailureToPrepareForAccountChange:", &v5, 0xCu);
  }

  v4 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeObserver];
  [v4 terminateForFailureToPerformDatabasePathChange];
}

- (void)emergencyDisconnectWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeObserver];
  [v5 emergencyDisconnectWithCompletion:v4];
}

- (void)performDatabasePathChange:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218243;
    v18 = self;
    v19 = 2113;
    v20 = v6;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEBUG, "MLMediaLibraryResourcesServiceClient %p - performDatabasePathChange: - newPath=%{private}@", buf, 0x16u);
  }

  v9 = [_ML3MultiUserAccountChangeOperation alloc];
  v10 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeObserver];
  v11 = [(_ML3MultiUserAccountChangeOperation *)v9 initWithDatabasePath:v6 accountChangeObserver:v10];

  objc_initWeak(buf, v11);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__MLMediaLibraryResourcesServiceClient_performDatabasePathChange_completion___block_invoke;
  v14[3] = &unk_278763F88;
  objc_copyWeak(&v16, buf);
  v12 = v7;
  v14[4] = self;
  v15 = v12;
  [(_ML3MultiUserAccountChangeOperation *)v11 setCompletionBlock:v14];
  v13 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
  [v13 addOperation:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __77__MLMediaLibraryResourcesServiceClient_performDatabasePathChange_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 != 0, v3);
  v4 = [*(a1 + 32) calloutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MLMediaLibraryResourcesServiceClient_performDatabasePathChange_completion___block_invoke_2;
  block[3] = &unk_278765FB8;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void __77__MLMediaLibraryResourcesServiceClient_performDatabasePathChange_completion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - Database path change completed [posting path change notification]", &v5, 0xCu);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"MLUserDatabasePathDidChangeNotification" object:*(a1 + 32)];
}

- (void)_performOnServerObjectWithMaxRetries:(int64_t)a3 error:(id *)a4 remoteObjectBlock:(id)a5
{
  v15 = a4;
  v7 = a5;
  v8 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9036;
  v25 = __Block_byref_object_dispose__9037;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = *MEMORY[0x277CCA050];
  while (1)
  {
    v10 = [(MLMediaLibraryResourcesServiceClient *)self xpcClientConnection];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __101__MLMediaLibraryResourcesServiceClient__performOnServerObjectWithMaxRetries_error_remoteObjectBlock___block_invoke;
    v16[3] = &unk_278762A00;
    v16[4] = self;
    v16[5] = &v17;
    v16[6] = &v21;
    v16[7] = a3;
    v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];

    if (v11)
    {
      if (v7[2](v7, v11))
      {
        break;
      }
    }

    v12 = v22[5];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = [v12 domain];
    if (![v13 isEqualToString:v9] || objc_msgSend(v22[5], "code") != 4097)
    {

LABEL_10:
      if (v15)
      {
        *v15 = v22[5];
      }

      break;
    }

    v14 = v18[3];

    v8 = v11;
    if (v14 >= a3)
    {
      goto LABEL_10;
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __101__MLMediaLibraryResourcesServiceClient__performOnServerObjectWithMaxRetries_error_remoteObjectBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [v3 code];

    if (v5 == 4097)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
      v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(*(*(a1 + 40) + 8) + 24);
        v9 = *(a1 + 56);
        *buf = 134218496;
        v17 = v7;
        v18 = 2048;
        v19 = v8;
        v20 = 2048;
        v21 = v9;
        _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "MLMediaLibraryResourcesServiceClient %p - Unable to retrieve path [XPC connection interrupted] - Recreating the connection - Attempt %ld of %ld", buf, 0x20u);
      }

      v10 = [*(a1 + 32) serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__MLMediaLibraryResourcesServiceClient__performOnServerObjectWithMaxRetries_error_remoteObjectBlock___block_invoke_30;
      block[3] = &unk_278765FB8;
      block[4] = *(a1 + 32);
      dispatch_sync(v10, block);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    *buf = 134218242;
    v17 = v11;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "MLMediaLibraryResourcesServiceClient %p - Unable to retrieve path - error=%{public}@", buf, 0x16u);
  }

LABEL_9:

  v12 = [v3 copy];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void __101__MLMediaLibraryResourcesServiceClient__performOnServerObjectWithMaxRetries_error_remoteObjectBlock___block_invoke_30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (id)_libraryContainerPathWithError:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9036;
  v10 = __Block_byref_object_dispose__9037;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__MLMediaLibraryResourcesServiceClient__libraryContainerPathWithError___block_invoke;
  v5[3] = &unk_2787629D8;
  v5[4] = &v6;
  [(MLMediaLibraryResourcesServiceClient *)self _performOnServerObjectWithMaxRetries:10 error:a3 remoteObjectBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

BOOL __71__MLMediaLibraryResourcesServiceClient__libraryContainerPathWithError___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__MLMediaLibraryResourcesServiceClient__libraryContainerPathWithError___block_invoke_2;
  v4[3] = &unk_2787629B0;
  v4[4] = *(a1 + 32);
  [a2 libraryContainerPathWithCompletion:v4];
  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t __71__MLMediaLibraryResourcesServiceClient__libraryContainerPathWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)_musicContainerPathWithError:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9036;
  v10 = __Block_byref_object_dispose__9037;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__MLMediaLibraryResourcesServiceClient__musicContainerPathWithError___block_invoke;
  v5[3] = &unk_2787629D8;
  v5[4] = &v6;
  [(MLMediaLibraryResourcesServiceClient *)self _performOnServerObjectWithMaxRetries:10 error:a3 remoteObjectBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

BOOL __69__MLMediaLibraryResourcesServiceClient__musicContainerPathWithError___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__MLMediaLibraryResourcesServiceClient__musicContainerPathWithError___block_invoke_2;
  v4[3] = &unk_2787629B0;
  v4[4] = *(a1 + 32);
  [a2 musicContainerPathWithCompletion:v4];
  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (id)_initWithAccountChangeObserver:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v20 = self;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEBUG, "MLMediaLibraryResourcesServiceClient %p - _initWithXPCListenerEndpoint:", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = MLMediaLibraryResourcesServiceClient;
  v7 = [(MLMediaLibraryResourcesServiceClient *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_accountChangeObserver, a3);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.MusicLibrary.MLMediaLibraryResourceServiceClient.serial.queue", v9);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.MusicLibrary.MLMediaLibraryResourceServiceClient.callout.queue", v12);
    calloutQueue = v8->_calloutQueue;
    v8->_calloutQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    accountChangeOperationQueue = v8->_accountChangeOperationQueue;
    v8->_accountChangeOperationQueue = v15;

    [(NSOperationQueue *)v8->_accountChangeOperationQueue setName:@"com.apple.MusicLibrary.MLMediaLibraryResourceServiceClient.path.change.queue"];
    [(NSOperationQueue *)v8->_accountChangeOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v8->_accountChangeOperationQueue setQualityOfService:25];
  }

  return v8;
}

- (id)musicContainerPathWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - BLOCKING - Retrieving musicContainerPath on serial queue: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__9036;
  v24 = __Block_byref_object_dispose__9037;
  v25 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__9036;
  v14[4] = __Block_byref_object_dispose__9037;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__MLMediaLibraryResourcesServiceClient_musicContainerPathWithError___block_invoke;
  v13[3] = &unk_278762988;
  v13[4] = self;
  v13[5] = buf;
  v13[6] = v14;
  v6 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v13];
  v7 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
  [v7 addOperation:v6];

  [v6 waitUntilFinished];
  v8 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
    v10 = *(*&buf[8] + 40);
    *v16 = 134218498;
    v17 = self;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - UNBLOCKED - Retrieved musicContainerPath on serial queue: %@ - %@", v16, 0x20u);
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(v14, 8);

  _Block_object_dispose(buf, 8);

  return v11;
}

void __68__MLMediaLibraryResourcesServiceClient_musicContainerPathWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _musicContainerPathWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)libraryContainerPathWithError:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "MLMediaLibraryResourcesServiceClient %p - libraryContainerPathWithError:", buf, 0xCu);
  }

  v6 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - BLOCKING - Retrieving libraryContainerPath on serial queue: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__9036;
  v30 = __Block_byref_object_dispose__9037;
  v31 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9036;
  v20 = __Block_byref_object_dispose__9037;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__MLMediaLibraryResourcesServiceClient_libraryContainerPathWithError___block_invoke;
  v15[3] = &unk_278762988;
  v15[4] = self;
  v15[5] = buf;
  v15[6] = &v16;
  v8 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v15];
  v9 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
  [v9 addOperation:v8];

  [v8 waitUntilFinished];
  v10 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MLMediaLibraryResourcesServiceClient *)self accountChangeOperationQueue];
    v12 = *(*&buf[8] + 40);
    *v22 = 134218498;
    v23 = self;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "MLMediaLibraryResourcesServiceClient %p - UNBLOCKED - Retrieved mediaFolderPath on serial queue: %@ - %@", v22, 0x20u);
  }

  if (a3)
  {
    *a3 = v17[5];
  }

  v13 = *(*&buf[8] + 40);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return v13;
}

void __70__MLMediaLibraryResourcesServiceClient_libraryContainerPathWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _libraryContainerPathWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (MLMediaLibraryResourcesServiceClient)sharedService
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v8 = objc_opt_class();
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEBUG, "MLMediaLibraryResourcesServiceClient %p - sharedService:", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MLMediaLibraryResourcesServiceClient_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedService_onceToken[0] != -1)
  {
    dispatch_once(sharedService_onceToken, block);
  }

  v4 = sharedService___sharedService;

  return v4;
}

void __53__MLMediaLibraryResourcesServiceClient_sharedService__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&dword_22D2FA000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ - Initializing the shared service:", &v5, 0xCu);
  }

  v1 = [MLMediaLibraryResourcesServiceClient alloc];
  v2 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
  v3 = [(MLMediaLibraryResourcesServiceClient *)v1 _initWithAccountChangeObserver:v2];
  v4 = sharedService___sharedService;
  sharedService___sharedService = v3;
}

@end