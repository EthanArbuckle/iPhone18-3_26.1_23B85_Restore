@interface CPLLibraryManager
+ (NSArray)allLibraryOptionsDescriptions;
+ (NSDictionary)mappingExitSources;
+ (NSDictionary)mappingForLibraryOptions;
+ (NSDictionary)mappingRetentionPolicies;
+ (id)_reverseMappingForLibraryOptions;
+ (id)descriptionForExitSource:(int64_t)a3;
+ (id)descriptionForLibraryOptions:(unint64_t)a3;
+ (id)descriptionForProvideContentResult:(unint64_t)a3;
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)a3;
+ (unint64_t)optionsFromDescription:(id)a3;
+ (void)useCloudPhotoDaemonImplementation;
- (BOOL)_setStatus:(unint64_t)a3 andError:(id)a4;
- (CPLConfiguration)configuration;
- (CPLLibraryManager)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8;
- (CPLLibraryManagerDelegate)delegate;
- (CPLLibraryManagerForceSyncDelegate)forceSyncDelegate;
- (CPLLibraryManagerOwner)owner;
- (CPLRecordComputeStateDelegate)recordComputeStateDelegate;
- (CPLResourceProgressDelegate)resourceProgressDelegate;
- (CPLStatus)syncStatus;
- (NSString)description;
- (id)_fingerprintContext;
- (id)_mappedUnscopedIdentifiersFromScopedIdentifiers:(id)a3;
- (id)addSubscriberUsingPublishingHandler:(id)a3;
- (id)currentSession;
- (void)_beginPullChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5;
- (void)_beginPushChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5;
- (void)_closeDeactivating:(BOOL)a3 completionHandler:(id)a4;
- (void)_configurationDidChange;
- (void)_fetchBoundaryKeyIfNecessaryWithSource:(id)a3 completionHandler:(id)a4;
- (void)_fetchBoundaryKeyIfNecessaryWithSourceLocked:(id)a3 completionHandler:(id)a4;
- (void)_getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5;
- (void)_setCurrentSession:(id)a3;
- (void)_setLibraryVersion:(id)a3;
- (void)_setSizeOfResourcesToUpload:(unint64_t)a3 sizeOfOriginalResourcesToUpload:(unint64_t)a4 numberOfImages:(unint64_t)a5 numberOfVideos:(unint64_t)a6 numberOfOtherItems:(unint64_t)a7;
- (void)_statusDidChange;
- (void)_updateFingerprintContext;
- (void)acceptMomentShare:(id)a3 completionHandler:(id)a4;
- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4;
- (void)acknowledgeChangedStatuses:(id)a3;
- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)addDropDerivativesRecipe:(id)a3 writeToUserDefaults:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)addInfoToLog:(id)a3;
- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)a3 persist:(BOOL)a4;
- (void)attachComputeStates:(id)a3 completionHandler:(id)a4;
- (void)barrier;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 intent:(unint64_t)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7;
- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7;
- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5;
- (void)beginPullChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5;
- (void)beginPushChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5;
- (void)blockEngineElement:(id)a3;
- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3;
- (void)checkResourcesAreSafeToPrune:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5;
- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)a3 related:(BOOL)a4 completionHandler:(id)a5;
- (void)compactFileCacheWithCompletionHandler:(id)a3;
- (void)createOwnedLibraryShareScopeWithShare:(id)a3 title:(id)a4 completionHandler:(id)a5;
- (void)createScope:(id)a3 completionHandler:(id)a4;
- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5;
- (void)deleteResourcesIfSafe:(id)a3 completionHandler:(id)a4;
- (void)deleteScopeWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5;
- (void)disableMingling;
- (void)disableSynchronizationWithReason:(id)a3;
- (void)discardCurrentSession;
- (void)enableMingling;
- (void)enableSynchronizationWithReason:(id)a3;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 validator:(id)a4 shouldDecrypt:(BOOL)a5 onDemand:(BOOL)a6 completionHandler:(id)a7;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3;
- (void)fetchMomentShareFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4;
- (void)forceBackupWithCompletionHandler:(id)a3;
- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getChangedStatusesWithCompletionHandler:(id)a3;
- (void)getCloudCacheForRecordWithScopedIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5;
- (void)getListOfComponentsWithCompletionHandler:(id)a3;
- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)getStatusForRecordsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getStatusesForScopesWithIdentifiers:(id)a3 includeStorages:(BOOL)a4 completionHandler:(id)a5;
- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 clientBundleID:(id)a6 completionHandler:(id)a7;
- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (void)getStreamingURLOrMediaMakerDataForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)markLibraryManagerAsInvalid;
- (void)noteClientIsBeginningSignificantWork;
- (void)noteClientIsEndingSignificantWork;
- (void)noteClientIsInBackground;
- (void)noteClientIsInForegroundQuietly:(BOOL)a3;
- (void)noteClientReceivedNotificationOfServerChanges;
- (void)openWithCompletionHandler:(id)a3;
- (void)provideCloudResource:(id)a3 completionHandler:(id)a4;
- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4;
- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)publishMomentShare:(id)a3 completionHandler:(id)a4;
- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4;
- (void)queryUserIdentitiesWithParticipants:(id)a3 completionHandler:(id)a4;
- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5;
- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7;
- (void)reportMiscInformation:(id)a3;
- (void)reportSetting:(id)a3 hasBeenEnabled:(BOOL)a4;
- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3;
- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5;
- (void)resetStatus;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)setShouldOverride:(BOOL)a3 forSystemBudgets:(unint64_t)a4;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3;
- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6;
- (void)startSyncSession;
- (void)takeStatisticsSnapshotSinceDate:(id)a3 completionHandler:(id)a4;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)unblockEngineElement:(id)a3;
- (void)unblockEngineElementOnce:(id)a3;
- (void)updateShareForScope:(id)a3 completionHandler:(id)a4;
@end

@implementation CPLLibraryManager

- (CPLRecordComputeStateDelegate)recordComputeStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordComputeStateDelegate);

  return WeakRetained;
}

- (CPLLibraryManagerOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (CPLLibraryManagerForceSyncDelegate)forceSyncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forceSyncDelegate);

  return WeakRetained;
}

- (CPLResourceProgressDelegate)resourceProgressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resourceProgressDelegate);

  return WeakRetained;
}

- (CPLLibraryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)a3 validator:(id)a4 shouldDecrypt:(BOOL)a5 onDemand:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = objc_opt_class();
  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = ___CPLProgressForAsyncCall_block_invoke;
  v36 = &__block_descriptor_48_e5_v8__0lu32l8;
  v37 = v15;
  v38 = a2;
  [v16 setCancellationHandler:&block];
  queue = self->_queue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke;
  v26[3] = &unk_1E861D958;
  v29 = v13;
  v30 = v14;
  v26[4] = self;
  v27 = v16;
  v28 = v12;
  v31 = a5;
  v32 = a6;
  v18 = v26;
  block = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __cpl_dispatch_async_block_invoke_12172;
  v36 = &unk_1E861B4E0;
  v37 = v18;
  v19 = queue;
  v20 = v13;
  v21 = v12;
  v22 = v16;
  v23 = v14;
  v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v19, v24);
}

void __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_508;
    v12[3] = &unk_1E861B470;
    v2 = *(a1 + 40);
    v11 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v16 = *(a1 + 72);
    v15 = *(a1 + 64);
    v5 = *(a1 + 40);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    *&v7 = v11;
    *(&v7 + 1) = v3;
    v13 = v7;
    v14 = v6;
    [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v12];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to fetch compute states while the library is not open", buf, 2u);
      }
    }

    v9 = *(a1 + 64);
    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to fetch compute states while the library is not open"];
    (*(v9 + 16))(v9, 0, v10);

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }
}

void __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_508(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 73);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861B448;
  v9 = *(a1 + 64);
  v8 = *(a1 + 56);
  [v2 fetchComputeStatesForRecordsWithScopedIdentifiers:v3 validator:v4 shouldDecrypt:v5 onDemand:v6 completionHandler:v7];
}

uint64_t __122__CPLLibraryManager_fetchComputeStatesForRecordsWithScopedIdentifiers_validator_shouldDecrypt_onDemand_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

- (void)attachComputeStates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CPLLibraryManager_attachComputeStates_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __59__CPLLibraryManager_attachComputeStates_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 attachComputeStates:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)addDropDerivativesRecipe:(id)a3 writeToUserDefaults:(BOOL)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__CPLLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke;
  v16[3] = &unk_1E861B090;
  v16[4] = self;
  v17 = v8;
  v19 = a4;
  v18 = v9;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __88__CPLLibraryManager_addDropDerivativesRecipe_writeToUserDefaults_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 addDropDerivativesRecipe:*(a1 + 40) writeToUserDefaults:*(a1 + 56) withCompletionHandler:*(a1 + 48)];
}

- (void)provideCloudResource:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CPLLibraryManager_provideCloudResource_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __60__CPLLibraryManager_provideCloudResource_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 provideCloudResource:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)provideRecordWithCloudScopeIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __77__CPLLibraryManager_provideRecordWithCloudScopeIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 provideRecordWithCloudScopeIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)provideScopeChangeForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__CPLLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __80__CPLLibraryManager_provideScopeChangeForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 provideScopeChangeForScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  libraryIdentifier = self->_libraryIdentifier;
  v6 = [objc_opt_class() stateDescriptionForState:self->_state];
  v7 = [v3 stringWithFormat:@"[%@ %p %@ %@]", v4, self, libraryIdentifier, v6];

  return v7;
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___CPLProgressForAsyncCall_block_invoke;
  v25 = &__block_descriptor_48_e5_v8__0lu32l8;
  v26 = v9;
  v27 = a2;
  [v10 setCancellationHandler:&block];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke;
  v18[3] = &unk_1E861AE60;
  v18[4] = self;
  v19 = v10;
  v20 = v7;
  v21 = v8;
  v12 = v18;
  block = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __cpl_dispatch_async_block_invoke_12172;
  v25 = &unk_1E861B4E0;
  v26 = v12;
  v13 = queue;
  v14 = v7;
  v15 = v10;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v13, v17);
}

void __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke(id *a1)
{
  if ([a1[4] state] == 2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_501;
    v11[3] = &unk_1E861AE38;
    v2 = a1[5];
    v10 = a1[4];
    v3 = a1[6];
    v4 = a1[7];
    *&v5 = a1[5];
    *(&v5 + 1) = v4;
    *&v6 = v10;
    *(&v6 + 1) = v3;
    v12 = v6;
    v13 = v5;
    [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v11];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to force client to pull all changes while the library is not open", buf, 2u);
      }
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to force client to pull all changes while the library is not open"];
      v8[2](v8, v9);
    }

    [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
  }
}

void __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_501(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861A878;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 requestClientToPullAllChangesInScopeIdentifiers:v3 completionHandler:v4];
}

uint64_t __87__CPLLibraryManager_requestClientToPullAllChangesInScopeIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CPLLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = v5;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke_12172;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __72__CPLLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__CPLLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_497;
    v6[3] = &unk_1E861AA50;
    v2 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v6];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Trying to force client to push all changes while the library is not open", buf, 2u);
      }
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to force client to push all changes while the library is not open"];
      (*(v4 + 16))(v4, v5);
    }
  }
}

void __72__CPLLibraryManager_requestClientToPushAllChangesWithCompletionHandler___block_invoke_497(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 requestClientToPushAllChangesWithCompletionHandler:*(a1 + 40)];
}

