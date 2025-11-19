@interface CPLEngineLibrary
+ (id)platformImplementationProtocol;
+ (void)setTimeToWaitForClientToActivateScopes:(double)a3;
+ (void)setTimeToWaitForClientToPullChanges:(double)a3;
+ (void)setTimeToWaitForClientToPushChanges:(double)a3;
+ (void)setTimeToWaitForLibrary:(double)a3;
- (BOOL)hasAssetCountOnServer;
- (CPLEngineLibrary)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8;
- (CPLEngineLibraryOwner)owner;
- (NSArray)processesInvolvedInSyncSessions;
- (NSString)clientAppBundleIdentifier;
- (NSString)currentClosingComponentName;
- (NSString)description;
- (id)_allComponentsIncludingPlatformObjects:(BOOL)a3 respondingToSelector:(SEL)a4;
- (id)_libraryObject;
- (id)_performBlockWhenLibraryAttaches:(id)a3;
- (id)redactedDescription;
- (unint64_t)totalAssetCountOnServer;
- (void)_beginChangeSessionWithSessionToken:(void *)a3 completionHandler:;
- (void)_cancelBlockWhenLibraryAttaches:(id)a3;
- (void)_closeNextComponent:(id)a3 deactivate:(BOOL)a4 lastError:(id)a5 completionHandler:(id)a6;
- (void)_fillStatus:(id)a3 forComponents:(id)a4 completionHandler:(id)a5;
- (void)_fillStatusArray:(id)a3 forComponents:(id)a4 completionHandler:(id)a5;
- (void)_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged;
- (void)_openNextComponent:(id)a3 completionHandler:(id)a4;
- (void)_performBlockWithLibrary:(BOOL)a3 enumerateAttachedObjects:(id)a4;
- (void)_performPendingBlockForWhenLibraryAttaches;
- (void)_reportQuarantineCountIfNecessaryWithLastReportDate:(id)a3;
- (void)_requestUpdateOfMainScopeFromTransport;
- (void)_setCurrentClosingComponentName:(id)a3;
- (void)_testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)_updateTotalAssetCountWithAssetCounts:(id)a3;
- (void)attachObject:(id)a3 withCompletionHandler:(id)a4;
- (void)beginChangeSessionWithSessionToken:(id)a3 completionHandler:(id)a4;
- (void)clientIsPushingChanges;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)detachObject:(id)a3 withCompletionHandler:(id)a4;
- (void)emergencyClose;
- (void)endChangeSessionWithSessionToken:(id)a3;
- (void)forceBackupWithActivity:(id)a3 forceClientPush:(BOOL)a4 completionHandler:(id)a5;
- (void)forceInitialDownloadWithActivity:(id)a3 scopeIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)getListOfComponentsWithCompletionHandler:(id)a3;
- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4;
- (void)markAttachedObjectAsInvalid:(id)a3;
- (void)noteMainScopeHasBeenActivated;
- (void)notifyAttachedObjectsHasStatusChanges;
- (void)notifyAttachedObjectsPullQueueIsFull;
- (void)notifyAttachedObjectsResourceDidDownloadInBackground:(id)a3;
- (void)notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource:(id)a3;
- (void)notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize:(unint64_t)a3 sizeOfOriginalResourcesToUpload:(unint64_t)a4 numberOfImages:(unint64_t)a5 numberOfVideos:(unint64_t)a6 numberOfOtherItems:(unint64_t)a7;
- (void)notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged;
- (void)notifyAttachedObjectsUploadTask:(id)a3 didFinishWithError:(id)a4;
- (void)notifyAttachedObjectsUploadTask:(id)a3 didProgress:(float)a4;
- (void)notifyAttachedObjectsUploadTaskDidStart:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)performBlockOnLibrary:(id)a3;
- (void)performMaintenanceCleanupWithCompletionHandler:(id)a3;
- (void)provideCloudResource:(id)a3 completionHandler:(id)a4;
- (void)providePayloadForComputeStates:(id)a3 inFolderWithURL:(id)a4 completionHandler:(id)a5;
- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4;
- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)reportQuarantineCountIfNecessary;
- (void)requestAttachedLibrary;
- (void)requestClientToPullAllChangesWithScopeIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3;
- (void)requestScopesWithIdentifiersToBeActivated:(id)a3 completionHandler:(id)a4;
- (void)setAccountEPPCapability:(int64_t)a3;
- (void)setContainerHasBeenWiped:(BOOL)a3;
- (void)setExitDeleteTime:(id)a3;
- (void)startSyncSession;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)updateAssetCountsFromServer:(id)a3;
- (void)updateBlockedMetrics:(BOOL)a3 syncRequested:(BOOL)a4 runtimeCharacteristics:(id)a5;
- (void)updateComputeSyncMetrics:(int64_t)a3 silentDecryptionFailed:(BOOL)a4 error:(id)a5;
- (void)updateInitialSyncDate:(id)a3;
@end

@implementation CPLEngineLibrary

- (NSString)clientAppBundleIdentifier
{
  v2 = [(CPLEngineLibrary *)self libraryIdentifier];
  v3 = CPLAppBundleIdentifierForLibraryIdentifier(v2);

  return v3;
}

- (CPLEngineLibraryOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (void)endChangeSessionWithSessionToken:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__CPLEngineLibrary_endChangeSessionWithSessionToken___block_invoke;
  v11[3] = &unk_1E861B128;
  v12 = v5;
  v13 = self;
  v14 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v16 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __53__CPLEngineLibrary_endChangeSessionWithSessionToken___block_invoke(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3 == *(v2 + 64))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Change session for %@ has been ended before it even began", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = a1[5];
    v20 = a1[6];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
    [v19 handleFailureInMethod:v20 object:v21 file:v22 lineNumber:2600 description:{@"Change session for %@ has been ended before it even began", a1[4]}];
LABEL_29:

    abort();
  }

  v4 = *(v2 + 56);
  if (v3 != v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = a1[4];
        *buf = 138412290;
        v28 = v24;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "Ending unknown change session for %@", buf, 0xCu);
      }
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = a1[5];
    v25 = a1[6];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
    [v19 handleFailureInMethod:v25 object:v26 file:v22 lineNumber:2601 description:{@"Ending unknown change session for %@", a1[4]}];
    goto LABEL_29;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[4];
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Ending change session for %@", buf, 0xCu);
    }

    v2 = a1[5];
    v4 = *(v2 + 56);
  }

  *(v2 + 56) = 0;

  v7 = a1[5];
  if (*(v7 + 64))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1[5] + 64);
        *buf = 138412290;
        v28 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Resuming change session for %@", buf, 0xCu);
      }

      v7 = a1[5];
    }

    if (*(v7 + 80))
    {
      (*(*(v7 + 72) + 16))();
    }

    else if (*(v7 + 104))
    {
      v10 = *(v7 + 72);
      v11 = +[CPLErrors libraryClosedError];
      (*(v10 + 16))(v10, v11);
    }

    else
    {
      [(CPLEngineLibrary *)v7 _beginChangeSessionWithSessionToken:*(v7 + 72) completionHandler:?];
    }

    v12 = a1[5];
    v13 = *(v12 + 64);
    *(v12 + 64) = 0;

    v14 = a1[5];
    v15 = *(v14 + 72);
    *(v14 + 72) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_beginChangeSessionWithSessionToken:(void *)a3 completionHandler:
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Beginning change session for %@", &v10, 0xCu);
      }
    }

    objc_storeStrong((a1 + 56), a2);
    v7[2](v7, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)beginChangeSessionWithSessionToken:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__CPLEngineLibrary_beginChangeSessionWithSessionToken_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v18 = a2;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __73__CPLEngineLibrary_beginChangeSessionWithSessionToken_completionHandler___block_invoke(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 80))
  {
    v3 = *(a1[6] + 16);
    v4 = *MEMORY[0x1E69E9840];

    v3();
  }

  else if (*(v2 + 104))
  {
    v5 = a1[6];
    v29 = +[CPLErrors libraryClosedError];
    (*(v5 + 16))(v5);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(v2 + 56);
    if (v7)
    {
      if (*(v2 + 64))
      {
        v8 = *(v2 + 72);
        v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"session has been superseded"];
        (*(v8 + 16))(v8, v9);

        v10 = a1[4];
        v11 = *(v10 + 64);
        *(v10 + 64) = 0;

        v2 = a1[4];
        v7 = *(v2 + 56);
      }

      v12 = a1[5];
      if (v12 == v7)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v23 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = a1[5];
            *buf = 138412290;
            v31 = v24;
            _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_ERROR, "%@ is trying to begin a session twice", buf, 0xCu);
          }
        }

        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = a1[7];
        v27 = a1[4];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
        [v25 handleFailureInMethod:v26 object:v27 file:v28 lineNumber:2591 description:{@"%@ is trying to begin a session twice", a1[5]}];

        abort();
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = a1[5];
          v15 = *(a1[4] + 56);
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Blocking change session for %@ until %@ is done", buf, 0x16u);
        }

        v2 = a1[4];
        v12 = a1[5];
      }

      objc_storeStrong((v2 + 64), v12);
      v16 = MEMORY[0x1E128EBA0](a1[6]);
      v17 = a1[4];
      v18 = *(v17 + 72);
      *(v17 + 72) = v16;

      v19 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v20 = a1[5];
      v21 = a1[6];
      v22 = *MEMORY[0x1E69E9840];

      [(CPLEngineLibrary *)v2 _beginChangeSessionWithSessionToken:v20 completionHandler:v21];
    }
  }
}

- (NSArray)processesInvolvedInSyncSessions
{
  v3 = [(CPLEngineStore *)self->_store derivativesCache];
  v4 = [objc_msgSend(v3 "derivativeGeneratorClass")];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v6 = [(CPLEngineTransport *)self->_transport involvedProcesses];
  [v5 addObjectsFromArray:v6];

  [v5 addObject:@"assetsd"];
  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v7 processName];
  [v5 addObject:v8];

  return v5;
}

- (void)emergencyClose
{
  [(CPLEngineLibrarySupervisor *)self->_supervisor engineWillClose:self];
  store = self->_store;

  [(CPLEngineStore *)store emergencyClose];
}

- (void)performMaintenanceCleanupWithCompletionHandler:(id)a3
{
  v5 = a3;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v6 = CPLCopyDefaultSerialQueueAttributes();
  v7 = dispatch_queue_create("com.apple.cpl.enginelibrary.maintenance", v6);

  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke;
  v29[3] = &unk_1E861AA50;
  v9 = v8;
  v30 = v9;
  v10 = v5;
  v31 = v10;
  v11 = MEMORY[0x1E128EBA0](v29);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2;
  v23[3] = &unk_1E861EED8;
  v12 = v7;
  v24 = v12;
  v25 = self;
  v27 = v34;
  v28 = a2;
  v26 = v32;
  [v9 setCancellationHandler:v23];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_193;
  v15[3] = &unk_1E861EFA0;
  v15[4] = self;
  v13 = v12;
  v16 = v13;
  v18 = v32;
  v19 = v21;
  v14 = v11;
  v17 = v14;
  v20 = v34;
  [v9 performAsCurrentWithPendingUnitCount:1 usingBlock:v15];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);
}

uint64_t __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1E8620A08;
  v2 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v2;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_193(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 256);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2_194;
  v16[3] = &unk_1E861EF50;
  v16[4] = v3;
  v5 = v2;
  v6 = *(a1 + 64);
  v17 = v5;
  v19 = v6;
  v11 = *(a1 + 48);
  v7 = v11;
  v18 = v11;
  v20 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3_198;
  v12[3] = &unk_1E861EF78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  v13 = v8;
  v15 = v9;
  v14 = *(a1 + 48);
  v10 = [v4 performWriteTransactionWithBlock:v16 completionHandler:v12];
}

void __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2_194(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3_195;
  v9[3] = &unk_1E861EF28;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 64);
  v10 = v5;
  v12 = v6;
  v8 = *(a1 + 48);
  v7 = v8;
  v11 = v8;
  v13 = *(a1 + 72);
  [a2 do:v9];
}

void __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3_198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_1E861E778;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_4(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3_195(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Performing store maintenance", buf, 2u);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v5 = [*(*(a1 + 32) + 256) storages];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = a2;
    v8 = 0;
    v9 = *v31;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * v10);
        v13 = objc_autoreleasePoolPush();
        v29 = v11;
        LODWORD(v12) = [v12 performMaintenanceWithError:&v29];
        v8 = v29;

        if (!v12)
        {
          objc_autoreleasePoolPop(v13);

          if (v22)
          {
            v19 = v8;
            v18 = 0;
            *v22 = v8;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_22;
        }

        v14 = *(a1 + 40);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_196;
        block[3] = &unk_1E861EC08;
        v28 = *(a1 + 56);
        dispatch_sync(v14, block);
        v15 = *(*(*(a1 + 64) + 8) + 24);
        objc_autoreleasePoolPop(v13);
        if (v15 != 1)
        {
          goto LABEL_16;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2_197;
    v24[3] = &unk_1E861EF00;
    v16 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v23 = *(a1 + 48);
    v17 = v23;
    v25 = v23;
    v26 = *(a1 + 72);
    dispatch_sync(v16, v24);
  }

  v18 = 1;
LABEL_22:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_196(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

void *__67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_2_197(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = [*(result[4] + 256) startVacuumWithCompletionHandler:result[5]];
    *(*(v1[7] + 8) + 24) = 1;
  }

  return result;
}

void __67__CPLEngineLibrary_performMaintenanceCleanupWithCompletionHandler___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = objc_opt_class();
      v5 = a1[7];
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "[%@ %@] was cancelled by caller", &v9, 0x16u);
    }
  }

  *(*(a1[5] + 8) + 24) = 1;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [*(a1[4] + 256) stopVacuum];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __62__CPLEngineLibrary_blockEngineWithReason_onlyIfBlocked_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 256);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__CPLEngineLibrary_blockEngineWithReason_onlyIfBlocked_block___block_invoke_2;
    v6[3] = &unk_1E861EE88;
    v7 = v3;
    v8 = *(a1 + 40);
    [v5 blockWriteTransactionsWithCompletionHandler:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __62__CPLEngineLibrary_blockEngineWithReason_onlyIfBlocked_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CPLEngineBlocker alloc] initWithWriteTransactionBlocker:v3 schedulerBlocker:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (void)forceInitialDownloadWithActivity:(id)a3 scopeIdentifiers:(id)a4 completionHandler:(id)a5
{
  v106 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v8 = a4;
  v9 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLInitialDownloadOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 componentsJoinedByString:{@", "}];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Forcing initial download of %{public}@", &buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3];
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__16777;
  v104 = __Block_byref_object_dispose__16778;
  v105 = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v98 = 0;
  v44 = self->_store;
  v13 = self->_queue;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x3032000000;
  v95[3] = __Block_byref_object_copy__16777;
  v95[4] = __Block_byref_object_dispose__16778;
  v96 = 0;
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x2020000000;
  v94 = 0;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke;
  v81[3] = &unk_1E861ECF8;
  v14 = v13;
  v82 = v14;
  v87 = v99;
  v15 = v12;
  v92 = 3;
  v83 = v15;
  p_buf = &buf;
  v16 = v8;
  v84 = v16;
  v89 = v93;
  v90 = v97;
  v43 = v9;
  v85 = self;
  v86 = v43;
  v91 = v95;
  v17 = MEMORY[0x1E128EBA0](v81);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_5;
  v77[3] = &unk_1E861B3D0;
  v18 = v14;
  v78 = v18;
  v19 = v16;
  v79 = v19;
  v20 = v17;
  v80 = v20;
  [v15 setCancellationHandler:v77];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_172;
  v71[3] = &unk_1E861ED20;
  v21 = v18;
  v72 = v21;
  v76 = v99;
  v22 = v15;
  v73 = v22;
  v74 = self;
  v23 = v20;
  v75 = v23;
  v24 = MEMORY[0x1E128EBA0](v71);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_176;
  v62[3] = &unk_1E861ED98;
  v25 = v21;
  v69 = v99;
  v70 = &buf;
  v63 = v25;
  v64 = self;
  v26 = v45;
  v65 = v26;
  v27 = v23;
  v67 = v27;
  v28 = v22;
  v66 = v28;
  v29 = v24;
  v68 = v29;
  v30 = MEMORY[0x1E128EBA0](v62);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_181;
  v54[3] = &unk_1E861EE10;
  v31 = v25;
  v55 = v31;
  v56 = self;
  v60 = v99;
  v61 = v97;
  v32 = v28;
  v57 = v32;
  v33 = v27;
  v58 = v33;
  v34 = v30;
  v59 = v34;
  v35 = MEMORY[0x1E128EBA0](v54);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_184;
  v46[3] = &unk_1E861EE60;
  v46[4] = self;
  v36 = v33;
  v50 = v36;
  v37 = v44;
  v47 = v37;
  v38 = v19;
  v48 = v38;
  v39 = v31;
  v49 = v39;
  v52 = v95;
  v40 = v35;
  v51 = v40;
  v53 = v93;
  v41 = [(CPLEngineStore *)v37 performReadTransactionWithBlock:v46];

  _Block_object_dispose(v93, 8);
  _Block_object_dispose(v95, 8);

  _Block_object_dispose(v97, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(v99, 8);
  v42 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(*(a1 + 72) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2;
    v25[3] = &unk_1E861ECA8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 80);
    v31 = *(a1 + 112);
    v29 = v7;
    v8 = *(a1 + 48);
    v28 = *(a1 + 64);
    *&v9 = v8;
    *(&v9 + 1) = *(a1 + 56);
    v30 = *(a1 + 88);
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v26 = v10;
    v27 = v9;
    v11 = MEMORY[0x1E128EBA0](v25);
    v12 = v11;
    if (v3)
    {
      (*(v11 + 16))(v11, v3);
    }

    else
    {
      v13 = [*(a1 + 56) store];
      v14 = [v13 scopes];
      v15 = [*(a1 + 56) store];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_170;
      v22[3] = &unk_1E8620A60;
      v16 = *(a1 + 104);
      v23 = v14;
      v24 = v16;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3;
      v19[3] = &unk_1E8620308;
      v20 = *(a1 + 32);
      v21 = v12;
      v17 = v14;
      v18 = [v15 performWriteTransactionWithBlock:v22 completionHandler:v19];
    }
  }
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_5(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_6;
  v6[3] = &unk_1E861AA50;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v2;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_173;
    v8[3] = &unk_1E861B3D0;
    v5 = v3;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_176(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v7 = [(CPLEngineForceSyncTask *)[CPLEngineDownloadSyncTask alloc] initWithScopeIdentifiers:v6 engineLibrary:*(a1 + 40) filter:v5 delegate:*(*(a1 + 40) + 272)];
    v8 = *(*(a1 + 88) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 88) + 8) + 40) setTaskActivity:*(a1 + 48)];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    [*(*(*(a1 + 88) + 8) + 40) setTaskIdentifier:v11];

    [*(*(*(a1 + 88) + 8) + 40) setBypassForceSyncLimitations:1];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3_178;
    v20 = &unk_1E861ED70;
    v12 = *(a1 + 32);
    v13 = *(a1 + 80);
    v21 = v12;
    v26 = v13;
    v24 = *(a1 + 64);
    v22 = *(a1 + 56);
    v25 = *(a1 + 72);
    v23 = v6;
    [*(*(*(a1 + 88) + 8) + 40) setTaskDidFinishWithErrorBlock:&v17];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLInitialDownloadOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(*(a1 + 88) + 8) + 40);
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
      }
    }

    [*(*(*(a1 + 88) + 8) + 40) launchTask];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    [*(*(a1 + 40) + 264) disableSynchronizationWithReason:@"initial download"];
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_182;
    v8[3] = &unk_1E861EDE8;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v9 = v5;
    v10 = v6;
    [v7 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
  }
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_184(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3_185;
    v47[3] = &unk_1E861ECD0;
    v49 = *(a1 + 64);
    v48 = v3;
    v6 = v47;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v52 = __cpl_dispatch_async_block_invoke_16734;
    v53 = &unk_1E861B4E0;
    v54 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v7, v8);

    v9 = v49;
  }

  else
  {
    v9 = [*(a1 + 40) scopes];
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = a1;
    v10 = *(a1 + 48);
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        v14 = 0;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v43 + 1) + 8 * v14);
          v16 = [v9 scopeWithIdentifier:{v15, v31}];
          if (!v16 || ([v9 valueForFlag:16 forScope:v16] & 1) != 0 || (objc_msgSend(v9, "hasFinishedInitialDownloadForScope:", v16) & 1) != 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v17 = __CPLInitialDownloadOSLogDomain();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(block) = 138543362;
                *(&block + 4) = v15;
                _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ does not need to perform initial download", &block, 0xCu);
              }
            }
          }

          else
          {
            [v33 addObject:v15];
            [v32 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v18 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
        v12 = v18;
      }

      while (v18);
    }

    if ([v33 count])
    {
      v19 = [v9 filterForIncludedScopeIdentifiers:v33];
      v20 = *(v31 + 56);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_187;
      v37[3] = &unk_1E861EE38;
      v42 = *(v31 + 80);
      v21 = v32;
      v38 = v32;
      v41 = *(v31 + 72);
      v39 = v19;
      v40 = v33;
      v22 = v37;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      v52 = __cpl_dispatch_async_block_invoke_16734;
      v53 = &unk_1E861B4E0;
      v54 = v22;
      v23 = v20;
      v24 = v19;
      v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v23, v25);
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_188;
      v34[3] = &unk_1E861E778;
      v36 = *(v31 + 88);
      v26 = *(v31 + 56);
      v35 = *(v31 + 64);
      v27 = v34;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 3221225472;
      v52 = __cpl_dispatch_async_block_invoke_16734;
      v53 = &unk_1E861B4E0;
      v54 = v27;
      v28 = v26;
      v29 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v28, v29);

      v24 = v35;
      v21 = v32;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3_185(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_187(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) copy];
  (*(v5 + 16))(v5, v6, v7);
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_182(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLInitialDownloadOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Making sure client has pushed all changes", buf, 2u);
    }
  }

  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_183;
  v10[3] = &unk_1E861EDC0;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v8;
  v12 = v9;
  [v3 requestClientToPushAllChangesWithCompletionHandler:v10];
}

