@interface CPLProxyLibraryManager
- (BOOL)_markConnectionAsInvalid;
- (BOOL)_setStatusFromDictionary:(id)dictionary;
- (CPLProxyLibraryManager)initWithAbstractObject:(id)object;
- (id)_connection;
- (id)_uploadTaskDidStartForResource:(id)resource withTaskIdentifier:(id)identifier;
- (id)proxyWithErrorHandler:(id)handler;
- (void)_dispatchBlockWhenOpen:(id)open;
- (void)_dispatchFailedDownloadTaskForResource:(id)resource options:(id)options proposedTaskIdentifier:(id)identifier withError:(id)error withCompletionHandler:(id)handler;
- (void)_dispatchFailedForceSyncTaskForScopeIdentifiers:(id)identifiers withError:(id)error withCompletionHandler:(id)handler;
- (void)_dispatchFailedInMemoryDownloadTaskForResource:(id)resource withError:(id)error withCompletionHandler:(id)handler;
- (void)_dropConnectionCompletly;
- (void)_dropConnectionCompletlyLocked;
- (void)_invokeOutstandingInvocationsWithTaskIdentifier:(id)identifier;
- (void)_invokeSyncOutstandingInvocationsWithTaskIdentifier:(id)identifier;
- (void)_markConnectionAsInvalid;
- (void)_reallyOpenWithCompletionHandler:(id)handler;
- (void)_setupConnection;
- (void)_storeVoucher:(id)voucher forTaskWithIdentifier:(id)identifier;
- (void)_withVoucherForTaskWithIdentifier:(id)identifier do:(id)do;
- (void)acceptSharedScope:(id)scope completionHandler:(id)handler;
- (void)acknowledgeChangedStatuses:(id)statuses;
- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler;
- (void)addInfoToLog:(id)log;
- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist;
- (void)attachComputeStates:(id)states completionHandler:(id)handler;
- (void)backgroundDownloadDidFailForResource:(id)resource;
- (void)backgroundDownloadDidFinishForResource:(id)resource;
- (void)barrier;
- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier completionHandler:(id)handler;
- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d completionHandler:(id)handler;
- (void)blockEngineElement:(id)element;
- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)cancelSyncTask:(id)task;
- (void)cancelTask:(id)task;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler;
- (void)checkResourcesAreSafeToPrune:(id)prune checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- (void)closeWithCompletionHandler:(id)handler;
- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler;
- (void)compactFileCacheWithCompletionHandler:(id)handler;
- (void)createScope:(id)scope completionHandler:(id)handler;
- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deactivateWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)deleteResources:(id)resources checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler;
- (void)disableMingling;
- (void)disableSynchronizationWithReason:(id)reason;
- (void)dispatchBlockWhenLibraryIsOpen:(id)open;
- (void)downloadDidFinishForResourceTransferTask:(id)task finalResource:(id)resource withError:(id)error;
- (void)downloadDidProgress:(float)progress forResourceTransferTask:(id)task;
- (void)downloadDidStartForResourceTransferTask:(id)task;
- (void)enableMingling;
- (void)enableSynchronizationWithReason:(id)reason;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler;
- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler;
- (void)forceBackupWithCompletionHandler:(id)handler;
- (void)forceSyncDidFinishForTask:(id)task withErrors:(id)errors;
- (void)forceSynchronizingScopeWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getChangedStatusesWithCompletionHandler:(id)handler;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler;
- (void)getListOfComponentsWithCompletionHandler:(id)handler;
- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler;
- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getStatusArrayForComponents:(id)components completionHandler:(id)handler;
- (void)getStatusForComponents:(id)components completionHandler:(id)handler;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler;
- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler;
- (void)getSystemBudgetsWithCompletionHandler:(id)handler;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)inMemoryDownloadDidFinishForResourceTransferTask:(id)task data:(id)data withError:(id)error;
- (void)libraryManagerDidUpdateSizeOfResourcesToUploadToSize:(unint64_t)size sizeOfOriginalResourcesToUpload:(unint64_t)upload numberOfImages:(unint64_t)images numberOfVideos:(unint64_t)videos numberOfOtherItems:(unint64_t)items;
- (void)libraryManagerDidUpdateStatusWithProperties:(id)properties;
- (void)libraryManagerHasBeenReplaced;
- (void)libraryManagerHasChangesToPull;
- (void)libraryManagerHasStatusChanges;
- (void)noteClientIsBeginningSignificantWork;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientIsInForegroundQuietly:(BOOL)quietly;
- (void)noteClientReceivedNotificationOfServerChanges;
- (void)openWithCompletionHandler:(id)handler;
- (void)provideCloudResource:(id)resource completionHandler:(id)handler;
- (void)provideLocalResource:(id)resource recordClassString:(id)string completionHandler:(id)handler;
- (void)providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler;
- (void)provideRecordWithCloudScopeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)provideScopeChangeForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)pushAllChangesWithCompletionHandler:(id)handler;
- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler;
- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler;
- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)reportMiscInformation:(id)information;
- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler;
- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler;
- (void)resetStatus;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler;
- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)startSyncSession;
- (void)testKey:(id)key value:(id)value completionHandler:(id)handler;
- (void)unblockEngineElement:(id)element;
- (void)unblockEngineElementOnce:(id)once;
- (void)updateShareForScope:(id)scope completionHandler:(id)handler;
- (void)uploadDidStartForResource:(id)resource withResourceTransferTask:(id)task;
- (void)uploadOfResource:(id)resource didFinishForResourceTransferTask:(id)task withError:(id)error;
- (void)uploadOfResource:(id)resource didProgress:(float)progress forResourceTransferTask:(id)task;
@end

@implementation CPLProxyLibraryManager

- (CPLProxyLibraryManager)initWithAbstractObject:(id)object
{
  v21.receiver = self;
  v21.super_class = CPLProxyLibraryManager;
  v3 = [(CPLPlatformObject *)&v21 initWithAbstractObject:object];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.cpl.librarymanager.proxy", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    downloadTasks = v3->_downloadTasks;
    v3->_downloadTasks = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inMemoryDownloadTasks = v3->_inMemoryDownloadTasks;
    v3->_inMemoryDownloadTasks = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uploadTasks = v3->_uploadTasks;
    v3->_uploadTasks = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    forceSyncTasks = v3->_forceSyncTasks;
    v3->_forceSyncTasks = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    vouchersPerTaskIdentifier = v3->_vouchersPerTaskIdentifier;
    v3->_vouchersPerTaskIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AB50]);
    disablingReasons = v3->_disablingReasons;
    v3->_disablingReasons = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBlocksAfterOpening = v3->_pendingBlocksAfterOpening;
    v3->_pendingBlocksAfterOpening = v18;

    v3->_realConnectionLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (id)_connection
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __37__CPLProxyLibraryManager__connection__block_invoke;
  v8 = &unk_1E861A850;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_realConnectionLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_realConnectionLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (id)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_killed)
  {
    v5 = 0;
  }

  else
  {
    _connection = [(CPLProxyLibraryManager *)self _connection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__CPLProxyLibraryManager_proxyWithErrorHandler___block_invoke;
    v9[3] = &unk_1E861A878;
    v10 = _connection;
    v11 = handlerCopy;
    v7 = _connection;
    v5 = [v7 remoteObjectProxyWithErrorHandler:v9];
  }

  return v5;
}

void __48__CPLProxyLibraryManager_proxyWithErrorHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [CPLErrors invalidDaemonErrorWithConnectionError:a2];
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)_setupConnection
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __42__CPLProxyLibraryManager__setupConnection__block_invoke;
  v6 = &unk_1E861A940;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_realConnectionLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_realConnectionLock);
}

void __42__CPLProxyLibraryManager__setupConnection__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[3])
  {
    __42__CPLProxyLibraryManager__setupConnection__block_invoke_cold_1((a1 + 32), 24, v1);
  }

  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.cloudphotod" options:0];
  v4 = *(*v2 + 3);
  *(*v2 + 3) = v3;

  objc_initWeak(&location, *(*v2 + 3));
  v5 = *v2;
  v6 = [objc_opt_class() daemonProtocolInterface];
  v7 = objc_loadWeakRetained(&location);
  [v7 setRemoteObjectInterface:v6];

  v8 = *v2;
  v9 = [objc_opt_class() clientProtocolInterface];
  v10 = objc_loadWeakRetained(&location);
  [v10 setExportedInterface:v9];

  v11 = *v2;
  v12 = objc_loadWeakRetained(&location);
  [v12 setExportedObject:v11];

  objc_initWeak(&from, *v2);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_270;
  v21[3] = &unk_1E861A8F0;
  objc_copyWeak(&v22, &from);
  objc_copyWeak(&v23, &location);
  v21[4] = *v2;
  v13 = objc_loadWeakRetained(&location);
  [v13 setInterruptionHandler:v21];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_2;
  v18[3] = &unk_1E861A918;
  objc_copyWeak(&v19, &from);
  objc_copyWeak(&v20, &location);
  v14 = objc_loadWeakRetained(&location);
  [v14 setInvalidationHandler:v18];

  v15 = objc_loadWeakRetained(&location);
  [v15 _setQueue:*(*v2 + 22)];

  v16 = objc_loadWeakRetained(&location);
  [v16 setDelegate:*v2];

  v17 = objc_loadWeakRetained(&location);
  [v17 resume];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

void __42__CPLProxyLibraryManager__setupConnection__block_invoke_271(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v4 libraryManager:v6 downloadDidFinishForResourceTransferTask:a3 finalResource:0 withError:v5];
}

void __42__CPLProxyLibraryManager__setupConnection__block_invoke_279(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [v4 scopeIdentifiers];
  v5 = a1[4];
  v6 = a1[5];
  v7 = [CPLErrors errorsForIdentifiers:v8 error:a1[6]];
  [v5 libraryManager:v6 didFinishForceSyncTask:v4 withErrors:v7];
}

- (void)_markConnectionAsInvalid
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_openingStatus != 4)
  {
    backoffRetryingConnectionDate = self->_backoffRetryingConnectionDate;
    if (!backoffRetryingConnectionDate || [(CPLProxyLibraryManager *)backoffRetryingConnectionDate _markConnectionAsInvalid])
    {
      v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:30.0];
      v5 = self->_backoffRetryingConnectionDate;
      self->_backoffRetryingConnectionDate = v4;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [CPLDateFormatter stringFromDate:self->_backoffRetryingConnectionDate];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Marking connection as invalid until %@", &v9, 0xCu);
      }
    }

    self->_openingStatus = 4;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dropConnectionCompletlyLocked
{
  [(NSXPCConnection *)self->_realConnection setDelegate:0];
  [(NSXPCConnection *)self->_realConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_realConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_realConnection invalidate];
  realConnection = self->_realConnection;
  self->_realConnection = 0;
}

- (void)_dropConnectionCompletly
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __50__CPLProxyLibraryManager__dropConnectionCompletly__block_invoke;
  v6 = &unk_1E861A940;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_realConnectionLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_realConnectionLock);
}

- (void)_reallyOpenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(CPLProxyLibraryManager *)self _connection];
  self->_openingStatus = 2;
  abstractObject = [(CPLPlatformObject *)self abstractObject];
  clientLibraryBaseURL = [abstractObject clientLibraryBaseURL];
  cloudLibraryStateStorageURL = [abstractObject cloudLibraryStateStorageURL];
  cloudLibraryResourceStorageURL = [abstractObject cloudLibraryResourceStorageURL];
  libraryIdentifier = [abstractObject libraryIdentifier];
  mainScopeIdentifier = [abstractObject mainScopeIdentifier];
  libraryOptions = [abstractObject libraryOptions];
  firstTryOpeningLibrary = self->_firstTryOpeningLibrary;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke;
  v30[3] = &unk_1E861A968;
  v30[4] = self;
  v32 = firstTryOpeningLibrary;
  v12 = handlerCopy;
  v31 = v12;
  v13 = [(CPLProxyLibraryManager *)self proxyWithErrorHandler:v30];
  v14 = v13;
  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke_2;
    v18[3] = &unk_1E861A9B8;
    v19 = v13;
    v20 = clientLibraryBaseURL;
    v21 = cloudLibraryStateStorageURL;
    v22 = cloudLibraryResourceStorageURL;
    v23 = libraryIdentifier;
    v28 = libraryOptions;
    v24 = mainScopeIdentifier;
    selfCopy = self;
    v26 = _connection;
    v29 = firstTryOpeningLibrary;
    v27 = v12;
    [v19 connectWithCompletionHandler:v18];

    v15 = v19;
  }

  else
  {
    [(CPLProxyLibraryManager *)self _markConnectionAsInvalid];
    v15 = +[CPLErrors libraryClosedError];
    (*(v12 + 2))(v12, v15, 0, 0, 0, 0);
  }
}

void __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _connection];

  if (v7 == v6)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 32) _markConnectionAsInvalid];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E861A990;
  v9 = *(a1 + 88);
  v10[4] = *(a1 + 80);
  v11 = v9;
  v13 = *(a1 + 112);
  v12 = *(a1 + 96);
  [v2 openLibraryWithClientLibraryBaseURL:v3 cloudLibraryStateStorageURL:v4 cloudLibraryResourceStorageURL:v5 libraryIdentifier:v6 mainScopeIdentifier:v7 options:v8 completionHandler:v10];
}

- (void)_dispatchBlockWhenOpen:(id)open
{
  openCopy = open;
  _connection = [(CPLProxyLibraryManager *)self _connection];

  if (!_connection)
  {
    [CPLProxyLibraryManager _dispatchBlockWhenOpen:];
    goto LABEL_18;
  }

  if (self->_killed)
  {
    if (!self->_logKilled)
    {
      self->_logKilled = 1;
      if ((_CPLSilentLogging & 1) == 0)
      {
        [CPLProxyLibraryManager _dispatchBlockWhenOpen:];
      }
    }

    goto LABEL_17;
  }

  openingStatus = self->_openingStatus;
  if (openingStatus <= 0)
  {
    [CPLProxyLibraryManager _dispatchBlockWhenOpen:];
  }

  if (openingStatus != 1)
  {
    if (openingStatus != 4)
    {
      goto LABEL_15;
    }

    backoffRetryingConnectionDate = self->_backoffRetryingConnectionDate;
    if (backoffRetryingConnectionDate)
    {
      [(NSDate *)backoffRetryingConnectionDate timeIntervalSinceNow];
      if (v8 >= 0.0)
      {
        [CPLProxyLibraryManager _dispatchBlockWhenOpen:?];
        goto LABEL_18;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      [CPLProxyLibraryManager _dispatchBlockWhenOpen:?];
    }

    [(CPLProxyLibraryManager *)self _setupConnection];
    self->_openingStatus = 1;
  }

  abstractObject = [(CPLPlatformObject *)self abstractObject];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke;
  v17[3] = &unk_1E861AA28;
  v18 = abstractObject;
  selfCopy = self;
  v10 = abstractObject;
  [(CPLProxyLibraryManager *)self _reallyOpenWithCompletionHandler:v17];

  openingStatus = self->_openingStatus;
LABEL_15:
  if (openingStatus > 2)
  {
LABEL_17:
    openCopy[2](openCopy);
    goto LABEL_18;
  }

  pendingBlocksAfterOpening = self->_pendingBlocksAfterOpening;
  v12 = [openCopy copy];
  v16 = MEMORY[0x1E128EBA0](v12, v13, v14, v15);
  [(NSMutableArray *)pendingBlocksAfterOpening addObject:v16];

LABEL_18:
}

void __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v38 = v12;
  if (v11)
  {
    __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_cold_1(v11, a1, &v48);
    v30 = v48;
    goto LABEL_18;
  }

  [*(a1 + 32) _setLibraryVersion:v12];
  v16 = [*(a1 + 32) delegate];
  [v16 libraryManagerStatusDidChange:*(a1 + 32)];

  v17 = *(a1 + 40);
  if (*(v17 + 72))
  {
    v18 = [v17 proxyWithErrorHandler:&__block_literal_global];
    [v18 noteClientIsInForegroundQuietly:*(*(a1 + 40) + 80)];

    v17 = *(a1 + 40);
  }

  if ([*(v17 + 88) count])
  {
    v37 = v13;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v19 = *(*(a1 + 40) + 88);
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v25 = *(a1 + 40);
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_291;
          v43[3] = &unk_1E861AA00;
          v43[4] = v24;
          v26 = [v25 proxyWithErrorHandler:v43];
          [v26 disableSynchronizationWithReason:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v21);
    }

    v13 = v37;
    v11 = 0;
  }

  v27 = *(a1 + 40);
  if (v27[12])
  {
    v28 = 0;
    do
    {
      v29 = [v27 proxyWithErrorHandler:&__block_literal_global_294];
      [v29 disableMingling];

      ++v28;
      v27 = *(a1 + 40);
    }

    while (v28 < v27[12]);
  }

  if (v27[13])
  {
    v30 = [v27 proxyWithErrorHandler:&__block_literal_global_297];
    [v30 noteClientIsBeginningSignificantWork];
LABEL_18:
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = *(*(a1 + 40) + 144);
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        (*(*(*(&v39 + 1) + 8 * j) + 16))();
      }

      v33 = [v31 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v33);
  }

  [*(*(a1 + 40) + 144) removeAllObjects];
  v36 = *MEMORY[0x1E69E9840];
}

