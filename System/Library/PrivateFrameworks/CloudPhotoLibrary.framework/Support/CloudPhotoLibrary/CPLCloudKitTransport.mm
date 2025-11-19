@interface CPLCloudKitTransport
+ (BOOL)allowsSyncOverCellular;
+ (BOOL)allowsSyncOverExpensiveNetwork;
+ (BOOL)allowsUserInitiatedOperationsOverExpensiveNetwork;
+ (NSArray)involvedProcesses;
+ (id)_betterErrorForRecordId:(id)a3 recordError:(id)a4;
+ (id)_errorsByTaskForTasksByRecordId:(id)a3 fromUnderlyingError:(id)a4;
- (BOOL)_isAppLibrary;
- (BOOL)canBoostBackgroundOperations;
- (BOOL)canBoostOperations;
- (BOOL)getProposedStagingScopeIdentifier:(id *)a3 stagingTransportScope:(id *)a4 forScope:(id)a5 transportScope:(id)a6 transportUserIdentifier:(id)a7;
- (BOOL)isAppLibrary;
- (BOOL)isForeground;
- (BOOL)isNetworkConnected;
- (BOOL)isNewTransportScope:(id)a3 compatibleWithOldTransportScope:(id)a4;
- (BOOL)isResourceDynamic:(id)a3;
- (BOOL)isSystemLibrary;
- (BOOL)shouldIgnoreScopeWithIdentifier:(id)a3;
- (BOOL)shouldIgnoreZoneWithZoneID:(id)a3;
- (BOOL)shouldRunOperationsWithError:(id *)a3;
- (CPLCloudKitTransport)initWithAbstractObject:(id)a3;
- (NSArray)involvedProcesses;
- (NSString)cloudKitClientIdentifier;
- (NSString)defaultSourceBundleIdentifier;
- (NSString)libraryIdentifier;
- (NSString)mainScopeIdentifier;
- (id)_tempDestinationURLForRecoveredDataWithTempFolderURL:(id)a3;
- (id)acceptTaskForSharedScope:(id)a3 completionHandler:(id)a4;
- (id)acquireReschedulerTaskWithCompletionHandler:(id)a3;
- (id)cleanupStagedScope:(id)a3 stagingScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)createGroupForAcceptingLibraryShare;
- (id)createGroupForAcceptingMomentShare;
- (id)createGroupForAnalysisDownload;
- (id)createGroupForChangeDownload;
- (id)createGroupForChangeUpload;
- (id)createGroupForCleanupLibrary;
- (id)createGroupForComputeStateDownloadOnDemand;
- (id)createGroupForComputeStateDownloadPrefetch;
- (id)createGroupForComputeStateUpload;
- (id)createGroupForDownloadWithIntent:(unint64_t)a3 priority:(unint64_t)a4;
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
- (id)createGroupForMovieStreamingWithIntent:(unint64_t)a3;
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
- (id)createReschedulerForSession:(id)a3;
- (id)createScopeTaskForScope:(id)a3 completionHandler:(id)a4;
- (id)deleteTransportScope:(id)a3 scope:(id)a4 completionHandler:(id)a5;
- (id)descriptionForTransportScope:(id)a3;
- (id)downloadBatchTaskForSyncAnchor:(id)a3 scope:(id)a4 transportScopeMapping:(id)a5 currentScopeChange:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)downloadComputeStatesWithScopedIdentifiers:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetStorageURL:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8;
- (id)engineLibrary;
- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)a3;
- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (id)fetchTaskForScopeWithShareURL:(id)a3 completionHandler:(id)a4;
- (id)fetchTransportScopeForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5;
- (id)fixUpSparseRecordsTaskWithTasks:(id)a3 transportScopeMapping:(id)a4 completionHandler:(id)a5;
- (id)getCurrentSyncAnchorWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6;
- (id)getScopeInfoWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6;
- (id)getStreamingURLTaskForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 clientBundleID:(id)a9 completionHandler:(id)a10;
- (id)inMemoryDownloadTaskForResource:(id)a3 record:(id)a4 target:(id)a5 transportScopeMapping:(id)a6 clientBundleID:(id)a7 completionHandler:(id)a8;
- (id)interestingZoneIDsForCoordinator:(id)a3;
- (id)queryTaskForCursor:(id)a3 class:(Class)a4 scope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)queryUserDetailsTaskForParticipants:(id)a3 completionHandler:(id)a4;
- (id)rampingRequestTaskForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5;
- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 userIdentifiersToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10;
- (id)reshareRecordsTaskWithRecords:(id)a3 sourceScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7;
- (id)resourceCheckTaskForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)resourcesDownloadTaskWithCompletionHandler:(id)a3;
- (id)scopeNameForTransportScope:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)sendFeedbackTaskForMessages:(id)a3 completionHandler:(id)a4;
- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)a3;
- (id)simpleDescriptionForSyncAnchor:(id)a3;
- (id)startExitTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 completionHandler:(id)a8;
- (id)tentativeConcreteScopeForScope:(id)a3;
- (id)transportScopeForUpgradeFromScopeName:(id)a3;
- (id)updateContributorsTaskWithSharedScope:(id)a3 contributorsUpdates:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6;
- (id)updateShareTaskForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5;
- (id)updateTransportScope:(id)a3 scope:(id)a4 scopeChange:(id)a5 completionHandler:(id)a6;
- (id)uploadBatchTaskForBatch:(id)a3 scope:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8;
- (id)uploadComputeStates:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetMapping:(id)a6 transportScopeMapping:(id)a7 knownRecords:(id)a8 completionHandler:(id)a9;
- (void)_addBackgroundSchedulingStatusToStatusEntries:(id)a3 now:(id)a4;
- (void)_cleanTempRecoveredDataURL:(id)a3;
- (void)_coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 tempFolderURL:(id)a8 completionHandler:(id)a9;
- (void)_disableSchedulerBecauseAccountIsUnavailableWithReason:(id)a3;
- (void)_enableSchedulerBecauseAccountIsAvailable;
- (void)_failAllFutureOperationsWithContainerHasBeenWipedError;
- (void)_forceUpdateAccountInfoWithReason:(id)a3 completionHandler:(id)a4;
- (void)_noteContainerHasBeenWiped;
- (void)_startWatchingAccountInfoChangesWithCompletionHandler:(id)a3;
- (void)_stopWatchingAccountInfoChanges;
- (void)_updateAccountInfoWithCompletionHandler:(id)a3;
- (void)_updateBudgets;
- (void)_updateStateWithAccountInfo:(id)a3 walrusEnabledDefault:(id)a4;
- (void)_updateStateWithAccountStatus:(int64_t)a3;
- (void)_withTempCKAssetForData:(id)a3 tempFolderURL:(id)a4 block:(id)a5;
- (void)acquireHelperWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 completionHandler:(id)a8;
- (void)coordinatorDidReceiveAPushNotification:(id)a3;
- (void)duetTicketProviderBlockedStatusDidChange;
- (void)findPersistedInitialSyncSession:(id)a3 completionHandler:(id)a4;
- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)a3;
- (void)getStatusDictionaryWithCompletionHandler:(id)a3;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)getSystemBudgetsWithCompletionHandler:(id)a3;
- (void)getTemporaryFolderWithName:(id)a3 completionHandler:(id)a4;
- (void)launchOperation:(id)a3 type:(int64_t)a4;
- (void)openWithCompletionHandler:(id)a3;
- (void)processTaskErrorIfNeeded:(id)a3 forTask:(id)a4;
- (void)registerHelper:(id)a3 withIdentifier:(id)a4;
- (void)reschedulerManager:(id)a3 didUpdateBlockedState:(id)a4;
- (void)setIsSignificantWorkPending:(BOOL)a3;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)updateAccountEPPCapability:(int64_t)a3;
- (void)upgradeFlags:(id)a3 fromTransportScope:(id)a4;
@end