uint64_t __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_183(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return (*(a1[7] + 16))(a1[7], a1[4], a1[5]);
  }
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3_178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_4_179;
  v16[3] = &unk_1E861ED48;
  v20 = *(a1 + 72);
  v17 = v4;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  v18 = v10;
  v19 = v11;
  v12 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v22 = v12;
  v13 = v5;
  v14 = v4;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v15);
}

uint64_t __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_4_179(uint64_t result)
{
  if ((*(*(*(result + 72) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = *(result + 56);
    }

    else
    {
      [*(result + 40) setCompletedUnitCount:2];
      v2 = *(v1 + 64);
      v3 = *(v1 + 48);
    }

    v4 = *(v2 + 16);

    return v4();
  }

  return result;
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_173(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLInitialDownloadOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Making sure client has pulled all changes for %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_174;
  v7[3] = &unk_1E861B550;
  v8 = *(a1 + 48);
  [v4 requestClientToPullAllChangesWithScopeIdentifiers:v5 completionHandler:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_6(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLInitialDownloadOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) componentsJoinedByString:{@", "}];
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Forced initial download of %{public}@ has been cancelled", &v7, 0xCu);
    }
  }

  v4 = *(a1 + 40);
  v5 = +[CPLErrors operationCancelledError];
  (*(v4 + 16))(v4, v5);

  v6 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  [*(a1 + 40) setCompletedUnitCount:*(a1 + 96)];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    [v5 cancelTask];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  if (!v3)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_17;
    }

    v8 = __CPLInitialDownloadOSLogDomain();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v15 = 138543362;
    v16 = v9;
    v10 = "Initial download of %{public}@ finished successfully";
LABEL_11:
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
LABEL_15:
    _os_log_impl(&dword_1DC05A000, v11, v12, v10, &v15, v13);

    goto LABEL_16;
  }

  if ([v3 isCPLOperationCancelledError])
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_17;
    }

    v8 = __CPLInitialDownloadOSLogDomain();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v15 = 138543362;
    v16 = v9;
    v10 = "Initial download of %{public}@ has been cancelled";
    goto LABEL_11;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_17;
  }

  v8 = __CPLInitialDownloadOSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    v10 = "Initial download of %{public}@ finished with error: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(*(*(a1 + 80) + 8) + 24), v3, v4);
  [*(a1 + 40) setCancellationHandler:0];
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    [*(*(a1 + 56) + 264) enableSynchronizationWithReason:@"initial download"];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_170(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_171;
  v6[3] = &unk_1E8620568;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 do:v6];
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_4;
  v10[3] = &unk_1E861ECD0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

uint64_t __88__CPLEngineLibrary_forceInitialDownloadWithActivity_scopeIdentifiers_completionHandler___block_invoke_2_171(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) validLocalScopeIndexes];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v4 containsIndex:{objc_msgSend(v11, "localIndex")}])
        {
          v12 = *(a1 + 32);
          v19 = v8;
          v13 = [v12 setHasFinishedInitialDownloadForScope:v11 error:&v19];
          v14 = v19;

          if (!v13)
          {

            if (a2)
            {
              v15 = v14;
              v16 = 0;
              *a2 = v14;
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_17;
          }

          v8 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = 1;
  v14 = v8;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)forceBackupWithActivity:(id)a3 forceClientPush:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v10];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__16777;
  v40[4] = __Block_byref_object_dispose__16778;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke;
  v37[3] = &unk_1E8620288;
  v37[4] = self;
  v37[5] = v40;
  v37[6] = v38;
  [v11 setCancellationHandler:v37];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_159;
  v34[3] = &unk_1E861EC30;
  v34[4] = self;
  v36 = v38;
  v12 = v9;
  v35 = v12;
  v13 = MEMORY[0x1E128EBA0](v34);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_2_163;
  v28[3] = &unk_1E861ED48;
  v28[4] = self;
  v14 = v13;
  v31 = v14;
  v33 = v40;
  v15 = v8;
  v29 = v15;
  v16 = v11;
  v30 = v16;
  v17 = v12;
  v32 = v17;
  v18 = MEMORY[0x1E128EBA0](v28);
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEFAULT, "Starting forced backup - asking client to push all pending changes first", buf, 2u);
      }
    }

    [v16 becomeCurrentWithPendingUnitCount:1];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_166;
    v24 = &unk_1E861EC80;
    v25 = v17;
    v26 = v18;
    [(CPLEngineLibrary *)self requestClientToPushAllChangesWithCompletionHandler:&v21];
    [v16 resignCurrent];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Starting forced backup", buf, 2u);
      }
    }

    v18[2](v18);
  }

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861EC08;
  v6 = *(a1 + 40);
  v2 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v2;
  v3 = v1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v3, v4);
}

uint64_t __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_159(void *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 16));
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = a1[5];
    v3 = +[CPLErrors operationCancelledError];
LABEL_5:
    v4 = v3;
    (*(v2 + 16))(v2, v3);

    return 0;
  }

  if (*(a1[4] + 104) == 1)
  {
    v2 = a1[5];
    v3 = [CPLErrors incorrectMachineStateErrorWithReason:@"closed"];
    goto LABEL_5;
  }

  return 1;
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_2_163(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_3;
  v10[3] = &unk_1E861ED48;
  v3 = *(a1 + 56);
  v14 = *(a1 + 72);
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  v11 = v9;
  v12 = v5;
  v13 = *(a1 + 64);
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v16 = v6;
  v7 = v2;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v8);
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_166(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_14;
  }

  if ([v3 isCPLErrorWithCode:255])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Client might not have pushed all changes yet - continuing backup nonetheless", &v8, 2u);
      }
    }

    goto LABEL_8;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLBackupOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Client failed to push all changes to engine: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

LABEL_14:
  v7 = *MEMORY[0x1E69E9840];
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 56) + 16))())
  {
    v2 = [[CPLEngineBackupSyncTask alloc] initWithEngineLibrary:*(a1 + 32) delegate:*(*(a1 + 32) + 272)];
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(*(a1 + 72) + 8) + 40) setTaskActivity:*(a1 + 40)];
    v5 = *(*(*(a1 + 72) + 8) + 40);
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    [v5 setTaskIdentifier:v7];

    [*(*(*(a1 + 72) + 8) + 40) setBypassForceSyncLimitations:1];
    v8 = *(*(*(a1 + 72) + 8) + 40);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_4;
    v17 = &unk_1E861EC58;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v13 = *(a1 + 64);
    v9 = v13;
    v20 = v13;
    [v8 setTaskDidFinishWithErrorBlock:&v14];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138412290;
        v22 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Launching forced backup task %@", buf, 0xCu);
      }
    }

    [*(*(*(a1 + 72) + 8) + 40) launchTask];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_5;
  v12[3] = &unk_1E861AB68;
  v13 = *(a1 + 40);
  v14 = v4;
  v11 = *(a1 + 48);
  v6 = v11;
  v15 = v11;
  v7 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v17 = v7;
  v8 = v5;
  v9 = v4;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v3 = *(a1 + 40);
  if (!v3)
  {
    if (_CPLSilentLogging)
    {
      v3 = 0;
      goto LABEL_10;
    }

    v4 = __CPLBackupOSLogDomain();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = *(*(*(a1 + 56) + 8) + 40);
    v15 = 138412290;
    v16 = v11;
    v7 = "Forced backup task %@ did finish successfully";
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_8;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLBackupOSLogDomain();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v3 = *(a1 + 40);
      goto LABEL_10;
    }

    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = *(a1 + 40);
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v7 = "Forced backup task %@ did finish with error %@";
    v8 = v4;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 22;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v8, v9, v7, &v15, v10);
    goto LABEL_9;
  }

LABEL_10:
  (*(*(a1 + 48) + 16))(*(a1 + 48), v3, v2);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *MEMORY[0x1E69E9840];
}

void __78__CPLEngineLibrary_forceBackupWithActivity_forceClientPush_completionHandler___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(*(a1 + 32) + 8) + 40);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Backup task %@ has been cancelled", &v7, 0xCu);
      }

      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v2 cancelTask];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLBackupOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Backup has been cancelled", &v7, 2u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestScopesWithIdentifiersToBeActivated:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3];
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x2020000000;
  v105 = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x3032000000;
  v100[3] = __Block_byref_object_copy__16777;
  v100[4] = __Block_byref_object_dispose__16778;
  v101 = 0;
  v10 = self->_store;
  v11 = [(CPLEngineStore *)v10 scopes];
  v12 = self->_queue;
  v48 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v7];
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = __Block_byref_object_copy__16777;
  v98[4] = __Block_byref_object_dispose__16778;
  v99 = 0;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke;
  v95[3] = &unk_1E861F818;
  v13 = v12;
  v96 = v13;
  v97 = v98;
  v14 = MEMORY[0x1E128EBA0](v95);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_2;
  v86[3] = &unk_1E861EA98;
  v15 = v13;
  v87 = v15;
  v93 = v100;
  v47 = v10;
  v88 = v47;
  v45 = v11;
  v89 = v45;
  v94 = v102;
  v16 = v14;
  v91 = v16;
  v17 = v9;
  v90 = v17;
  v44 = v8;
  v92 = v44;
  v18 = MEMORY[0x1E128EBA0](v86);
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_4;
  v79[3] = &unk_1E861EAF0;
  v19 = v15;
  v80 = v19;
  v84 = v102;
  v43 = v16;
  v82 = v43;
  v85 = v98;
  v20 = v7;
  v81 = v20;
  v21 = v18;
  v83 = v21;
  v22 = MEMORY[0x1E128EBA0](v79);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_146;
  v75[3] = &unk_1E861E7A0;
  v23 = v19;
  v76 = v23;
  v78 = v104;
  v24 = v21;
  v77 = v24;
  [v17 setCancellationHandler:v75];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_3_148;
  v69[3] = &unk_1E861EB18;
  v25 = v23;
  v74 = v104;
  v70 = v25;
  v71 = self;
  v26 = v20;
  v72 = v26;
  v27 = v24;
  v73 = v27;
  v28 = MEMORY[0x1E128EBA0](v69);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_149;
  v62[3] = &unk_1E861EB40;
  v29 = v25;
  v67 = v100;
  v68 = a2;
  v63 = v29;
  v64 = self;
  v30 = v17;
  v65 = v30;
  v31 = v22;
  v66 = v31;
  v32 = MEMORY[0x1E128EBA0](v62);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_153;
  v49[3] = &unk_1E861EBE0;
  v42 = v26;
  v50 = v42;
  v46 = v45;
  v51 = v46;
  v33 = v48;
  v52 = v33;
  v34 = v29;
  v53 = v34;
  v35 = v27;
  v57 = v35;
  v36 = v28;
  v58 = v36;
  v37 = v31;
  v59 = v37;
  v38 = v47;
  v61 = v100;
  v54 = v38;
  v55 = self;
  v39 = v32;
  v60 = v39;
  v40 = v30;
  v56 = v40;
  v41 = [(CPLEngineStore *)v38 performReadTransactionWithBlock:v49];

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v100, 8);

  _Block_object_dispose(v102, 8);
  _Block_object_dispose(v104, 8);
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v7 = *(*(*(a1 + 80) + 8) + 40);
  if (v7)
  {
    v8 = v7;
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_3;
    v16[3] = &unk_1E86205B8;
    v11 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v8;
    v12 = v8;
    v13 = [v11 performReadTransactionWithBlock:v16];
  }

  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), v4, v5, v6);
    *(*(*(a1 + 88) + 8) + 24) = 1;
    [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
    (*(*(a1 + 72) + 16))(*(a1 + 72), v3, v14, v15);
    [*(a1 + 56) setCancellationHandler:0];
  }
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
    v3 = dispatch_time(0, 1000000000 * *&_timeToWaitForClientToActivateScopes);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_5;
    v9[3] = &unk_1E861EAC8;
    v4 = v2;
    v5 = *(a1 + 72);
    v10 = v4;
    v13 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    dispatch_source_set_event_handler(v4, v9);
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;
    v8 = v4;

    dispatch_resume(v8);
  }
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_146(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_2_147;
  v7[3] = &unk_1E861E778;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_3_148(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (*(*(a1 + 40) + 104) != 1)
    {
      result = 1;
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 48) componentsJoinedByString:{@", "}];
        v8 = 138543362;
        v9 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Engine got a request to have %{public}@ activated but it is closed", &v8, 0xCu);
      }
    }

    v4 = *(a1 + 56);
    v5 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
    (*(v4 + 16))(v4, v5);
  }

  result = 0;
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_149(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Engine should be observing scopes changes", v9, 2u);
      }
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 72);
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
    [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:2113 description:@"Engine should be observing scopes changes"];

    abort();
  }

  [*(a1 + 48) setCompletedUnitCount:2];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_153(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v47;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v46 + 1) + 8 * i);
        v8 = [*(a1 + 40) scopeWithIdentifier:v7];
        if (v8 && ([*(a1 + 40) valueForFlag:16 forScope:v8] & 1) == 0)
        {
          [*(a1 + 48) removeObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 48) count])
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_3_155;
    v40[3] = &unk_1E861EB90;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 88);
    v15 = *(a1 + 96);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v41 = v17;
    v42 = v16;
    v43 = *(a1 + 104);
    [v11 addScopeFlagsObserver:v40 withIdentifier:v10];
    v18 = *(a1 + 56);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_6;
    v30[3] = &unk_1E861EBB8;
    v36 = *(a1 + 96);
    v31 = *(a1 + 64);
    v32 = *(a1 + 40);
    v33 = v10;
    v19 = *(a1 + 72);
    v20 = *(a1 + 112);
    v39 = *(a1 + 120);
    v34 = v19;
    v37 = v20;
    v35 = *(a1 + 80);
    v38 = *(a1 + 88);
    v21 = v30;
    block = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __cpl_dispatch_async_block_invoke_16734;
    v53 = &unk_1E861B4E0;
    v54 = v21;
    v22 = v18;
    v23 = v10;
    v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v22, v24);
  }

  else
  {
    v25 = *(a1 + 56);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_2_154;
    v44[3] = &unk_1E861B4E0;
    v45 = *(a1 + 88);
    v26 = v44;
    block = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __cpl_dispatch_async_block_invoke_16734;
    v53 = &unk_1E861B4E0;
    v54 = v26;
    v27 = v25;
    v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v27, v28);

    v23 = v45;
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_3_155(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 scopeIdentifier];
  if (![*(a1 + 32) containsObject:v7] || (objc_msgSend(v6, "valueForFlag:", 16) & 1) != 0 || (objc_msgSend(*(a1 + 32), "removeObject:", v7), objc_msgSend(*(a1 + 32), "count")))
  {
    v8 = *(a1 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_5_157;
    v17[3] = &unk_1E861EB68;
    v9 = &v18;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v10 = v17;
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __cpl_dispatch_async_block_invoke_16734;
    v25 = &unk_1E861B4E0;
    v26 = v10;
    v11 = v8;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v11, v12);
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_4_156;
    v20[3] = &unk_1E861B4E0;
    v9 = &v21;
    v13 = *(a1 + 40);
    v21 = *(a1 + 48);
    v14 = v20;
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __cpl_dispatch_async_block_invoke_16734;
    v25 = &unk_1E861B4E0;
    v26 = v14;
    v15 = v13;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v15, v16);
  }
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_6(uint64_t a1)
{
  if ((*(*(a1 + 72) + 16))())
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 48));
    v2 = [*(a1 + 56) _libraryObject];
    if (v2)
    {
      v3 = v2;
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      [*(a1 + 64) setCompletedUnitCount:1];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_8;
      v7[3] = &unk_1E861E930;
      v6 = *(a1 + 64);
      v7[4] = *(a1 + 56);
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      [v6 performAsCurrentWithPendingUnitCount:1 usingBlock:v7];

      v3 = 0;
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_7;
    v11[3] = &unk_1E86205B8;
    v4 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v5 = [v4 performReadTransactionWithBlock:v11];

    v3 = v12;
  }
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_8(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_9;
  v3[3] = &unk_1E861E908;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockOnLibrary:v3];
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_9(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1[4] + 16))())
  {
    if (a2)
    {
      (*(a1[5] + 16))();
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v7 = 0;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Engine failed to get a client to get scopes activated", v7, 2u);
        }
      }

      (*(a1[6] + 16))();
    }
  }
}