- (void)dispatchBlockWhenLibraryIsOpen:(id)open
{
  openCopy = open;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CPLProxyLibraryManager_dispatchBlockWhenLibraryIsOpen___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = openCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = openCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[38])
  {
    __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_cold_1(_CPLSilentLogging, a1, v3);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*v3 abstractObject];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ opening connection with daemon", &buf, 0xCu);
    }

    v2 = *v3;
  }

  v6 = [v2 abstractObject];
  v7 = _connectedLibraryManagerRegisterQueue();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v17 = ___registerConnectedLibraryManager_block_invoke;
  v18 = &unk_1E861A940;
  v19 = v6;
  v8 = v6;
  dispatch_sync(v7, &buf);

  [*(a1 + 32) _setupConnection];
  v9 = *(a1 + 32);
  v10 = *(v9 + 176);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_303;
  handler[3] = &unk_1E861AA78;
  handler[4] = v9;
  notify_register_dispatch("com.apple.cpl.cloudphotoddidlaunch", (v9 + 168), v10, handler);
  *(*(a1 + 32) + 174) = 1;
  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_305;
  v13[3] = &unk_1E861AAA0;
  v13[4] = v11;
  v14 = *(a1 + 40);
  [v11 _reallyOpenWithCompletionHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_305(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  *(*(a1 + 32) + 174) = 0;
  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) abstractObject];
        v18 = [v17 libraryIdentifier];
        *buf = 138543618;
        v24 = v18;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "First try opening library manager for %{public}@ failed, will retry once - error: %@", buf, 0x16u);
      }
    }

    v19 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_306;
    v21[3] = &unk_1E861AAA0;
    v21[4] = v19;
    v22 = *(a1 + 40);
    [v19 _reallyOpenWithCompletionHandler:v21];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke_307(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E861AAF0;
  v3 = *(a1 + 32);
  v13 = *(a1 + 40);
  v4 = [v3 proxyWithErrorHandler:v12];
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E861AB18;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v11 = v5;
    v9[4] = v6;
    v10 = v2;
    [v4 closeLibraryWithCompletionHandler:v9];

    v7 = v11;
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = +[CPLErrors libraryClosedError];
    (*(v8 + 16))(v8, v7);
  }
}

void __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 32) _connection];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) _dropConnectionCompletly];
  }
}

- (void)deactivateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E861AA50;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

void __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_309(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 176);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2_310;
  v15[3] = &unk_1E861AB68;
  v16 = v5;
  v17 = v6;
  v14 = *(a1 + 40);
  v8 = v14;
  v18 = v14;
  v9 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v9;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_311(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 176);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2_312;
  v11[3] = &unk_1E861AB68;
  v12 = v3;
  v13 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = v10;
  v14 = v10;
  v6 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v16 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 activateScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, v6);
    }
  }
}

uint64_t __72__CPLProxyLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 deactivateScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, v6);
    }
  }
}

uint64_t __74__CPLProxyLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 boostPriorityForScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, v6);
    }
  }
}

uint64_t __80__CPLProxyLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)_invokeOutstandingInvocationsWithTaskIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  outstandingInvocationsCount = self->_outstandingInvocationsCount;
  if (!outstandingInvocationsCount)
  {
    [CPLProxyLibraryManager _invokeOutstandingInvocationsWithTaskIdentifier:];
  }

  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_outstandingInvocations objectForKey:identifierCopy];
    if (v7)
    {
      [(NSMutableDictionary *)self->_outstandingInvocations removeObjectForKey:v6];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138412546;
          v16 = v6;
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Got some callbacks for task with identifier %@ before we actually knew about it, redispatching: %@", &v15, 0x16u);
        }
      }

      if (([v7 isInMemoryRequest] & 1) == 0)
      {
        if ([v7 didStart])
        {
          [(CPLProxyLibraryManager *)self downloadDidStartForResourceTransferTask:v6];
        }

        [v7 progress];
        if (v11 > 0.0)
        {
          [v7 progress];
          [(CPLProxyLibraryManager *)self downloadDidProgress:v6 forResourceTransferTask:?];
        }

        if (![v7 didFinish])
        {
          goto LABEL_18;
        }

        finalResource = [v7 finalResource];
        finalError = [v7 finalError];
        [(CPLProxyLibraryManager *)self downloadDidFinishForResourceTransferTask:v6 finalResource:finalResource withError:finalError];
        goto LABEL_17;
      }

      if ([v7 didFinish])
      {
        finalResource = [v7 finalData];
        finalError = [v7 finalError];
        [(CPLProxyLibraryManager *)self inMemoryDownloadDidFinishForResourceTransferTask:v6 data:finalResource withError:finalError];
LABEL_17:
      }
    }

LABEL_18:

    outstandingInvocationsCount = self->_outstandingInvocationsCount;
  }

  v12 = outstandingInvocationsCount - 1;
  self->_outstandingInvocationsCount = v12;
  if (!v12)
  {
    if ([(NSMutableDictionary *)self->_outstandingInvocations count]&& (_CPLSilentLogging & 1) == 0)
    {
      [CPLProxyLibraryManager _invokeOutstandingInvocationsWithTaskIdentifier:?];
    }

    outstandingInvocations = self->_outstandingInvocations;
    self->_outstandingInvocations = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchFailedDownloadTaskForResource:(id)resource options:(id)options proposedTaskIdentifier:(id)identifier withError:(id)error withCompletionHandler:(id)handler
{
  resourceCopy = resource;
  identifierCopy = identifier;
  errorCopy = error;
  handlerCopy = handler;
  optionsCopy = options;
  v16 = [CPLResourceTransferTask alloc];
  v17 = v16;
  if (identifierCopy)
  {
    v18 = [(CPLResourceTransferTask *)v16 initWithResource:resourceCopy taskIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [(CPLResourceTransferTask *)v17 initWithResource:resourceCopy taskIdentifier:uUIDString];
  }

  [(CPLResourceTransferTask *)v18 setOptions:optionsCopy];

  handlerCopy[2](handlerCopy, v18);
  abstractObject = [(CPLPlatformObject *)self abstractObject];
  resourceProgressDelegate = [abstractObject resourceProgressDelegate];
  [resourceProgressDelegate libraryManager:abstractObject downloadDidFinishForResourceTransferTask:v18 finalResource:resourceCopy withError:errorCopy];
}

- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier completionHandler:(id)handler
{
  resourceCopy = resource;
  dCopy = d;
  optionsCopy = options;
  identifierCopy = identifier;
  handlerCopy = handler;
  v18 = voucher_copy();
  queue = self->_queue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke;
  v29[3] = &unk_1E861AC58;
  v29[4] = self;
  v30 = resourceCopy;
  v31 = optionsCopy;
  v32 = identifierCopy;
  v35 = handlerCopy;
  v36 = a2;
  v33 = dCopy;
  v34 = v18;
  v20 = v29;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v38 = v20;
  v21 = queue;
  v22 = v18;
  v23 = dCopy;
  v24 = handlerCopy;
  v25 = identifierCopy;
  v26 = optionsCopy;
  v27 = resourceCopy;
  v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v21, v28);
}

void __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_1E861AC58;
  v11 = *(a1 + 32);
  v2 = *(&v11 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v13 = v11;
  v14 = v5;
  *&v6 = *(a1 + 80);
  *(&v6 + 1) = *(a1 + 88);
  v10 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v15 = v9;
  v16 = v10;
  [v11 _dispatchBlockWhenOpen:v12];
}

void __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  v22 = *(a1 + 32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_3;
  v30[3] = &unk_1E861AC08;
  v3 = *(&v22 + 1);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v31 = v22;
  v32 = v6;
  v33 = *(v2 + 48);
  v7 = [v22 proxyWithErrorHandler:v30];
  v8 = *v2;
  if (v7)
  {
    v9 = v8[15];
    if (v8[14])
    {
      v8[15] = v9 + 1;
    }

    else
    {
      if (v9)
      {
        __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_2_cold_1(a1, v2);
      }

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = *(*v2 + 112);
      *(*v2 + 112) = v14;

      *(*v2 + 120) = 1;
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_324;
    v23[3] = &unk_1E861AC30;
    v20 = v16;
    v21 = *(a1 + 32);
    v24 = v20;
    v25 = v21;
    v26 = *(a1 + 48);
    v27 = *(a1 + 72);
    v29 = *(a1 + 80);
    v28 = *(a1 + 56);
    [v7 beginDownloadForResource:v20 clientBundleID:v19 options:v17 proposedTaskIdentifier:v18 reply:v23];

    v13 = v24;
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = +[CPLErrors unknownError];
    [v8 _dispatchFailedDownloadTaskForResource:v10 options:v11 proposedTaskIdentifier:v12 withError:v13 withCompletionHandler:*(a1 + 80)];
  }
}

uint64_t __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _dispatchFailedDownloadTaskForResource:*(a1 + 40) options:*(a1 + 48) proposedTaskIdentifier:*(a1 + 56) withError:a3 withCompletionHandler:*(a1 + 64)];
  v4 = *(a1 + 32);

  return [v4 _invokeOutstandingInvocationsWithTaskIdentifier:0];
}

void __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_324(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [(CPLResourceTransferTask *)[CPLProxyResourceTransferTask alloc] initWithResource:*(a1 + 32) taskIdentifier:v8];
    [(CPLProxyResourceTransferTask *)v3 setProxyLibraryManager:*(a1 + 40)];
    [(CPLResourceTransferTask *)v3 setOptions:*(a1 + 48)];
    if (![*(*(a1 + 40) + 32) count])
    {
      [CPLTransaction beginTransactionWithIdentifier:@"cpl.activeresourcedownloads" description:@"resource downloads are active" keepPower:1];
    }

    [*(*(a1 + 40) + 32) setObject:v3 forKey:v8];
    [*(a1 + 40) _storeVoucher:*(a1 + 56) forTaskWithIdentifier:v8];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v3 = +[CPLErrors unknownError];
    [v4 _dispatchFailedDownloadTaskForResource:v5 options:v6 proposedTaskIdentifier:v7 withError:v3 withCompletionHandler:*(a1 + 72)];
  }

  [*(a1 + 40) _invokeOutstandingInvocationsWithTaskIdentifier:v8];
}

- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler
{
  resourceCopy = resource;
  hintsCopy = hints;
  dCopy = d;
  handlerCopy = handler;
  v17 = objc_opt_class();
  v18 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = ___CPLProgressForAsyncCall_block_invoke_0;
  v44 = &__block_descriptor_48_e5_v8__0lu32l8;
  v45 = v17;
  v46 = a2;
  [v18 setCancellationHandler:&block];
  queue = self->_queue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v20 = *&range->var0.var3;
  v38 = *&range->var0.var0;
  v31[2] = __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke;
  v31[3] = &unk_1E861ACF8;
  v31[4] = self;
  v32 = v18;
  v36 = handlerCopy;
  intentCopy = intent;
  v33 = resourceCopy;
  v34 = hintsCopy;
  v39 = v20;
  v40 = *&range->var1.var1;
  v35 = dCopy;
  v21 = v31;
  block = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __cpl_dispatch_async_block_invoke;
  v44 = &unk_1E861B4E0;
  v45 = v21;
  v22 = queue;
  v23 = dCopy;
  v24 = hintsCopy;
  v25 = resourceCopy;
  v26 = v18;
  v27 = handlerCopy;
  v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v22, v28);
}

void __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2;
  v9[3] = &unk_1E861ACF8;
  v2 = *(a1 + 32);
  v13 = *(a1 + 72);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = *(a1 + 80);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = *(a1 + 104);
  v15 = *(a1 + 88);
  v16 = v8;
  v17 = *(a1 + 120);
  v12 = *(a1 + 64);
  [v2 _dispatchBlockWhenOpen:v9];
}

void __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_3;
  v24[3] = &unk_1E861AC80;
  v26 = *(a1 + 72);
  v25 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v24];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_4;
    v15[3] = &unk_1E861ACD0;
    v16 = v3;
    v6 = *(a1 + 48);
    v20 = *(a1 + 80);
    v7 = *(a1 + 56);
    v8 = *(a1 + 104);
    v21 = *(a1 + 88);
    v22 = v8;
    v23 = *(a1 + 120);
    v9 = *(a1 + 64);
    v19 = *(a1 + 72);
    v10 = *(a1 + 40);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v6;
    *(&v12 + 1) = v7;
    v17 = v12;
    v18 = v11;
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v15];
  }

  else
  {
    v13 = *(a1 + 72);
    if (v13)
    {
      v14 = +[CPLErrors unknownError];
      (*(v13 + 16))(v13, 0, 0, 0, 0, v14);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, 0, 0, 0, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_5;
  v9[3] = &unk_1E861ACA8;
  v6 = *(a1 + 80);
  v11 = *(a1 + 72);
  v10 = *(a1 + 64);
  v7 = *(a1 + 104);
  v8[0] = *(a1 + 88);
  v8[1] = v7;
  v8[2] = *(a1 + 120);
  [v2 getStreamingURLForResource:v3 intent:v6 hints:v4 timeRange:v8 clientBundleID:v5 completionHandler:v9];
}

uint64_t __109__CPLProxyLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = objc_opt_class();
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___CPLProgressForAsyncCall_block_invoke_0;
  v26 = &__block_descriptor_48_e5_v8__0lu32l8;
  v27 = v10;
  v28 = a2;
  [v11 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke;
  v18[3] = &unk_1E861AD48;
  v18[4] = self;
  v19 = v11;
  v20 = handlerCopy;
  typeCopy = type;
  requestedCopy = requested;
  v13 = v18;
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __cpl_dispatch_async_block_invoke;
  v26 = &unk_1E861B4E0;
  v27 = v13;
  v14 = queue;
  v15 = v11;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v14, v17);
}

void __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861AD48;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AD48;
    v9 = v3;
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, 0, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_5;
  v5[3] = &unk_1E861AD20;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 rampingRequestForResourceType:v3 numRequested:v4 completionHandler:v5];
}

uint64_t __87__CPLProxyLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)_dispatchFailedInMemoryDownloadTaskForResource:(id)resource withError:(id)error withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  resourceCopy = resource;
  v11 = [CPLResourceTransferTask alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [(CPLResourceTransferTask *)v11 initWithResource:resourceCopy taskIdentifier:uUIDString];

  [(CPLResourceTransferTask *)v16 setHighPriority:0];
  handlerCopy[2](handlerCopy, v16);

  abstractObject = [(CPLPlatformObject *)self abstractObject];
  resourceProgressDelegate = [abstractObject resourceProgressDelegate];
  [resourceProgressDelegate libraryManager:abstractObject inMemoryDownloadDidFinishForResourceTransferTask:v16 data:0 withError:errorCopy];
}

- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d completionHandler:(id)handler
{
  resourceCopy = resource;
  dCopy = d;
  handlerCopy = handler;
  v12 = voucher_copy();
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke;
  v21[3] = &unk_1E861ADC0;
  v21[4] = self;
  v22 = resourceCopy;
  v25 = handlerCopy;
  v26 = a2;
  v23 = dCopy;
  v24 = v12;
  v14 = v21;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v28 = v14;
  v15 = queue;
  v16 = v12;
  v17 = dCopy;
  v18 = handlerCopy;
  v19 = resourceCopy;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v20);
}

