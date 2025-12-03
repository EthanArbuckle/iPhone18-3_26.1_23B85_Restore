@interface CPLCloudKitTransport
+ (BOOL)allowsSyncOverCellular;
+ (BOOL)allowsSyncOverExpensiveNetwork;
+ (BOOL)allowsUserInitiatedOperationsOverExpensiveNetwork;
+ (NSArray)involvedProcesses;
+ (id)_betterErrorForRecordId:(id)id recordError:(id)error;
+ (id)_errorsByTaskForTasksByRecordId:(id)id fromUnderlyingError:(id)error;
- (BOOL)_isAppLibrary;
- (BOOL)canBoostBackgroundOperations;
- (BOOL)canBoostOperations;
- (BOOL)getProposedStagingScopeIdentifier:(id *)identifier stagingTransportScope:(id *)scope forScope:(id)forScope transportScope:(id)transportScope transportUserIdentifier:(id)userIdentifier;
- (BOOL)isAppLibrary;
- (BOOL)isForeground;
- (BOOL)isNetworkConnected;
- (BOOL)isNewTransportScope:(id)scope compatibleWithOldTransportScope:(id)transportScope;
- (BOOL)isResourceDynamic:(id)dynamic;
- (BOOL)isSystemLibrary;
- (BOOL)shouldIgnoreScopeWithIdentifier:(id)identifier;
- (BOOL)shouldIgnoreZoneWithZoneID:(id)d;
- (BOOL)shouldRunOperationsWithError:(id *)error;
- (CPLCloudKitTransport)initWithAbstractObject:(id)object;
- (NSArray)involvedProcesses;
- (NSString)cloudKitClientIdentifier;
- (NSString)defaultSourceBundleIdentifier;
- (NSString)libraryIdentifier;
- (NSString)mainScopeIdentifier;
- (id)_tempDestinationURLForRecoveredDataWithTempFolderURL:(id)l;
- (id)acceptTaskForSharedScope:(id)scope completionHandler:(id)handler;
- (id)acquireReschedulerTaskWithCompletionHandler:(id)handler;
- (id)cleanupStagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)createGroupForAcceptingLibraryShare;
- (id)createGroupForAcceptingMomentShare;
- (id)createGroupForAnalysisDownload;
- (id)createGroupForChangeDownload;
- (id)createGroupForChangeUpload;
- (id)createGroupForCleanupLibrary;
- (id)createGroupForComputeStateDownloadOnDemand;
- (id)createGroupForComputeStateDownloadPrefetch;
- (id)createGroupForComputeStateUpload;
- (id)createGroupForDownloadWithIntent:(unint64_t)intent priority:(unint64_t)priority;
- (id)createGroupForExitSharedLibrary;
- (id)createGroupForFeedback;
- (id)createGroupForFetchScopeListChanges;
- (id)createGroupForFetchingExistingSharedScope;
- (id)createGroupForFetchingLibraryShare;
- (id)createGroupForFetchingMomentShare;
- (id)createGroupForFixUpTasks;
- (id)createGroupForInitialDownload;
- (id)createGroupForInitialUpload;
- (id)createGroupForLibraryStateCheck;
- (id)createGroupForMovieStreamingWithIntent:(unint64_t)intent;
- (id)createGroupForPropagateChanges;
- (id)createGroupForPruningCheck;
- (id)createGroupForPublishingLibraryShare;
- (id)createGroupForPublishingMomentShare;
- (id)createGroupForQueryUserIdentities;
- (id)createGroupForResetSync;
- (id)createGroupForReshare;
- (id)createGroupForSendExitStatus;
- (id)createGroupForSetup;
- (id)createGroupForSharedLibraryRampCheck;
- (id)createGroupForStagedScopeCleanup;
- (id)createGroupForThumbnailPrefetch;
- (id)createGroupForThumbnailsDownload;
- (id)createGroupForTransportScopeDelete;
- (id)createGroupForTransportScopeRefresh;
- (id)createGroupForTransportScopeUpdate;
- (id)createReschedulerForSession:(id)session;
- (id)createScopeTaskForScope:(id)scope completionHandler:(id)handler;
- (id)deleteTransportScope:(id)scope scope:(id)a4 completionHandler:(id)handler;
- (id)descriptionForTransportScope:(id)scope;
- (id)downloadBatchTaskForSyncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)downloadComputeStatesWithScopedIdentifiers:(id)identifiers scope:(id)scope sharedScope:(id)sharedScope targetStorageURL:(id)l transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)engineLibrary;
- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)handler;
- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)anchor progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)fetchTaskForScopeWithShareURL:(id)l completionHandler:(id)handler;
- (id)fetchTransportScopeForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler;
- (id)fixUpSparseRecordsTaskWithTasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)getCurrentSyncAnchorWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler;
- (id)getScopeInfoWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler;
- (id)getStreamingURLTaskForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)self0;
- (id)inMemoryDownloadTaskForResource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)handler;
- (id)interestingZoneIDsForCoordinator:(id)coordinator;
- (id)queryTaskForCursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)queryUserDetailsTaskForParticipants:(id)participants completionHandler:(id)handler;
- (id)rampingRequestTaskForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler;
- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0;
- (id)reshareRecordsTaskWithRecords:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)resourceCheckTaskForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler;
- (id)resourcesDownloadTaskWithCompletionHandler:(id)handler;
- (id)scopeNameForTransportScope:(id)scope;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)sendFeedbackTaskForMessages:(id)messages completionHandler:(id)handler;
- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)handler;
- (id)simpleDescriptionForSyncAnchor:(id)anchor;
- (id)startExitTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (id)tentativeConcreteScopeForScope:(id)scope;
- (id)transportScopeForUpgradeFromScopeName:(id)name;
- (id)updateContributorsTaskWithSharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)updateShareTaskForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler;
- (id)updateTransportScope:(id)scope scope:(id)a4 scopeChange:(id)change completionHandler:(id)handler;
- (id)uploadBatchTaskForBatch:(id)batch scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)uploadComputeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)handler;
- (void)_addBackgroundSchedulingStatusToStatusEntries:(id)entries now:(id)now;
- (void)_cleanTempRecoveredDataURL:(id)l;
- (void)_coordinator:(id)_coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature tempFolderURL:(id)l completionHandler:(id)handler;
- (void)_disableSchedulerBecauseAccountIsUnavailableWithReason:(id)reason;
- (void)_enableSchedulerBecauseAccountIsAvailable;
- (void)_failAllFutureOperationsWithContainerHasBeenWipedError;
- (void)_forceUpdateAccountInfoWithReason:(id)reason completionHandler:(id)handler;
- (void)_noteContainerHasBeenWiped;
- (void)_startWatchingAccountInfoChangesWithCompletionHandler:(id)handler;
- (void)_stopWatchingAccountInfoChanges;
- (void)_updateAccountInfoWithCompletionHandler:(id)handler;
- (void)_updateBudgets;
- (void)_updateStateWithAccountInfo:(id)info walrusEnabledDefault:(id)default;
- (void)_updateStateWithAccountStatus:(int64_t)status;
- (void)_withTempCKAssetForData:(id)data tempFolderURL:(id)l block:(id)block;
- (void)acquireHelperWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler;
- (void)coordinator:(id)coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler;
- (void)coordinatorDidReceiveAPushNotification:(id)notification;
- (void)duetTicketProviderBlockedStatusDidChange;
- (void)findPersistedInitialSyncSession:(id)session completionHandler:(id)handler;
- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)handler;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)getSystemBudgetsWithCompletionHandler:(id)handler;
- (void)getTemporaryFolderWithName:(id)name completionHandler:(id)handler;
- (void)launchOperation:(id)operation type:(int64_t)type;
- (void)openWithCompletionHandler:(id)handler;
- (void)processTaskErrorIfNeeded:(id)needed forTask:(id)task;
- (void)registerHelper:(id)helper withIdentifier:(id)identifier;
- (void)reschedulerManager:(id)manager didUpdateBlockedState:(id)state;
- (void)setIsSignificantWorkPending:(BOOL)pending;
- (void)testKey:(id)key value:(id)value completionHandler:(id)handler;
- (void)updateAccountEPPCapability:(int64_t)capability;
- (void)upgradeFlags:(id)flags fromTransportScope:(id)scope;
@end

@implementation CPLCloudKitTransport

- (id)createGroupForFetchScopeListChanges
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_100004218(self);
  }

  else
  {
    [v4 setName:@"Fetching Zone Changes"];
  }

  return v5;
}

+ (BOOL)allowsSyncOverCellular
{
  if (qword_1002C53E0 != -1)
  {
    sub_100003F00();
  }

  return byte_1002BFB60;
}

+ (BOOL)allowsSyncOverExpensiveNetwork
{
  if (qword_1002C53E8 != -1)
  {
    sub_10000313C();
  }

  return byte_1002BFB61;
}

- (NSString)defaultSourceBundleIdentifier
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  clientAppBundleIdentifier = [engineLibrary clientAppBundleIdentifier];

  return clientAppBundleIdentifier;
}

