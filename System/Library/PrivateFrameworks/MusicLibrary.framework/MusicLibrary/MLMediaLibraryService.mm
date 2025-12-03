@interface MLMediaLibraryService
+ (id)sharedMediaLibraryService;
- (BOOL)endTransaction:(id)transaction shouldCommit:(BOOL)commit error:(id *)error;
- (BOOL)executeUpdate:(id)update withParameters:(id)parameters onTransaction:(id)transaction error:(id *)error;
- (BOOL)performDatabaseOperation:(unint64_t)operation withAttributes:(id)attributes options:(id)options error:(id *)error;
- (BOOL)validateDatabaseAtPath:(id)path error:(id *)error;
- (MLMediaLibraryService)init;
- (id)_serviceConnection;
- (id)beginTransactionForDatabaseWithContext:(id)context error:(id *)error;
- (id)clientImportServiceListenerEndpointWithError:(id *)error;
- (id)mediaLibraryResourcesServiceListenerEndpointWithError:(id *)error;
- (id)securityScopedURLForItemPID:(unint64_t)d withDatabasePath:(id)path;
- (void)attemptDatabaseFileRecoveryAtPath:(id)path withCompletionHandler:(id)handler;
- (void)beginTransactionForDatabaseWithContext:(id)context completionHandler:(id)handler;
- (void)cancelImportOperation:(unint64_t)operation completionHandler:(id)handler;
- (void)checkIntegrityOfDatabaseAtPath:(id)path repairFaults:(BOOL)faults withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)endTransaction:(id)transaction shouldCommit:(BOOL)commit withCompletionHandler:(id)handler;
- (void)executeQuery:(id)query withParameters:(id)parameters options:(id)options onTransaction:(id)transaction withCompletionHandler:(id)handler;
- (void)executeUpdate:(id)update withParameters:(id)parameters onTransaction:(id)transaction withCompletionHandler:(id)handler;
- (void)getLanguageResourcesWithCompletion:(id)completion;
- (void)importOperationWithIdentifier:(id)identifier didUpdateWithProgress:(float)progress;
- (void)lockDatabaseForReason:(int64_t)reason withCompletion:(id)completion;
- (void)performDatabaseOperation:(unint64_t)operation withAttributes:(id)attributes options:(id)options completionHandler:(id)handler;
- (void)performDiagnosticWithCompletionHandler:(id)handler;
- (void)performImport:(id)import fromSource:(unint64_t)source withProgressBlock:(id)block completionHandler:(id)handler;
- (void)performMaintenanceTasksForDatabaseAtPath:(id)path;
- (void)performMaintenanceTasksForDatabaseAtPath:(id)path withCompletionHandler:(id)handler;
- (void)recreateDatabaseAtPath:(id)path withCompletionHandler:(id)handler;
- (void)serviceTerminatedTransactionWithIdentifier:(id)identifier error:(id)error;
- (void)setOptions:(id)options withCompletionHandler:(id)handler;
- (void)unlockDatabaseWithCompletion:(id)completion;
- (void)updateSiriIndexMetadataForAllLibrariesWithCompletion:(id)completion;
- (void)updateSpotlightIndexForBundleID:(id)d withCompletion:(id)completion;
- (void)updateSpotlightIndexMetadataForItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion;
@end

@implementation MLMediaLibraryService

+ (id)sharedMediaLibraryService
{
  if (sharedMediaLibraryService___once != -1)
  {
    dispatch_once(&sharedMediaLibraryService___once, &__block_literal_global_20987);
  }

  v3 = sharedMediaLibraryService___service;

  return v3;
}

uint64_t __50__MLMediaLibraryService_sharedMediaLibraryService__block_invoke()
{
  sharedMediaLibraryService___service = objc_alloc_init(MLMediaLibraryService);

  return MEMORY[0x2821F96F8]();
}