@implementation CPLCloudKitTransport

- (id)createGroupForFetchScopeListChanges
{
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 clientAppBundleIdentifier];

  return v4;
}

- (BOOL)isForeground
{
  v2 = [(CPLCloudKitTransport *)self engineLibrary];
  v3 = [v2 scheduler];
  v4 = [v3 isClientInForeground];

  return v4;
}

- (id)engineLibrary
{
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];

  return v3;
}

- (BOOL)canBoostOperations
{
  v2 = [(CPLCloudKitTransport *)self engineLibrary];
  v3 = [v2 systemMonitor];
  v4 = [v3 canBoostOperations];

  return v4;
}

- (BOOL)_isAppLibrary
{
  v2 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  v3 = [v2 hasPrefix:CPLMainScopeIdentifierForAppPrefix];

  return v3;
}

- (NSString)mainScopeIdentifier
{
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 mainScopeIdentifier];

  return v4;
}

- (BOOL)isSystemLibrary
{
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 isSystemLibrary];

  return v4;
}

- (BOOL)isAppLibrary
{
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 isAppLibrary];

  return v4;
}

- (NSString)libraryIdentifier
{
  v2 = [(CPLCloudKitTransport *)self abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 libraryIdentifier];

  return v4;
}

- (CPLCloudKitTransport)initWithAbstractObject:(id)a3
{
  v25.receiver = self;
  v25.super_class = CPLCloudKitTransport;
  v3 = [(CPLCloudKitTransport *)&v25 initWithAbstractObject:a3];
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
  v3 = [(CPLCloudKitTransport *)self duetTicketProvider];

  if (v3)
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

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007691C;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000775A8;
  v12[3] = &unk_100275AF0;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = workQueue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

- (id)acquireReschedulerTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CPLCloudKitAcquireReschedulerTask alloc] initWithController:self completionHandler:v4];

  return v5;
}

- (id)fetchRecordsTaskForRecordsWithScopedIdentifiers:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[CPLCloudKitFetchRecordsTask alloc] initWithController:self scopedIdentifiers:v13 targetMapping:v12 transportScopeMapping:v11 completionHandler:v10];

  return v14;
}

- (id)uploadBatchTaskForBatch:(id)a3 scope:(id)a4 targetMapping:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[CPLCloudKitUploadBatchTask alloc] initWithController:self scope:v18 targetMapping:v17 transportScopeMapping:v16 progressHandler:v15 completionHandler:v14];

  [(CPLCloudKitUploadBatchTask *)v20 setBatch:v19];
  v21 = [(CPLCloudKitTransport *)self abstractObject];
  v22 = [v21 engineLibrary];
  v23 = [v22 store];
  v24 = [v23 libraryCreationDate];
  [(CPLCloudKitUploadBatchTask *)v20 setCplEnabledDate:v24];

  return v20;
}

- (id)reshareRecordsTaskWithRecords:(id)a3 sourceScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[CPLCloudKitReshareRecordsTask alloc] initWithController:self records:v16 sourceScope:v15 destinationScope:v14 transportScopeMapping:v13 completionHandler:v12];

  return v17;
}

- (id)deleteTransportScope:(id)a3 scope:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CPLCloudKitDeleteTransportScopeTask alloc];
  v12 = v11;
  if (v8)
  {
    v13 = [CPLCloudKitScope scopeFromTransportScope:v8];
    v14 = [(CPLCloudKitDeleteTransportScopeTask *)v12 initWithController:self cloudKitScope:v13 scope:v9 completionHandler:v10];
  }

  else
  {
    v14 = [(CPLCloudKitDeleteTransportScopeTask *)v11 initWithController:self cloudKitScope:0 scope:v9 completionHandler:v10];
  }

  return v14;
}

- (id)updateTransportScope:(id)a3 scope:(id)a4 scopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [CPLCloudKitUpdateTransportScopeTask alloc];
  v15 = v14;
  if (v10)
  {
    v16 = [CPLCloudKitScope scopeFromTransportScope:v10];
    v17 = [(CPLCloudKitUpdateTransportScopeTask *)v15 initWithController:self cloudKitScope:v16 scope:v11 scopeChange:v12 completionHandler:v13];
  }

  else
  {
    v17 = [(CPLCloudKitUpdateTransportScopeTask *)v14 initWithController:self cloudKitScope:0 scope:v11 scopeChange:v12 completionHandler:v13];
  }

  return v17;
}