- (BOOL)isForeground
{
  engineLibrary = [(CPLCloudKitTransport *)self engineLibrary];
  scheduler = [engineLibrary scheduler];
  isClientInForeground = [scheduler isClientInForeground];

  return isClientInForeground;
}

- (id)engineLibrary
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];

  return engineLibrary;
}

- (BOOL)canBoostOperations
{
  engineLibrary = [(CPLCloudKitTransport *)self engineLibrary];
  systemMonitor = [engineLibrary systemMonitor];
  canBoostOperations = [systemMonitor canBoostOperations];

  return canBoostOperations;
}

- (BOOL)_isAppLibrary
{
  mainScopeIdentifier = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  v3 = [mainScopeIdentifier hasPrefix:CPLMainScopeIdentifierForAppPrefix];

  return v3;
}

- (NSString)mainScopeIdentifier
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  mainScopeIdentifier = [engineLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (BOOL)isSystemLibrary
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  isSystemLibrary = [engineLibrary isSystemLibrary];

  return isSystemLibrary;
}

- (BOOL)isAppLibrary
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  isAppLibrary = [engineLibrary isAppLibrary];

  return isAppLibrary;
}

- (NSString)libraryIdentifier
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];

  return libraryIdentifier;
}

- (CPLCloudKitTransport)initWithAbstractObject:(id)object
{
  v25.receiver = self;
  v25.super_class = CPLCloudKitTransport;
  v3 = [(CPLCloudKitTransport *)&v25 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    if ([(CPLCloudKitTransport *)v3 isSystemLibrary])
    {
      v5 = +[CPLDuetTicketProvider sharedDuetTicketProvider];
      duetTicketProvider = v4->_duetTicketProvider;
      v4->_duetTicketProvider = v5;
    }

    v7 = CPLCopyDefaultSerialQueueAttributes();
    v8 = dispatch_queue_create("com.apple.cpl.cloudkit", v7);
    workQueue = v4->_workQueue;
    v4->_workQueue = v8;

    v10 = objc_alloc_init(NSOperationQueue);
    workOperationQueue = v4->_workOperationQueue;
    v4->_workOperationQueue = v10;

    [(NSOperationQueue *)v4->_workOperationQueue setUnderlyingQueue:v4->_workQueue];
    v12 = objc_alloc_init(CPLCloudKitOperationsTracker);
    operationTracker = v4->_operationTracker;
    v4->_operationTracker = v12;

    v14 = +[CPLCloudKitCoordinator sharedCoordinator];
    coordinator = v4->_coordinator;
    v4->_coordinator = v14;

    v16 = [[CPLCloudKitSimpleCache alloc] initWithLeewayInterval:100 maximumCapacity:900.0];
    streamingContentItemCache = v4->_streamingContentItemCache;
    v4->_streamingContentItemCache = v16;

    v18 = objc_alloc_init(CPLCloudKitTaskGroupThrottler);
    streamingGate = v4->_streamingGate;
    v4->_streamingGate = v18;

    v20 = objc_alloc_init(CPLCloudKitTaskGroupThrottler);
    resourceDownloadGate = v4->_resourceDownloadGate;
    v4->_resourceDownloadGate = v20;

    v22 = objc_alloc_init(CPLCloudKitTaskGroupThrottler);
    computeStateOperationsGate = v4->_computeStateOperationsGate;
    v4->_computeStateOperationsGate = v22;

    [(CPLCloudKitTaskGroupThrottler *)v4->_computeStateOperationsGate setMinimumThrottlingInterval:86400.0];
    v4->_accountStatus = 0;
  }

  return v4;
}

- (void)_updateBudgets
{
  duetTicketProvider = [(CPLCloudKitTransport *)self duetTicketProvider];

  if (duetTicketProvider)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100076380;
    v4[3] = &unk_100275A78;
    v4[4] = self;
    [(CPLCloudKitTransport *)self getSystemBudgetsWithCompletionHandler:v4];
  }
}

- (void)duetTicketProviderBlockedStatusDidChange
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000767AC;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = workQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007691C;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000775A8;
  v12[3] = &unk_100275AF0;
  deactivateCopy = deactivate;
  v12[4] = self;
  v13 = handlerCopy;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = workQueue;
  v10 = handlerCopy;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

- (id)acquireReschedulerTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[CPLCloudKitAcquireReschedulerTask alloc] initWithController:self completionHandler:handlerCopy];

  return v5;
}

- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)identifiers targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  identifiersCopy = identifiers;
  v14 = [[CPLCloudKitFetchRecordsTask alloc] initWithController:self scopedIdentifiers:identifiersCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy completionHandler:handlerCopy];

  return v14;
}

- (id)uploadBatchTaskForBatch:(id)batch scope:(id)scope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  scopeCopy = scope;
  batchCopy = batch;
  v20 = [[CPLCloudKitUploadBatchTask alloc] initWithController:self scope:scopeCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  [(CPLCloudKitUploadBatchTask *)v20 setBatch:batchCopy];
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  store = [engineLibrary store];
  libraryCreationDate = [store libraryCreationDate];
  [(CPLCloudKitUploadBatchTask *)v20 setCplEnabledDate:libraryCreationDate];

  return v20;
}

- (id)reshareRecordsTaskWithRecords:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  destinationScopeCopy = destinationScope;
  scopeCopy = scope;
  recordsCopy = records;
  v17 = [[CPLCloudKitReshareRecordsTask alloc] initWithController:self records:recordsCopy sourceScope:scopeCopy destinationScope:destinationScopeCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v17;
}

- (id)deleteTransportScope:(id)scope scope:(id)a4 completionHandler:(id)handler
{
  scopeCopy = scope;
  v9 = a4;
  handlerCopy = handler;
  v11 = [CPLCloudKitDeleteTransportScopeTask alloc];
  v12 = v11;
  if (scopeCopy)
  {
    v13 = [CPLCloudKitScope scopeFromTransportScope:scopeCopy];
    v14 = [(CPLCloudKitDeleteTransportScopeTask *)v12 initWithController:self cloudKitScope:v13 scope:v9 completionHandler:handlerCopy];
  }

  else
  {
    v14 = [(CPLCloudKitDeleteTransportScopeTask *)v11 initWithController:self cloudKitScope:0 scope:v9 completionHandler:handlerCopy];
  }

  return v14;
}

- (id)updateTransportScope:(id)scope scope:(id)a4 scopeChange:(id)change completionHandler:(id)handler
{
  scopeCopy = scope;
  v11 = a4;
  changeCopy = change;
  handlerCopy = handler;
  v14 = [CPLCloudKitUpdateTransportScopeTask alloc];
  v15 = v14;
  if (scopeCopy)
  {
    v16 = [CPLCloudKitScope scopeFromTransportScope:scopeCopy];
    v17 = [(CPLCloudKitUpdateTransportScopeTask *)v15 initWithController:self cloudKitScope:v16 scope:v11 scopeChange:changeCopy completionHandler:handlerCopy];
  }

  else
  {
    v17 = [(CPLCloudKitUpdateTransportScopeTask *)v14 initWithController:self cloudKitScope:0 scope:v11 scopeChange:changeCopy completionHandler:handlerCopy];
  }

  return v17;
}

- (id)getScopeInfoWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v12 = a4;
  scopeCopy = scope;
  v14 = [CPLCloudKitGetScopeInfoTask alloc];
  v15 = [CPLCloudKitScope scopeFromTransportScope:scopeCopy];

  v16 = [(CPLCloudKitGetScopeInfoTask *)v14 initWithController:self cloudKitScope:v15 scope:v12 previousScopeChange:changeCopy completionHandler:handlerCopy];

  return v16;
}

- (id)getCurrentSyncAnchorWithTransportScope:(id)scope scope:(id)a4 previousScopeChange:(id)change completionHandler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v12 = a4;
  scopeCopy = scope;
  v14 = [CPLCloudKitGetCurrentSyncAnchorTask alloc];
  v15 = [CPLCloudKitScope scopeFromTransportScope:scopeCopy];

  v16 = [(CPLCloudKitGetCurrentSyncAnchorTask *)v14 initWithController:self cloudKitScope:v15 scope:v12 previousScopeChange:changeCopy completionHandler:handlerCopy];

  return v16;
}

- (id)fetchTransportScopeForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler
{
  scopeCopy = scope;
  transportScopeCopy = transportScope;
  handlerCopy = handler;
  v11 = [CPLCloudKitFetchTransportScopeTask alloc];
  v12 = v11;
  if (transportScopeCopy)
  {
    v13 = [CPLCloudKitScope scopeFromTransportScope:transportScopeCopy];
    v14 = [(CPLCloudKitFetchTransportScopeTask *)v12 initWithController:self scope:scopeCopy cloudKitScope:v13 completionHandler:handlerCopy];
  }

  else
  {
    v14 = [(CPLCloudKitFetchTransportScopeTask *)v11 initWithController:self scope:scopeCopy cloudKitScope:0 completionHandler:handlerCopy];
  }

  return v14;
}