- (MLMediaLibraryService)init
{
  v11.receiver = self;
  v11.super_class = MLMediaLibraryService;
  v2 = [(MLMediaLibraryService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MusicLibrary.MLMediaLibraryService", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.MusicLibrary.MLMediaLibraryServiceReplyQueue", v5);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    progressBlocksByUUID = v2->_progressBlocksByUUID;
    v2->_progressBlocksByUUID = v8;
  }

  return v2;
}

void __43__MLMediaLibraryService__serviceConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.medialibraryd.xpc" options:0];
    v3 = +[MLMediaLibraryServiceInterface serviceInterface];
    [v2 setRemoteObjectInterface:v3];

    v4 = +[MLMediaLibraryServiceInterface clientInterface];
    [v2 setExportedInterface:v4];

    [v2 setExportedObject:*(a1 + 32)];
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, v2);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__MLMediaLibraryService__serviceConnection__block_invoke_2;
    v10[3] = &unk_278764CE8;
    objc_copyWeak(&v11, &from);
    [v2 setInterruptionHandler:v10];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__MLMediaLibraryService__serviceConnection__block_invoke_277;
    v7[3] = &unk_278764D10;
    objc_copyWeak(&v8, &from);
    objc_copyWeak(&v9, &location);
    [v2 setInvalidationHandler:v7];
    [v2 resume];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v2;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)_serviceConnection
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MLMediaLibraryService__serviceConnection__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  return self->_serviceConnection;
}

void __43__MLMediaLibraryService__serviceConnection__block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "Media library service %{public}@ closed.", &v3, 0xCu);
  }
}

void __43__MLMediaLibraryService__serviceConnection__block_invoke_277(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "Media library service %{public}@ invalidated.", &v7, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4[3];
  v4[3] = 0;

  v6 = v4[4];
  v4[4] = 0;
}

- (void)importOperationWithIdentifier:(id)identifier didUpdateWithProgress:(float)progress
{
  v6 = [(NSMutableDictionary *)self->_progressBlocksByUUID objectForKey:identifier];
  v7 = v6;
  if (v6)
  {
    replyQueue = self->_replyQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__MLMediaLibraryService_importOperationWithIdentifier_didUpdateWithProgress___block_invoke;
    v9[3] = &unk_278764CC0;
    v10 = v6;
    progressCopy = progress;
    dispatch_async(replyQueue, v9);
  }
}

- (void)serviceTerminatedTransactionWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MLMediaLibraryService_serviceTerminatedTransactionWithIdentifier_error___block_invoke;
  block[3] = &unk_278765C40;
  v11 = errorCopy;
  v12 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__MLMediaLibraryService_serviceTerminatedTransactionWithIdentifier_error___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCA7E8];
  v5[1] = @"MLTerminatedTransactionIdentifierKey";
  v2 = a1[5];
  v6[0] = a1[4];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"MLMediaLibraryServiceDidTerminateTransactionNotification" object:a1[6] userInfo:v3];
}