- (id)getScopeInfoWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLCloudKitGetScopeInfoTask alloc];
  v15 = [CPLCloudKitScope scopeFromTransportScope:v13];

  v16 = [(CPLCloudKitGetScopeInfoTask *)v14 initWithController:self cloudKitScope:v15 scope:v12 previousScopeChange:v11 completionHandler:v10];

  return v16;
}

- (id)getCurrentSyncAnchorWithTransportScope:(id)a3 scope:(id)a4 previousScopeChange:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CPLCloudKitGetCurrentSyncAnchorTask alloc];
  v15 = [CPLCloudKitScope scopeFromTransportScope:v13];

  v16 = [(CPLCloudKitGetCurrentSyncAnchorTask *)v14 initWithController:self cloudKitScope:v15 scope:v12 previousScopeChange:v11 completionHandler:v10];

  return v16;
}

- (id)fetchTransportScopeForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CPLCloudKitFetchTransportScopeTask alloc];
  v12 = v11;
  if (v9)
  {
    v13 = [CPLCloudKitScope scopeFromTransportScope:v9];
    v14 = [(CPLCloudKitFetchTransportScopeTask *)v12 initWithController:self scope:v8 cloudKitScope:v13 completionHandler:v10];
  }

  else
  {
    v14 = [(CPLCloudKitFetchTransportScopeTask *)v11 initWithController:self scope:v8 cloudKitScope:0 completionHandler:v10];
  }

  return v14;
}

- (id)queryTaskForCursor:(id)a3 class:(Class)a4 scope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [[CPLCloudKitQueryTask alloc] initWithController:self cursor:v18 class:a4 scope:v17 transportScopeMapping:v16 progressHandler:v15 completionHandler:v14];

  return v19;
}

- (id)downloadBatchTaskForSyncAnchor:(id)a3 scope:(id)a4 transportScopeMapping:(id)a5 currentScopeChange:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[CPLCloudKitDownloadBatchTask alloc] initWithController:self syncAnchor:v19 scope:v18 transportScopeMapping:v17 currentScopeChange:v16 progressHandler:v15 completionHandler:v14];

  return v20;
}

- (id)uploadComputeStates:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetMapping:(id)a6 transportScopeMapping:(id)a7 knownRecords:(id)a8 completionHandler:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[CPLCloudKitUploadComputeStatesTask alloc] initWithController:self computeStates:v22 scope:v21 sharedScope:v20 targetMapping:v19 transportScopeMapping:v18 knownRecords:v17 completionHandler:v16];

  [(CPLCloudKitTransportTask *)v23 setGate:self->_computeStateOperationsGate];

  return v23;
}

- (id)downloadComputeStatesWithScopedIdentifiers:(id)a3 scope:(id)a4 sharedScope:(id)a5 targetStorageURL:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[CPLCloudKitDownloadComputeStatesTask alloc] initWithController:self scopedIdentifiers:v19 scope:v18 sharedScope:v17 targetStorageURL:v16 transportScopeMapping:v15 completionHandler:v14];

  [(CPLCloudKitTransportTask *)v20 setGate:self->_computeStateOperationsGate];

  return v20;
}

- (id)fetchScopeListChangesForScopeListSyncAnchor:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CPLCloudKitFetchScopeListChangesTask alloc] initWithController:self scopeListSyncAnchor:v10 progressHandler:v9 completionHandler:v8];

  return v11;
}

- (id)getStreamingURLTaskForResource:(id)a3 intent:(unint64_t)a4 hints:(id)a5 timeRange:(id *)a6 target:(id)a7 transportScopeMapping:(id)a8 clientBundleID:(id)a9 completionHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a5;
  v22 = a3;
  v23 = [CPLCloudKitGetStreamingURLTask alloc];
  streamingContentItemCache = self->_streamingContentItemCache;
  v25 = *&a6->var0.var3;
  v29[0] = *&a6->var0.var0;
  v29[1] = v25;
  v29[2] = *&a6->var1.var1;
  v26 = [(CPLCloudKitGetStreamingURLTask *)v23 initWithController:self resource:v22 hints:v21 timeRange:v29 target:v20 transportScopeMapping:v19 cache:streamingContentItemCache completionHandler:v17];

  v27 = [(CPLCloudKitTransport *)self createGroupForMovieStreamingWithIntent:a4];
  [(CPLCloudKitTransportTask *)v26 setTransportGroup:v27];

  [(CPLCloudKitTransportTask *)v26 setGate:self->_streamingGate];
  [(CPLCloudKitTransportTask *)v26 setSourceBundleIdentifier:v18];

  return v26;
}

- (id)resourceCheckTaskForResources:(id)a3 targetMapping:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[CPLCloudKitResourcesCheckTask alloc] initWithController:self resources:v13 targetMapping:v12 transportScopeMapping:v11 completionHandler:v10];

  v15 = [(CPLCloudKitTransport *)self createGroupForPruningCheck];
  [(CPLCloudKitTransportTask *)v14 setTransportGroup:v15];

  return v14;
}

- (id)rampingRequestTaskForResourceType:(unint64_t)a3 numRequested:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [[CPLCloudKitRampingRequestTask alloc] initWithController:self resourceType:a3 numRequested:a4 completionHandler:v8];

  v10 = [(CPLCloudKitTransport *)self createGroupForAnalysisDownload];
  [(CPLCloudKitTransportTask *)v9 setTransportGroup:v10];

  return v9;
}

- (id)resourcesDownloadTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CPLCloudKitResourcesDownloadTask alloc] initWithController:self completionHandler:v4];

  [(CPLCloudKitTransportTask *)v5 setGate:self->_resourceDownloadGate];

  return v5;
}