- (void)forceBackupWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___CPLProgressForAsyncCall_block_invoke;
  v20 = &__block_descriptor_48_e5_v8__0lu32l8;
  v21 = v6;
  v22 = a2;
  [v7 setCancellationHandler:&block];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CPLLibraryManager_forceBackupWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v7;
  v16 = v5;
  v14[4] = self;
  v9 = v14;
  block = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __cpl_dispatch_async_block_invoke_12172;
  v20 = &unk_1E861B4E0;
  v21 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v10, v13);
}

void __54__CPLLibraryManager_forceBackupWithCompletionHandler___block_invoke(id *a1)
{
  if ([a1[4] state] == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__CPLLibraryManager_forceBackupWithCompletionHandler___block_invoke_493;
    v6[3] = &unk_1E861ABE0;
    v2 = a1[5];
    v6[4] = a1[4];
    v8 = a1[6];
    v7 = a1[5];
    [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v6];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "Trying to force a backup while the library is not open", buf, 2u);
      }
    }

    v4 = a1[6];
    if (v4)
    {
      v5 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to force a backup while the library is not open"];
      v4[2](v4, v5);
    }

    [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
  }
}

uint64_t __54__CPLLibraryManager_forceBackupWithCompletionHandler___block_invoke_493(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 forceBackupWithCompletionHandler:*(a1 + 48)];

  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

- (void)addInfoToLog:(id)a3
{
  v4 = a3;
  v5 = [(CPLLibraryManager *)self platformObject];
  [v5 addInfoToLog:v4];
}

- (void)resetCacheWithOption:(unint64_t)a3 reason:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    if (a3 > 3)
    {
      v8 = 0;
    }

    else
    {
      v10 = off_1E861D9B8[a3];
      v11 = +[CPLResetTracker currentTracker];
      v8 = [v11 likelyResetReasonWithImmediateReason:v10];
    }
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__CPLLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke;
  v18[3] = &unk_1E861D930;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = a3;
  v13 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v23 = v13;
  v14 = queue;
  v15 = v9;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v17);
}

void __67__CPLLibraryManager_resetCacheWithOption_reason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 resetCacheWithOption:*(a1 + 56) reason:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)compactFileCacheWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CPLLibraryManager_compactFileCacheWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __59__CPLLibraryManager_compactFileCacheWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 compactFileCacheWithCompletionHandler:*(a1 + 40)];
}

- (void)getResourcesForItemWithScopedIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CPLLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __79__CPLLibraryManager_getResourcesForItemWithScopedIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getResourcesForItemWithScopedIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)deleteResourcesIfSafe:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CPLLibraryManager_deleteResourcesIfSafe_completionHandler___block_invoke;
  v8[3] = &unk_1E861D908;
  v9 = v6;
  v7 = v6;
  [(CPLLibraryManager *)self deleteResources:a3 checkServerIfNecessary:0 completionHandler:v8];
}

void __61__CPLLibraryManager_deleteResourcesIfSafe_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allKeys];
  (*(v4 + 16))(v4, v5, v6);
}

- (void)checkResourcesAreSafeToPrune:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__CPLLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke;
  v21[3] = &unk_1E861ADE8;
  v22 = v9;
  v23 = v10;
  v21[4] = self;
  v24 = a4;
  v15 = v21;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v26 = &unk_1E861B4E0;
  v27 = v15;
  v16 = queue;
  v17 = v9;
  v18 = v10;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v16, v19);

  v20 = *MEMORY[0x1E69E9840];
}

void __91__CPLLibraryManager_checkResourcesAreSafeToPrune_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v8 = [*(a1 + 32) platformObject];
    [v8 checkResourcesAreSafeToPrune:*(a1 + 40) checkServerIfNecessary:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Trying to check purgeaable resources while the library is not open", buf, 2u);
      }
    }

    v5 = a1 + 40;
    v3 = *(a1 + 40);
    v4 = *(v5 + 8);
    v6 = +[CPLErrors libraryClosedError];
    v7 = [CPLErrors unsafeResources:v3 withError:v6 realPrune:0 resourceStorage:0];
    (*(v4 + 16))(v4, MEMORY[0x1E695E0F0], v7);
  }
}

- (void)deleteResources:(id)a3 checkServerIfNecessary:(BOOL)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__CPLLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke;
  v21[3] = &unk_1E861ADE8;
  v22 = v9;
  v23 = v10;
  v21[4] = self;
  v24 = a4;
  v15 = v21;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v26 = &unk_1E861B4E0;
  v27 = v15;
  v16 = queue;
  v17 = v9;
  v18 = v10;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v16, v19);

  v20 = *MEMORY[0x1E69E9840];
}

void __78__CPLLibraryManager_deleteResources_checkServerIfNecessary_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v8 = [*(a1 + 32) platformObject];
    [v8 deleteResources:*(a1 + 40) checkServerIfNecessary:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Trying to delete resources while the library is not open", buf, 2u);
      }
    }

    v5 = a1 + 40;
    v3 = *(a1 + 40);
    v4 = *(v5 + 8);
    v6 = +[CPLErrors libraryClosedError];
    v7 = [CPLErrors unsafeResources:v3 withError:v6 realPrune:1 resourceStorage:0];
    (*(v4 + 16))(v4, MEMORY[0x1E695E0F0], v7);
  }
}

- (void)markLibraryManagerAsInvalid
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CPLLibraryManager *)self platformObject];
  if (objc_opt_respondsToSelector())
  {
    [v3 markLibraryManagerAsInvalid];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = v3;
      v6 = v11;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Trying to call %@ while <%@ %p> does not support it", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CPLLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __81__CPLLibraryManager_getTargetsForRecordsWithScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getTargetsForRecordsWithScopedIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__CPLLibraryManager_testKey_value_completionHandler___block_invoke;
  v18[3] = &unk_1E861B018;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __53__CPLLibraryManager_testKey_value_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 testKey:*(a1 + 40) value:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)takeStatisticsSnapshotSinceDate:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CPLLibraryManager_takeStatisticsSnapshotSinceDate_completionHandler___block_invoke;
  v11[3] = &unk_1E861B4E0;
  v12 = v5;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v14 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)enableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CPLLibraryManager_enableMingling__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __35__CPLLibraryManager_enableMingling__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 enableMingling];
}

- (void)disableMingling
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CPLLibraryManager_disableMingling__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __36__CPLLibraryManager_disableMingling__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 disableMingling];
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CPLLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = v8;
  v18 = a2;
  v15[4] = self;
  v16 = v7;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __82__CPLLibraryManager_getScopeStatusCountsForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v9, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 getScopeStatusCountsForScopeWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(*(a1 + 56));
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to call %@ while the library is not open", &v9, 0xCu);
      }
    }

    v7 = *(a1 + 48);
    v4 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to get status counts while library is not open"];
    (*(v7 + 16))(v7, 0, v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)a3 persist:(BOOL)a4
{
  v7 = a3;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CPLLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke;
  v13[3] = &unk_1E861B178;
  v14 = v7;
  v15 = a2;
  v13[4] = self;
  v16 = a4;
  v9 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void __77__CPLLibraryManager_addStatusChangesForRecordsWithScopedIdentifiers_persist___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 48));
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v7, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 addStatusChangesForRecordsWithScopedIdentifiers:*(a1 + 40) persist:*(a1 + 56)];
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Trying to call %@ while the library is not open", &v7, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
}

- (void)acknowledgeChangedStatuses:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CPLLibraryManager_acknowledgeChangedStatuses___block_invoke;
  v11[3] = &unk_1E861B128;
  v12 = v5;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __48__CPLLibraryManager_acknowledgeChangedStatuses___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 48));
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v6, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 acknowledgeChangedStatuses:*(a1 + 40)];
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Trying to check record statuses while the library is not open", &v6, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getChangedStatusesWithCompletionHandler:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CPLLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v11[4] = self;
  v12 = v5;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __61__CPLLibraryManager_getChangedStatusesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 48));
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v8, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 getChangedStatusesWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to check record statuses while the library is not open", &v8, 2u);
      }
    }

    v6 = *(a1 + 40);
    v4 = +[CPLErrors libraryClosedError];
    (*(v6 + 16))(v6, 0, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getStatusForRecordsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [CPLScopedIdentifier scopedIdentifiersFromArrayOfUnknownIdentifiers:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CPLLibraryManager_getStatusForRecordsWithIdentifiers_completionHandler___block_invoke;
  v9[3] = &unk_1E861D8E0;
  v10 = v6;
  v8 = v6;
  [(CPLLibraryManager *)self getStatusForRecordsWithScopedIdentifiers:v7 completionHandler:v9];
}

void __74__CPLLibraryManager_getStatusForRecordsWithIdentifiers_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [CPLScopedIdentifier unscopedIdentifiersFromDictionaryOfScopedIdentifiers:a2];
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__CPLLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = v8;
  v18 = a2;
  v15[4] = self;
  v16 = v7;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __80__CPLLibraryManager_getStatusForRecordsWithScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v8, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 getStatusForRecordsWithScopedIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to check record statuses while the library is not open", &v8, 2u);
      }
    }

    v6 = *(a1 + 48);
    v4 = +[CPLErrors libraryClosedError];
    (*(v6 + 16))(v6, 0, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CPLLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E861AAC8;
  v11[4] = self;
  v12 = v5;
  v13 = a2;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __79__CPLLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__CPLLibraryManager_checkHasBackgroundDownloadOperationsWithCompletionHandler___block_invoke_470;
    v9[3] = &unk_1E861D8B8;
    v10 = *(a1 + 40);
    [v4 checkHasBackgroundDownloadOperationsWithCompletionHandler:v9];

    v5 = v10;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to check background download operations while the library is not open", buf, 2u);
      }
    }

    v7 = *(a1 + 40);
    v5 = +[CPLErrors libraryClosedError];
    (*(v7 + 16))(v7, 0, v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)noteClientIsEndingSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CPLLibraryManager_noteClientIsEndingSignificantWork__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __54__CPLLibraryManager_noteClientIsEndingSignificantWork__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 noteClientIsEndingSignificantWork];
}

- (void)noteClientIsBeginningSignificantWork
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CPLLibraryManager_noteClientIsBeginningSignificantWork__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __57__CPLLibraryManager_noteClientIsBeginningSignificantWork__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 noteClientIsBeginningSignificantWork];
}

- (void)setShouldOverride:(BOOL)a3 forSystemBudgets:(unint64_t)a4
{
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CPLLibraryManager_setShouldOverride_forSystemBudgets___block_invoke;
  v8[3] = &unk_1E861B0D8;
  v9 = a3;
  v8[4] = self;
  v8[5] = a4;
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v11 = v5;
  v6 = queue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __56__CPLLibraryManager_setShouldOverride_forSystemBudgets___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 setShouldOverride:*(a1 + 48) forSystemBudgets:*(a1 + 40)];
}

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CPLLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __59__CPLLibraryManager_getSystemBudgetsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getSystemBudgetsWithCompletionHandler:*(a1 + 40)];
}

- (void)enableSynchronizationWithReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CPLLibraryManager_enableSynchronizationWithReason___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __53__CPLLibraryManager_enableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 enableSynchronizationWithReason:*(a1 + 40)];
}

- (void)disableSynchronizationWithReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CPLLibraryManager_disableSynchronizationWithReason___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __54__CPLLibraryManager_disableSynchronizationWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 disableSynchronizationWithReason:*(a1 + 40)];
}

- (void)noteClientIsInBackground
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CPLLibraryManager_noteClientIsInBackground__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __45__CPLLibraryManager_noteClientIsInBackground__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 noteClientIsInBackground];
}