- (id)queryTaskForCursor:(id)cursor class:(Class)class scope:(id)scope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  mappingCopy = mapping;
  scopeCopy = scope;
  cursorCopy = cursor;
  v19 = [[CPLCloudKitQueryTask alloc] initWithController:self cursor:cursorCopy class:class scope:scopeCopy transportScopeMapping:mappingCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v19;
}

- (id)downloadBatchTaskForSyncAnchor:(id)anchor scope:(id)scope transportScopeMapping:(id)mapping currentScopeChange:(id)change progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  changeCopy = change;
  mappingCopy = mapping;
  scopeCopy = scope;
  anchorCopy = anchor;
  v20 = [[CPLCloudKitDownloadBatchTask alloc] initWithController:self syncAnchor:anchorCopy scope:scopeCopy transportScopeMapping:mappingCopy currentScopeChange:changeCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v20;
}

- (id)uploadComputeStates:(id)states scope:(id)scope sharedScope:(id)sharedScope targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping knownRecords:(id)records completionHandler:(id)handler
{
  handlerCopy = handler;
  recordsCopy = records;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  sharedScopeCopy = sharedScope;
  scopeCopy = scope;
  statesCopy = states;
  v23 = [[CPLCloudKitUploadComputeStatesTask alloc] initWithController:self computeStates:statesCopy scope:scopeCopy sharedScope:sharedScopeCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy knownRecords:recordsCopy completionHandler:handlerCopy];

  [(CPLCloudKitTransportTask *)v23 setGate:self->_computeStateOperationsGate];

  return v23;
}

- (id)downloadComputeStatesWithScopedIdentifiers:(id)identifiers scope:(id)scope sharedScope:(id)sharedScope targetStorageURL:(id)l transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  lCopy = l;
  sharedScopeCopy = sharedScope;
  scopeCopy = scope;
  identifiersCopy = identifiers;
  v20 = [[CPLCloudKitDownloadComputeStatesTask alloc] initWithController:self scopedIdentifiers:identifiersCopy scope:scopeCopy sharedScope:sharedScopeCopy targetStorageURL:lCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  [(CPLCloudKitTransportTask *)v20 setGate:self->_computeStateOperationsGate];

  return v20;
}

- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)anchor progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  anchorCopy = anchor;
  v11 = [[CPLCloudKitFetchScopeListChangesTask alloc] initWithController:self scopeListSyncAnchor:anchorCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v11;
}

- (id)getStreamingURLTaskForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)self0
{
  handlerCopy = handler;
  dCopy = d;
  mappingCopy = mapping;
  targetCopy = target;
  hintsCopy = hints;
  resourceCopy = resource;
  v23 = [CPLCloudKitGetStreamingURLTask alloc];
  streamingContentItemCache = self->_streamingContentItemCache;
  v25 = *&range->var0.var3;
  v29[0] = *&range->var0.var0;
  v29[1] = v25;
  v29[2] = *&range->var1.var1;
  v26 = [(CPLCloudKitGetStreamingURLTask *)v23 initWithController:self resource:resourceCopy hints:hintsCopy timeRange:v29 target:targetCopy transportScopeMapping:mappingCopy cache:streamingContentItemCache completionHandler:handlerCopy];

  v27 = [(CPLCloudKitTransport *)self createGroupForMovieStreamingWithIntent:intent];
  [(CPLCloudKitTransportTask *)v26 setTransportGroup:v27];

  [(CPLCloudKitTransportTask *)v26 setGate:self->_streamingGate];
  [(CPLCloudKitTransportTask *)v26 setSourceBundleIdentifier:dCopy];

  return v26;
}

- (id)resourceCheckTaskForResources:(id)resources targetMapping:(id)mapping transportScopeMapping:(id)scopeMapping completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeMappingCopy = scopeMapping;
  mappingCopy = mapping;
  resourcesCopy = resources;
  v14 = [[CPLCloudKitResourcesCheckTask alloc] initWithController:self resources:resourcesCopy targetMapping:mappingCopy transportScopeMapping:scopeMappingCopy completionHandler:handlerCopy];

  createGroupForPruningCheck = [(CPLCloudKitTransport *)self createGroupForPruningCheck];
  [(CPLCloudKitTransportTask *)v14 setTransportGroup:createGroupForPruningCheck];

  return v14;
}

- (id)rampingRequestTaskForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [[CPLCloudKitRampingRequestTask alloc] initWithController:self resourceType:type numRequested:requested completionHandler:handlerCopy];

  createGroupForAnalysisDownload = [(CPLCloudKitTransport *)self createGroupForAnalysisDownload];
  [(CPLCloudKitTransportTask *)v9 setTransportGroup:createGroupForAnalysisDownload];

  return v9;
}

- (id)resourcesDownloadTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[CPLCloudKitResourcesDownloadTask alloc] initWithController:self completionHandler:handlerCopy];

  [(CPLCloudKitTransportTask *)v5 setGate:self->_resourceDownloadGate];

  return v5;
}

- (id)inMemoryDownloadTaskForResource:(id)resource record:(id)record target:(id)target transportScopeMapping:(id)mapping clientBundleID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  mappingCopy = mapping;
  targetCopy = target;
  recordCopy = record;
  resourceCopy = resource;
  v20 = [[CPLCloudKitInMemoryResourceDownloadTask alloc] initWithController:self resource:resourceCopy record:recordCopy target:targetCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  createGroupForAnalysisDownload = [(CPLCloudKitTransport *)self createGroupForAnalysisDownload];
  [(CPLCloudKitTransportTask *)v20 setTransportGroup:createGroupForAnalysisDownload];

  [(CPLCloudKitTransportTask *)v20 setGate:self->_resourceDownloadGate];
  [(CPLCloudKitTransportTask *)v20 setSourceBundleIdentifier:dCopy];

  return v20;
}

- (id)createScopeTaskForScope:(id)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeCopy = scope;
  v8 = [[CPLCloudKitCreateScopeTask alloc] initWithController:self scope:scopeCopy completionHandler:handlerCopy];

  scopeType = [scopeCopy scopeType];
  if ((scopeType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [(CPLCloudKitTransport *)self createGroupForPublishingLibraryShare];
  }

  else
  {
    [(CPLCloudKitTransport *)self createGroupForPublishingMomentShare];
  }
  v10 = ;
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:v10];

  return v8;
}

- (id)updateShareTaskForScope:(id)scope transportScope:(id)transportScope completionHandler:(id)handler
{
  handlerCopy = handler;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  v11 = [[CPLCloudKitUpdateShareTask alloc] initWithController:self scope:scopeCopy transportScope:transportScopeCopy completionHandler:handlerCopy];

  scopeType = [scopeCopy scopeType];
  if ((scopeType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [(CPLCloudKitTransport *)self createGroupForPublishingLibraryShare];
  }

  else
  {
    [(CPLCloudKitTransport *)self createGroupForPublishingMomentShare];
  }
  v13 = ;
  [(CPLCloudKitTransportTask *)v11 setTransportGroup:v13];

  return v11;
}

- (id)fetchTaskForScopeWithShareURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v8 = [[CPLCloudKitFetchSharedScopeTask alloc] initWithController:self shareURL:lCopy completionHandler:handlerCopy];

  pathComponents = [lCopy pathComponents];

  if ([pathComponents count] < 2)
  {
    lowercaseString = &stru_10027C2F0;
  }

  else
  {
    v10 = [pathComponents objectAtIndexedSubscript:1];
    lowercaseString = [v10 lowercaseString];
  }

  if (([(__CFString *)lowercaseString isEqualToString:@"shared_library"]& 1) != 0 || [(__CFString *)lowercaseString isEqualToString:@"photos_sharing"])
  {
    createGroupForFetchingLibraryShare = [(CPLCloudKitTransport *)self createGroupForFetchingLibraryShare];
  }

  else
  {
    createGroupForFetchingLibraryShare = [(CPLCloudKitTransport *)self createGroupForFetchingMomentShare];
  }

  v13 = createGroupForFetchingLibraryShare;
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:createGroupForFetchingLibraryShare];

  return v8;
}

- (id)acceptTaskForSharedScope:(id)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  scopeCopy = scope;
  v8 = [[CPLCloudKitAcceptSharedScopeTask alloc] initWithController:self scope:scopeCopy completionHandler:handlerCopy];

  scopeType = [scopeCopy scopeType];
  if ((scopeType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    [(CPLCloudKitTransport *)self createGroupForAcceptingLibraryShare];
  }

  else
  {
    [(CPLCloudKitTransport *)self createGroupForAcceptingMomentShare];
  }
  v10 = ;
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:v10];

  return v8;
}

- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[CPLCloudKitFetchExistingSharedScopeTask alloc] initWithController:self completionHandler:handlerCopy];

  createGroupForFetchingExistingSharedScope = [(CPLCloudKitTransport *)self createGroupForFetchingExistingSharedScope];
  [(CPLCloudKitTransportTask *)v5 setTransportGroup:createGroupForFetchingExistingSharedScope];

  return v5;
}