- (id)inMemoryDownloadTaskForResource:(id)a3 record:(id)a4 target:(id)a5 transportScopeMapping:(id)a6 clientBundleID:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[CPLCloudKitInMemoryResourceDownloadTask alloc] initWithController:self resource:v19 record:v18 target:v17 transportScopeMapping:v16 completionHandler:v14];

  v21 = [(CPLCloudKitTransport *)self createGroupForAnalysisDownload];
  [(CPLCloudKitTransportTask *)v20 setTransportGroup:v21];

  [(CPLCloudKitTransportTask *)v20 setGate:self->_resourceDownloadGate];
  [(CPLCloudKitTransportTask *)v20 setSourceBundleIdentifier:v15];

  return v20;
}

- (id)createScopeTaskForScope:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLCloudKitCreateScopeTask alloc] initWithController:self scope:v7 completionHandler:v6];

  v9 = [v7 scopeType];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
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

- (id)updateShareTaskForScope:(id)a3 transportScope:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CPLCloudKitUpdateShareTask alloc] initWithController:self scope:v10 transportScope:v9 completionHandler:v8];

  v12 = [v10 scopeType];
  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 4)
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

- (id)fetchTaskForScopeWithShareURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLCloudKitFetchSharedScopeTask alloc] initWithController:self shareURL:v7 completionHandler:v6];

  v9 = [v7 pathComponents];

  if ([v9 count] < 2)
  {
    v11 = &stru_10027C2F0;
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:1];
    v11 = [v10 lowercaseString];
  }

  if (([(__CFString *)v11 isEqualToString:@"shared_library"]& 1) != 0 || [(__CFString *)v11 isEqualToString:@"photos_sharing"])
  {
    v12 = [(CPLCloudKitTransport *)self createGroupForFetchingLibraryShare];
  }

  else
  {
    v12 = [(CPLCloudKitTransport *)self createGroupForFetchingMomentShare];
  }

  v13 = v12;
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:v12];

  return v8;
}

- (id)acceptTaskForSharedScope:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLCloudKitAcceptSharedScopeTask alloc] initWithController:self scope:v7 completionHandler:v6];

  v9 = [v7 scopeType];
  if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
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

- (id)fetchExistingSharedLibraryScopeTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CPLCloudKitFetchExistingSharedScopeTask alloc] initWithController:self completionHandler:v4];

  v6 = [(CPLCloudKitTransport *)self createGroupForFetchingExistingSharedScope];
  [(CPLCloudKitTransportTask *)v5 setTransportGroup:v6];

  return v5;
}

- (id)startExitTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [CPLCloudKitExitSharedLibraryTask alloc];
  v19 = [CPLCloudKitScope scopeFromTransportScope:v16];

  v20 = [(CPLCloudKitExitSharedLibraryTask *)v18 initSelfExitWithController:self cloudKitScope:v19 scope:v17 share:v15 retentionPolicy:a6 exitSource:a7 completionHandler:v14];

  return v20;
}

- (id)removeParticipantInSharedLibraryTaskFromSharedScope:(id)a3 transportScope:(id)a4 share:(id)a5 retentionPolicy:(int64_t)a6 exitSource:(int64_t)a7 userIdentifiersToRemove:(id)a8 participantIDsToRemove:(id)a9 completionHandler:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [CPLCloudKitExitSharedLibraryTask alloc];
  v23 = [CPLCloudKitScope scopeFromTransportScope:v20];

  v24 = [(CPLCloudKitExitSharedLibraryTask *)v22 initRemoveParticipantsWithController:self cloudKitScope:v23 scope:v21 share:v19 userIdentifiersToRemove:v18 participantIDsToRemove:v17 retentionPolicy:a6 exitSource:a7 completionHandler:v16];

  return v24;
}

- (id)fixUpSparseRecordsTaskWithTasks:(id)a3 transportScopeMapping:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CPLCloudKitFixUpSparseRecordTask alloc] initWithController:self tasks:v10 transportScopeMapping:v9 completionHandler:v8];

  return v11;
}

- (id)sharedLibraryServerRampTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[CPLCloudKitSharedLibraryServerRampTask alloc] initWithController:self completionHandler:v4];

  v6 = [(CPLCloudKitTransport *)self createGroupForSharedLibraryRampCheck];
  [(CPLCloudKitTransportTask *)v5 setTransportGroup:v6];

  return v5;
}

- (id)updateContributorsTaskWithSharedScope:(id)a3 contributorsUpdates:(id)a4 transportScopeMapping:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[CPLCloudKitUpdateContributorsTask alloc] initWithController:self sharedScope:v13 contributorsUpdates:v12 transportScopeMapping:v11 completionHandler:v10];

  return v14;
}

- (id)cleanupStagedScope:(id)a3 stagingScope:(id)a4 destinationScope:(id)a5 transportScopeMapping:(id)a6 progressHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[CPLCloudKitCleanupStagedScopeTask alloc] initWithController:self stagedScope:v19 stagingScope:v18 destinationScope:v17 transportScopeMapping:v16 progressHandler:v15 completionHandler:v14];

  return v20;
}

- (id)queryUserDetailsTaskForParticipants:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLCloudKitQueryUserDetailsTask alloc] initWithController:self participants:v7 completionHandler:v6];

  v9 = [(CPLCloudKitTransport *)self createGroupForQueryUserIdentities];
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:v9];

  return v8;
}

- (id)sendFeedbackTaskForMessages:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLCloudKitSendFeedbackTask alloc] initWithController:self messages:v7 completionHandler:v6];

  v9 = [(CPLCloudKitTransport *)self createGroupForFeedback];
  [(CPLCloudKitTransportTask *)v8 setTransportGroup:v9];

  return v8;
}