- (void)noteClientIsInForegroundQuietly:(BOOL)a3
{
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CPLLibraryManager_noteClientIsInForegroundQuietly___block_invoke;
  v7[3] = &unk_1E861F7F0;
  v7[4] = self;
  v8 = a3;
  v4 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void __53__CPLLibraryManager_noteClientIsInForegroundQuietly___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 noteClientIsInForegroundQuietly:*(a1 + 40)];
}

- (void)noteClientReceivedNotificationOfServerChanges
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CPLLibraryManager_noteClientReceivedNotificationOfServerChanges__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __66__CPLLibraryManager_noteClientReceivedNotificationOfServerChanges__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) platformObject];
  [v1 noteClientReceivedNotificationOfServerChanges];
}

- (id)addSubscriberUsingPublishingHandler:(id)a3
{
  v4 = a3;
  if (self->_libraryIdentifier)
  {
    v5 = [(CPLLibraryManager *)self libraryIdentifier];
    v6 = [@"com.apple.cpl." stringByAppendingString:v5];

    v7 = [MEMORY[0x1E696AE38] _addSubscriberForCategory:v6 usingPublishingHandler:v4];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to subscribe to published progress for a library with no identifier", v10, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)startSyncSession
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CPLLibraryManager *)self platformObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__CPLLibraryManager_startSyncSession__block_invoke;
    v11[3] = &unk_1E861A940;
    v11[4] = self;
    v6 = v11;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v13 = __cpl_dispatch_async_block_invoke_12172;
    v14 = &unk_1E861B4E0;
    v15 = v6;
    v7 = queue;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v7, v8);
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(block) = 138412290;
      *(&block + 4) = self;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ does not support forcing a sync session", &block, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __37__CPLLibraryManager_startSyncSession__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ forcing a sync session", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) platformObject];
  [v4 startSyncSession];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)resetStatus
{
  v2 = [(CPLLibraryManager *)self platformObject];
  [v2 resetStatus];
}

- (void)_setSizeOfResourcesToUpload:(unint64_t)a3 sizeOfOriginalResourcesToUpload:(unint64_t)a4 numberOfImages:(unint64_t)a5 numberOfVideos:(unint64_t)a6 numberOfOtherItems:(unint64_t)a7
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_sizeOfResourcesToUpload == a3 && self->_sizeOfOriginalResourcesToUpload == a4 && self->_numberOfImagesToUpload == a5 && self->_numberOfVideosToUpload == a6 && self->_numberOfOtherItemsToUpload == a7)
  {
    if (self->_sizeOfResourcesToUploadIsSet)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  self->_sizeOfResourcesToUpload = a3;
  self->_sizeOfOriginalResourcesToUpload = a4;
  self->_numberOfImagesToUpload = a5;
  self->_numberOfVideosToUpload = a6;
  self->_numberOfOtherItemsToUpload = a7;
  if (!self->_sizeOfResourcesToUploadIsSet)
  {
LABEL_15:
    self->_sizeOfResourcesToUploadIsSet = 1;
    goto LABEL_16;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sizeOfResourcesToUpload = self->_sizeOfResourcesToUpload;
      v14 = 134217984;
      v15 = sizeOfResourcesToUpload;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Size of resources to upload changed to %llu bytes", &v14, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_resourceProgressDelegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_resourceProgressDelegate);
    [v12 sizeOfResourcesToUploadDidChangeForLibraryManager:self];
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setStatus:(unint64_t)a3 andError:(id)a4
{
  v7 = a4;
  status = self->_status;
  v9 = status != a3;
  if (status != a3)
  {
    self->_status = a3;
  }

  statusError = self->_statusError;
  p_statusError = &self->_statusError;
  v10 = statusError;
  if (statusError)
  {
    if (!v7)
    {
      *p_statusError = 0;

      goto LABEL_10;
    }

    if (([(NSError *)v10 isEqual:v7]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    objc_storeStrong(p_statusError, a4);
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_11:

  return v9;
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__CPLLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_1E861AFA0;
  v17 = v8;
  v18 = a2;
  v15[4] = self;
  v16 = v7;
  v10 = v15;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v20 = v10;
  v11 = queue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __94__CPLLibraryManager_resolveLocalScopedIdentifiersForCloudScopedIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v8, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 resolveLocalScopedIdentifiersForCloudScopedIdentifiers:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to get real cloudIdentifier while the library is not open", &v8, 2u);
      }
    }

    v6 = *(a1 + 48);
    v4 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to get real cloudIdentifier while the library is not open"];
    (*(v6 + 16))(v6, 0, v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __97__CPLLibraryManager__getMappedIdentifiersForIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v7 = [v5 _mappedUnscopedIdentifiersFromScopedIdentifiers:a2];
    (*(v3 + 16))(v3, v7, v6);
  }
}

- (id)_mappedUnscopedIdentifiersFromScopedIdentifiers:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__CPLLibraryManager__mappedUnscopedIdentifiersFromScopedIdentifiers___block_invoke;
    v8[3] = &unk_1E861D890;
    v6 = v5;
    v9 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __69__CPLLibraryManager__mappedUnscopedIdentifiersFromScopedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 identifier];
  v6 = *(a1 + 32);
  v7 = [v5 identifier];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)_getMappedScopedIdentifiersForScopedIdentifiers:(id)a3 inAreLocalIdentifiers:(BOOL)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__CPLLibraryManager__getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke;
  v17[3] = &unk_1E861B3F8;
  v21 = a4;
  v19 = v10;
  v20 = a2;
  v17[4] = self;
  v18 = v9;
  v12 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = v9;
  v15 = v10;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

void __109__CPLLibraryManager__getMappedScopedIdentifiersForScopedIdentifiers_inAreLocalIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v4 = v3;
        v5 = "cloud->local";
        if (*(a1 + 64))
        {
          v5 = "local->cloud";
        }

        *buf = 138412546;
        v13 = v3;
        v14 = 2080;
        v15 = v5;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ (%s) called", buf, 0x16u);
      }
    }

    v6 = [*(a1 + 32) platformObject];
    [v6 getMappedScopedIdentifiersForScopedIdentifiers:*(a1 + 40) inAreLocalIdentifiers:*(a1 + 64) completionHandler:*(a1 + 48)];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 64))
        {
          v8 = "cloud";
        }

        else
        {
          v8 = "local";
        }

        *buf = 136315138;
        v13 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to get %s identifiers while the library is not open", buf, 0xCu);
      }
    }

    v9 = *(a1 + 48);
    if (*(a1 + 64))
    {
      v10 = "cloud";
    }

    else
    {
      v10 = "local";
    }

    v6 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to get %s identifiers while the library is not open", v10];
    (*(v9 + 16))(v9, 0, v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)forceSynchronizingScopeWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v11 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__CPLLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_1E861AFA0;
  v21 = v8;
  v22 = a2;
  v19[4] = self;
  v20 = v7;
  v13 = v19;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v24 = &unk_1E861B4E0;
  v25 = v13;
  v14 = queue;
  v15 = v7;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v14, v17);

  v18 = *MEMORY[0x1E69E9840];
}

void __78__CPLLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v11 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__CPLLibraryManager_forceSynchronizingScopeWithIdentifiers_completionHandler___block_invoke_448;
    v8[3] = &unk_1E861D868;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v4 forceSynchronizingScopeWithIdentifiers:v5 completionHandler:v8];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to download a resource while the library is not open", buf, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)queryUserIdentitiesWithParticipants:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [CPLMomentShareParticipant shareParticipantsFromMomentShareParticipants:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CPLLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke;
  v9[3] = &unk_1E861D840;
  v10 = v6;
  v8 = v6;
  [(CPLLibraryManager *)self queryUserDetailsForShareParticipants:v7 completionHandler:v9];
}

void __75__CPLLibraryManager_queryUserIdentitiesWithParticipants_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v8 = [CPLMomentShareParticipant momentShareParticipantsFromParticipants:a2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a3;
    v7(v6, 0);
  }
}

- (void)queryUserDetailsForShareParticipants:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v28 = &__block_descriptor_48_e5_v8__0lu32l8;
  v29 = v9;
  v30 = a2;
  [v10 setCancellationHandler:buf];
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke;
  v22[3] = &unk_1E861B5C8;
  v22[4] = self;
  v23 = v10;
  v25 = v8;
  v26 = a2;
  v24 = v7;
  v15 = v22;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v28 = &unk_1E861B4E0;
  v29 = v15;
  v16 = queue;
  v17 = v7;
  v18 = v10;
  v19 = v8;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v16, v20);

  v21 = *MEMORY[0x1E69E9840];
}

void __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_445;
    v14[3] = &unk_1E861AE38;
    v4 = *(a1 + 40);
    v13 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = v6;
    *&v8 = v13;
    *(&v8 + 1) = v5;
    v15 = v8;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to query user identities while the library is not open", buf, 2u);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to query user identities while the library is not open"];
      (*(v10 + 16))(v10, 0, v11);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_445(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861AFC8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 queryUserDetailsForShareParticipants:v3 completionHandler:v4];
}

uint64_t __76__CPLLibraryManager_queryUserDetailsForShareParticipants_completionHandler___block_invoke_2(uint64_t a1)
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

- (void)acceptMomentShare:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 translateToScopeChangeWithScopeType:3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CPLLibraryManager_acceptMomentShare_completionHandler___block_invoke;
  v9[3] = &unk_1E861B550;
  v10 = v6;
  v8 = v6;
  [(CPLLibraryManager *)self acceptSharedScope:v7 completionHandler:v9];
}

- (void)fetchMomentShareFromShareURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CPLLibraryManager_fetchMomentShareFromShareURL_completionHandler___block_invoke;
  v8[3] = &unk_1E861D818;
  v9 = v6;
  v7 = v6;
  [(CPLLibraryManager *)self fetchSharedScopeFromShareURL:a3 completionHandler:v8];
}

void __68__CPLLibraryManager_fetchMomentShareFromShareURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v8)
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_9;
  }

  if (([v8 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v6 = [[CPLMomentShare alloc] initWithScopeChange:v8];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
      goto LABEL_9;
    }

    v6 = +[CPLErrors notImplementedError];
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_9:
}

- (void)publishMomentShare:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 translateToScopeChangeWithScopeType:2];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CPLLibraryManager_publishMomentShare_completionHandler___block_invoke;
  v9[3] = &unk_1E861D818;
  v10 = v6;
  v8 = v6;
  [(CPLLibraryManager *)self createScope:v7 completionHandler:v9];
}

void __58__CPLLibraryManager_publishMomentShare_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (v9)
  {
    v5 = a3;
    v6 = [[CPLMomentShare alloc] initWithScopeChange:v9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v6 = a3;
    v8(v7, 0, v6);
  }
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Looking for shared library scope", buf, 2u);
    }
  }

  v7 = objc_opt_class();
  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v24 = &__block_descriptor_48_e5_v8__0lu32l8;
  v25 = v7;
  v26 = a2;
  [v8 setCancellationHandler:buf];
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v11 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E861AFA0;
  v19[4] = self;
  v20 = v8;
  v21 = v5;
  v22 = a2;
  v13 = v19;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v24 = &unk_1E861B4E0;
  v25 = v13;
  v14 = queue;
  v15 = v8;
  v16 = v5;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v14, v17);

  v18 = *MEMORY[0x1E69E9840];
}