void __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_2;
  v9[3] = &unk_1E861ADC0;
  v8 = *(a1 + 32);
  v2 = *(&v8 + 1);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v12 = v3;
  v13 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v8 _dispatchBlockWhenOpen:v9];
}

void __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_3;
  v20[3] = &unk_1E861AD70;
  v20[4] = v2;
  v21 = *(a1 + 40);
  v22 = *(v3 + 32);
  v4 = [v2 proxyWithErrorHandler:v20];
  v5 = *v3;
  if (v4)
  {
    v6 = v5[15];
    if (v5[14])
    {
      v5[15] = v6 + 1;
    }

    else
    {
      if (v6)
      {
        __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_2_cold_1(a1, v3);
      }

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = *(*v3 + 112);
      *(*v3 + 112) = v9;

      *(*v3 + 120) = 1;
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_332;
    v15[3] = &unk_1E861AD98;
    v13 = v11;
    v14 = *(a1 + 32);
    v16 = v13;
    v17 = v14;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    [v4 beginInMemoryDownloadOfResource:v13 clientBundleID:v12 reply:v15];

    v8 = v16;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = +[CPLErrors unknownError];
    [v5 _dispatchFailedInMemoryDownloadTaskForResource:v7 withError:v8 withCompletionHandler:*(a1 + 64)];
  }
}

uint64_t __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _dispatchFailedInMemoryDownloadTaskForResource:*(a1 + 40) withError:a3 withCompletionHandler:*(a1 + 48)];
  v4 = *(a1 + 32);

  return [v4 _invokeOutstandingInvocationsWithTaskIdentifier:0];
}

void __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_332(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [(CPLResourceTransferTask *)[CPLProxyResourceTransferTask alloc] initWithResource:*(a1 + 32) taskIdentifier:v7];
    [(CPLProxyResourceTransferTask *)v3 setProxyLibraryManager:*(a1 + 40)];
    [(CPLResourceTransferTask *)v3 setHighPriority:0];
    [*(*(a1 + 40) + 40) setObject:v3 forKey:v7];
    [*(a1 + 40) _storeVoucher:*(a1 + 48) forTaskWithIdentifier:v7];
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v3 = +[CPLErrors unknownError];
    [v5 _dispatchFailedInMemoryDownloadTaskForResource:v6 withError:v3 withCompletionHandler:*(a1 + 56)];
  }

  [*(a1 + 40) _invokeOutstandingInvocationsWithTaskIdentifier:v7];
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = identifiersCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = identifiersCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 resolveLocalScopedIdentifiersForCloudScopedIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, 0, v6);
    }
  }
}

uint64_t __99__CPLProxyLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke;
  v16[3] = &unk_1E861ADE8;
  v17 = identifiersCopy;
  v18 = handlerCopy;
  v16[4] = self;
  localIdentifiersCopy = localIdentifiers;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = identifiersCopy;
  v14 = handlerCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ADE8;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 getMappedScopedIdentifiersForScopedIdentifiers:*(a1 + 40) inAreLocalIdentifiers:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, 0, v6);
    }
  }
}

uint64_t __113__CPLProxyLibraryManager_getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)createScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = scopeCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = scopeCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861AE10;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 createScope:v3 completionHandler:v4];
}

uint64_t __56__CPLProxyLibraryManager_createScope_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)updateShareForScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = scopeCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = scopeCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861AE10;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 updateShareForScope:v3 completionHandler:v4];
}

uint64_t __64__CPLProxyLibraryManager_updateShareForScope_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke;
  v18[3] = &unk_1E861AEB0;
  v18[4] = self;
  v19 = v10;
  v20 = identifierCopy;
  v21 = handlerCopy;
  forcedCopy = forced;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v24 = v12;
  v13 = queue;
  v14 = identifierCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AEB0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v2 _dispatchBlockWhenOpen:v7];
}

void __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_3;
  v14[3] = &unk_1E861AC80;
  v16 = *(a1 + 56);
  v15 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v14];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE88;
    v9 = v3;
    v10 = *(a1 + 48);
    v13 = *(a1 + 64);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_5;
  v5[3] = &unk_1E861A878;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 deleteScopeWithIdentifier:v3 forced:v4 completionHandler:v5];
}

uint64_t __77__CPLProxyLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = identifierCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = identifierCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861AE10;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 refreshScopeWithIdentifier:v3 completionHandler:v4];
}

uint64_t __71__CPLProxyLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = lCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = lCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861AE10;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 fetchSharedScopeFromShareURL:v3 completionHandler:v4];
}

uint64_t __73__CPLProxyLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)acceptSharedScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = scopeCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = scopeCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861A878;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 acceptSharedScope:v3 completionHandler:v4];
}

uint64_t __62__CPLProxyLibraryManager_acceptSharedScope_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke_0;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E861AC80;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v12];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E861ABE0;
    v9 = v3;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_5;
  v3[3] = &unk_1E861AE10;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 fetchExistingSharedLibraryScopeWithCompletionHandler:v3];
}

uint64_t __79__CPLProxyLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v20[3] = &unk_1E861AF00;
  v20[4] = self;
  v21 = v12;
  v22 = identifierCopy;
  v23 = handlerCopy;
  policyCopy = policy;
  sourceCopy = source;
  v14 = v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v27 = v14;
  v15 = queue;
  v16 = identifierCopy;
  v17 = v12;
  v18 = handlerCopy;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v15, v19);
}

void __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AF00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v2 _dispatchBlockWhenOpen:v7];
}

void __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AAF0;
  v14 = *(a1 + 56);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AED8;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 64);
    v11 = *(a1 + 56);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];

    v6 = v9;
LABEL_5:

    goto LABEL_6;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v6 = +[CPLErrors unknownError];
    (*(v7 + 16))(v7, 0, v6);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __110__CPLProxyLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  participantsCopy = participants;
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v24[3] = &unk_1E861AF50;
  v24[4] = self;
  v25 = v15;
  v26 = participantsCopy;
  v27 = identifierCopy;
  v28 = handlerCopy;
  policyCopy = policy;
  sourceCopy = source;
  v17 = v24;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v32 = v17;
  v18 = queue;
  v19 = identifierCopy;
  v20 = participantsCopy;
  v21 = v15;
  v22 = handlerCopy;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v18, v23);
}

void __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
  v8[3] = &unk_1E861AF50;
  v2 = *(a1 + 32);
  v11 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v12 = *(a1 + 72);
  [v2 _dispatchBlockWhenOpen:v8];
}

void __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3;
  v14[3] = &unk_1E861AAF0;
  v15 = *(a1 + 64);
  v3 = [v2 proxyWithErrorHandler:v14];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AF28;
    v9 = v3;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 72);
    v12 = *(a1 + 64);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];

    v6 = v9;
LABEL_5:

    goto LABEL_6;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v6 = +[CPLErrors unknownError];
    (*(v7 + 16))(v7, 0, v6);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __120__CPLProxyLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke_0;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E861AC80;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v12];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E861ABE0;
    v9 = v3;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_5;
  v3[3] = &unk_1E861AF78;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 sharedLibraryRampCheckWithCompletionHandler:v3];
}

uint64_t __70__CPLProxyLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke;
  v16[3] = &unk_1E861AFA0;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = handlerCopy;
  countCopy = count;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v7 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = v3;
  v8 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

void __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v7];
  v4 = v3;
  if (v3)
  {
    [v3 getStatusForPendingRecordsSharedToScopeWithIdentifier:*(a1 + 40) maximumCount:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = +[CPLErrors unknownError];
      (*(v5 + 16))(v5, 0, v6);
    }
  }
}

uint64_t __111__CPLProxyLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler
{
  participantsCopy = participants;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = participantsCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = participantsCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

void __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861AFC8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 queryUserDetailsForShareParticipants:v3 completionHandler:v4];
}

uint64_t __81__CPLProxyLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)testKey:(id)key value:(id)value completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  handlerCopy = handler;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke;
  v18[3] = &unk_1E861B018;
  v18[4] = self;
  v19 = keyCopy;
  v20 = valueCopy;
  v21 = handlerCopy;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = handlerCopy;
  v15 = valueCopy;
  v16 = keyCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861B018;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _dispatchBlockWhenOpen:v7];
}

void __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke_2(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke_3;
  v7 = &unk_1E861AFF0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:&v4];
  [v3 testKey:*(a1 + 40) value:*(a1 + 48) completionHandler:{*(a1 + 56), v4, v5, v6, v7}];
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = identifiersCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke_3;
  v6[3] = &unk_1E861B040;
  v5 = *(a1 + 48);
  v3 = v5;
  v7 = v5;
  v4 = [v2 proxyWithErrorHandler:v6];
  [v4 getTargetsForRecordsWithScopedIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)deleteResources:(id)resources checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke;
  v16[3] = &unk_1E861B090;
  v16[4] = self;
  v17 = resourcesCopy;
  v18 = handlerCopy;
  necessaryCopy = necessary;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = handlerCopy;
  v14 = resourcesCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861B090;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke_3;
  v19[3] = &unk_1E861B068;
  v2 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v19];
  v4 = v3;
  if (v3)
  {
    [v3 deleteResources:*(a1 + 40) checkServerIfNecessary:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Proxy has disappeared", buf, 2u);
      }
    }

    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v7 = +[CPLErrors unknownError];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v6 setObject:v7 forKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkResourcesAreSafeToPrune:(id)prune checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  pruneCopy = prune;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke;
  v16[3] = &unk_1E861B090;
  v16[4] = self;
  v17 = pruneCopy;
  v18 = handlerCopy;
  necessaryCopy = necessary;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = handlerCopy;
  v14 = pruneCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861B090;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke_3;
  v19[3] = &unk_1E861B068;
  v2 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:v19];
  v4 = v3;
  if (v3)
  {
    [v3 checkResourcesAreSafeToPrune:*(a1 + 40) checkServerIfNecessary:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Proxy has disappeared", buf, 2u);
      }
    }

    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v7 = +[CPLErrors unknownError];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v6 setObject:v7 forKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetStatus
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__CPLProxyLibraryManager_resetStatus__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __37__CPLProxyLibraryManager_resetStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CPLProxyLibraryManager_resetStatus__block_invoke_2;
  v3[3] = &unk_1E861A940;
  v3[4] = v1;
  return [v1 _dispatchBlockWhenOpen:v3];
}

- (void)startSyncSession
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLProxyLibraryManager_startSyncSession__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __42__CPLProxyLibraryManager_startSyncSession__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CPLProxyLibraryManager_startSyncSession__block_invoke_2;
  v3[3] = &unk_1E861A940;
  v3[4] = v1;
  return [v1 _dispatchBlockWhenOpen:v3];
}

- (void)noteClientIsInForegroundQuietly:(BOOL)quietly
{
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke;
  v7[3] = &unk_1E861B0D8;
  v7[4] = self;
  v7[5] = a2;
  quietlyCopy = quietly;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

uint64_t __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_2;
  v2[3] = &unk_1E861B0D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 _dispatchBlockWhenOpen:v2];
}

void __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 72);
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_3;
    v7[3] = &__block_descriptor_40_e37_v24__0__NSXPCConnection_8__NSError_16l;
    v7[4] = *(a1 + 40);
    v3 = [v2 proxyWithErrorHandler:v7];
    v4 = v3;
    if (v3)
    {
      [v3 noteClientIsInForegroundQuietly:*(a1 + 48)];
      *(*(a1 + 32) + 80) = *(a1 + 48);
LABEL_4:

      return;
    }

    __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_2_cold_1(0, &v8);
    goto LABEL_11;
  }

  if (*(v2 + 80) == 1 && (*(a1 + 48) & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_342;
    v6[3] = &__block_descriptor_40_e37_v24__0__NSXPCConnection_8__NSError_16l;
    v6[4] = *(a1 + 40);
    v5 = [v2 proxyWithErrorHandler:v6];
    v4 = v5;
    if (v5)
    {
      *(*(a1 + 32) + 80) = 0;
      [v5 noteClientIsInForegroundQuietly:0];
      [v4 noteClientIsInBackground];
      goto LABEL_4;
    }

    __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_2_cold_1(0, &v8);
LABEL_11:
    v4 = v8;
    goto LABEL_4;
  }
}

- (void)noteClientIsInBackground
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CPLProxyLibraryManager_noteClientIsInBackground__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __50__CPLProxyLibraryManager_noteClientIsInBackground__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__CPLProxyLibraryManager_noteClientIsInBackground__block_invoke_2;
  v2[3] = &unk_1E861B100;
  return [*(a1 + 32) _dispatchBlockWhenOpen:v2];
}

- (void)disableSynchronizationWithReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke;
  v11[3] = &unk_1E861B128;
  v11[4] = self;
  v12 = reasonCopy;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = reasonCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2;
  v5[3] = &unk_1E861B128;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

void __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2(void *a1)
{
  [*(a1[4] + 88) addObject:a1[5]];
  if ([*(a1[4] + 88) countForObject:a1[5]] == 1)
  {
    v2 = a1[4];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_3;
    v5[3] = &__block_descriptor_40_e37_v24__0__NSXPCConnection_8__NSError_16l;
    v5[4] = a1[6];
    v3 = [v2 proxyWithErrorHandler:v5];
    v4 = v3;
    if (v3)
    {
      [v3 disableSynchronizationWithReason:a1[5]];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2_cold_1();
    }
  }
}

- (void)enableSynchronizationWithReason:(id)reason
{
  reasonCopy = reason;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CPLProxyLibraryManager_enableSynchronizationWithReason___block_invoke;
  v11[3] = &unk_1E861B128;
  v11[4] = self;
  v12 = reasonCopy;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = reasonCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __58__CPLProxyLibraryManager_enableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CPLProxyLibraryManager_enableSynchronizationWithReason___block_invoke_2;
  v5[3] = &unk_1E861B128;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)disableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CPLProxyLibraryManager_disableMingling__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __41__CPLProxyLibraryManager_disableMingling__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__CPLProxyLibraryManager_disableMingling__block_invoke_2;
  v2[3] = &unk_1E861B100;
  return [*(a1 + 32) _dispatchBlockWhenOpen:v2];
}

void __41__CPLProxyLibraryManager_disableMingling__block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 96);
  v3 = *(a1 + 32);
  if (v3[12] == 1)
  {
    v6[7] = v1;
    v6[8] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__CPLProxyLibraryManager_disableMingling__block_invoke_3;
    v6[3] = &__block_descriptor_40_e37_v24__0__NSXPCConnection_8__NSError_16l;
    v6[4] = *(a1 + 40);
    v4 = [v3 proxyWithErrorHandler:v6];
    v5 = v4;
    if (v4)
    {
      [v4 disableMingling];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2_cold_1();
    }
  }
}

- (void)enableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CPLProxyLibraryManager_enableMingling__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __40__CPLProxyLibraryManager_enableMingling__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__CPLProxyLibraryManager_enableMingling__block_invoke_2;
  v2[3] = &unk_1E861B100;
  return [*(a1 + 32) _dispatchBlockWhenOpen:v2];
}

- (void)noteClientIsBeginningSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke_2;
  v2[3] = &unk_1E861B100;
  return [*(a1 + 32) _dispatchBlockWhenOpen:v2];
}

void __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 104);
  v3 = *(a1 + 32);
  if (v3[13] == 1)
  {
    v6[7] = v1;
    v6[8] = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke_3;
    v6[3] = &__block_descriptor_40_e37_v24__0__NSXPCConnection_8__NSError_16l;
    v6[4] = *(a1 + 40);
    v4 = [v3 proxyWithErrorHandler:v6];
    v5 = v4;
    if (v4)
    {
      [v4 noteClientIsBeginningSignificantWork];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2_cold_1();
    }
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CPLProxyLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __64__CPLProxyLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__CPLProxyLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E861AAC8;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _dispatchBlockWhenOpen:v4];
}

- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets
{
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CPLProxyLibraryManager_setShouldOverride_forSystemBudgets___block_invoke;
  v8[3] = &unk_1E861B150;
  v8[4] = self;
  v8[5] = a2;
  overrideCopy = override;
  v8[6] = budgets;
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v11 = v5;
  v6 = queue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

uint64_t __61__CPLProxyLibraryManager_setShouldOverride_forSystemBudgets___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__CPLProxyLibraryManager_setShouldOverride_forSystemBudgets___block_invoke_2;
  v2[3] = &unk_1E861B150;
  v3 = *(a1 + 32);
  v5 = *(a1 + 56);
  v4 = *(a1 + 48);
  return [v3 _dispatchBlockWhenOpen:v2];
}

- (void)noteClientIsEndingSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CPLProxyLibraryManager_noteClientIsEndingSignificantWork__block_invoke;
  v6[3] = &unk_1E861B100;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __59__CPLProxyLibraryManager_noteClientIsEndingSignificantWork__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__CPLProxyLibraryManager_noteClientIsEndingSignificantWork__block_invoke_2;
  v2[3] = &unk_1E861B100;
  return [*(a1 + 32) _dispatchBlockWhenOpen:v2];
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E861AAC8;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _dispatchBlockWhenOpen:v4];
}

void __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  v6 = *(a1 + 40);
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E861B040;
  v3 = v6;
  v8 = v6;
  v4 = [v2 proxyWithErrorHandler:v7];
  v5 = v4;
  if (v4)
  {
    [v4 checkHasBackgroundDownloadOperationsWithCompletionHandler:*v1];
  }

  else
  {
    __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2_cold_1(v1);
  }
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = identifiersCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1 + 6;
  v7 = *(a1 + 3);
  v3 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 getStatusForRecordsWithScopedIdentifiers:a1[5] completionHandler:a1[6]];
  }

  else
  {
    __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2_cold_1(v2);
  }
}

- (void)getChangedStatusesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v12 = handlerCopy;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E861AAC8;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _dispatchBlockWhenOpen:v4];
}

void __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  v6 = *(a1 + 40);
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E861B040;
  v3 = v6;
  v8 = v6;
  v4 = [v2 proxyWithErrorHandler:v7];
  v5 = v4;
  if (v4)
  {
    [v4 getChangedStatusesWithCompletionHandler:*v1];
  }

  else
  {
    __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2_cold_1(v1);
  }
}

- (void)acknowledgeChangedStatuses:(id)statuses
{
  statusesCopy = statuses;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CPLProxyLibraryManager_acknowledgeChangedStatuses___block_invoke;
  v11[3] = &unk_1E861B128;
  v12 = statusesCopy;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = statusesCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __53__CPLProxyLibraryManager_acknowledgeChangedStatuses___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__CPLProxyLibraryManager_acknowledgeChangedStatuses___block_invoke_2;
  v4[3] = &unk_1E861B128;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _dispatchBlockWhenOpen:v4];
}

- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CPLProxyLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke;
  v13[3] = &unk_1E861B178;
  v14 = identifiersCopy;
  v15 = a2;
  v13[4] = self;
  persistCopy = persist;
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = identifiersCopy;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void __82__CPLProxyLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CPLProxyLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke_2;
  v5[3] = &unk_1E861B178;
  v5[4] = v2;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v5];
}

- (BOOL)_setStatusFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"status"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"error"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    null = [MEMORY[0x1E695DFB0] null];

    if (v6 == null)
    {

      v6 = 0;
    }

    abstractObject = [(CPLPlatformObject *)self abstractObject];
    v10 = [abstractObject _setStatus:unsignedIntegerValue andError:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = identifierCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1 + 6;
  v7 = *(a1 + 3);
  v3 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 getScopeStatusCountsForScopeWithIdentifier:a1[5] completionHandler:a1[6]];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v2);
  }
}

- (void)_invokeSyncOutstandingInvocationsWithTaskIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  syncOutstandingInvocationsCount = self->_syncOutstandingInvocationsCount;
  if (!syncOutstandingInvocationsCount)
  {
    [CPLProxyLibraryManager _invokeSyncOutstandingInvocationsWithTaskIdentifier:];
  }

  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_syncOutstandingInvocations objectForKey:identifierCopy];
    if (v7)
    {
      [(NSMutableDictionary *)self->_syncOutstandingInvocations removeObjectForKey:v6];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v13 = 138412546;
          v14 = v6;
          v15 = 2112;
          v16 = v7;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Got some callbacks for task with identifier %@ before we actually knew about it, redispatching: %@", &v13, 0x16u);
        }
      }

      if ([v7 didFinish])
      {
        errors = [v7 errors];
        [(CPLProxyLibraryManager *)self forceSyncDidFinishForTask:v6 withErrors:errors];
      }
    }

    syncOutstandingInvocationsCount = self->_syncOutstandingInvocationsCount;
  }

  v10 = syncOutstandingInvocationsCount - 1;
  self->_syncOutstandingInvocationsCount = v10;
  if (!v10)
  {
    if ([(NSMutableDictionary *)self->_syncOutstandingInvocations count]&& (_CPLSilentLogging & 1) == 0)
    {
      [CPLProxyLibraryManager _invokeOutstandingInvocationsWithTaskIdentifier:?];
    }

    syncOutstandingInvocations = self->_syncOutstandingInvocations;
    self->_syncOutstandingInvocations = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchFailedForceSyncTaskForScopeIdentifiers:(id)identifiers withError:(id)error withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  identifiersCopy = identifiers;
  v16 = [[CPLForceSyncTask alloc] initWithScopeIdentifiers:identifiersCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(CPLForceSyncTask *)v16 setTaskIdentifier:uUIDString];

  handlerCopy[2](handlerCopy, v16);
  abstractObject = [(CPLPlatformObject *)self abstractObject];
  forceSyncDelegate = [abstractObject forceSyncDelegate];
  v15 = [CPLErrors errorsForIdentifiers:identifiersCopy error:errorCopy];

  [forceSyncDelegate libraryManager:abstractObject didFinishForceSyncTask:v16 withErrors:v15];
}

- (void)forceSynchronizingScopeWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9 = voucher_copy();
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke;
  v17[3] = &unk_1E861B1A0;
  v17[4] = self;
  v18 = identifiersCopy;
  v20 = handlerCopy;
  v21 = a2;
  v19 = v9;
  v11 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v23 = v11;
  v12 = queue;
  v13 = v9;
  v14 = handlerCopy;
  v15 = identifiersCopy;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v16);
}

void __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_2;
  v6[3] = &unk_1E861B1A0;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v7 = v5;
  v8 = v4;
  [v5 _dispatchBlockWhenOpen:v6];
}

void __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_3;
  v20[3] = &unk_1E861AD70;
  v20[4] = v2;
  v21 = *(a1 + 40);
  v22 = *(v3 + 24);
  v4 = [v2 proxyWithErrorHandler:v20];
  v5 = *v3;
  if (v4)
  {
    v6 = v5[17];
    if (v5[16])
    {
      v5[17] = v6 + 1;
    }

    else
    {
      if (v6)
      {
        __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_2_cold_1(a1, v3);
      }

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = *(*v3 + 128);
      *(*v3 + 128) = v9;

      *(*v3 + 136) = 1;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_351;
    v17[3] = &unk_1E861AD98;
    v11 = *(a1 + 40);
    *&v12 = v11;
    *(&v12 + 1) = *(a1 + 32);
    v16 = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v18 = v16;
    v19 = v15;
    [v4 forceSyncForScopeIdentifiers:v11 reply:v17];

    v8 = v18;
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = +[CPLErrors unknownError];
    [v5 _dispatchFailedForceSyncTaskForScopeIdentifiers:v7 withError:v8 withCompletionHandler:*(a1 + 56)];
  }
}

uint64_t __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _dispatchFailedForceSyncTaskForScopeIdentifiers:*(a1 + 40) withError:a3 withCompletionHandler:*(a1 + 48)];
  v4 = *(a1 + 32);

  return [v4 _invokeSyncOutstandingInvocationsWithTaskIdentifier:0];
}

void __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_351(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [(CPLForceSyncTask *)[CPLProxyForceSyncTask alloc] initWithScopeIdentifiers:*(a1 + 32)];
    [(CPLForceSyncTask *)v4 setTaskIdentifier:v3];
    [(CPLProxyForceSyncTask *)v4 setProxyLibraryManager:*(a1 + 40)];
    [*(*(a1 + 40) + 56) setObject:v4 forKeyedSubscript:v3];
    [*(a1 + 40) _storeVoucher:*(a1 + 48) forTaskWithIdentifier:v3];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 0;
    v4 = +[CPLErrors unknownError];
    [v5 _dispatchFailedForceSyncTaskForScopeIdentifiers:v6 withError:v4 withCompletionHandler:*(a1 + 56)];
  }

  [*(a1 + 40) _invokeSyncOutstandingInvocationsWithTaskIdentifier:a2];
}

- (void)downloadDidStartForResourceTransferTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke;
  v11[3] = &unk_1E861B128;
  v11[4] = self;
  v12 = taskCopy;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = taskCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke_2;
  v5[3] = &unk_1E861B128;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)downloadDidProgress:(float)progress forResourceTransferTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke;
  v13[3] = &unk_1E861B218;
  v13[4] = self;
  v14 = taskCopy;
  progressCopy = progress;
  v15 = a2;
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = taskCopy;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke_2;
  v5[3] = &unk_1E861B218;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)downloadDidFinishForResourceTransferTask:(id)task finalResource:(id)resource withError:(id)error
{
  taskCopy = task;
  resourceCopy = resource;
  errorCopy = error;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__CPLProxyLibraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke;
  v19[3] = &unk_1E861B268;
  v19[4] = self;
  v20 = errorCopy;
  v21 = taskCopy;
  v22 = resourceCopy;
  v23 = a2;
  v13 = v19;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v25 = v13;
  v14 = queue;
  v15 = resourceCopy;
  v16 = taskCopy;
  v17 = errorCopy;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v18);
}

void __91__CPLProxyLibraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__CPLProxyLibraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke_2;
  v9[3] = &unk_1E861B268;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v3 _dispatchBlockWhenOpen:v9];
}

- (void)inMemoryDownloadDidFinishForResourceTransferTask:(id)task data:(id)data withError:(id)error
{
  taskCopy = task;
  dataCopy = data;
  errorCopy = error;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__CPLProxyLibraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke;
  v19[3] = &unk_1E861B268;
  v19[4] = self;
  v20 = errorCopy;
  v21 = taskCopy;
  v22 = dataCopy;
  v23 = a2;
  v13 = v19;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v25 = v13;
  v14 = queue;
  v15 = dataCopy;
  v16 = taskCopy;
  v17 = errorCopy;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v18);
}

void __90__CPLProxyLibraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__CPLProxyLibraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke_2;
  v9[3] = &unk_1E861B268;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  [v3 _dispatchBlockWhenOpen:v9];
}

- (void)backgroundDownloadDidFinishForResource:(id)resource
{
  resourceCopy = resource;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CPLProxyLibraryManager_backgroundDownloadDidFinishForResource___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = resourceCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = resourceCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __65__CPLProxyLibraryManager_backgroundDownloadDidFinishForResource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__CPLProxyLibraryManager_backgroundDownloadDidFinishForResource___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)backgroundDownloadDidFailForResource:(id)resource
{
  resourceCopy = resource;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CPLProxyLibraryManager_backgroundDownloadDidFailForResource___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = resourceCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = resourceCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __63__CPLProxyLibraryManager_backgroundDownloadDidFailForResource___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __63__CPLProxyLibraryManager_backgroundDownloadDidFailForResource___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (id)_uploadTaskDidStartForResource:(id)resource withTaskIdentifier:(id)identifier
{
  resourceCopy = resource;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_uploadTasks objectForKey:identifierCopy];
  if (!v8)
  {
    v8 = [(CPLResourceTransferTask *)[CPLProxyResourceTransferTask alloc] initWithResource:resourceCopy taskIdentifier:identifierCopy];
    [(CPLProxyResourceTransferTask *)v8 setProxyLibraryManager:self];
    [(NSMutableDictionary *)self->_uploadTasks setObject:v8 forKey:identifierCopy];
    abstractObject = [(CPLPlatformObject *)self abstractObject];
    resourceProgressDelegate = [abstractObject resourceProgressDelegate];
    [resourceProgressDelegate libraryManager:abstractObject uploadDidStartForResourceTransferTask:v8];
  }

  return v8;
}

- (void)uploadDidStartForResource:(id)resource withResourceTransferTask:(id)task
{
  resourceCopy = resource;
  taskCopy = task;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLProxyLibraryManager_uploadDidStartForResource_withResourceTransferTask___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = resourceCopy;
  v16 = taskCopy;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = taskCopy;
  v12 = resourceCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __77__CPLProxyLibraryManager_uploadDidStartForResource_withResourceTransferTask___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__CPLProxyLibraryManager_uploadDidStartForResource_withResourceTransferTask___block_invoke_2;
  v5[3] = &unk_1E861B1C8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)uploadOfResource:(id)resource didProgress:(float)progress forResourceTransferTask:(id)task
{
  resourceCopy = resource;
  taskCopy = task;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__CPLProxyLibraryManager_uploadOfResource_didProgress_forResourceTransferTask___block_invoke;
  v16[3] = &unk_1E861B1F0;
  v16[4] = self;
  v17 = resourceCopy;
  v18 = taskCopy;
  progressCopy = progress;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = taskCopy;
  v14 = resourceCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __79__CPLProxyLibraryManager_uploadOfResource_didProgress_forResourceTransferTask___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__CPLProxyLibraryManager_uploadOfResource_didProgress_forResourceTransferTask___block_invoke_2;
  v5[3] = &unk_1E861B1F0;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)uploadOfResource:(id)resource didFinishForResourceTransferTask:(id)task withError:(id)error
{
  resourceCopy = resource;
  taskCopy = task;
  errorCopy = error;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__CPLProxyLibraryManager_uploadOfResource_didFinishForResourceTransferTask_withError___block_invoke;
  v18[3] = &unk_1E861B2B8;
  v18[4] = self;
  v19 = errorCopy;
  v20 = resourceCopy;
  v21 = taskCopy;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = taskCopy;
  v15 = resourceCopy;
  v16 = errorCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __86__CPLProxyLibraryManager_uploadOfResource_didFinishForResourceTransferTask_withError___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__CPLProxyLibraryManager_uploadOfResource_didFinishForResourceTransferTask_withError___block_invoke_2;
  v8[3] = &unk_1E861B2B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v3 _dispatchBlockWhenOpen:v8];
}

- (void)libraryManagerHasChangesToPull
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CPLProxyLibraryManager_libraryManagerHasChangesToPull__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __56__CPLProxyLibraryManager_libraryManagerHasChangesToPull__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CPLProxyLibraryManager_libraryManagerHasChangesToPull__block_invoke_2;
  v3[3] = &unk_1E861A940;
  v3[4] = v1;
  return [v1 _dispatchBlockWhenOpen:v3];
}

- (void)libraryManagerDidUpdateStatusWithProperties:(id)properties
{
  propertiesCopy = properties;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CPLProxyLibraryManager_libraryManagerDidUpdateStatusWithProperties___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = propertiesCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = propertiesCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __70__CPLProxyLibraryManager_libraryManagerDidUpdateStatusWithProperties___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__CPLProxyLibraryManager_libraryManagerDidUpdateStatusWithProperties___block_invoke_2;
  v5[3] = &unk_1E861B290;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

- (void)libraryManagerDidUpdateSizeOfResourcesToUploadToSize:(unint64_t)size sizeOfOriginalResourcesToUpload:(unint64_t)upload numberOfImages:(unint64_t)images numberOfVideos:(unint64_t)videos numberOfOtherItems:(unint64_t)items
{
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __160__CPLProxyLibraryManager_libraryManagerDidUpdateSizeOfResourcesToUploadToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke;
  v11[3] = &unk_1E861B2E0;
  v11[4] = self;
  v11[5] = size;
  v11[6] = upload;
  v11[7] = images;
  v11[8] = videos;
  v11[9] = items;
  v8 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v8;
  v9 = queue;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v10);
}