uint64_t __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_5_157(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_2_147(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, v2);
}

void __80__CPLEngineLibrary_requestScopesWithIdentifiersToBeActivated_completionHandler___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == *(*(*(a1 + 56) + 8) + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v11 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Client has not tried to activate %@ for a long time", buf, 0xCu);
      }
    }

    v4 = *(a1 + 48);
    v8 = @"CPLErrorLibraryHasNotBeenActivated";
    v9 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [CPLErrors cplErrorWithCode:83 underlyingError:0 userInfo:v5 description:@"Client failed to activate scopes in time"];
    (*(v4 + 16))(v4, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)noteMainScopeHasBeenActivated
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CPLEngineLibrary_noteMainScopeHasBeenActivated__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __49__CPLEngineLibrary_noteMainScopeHasBeenActivated__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 88) hasFinishedInitialDownload] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 32) mainScopeIdentifier];
        v4 = *(a1 + 32);
        v7 = 138543618;
        v8 = v3;
        v9 = 2112;
        v10 = v4;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ for %@ has been activated - signaling owner", &v7, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    [WeakRetained engineLibraryNeedsInitialDownloadOfMainScope:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)requestClientToPullAllChangesWithScopeIdentifiers:(id)a3 completionHandler:(id)a4
{
  v42 = a3;
  v46 = a4;
  v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3];
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2020000000;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x3032000000;
  v96[3] = __Block_byref_object_copy__16777;
  v96[4] = __Block_byref_object_dispose__16778;
  v97 = 0;
  v7 = self->_store;
  v8 = [(CPLEngineStore *)v7 pullQueue];
  v9 = self->_queue;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = __Block_byref_object_copy__16777;
  v94[4] = __Block_byref_object_dispose__16778;
  v95 = 0;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke;
  v91[3] = &unk_1E861F818;
  v10 = v9;
  v92 = v10;
  v93 = v94;
  v11 = MEMORY[0x1E128EBA0](v91);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2;
  v82[3] = &unk_1E861EA98;
  v12 = v10;
  v83 = v12;
  v13 = v11;
  v87 = v13;
  v89 = v96;
  v14 = v7;
  v84 = v14;
  v15 = v8;
  v85 = v15;
  v90 = v98;
  v16 = v6;
  v86 = v16;
  v47 = v46;
  v88 = v47;
  v17 = MEMORY[0x1E128EBA0](v82);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_4;
  v76[3] = &unk_1E861E958;
  v18 = v12;
  v77 = v18;
  v80 = v98;
  v41 = v13;
  v78 = v41;
  v81 = v94;
  v19 = v17;
  v79 = v19;
  v20 = MEMORY[0x1E128EBA0](v76);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_123;
  v72[3] = &unk_1E861E7A0;
  v21 = v18;
  v73 = v21;
  v75 = v100;
  v22 = v19;
  v74 = v22;
  [v16 setCancellationHandler:v72];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_125;
  v64[3] = &unk_1E861E980;
  v23 = v21;
  v69 = v100;
  v70 = v98;
  v71 = a2;
  v65 = v23;
  v66 = self;
  v24 = v42;
  v67 = v24;
  v25 = v22;
  v68 = v25;
  v26 = MEMORY[0x1E128EBA0](v64);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_129;
  v53[3] = &unk_1E861EA48;
  v27 = v26;
  v54 = v14;
  v55 = v24;
  v60 = v27;
  v56 = v15;
  v28 = v23;
  v57 = v28;
  v29 = v25;
  v61 = v29;
  v58 = self;
  v30 = v16;
  v59 = v30;
  v62 = v20;
  v63 = v96;
  v31 = v20;
  v43 = v15;
  v45 = v24;
  v32 = v14;
  v33 = MEMORY[0x1E128EBA0](v53);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_138;
  v48[3] = &unk_1E861EA70;
  v50 = v27;
  v51 = v33;
  v48[4] = self;
  v49 = v30;
  v52 = v29;
  v34 = v48;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v103 = v34;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v33;
  v39 = v27;
  v40 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v35, v40);

  _Block_object_dispose(v94, 8);
  _Block_object_dispose(v96, 8);

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v100, 8);
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  (*(*(a1 + 64) + 16))();
  v4 = *(*(*(a1 + 80) + 8) + 40);
  if (v4)
  {
    v5 = v4;
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3;
    v14[3] = &unk_1E86205B8;
    v8 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = v5;
    v9 = v5;
    v10 = [v8 performReadTransactionWithBlock:v14];
  }

  v11 = *(*(a1 + 88) + 8);
  if ((*(v11 + 24) & 1) == 0)
  {
    *(v11 + 24) = 1;
    [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "totalUnitCount")}];
    (*(*(a1 + 72) + 16))(*(a1 + 72), v3, v12, v13);
    [*(a1 + 56) setCancellationHandler:0];
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
    v3 = dispatch_time(0, 1000000000 * *&_timeToWaitForClientToPullChanges);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_5;
    handler[3] = &unk_1E861E7A0;
    v4 = v2;
    v5 = *(a1 + 64);
    v10 = v4;
    v12 = v5;
    v11 = *(a1 + 48);
    dispatch_source_set_event_handler(v4, handler);
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;
    v8 = v4;

    dispatch_resume(v8);
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_124;
  v7[3] = &unk_1E861E778;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_125(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Completion handler should have been called by cancellation handler", &v13, 2u);
        }
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = *(a1 + 80);
      v5 = *(a1 + 40);
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
      [v3 handleFailureInMethod:v4 object:v5 file:v6 lineNumber:1927 description:@"Completion handler should have been called by cancellation handler"];

      abort();
    }
  }

  else
  {
    if (*(*(a1 + 40) + 104) != 1)
    {
      result = 1;
      goto LABEL_16;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 48) componentsJoinedByString:{@", "}];
        v13 = 138543362;
        v14 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to pull changes in %{public}@ but it is closed", &v13, 0xCu);
      }
    }

    v9 = *(a1 + 56);
    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
    (*(v9 + 16))(v9, v10);
  }

  result = 0;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_129(uint64_t a1)
{
  if ((*(*(a1 + 80) + 16))())
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_130;
    v17[3] = &unk_1E861EA20;
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    *&v7 = v2;
    *(&v7 + 1) = v3;
    v18 = v7;
    v19 = v6;
    v8 = *(a1 + 88);
    v16 = *(a1 + 64);
    v9 = *(a1 + 80);
    v10 = *(a1 + 72);
    *&v11 = v16;
    *(&v11 + 1) = v10;
    *&v12 = v8;
    *(&v12 + 1) = v9;
    v20 = v11;
    v21 = v12;
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    v22 = v13;
    v23 = v14;
    v15 = [v2 performReadTransactionWithBlock:v17];
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_138(id *a1)
{
  if ((*(a1[6] + 2))())
  {
    v2 = [a1[4] _libraryObject];
    if (v2)
    {
      (*(a1[7] + 2))();
    }

    else
    {
      [a1[5] setCompletedUnitCount:1];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_139;
      v4[3] = &unk_1E861E930;
      v3 = a1[5];
      v4[4] = a1[4];
      v5 = a1[6];
      v6 = a1[7];
      v7 = a1[8];
      [v3 performAsCurrentWithPendingUnitCount:1 usingBlock:v4];
    }
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_139(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_4_140;
  v3[3] = &unk_1E861E908;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockOnLibrary:v3];
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_4_140(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1[4] + 16))())
  {
    if (a2)
    {
      (*(a1[5] + 16))();
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v7 = 0;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Engine failed to get a client to get changes pulled", v7, 2u);
        }
      }

      (*(a1[6] + 16))();
    }
  }
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_130(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scopes];
  v3 = [v2 filterForIncludedScopeIdentifiers:*(a1 + 40)];

  if ([*(a1 + 48) hasSomeChangeWithScopeFilter:v3])
  {
    [*(a1 + 64) notifyAttachedObjectsPullQueueIsFull];
    v4 = *(a1 + 48);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_132;
    v28[3] = &unk_1E861E9D0;
    v5 = &v29;
    v29 = v3;
    v30 = *(a1 + 40);
    v31 = *(a1 + 56);
    v33 = *(a1 + 80);
    v34 = *(a1 + 88);
    v32 = *(a1 + 72);
    v35 = *(a1 + 96);
    v6 = [v4 addDequeueObserverWithDequeueSignalBlock:v28];
    v7 = *(a1 + 56);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_136;
    v20[3] = &unk_1E861E9F8;
    v8 = *(a1 + 88);
    v27 = *(a1 + 104);
    v25 = v8;
    v21 = v6;
    v22 = *(a1 + 40);
    v26 = *(a1 + 96);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v9 = v20;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v39 = __cpl_dispatch_async_block_invoke_16734;
    v40 = &unk_1E861B4E0;
    v41 = v9;
    v10 = v7;
    v11 = v6;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v10, v12);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        LODWORD(block) = 138543362;
        *(&block + 4) = v14;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Client has no changes to pull for %{public}@", &block, 0xCu);
      }
    }

    v15 = *(a1 + 56);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_131;
    v36[3] = &unk_1E861B4E0;
    v5 = &v37;
    v37 = *(a1 + 80);
    v16 = v36;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v39 = __cpl_dispatch_async_block_invoke_16734;
    v40 = &unk_1E861B4E0;
    v41 = v16;
    v17 = v15;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v17, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_132(uint64_t a1, void *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3 && ([v5 hasSomeChangeWithScopeFilter:*(a1 + 32)] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        LODWORD(block) = 138543362;
        *(&block + 4) = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "Client has no more changes to pull for %{public}@", &block, 0xCu);
      }
    }

    v14 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_133;
    v23[3] = &unk_1E861B4E0;
    v8 = &v24;
    v24 = *(a1 + 64);
    v15 = v23;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v26 = __cpl_dispatch_async_block_invoke_16734;
    v27 = &unk_1E861B4E0;
    v28 = v15;
    v16 = v14;
    v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v16, v17);
  }

  else
  {
    v7 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_134;
    v19[3] = &unk_1E861E9A8;
    v8 = &v21;
    v21 = *(a1 + 72);
    v20 = *(a1 + 56);
    v22 = *(a1 + 80);
    v9 = v19;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v26 = __cpl_dispatch_async_block_invoke_16734;
    v27 = &unk_1E861B4E0;
    v28 = v9;
    v10 = v7;
    v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v10, v11);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_3_136(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 64) + 16))())
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 32));
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        *buf = 138543362;
        v11 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Start waiting for client to pull all changes for %{public}@", buf, 0xCu);
      }
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_137;
    v7[3] = &unk_1E86205B8;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v5 = [v4 performReadTransactionWithBlock:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_134(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    [*(a1 + 32) setCompletedUnitCount:2];
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_2_124(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, v2);
}

void __88__CPLEngineLibrary_requestClientToPullAllChangesWithScopeIdentifiers_completionHandler___block_invoke_5(void *a1)
{
  if (a1[4] == *(*(a1[6] + 8) + 40))
  {
    v8 = v1;
    v9 = v2;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Client has not tried to pull or acknowledge changes for a long time", v7, 2u);
      }
    }

    v5 = a1[5];
    v6 = [CPLErrors cplErrorWithCode:83 description:@"Client failed to pull changes in time"];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke;
  v39[3] = &unk_1E861E868;
  v39[4] = self;
  v42 = v43;
  v7 = v6;
  v40 = v7;
  v8 = v5;
  v41 = v8;
  v9 = MEMORY[0x1E128EBA0](v39);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2;
  v36[3] = &unk_1E861E7A0;
  v36[4] = self;
  v38 = v45;
  v10 = v9;
  v37 = v10;
  [v7 setCancellationHandler:v36];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4;
  v31[3] = &unk_1E861E890;
  v31[4] = self;
  v33 = v45;
  v34 = v43;
  v35 = a2;
  v11 = v10;
  v32 = v11;
  v12 = MEMORY[0x1E128EBA0](v31);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_105;
  v28[3] = &unk_1E861E8E0;
  v28[4] = self;
  v30 = v45;
  v13 = v11;
  v29 = v13;
  v14 = MEMORY[0x1E128EBA0](v28);
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_117;
  v23[3] = &unk_1E861EA70;
  v23[4] = self;
  v24 = v7;
  v25 = v12;
  v26 = v14;
  v27 = v13;
  v16 = v23;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v48 = v16;
  v17 = queue;
  v18 = v13;
  v19 = v14;
  v20 = v7;
  v21 = v12;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v17, v22);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 56) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    (*(*(a1 + 48) + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = 0;

    [*(a1 + 40) setCancellationHandler:0];
  }
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E861E778;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4(void *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 16));
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Completion handler should have been called by cancellation handler", buf, 2u);
        }
      }

      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = a1[8];
      v5 = a1[4];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
      [v3 handleFailureInMethod:v4 object:v5 file:v6 lineNumber:1745 description:@"Completion handler should have been called by cancellation handler"];

      abort();
    }

    return 0;
  }

  if (*(a1[4] + 104) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to push all changes but it is closed", v11, 2u);
      }
    }

    v8 = a1[5];
    v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
    (*(v8 + 16))(v8, v9);

    return 0;
  }

  return 1;
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Engine is asking client to push all changes", buf, 2u);
    }
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16777;
  v25 = __Block_byref_object_dispose__16778;
  v26 = 0;
  v5 = *(*(a1 + 32) + 16);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_106;
  v16[3] = &unk_1E861EF00;
  v6 = v5;
  v17 = v6;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v19 = buf;
  v20 = v7;
  v18 = v8;
  v9 = [v16 copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;

  (*(*(*(a1 + 32) + 136) + 16))();
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_111;
  v13[3] = &unk_1E861E8B8;
  v13[4] = v12;
  v15 = buf;
  v14 = *(a1 + 40);
  [v3 engineLibrary:v12 pushAllChangesWithCompletionHandler:v13];

  _Block_object_dispose(buf, 8);
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_117(uint64_t a1)
{
  if ((*(*(a1 + 48) + 16))())
  {
    v2 = [*(a1 + 32) _libraryObject];
    v3 = *(a1 + 40);
    if (v2)
    {
      [v3 setCompletedUnitCount:2];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [v3 setCompletedUnitCount:1];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2_118;
      v5[3] = &unk_1E861E930;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v5];
    }
  }
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2_118(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3_119;
  v3[3] = &unk_1E861E908;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockOnLibrary:v3];
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3_119(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1[4] + 16))())
  {
    if (v5)
    {
      v7 = *(a1[5] + 16);
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Engine failed to get a client to get all changes pushed", v9, 2u);
        }
      }

      v7 = *(a1[6] + 16);
    }

    v7();
  }
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_106(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Client is pushing changes...", buf, 2u);
      }

      v2 = *(*(*(a1 + 48) + 8) + 40);
    }

    dispatch_source_cancel(v2);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
  v7 = dispatch_time(0, 1000000000 * *&_timeToWaitForClientToPushChanges);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_107;
  handler[3] = &unk_1E861EF00;
  v8 = v6;
  v9 = *(a1 + 56);
  v16 = v8;
  v18 = v9;
  v14 = *(a1 + 40);
  v10 = v14;
  v17 = v14;
  dispatch_source_set_event_handler(v8, handler);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_resume(v13);
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2_112;
  v11[3] = &unk_1E861EAC8;
  v12 = v3;
  v10 = *(a1 + 40);
  v5 = v10;
  v14 = v10;
  v13 = *(a1 + 32);
  v6 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v16 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2_112(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    if ([v5 isCPLErrorWithCode:255])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Client does not support pushing all changes yet - some changes might not be uploaded", buf, 2u);
        }
      }

      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
LABEL_16:
      (*(v7 + 16))(v7, v8);
      goto LABEL_22;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Client failed to push all changes: %@", buf, 0xCu);
        }

        v8 = *(a1 + 32);
      }

      v7 = *(a1 + 48);
      goto LABEL_16;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Client successfully pushed all changes", buf, 2u);
    }
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 256);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_113;
  v18[3] = &unk_1E86205E0;
  v18[4] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3_115;
  v16[3] = &unk_1E8620308;
  v16[4] = v12;
  v17 = *(a1 + 48);
  v14 = [v13 performWriteTransactionWithBlock:v18 completionHandler:v16];

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_2_114;
  v3[3] = &unk_1E8620478;
  v3[4] = *(a1 + 32);
  return [a2 do:v3];
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3_115(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4_116;
  v9[3] = &unk_1E861AA50;
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v13 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_4_116(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLBackupOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [*(a1 + 32) error];
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Failed to commit pending change updates: %@", &v10, 0xCu);
      }
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) error];
    (*(v5 + 16))(v5, v6);

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_107(void *a1)
{
  if (a1[4] == *(*(a1[6] + 8) + 40))
  {
    if (_failOnPushingChangesTimeout == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Client has not tried to push any changes for a long time - timing out", buf, 2u);
        }
      }

      *(*(a1[7] + 8) + 24) = 1;
      v3 = a1[5];
      v4 = [CPLErrors cplErrorWithCode:83 description:@"Client failed to push changes in time"];
      (*(v3 + 16))(v3, v4);
    }

    else
    {
      if (_CPLSilentLogging)
      {
        return;
      }

      v4 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Client has not tried to push any changes for a long time", v5, 2u);
      }
    }
  }
}