void __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_440;
    v9[3] = &unk_1E861ABE0;
    v4 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to look for shared library scope while the library is not open", buf, 2u);
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to look for shared library scope while the library is not open"];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_440(id *a1)
{
  v2 = [a1[4] platformObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861AE10;
  v5 = a1[6];
  v4 = a1[5];
  [v2 fetchExistingSharedLibraryScopeWithCompletionHandler:v3];
}

uint64_t __74__CPLLibraryManager_fetchExistingSharedLibraryScopeWithCompletionHandler___block_invoke_2(uint64_t a1)
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

- (void)acceptSharedScope:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 share];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Accepting %@ from %@", buf, 0x16u);
    }
  }

  v11 = objc_opt_class();
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v30 = &__block_descriptor_48_e5_v8__0lu32l8;
  v31 = v11;
  v32 = a2;
  [v12 setCancellationHandler:buf];
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  queue = self->_queue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke;
  v24[3] = &unk_1E861B5C8;
  v24[4] = self;
  v25 = v12;
  v27 = v8;
  v28 = a2;
  v26 = v7;
  v17 = v24;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v30 = &unk_1E861B4E0;
  v31 = v17;
  v18 = queue;
  v19 = v7;
  v20 = v12;
  v21 = v8;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v18, v22);

  v23 = *MEMORY[0x1E69E9840];
}

void __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke_436;
    v14[3] = &unk_1E861AE38;
    v4 = *(a1 + 40);
    v13 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = v6;
    *&v8 = v13;
    *(&v8 + 1) = v5;
    v15 = v8;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to accept a share while the library is not open", buf, 2u);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to accept a share while the library is not open"];
      (*(v10 + 16))(v10, v11);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke_436(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861A878;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 acceptSharedScope:v3 completionHandler:v4];
}

uint64_t __57__CPLLibraryManager_acceptSharedScope_completionHandler___block_invoke_2(uint64_t a1)
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

- (void)fetchSharedScopeFromShareURL:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 cpl_redactedShareURL];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Fetching share info at %@", &buf, 0xCu);
    }
  }

  v11 = objc_opt_class();
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v27 = ___CPLProgressForAsyncCall_block_invoke;
  v28 = &__block_descriptor_48_e5_v8__0lu32l8;
  v29 = v11;
  v30 = a2;
  [v12 setCancellationHandler:&buf];
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke;
  v21[3] = &unk_1E861B5C8;
  v21[4] = self;
  v22 = v12;
  v24 = v8;
  v25 = a2;
  v23 = v7;
  v14 = v21;
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v27 = __cpl_dispatch_async_block_invoke_12172;
  v28 = &unk_1E861B4E0;
  v29 = v14;
  v15 = queue;
  v16 = v7;
  v17 = v12;
  v18 = v8;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
  dispatch_async(v15, v19);

  v20 = *MEMORY[0x1E69E9840];
}

void __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_432;
    v14[3] = &unk_1E861AE38;
    v4 = *(a1 + 40);
    v13 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = v6;
    *&v8 = v13;
    *(&v8 + 1) = v5;
    v15 = v8;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to fetch a share while the library is not open", buf, 2u);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to fetch a share while the library is not open"];
      (*(v10 + 16))(v10, 0, v11);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_432(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861D728;
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 fetchSharedScopeFromShareURL:v5 completionHandler:v4];
}

void __68__CPLLibraryManager_fetchSharedScopeFromShareURL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLManagerOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v8 = [*(a1 + 32) cpl_redactedShareURL];
    *v14 = 138412546;
    *&v14[4] = v8;
    *&v14[12] = 2112;
    *&v14[14] = v5;
    v9 = "Fetched share info at %@: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLManagerOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) cpl_redactedShareURL];
    *v14 = 138412546;
    *&v14[4] = v8;
    *&v14[12] = 2112;
    *&v14[14] = v6;
    v9 = "Failed to fetch share info at %@: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v10, v11, v9, v14, 0x16u);
  }

LABEL_9:

LABEL_10:
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v5, v6);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount", *v14, *&v14[16], v15)}];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)a3 maximumCount:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__CPLLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke;
  v17[3] = &unk_1E861AED8;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  v21 = a4;
  v12 = v17;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v9;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v16);
}

void __106__CPLLibraryManager_getStatusForPendingRecordsSharedToScopeWithIdentifier_maximumCount_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", &v9, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    [v4 getStatusForPendingRecordsSharedToScopeWithIdentifier:*(a1 + 40) maximumCount:*(a1 + 64) completionHandler:*(a1 + 48)];
    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to fetch record status for pending shared records in %{public}@ while the library is not open", &v9, 0xCu);
    }
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v4 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to remove participant from shared library while the library is not open"];
    (*(v7 + 16))(v7, 0, v4);
LABEL_13:
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v8 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v23 = &__block_descriptor_48_e5_v8__0lu32l8;
  v24 = v9;
  v25 = a2;
  [v10 setCancellationHandler:buf];
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke;
  v18[3] = &unk_1E861AFA0;
  v18[4] = self;
  v19 = v10;
  v20 = v5;
  v21 = a2;
  v12 = v18;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v23 = &unk_1E861B4E0;
  v24 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v5;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v13, v16);

  v17 = *MEMORY[0x1E69E9840];
}

void __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_427;
    v9[3] = &unk_1E861ABE0;
    v4 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to check shared library ramp while the library is not open", buf, 2u);
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to check shared library ramp while the library is not open"];
      (*(v6 + 16))(v6, 0, v7);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_427(id *a1)
{
  v2 = [a1[4] platformObject];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E861AF78;
  v5 = a1[6];
  v4 = a1[5];
  [v2 sharedLibraryRampCheckWithCompletionHandler:v3];
}

uint64_t __65__CPLLibraryManager_sharedLibraryRampCheckWithCompletionHandler___block_invoke_2(uint64_t a1)
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

- (void)removeParticipants:(id)a3 fromSharedScopeWithIdentifier:(id)a4 retentionPolicy:(int64_t)a5 exitSource:(int64_t)a6 completionHandler:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v18 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v19 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v29[3] = &unk_1E861D7F0;
  v29[4] = self;
  v30 = v14;
  v33 = v15;
  v34 = a2;
  v31 = v19;
  v32 = v13;
  v35 = a5;
  v36 = a6;
  v21 = v29;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v38 = &unk_1E861B4E0;
  v39 = v21;
  v22 = queue;
  v23 = v13;
  v24 = v19;
  v25 = v15;
  v26 = v14;
  v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v22, v27);

  v28 = *MEMORY[0x1E69E9840];
}

void __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_423;
    v10[3] = &unk_1E861AF28;
    v10[4] = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v14 = *(a1 + 80);
    v13 = *(a1 + 64);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v10];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        *buf = 138543362;
        v16 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to remove participant from shared library %{public}@ while the library is not open", buf, 0xCu);
      }
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to remove participant from shared library while the library is not open"];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_423(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
  v7[3] = &unk_1E861D7C8;
  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  [v2 removeParticipants:v4 fromSharedScopeWithIdentifier:v8 retentionPolicy:v5 exitSource:v6 completionHandler:v7];
}

void __115__CPLLibraryManager_removeParticipants_fromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[4];
        v16 = 138543618;
        v17 = v9;
        v18 = 2112;
        v19 = v7;
        v10 = "Failed to remove participant from shared library %{public}@: %@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_1DC05A000, v11, v12, v10, &v16, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v13 = a1[5];
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v10 = "Successfully removed participants %{public}@ from shared library %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(a1[6] + 16))(a1[6], v5, v7, v6);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)startExitFromSharedScopeWithIdentifier:(id)a3 retentionPolicy:(int64_t)a4 exitSource:(int64_t)a5 completionHandler:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke;
  v25[3] = &unk_1E861D7A0;
  v25[4] = self;
  v26 = v11;
  v27 = v16;
  v28 = v12;
  v29 = a2;
  v30 = a4;
  v31 = a5;
  v18 = v25;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v33 = &unk_1E861B4E0;
  v34 = v18;
  v19 = queue;
  v20 = v16;
  v21 = v12;
  v22 = v11;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v19, v23);

  v24 = *MEMORY[0x1E69E9840];
}

void __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_418;
    v11[3] = &unk_1E861AED8;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11[4] = *(a1 + 32);
    v12 = v4;
    v14 = *(a1 + 72);
    v13 = *(a1 + 56);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v11];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to start exit from shared library %{public}@ while the library is not open", buf, 0xCu);
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to exit from shared library while the library is not open"];
      (*(v8 + 16))(v8, 0, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_418(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2;
  v6[3] = &unk_1E861D778;
  v7 = v3;
  v8 = *(a1 + 48);
  [v2 startExitFromSharedScopeWithIdentifier:v7 retentionPolicy:v4 exitSource:v5 completionHandler:v6];
}

void __105__CPLLibraryManager_startExitFromSharedScopeWithIdentifier_retentionPolicy_exitSource_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v16 = 138543618;
        v17 = v9;
        v18 = 2112;
        v19 = v7;
        v10 = "Failed to exit from shared library %{public}@: %@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 22;
LABEL_8:
        _os_log_impl(&dword_1DC05A000, v11, v12, v10, &v16, v13);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v16 = 138543362;
      v17 = v14;
      v10 = "Successfully started exit from %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 12;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v7, v6);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)createOwnedLibraryShareScopeWithShare:(id)a3 title:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLScopeChange *)CPLLibraryShareScopeChange newScopeChangeWithAutomaticScopeIdentifierForScopeType:4];
  [v11 setShare:v10];

  [v11 setTitle:v9];
  [(CPLLibraryManager *)self createScope:v11 completionHandler:v8];
}

- (void)refreshScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Asking to refresh scope %{public}@", buf, 0xCu);
    }
  }

  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v29 = &__block_descriptor_48_e5_v8__0lu32l8;
  v30 = v13;
  v31 = a2;
  [v14 setCancellationHandler:buf];
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_1E861B1A0;
  v23[4] = self;
  v24 = v7;
  v25 = v14;
  v26 = v8;
  v27 = a2;
  v16 = v23;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v29 = &unk_1E861B4E0;
  v30 = v16;
  v17 = queue;
  v18 = v14;
  v19 = v8;
  v20 = v7;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v17, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_365;
    v14[3] = &unk_1E861AE38;
    v13 = *(a1 + 32);
    v5 = *(&v13 + 1);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v6;
    v15 = v13;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to refresh %{public}@ while the library is not open", buf, 0xCu);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to refresh a scope while the library is not open"];
      (*(v10 + 16))(v10, 0, v11);
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_365(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861D728;
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 refreshScopeWithIdentifier:v5 completionHandler:v4];
}

void __66__CPLLibraryManager_refreshScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLManagerOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v15 = 138412290;
    *&v15[4] = v5;
    v8 = "Successfully updated %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLManagerOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *v15 = 138412546;
    *&v15[4] = v12;
    *&v15[12] = 2112;
    *&v15[14] = v6;
    v8 = "Failed to update %@: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v9, v10, v8, v15, v11);
  }

LABEL_9:

LABEL_10:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount", *v15, *&v15[16], v16)}];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteScopeWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &stru_1F57BD298;
      if (v6)
      {
        v12 = @" (forced)";
      }

      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Asking to delete scope %{public}@%@", buf, 0x16u);
    }
  }

  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  queue = self->_queue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke;
  v25[3] = &unk_1E861D750;
  v25[4] = self;
  v26 = v9;
  v28 = v10;
  v29 = a2;
  v27 = v16;
  v30 = v6;
  v18 = v25;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v32 = &unk_1E861B4E0;
  v33 = v18;
  v19 = queue;
  v20 = v16;
  v21 = v10;
  v22 = v9;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v19, v23);

  v24 = *MEMORY[0x1E69E9840];
}