- (id)startExitTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  handlerCopy = handler;
  shareCopy = share;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  v18 = [CPLCloudKitExitSharedLibraryTask alloc];
  v19 = [CPLCloudKitScope scopeFromTransportScope:transportScopeCopy];

  v20 = [(CPLCloudKitExitSharedLibraryTask *)v18 initSelfExitWithController:self cloudKitScope:v19 scope:scopeCopy share:shareCopy retentionPolicy:policy exitSource:source completionHandler:handlerCopy];

  return v20;
}

- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)scope transportScope:(id)transportScope share:(id)share retentionPolicy:(int64_t)policy exitSource:(int64_t)source userIdentifiersToRemove:(id)remove participantIDsToRemove:(id)toRemove completionHandler:(id)self0
{
  handlerCopy = handler;
  toRemoveCopy = toRemove;
  removeCopy = remove;
  shareCopy = share;
  transportScopeCopy = transportScope;
  scopeCopy = scope;
  v22 = [CPLCloudKitExitSharedLibraryTask alloc];
  v23 = [CPLCloudKitScope scopeFromTransportScope:transportScopeCopy];

  v24 = [(CPLCloudKitExitSharedLibraryTask *)v22 initRemoveParticipantsWithController:self cloudKitScope:v23 scope:scopeCopy share:shareCopy userIdentifiersToRemove:removeCopy participantIDsToRemove:toRemoveCopy retentionPolicy:policy exitSource:source completionHandler:handlerCopy];

  return v24;
}

- (id)fixUpSparseRecordsTaskWithTasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  tasksCopy = tasks;
  v11 = [[CPLCloudKitFixUpSparseRecordTask alloc] initWithController:self tasks:tasksCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v11;
}

- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[CPLCloudKitSharedLibraryServerRampTask alloc] initWithController:self completionHandler:handlerCopy];

  createGroupForSharedLibraryRampCheck = [(CPLCloudKitTransport *)self createGroupForSharedLibraryRampCheck];
  [(CPLCloudKitTransportTask *)v5 setTransportGroup:createGroupForSharedLibraryRampCheck];

  return v5;
}

- (id)updateContributorsTaskWithSharedScope:(id)scope contributorsUpdates:(id)updates transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  handlerCopy = handler;
  mappingCopy = mapping;
  updatesCopy = updates;
  scopeCopy = scope;
  v14 = [[CPLCloudKitUpdateContributorsTask alloc] initWithController:self sharedScope:scopeCopy contributorsUpdates:updatesCopy transportScopeMapping:mappingCopy completionHandler:handlerCopy];

  return v14;
}

- (id)cleanupStagedScope:(id)scope stagingScope:(id)stagingScope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  mappingCopy = mapping;
  destinationScopeCopy = destinationScope;
  stagingScopeCopy = stagingScope;
  scopeCopy = scope;
  v20 = [[CPLCloudKitCleanupStagedScopeTask alloc] initWithController:self stagedScope:scopeCopy stagingScope:stagingScopeCopy destinationScope:destinationScopeCopy transportScopeMapping:mappingCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v20;
}

- (id)queryUserDetailsTaskForParticipants:(id)participants completionHandler:(id)handler
{
  handlerCopy = handler;
  participantsCopy = participants;
  v8 = [[CPLCloudKitQueryUserDetailsTask alloc] initWithController:self participants:participantsCopy completionHandler:handlerCopy];

  createGroupForQueryUserIdentities = [(CPLCloudKitTransport *)self createGroupForQueryUserIdentities];
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:createGroupForQueryUserIdentities];

  return v8;
}

- (id)sendFeedbackTaskForMessages:(id)messages completionHandler:(id)handler
{
  handlerCopy = handler;
  messagesCopy = messages;
  v8 = [[CPLCloudKitSendFeedbackTask alloc] initWithController:self messages:messagesCopy completionHandler:handlerCopy];

  createGroupForFeedback = [(CPLCloudKitTransport *)self createGroupForFeedback];
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:createGroupForFeedback];

  return v8;
}

- (BOOL)isResourceDynamic:(id)dynamic
{
  dynamicCopy = dynamic;
  if (CPLIsDynamicResource(dynamicCopy))
  {
    v4 = 1;
  }

  else
  {
    v4 = [CPLCloudKitFakeDynamicDerivatives isFakeDerivative:dynamicCopy];
  }

  return v4;
}

- (id)simpleDescriptionForSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (anchorCopy)
  {
    if (qword_1002C53C0 != -1)
    {
      sub_1001A5DE4();
    }

    v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:anchorCopy classes:qword_1002C53C8];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [NSString alloc];
        data = [v4 data];
        v7 = [data base64EncodedStringWithOptions:0];
        v8 = [v5 initWithFormat:@"Cursor-%@", v7];
      }

      else
      {
        data = [v4 data];
        v8 = [data base64EncodedStringWithOptions:0];
      }
    }

    else
    {
      v8 = @"InvalidAnchor";
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)getProposedStagingScopeIdentifier:(id *)identifier stagingTransportScope:(id *)scope forScope:(id)forScope transportScope:(id)transportScope transportUserIdentifier:(id)userIdentifier
{
  forScopeCopy = forScope;
  userIdentifierCopy = userIdentifier;
  v14 = [CPLCloudKitScope scopeFromTransportScope:transportScope];
  v15 = v14;
  v16 = 0;
  if (userIdentifierCopy && v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(CPLCloudKitTransport *)self zoneIdentificationForCloudKitScope:v15 engineScope:forScopeCopy];
      v18 = [v17 proposedStagingZoneIdentificationWithCurrentUserID:userIdentifierCopy];
      v19 = v18;
      v16 = v18 != 0;
      if (v18)
      {
        *identifier = [v18 scopeIdentifier];
        cloudKitScope = [v19 cloudKitScope];
        *scope = [cloudKitScope transportScope];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)setIsSignificantWorkPending:(BOOL)pending
{
  duetTicketProvider = [(CPLCloudKitTransport *)self duetTicketProvider];
  v6 = duetTicketProvider;
  if (duetTicketProvider)
  {
    workQueue = self->_workQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A5278;
    v11[3] = &unk_100273930;
    pendingCopy = pending;
    v11[4] = self;
    v12 = duetTicketProvider;
    v8 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002AD4;
    block[3] = &unk_100271E98;
    v15 = v8;
    v9 = workQueue;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }
}

- (void)getSystemBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  duetTicketProvider = [(CPLCloudKitTransport *)self duetTicketProvider];
  v6 = duetTicketProvider;
  if (duetTicketProvider)
  {
    [duetTicketProvider getSystemBudgetsWithCompletionHandler:handlerCopy];
  }

  else
  {
    workQueue = self->_workQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100079A38;
    v11[3] = &unk_100271E98;
    v12 = handlerCopy;
    v8 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002AD4;
    block[3] = &unk_100271E98;
    v14 = v8;
    v9 = workQueue;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }
}

- (id)tentativeConcreteScopeForScope:(id)scope
{
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  if (![scopeIdentifier isEqualToString:mainScopeIdentifier])
  {
    cloudKitScope = 0;
    goto LABEL_5;
  }

  scopeType = [scopeCopy scopeType];

  if (scopeType == 1)
  {
    mainScopeIdentifier = [[CKRecordZoneID alloc] initWithCPLScopeIdentifier:scopeIdentifier];
    v8 = [[CPLCloudKitScope alloc] initWithZoneID:mainScopeIdentifier];
    v9 = [(CPLCloudKitTransport *)self zoneIdentificationForCloudKitScope:v8 engineScope:scopeCopy];
    cloudKitScope = [v9 cloudKitScope];

LABEL_5:
    goto LABEL_7;
  }

  cloudKitScope = 0;
LABEL_7:

  return cloudKitScope;
}

- (id)descriptionForTransportScope:(id)scope
{
  v3 = [CPLCloudKitScope scopeFromTransportScope:scope];
  v4 = v3;
  if (v3)
  {
    zoneID = [v3 zoneID];
    cpl_zoneName = [zoneID cpl_zoneName];

    if ([v4 isShared])
    {
      v7 = [[NSString alloc] initWithFormat:@"%@ shared", cpl_zoneName];

      cpl_zoneName = v7;
    }
  }

  else
  {
    cpl_zoneName = @"Invalid";
  }

  return cpl_zoneName;
}

- (id)scopeNameForTransportScope:(id)scope
{
  v3 = [CPLCloudKitScope scopeFromTransportScope:scope];
  zoneID = [v3 zoneID];
  cpl_zoneName = [zoneID cpl_zoneName];

  return cpl_zoneName;
}

- (id)transportScopeForUpgradeFromScopeName:(id)name
{
  nameCopy = name;
  v4 = [[CKRecordZone alloc] initWithZoneName:nameCopy];

  v5 = [[CPLCloudKitScope alloc] initWithZone:v4 options:0];
  transportScope = [(CPLCloudKitScope *)v5 transportScope];

  return transportScope;
}