- (BOOL)isResourceDynamic:(id)a3
{
  v3 = a3;
  if (CPLIsDynamicResource(v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [CPLCloudKitFakeDynamicDerivatives isFakeDerivative:v3];
  }

  return v4;
}

- (id)simpleDescriptionForSyncAnchor:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (qword_1002C53C0 != -1)
    {
      sub_1001A5DE4();
    }

    v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v3 classes:qword_1002C53C8];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [NSString alloc];
        v6 = [v4 data];
        v7 = [v6 base64EncodedStringWithOptions:0];
        v8 = [v5 initWithFormat:@"Cursor-%@", v7];
      }

      else
      {
        v6 = [v4 data];
        v8 = [v6 base64EncodedStringWithOptions:0];
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

- (BOOL)getProposedStagingScopeIdentifier:(id *)a3 stagingTransportScope:(id *)a4 forScope:(id)a5 transportScope:(id)a6 transportUserIdentifier:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [CPLCloudKitScope scopeFromTransportScope:a6];
  v15 = v14;
  v16 = 0;
  if (v13 && v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(CPLCloudKitTransport *)self zoneIdentificationForCloudKitScope:v15 engineScope:v12];
      v18 = [v17 proposedStagingZoneIdentificationWithCurrentUserID:v13];
      v19 = v18;
      v16 = v18 != 0;
      if (v18)
      {
        *a3 = [v18 scopeIdentifier];
        v20 = [v19 cloudKitScope];
        *a4 = [v20 transportScope];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)setIsSignificantWorkPending:(BOOL)a3
{
  v5 = [(CPLCloudKitTransport *)self duetTicketProvider];
  v6 = v5;
  if (v5)
  {
    workQueue = self->_workQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A5278;
    v11[3] = &unk_100273930;
    v13 = a3;
    v11[4] = self;
    v12 = v5;
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

- (void)getSystemBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitTransport *)self duetTicketProvider];
  v6 = v5;
  if (v5)
  {
    [v5 getSystemBudgetsWithCompletionHandler:v4];
  }

  else
  {
    workQueue = self->_workQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100079A38;
    v11[3] = &unk_100271E98;
    v12 = v4;
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

- (id)tentativeConcreteScopeForScope:(id)a3
{
  v4 = a3;
  v5 = [v4 scopeIdentifier];
  v6 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  if (![v5 isEqualToString:v6])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = [v4 scopeType];

  if (v7 == 1)
  {
    v6 = [[CKRecordZoneID alloc] initWithCPLScopeIdentifier:v5];
    v8 = [[CPLCloudKitScope alloc] initWithZoneID:v6];
    v9 = [(CPLCloudKitTransport *)self zoneIdentificationForCloudKitScope:v8 engineScope:v4];
    v10 = [v9 cloudKitScope];

LABEL_5:
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)descriptionForTransportScope:(id)a3
{
  v3 = [CPLCloudKitScope scopeFromTransportScope:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 zoneID];
    v6 = [v5 cpl_zoneName];

    if ([v4 isShared])
    {
      v7 = [[NSString alloc] initWithFormat:@"%@ shared", v6];

      v6 = v7;
    }
  }

  else
  {
    v6 = @"Invalid";
  }

  return v6;
}

- (id)scopeNameForTransportScope:(id)a3
{
  v3 = [CPLCloudKitScope scopeFromTransportScope:a3];
  v4 = [v3 zoneID];
  v5 = [v4 cpl_zoneName];

  return v5;
}

- (id)transportScopeForUpgradeFromScopeName:(id)a3
{
  v3 = a3;
  v4 = [[CKRecordZone alloc] initWithZoneName:v3];

  v5 = [[CPLCloudKitScope alloc] initWithZone:v4 options:0];
  v6 = [(CPLCloudKitScope *)v5 transportScope];

  return v6;
}

- (void)upgradeFlags:(id)a3 fromTransportScope:(id)a4
{
  v7 = a3;
  v5 = [CPLCloudKitScope scopeFromTransportScope:a4];
  v6 = v5;
  if (v5 && ([v5 options] & 2) != 0)
  {
    [v7 setValue:1 forFlag:1];
  }
}

- (BOOL)isNewTransportScope:(id)a3 compatibleWithOldTransportScope:(id)a4
{
  v5 = a4;
  v6 = [CPLCloudKitScope scopeFromTransportScope:a3];
  if (v6)
  {
    v7 = [CPLCloudKitScope scopeFromTransportScope:v5];
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 0);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 0);
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

- (id)createGroupForMovieStreamingWithIntent:(unint64_t)a3
{
  v5 = [objc_opt_class() allowsSyncOverCellular];
  v6 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v5, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
  if (a3 - 1 > 5)
  {
    v7 = @"Fetching Movie Stream";
  }

  else
  {
    v7 = off_100275DF0[a3 - 1];
  }

  if (!self->_mightRejectVideoStreaming || ![(NSIndexSet *)self->_rejectedVideoStreamingIntents containsIndex:a3])
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 0);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 0, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 1, 1, 1);
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
  v3 = [objc_opt_class() allowsSyncOverCellular];
  v4 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v3, [objc_opt_class() allowsSyncOverExpensiveNetwork], 0, 0, 1);
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

- (void)findPersistedInitialSyncSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  reschedulerManager = self->_reschedulerManager;
  if (reschedulerManager)
  {
    v10 = [(CPLCloudKitTransport *)self abstractObject];
    v11 = [v10 engineLibrary];
    v12 = [v11 scheduler];
    [(CPLCloudKitReschedulerManager *)reschedulerManager findPersistedSyncSession:v6 forScheduler:v12 completionHandler:v8];
  }

  else
  {
    workQueue = self->_workQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10007B8E0;
    v17[3] = &unk_100271E98;
    v18 = v7;
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

- (id)createReschedulerForSession:(id)a3
{
  v4 = a3;
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
        v11 = self;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating CloudKit rescheduler for %@ with %@", &v10, 0x16u);
      }

      reschedulerManager = self->_reschedulerManager;
    }

    v8 = [(CPLCloudKitReschedulerManager *)reschedulerManager newCloudKitReschedulerForSession:v4];
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

- (void)_startWatchingAccountInfoChangesWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (self->_accountInfoWatcher)
  {
    sub_1001A68FC(a2, self);
  }

  v6 = v5;
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