void __71__CPLEngineLibrary_requestClientToPushAllChangesWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, v2);
}

- (void)provideCloudResource:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to provide %@ but it is closed. Should try again later", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to provide %@", buf, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v7 = *(v2 + 256);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_95;
    v10[3] = &unk_1E861F9D8;
    v10[4] = v2;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v8 = [v7 performReadTransactionWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_95(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 256) isClientInSyncWithClientCache])
  {
    v2 = [*(a1 + 40) itemScopedIdentifier];
    v3 = [v2 scopeIdentifier];
    v4 = [*(*(a1 + 32) + 256) scopes];
    v5 = [v4 scopeWithIdentifier:v3];
    if (!v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 40);
          *buf = 138412546;
          v49 = v3;
          v50 = 2112;
          v51 = v13;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEFAULT, "%@ is an unknown scope. Marking (cloud) %@ as unavailable", buf, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_52;
    }

    v6 = [v4 scopeForSharingScope:v5];
    if (v6)
    {
      v7 = [*(*(a1 + 32) + 256) cloudCache];
      v8 = [v7 targetForRecordWithSharedCloudScopedIdentifier:v2];
      v9 = [v8 scopedIdentifier];

      [*(a1 + 40) setItemScopedIdentifier:v9];
    }

    else
    {
      v9 = 0;
    }

    if ([v4 valueForFlag:16 forScope:v5])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          *buf = 138412546;
          v49 = v3;
          v50 = 2112;
          v51 = v15;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "%@ is inactive. Marking (cloud) %@ as unavailable", buf, 0x16u);
        }
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_51;
    }

    v16 = [*(a1 + 40) identity];
    v47 = 0;
    v17 = [*(*(a1 + 32) + 256) localResourceForCloudResource:*(a1 + 40) recordClass:&v47];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 fingerPrint];
      if (!v19)
      {
LABEL_27:

        v22 = [v18 copy];
        v23 = [v22 identity];
        v24 = [v16 fileURL];
        [v23 setFileURL:v24];

        v25 = *(a1 + 32);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_96;
        v40[3] = &unk_1E861E840;
        v40[4] = v25;
        v41 = v22;
        v46 = v47;
        v42 = v9;
        v43 = *(a1 + 40);
        v44 = v2;
        v45 = *(a1 + 48);
        v26 = v22;
        [v25 performBlockOnLibrary:v40];

LABEL_50:
LABEL_51:

LABEL_52:
        goto LABEL_53;
      }

      v39 = v16;
      v20 = [v18 identity];
      v21 = [v20 fingerPrint];

      if (v21 && ([v19 isEqual:v21] & 1) != 0)
      {

        v16 = v39;
        goto LABEL_27;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v27 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 40);
          *buf = 138412290;
          v49 = v28;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "Fingerprint for (cloud) %@ does not match the one in client cache", buf, 0xCu);
        }
      }

      v16 = v39;
    }

    if ([*(*(a1 + 32) + 256) hasPendingChangeSessionUpdate])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 40);
          *buf = 138412290;
          v49 = v30;
          v31 = "Engine has pending changes to apply. Should try again later for (cloud) %@";
          v32 = v29;
          v33 = 12;
LABEL_46:
          _os_log_impl(&dword_1DC05A000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
          goto LABEL_47;
        }

        goto LABEL_47;
      }
    }

    else
    {
      if ([v4 hasFinishedInitialSyncForScope:v5])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v34 = __CPLDataRecoveryOSLogDomain();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 40);
            *buf = 138412290;
            v49 = v35;
            _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEFAULT, "Unable to find (cloud) %@ for recovery", buf, 0xCu);
          }
        }

        v36 = *(*(a1 + 48) + 16);
        goto LABEL_49;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(a1 + 40);
          *buf = 138412546;
          v49 = v3;
          v50 = 2112;
          v51 = v37;
          v31 = "%@ is not fully synchronized. Should try again later for (cloud) %@";
          v32 = v29;
          v33 = 22;
          goto LABEL_46;
        }

LABEL_47:
      }
    }

    v36 = *(*(a1 + 48) + 16);
LABEL_49:
    v36();
    goto LABEL_50;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLDataRecoveryOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v49 = v11;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Engine is not in sync with client. Should try again later for (cloud) %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_53:
  v38 = *MEMORY[0x1E69E9840];
}

void __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 56);
        *buf = 138412290;
        v25 = v13;
        v14 = "Client is not attached. Should try again later for (cloud) %@";
LABEL_10:
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      }

LABEL_11:
    }

LABEL_12:
    (*(*(a1 + 72) + 16))();
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 56);
        *buf = 138412290;
        v25 = v15;
        v14 = "Client has not implemented recovery yet. Should try again later for (cloud) %@";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 80);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_2;
  v17[3] = &unk_1E861E818;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v10 = v5;
  v11 = *(a1 + 32);
  v21 = v10;
  v22 = v11;
  v23 = *(a1 + 72);
  [v10 engineLibrary:v7 provideLocalResource:v8 recordClass:v9 completionHandler:v17];

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
}

void __59__CPLEngineLibrary_provideCloudResource_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    if (*(a1 + 32))
    {
      v11 = [*(a1 + 40) itemScopedIdentifier];
      v12 = [v11 isEqual:*(a1 + 32)];

      if (v12)
      {
        [*(a1 + 40) setItemScopedIdentifier:*(a1 + 48)];
      }
    }

    v13 = [v5 identity];
    v14 = [v13 fileURL];
    if (!v14)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v26 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [*(a1 + 56) displayableNameForEngineLibrary:*(a1 + 64)];
          v28 = v27;
          if (!v27)
          {
            v28 = [*(a1 + 56) description];
          }

          v29 = *(a1 + 40);
          *buf = 138543618;
          v37 = v28;
          v38 = 2112;
          v39 = v29;
          _os_log_impl(&dword_1DC05A000, v26, OS_LOG_TYPE_ERROR, "Client (%{public}@) did not provide a file for (cloud) %@ yet it says the resource is available", buf, 0x16u);
          if (!v27)
          {
          }
        }
      }

      (*(*(a1 + 72) + 16))();
      goto LABEL_44;
    }

    v15 = [v13 copy];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 56) displayableNameForEngineLibrary:*(a1 + 64)];
        v18 = v17;
        if (!v17)
        {
          v18 = [*(a1 + 56) description];
        }

        v19 = [v14 path];
        v20 = *(a1 + 40);
        *buf = 138543874;
        v37 = v18;
        v38 = 2112;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Client (%{public}@) provided %@ for (cloud) %@", buf, 0x20u);
        if (!v17)
        {
        }
      }
    }

    v21 = [*(a1 + 40) identity];
    v22 = [v21 fileURL];

    if (v22)
    {
      if ([v22 isEqual:v14])
      {
LABEL_27:
        [v15 setFileURL:v22];

LABEL_43:
        [*(a1 + 40) setIdentity:v15];
        v33 = *(a1 + 40);
        (*(*(a1 + 72) + 16))();

LABEL_44:
        goto LABEL_45;
      }

      v23 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = 0;
      v24 = [v23 cplCopyItemAtURL:v14 toURL:v22 error:&v35];
      v25 = v35;

      if (v24)
      {

        goto LABEL_27;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [v14 path];
          v32 = [v22 path];
          *buf = 138412802;
          v37 = v31;
          v38 = 2112;
          v39 = v32;
          v40 = 2112;
          v41 = v25;
          _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_ERROR, "Failed to copy %@ to %@. Will provide the source URL instead: %@", buf, 0x20u);
        }
      }
    }

    [v15 setFileURL:v14];
    goto LABEL_43;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLDataRecoveryOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 56) displayableNameForEngineLibrary:*(a1 + 64)];
      v8 = v7;
      if (!v7)
      {
        v8 = [*(a1 + 56) description];
      }

      v9 = *(a1 + 40);
      v10 = [CPLLibraryManager descriptionForProvideContentResult:a3];
      *buf = 138543874;
      v37 = v8;
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Client (%{public}@) recovery result for (cloud) %@ is: %@", buf, 0x20u);
      if (!v7)
      {
      }
    }
  }

  (*(*(a1 + 72) + 16))();
LABEL_45:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CPLEngineLibrary_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __76__CPLEngineLibrary_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to provide record %@ but it is closed. Should try again later", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(v2 + 256);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__CPLEngineLibrary_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_94;
    v8[3] = &unk_1E861F9D8;
    v8[4] = v2;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v6 = [v5 performReadTransactionWithBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __76__CPLEngineLibrary_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke_94(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 256) isClientInSyncWithClientCache])
  {
    v2 = [*(a1 + 40) scopeIdentifier];
    v3 = [*(*(a1 + 32) + 256) scopes];
    v4 = [v3 scopeWithIdentifier:v2];
    if (!v4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          *v25 = 138412546;
          *&v25[4] = v2;
          v26 = 2112;
          v27 = v10;
          v7 = "%@ is an unknown scope. Marking record %@ as unavailable";
          goto LABEL_15;
        }

LABEL_16:
      }

LABEL_17:
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, 1);
LABEL_38:

      goto LABEL_39;
    }

    if ([v3 valueForFlag:16 forScope:v4])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 40);
          *v25 = 138412546;
          *&v25[4] = v2;
          v26 = 2112;
          v27 = v6;
          v7 = "%@ is inactive. Marking record %@ as unavailable";
LABEL_15:
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, v7, v25, 0x16u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v11 = [*(*(a1 + 32) + 256) cloudCache];
    v12 = [v11 recordWithScopedIdentifier:*(a1 + 40) isFinal:0];

    if (v12)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          *v25 = 138412290;
          *&v25[4] = v14;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Record %@ is available in cloud cache", v25, 0xCu);
        }
      }

      v15 = *(*(a1 + 48) + 16);
    }

    else
    {
      if ([v3 hasFinishedInitialSyncForScope:v4])
      {
        v25[0] = 0;
        v16 = [*(*(a1 + 32) + 256) idMapping];
        v17 = [v16 localScopedIdentifierForCloudScopedIdentifier:*(a1 + 40) isFinal:v25];

        if (!v17 || ([*(*(a1 + 32) + 256) transactionClientCacheView], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hasRecordWithScopedIdentifier:", v17), v18, v17, !v19))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v20 = __CPLDataRecoveryOSLogDomain();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(a1 + 40);
              *v25 = 138412290;
              *&v25[4] = v21;
              _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEFAULT, "Record %@ is not in cloud cache and it does not seem it might appear later. Marking as unavailable", v25, 0xCu);
            }
          }

          v15 = *(*(a1 + 48) + 16);
          goto LABEL_37;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLDataRecoveryOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 40);
          *v25 = 138412546;
          *&v25[4] = v2;
          v26 = 2112;
          v27 = v23;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_DEFAULT, "%@ is not fully synchronized. Should try again later for record %@", v25, 0x16u);
        }
      }

      v15 = *(*(a1 + 48) + 16);
    }

LABEL_37:
    v15();

    goto LABEL_38;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLDataRecoveryOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *v25 = 138412290;
      *&v25[4] = v9;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Engine is not in sync with client. Should try again later to get record %@", v25, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_39:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CPLEngineLibrary_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __79__CPLEngineLibrary_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to provide library info for %@ but it is closed. Should try again later", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(v2 + 256);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__CPLEngineLibrary_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_93;
    v8[3] = &unk_1E861F9D8;
    v8[4] = v2;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v6 = [v5 performReadTransactionWithBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __79__CPLEngineLibrary_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke_93(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 256) isClientInSyncWithClientCache])
  {
    v2 = [*(a1[4] + 256) scopes];
    v3 = [v2 scopeWithIdentifier:a1[5]];
    v4 = v3;
    if (v3)
    {
      if ([v3 scopeType])
      {
        if ([v2 doesScopeSupportToBePulledByClient:v4])
        {
          v5 = [v2 scopeChangeForScope:v4];
          if (v5)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v6 = __CPLDataRecoveryOSLogDomain();
              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                v7 = a1[5];
                v19 = 138412290;
                v20 = v7;
                _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Scope Change for %@ is available", &v19, 0xCu);
              }
            }

            v8 = *(a1[6] + 16);
          }

          else
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v17 = __CPLDataRecoveryOSLogDomain();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = a1[5];
                v19 = 138412290;
                v20 = v18;
                _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Scope Change for %@ is not available", &v19, 0xCu);
              }
            }

            v8 = *(a1[6] + 16);
          }

          v8();

          goto LABEL_28;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = __CPLDataRecoveryOSLogDomain();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = a1[5];
            v19 = 138412290;
            v20 = v15;
            v13 = "%@ is inactive. Marking scope info as unavailable";
            goto LABEL_25;
          }

LABEL_26:
        }

LABEL_27:
        (*(a1[6] + 16))(a1[6], 0);
LABEL_28:

        goto LABEL_29;
      }

      if (_CPLSilentLogging)
      {
        goto LABEL_27;
      }

      v11 = __CPLDataRecoveryOSLogDomain();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v14 = a1[5];
      v19 = 138412290;
      v20 = v14;
      v13 = "%@ is an unknown type of scope. Marking scope info as unavailable";
    }

    else
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_27;
      }

      v11 = __CPLDataRecoveryOSLogDomain();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v12 = a1[5];
      v19 = 138412290;
      v20 = v12;
      v13 = "%@ is an unknown scope. Marking library info as unavailable";
    }

LABEL_25:
    _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, v13, &v19, 0xCu);
    goto LABEL_26;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLDataRecoveryOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[5];
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Engine is not in sync with client. Should try again later to get library info for %@", &v19, 0xCu);
    }
  }

  (*(a1[6] + 16))();
LABEL_29:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)providePayloadForComputeStates:(id)a3 inFolderWithURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke;
  v33[3] = &unk_1E861E750;
  v33[4] = self;
  v36 = v37;
  v12 = v11;
  v34 = v12;
  v13 = v10;
  v35 = v13;
  v14 = MEMORY[0x1E128EBA0](v33);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2;
  v30[3] = &unk_1E861E7A0;
  v30[4] = self;
  v32 = v39;
  v15 = v14;
  v31 = v15;
  [v12 setCancellationHandler:v30];
  queue = self->_queue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_4;
  v24[3] = &unk_1E861E7F0;
  v28 = v15;
  v29 = v39;
  v24[4] = self;
  v25 = v12;
  v26 = v8;
  v27 = v9;
  v17 = v24;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v42 = v17;
  v18 = queue;
  v19 = v9;
  v20 = v8;
  v21 = v12;
  v22 = v15;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v18, v23);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v6 = *(*(a1 + 56) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setCancellationHandler:0];
  }
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3;
  v7[3] = &unk_1E861E778;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDataRecoveryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Engine got a request to try to provide compute state payloads but it is closed. Should try again later", buf, 2u);
      }
    }

    v4 = *(a1 + 64);
    v5 = +[CPLErrors libraryClosedError];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = *(a1 + 72);
    if ((*(*(v6 + 8) + 24) & 1) == 0)
    {
      v7 = *(a1 + 40);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_89;
      v8[3] = &unk_1E861EE38;
      v8[4] = v2;
      v12 = v6;
      v11 = *(a1 + 64);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      [v7 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
    }
  }
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_89(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2_90;
  v6[3] = &unk_1E861E7C8;
  v5 = *(a1 + 56);
  v3 = v5;
  v9 = v5;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 performBlockOnLibrary:v6];
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_2_90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3_91;
      v10[3] = &unk_1E861B380;
      v10[4] = v7;
      v9 = *(a1 + 48);
      v11 = *(a1 + 56);
      [v5 engineLibrary:v7 providePayloadForComputeStates:v8 inFolderWithURL:v9 completionHandler:v10];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3_91(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_4_92;
  v14[3] = &unk_1E861F5D0;
  v8 = *(a1 + 40);
  v16 = v6;
  v17 = v8;
  v15 = v5;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v19 = v9;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __85__CPLEngineLibrary_providePayloadForComputeStates_inFolderWithURL_completionHandler___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize:(unint64_t)a3 sizeOfOriginalResourcesToUpload:(unint64_t)a4 numberOfImages:(unint64_t)a5 numberOfVideos:(unint64_t)a6 numberOfOtherItems:(unint64_t)a7
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __161__CPLEngineLibrary_notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke;
  v7[3] = &unk_1E861E728;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a4;
  v7[7] = a5;
  v7[8] = a6;
  v7[9] = a7;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v7];
}

void __161__CPLEngineLibrary_notifyAttachedObjectsSizeOfResourcesToUploadDidChangeToSize_sizeOfOriginalResourcesToUpload_numberOfImages_numberOfVideos_numberOfOtherItems___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[5];
      v6 = a1[6];
      v8 = 138543874;
      v9 = v3;
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying %{public}@ that size of resources to upload did change to %llu (%llu)", &v8, 0x20u);
    }
  }

  [v3 engineLibrary:a1[4] sizeOfResourcesToUploadDidChangeToSize:a1[5] sizeOfOriginalResourcesToUpload:a1[6] numberOfImages:a1[7] numberOfVideos:a1[8] numberOfOtherItems:a1[9]];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsUploadTask:(id)a3 didFinishWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CPLEngineLibrary_notifyAttachedObjectsUploadTask_didFinishWithError___block_invoke;
  v10[3] = &unk_1E861E700;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v10];
}

void __71__CPLEngineLibrary_notifyAttachedObjectsUploadTask_didFinishWithError___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[4];
      v6 = a1[5];
      v8 = 138543874;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying %{public}@ that %@ did finish with error %@", &v8, 0x20u);
    }
  }

  [v3 engineLibrary:a1[6] uploadTask:a1[4] didFinishWithError:a1[5]];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsUploadTask:(id)a3 didProgress:(float)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CPLEngineLibrary_notifyAttachedObjectsUploadTask_didProgress___block_invoke;
  v8[3] = &unk_1E861E6D8;
  v11 = a4;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:0 enumerateAttachedObjects:v8];
}