void __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_361;
    v11[3] = &unk_1E861B090;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11[4] = *(a1 + 32);
    v12 = v4;
    v14 = *(a1 + 72);
    v13 = *(a1 + 56);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v11];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to delete %{public}@ while the library is not open", buf, 0xCu);
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to delete a scope while the library is not open"];
      (*(v8 + 16))(v8, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_361(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861B618;
  v6 = v3;
  v7 = *(a1 + 48);
  [v2 deleteScopeWithIdentifier:v6 forced:v4 completionHandler:v5];
}

void __72__CPLLibraryManager_deleteScopeWithIdentifier_forced_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v14 = 138543618;
        v15 = v7;
        v16 = 2112;
        v17 = v5;
        v8 = "Failed to delete %{public}@: %@";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 22;
LABEL_8:
        _os_log_impl(&dword_1DC05A000, v9, v10, v8, &v14, v11);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138543362;
      v15 = v12;
      v8 = "Successfully deleted %{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 12;
      goto LABEL_8;
    }

LABEL_9:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v3, v4);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateShareForScope:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 share];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Updating share for %@ to %@", buf, 0x16u);
    }
  }

  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      v13 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v14 = objc_opt_class();
  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v30 = &__block_descriptor_48_e5_v8__0lu32l8;
  v31 = v14;
  v32 = a2;
  [v15 setCancellationHandler:buf];
  queue = self->_queue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke;
  v24[3] = &unk_1E861B1A0;
  v24[4] = self;
  v25 = v7;
  v26 = v15;
  v27 = v8;
  v28 = a2;
  v17 = v24;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v30 = &unk_1E861B4E0;
  v31 = v17;
  v18 = queue;
  v19 = v15;
  v20 = v8;
  v21 = v7;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v18, v22);

  v23 = *MEMORY[0x1E69E9840];
}

void __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke_350;
    v14[3] = &unk_1E861AE38;
    v13 = *(a1 + 32);
    v5 = *(&v13 + 1);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v6;
    v15 = v13;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to update %{public}@ while the library is not open", buf, 0xCu);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to create a scope while the library is not open"];
      (*(v10 + 16))(v10, 0, v11);
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke_350(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861D728;
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 updateShareForScope:v5 completionHandler:v4];
}

void __59__CPLLibraryManager_updateShareForScope_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLManagerOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v15 = 138412290;
    *&v15[4] = v5;
    v8 = "Successfully updated %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLManagerOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *v15 = 138412546;
    *&v15[4] = v12;
    *&v15[12] = 2112;
    *&v15[14] = v6;
    v8 = "Failed to update %@: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v9, v10, v8, v15, v11);
  }

LABEL_9:

LABEL_10:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount", *v15, *&v15[16], v16)}];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)createScope:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Creating %@ in the cloud", buf, 0xCu);
    }
  }

  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v29 = &__block_descriptor_48_e5_v8__0lu32l8;
  v30 = v13;
  v31 = a2;
  [v14 setCancellationHandler:buf];
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __51__CPLLibraryManager_createScope_completionHandler___block_invoke;
  v23[3] = &unk_1E861B1A0;
  v23[4] = self;
  v24 = v7;
  v25 = v14;
  v26 = v8;
  v27 = a2;
  v16 = v23;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v29 = &unk_1E861B4E0;
  v30 = v16;
  v17 = queue;
  v18 = v14;
  v19 = v8;
  v20 = v7;
  v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v17, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void __51__CPLLibraryManager_createScope_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v18 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CPLLibraryManager_createScope_completionHandler___block_invoke_348;
    v14[3] = &unk_1E861AE38;
    v13 = *(a1 + 32);
    v5 = *(&v13 + 1);
    v6 = *(a1 + 56);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v6;
    v15 = v13;
    v16 = v7;
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to create %@ while the library is not open", buf, 0xCu);
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to create a scope while the library is not open"];
      (*(v10 + 16))(v10, 0, v11);
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __51__CPLLibraryManager_createScope_completionHandler___block_invoke_348(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CPLLibraryManager_createScope_completionHandler___block_invoke_2;
  v4[3] = &unk_1E861D728;
  v5 = v3;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v2 createScope:v5 completionHandler:v4];
}

void __51__CPLLibraryManager_createScope_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    v7 = __CPLManagerOSLogDomain_0();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v15 = 138412290;
    *&v15[4] = v5;
    v8 = "Successfully created %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  v7 = __CPLManagerOSLogDomain_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *v15 = 138412546;
    *&v15[4] = v12;
    *&v15[12] = 2112;
    *&v15[14] = v6;
    v8 = "Failed to create %@: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_1DC05A000, v9, v10, v8, v15, v11);
  }

LABEL_9:

LABEL_10:
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount", *v15, *&v15[16], v16)}];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)beginInMemoryDownloadOfResource:(id)a3 clientBundleID:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__CPLLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke;
  v19[3] = &unk_1E861B5C8;
  v22 = v11;
  v23 = a2;
  v19[4] = self;
  v20 = v9;
  v21 = v10;
  v13 = v19;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v25 = v13;
  v14 = queue;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v14, v18);
}

void __86__CPLLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__CPLLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_344;
    v10[3] = &unk_1E861D688;
    v11 = *(a1 + 56);
    [v4 beginInMemoryDownloadOfResource:v5 clientBundleID:v6 completionHandler:v10];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "Trying to download a resource in-memory while the library is not open", buf, 2u);
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __86__CPLLibraryManager_beginInMemoryDownloadOfResource_clientBundleID_completionHandler___block_invoke_344(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rampingRequestForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v13 = objc_opt_class();
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v29 = &__block_descriptor_48_e5_v8__0lu32l8;
  v30 = v13;
  v31 = a2;
  [v14 setCancellationHandler:buf];
  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke;
  v22[3] = &unk_1E861D700;
  v22[4] = self;
  v23 = v14;
  v24 = v9;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v16 = v22;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v29 = &unk_1E861B4E0;
  v30 = v16;
  v17 = queue;
  v18 = v14;
  v19 = v9;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v17, v20);

  v21 = *MEMORY[0x1E69E9840];
}

void __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_342;
    v9[3] = &unk_1E861AD48;
    v4 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v12 = *(a1 + 64);
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "Trying to issue ramping request while the library is not open", buf, 2u);
      }
    }

    v6 = *(a1 + 48);
    v7 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to issue ramping request while the library is not open"];
    (*(v6 + 16))(v6, 0, 0, v7);

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_342(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861AD20;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v2 rampingRequestForResourceType:v3 numRequested:v4 completionHandler:v5];
}

uint64_t __82__CPLLibraryManager_rampingRequestForResourceType_numRequested_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))();
    v3 = [*(a1 + 32) totalUnitCount];
    v4 = *(a1 + 32);

    return [v4 setCompletedUnitCount:v3];
  }

  return result;
}

- (void)getStreamingURLOrMediaMakerDataForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v19 = CPLCurrentQOS();
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Running %@ at %@ QOS", buf, 0x16u);
    }
  }

  v20 = objc_opt_class();
  v21 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CPLProgressForAsyncCall_block_invoke;
  v47 = &__block_descriptor_48_e5_v8__0lu32l8;
  v48 = v20;
  v49 = a2;
  [v21 setCancellationHandler:buf];
  queue = self->_queue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke;
  v35[3] = &unk_1E861D6D8;
  v35[4] = self;
  v36 = v21;
  v41 = a2;
  v42 = a4;
  v37 = v34;
  v38 = v14;
  v23 = *&a6->var0.var3;
  v43 = *&a6->var0.var0;
  v44 = v23;
  v45 = *&a6->var1.var1;
  v39 = v15;
  v40 = v16;
  v24 = v35;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v47 = &unk_1E861B4E0;
  v48 = v24;
  v25 = queue;
  v26 = v15;
  v27 = v14;
  v28 = v34;
  v29 = v21;
  v30 = v16;
  v31 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v25, v31);

  v32 = *MEMORY[0x1E69E9840];
}

void __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_338;
    v12[3] = &unk_1E861ACD0;
    v4 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 88);
    v13 = v5;
    v18 = v6;
    v14 = *(a1 + 56);
    v7 = *(a1 + 112);
    v19 = *(a1 + 96);
    v20 = v7;
    v21 = *(a1 + 128);
    v15 = *(a1 + 64);
    v17 = *(a1 + 72);
    v16 = *(a1 + 40);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v12];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to publish a resource while the library is not open", buf, 2u);
      }
    }

    v9 = *(a1 + 72);
    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to publish a resource while the library is not open"];
    (*(v9 + 16))(v9, 0, 0, 0, 0, v10);

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_338(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2;
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

uint64_t __120__CPLLibraryManager_getStreamingURLOrMediaMakerDataForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__CPLLibraryManager_getStreamingURLForResource_intent_hints_timeRange_clientBundleID_completionHandler___block_invoke;
  v18[3] = &unk_1E861D6B0;
  v19 = v14;
  v15 = *&a6->var0.var3;
  v17[0] = *&a6->var0.var0;
  v17[1] = v15;
  v17[2] = *&a6->var1.var1;
  v16 = v14;
  [(CPLLibraryManager *)self getStreamingURLOrMediaMakerDataForResource:a3 intent:a4 hints:a5 timeRange:v17 clientBundleID:a7 completionHandler:v18];
}

- (void)getStreamingURLForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 clientBundleID:(id)a6 completionHandler:(id)a7
{
  v7 = *(MEMORY[0x1E6960C98] + 16);
  v8[0] = *MEMORY[0x1E6960C98];
  v8[1] = v7;
  v8[2] = *(MEMORY[0x1E6960C98] + 32);
  [(CPLLibraryManager *)self getStreamingURLForResource:a3 intent:a4 hints:a5 timeRange:v8 clientBundleID:a6 completionHandler:a7];
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 options:(id)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (__CPLShouldLogQOS_onceToken != -1)
  {
    dispatch_once(&__CPLShouldLogQOS_onceToken, &__block_literal_global_44);
  }

  if (__CPLShouldLogQOS_debugQOS == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v18 = __CPLQOSOSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v20 = CPLCurrentQOS();
      *buf = 138412802;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v39 = v20;
      _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEFAULT, "Running %@(%@) at %@ QOS", buf, 0x20u);
    }
  }

  queue = self->_queue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __110__CPLLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke;
  v31[3] = &unk_1E861F960;
  v36 = v17;
  v37 = a2;
  v31[4] = self;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v22 = v31;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __cpl_dispatch_async_block_invoke_12172;
  v39 = &unk_1E861B4E0;
  v40 = v22;
  v23 = queue;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  v28 = v17;
  v29 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v23, v29);

  v30 = *MEMORY[0x1E69E9840];
}

void __110__CPLLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state] == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v3 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
      }
    }

    v4 = [*(a1 + 32) platformObject];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __110__CPLLibraryManager_beginDownloadForResource_clientBundleID_options_proposedTaskIdentifier_completionHandler___block_invoke_332;
    v11[3] = &unk_1E861D688;
    v12 = *(a1 + 72);
    [v4 beginDownloadForResource:v5 clientBundleID:v6 options:v7 proposedTaskIdentifier:v8 completionHandler:v11];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Trying to download a resource while the library is not open", buf, 2u);
      }
    }

    (*(*(a1 + 72) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)beginDownloadForResource:(id)a3 clientBundleID:(id)a4 intent:(unint64_t)a5 proposedTaskIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:a5];
  [(CPLLibraryManager *)self beginDownloadForResource:v15 clientBundleID:v14 options:v16 proposedTaskIdentifier:v13 completionHandler:v12];
}