- (void)upgradeFlags:(id)flags fromTransportScope:(id)scope
{
  flagsCopy = flags;
  v5 = [CPLCloudKitScope scopeFromTransportScope:scope];
  v6 = v5;
  if (v5 && ([v5 options] & 2) != 0)
  {
    [flagsCopy setValue:1 forFlag:1];
  }
}

- (BOOL)isNewTransportScope:(id)scope compatibleWithOldTransportScope:(id)transportScope
{
  transportScopeCopy = transportScope;
  v6 = [CPLCloudKitScope scopeFromTransportScope:scope];
  if (v6)
  {
    v7 = [CPLCloudKitScope scopeFromTransportScope:transportScopeCopy];
    if (v7)
    {
      v8 = +[CPLCloudKitDefaultZoneManager sharedInstance];
      v9 = [v8 isNewCloudKitScope:v6 compatibleWithOldCloudKitScope:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createGroupForSendExitStatus
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A5DF8(self);
  }

  else
  {
    [v4 setName:@"Exit Status Feedback"];
  }

  return v5;
}

- (id)createGroupForInitialUpload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A5E48(self);
  }

  else
  {
    [v4 setName:@"Initial Upload"];
  }

  return v5;
}

- (id)createGroupForResetSync
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A5E98(self);
  }

  else
  {
    [v4 setName:@"Reset sync"];
  }

  return v5;
}

- (id)createGroupForInitialDownload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A5EE8(self);
  }

  else
  {
    [v4 setName:@"Initial Download"];
  }

  return v5;
}

- (id)createGroupForThumbnailPrefetch
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 0);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A5F38(self);
  }

  else
  {
    [v4 setName:@"Thumbnails Prefetch"];
  }

  return v5;
}

- (id)createGroupForSetup
{
  v3 = [(CPLCloudKitTransport *)self createGroupAllowsCellular:1 allowsExpensiveNetwork:1 foreground:0 upload:0 metadata:1];
  v4 = v3;
  if (self->_operationGroupMapper)
  {
    sub_1001A5F88(self);
  }

  else
  {
    [v3 setName:@"Setting Up Library"];
  }

  return v4;
}

- (id)createGroupForFeedback
{
  v3 = [(CPLCloudKitTransport *)self createGroupAllowsCellular:1 allowsExpensiveNetwork:1 foreground:1 upload:0 metadata:0];
  v4 = v3;
  if (self->_operationGroupMapper)
  {
    sub_1001A5FD8(self);
  }

  else
  {
    [v3 setName:@"Sending Feedback"];
  }

  return v4;
}

- (id)createGroupForTransportScopeDelete
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6028(self);
  }

  else
  {
    [v4 setName:@"Deleting Zone"];
  }

  return v5;
}

- (id)createGroupForTransportScopeUpdate
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6078(self);
  }

  else
  {
    [v4 setName:@"Updating Zone"];
  }

  return v5;
}

- (id)createGroupForTransportScopeRefresh
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A60C8(self);
  }

  else
  {
    [v4 setName:@"Refreshing Zone"];
  }

  return v5;
}

- (id)createGroupForLibraryStateCheck
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6118(self);
  }

  else
  {
    [v4 setName:@"Checking Library State"];
  }

  return v5;
}

- (id)createGroupForChangeUpload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6168(self);
  }

  else
  {
    [v4 setName:@"Changes Upload"];
  }

  return v5;
}

- (id)createGroupForChangeDownload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A61B8(self);
  }

  else
  {
    [v4 setName:@"Changes Download"];
  }

  return v5;
}

- (id)createGroupForComputeStateUpload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6208(self);
  }

  else
  {
    [v4 setName:@"Compute State Upload"];
  }

  return v5;
}

- (id)createGroupForComputeStateDownloadOnDemand
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6258(self);
  }

  else
  {
    [v4 setName:@"Compute State Download"];
  }

  return v5;
}

- (id)createGroupForComputeStateDownloadPrefetch
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A62A8(self);
  }

  else
  {
    [v4 setName:@"Compute State Download Prefetch"];
  }

  return v5;
}

- (id)createGroupForFixUpTasks
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A62F8(self);
  }

  else
  {
    [v4 setName:@"Sparse Records Fix-Up"];
  }

  return v5;
}

- (id)createGroupForReshare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6348(self);
  }

  else
  {
    [v4 setName:@"Reshare shadowing records"];
  }

  return v5;
}

- (id)createGroupForStagedScopeCleanup
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6398(self);
  }

  else
  {
    [v4 setName:@"Clean-up Staged Zone"];
  }

  return v5;
}

- (id)createGroupForThumbnailsDownload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 0);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A63E8(self);
  }

  else
  {
    [v4 setName:@"Thumbnails Download"];
  }

  return v5;
}

- (id)createGroupForMovieStreamingWithIntent:(unint64_t)intent
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v6 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  if (intent - 1 > 5)
  {
    v7 = @"Fetching Movie Stream";
  }

  else
  {
    v7 = off_100275DF0[intent - 1];
  }

  if (!self->_mightRejectVideoStreaming || ![(NSIndexSet *)self->_rejectedVideoStreamingIntents containsIndex:intent])
  {
    goto LABEL_17;
  }

  if (self->_rejectVideoStreamingAtContentLevel)
  {
    if (_CPLSilentLogging)
    {
      v9 = @"Content Rejected ";
      goto LABEL_16;
    }

    v8 = sub_1000770DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asking server to reject %@ at content level", &v11, 0xCu);
    }

    v9 = @"Content Rejected ";
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v9 = @"Rejected ";
      goto LABEL_16;
    }

    v8 = sub_1000770DC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asking server to reject %@", &v11, 0xCu);
    }

    v9 = @"Rejected ";
  }

LABEL_16:
  v7 = [(__CFString *)v9 stringByAppendingString:v7];
LABEL_17:
  if (self->_operationGroupMapper)
  {
    sub_1001A6438(self, v7, v6);
  }

  else
  {
    [v6 setName:v7];
  }

  return v6;
}

- (id)createGroupForAnalysisDownload
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 0);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6474(self);
  }

  else
  {
    [v4 setName:@"Photo Analysis"];
  }

  return v5;
}

- (id)createGroupForPruningCheck
{
  v3 = [(CPLCloudKitTransport *)self createGroupAllowsCellular:1 allowsExpensiveNetwork:1 foreground:1 upload:0 metadata:1];
  v4 = v3;
  if (self->_operationGroupMapper)
  {
    sub_1001A64C4(self);
  }

  else
  {
    [v3 setName:@"Checking Resources For Pruning"];
  }

  return v4;
}

- (id)createGroupForPublishingMomentShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6514(self);
  }

  else
  {
    [v4 setName:@"Publishing Moment Share"];
  }

  return v5;
}

- (id)createGroupForFetchingMomentShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6564(self);
  }

  else
  {
    [v4 setName:@"Fetching Moment Share"];
  }

  return v5;
}

- (id)createGroupForAcceptingMomentShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A65B4(self);
  }

  else
  {
    [v4 setName:@"Accepting Moment Share"];
  }

  return v5;
}

- (id)createGroupForPublishingLibraryShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6604(self);
  }

  else
  {
    [v4 setName:@"Publishing Library Share"];
  }

  return v5;
}

- (id)createGroupForFetchingLibraryShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6654(self);
  }

  else
  {
    [v4 setName:@"Fetching Library Share"];
  }

  return v5;
}

- (id)createGroupForAcceptingLibraryShare
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A66A4(self);
  }

  else
  {
    [v4 setName:@"Accepting Library Share"];
  }

  return v5;
}

- (id)createGroupForFetchingExistingSharedScope
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A66F4(self);
  }

  else
  {
    [v4 setName:@"Looking For Shared Library Zone"];
  }

  return v5;
}

- (id)createGroupForCleanupLibrary
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6744(self);
  }

  else
  {
    [v4 setName:@"Cleaning Shared Library"];
  }

  return v5;
}

- (id)createGroupForExitSharedLibrary
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6794(self);
  }

  else
  {
    [v4 setName:@"Exit Shared Library"];
  }

  return v5;
}

- (id)createGroupForSharedLibraryRampCheck
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A67E4(self);
  }

  else
  {
    [v4 setName:@"Shared Library Ramp Check"];
  }

  return v5;
}

- (id)createGroupForQueryUserIdentities
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6834(self);
  }

  else
  {
    [v4 setName:@"Querying User Identities"];
  }

  return v5;
}

- (id)createGroupForPropagateChanges
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
  v5 = v4;
  if (self->_operationGroupMapper)
  {
    sub_1001A6884(self);
  }

  else
  {
    [v4 setName:@"Propagating Changes Between Zones"];
  }

  return v5;
}