void __64__CPLEngineLibrary_notifyAttachedObjectsUploadTask_didProgress___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = (*(a1 + 48) * 100.0);
      v9 = 138543874;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Notifying %{public}@ that %@ did progress to %.0f%%", &v9, 0x20u);
    }
  }

  LODWORD(v4) = *(a1 + 48);
  [v3 engineLibrary:*(a1 + 40) uploadTask:*(a1 + 32) didProgress:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsUploadTaskDidStart:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CPLEngineLibrary_notifyAttachedObjectsUploadTaskDidStart___block_invoke;
  v6[3] = &unk_1E861E6B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:0 enumerateAttachedObjects:v6];
}

void __60__CPLEngineLibrary_notifyAttachedObjectsUploadTaskDidStart___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying %{public}@ that %@ did start", &v7, 0x16u);
    }
  }

  [v3 engineLibrary:*(a1 + 40) didStartUploadTask:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__CPLEngineLibrary_notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource___block_invoke;
  v6[3] = &unk_1E861E6B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v6];
}

void __85__CPLEngineLibrary_notifyAttachedObjectsResourceDidFailBackgroundDownloadOfResource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying %@ was downloaded in background to %{public}@", &v7, 0x16u);
    }
  }

  [v3 engineLibrary:*(a1 + 40) didFailBackgroundDownloadOfResource:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsResourceDidDownloadInBackground:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CPLEngineLibrary_notifyAttachedObjectsResourceDidDownloadInBackground___block_invoke;
  v6[3] = &unk_1E861E6B0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v6];
}

void __73__CPLEngineLibrary_notifyAttachedObjectsResourceDidDownloadInBackground___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying %@ was downloaded in background to %{public}@", &v7, 0x16u);
    }
  }

  [v3 engineLibrary:*(a1 + 40) didDownloadResourceInBackground:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__CPLEngineLibrary_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __81__CPLEngineLibrary_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 104) & 1) == 0 && !*(v3 + 144))
  {
    v19 = v1;
    v20 = v2;
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v3 + 16));
    objc_storeStrong((*(a1 + 32) + 144), v5);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __81__CPLEngineLibrary_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged__block_invoke_2;
    v16 = &unk_1E861B290;
    v6 = v5;
    v7 = *(a1 + 32);
    v17 = v6;
    v18 = v7;
    dispatch_source_set_event_handler(v6, &v13);
    v8 = *(*(a1 + 32) + 152);
    if (v8)
    {
      [v8 timeIntervalSinceNow];
      v10 = fabs(v9);
      if (v10 >= 5.0)
      {
        v11 = 0;
      }

      else
      {
        v11 = 1000000000 * (5.0 - v10);
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = dispatch_time(0, v11);
    dispatch_source_set_timer(v6, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v6);
  }
}

void __81__CPLEngineLibrary_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged__block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[18])
  {
    [v2 _notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged];
    v4 = *(a1 + 40);
    v5 = *(v4 + 144);
    *(v4 + 144) = 0;
  }
}

- (void)_notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged
{
  v3 = [MEMORY[0x1E695DF00] now];
  mostRecentScopeStatusCountsDidChangeNotificationDate = self->_mostRecentScopeStatusCountsDidChangeNotificationDate;
  self->_mostRecentScopeStatusCountsDidChangeNotificationDate = v3;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CPLScopeStatusCountsDidChangeNotification", 0, 0, 0);
}

- (void)notifyAttachedObjectsHasStatusChanges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__CPLEngineLibrary_notifyAttachedObjectsHasStatusChanges__block_invoke;
  v2[3] = &unk_1E861E688;
  v2[4] = self;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v2];
}

void __57__CPLEngineLibrary_notifyAttachedObjectsHasStatusChanges__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying status changes to %{public}@", &v6, 0xCu);
    }
  }

  [v3 engineLibraryHasStatusChanges:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)notifyAttachedObjectsPullQueueIsFull
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56__CPLEngineLibrary_notifyAttachedObjectsPullQueueIsFull__block_invoke;
  v2[3] = &unk_1E861E688;
  v2[4] = self;
  [(CPLEngineLibrary *)self _performBlockWithLibrary:1 enumerateAttachedObjects:v2];
}

void __56__CPLEngineLibrary_notifyAttachedObjectsPullQueueIsFull__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "Notifying changes in pull queue to %{public}@", &v6, 0xCu);
    }
  }

  [v3 engineLibraryHasChangesInPullQueue:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestAttachedLibrary
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLEngineLibrary_requestAttachedLibrary__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __42__CPLEngineLibrary_requestAttachedLibrary__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 104) & 1) == 0)
  {
    v3 = [*(v1 + 40) objectEnumerator];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v13 + 1) + 8 * i) isLibraryManagerForEngineLibrary:*(a1 + 32)];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    if ((v6 & 1) == 0)
    {
LABEL_10:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Engine has no attached library. Trying to get one", v12, 2u);
        }
      }

      if (_requestBlock)
      {
        v10 = *(*(a1 + 32) + 224);
        (*(_requestBlock + 16))();
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performBlockOnLibrary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__16777;
  v26[4] = __Block_byref_object_dispose__16778;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke;
  v21[3] = &unk_1E861E660;
  v21[4] = self;
  v24 = v28;
  v25 = v26;
  v6 = v5;
  v22 = v6;
  v7 = v4;
  v23 = v7;
  v8 = MEMORY[0x1E128EBA0](v21);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_2;
  v19[3] = &unk_1E861AA50;
  v19[4] = self;
  v9 = v8;
  v20 = v9;
  [v6 setCancellationHandler:v19];
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_4;
  v15[3] = &unk_1E861EF00;
  v15[4] = self;
  v16 = v9;
  v17 = v28;
  v18 = v26;
  v11 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v31 = v11;
  v12 = queue;
  v13 = v9;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v14);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v6 = *(*(a1 + 56) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 32) _cancelBlockWhenLibraryAttaches:?];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;

      v6 = *(*(a1 + 56) + 8);
    }

    *(v6 + 24) = 1;
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    [*(a1 + 40) setCancellationHandler:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_3;
  v5[3] = &unk_1E861B4E0;
  v6 = *(a1 + 40);
  v2 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v2;
  v3 = v1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v3, v4);
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_4(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2[104] == 1)
  {
    v3 = a1[5];
    v18 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
    (*(v3 + 16))(v3, 0);
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      v5 = [v2 _libraryObject];
      if (v5)
      {
        (*(a1[5] + 16))();
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v26 = _timeToWaitForLibrary;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Engine has no attached library. Trying to get one and will wait %.0fs", buf, 0xCu);
          }
        }

        if (_requestBlock)
        {
          v7 = *(a1[4] + 224);
          (*(_requestBlock + 16))();
        }

        v8 = a1[4];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_79;
        v23[3] = &unk_1E861E7A0;
        v23[4] = v8;
        *v19 = *(a1 + 5);
        v9 = v19[0];
        v24 = *v19;
        v10 = [v8 _performBlockWhenLibraryAttaches:v23];
        v11 = *(a1[7] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v13 = dispatch_time(0, (*&_timeToWaitForLibrary * 1000000000.0));
        v14 = a1[4];
        v15 = *(v14 + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_80;
        block[3] = &unk_1E861E7A0;
        block[4] = v14;
        *v20 = *(a1 + 5);
        v16 = v20[0];
        v22 = *v20;
        dispatch_after(v13, v15, block);
      }
    }

    v17 = *MEMORY[0x1E69E9840];
  }
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_79(void *a1)
{
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v2 = a1[4];
    if (v2[104] == 1)
    {
      v3 = a1[5];
      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Engine is closed"];
      (*(v3 + 16))(v3, 0, v9);
    }

    else
    {
      v4 = [v2 _libraryObject];
      if (v4)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v5 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Successfully requested a library", buf, 2u);
          }
        }

        (*(a1[5] + 16))();
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *v10 = 0;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Failed to acquire a library", v10, 2u);
          }
        }

        v7 = a1[5];
        v8 = +[CPLErrors unknownError];
        (*(v7 + 16))(v7, 0, v8);
      }
    }
  }
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_80(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    if ((*(a1[4] + 104) & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v6 = 134217984;
        v7 = _timeToWaitForLibrary;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Engine still has no attached library after %0.fs", &v6, 0xCu);
      }
    }

    v3 = a1[5];
    v4 = [CPLErrors cplErrorWithCode:83 description:@"Library failed to attach in time"];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __42__CPLEngineLibrary_performBlockOnLibrary___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_cancelBlockWhenLibraryAttaches:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches removeObjectForKey:v5];
}

- (id)_performBlockWhenLibraryAttaches:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = MEMORY[0x1E128EBA0](v5);

  [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches setObject:v7 forKeyedSubscript:v6];

  return v6;
}

- (void)_performPendingBlockForWhenLibraryAttaches
{
  v9 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches count])
  {
    if (self->_closed)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches count];
          *v8 = 134217984;
          *&v8[4] = v4;
          v5 = "Performing %lu pending blocks after engine was closed";
LABEL_9:
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, v5, v8, 0xCu);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches count];
        *v8 = 134217984;
        *&v8[4] = v6;
        v5 = "Performing %lu pending blocks after library attached to the engine";
        goto LABEL_9;
      }

LABEL_10:
    }

    [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches enumerateKeysAndObjectsUsingBlock:&__block_literal_global_72_16914, *v8];
    [(NSMutableDictionary *)self->_blocksToDispatchWhenLibraryAttaches removeAllObjects];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockWithLibrary:(BOOL)a3 enumerateAttachedObjects:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CPLEngineLibrary__performBlockWithLibrary_enumerateAttachedObjects___block_invoke;
  v12[3] = &unk_1E861F2E8;
  v12[4] = self;
  v13 = v6;
  v14 = a3;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void __70__CPLEngineLibrary__performBlockWithLibrary_enumerateAttachedObjects___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 104) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(v1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          (*(*(a1 + 40) + 16))();
          v10 = *(a1 + 48);
          if (v6 & 1 | ((v10 & 1) == 0))
          {
            v6 |= v10;
          }

          else
          {
            v6 = [v9 isLibraryManagerForEngineLibrary:*(a1 + 32)];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 48) == 1 && (v6 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Engine has no attached library. Trying to get one", v14, 2u);
        }
      }

      if (_requestBlock)
      {
        v12 = *(*(a1 + 32) + 224);
        (*(_requestBlock + 16))();
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)markAttachedObjectAsInvalid:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__CPLEngineLibrary_markAttachedObjectAsInvalid___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __48__CPLEngineLibrary_markAttachedObjectAsInvalid___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v3 = *(a1 + 40);
        v6 = 138543618;
        v7 = v3;
        v8 = 2112;
        v9 = v4;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ has become invalid for %@", &v6, 0x16u);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)detachObject:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__CPLEngineLibrary_detachObject_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __55__CPLEngineLibrary_detachObject_withCompletionHandler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 40) containsObject:a1[5]])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = a1[5];
        *buf = 138543362;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "Detaching %{public}@", buf, 0xCu);
      }
    }

    [*(a1[4] + 40) removeObject:a1[5]];
    if ([*(a1[4] + 48) containsObject:a1[5]])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = a1[4];
          v5 = a1[5];
          *buf = 138543618;
          v18 = v5;
          v19 = 2112;
          v20 = v6;
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Invalid %{public}@ detached from %@", buf, 0x16u);
        }
      }

      [*(a1[4] + 48) removeObject:a1[5]];
    }

    if ([*(a1[4] + 40) count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = a1[4];
          v9 = [*(v8 + 40) allObjects];
          *buf = 138543618;
          v18 = v8;
          v19 = 2114;
          v20 = v9;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ is opened with attached: %{public}@", buf, 0x16u);
        }

LABEL_24:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v15 = a1[4];
        *buf = 138543362;
        v18 = v15;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ is opened", buf, 0xCu);
      }

      goto LABEL_24;
    }

    (*(a1[6] + 16))();
    goto LABEL_26;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%{public}@ tried to detach while it was not attached", buf, 0xCu);
    }
  }

  v12 = a1[5];
  v13 = a1[6];
  v14 = [CPLErrors incorrectMachineStateErrorWithReason:@"%@ is not attached to %@", v12, a1[4]];
  (*(v13 + 16))(v13, v14);

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)attachObject:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) containsObject:*(a1 + 40)])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(a1 + 40);
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "%{public}@ tried to attach twice", buf, 0xCu);
      }
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [CPLErrors incorrectMachineStateErrorWithReason:@"%@ is already attached to %@", v4, *(a1 + 32)];
    (*(v5 + 16))(v5, v6);
  }

  else if ([*(*(a1 + 32) + 48) containsObject:*(a1 + 40)])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%{public}@ tried to attach to %@ but it has been marked as invalid", buf, 0x16u);
      }
    }

    v10 = *(a1 + 48);
    v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"%@ has been marked as invalid", *(a1 + 40)];
    (*(v10 + 16))(v10, v11);

    [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  }

  else if (*(*(a1 + 32) + 80))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 40);
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "Can't attach %{public}@", buf, 0xCu);
      }

      v14 = *(*(a1 + 32) + 80);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = [*(a1 + 40) isLibraryManagerForEngineLibrary:?];
    if (v15)
    {
      v16 = [*(a1 + 32) _libraryObject];
      if (v16)
      {
        v17 = v16;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v18 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 40);
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "%@ tried to attach to engine while there is already %@ attached to it", buf, 0x16u);
          }
        }

        v20 = [CPLErrors incorrectParametersErrorForParameter:@"library"];

        if (v20)
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_39;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v21 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 40);
          *buf = 138412290;
          *&buf[4] = v22;
          _os_log_impl(&dword_1DC05A000, v21, OS_LOG_TYPE_DEFAULT, "Attaching client %@ to engine", buf, 0xCu);
        }
      }
    }

    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(a1 + 32);
        v25 = [*(v24 + 40) allObjects];
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        _os_log_impl(&dword_1DC05A000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ is opened with attached: %{public}@.", buf, 0x16u);
      }
    }

    if (v15 && [*(*(a1 + 32) + 32) count])
    {
      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke_66;
      v38[3] = &unk_1E861A940;
      v38[4] = v26;
      v28 = v38;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __cpl_dispatch_async_block_invoke_16734;
      v40 = &unk_1E861B4E0;
      v41 = v28;
      v29 = v27;
      v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v29, v30);
    }

    dispatch_suspend(*(*(a1 + 32) + 16));
    v32 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = *(v32 + 256);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke_2;
    v36[3] = &unk_1E86205B8;
    v36[4] = v32;
    v37 = v31;
    v34 = [v33 performReadTransactionWithBlock:v36];
  }

LABEL_39:
  v35 = *MEMORY[0x1E69E9840];
}

void __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke_3;
  v5[3] = &unk_1E8620940;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 do:v5];
  dispatch_resume(*(*(a1 + 32) + 16));
}

uint64_t __55__CPLEngineLibrary_attachObject_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 256) downloadQueue];
  v3 = [v2 enumeratorForDownloadedResources];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) engineLibrary:*(a1 + 32) didDownloadResourceInBackground:{*(*(&v22 + 1) + 8 * i), v22}];
      }

      v7 += v6;
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      *buf = 134218242;
      v27 = v7;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "%lu resources were downloaded since last attachment of %{public}@", buf, 0x16u);
    }
  }

  v12 = [*(*(a1 + 32) + 256) pullQueue];
  v13 = [v12 countOfQueuedBatches];

  if (v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 40);
        *buf = 134218242;
        v27 = v13;
        v28 = 2114;
        v29 = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "%lu batches have been accumulated in the pull queue since the last attachment of %{public}@", buf, 0x16u);
      }
    }

    [*(a1 + 40) engineLibraryHasChangesInPullQueue:*(a1 + 32)];
  }

  v16 = [*(*(a1 + 32) + 256) statusCenter];
  v17 = [v16 hasStatusChanges];

  if (v17)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 40);
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEBUG, "Status changes have been accumulated since the last attachment of %{public}@", buf, 0xCu);
      }
    }

    [*(a1 + 40) engineLibraryHasStatusChanges:*(a1 + 32)];
  }

  [*(a1 + 32) _notifyAttachedObjectsThatPushRepositoryFlagsCountsHaveChanged];

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)_libraryObject
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_attachedObjects;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (!-[NSHashTable containsObject:](self->_invalidAttachedObjects, "containsObject:", v8, v12) && ([v8 isLibraryManagerForEngineLibrary:self] & 1) != 0)
        {
          v9 = v8;
          goto LABEL_12;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLEngineLibrary *)self libraryIdentifier];
  v6 = [(CPLEngineLibrary *)self clientLibraryBaseURL];
  v7 = [v6 path];
  v8 = [v7 lastPathComponent];
  v9 = [v3 stringWithFormat:@"<%@ %@ at %@>", v4, v5, v8];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CPLEngineLibrary *)self libraryIdentifier];
  v6 = [(CPLEngineLibrary *)self clientLibraryBaseURL];
  v7 = [v6 path];
  v8 = [v7 stringByAbbreviatingWithTildeInPath];
  v9 = [v3 stringWithFormat:@"<%@ %@ at %@>", v4, v5, v8];

  return v9;
}

- (void)clientIsPushingChanges
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CPLEngineLibrary_clientIsPushingChanges__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