- (void)_beginPullChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  v14 = [(CPLLibraryManager *)self currentSession];
  if ([(CPLLibraryManager *)self state]== 2)
  {
    if (!v14)
    {
      v20 = [(CPLChangeSession *)[CPLPullChangeSession alloc] initWithLibraryManager:self];
      [(CPLLibraryManager *)self _setCurrentSession:v20];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __99__CPLLibraryManager__beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
      v21[3] = &unk_1E861D660;
      v21[4] = self;
      v22 = v20;
      v23 = v11;
      v18 = v20;
      [(CPLChangeSession *)v18 beginSessionWithKnownLibraryVersion:v9 resetTracker:v10 completionHandler:v21];

      goto LABEL_18;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to begin a pull session while %@ is already in place", buf, 0xCu);
      }
    }

    v16 = @"Trying to begin a pull session while an other one is already in place";
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Trying to begin a pull session while the library is not open", buf, 2u);
      }
    }

    v16 = @"Trying to begin a pull session while the library is not open";
  }

  v18 = [CPLErrors incorrectMachineStateErrorWithReason:v16];
  (*(v11 + 2))(v11, 0, v18);
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
}

void __99__CPLLibraryManager__beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__CPLLibraryManager__beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke_2;
  v10[3] = &unk_1E861AE38;
  v11 = v3;
  v12 = v4;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v16 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __99__CPLLibraryManager__beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 discardCurrentSession];
    v4 = a1[4];
    v5 = *(a1[7] + 16);
    v6 = *MEMORY[0x1E69E9840];

    v5();
  }

  else
  {
    v7 = [v2 currentSession];
    if (v7)
    {
      v8 = a1[6];
      (*(a1[7] + 16))();
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = a1[6];
          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ was discarded before it was returned", &v14, 0xCu);
        }
      }

      v11 = a1[7];
      v12 = +[CPLErrors libraryClosedError];
      (*(v11 + 16))(v11, 0, v12);
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)beginPullChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__CPLLibraryManager_beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
  v14[3] = &unk_1E861D638;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(CPLLibraryManager *)self _fetchBoundaryKeyIfNecessaryWithSource:@"PullSession" completionHandler:v14];
}

uint64_t __98__CPLLibraryManager_beginPullChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) _beginPullChangeSessionWithKnownLibraryVersion:*(a1 + 40) resetTracker:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

- (void)_beginPushChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  v14 = [(CPLLibraryManager *)self currentSession];
  if ([(CPLLibraryManager *)self state]== 2)
  {
    if (!v14)
    {
      v20 = [[CPLPushChangeSession alloc] initWithLibraryManager:self];
      [(CPLLibraryManager *)self _setCurrentSession:v20];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __99__CPLLibraryManager__beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
      v21[3] = &unk_1E861D660;
      v21[4] = self;
      v22 = v20;
      v23 = v11;
      v18 = v20;
      [(CPLChangeSession *)v18 beginSessionWithKnownLibraryVersion:v9 resetTracker:v10 completionHandler:v21];

      goto LABEL_18;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Trying to begin a push session while %@ is already in place", buf, 0xCu);
      }
    }

    v16 = @"Trying to begin a push session while an other one is already in place";
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Trying to begin a push session while the library is not open", buf, 2u);
      }
    }

    v16 = @"Trying to begin a push session while the library is not open";
  }

  v18 = [CPLErrors incorrectMachineStateErrorWithReason:v16];
  (*(v11 + 2))(v11, 0, v18);
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
}

void __99__CPLLibraryManager__beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__CPLLibraryManager__beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke_2;
  v10[3] = &unk_1E861AE38;
  v11 = v3;
  v12 = v4;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v16 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __99__CPLLibraryManager__beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 discardCurrentSession];
    v4 = a1[4];
    v5 = *(a1[7] + 16);
    v6 = *MEMORY[0x1E69E9840];

    v5();
  }

  else
  {
    v7 = [v2 currentSession];
    if (v7)
    {
      v8 = a1[6];
      (*(a1[7] + 16))();
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = a1[6];
          v14 = 138412290;
          v15 = v10;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "%@ was discarded before it was returned", &v14, 0xCu);
        }
      }

      v11 = a1[7];
      v12 = +[CPLErrors libraryClosedError];
      (*(v11 + 16))(v11, 0, v12);
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)beginPushChangeSessionWithKnownLibraryVersion:(id)a3 resetTracker:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__CPLLibraryManager_beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
  v14[3] = &unk_1E861D638;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(CPLLibraryManager *)self _fetchBoundaryKeyIfNecessaryWithSource:@"PushSession" completionHandler:v14];
}

uint64_t __98__CPLLibraryManager_beginPushChangeSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) _beginPushChangeSessionWithKnownLibraryVersion:*(a1 + 40) resetTracker:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

- (void)_setLibraryVersion:(id)a3
{
  v4 = [a3 copy];
  libraryVersion = self->_libraryVersion;
  self->_libraryVersion = v4;

  MEMORY[0x1EEE66BB8](v4, libraryVersion);
}

- (void)_setCurrentSession:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [CPLTransaction beginTransactionWithIdentifier:@"cpl.client.session" description:@"push/pull session is active" keepPower:1];
  }

  sessionLock = self->_sessionLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CPLLibraryManager__setCurrentSession___block_invoke;
  block[3] = &unk_1E861B128;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(sessionLock, block);
}

uint64_t __40__CPLLibraryManager__setCurrentSession___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 8);
  if (v3)
  {
    if (v1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Setting a new session without finalizing the last", v12, 2u);
        }
      }

      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = a1[6];
      v9 = a1[4];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
      [v7 handleFailureInMethod:v8 object:v9 file:v10 lineNumber:675 description:@"Setting a new session without finalizing the last"];

      abort();
    }

    goto LABEL_3;
  }

  if (!v1)
  {
    v3 = 0;
LABEL_3:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v1;
  v3 = *(v2 + 8);
LABEL_6:
  *(v2 + 8) = v4;

  return MEMORY[0x1EEE66BB8](v4, v3);
}

- (void)discardCurrentSession
{
  sessionLock = self->_sessionLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CPLLibraryManager_discardCurrentSession__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(sessionLock, block);
}

void *__42__CPLLibraryManager_discardCurrentSession__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(*(a1 + 32) + 8);
        v8 = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Discarding current session %@", &v8, 0xCu);
      }

      result = *(*(a1 + 32) + 8);
    }

    [result tearDownWithCompletionHandler:&__block_literal_global_299];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    result = [CPLTransaction endTransactionWithIdentifier:@"cpl.client.session"];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)currentSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12357;
  v10 = __Block_byref_object_dispose__12358;
  v11 = 0;
  sessionLock = self->_sessionLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CPLLibraryManager_currentSession__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CPLStatus)syncStatus
{
  if (!self->_clientLibraryBaseURL)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Can't access configuration with client library base URL", buf, 2u);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:634 description:@"Can't access configuration with client library base URL"];

    abort();
  }

  initLock = self->_initLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CPLLibraryManager_syncStatus__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(initLock, block);
  return self->_syncStatus;
}

void __31__CPLLibraryManager_syncStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 56))
  {
    if (*(v1 + 72))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Client tried to access sync status while the library is not open", v9, 2u);
        }
      }
    }

    else
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, *(*(a1 + 32) + 64), _statusDidChange_12375, _CPLStatusDidChangeNotification, 0, CFNotificationSuspensionBehaviorCoalesce);
      v5 = [[CPLStatus alloc] initWithClientLibraryBaseURL:*(*(a1 + 32) + 88)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;

      v8 = *(*(a1 + 32) + 56);

      [v8 preventDelegateWithDelegationClass:&unk_1F581E028 selector:sel_libraryManagerStatusDidChange_];
    }
  }
}

- (void)_statusDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CPLLibraryManager__statusDidChange__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__CPLLibraryManager__statusDidChange__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    [v2 refetchFromDisk];
    [*(a1 + 32) _updateFingerprintContext];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    [WeakRetained libraryManagerStatusDidChange:*(a1 + 32)];
  }
}

- (CPLConfiguration)configuration
{
  if (!self->_clientLibraryBaseURL)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Can't access configuration with client library base URL", buf, 2u);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:601 description:@"Can't access configuration with client library base URL"];

    abort();
  }

  initLock = self->_initLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CPLLibraryManager_configuration__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_sync(initLock, block);
  return self->_configuration;
}

void __34__CPLLibraryManager_configuration__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 48))
  {
    if (*(v1 + 72))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v2 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_ERROR, "Client tried to access configuration while the library is not open", v9, 2u);
        }
      }
    }

    else
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, *(*(a1 + 32) + 64), _configurationDidChange, @"_CPLConfigurationDidChangeNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
      v5 = [[CPLConfiguration alloc] initWithClientLibraryBaseURL:*(*(a1 + 32) + 88)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      v8 = *(*(a1 + 32) + 48);

      [v8 setConfigurationDictionaryUniquifier:&__block_literal_global_34_10047];
    }
  }
}

- (void)_updateFingerprintContext
{
  if (self->_clientLibraryBaseURL && [(CPLLibraryManager *)self isSystemLibrary])
  {
    v7 = [(CPLLibraryManager *)self _fingerprintContext];
    v3 = +[CPLFingerprintContext sharedContext];

    if (v7 != v3)
    {
      v4 = [(CPLLibraryManager *)self _fingerprintContext];
      v5 = [(CPLLibraryManager *)self syncStatus];
      v6 = [(CPLLibraryManager *)self configuration];
      [v4 updateWithStatus:v5 configuration:v6];
    }
  }
}

- (void)_configurationDidChange
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CPLLibraryManager__configurationDidChange__block_invoke;
  block[3] = &unk_1E861A940;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__CPLLibraryManager__configurationDidChange__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v2 refetchFromDisk];
    if ([*(a1 + 32) isSystemLibrary])
    {
      [*(a1 + 32) _updateFingerprintContext];
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v5 libraryManagerDidChangeConfiguration:*(a1 + 32)];
    }
  }
}

- (void)boostPriorityForScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __75__CPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) platformObject];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__CPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_1E861B618;
    v3 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v2 boostPriorityForScopeWithIdentifier:v3 completionHandler:v8];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [objc_opt_class() stateDescriptionForState:{objc_msgSend(v4, "state")}];
    v7 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't boost priority for %@ in state %@", v5, v6];

    (*(*(a1 + 48) + 16))();
  }
}

void __75__CPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CPLLibraryManager_boostPriorityForScopeWithIdentifier_completionHandler___block_invoke_3;
  v10[3] = &unk_1E861ECD0;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)deactivateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__CPLLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861ABE0;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v6;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __69__CPLLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) platformObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__CPLLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2;
    v7[3] = &unk_1E861B618;
    v3 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    [v2 deactivateScopeWithIdentifier:v3 completionHandler:v7];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() stateDescriptionForState:{objc_msgSend(v4, "state")}];
    v6 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't disable PrimarySync in state %@", v5];

    (*(*(a1 + 48) + 16))();
  }
}

void __69__CPLLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CPLLibraryManager_deactivateScopeWithIdentifier_completionHandler___block_invoke_3;
  v10[3] = &unk_1E861ECD0;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)activateScopeWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __67__CPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = [*(a1 + 32) platformObject];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__CPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_1E861B618;
    v3 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    [v2 activateScopeWithIdentifier:v3 completionHandler:v8];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [objc_opt_class() stateDescriptionForState:{objc_msgSend(v4, "state")}];
    v7 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't enable %@ in state %@", v5, v6];

    (*(*(a1 + 48) + 16))();
  }
}