- (void)findPersistedInitialSyncSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v8 = handlerCopy;
  reschedulerManager = self->_reschedulerManager;
  if (reschedulerManager)
  {
    abstractObject = [(CPLCloudKitTransport *)self abstractObject];
    engineLibrary = [abstractObject engineLibrary];
    scheduler = [engineLibrary scheduler];
    [(CPLCloudKitReschedulerManager *)reschedulerManager findPersistedSyncSession:sessionCopy forScheduler:scheduler completionHandler:v8];
  }

  else
  {
    workQueue = self->_workQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007B8E0;
    v17[3] = &unk_100271E98;
    v18 = handlerCopy;
    v14 = v17;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002AD4;
    block[3] = &unk_100271E98;
    v20 = v14;
    v15 = workQueue;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v15, v16);
  }
}

- (id)createReschedulerForSession:(id)session
{
  sessionCopy = session;
  reschedulerManager = self->_reschedulerManager;
  if (reschedulerManager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_1000770DC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_reschedulerManager;
        v10 = 138412546;
        selfCopy = self;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating CloudKit rescheduler for %@ with %@", &v10, 0x16u);
      }

      reschedulerManager = self->_reschedulerManager;
    }

    v8 = [(CPLCloudKitReschedulerManager *)reschedulerManager newCloudKitReschedulerForSession:sessionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSArray)involvedProcesses
{
  if (qword_1002C53D8 != -1)
  {
    sub_1001A68D4();
  }

  v3 = qword_1002C53D0;

  return v3;
}

- (NSArray)involvedProcesses
{
  v2 = objc_opt_class();

  return [v2 involvedProcesses];
}

+ (BOOL)allowsUserInitiatedOperationsOverExpensiveNetwork
{
  if (qword_1002C53F0 != -1)
  {
    sub_1001A68E8();
  }

  return byte_1002BFB62;
}

- (void)_startWatchingAccountInfoChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_accountInfoWatcher)
  {
    sub_1001A68FC(a2, self);
  }

  v6 = handlerCopy;
  v7 = +[NSNotificationCenter defaultCenter];
  workOperationQueue = self->_workOperationQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007BC80;
  v11[3] = &unk_100275AA0;
  v11[4] = self;
  v9 = [v7 addObserverForName:CKAccountChangedNotification object:0 queue:workOperationQueue usingBlock:v11];
  accountInfoWatcher = self->_accountInfoWatcher;
  self->_accountInfoWatcher = v9;

  [(CPLCloudKitTransport *)self _forceUpdateAccountInfoWithReason:0 completionHandler:v6];
}

- (void)_stopWatchingAccountInfoChanges
{
  accountInfoWatcher = self->_accountInfoWatcher;
  self->_accountInfoWatcher = 0;
}

- (void)_forceUpdateAccountInfoWithReason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  lastAccountInfoUpdateDate = self->_lastAccountInfoUpdateDate;
  if (lastAccountInfoUpdateDate && ([(NSDate *)lastAccountInfoUpdateDate timeIntervalSinceNow], v9 > -600.0))
  {
    sub_1001A6A78(handlerCopy);
  }

  else
  {
    if (reasonCopy && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001A6B04();
    }

    v10 = +[NSDate date];
    v11 = self->_lastAccountInfoUpdateDate;
    self->_lastAccountInfoUpdateDate = v10;

    [(CPLCloudKitTransport *)self _updateAccountInfoWithCompletionHandler:handlerCopy];
  }
}

- (void)_updateAccountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_accountInfoFetchGeneration + 1;
  self->_accountInfoFetchGeneration = v5;
  coordinator = self->_coordinator;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007BE60;
  v8[3] = &unk_100275C00;
  v9 = handlerCopy;
  v10 = v5;
  v8[4] = self;
  v7 = handlerCopy;
  [(CPLCloudKitCoordinator *)coordinator fetchAccountInfoWithCompletionHandler:v8];
}

- (void)_enableSchedulerBecauseAccountIsAvailable
{
  if (self->_lastDisablingReasonBecauseOfAccountStatus)
  {
    sub_1001A6B98(self, &self->_lastDisablingReasonBecauseOfAccountStatus);
  }

  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  containerHasBeenWiped = [engineLibrary containerHasBeenWiped];

  if ((containerHasBeenWiped & 1) == 0)
  {
    [(CPLCloudKitTransport *)self setErrorForAllOperations:0];
  }
}

- (void)_disableSchedulerBecauseAccountIsUnavailableWithReason:(id)reason
{
  reasonCopy = reason;
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  scheduler = [engineLibrary scheduler];

  lastDisablingReasonBecauseOfAccountStatus = self->_lastDisablingReasonBecauseOfAccountStatus;
  if (lastDisablingReasonBecauseOfAccountStatus)
  {
    if ([(NSString *)lastDisablingReasonBecauseOfAccountStatus isEqualToString:reasonCopy])
    {
      goto LABEL_3;
    }

    if ((sub_1001A6DBC(scheduler, reasonCopy, &self->_lastDisablingReasonBecauseOfAccountStatus) & 1) == 0)
    {
      sub_1001A6D18(&self->_lastDisablingReasonBecauseOfAccountStatus);
    }
  }

  else
  {
    sub_1001A6C5C(reasonCopy, scheduler);
  }

  objc_storeStrong(&self->_lastDisablingReasonBecauseOfAccountStatus, reason);
  abstractObject2 = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary2 = [abstractObject2 engineLibrary];
  containerHasBeenWiped = [engineLibrary2 containerHasBeenWiped];

  if ((containerHasBeenWiped & 1) == 0)
  {
    v15 = CPLErrorRetryAfterReasonKey;
    v16 = reasonCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    reasonCopy = [CPLErrors cplErrorWithCode:1000 underlyingError:0 userInfo:v13 description:@"%@", reasonCopy];

    [(CPLCloudKitTransport *)self setErrorForAllOperations:reasonCopy];
  }

LABEL_3:
}

+ (id)_betterErrorForRecordId:(id)id recordError:(id)error
{
  idCopy = id;
  errorCopy = error;
  if (!idCopy || (v9 = errorCopy) == 0)
  {
    sub_1001A6E00(a2, self);
  }

  localizedDescription = [errorCopy localizedDescription];
  if (localizedDescription)
  {
    idCopy = [NSString stringWithFormat:@"%@ (for record %@)", localizedDescription, idCopy];
  }

  else
  {
    idCopy = [NSString stringWithFormat:@"record %@", idCopy];
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  userInfo = [v9 userInfo];

  if (userInfo)
  {
    userInfo2 = [v9 userInfo];
    [v12 setDictionary:userInfo2];

    [v12 setObject:idCopy forKey:NSLocalizedDescriptionKey];
  }

  domain = [v9 domain];
  v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v9 code], v12);

  return v16;
}

+ (id)_errorsByTaskForTasksByRecordId:(id)id fromUnderlyingError:(id)error
{
  idCopy = id;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:CKErrorDomain])
  {
    code = [errorCopy code];

    if (code == 2)
    {
      v10 = +[NSMapTable strongToStrongObjectsMapTable];
      userInfo = [errorCopy userInfo];
      v12 = [userInfo objectForKey:CKPartialErrorsByItemIDKey];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10007C540;
      v15[3] = &unk_100275C28;
      v16 = idCopy;
      selfCopy = self;
      v13 = v10;
      v17 = v13;
      [v12 enumerateKeysAndObjectsUsingBlock:v15];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)_addBackgroundSchedulingStatusToStatusEntries:(id)entries now:(id)now
{
  entriesCopy = entries;
  nowCopy = now;
  reschedulerDescription = [(CPLCloudKitReschedulerManager *)self->_reschedulerManager reschedulerDescription];
  if (reschedulerDescription)
  {
    v8 = [[NSString alloc] initWithFormat:@"Background scheduling: %@", reschedulerDescription];
    [entriesCopy addObject:v8];
  }

  v9 = [(CPLCloudKitReschedulerManager *)self->_reschedulerManager taskStatusesWithNow:nowCopy];
  if ([v9 count])
  {
    v10 = [NSString alloc];
    v11 = [v9 componentsJoinedByString:@"\n  "];
    v12 = [v10 initWithFormat:@"  %@", v11];
    [entriesCopy addObject:v12];
  }

  duetTicketProvider = [(CPLCloudKitTransport *)self duetTicketProvider];
  if (duetTicketProvider)
  {
    duetTicketProvider2 = [(CPLCloudKitTransport *)self duetTicketProvider];
    duetStatuses = [duetTicketProvider2 duetStatuses];

    if ([duetStatuses count])
    {
      v16 = [duetStatuses componentsJoinedByString:@"\n  "];
      v17 = [NSString stringWithFormat:@"CoreDuet State:\n  %@", v16];
      [entriesCopy addObject:v17];
    }
  }

  else
  {
    [entriesCopy addObject:@"CoreDuet State: not supported for this engine"];
  }
}

- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C8E4;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007CABC;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  coordinator = self->_coordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007CC5C;
  v7[3] = &unk_100272378;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(CPLCloudKitCoordinator *)coordinator getStatusForClient:self completionHandler:v7];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007D748;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)testKey:(id)key value:(id)value completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if ([keyCopy isEqual:@"reset-container"])
  {
    [(CPLCloudKitTransport *)self _noteContainerHasBeenWiped];
LABEL_5:
    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
    goto LABEL_6;
  }

  if ([keyCopy isEqual:@"unreset-container"])
  {
    abstractObject = [(CPLCloudKitTransport *)self abstractObject];
    engineLibrary = [abstractObject engineLibrary];
    [engineLibrary setContainerHasBeenWiped:0];

    goto LABEL_5;
  }

  if ([keyCopy isEqual:@"refresh-cloudkit"])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_1000770DC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Refreshing account info", buf, 2u);
      }
    }

    workQueue = self->_workQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007DA74;
    v16[3] = &unk_1002723C8;
    v16[4] = self;
    v17 = handlerCopy;
    v13 = v16;
    *buf = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100002AD4;
    v21 = &unk_100271E98;
    v22 = v13;
    v14 = workQueue;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v14, v15);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