- (void)_forceUpdateAccountInfoWithReason:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  lastAccountInfoUpdateDate = self->_lastAccountInfoUpdateDate;
  if (lastAccountInfoUpdateDate && ([(NSDate *)lastAccountInfoUpdateDate timeIntervalSinceNow], v9 > -600.0))
  {
    sub_1001A6A78(v7);
  }

  else
  {
    if (v6 && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001A6B04();
    }

    v10 = +[NSDate date];
    v11 = self->_lastAccountInfoUpdateDate;
    self->_lastAccountInfoUpdateDate = v10;

    [(CPLCloudKitTransport *)self _updateAccountInfoWithCompletionHandler:v7];
  }
}

- (void)_updateAccountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_accountInfoFetchGeneration + 1;
  self->_accountInfoFetchGeneration = v5;
  coordinator = self->_coordinator;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007BE60;
  v8[3] = &unk_100275C00;
  v9 = v4;
  v10 = v5;
  v8[4] = self;
  v7 = v4;
  [(CPLCloudKitCoordinator *)coordinator fetchAccountInfoWithCompletionHandler:v8];
}

- (void)_enableSchedulerBecauseAccountIsAvailable
{
  if (self->_lastDisablingReasonBecauseOfAccountStatus)
  {
    sub_1001A6B98(self, &self->_lastDisablingReasonBecauseOfAccountStatus);
  }

  v3 = [(CPLCloudKitTransport *)self abstractObject];
  v4 = [v3 engineLibrary];
  v5 = [v4 containerHasBeenWiped];

  if ((v5 & 1) == 0)
  {
    [(CPLCloudKitTransport *)self setErrorForAllOperations:0];
  }
}

- (void)_disableSchedulerBecauseAccountIsUnavailableWithReason:(id)a3
{
  v5 = a3;
  v6 = [(CPLCloudKitTransport *)self abstractObject];
  v7 = [v6 engineLibrary];
  v8 = [v7 scheduler];

  lastDisablingReasonBecauseOfAccountStatus = self->_lastDisablingReasonBecauseOfAccountStatus;
  if (lastDisablingReasonBecauseOfAccountStatus)
  {
    if ([(NSString *)lastDisablingReasonBecauseOfAccountStatus isEqualToString:v5])
    {
      goto LABEL_3;
    }

    if ((sub_1001A6DBC(v8, v5, &self->_lastDisablingReasonBecauseOfAccountStatus) & 1) == 0)
    {
      sub_1001A6D18(&self->_lastDisablingReasonBecauseOfAccountStatus);
    }
  }

  else
  {
    sub_1001A6C5C(v5, v8);
  }

  objc_storeStrong(&self->_lastDisablingReasonBecauseOfAccountStatus, a3);
  v10 = [(CPLCloudKitTransport *)self abstractObject];
  v11 = [v10 engineLibrary];
  v12 = [v11 containerHasBeenWiped];

  if ((v12 & 1) == 0)
  {
    v15 = CPLErrorRetryAfterReasonKey;
    v16 = v5;
    v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [CPLErrors cplErrorWithCode:1000 underlyingError:0 userInfo:v13 description:@"%@", v5];

    [(CPLCloudKitTransport *)self setErrorForAllOperations:v14];
  }

LABEL_3:
}

+ (id)_betterErrorForRecordId:(id)a3 recordError:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 || (v9 = v8) == 0)
  {
    sub_1001A6E00(a2, a1);
  }

  v10 = [v8 localizedDescription];
  if (v10)
  {
    v11 = [NSString stringWithFormat:@"%@ (for record %@)", v10, v7];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"record %@", v7];
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [v9 userInfo];

  if (v13)
  {
    v14 = [v9 userInfo];
    [v12 setDictionary:v14];

    [v12 setObject:v11 forKey:NSLocalizedDescriptionKey];
  }

  v15 = [v9 domain];
  v16 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v15, [v9 code], v12);

  return v16;
}

+ (id)_errorsByTaskForTasksByRecordId:(id)a3 fromUnderlyingError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqual:CKErrorDomain])
  {
    v9 = [v7 code];

    if (v9 == 2)
    {
      v10 = +[NSMapTable strongToStrongObjectsMapTable];
      v11 = [v7 userInfo];
      v12 = [v11 objectForKey:CKPartialErrorsByItemIDKey];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10007C540;
      v15[3] = &unk_100275C28;
      v16 = v6;
      v18 = a1;
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

- (void)_addBackgroundSchedulingStatusToStatusEntries:(id)a3 now:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(CPLCloudKitReschedulerManager *)self->_reschedulerManager reschedulerDescription];
  if (v7)
  {
    v8 = [[NSString alloc] initWithFormat:@"Background scheduling: %@", v7];
    [v18 addObject:v8];
  }

  v9 = [(CPLCloudKitReschedulerManager *)self->_reschedulerManager taskStatusesWithNow:v6];
  if ([v9 count])
  {
    v10 = [NSString alloc];
    v11 = [v9 componentsJoinedByString:@"\n  "];
    v12 = [v10 initWithFormat:@"  %@", v11];
    [v18 addObject:v12];
  }

  v13 = [(CPLCloudKitTransport *)self duetTicketProvider];
  if (v13)
  {
    v14 = [(CPLCloudKitTransport *)self duetTicketProvider];
    v15 = [v14 duetStatuses];

    if ([v15 count])
    {
      v16 = [v15 componentsJoinedByString:@"\n  "];
      v17 = [NSString stringWithFormat:@"CoreDuet State:\n  %@", v16];
      [v18 addObject:v17];
    }
  }

  else
  {
    [v18 addObject:@"CoreDuet State: not supported for this engine"];
  }
}