- (id)securityScopedURLForItemPID:(unint64_t)d withDatabasePath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__20876;
  v17 = __Block_byref_object_dispose__20877;
  v18 = 0;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__MLMediaLibraryService_securityScopedURLForItemPID_withDatabasePath___block_invoke;
  v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v12[4] = d;
  v8 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__MLMediaLibraryService_securityScopedURLForItemPID_withDatabasePath___block_invoke_2;
  v11[3] = &unk_278764C98;
  v11[4] = self;
  v11[5] = &v13;
  v11[6] = d;
  [v8 securityScopedURLWrapperForItemPid:d withDatabasePath:pathCopy completionHandler:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

void __70__MLMediaLibraryService_securityScopedURLForItemPID_withDatabasePath___block_invoke_2(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 url];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[5] + 8) + 40);
  v11 = os_log_create("com.apple.amp.medialibrary", "Service");
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v14 = a1[6];
      v20 = 138543875;
      v21 = v13;
      v22 = 2048;
      v23 = v14;
      v24 = 2113;
      v25 = v5;
      v15 = "%{public}@ Succesfully fetched url wrapper for item pid %llu. wrapper=%{private}@";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v16, v17, v15, &v20, 0x20u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = a1[4];
    v19 = a1[6];
    v20 = 138543874;
    v21 = v18;
    v22 = 2048;
    v23 = v19;
    v24 = 2114;
    v25 = v6;
    v15 = "%{public}@ Failed to fetch url wrapper for item pid %llu. error=%{public}@";
    v16 = v12;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (id)clientImportServiceListenerEndpointWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__20876;
  v28 = __Block_byref_object_dispose__20877;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20876;
  v22 = __Block_byref_object_dispose__20877;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  while (1)
  {
    _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__MLMediaLibraryService_clientImportServiceListenerEndpointWithError___block_invoke;
    v13[3] = &unk_278764C28;
    v13[5] = &v18;
    v13[6] = 10;
    v13[4] = &v14;
    v4 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__MLMediaLibraryService_clientImportServiceListenerEndpointWithError___block_invoke_2;
    v12[3] = &unk_278764C50;
    v12[4] = &v24;
    v12[5] = &v18;
    [v4 getClientImportServiceListenerEndpointWithCompletion:v12];

    v5 = v25[5];
    if (v5)
    {
      break;
    }

    if (v15[3] >= 10)
    {
      v5 = 0;
      break;
    }
  }

  if (error)
  {
    *error = v19[5];
    v5 = v25[5];
  }

  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MLMediaLibraryService.m" lineNumber:663 description:{@"Unable to retrieve XPC listener endpoint for MediaLibraryResourcesService [fatal error after %ld retries] - error=%@", v15[3], v19[5]}];

    v5 = v25[5];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v6;
}

void __70__MLMediaLibraryService_clientImportServiceListenerEndpointWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not retrieve XPC listener endpoint for ClientImportService - Try %ld of %ld", v4, v5, v6, v7, v8, v9, ++*(*(*(a1 + 32) + 8) + 24));
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
}

void __70__MLMediaLibraryService_clientImportServiceListenerEndpointWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)mediaLibraryResourcesServiceListenerEndpointWithError:(id *)error
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__20876;
  v40 = __Block_byref_object_dispose__20877;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__20876;
  v34 = __Block_byref_object_dispose__20877;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  while (1)
  {
    _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __79__MLMediaLibraryService_mediaLibraryResourcesServiceListenerEndpointWithError___block_invoke;
    v25[3] = &unk_278764C28;
    v25[5] = &v30;
    v25[6] = 10;
    v25[4] = &v26;
    v4 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__MLMediaLibraryService_mediaLibraryResourcesServiceListenerEndpointWithError___block_invoke_2;
    v24[3] = &unk_278764C50;
    v24[4] = &v36;
    v24[5] = &v30;
    [v4 getMediaLibraryResourcesServiceListenerEndpointWithCompletion:v24];

    v5 = v37[5];
    if (v5)
    {
      break;
    }

    if (v27[3] >= 10)
    {
      v5 = 0;
      break;
    }
  }

  if (error)
  {
    *error = v31[5];
    v5 = v37[5];
  }

  if (!v5)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = MEMORY[0x277D27EF0];
    v8 = MEMORY[0x277CCACA8];
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    v10 = [currentThread description];
    v11 = v10;
    v12 = error ? *error : 0;
    v13 = [v8 stringWithFormat:@"currentThread=%@ last connection error=%@", v10, v12];
    v14 = *MEMORY[0x277D27EB8];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __79__MLMediaLibraryService_mediaLibraryResourcesServiceListenerEndpointWithError___block_invoke_3;
    v22[3] = &unk_278765FB8;
    v15 = v6;
    v23 = v15;
    [v7 snapshotWithDomain:v14 type:@"Bug" subType:@"ML3ServiceConnectionBug" context:v13 triggerThresholdValues:&stru_28408B690 events:0 completion:v22];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v37[5];
    if (!v5)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MLMediaLibraryService.m" lineNumber:634 description:{@"Unable to retrieve XPC listener endpoint for MediaLibraryResourcesService [fatal error after %ld retries] - error=%@", v27[3], v31[5]}];

      v5 = v37[5];
    }
  }

  v16 = v5;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v16;
}