LABEL_6:
}

- (void)_cleanTempRecoveredDataURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    if (qword_1002C5400 != -1)
    {
      sub_1001A6ECC();
    }

    if (byte_1002C53F8 == 1)
    {
      dispatch_assert_queue_V2(self->_workQueue);
      v5 = dispatch_time(0, 10000000000);
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007DCE0;
      block[3] = &unk_100271F40;
      v9 = lCopy;
      dispatch_after(v5, workQueue, block);
    }

    else
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtURL:lCopy error:0];
    }
  }
}

- (id)_tempDestinationURLForRecoveredDataWithTempFolderURL:(id)l
{
  workQueue = self->_workQueue;
  lCopy = l;
  dispatch_assert_queue_V2(workQueue);
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = [lCopy URLByAppendingPathComponent:uUIDString isDirectory:0];

  return v7;
}

- (void)_withTempCKAssetForData:(id)data tempFolderURL:(id)l block:(id)block
{
  blockCopy = block;
  workQueue = self->_workQueue;
  lCopy = l;
  dataCopy = data;
  dispatch_assert_queue_V2(workQueue);
  v12 = [(CPLCloudKitTransport *)self _tempDestinationURLForRecoveredDataWithTempFolderURL:lCopy];

  v15 = 0;
  LODWORD(workQueue) = [dataCopy writeToURL:v12 options:1 error:&v15];

  v13 = v15;
  if (workQueue)
  {
    v14 = [[CKAsset alloc] initWithFileURL:v12];
    [v14 setItemTypeHint:@"fxd"];
    blockCopy[2](blockCopy, v14, 0);
  }

  else
  {
    (blockCopy)[2](blockCopy, 0, v13);
  }

  [(CPLCloudKitTransport *)self _cleanTempRecoveredDataURL:v12];
}

- (NSString)cloudKitClientIdentifier
{
  engineLibrary = [(CPLCloudKitTransport *)self engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];

  return libraryIdentifier;
}

- (void)_coordinator:(id)_coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature tempFolderURL:(id)l completionHandler:(id)handler
{
  dCopy = d;
  nameCopy = name;
  typeCopy = type;
  signatureCopy = signature;
  lCopy = l;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10007E130;
  v31[3] = &unk_100275D88;
  v31[4] = self;
  v32 = dCopy;
  v33 = nameCopy;
  v34 = typeCopy;
  v37 = handlerCopy;
  v38 = a2;
  v35 = lCopy;
  v36 = signatureCopy;
  v22 = v31;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v40 = v22;
  v23 = workQueue;
  v24 = signatureCopy;
  v25 = lCopy;
  v26 = typeCopy;
  v27 = handlerCopy;
  v28 = nameCopy;
  v29 = dCopy;
  v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v23, v30);
}

- (void)coordinator:(id)coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007F0D4;
  v19[3] = &unk_100275DB0;
  selfCopy = self;
  coordinatorCopy = coordinator;
  dCopy = d;
  nameCopy = name;
  typeCopy = type;
  signatureCopy = signature;
  handlerCopy = handler;
  v13 = handlerCopy;
  v14 = signatureCopy;
  v15 = typeCopy;
  v16 = nameCopy;
  v17 = dCopy;
  v18 = coordinatorCopy;
  [(CPLCloudKitTransport *)selfCopy getTemporaryFolderWithName:@"DataRepair" completionHandler:v19];
}

- (void)coordinatorDidReceiveAPushNotification:(id)notification
{
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F2C8;
  v7[3] = &unk_100271F40;
  v7[4] = self;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = workQueue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (id)interestingZoneIDsForCoordinator:(id)coordinator
{
  if ([(CPLCloudKitTransport *)self _isAppLibrary])
  {
    v4 = [CKRecordZoneID alloc];
    mainScopeIdentifier = [(CPLCloudKitTransport *)self mainScopeIdentifier];
    v6 = [v4 initWithCPLScopeIdentifier:mainScopeIdentifier];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  zoneID = [dCopy zoneID];
  v6 = [(CPLCloudKitTransport *)self scopeIdentifierFromZoneID:zoneID];
  v7 = [dCopy cpl_scopedIdentifierWithScopeIdentifier:v6];

  return v7;
}

- (void)launchOperation:(id)operation type:(int64_t)type
{
  operationCopy = operation;
  [(CPLCloudKitCoordinator *)self->_coordinator launchOperation:operationCopy type:type forClient:self];
  if (![(CPLCloudKitTransport *)self opened])
  {
    sub_1001A77C8(operationCopy);
  }
}

- (BOOL)isNetworkConnected
{
  engineLibrary = [(CPLCloudKitTransport *)self engineLibrary];
  systemMonitor = [engineLibrary systemMonitor];
  isNetworkConnected = [systemMonitor isNetworkConnected];

  return isNetworkConnected;
}

- (BOOL)canBoostBackgroundOperations
{
  engineLibrary = [(CPLCloudKitTransport *)self engineLibrary];
  systemMonitor = [engineLibrary systemMonitor];
  canBoostBackgroundOperations = [systemMonitor canBoostBackgroundOperations];

  return canBoostBackgroundOperations;
}

- (void)_failAllFutureOperationsWithContainerHasBeenWipedError
{
  errorForAllOperations = [(CPLCloudKitTransport *)self errorForAllOperations];
  v4 = errorForAllOperations;
  if (!errorForAllOperations || ([errorForAllOperations isCPLErrorWithCode:1011] & 1) == 0)
  {
    sub_1001A7890(&v5, &v6, self);
  }
}

- (void)_noteContainerHasBeenWiped
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007F820;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = workQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)processTaskErrorIfNeeded:(id)needed forTask:(id)task
{
  neededCopy = needed;
  taskCopy = task;
  if (neededCopy)
  {
    v26 = 0;
    v27 = 0;
    if ([CPLCloudKitErrors getCloudKitErrorCode:&v27 internalCode:&v26 fromError:neededCopy])
    {
      if (v27 == 18 || v26 == 2039)
      {
        sub_1001A7A2C(self, v25);
        goto LABEL_21;
      }

      if ([CPLCloudKitErrors isContainerHasBeenWipedError:neededCopy])
      {
        sub_1001A79B8(self);
        goto LABEL_21;
      }

      if (v27 == 114)
      {
        abstractObject = [(CPLCloudKitTransport *)self abstractObject];
        engineLibrary = [abstractObject engineLibrary];
        isWalrusEnabled = [engineLibrary isWalrusEnabled];

        if (!isWalrusEnabled)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v20 = sub_1000770DC();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = taskCopy;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Task %@ failed because Walrus is enabled", &buf, 0xCu);
            }
          }

          workQueue = self->_workQueue;
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10007FC68;
          v24[3] = &unk_100271F40;
          v24[4] = self;
          v22 = v24;
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v29 = sub_100002AD4;
          v30 = &unk_100271E98;
          v31 = v22;
          v11 = workQueue;
          v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
          dispatch_async(v11, v23);

          goto LABEL_20;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v11 = sub_1000770DC();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = taskCopy;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Task %@ failed because Walrus is enabled - this might be a bug", &buf, 0xCu);
          }

LABEL_20:
        }
      }

      else if (v26 == 6000)
      {
        v12 = [CPLCloudKitErrors realErrorForError:neededCopy];
        userInfo = [v12 userInfo];
        v14 = [userInfo objectForKey:NSUnderlyingErrorKey];

        userInfo2 = [v14 userInfo];
        v16 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

        if ([v16 code] == 11)
        {
          abstractObject2 = [(CPLCloudKitTransport *)self abstractObject];
          engineLibrary2 = [abstractObject2 engineLibrary];
          scheduler = [engineLibrary2 scheduler];
          [scheduler noteStoreNeedsToUpdateDisabledFeatures];
        }
      }
    }
  }

LABEL_21:
}

- (BOOL)shouldRunOperationsWithError:(id *)error
{
  errorForAllOperations = [(CPLCloudKitTransport *)self errorForAllOperations];
  if (error && errorForAllOperations)
  {
    errorForAllOperations = errorForAllOperations;
    *error = errorForAllOperations;
  }

  v5 = errorForAllOperations == 0;

  return v5;
}