- (void)getBackgroundSchedulingStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007C8E4;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)getBackgroundSchedulingStatusDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007CABC;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  coordinator = self->_coordinator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007CC5C;
  v7[3] = &unk_100272378;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CPLCloudKitCoordinator *)coordinator getStatusForClient:self completionHandler:v7];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007D748;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = workQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isEqual:@"reset-container"])
  {
    [(CPLCloudKitTransport *)self _noteContainerHasBeenWiped];
LABEL_5:
    (*(v8 + 2))(v8, 1, 0, 0);
    goto LABEL_6;
  }

  if ([v7 isEqual:@"unreset-container"])
  {
    v9 = [(CPLCloudKitTransport *)self abstractObject];
    v10 = [v9 engineLibrary];
    [v10 setContainerHasBeenWiped:0];

    goto LABEL_5;
  }

  if ([v7 isEqual:@"refresh-cloudkit"])
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
    v17 = v8;
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
    (*(v8 + 2))(v8, 0, 0, 0);
  }

LABEL_6:
}

- (void)_cleanTempRecoveredDataURL:(id)a3
{
  v4 = a3;
  if (v4)
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
      v9 = v4;
      dispatch_after(v5, workQueue, block);
    }

    else
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtURL:v4 error:0];
    }
  }
}

- (id)_tempDestinationURLForRecoveredDataWithTempFolderURL:(id)a3
{
  workQueue = self->_workQueue;
  v4 = a3;
  dispatch_assert_queue_V2(workQueue);
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [v4 URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

- (void)_withTempCKAssetForData:(id)a3 tempFolderURL:(id)a4 block:(id)a5
{
  v8 = a5;
  workQueue = self->_workQueue;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(workQueue);
  v12 = [(CPLCloudKitTransport *)self _tempDestinationURLForRecoveredDataWithTempFolderURL:v10];

  v15 = 0;
  LODWORD(workQueue) = [v11 writeToURL:v12 options:1 error:&v15];

  v13 = v15;
  if (workQueue)
  {
    v14 = [[CKAsset alloc] initWithFileURL:v12];
    [v14 setItemTypeHint:@"fxd"];
    v8[2](v8, v14, 0);
  }

  else
  {
    (v8)[2](v8, 0, v13);
  }

  [(CPLCloudKitTransport *)self _cleanTempRecoveredDataURL:v12];
}

- (NSString)cloudKitClientIdentifier
{
  v2 = [(CPLCloudKitTransport *)self engineLibrary];
  v3 = [v2 libraryIdentifier];

  return v3;
}

- (void)_coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 tempFolderURL:(id)a8 completionHandler:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  workQueue = self->_workQueue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10007E130;
  v31[3] = &unk_100275D88;
  v31[4] = self;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v37 = v20;
  v38 = a2;
  v35 = v19;
  v36 = v18;
  v22 = v31;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v40 = v22;
  v23 = workQueue;
  v24 = v18;
  v25 = v19;
  v26 = v17;
  v27 = v20;
  v28 = v16;
  v29 = v15;
  v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v23, v30);
}

- (void)coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 completionHandler:(id)a8
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10007F0D4;
  v19[3] = &unk_100275DB0;
  v20 = self;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v13 = v26;
  v14 = v25;
  v15 = v24;
  v16 = v23;
  v17 = v22;
  v18 = v21;
  [(CPLCloudKitTransport *)v20 getTemporaryFolderWithName:@"DataRepair" completionHandler:v19];
}

- (void)coordinatorDidReceiveAPushNotification:(id)a3
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

- (id)interestingZoneIDsForCoordinator:(id)a3
{
  if ([(CPLCloudKitTransport *)self _isAppLibrary])
  {
    v4 = [CKRecordZoneID alloc];
    v5 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
    v6 = [v4 initWithCPLScopeIdentifier:v5];
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [(CPLCloudKitTransport *)self scopeIdentifierFromZoneID:v5];
  v7 = [v4 cpl_scopedIdentifierWithScopeIdentifier:v6];

  return v7;
}

- (void)launchOperation:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  [(CPLCloudKitCoordinator *)self->_coordinator launchOperation:v6 type:a4 forClient:self];
  if (![(CPLCloudKitTransport *)self opened])
  {
    sub_1001A77C8(v6);
  }
}

- (BOOL)isNetworkConnected
{
  v2 = [(CPLCloudKitTransport *)self engineLibrary];
  v3 = [v2 systemMonitor];
  v4 = [v3 isNetworkConnected];

  return v4;
}

- (BOOL)canBoostBackgroundOperations
{
  v2 = [(CPLCloudKitTransport *)self engineLibrary];
  v3 = [v2 systemMonitor];
  v4 = [v3 canBoostBackgroundOperations];

  return v4;
}

- (void)_failAllFutureOperationsWithContainerHasBeenWipedError
{
  v3 = [(CPLCloudKitTransport *)self errorForAllOperations];
  v4 = v3;
  if (!v3 || ([v3 isCPLErrorWithCode:1011] & 1) == 0)
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

- (void)processTaskErrorIfNeeded:(id)a3 forTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v26 = 0;
    v27 = 0;
    if ([CPLCloudKitErrors getCloudKitErrorCode:&v27 internalCode:&v26 fromError:v6])
    {
      if (v27 == 18 || v26 == 2039)
      {
        sub_1001A7A2C(self, v25);
        goto LABEL_21;
      }

      if ([CPLCloudKitErrors isContainerHasBeenWipedError:v6])
      {
        sub_1001A79B8(self);
        goto LABEL_21;
      }

      if (v27 == 114)
      {
        v8 = [(CPLCloudKitTransport *)self abstractObject];
        v9 = [v8 engineLibrary];
        v10 = [v9 isWalrusEnabled];

        if (!v10)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v20 = sub_1000770DC();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v7;
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
            *(&buf + 4) = v7;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Task %@ failed because Walrus is enabled - this might be a bug", &buf, 0xCu);
          }

LABEL_20:
        }
      }

      else if (v26 == 6000)
      {
        v12 = [CPLCloudKitErrors realErrorForError:v6];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKey:NSUnderlyingErrorKey];

        v15 = [v14 userInfo];
        v16 = [v15 objectForKey:NSUnderlyingErrorKey];

        if ([v16 code] == 11)
        {
          v17 = [(CPLCloudKitTransport *)self abstractObject];
          v18 = [v17 engineLibrary];
          v19 = [v18 scheduler];
          [v19 noteStoreNeedsToUpdateDisabledFeatures];
        }
      }
    }
  }