uint64_t __42__CPLEngineLibrary_clientIsPushingChanges__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startSyncSession
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CPLEngineLibrary_startSyncSession__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __36__CPLEngineLibrary_startSyncSession__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 32) + 80);
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Ignoring request for a sync session as the library failed to open (error: %@)", buf, 0xCu);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Forcing a sync session with all scopes", buf, 2u);
      }

      v2 = *(a1 + 32);
    }

    v6 = *(v2 + 256);
    v9[4] = v2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__CPLEngineLibrary_startSyncSession__block_invoke_51;
    v10[3] = &unk_1E86205E0;
    v10[4] = v2;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__CPLEngineLibrary_startSyncSession__block_invoke_52;
    v9[3] = &unk_1E86205E0;
    v7 = [v6 performWriteTransactionWithBlock:v10 completionHandler:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __36__CPLEngineLibrary_startSyncSession__block_invoke_51(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 256);
  v3 = a2;
  v4 = [v2 scopes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CPLEngineLibrary_startSyncSession__block_invoke_2;
  v6[3] = &unk_1E8620478;
  v7 = v4;
  v5 = v4;
  [v3 do:v6];
}

void __36__CPLEngineLibrary_startSyncSession__block_invoke_52(uint64_t a1, void *a2)
{
  v3 = [a2 error];

  if (!v3)
  {
    v4 = [*(a1 + 32) scheduler];
    [v4 noteServerHasChanges];

    v5 = [*(a1 + 32) scheduler];
    [v5 kickOffSyncSession];
  }
}

uint64_t __36__CPLEngineLibrary_startSyncSession__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(a1 + 32) enumeratorForScopesIncludeInactive:{0, 0}];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (([*(a1 + 32) setScopeHasChangesToPullFromTransport:v9 error:a2] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v11 = __CPLLibraryOSLogDomain();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = [v9 scopeIdentifier];
              *buf = 138412290;
              v20 = v12;
              _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Failed to force %@ to pull changes from transport", buf, 0xCu);
            }
          }

          v10 = 0;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)hasAssetCountOnServer
{
  v2 = [(CPLStatus *)self->_status cloudAssetCountPerType];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)totalAssetCountOnServer
{
  if (!self->_totalAssetCountHasBeenCalculated)
  {
    v3 = [(CPLStatus *)self->_status cloudAssetCountPerType];
    [(CPLEngineLibrary *)self _updateTotalAssetCountWithAssetCounts:v3];
  }

  return self->_totalAssetCount;
}

- (void)updateAssetCountsFromServer:(id)a3
{
  status = self->_status;
  v5 = a3;
  [(CPLStatus *)status setCloudAssetCountPerType:v5 updateCheckDate:1];
  [(CPLEngineLibrary *)self _updateTotalAssetCountWithAssetCounts:v5];
}

- (void)_updateTotalAssetCountWithAssetCounts:(id)a3
{
  v4 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CPLEngineLibrary__updateTotalAssetCountWithAssetCounts___block_invoke;
  v5[3] = &unk_1E861E618;
  v5[4] = &v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  self->_totalAssetCount = v7[3];
  self->_totalAssetCountHasBeenCalculated = 1;
  _Block_object_dispose(&v6, 8);
}

uint64_t __58__CPLEngineLibrary__updateTotalAssetCountWithAssetCounts___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)setAccountEPPCapability:(int64_t)a3
{
  [(CPLStatus *)self->_status setAccountEPPCapability:a3];
  if ([(CPLEngineLibrary *)self isSystemLibrary])
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CPLEngineLibrary_setAccountEPPCapability___block_invoke;
    v8[3] = &unk_1E861A940;
    v8[4] = self;
    v5 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_16734;
    block[3] = &unk_1E861B4E0;
    v10 = v5;
    v6 = queue;
    v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v6, v7);
  }
}

void __44__CPLEngineLibrary_setAccountEPPCapability___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) fingerprintContext];
  [v2 updateWithStatus:*(*(a1 + 32) + 88) configuration:*(*(a1 + 32) + 304)];
}

- (void)updateComputeSyncMetrics:(int64_t)a3 silentDecryptionFailed:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3 == 1)
  {
    v15 = v8;
    metrics = self->_metrics;
    p_metrics = &self->_metrics;
    [(CPLMetrics *)metrics incrementCountForKey:@"DownloadCount"];
    v8 = v15;
    if (v15)
    {
      [(CPLMetrics *)*p_metrics incrementCountForKey:@"DownloadFailureCount"];
      if (([v15 isCPLEncryptionError] & 1) == 0)
      {
        v13 = [v15 isCPLThrottlingError];
        v11 = &PLCoreAnalyticsLibrarySummaryiCPLComputeSyncDownloadCKErrorCountKey;
        v14 = PLCoreAnalyticsLibrarySummaryiCPLComputeSyncDownloadThrottledErrorCountKey;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_16;
      }

      [(CPLMetrics *)*p_metrics incrementCountForKey:@"DownloadFailureCount"];
    }

    v11 = PLCoreAnalyticsLibrarySummaryiCPLComputeSyncDownloadDecryptionErrorCountKey;
    goto LABEL_15;
  }

  if (!a3)
  {
    v15 = v8;
    v10 = self->_metrics;
    p_metrics = &self->_metrics;
    [(CPLMetrics *)v10 incrementCountForKey:@"UploadCount"];
    v8 = v15;
    if (v15)
    {
      [(CPLMetrics *)*p_metrics incrementCountForKey:@"UploadFailureCount"];
      if ([v15 isCPLEncryptionError])
      {
        v11 = PLCoreAnalyticsLibrarySummaryiCPLComputeSyncUploadEncryptionErrorCountKey;
LABEL_15:
        [(CPLMetrics *)*p_metrics incrementCountForKey:*v11];
        v8 = v15;
        goto LABEL_16;
      }

      v13 = [v15 isCPLThrottlingError];
      v11 = PLCoreAnalyticsLibrarySummaryiCPLComputeSyncUploadCKErrorCountKey;
      v14 = PLCoreAnalyticsLibrarySummaryiCPLComputeSyncUploadThrottledErrorCountKey;
LABEL_13:
      if (v13)
      {
        v11 = v14;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)updateBlockedMetrics:(BOOL)a3 syncRequested:(BOOL)a4 runtimeCharacteristics:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CPLEngineLibrary_updateBlockedMetrics_syncRequested_runtimeCharacteristics___block_invoke;
  v14[3] = &unk_1E861E5A0;
  v16 = a4;
  v17 = a3;
  v14[4] = self;
  v15 = v8;
  v10 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v19 = v10;
  v11 = queue;
  v12 = v8;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v13);
}

uint64_t __78__CPLEngineLibrary_updateBlockedMetrics_syncRequested_runtimeCharacteristics___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = a1 + 32;
    v3 = PLCoreAnalyticsLibrarySummaryiCPLSyncSessionTotalSessionsCountKey;
    goto LABEL_45;
  }

  v2 = a1 + 32;
  v4 = *(a1 + 49);
  v5 = *(*(a1 + 32) + 88);
  if (v4)
  {
    v6 = [v5 blockedReason];
    v7 = [*(*v2 + 88) hasBatteryBudget];
    if ((v7 & 1) == 0)
    {
      [*(*v2 + 96) incrementCountForKey:@"BatteryBlockedCount"];
    }

    if ((v6 & 4) != 0)
    {
      [*(*v2 + 96) incrementCountForKey:@"SignificantTransferBlockedCount"];
      v8 = 1;
    }

    else
    {
      v8 = v7 ^ 1;
    }

    if ([*(*v2 + 88) hasLowBatteryLevel])
    {
      [*(*v2 + 96) incrementCountForKey:@"LowBatteryLevelBlockedCount"];
      v8 = 1;
    }

    if (([*(*v2 + 88) hasCellularBudget] & 1) == 0)
    {
      [*(*v2 + 96) incrementCountForKey:@"CellularBlockedCount"];
      v8 = 1;
    }

    if ([*(*v2 + 88) isBlockedByLowPowerMode])
    {
      [*(*v2 + 96) incrementCountForKey:@"LowPowerModeBlockedCount"];
      v8 = 1;
    }

    if ([*(*v2 + 88) isConstrainedNetwork])
    {
      [*(*v2 + 96) incrementCountForKey:@"LowDataModeBlockedCount"];
      v8 = 1;
      if ((v6 & 0x40) == 0)
      {
LABEL_23:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if ((v6 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    [*(*v2 + 96) incrementCountForKey:@"CPUUsageBlockedCount"];
    v8 = 1;
    if ((v6 & 0x80) == 0)
    {
LABEL_25:
      if ([*(*v2 + 88) hasPoorNetworkQuality])
      {
        [*(*v2 + 96) incrementCountForKey:@"PoorNetworkQualityBlockedCount"];
        v8 = 1;
      }

      if ((v6 & 0x400) != 0)
      {
        [*(*v2 + 96) incrementCountForKey:@"ThunderingHerdBlockedCount"];
        v8 = 1;
      }

      if ([*(*v2 + 88) hasModerateThermalPressure])
      {
        [*(*v2 + 96) incrementCountForKey:@"ModerateThermalPressureBlockedCount"];
        v8 = 1;
      }

      if ([*(*v2 + 88) hasThermalPressure])
      {
        [*(*v2 + 96) incrementCountForKey:@"ThermalPressureBlockedCount"];
        v8 = 1;
        if ((v6 & 0x4000) == 0)
        {
LABEL_33:
          if ((v6 & 0x8000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_53;
        }
      }

      else if ((v6 & 0x4000) == 0)
      {
        goto LABEL_33;
      }

      [*(*v2 + 96) incrementCountForKey:@"GroupSchedulingBlockedCount"];
      v8 = 1;
      if ((v6 & 0x8000) == 0)
      {
LABEL_34:
        if ((v6 & 0x10000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_54;
      }

LABEL_53:
      [*(*v2 + 96) incrementCountForKey:@"DeviceActivityBlockedCount"];
      v8 = 1;
      if ((v6 & 0x10000) == 0)
      {
LABEL_35:
        if ((v6 & 0x20000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_55;
      }

LABEL_54:
      [*(*v2 + 96) incrementCountForKey:@"DeviceActivityEarlyThermalWarningBlockedCount"];
      v8 = 1;
      if ((v6 & 0x20000) == 0)
      {
LABEL_36:
        if ((v6 & 0x400000) == 0)
        {
LABEL_38:
          if ((v6 & 0x3BC2200) != 0)
          {
            [*(*v2 + 96) incrementCountForKey:@"PoorSystemConditionsBlockedCount"];
            v8 = 1;
          }

          if ([*(*v2 + 264) isClientInForeground])
          {
            [*(*v2 + 96) incrementCountForKey:@"UIVisibleBlockedCount"];
          }

          if ((v8 & 1) == 0)
          {
            [*(*v2 + 96) incrementCountForKey:@"UnknownReasonBlockedCount"];
          }

          v3 = &PLCoreAnalyticsLibrarySummaryiCPLSyncSessionBlockedSessionsCountKey;
          goto LABEL_45;
        }

LABEL_37:
        [*(*v2 + 96) incrementCountForKey:@"ActivityMotionStateBlockedCount"];
        v8 = 1;
        goto LABEL_38;
      }

LABEL_55:
      [*(*v2 + 96) incrementCountForKey:@"ConsoleModeBlockedCount"];
      v8 = 1;
      if ((v6 & 0x400000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_24:
    [*(*v2 + 96) incrementCountForKey:@"MemoryPressureBlockedCount"];
    v8 = 1;
    goto LABEL_25;
  }

  result = [v5 unBlockedReason];
  switch(result)
  {
    case 4:
      v3 = PLCoreAnalyticsLibrarySummaryiCPLSyncSessionRemoteDeviceIntentUnBlockedCountKey;
      break;
    case 2:
      v3 = PLCoreAnalyticsLibrarySummaryiCPLSyncSessionOverrideUnBlockedCountKey;
      break;
    case 1:
      v10 = *(a1 + 40);
      if (v10 && ([v10 syncSessionRequestedImmediateRuntime] & 1) != 0)
      {
        v3 = PLCoreAnalyticsLibrarySummaryiCPLSyncSessionDASDoItNowUnBlockedCountKey;
      }

      else
      {
        v3 = PLCoreAnalyticsLibrarySummaryiCPLSyncSessionDASUnBlockedCountKey;
      }

      break;
    default:
      return result;
  }

LABEL_45:
  v11 = *(*v2 + 96);
  v12 = *v3;

  return [v11 incrementCountForKey:v12];
}

void __56__CPLEngineLibrary_setICloudLibraryClientVersionTooOld___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CPLEngineLibrary_setICloudLibraryClientVersionTooOld___block_invoke_2;
  v3[3] = &unk_1E8620478;
  v4 = *(a1 + 32);
  [a2 do:v3];
}

- (void)setContainerHasBeenWiped:(BOOL)a3
{
  v3 = a3;
  [(CPLStatus *)self->_status setContainerHasBeenWiped:?];
  if (v3)
  {
    scheduler = self->_scheduler;

    [(CPLEngineScheduler *)scheduler noteContainerHasBeenWiped];
  }
}

- (void)_requestUpdateOfMainScopeFromTransport
{
  store = self->_store;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CPLEngineLibrary__requestUpdateOfMainScopeFromTransport__block_invoke;
  v4[3] = &unk_1E86205E0;
  v4[4] = self;
  v3 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v4 completionHandler:&__block_literal_global_16956];
}

uint64_t __58__CPLEngineLibrary__requestUpdateOfMainScopeFromTransport__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__CPLEngineLibrary__requestUpdateOfMainScopeFromTransport__block_invoke_2;
  v3[3] = &unk_1E8620478;
  v3[4] = *(a1 + 32);
  return [a2 do:v3];
}

uint64_t __58__CPLEngineLibrary__requestUpdateOfMainScopeFromTransport__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 256) scopes];
  v4 = [v3 primaryScope];
  if (v4 && ([v3 valueForFlag:16 forScope:v4] & 1) == 0)
  {
    if (![v3 setScopeNeedsUpdateFromTransport:v4 error:a2])
    {
      v6 = 0;
      goto LABEL_9;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Requesting update of %@ for Account EPP capability", &v9, 0xCu);
      }
    }
  }

  v6 = 1;
LABEL_9:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setExitDeleteTime:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CPLStatus *)self->_status exitDeleteTime];
  v6 = v5;
  if (v4 || !v5)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    if (!v5)
    {
      goto LABEL_17;
    }

    [v4 timeIntervalSinceDate:v5];
    if (v17 < 0.0)
    {
      v17 = -v17;
    }

    if (v17 <= 1.0)
    {
      if (_CPLSilentLogging)
      {
        goto LABEL_29;
      }

      v18 = __CPLLibraryOSLogDomain();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:

LABEL_29:
        v11 = [(NSURL *)self->_clientLibraryBaseURL URLByAppendingPathComponent:@"initialsync_marker"];
        v20 = [MEMORY[0x1E696AC08] defaultManager];
        v25 = 0;
        v21 = [v20 removeItemAtURL:v11 error:&v25];
        v12 = v25;
        if ((v21 & 1) == 0 && ([v20 cplIsFileDoesNotExistError:v12] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
        {
          v22 = __CPLLibraryOSLogDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v11 path];
            *buf = 138543618;
            v28 = v23;
            v29 = 2112;
            v30 = v12;
            _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Fail to remove %{public}@, error: %@", buf, 0x16u);
          }
        }

        goto LABEL_36;
      }

      *buf = 138543618;
      v28 = v4;
      v29 = 2114;
      v30 = @"initialsync_marker";
      v19 = "Updating exit mode (%{public}@), removing %{public}@ if present";
    }

    else
    {
LABEL_17:
      if (_CPLSilentLogging)
      {
        goto LABEL_29;
      }

      v18 = __CPLLibraryOSLogDomain();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 138543618;
      v28 = v4;
      v29 = 2114;
      v30 = @"initialsync_marker";
      v19 = "Starting exit mode (%{public}@), removing %{public}@ if present";
    }

    _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
    goto LABEL_28;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Engine is no longer in exit mode, resetting to normal operations", buf, 2u);
    }
  }

  v8 = [(CPLStatus *)self->_status initialSyncDate];

  if (v8)
  {
    status = self->_status;
    v26 = 0;
    v10 = [(CPLStatus *)status writeInitialSyncMarker:&v26];
    v11 = v26;
    if (v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = "Rewriting initial sync marker";
          v14 = v12;
          v15 = OS_LOG_TYPE_DEFAULT;
          v16 = 2;
LABEL_23:
          _os_log_impl(&dword_1DC05A000, v14, v15, v13, buf, v16);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v11;
        v13 = "Fail to write initial sync marker, error: %@";
        v14 = v12;
        v15 = OS_LOG_TYPE_ERROR;
        v16 = 12;
        goto LABEL_23;
      }

LABEL_36:
    }
  }

LABEL_38:
  [(CPLStatus *)self->_status setExitDeleteTime:v4];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)updateInitialSyncDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CPLStatus *)self->_status initialSyncDate];

    if (!v5)
    {
      queue = self->_queue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__CPLEngineLibrary_updateInitialSyncDate___block_invoke;
      v10[3] = &unk_1E861A940;
      v10[4] = self;
      v7 = v10;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cpl_dispatch_async_block_invoke_16734;
      block[3] = &unk_1E861B4E0;
      v12 = v7;
      v8 = queue;
      v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v8, v9);
    }
  }

  [(CPLStatus *)self->_status setInitialSyncDate:v4];
}

void __42__CPLEngineLibrary_updateInitialSyncDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained engineLibraryDidCompleteInitialSyncOfMainScope:*(a1 + 32)];
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Closing %{public}@", &buf, 0xCu);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ is closing", &buf, 0xCu);
      }
    }
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__CPLEngineLibrary_closeAndDeactivate_completionHandler___block_invoke;
  v15[3] = &unk_1E861F2E8;
  v17 = a3;
  v15[4] = self;
  v16 = v6;
  v10 = v15;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke_16734;
  v20 = &unk_1E861B4E0;
  v21 = v10;
  v11 = queue;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v11, v13);

  v14 = *MEMORY[0x1E69E9840];
}

void __57__CPLEngineLibrary_closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  [*(*(a1 + 32) + 248) engineWillClose:?];
  *(*(a1 + 32) + 104) = 1;
  v2 = *(a1 + 32);
  if (v2[18])
  {
    dispatch_source_cancel(v2[18]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 144);
    *(v3 + 144) = 0;

    v2 = *(a1 + 32);
  }

  [(dispatch_source_t *)v2 _performPendingBlockForWhenLibraryAttaches];
  if (*(a1 + 48) == 1 && [*(a1 + 32) isSystemLibrary])
  {
    v5 = [*(*(a1 + 32) + 280) fingerprintContext];
    [v5 updateWithAccountEPPCapability:2 source:@"deactivated-engine"];
  }

  v6 = [*(*(a1 + 32) + 8) reverseObjectEnumerator];
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v12 = v6;
  [*(a1 + 32) _closeNextComponent:? deactivate:? lastError:? completionHandler:?];
  if (*(*(a1 + 32) + 160))
  {
    v9 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v9 removeObserver:*(*(a1 + 32) + 160) name:@"CPLMetricsDidChangeNotification" object:0];

    v10 = *(a1 + 32);
    v11 = *(v10 + 160);
    *(v10 + 160) = 0;
  }
}