- (BOOL)shouldIgnoreZoneWithZoneID:(id)d
{
  dCopy = d;
  if (![(CPLCloudKitTransport *)self _isAppLibrary])
  {
    if (-[CPLCloudKitTransport supportsSharedDatabase](self, "supportsSharedDatabase") || ([dCopy ownerName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", CKCurrentUserDefaultName), v9, v10))
    {
      if ([(CPLCloudKitTransport *)self isSystemLibrary])
      {
        zoneName = [dCopy zoneName];
        v12 = [zoneName hasPrefix:CPLMainScopeIdentifierForAppPrefix];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      mainScopeIdentifier = [(CPLCloudKitTransport *)self mainScopeIdentifier];
      v14 = [(CPLCloudKitZoneIdentification *)CPLCloudKitLibraryShareZoneIdentification shouldIgnoreZoneID:dCopy forMainScopeIdentifier:mainScopeIdentifier];

      if (v14 & 1) != 0 || ([(CPLCloudKitTransport *)self mainScopeIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(CPLCloudKitZoneIdentification *)CPLCloudKitCollectionShareZoneIdentification shouldIgnoreZoneID:dCopy forMainScopeIdentifier:v15], v15, (v16))
      {
LABEL_12:
        v8 = 1;
        goto LABEL_18;
      }

      shouldIgnoreZoneWithZoneID = self->_shouldIgnoreZoneWithZoneID;
      if (shouldIgnoreZoneWithZoneID)
      {
        v8 = shouldIgnoreZoneWithZoneID[2](shouldIgnoreZoneWithZoneID, dCopy);
        goto LABEL_18;
      }
    }

    v8 = 0;
    goto LABEL_18;
  }

  cpl_zoneName = [dCopy cpl_zoneName];
  mainScopeIdentifier2 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  v7 = mainScopeIdentifier2;
  v8 = (!cpl_zoneName || !mainScopeIdentifier2 || ([cpl_zoneName isEqual:mainScopeIdentifier2] & 1) == 0) && (cpl_zoneName | v7) != 0;

LABEL_18:
  return v8;
}

- (BOOL)shouldIgnoreScopeWithIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = [(CPLCloudKitTransport *)self zoneIDFromScopeIdentifier:identifier];
  LOBYTE(selfCopy) = [(CPLCloudKitTransport *)selfCopy shouldIgnoreZoneWithZoneID:v4];

  return selfCopy;
}

- (void)registerHelper:(id)helper withIdentifier:(id)identifier
{
  helperCopy = helper;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008003C;
  v15[3] = &unk_100271D68;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = helperCopy;
  v18 = a2;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = workQueue;
  v12 = helperCopy;
  v13 = identifierCopy;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)acquireHelperWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008022C;
  v14[3] = &unk_100272C08;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = workQueue;
  v11 = identifierCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)getTemporaryFolderWithName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000804B8;
  v14[3] = &unk_100272C08;
  v15 = nameCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = workQueue;
  v11 = nameCopy;
  v12 = handlerCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)updateAccountEPPCapability:(int64_t)capability
{
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  [engineLibrary setAccountEPPCapability:capability];
}

- (void)reschedulerManager:(id)manager didUpdateBlockedState:(id)state
{
  stateCopy = state;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080818;
  v11[3] = &unk_1002720E0;
  v11[4] = self;
  v12 = stateCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = workQueue;
  v9 = stateCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (id)createGroupForDownloadWithIntent:(unint64_t)intent priority:(unint64_t)priority
{
  allowsSyncOverCellular = [objc_opt_class() allowsSyncOverCellular];
  v8 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", allowsSyncOverCellular, [objc_opt_class() allowsSyncOverExpensiveNetwork], +[CPLResourceTransferTaskOptions isForegroundOperationForIntent:priority:](CPLResourceTransferTaskOptions, "isForegroundOperationForIntent:priority:", intent, priority), 0, 0);
  v9 = @"Non-Derivatives Prefetch";
  switch(intent)
  {
    case 0uLL:
      v10 = @"Resources Download";
      v11 = @"Resources Prefetch";
      goto LABEL_19;
    case 1uLL:
      break;
    case 2uLL:
      v9 = @"Keep-Originals Prefetch";
      break;
    case 3uLL:
      v10 = @"Memory Playback Resources Download";
      if (priority == 1)
      {
        v10 = @"Memory Playback Resources Preload";
      }

      v11 = @"Memories Prefetch";
      goto LABEL_19;
    case 4uLL:
      v9 = @"Recovery Download";
      break;
    case 5uLL:
      v9 = @"Optimize-Originals Prefetch";
      break;
    case 6uLL:
      v10 = @"Widget Resources Download";
      v11 = @"Widget Prefetch";
LABEL_19:
      v12 = priority == 2;
      goto LABEL_20;
    case 7uLL:
      v9 = @"Grid Resources Download";
      break;
    case 8uLL:
      v9 = @"1Up Resources Download";
      break;
    case 9uLL:
      v9 = @"Edit Resources Download";
      break;
    case 0xAuLL:
      v9 = @"Media Analysis Download";
      break;
    case 0xBuLL:
      v9 = @"Watch Sync Download";
      break;
    case 0xCuLL:
      v9 = @"Wallpaper Suggestion";
      break;
    case 0xDuLL:
      v9 = @"Wallpaper Shuffle";
      break;
    case 0xEuLL:
      v9 = @"Wallpaper Live Photo";
      break;
    case 0xFuLL:
      v9 = @"Background Edit Suggestion";
      break;
    case 0x10uLL:
      v10 = @"Memory Inline Playback Resources Download";
      v11 = @"Memory Inline Playback Resources Preload";
      v12 = priority == 1;
LABEL_20:
      if (v12)
      {
        v9 = v11;
      }

      else
      {
        v9 = v10;
      }

      break;
    case 0x11uLL:
      v9 = @"Background Upload";
      break;
    default:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = sub_1000770DC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 134217984;
          intentCopy = intent;
          sub_1000139CC(&_mh_execute_header, v15, v16, "Invalid download intent: %lu", &v17);
        }
      }

      v9 = @"Resources Download";
      break;
  }

  if (self->_operationGroupMapper)
  {
    v14 = sub_1001A50BC(self, v9);
    [v8 setName:v14];
  }

  else
  {
    [v8 setName:v9];
  }

  return v8;
}

- (void)_updateStateWithAccountInfo:(id)info walrusEnabledDefault:(id)default
{
  infoCopy = info;
  v7 = infoCopy;
  if (default)
  {
    bOOLValue = [default BOOLValue];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_1000770DC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000343C();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Forcing walrus to %@", v42, 0xCu);
      }
    }

    selfCopy3 = self;
    v11 = bOOLValue;
LABEL_7:
    [(CPLCloudKitTransport *)selfCopy3 _updateWalrusTo:v11, *v42];
    goto LABEL_8;
  }

  supportsDeviceToDeviceEncryption = [infoCopy supportsDeviceToDeviceEncryption];
  abstractObject = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  [engineLibrary setKeychainCDPEnabled:supportsDeviceToDeviceEncryption];

  abstractObject2 = [(CPLCloudKitTransport *)self abstractObject];
  engineLibrary2 = [abstractObject2 engineLibrary];
  LOBYTE(engineLibrary) = [engineLibrary2 isKeychainCDPEnabled];

  if ((engineLibrary & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_1000770DC();
    if (sub_100003424(v17))
    {
      *v42 = 0;
      sub_100013990();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
    }
  }

  walrusStatus = [v7 walrusStatus];
  if (walrusStatus == 2)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v36 = sub_1000770DC();
      if (sub_100003424(v36))
      {
        *v42 = 0;
        sub_100013990();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
      }
    }

    selfCopy3 = self;
    v11 = 0;
    goto LABEL_7;
  }

  if (walrusStatus == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = sub_1000770DC();
      if (sub_100003424(v30))
      {
        *v42 = 0;
        sub_100013990();
        _os_log_impl(v31, v32, v33, v34, v35, 2u);
      }
    }

    selfCopy3 = self;
    v11 = 1;
    goto LABEL_7;
  }

  if (!walrusStatus && (_CPLSilentLogging & 1) == 0)
  {
    v24 = sub_1000770DC();
    if (sub_100003448(v24))
    {
      *v42 = 0;
      sub_100021D44();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
    }
  }

LABEL_8:
}

- (void)_updateStateWithAccountStatus:(int64_t)status
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000770DC();
    if (sub_100003424(v6))
    {
      CKStringFromAccountStatus();
      *(&v13 + 4) = LODWORD(v13) = 138543362;
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  switch(status)
  {
    case 1:
      [(CPLCloudKitTransport *)self _enableSchedulerBecauseAccountIsAvailable];
      return;
    case 2:
      v12 = @"account is restricted";
      goto LABEL_10;
    case 3:
      v12 = @"there is no Apple Account";
      goto LABEL_10;
    case 4:
      v12 = @"Apple Account is not ready";
LABEL_10:
      [(CPLCloudKitTransport *)self _disableSchedulerBecauseAccountIsUnavailableWithReason:v12, v13];
      break;
    default:
      return;
  }
}

@end