void __67__CPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CPLLibraryManager_activateScopeWithIdentifier_completionHandler___block_invoke_3;
  v10[3] = &unk_1E861ECD0;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_closeDeactivating:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke;
  v12[3] = &unk_1E861F2E8;
  v12[4] = self;
  v13 = v6;
  v14 = a3;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_2;
    block[3] = &unk_1E861A940;
    block[4] = v2;
    dispatch_sync(v3, block);
    [*(a1 + 32) setState:3];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_3;
    v19[3] = &unk_1E861F2E8;
    v4 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v20 = v4;
    v21 = *(a1 + 48);
    v5 = MEMORY[0x1E128EBA0](v19);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_217;
    v12[3] = &unk_1E861AB40;
    v12[4] = v6;
    v8 = v5;
    v13 = v8;
    v14 = &v15;
    dispatch_sync(v7, v12);
    if (*(v16 + 24) == 1)
    {
      v8[2](v8);
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [objc_opt_class() stateDescriptionForState:{objc_msgSend(v9, "state")}];
    v11 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't close a cloud library in state %@", v10];

    (*(*(a1 + 40) + 16))();
  }
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(*(a1 + 32) + 64), @"_CPLConfigurationDidChangeNotification", 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 56))
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v6, *(*(a1 + 32) + 64), _CPLStatusDidChangeNotification, 0);
    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;
  }
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEBUG, "%@ closing", buf, 0xCu);
    }
  }

  dispatch_suspend(*(*(a1 + 32) + 16));
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_216;
  v13 = &unk_1E861B618;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = MEMORY[0x1E128EBA0](&v10);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) platformObject];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 deactivateWithCompletionHandler:v5];
  }

  else
  {
    [v7 closeWithCompletionHandler:v5];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_217(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(v5 + 8);
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "%@ is closing in the middle of %@", buf, 0x16u);
      }

      v1 = *(a1 + 32);
      v2 = *(v1 + 8);
    }

    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_218;
    v13 = &unk_1E861AA50;
    v14 = v1;
    v15 = *(a1 + 40);
    [v2 tearDownWithCompletionHandler:&v10];
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    if (v8)
    {
      *(v7 + 8) = 0;

      [CPLTransaction endTransactionWithIdentifier:@"cpl.client.session", v10, v11, v12, v13, v14];
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_218(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_2_219;
  v5[3] = &unk_1E861B4E0;
  v6 = *(a1 + 40);
  v2 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v8 = v2;
  v3 = v1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v3, v4);
}

void __58__CPLLibraryManager__closeDeactivating_completionHandler___block_invoke_216(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setState:0];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ closed", &v7, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 16));

  v6 = *MEMORY[0x1E69E9840];
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CPLLibraryManager_openWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __47__CPLLibraryManager_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state])
  {
    v2 = *(a1 + 32);
    v3 = [objc_opt_class() stateDescriptionForState:{objc_msgSend(v2, "state")}];
    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Can't open a cloud library in state %@", v3];

    (*(*(a1 + 40) + 16))();
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 32) setState:1];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "%@ opening", buf, 0xCu);
      }
    }

    dispatch_suspend(*(*(a1 + 32) + 16));
    v7 = [*(a1 + 32) platformObject];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__CPLLibraryManager_openWithCompletionHandler___block_invoke_204;
    v11[3] = &unk_1E861AAA0;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    [v7 openWithCompletionHandler:v11];

    v9 = *MEMORY[0x1E69E9840];
  }
}

void __47__CPLLibraryManager_openWithCompletionHandler___block_invoke_204(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_DEBUG, "%@ opened", buf, 0xCu);
    }
  }

  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 32);
        *buf = 138412546;
        v43 = v19;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_DEBUG, "%@ failed opening with error %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) setState:0];
    goto LABEL_29;
  }

  v20 = *(*(a1 + 32) + 112);
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v22 = v21;
  if (v13 && ([v21 isEqual:v13] & 1) != 0)
  {

    if (!*(*(a1 + 32) + 112))
    {
LABEL_15:
      v23 = [v13 copy];
      v24 = *(a1 + 32);
      v25 = *(v24 + 112);
      *(v24 + 112) = v23;
LABEL_19:
    }
  }

  else
  {

    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(*(a1 + 32) + 112);
        *buf = 138412546;
        v43 = v26;
        v44 = 2112;
        v45 = v13;
        _os_log_impl(&dword_1DC05A000, v25, OS_LOG_TYPE_ERROR, "Unexpected implementation library identifier. Found '%@', expected '%@'", buf, 0x16u);
      }

      goto LABEL_19;
    }
  }

  v27 = *(a1 + 32);
  if (!v27[11])
  {
    v28 = [v15 copy];
    v29 = *(a1 + 32);
    v30 = *(v29 + 88);
    *(v29 + 88) = v28;

    v27 = *(a1 + 32);
  }

  if (!v27[15])
  {
    v31 = [v14 copy];
    v32 = *(a1 + 32);
    v33 = *(v32 + 120);
    *(v32 + 120) = v31;

    v27 = *(a1 + 32);
  }

  [v27 _setLibraryVersion:v12];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v34 = __CPLManagerOSLogDomain_0();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 32);
      v36 = *(v35 + 160);
      v37 = *(v35 + 168);
      *buf = 138413314;
      v43 = v35;
      v44 = 2112;
      v45 = v13;
      v46 = 2112;
      v47 = v12;
      v48 = 2048;
      v49 = v36;
      v50 = 2048;
      v51 = v37;
      _os_log_impl(&dword_1DC05A000, v34, OS_LOG_TYPE_DEBUG, "%@ opened with identifier %@ and version %@. Size of resources to upload is %llu (%llu) bytes", buf, 0x34u);
    }
  }

  [*(a1 + 32) setState:2];
  [*(a1 + 32) _fetchBoundaryKeyIfNecessaryWithSourceLocked:@"Open" completionHandler:&__block_literal_global_210];
LABEL_29:
  v38 = *(a1 + 32);
  v39 = *(v38 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CPLLibraryManager_openWithCompletionHandler___block_invoke_211;
  block[3] = &unk_1E861A940;
  block[4] = v38;
  dispatch_sync(v39, block);
  if (!v11)
  {
    [*(a1 + 32) _updateFingerprintContext];
  }

  (*(*(a1 + 40) + 16))();
  dispatch_resume(*(*(a1 + 32) + 16));

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_fetchBoundaryKeyIfNecessaryWithSourceLocked:(id)a3 completionHandler:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CPLLibraryManager *)self state]== 2)
  {
    if (self->_hasFetchedBoundaryKey || self->_forManagement)
    {
      v7[2](v7, 0);
    }

    else
    {
      v11 = [(CPLLibraryManager *)self _fingerprintContext];
      v12 = [(CPLLibraryManager *)self libraryIdentifier];
      v17[0] = v12;
      v17[1] = v6;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__CPLLibraryManager__fetchBoundaryKeyIfNecessaryWithSourceLocked_completionHandler___block_invoke;
      v14[3] = &unk_1E861B618;
      v14[4] = self;
      v15 = v7;
      [v11 refreshBoundaryKeyWithSource:v13 completionHandler:v14];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to refresh fingerprint context while the library is not open", buf, 2u);
      }
    }

    v9 = +[CPLErrors libraryClosedError];
    (v7)[2](v7, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __84__CPLLibraryManager__fetchBoundaryKeyIfNecessaryWithSourceLocked_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__CPLLibraryManager__fetchBoundaryKeyIfNecessaryWithSourceLocked_completionHandler___block_invoke_2;
  v10[3] = &unk_1E861ABE0;
  v11 = v3;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v15 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __84__CPLLibraryManager__fetchBoundaryKeyIfNecessaryWithSourceLocked_completionHandler___block_invoke_2(void *a1)
{
  if (!a1[4])
  {
    *(a1[5] + 74) = 1;
  }

  return (*(a1[6] + 16))();
}

- (void)_fetchBoundaryKeyIfNecessaryWithSource:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CPLLibraryManager__fetchBoundaryKeyIfNecessaryWithSource_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (id)_fingerprintContext
{
  v2 = [(CPLLibraryManager *)self platformObject];
  v3 = [v2 fingerprintContextIfKnown];

  if (!v3)
  {
    v3 = +[CPLFingerprintContext sharedContext];
  }

  return v3;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [objc_opt_class() stateDescriptionForState:self->_state];
        *buf = 138412546;
        v13 = self;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "at dealloc time, %@ should not be in state %@", buf, 0x16u);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
    v9 = [objc_opt_class() stateDescriptionForState:self->_state];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:349 description:{@"at dealloc time, %@ should not be in state %@", self, v9}];

LABEL_14:
    abort();
  }

  if (self->_currentSession)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Current session not finished", buf, 2u);
      }
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
    [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:350 description:@"Current session not finished"];
    goto LABEL_14;
  }

  v11.receiver = self;
  v11.super_class = CPLLibraryManager;
  [(CPLLibraryManager *)&v11 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)barrier
{
  v2 = [(CPLLibraryManager *)self platformObject];
  [v2 barrier];
}

- (CPLLibraryManager)initWithClientLibraryBaseURL:(id)a3 cloudLibraryStateStorageURL:(id)a4 cloudLibraryResourceStorageURL:(id)a5 libraryIdentifier:(id)a6 mainScopeIdentifier:(id)a7 options:(unint64_t)a8
{
  v60 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__CPLLibraryManager_initWithClientLibraryBaseURL_cloudLibraryStateStorageURL_cloudLibraryResourceStorageURL_libraryIdentifier_mainScopeIdentifier_options___block_invoke;
  block[3] = &unk_1E861A940;
  v20 = self;
  v57 = v20;
  if (initWithClientLibraryBaseURL_cloudLibraryStateStorageURL_cloudLibraryResourceStorageURL_libraryIdentifier_mainScopeIdentifier_options__onceToken != -1)
  {
    dispatch_once(&initWithClientLibraryBaseURL_cloudLibraryStateStorageURL_cloudLibraryResourceStorageURL_libraryIdentifier_mainScopeIdentifier_options__onceToken, block);
  }

  v55.receiver = v20;
  v55.super_class = CPLLibraryManager;
  v21 = [(CPLLibraryManager *)&v55 init];
  v22 = v21;
  if (v21)
  {
    v21->_preventObserving = 1;
    v23 = [[_CPLWeakLibraryManager alloc] initWithLibraryManager:v21];
    weakSelf = v22->_weakSelf;
    v22->_weakSelf = v23;

    v25 = [v15 copy];
    clientLibraryBaseURL = v22->_clientLibraryBaseURL;
    v22->_clientLibraryBaseURL = v25;

    if (!v22->_clientLibraryBaseURL)
    {
      v22->_forManagement = 1;
    }

    v27 = [v16 copy];
    cloudLibraryStateStorageURL = v22->_cloudLibraryStateStorageURL;
    v22->_cloudLibraryStateStorageURL = v27;

    v29 = [v17 copy];
    cloudLibraryResourceStorageURL = v22->_cloudLibraryResourceStorageURL;
    v22->_cloudLibraryResourceStorageURL = v29;

    v31 = [v18 copy];
    libraryIdentifier = v22->_libraryIdentifier;
    v22->_libraryIdentifier = v31;

    v33 = [v19 copy];
    mainScopeIdentifier = v22->_mainScopeIdentifier;
    v22->_mainScopeIdentifier = v33;

    v22->_libraryOptions = a8;
    v35 = CPLCopyDefaultSerialQueueAttributes();
    v36 = dispatch_queue_create("com.apple.cpl.librarymanager", v35);
    queue = v22->_queue;
    v22->_queue = v36;

    v38 = CPLCopyDefaultSerialQueueAttributes();
    v39 = dispatch_queue_create("com.apple.cpl.librarymanager.session", v38);
    sessionLock = v22->_sessionLock;
    v22->_sessionLock = v39;

    v41 = CPLCopyDefaultSerialQueueAttributes();
    v42 = dispatch_queue_create("com.apple.cpl.librarymanager.init", v41);
    initLock = v22->_initLock;
    v22->_initLock = v42;

    v44 = +[CPLPlatform currentPlatform];
    v45 = [v44 newPlatformImplementationForObject:v22];
    platformObject = v22->_platformObject;
    v22->_platformObject = v45;

    if (!v22->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v50 = __CPLManagerOSLogDomain_0();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          *buf = 138412290;
          v59 = v51;
          v52 = v51;
          _os_log_impl(&dword_1DC05A000, v50, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLLibraryManager.m"];
      [v53 handleFailureInMethod:a2 object:v22 file:v54 lineNumber:302 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v47 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v22;
        _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_DEBUG, "Initializing %@", buf, 0xCu);
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return v22;
}

void __155__CPLLibraryManager_initWithClientLibraryBaseURL_cloudLibraryStateStorageURL_cloudLibraryResourceStorageURL_libraryIdentifier_mainScopeIdentifier_options___block_invoke(uint64_t a1)
{
  v2 = +[CPLPlatform defaultPlatform];

  if (!v2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLManagerOSLogDomain_0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "No platform has been currently selected. Automatically picking the appropriate one", v5, 2u);
      }
    }

    v4 = *(a1 + 32);
    [objc_opt_class() useCloudPhotoDaemonImplementation];
  }
}