void __79__MLMediaLibraryService_mediaLibraryResourcesServiceListenerEndpointWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not retrieve XPC listener endpoint for MediaLibraryResourcesService - Try %ld of %ld", v4, v5, v6, v7, v8, v9, ++*(*(*(a1 + 32) + 8) + 24));
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
}

void __79__MLMediaLibraryService_mediaLibraryResourcesServiceListenerEndpointWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)performMaintenanceTasksForDatabaseAtPath:(id)path
{
  pathCopy = path;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath___block_invoke;
  v8[3] = &unk_278765828;
  v9 = pathCopy;
  v6 = pathCopy;
  v7 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 performMaintenanceTasksForDatabaseAtPath:v6];
}

- (void)performMaintenanceTasksForDatabaseAtPath:(id)path withCompletionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke;
  v15[3] = &unk_278765990;
  v16 = pathCopy;
  v9 = handlerCopy;
  selfCopy = self;
  v18 = v9;
  v10 = pathCopy;
  v11 = [_serviceConnection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke_3;
  v13[3] = &unk_278764F50;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 performMaintenanceTasksForDatabaseAtPath:v10 withCompletionHandler:v13];
}

void __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not perform maintenance task for database at path %@", v4, v5, v6, v7, v8, v9, a1[4]);
  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[5] + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, block);
  }
}

void __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__MLMediaLibraryService_performMaintenanceTasksForDatabaseAtPath_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)updateSiriIndexMetadataForAllLibrariesWithCompletion:(id)completion
{
  completionCopy = completion;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke;
  v11[3] = &unk_2787658A0;
  v6 = completionCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke_3;
  v9[3] = &unk_278764F50;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 updateSiriIndexMetadataForAllLibrariesWithCompletion:v9];
}

void __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not update siri index for all libraries", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__MLMediaLibraryService_updateSiriIndexMetadataForAllLibrariesWithCompletion___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)updateSpotlightIndexMetadataForItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  dCopy = d;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke;
  v18[3] = &unk_278765990;
  v19 = identifiersCopy;
  v12 = completionCopy;
  selfCopy = self;
  v21 = v12;
  v13 = identifiersCopy;
  v14 = [_serviceConnection remoteObjectProxyWithErrorHandler:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke_3;
  v16[3] = &unk_278764F50;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v14 updateSpotlightIndexMetadataForItemsWithIdentifiers:v13 bundleID:dCopy withCompletion:v16];
}

void __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not update spotlight index for identifiers: %@", v4, v5, v6, v7, v8, v9, a1[4]);
  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[5] + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke_2;
    block[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, block);
  }
}

void __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__MLMediaLibraryService_updateSpotlightIndexMetadataForItemsWithIdentifiers_bundleID_withCompletion___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)updateSpotlightIndexForBundleID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke;
  v14[3] = &unk_2787658A0;
  v9 = completionCopy;
  v14[4] = self;
  v15 = v9;
  v10 = [_serviceConnection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke_3;
  v12[3] = &unk_278764F50;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 updateSpotlightIndexForBundleID:dCopy withCompletion:v12];
}

void __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not update spotlight index.", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__MLMediaLibraryService_updateSpotlightIndexForBundleID_withCompletion___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)getLanguageResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__20876;
    v19 = __Block_byref_object_dispose__20877;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__20876;
    v13 = __Block_byref_object_dispose__20877;
    v14 = 0;
    _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__MLMediaLibraryService_getLanguageResourcesWithCompletion___block_invoke;
    v8[3] = &unk_278764BD8;
    v8[4] = &v9;
    v6 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__MLMediaLibraryService_getLanguageResourcesWithCompletion___block_invoke_2;
    v7[3] = &unk_278764C00;
    v7[4] = &v15;
    v7[5] = &v9;
    [v6 getLanguageResourcesWithCompletion:v7];

    completionCopy[2](completionCopy, v16[5], v10[5]);
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
  }
}