LABEL_21:
}

- (BOOL)shouldRunOperationsWithError:(id *)a3
{
  v4 = [(CPLCloudKitTransport *)self errorForAllOperations];
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  v5 = v4 == 0;

  return v5;
}

- (BOOL)shouldIgnoreZoneWithZoneID:(id)a3
{
  v4 = a3;
  if (![(CPLCloudKitTransport *)self _isAppLibrary])
  {
    if (-[CPLCloudKitTransport supportsSharedDatabase](self, "supportsSharedDatabase") || ([v4 ownerName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", CKCurrentUserDefaultName), v9, v10))
    {
      if ([(CPLCloudKitTransport *)self isSystemLibrary])
      {
        v11 = [v4 zoneName];
        v12 = [v11 hasPrefix:CPLMainScopeIdentifierForAppPrefix];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      v13 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
      v14 = [(CPLCloudKitZoneIdentification *)CPLCloudKitLibraryShareZoneIdentification shouldIgnoreZoneID:v4 forMainScopeIdentifier:v13];

      if (v14 & 1) != 0 || ([(CPLCloudKitTransport *)self mainScopeIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(CPLCloudKitZoneIdentification *)CPLCloudKitCollectionShareZoneIdentification shouldIgnoreZoneID:v4 forMainScopeIdentifier:v15], v15, (v16))
      {
LABEL_12:
        v8 = 1;
        goto LABEL_18;
      }

      shouldIgnoreZoneWithZoneID = self->_shouldIgnoreZoneWithZoneID;
      if (shouldIgnoreZoneWithZoneID)
      {
        v8 = shouldIgnoreZoneWithZoneID[2](shouldIgnoreZoneWithZoneID, v4);
        goto LABEL_18;
      }
    }

    v8 = 0;
    goto LABEL_18;
  }

  v5 = [v4 cpl_zoneName];
  v6 = [(CPLCloudKitTransport *)self mainScopeIdentifier];
  v7 = v6;
  v8 = (!v5 || !v6 || ([v5 isEqual:v6] & 1) == 0) && (v5 | v7) != 0;

LABEL_18:
  return v8;
}

- (BOOL)shouldIgnoreScopeWithIdentifier:(id)a3
{
  v3 = self;
  v4 = [(CPLCloudKitTransport *)self zoneIDFromScopeIdentifier:a3];
  LOBYTE(v3) = [(CPLCloudKitTransport *)v3 shouldIgnoreZoneWithZoneID:v4];

  return v3;
}

- (void)registerHelper:(id)a3 withIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  workQueue = self->_workQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008003C;
  v15[3] = &unk_100271D68;
  v15[4] = self;
  v16 = v8;
  v17 = v7;
  v18 = a2;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = workQueue;
  v12 = v7;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

- (void)acquireHelperWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008022C;
  v14[3] = &unk_100272C08;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = workQueue;
  v11 = v6;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)getTemporaryFolderWithName:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000804B8;
  v14[3] = &unk_100272C08;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = workQueue;
  v11 = v6;
  v12 = v7;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)updateAccountEPPCapability:(int64_t)a3
{
  v5 = [(CPLCloudKitTransport *)self abstractObject];
  v4 = [v5 engineLibrary];
  [v4 setAccountEPPCapability:a3];
}

- (void)reschedulerManager:(id)a3 didUpdateBlockedState:(id)a4
{
  v5 = a4;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100080818;
  v11[3] = &unk_1002720E0;
  v11[4] = self;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AD4;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = workQueue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (id)createGroupForDownloadWithIntent:(unint64_t)a3 priority:(unint64_t)a4
{
  v7 = [objc_opt_class() allowsSyncOverCellular];
  v8 = -[CPLCloudKitTransport createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:](self, "createGroupAllowsCellular:allowsExpensiveNetwork:foreground:upload:metadata:", v7, [objc_opt_class() allowsSyncOverExpensiveNetwork], +[CPLResourceTransferTaskOptions isForegroundOperationForIntent:priority:](CPLResourceTransferTaskOptions, "isForegroundOperationForIntent:priority:", a3, a4), 0, 0);
  v9 = @"Non-Derivatives Prefetch";
  switch(a3)
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
      if (a4 == 1)
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
      v12 = a4 == 2;
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
      v12 = a4 == 1;
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
          v18 = a3;
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

- (void)_updateStateWithAccountInfo:(id)a3 walrusEnabledDefault:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [a4 BOOLValue];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_1000770DC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_10000343C();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Forcing walrus to %@", v42, 0xCu);
      }
    }

    v10 = self;
    v11 = v8;
LABEL_7:
    [(CPLCloudKitTransport *)v10 _updateWalrusTo:v11, *v42];
    goto LABEL_8;
  }

  v12 = [v6 supportsDeviceToDeviceEncryption];
  v13 = [(CPLCloudKitTransport *)self abstractObject];
  v14 = [v13 engineLibrary];
  [v14 setKeychainCDPEnabled:v12];

  v15 = [(CPLCloudKitTransport *)self abstractObject];
  v16 = [v15 engineLibrary];
  LOBYTE(v14) = [v16 isKeychainCDPEnabled];

  if ((v14 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_1000770DC();
    if (sub_100003424(v17))
    {
      *v42 = 0;
      sub_100013990();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
    }
  }

  v23 = [v7 walrusStatus];
  if (v23 == 2)
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

    v10 = self;
    v11 = 0;
    goto LABEL_7;
  }

  if (v23 == 1)
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

    v10 = self;
    v11 = 1;
    goto LABEL_7;
  }

  if (!v23 && (_CPLSilentLogging & 1) == 0)
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

- (void)_updateStateWithAccountStatus:(int64_t)a3
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

  switch(a3)
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