uint64_t __160__CPLProxyLibraryManager_libraryManagerDidUpdateSizeOfResourcesToUploadToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __160__CPLProxyLibraryManager_libraryManagerDidUpdateSizeOfResourcesToUploadToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke_2;
  v3[3] = &unk_1E861B2E0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  return [v1 _dispatchBlockWhenOpen:v3];
}

- (void)libraryManagerHasStatusChanges
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CPLProxyLibraryManager_libraryManagerHasStatusChanges__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __56__CPLProxyLibraryManager_libraryManagerHasStatusChanges__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CPLProxyLibraryManager_libraryManagerHasStatusChanges__block_invoke_2;
  v3[3] = &unk_1E861A940;
  v3[4] = v1;
  return [v1 _dispatchBlockWhenOpen:v3];
}

- (void)forceSyncDidFinishForTask:(id)task withErrors:(id)errors
{
  taskCopy = task;
  errorsCopy = errors;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke;
  v15[3] = &unk_1E861B330;
  v15[4] = self;
  v16 = errorsCopy;
  v17 = taskCopy;
  v18 = a2;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = taskCopy;
  v13 = errorsCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke_2;
  v8[3] = &unk_1E861B330;
  v3 = (a1 + 56);
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v2;
  v7 = v5;
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *v3;
  v9 = v7;
  v10 = v6;
  [v4 _dispatchBlockWhenOpen:v8];
}

void __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cplReinflatedErrorForXPC];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)provideLocalResource:(id)resource recordClassString:(id)string completionHandler:(id)handler
{
  resourceCopy = resource;
  stringCopy = string;
  handlerCopy = handler;
  v11 = NSClassFromString(stringCopy);
  if (v11 && (v12 = v11, ([(objc_class *)v11 isSubclassOfClass:objc_opt_class()]& 1) != 0))
  {
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke;
    v17[3] = &unk_1E861B358;
    v17[4] = self;
    v18 = resourceCopy;
    v20 = v12;
    v19 = handlerCopy;
    v14 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke;
    block[3] = &unk_1E861B4E0;
    v22 = v14;
    v15 = queue;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v15, v16);
  }

  else
  {
    [CPLProxyLibraryManager provideLocalResource:recordClassString:completionHandler:];
  }
}

void __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861B358;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  [v2 _dispatchBlockWhenOpen:v5];
}

void __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 delegate];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(a1 + 40);
          v7 = 138412290;
          v8 = v5;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Asking delegate to provide (local) %@", &v7, 0xCu);
        }
      }

      [v3 libraryManager:v2 provideLocalResource:*(a1 + 40) recordClass:*(a1 + 56) completionHandler:*(a1 + 48)];
    }

    else
    {
      __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2_cold_1(_CPLSilentLogging, a1);
    }
  }

  else
  {
    __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2_cold_2(a1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E861AA50;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

void __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 delegate];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Asking delegate to push all changes", v5, 2u);
        }
      }

      [v3 libraryManager:v2 pushAllChangesWithCompletionHandler:*(a1 + 40)];
    }

    else
    {
      __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2_cold_1(_CPLSilentLogging, a1);
    }
  }

  else
  {
    __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2_cold_2(a1);
  }
}

- (void)providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler
{
  statesCopy = states;
  lCopy = l;
  handlerCopy = handler;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke;
  v28[3] = &unk_1E861B380;
  v12 = v11;
  v29 = v12;
  v30 = handlerCopy;
  v13 = handlerCopy;
  v14 = MEMORY[0x1E128EBA0](v28);
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2;
  v23[3] = &unk_1E861B3A8;
  v23[4] = self;
  v24 = v12;
  v25 = statesCopy;
  v26 = lCopy;
  v27 = v14;
  v16 = v23;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v32 = v16;
  v17 = queue;
  v18 = v14;
  v19 = lCopy;
  v20 = statesCopy;
  v21 = v12;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v17, v22);
}

void __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) isCancelled];
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = +[CPLErrors operationCancelledError];
    (*(v7 + 16))(v7, v9, v8);
  }

  else
  {
    (*(v7 + 16))(v7, v9, v5);
  }
}

void __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861B3A8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 _dispatchBlockWhenOpen:v7];
}

void __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 recordComputeStateDelegate];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_4;
    v7[3] = &unk_1E861B3A8;
    v8 = v3;
    v9 = v2;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v7];

    v6 = v8;
  }

  else
  {
    __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3_cold_1(a1, &v13);
    v6 = v13;
  }
}

- (void)cancelTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__CPLProxyLibraryManager_cancelTask___block_invoke;
  v10[3] = &unk_1E861B290;
  v11 = taskCopy;
  selfCopy = self;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = queue;
  v8 = taskCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)cancelSyncTask:(id)task
{
  taskCopy = task;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__CPLProxyLibraryManager_cancelSyncTask___block_invoke;
  v10[3] = &unk_1E861B290;
  v11 = taskCopy;
  selfCopy = self;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = queue;
  v8 = taskCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)barrier
{
  v3 = dispatch_semaphore_create(0);
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__CPLProxyLibraryManager_barrier__block_invoke;
  v9[3] = &unk_1E861B290;
  v9[4] = self;
  v10 = v3;
  v5 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v12 = v5;
  v6 = queue;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __33__CPLProxyLibraryManager_barrier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __33__CPLProxyLibraryManager_barrier__block_invoke_2;
    v3[3] = &unk_1E861A940;
    v4 = *(a1 + 40);
    [v2 addBarrierBlock:v3];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = handlerCopy;
  v12 = identifierCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861B3D0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_3;
  v8 = &unk_1E861B068;
  v2 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v3 = [v2 proxyWithErrorHandler:&v5];
  v4 = v3;
  if (v3)
  {
    [v3 getResourcesForItemWithScopedIdentifier:*(a1 + 40) completionHandler:{*(a1 + 48), v5, v6, v7, v8, v9}];
  }

  else
  {
    __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_2_cold_1((a1 + 48));
  }
}

- (void)compactFileCacheWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E861AA50;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

void __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E861AAF0;
  v7 = v1;
  v4 = [v3 proxyWithErrorHandler:v6];
  v5 = v4;
  if (v4)
  {
    [v4 compactFileCacheWithCompletionHandler:*v2];
  }

  else
  {
    __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_2_cold_1(v2);
  }
}

- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke;
  v16[3] = &unk_1E861AFA0;
  v18 = handlerCopy;
  optionCopy = option;
  v16[4] = self;
  v17 = reasonCopy;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = reasonCopy;
  v14 = handlerCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke_2(void *a1)
{
  v3 = a1 + 6;
  v2 = a1[6];
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 resetCacheWithOption:a1[7] reason:a1[5] completionHandler:a1[6]];
  }

  else
  {
    __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)getListOfComponentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_1E861AA50;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

void __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E861AAF0;
  v7 = v1;
  v4 = [v3 proxyWithErrorHandler:v6];
  v5 = v4;
  if (v4)
  {
    [v4 getListOfComponentsWithCompletionHandler:*v2];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v2);
  }
}

- (void)getStatusForComponents:(id)components completionHandler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = componentsCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = componentsCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke_2(void *a1)
{
  v3 = a1 + 6;
  v2 = a1[6];
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 getStatusForComponents:a1[5] completionHandler:a1[6]];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)getStatusArrayForComponents:(id)components completionHandler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = componentsCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = componentsCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke_2(void *a1)
{
  v3 = a1 + 6;
  v2 = a1[6];
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 getStatusArrayForComponents:a1[5] completionHandler:a1[6]];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke;
  v16[3] = &unk_1E861ADE8;
  v17 = identifiersCopy;
  v18 = handlerCopy;
  v16[4] = self;
  storagesCopy = storages;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = identifiersCopy;
  v14 = handlerCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ADE8;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 getStatusesForScopesWithIdentifiers:*(a1 + 40) includeStorages:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  handlerCopy = handler;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = identifiersCopy;
  v20 = propertiesCopy;
  v21 = handlerCopy;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = propertiesCopy;
  v15 = identifiersCopy;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke_2(void *a1)
{
  v3 = a1 + 7;
  v2 = a1[7];
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 getCloudCacheRecordsWithLocalScopedIdentifiers:a1[5] desiredProperties:a1[6] completionHandler:a1[7]];
  }

  else
  {
    __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke;
  v16[3] = &unk_1E861ADE8;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v16[4] = self;
  relatedCopy = related;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_2;
  v3[3] = &unk_1E861ADE8;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861AAF0;
  v8 = v2;
  v5 = [v4 proxyWithErrorHandler:v7];
  v6 = v5;
  if (v5)
  {
    [v5 cloudCacheGetDescriptionForRecordWithScopedIdentifier:*(a1 + 40) related:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_2_cold_1(v3);
  }
}

- (void)addInfoToLog:(id)log
{
  logCopy = log;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__CPLProxyLibraryManager_addInfoToLog___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = logCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = logCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __39__CPLProxyLibraryManager_addInfoToLog___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__CPLProxyLibraryManager_addInfoToLog___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)forceBackupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke_0;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E861AC80;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v12];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E861ABE0;
    v9 = v3;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_5;
  v3[3] = &unk_1E861A878;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 forceBackupWithCompletionHandler:v3];
}

uint64_t __59__CPLProxyLibraryManager_forceBackupWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke_0;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861ABE0;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v3];
}

void __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_1E861AC80;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v12];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4;
    v8[3] = &unk_1E861ABE0;
    v9 = v3;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_5;
  v3[3] = &unk_1E861A878;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 requestClientToPushAllChangesWithCompletionHandler:v3];
}

uint64_t __77__CPLProxyLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke_0;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = identifiersCopy;
  v21 = handlerCopy;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = identifiersCopy;
  v15 = v10;
  v16 = handlerCopy;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861AE60;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 _dispatchBlockWhenOpen:v7];
}

void __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_3;
  v13[3] = &unk_1E861AC80;
  v15 = *(a1 + 56);
  v14 = *(a1 + 40);
  v3 = [v2 proxyWithErrorHandler:v13];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_4;
    v8[3] = &unk_1E861AE38;
    v9 = v3;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = *(a1 + 40);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = +[CPLErrors unknownError];
      (*(v6 + 16))(v6, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

uint64_t __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, a3);
  }

  v5 = [*(a1 + 32) totalUnitCount];
  v6 = *(a1 + 32);

  return [v6 setCompletedUnitCount:v5];
}

void __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_5;
  v4[3] = &unk_1E861A878;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 requestClientToPullAllChangesInScopeIdentifiers:v3 completionHandler:v4];
}

uint64_t __92__CPLProxyLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) totalUnitCount];
  v4 = *(a1 + 32);

  return [v4 setCompletedUnitCount:v3];
}

- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = settingCopy;
  v16 = valueCopy;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = valueCopy;
  v12 = settingCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke_2;
  v3[3] = &unk_1E861B1C8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _dispatchBlockWhenOpen:v3];
}

- (void)reportMiscInformation:(id)information
{
  informationCopy = information;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__CPLProxyLibraryManager_reportMiscInformation___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = informationCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = informationCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __48__CPLProxyLibraryManager_reportMiscInformation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__CPLProxyLibraryManager_reportMiscInformation___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)blockEngineElement:(id)element
{
  elementCopy = element;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__CPLProxyLibraryManager_blockEngineElement___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = elementCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = elementCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __45__CPLProxyLibraryManager_blockEngineElement___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__CPLProxyLibraryManager_blockEngineElement___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)unblockEngineElement:(id)element
{
  elementCopy = element;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CPLProxyLibraryManager_unblockEngineElement___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = elementCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = elementCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __47__CPLProxyLibraryManager_unblockEngineElement___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__CPLProxyLibraryManager_unblockEngineElement___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)unblockEngineElementOnce:(id)once
{
  onceCopy = once;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CPLProxyLibraryManager_unblockEngineElementOnce___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = onceCopy;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = onceCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __51__CPLProxyLibraryManager_unblockEngineElementOnce___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__CPLProxyLibraryManager_unblockEngineElementOnce___block_invoke_2;
  v2[3] = &unk_1E861B290;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dispatchBlockWhenOpen:v2];
}

- (void)provideScopeChangeForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = identifierCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 provideScopeChangeForScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1((v2 + 8), v2);
  }
}

- (void)provideRecordWithCloudScopeIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = identifierCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 provideRecordWithCloudScopeIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1((v2 + 8), v2);
  }
}

- (void)provideCloudResource:(id)resource completionHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = resourceCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = resourceCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 provideCloudResource:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1((v2 + 8), v2);
  }
}

- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler
{
  recipeCopy = recipe;
  handlerCopy = handler;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E861B3F8;
  v19 = handlerCopy;
  v20 = a2;
  v17[4] = self;
  v18 = recipeCopy;
  defaultsCopy = defaults;
  v12 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = recipeCopy;
  v15 = handlerCopy;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

void __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E861B3F8;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  v8 = *(a1 + 64);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 addDropDerivativesRecipe:*(a1 + 40) writeToUserDefaults:*(a1 + 64) withCompletionHandler:*(a1 + 48)];
  }

  else
  {
    __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2_cold_1((v2 + 8), v2);
  }
}

- (void)attachComputeStates:(id)states completionHandler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = handlerCopy;
  v18 = a2;
  v15[4] = self;
  v16 = statesCopy;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = statesCopy;
  v13 = handlerCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AFA0;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v3 = v4;
  v7 = v4;
  v6 = *(a1 + 40);
  [v2 _dispatchBlockWhenOpen:v5];
}

void __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 48;
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke_3;
  v8[3] = &unk_1E861B040;
  v4 = v7;
  v9 = v7;
  v5 = [v3 proxyWithErrorHandler:v8];
  v6 = v5;
  if (v5)
  {
    [v5 attachComputeStates:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2_cold_1((v2 + 8), v2);
  }
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  validatorCopy = validator;
  handlerCopy = handler;
  v15 = objc_opt_class();
  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = ___CPLProgressForAsyncCall_block_invoke_0;
  v37 = &__block_descriptor_48_e5_v8__0lu32l8;
  v38 = v15;
  v39 = a2;
  [v16 setCancellationHandler:&block];
  queue = self->_queue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke;
  v26[3] = &unk_1E861B498;
  v30 = handlerCopy;
  v31 = a2;
  v26[4] = self;
  v27 = v16;
  v28 = identifiersCopy;
  v29 = validatorCopy;
  decryptCopy = decrypt;
  demandCopy = demand;
  v18 = v26;
  block = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __cpl_dispatch_async_block_invoke;
  v37 = &unk_1E861B4E0;
  v38 = v18;
  v19 = queue;
  v20 = validatorCopy;
  v21 = identifiersCopy;
  v22 = v16;
  v23 = handlerCopy;
  v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v19, v24);
}

void __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2;
  v10[3] = &unk_1E861B498;
  v9 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = v9;
  v13 = v9;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v2;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v14 = *(a1 + 80);
  [v2 _dispatchBlockWhenOpen:v10];
}

void __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_3;
  v20[3] = &unk_1E861B420;
  v3 = (a1 + 64);
  v14 = *(a1 + 64);
  v4 = v14;
  v5 = *(a1 + 40);
  v22 = v14;
  v21 = v5;
  v6 = [v2 proxyWithErrorHandler:v20];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_371;
    v15[3] = &unk_1E861B470;
    v16 = v6;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v19 = *(a1 + 80);
    v11 = *(a1 + 64);
    *&v12 = *(a1 + 40);
    *(&v12 + 1) = v11;
    *&v13 = v9;
    *(&v13 + 1) = v10;
    v17 = v13;
    v18 = v12;
    [v8 performAsCurrentWithPendingUnitCount:1 usingBlock:v15];
  }

  else
  {
    __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2_cold_1((a1 + 72), v3, (a1 + 40));
  }
}

void __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_371(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 73);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2_372;
  v7[3] = &unk_1E861B448;
  v9 = *(a1 + 64);
  v8 = *(a1 + 56);
  [v2 fetchComputeStatesForRecordsWithScopedIdentifiers:v3 validator:v4 shouldDecrypt:v5 onDemand:v6 completionHandler:v7];
}