void __60__MLMediaLibraryService_getLanguageResourcesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)unlockDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke;
  v11[3] = &unk_2787658A0;
  v6 = completionCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke_3;
  v9[3] = &unk_278764F50;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 unlockDatabaseWithCompletion:v9];
}

void __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not unlock database.", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MLMediaLibraryService_unlockDatabaseWithCompletion___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)lockDatabaseForReason:(int64_t)reason withCompletion:(id)completion
{
  completionCopy = completion;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke;
  v13[3] = &unk_2787658A0;
  v8 = completionCopy;
  v13[4] = self;
  v14 = v8;
  v9 = [_serviceConnection remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke_3;
  v11[3] = &unk_278764F50;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 lockDatabaseForReason:reason withCompletion:v11];
}

void __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not lock database.", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MLMediaLibraryService_lockDatabaseForReason_withCompletion___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)cancelImportOperation:(unint64_t)operation completionHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke;
  v13[3] = &unk_2787658A0;
  v8 = handlerCopy;
  v13[4] = self;
  v14 = v8;
  v9 = [_serviceConnection remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke_3;
  v11[3] = &unk_278764F50;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 cancelImportOperation:operation completionHandler:v11];
}

void __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not cancel import operation.", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__MLMediaLibraryService_cancelImportOperation_completionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)performImport:(id)import fromSource:(unint64_t)source withProgressBlock:(id)block completionHandler:(id)handler
{
  importCopy = import;
  blockCopy = block;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke;
  v25[3] = &unk_278765990;
  v14 = importCopy;
  v26 = v14;
  v15 = handlerCopy;
  selfCopy = self;
  v28 = v15;
  v16 = [_serviceConnection remoteObjectProxyWithErrorHandler:v25];

  uUID = [MEMORY[0x277CCAD78] UUID];
  if (blockCopy)
  {
    progressBlocksByUUID = self->_progressBlocksByUUID;
    v19 = [blockCopy copy];
    [(NSMutableDictionary *)progressBlocksByUUID setObject:v19 forKey:uUID];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke_3;
  v22[3] = &unk_278764BB0;
  v22[4] = self;
  v23 = uUID;
  v24 = v15;
  v20 = v15;
  v21 = uUID;
  [v16 performImport:v14 fromSource:source withUUID:v21 completionHandler:v22];
}

void __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryPath];
  _ML3LogReplyError(v3, @"Could not perform import for database at path %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke_3(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1[4] + 40) removeObjectForKey:a1[5]];
  v9 = a1[6];
  if (v9)
  {
    v10 = *(a1[4] + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__MLMediaLibraryService_performImport_fromSource_withProgressBlock_completionHandler___block_invoke_4;
    v11[3] = &unk_278764B88;
    v14 = v9;
    v15 = a2;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

- (void)setOptions:(id)options withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke;
  v14[3] = &unk_2787658A0;
  v9 = handlerCopy;
  v14[4] = self;
  v15 = v9;
  v10 = [_serviceConnection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke_3;
  v12[3] = &unk_278764F50;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 setOptions:optionsCopy withCompletionHandler:v12];
}

void __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not set options on media library service.", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MLMediaLibraryService_setOptions_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (BOOL)performDatabaseOperation:(unint64_t)operation withAttributes:(id)attributes options:(id)options error:(id *)error
{
  attributesCopy = attributes;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__20876;
  v22 = __Block_byref_object_dispose__20877;
  v23 = 0;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_error___block_invoke;
  v17[3] = &unk_278764B60;
  v17[4] = &v24;
  v17[5] = &v18;
  v13 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v17];

  if (*(v25 + 24) == 1)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_error___block_invoke_2;
    v16[3] = &unk_278764A20;
    v16[4] = &v24;
    v16[5] = &v18;
    [v13 performDatabaseOperation:operation withAttributes:attributesCopy options:optionsCopy completionHandler:v16];
  }

  if (error)
  {
    *error = v19[5];
  }

  v14 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (void)performDatabaseOperation:(unint64_t)operation withAttributes:(id)attributes options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  attributesCopy = attributes;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke;
  v20[3] = &unk_278765990;
  v21 = optionsCopy;
  v14 = handlerCopy;
  selfCopy = self;
  v23 = v14;
  v15 = optionsCopy;
  v16 = [_serviceConnection remoteObjectProxyWithErrorHandler:v20];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke_3;
  v18[3] = &unk_278764F50;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v16 performDatabaseOperation:operation withAttributes:attributesCopy options:v15 completionHandler:v18];
}