- (NSString)currentClosingComponentName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16777;
  v10 = __Block_byref_object_dispose__16778;
  v11 = 0;
  closingQueue = self->_closingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__CPLEngineLibrary_currentClosingComponentName__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(closingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setCurrentClosingComponentName:(id)a3
{
  v4 = a3;
  closingQueue = self->_closingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CPLEngineLibrary__setCurrentClosingComponentName___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(closingQueue, v7);
}

- (void)_closeNextComponent:(id)a3 deactivate:(BOOL)a4 lastError:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 nextObject];
  if (v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEBUG, "Closing %{public}@", buf, 0xCu);
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v8)
          {
            v16 = "Deactivating";
          }

          else
          {
            v16 = "Closing";
          }

          v17 = [v13 componentName];
          *buf = 136315394;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }
    }

    v18 = [v13 componentName];
    [(CPLEngineLibrary *)self _setCurrentClosingComponentName:v18];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__16777;
    v30 = __Block_byref_object_dispose__16778;
    v31 = v11;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__CPLEngineLibrary__closeNextComponent_deactivate_lastError_completionHandler___block_invoke;
    v21[3] = &unk_1E861E4A8;
    v27 = v8;
    v26 = buf;
    v22 = v13;
    v23 = self;
    v24 = v10;
    v25 = v12;
    [CPLCallObserver observeAsyncCallOn:v22 selector:sel_closeAndDeactivate_completionHandler_ block:v21];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_1DC05A000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ is closed", buf, 0xCu);
      }
    }

    [(CPLStatus *)self->_status setDelegate:0];
    (*(v12 + 2))(v12, v11);
    dispatch_resume(self->_queue);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __79__CPLEngineLibrary__closeNextComponent_deactivate_lastError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CPLEngineLibrary__closeNextComponent_deactivate_lastError_completionHandler___block_invoke_2;
  v13[3] = &unk_1E861E480;
  v14 = v3;
  v6 = v4;
  v17 = *(a1 + 64);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 40);
  v12 = v7;
  v8 = *(a1 + 48);
  v18 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v15 = v12;
  v16 = v10;
  v11 = v3;
  [v6 closeAndDeactivate:v5 completionHandler:v13];
}

void __79__CPLEngineLibrary__closeNextComponent_deactivate_lastError_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) callDidFinish];
  v4 = _CPLSilentLogging;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Closing %{public}@ completed", &v14, 0xCu);
    }

    v4 = _CPLSilentLogging;
  }

  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v7 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to close with error: %@", &v14, 0x16u);
      }
    }

    v9 = *(*(a1 + 72) + 8);
    if (!*(v9 + 40))
    {
      v10 = v3;
      v11 = *(v9 + 40);
      *(v9 + 40) = v10;
LABEL_15:
    }
  }

  else if ((v4 & 1) == 0)
  {
    v11 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is closed", &v14, 0xCu);
    }

    goto LABEL_15;
  }

  [*(a1 + 48) _closeNextComponent:*(a1 + 56) deactivate:*(a1 + 80) lastError:*(*(*(a1 + 72) + 8) + 40) completionHandler:*(a1 + 64)];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)openWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Opening %{public}@", &buf, 0xCu);
    }
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E861AA50;
  v12[4] = self;
  v13 = v4;
  v7 = v12;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v15 = __cpl_dispatch_async_block_invoke_16734;
  v16 = &unk_1E861B4E0;
  v17 = v7;
  v8 = queue;
  v9 = v4;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v8, v10);

  v11 = *MEMORY[0x1E69E9840];
}

void __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 16));
  v2 = [*(*(a1 + 32) + 8) objectEnumerator];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E861B618;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _openNextComponent:v2 completionHandler:v4];
}

void __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_15;
    }

    v4 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Opening %{public}@ failed: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  [*(*(a1 + 32) + 88) checkInitialSyncMarker];
  [*(*(a1 + 32) + 248) engineDidOpen:?];
  v6 = [MEMORY[0x1E696ABB0] defaultCenter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke_3;
  v14[3] = &unk_1E861E458;
  v14[4] = *(a1 + 32);
  v7 = [v6 addObserverForName:@"CPLMetricsDidChangeNotification" object:0 queue:0 usingBlock:v14];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLLibraryOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Opening %{public}@ succeeded", buf, 0xCu);
    }
  }

  if ([*(a1 + 32) isSystemLibrary])
  {
    if ([*(*(a1 + 32) + 88) accountEPPCapability] <= 1 && objc_msgSend(*(*(a1 + 32) + 256), "storeVersionHasChanged"))
    {
      [*(a1 + 32) _requestUpdateOfMainScopeFromTransport];
    }

    v4 = [*(*(a1 + 32) + 280) fingerprintContext];
    [v4 updateWithStatus:*(*(a1 + 32) + 88) configuration:*(*(a1 + 32) + 304)];
LABEL_14:
  }

LABEL_15:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v3);
  }

  dispatch_resume(*(*(a1 + 32) + 16));

  v13 = *MEMORY[0x1E69E9840];
}

void __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CPLEngineLibrary_openWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_1E861A940;
  v6[4] = v1;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = v2;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)_openNextComponent:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 nextObject];
  if (v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v17 = v8;
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Opening %{public}@ for %@", buf, 0x16u);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__CPLEngineLibrary__openNextComponent_completionHandler___block_invoke;
    v11[3] = &unk_1E861E428;
    v12 = v8;
    v13 = self;
    v15 = v7;
    v14 = v6;
    [CPLCallObserver observeAsyncCallOn:v12 selector:sel_openWithCompletionHandler_ block:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __57__CPLEngineLibrary__openNextComponent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CPLEngineLibrary__openNextComponent_completionHandler___block_invoke_2;
  v11[3] = &unk_1E861E400;
  v12 = v3;
  v5 = v4;
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v10 = v6;
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  [v5 openWithCompletionHandler:v11];
}

void __57__CPLEngineLibrary__openNextComponent_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [*(a1 + 32) callDidFinish];
  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v12 = 138543874;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "%{public}@ for %@ failed to open: %@", &v12, 0x20u);
      }
    }

    objc_storeStrong((*(a1 + 48) + 80), a2);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Opened %{public}@ for %@", &v12, 0x16u);
      }
    }

    [*(a1 + 48) _openNextComponent:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportQuarantineCountIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
}

id __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3[14])
  {

    return [v3 _reportQuarantineCountIfNecessaryWithLastReportDate:?];
  }

  else
  {
    v6[5] = v1;
    v6[6] = v2;
    v5 = v3[32];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke_2;
    v6[3] = &unk_1E86205E0;
    v6[4] = v3;
    return [v5 performReadTransactionWithBlock:v6];
  }
}

void __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) lastQuarantineCountReportDate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke_3;
  v9[3] = &unk_1E861B290;
  v9[4] = v3;
  v10 = v2;
  v5 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v12 = v5;
  v6 = v4;
  v7 = v2;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

uint64_t __52__CPLEngineLibrary_reportQuarantineCountIfNecessary__block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[14];

  return [v2 _reportQuarantineCountIfNecessaryWithLastReportDate:v3];
}

- (void)_reportQuarantineCountIfNecessaryWithLastReportDate:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  if (v8 > 86400.0 || v8 < 0.0)
  {
    store = self->_store;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke;
    v13[3] = &unk_1E86205B8;
    v13[4] = self;
    v14 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke_3;
    v11[3] = &unk_1E86205B8;
    v11[4] = self;
    v12 = v14;
    v10 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v13 completionHandler:v11];
  }
}

void __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke_2;
  v4[3] = &unk_1E8620940;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 do:v4];
}

void __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CPLEngineLibrary__reportQuarantineCountIfNecessaryWithLastReportDate___block_invoke_4;
  v7[3] = &unk_1E861B290;
  v7[4] = v2;
  v8 = v1;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (CPLEngineLibrary)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8
{
  v93 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v79.receiver = self;
  v79.super_class = CPLEngineLibrary;
  v20 = [(CPLEngineLibrary *)&v79 init];
  if (v20)
  {
    v21 = CPLCopyDefaultSerialQueueAttributes();
    v22 = dispatch_queue_create("com.apple.cpl.enginelibrary", v21);
    queue = v20->_queue;
    v20->_queue = v22;

    v24 = CPLCopyDefaultSerialQueueAttributes();
    v25 = dispatch_queue_create("com.apple.cpl.enginelibrary.closing", v24);
    closingQueue = v20->_closingQueue;
    v20->_closingQueue = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    blocksToDispatchWhenLibraryAttaches = v20->_blocksToDispatchWhenLibraryAttaches;
    v20->_blocksToDispatchWhenLibraryAttaches = v27;

    v29 = [v15 copy];
    clientLibraryBaseURL = v20->_clientLibraryBaseURL;
    v20->_clientLibraryBaseURL = v29;

    v31 = [v16 copy];
    cloudLibraryStateStorageURL = v20->_cloudLibraryStateStorageURL;
    v20->_cloudLibraryStateStorageURL = v31;

    v33 = [v17 copy];
    cloudLibraryResourceStorageURL = v20->_cloudLibraryResourceStorageURL;
    v20->_cloudLibraryResourceStorageURL = v33;

    v35 = [v18 copy];
    libraryIdentifier = v20->_libraryIdentifier;
    v20->_libraryIdentifier = v35;

    objc_storeStrong(&v20->_mainScopeIdentifier, a7);
    v20->_isSystemLibrary = [v18 isEqualToString:@"SystemLibrary"];
    v20->_isAppLibrary = [v18 hasPrefix:CPLAppLibraryIdentifierPrefix];
    v20->_libraryOptions = a8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v37 = __CPLLibraryOSLogDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v86 = v20;
        v87 = 2112;
        v88 = v15;
        v89 = 2112;
        v90 = v16;
        v91 = 2112;
        v92 = v17;
        _os_log_impl(&dword_1DC05A000, v37, OS_LOG_TYPE_DEBUG, "Creating %@ in %@ (storage: %@/resources: %@)", buf, 0x2Au);
      }
    }

    v38 = [[CPLStatus alloc] initWithClientLibraryBaseURLForCPLEngine:v20->_clientLibraryBaseURL];
    status = v20->_status;
    v20->_status = v38;

    [(CPLStatus *)v20->_status setDelegate:v20];
    v40 = [[CPLMetrics alloc] initWithClientLibraryBaseURLForCPLEngine:v20->_clientLibraryBaseURL];
    metrics = v20->_metrics;
    v20->_metrics = v40;

    v42 = [[CPLEngineStore alloc] initWithEngineLibrary:v20];
    store = v20->_store;
    v20->_store = v42;

    v44 = [[CPLEngineSyncManager alloc] initWithEngineLibrary:v20];
    syncManager = v20->_syncManager;
    v20->_syncManager = v44;

    v46 = [[CPLEngineTransport alloc] initWithEngineLibrary:v20];
    transport = v20->_transport;
    v20->_transport = v46;

    v48 = [[CPLEngineScheduler alloc] initWithEngineLibrary:v20];
    scheduler = v20->_scheduler;
    v20->_scheduler = v48;

    v50 = [[CPLEngineSystemMonitor alloc] initWithEngineLibrary:v20];
    systemMonitor = v20->_systemMonitor;
    v20->_systemMonitor = v50;

    v52 = [[CPLEngineFeedbackManager alloc] initWithEngineLibrary:v20];
    feedback = v20->_feedback;
    v20->_feedback = v52;

    v54 = [[CPLConfiguration alloc] initWithClientLibraryBaseURL:v20->_clientLibraryBaseURL];
    configuration = v20->_configuration;
    v20->_configuration = v54;

    [(CPLConfiguration *)v20->_configuration setConfigurationDictionaryUniquifier:&__block_literal_global_34_10047];
    v56 = +[CPLPlatform currentPlatform];
    v57 = [v56 newPlatformImplementationForObject:v20];
    platformObject = v20->_platformObject;
    v20->_platformObject = v57;

    if (!v20->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v74 = __CPLLibraryOSLogDomain();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v75 = objc_opt_class();
          *buf = 138412290;
          v86 = v75;
          v76 = v75;
          _os_log_impl(&dword_1DC05A000, v74, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v77 = [MEMORY[0x1E696AAA8] currentHandler];
      v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineLibrary.m"];
      [v77 handleFailureInMethod:a2 object:v20 file:v78 lineNumber:230 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }

    v59 = [(CPLEngineLibrary *)v20 platformObject];
    v60 = v20->_store;
    v61 = v20->_scheduler;
    v80[0] = v59;
    v80[1] = v60;
    v81 = *&v20->_syncManager;
    v62 = v20->_systemMonitor;
    v63 = v20->_feedback;
    v82 = v61;
    v83 = v62;
    v84 = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:7];
    components = v20->_components;
    v20->_components = v64;

    v66 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    attachedObjects = v20->_attachedObjects;
    v20->_attachedObjects = v66;

    v68 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    invalidAttachedObjects = v20->_invalidAttachedObjects;
    v20->_invalidAttachedObjects = v68;

    v70 = objc_alloc_init(MEMORY[0x1E696AB50]);
    holdTestAssertions = v20->_holdTestAssertions;
    v20->_holdTestAssertions = v70;
  }

  v72 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (void)setTimeToWaitForClientToPullChanges:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 60.0;
  }

  _timeToWaitForClientToPullChanges = *&a3;
}

+ (void)setTimeToWaitForClientToPushChanges:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 20.0;
  }

  _timeToWaitForClientToPushChanges = *&a3;
}

+ (void)setTimeToWaitForClientToActivateScopes:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 60.0;
  }

  _timeToWaitForClientToActivateScopes = *&a3;
}

+ (void)setTimeToWaitForLibrary:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 10.0;
  }

  _timeToWaitForLibrary = *&a3;
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__16777;
  v26 = __Block_byref_object_dispose__16778;
  v27 = 0;
  v11 = [CPLEngineComponentEnumerator alloc];
  v12 = [(CPLEngineLibrary *)self _allComponentsIncludingPlatformObjects:1 respondingToSelector:sel_testKey_value_completionHandler_];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CPLEngineLibrary_CPLManagement__testKey_value_completionHandler___block_invoke;
  v17[3] = &unk_1E861F0E0;
  v17[4] = self;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  v21 = &v22;
  v16 = [(CPLEngineComponentEnumerator *)v11 initWithComponents:v12 handler:v17];

  objc_storeStrong(v23 + 5, v16);
  [(CPLEngineComponentEnumerator *)v16 handleNextComponent];

  _Block_object_dispose(&v22, 8);
}

void __67__CPLEngineLibrary_CPLManagement__testKey_value_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__CPLEngineLibrary_CPLManagement__testKey_value_completionHandler___block_invoke_2;
    v12[3] = &unk_1E861F0B8;
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v13 = v6;
    v14 = v7;
    [a2 testKey:v4 value:v5 completionHandler:v12];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);

    [v8 _testKey:v9 value:v10 completionHandler:v11];
  }
}

uint64_t __67__CPLEngineLibrary_CPLManagement__testKey_value_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return [*(*(*(a1 + 40) + 8) + 40) handleNextComponent];
  }
}

- (id)_allComponentsIncludingPlatformObjects:(BOOL)a3 respondingToSelector:(SEL)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_components;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v4 && [*(*(&v16 + 1) + 8 * i) conformsToProtocol:{&unk_1F57F43C8, v16}])
        {
          v13 = [v12 platformObject];
          if ([v13 conformsToProtocol:&unk_1F57F5D40] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v6 addObject:v13];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqual:@"ping"])
  {
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"pong";
    }

    v10[2](v10, v11, 0);
  }

  else
  {
    if ([v8 isEqual:@"hold-assertion"])
    {
      v12 = [(__CFString *)v9 componentsSeparatedByString:@" "];
      v13 = [(__CFString *)v12 firstObject];
      v14 = v13;
      v15 = @"ctl.test-assertion";
      if (v13)
      {
        v15 = v13;
      }

      v16 = v15;

      if ([(__CFString *)v12 count]< 2)
      {
        v18 = @"testing assertions";
      }

      else
      {
        v17 = [(__CFString *)v12 subarrayWithRange:1, [(__CFString *)v12 count]- 1];
        v18 = [v17 componentsJoinedByString:@" "];
      }

      queue = self->_queue;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __68__CPLEngineLibrary_CPLManagement___testKey_value_completionHandler___block_invoke;
      v34[3] = &unk_1E861B018;
      v34[4] = self;
      v35 = v16;
      v36 = v18;
      v37 = v10;
      v26 = v34;
      block = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __cpl_dispatch_async_block_invoke_16734;
      v41 = &unk_1E861B4E0;
      v42 = v26;
      v27 = queue;
      v28 = v18;
      v29 = v16;
      v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v27, v30);
    }

    else if ([v8 isEqual:@"release-assertion"])
    {
      v19 = @"ctl.test-assertion";
      if (v9)
      {
        v19 = v9;
      }

      v20 = v19;
      v21 = self->_queue;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __68__CPLEngineLibrary_CPLManagement___testKey_value_completionHandler___block_invoke_2;
      v31[3] = &unk_1E861B3D0;
      v31[4] = self;
      v32 = v20;
      v33 = v10;
      v22 = v31;
      block = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __cpl_dispatch_async_block_invoke_16734;
      v41 = &unk_1E861B4E0;
      v42 = v22;
      v23 = v21;
      v12 = v20;
      v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v23, v24);
    }

    else
    {
      v12 = [CPLErrors incorrectParametersErrorForParameter:v8];
      (v10)[2](v10, 0, v12);
    }
  }
}

uint64_t __68__CPLEngineLibrary_CPLManagement___testKey_value_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 128) addObject:a1[5]];
  [CPLTransaction beginTransactionWithIdentifier:a1[5] description:a1[6] keepPower:1];
  v2 = *(a1[7] + 16);

  return v2();
}