uint64_t __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2_372(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

- (void)_withVoucherForTaskWithIdentifier:(id)identifier do:(id)do
{
  doCopy = do;
  v6 = [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier objectForKeyedSubscript:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    voucher_adopt();
    doCopy[2]();
  }

  else
  {
    doCopy[2]();
  }
}

- (void)_storeVoucher:(id)voucher forTaskWithIdentifier:(id)identifier
{
  if (voucher)
  {
    [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier setObject:voucher forKeyedSubscript:identifier];
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v4))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ has been deallocated", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = CPLProxyLibraryManager;
  [(CPLProxyLibraryManager *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

void __42__CPLProxyLibraryManager__setupConnection__block_invoke_270(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _connection];
  v4 = objc_loadWeakRetained((a1 + 48));

  if (v3 == v4)
  {
    if (*(*(a1 + 32) + 174) != 1)
    {
      if (WeakRetained && *(WeakRetained + 172) == 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v20 = __CPLManagerOSLogDomain();
          if (OUTLINED_FUNCTION_81(v20))
          {
            v21 = [WeakRetained abstractObject];
            OUTLINED_FUNCTION_53(v21, 5.778e-34);
            OUTLINED_FUNCTION_52();
            _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
          }
        }
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = __CPLManagerOSLogDomain();
          if (OUTLINED_FUNCTION_72(v27))
          {
            v28 = [WeakRetained abstractObject];
            OUTLINED_FUNCTION_53(v28, 5.778e-34);
            _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "%@: connection with %{public}@ was interrupted", buf, 0x16u);
          }
        }

        if (!WeakRetained)
        {
          goto LABEL_56;
        }
      }

      v3 = [WeakRetained abstractObject];
      v6 = [v3 resourceProgressDelegate];
      v29 = +[CPLErrors unknownError];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_106(v30))
        {
          OUTLINED_FUNCTION_66([WeakRetained[4] count], 3.852e-34);
          OUTLINED_FUNCTION_95();
          _os_log_impl(v31, v32, OS_LOG_TYPE_DEBUG, v33, v34, 0xCu);
        }
      }

      v35 = [WeakRetained[4] count];
      [WeakRetained[8] removeAllObjects];
      if (v6)
      {
        v36 = WeakRetained[4];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_271;
        v73[3] = &unk_1E861A8A0;
        v74 = v3;
        v75 = v6;
        v76 = v29;
        [v36 enumerateKeysAndObjectsUsingBlock:v73];
      }

      [WeakRetained[4] removeAllObjects];
      if (v35)
      {
        [CPLTransaction endTransactionWithIdentifier:@"cpl.activeresourcedownloads"];
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v37 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_106(v37))
        {
          OUTLINED_FUNCTION_66([WeakRetained[5] count], 3.852e-34);
          OUTLINED_FUNCTION_95();
          _os_log_impl(v38, v39, OS_LOG_TYPE_DEBUG, v40, v41, 0xCu);
        }
      }

      if (v6)
      {
        v42 = WeakRetained[5];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_277;
        v69[3] = &unk_1E861A8A0;
        v70 = v6;
        v71 = v3;
        v72 = v29;
        [v42 enumerateKeysAndObjectsUsingBlock:v69];
      }

      [WeakRetained[5] removeAllObjects];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v43 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_66([WeakRetained[6] count], 3.852e-34);
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_59();
          _os_log_impl(v44, v45, v46, v47, v48, v49);
        }
      }

      if (v6)
      {
        v50 = WeakRetained[6];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_278;
        v65[3] = &unk_1E861A8A0;
        v66 = v6;
        v67 = v3;
        v68 = v29;
        [v50 enumerateKeysAndObjectsUsingBlock:v65];
      }

      [WeakRetained[6] removeAllObjects];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v51 = __CPLManagerOSLogDomain();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_66([WeakRetained[7] count], 3.852e-34);
          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_59();
          _os_log_impl(v52, v53, v54, v55, v56, v57);
        }
      }

      v58 = [v3 forceSyncDelegate];
      if (v58)
      {
        v59 = WeakRetained[7];
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_99();
        v61[2] = __42__CPLProxyLibraryManager__setupConnection__block_invoke_279;
        v61[3] = &unk_1E861A8C8;
        v62 = v58;
        v63 = v3;
        v64 = v29;
        [v59 enumerateKeysAndObjectsUsingBlock:v61];
      }

      [WeakRetained[7] removeAllObjects];
      if (*(WeakRetained + 38) != 2)
      {
        *(WeakRetained + 38) = 1;
      }

      goto LABEL_54;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_81(v13))
      {
        v6 = [WeakRetained abstractObject];
        OUTLINED_FUNCTION_53(v6, 5.778e-34);
        OUTLINED_FUNCTION_52();
        v12 = 22;
        goto LABEL_10;
      }

LABEL_55:
    }
  }

  else
  {
    v3 = objc_loadWeakRetained((a1 + 48));

    if (v3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_81(v5))
        {
          v6 = objc_loadWeakRetained((a1 + 48));
          OUTLINED_FUNCTION_66(v6, 5.7779e-34);
          OUTLINED_FUNCTION_33();
LABEL_10:
          _os_log_impl(v7, v8, v9, v10, v11, v12);
LABEL_54:

          goto LABEL_55;
        }

        goto LABEL_55;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_81(v14))
      {
        *buf = 0;
        OUTLINED_FUNCTION_52();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
      }

      goto LABEL_55;
    }
  }

LABEL_56:

  v60 = *MEMORY[0x1E69E9840];
}

void __42__CPLProxyLibraryManager__setupConnection__block_invoke_2(NSObject *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&a1[4].isa);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _connection];
    v5 = objc_loadWeakRetained(&a1[5].isa);

    if (v4 == v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_81(v15))
        {
          *v25 = 138412290;
          *&v25[4] = @"com.apple.cloudphotod";
          OUTLINED_FUNCTION_33();
          _os_log_impl(v16, v17, v18, v19, v20, v21);
        }
      }

      [v3 _markConnectionAsInvalid];
    }

    else
    {
      v6 = objc_loadWeakRetained(&a1[5].isa);

      if (v6)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v7 = __CPLManagerOSLogDomain();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = objc_loadWeakRetained(&a1[5].isa);
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_59();
            _os_log_impl(v9, v10, v11, v12, v13, v14);
          }
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_81(v22))
        {
          *v25 = 0;
          OUTLINED_FUNCTION_91(&dword_1DC05A000, a1, v23, "Ignoring stale invalidation handler for old connection", v25);
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __59__CPLProxyLibraryManager__reallyOpenWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34)
{
  OUTLINED_FUNCTION_101();
  v69 = v35;
  v70 = v34;
  v67 = v36;
  v68 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v71 = *MEMORY[0x1E69E9840];
  v45 = v44;
  v46 = v41;
  v47 = a31;
  v48 = a32;
  v49 = a33;
  v50 = a34;
  v51 = [*(v43 + 32) _connection];
  v52 = *(v43 + 40);

  if (v51 == v52)
  {
    v53 = v45;
    if (v45)
    {
      if ((*(v43 + 56) & 1) == 0)
      {
        [*(v43 + 32) _markConnectionAsInvalid];
      }

      v61 = OUTLINED_FUNCTION_37(*(v43 + 48));
      v62(v61, v45, 0, 0, 0, 0);
    }

    else
    {
      [*(v43 + 32) _setStatusFromDictionary:v46];
      v63 = [*(v43 + 32) abstractObject];
      [v63 _setSizeOfResourcesToUpload:v39 sizeOfOriginalResourcesToUpload:v67 numberOfImages:v68 numberOfVideos:v70 numberOfOtherItems:v69];

      v53 = 0;
      *(*(v43 + 32) + 152) = 3;
      v64 = OUTLINED_FUNCTION_18(*(v43 + 48));
      v65(v64);
    }
  }

  else
  {
    v53 = v45;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v54 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_72(v54))
      {
        v55 = *(v43 + 40);
        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_34();
        _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      }
    }
  }

  v66 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_100();
}

void __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_290(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_291(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v6))
    {
      v7 = *(a1 + 32);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_292(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_295(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_303(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 172) & 1) == 0 && *(v3 + 168) == a2)
  {
    v4 = *(v3 + 152);
    if (v4 == 4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_93(v6))
        {
          *v8 = 0;
          OUTLINED_FUNCTION_91(&dword_1DC05A000, v2, v7, "cloudphotod has been relaunched but our current connection is invalid - will reconnect only when necessary", v8);
        }
      }
    }

    else if (v4 == 1)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_48();
      v10 = __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_2;
      v11 = &unk_1E861A940;
      v12 = v5;
      [v5 _dispatchBlockWhenOpen:v9];
    }
  }
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 152) == 1)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v2 = __CPLManagerOSLogDomain();
    if (!OUTLINED_FUNCTION_93(v2))
    {
      goto LABEL_9;
    }

    v7 = 0;
    v4 = "Failed to reconnect to cloudphotod";
    v5 = &v7;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v6 = __CPLManagerOSLogDomain();
  if (OUTLINED_FUNCTION_93(v6))
  {
    v8 = 0;
    v4 = "Automatically reconnected to cloudphotod";
    v5 = &v8;
LABEL_8:
    OUTLINED_FUNCTION_91(&dword_1DC05A000, v1, v3, v4, v5);
  }

LABEL_9:
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_306(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  OUTLINED_FUNCTION_46();
  v31 = *MEMORY[0x1E69E9840];
  v12 = v11;
  v13 = v6;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(v7 + 32) abstractObject];
        v19 = [v18 libraryIdentifier];
        OUTLINED_FUNCTION_51();
        v29[6] = 2112;
        v30 = v12;
        v20 = &dword_1DC05A000;
        v21 = "Second try opening library manager for %{public}@ failed: %@";
        v22 = v29;
        v23 = v17;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 22;
LABEL_8:
        _os_log_impl(v20, v23, v24, v21, v22, v25);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLManagerOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(v7 + 32) abstractObject];
      v19 = [v18 libraryIdentifier];
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_59();
      goto LABEL_8;
    }

LABEL_9:
  }

  v26 = OUTLINED_FUNCTION_37(*(v7 + 40));
  v27(v26, v12, v13, v14, v15, v16);

  v28 = *MEMORY[0x1E69E9840];
}

void __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_81(v3))
    {
      v4 = [*(a1 + 32) abstractObject];
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_33();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = [*(a1 + 32) abstractObject];
  _unregisterConnectedLibraryManager(v11);

  v12 = *(a1 + 32);
  v13 = v12[42];
  if (v13)
  {
    notify_cancel(v13);
    *(*(a1 + 32) + 168) = 0;
    v12 = *(a1 + 32);
  }

  if (v12[38] > 1)
  {
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_99();
    v17[2] = __53__CPLProxyLibraryManager_closeWithCompletionHandler___block_invoke_307;
    v17[3] = &unk_1E861AA50;
    v17[4] = v12;
    v18 = *(a1 + 40);
    [v12 _dispatchBlockWhenOpen:v17];
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18(*(a1 + 40));
    v15(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_81(v3))
    {
      [*(a1 + 32) abstractObject];
      *(&v34 + 4) = LODWORD(v34) = 138412290;
      OUTLINED_FUNCTION_33();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [*(a1 + 32) abstractObject];
  _unregisterConnectedLibraryManager(v10);

  v11 = *(a1 + 32);
  v12 = *(v11 + 168);
  if (v12)
  {
    notify_cancel(v12);
    *(*(a1 + 32) + 168) = 0;
    v11 = *(a1 + 32);
  }

  *&v34 = 0;
  *(&v34 + 1) = &v34;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_308;
  v31[3] = &unk_1E861AB40;
  v31[4] = v11;
  v32 = *(a1 + 40);
  v33 = &v34;
  v13 = MEMORY[0x1E128EBA0](v31);
  v14 = [*(a1 + 32) _connection];
  v15 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_309;
  v28[3] = &unk_1E861AB90;
  v28[4] = v15;
  v30 = &v34;
  v16 = v13;
  v29 = v16;
  v17 = [v15 proxyWithErrorHandler:v28];
  if (v17)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_311;
    v24[3] = &unk_1E861ABB8;
    v24[4] = *(a1 + 32);
    v25 = v14;
    v27 = &v34;
    v26 = v16;
    [v17 deactivateLibraryWithCompletionHandler:v24];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLManagerOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        OUTLINED_FUNCTION_91(&dword_1DC05A000, v18, v19, "Proxy has disappeared before deactivation", v23);
      }
    }

    v20 = *(a1 + 40);
    v21 = +[CPLErrors libraryClosedError];
    (*(v20 + 16))(v20, v21);
  }

  _Block_object_dispose(&v34, 8);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_308(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_81(v3))
    {
      v4 = [*(a1 + 32) abstractObject];
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_33();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  v12 = OUTLINED_FUNCTION_37(*(a1 + 40));
  v13(v12);
  result = [*(a1 + 32) _dropConnectionCompletly];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2_310(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  v11 = OUTLINED_FUNCTION_37(*(a1 + 48));
  result = v12(v11);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __58__CPLProxyLibraryManager_deactivateWithCompletionHandler___block_invoke_2_312(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_72(v4))
      {
        v6 = a1[4];
        v5 = a1[5];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_14();
        _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
      }

      v3 = a1[4];
    }

    v12 = *(a1[7] + 8);
    v13 = v3;
    v1 = *(v12 + 40);
    *(v12 + 40) = v13;
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_81(v14))
    {
      v15 = a1[5];
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_33();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_10;
  }

LABEL_11:
  v22 = OUTLINED_FUNCTION_37(a1[6]);
  result = v23(v22);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void __58__CPLProxyLibraryManager_testKey_value_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v15 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v9, v10, v11, v12, v13, 0x2Au);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __86__CPLProxyLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v0 + 40));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  v14(v13);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __83__CPLProxyLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_68();
  v32 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      OUTLINED_FUNCTION_67([*(v1 + 32) count], 5.7781e-34);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  [v12 initWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
  v13 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_98();
  v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v23 = v15;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v15 = OUTLINED_FUNCTION_102(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30);
        ++v25;
      }

      while (v23 != v25);
      OUTLINED_FUNCTION_98();
      v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
      v23 = v15;
    }

    while (v15);
  }

  v26 = OUTLINED_FUNCTION_37(*(v1 + 40));
  v27(v26, MEMORY[0x1E695E0F0], v12);

  v28 = *MEMORY[0x1E69E9840];
}

void __96__CPLProxyLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_68();
  v32 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      OUTLINED_FUNCTION_67([*(v1 + 32) count], 5.7781e-34);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  [v12 initWithCapacity:{objc_msgSend(*(v1 + 32), "count")}];
  v13 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_98();
  v15 = [v14 countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v23 = v15;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v13);
        }

        v15 = OUTLINED_FUNCTION_102(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30);
        ++v25;
      }

      while (v23 != v25);
      OUTLINED_FUNCTION_98();
      v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
      v23 = v15;
    }

    while (v15);
  }

  v26 = OUTLINED_FUNCTION_37(*(v1 + 40));
  v27(v26, MEMORY[0x1E695E0F0], v12);

  v28 = *MEMORY[0x1E69E9840];
}

void __37__CPLProxyLibraryManager_resetStatus__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxyWithErrorHandler:&__block_literal_global_338];
  v3 = v2;
  if (v2)
  {
    [v2 resetStatus];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }
}

void __37__CPLProxyLibraryManager_resetStatus__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __42__CPLProxyLibraryManager_startSyncSession__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxyWithErrorHandler:&__block_literal_global_340];
  v3 = v2;
  if (v2)
  {
    [v2 startSyncSession];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }
}

void __42__CPLProxyLibraryManager_startSyncSession__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)noteClientReceivedNotificationOfServerChanges
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_82(v3))
    {
      OUTLINED_FUNCTION_35();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }
}

void __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_342()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __50__CPLProxyLibraryManager_noteClientIsInBackground__block_invoke_2(uint64_t a1)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 72))
  {
    OUTLINED_FUNCTION_62(v3);
    if (!v4)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44();
      v6 = [v5 proxyWithErrorHandler:?];
      v1 = v6;
      if (v6)
      {
        [v6 noteClientIsInBackground];
        *(*(v2 + 32) + 80) = 0;
LABEL_10:

        goto LABEL_11;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_10;
      }

      v15 = __CPLManagerOSLogDomain();
      if (!OUTLINED_FUNCTION_72(v15))
      {
LABEL_9:

        goto LABEL_10;
      }

      OUTLINED_FUNCTION_16();
LABEL_8:
      _os_log_impl(v8, v9, v10, v11, v12, v13);
      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (!OUTLINED_FUNCTION_82(v7))
    {
      goto LABEL_10;
    }

    v2 = NSStringFromSelector(*(v2 + 40));
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_50();
    goto LABEL_8;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
}