void __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"MLDatabaseOperationOptionDatabasePathKey"];
  _ML3LogReplyError(v3, @"Could not execute database operation on database at path %@.", v5, v6, v7, v8, v9, v10, v4);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MLMediaLibraryService_performDatabaseOperation_withAttributes_options_completionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (BOOL)endTransaction:(id)transaction shouldCommit:(BOOL)commit error:(id *)error
{
  commitCopy = commit;
  transactionCopy = transaction;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__20876;
  v24 = __Block_byref_object_dispose__20877;
  v25 = 0;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__MLMediaLibraryService_endTransaction_shouldCommit_error___block_invoke;
  v16[3] = &unk_278764B10;
  v10 = transactionCopy;
  v17 = v10;
  v18 = &v20;
  v19 = &v26;
  v11 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v16];

  v12 = v21[5];
  if (v12)
  {
    v13 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__MLMediaLibraryService_endTransaction_shouldCommit_error___block_invoke_2;
    v15[3] = &unk_278764A20;
    v15[4] = &v26;
    v15[5] = &v20;
    [v11 endTransaction:v10 shouldCommit:commitCopy withCompletionHandler:v15];
    if (error)
    {
      *error = v21[5];
    }

    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

void __59__MLMediaLibraryService_endTransaction_shouldCommit_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  _ML3LogReplyError(v3, @"Could not end transaction %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
  v13 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

- (void)endTransaction:(id)transaction shouldCommit:(BOOL)commit withCompletionHandler:(id)handler
{
  commitCopy = commit;
  transactionCopy = transaction;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke;
  v17[3] = &unk_278765990;
  v18 = transactionCopy;
  v11 = handlerCopy;
  selfCopy = self;
  v20 = v11;
  v12 = transactionCopy;
  v13 = [_serviceConnection remoteObjectProxyWithErrorHandler:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke_3;
  v15[3] = &unk_278764F50;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v13 endTransaction:v12 shouldCommit:commitCopy withCompletionHandler:v15];
}

void __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  _ML3LogReplyError(v3, @"Could not end transaction %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MLMediaLibraryService_endTransaction_shouldCommit_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)executeQuery:(id)query withParameters:(id)parameters options:(id)options onTransaction:(id)transaction withCompletionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  optionsCopy = options;
  parametersCopy = parameters;
  queryCopy = query;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke;
  v24[3] = &unk_278765990;
  v25 = transactionCopy;
  v18 = handlerCopy;
  selfCopy = self;
  v27 = v18;
  v19 = transactionCopy;
  v20 = [_serviceConnection remoteObjectProxyWithErrorHandler:v24];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke_3;
  v22[3] = &unk_278764B38;
  v22[4] = self;
  v23 = v18;
  v21 = v18;
  [v20 executeQuery:queryCopy withParameters:parametersCopy options:optionsCopy onTransaction:v19 withCompletionHandler:v22];
}

void __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  _ML3LogReplyError(v3, @"Could not execute query on transaction %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__MLMediaLibraryService_executeQuery_withParameters_options_onTransaction_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278765798;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (BOOL)executeUpdate:(id)update withParameters:(id)parameters onTransaction:(id)transaction error:(id *)error
{
  updateCopy = update;
  parametersCopy = parameters;
  transactionCopy = transaction;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__20876;
  v32 = __Block_byref_object_dispose__20877;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_error___block_invoke;
  v20[3] = &unk_278764B10;
  v14 = transactionCopy;
  v21 = v14;
  v22 = &v28;
  v23 = &v24;
  v15 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v20];

  v16 = v29[5];
  if (v16)
  {
    v17 = 0;
    if (error)
    {
      *error = v16;
    }
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_error___block_invoke_2;
    v19[3] = &unk_278764A20;
    v19[4] = &v24;
    v19[5] = &v28;
    [v15 executeUpdate:updateCopy withParameters:parametersCopy onTransaction:v14 withCompletionHandler:v19];
    if (error)
    {
      *error = v29[5];
    }

    v17 = *(v25 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  return v17 & 1;
}

void __74__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  _ML3LogReplyError(v3, @"Could not execute update on transaction %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
  v13 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

- (void)executeUpdate:(id)update withParameters:(id)parameters onTransaction:(id)transaction withCompletionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  parametersCopy = parameters;
  updateCopy = update;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke;
  v21[3] = &unk_278765990;
  v22 = transactionCopy;
  v15 = handlerCopy;
  selfCopy = self;
  v24 = v15;
  v16 = transactionCopy;
  v17 = [_serviceConnection remoteObjectProxyWithErrorHandler:v21];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke_3;
  v19[3] = &unk_278764F50;
  v19[4] = self;
  v20 = v15;
  v18 = v15;
  [v17 executeUpdate:updateCopy withParameters:parametersCopy onTransaction:v16 withCompletionHandler:v19];
}

void __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  _ML3LogReplyError(v3, @"Could not execute update on transaction %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MLMediaLibraryService_executeUpdate_withParameters_onTransaction_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (id)beginTransactionForDatabaseWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__20876;
  v27 = __Block_byref_object_dispose__20877;
  v28 = 0;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__MLMediaLibraryService_beginTransactionForDatabaseWithContext_error___block_invoke;
  v20[3] = &unk_2787649F8;
  v8 = contextCopy;
  v21 = v8;
  v22 = &v23;
  v9 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v20];

  v10 = v24[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__20876;
    v18 = __Block_byref_object_dispose__20877;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__MLMediaLibraryService_beginTransactionForDatabaseWithContext_error___block_invoke_2;
    v13[3] = &unk_278764AE8;
    v13[4] = &v14;
    v13[5] = &v23;
    [v9 beginTransactionForDatabaseWithContext:v8 completionHandler:v13];
    if (error)
    {
      *error = v24[5];
    }

    v11 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  _Block_object_dispose(&v23, 8);

  return v11;
}

void __70__MLMediaLibraryService_beginTransactionForDatabaseWithContext_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) path];
  _ML3LogReplyError(v3, @"Could not begin transaction for database at path %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __70__MLMediaLibraryService_beginTransactionForDatabaseWithContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)beginTransactionForDatabaseWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke;
  v15[3] = &unk_278765990;
  v16 = contextCopy;
  v9 = handlerCopy;
  selfCopy = self;
  v18 = v9;
  v10 = contextCopy;
  v11 = [_serviceConnection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke_3;
  v13[3] = &unk_278764AC0;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 beginTransactionForDatabaseWithContext:v10 completionHandler:v13];
}

void __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) path];
  _ML3LogReplyError(v3, @"Could not begin transaction for database at path %@.", v5, v6, v7, v8, v9, v10, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, block);
  }
}