+ (id)descriptionForExitSource:(int64_t)a3
{
  v4 = [a1 mappingExitSources];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown exit source (%ld)", a3];
  }

  v8 = v7;

  return v8;
}

+ (NSDictionary)mappingExitSources
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CPLLibraryManager_mappingExitSources__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (mappingExitSources_onceToken != -1)
  {
    dispatch_once(&mappingExitSources_onceToken, block);
  }

  v2 = mappingExitSources_mappingExitSources;

  return v2;
}

void __39__CPLLibraryManager_mappingExitSources__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableExitSources];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [*(a1 + 32) availableExitSources];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CPLLibraryManager_mappingExitSources__block_invoke_2;
  v8[3] = &unk_1E861FF60;
  v5 = v3;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = mappingExitSources_mappingExitSources;
  mappingExitSources_mappingExitSources = v5;
  v7 = v5;
}

+ (NSDictionary)mappingRetentionPolicies
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CPLLibraryManager_mappingRetentionPolicies__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (mappingRetentionPolicies_onceToken != -1)
  {
    dispatch_once(&mappingRetentionPolicies_onceToken, block);
  }

  v2 = mappingRetentionPolicies_mappingRetentionPolicies;

  return v2;
}

void __45__CPLLibraryManager_mappingRetentionPolicies__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availableRetentionPolicies];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [*(a1 + 32) availableRetentionPolicies];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CPLLibraryManager_mappingRetentionPolicies__block_invoke_2;
  v8[3] = &unk_1E861FF60;
  v5 = v3;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = mappingRetentionPolicies_mappingRetentionPolicies;
  mappingRetentionPolicies_mappingRetentionPolicies = v5;
  v7 = v5;
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)descriptionForProvideContentResult:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861D9A0[a3];
  }
}

+ (id)stateDescriptionForState:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861D978[a3];
  }
}

+ (void)useCloudPhotoDaemonImplementation
{
  v2 = +[CPLPlatform defaultPlatform];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(CPLPlatform);
  }

  v5 = v4;

  [CPLPlatform setProxyImplementationForPlatform:v5];
  [CPLPlatform setDefaultPlatform:v5];
}

+ (NSArray)allLibraryOptionsDescriptions
{
  v2 = [a1 mappingForLibraryOptions];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  return v4;
}

+ (unint64_t)optionsFromDescription:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _reverseMappingForLibraryOptions];
  v6 = [v4 componentsSeparatedByString:@"|"];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v21 + 1) + 8 * i) stringByTrimmingCharactersInSet:{v7, v21}];
        v15 = [v5 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 unsignedIntegerValue];
        }

        else
        {
          v18 = [v14 integerValue];
          v17 = v18 & ~(v18 >> 63);
        }

        v11 |= v17;
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)descriptionForLibraryOptions:(unint64_t)a3
{
  v4 = [a1 mappingForLibraryOptions];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__CPLLibraryManager_descriptionForLibraryOptions___block_invoke;
  v14 = &unk_1E861D5E8;
  v16 = &v17;
  v6 = v5;
  v15 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:&v11];
  if (v18[3])
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v6 componentsJoinedByString:@"|"];
    v9 = [v7 initWithFormat:@"%@|%lu", v8, v18[3], v11, v12, v13, v14];
  }

  else
  {
    v9 = [v6 componentsJoinedByString:@"|"];
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __50__CPLLibraryManager_descriptionForLibraryOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 unsignedIntegerValue];
  if ((*(*(*(a1 + 40) + 8) + 24) & v5) != 0)
  {
    v6 = v5;
    [*(a1 + 32) addObject:v7];
    *(*(*(a1 + 40) + 8) + 24) &= ~v6;
  }
}

+ (id)_reverseMappingForLibraryOptions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CPLLibraryManager__reverseMappingForLibraryOptions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_reverseMappingForLibraryOptions_onceToken != -1)
  {
    dispatch_once(&_reverseMappingForLibraryOptions_onceToken, block);
  }

  v2 = _reverseMappingForLibraryOptions_reverseMapping;

  return v2;
}

void __53__CPLLibraryManager__reverseMappingForLibraryOptions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mappingForLibraryOptions];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CPLLibraryManager__reverseMappingForLibraryOptions__block_invoke_2;
  v6[3] = &unk_1E861D5C0;
  v3 = v2;
  v7 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = _reverseMappingForLibraryOptions_reverseMapping;
  _reverseMappingForLibraryOptions_reverseMapping = v3;
  v5 = v3;
}

+ (NSDictionary)mappingForLibraryOptions
{
  if (mappingForLibraryOptions_onceToken != -1)
  {
    dispatch_once(&mappingForLibraryOptions_onceToken, &__block_literal_global_12489);
  }

  v3 = mappingForLibraryOptions_mapping;

  return v3;
}

void __45__CPLLibraryManager_mappingForLibraryOptions__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F57EF4E8;
  v3[1] = &unk_1F57EF500;
  v4[0] = @"primary-scope-management";
  v4[1] = @"library-scope-sync";
  v3[2] = &unk_1F57EF518;
  v3[3] = &unk_1F57EF530;
  v4[2] = @"cmm-scope-sync";
  v4[3] = @"share-scope-sync";
  v3[4] = &unk_1F57EF548;
  v3[5] = &unk_1F57EF560;
  v4[4] = @"collection-share-scope-sync";
  v4[5] = @"inactive-scope-sync";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = mappingForLibraryOptions_mapping;
  mappingForLibraryOptions_mapping = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)unblockEngineElementOnce:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CPLLibraryManager_CPLManagement__unblockEngineElementOnce___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __61__CPLLibraryManager_CPLManagement__unblockEngineElementOnce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 unblockEngineElementOnce:*(a1 + 40)];
}

- (void)unblockEngineElement:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CPLLibraryManager_CPLManagement__unblockEngineElement___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __57__CPLLibraryManager_CPLManagement__unblockEngineElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 unblockEngineElement:*(a1 + 40)];
}

- (void)blockEngineElement:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLLibraryManager_CPLManagement__blockEngineElement___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __55__CPLLibraryManager_CPLManagement__blockEngineElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 blockEngineElement:*(a1 + 40)];
}

- (void)reportMiscInformation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CPLLibraryManager_CPLManagement__reportMiscInformation___block_invoke;
  v10[3] = &unk_1E861B290;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __58__CPLLibraryManager_CPLManagement__reportMiscInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 reportMiscInformation:*(a1 + 40)];
}

- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CPLLibraryManager_CPLManagement__reportSetting_hasBeenSetToValue___block_invoke;
  v14[3] = &unk_1E861B1C8;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __68__CPLLibraryManager_CPLManagement__reportSetting_hasBeenSetToValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  v4 = v2;
  if (*(a1 + 48))
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = @"nil";
  }

  [v2 reportSetting:*(a1 + 40) hasBeenSetToValue:v3];
}

- (void)reportSetting:(id)a3 hasBeenEnabled:(BOOL)a4
{
  if (a4)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  [(CPLLibraryManager *)self reportSetting:a3 hasBeenSetToValue:v4];
}

- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)a3 related:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__CPLLibraryManager_CPLManagement__cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke;
  v16[3] = &unk_1E861B090;
  v16[4] = self;
  v17 = v8;
  v19 = a4;
  v18 = v9;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __116__CPLLibraryManager_CPLManagement__cloudCacheGetDescriptionForRecordWithScopedIdentifier_related_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 cloudCacheGetDescriptionForRecordWithScopedIdentifier:*(a1 + 40) related:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)a3 desiredProperties:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __119__CPLLibraryManager_CPLManagement__getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke;
  v18[3] = &unk_1E861B018;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v23 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

void __119__CPLLibraryManager_CPLManagement__getCloudCacheRecordsWithLocalScopedIdentifiers_desiredProperties_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getCloudCacheRecordsWithLocalScopedIdentifiers:*(a1 + 40) desiredProperties:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)getCloudCacheForRecordWithScopedIdentifier:(id)a3 completionHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__CPLLibraryManager_CPLManagement__getCloudCacheForRecordWithScopedIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E861B448;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  [(CPLLibraryManager *)self getCloudCacheRecordsWithLocalScopedIdentifiers:v8 desiredProperties:0 completionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __97__CPLLibraryManager_CPLManagement__getCloudCacheForRecordWithScopedIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    v7 = *(a1 + 40);
    v9 = v6;
    if (v6)
    {
      (*(v7 + 16))(v7, v6, 0);
    }

    else
    {
      v8 = [CPLErrors cplErrorWithCode:25 description:@"record %@ is not known to cloud cache", *(a1 + 32)];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

- (void)getStatusesForScopesWithIdentifiers:(id)a3 includeStorages:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__CPLLibraryManager_CPLManagement__getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke;
  v16[3] = &unk_1E861B090;
  v16[4] = self;
  v17 = v8;
  v19 = a4;
  v18 = v9;
  v11 = v16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v21 = v11;
  v12 = queue;
  v13 = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

void __106__CPLLibraryManager_CPLManagement__getStatusesForScopesWithIdentifiers_includeStorages_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getStatusesForScopesWithIdentifiers:*(a1 + 40) includeStorages:*(a1 + 56) completionHandler:*(a1 + 48)];
}

- (void)getStatusArrayForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CPLLibraryManager_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __82__CPLLibraryManager_CPLManagement__getStatusArrayForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getStatusArrayForComponents:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getStatusForComponents:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__CPLLibraryManager_CPLManagement__getStatusForComponents_completionHandler___block_invoke;
  v14[3] = &unk_1E861B3D0;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v9 = v14;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v18 = v9;
  v10 = queue;
  v11 = v7;
  v12 = v6;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void __77__CPLLibraryManager_CPLManagement__getStatusForComponents_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getStatusForComponents:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)getListOfComponentsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CPLLibraryManager_CPLManagement__getListOfComponentsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_12172;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __77__CPLLibraryManager_CPLManagement__getListOfComponentsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) platformObject];
  [v2 getListOfComponentsWithCompletionHandler:*(a1 + 40)];
}

@end