void __50__CPLProxyLibraryManager_noteClientIsInBackground__block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_enableSynchronizationWithReason___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = 88;
  if ([*(*(a1 + 32) + 88) countForObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 88) countForObject:*(a1 + 40)])
    {
      v3 = *(a1 + 32);
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_43();
      v2 = [v4 proxyWithErrorHandler:?];
      if (v2)
      {
        [OUTLINED_FUNCTION_69() enableSynchronizationWithReason:?];
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_72(v9))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16();
          _os_log_impl(v10, v11, v12, v13, v14, v15);
        }
      }

LABEL_12:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_82(v5))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      v7 = *(a1 + 40);
      OUTLINED_FUNCTION_78();
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1DC05A000, 0x58, OS_LOG_TYPE_ERROR, "%@ has been called too many times with reason '%@'", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_enableSynchronizationWithReason___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __41__CPLProxyLibraryManager_disableMingling__block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __40__CPLProxyLibraryManager_enableMingling__block_invoke_2(uint64_t a1)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 96))
  {
    OUTLINED_FUNCTION_62(v3);
    if (!v4)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44();
      v6 = [v5 proxyWithErrorHandler:?];
      v1 = v6;
      if (v6)
      {
        [v6 enableMingling];
LABEL_10:

        goto LABEL_11;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_10;
      }

      v15 = __CPLManagerOSLogDomain();
      if (!OUTLINED_FUNCTION_72(v15))
      {
LABEL_9:

        goto LABEL_10;
      }

      OUTLINED_FUNCTION_16();
LABEL_8:
      _os_log_impl(v8, v9, v10, v11, v12, v13);
      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (!OUTLINED_FUNCTION_82(v7))
    {
      goto LABEL_10;
    }

    v2 = NSStringFromSelector(v2[5]);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_50();
    goto LABEL_8;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
}

void __40__CPLProxyLibraryManager_enableMingling__block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __62__CPLProxyLibraryManager_noteClientIsBeginningSignificantWork__block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __64__CPLProxyLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_43();
  v3 = [v2 proxyWithErrorHandler:?];
  if (v3)
  {
    [OUTLINED_FUNCTION_69() getSystemBudgetsWithCompletionHandler:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }
}

void __64__CPLProxyLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __61__CPLProxyLibraryManager_setShouldOverride_forSystemBudgets___block_invoke_2(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_44();
  v3 = [v2 proxyWithErrorHandler:?];
  v4 = v3;
  if (v3)
  {
    [v3 setShouldOverride:*(v1 + 56) forSystemBudgets:*(v1 + 48)];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }
}

void __61__CPLProxyLibraryManager_setShouldOverride_forSystemBudgets___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __59__CPLProxyLibraryManager_noteClientIsEndingSignificantWork__block_invoke_2(uint64_t a1)
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 104))
  {
    OUTLINED_FUNCTION_62(v3);
    if (!v4)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_44();
      v6 = [v5 proxyWithErrorHandler:?];
      v1 = v6;
      if (v6)
      {
        [v6 noteClientIsEndingSignificantWork];
LABEL_10:

        goto LABEL_11;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_10;
      }

      v15 = __CPLManagerOSLogDomain();
      if (!OUTLINED_FUNCTION_72(v15))
      {
LABEL_9:

        goto LABEL_10;
      }

      OUTLINED_FUNCTION_16();
LABEL_8:
      _os_log_impl(v8, v9, v10, v11, v12, v13);
      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (!OUTLINED_FUNCTION_82(v7))
    {
      goto LABEL_10;
    }

    v2 = NSStringFromSelector(v2[5]);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_50();
    goto LABEL_8;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
}

void __59__CPLProxyLibraryManager_noteClientIsEndingSignificantWork__block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to send %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v17 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_37(v13);
    v15(v14, 0, v5);
  }

  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v17 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_18(v13);
    v15(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __66__CPLProxyLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v17 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_18(v13);
    v15(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __53__CPLProxyLibraryManager_acknowledgeChangedStatuses___block_invoke_2(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_43();
  v3 = [v2 proxyWithErrorHandler:?];
  if (v3)
  {
    [OUTLINED_FUNCTION_69() acknowledgeChangedStatuses:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }
}

void __53__CPLProxyLibraryManager_acknowledgeChangedStatuses___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to acknowledge changed statuses %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __82__CPLProxyLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke_2(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_43();
  v3 = [v2 proxyWithErrorHandler:?];
  v4 = v3;
  if (v3)
  {
    [v3 addStatusChangesForRecordsWithScopedIdentifiers:*(v1 + 40) persist:*(v1 + 56)];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }
}

void __82__CPLProxyLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = NSStringFromSelector(*(v2 + 32));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to acknowledge changed statuses %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v0 + 40));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_15();
  v14(v13);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_48();
    v25 = __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke_3;
    v26 = &unk_1E861B1C8;
    v27 = v2;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v28 = v5;
    v29 = v6;
    [(CPLProxyLibraryManagerOutstandingInvocation *)v3 _withVoucherForTaskWithIdentifier:v4 do:v24];

    v3 = v27;
LABEL_12:

    goto LABEL_13;
  }

  if (v3[3].super.isa)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_73(v7))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        v9 = *(a1 + 40);
        OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_41();
        _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
      }
    }

    v3 = objc_alloc_init(CPLProxyLibraryManagerOutstandingInvocation);
    [(CPLProxyLibraryManagerOutstandingInvocation *)v3 setDidStart:1];
    [*(*(a1 + 32) + 112) setObject:v3 forKey:*(a1 + 40)];
    goto LABEL_12;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v15))
    {
      v16 = *(a1 + 40);
      v30 = 138412290;
      v31 = v16;
      OUTLINED_FUNCTION_50();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_12;
  }

LABEL_13:

  v23 = *MEMORY[0x1E69E9840];
}

void __66__CPLProxyLibraryManager_downloadDidStartForResourceTransferTask___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = [*(a1 + 48) abstractObject];
  v12 = [v11 resourceProgressDelegate];
  [v12 libraryManager:v11 downloadDidStartForResourceTransferTask:*(a1 + 32)];

  v13 = *MEMORY[0x1E69E9840];
}

void __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_99();
    v25[2] = __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke_3;
    v25[3] = &unk_1E861B1F0;
    v29 = *(a1 + 56);
    v26 = v2;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v27 = v5;
    v28 = v6;
    [(CPLProxyLibraryManagerOutstandingInvocation *)v3 _withVoucherForTaskWithIdentifier:v4 do:v25];

    v3 = v26;
LABEL_14:

    goto LABEL_15;
  }

  if (v3[3].super.isa)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_73(v7))
      {
        v8 = NSStringFromSelector(*(a1 + 48));
        v9 = *(a1 + 40);
        OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_41();
        _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
      }

      v3 = *(a1 + 32);
    }

    v3 = [(NSData *)v3[2]._finalData objectForKey:*(a1 + 40)];
    if (!v3)
    {
      v3 = objc_alloc_init(CPLProxyLibraryManagerOutstandingInvocation);
      [*(*(a1 + 32) + 112) setObject:v3 forKey:*(a1 + 40)];
    }

    LODWORD(v15) = *(a1 + 56);
    [(CPLProxyLibraryManagerOutstandingInvocation *)v3 setProgress:v15];
    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v16))
    {
      v17 = *(a1 + 40);
      v30 = 138412290;
      v31 = v17;
      OUTLINED_FUNCTION_50();
      _os_log_impl(v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_14;
  }

LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
}

void __70__CPLProxyLibraryManager_downloadDidProgress_forResourceTransferTask___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      LODWORD(v15) = 134218498;
      *(&v15 + 4) = (*(a1 + 56) * 100.0);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
    }
  }

  v11 = [*(a1 + 48) abstractObject];
  v12 = [v11 resourceProgressDelegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v13) = *(a1 + 56);
    [v12 libraryManager:v11 downloadDidProgress:*(a1 + 32) forResourceTransferTask:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __91__CPLProxyLibraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplReinflatedErrorForXPC];
  v3 = [OUTLINED_FUNCTION_77() objectForKey:?];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 48);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_48();
    v19 = v3;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = v2;
    v23 = *(a1 + 40);
    [OUTLINED_FUNCTION_63() _withVoucherForTaskWithIdentifier:? do:?];
    [OUTLINED_FUNCTION_77() removeObjectForKey:?];
    [*(a1 + 40) _dropVoucherForTaskWithIdentifier:*(a1 + 48)];
    if (![*(*(a1 + 40) + 32) count])
    {
      [CPLTransaction endTransactionWithIdentifier:@"cpl.activeresourcedownloads"];
    }

    v4 = v19;
LABEL_16:

    goto LABEL_17;
  }

  if (*(v4 + 120))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_83(v6))
      {
        v7 = NSStringFromSelector(*(a1 + 64));
        v8 = *(a1 + 48);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_87(&dword_1DC05A000, v9, v10, "Keeping %@ invocation for %@", &v24);
      }

      v4 = *(a1 + 40);
    }

    v4 = [*(v4 + 112) objectForKey:*(a1 + 48)];
    if (!v4)
    {
      OUTLINED_FUNCTION_104(objc_alloc_init(CPLProxyLibraryManagerOutstandingInvocation));
    }

    [v4 setDidFinish:1];
    [v4 setFinalError:v2];
    [v4 setFinalResource:*(a1 + 56)];
    goto LABEL_16;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v11))
    {
      v12 = *(a1 + 48);
      v24 = 138412290;
      v25 = v12;
      OUTLINED_FUNCTION_42();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
}

void __91__CPLProxyLibraryManager_downloadDidFinishForResourceTransferTask_finalResource_withError___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v8, v9, v10, v11, v12, 0x2Au);
    }
  }

  v13 = [*(a1 + 64) abstractObject];
  v14 = [v13 resourceProgressDelegate];
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = v16;
  v19 = v15;
  [v14 libraryManager:v13 downloadDidFinishForResourceTransferTask:v19 finalResource:v18 withError:v17];

  v20 = *MEMORY[0x1E69E9840];
}

void __90__CPLProxyLibraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplReinflatedErrorForXPC];
  v3 = [OUTLINED_FUNCTION_77() objectForKey:?];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 48);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_48();
    v19 = v3;
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = v2;
    v23 = *(a1 + 40);
    [OUTLINED_FUNCTION_63() _withVoucherForTaskWithIdentifier:? do:?];
    [*(a1 + 40) _dropVoucherForTaskWithIdentifier:*(a1 + 48)];
    [OUTLINED_FUNCTION_77() removeObjectForKey:?];

    v4 = v19;
LABEL_12:

    goto LABEL_13;
  }

  if (v4[3].super.isa)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_83(v6))
      {
        v7 = NSStringFromSelector(*(a1 + 64));
        v8 = *(a1 + 48);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_87(&dword_1DC05A000, v9, v10, "Keeping %@ invocation for %@", &v24);
      }
    }

    v4 = objc_alloc_init(CPLProxyLibraryManagerOutstandingInvocation);
    [(CPLProxyLibraryManagerOutstandingInvocation *)v4 setInMemoryRequest:1];
    [(CPLProxyLibraryManagerOutstandingInvocation *)v4 setDidFinish:1];
    [(CPLProxyLibraryManagerOutstandingInvocation *)v4 setFinalError:v2];
    [(CPLProxyLibraryManagerOutstandingInvocation *)v4 setFinalData:*(a1 + 56)];
    [*(*(a1 + 40) + 112) setObject:v4 forKey:*(a1 + 48)];
    goto LABEL_12;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v11))
    {
      v12 = *(a1 + 48);
      v24 = 138412290;
      v25 = v12;
      OUTLINED_FUNCTION_42();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
}

void __90__CPLProxyLibraryManager_inMemoryDownloadDidFinishForResourceTransferTask_data_withError___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      *v12 = 138413058;
      *&v12[4] = *(a1 + 32);
      *&v12[12] = 2112;
      *&v12[14] = *(a1 + 40);
      *&v12[22] = 2048;
      v13 = [*(a1 + 48) length];
      LOWORD(v14) = 2112;
      *(&v14 + 2) = *(a1 + 56);
      OUTLINED_FUNCTION_25();
      _os_log_impl(v4, v5, v6, v7, v8, 0x2Au);
    }
  }

  v9 = [*(a1 + 64) abstractObject];
  v10 = [v9 resourceProgressDelegate];
  [v10 libraryManager:v9 inMemoryDownloadDidFinishForResourceTransferTask:*(a1 + 32) data:*(a1 + 48) withError:*(a1 + 56)];

  v11 = *MEMORY[0x1E69E9840];
}

void __65__CPLProxyLibraryManager_backgroundDownloadDidFinishForResource___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) abstractObject];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_73(v4))
    {
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = [v3 resourceProgressDelegate];
  [v11 libraryManager:v3 backgroundDownloadDidFinishForResource:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

void __63__CPLProxyLibraryManager_backgroundDownloadDidFailForResource___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) abstractObject];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_73(v4))
    {
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_41();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = [v3 resourceProgressDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 libraryManager:v3 backgroundDownloadDidFailForResource:*(a1 + 40)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __77__CPLProxyLibraryManager_uploadDidStartForResource_withResourceTransferTask___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  result = [*(a1 + 48) _uploadTaskDidStartForResource:*(a1 + 32) withTaskIdentifier:*(a1 + 40)];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __79__CPLProxyLibraryManager_uploadOfResource_didProgress_forResourceTransferTask___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = [*(a1 + 48) _uploadTaskDidStartForResource:*(a1 + 32) withTaskIdentifier:*(a1 + 40)];
  v12 = [*(a1 + 48) abstractObject];
  v13 = [v12 resourceProgressDelegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v14) = *(a1 + 56);
    [v13 libraryManager:v12 uploadDidProgress:v11 forResourceTransferTask:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __86__CPLProxyLibraryManager_uploadOfResource_didFinishForResourceTransferTask_withError___block_invoke_2()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v16 = *MEMORY[0x1E69E9840];
  v3 = [*(v1 + 32) cplReinflatedErrorForXPC];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_73(v4))
    {
      v5 = *(v2 + 40);
      v6 = *(v2 + 48);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_41();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }
  }

  v12 = [*(v2 + 56) _uploadTaskDidStartForResource:*(v2 + 40) withTaskIdentifier:*(v2 + 48)];
  v13 = [*(v2 + 56) abstractObject];
  v14 = [v13 resourceProgressDelegate];
  [v14 libraryManager:v13 uploadDidFinishForResourceTransferTask:v12 withError:v3];
  [*(*(v2 + 56) + 48) removeObjectForKey:*(v2 + 48)];

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __56__CPLProxyLibraryManager_libraryManagerHasChangesToPull__block_invoke_2(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      LOWORD(v11) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = [*(a1 + 32) abstractObject];
  v10 = [v9 delegate];
  [v10 libraryManagerHasChangesToPull:v9];
}

void __70__CPLProxyLibraryManager_libraryManagerDidUpdateStatusWithProperties___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  if ([*(a1 + 40) _setStatusFromDictionary:*(a1 + 32)])
  {
    v10 = [*(a1 + 40) abstractObject];
    v11 = [v10 delegate];
    [v11 libraryManagerStatusDidChange:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __160__CPLProxyLibraryManager_libraryManagerDidUpdateSizeOfResourcesToUploadToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 40);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = [*(a1 + 32) abstractObject];
  [v10 _setSizeOfResourcesToUpload:*(a1 + 40) sizeOfOriginalResourcesToUpload:*(a1 + 48) numberOfImages:*(a1 + 56) numberOfVideos:*(a1 + 64) numberOfOtherItems:*(a1 + 72)];

  v11 = *MEMORY[0x1E69E9840];
}

void __56__CPLProxyLibraryManager_libraryManagerHasStatusChanges__block_invoke_2(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      LOWORD(v11) = 0;
      OUTLINED_FUNCTION_25();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = [*(a1 + 32) abstractObject];
  v10 = [v9 delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 libraryManagerHasStatusChanges:v9];
  }
}