void __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke_4;
    block[3] = &unk_278765798;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __82__MLMediaLibraryService_beginTransactionForDatabaseWithContext_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v1, v3);
}

- (void)recreateDatabaseAtPath:(id)path withCompletionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke;
  v15[3] = &unk_278765990;
  v16 = pathCopy;
  v9 = handlerCopy;
  selfCopy = self;
  v18 = v9;
  v10 = pathCopy;
  v11 = [_serviceConnection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke_3;
  v13[3] = &unk_278764F50;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 recreateDatabaseAtPath:v10 withCompletionHandler:v13];
}

void __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not recreate database at path %@.", v4, v5, v6, v7, v8, v9, a1[4]);
  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[5] + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, block);
  }
}

void __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MLMediaLibraryService_recreateDatabaseAtPath_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)performDiagnosticWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke;
  v11[3] = &unk_2787658A0;
  v6 = handlerCopy;
  v11[4] = self;
  v12 = v6;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_278764A98;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performDiagnosticWithCompletionHandler:v9];
}

void __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not perform diagnostic", v4, v5, v6, v7, v8, v9, v12[0]);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, v12);
  }
}

void __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MLMediaLibraryService_performDiagnosticWithCompletionHandler___block_invoke_4;
    block[3] = &unk_278765798;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)checkIntegrityOfDatabaseAtPath:(id)path repairFaults:(BOOL)faults withCompletionHandler:(id)handler
{
  faultsCopy = faults;
  handlerCopy = handler;
  pathCopy = path;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke;
  v16[3] = &unk_2787658A0;
  v11 = handlerCopy;
  v16[4] = self;
  v17 = v11;
  v12 = [_serviceConnection remoteObjectProxyWithErrorHandler:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke_3;
  v14[3] = &unk_278764F50;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 checkIntegrityOfDatabaseAtPath:pathCopy repairFaults:faultsCopy withCompletionHandler:v14];
}