void __68__CPLEngineLibrary_CPLManagement___testKey_value_completionHandler___block_invoke_2(void *a1)
{
  if ([*(a1[4] + 128) containsObject:a1[5]])
  {
    [*(a1[4] + 128) removeObject:a1[5]];
    [CPLTransaction endTransactionWithIdentifier:a1[5]];
    v2 = *(a1[6] + 16);

    v2();
  }

  else
  {
    v3 = a1[6];
    v4 = [CPLErrors incorrectMachineStateErrorWithReason:@"unknown assertion"];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_2;
  v17[3] = &unk_1E861B018;
  v17[4] = *(a1 + 32);
  v3 = v2;
  v18 = v3;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v4 = MEMORY[0x1E128EBA0](v17);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v6 = [WeakRetained ownerNameForEngineLibrary:*(a1 + 32)];
  if (v6 && ((v7 = *(a1 + 40)) == 0 || [v7 containsObject:v6]))
  {
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_4;
    v11[3] = &unk_1E861F090;
    v12 = v3;
    v13 = v6;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = v4;
    [WeakRetained engineLibrary:v8 getStatusDictionaryWithCompletionHandler:v11];
  }

  else
  {
    v4[2](v4);
  }
}

void __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_3;
  v5[3] = &unk_1E861A878;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v2 _fillStatusArray:v3 forComponents:v4 completionHandler:v5];
}

void __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v31[0] = @"componentName";
    v31[1] = @"status";
    v32[0] = v8;
    v10 = [v6 localizedDescription];
    v32[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v9 addObject:v11];

LABEL_8:
    goto LABEL_9;
  }

  if (v5)
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v29[0] = @"componentName";
    v29[1] = @"status";
    v30[0] = v12;
    v30[1] = v5;
    v14 = MEMORY[0x1E695DF20];
    v15 = v30;
    v16 = v29;
LABEL_7:
    v10 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:2];
    [v13 addObject:v10];
    goto LABEL_8;
  }

  if (*(a1 + 48))
  {
    v13 = *(a1 + 32);
    v17 = *(a1 + 40);
    v27[0] = @"componentName";
    v27[1] = @"status";
    v28[0] = v17;
    v28[1] = @"no status";
    v14 = MEMORY[0x1E695DF20];
    v15 = v28;
    v16 = v27;
    goto LABEL_7;
  }

LABEL_9:
  v18 = *(*(a1 + 56) + 16);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_5;
  v23[3] = &unk_1E861B4E0;
  v24 = *(a1 + 64);
  v19 = v23;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v26 = v19;
  v20 = v18;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v20, v21);

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __81__CPLEngineLibrary_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

- (void)_fillStatusArray:(id)a3 forComponents:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16777;
  v27 = __Block_byref_object_dispose__16778;
  v28 = 0;
  v11 = [CPLEngineComponentEnumerator alloc];
  components = self->_components;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke;
  v17[3] = &unk_1E861F0E0;
  v13 = v9;
  v18 = v13;
  v19 = self;
  v14 = v8;
  v20 = v14;
  v22 = &v23;
  v15 = v10;
  v21 = v15;
  v16 = [(CPLEngineComponentEnumerator *)v11 initWithComponents:components handler:v17];
  objc_storeStrong(v24 + 5, v16);
  [v24[5] handleNextComponent];

  _Block_object_dispose(&v23, 8);
}

void __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    if (!v5 || ([v3 componentName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7))
    {
      v8 = [*(a1 + 40) platformObject];

      if (v8 == v4)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v11 = *(*(a1 + 40) + 40);
        v12 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v39;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v38 + 1) + 8 * i);
              v17 = [v16 displayableNameForEngineLibrary:*(a1 + 40)];
              if (v17)
              {
                [v10 addObject:v17];
              }

              else
              {
                v18 = [v16 description];
                [v10 addObject:v18];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
          }

          while (v13);
        }

        v19 = *(a1 + 40);
        v20 = *(v19 + 224);
        if (!v20)
        {
          v20 = @"???";
        }

        v46[0] = @"libraryIdentifier";
        v46[1] = @"attached";
        v47[0] = v20;
        v47[1] = v10;
        v46[2] = @"libraryPath";
        v21 = [*(v19 + 200) path];
        v22 = [v21 stringByAbbreviatingWithTildeInPath];
        v23 = v22;
        v24 = @"<unknown>";
        if (v22)
        {
          v24 = v22;
        }

        v47[2] = v24;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];

        if (objc_opt_respondsToSelector())
        {
          goto LABEL_24;
        }

        if (v9)
        {
          v27 = *(a1 + 48);
          v44[0] = @"componentName";
          v28 = [v4 componentName];
          v44[1] = @"status";
          v45[0] = v28;
          v45[1] = v9;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
          [v27 addObject:v29];
          goto LABEL_29;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v9 = 0;
LABEL_24:
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke_2;
        v32[3] = &unk_1E861EFF0;
        v33 = v4;
        v34 = *(a1 + 48);
        v9 = v9;
        v35 = v9;
        v25 = *(a1 + 32);
        v26 = *(a1 + 64);
        v36 = v25;
        v37 = v26;
        [CPLCallObserver observeAsyncCallOn:v33 selector:sel_getStatusDictionaryWithCompletionHandler_ block:v32];

LABEL_32:
        goto LABEL_33;
      }

      if (!*(a1 + 32))
      {
        v9 = 0;
        goto LABEL_31;
      }

      v30 = *(a1 + 48);
      v42[0] = @"componentName";
      v28 = [v4 componentName];
      v42[1] = @"status";
      v43[0] = v28;
      v43[1] = @"no status";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
      [v30 addObject:v29];
      v9 = 0;
LABEL_29:

LABEL_31:
      [*(*(*(a1 + 64) + 8) + 40) handleNextComponent];
      goto LABEL_32;
    }

    [*(*(*(a1 + 64) + 8) + 40) handleNextComponent];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

LABEL_33:

  v31 = *MEMORY[0x1E69E9840];
}

void __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke_3;
  v12[3] = &unk_1E861F068;
  v13 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 64);
  v11 = v3;
  [v4 getStatusDictionaryWithCompletionHandler:v12];
}

void __84__CPLEngineLibrary_CPLManagement___fillStatusArray_forComponents_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) callDidFinish];
  if (v6)
  {
    v28[0] = @"componentName";
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) componentName];
    v28[1] = @"status";
    v29[0] = v8;
    v9 = [v6 localizedDescription];
    v29[1] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v29;
    v12 = v28;
LABEL_3:
    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
    [v7 addObject:v13];

LABEL_13:
    goto LABEL_14;
  }

  v14 = *(a1 + 56);
  if (v5)
  {
    if (v14)
    {
      v8 = [v5 mutableCopy];
      [v8 addEntriesFromDictionary:*(a1 + 56)];
      v26[0] = @"componentName";
      v7 = *(a1 + 40);
      v9 = [*(a1 + 48) componentName];
      v26[1] = @"status";
      v27[0] = v9;
      v27[1] = v8;
      v10 = MEMORY[0x1E695DF20];
      v11 = v27;
      v12 = v26;
      goto LABEL_3;
    }

    v24[0] = @"componentName";
    v15 = *(a1 + 40);
    v8 = [*(a1 + 48) componentName];
    v24[1] = @"status";
    v25[0] = v8;
    v25[1] = v5;
    v16 = MEMORY[0x1E695DF20];
    v17 = v25;
    v18 = v24;
LABEL_12:
    v9 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
    [v15 addObject:v9];
    goto LABEL_13;
  }

  if (v14)
  {
    v22[0] = @"componentName";
    v15 = *(a1 + 40);
    v8 = [*(a1 + 48) componentName];
    v22[1] = @"status";
    v23[0] = v8;
    v23[1] = *(a1 + 56);
    v16 = MEMORY[0x1E695DF20];
    v17 = v23;
    v18 = v22;
    goto LABEL_12;
  }

  if (*(a1 + 64))
  {
    v20[0] = @"componentName";
    v15 = *(a1 + 40);
    v8 = [*(a1 + 48) componentName];
    v20[1] = @"status";
    v21[0] = v8;
    v21[1] = @"no status";
    v16 = MEMORY[0x1E695DF20];
    v17 = v21;
    v18 = v20;
    goto LABEL_12;
  }

LABEL_14:
  [*(*(*(a1 + 72) + 8) + 40) handleNextComponent];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_2;
  v17[3] = &unk_1E861B018;
  v17[4] = *(a1 + 32);
  v3 = v2;
  v18 = v3;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v4 = MEMORY[0x1E128EBA0](v17);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v6 = [WeakRetained ownerNameForEngineLibrary:*(a1 + 32)];
  if (v6 && ((v7 = *(a1 + 40)) == 0 || [v7 containsObject:v6]))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_4;
    v10[3] = &unk_1E861F040;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    v13 = v3;
    v14 = v6;
    v15 = *(a1 + 40);
    v16 = v4;
    [CPLCallObserver observeAsyncCallOn:v8 selector:sel_getStatusWithCompletionHandler_ block:v10];
  }

  else
  {
    v4[2](v4);
  }
}

void __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_3;
  v5[3] = &unk_1E861A878;
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = *(a1 + 40);
  [v2 _fillStatus:v3 forComponents:v4 completionHandler:v5];
}

void __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_5;
  v11[3] = &unk_1E861F018;
  v12 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 64);
  *(&v8 + 1) = *(a1 + 40);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 72);
  v10 = v3;
  [v4 engineLibrary:v5 getStatusWithCompletionHandler:v11];
}

void __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) callDidFinish];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v6 localizedDescription];
    v11 = [v7 stringWithFormat:@"%@ (owner): error '%@'", v9, v10];
    [v8 addObject:v11];

LABEL_7:
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = [v5 componentsSeparatedByString:@"\n"];
    v12 = MEMORY[0x1E696AEC0];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = [v10 componentsJoinedByString:@"\n\t"];
    v16 = [v12 stringWithFormat:@"%@ (owner):\n\t%@", v14, v15];
    [v13 addObject:v16];

    goto LABEL_7;
  }

  if (*(a1 + 56))
  {
    v17 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (owner): no status", *(a1 + 48)];
    [v17 addObject:v10];
    goto LABEL_7;
  }

LABEL_8:
  v18 = *(*(a1 + 64) + 16);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_6;
  v22[3] = &unk_1E861B4E0;
  v23 = *(a1 + 72);
  v19 = v22;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v25 = v19;
  v20 = v18;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v20, v21);
}

void __76__CPLEngineLibrary_CPLManagement__getStatusForComponents_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) componentsJoinedByString:@"\n\n"];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_fillStatus:(id)a3 forComponents:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__16777;
  v27 = __Block_byref_object_dispose__16778;
  v28 = 0;
  v11 = [CPLEngineComponentEnumerator alloc];
  components = self->_components;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke;
  v17[3] = &unk_1E861F0E0;
  v13 = v9;
  v18 = v13;
  v19 = self;
  v14 = v8;
  v20 = v14;
  v22 = &v23;
  v15 = v10;
  v21 = v15;
  v16 = [(CPLEngineComponentEnumerator *)v11 initWithComponents:components handler:v17];
  objc_storeStrong(v24 + 5, v16);
  [v24[5] handleNextComponent];

  _Block_object_dispose(&v23, 8);
}

void __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    if (!v5 || ([v3 componentName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v7))
    {
      v8 = [*(a1 + 40) platformObject];

      if (v8 == v4)
      {
        v10 = objc_alloc(MEMORY[0x1E696AD60]);
        v11 = *(a1 + 40);
        if (*(v11 + 224))
        {
          v12 = *(v11 + 224);
        }

        else
        {
          v12 = @"<unknown>";
        }

        v13 = [*(v11 + 200) path];
        v14 = [v13 stringByAbbreviatingWithTildeInPath];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = @"<unknown>";
        }

        v9 = [v10 initWithFormat:@"identifier: %@\n\tpath: %@", v12, v16];

        if (overridesSharedLibraryFeatureFlag == 1 && (isSharedLibraryFeatureEnabled & 1) == 0)
        {
          [v9 appendFormat:@"\n\tShared library feature is disabled"];
        }

        if ((CPLIsCollectionShareFeatureEnabled() & 1) == 0)
        {
          [v9 appendFormat:@"\n\tShared Collection feature is disabled"];
        }

        v17 = [MEMORY[0x1E695DF00] date];
        if ([*(*(a1 + 40) + 40) count])
        {
          v54 = v17;
          v55 = v9;
          v56 = v4;
          v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 40) + 40), "count")}];
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v19 = *(*(a1 + 40) + 40);
          v20 = [v19 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v64;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v64 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v63 + 1) + 8 * i);
                v25 = [v24 displayableNameForEngineLibrary:*(a1 + 40)];
                v26 = v25;
                if (v25)
                {
                  v27 = v25;
                }

                else
                {
                  v27 = [v24 description];
                }

                v28 = v27;

                if ([*(*(a1 + 40) + 48) containsObject:v24])
                {
                  v29 = [v28 stringByAppendingString:@" (invalid)"];

                  v28 = v29;
                }

                [v18 addObject:v28];
              }

              v21 = [v19 countByEnumeratingWithState:&v63 objects:v67 count:16];
            }

            while (v21);
          }

          v30 = [*(*(a1 + 40) + 40) count];
          v17 = v54;
          v31 = [CPLDateFormatter stringFromDate:v54];
          v32 = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v33 = [v32 name];
          v34 = [v18 componentsJoinedByString:@"\n\t\t"];
          v9 = v55;
          [v55 appendFormat:@"\n\t%lu attached object(s) at %@ (%@):\n\t\t%@", v30, v31, v33, v34];

          v4 = v56;
        }

        else
        {
          v35 = [CPLDateFormatter stringFromDate:v17];
          v36 = [MEMORY[0x1E695DFE8] defaultTimeZone];
          v37 = [v36 name];
          [v9 appendFormat:@"\n\tNo attached objects at %@ (%@)", v35, v37];
        }

        v38 = [*(*(a1 + 40) + 88) statusDescription];
        v39 = v38;
        if (v38)
        {
          v40 = [v38 componentsSeparatedByString:@"\n"];
          v41 = [v40 componentsJoinedByString:@"\n\t\t"];
          [v9 appendFormat:@"\n\tstatus:\n\t\t%@", v41];
        }

        v42 = [*(a1 + 40) configuration];
        v43 = [v42 lastUpdateDate];

        if (v43)
        {
          v44 = [CPLDateFormatter stringFromDateAgo:v43 now:v17];
          [v9 appendFormat:@"\n\tconfiguration update: %@", v44];
        }

        else
        {
          [v9 appendFormat:@"\n\tconfiguration update: %@", @"never"];
        }

        if (objc_opt_respondsToSelector())
        {
          goto LABEL_41;
        }

        if (v9)
        {
          v47 = *(a1 + 48);
          v48 = MEMORY[0x1E696AEC0];
          v49 = [v4 componentName];
          v50 = [v48 stringWithFormat:@"%@:\n\t%@", v49, v9];
          [v47 addObject:v50];
          goto LABEL_46;
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        v9 = 0;
LABEL_41:
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke_2;
        v57[3] = &unk_1E861EFF0;
        v58 = v4;
        v59 = *(a1 + 48);
        v9 = v9;
        v60 = v9;
        v45 = *(a1 + 32);
        v46 = *(a1 + 64);
        v61 = v45;
        v62 = v46;
        [CPLCallObserver observeAsyncCallOn:v58 selector:sel_getStatusWithCompletionHandler_ block:v57];

LABEL_49:
        goto LABEL_50;
      }

      if (!*(a1 + 32))
      {
        v9 = 0;
        goto LABEL_48;
      }

      v51 = *(a1 + 48);
      v52 = MEMORY[0x1E696AEC0];
      v49 = [v4 componentName];
      v50 = [v52 stringWithFormat:@"%@: no status", v49];
      [v51 addObject:v50];
      v9 = 0;
LABEL_46:

LABEL_48:
      [*(*(*(a1 + 64) + 8) + 40) handleNextComponent];
      goto LABEL_49;
    }

    [*(*(*(a1 + 64) + 8) + 40) handleNextComponent];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

LABEL_50:

  v53 = *MEMORY[0x1E69E9840];
}

void __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke_3;
  v12[3] = &unk_1E861EFC8;
  v13 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 64);
  v11 = v3;
  [v4 getStatusWithCompletionHandler:v12];
}

void __79__CPLEngineLibrary_CPLManagement___fillStatus_forComponents_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  [*(a1 + 32) callDidFinish];
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) componentName];
    v9 = [v5 localizedDescription];
    v10 = [v6 stringWithFormat:@"%@: error '%@'", v8, v9];
    [v7 addObject:v10];
  }

  else if (v22)
  {
    v8 = [v22 componentsSeparatedByString:@"\n"];
    v11 = *(a1 + 56);
    v12 = MEMORY[0x1E696AEC0];
    v13 = *(a1 + 40);
    v9 = [*(a1 + 48) componentName];
    if (v11)
    {
      v14 = *(a1 + 56);
      v15 = [v8 componentsJoinedByString:@"\n\t"];
      [v12 stringWithFormat:@"%@:\n\t%@\n\t%@", v9, v14, v15];
    }

    else
    {
      v15 = [v8 componentsJoinedByString:@"\n\t"];
      [v12 stringWithFormat:@"%@:\n\t%@", v9, v15, v21];
    }
    v18 = ;
    [v13 addObject:v18];
  }

  else
  {
    if (*(a1 + 56))
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = *(a1 + 40);
      v8 = [*(a1 + 48) componentName];
      [v16 stringWithFormat:@"%@:\n\t%@", v8, *(a1 + 56)];
    }

    else
    {
      if (!*(a1 + 64))
      {
        goto LABEL_14;
      }

      v19 = MEMORY[0x1E696AEC0];
      v17 = *(a1 + 40);
      v8 = [*(a1 + 48) componentName];
      [v19 stringWithFormat:@"%@: no status", v8, v20];
    }
    v9 = ;
    [v17 addObject:v9];
  }

LABEL_14:
  [*(*(*(a1 + 72) + 8) + 40) handleNextComponent];
}

- (void)getListOfComponentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CPLEngineLibrary_CPLManagement__getListOfComponentsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_16734;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __76__CPLEngineLibrary_CPLManagement__getListOfComponentsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v4 = objc_loadWeakRetained((*(a1 + 32) + 240));

  if (v4)
  {
    v5 = [WeakRetained ownerNameForEngineLibrary:*(a1 + 32)];
    if (v5)
    {
      [v2 addObject:v5];
    }
  }

  v17 = WeakRetained;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(*(a1 + 32) + 8);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [*(a1 + 32) platformObject];
        v13 = v12;
        if (v11 == v12)
        {

LABEL_14:
          v15 = [v11 componentName];
          [v2 addObject:v15];

          goto LABEL_15;
        }

        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

@end