void __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke_3;
  v25[3] = &unk_1E861B308;
  v4 = v2;
  v26 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v25];
  v5 = [OUTLINED_FUNCTION_77() objectForKeyedSubscript:?];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = *(a1 + 48);
    OUTLINED_FUNCTION_0();
    v21 = v5;
    v22 = *(a1 + 48);
    v23 = v4;
    v24 = *(a1 + 40);
    [OUTLINED_FUNCTION_63() _withVoucherForTaskWithIdentifier:? do:?];
    [*(a1 + 40) _dropVoucherForTaskWithIdentifier:*(a1 + 48)];
    [OUTLINED_FUNCTION_77() removeObjectForKey:?];

    v6 = v21;
LABEL_14:

    goto LABEL_15;
  }

  if (*(v6 + 136))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_83(v8))
      {
        v9 = NSStringFromSelector(*(a1 + 56));
        v10 = *(a1 + 48);
        v27 = 138412546;
        v28 = v9;
        v29 = 2112;
        v30 = v10;
        OUTLINED_FUNCTION_87(&dword_1DC05A000, v11, v12, "Keeping %@ invocation for %@", &v27);
      }

      v6 = *(a1 + 40);
    }

    v6 = [*(v6 + 128) objectForKey:*(a1 + 48)];
    if (!v6)
    {
      OUTLINED_FUNCTION_104(objc_alloc_init(CPLProxyLibraryManagerSyncOutstandingInvocation));
    }

    [v6 setDidFinish:1];
    [v6 setErrors:v4];
    goto LABEL_14;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v13))
    {
      v14 = *(a1 + 48);
      v27 = 138412290;
      v28 = v14;
      OUTLINED_FUNCTION_42();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

void __63__CPLProxyLibraryManager_forceSyncDidFinishForTask_withErrors___block_invoke_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }
  }

  v12 = [*(a1 + 56) abstractObject];
  v13 = [v12 forceSyncDelegate];
  [v13 libraryManager:v12 didFinishForceSyncTask:*(a1 + 32) withErrors:*(a1 + 48)];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)libraryManagerHasBeenReplaced
{
  v30 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_FAULT, "2 different library managers tried to connect to the daemon at the same time", &buf, 2u);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLManagerOSLogDomain();
      if (OUTLINED_FUNCTION_72(v4))
      {
        abstractObject = [(CPLPlatformObject *)self abstractObject];
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_34();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLManagerOSLogDomain();
        if (OUTLINED_FUNCTION_72(v11))
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v26 = 0x3032000000;
          v27 = __Block_byref_object_copy_;
          v28 = __Block_byref_object_dispose_;
          v29 = 0;
          v12 = _connectedLibraryManagerRegisterQueue();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_48();
          v22 = ___connectedLibraryManagers_block_invoke;
          v23 = &unk_1E861B528;
          p_buf = &buf;
          dispatch_sync(v13, block);

          v14 = *(*(&buf + 1) + 40);
          _Block_object_dispose(&buf, 8);

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v14;
          OUTLINED_FUNCTION_34();
          _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        }
      }
    }
  }

  self->_killed = 1;
  v20 = *MEMORY[0x1E69E9840];
}

void __37__CPLProxyLibraryManager_cancelTask___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_79(a1) taskIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v13 = __37__CPLProxyLibraryManager_cancelTask___block_invoke_2;
  v14 = &unk_1E861AA00;
  v3 = *(v1 + 40);
  v15 = *(v1 + 32);
  v4 = [v3 proxyWithErrorHandler:v12];
  v5 = v4;
  if (v4)
  {
    [v4 cancelTaskWithIdentifier:v2];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      OUTLINED_FUNCTION_31();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
    }
  }
}

void __37__CPLProxyLibraryManager_cancelTask___block_invoke_2()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to cancel %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __41__CPLProxyLibraryManager_cancelSyncTask___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_79(a1) taskIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v13 = __41__CPLProxyLibraryManager_cancelSyncTask___block_invoke_2;
  v14 = &unk_1E861AA00;
  v3 = *(v1 + 40);
  v15 = *(v1 + 32);
  v4 = [v3 proxyWithErrorHandler:v12];
  v5 = v4;
  if (v4)
  {
    [v4 cancelSyncTaskWithIdentifier:v2];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      OUTLINED_FUNCTION_31();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
    }
  }
}

void __41__CPLProxyLibraryManager_cancelSyncTask___block_invoke_2()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to cancel %@: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = *(v0 + 32);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_37(*(v0 + 40));
  v14(v13, v5, 0);

  v15 = *MEMORY[0x1E69E9840];
}

void __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_23();
  v12(v11, v4);

  v13 = *MEMORY[0x1E69E9840];
}

void __72__CPLProxyLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_23();
  v12(v11, v4);

  v13 = *MEMORY[0x1E69E9840];
}

void __67__CPLProxyLibraryManager_getListOfComponentsWithCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  v12(v11);

  v13 = *MEMORY[0x1E69E9840];
}

void __67__CPLProxyLibraryManager_getStatusForComponents_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  v12(v11);

  v13 = *MEMORY[0x1E69E9840];
}

void __72__CPLProxyLibraryManager_getStatusArrayForComponents_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  v12(v11);

  v13 = *MEMORY[0x1E69E9840];
}

void __96__CPLProxyLibraryManager_getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  v12(v11);

  v13 = *MEMORY[0x1E69E9840];
}

void __109__CPLProxyLibraryManager_getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v14 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v5))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  v12(v11);

  v13 = *MEMORY[0x1E69E9840];
}

void __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_58();
  v15 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  v12 = OUTLINED_FUNCTION_18(*(v0 + 32));
  v13(v12);

  v14 = *MEMORY[0x1E69E9840];
}

void __39__CPLProxyLibraryManager_addInfoToLog___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = [OUTLINED_FUNCTION_56() proxyWithErrorHandler:?];
  if (v6)
  {
    [OUTLINED_FUNCTION_69() addInfoToLog:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __39__CPLProxyLibraryManager_addInfoToLog___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to say '%@': %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_99();
  v17[2] = __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke_3;
  v17[3] = &unk_1E861AFF0;
  v4 = *(v3 + 32);
  v18 = *(v3 + 40);
  v19 = *(a1 + 48);
  v5 = [v4 proxyWithErrorHandler:v17];
  v6 = v5;
  if (v5)
  {
    [v5 reportSetting:*(a1 + 40) hasBeenSetToValue:*(a1 + 48)];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      OUTLINED_FUNCTION_76();
      v20 = 2112;
      v21 = v10;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__CPLProxyLibraryManager_reportSetting_hasBeenSetToValue___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v15 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v9, v10, v11, v12, v13, 0x2Au);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __48__CPLProxyLibraryManager_reportMiscInformation___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = [OUTLINED_FUNCTION_56() proxyWithErrorHandler:?];
  if (v6)
  {
    [OUTLINED_FUNCTION_69() reportMiscInformation:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __48__CPLProxyLibraryManager_reportMiscInformation___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to report misc information '%@': %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__CPLProxyLibraryManager_blockEngineElement___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = [OUTLINED_FUNCTION_56() proxyWithErrorHandler:?];
  if (v6)
  {
    [OUTLINED_FUNCTION_69() blockEngineElement:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__CPLProxyLibraryManager_blockEngineElement___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to block '%@': %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __47__CPLProxyLibraryManager_unblockEngineElement___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = [OUTLINED_FUNCTION_56() proxyWithErrorHandler:?];
  if (v6)
  {
    [OUTLINED_FUNCTION_69() unblockEngineElement:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __47__CPLProxyLibraryManager_unblockEngineElement___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to unblock '%@': %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __51__CPLProxyLibraryManager_unblockEngineElementOnce___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = [OUTLINED_FUNCTION_56() proxyWithErrorHandler:?];
  if (v6)
  {
    [OUTLINED_FUNCTION_69() unblockEngineElementOnce:?];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = *(a1 + 40);
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __51__CPLProxyLibraryManager_unblockEngineElementOnce___block_invoke_3()
{
  OUTLINED_FUNCTION_46();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v7 = *(v2 + 32);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_27(&dword_1DC05A000, v8, v9, "%@ failed to unblock '%@' once: %@", v10, v11, v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_18(*(v1 + 32));
  v14(v13);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __82__CPLProxyLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_18(*(v1 + 32));
  v14(v13);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __65__CPLProxyLibraryManager_provideCloudResource_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_68();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v1 + 40));
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_18(*(v1 + 32));
  v14(v13);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v0 + 40));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_23();
  v14(v13, v5);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __64__CPLProxyLibraryManager_attachComputeStates_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v0 + 40));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_23();
  v14(v13, v5);

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

void __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_3()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_58();
  v16 = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_74(v6))
    {
      v7 = NSStringFromSelector(*(v0 + 48));
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  v13 = OUTLINED_FUNCTION_18(*(v0 + 40));
  v14(v13);
  [*(v0 + 32) setCompletedUnitCount:{objc_msgSend(*(v0 + 32), "totalUnitCount")}];

  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_89();
}

uint64_t __42__CPLProxyLibraryManager__setupConnection__block_invoke_cold_1(void **a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_81(v6))
    {
      v7 = *(*a1 + a2);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_33();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    a3 = *a1;
  }

  result = [a3 _dropConnectionCompletlyLocked];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_markConnectionAsInvalid
{
  [self timeIntervalSinceNow];
  if (v3 >= -1800.0)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1800.0];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  *a2 = v4;

  return *a2 == 0;
}

- (uint64_t)_dispatchBlockWhenOpen:(void *)a1 .cold.1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_75(v3))
    {
      v4 = [a1 _connection];
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_25();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = OUTLINED_FUNCTION_21();
  result = v11(v10);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_dispatchBlockWhenOpen:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = __CPLManagerOSLogDomain();
  if (OUTLINED_FUNCTION_93(v3))
  {
    v4 = [a1 _connection];
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_59();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchBlockWhenOpen:.cold.3()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v1))
    {
      LOWORD(v9) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

- (void)_dispatchBlockWhenOpen:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = __CPLManagerOSLogDomain();
  if (OUTLINED_FUNCTION_82(v1))
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_35();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_dispatchBlockWhenOpen:.cold.5()
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v1))
    {
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }

  v7 = OUTLINED_FUNCTION_21();
  result = v8(v7);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __49__CPLProxyLibraryManager__dispatchBlockWhenOpen___block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = a1;
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      LODWORD(v17) = 138412546;
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v13 = *(a2 + 32);
  +[CPLErrors libraryClosedError];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_61() _setStatus:1 andError:v4];

  v14 = [*(a2 + 32) delegate];
  *a3 = v14;
  result = [v14 libraryManagerStatusDidChange:*(a2 + 32)];
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __52__CPLProxyLibraryManager_openWithCompletionHandler___block_invoke_cold_1(char a1, uint64_t a2, id *a3)
{
  if ((a1 & 1) == 0)
  {
    v6 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v6))
    {
      v18 = [*a3 abstractObject];
      OUTLINED_FUNCTION_50();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = *(a2 + 48);
  v15 = *a3;
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  v17 = [*a3 abstractObject];
  [v13 handleFailureInMethod:v14 object:v15 file:v16 lineNumber:583 description:{@"Trying to open %@ twice", v17}];

  abort();
}

- (void)_invokeOutstandingInvocationsWithTaskIdentifier:(id *)a1 .cold.1(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = __CPLManagerOSLogDomain();
  if (OUTLINED_FUNCTION_82(v3))
  {
    v4 = [*a1 allKeys];
    v5 = [v4 componentsJoinedByString:{@", "}];
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_35();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_invokeOutstandingInvocationsWithTaskIdentifier:.cold.2()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v1))
    {
      LOWORD(v9) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void __115__CPLProxyLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v5))
    {
      LOWORD(v15) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = *(a1 + 88);
  v13 = *a2;
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void __91__CPLProxyLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v5))
    {
      LOWORD(v15) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = *(a1 + 72);
  v13 = *a2;
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void __58__CPLProxyLibraryManager_noteClientIsInForegroundQuietly___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v5))
    {
      OUTLINED_FUNCTION_31();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  *a2 = a1;
}

void __59__CPLProxyLibraryManager_disableSynchronizationWithReason___block_invoke_2_cold_1()
{
  v1 = __CPLManagerOSLogDomain();
  if (OUTLINED_FUNCTION_82(v1))
  {
    OUTLINED_FUNCTION_35();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __84__CPLProxyLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_2_cold_1(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  if (*a1)
  {
    +[CPLErrors unknownError];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_10();
    v10(v9, 0, v1);
  }
}

void __85__CPLProxyLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke_2_cold_1(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  if (*a1)
  {
    +[CPLErrors unknownError];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10(v9);
  }
}

void __87__CPLProxyLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *a1;
  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_8();
  v11(v10);
}

- (void)_invokeSyncOutstandingInvocationsWithTaskIdentifier:.cold.2()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v1))
    {
      LOWORD(v9) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void __83__CPLProxyLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (OUTLINED_FUNCTION_71(v5))
    {
      LOWORD(v15) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = *(a1 + 64);
  v13 = *a2;
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/Daemon/CPLProxyLibraryManager.m"];
  [OUTLINED_FUNCTION_107() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

- (uint64_t)provideLocalResource:recordClassString:completionHandler:.cold.1()
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v1))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }

  v7 = OUTLINED_FUNCTION_21();
  result = v8(v7, 0, 2);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2_cold_1(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }

  v10 = OUTLINED_FUNCTION_18(*(a2 + 48));
  return v11(v10);
}

uint64_t __83__CPLProxyLibraryManager_provideLocalResource_recordClassString_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = OUTLINED_FUNCTION_18(*(a1 + 48));
  return v10(v9);
}

void __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2_cold_1(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v4))
    {
      LOWORD(v13) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }

  v10 = *(a2 + 40);
  +[CPLErrors notImplementedError];
  objc_claimAutoreleasedReturnValue();
  v11 = OUTLINED_FUNCTION_10();
  v12(v11, v2);
}

void __62__CPLProxyLibraryManager_pushAllChangesWithCompletionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *(a1 + 40);
  +[CPLErrors notImplementedError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_10();
  v11(v10, v1);
}

uint64_t __91__CPLProxyLibraryManager_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v5))
    {
      LOWORD(v15) = 0;
      OUTLINED_FUNCTION_31();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
    }
  }

  v11 = *(a1 + 64);
  *a2 = +[CPLErrors notImplementedError];
  v12 = OUTLINED_FUNCTION_94();
  return v13(v12);
}

void __84__CPLProxyLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *a1;
  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_10();
  v11(v10, v1, 0);
}

void __64__CPLProxyLibraryManager_compactFileCacheWithCompletionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *a1;
  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_10();
  v11(v10, v1);
}

void __106__CPLProxyLibraryManager_cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v3))
    {
      LOWORD(v12) = 0;
      OUTLINED_FUNCTION_14();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  v9 = *a1;
  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v10 = OUTLINED_FUNCTION_10();
  v11(v10, 0, 0, v1);
}

uint64_t __85__CPLProxyLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_2_cold_1(SEL *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      v6 = NSStringFromSelector(*a1);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  v12 = OUTLINED_FUNCTION_18(*a2);
  result = v13(v12);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __93__CPLProxyLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke_2_cold_1(SEL *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_72(v5))
    {
      v6 = NSStringFromSelector(*a1);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_14();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  v12 = OUTLINED_FUNCTION_18(*a2);
  result = v13(v12);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __127__CPLProxyLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2_cold_1(SEL *a1, uint64_t *a2, id *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLManagerOSLogDomain();
    if (OUTLINED_FUNCTION_71(v7))
    {
      v8 = NSStringFromSelector(*a1);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_31();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = *a2;
  v15 = +[CPLErrors unknownError];
  v16 = OUTLINED_FUNCTION_94();
  v17(v16);

  result = [*a3 setCompletedUnitCount:{objc_msgSend(*a3, "totalUnitCount")}];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

@end