void __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Failed to obtain service proxy to perform integrity check. err=%@", v4, v5, v6, v7, v8, v9, v3);
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, block);
  }
}

void __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MLMediaLibraryService_checkIntegrityOfDatabaseAtPath_repairFaults_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)attemptDatabaseFileRecoveryAtPath:(id)path withCompletionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke;
  v15[3] = &unk_278765990;
  v16 = pathCopy;
  v9 = handlerCopy;
  selfCopy = self;
  v18 = v9;
  v10 = pathCopy;
  v11 = [_serviceConnection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke_3;
  v13[3] = &unk_278764F50;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [v11 attemptDatabaseFileRecoveryAtPath:v10 withCompletionHandler:v13];
}

void __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not attempt recovery at path: %@", v4, v5, v6, v7, v8, v9, a1[4]);
  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[5] + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke_2;
    block[3] = &unk_278764A48;
    v14 = v10;
    v13 = v3;
    dispatch_async(v11, block);
  }
}

void __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__MLMediaLibraryService_attemptDatabaseFileRecoveryAtPath_withCompletionHandler___block_invoke_4;
    block[3] = &unk_278764A70;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (BOOL)validateDatabaseAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20876;
  v20 = __Block_byref_object_dispose__20877;
  v21 = 0;
  _serviceConnection = [(MLMediaLibraryService *)self _serviceConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__MLMediaLibraryService_validateDatabaseAtPath_error___block_invoke;
  v13[3] = &unk_2787649F8;
  v8 = pathCopy;
  v14 = v8;
  v15 = &v16;
  v9 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__MLMediaLibraryService_validateDatabaseAtPath_error___block_invoke_2;
  v12[3] = &unk_278764A20;
  v12[4] = &v22;
  v12[5] = &v16;
  [v9 validateDatabaseAtPath:v8 withCompletionHandler:v12];

  if (error)
  {
    *error = v17[5];
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __54__MLMediaLibraryService_validateDatabaseAtPath_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _ML3LogReplyError(v3, @"Could not validate database at path %@.", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = MLMediaLibraryService;
  [(MLMediaLibraryService *)&v3 dealloc];
}

@end