@interface ICCloudContext
+ (BOOL)haveZoneIDsInAccountZoneIDs:(id)ds;
+ (BOOL)isZoneConfigurations:(id)configurations subsetOfZoneConfigurations:(id)zoneConfigurations;
+ (BOOL)shouldIgnoreErrorForBackoffTimer:(id)timer;
+ (CKRecordZoneID)metadataZoneID;
+ (CKRecordZoneID)notesZoneID;
+ (ICCloudContext)sharedContext;
+ (id)allZoneIDsInAccountZoneIDs:(id)ds;
+ (id)deduplicatedRecordsForCloudObjects:(id)objects;
+ (id)errorForDisabledCloudSyncing;
+ (id)errorForWaitingForRetryTimer;
+ (id)errorFromErrors:(id)errors;
+ (id)errorFromOperations:(id)operations;
+ (id)errorsFromError:(id)error;
+ (id)newNotesContainerForAccountID:(id)d;
+ (id)objectsByAccount:(id)account;
+ (id)objectsByDatabaseScope:(id)scope;
+ (id)sortedRecords:(id)records;
+ (id)userRecordNameForContainer:(id)container;
+ (id)zoneIDsFromZoneInfos:(id)infos;
+ (id)zoneInfosFromZoneIDs:(id)ds;
+ (void)batchRecordsToSave:(id)save delete:(id)delete maxRecordCountPerBatch:(unint64_t)batch maxRecordSizePerBatch:(unint64_t)perBatch withBlock:(id)block;
- (BOOL)hasCompletedInitialSync;
- (BOOL)hasNoteContextOptions:(unint64_t)options;
- (BOOL)hasPendingOperations;
- (BOOL)isCloudKitAccountAvailable;
- (BOOL)isFetchingAllRecordZones;
- (BOOL)isReadyToSync;
- (BOOL)partialError:(id)error containsErrorCode:(int64_t)code;
- (BOOL)shouldUpdateServerRecordForObject:(id)object withRecord:(id)record;
- (BOOL)supportsDeferredAssetDownload;
- (ICCloudAnalyticsDelegate)cloudAnalyticsDelegate;
- (ICCloudContext)initWithDelegate:(id)delegate;
- (ICCloudContextDelegate)cloudContextDelegate;
- (ICCloudSessionDelegate)cloudSessionDelegate;
- (NSDictionary)cloudObjectClassesByRecordType;
- (NSDictionary)containersByAccountID;
- (double)timeIntervalToRetryAfterFromError:(id)error;
- (id)_objectIDsToProcessForFullSyncInContext:(id)context;
- (id)accountIDForContainer:(id)container;
- (id)accountIDForDatabase:(id)database;
- (id)allCloudObjectIDsInContext:(id)context predicate:(id)predicate;
- (id)allZoneIDs;
- (id)backgroundContext;
- (id)completionEndingProcessingSession:(id)session wrappingCompletion:(id)completion;
- (id)containerForAccountID:(id)d;
- (id)existingCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
- (id)existingCloudObjectForRecordID:(id)d recordType:(id)type accountID:(id)iD context:(id)context excludingRecordTypes:(id)types;
- (id)existingCloudObjectForUserSpecificRecordID:(id)d createPlaceholderIfNecessary:(BOOL)necessary accountID:(id)iD context:(id)context;
- (id)invernessClientForAccountID:(id)d;
- (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
- (id)newOperationToFetchRecordZoneChangesWithZoneConfigurations:(id)configurations database:(id)database session:(id)session;
- (id)newPlaceholderObjectForRecordID:(id)d recordType:(id)type accountID:(id)iD context:(id)context;
- (id)newSessionForReason:(id)reason;
- (id)operationToFetchDatabaseChangesForDatabase:(id)database session:(id)session completionHandler:(id)handler;
- (id)operationToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets database:(id)database qualityOfService:(int64_t)service;
- (id)operationToFetchRecordZoneChangesForZoneIDs:(id)ds database:(id)database session:(id)session;
- (id)operationToModifyRecordsToSave:(id)save delete:(id)delete forSession:(id)session rootRecordIDsByShareID:(id)d database:(id)database;
- (id)operationToSaveZonesForZoneIDs:(id)ds accountID:(id)d;
- (id)operationToSaveZonesIfNecessaryForAccountID:(id)d;
- (id)operationsToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets database:(id)database qualityOfService:(int64_t)service;
- (id)operationsToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets qualityOfService:(int64_t)service operationGroupName:(id)name accountID:(id)d;
- (id)operationsToFetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d session:(id)session;
- (id)operationsToModifyRecordsForCloudObjectsToSave:(id)save delete:(id)delete deleteShares:(id)shares saveUserSpecificRecords:(id)records forSession:(id)session operationGroupName:(id)name addDependencies:(BOOL)dependencies accountID:(id)self0;
- (id)operationsToModifyRecordsToSave:(id)save delete:(id)delete forSession:(id)session rootRecordIDsByShareID:(id)d database:(id)database;
- (id)overrideAccountID;
- (id)persistentStoreCoordinator;
- (id)readinessLoggingDescription;
- (id)serverChangeTokenForChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context;
- (id)serverChangeTokenForRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context;
- (id)subscriptionForDatabase:(id)database;
- (id)viewContext;
- (int64_t)accountStatus;
- (void)_addModifyRecordsOperationsWithCloudObjectsToSave:(id)save delete:(id)delete accountID:(id)d forSession:(id)session operationGroupName:(id)name waitForDependencies:(BOOL)dependencies completionHandler:(id)handler;
- (void)_filterCloudSyncingObjects:(id)objects accountID:(id)d objectsToSave:(id *)save objectsToDelete:(id *)delete objectsToDeleteShares:(id *)shares objectsToSaveUserSpecificRecord:(id *)record;
- (void)_ingestCloudKitRecord:(id)record forAccountID:(id)d forceMerge:(BOOL)merge session:(id)session context:(id)context;
- (void)_processCloudObjects:(id)objects inSession:(id)session completionHandler:(id)handler;
- (void)_processPendingCloudObjectsInSession:(id)session withCompletionHandler:(id)handler;
- (void)_syncWithReason:(id)reason uploadUnsyncedChanges:(BOOL)changes completionHandler:(id)handler;
- (void)addCallbackBlocksToModifyRecordsOperation:(id)operation rootRecordIDsByShareID:(id)d session:(id)session;
- (void)addDependenciesForModifyRecordsOperation:(id)operation;
- (void)addFetchOperationsForRecordIDs:(id)ds forSession:(id)session accountID:(id)d qualityOfService:(int64_t)service operationGroupName:(id)name completionHandler:(id)handler;
- (void)addFetchOperationsForRecordIDs:(id)ds forSession:(id)session accountID:(id)d qualityOfService:(int64_t)service operationGroupName:(id)name shouldDownloadAssets:(BOOL)assets completionHandler:(id)handler;
- (void)addModifyRecordsOperationsWithCloudObjectsToSave:(id)save delete:(id)delete accountID:(id)d forSession:(id)session operationGroupName:(id)name waitForDependencies:(BOOL)dependencies completionHandler:(id)handler;
- (void)addOperationToProcessObjectsInSession:(id)session withCompletionHandler:(id)handler;
- (void)addOperations:(id)operations;
- (void)addOperationsToFetchRecordZoneChangesForAccountZoneIDs:(id)ds session:(id)session completionHandler:(id)handler;
- (void)cancelEverythingWithCompletionHandler:(id)handler;
- (void)clearContainers;
- (void)clearPendingActivity;
- (void)clearRetryCountForOperationType:(id)type;
- (void)clearSubscribedSubscriptionIDs;
- (void)clearZoneFetchState;
- (void)cloudKitAccountChanged:(id)changed;
- (void)contextDidSaveOrMerge:(id)merge;
- (void)dealloc;
- (void)deleteAllServerChangeTokens;
- (void)deleteRecordZonesWithZoneIDs:(id)ds accountID:(id)d markZonesAsUserPurged:(BOOL)purged completionHandler:(id)handler;
- (void)deleteServerChangeTokenForChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context;
- (void)deleteServerChangeTokenForRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context;
- (void)deleteSharesForObjects:(id)objects completionHandler:(id)handler;
- (void)deleteSharesForObjects:(id)objects forSession:(id)session accountID:(id)d completionHandler:(id)handler;
- (void)didFetchShare:(id)share accountID:(id)d context:(id)context;
- (void)disableCloudSyncingIfCurrentVersionNotSupported:(id)supported;
- (void)enqueueLongLivedOperationsIfNeededWithCompletionHandler:(id)handler;
- (void)enqueueLongLivedOperationsWithIDsIfNeeded:(id)needed container:(id)container completionHandler:(id)handler;
- (void)fetchAssetsOnDemandIfEnabledForNoteObjectID:(id)d;
- (void)fetchCloudObjects:(id)objects accountID:(id)d completionHandler:(id)handler;
- (void)fetchCloudObjects:(id)objects forSession:(id)session accountID:(id)d completionHandler:(id)handler;
- (void)fetchDatabaseChangesForDatabases:(id)databases session:(id)session completionHandler:(id)handler;
- (void)fetchDatabaseChangesForSession:(id)session completionHandler:(id)handler;
- (void)fetchDatabaseChangesOperation:(id)operation changeTokenUpdated:(id)updated accountID:(id)d context:(id)context;
- (void)fetchDatabaseChangesOperation:(id)operation finishedWithServerChangeToken:(id)token accountID:(id)d session:(id)session error:(id)error completionHandler:(id)handler context:(id)context;
- (void)fetchDatabaseChangesOperation:(id)operation recordZoneWithIDChanged:(id)changed accountID:(id)d session:(id)session;
- (void)fetchDatabaseChangesOperation:(id)operation recordZoneWithIDWasDeleted:(id)deleted accountID:(id)d session:(id)session;
- (void)fetchOperation:(id)operation didCompleteWithRecordsByRecordID:(id)d session:(id)session error:(id)error;
- (void)fetchOperation:(id)operation progressChangedWithRecordID:(id)d progress:(double)progress;
- (void)fetchOperation:(id)operation recordWasFetchedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error;
- (void)fetchRecordIDs:(id)ds accountID:(id)d operationGroupName:(id)name completionHandler:(id)handler;
- (void)fetchRecordIDs:(id)ds forSession:(id)session accountID:(id)d operationGroupName:(id)name completionHandler:(id)handler;
- (void)fetchRecordZoneChangesForAccountZoneIDs:(id)ds session:(id)session completionHandler:(id)handler;
- (void)fetchRecordZoneChangesForSession:(id)session completionHandler:(id)handler;
- (void)fetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d reason:(id)reason completionHandler:(id)handler;
- (void)fetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d session:(id)session completionHandler:(id)handler;
- (void)fetchRecordZoneChangesOperation:(id)operation completedFetchForZoneID:(id)d serverChangeToken:(id)token error:(id)error context:(id)context;
- (void)fetchRecordZoneChangesOperation:(id)operation recordWasChangedWithRecordID:(id)d record:(id)record error:(id)error session:(id)session context:(id)context;
- (void)fetchRecordZoneChangesOperation:(id)operation recordWasDeletedWithRecordID:(id)d recordType:(id)type session:(id)session context:(id)context;
- (void)fetchRecordZoneChangesOperation:(id)operation zoneID:(id)d accountID:(id)iD changeTokenUpdated:(id)updated context:(id)context;
- (void)fetchRecordZoneChangesOperationDidComplete:(id)complete session:(id)session error:(id)error;
- (void)fetchRecordZoneChangesWithReason:(id)reason completionHandler:(id)handler;
- (void)fetchSubscriptionsForDatabase:(id)database completionHandler:(id)handler;
- (void)fetchUserRecordWithAccountID:(id)d completionHandler:(id)handler;
- (void)fetchUserRecordWithContainer:(id)container completionHandler:(id)handler;
- (void)finishOperationsForRecordID:(id)d qualityOfService:(int64_t)service completionHandler:(id)handler;
- (void)handleCloudKitNotification:(id)notification completionHandler:(id)handler;
- (void)handleGenericPartialFailuresForError:(id)error operation:(id)operation;
- (void)handleRemoteNotificationWithUserInfo:(id)info completion:(id)completion;
- (void)incrementOrClearRetryCountForOperationType:(id)type error:(id)error;
- (void)incrementRetryCountForOperationType:(id)type;
- (void)informCloudAnalyticsDelegateForOperationDidEnd:(id)end recordsByRecordID:(id)d operationError:(id)error;
- (void)ingestCloudKitRecord:(id)record forAccountID:(id)d forceMerge:(BOOL)merge context:(id)context;
- (void)loadZoneFetchState;
- (void)modifyRecordsOperation:(id)operation forSession:(id)session didCompleteWithError:(id)error;
- (void)modifyRecordsOperation:(id)operation recordWasDeletedWithRecordID:(id)d rootRecordIDsByShareID:(id)iD session:(id)session error:(id)error;
- (void)modifyRecordsOperation:(id)operation recordWasDeletedWithRecordID:(id)d rootRecordIDsByShareID:(id)iD session:(id)session error:(id)error context:(id)context;
- (void)modifyRecordsOperation:(id)operation recordWasSavedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error;
- (void)modifyRecordsOperation:(id)operation recordWasSavedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error context:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseCloudSyncWhileSynchronouslyPerformingBlock:(id)block;
- (void)printOperationQueue;
- (void)processAllCloudObjectsInSession:(id)session withCompletionHandler:(id)handler;
- (void)processAllCloudObjectsWithCompletionHandler:(id)handler;
- (void)processObjectIDs:(id)ds inSession:(id)session completionHandler:(id)handler;
- (void)processPendingCloudObjectsWithCompletionHandler:(id)handler;
- (void)pushCloudObjects:(id)objects operationGroupName:(id)name completionHandler:(id)handler;
- (void)reachabilityChanged:(id)changed;
- (void)receivedZoneNotFound:(id)found operation:(id)operation context:(id)context;
- (void)resetZoneForCloudAccount:(id)account withReason:(id)reason;
- (void)retryOperationsIfNecessary;
- (void)saveServerChangeToken:(id)token forChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context;
- (void)saveServerChangeToken:(id)token forRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context;
- (void)saveSubscriptionsForDatabase:(id)database completionHandler:(id)handler;
- (void)saveZoneFetchState;
- (void)setAccountStatus:(int64_t)status;
- (void)setAssetDownloadStateOnObject:(id)object withRecord:(id)record managedObjectContext:(id)context;
- (void)setCompletedInitialSync:(BOOL)sync;
- (void)startRetryTimerIfNecessaryWithError:(id)error;
- (void)syncForSession:(id)session completedWithErrors:(id)errors;
- (void)syncWithReason:(id)reason uploadUnsyncedChanges:(BOOL)changes completionHandler:(id)handler;
- (void)updateAccountStatusWithCompletionHandler:(id)handler;
- (void)updateCloudContextStateWithCompletion:(id)completion;
- (void)updateConfiguration:(id)configuration;
- (void)updateSelectorDelayers:(id)delayers;
- (void)updateSubscriptionsWithCompletionHandler:(id)handler;
- (void)validateAccountZoneIDsNeedingFetchChanges;
@end

@implementation ICCloudContext

+ (ICCloudContext)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    +[ICCloudContext sharedContext];
  }

  v3 = sharedContext_sCloudContext;

  return v3;
}

void __31__ICCloudContext_sharedContext__block_invoke()
{
  v0 = [[ICCloudContext alloc] initWithDelegate:0];
  v1 = sharedContext_sCloudContext;
  sharedContext_sCloudContext = v0;
}

- (ICCloudContextDelegate)cloudContextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudContextDelegate);

  return WeakRetained;
}

- (void)loadZoneFetchState
{
  accountZoneIDsNeedingFetchChanges = [self accountZoneIDsNeedingFetchChanges];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __36__ICCloudContext_loadZoneFetchState__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 removeObjectForKey:@"CloudKitZonesNeedingFetchChanges"];
}

- (id)readinessLoggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(ICCloudContext *)self accountStatus];
  v4 = CKStringFromAccountStatus();
  v5 = [v3 stringWithFormat:@"accountStatus=%@ syncDisabledByServer=%d accountAvailable=%d", v4, -[ICCloudContext syncDisabledByServer](self, "syncDisabledByServer"), -[ICCloudContext isCloudKitAccountAvailable](self, "isCloudKitAccountAvailable")];

  return v5;
}

+ (id)errorForDisabledCloudSyncing
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Cloud syncing is not enabled.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.notes.cloud" code:1 userInfo:v3];

  return v4;
}

- (BOOL)isReadyToSync
{
  if ([(ICCloudContext *)self accountStatus]!= 1 && [(ICCloudContext *)self accountStatus]|| [(ICCloudContext *)self syncDisabledByServer])
  {
    return 0;
  }

  return [(ICCloudContext *)self isCloudKitAccountAvailable];
}

- (int64_t)accountStatus
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [mEMORY[0x277D36180] integerForKey:@"CloudKitAccountStatus"];

  return v3;
}

- (BOOL)isCloudKitAccountAvailable
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(ICCloudContext *)self viewContext];
  }

  else
  {
    [(ICCloudContext *)self backgroundContext];
  }
  v3 = ;
  persistentStoreCoordinator = [v3 persistentStoreCoordinator];

  if (persistentStoreCoordinator)
  {
    LOBYTE(persistentStoreCoordinator) = [ICAccount isCloudKitAccountAvailableInContext:v3];
  }

  return persistentStoreCoordinator;
}

- (id)viewContext
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (cloudContextDelegate)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate2 viewContextForCloudContext:self];
  }

  else
  {
    cloudContextDelegate2 = +[ICNoteContext sharedContext];
    [cloudContextDelegate2 managedObjectContext];
  }
  v5 = ;

  return v5;
}

+ (id)newNotesContainerForAccountID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (ICIsSandboxModeEnabled())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.notes" environment:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBC230]);
  if ([dCopy length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC170]) initWithAccountID:dCopy];
    [v6 setAccountOverrideInfo:v7];
    v8 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5 options:v6];
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = dCopy;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Created new container for account ID %@", &v24, 0xCu);
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v5];
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Created new default container", &v24, 2u);
    }
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = bundleIdentifier;
    _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEFAULT, "BundleIDDebug: bundleIdentifier is %@", &v24, 0xCu);
  }

  v13 = ICNotesAppBundleIdentifier();
  v14 = [bundleIdentifier hasPrefix:v13];

  if ((v14 & 1) == 0)
  {
    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = ICNotesAppBundleIdentifier();
      v24 = 138412290;
      v25 = v16;
      _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEFAULT, "BundleIDDebug: bundleIdentifier does not have prefix %@, so updating bundleID", &v24, 0xCu);
    }

    v17 = ICNotesAppBundleIdentifier();
    options = [v8 options];
    [options setApplicationBundleIdentifierOverrideForContainerAccess:v17];

    v19 = ICNotesAppBundleIdentifier();
    options2 = [v8 options];
    [options2 setApplicationBundleIdentifierOverrideForNetworkAttribution:v19];

    v21 = ICNotesAppBundleIdentifier();
    options3 = [v8 options];
    [options3 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v21];
  }

  return v8;
}

- (ICCloudContext)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = ICCloudContext;
  v5 = [(ICCloudContext *)&v39 init];
  v6 = v5;
  if (v5)
  {
    [(ICCloudContext *)v5 setCloudContextDelegate:delegateCopy];
    [(ICCloudContext *)v6 setSyncOnlyIfReachable:1];
    v7 = objc_opt_new();
    [(ICCloudContext *)v6 setOperationQueue:v7];

    operationQueue = [(ICCloudContext *)v6 operationQueue];
    [operationQueue setMaxConcurrentOperationCount:10];

    v9 = [[ICCloudOperationObserver alloc] initWithQueue:v6->_operationQueue];
    [(ICCloudContext *)v6 setOperationObserver:v9];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.notes.cloud", v10);
    [(ICCloudContext *)v6 setProcessingQueue:v11];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.notes.cloud.container-creation", v12);
    [(ICCloudContext *)v6 setContainersCreationQueue:v13];

    v14 = [MEMORY[0x277CBEB58] set];
    [(ICCloudContext *)v6 setObjectIDsToProcess:v14];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ICCloudContext *)v6 setAccountZoneIDsNeedingToBeSaved:dictionary];

    v16 = [MEMORY[0x277CBEB58] set];
    [(ICCloudContext *)v6 setObjectIDsToRetry:v16];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(ICCloudContext *)v6 setRetryCountsByOperationType:dictionary2];

    v18 = [MEMORY[0x277CBEB58] set];
    [(ICCloudContext *)v6 setSubscribedSubscriptionIDs:v18];

    [(ICCloudContext *)v6 setNeedsToUpdateSubscriptions:1];
    v19 = [(ICCloudContext *)v6 hasNoteContextOptions:16];
    [(ICCloudContext *)v6 setDisabled:!v19];
    [(ICCloudContext *)v6 setDisabledInternal:0];
    [(ICCloudContext *)v6 setQualityOfService:17];
    [(ICCloudContext *)v6 setDiscretionaryNetworkBehavior:0];
    [(ICCloudContext *)v6 setEnableLongLivedOperations:[(ICCloudContext *)v6 hasNoteContextOptions:0x100000]^ 1];
    [(ICCloudContext *)v6 setDisableAutomaticallyRetryNetworkFailures:0];
    [(ICCloudContext *)v6 setFetchingEnabled:[(ICCloudContext *)v6 hasNoteContextOptions:0x80000]];
    [(ICCloudContext *)v6 setDidEnqueueLongLivedOperations:0];
    v20 = [MEMORY[0x277CBEB58] set];
    [(ICCloudContext *)v6 setOperationIDsBeforeEnqueuingLongLivedOperations:v20];

    currentConfiguration = [MEMORY[0x277D36200] currentConfiguration];
    resetsCloud = [currentConfiguration resetsCloud];

    if (resetsCloud)
    {
      viewContext = [(ICCloudContext *)v6 viewContext];
      v24 = [ICAccount cloudKitAccountInContext:viewContext];

      if (v24)
      {
        [(ICCloudContext *)v6 resetZoneForCloudAccount:v24 withReason:@"LaunchArgument"];
      }

      else
      {
        v25 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [ICCloudContext initWithDelegate:];
        }
      }
    }

    [(ICCloudContext *)v6 loadZoneFetchState];
    if (v19)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v27 = *MEMORY[0x277D36350];
      mEMORY[0x277D36240] = [MEMORY[0x277D36240] sharedReachabilityForInternetConnection];
      [defaultCenter addObserver:v6 selector:sel_reachabilityChanged_ name:v27 object:mEMORY[0x277D36240]];

      [defaultCenter addObserver:v6 selector:sel_contextDidSaveOrMerge_ name:*MEMORY[0x277CBE1B0] object:0];
      [defaultCenter addObserver:v6 selector:sel_contextDidSaveOrMerge_ name:*MEMORY[0x277CBE1A0] object:0];
      [defaultCenter addObserver:v6 selector:sel_cloudKitAccountChanged_ name:*MEMORY[0x277CBBF00] object:0];
      [defaultCenter addObserver:v6 selector:sel_cloudKitAccountChanged_ name:@"ICAccountsDidChangeNotification" object:0];
      objc_initWeak(&location, v6);
      v29 = dispatch_time(0, 2000000000);
      v30 = dispatch_get_global_queue(-2, 0);
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __35__ICCloudContext_initWithDelegate___block_invoke;
      v36 = &unk_278194FB8;
      objc_copyWeak(&v37, &location);
      dispatch_after(v29, v30, &v33);

      [defaultCenter addObserver:v6 selector:sel_updateConfiguration_ name:@"ICCloudConfigurationChanged" object:{0, v33, v34, v35, v36}];
      [defaultCenter addObserver:v6 selector:sel_updateSelectorDelayers_ name:@"ICCloudBatchIntervalDidChangeNotification" object:0];
      operationQueue2 = [(ICCloudContext *)v6 operationQueue];
      [operationQueue2 ic_addObserver:v6 forKeyPath:@"operationCount" context:compoundliteral_1];

      [(ICCloudContext *)v6 setDidAddObservers:1];
      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    else
    {
      [(ICCloudContext *)v6 setDidAddObservers:0];
    }

    [(ICCloudContext *)v6 updateConfiguration:0];
  }

  return v6;
}

void __35__ICCloudContext_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCloudContextState];
}

- (id)persistentStoreCoordinator
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (cloudContextDelegate)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate2 persistentStoreCoordinatorForCloudContext:self];
  }

  else
  {
    cloudContextDelegate2 = +[ICNoteContext sharedContext];
    [cloudContextDelegate2 persistentStoreCoordinator];
  }
  v5 = ;

  return v5;
}

- (id)backgroundContext
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (cloudContextDelegate)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate2 backgroundContextForCloudContext:self];
  }

  else
  {
    cloudContextDelegate2 = +[ICNoteContext sharedContext];
    [cloudContextDelegate2 workerManagedObjectContext];
  }
  v5 = ;

  return v5;
}

- (BOOL)hasNoteContextOptions:(unint64_t)options
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (cloudContextDelegate)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    v7 = [cloudContextDelegate2 cloudContext:self hasContextOptions:options];
  }

  else
  {
    cloudContextDelegate2 = +[ICNoteContext sharedContext];
    v7 = [cloudContextDelegate2 hasContextOptions:options];
  }

  v8 = v7;

  return v8;
}

- (BOOL)supportsDeferredAssetDownload
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (cloudContextDelegate)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    v5 = [cloudContextDelegate2 supportsDeferredAssetDownloadForCloudContext:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)containersByAccountID
{
  containersCreationQueue = [(ICCloudContext *)self containersCreationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICCloudContext_containersByAccountID__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_sync(containersCreationQueue, block);

  return self->_containersByAccountID;
}

void __39__ICCloudContext_containersByAccountID__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2[16])
  {
    v3 = [v2 cloudContextDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) cloudContextDelegate];
      v6 = [v5 containersByAccountIDForCloudContext:*(a1 + 32)];
      v7 = *(a1 + 32);
      v8 = *(v7 + 128);
      *(v7 + 128) = v6;
    }

    if (!*(*(a1 + 32) + 128))
    {
      v9 = objc_opt_new();
      v10 = [*(a1 + 32) backgroundContext];
      v11 = [*(a1 + 32) cloudContextDelegate];
      v12 = [v11 accountIDsForCloudContext:*(a1 + 32) managedObjectContext:v10];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          v17 = 0;
          do
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v23 + 1) + 8 * v17);
            v19 = [objc_opt_class() newNotesContainerForAccountID:{v18, v23}];
            [v9 setObject:v19 forKeyedSubscript:v18];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v15);
      }

      v20 = [v9 copy];
      v21 = *(a1 + 32);
      v22 = *(v21 + 128);
      *(v21 + 128) = v20;
    }
  }
}

- (void)clearContainers
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__ICCloudContext_clearContainers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
}

- (id)containerForAccountID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"accountID != ((void*)0)" functionName:"-[ICCloudContext containerForAccountID:]" simulateCrash:1 showAlert:0 format:@"accountID must not be nil to get container."];
  }

  if ([dCopy length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__48;
    v16 = __Block_byref_object_dispose__48;
    containersByAccountID = [(ICCloudContext *)self containersByAccountID];
    v17 = [containersByAccountID objectForKeyedSubscript:dCopy];

    containersCreationQueue = [(ICCloudContext *)self containersCreationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICCloudContext_containerForAccountID___block_invoke;
    block[3] = &unk_278195740;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(containersCreationQueue, block);

    v7 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __40__ICCloudContext_containerForAccountID___block_invoke(void *a1)
{
  if (!*(*(a1[6] + 8) + 40))
  {
    v3 = [objc_opt_class() newNotesContainerForAccountID:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1[4] + 128) mutableCopy];
    [v6 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[5]];
    v7 = a1[4];
    v8 = *(v7 + 128);
    *(v7 + 128) = v6;
  }
}

- (id)invernessClientForAccountID:(id)d
{
  v3 = [(ICCloudContext *)self containerForAccountID:d];
  v4 = [[ICNotesInvernessClient alloc] initWithContainer:v3];

  return v4;
}

- (void)dealloc
{
  if ([(ICCloudContext *)self didAddObservers])
  {
    operationQueue = [(ICCloudContext *)self operationQueue];
    [operationQueue ic_removeObserver:self forKeyPath:@"operationCount" context:compoundliteral_1];
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  retryTimer = [(ICCloudContext *)self retryTimer];
  [retryTimer invalidate];

  processingSelectorDelayer = [(ICCloudContext *)self processingSelectorDelayer];
  [processingSelectorDelayer cancelPreviousFireRequests];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = ICCloudContext;
  [(ICCloudContext *)&v7 dealloc];
}

- (void)disableCloudSyncingIfCurrentVersionNotSupported:(id)supported
{
  minimumClientVersion = [supported minimumClientVersion];
  v5 = [minimumClientVersion componentsSeparatedByString:{@", "}];
  if ([v5 count] != 3)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext disableCloudSyncingIfCurrentVersionNotSupported:];
    }

    goto LABEL_9;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  intValue = [v6 intValue];

  v8 = [v5 objectAtIndexedSubscript:1];
  intValue2 = [v8 intValue];

  v10 = [v5 objectAtIndexedSubscript:2];
  intValue3 = [v10 intValue];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v14[0] = intValue;
  v14[1] = intValue2;
  v14[2] = intValue3;
  LODWORD(intValue) = [processInfo isOperatingSystemAtLeastVersion:v14];

  if (!intValue)
  {
    [(ICCloudContext *)self setSyncDisabledByServer:1];
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext disableCloudSyncingIfCurrentVersionNotSupported:];
    }

LABEL_9:
    goto LABEL_10;
  }

  [(ICCloudContext *)self setSyncDisabledByServer:0];
LABEL_10:
}

- (void)updateConfiguration:(id)configuration
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__ICCloudContext_updateConfiguration___block_invoke;
  aBlock[3] = &unk_278198698;
  aBlock[4] = self;
  configurationCopy = configuration;
  v4 = _Block_copy(aBlock);
  objc_opt_class();
  object = [configurationCopy object];

  v6 = ICDynamicCast();

  if (v6)
  {
    v4[2](v4, v6);
  }

  else
  {
    [ICCloudConfiguration loadSharedConfigurationWithCompletionHandler:v4];
  }
}

void __38__ICCloudContext_updateConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 disableCloudSyncingIfCurrentVersionNotSupported:v4];
  v5 = *(a1 + 32);
  v6 = [v4 throttlingPolicy];

  [v5 updateSelectorDelayers:v6];
}

- (void)updateSelectorDelayers:(id)delayers
{
  delayersCopy = delayers;
  objc_opt_class();
  v4 = ICDynamicCast();
  if (v4)
  {
    throttlingPolicy = v4;
  }

  else
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    objc_opt_class();
    object = [v6 object];
    throttlingPolicy = ICDynamicCast();

    if (!throttlingPolicy)
    {
      v8 = +[ICCloudConfiguration sharedConfiguration];
      throttlingPolicy = [v8 throttlingPolicy];
    }
  }

  [throttlingPolicy batchInterval];
  v10 = v9;
  [throttlingPolicy maximumBatchIntervalFactor];
  v12 = v11;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  processingSelectorDelayer = [(ICCloudContext *)selfCopy processingSelectorDelayer];
  v15 = v10 * v12;

  if (!processingSelectorDelayer)
  {
    v16 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:selfCopy selector:sel_processPendingCloudObjects delay:1 maximumDelay:v10 callOnMainThread:v15];
    [(ICCloudContext *)selfCopy setProcessingSelectorDelayer:v16];
  }

  objc_sync_exit(selfCopy);

  processingSelectorDelayer2 = [(ICCloudContext *)selfCopy processingSelectorDelayer];
  [processingSelectorDelayer2 setDelay:v10];

  processingSelectorDelayer3 = [(ICCloudContext *)selfCopy processingSelectorDelayer];
  [processingSelectorDelayer3 setMaximumDelay:v15];

  processingSelectorDelayer4 = [(ICCloudContext *)selfCopy processingSelectorDelayer];
  isScheduledToFire = [processingSelectorDelayer4 isScheduledToFire];

  if (isScheduledToFire)
  {
    processingSelectorDelayer5 = [(ICCloudContext *)selfCopy processingSelectorDelayer];
    [processingSelectorDelayer5 cancelPreviousFireRequests];

    processingSelectorDelayer6 = [(ICCloudContext *)selfCopy processingSelectorDelayer];
    [processingSelectorDelayer6 requestFire];
  }
}

- (void)fetchAssetsOnDemandIfEnabledForNoteObjectID:(id)d
{
  dCopy = d;
  supportsDeferredAssetDownload = [(ICCloudContext *)self supportsDeferredAssetDownload];
  if (dCopy && supportsDeferredAssetDownload)
  {
    processingQueue = [(ICCloudContext *)self processingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke;
    v7[3] = &unk_278194AD8;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(processingQueue, v7);
  }
}

void __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke(uint64_t a1)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__48;
  v34 = __Block_byref_object_dispose__48;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__48;
  v28 = __Block_byref_object_dispose__48;
  v29 = 0;
  v2 = [*(a1 + 32) backgroundContext];
  v3 = [*(a1 + 32) cloudContextDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_2;
    aBlock[3] = &unk_2781986C0;
    aBlock[4] = *(a1 + 32);
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_3;
  v17[3] = &unk_2781986E8;
  v18 = *(a1 + 40);
  v6 = v2;
  v19 = v6;
  v21 = &v30;
  v22 = &v24;
  v7 = v5;
  v20 = v7;
  [v6 performBlockAndWait:v17];
  v8 = [v25[5] count];
  v9 = os_log_create("com.apple.notes", "Cloud");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_cold_1();
    }

    v11 = [*(a1 + 32) newSessionForReason:@"FetchOnDemandAssets"];
    v12 = *(a1 + 32);
    v13 = [v25[5] allObjects];
    v14 = v31[5];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_143;
    v15[3] = &unk_278197F80;
    v15[4] = *(a1 + 32);
    v9 = v11;
    v16 = v9;
    [v12 addFetchOperationsForRecordIDs:v13 forSession:v9 accountID:v14 qualityOfService:25 operationGroupName:@"FetchRecordsForDeferredAssetDownload" shouldDownloadAssets:1 completionHandler:v15];
  }

  else if (v10)
  {
    __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_cold_2();
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

uint64_t __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 cloudContextDelegate];
  v9 = [v8 cloudContext:*(a1 + 32) supportsOnDemandFetchForCloudObject:v7 context:v6];

  return v9;
}

void __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_3(void *a1)
{
  v10 = [ICNote ic_existingObjectWithID:a1[4] context:a1[5]];
  v2 = [v10 account];
  v3 = [v2 identifier];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = v10;
  if (v10 && *(*(a1[7] + 8) + 40))
  {
    v7 = [v10 descendantsNeedingOnDemandAssetFetchWithContext:a1[5] shouldFetchObject:a1[6]];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = v10;
  }
}

void __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_143(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_2_144;
  v6[3] = &unk_278194AD8;
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (NSDictionary)cloudObjectClassesByRecordType
{
  v5[11] = *MEMORY[0x277D85DE8];
  v4[0] = @"Note";
  v5[0] = objc_opt_class();
  v4[1] = @"Folder";
  v5[1] = objc_opt_class();
  v4[2] = @"Attachment";
  v5[2] = objc_opt_class();
  v4[3] = @"InlineAttachment";
  v5[3] = objc_opt_class();
  v4[4] = @"Media";
  v5[4] = objc_opt_class();
  v4[5] = @"MigrationState";
  v5[5] = objc_opt_class();
  v4[6] = @"LegacyTombstone";
  v5[6] = objc_opt_class();
  v4[7] = *MEMORY[0x277CBC058];
  v5[7] = objc_opt_class();
  v4[8] = @"PasswordProtectedNote";
  v5[8] = objc_opt_class();
  v4[9] = @"AccountData";
  v5[9] = objc_opt_class();
  v4[10] = @"Hashtag";
  v5[10] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:11];

  return v2;
}

+ (CKRecordZoneID)notesZoneID
{
  if (notesZoneID_onceToken != -1)
  {
    +[ICCloudContext notesZoneID];
  }

  v3 = notesZoneID_sNotesZoneID;

  return v3;
}

void __29__ICCloudContext_notesZoneID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:@"Notes" ownerName:*MEMORY[0x277CBBF28]];
  v2 = notesZoneID_sNotesZoneID;
  notesZoneID_sNotesZoneID = v1;
}

+ (CKRecordZoneID)metadataZoneID
{
  if (metadataZoneID_onceToken != -1)
  {
    +[ICCloudContext metadataZoneID];
  }

  v3 = metadataZoneID_sMetadataZoneID;

  return v3;
}

void __32__ICCloudContext_metadataZoneID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:@"Metadata" ownerName:*MEMORY[0x277CBBF28]];
  v2 = metadataZoneID_sMetadataZoneID;
  metadataZoneID_sMetadataZoneID = v1;
}

- (void)reachabilityChanged:(id)changed
{
  isInternetReachable = [(ICCloudContext *)self isInternetReachable];
  v5 = os_log_create("com.apple.notes", "Cloud");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (isInternetReachable)
  {
    if (v6)
    {
      [ICCloudContext reachabilityChanged:];
    }

    [(ICCloudContext *)self processPendingCloudObjects];
  }

  else
  {
    if (v6)
    {
      [ICCloudContext reachabilityChanged:];
    }
  }

  [(ICCloudContext *)self updateCloudContextState];
}

- (void)cloudKitAccountChanged:(id)changed
{
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICCloudContext_cloudKitAccountChanged___block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

uint64_t __41__ICCloudContext_cloudKitAccountChanged___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__ICCloudContext_cloudKitAccountChanged___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) accountStatus];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ICCloudContext_cloudKitAccountChanged___block_invoke_160;
  v6[3] = &unk_278198710;
  v6[4] = v4;
  v6[5] = v3;
  return [v4 updateAccountStatusWithCompletionHandler:v6];
}

uint64_t __41__ICCloudContext_cloudKitAccountChanged___block_invoke_160(uint64_t result, uint64_t a2)
{
  if (*(result + 40) != a2)
  {
    return [*(result + 32) updateCloudContextState];
  }

  return result;
}

- (BOOL)hasPendingOperations
{
  operationQueue = [(ICCloudContext *)self operationQueue];
  v3 = [operationQueue operationCount] != 0;

  return v3;
}

- (void)printOperationQueue
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __38__ICCloudContext_registerStateHandler__block_invoke()
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = +[ICCloudContext sharedContext];
  v2 = [v1 operationQueue];
  v3 = [v2 operations];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v8 ic_loggingIdentifier];
        v13 = [v9 stringWithFormat:@"%@ %@", v11, v12];

        v14 = [v8 ic_loggingValues];
        [v0 setObject:v14 forKeyedSubscript:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  [v16 setObject:v0 forKeyedSubscript:@"operations"];

  return v16;
}

- (id)allZoneIDs
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = +[ICCloudContext notesZoneID];
  v6[0] = v2;
  v3 = +[ICCloudContext metadataZoneID];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)receivedZoneNotFound:(id)found operation:(id)operation context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  operationCopy = operation;
  contextCopy = context;
  database = [operationCopy database];
  v12 = [(ICCloudContext *)self accountIDForDatabase:database];

  ic_isOwnedByCurrentUser = [foundCopy ic_isOwnedByCurrentUser];
  v14 = os_log_create("com.apple.notes", "Cloud");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (ic_isOwnedByCurrentUser)
  {
    if (v15)
    {
      ic_loggingDescription = [foundCopy ic_loggingDescription];
      ic_loggingDescription2 = [operationCopy ic_loggingDescription];
      v24 = 138412546;
      v25 = ic_loggingDescription;
      v26 = 2112;
      v27 = ic_loggingDescription2;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Zone not found %@ %@", &v24, 0x16u);
    }

    accountZoneIDsNeedingToBeSaved = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
    [accountZoneIDsNeedingToBeSaved ic_addZoneID:foundCopy forAccountID:v12];

    cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate cloudContext:self receivedZoneNotFound:foundCopy accountID:v12];
  }

  else
  {
    if (v15)
    {
      ic_loggingDescription3 = [foundCopy ic_loggingDescription];
      ic_loggingDescription4 = [operationCopy ic_loggingDescription];
      v24 = 138412546;
      v25 = ic_loggingDescription3;
      v26 = 2112;
      v27 = ic_loggingDescription4;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Shared zone not found %@ %@", &v24, 0x16u);
    }

    accountZoneIDsFetchingChanges = [(ICCloudContext *)self accountZoneIDsFetchingChanges];
    [accountZoneIDsFetchingChanges ic_removeZoneID:foundCopy forAccountID:v12];

    cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate cloudContext:self sharedZoneWasDeleted:foundCopy accountID:v12];
  }

  [(ICCloudContext *)self saveZoneFetchState];
  database2 = [operationCopy database];
  -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:", foundCopy, [database2 databaseScope], v12, contextCopy);
}

- (id)allCloudObjectIDsInContext:(id)context predicate:(id)predicate
{
  v5 = MEMORY[0x277CBEB58];
  predicateCopy = predicate;
  contextCopy = context;
  v8 = [v5 set];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__ICCloudContext_allCloudObjectIDsInContext_predicate___block_invoke;
  v12[3] = &unk_278198758;
  v13 = v8;
  v9 = v8;
  [ICCloudSyncingObject enumerateAllCloudObjectsInContext:contextCopy predicate:predicateCopy sortDescriptors:0 relationshipKeyPathsForPrefetching:0 batchSize:20 saveAfterBatch:0 usingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

void __55__ICCloudContext_allCloudObjectIDsInContext_predicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

- (void)syncWithReason:(id)reason uploadUnsyncedChanges:(BOOL)changes completionHandler:(id)handler
{
  changesCopy = changes;
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext syncWithReason:uploadUnsyncedChanges:completionHandler:];
  }

  if (![(ICCloudContext *)self isReadyToSync])
  {
    isCloudKitAccountAvailable = [(ICCloudContext *)self isCloudKitAccountAvailable];
    v13 = os_log_create("com.apple.notes", "Cloud");
    v14 = v13;
    if (isCloudKitAccountAvailable)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        readinessLoggingDescription = [(ICCloudContext *)self readinessLoggingDescription];
        *buf = 138412290;
        v27 = readinessLoggingDescription;
        _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEFAULT, "Trying to sync while not ready <%@>", buf, 0xCu);
      }

      errorForDisabledCloudSyncing = [objc_opt_class() errorForDisabledCloudSyncing];
      if (!handlerCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudContext syncWithReason:uploadUnsyncedChanges:completionHandler:];
      }

      errorForDisabledCloudSyncing = 0;
      if (!handlerCopy)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    handlerCopy[2](handlerCopy, errorForDisabledCloudSyncing);
LABEL_28:

    goto LABEL_29;
  }

  if (![(ICCloudContext *)self syncOnlyIfReachable]|| [(ICCloudContext *)self isInternetReachable])
  {
    if ([(ICCloudContext *)self isFetchingEnabled])
    {
      if ([(ICCloudContext *)self syncOnlyIfReachable])
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }

      [(ICCloudContext *)self setDiscretionaryNetworkBehavior:v11];
      [(ICCloudContext *)self _syncWithReason:reasonCopy uploadUnsyncedChanges:changesCopy completionHandler:handlerCopy];
    }

    else
    {
      v18 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_214D51000, v18, OS_LOG_TYPE_INFO, "Trying to sync with fetching disabled, so only pushing", buf, 2u);
      }

      v19 = [(ICCloudContext *)self newSessionForReason:reasonCopy];
      cloudSessionDelegate = [(ICCloudContext *)self cloudSessionDelegate];
      [v19 setDelegate:cloudSessionDelegate];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __73__ICCloudContext_syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke;
      v23[3] = &unk_278198780;
      v24 = v19;
      v25 = handlerCopy;
      v23[4] = self;
      v21 = v19;
      [(ICCloudContext *)self processAllCloudObjectsInSession:v21 withCompletionHandler:v23];
    }

    goto LABEL_29;
  }

  v22 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_214D51000, v22, OS_LOG_TYPE_INFO, "Trying to sync with no network connection", buf, 2u);
  }

  if (handlerCopy)
  {
    errorForDisabledCloudSyncing = [objc_opt_class() errorForDisabledCloudSyncing];
    goto LABEL_27;
  }

LABEL_29:
}

void __73__ICCloudContext_syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = [objc_opt_class() errorFromErrors:v3];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __73__ICCloudContext_syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_2;
    v10 = &unk_278195F50;
    v5 = *(a1 + 48);
    v11 = v4;
    v12 = v5;
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], &v7);
  }

  [*(a1 + 32) syncForSession:*(a1 + 40) completedWithErrors:{v3, v7, v8, v9, v10}];
}

- (BOOL)hasCompletedInitialSync
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [mEMORY[0x277D36180] BOOLForKey:@"IntialCloudKitSyncCompleted"];

  return v3;
}

- (void)setCompletedInitialSync:(BOOL)sync
{
  syncCopy = sync;
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] setBool:syncCopy forKey:@"IntialCloudKitSyncCompleted"];
}

- (void)_syncWithReason:(id)reason uploadUnsyncedChanges:(BOOL)changes completionHandler:(id)handler
{
  changesCopy = changes;
  v40 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  v10 = [(ICCloudContext *)self newSessionForReason:reasonCopy];
  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    identifier = [v10 identifier];
    uUIDString = [identifier UUIDString];
    v14 = @"NO";
    *buf = 138412802;
    v35 = uUIDString;
    v36 = 2112;
    if (changesCopy)
    {
      v14 = @"YES";
    }

    v37 = reasonCopy;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "Enqueuing sync %@ with reason: %@ (uploadUnsyncedChanges=%@)", buf, 0x20u);
  }

  [MEMORY[0x277D36278] postFullSyncTelemetryWithReason:reasonCopy];
  array = [MEMORY[0x277CBEB18] array];
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke;
  v28[3] = &unk_2781987D0;
  v17 = array;
  v29 = v17;
  selfCopy = self;
  v18 = v10;
  v33 = changesCopy;
  v31 = v18;
  v32 = v16;
  v19 = v16;
  [(ICCloudContext *)self fetchDatabaseChangesForSession:v18 completionHandler:v28];
  v20 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_192;
  block[3] = &unk_2781987F8;
  block[4] = self;
  v25 = v17;
  v26 = v18;
  v27 = handlerCopy;
  v21 = v18;
  v22 = v17;
  v23 = handlerCopy;
  dispatch_group_notify(v19, v20, block);
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Cloud");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Error fetching database changes during sync", buf, 2u);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_cold_1();
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_190;
  v14[3] = &unk_2781987D0;
  v8 = *(a1 + 32);
  v17 = *(a1 + 64);
  *&v9 = v8;
  *(&v9 + 1) = *(a1 + 40);
  v13 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  [v6 fetchRecordZoneChangesForSession:v7 completionHandler:v14];
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Cloud");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Error fetching record zone changes during sync", buf, 2u);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_190_cold_1();
    }
  }

  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_191;
    v8[3] = &unk_2781987A8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    [v6 processAllCloudObjectsInSession:v7 withCompletionHandler:v8];
  }

  else
  {
    dispatch_group_leave(*(a1 + 56));
  }
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_191(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Cloud");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Error while processing for full sync", v6, 2u);
    }

    [*(a1 + 32) addObjectsFromArray:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_191_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_192(void *a1)
{
  if (a1[7])
  {
    v2 = [objc_opt_class() errorFromErrors:a1[5]];
    (*(a1[7] + 16))();
  }

  v4 = a1[5];
  v3 = a1[6];
  v5 = a1[4];

  return [v5 syncForSession:v3 completedWithErrors:v4];
}

- (void)syncForSession:(id)session completedWithErrors:(id)errors
{
  v36 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorsCopy = errors;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    reason = [sessionCopy reason];
    v10 = [errorsCopy count];
    identifier = [sessionCopy identifier];
    uUIDString = [identifier UUIDString];
    *buf = 138413058;
    v29 = reason;
    v30 = 2048;
    v31 = v10;
    v32 = 2112;
    v33 = uUIDString;
    v34 = 1024;
    v35 = ![(ICCloudContext *)self hasCompletedInitialSync];
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Sync session completed for reason = %@ with error count: %lu, identifier = %@, initialSync? %{BOOL}d", buf, 0x26u);
  }

  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ICCloudContext_syncForSession_completedWithErrors___block_invoke;
  block[3] = &unk_278194DC0;
  v14 = sessionCopy;
  v25 = v14;
  selfCopy = self;
  v15 = errorsCopy;
  v27 = v15;
  dispatch_async(processingQueue, block);

  if (![v15 count])
  {
    [(ICCloudContext *)self setCompletedInitialSync:1];
    v16 = [MEMORY[0x277CBEAA8] now];
    backgroundContext = [(ICCloudContext *)self backgroundContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__ICCloudContext_syncForSession_completedWithErrors___block_invoke_2;
    v21[3] = &unk_278194AD8;
    v22 = backgroundContext;
    v23 = v16;
    v18 = v16;
    v19 = backgroundContext;
    [v19 performBlockAndWait:v21];
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"ICCloudContextSyncCompletedNotification" object:0 userInfo:0];
  }
}

void __53__ICCloudContext_syncForSession_completedWithErrors___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() errorFromErrors:*(a1 + 48)];
  [v1 sessionEndedWithError:v2];
}

uint64_t __53__ICCloudContext_syncForSession_completedWithErrors___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [ICAccount allActiveCloudKitAccountsInContext:*(a1 + 32), 0];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setLastSyncDate:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) ic_save];
}

- (void)cancelEverythingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781957B0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = a1;
  v3 = [*(a1 + 32) operationQueue];
  v4 = [v3 operations];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 ic_removeAllCompletionBlocks];
          v10 = [v9 ic_cloudSession];
          if (v10)
          {
            v11 = [*(v24 + 32) processingQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_2;
            block[3] = &unk_278194B00;
            v37 = v10;
            dispatch_async(v11, block);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [ICCloudSyncingObject deleteTemporaryAssetFilesForOperation:v9];
          }
        }

        v12 = [v9 ic_loggingDescription];
        [v2 appendFormat:@"\n\t%@", v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v6);
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_cold_1();
  }

  [*(v24 + 32) setDisabledInternal:1];
  [*(v24 + 32) clearPendingActivity];
  v14 = [*(v24 + 32) operationQueue];
  [v14 cancelAllOperations];

  v15 = [*(v24 + 32) processingQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_197;
  v35[3] = &unk_278194B00;
  v35[4] = *(v24 + 32);
  dispatch_async(v15, v35);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_2_198;
  aBlock[3] = &unk_2781957B0;
  aBlock[4] = *(v24 + 32);
  v34 = *(v24 + 40);
  v16 = _Block_copy(aBlock);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__48;
  v31[4] = __Block_byref_object_dispose__48;
  v32 = MEMORY[0x277CBEC28];
  v17 = dispatch_time(0, 5000000000);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_4;
  v28[3] = &unk_278198820;
  v30 = v31;
  v18 = v16;
  v29 = v18;
  dispatch_after(v17, MEMORY[0x277D85CD0], v28);
  v19 = [@"com.apple.notes.cloud.waiting" UTF8String];
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create(v19, v20);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_199;
  v25[3] = &unk_278198848;
  v22 = *(v24 + 32);
  v26 = v18;
  v27 = v31;
  v25[4] = v22;
  v23 = v18;
  dispatch_async(v21, v25);

  _Block_object_dispose(v31, 8);
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_2_198(uint64_t a1)
{
  [*(a1 + 32) clearPendingActivity];
  [*(a1 + 32) setDisabledInternal:0];
  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_3;
    block[3] = &unk_278195F28;
    v3 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) BOOLValue] & 1) == 0)
  {
    v2 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_4_cold_1();
    }

    (*(*(a1 + 32) + 16))();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = MEMORY[0x277CBEC38];
  }
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_199(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  [v2 waitUntilAllOperationsAreFinished];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_2_200;
  block[3] = &unk_278198820;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_2_200(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) BOOLValue] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = MEMORY[0x277CBEC38];
  }
}

- (void)clearPendingActivity
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ICCloudContext_clearPendingActivity__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__ICCloudContext_clearPendingActivity__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) objectIDsToProcess];
  [v3 removeAllObjects];

  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __38__ICCloudContext_clearPendingActivity__block_invoke_cold_2();
  }

  v5 = [*(a1 + 32) objectIDsToRetry];
  [v5 removeAllObjects];
}

- (void)deleteRecordZonesWithZoneIDs:(id)ds accountID:(id)d markZonesAsUserPurged:(BOOL)purged completionHandler:(id)handler
{
  purgedCopy = purged;
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    v36 = purgedCopy;
    v37 = 2112;
    v38 = dCopy;
    v39 = 2112;
    v40 = dsCopy;
    _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "Deleting record zones (markZonesAsUserPurged=%d) in account ID %@: %@", buf, 0x1Cu);
  }

  if ([dCopy length])
  {
    v14 = [(ICCloudContext *)self containerForAccountID:dCopy];
    v15 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:dsCopy];
    [v15 setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
    discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
    configuration = [v15 configuration];
    [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

    privateCloudDatabase = [v14 privateCloudDatabase];
    [v15 setDatabase:privateCloudDatabase];
    [v15 setMarkZonesAsUserPurged:purgedCopy];
    backgroundContext = [(ICCloudContext *)self backgroundContext];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke;
    v28 = &unk_2781988B8;
    v29 = dCopy;
    selfCopy = self;
    v31 = privateCloudDatabase;
    v32 = backgroundContext;
    v33 = handlerCopy;
    v20 = backgroundContext;
    v21 = privateCloudDatabase;
    [v15 setModifyRecordZonesCompletionBlock:&v25];
    v22 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v22 setName:{@"DeleteRecordZones", v25, v26, v27, v28}];
    [v22 setQuantity:{objc_msgSend(dsCopy, "count")}];
    [v22 setExpectedSendSize:1];
    [v22 setExpectedReceiveSize:1];
    [v15 setGroup:v22];
    v34 = v15;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [(ICCloudContext *)self addOperations:v23];

LABEL_9:
    goto LABEL_10;
  }

  v24 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [ICCloudContext deleteRecordZonesWithZoneIDs:accountID:markZonesAsUserPurged:completionHandler:];
  }

  if (handlerCopy)
  {
    v14 = ICGenericError();
    (*(handlerCopy + 2))(handlerCopy, v14);
    goto LABEL_9;
  }

LABEL_10:
}

void __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_log_create("com.apple.notes", "Cloud");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_cold_2();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 40) deleteServerChangeTokenForRecordZoneID:*(*(&v25 + 1) + 8 * v16++) databaseScope:objc_msgSend(*(a1 + 48) accountID:"databaseScope") context:{*(a1 + 32), *(a1 + 56)}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  [*(a1 + 40) updateCloudContextState];
  v17 = [*(a1 + 40) backgroundContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_203;
  v21[3] = &unk_278198890;
  v21[4] = *(a1 + 40);
  v22 = v17;
  v18 = *(a1 + 64);
  v23 = v9;
  v24 = v18;
  v19 = v9;
  v20 = v17;
  [v20 performBlockAndWait:v21];
}

uint64_t __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_203(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_203_cold_1();
  }

  [*(a1 + 32) enumerateAllCloudObjectsInContext:*(a1 + 40) batchSize:10 saveAfterBatch:1 usingBlock:&__block_literal_global_206];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

void __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_204(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICCheckedDynamicCast();

  [v3 clearServerRecords];
}

- (BOOL)isFetchingAllRecordZones
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ICCloudContext *)self operationQueue:0];
  operations = [v2 operations];
  v4 = [operations copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (id)errorForWaitingForRetryTimer
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Cloud syncing is waiting for retry timer.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.notes.cloud" code:2 userInfo:v3];

  return v4;
}

+ (id)errorFromErrors:(id)errors
{
  v9[1] = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  if ([errorsCopy count])
  {
    if ([errorsCopy count] == 1)
    {
      firstObject = [errorsCopy firstObject];
    }

    else
    {
      v5 = MEMORY[0x277CCA9B8];
      v8 = @"Errors";
      v9[0] = errorsCopy;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      firstObject = [v5 errorWithDomain:@"com.apple.notes.cloud" code:3 userInfo:v6];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)errorFromOperations:(id)operations
{
  v20 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = operationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        error = [v10 error];

        if (error)
        {
          error2 = [v10 error];
          [array addObject:error2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() errorFromErrors:array];

  return v13;
}

- (double)timeIntervalToRetryAfterFromError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    userInfo = [errorCopy userInfo];
    v6 = *MEMORY[0x277CBBF68];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

    if (v7)
    {
      userInfo2 = [v4 userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:v6];
      [v9 doubleValue];
      *(v16 + 3) = v10;
    }

    else
    {
      if ([v4 code] != 2)
      {
LABEL_8:
        v11 = v16[3];
        _Block_object_dispose(&v15, 8);
        goto LABEL_9;
      }

      userInfo3 = [v4 userInfo];
      userInfo2 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__ICCloudContext_timeIntervalToRetryAfterFromError___block_invoke;
      v14[3] = &unk_2781988E0;
      v14[4] = &v15;
      [userInfo2 enumerateKeysAndObjectsUsingBlock:v14];
    }

    goto LABEL_8;
  }

  v11 = 0.0;
LABEL_9:

  return v11;
}

void __52__ICCloudContext_timeIntervalToRetryAfterFromError___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 userInfo];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

  v7 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v7 = v9;
    *(*(*(a1 + 32) + 8) + 24) = v8;
    *a4 = 1;
  }
}

- (void)finishOperationsForRecordID:(id)d qualityOfService:(int64_t)service completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke;
  v13[3] = &unk_278198908;
  v16 = handlerCopy;
  serviceCopy = service;
  v14 = dCopy;
  selfCopy = self;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(processingQueue, v13);
}

void __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = MEMORY[0x277CCA8C8];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_223;
  v46[3] = &unk_2781957B0;
  v47 = *(a1 + 32);
  v48 = *(a1 + 48);
  v4 = [v3 blockOperationWithBlock:v46];
  [v4 setQualityOfService:*(a1 + 56)];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = [*(a1 + 40) operationQueue];
  v6 = [v5 operations];

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v43;
    *&v9 = 138412546;
    v33 = v9;
    v35 = v4;
    v36 = *v43;
    v34 = v6;
    do
    {
      v12 = 0;
      v37 = v10;
      do
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v42 + 1) + 8 * v12);
        [v13 setQualityOfService:{*(a1 + 56), v33}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_27;
          }

          v24 = v13;
          v25 = [v24 recordIDs];
          v26 = [v25 containsObject:*(a1 + 32)];

          v11 = v36;
          if ((v26 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        v14 = v13;
        v15 = [v14 recordIDsToDelete];
        v16 = [v15 containsObject:*(a1 + 32)];

        if (v16)
        {
LABEL_23:

          v10 = v37;
LABEL_24:
          v27 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v13 ic_loggingDescription];
            v29 = [*(a1 + 32) ic_loggingDescription];
            *buf = v33;
            v51 = v28;
            v52 = 2112;
            v53 = v29;
            _os_log_debug_impl(&dword_214D51000, v27, OS_LOG_TYPE_DEBUG, "Waiting on operation %@ for record ID %@", buf, 0x16u);

            v11 = v36;
          }

          [v4 addDependency:v13];
          goto LABEL_27;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v17 = [v14 recordsToSave];
        v18 = [v17 countByEnumeratingWithState:&v38 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v39;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v38 + 1) + 8 * i) recordID];
              v23 = [v22 isEqual:*(a1 + 32)];

              if (v23)
              {

                v7 = v34;
                v4 = v35;
                v11 = v36;
                goto LABEL_23;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v38 objects:v54 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v7 = v34;
          v4 = v35;
          v11 = v36;
        }

        else
        {
        }

        v10 = v37;
LABEL_27:
        ++v12;
      }

      while (v12 != v10);
      v30 = [v7 countByEnumeratingWithState:&v42 objects:v55 count:16];
      v10 = v30;
    }

    while (v30);
  }

  [v4 ic_setResistsCancellation:1];
  v31 = *(a1 + 40);
  v49 = v4;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  [v31 addOperations:v32];
}

uint64_t __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_223(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_223_cold_1(a1);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)pauseCloudSyncWhileSynchronouslyPerformingBlock:(id)block
{
  blockCopy = block;
  processingQueue = [(ICCloudContext *)self processingQueue];
  dispatch_sync(processingQueue, blockCopy);
}

- (void)ingestCloudKitRecord:(id)record forAccountID:(id)d forceMerge:(BOOL)merge context:(id)context
{
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ICCloudContext_ingestCloudKitRecord_forAccountID_forceMerge_context___block_invoke;
  block[3] = &unk_278198930;
  mergeCopy = merge;
  v18 = dCopy;
  v19 = recordCopy;
  selfCopy = self;
  v21 = contextCopy;
  v14 = contextCopy;
  v15 = recordCopy;
  v16 = dCopy;
  dispatch_sync(processingQueue, block);
}

uint64_t __71__ICCloudContext_ingestCloudKitRecord_forAccountID_forceMerge_context___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__ICCloudContext_ingestCloudKitRecord_forAccountID_forceMerge_context___block_invoke_cold_1(a1);
  }

  return [*(a1 + 48) _ingestCloudKitRecord:*(a1 + 40) forAccountID:*(a1 + 32) forceMerge:*(a1 + 64) session:0 context:*(a1 + 56)];
}

- (void)_ingestCloudKitRecord:(id)record forAccountID:(id)d forceMerge:(BOOL)merge session:(id)session context:(id)context
{
  recordCopy = record;
  dCopy = d;
  sessionCopy = session;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  dispatch_assert_queue_V2(processingQueue);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__ICCloudContext__ingestCloudKitRecord_forAccountID_forceMerge_session_context___block_invoke;
  v21[3] = &unk_278198958;
  v22 = contextCopy;
  v23 = dCopy;
  v24 = recordCopy;
  selfCopy = self;
  mergeCopy = merge;
  v26 = sessionCopy;
  v17 = sessionCopy;
  v18 = recordCopy;
  v19 = dCopy;
  v20 = contextCopy;
  [v20 performBlockAndWait:v21];
}

void __80__ICCloudContext__ingestCloudKitRecord_forAccountID_forceMerge_session_context___block_invoke(uint64_t a1)
{
  if ([ICAccount isCloudKitAccountAvailableInContext:*(a1 + 32)])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 48);
      v2 = *(a1 + 56);
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);

      [v2 didFetchShare:v3 accountID:v4 context:v5];
      return;
    }

    v7 = [*(a1 + 48) recordType];
    v8 = [ICUserSpecificRecordIDParser isUserSpecificRecordType:v7];

    v9 = *(a1 + 56);
    if (v8)
    {
      v10 = [*(a1 + 48) recordID];
      v11 = 1;
      v25 = [v9 existingCloudObjectForUserSpecificRecordID:v10 createPlaceholderIfNecessary:1 accountID:*(a1 + 40) context:*(a1 + 32)];

      if ((*(a1 + 72) & 1) == 0)
      {
        v11 = [*(a1 + 56) shouldUpdateServerRecordForObject:v25 withRecord:*(a1 + 48)];
      }

      [v25 didFetchUserSpecificRecord:*(a1 + 48) accountID:*(a1 + 40) force:v11];
      [*(a1 + 56) setAssetDownloadStateOnObject:v25 withRecord:*(a1 + 48) managedObjectContext:*(a1 + 32)];
      v12 = *(a1 + 64);
      v13 = [*(a1 + 48) recordID];
      v14 = [v25 recordType];
      [v12 fetchedRecordWasChanged:v13 type:v14];
    }

    else
    {
      v15 = [*(a1 + 56) existingCloudObjectForRecord:*(a1 + 48) accountID:*(a1 + 40) context:*(a1 + 32)];
      if (v15)
      {
        v25 = v15;
        if (*(a1 + 72))
        {
          v16 = 1;
        }

        else
        {
          v16 = [*(a1 + 56) shouldUpdateServerRecordForObject:v15 withRecord:*(a1 + 48)];
        }

        [v25 objectWasFetchedFromCloudWithRecord:*(a1 + 48) accountID:*(a1 + 40) force:v16];
        [*(a1 + 56) setAssetDownloadStateOnObject:v25 withRecord:*(a1 + 48) managedObjectContext:*(a1 + 32)];
        v20 = *(a1 + 64);
        v18 = [*(a1 + 48) recordID];
        v19 = [v25 recordType];
        [v20 fetchedRecordWasChanged:v18 type:v19];
      }

      else
      {
        v25 = [*(a1 + 56) newCloudObjectForRecord:*(a1 + 48) accountID:*(a1 + 40) context:*(a1 + 32)];
        [*(a1 + 56) setAssetDownloadStateOnObject:v25 withRecord:*(a1 + 48) managedObjectContext:*(a1 + 32)];
        v17 = *(a1 + 64);
        v18 = [*(a1 + 48) recordID];
        v19 = [v25 recordType];
        [v17 fetchedRecordWasAdded:v18 type:v19];
      }

      v21 = [*(a1 + 56) cloudContextDelegate];
      if (objc_opt_respondsToSelector())
      {
        v22 = [*(a1 + 56) cloudContextDelegate];
        v23 = [v22 shouldSuppressShareNotificationsForCloudContext:*(a1 + 56)];
      }

      else
      {
        v23 = 0;
      }

      v24 = v25;
      if (!v25 || (v23 & 1) != 0)
      {
LABEL_26:

        return;
      }

      [ICShareNotifier showNotificationIfNecessaryForCloudObject:v25 accountID:*(a1 + 40)];
    }

    v24 = v25;
    goto LABEL_26;
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __80__ICCloudContext__ingestCloudKitRecord_forAccountID_forceMerge_session_context___block_invoke_cold_1(a1);
  }
}

- (id)newSessionForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[ICCloudSession alloc] initWithReason:reasonCopy];

  [(ICCloudSession *)v5 setHasCompletedInitialSync:[(ICCloudContext *)self hasCompletedInitialSync]^ 1];
  cloudSessionDelegate = [(ICCloudContext *)self cloudSessionDelegate];
  [(ICCloudSession *)v5 setDelegate:cloudSessionDelegate];

  return v5;
}

- (void)setAccountStatus:(int64_t)status
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] setInteger:status forKey:@"CloudKitAccountStatus"];

  mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180]2 synchronize];
}

- (void)updateAccountStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_2781957B0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(processingQueue, v7);
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containersByAccountID];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) containersByAccountID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_2781989D0;
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_cold_1();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_231;
  v10[3] = &unk_2781989A8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 accountStatusWithCompletionHandler:v10];
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_231(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232;
  block[3] = &unk_278198980;
  v11 = v5;
  v7 = a1[5];
  v8 = a1[4];
  v12 = v7;
  v13 = v8;
  v15 = a2;
  v14 = a1[6];
  v9 = v5;
  dispatch_async(v6, block);
}

uint64_t __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232_cold_1();
    }
  }

  else
  {
    v3 = [*(a1 + 48) accountStatus];
    v4 = *(a1 + 64);
    v5 = os_log_create("com.apple.notes", "Cloud");
    v6 = v5;
    if (v3 == v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232_cold_2();
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CKStringFromAccountStatus();
        v8 = *(a1 + 40);
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "CloudKit account status changed to %@ for account: %@", &v11, 0x16u);
      }

      [*(a1 + 48) setAccountStatus:*(a1 + 64)];
      [*(a1 + 48) setNeedsToUpdateSubscriptions:1];
      v9 = [*(a1 + 48) subscribedSubscriptionIDs];
      [v9 removeAllObjects];

      [*(a1 + 48) clearZoneFetchState];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

- (void)fetchUserRecordWithAccountID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if ([dCopy length])
  {
    v8 = [(ICCloudContext *)self containerForAccountID:dCopy];
    [(ICCloudContext *)self fetchUserRecordWithContainer:v8 completionHandler:handlerCopy];
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext fetchUserRecordWithAccountID:completionHandler:];
    }

    if (handlerCopy)
    {
      v10 = ICGenericError();
      handlerCopy[2](handlerCopy, 0, v10);
    }
  }
}

- (void)fetchUserRecordWithContainer:(id)container completionHandler:(id)handler
{
  v27[4] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  handlerCopy = handler;
  fetchCurrentUserRecordOperation = [MEMORY[0x277CBC3E0] fetchCurrentUserRecordOperation];
  [fetchCurrentUserRecordOperation setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
  discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
  configuration = [fetchCurrentUserRecordOperation configuration];
  [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

  privateCloudDatabase = [containerCopy privateCloudDatabase];
  [fetchCurrentUserRecordOperation setDatabase:privateCloudDatabase];

  objc_initWeak(&location, fetchCurrentUserRecordOperation);
  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [fetchCurrentUserRecordOperation ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    [ICCloudContext fetchUserRecordWithContainer:completionHandler:];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__48;
  v24[4] = __Block_byref_object_dispose__48;
  v25 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke;
  v23[3] = &unk_2781989F8;
  v23[4] = v24;
  [fetchCurrentUserRecordOperation setPerRecordCompletionBlock:v23];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235;
  v19 = &unk_278198A20;
  objc_copyWeak(&v22, &location);
  v13 = handlerCopy;
  v20 = v13;
  v21 = v24;
  [fetchCurrentUserRecordOperation setFetchRecordsCompletionBlock:&v16];
  v14 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v14 setName:{@"FetchUserRecord", v16, v17, v18, v19}];
  [v14 setQuantity:1];
  [v14 setExpectedSendSize:1];
  [v14 setExpectedReceiveSize:1];
  [fetchCurrentUserRecordOperation setGroup:v14];
  v27[0] = fetchCurrentUserRecordOperation;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [(ICCloudContext *)self addOperations:v15];

  objc_destroyWeak(&v22);
  _Block_object_dispose(v24, 8);

  objc_destroyWeak(&location);
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    objc_storeStrong((*(v10 + 8) + 40), a2);
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_cold_2();
    }
  }
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235_cold_1(a1);
  }

  if (v4)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235_cold_2();
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40), v4);
  }
}

+ (id)userRecordNameForContainer:(id)container
{
  containerCopy = container;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"+[ICCloudContext userRecordNameForContainer:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__48;
  v16 = __Block_byref_object_dispose__48;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ICCloudContext_userRecordNameForContainer___block_invoke;
  v9[3] = &unk_278198A48;
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [containerCopy fetchUserRecordIDWithCompletionHandler:v9];
  v6 = dispatch_time(0, 120000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__ICCloudContext_userRecordNameForContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 recordName];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!v5 || v6)
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __45__ICCloudContext_userRecordNameForContainer___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)existingCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordType = [recordCopy recordType];

  v13 = [(ICCloudContext *)self existingCloudObjectForRecordID:recordID recordType:recordType accountID:dCopy context:contextCopy];

  return v13;
}

- (id)existingCloudObjectForRecordID:(id)d recordType:(id)type accountID:(id)iD context:(id)context excludingRecordTypes:(id)types
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  iDCopy = iD;
  contextCopy = context;
  typesCopy = types;
  if (!dCopy || !iDCopy)
  {
    if (dCopy)
    {
      if (iDCopy)
      {
LABEL_7:
        v18 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"recordID" functionName:"-[ICCloudContext existingCloudObjectForRecordID:recordType:accountID:context:excludingRecordTypes:]" simulateCrash:1 showAlert:0 format:@"Trying to fetch a cloud object without a record ID"];
      if (iDCopy)
      {
        goto LABEL_7;
      }
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"accountID" functionName:"-[ICCloudContext existingCloudObjectForRecordID:recordType:accountID:context:excludingRecordTypes:]" simulateCrash:1 showAlert:0 format:@"Trying to fetch a cloud object without an account ID"];
    goto LABEL_7;
  }

  if (typeCopy)
  {
    cloudObjectClassesByRecordType = [(ICCloudContext *)self cloudObjectClassesByRecordType];
    v17 = [cloudObjectClassesByRecordType objectForKeyedSubscript:typeCopy];

    v18 = [v17 existingCloudObjectForRecordID:dCopy accountID:iDCopy context:contextCopy];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    cloudObjectClassesByRecordType2 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
    allKeys = [cloudObjectClassesByRecordType2 allKeys];

    v21 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v30 = 0;
      v23 = *v33;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          if (([typesCopy containsObject:{v25, v30}] & 1) == 0)
          {
            cloudObjectClassesByRecordType3 = [(ICCloudContext *)self cloudObjectClassesByRecordType];
            v27 = [cloudObjectClassesByRecordType3 objectForKeyedSubscript:v25];

            v28 = [v27 existingCloudObjectForRecordID:dCopy accountID:iDCopy context:contextCopy];
            if (v28)
            {
              v18 = v28;
              goto LABEL_21;
            }
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v18 = 0;
LABEL_21:
      typeCopy = v30;
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_24:

  return v18;
}

- (id)existingCloudObjectForUserSpecificRecordID:(id)d createPlaceholderIfNecessary:(BOOL)necessary accountID:(id)iD context:(id)context
{
  necessaryCopy = necessary;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v13 = [ICUserSpecificRecordIDParser alloc];
  recordName = [dCopy recordName];
  v15 = [(ICUserSpecificRecordIDParser *)v13 initWithRecordName:recordName];

  if (!v15)
  {
    sharedRecordType3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(sharedRecordType3, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:];
    }

    goto LABEL_12;
  }

  cloudObjectClassesByRecordType = [(ICCloudContext *)self cloudObjectClassesByRecordType];
  sharedRecordType = [(ICUserSpecificRecordIDParser *)v15 sharedRecordType];
  v18 = [cloudObjectClassesByRecordType objectForKeyedSubscript:sharedRecordType];

  if (([v18 supportsUserSpecificRecords] & 1) == 0)
  {
    sharedRecordType3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(sharedRecordType3, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:];
    }

LABEL_12:
    v21 = 0;
    sharedRecordID2 = sharedRecordType3;
LABEL_13:

    goto LABEL_14;
  }

  sharedRecordID = [(ICUserSpecificRecordIDParser *)v15 sharedRecordID];
  sharedRecordType2 = [(ICUserSpecificRecordIDParser *)v15 sharedRecordType];
  v21 = [(ICCloudContext *)self existingCloudObjectForRecordID:sharedRecordID recordType:sharedRecordType2 accountID:iDCopy context:contextCopy];

  if (!v21 && necessaryCopy)
  {
    v22 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:];
    }

    sharedRecordID2 = [(ICUserSpecificRecordIDParser *)v15 sharedRecordID];
    sharedRecordType3 = [(ICUserSpecificRecordIDParser *)v15 sharedRecordType];
    v21 = [(ICCloudContext *)self newPlaceholderObjectForRecordID:sharedRecordID2 recordType:sharedRecordType3 accountID:iDCopy context:contextCopy];
    goto LABEL_13;
  }

LABEL_14:

  return v21;
}

- (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  recordCopy = record;
  cloudObjectClassesByRecordType = [(ICCloudContext *)self cloudObjectClassesByRecordType];
  recordType = [recordCopy recordType];
  v13 = [cloudObjectClassesByRecordType objectForKeyedSubscript:recordType];

  v14 = [v13 newCloudObjectForRecord:recordCopy accountID:dCopy context:contextCopy];
  [(ICCloudContext *)self setAssetDownloadStateOnObject:v14 withRecord:recordCopy managedObjectContext:contextCopy];

  return v14;
}

- (id)newPlaceholderObjectForRecordID:(id)d recordType:(id)type accountID:(id)iD context:(id)context
{
  contextCopy = context;
  iDCopy = iD;
  typeCopy = type;
  dCopy = d;
  cloudObjectClassesByRecordType = [(ICCloudContext *)self cloudObjectClassesByRecordType];
  v15 = [cloudObjectClassesByRecordType objectForKeyedSubscript:typeCopy];

  recordName = [dCopy recordName];

  v17 = [v15 newPlaceholderObjectForRecordName:recordName accountID:iDCopy context:contextCopy];
  return v17;
}

- (void)fetchCloudObjects:(id)objects accountID:(id)d completionHandler:(id)handler
{
  objectsCopy = objects;
  dCopy = d;
  handlerCopy = handler;
  v11 = [(ICCloudContext *)self newSessionForReason:@"FetchCloudObjects"];
  [v11 setHasCompletedInitialSync:{-[ICCloudContext hasCompletedInitialSync](self, "hasCompletedInitialSync") ^ 1}];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __64__ICCloudContext_fetchCloudObjects_accountID_completionHandler___block_invoke;
  v18 = &unk_278198A70;
  v12 = handlerCopy;
  v20 = v12;
  objc_copyWeak(&v21, &location);
  v13 = v11;
  v19 = v13;
  v14 = _Block_copy(&v15);
  [(ICCloudContext *)self fetchCloudObjects:objectsCopy forSession:v13 accountID:dCopy completionHandler:v14, v15, v16, v17, v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __64__ICCloudContext_fetchCloudObjects_accountID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained processingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__ICCloudContext_fetchCloudObjects_accountID_completionHandler___block_invoke_2;
    v8[3] = &unk_278194AD8;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)fetchCloudObjects:(id)objects forSession:(id)session accountID:(id)d completionHandler:(id)handler
{
  objectsCopy = objects;
  sessionCopy = session;
  dCopy = d;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    if ([(ICCloudContext *)self isFetchingEnabled])
    {
      v14 = [MEMORY[0x277CBE438] ic_objectIDsFromObjects:objectsCopy];
      processingQueue = [(ICCloudContext *)self processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__ICCloudContext_fetchCloudObjects_forSession_accountID_completionHandler___block_invoke;
      block[3] = &unk_278198A98;
      block[4] = self;
      v19 = v14;
      v20 = sessionCopy;
      v21 = dCopy;
      v22 = handlerCopy;
      v16 = v14;
      dispatch_async(processingQueue, block);

      goto LABEL_9;
    }

    v17 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_INFO, "Trying to fetch cloud objects, but fetching is disabled", buf, 2u);
    }
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_9:
}

void __75__ICCloudContext_fetchCloudObjects_forSession_accountID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [*(a1 + 32) backgroundContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__ICCloudContext_fetchCloudObjects_forSession_accountID_completionHandler___block_invoke_2;
  v8[3] = &unk_278194DC0;
  v9 = *(a1 + 40);
  v10 = v3;
  v11 = v2;
  v4 = v2;
  v5 = v3;
  [v5 performBlockAndWait:v8];
  v6 = *(a1 + 32);
  v7 = [v4 allObjects];
  [v6 addFetchOperationsForRecordIDs:v7 forSession:*(a1 + 48) accountID:*(a1 + 56) qualityOfService:17 operationGroupName:0 completionHandler:*(a1 + 64)];
}

void __75__ICCloudContext_fetchCloudObjects_forSession_accountID_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [ICCloudSyncingObject ic_objectsFromObjectIDs:*(a1 + 32) context:*(a1 + 40)];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) recordID];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)fetchRecordIDs:(id)ds accountID:(id)d operationGroupName:(id)name completionHandler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v14 = [(ICCloudContext *)self newSessionForReason:@"FetchRecordIDs"];
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __80__ICCloudContext_fetchRecordIDs_accountID_operationGroupName_completionHandler___block_invoke;
  v21 = &unk_278198A70;
  v15 = handlerCopy;
  v23 = v15;
  objc_copyWeak(&v24, &location);
  v16 = v14;
  v22 = v16;
  v17 = _Block_copy(&v18);
  [(ICCloudContext *)self fetchRecordIDs:dsCopy forSession:v16 accountID:dCopy operationGroupName:nameCopy completionHandler:v17, v18, v19, v20, v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __80__ICCloudContext_fetchRecordIDs_accountID_operationGroupName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained processingQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__ICCloudContext_fetchRecordIDs_accountID_operationGroupName_completionHandler___block_invoke_2;
    v8[3] = &unk_278194AD8;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)fetchRecordIDs:(id)ds forSession:(id)session accountID:(id)d operationGroupName:(id)name completionHandler:(id)handler
{
  dsCopy = ds;
  sessionCopy = session;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__ICCloudContext_fetchRecordIDs_forSession_accountID_operationGroupName_completionHandler___block_invoke;
  v23[3] = &unk_278198AC0;
  v23[4] = self;
  v24 = dsCopy;
  v25 = sessionCopy;
  v26 = dCopy;
  v27 = nameCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = nameCopy;
  v20 = dCopy;
  v21 = sessionCopy;
  v22 = dsCopy;
  dispatch_async(processingQueue, v23);
}

- (void)addFetchOperationsForRecordIDs:(id)ds forSession:(id)session accountID:(id)d qualityOfService:(int64_t)service operationGroupName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  dCopy = d;
  sessionCopy = session;
  dsCopy = ds;
  [(ICCloudContext *)self addFetchOperationsForRecordIDs:dsCopy forSession:sessionCopy accountID:dCopy qualityOfService:service operationGroupName:nameCopy shouldDownloadAssets:[(ICCloudContext *)self supportsDeferredAssetDownload]^ 1 completionHandler:handlerCopy];
}

- (void)addFetchOperationsForRecordIDs:(id)ds forSession:(id)session accountID:(id)d qualityOfService:(int64_t)service operationGroupName:(id)name shouldDownloadAssets:(BOOL)assets completionHandler:(id)handler
{
  assetsCopy = assets;
  v42 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  sessionCopy = session;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v20 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext addFetchOperationsForRecordIDs:dsCopy forSession:? accountID:? qualityOfService:? operationGroupName:? shouldDownloadAssets:? completionHandler:?];
  }

  v21 = [(ICCloudContext *)self operationsToFetchRecordIDs:dsCopy forSession:sessionCopy shouldDownloadAssets:assetsCopy qualityOfService:service operationGroupName:nameCopy accountID:dCopy];
  [(ICCloudContext *)self addOperations:v21];
  if (handlerCopy)
  {
    v31 = sessionCopy;
    v32 = dsCopy;
    v22 = MEMORY[0x277CCA8C8];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __145__ICCloudContext_addFetchOperationsForRecordIDs_forSession_accountID_qualityOfService_operationGroupName_shouldDownloadAssets_completionHandler___block_invoke;
    v37[3] = &unk_278194E38;
    v37[4] = self;
    v23 = v21;
    v38 = v23;
    v39 = handlerCopy;
    v24 = [v22 blockOperationWithBlock:v37];
    [v24 setName:@"FetchCompletion"];
    [v24 ic_setResistsCancellation:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v24 addDependency:{*(*(&v33 + 1) + 8 * v29++), v31, v32, v33}];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }

    v40 = v24;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [(ICCloudContext *)self addOperations:v30];

    sessionCopy = v31;
    dsCopy = v32;
  }
}

void __145__ICCloudContext_addFetchOperationsForRecordIDs_forSession_accountID_qualityOfService_operationGroupName_shouldDownloadAssets_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__ICCloudContext_addFetchOperationsForRecordIDs_forSession_accountID_qualityOfService_operationGroupName_shouldDownloadAssets_completionHandler___block_invoke_2;
  block[3] = &unk_278194E38;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __145__ICCloudContext_addFetchOperationsForRecordIDs_forSession_accountID_qualityOfService_operationGroupName_shouldDownloadAssets_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() errorFromOperations:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __145__ICCloudContext_addFetchOperationsForRecordIDs_forSession_accountID_qualityOfService_operationGroupName_shouldDownloadAssets_completionHandler___block_invoke_3;
  v5[3] = &unk_278195F50;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (id)operationsToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets qualityOfService:(int64_t)service operationGroupName:(id)name accountID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  sessionCopy = session;
  nameCopy = name;
  dCopy = d;
  if ([dCopy length])
  {
    array = [MEMORY[0x277CBEB18] array];
    v30 = [objc_opt_class() objectsByDatabaseScope:dsCopy];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = 0;
    v19 = [(ICCloudContext *)self containerForAccountID:dCopy];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __123__ICCloudContext_operationsToFetchRecordIDs_forSession_shouldDownloadAssets_qualityOfService_operationGroupName_accountID___block_invoke;
    v35[3] = &unk_278198AE8;
    v20 = v19;
    v36 = v20;
    selfCopy = self;
    assetsCopy = assets;
    v38 = sessionCopy;
    serviceCopy = service;
    v21 = array;
    v39 = v21;
    v40 = v43;
    [v30 enumerateKeysAndObjectsUsingBlock:v35];
    if (!nameCopy)
    {
      nameCopy = @"FetchIndividualRecords";
    }

    v22 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v22 setName:nameCopy];
    [v22 setQuantity:{objc_msgSend(dsCopy, "count")}];
    [v22 setExpectedSendSize:1];
    [v22 setExpectedReceiveSize:CKOperationGroupTransferSizeForBytes()];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v24)
    {
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v31 + 1) + 8 * i) setGroup:v22];
        }

        v24 = [v23 countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v24);
    }

    v27 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [v22 ic_loggingDescription];
      objc_claimAutoreleasedReturnValue();
      [ICCloudContext operationsToFetchRecordIDs:forSession:shouldDownloadAssets:qualityOfService:operationGroupName:accountID:];
    }

    v28 = [v23 copy];
    _Block_object_dispose(v43, 8);
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext operationsToFetchRecordIDs:forSession:shouldDownloadAssets:qualityOfService:operationGroupName:accountID:];
    }

    v28 = MEMORY[0x277CBEBF8];
  }

  return v28;
}

void __123__ICCloudContext_operationsToFetchRecordIDs_forSession_shouldDownloadAssets_qualityOfService_operationGroupName_accountID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [*(a1 + 32) databaseWithDatabaseScope:{objc_msgSend(a2, "integerValue")}];
  v6 = [*(a1 + 40) operationsToFetchRecordIDs:v5 forSession:*(a1 + 48) shouldDownloadAssets:*(a1 + 80) database:v8 qualityOfService:*(a1 + 72)];
  [*(a1 + 56) addObjectsFromArray:v6];
  v7 = [v5 count];

  *(*(*(a1 + 64) + 8) + 24) += 10240 * v7;
}

- (id)operationsToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets database:(id)database qualityOfService:(int64_t)service
{
  assetsCopy = assets;
  v39 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  sessionCopy = session;
  databaseCopy = database;
  array = [MEMORY[0x277CBEB18] array];
  v15 = [dsCopy ic_arrayByGroupingIntoArraysWithMaxCount:100];
  if ([v15 count] >= 2)
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = [dsCopy count];
      [databaseCopy databaseScope];
      v25 = CKDatabaseScopeString();
      *buf = 67109634;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      v37 = 1024;
      v38 = [v15 count];
      _os_log_debug_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEBUG, "Grouping fetch requests for %d %@ records into %d batches", buf, 0x18u);
    }
  }

  v26 = dsCopy;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(ICCloudContext *)self operationToFetchRecordIDs:*(*(&v28 + 1) + 8 * i) forSession:sessionCopy shouldDownloadAssets:assetsCopy database:databaseCopy qualityOfService:service, v26];
        [array addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  return array;
}

- (id)operationToFetchRecordIDs:(id)ds forSession:(id)session shouldDownloadAssets:(BOOL)assets database:(id)database qualityOfService:(int64_t)service
{
  assetsCopy = assets;
  v50 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  sessionCopy = session;
  databaseCopy = database;
  v11 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:dsCopy];
  [v11 setQualityOfService:service];
  v31 = v11;
  configuration = [v11 configuration];
  [configuration setDiscretionaryNetworkBehavior:0];

  [v31 setDatabase:databaseCopy];
  [v31 setIc_cloudSession:sessionCopy];
  objc_initWeak(&location, v31);
  if (service == 33 || service == 25)
  {
    [v31 setQueuePriority:8];
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [v31 ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    [ICCloudContext operationToFetchRecordIDs:forSession:shouldDownloadAssets:database:qualityOfService:];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = dsCopy;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v15)
  {
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        v19 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          ic_loggingDescription = [v18 ic_loggingDescription];
          ic_loggingDescription2 = [v31 ic_loggingDescription];
          *buf = 138412546;
          v46 = ic_loggingDescription;
          v47 = 2112;
          v48 = ic_loggingDescription2;
          _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Will fetch %@ %@", buf, 0x16u);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v15);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke;
  v38[3] = &unk_278198B10;
  v38[4] = self;
  objc_copyWeak(&v39, &location);
  [v31 setPerRecordProgressBlock:v38];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_2;
  v35[3] = &unk_278198B38;
  v35[4] = self;
  objc_copyWeak(&v37, &location);
  v22 = sessionCopy;
  v36 = v22;
  [v31 setPerRecordCompletionBlock:v35];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_3;
  v32[3] = &unk_278198B60;
  objc_copyWeak(&v34, &location);
  v32[4] = self;
  v23 = v22;
  v33 = v23;
  [v31 setFetchRecordsCompletionBlock:v32];
  [v31 setShouldFetchAssetContent:assetsCopy];
  v24 = v33;
  v25 = v31;

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&location);

  return v25;
}

void __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 fetchOperation:WeakRetained progressChangedWithRecordID:v6 progress:a3];
}

void __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v7 fetchOperation:WeakRetained recordWasFetchedWithRecordID:v9 record:v10 session:*(a1 + 40) error:v8];
}

void __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_3_cold_1(a1);
  }

  v8 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v8 fetchOperation:WeakRetained didCompleteWithRecordsByRecordID:v6 session:*(a1 + 40) error:v5];

  v10 = *(a1 + 32);
  v11 = objc_loadWeakRetained((a1 + 48));
  [v10 informCloudAnalyticsDelegateForOperationDidEnd:v11 recordsByRecordID:v6 operationError:v5];
}

- (void)fetchOperation:(id)operation progressChangedWithRecordID:(id)d progress:(double)progress
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  if (((progress * 100.0) - 1) <= 0x62)
  {
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ic_loggingDescription = [dCopy ic_loggingDescription];
      ic_loggingDescription2 = [operationCopy ic_loggingDescription];
      v12 = 138412802;
      v13 = ic_loggingDescription;
      v14 = 1024;
      v15 = (progress * 100.0);
      v16 = 2112;
      v17 = ic_loggingDescription2;
      _os_log_debug_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEBUG, "Progress fetching %@: %d%% %@", &v12, 0x1Cu);
    }
  }
}

- (void)fetchOperation:(id)operation recordWasFetchedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error
{
  operationCopy = operation;
  dCopy = d;
  recordCopy = record;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__ICCloudContext_fetchOperation_recordWasFetchedWithRecordID_record_session_error___block_invoke;
  v23[3] = &unk_278198BB0;
  v23[4] = self;
  v24 = operationCopy;
  v25 = errorCopy;
  v26 = dCopy;
  v27 = recordCopy;
  v28 = sessionCopy;
  v18 = sessionCopy;
  v19 = recordCopy;
  v20 = dCopy;
  v21 = errorCopy;
  v22 = operationCopy;
  dispatch_async(processingQueue, v23);
}

void __83__ICCloudContext_fetchOperation_recordWasFetchedWithRecordID_record_session_error___block_invoke(id *a1)
{
  v2 = [a1[4] backgroundContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__ICCloudContext_fetchOperation_recordWasFetchedWithRecordID_record_session_error___block_invoke_2;
  v9[3] = &unk_278198B88;
  v8 = *(a1 + 2);
  v3 = *(&v8 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v12 = a1[8];
  v13 = v2;
  v14 = a1[9];
  v7 = v2;
  [v7 performBlockAndWait:v9];
}

void __83__ICCloudContext_fetchOperation_recordWasFetchedWithRecordID_record_session_error___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  v4 = [v2 accountIDForDatabase:v3];

  if (*(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = [*(a1 + 64) recordType];
    v8 = [v5 existingCloudObjectForRecordID:v6 recordType:v7 accountID:v4 context:*(a1 + 72)];

    if (!v8)
    {
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v34 = [*(a1 + 56) ic_loggingDescription];
        v35 = [*(a1 + 40) ic_loggingDescription];
        v36 = *(a1 + 48);
        *buf = 138413058;
        v41 = v4;
        v42 = 2112;
        v43 = v34;
        v44 = 2112;
        v45 = v35;
        v46 = 2112;
        v47 = v36;
        _os_log_error_impl(&dword_214D51000, v9, OS_LOG_TYPE_ERROR, "Failed to find existing cloud object for fetch error in account ID %@: %@ %@: %@", buf, 0x2Au);
      }
    }

    if ([*(a1 + 48) code] == 26 || objc_msgSend(*(a1 + 48), "code") == 11)
    {
      v10 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v30 = [*(a1 + 56) ic_loggingDescription];
        v31 = [*(a1 + 40) ic_loggingDescription];
        *buf = 138412802;
        v41 = v4;
        v42 = 2112;
        v43 = v30;
        v44 = 2112;
        v45 = v31;
        _os_log_debug_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEBUG, "Tried to fetch record that doesn't exist in account ID %@: %@ %@", buf, 0x20u);
      }

      [v8 objectWasFetchedButDoesNotExistInCloud];
      if ([*(a1 + 48) code] != 26)
      {
        goto LABEL_22;
      }

      v11 = *(a1 + 32);
      v12 = [*(a1 + 56) zoneID];
      [v11 receivedZoneNotFound:v12 operation:*(a1 + 40) context:*(a1 + 72)];
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v37 = [*(a1 + 56) ic_loggingDescription];
        v38 = [*(a1 + 40) ic_loggingDescription];
        v39 = *(a1 + 48);
        *buf = 138413058;
        v41 = v4;
        v42 = 2112;
        v43 = v37;
        v44 = 2112;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        _os_log_error_impl(&dword_214D51000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch in account ID %@: %@ %@: %@", buf, 0x2Au);
      }
    }

LABEL_22:
    if (v8)
    {
      v18 = [*(a1 + 32) objectIDsToRetry];
      v19 = [v8 objectID];
      [v18 addObject:v19];
    }

    goto LABEL_28;
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v32 = [*(a1 + 64) ic_loggingDescription];
    v33 = [*(a1 + 40) ic_loggingDescription];
    *buf = 138412802;
    v41 = v4;
    v42 = 2112;
    v43 = v32;
    v44 = 2112;
    v45 = v33;
    _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "Fetched in account ID %@: %@ %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) didFetchShare:*(a1 + 64) accountID:v4 context:*(a1 + 72)];
  }

  else
  {
    v14 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:*(a1 + 56)];
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    if (v14)
    {
      v17 = [*(a1 + 32) existingCloudObjectForUserSpecificRecordID:*(a1 + 56) createPlaceholderIfNecessary:1 accountID:v4 context:*(a1 + 72)];
      [v17 didFetchUserSpecificRecord:*(a1 + 64) accountID:v4 force:{objc_msgSend(*(a1 + 32), "shouldUpdateServerRecordForObject:withRecord:", v17, *(a1 + 64))}];
      [*(a1 + 32) setAssetDownloadStateOnObject:v17 withRecord:*(a1 + 64) managedObjectContext:*(a1 + 72)];
    }

    else
    {
      v20 = [*(a1 + 64) recordType];
      v17 = [v15 existingCloudObjectForRecordID:v16 recordType:v20 accountID:v4 context:*(a1 + 72)];

      if (!v17)
      {
        v27 = [*(a1 + 32) newCloudObjectForRecord:*(a1 + 64) accountID:v4 context:*(a1 + 72)];
        [*(a1 + 32) setAssetDownloadStateOnObject:v27 withRecord:*(a1 + 64) managedObjectContext:*(a1 + 72)];

        v28 = *(a1 + 80);
        v29 = *(a1 + 56);
        v8 = [*(a1 + 64) recordType];
        [v28 fetchedRecordWasAdded:v29 type:v8];
        goto LABEL_28;
      }

      [v17 objectWasFetchedFromCloudWithRecord:*(a1 + 64) accountID:v4 force:{objc_msgSend(*(a1 + 32), "shouldUpdateServerRecordForObject:withRecord:", v17, *(a1 + 64))}];
      [*(a1 + 32) setAssetDownloadStateOnObject:v17 withRecord:*(a1 + 64) managedObjectContext:*(a1 + 72)];
      v21 = [*(a1 + 32) objectIDsToRetry];
      v22 = [v17 objectID];
      [v21 removeObject:v22];
    }
  }

  v23 = *(a1 + 80);
  v24 = *(a1 + 56);
  v8 = [*(a1 + 64) recordType];
  [v23 fetchedRecordWasChanged:v24 type:v8];
LABEL_28:

  v25 = *(a1 + 72);
  v26 = [*(a1 + 40) operationID];
  [v25 ic_saveWithLogDescription:{@"fetch records operation %@", v26}];
}

- (void)fetchOperation:(id)operation didCompleteWithRecordsByRecordID:(id)d session:(id)session error:(id)error
{
  operationCopy = operation;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke;
  v16[3] = &unk_278195AC8;
  v17 = sessionCopy;
  v18 = operationCopy;
  v19 = errorCopy;
  selfCopy = self;
  v13 = errorCopy;
  v14 = operationCopy;
  v15 = sessionCopy;
  dispatch_async(processingQueue, v16);
}

void __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = a1 + 40;
  v4 = [*(a1 + 40) metrics];
  [v2 operationEndedForPhase:2 metrics:v4 error:*(a1 + 48)];

  v5 = *(a1 + 48);
  v6 = os_log_create("com.apple.notes", "Cloud");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke_cold_1();
    }

    [*(a1 + 56) startRetryTimerIfNecessaryWithError:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke_cold_2(v3);
    }
  }
}

- (void)didFetchShare:(id)share accountID:(id)d context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  dCopy = d;
  contextCopy = context;
  rootRecordID = [shareCopy rootRecordID];
  if (!rootRecordID)
  {
    v12 = [shareCopy objectForKeyedSubscript:@"RootRecord"];
    rootRecordID = [v12 recordID];
  }

  v13 = [shareCopy objectForKeyedSubscript:@"RootRecordType"];
  if (v13)
  {
    if (rootRecordID)
    {
LABEL_5:
      v14 = [(ICCloudContext *)self existingCloudObjectForRecordID:rootRecordID recordType:v13 accountID:dCopy context:contextCopy];
      v15 = os_log_create("com.apple.notes", "Cloud");
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudContext didFetchShare:shareCopy accountID:v14 context:v16];
        }

        [v14 setServerShareIfNewer:shareCopy];
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          recordID = [shareCopy recordID];
          ic_loggingDescription = [recordID ic_loggingDescription];
          v23 = 138412290;
          v24 = ic_loggingDescription;
          _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Received share for unknown object: %@", &v23, 0xCu);
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext didFetchShare:accountID:context:];
    }

    if (rootRecordID)
    {
      goto LABEL_5;
    }
  }

  v14 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    recordID2 = [shareCopy recordID];
    ic_loggingDescription2 = [recordID2 ic_loggingDescription];
    v23 = 138412290;
    v24 = ic_loggingDescription2;
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Received a share with no root record ID: %@", &v23, 0xCu);
  }

LABEL_18:
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  [cloudContextDelegate cloudContext:self didFetchShare:shareCopy accountID:dCopy];
}

- (void)pushCloudObjects:(id)objects operationGroupName:(id)name completionHandler:(id)handler
{
  objectsCopy = objects;
  nameCopy = name;
  handlerCopy = handler;
  v11 = [ICCloudContext objectsByAccount:objectsCopy];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__48;
  v31[4] = __Block_byref_object_dispose__48;
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v12 = [(ICCloudContext *)self newSessionForReason:@"PushCloudObjects"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke;
  aBlock[3] = &unk_278198BD8;
  v13 = handlerCopy;
  v29 = v13;
  aBlock[4] = self;
  v14 = v12;
  v28 = v14;
  v15 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_3;
  v20[3] = &unk_278198C28;
  v20[4] = self;
  v16 = v14;
  v21 = v16;
  v17 = nameCopy;
  v22 = v17;
  v25 = v31;
  v18 = v11;
  v23 = v18;
  v26 = v30;
  v19 = v15;
  v24 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:v20];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
}

void __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_2;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v23 = 0;
  v24 = 0;
  [v6 _filterCloudSyncingObjects:a3 accountID:v5 objectsToSave:&v24 objectsToDelete:&v23 objectsToDeleteShares:0 objectsToSaveUserSpecificRecord:0];
  v7 = v24;
  v8 = v23;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_4;
  v19[3] = &unk_278198C00;
  v20 = v5;
  v11 = *(a1 + 48);
  v17 = *(a1 + 72);
  v12 = *(a1 + 56);
  *&v13 = v17;
  *(&v13 + 1) = *(a1 + 80);
  v18 = v13;
  v14 = *(a1 + 64);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  v21 = v15;
  v22 = v18;
  v16 = v5;
  [v9 addModifyRecordsOperationsWithCloudObjectsToSave:v7 delete:v8 accountID:v16 forSession:v10 operationGroupName:v11 waitForDependencies:0 completionHandler:v19];
}

void __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_4_cold_1();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  ++*(*(*(a1 + 64) + 8) + 24);
  objc_sync_exit(v6);

  v7 = *(*(*(a1 + 64) + 8) + 24);
  if (v7 >= [*(a1 + 40) count])
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)deleteSharesForObjects:(id)objects completionHandler:(id)handler
{
  objectsCopy = objects;
  handlerCopy = handler;
  v8 = [ICCloudContext objectsByAccount:objectsCopy];
  if ([v8 count])
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__48;
    v24[4] = __Block_byref_object_dispose__48;
    v25 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v9 = [(ICCloudContext *)self newSessionForReason:@"DeleteSharesForObjects"];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke;
    aBlock[3] = &unk_278198BD8;
    v22 = handlerCopy;
    aBlock[4] = self;
    v10 = v9;
    v21 = v10;
    v11 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_3;
    v14[3] = &unk_278198C50;
    v14[4] = self;
    v12 = v10;
    v15 = v12;
    v18 = v24;
    v16 = v8;
    v19 = v23;
    v13 = v11;
    v17 = v13;
    [v16 enumerateKeysAndObjectsUsingBlock:v14];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v24, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_2;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_4;
  v15[3] = &unk_278198C00;
  v16 = v5;
  v13 = *(a1 + 64);
  v8 = *(a1 + 48);
  *&v9 = v13;
  *(&v9 + 1) = *(a1 + 72);
  v14 = v9;
  v10 = *(a1 + 56);
  *&v11 = v8;
  *(&v11 + 1) = v10;
  v17 = v11;
  v18 = v14;
  v12 = v5;
  [v6 deleteSharesForObjects:a3 forSession:v7 accountID:v12 completionHandler:v15];
}

void __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_4_cold_1();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  ++*(*(*(a1 + 64) + 8) + 24);
  objc_sync_exit(v6);

  v7 = *(*(*(a1 + 64) + 8) + 24);
  if (v7 >= [*(a1 + 40) count])
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)deleteSharesForObjects:(id)objects forSession:(id)session accountID:(id)d completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  sessionCopy = session;
  dCopy = d;
  handlerCopy = handler;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = objectsCopy;
  v15 = [v14 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v15)
  {
    v16 = *v52;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        if ([v18 isSharedRootObject])
        {
          [v12 addObject:v18];
          objectID = [v18 objectID];
          [v13 addObject:objectID];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v15);
  }

  if ([v12 count] && objc_msgSend(MEMORY[0x277D36280], "isInternetReachable"))
  {
    v20 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext deleteSharesForObjects:forSession:accountID:completionHandler:];
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke;
    v49[3] = &unk_278198C78;
    v21 = dCopy;
    v50 = v21;
    [v12 enumerateObjectsUsingBlock:v49];
    LOBYTE(v32) = 0;
    v22 = [(ICCloudContext *)self operationsToModifyRecordsForCloudObjectsToSave:0 delete:0 deleteShares:v12 saveUserSpecificRecords:0 forSession:sessionCopy operationGroupName:@"DeleteShares" addDependencies:v32 accountID:v21];
    [(ICCloudContext *)self addOperations:v22];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_283;
    aBlock[3] = &unk_278198CE8;
    objc_copyWeak(&v47, &location);
    v46 = handlerCopy;
    v44 = v13;
    v45 = v21;
    v23 = _Block_copy(aBlock);
    v24 = MEMORY[0x277CCA8C8];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_6;
    v40[3] = &unk_278194E38;
    v40[4] = self;
    v25 = v22;
    v41 = v25;
    v33 = v23;
    v42 = v33;
    v26 = [v24 blockOperationWithBlock:v40];
    [v26 setName:@"deleteSharesForObjectsFetchAndCompletion"];
    [v26 ic_setResistsCancellation:1];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v56 count:16];
    if (v28)
    {
      v29 = *v37;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [v26 addDependency:*(*(&v36 + 1) + 8 * j)];
        }

        v28 = [v27 countByEnumeratingWithState:&v36 objects:v56 count:16];
      }

      while (v28);
    }

    v55 = v26;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    [(ICCloudContext *)self addOperations:v31];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_cold_1(a1, v3);
  }
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_283(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 56));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 backgroundContext];

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_2;
    v19[3] = &unk_278194DC0;
    v20 = *(a1 + 32);
    v8 = v6;
    v21 = v8;
    v9 = v7;
    v22 = v9;
    [v8 performBlockAndWait:v19];
    v10 = objc_loadWeakRetained(&to);
    v11 = [v9 allObjects];
    v12 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_3;
    v14[3] = &unk_278198CC0;
    objc_copyWeak(&v18, &to);
    v15 = *(a1 + 32);
    v16 = v3;
    v17 = *(a1 + 48);
    [v10 fetchRecordZoneChangesForZoneIDs:v11 accountID:v12 reason:@"SyncAfterDeleteShare" completionHandler:v14];

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }

  objc_destroyWeak(&to);
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [ICCloudSyncingObject ic_objectsFromObjectIDs:*(a1 + 32) context:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 48);
        v8 = [*(*(&v10 + 1) + 8 * v6) recordID];
        v9 = [v8 zoneID];
        [v7 addObject:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) ic_save];
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained backgroundContext];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_4;
  v12[3] = &unk_2781961E0;
  v13 = *(a1 + 32);
  v6 = v5;
  v14 = v6;
  v15 = &v16;
  [v6 performBlockAndWait:v12];
  if (*(v17 + 24) == 1 && ([MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D36110] code:213 userInfo:0], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = v8;
  }

  else
  {
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *(a1 + 40);
    }

    v9 = v10;
    v8 = 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }

  _Block_object_dispose(&v16, 8);
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_4(void *a1)
{
  v2 = [ICCloudSyncingObject ic_objectsFromObjectIDs:a1[4] context:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 ic_containsObjectPassingTest:&__block_literal_global_289];
}

BOOL __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 serverShare];
  v3 = v2 != 0;

  return v3;
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_7;
  block[3] = &unk_278194E38;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [objc_opt_class() errorFromOperations:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)addModifyRecordsOperationsWithCloudObjectsToSave:(id)save delete:(id)delete accountID:(id)d forSession:(id)session operationGroupName:(id)name waitForDependencies:(BOOL)dependencies completionHandler:(id)handler
{
  saveCopy = save;
  deleteCopy = delete;
  dCopy = d;
  sessionCopy = session;
  nameCopy = name;
  handlerCopy = handler;
  if ([saveCopy count] || objc_msgSend(deleteCopy, "count"))
  {
    dependenciesCopy = dependencies;
    [MEMORY[0x277CBE438] ic_objectIDsFromObjects:saveCopy];
    v22 = v29 = saveCopy;
    v23 = [MEMORY[0x277CBE438] ic_objectIDsFromObjects:deleteCopy];
    [(ICCloudContext *)self processingQueue];
    v25 = v24 = deleteCopy;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __152__ICCloudContext_addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke;
    block[3] = &unk_278198D38;
    block[4] = self;
    v31 = v22;
    v32 = v23;
    v33 = dCopy;
    v34 = sessionCopy;
    v35 = nameCopy;
    v37 = dependenciesCopy;
    v36 = handlerCopy;
    v26 = v23;
    v27 = v22;
    saveCopy = v29;
    v28 = v27;
    dispatch_async(v25, block);

    deleteCopy = v24;
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __152__ICCloudContext_addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __152__ICCloudContext_addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke_2;
  v6[3] = &unk_278198D10;
  v7 = *(a1 + 40);
  v8 = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = *(a1 + 88);
  v14 = *(a1 + 80);
  v5 = v2;
  [v5 performBlockAndWait:v6];
}

void __152__ICCloudContext_addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = [ICCloudSyncingObject ic_objectsFromObjectIDs:*(a1 + 32) context:*(a1 + 40)];
  v2 = [ICCloudSyncingObject ic_objectsFromObjectIDs:*(a1 + 48) context:*(a1 + 40)];
  [*(a1 + 56) _addModifyRecordsOperationsWithCloudObjectsToSave:v3 delete:v2 accountID:*(a1 + 64) forSession:*(a1 + 72) operationGroupName:*(a1 + 80) waitForDependencies:*(a1 + 96) completionHandler:*(a1 + 88)];
}

- (void)_addModifyRecordsOperationsWithCloudObjectsToSave:(id)save delete:(id)delete accountID:(id)d forSession:(id)session operationGroupName:(id)name waitForDependencies:(BOOL)dependencies completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  LOBYTE(v27) = dependencies;
  v17 = [(ICCloudContext *)self operationsToModifyRecordsForCloudObjectsToSave:save delete:delete deleteShares:0 saveUserSpecificRecords:0 forSession:session operationGroupName:name addDependencies:v27 accountID:d];
  [(ICCloudContext *)self addOperations:v17];
  if (handlerCopy)
  {
    v18 = MEMORY[0x277CCA8C8];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __153__ICCloudContext__addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke;
    v32[3] = &unk_278194E38;
    v32[4] = self;
    v19 = v17;
    v33 = v19;
    v34 = handlerCopy;
    v20 = [v18 blockOperationWithBlock:v32];
    [v20 setName:@"ModifyCompletion"];
    [v20 ic_setResistsCancellation:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        v25 = 0;
        do
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 addDependency:*(*(&v28 + 1) + 8 * v25++)];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v23);
    }

    v35 = v20;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [(ICCloudContext *)self addOperations:v26];
  }
}

void __153__ICCloudContext__addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __153__ICCloudContext__addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke_2;
  block[3] = &unk_278194E38;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __153__ICCloudContext__addModifyRecordsOperationsWithCloudObjectsToSave_delete_accountID_forSession_operationGroupName_waitForDependencies_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() errorFromOperations:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (id)operationsToModifyRecordsForCloudObjectsToSave:(id)save delete:(id)delete deleteShares:(id)shares saveUserSpecificRecords:(id)records forSession:(id)session operationGroupName:(id)name addDependencies:(BOOL)dependencies accountID:(id)self0
{
  v128 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  sharesCopy = shares;
  recordsCopy = records;
  sessionCopy = session;
  nameCopy = name;
  dCopy = d;
  v74 = saveCopy;
  if (dCopy)
  {
    if ([saveCopy count])
    {
      v16 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:];
      }
    }

    if ([deleteCopy count])
    {
      v17 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:];
      }
    }

    if ([sharesCopy count])
    {
      v18 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:];
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v19 = saveCopy;
    v20 = [v19 countByEnumeratingWithState:&v115 objects:v127 count:16];
    if (v20)
    {
      v21 = *v116;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v116 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v115 + 1) + 8 * i);
          recordID = [v23 recordID];
          if (recordID)
          {
            [dictionary setObject:v23 forKeyedSubscript:recordID];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v115 objects:v127 count:16];
      }

      while (v20);
    }

    v25 = nameCopy;
    if (!nameCopy)
    {
      v25 = @"ModifyRecords";
    }

    nameCopy = v25;
    v84 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v84 setName:nameCopy];
    [v84 setQuantity:{objc_msgSend(deleteCopy, "count") + objc_msgSend(v19, "count") + objc_msgSend(sharesCopy, "count")}];
    [v84 setExpectedReceiveSize:1];
    array = [MEMORY[0x277CBEB18] array];
    v26 = [objc_opt_class() deduplicatedRecordsForCloudObjects:v19];
    v79 = [v26 mutableCopy];

    v27 = [objc_opt_class() deduplicatedRecordsForCloudObjects:deleteCopy];
    v87 = [v27 mutableCopy];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v28 = sharesCopy;
    v29 = [v28 countByEnumeratingWithState:&v111 objects:v126 count:16];
    if (v29)
    {
      v30 = *v112;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v112 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v111 + 1) + 8 * j);
          serverShare = [v32 serverShare];
          if (serverShare)
          {
            [v87 addObject:serverShare];
            recordID2 = [v32 recordID];
            if (recordID2)
            {
              recordID3 = [v32 recordID];
              recordID4 = [serverShare recordID];
              [dictionary2 setObject:recordID3 forKeyedSubscript:recordID4];
            }

            else
            {
              recordID4 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(recordID4, OS_LOG_TYPE_DEFAULT))
              {
                shortLoggingDescription = [v32 shortLoggingDescription];
                *buf = 138412546;
                *&buf[4] = shortLoggingDescription;
                *&buf[12] = 2112;
                *&buf[14] = dCopy;
                _os_log_impl(&dword_214D51000, recordID4, OS_LOG_TYPE_DEFAULT, "No root record ID when trying to delete share for %@ for account ID %@", buf, 0x16u);
              }

              recordID3 = recordID4;
            }
          }

          else
          {
            recordID3 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
            {
              serverRecord = [v32 serverRecord];
              ic_loggingDescription = [serverRecord ic_loggingDescription];
              *buf = 138412546;
              *&buf[4] = ic_loggingDescription;
              *&buf[12] = 2112;
              *&buf[14] = dCopy;
              _os_log_error_impl(&dword_214D51000, recordID3, OS_LOG_TYPE_ERROR, "Record to delete share from doesn't have a server share %@ for account ID %@", buf, 0x16u);
            }

            recordID2 = recordID3;
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v111 objects:v126 count:16];
      }

      while (v29);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v40 = recordsCopy;
    v41 = [v40 countByEnumeratingWithState:&v107 objects:v125 count:16];
    if (v41)
    {
      v42 = *v108;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v108 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v44 = [*(*(&v107 + 1) + 8 * k) makeUserSpecificCloudKitRecordForApproach:0];
          if (v44)
          {
            [v79 addObject:v44];
          }
        }

        v41 = [v40 countByEnumeratingWithState:&v107 objects:v125 count:16];
      }

      while (v41);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v45 = deleteCopy;
    v46 = [v45 countByEnumeratingWithState:&v103 objects:v124 count:16];
    if (v46)
    {
      v47 = *v104;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v104 != v47)
          {
            objc_enumerationMutation(v45);
          }

          userSpecificServerRecord = [*(*(&v103 + 1) + 8 * m) userSpecificServerRecord];
          [v87 ic_addNonNilObject:userSpecificServerRecord];
        }

        v46 = [v45 countByEnumeratingWithState:&v103 objects:v124 count:16];
      }

      while (v46);
    }

    v81 = [objc_opt_class() objectsByDatabaseScope:v79];
    v50 = [objc_opt_class() objectsByDatabaseScope:v87];
    v51 = [(ICCloudContext *)self containerForAccountID:dCopy];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v52 = [&unk_282748090 countByEnumeratingWithState:&v99 objects:v123 count:16];
    if (v52)
    {
      v53 = *v100;
      do
      {
        for (n = 0; n != v52; ++n)
        {
          if (*v100 != v53)
          {
            objc_enumerationMutation(&unk_282748090);
          }

          v55 = *(*(&v99 + 1) + 8 * n);
          v56 = [v51 databaseWithDatabaseScope:{objc_msgSend(v55, "integerValue")}];
          v57 = [v81 objectForKeyedSubscript:v55];
          v58 = [v50 objectForKeyedSubscript:v55];
          v59 = [(ICCloudContext *)self operationsToModifyRecordsToSave:v57 delete:v58 forSession:sessionCopy rootRecordIDsByShareID:dictionary2 database:v56];
          [array addObjectsFromArray:v59];
        }

        v52 = [&unk_282748090 countByEnumeratingWithState:&v99 objects:v123 count:16];
      }

      while (v52);
    }

    v60 = [(ICCloudContext *)self operationToSaveZonesIfNecessaryForAccountID:dCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v122 = 0;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __165__ICCloudContext_operationsToModifyRecordsForCloudObjectsToSave_delete_deleteShares_saveUserSpecificRecords_forSession_operationGroupName_addDependencies_accountID___block_invoke;
    v92[3] = &unk_278198D60;
    v61 = dictionary;
    v97 = buf;
    dependenciesCopy = dependencies;
    v93 = v61;
    selfCopy = self;
    v62 = v60;
    v95 = v62;
    v63 = array;
    v96 = v63;
    [v63 enumerateObjectsUsingBlock:v92];
    [v84 setExpectedSendSize:CKOperationGroupTransferSizeForBytes()];
    if (v62)
    {
      [v62 setIc_cloudSession:sessionCopy];
      [v63 addObject:v62];
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v64 = v63;
    v65 = [v64 countByEnumeratingWithState:&v88 objects:v120 count:16];
    if (v65)
    {
      v66 = *v89;
      do
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (*v89 != v66)
          {
            objc_enumerationMutation(v64);
          }

          [*(*(&v88 + 1) + 8 * ii) setGroup:v84];
        }

        v65 = [v64 countByEnumeratingWithState:&v88 objects:v120 count:16];
      }

      while (v65);
    }

    if ([v64 count] >= 2)
    {
      v68 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        -[ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:].cold.4(dCopy, v119, [v64 count], v68);
      }
    }

    v69 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      [v84 ic_loggingDescription];
      objc_claimAutoreleasedReturnValue();
      [ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:];
    }

    v70 = v96;
    v71 = v64;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v61 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:];
    }

    v71 = MEMORY[0x277CBEBF8];
  }

  return v71;
}

void __165__ICCloudContext_operationsToModifyRecordsForCloudObjectsToSave_delete_deleteShares_saveUserSpecificRecords_forSession_operationGroupName_addDependencies_accountID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_class();
  v20 = v4;
  v5 = ICDynamicCast();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 recordsToSave];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = [v11 recordID];
        v14 = [v12 objectForKeyedSubscript:v13];

        [v14 objectWillBePushedToCloudWithOperation:v5];
        v15 = [v11 size];
        if (v15 > 0x100000)
        {
          v16 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v11 ic_loggingDescription];
            *buf = 134218242;
            v27 = v15;
            v28 = 2112;
            v29 = v17;
            _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Record size (%lu bytes) exceeds CloudKit limit for record: %@", buf, 0x16u);
          }

          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudContext operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:]_block_invoke" simulateCrash:1 showAlert:1 format:@"Oversized CloudKit Record"];
        }

        *(*(*(a1 + 64) + 8) + 24) += v15;
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) addDependenciesForModifyRecordsOperation:v5];
  }

  if (*(a1 + 48))
  {
    [v5 addDependency:?];
  }

  if (a3)
  {
    v18 = 0;
    do
    {
      v19 = [*(a1 + 56) objectAtIndexedSubscript:{v18, v20}];
      [v5 addDependency:v19];

      ++v18;
    }

    while (a3 != v18);
  }
}

+ (void)batchRecordsToSave:(id)save delete:(id)delete maxRecordCountPerBatch:(unint64_t)batch maxRecordSizePerBatch:(unint64_t)perBatch withBlock:(id)block
{
  v80 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  blockCopy = block;
  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v57 = [saveCopy ic_map:&__block_literal_global_309];
    v58 = [deleteCopy ic_map:&__block_literal_global_311];
    *buf = 138413058;
    *v76 = v57;
    *&v76[8] = 2112;
    *v77 = v58;
    *&v77[8] = 2048;
    *v78 = batch;
    *&v78[8] = 2048;
    perBatchCopy = perBatch;
    _os_log_debug_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEBUG, "Batching with recordsToSave:%@ recordsToDelete:%@, maxRecordCountPerBatch:%lu, maxRecordSizePerBatch:%lu", buf, 0x2Au);
  }

  v60 = saveCopy;
  v13 = [saveCopy mutableCopy];
  v59 = deleteCopy;
  v14 = [deleteCopy mutableCopy];
  v15 = 0;
  v64 = v14;
  v62 = blockCopy;
  while ([v13 count] || objc_msgSend(v14, "count"))
  {
    v63 = v15 + 1;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:batch];
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:batch];
    v18 = 0;
    while (1)
    {
      if ([v13 count])
      {
        firstObject = [v13 firstObject];
        recordType = [firstObject recordType];
        v21 = [recordType isEqualToString:@"Media"];

        if ([v13 count] < 2)
        {
          v22 = 0;
        }

        else
        {
          v22 = [v13 objectAtIndexedSubscript:1];
        }

        recordType2 = [v22 recordType];
        v27 = [recordType2 isEqualToString:@"Attachment"];

        v28 = [firstObject size];
        if ((v21 & v27) == 1)
        {
          v29 = v28 + v18 + [v22 size];
          v30 = [v16 count];
          v31 = v30 + [v17 count] + 2;
          v32 = v29 >= perBatch || v31 > batch;
          v33 = !v32;
          v34 = !v32 || v18 != 0;
          if (v34)
          {
            if ((v33 & 1) == 0)
            {
              v35 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v61 = v31 <= batch;
                v49 = v29 < perBatch;
                recordID = [firstObject recordID];
                recordID2 = [v22 recordID];
                *buf = 67109890;
                *v76 = v49;
                *&v76[4] = 1024;
                *&v76[6] = v61;
                *v77 = 2112;
                *&v77[2] = recordID;
                *v78 = 2112;
                *&v78[2] = recordID2;
                _os_log_debug_impl(&dword_214D51000, v35, OS_LOG_TYPE_DEBUG, "Ending batch because Media/Attachment pair does not fit isSizeOK: %d isCountOK: %d Media: %@ Attachment: %@", buf, 0x22u);
              }

              v25 = 1;
              goto LABEL_54;
            }
          }

          else
          {
            v41 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              recordID3 = [firstObject recordID];
              recordID4 = [v22 recordID];
              *buf = 138412546;
              *v76 = recordID3;
              *&v76[8] = 2112;
              *v77 = recordID4;
              _os_log_error_impl(&dword_214D51000, v41, OS_LOG_TYPE_ERROR, "Ending batch because an impossible batch was detected ICCloudContext. Media: %@ Attachment: %@", buf, 0x16u);
            }
          }

          v42 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            recordID5 = [firstObject recordID];
            recordID6 = [v22 recordID];
            *buf = 138412546;
            *v76 = recordID5;
            *&v76[8] = 2112;
            *v77 = recordID6;
            _os_log_debug_impl(&dword_214D51000, v42, OS_LOG_TYPE_DEBUG, "Adding Media/Attachment pair to batch: %@ %@", buf, 0x16u);
          }

          v25 = !v34;

          [v13 removeObjectsInRange:{0, 2}];
          v74[0] = firstObject;
          v74[1] = v22;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
          [v16 addObjectsFromArray:v43];

          v18 = v29;
LABEL_54:
          v14 = v64;
        }

        else
        {
          v36 = v28 + v18;
          if (v18 && v36 >= perBatch)
          {
            v37 = os_log_create("com.apple.notes", "Cloud");
            v14 = v64;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              [ICCloudContext batchRecordsToSave:v71 delete:firstObject maxRecordCountPerBatch:? maxRecordSizePerBatch:? withBlock:?];
            }

            v25 = 1;
          }

          else
          {
            v14 = v64;
            if (v18)
            {
              v38 = 0;
            }

            else
            {
              v38 = v36 >= perBatch;
            }

            v25 = v38;
            if (v25 == 1)
            {
              v39 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [ICCloudContext batchRecordsToSave:v73 delete:firstObject maxRecordCountPerBatch:? maxRecordSizePerBatch:? withBlock:?];
              }
            }

            v40 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              [ICCloudContext batchRecordsToSave:v72 delete:firstObject maxRecordCountPerBatch:? maxRecordSizePerBatch:? withBlock:?];
            }

            [v13 removeObjectAtIndex:0];
            [v16 addObject:firstObject];
            v18 = v36;
          }
        }

        goto LABEL_56;
      }

      if ([v14 count])
      {
        firstObject2 = [v14 firstObject];
        firstObject = [firstObject2 recordID];

        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v76 = firstObject;
          _os_log_debug_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEBUG, "Adding record to delete batch: %@", buf, 0xCu);
        }

        [v14 removeObjectAtIndex:0];
        [v17 addObject:firstObject];
        v25 = 0;
      }

      else
      {
        firstObject = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudContext batchRecordsToSave:v70 delete:? maxRecordCountPerBatch:? maxRecordSizePerBatch:? withBlock:?];
        }

        v25 = 1;
      }

LABEL_56:

      v44 = [v16 count];
      if ([v17 count] + v44 >= batch)
      {
        break;
      }

      if (v25)
      {
        goto LABEL_65;
      }
    }

    v52 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext batchRecordsToSave:v68 delete:? maxRecordCountPerBatch:? maxRecordSizePerBatch:? withBlock:?];
    }

LABEL_65:
    v53 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v56 = [v16 ic_map:&__block_literal_global_314];
      *buf = 138412546;
      *v76 = v56;
      *&v76[8] = 2112;
      *v77 = v17;
      _os_log_debug_impl(&dword_214D51000, v53, OS_LOG_TYPE_DEBUG, "Finished batch with batchRecordsToSave:%@ batchRecordIDsToDelete:%@", buf, 0x16u);
    }

    v54 = [v16 copy];
    v55 = [v17 copy];
    blockCopy = v62;
    v15 = v63;
    (*(v62 + 2))(v62, v63, v54, v55);
  }
}

- (id)operationsToModifyRecordsToSave:(id)save delete:(id)delete forSession:(id)session rootRecordIDsByShareID:(id)d database:(id)database
{
  saveCopy = save;
  deleteCopy = delete;
  sessionCopy = session;
  dCopy = d;
  databaseCopy = database;
  array = [MEMORY[0x277CBEB18] array];
  if (!saveCopy)
  {
    v18 = MEMORY[0x277CBEBF8];
    if (deleteCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    allObjects = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  v18 = [objc_opt_class() sortedRecords:saveCopy];
  if (!deleteCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [objc_opt_class() sortedRecords:deleteCopy];
  v36 = databaseCopy;
  v19 = dCopy;
  v20 = sessionCopy;
  v21 = array;
  v22 = v18;
  v23 = deleteCopy;
  v25 = v24 = saveCopy;
  reverseObjectEnumerator = [v25 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  saveCopy = v24;
  deleteCopy = v23;
  v18 = v22;
  array = v21;
  sessionCopy = v20;
  dCopy = v19;
  databaseCopy = v36;
LABEL_6:
  v28 = objc_opt_class();
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __100__ICCloudContext_operationsToModifyRecordsToSave_delete_forSession_rootRecordIDsByShareID_database___block_invoke;
  v37[3] = &unk_278198DA8;
  v37[4] = self;
  v38 = sessionCopy;
  v39 = dCopy;
  v40 = databaseCopy;
  v29 = array;
  v41 = v29;
  v30 = databaseCopy;
  v31 = dCopy;
  v32 = sessionCopy;
  [v28 batchRecordsToSave:v18 delete:allObjects maxRecordCountPerBatch:100 maxRecordSizePerBatch:0x200000 withBlock:v37];
  v33 = v41;
  v34 = v29;

  return v29;
}

void __100__ICCloudContext_operationsToModifyRecordsToSave_delete_forSession_rootRecordIDsByShareID_database___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) operationToModifyRecordsToSave:a3 delete:a4 forSession:*(a1 + 40) rootRecordIDsByShareID:*(a1 + 48) database:*(a1 + 56)];
  [*(a1 + 64) addObject:v5];
}

- (id)operationToModifyRecordsToSave:(id)save delete:(id)delete forSession:(id)session rootRecordIDsByShareID:(id)d database:(id)database
{
  v64 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  sessionCopy = session;
  dCopy = d;
  databaseCopy = database;
  v16 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext operationToModifyRecordsToSave:delete:forSession:rootRecordIDsByShareID:database:];
  }

  v17 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:saveCopy recordIDsToDelete:deleteCopy];
  [v17 setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
  discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
  configuration = [v17 configuration];
  [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

  [v17 setDatabase:databaseCopy];
  enableLongLivedOperations = [(ICCloudContext *)self enableLongLivedOperations];
  configuration2 = [v17 configuration];
  [configuration2 setLongLived:enableLongLivedOperations];

  [v17 setIc_cloudSession:sessionCopy];
  if ([(ICCloudContext *)self disableAutomaticallyRetryNetworkFailures])
  {
    configuration3 = [v17 configuration];
    [configuration3 setAutomaticallyRetryNetworkFailures:0];
  }

  v44 = databaseCopy;
  v46 = sessionCopy;
  selfCopy = self;
  v48 = deleteCopy;
  v49 = saveCopy;
  v23 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext operationToModifyRecordsToSave:v17 delete:? forSession:? rootRecordIDsByShareID:? database:?];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v24 = v17;
  recordsToSave = [v17 recordsToSave];
  v26 = [recordsToSave countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      v29 = 0;
      do
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(recordsToSave);
        }

        v30 = *(*(&v54 + 1) + 8 * v29);
        v31 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          ic_loggingDescription = [v30 ic_loggingDescription];
          ic_loggingDescription2 = [v24 ic_loggingDescription];
          *buf = 138412546;
          v60 = ic_loggingDescription;
          v61 = 2112;
          v62 = ic_loggingDescription2;
          _os_log_debug_impl(&dword_214D51000, v31, OS_LOG_TYPE_DEBUG, "Will push %@ %@", buf, 0x16u);
        }

        ++v29;
      }

      while (v27 != v29);
      v27 = [recordsToSave countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v27);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  recordIDsToDelete = [v24 recordIDsToDelete];
  v35 = [recordIDsToDelete countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      v38 = 0;
      do
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(recordIDsToDelete);
        }

        v39 = *(*(&v50 + 1) + 8 * v38);
        v40 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          ic_loggingDescription3 = [v39 ic_loggingDescription];
          ic_loggingDescription4 = [v24 ic_loggingDescription];
          *buf = 138412546;
          v60 = ic_loggingDescription3;
          v61 = 2112;
          v62 = ic_loggingDescription4;
          _os_log_debug_impl(&dword_214D51000, v40, OS_LOG_TYPE_DEBUG, "Will delete %@ %@", buf, 0x16u);
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = [recordIDsToDelete countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v36);
  }

  [(ICCloudContext *)selfCopy addCallbackBlocksToModifyRecordsOperation:v24 rootRecordIDsByShareID:dCopy session:v46];

  return v24;
}

- (void)addCallbackBlocksToModifyRecordsOperation:(id)operation rootRecordIDsByShareID:(id)d session:(id)session
{
  operationCopy = operation;
  dCopy = d;
  sessionCopy = session;
  objc_initWeak(&location, operationCopy);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke;
  v26[3] = &unk_278198DD0;
  v26[4] = self;
  objc_copyWeak(&v28, &location);
  v11 = sessionCopy;
  v27 = v11;
  [operationCopy setPerRecordSaveBlock:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_2;
  v22[3] = &unk_278198DF8;
  v22[4] = self;
  objc_copyWeak(&v25, &location);
  v12 = dCopy;
  v23 = v12;
  v13 = v11;
  v24 = v13;
  [operationCopy setPerRecordDeleteBlock:v22];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_3;
  v20[3] = &unk_278198E20;
  v15 = dictionary;
  v21 = v15;
  [operationCopy setPerRecordProgressBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_318;
  v17[3] = &unk_278198E48;
  v17[4] = self;
  objc_copyWeak(&v19, &location);
  v16 = v13;
  v18 = v16;
  [operationCopy setModifyRecordsCompletionBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v7 modifyRecordsOperation:WeakRetained recordWasSavedWithRecordID:v10 record:v9 session:*(a1 + 40) error:v8];
}

void __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v5 modifyRecordsOperation:WeakRetained recordWasDeletedWithRecordID:v7 rootRecordIDsByShareID:*(a1 + 40) session:*(a1 + 48) error:v6];
}

void __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_3(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  if (((a3 * 100.0) - 1) <= 0x61)
  {
    v7 = *(a1 + 32);
    v8 = [v5 recordID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9 || ([v9 timeIntervalSinceNow], v10 < -0.7))
    {
      v11 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_3_cold_1(v6);
      }

      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = *(a1 + 32);
      v14 = [v6 recordID];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }
  }
}

void __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_318(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v5 modifyRecordsOperation:WeakRetained forSession:*(a1 + 40) didCompleteWithError:v6];

  v8 = *(a1 + 32);
  v9 = objc_loadWeakRetained((a1 + 48));
  [v8 informCloudAnalyticsDelegateForOperationDidEnd:v9 recordsByRecordID:MEMORY[0x277CBEC10] operationError:v6];
}

- (void)modifyRecordsOperation:(id)operation recordWasSavedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error
{
  operationCopy = operation;
  dCopy = d;
  recordCopy = record;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__ICCloudContext_modifyRecordsOperation_recordWasSavedWithRecordID_record_session_error___block_invoke;
  v23[3] = &unk_278198BB0;
  v23[4] = self;
  v24 = operationCopy;
  v25 = dCopy;
  v26 = recordCopy;
  v27 = sessionCopy;
  v28 = errorCopy;
  v18 = errorCopy;
  v19 = sessionCopy;
  v20 = recordCopy;
  v21 = dCopy;
  v22 = operationCopy;
  dispatch_async(processingQueue, v23);
}

void __89__ICCloudContext_modifyRecordsOperation_recordWasSavedWithRecordID_record_session_error___block_invoke(id *a1)
{
  v2 = [a1[4] backgroundContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__ICCloudContext_modifyRecordsOperation_recordWasSavedWithRecordID_record_session_error___block_invoke_2;
  v9[3] = &unk_278198B88;
  v8 = *(a1 + 2);
  v3 = *(&v8 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v12 = a1[8];
  v13 = a1[9];
  v14 = v2;
  v7 = v2;
  [v7 performBlockAndWait:v9];
}

- (void)modifyRecordsOperation:(id)operation recordWasSavedWithRecordID:(id)d record:(id)record session:(id)session error:(id)error context:(id)context
{
  v67 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  recordCopy = record;
  sessionCopy = session;
  errorCopy = error;
  contextCopy = context;
  if (!recordCopy)
  {
    if ([errorCopy code] == 14)
    {
      userInfo = [errorCopy userInfo];
      recordCopy = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      if (!recordCopy)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"record != ((void*)0)" functionName:"-[ICCloudContext modifyRecordsOperation:recordWasSavedWithRecordID:record:session:error:context:]" simulateCrash:1 showAlert:1 format:@"Missing server record for CKErrorServerRecordChanged"];
      }
    }

    else
    {
      recordCopy = 0;
    }
  }

  database = [operationCopy database];
  v22 = [(ICCloudContext *)self accountIDForDatabase:database];

  v23 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:dCopy];
  if (!errorCopy)
  {
    v26 = os_log_create("com.apple.notes", "Cloud");
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v27)
      {
        ic_loggingDescription = [recordCopy ic_loggingDescription];
        [operationCopy ic_loggingDescription];
        v56 = operationCopy;
        v50 = v49 = sessionCopy;
        *buf = 138412802;
        v60 = v22;
        v61 = 2112;
        v62 = ic_loggingDescription;
        v63 = 2112;
        v64 = v50;
        _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "Pushed user-specific record for account ID %@: %@ %@", buf, 0x20u);

        sessionCopy = v49;
        operationCopy = v56;
      }

      recordID = [recordCopy recordID];
      v29 = [(ICCloudContext *)self existingCloudObjectForUserSpecificRecordID:recordID createPlaceholderIfNecessary:0 accountID:v22 context:contextCopy];

      LOBYTE(recordID) = [v29 isInCloud];
      [v29 didSaveUserSpecificRecord:recordCopy];

      if ((recordID & 1) == 0)
      {
LABEL_13:
        recordType = [recordCopy recordType];
        [sessionCopy recordAdditionWasPushed:dCopy type:recordType];
        goto LABEL_30;
      }
    }

    else
    {
      v54 = operationCopy;
      v58 = sessionCopy;
      if (v27)
      {
        ic_loggingDescription2 = [recordCopy ic_loggingDescription];
        ic_loggingDescription3 = [operationCopy ic_loggingDescription];
        *buf = 138412802;
        v60 = v22;
        v61 = 2112;
        v62 = ic_loggingDescription2;
        v63 = 2112;
        v64 = ic_loggingDescription3;
        _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "Pushed account ID %@: %@ %@", buf, 0x20u);
      }

      cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
      recordID2 = [recordCopy recordID];
      [cloudContextDelegate cloudContext:self didPushRecordID:recordID2 accountID:v22];

      v39 = [(ICCloudContext *)self existingCloudObjectForRecord:recordCopy accountID:v22 context:contextCopy];
      isInCloud = [v39 isInCloud];
      if (v39)
      {
        [v39 objectWasPushedToCloudWithOperation:operationCopy serverRecord:recordCopy];
        [(ICCloudContext *)self objectIDsToRetry];
        v42 = v41 = isInCloud;
        objectID = [v39 objectID];
        [v42 removeObject:objectID];

        serverRecord = [v39 serverRecord];
        cloudAccount = [v39 cloudAccount];
        isInCloud = v41;
        [ICAssetSignature mergeIncomingAssetsFromRecord:serverRecord forObject:v39 account:cloudAccount context:contextCopy];
      }

      operationCopy = v54;
      sessionCopy = v58;
      if ((isInCloud & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    recordType = [recordCopy recordType];
    [sessionCopy recordModificationWasPushed:dCopy type:recordType];
    goto LABEL_30;
  }

  v57 = sessionCopy;
  if (v23)
  {
    recordType = [(ICCloudContext *)self existingCloudObjectForUserSpecificRecordID:dCopy createPlaceholderIfNecessary:0 accountID:v22 context:contextCopy];
    v25 = [recordType didFailToSaveUserSpecificRecordWithID:dCopy accountID:v22 error:errorCopy];
  }

  else
  {
    recordType = [(ICCloudContext *)self existingCloudObjectForRecordID:dCopy recordType:0 accountID:v22 context:contextCopy];
    v25 = [recordType objectFailedToBePushedToCloudWithOperation:operationCopy recordID:dCopy error:errorCopy];
  }

  v30 = v25;
  if (!recordType)
  {
    v31 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      ic_loggingDescription4 = [dCopy ic_loggingDescription];
      ic_loggingDescription5 = [operationCopy ic_loggingDescription];
      *buf = 138413058;
      v60 = v22;
      v61 = 2112;
      v62 = ic_loggingDescription4;
      v63 = 2112;
      v64 = ic_loggingDescription5;
      v65 = 2112;
      v66 = errorCopy;
      _os_log_error_impl(&dword_214D51000, v31, OS_LOG_TYPE_ERROR, "Failed to find existing cloud object for modify error in account ID %@: %@ %@: %@", buf, 0x2Au);
    }
  }

  objectID2 = [recordType objectID];
  v33 = (objectID2 != 0) & v30;

  if (v33 == 1)
  {
    objectIDsToRetry = [(ICCloudContext *)self objectIDsToRetry];
    objectID3 = [recordType objectID];
    [objectIDsToRetry addObject:objectID3];
  }

  code = [errorCopy code];
  sessionCopy = v57;
  if (code <= 0x1F && ((1 << code) & 0xC0081400) != 0)
  {
    [recordType incrementFailureCounts];
  }

LABEL_30:

  recordID3 = [recordCopy recordID];
  recordName = [recordID3 recordName];
  [contextCopy ic_saveWithLogDescription:{@"pushing record for account ID %@: %@", v22, recordName}];
}

- (void)modifyRecordsOperation:(id)operation recordWasDeletedWithRecordID:(id)d rootRecordIDsByShareID:(id)iD session:(id)session error:(id)error
{
  operationCopy = operation;
  dCopy = d;
  iDCopy = iD;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __107__ICCloudContext_modifyRecordsOperation_recordWasDeletedWithRecordID_rootRecordIDsByShareID_session_error___block_invoke;
  v23[3] = &unk_278198BB0;
  v23[4] = self;
  v24 = operationCopy;
  v25 = dCopy;
  v26 = iDCopy;
  v27 = sessionCopy;
  v28 = errorCopy;
  v18 = errorCopy;
  v19 = sessionCopy;
  v20 = iDCopy;
  v21 = dCopy;
  v22 = operationCopy;
  dispatch_async(processingQueue, v23);
}

void __107__ICCloudContext_modifyRecordsOperation_recordWasDeletedWithRecordID_rootRecordIDsByShareID_session_error___block_invoke(id *a1)
{
  v2 = [a1[4] backgroundContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__ICCloudContext_modifyRecordsOperation_recordWasDeletedWithRecordID_rootRecordIDsByShareID_session_error___block_invoke_2;
  v9[3] = &unk_278198B88;
  v8 = *(a1 + 2);
  v3 = *(&v8 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v12 = a1[8];
  v13 = a1[9];
  v14 = v2;
  v7 = v2;
  [v7 performBlockAndWait:v9];
}

- (void)modifyRecordsOperation:(id)operation recordWasDeletedWithRecordID:(id)d rootRecordIDsByShareID:(id)iD session:(id)session error:(id)error context:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  sessionCopy = session;
  errorCopy = error;
  contextCopy = context;
  iDCopy = iD;
  database = [operationCopy database];
  v21 = [(ICCloudContext *)self accountIDForDatabase:database];

  v22 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:dCopy];
  v23 = [iDCopy objectForKeyedSubscript:dCopy];

  if (v22)
  {
    v24 = [(ICCloudContext *)self existingCloudObjectForUserSpecificRecordID:dCopy createPlaceholderIfNecessary:0 accountID:v21 context:contextCopy];
  }

  else
  {
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = dCopy;
    }

    v24 = [(ICCloudContext *)self existingCloudObjectForRecordID:v25 recordType:0 accountID:v21 context:contextCopy];
  }

  v26 = v24;
  if (v24)
  {
    if (errorCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v28 = contextCopy;
    v29 = v23;
    v30 = sessionCopy;
    v31 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      ic_loggingDescription = [dCopy ic_loggingDescription];
      ic_loggingDescription2 = [operationCopy ic_loggingDescription];
      *buf = 138413058;
      v79 = v21;
      v80 = 2112;
      v81 = ic_loggingDescription;
      v82 = 2112;
      v83 = ic_loggingDescription2;
      v84 = 2112;
      v85 = errorCopy;
      _os_log_error_impl(&dword_214D51000, v31, OS_LOG_TYPE_ERROR, "Failed to find existing cloud object for delete error in account ID %@: %@ %@: %@", buf, 0x2Au);
    }

    sessionCopy = v30;
    v23 = v29;
    contextCopy = v28;
    v26 = 0;
    if (errorCopy)
    {
LABEL_9:
      if (v22)
      {
        objectIDsToRetry = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(objectIDsToRetry, OS_LOG_TYPE_ERROR))
        {
          ic_loggingDescription3 = [dCopy ic_loggingDescription];
          *buf = 138412802;
          v79 = v21;
          v80 = 2112;
          v81 = ic_loggingDescription3;
          v82 = 2112;
          v83 = errorCopy;
          _os_log_error_impl(&dword_214D51000, objectIDsToRetry, OS_LOG_TYPE_ERROR, "Error deleting user-specific record in account ID %@: %@: %@", buf, 0x20u);
        }

LABEL_13:
        goto LABEL_49;
      }

      v77 = sessionCopy;
      code = [errorCopy code];
      v36 = os_log_create("com.apple.notes", "Cloud");
      v37 = v36;
      if (v23)
      {
        if (code == 26)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            ic_loggingDescription4 = [dCopy ic_loggingDescription];
            shortLoggingDescription = [v26 shortLoggingDescription];
            ic_loggingDescription5 = [operationCopy ic_loggingDescription];
            *buf = 138413058;
            v79 = v21;
            v80 = 2112;
            v81 = ic_loggingDescription4;
            v82 = 2112;
            v83 = shortLoggingDescription;
            v84 = 2112;
            v85 = ic_loggingDescription5;
            v57 = ic_loggingDescription5;
            _os_log_debug_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEBUG, "Zone not found deleting share in account ID %@: %@ for %@ %@", buf, 0x2Au);
          }

          [v26 setServerShare:0];
          zoneID = [dCopy zoneID];
          [(ICCloudContext *)self receivedZoneNotFound:zoneID operation:operationCopy context:contextCopy];
        }

        else if (code == 11)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            ic_loggingDescription6 = [dCopy ic_loggingDescription];
            shortLoggingDescription2 = [v26 shortLoggingDescription];
            ic_loggingDescription7 = [operationCopy ic_loggingDescription];
            *buf = 138413058;
            v79 = v21;
            v80 = 2112;
            v81 = ic_loggingDescription6;
            v82 = 2112;
            v83 = shortLoggingDescription2;
            v84 = 2112;
            v85 = ic_loggingDescription7;
            v55 = ic_loggingDescription7;
            _os_log_debug_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEBUG, "Unknown item deleting share in account ID %@: %@ for %@ %@", buf, 0x2Au);
          }

          [v26 setServerShare:0];
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            ic_loggingDescription8 = [dCopy ic_loggingDescription];
            shortLoggingDescription3 = [v26 shortLoggingDescription];
            ic_loggingDescription9 = [operationCopy ic_loggingDescription];
            *buf = 138413314;
            v79 = v21;
            v80 = 2112;
            v81 = ic_loggingDescription8;
            v82 = 2112;
            v83 = shortLoggingDescription3;
            v84 = 2112;
            v85 = ic_loggingDescription9;
            v60 = ic_loggingDescription9;
            v86 = 2112;
            v87 = errorCopy;
            _os_log_error_impl(&dword_214D51000, v37, OS_LOG_TYPE_ERROR, "Error deleting share in account ID %@: %@ for %@ %@: %@", buf, 0x34u);
          }
        }

        sessionCopy = v77;
        goto LABEL_49;
      }

      switch(code)
      {
        case 31:
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            ic_loggingDescription10 = [dCopy ic_loggingDescription];
            ic_loggingDescription11 = [operationCopy ic_loggingDescription];
            *buf = 138412802;
            v79 = v21;
            v80 = 2112;
            v81 = ic_loggingDescription10;
            v82 = 2112;
            v83 = ic_loggingDescription11;
            v62 = ic_loggingDescription11;
            _os_log_error_impl(&dword_214D51000, v37, OS_LOG_TYPE_ERROR, "Reference violation in account ID %@: for %@ %@", buf, 0x20u);
          }

          [v26 fixBrokenReferencesWithError:errorCopy];
          [v26 incrementFailureCounts];
          goto LABEL_57;
        case 22:
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_56;
          }

          ic_loggingDescription12 = [dCopy ic_loggingDescription];
          ic_loggingDescription13 = [operationCopy ic_loggingDescription];
          *buf = 138412802;
          v79 = v21;
          v80 = 2112;
          v81 = ic_loggingDescription12;
          v82 = 2112;
          v83 = ic_loggingDescription13;
          v44 = ic_loggingDescription13;
          _os_log_debug_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEBUG, "Batch request failed for deleting in account ID %@: %@ %@", buf, 0x20u);
          break;
        case 11:
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            ic_loggingDescription14 = [dCopy ic_loggingDescription];
            ic_loggingDescription15 = [operationCopy ic_loggingDescription];
            *buf = 138412802;
            v79 = v21;
            v80 = 2112;
            v81 = ic_loggingDescription14;
            v82 = 2112;
            v83 = ic_loggingDescription15;
            v64 = ic_loggingDescription15;
            _os_log_debug_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEBUG, "No record on server to delete in account ID %@: %@ %@", buf, 0x20u);
          }

          [v26 objectWasDeletedFromCloud];
          goto LABEL_57;
        default:
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
LABEL_56:

LABEL_57:
            sessionCopy = v77;
            if (!v26)
            {
              goto LABEL_49;
            }

            objectIDsToRetry = [(ICCloudContext *)self objectIDsToRetry];
            objectID = [v26 objectID];
            [objectIDsToRetry addObject:objectID];

            goto LABEL_13;
          }

          ic_loggingDescription12 = [dCopy ic_loggingDescription];
          ic_loggingDescription16 = [operationCopy ic_loggingDescription];
          *buf = 138413058;
          v79 = v21;
          v80 = 2112;
          v81 = ic_loggingDescription12;
          v82 = 2112;
          v83 = ic_loggingDescription16;
          v44 = ic_loggingDescription16;
          v84 = 2112;
          v85 = errorCopy;
          _os_log_error_impl(&dword_214D51000, v37, OS_LOG_TYPE_ERROR, "Error deleting record in account ID %@: %@ %@: %@", buf, 0x2Au);
          break;
      }

      goto LABEL_56;
    }
  }

  v76 = operationCopy;
  v32 = sessionCopy;
  v33 = os_log_create("com.apple.notes", "Cloud");
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (v22)
  {
    if (v34)
    {
      ic_loggingDescription17 = [dCopy ic_loggingDescription];
      ic_loggingDescription18 = [v76 ic_loggingDescription];
      *buf = 138412802;
      v79 = v21;
      v80 = 2112;
      v81 = ic_loggingDescription17;
      v82 = 2112;
      v83 = ic_loggingDescription18;
      _os_log_debug_impl(&dword_214D51000, v33, OS_LOG_TYPE_DEBUG, "Deleted user-specific record in account ID %@: %@ %@", buf, 0x20u);
    }

    [v26 didDeleteUserSpecificRecordID:dCopy];
  }

  else if (v23)
  {
    if (v34)
    {
      ic_loggingDescription19 = [dCopy ic_loggingDescription];
      ic_loggingDescription20 = [v76 ic_loggingDescription];
      *buf = 138412802;
      v79 = v21;
      v80 = 2112;
      v81 = ic_loggingDescription19;
      v82 = 2112;
      v83 = ic_loggingDescription20;
      _os_log_debug_impl(&dword_214D51000, v33, OS_LOG_TYPE_DEBUG, "Deleted share in account ID %@: %@ %@", buf, 0x20u);
    }

    [v26 setServerShare:0];
  }

  else
  {
    if (v34)
    {
      ic_loggingDescription21 = [dCopy ic_loggingDescription];
      ic_loggingDescription22 = [v76 ic_loggingDescription];
      *buf = 138412802;
      v79 = v21;
      v80 = 2112;
      v81 = ic_loggingDescription21;
      v82 = 2112;
      v83 = ic_loggingDescription22;
      v52 = ic_loggingDescription22;
      _os_log_debug_impl(&dword_214D51000, v33, OS_LOG_TYPE_DEBUG, "Deleted record in account ID %@: %@ %@", buf, 0x20u);
    }

    [v26 objectWasDeletedFromCloud];
    objectID2 = [v26 objectID];

    if (objectID2)
    {
      objectIDsToRetry2 = [(ICCloudContext *)self objectIDsToRetry];
      objectID3 = [v26 objectID];
      [objectIDsToRetry2 removeObject:objectID3];
    }
  }

  recordType = [v26 recordType];
  sessionCopy = v32;
  [v32 recordDeletionWasPushed:dCopy type:recordType];

  operationCopy = v76;
LABEL_49:
  [contextCopy ic_saveWithLogDescription:@"finished modify operation"];
}

- (void)modifyRecordsOperation:(id)operation forSession:(id)session didCompleteWithError:(id)error
{
  operationCopy = operation;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke;
  v15[3] = &unk_278195AC8;
  v15[4] = self;
  v16 = operationCopy;
  v17 = errorCopy;
  v18 = sessionCopy;
  v12 = sessionCopy;
  v13 = errorCopy;
  v14 = operationCopy;
  dispatch_async(processingQueue, v15);
}

void __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = (a1 + 48);
  [v2 incrementOrClearRetryCountForOperationType:v5 error:*(a1 + 48)];

  if (!*(a1 + 48))
  {
    goto LABEL_25;
  }

  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*v3 ic_loggingDescription];
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Error modifying records, canceling dependent operations: %@", buf, 0xCu);
  }

  v9 = [*(a1 + 32) operationQueue];
  v10 = [v9 iterativelyCancelDependentOperations:*(a1 + 40)];

  v11 = [*(a1 + 48) code];
  if ((v11 - 3) < 2)
  {
    goto LABEL_7;
  }

  if (v11 == 2)
  {
    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v3 ic_loggingDescription];
      v17 = *v6;
      *buf = 138412546;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEFAULT, "Partial error for modify operation %@: %@", buf, 0x16u);
    }

    [*(a1 + 32) handleGenericPartialFailuresForError:*(a1 + 48) operation:*(a1 + 40)];
    goto LABEL_15;
  }

  if (v11 == 20)
  {
LABEL_7:
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*v3 ic_loggingDescription];
      v14 = *v6;
      *buf = 138412546;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Error modifying records %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke_cold_1();
    }
  }

LABEL_15:
  if ([*v6 code] != 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [*v3 recordsToSave];
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          v24 = *(a1 + 32);
          v25 = *(a1 + 40);
          v26 = [v23 recordID];
          [v24 modifyRecordsOperation:v25 recordWasSavedWithRecordID:v26 record:v23 session:*(a1 + 56) error:*(a1 + 48)];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }
  }

  [*(a1 + 32) startRetryTimerIfNecessaryWithError:*(a1 + 48)];
LABEL_25:
  v27 = *(a1 + 56);
  v28 = [*(a1 + 40) metrics];
  [v27 operationEndedForPhase:3 metrics:v28 error:*(a1 + 48)];

  v29 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke_cold_2(v3);
  }
}

- (void)handleGenericPartialFailuresForError:(id)error operation:(id)operation
{
  v63 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationCopy = operation;
  database = [operationCopy database];
  v8 = [(ICCloudContext *)self accountIDForDatabase:database];

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__48;
  v51 = __Block_byref_object_dispose__48;
  v52 = 0;
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  userInfo = [errorCopy userInfo];
  v29 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __65__ICCloudContext_handleGenericPartialFailuresForError_operation___block_invoke;
  v42[3] = &unk_278198E70;
  v45 = &v53;
  v46 = &v47;
  v12 = v9;
  v43 = v12;
  v13 = v10;
  v44 = v13;
  [v29 enumerateKeysAndObjectsUsingBlock:v42];
  if (*(v54 + 24) == 1)
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v8;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "User exceeded iCloud quota in account ID %@", buf, 0xCu);
    }

    cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
    [cloudContextDelegate cloudContext:self didExceedQuotaForRecordID:v48[5] accountID:v8];
  }

  backgroundContext = [(ICCloudContext *)self backgroundContext];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v38 objects:v62 count:16];
  if (v17)
  {
    v18 = *v39;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        [(ICCloudContext *)self receivedZoneNotFound:*(*(&v38 + 1) + 8 * i) operation:operationCopy context:backgroundContext];
      }

      v17 = [obj countByEnumeratingWithState:&v38 objects:v62 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = v13;
  v20 = [v32 countByEnumeratingWithState:&v34 objects:v61 count:16];
  if (v20)
  {
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v32);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          ic_loggingDescription = [v23 ic_loggingDescription];
          *buf = 138412546;
          v58 = v8;
          v59 = 2112;
          v60 = ic_loggingDescription;
          _os_log_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEFAULT, "User deleted zone in account ID %@: %@", buf, 0x16u);
        }

        accountZoneIDsNeedingToBeSaved = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
        [accountZoneIDsNeedingToBeSaved ic_addZoneID:v23 forAccountID:v8];

        database2 = [operationCopy database];
        -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:", v23, [database2 databaseScope], v8, backgroundContext);

        cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
        [cloudContextDelegate2 cloudContext:self userDidDeleteRecordZoneWithID:v23 accountID:v8];
      }

      v20 = [v32 countByEnumeratingWithState:&v34 objects:v61 count:16];
    }

    while (v20);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
}

void __65__ICCloudContext_handleGenericPartialFailuresForError_operation___block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v13;
      v6 = [v7 zoneID];
      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = 0;
LABEL_7:
  v8 = [v5 code];
  switch(v8)
  {
    case 28:
      v12 = a1[5];
      goto LABEL_15;
    case 26:
      v12 = a1[4];
LABEL_15:
      [v12 ic_addNonNilObject:v6];
      break;
    case 25:
      *(*(a1[6] + 8) + 24) = 1;
      if (v7)
      {
        v9 = *(a1[7] + 8);
        v11 = *(v9 + 40);
        v10 = (v9 + 40);
        if (!v11)
        {
          objc_storeStrong(v10, v7);
        }
      }

      break;
  }
}

- (id)overrideAccountID
{
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    v6 = [cloudContextDelegate2 overrideAccountIDForCloudContext:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountIDForDatabase:(id)database
{
  container = [database container];
  v5 = [(ICCloudContext *)self accountIDForContainer:container];

  return v5;
}

- (id)accountIDForContainer:(id)container
{
  containerCopy = container;
  overrideAccountID = [(ICCloudContext *)self overrideAccountID];
  v6 = overrideAccountID;
  if (overrideAccountID)
  {
    accountID = overrideAccountID;
  }

  else
  {
    options = [containerCopy options];
    accountOverrideInfo = [options accountOverrideInfo];
    accountID = [accountOverrideInfo accountID];
  }

  return accountID;
}

+ (id)sortedRecords:(id)records
{
  v64 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v54 = 0;
  v4 = [MEMORY[0x277CBC5C0] topologicallySortRecords:recordsCopy withError:&v54];
  v41 = v54;
  v42 = recordsCopy;
  if (v41)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[ICCloudContext sortedRecords:];
    }

    v6 = recordsCopy;
    v4 = v6;
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v44 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count") >> 1}];
  v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count") >> 1}];
  v8 = [MEMORY[0x277CBEB58] set];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        recordID = [v13 recordID];
        v15 = [v8 containsObject:recordID];

        if (v15)
        {
          v16 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(ICCloudContext *)v62 sortedRecords:v13];
          }

          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICCloudContext sortedRecords:]" simulateCrash:1 showAlert:1 format:@"Duplicate record ID after sorting in ICCloudContext"];
        }

        else
        {
          recordID2 = [v13 recordID];
          [v8 addObject:recordID2];

          recordType = [v13 recordType];
          v19 = [recordType isEqualToString:@"Media"];

          if (v19)
          {
            v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
            [v20 setObject:v13 atIndexedSubscript:0];
            [v43 addObject:v20];
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count") - 1}];
            recordID3 = [v13 recordID];
            [v44 setObject:v21 forKeyedSubscript:recordID3];

LABEL_16:
            goto LABEL_23;
          }

          recordType2 = [v13 recordType];
          if ([recordType2 isEqualToString:@"Attachment"])
          {
            v24 = [v13 objectForKeyedSubscript:@"Media"];

            if (v24)
            {
              v20 = [v13 objectForKeyedSubscript:@"Media"];
              recordID4 = [v20 recordID];
              v21 = [v44 objectForKeyedSubscript:recordID4];

              if (v21)
              {
                v26 = [v43 objectAtIndexedSubscript:{objc_msgSend(v21, "integerValue")}];
                [v26 addObject:v13];
              }

              else
              {
                [v7 addObject:v13];
              }

              goto LABEL_16;
            }
          }

          else
          {
          }

          [v7 addObject:v13];
        }

LABEL_23:
        ++v12;
      }

      while (v10 != v12);
      v27 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
      v10 = v27;
    }

    while (v27);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v43;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v47;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v7 addObjectsFromArray:*(*(&v46 + 1) + 8 * i)];
      }

      v30 = [v28 countByEnumeratingWithState:&v46 objects:v61 count:16];
    }

    while (v30);
  }

  v33 = [v7 count];
  if (v33 != [v42 count] || (v34 = objc_msgSend(v7, "count"), v34 != objc_msgSend(obj, "count")))
  {
    v35 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "count")}];
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      *buf = 138412802;
      v56 = v38;
      v57 = 2112;
      v58 = v39;
      v59 = 2112;
      v60 = v40;
      _os_log_error_impl(&dword_214D51000, v35, OS_LOG_TYPE_ERROR, "Record counts after sorting in ICCloudContext were not equal {#unsortedRecords: %@, #topoRecords: %@, #finalRecords: %@}", buf, 0x20u);
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICCloudContext sortedRecords:]" simulateCrash:1 showAlert:1 format:@"Record counts after sorting in ICCloudContext were not equal"];
  }

  v36 = [v7 copy];

  return v36;
}

+ (id)objectsByAccount:(id)account
{
  v27 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = accountCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__48;
        v20 = __Block_byref_object_dispose__48;
        v21 = 0;
        managedObjectContext = [v8 managedObjectContext];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __35__ICCloudContext_objectsByAccount___block_invoke;
        v15[3] = &unk_278194DE8;
        v15[4] = v8;
        v15[5] = &v16;
        [managedObjectContext performBlockAndWait:v15];

        if ([v17[5] length])
        {
          array = [dictionary objectForKeyedSubscript:v17[5]];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary setObject:array forKeyedSubscript:v17[5]];
          }

          [array addObject:v8];
        }

        else
        {
          managedObjectContext2 = [v8 managedObjectContext];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __35__ICCloudContext_objectsByAccount___block_invoke_2;
          v14[3] = &unk_278194B00;
          v14[4] = v8;
          [managedObjectContext2 performBlockAndWait:v14];
        }

        _Block_object_dispose(&v16, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  return dictionary;
}

void __35__ICCloudContext_objectsByAccount___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) cloudAccount];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __35__ICCloudContext_objectsByAccount___block_invoke_2()
{
  v0 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __35__ICCloudContext_objectsByAccount___block_invoke_2_cold_1();
  }
}

+ (id)objectsByDatabaseScope:(id)scope
{
  v21 = *MEMORY[0x277D85DE8];
  scopeCopy = scope;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = scopeCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        databaseScope = [v10 databaseScope];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:databaseScope];
        array = [dictionary objectForKeyedSubscript:v12];

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:databaseScope];
          [dictionary setObject:array forKeyedSubscript:v14];
        }

        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)deduplicatedRecordsForCloudObjects:(id)objects
{
  v35 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    v11 = "com.apple.notes";
    v12 = "Cloud";
    *&v8 = 138412290;
    v26 = v8;
    do
    {
      v13 = 0;
      v27 = v9;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        recordID = [v14 recordID];
        if (recordID)
        {
          if ([v4 containsObject:recordID])
          {
            v16 = os_log_create(v11, v12);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              [recordID ic_loggingDescription];
              v17 = v10;
              v18 = v4;
              v19 = v6;
              v20 = v12;
              v21 = v11;
              v23 = v22 = v5;
              *buf = v26;
              v33 = v23;
              _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Trying to modify two instances of the same object %@", buf, 0xCu);

              v5 = v22;
              v11 = v21;
              v12 = v20;
              v6 = v19;
              v4 = v18;
              v10 = v17;
              v9 = v27;
            }
          }

          else
          {
            [v4 addObject:recordID];
            v16 = [v14 makeCloudKitRecordForApproach:0];
            [v5 addObject:v16];
          }
        }

        else
        {
          v16 = os_log_create(v11, v12);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "No record ID when trying to modify record", buf, 2u);
          }
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v24 = [v5 copy];

  return v24;
}

+ (id)allZoneIDsInAccountZoneIDs:(id)ds
{
  v3 = MEMORY[0x277CBEB18];
  dsCopy = ds;
  array = [v3 array];
  [dsCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_344_0];

  v6 = [array copy];

  return v6;
}

void __45__ICCloudContext_allZoneIDsInAccountZoneIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    v3 = [v4 allObjects];
    [v4 addObjectsFromArray:v3];
  }
}

+ (BOOL)haveZoneIDsInAccountZoneIDs:(id)ds
{
  dsCopy = ds;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ICCloudContext_haveZoneIDsInAccountZoneIDs___block_invoke;
  v6[3] = &unk_278198EB8;
  v6[4] = &v7;
  [dsCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __46__ICCloudContext_haveZoneIDsInAccountZoneIDs___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)resetZoneForCloudAccount:(id)account withReason:(id)reason
{
  v14[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if ([accountCopy accountType] == 1)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = +[ICCloudContext notesZoneID];
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

    identifier = [accountCopy identifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__ICCloudContext_resetZoneForCloudAccount_withReason___block_invoke;
    v11[3] = &unk_278197F80;
    v12 = accountCopy;
    v13 = v6;
    v10 = v6;
    [(ICCloudContext *)self deleteRecordZonesWithZoneIDs:v8 accountID:identifier markZonesAsUserPurged:1 completionHandler:v11];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ICCloudContext resetZoneForCloudAccount:withReason:];
    }
  }
}

void __54__ICCloudContext_resetZoneForCloudAccount_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __54__ICCloudContext_resetZoneForCloudAccount_withReason___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (id)errorsFromError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    allValues = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    code = [v5 code];

    if (code == 2)
    {
      userInfo = [v5 userInfo];
      v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        allValues = [v9 allValues];
      }

      else
      {
        allValues = MEMORY[0x277CBEBF8];
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  domain2 = [v5 domain];
  if (![domain2 isEqualToString:@"com.apple.notes.cloud"])
  {

    goto LABEL_19;
  }

  code2 = [v5 code];

  if (code2 != 3)
  {
LABEL_19:
    v26 = v5;
    allValues = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    goto LABEL_22;
  }

  allValues = [MEMORY[0x277CBEB18] array];
  userInfo2 = [v5 userInfo];
  v14 = [userInfo2 objectForKeyedSubscript:@"Errors"];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [self errorsFromError:{*(*(&v22 + 1) + 8 * i), v22}];
        [allValues addObjectsFromArray:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

LABEL_22:

  return allValues;
}

- (BOOL)partialError:(id)error containsErrorCode:(int64_t)code
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([errorCopy code] != 2)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"partialError.code == CKErrorPartialFailure" functionName:"-[ICCloudContext partialError:containsErrorCode:]" simulateCrash:1 showAlert:0 format:@"Called -partialFailure:containsError with a non-partialFailure."];
  }

  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
  allValues = [v7 allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allValues;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v16 + 1) + 8 * i) code] == code)
        {
          v14 = 1;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)addDependenciesForModifyRecordsOperation:(id)operation
{
  v18 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operationQueue = [(ICCloudContext *)self operationQueue];
  operations = [operationQueue operations];
  v7 = [operations copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [operationCopy addDependency:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)addOperations:(id)operations
{
  operationsCopy = operations;
  if (![(ICCloudContext *)self didEnqueueLongLivedOperations])
  {
    v4 = [operationsCopy ic_compactMap:&__block_literal_global_352];
    operationIDsBeforeEnqueuingLongLivedOperations = [(ICCloudContext *)self operationIDsBeforeEnqueuingLongLivedOperations];
    [operationIDsBeforeEnqueuingLongLivedOperations addObjectsFromArray:v4];
  }

  operationQueue = [(ICCloudContext *)self operationQueue];
  [operationQueue addOperations:operationsCopy waitUntilFinished:0];
}

id __32__ICCloudContext_addOperations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 operationID];

  return v4;
}

- (void)informCloudAnalyticsDelegateForOperationDidEnd:(id)end recordsByRecordID:(id)d operationError:(id)error
{
  errorCopy = error;
  dCopy = d;
  endCopy = end;
  cloudAnalyticsDelegate = [(ICCloudContext *)self cloudAnalyticsDelegate];
  [cloudAnalyticsDelegate cloudContext:self reportOperationEnd:endCopy recordsByRecordID:dCopy operationError:errorCopy];
}

- (id)operationToSaveZonesIfNecessaryForAccountID:(id)d
{
  v55 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MEMORY[0x277CBEB58] set];
  selfCopy = self;
  accountZoneIDsNeedingToBeSaved = [(ICCloudContext *)self accountZoneIDsNeedingToBeSaved];
  v37 = dCopy;
  v7 = [accountZoneIDsNeedingToBeSaved objectForKeyedSubscript:dCopy];
  allObjects = [v7 allObjects];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
    v13 = *MEMORY[0x277CBBF28];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        ownerName = [v15 ownerName];
        v17 = [ownerName isEqualToString:v13];

        if (v17)
        {
          [v5 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v11);
  }

  v36 = v9;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  operationQueue = [(ICCloudContext *)selfCopy operationQueue];
  operations = [operationQueue operations];

  v20 = [operations countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      v23 = 0;
      v39 = v21;
      do
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(operations);
        }

        v24 = *(*(&v44 + 1) + 8 * v23);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          recordZonesToSave = [v25 recordZonesToSave];
          v27 = [recordZonesToSave countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v41;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v41 != v29)
                {
                  objc_enumerationMutation(recordZonesToSave);
                }

                zoneID = [*(*(&v40 + 1) + 8 * j) zoneID];
                [v5 removeObject:zoneID];
              }

              v28 = [recordZonesToSave countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v28);
          }

          v21 = v39;
        }

        ++v23;
      }

      while (v23 != v21);
      v21 = [operations countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v21);
  }

  if ([v5 count])
  {
    allObjects2 = [v5 allObjects];
    v33 = v37;
    v34 = [(ICCloudContext *)selfCopy operationToSaveZonesForZoneIDs:allObjects2 accountID:v37];
  }

  else
  {
    v34 = 0;
    v33 = v37;
  }

  return v34;
}

- (id)operationToSaveZonesForZoneIDs:(id)ds accountID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  v27 = dsCopy;
  if ([dCopy length])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = dsCopy;
    v7 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v7)
    {
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(*(&v40 + 1) + 8 * i)];
          [v6 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v7);
    }

    v26 = [(ICCloudContext *)self containerForAccountID:dCopy];
    val = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:v6 recordZoneIDsToDelete:0];
    [val setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
    discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
    configuration = [val configuration];
    [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

    privateCloudDatabase = [v26 privateCloudDatabase];
    [val setDatabase:privateCloudDatabase];

    objc_initWeak(&location, val);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v15)
    {
      v16 = *v36;
      do
      {
        v17 = 0;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v35 + 1) + 8 * v17);
          v19 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            zoneID = [v18 zoneID];
            ic_loggingDescription = [zoneID ic_loggingDescription];
            ic_loggingDescription2 = [val ic_loggingDescription];
            *buf = 138412546;
            v45 = ic_loggingDescription;
            v46 = 2112;
            v47 = ic_loggingDescription2;
            _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Will save zone %@ %@", buf, 0x16u);
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v15);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke;
    v32[3] = &unk_278198F28;
    objc_copyWeak(&v34, &location);
    v32[4] = self;
    v33 = dCopy;
    [val setModifyRecordZonesCompletionBlock:v32];
    v23 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v23 setName:@"SaveRecordZones"];
    [v23 setQuantity:{objc_msgSend(obj, "count")}];
    [v23 setExpectedSendSize:1];
    [v23 setExpectedReceiveSize:1];
    [val setGroup:v23];
    v24 = val;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext operationToSaveZonesForZoneIDs:accountID:];
    }

    v24 = 0;
  }

  return v24;
}

void __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2;
  block[3] = &unk_278198F00;
  v16 = v7;
  v17 = WeakRetained;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v6;
  v19 = v10;
  v20 = v11;
  v12 = v6;
  v13 = WeakRetained;
  v14 = v7;
  dispatch_async(v9, block);
}

void __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.notes", "Cloud");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2_cold_2(a1);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 48);
  v5 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v9 zoneID];
          v13 = [v15 ic_loggingDescription];
          v14 = [*(a1 + 40) ic_loggingDescription];
          *buf = 138412546;
          v22 = v13;
          v23 = 2112;
          v24 = v14;
          _os_log_debug_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEBUG, "Saved record zone %@ %@", buf, 0x16u);
        }

        v11 = [*(a1 + 56) accountZoneIDsNeedingToBeSaved];
        v12 = [v9 zoneID];
        [v11 ic_removeZoneID:v12 forAccountID:*(a1 + 64)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)contextDidSaveOrMerge:(id)merge
{
  v38 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  persistentStoreCoordinator = [(ICCloudContext *)self persistentStoreCoordinator];
  objc_opt_class();
  object = [mergeCopy object];
  v7 = ICDynamicCast();

  persistentStoreCoordinator2 = [v7 persistentStoreCoordinator];
  v9 = [persistentStoreCoordinator2 isEqual:persistentStoreCoordinator];

  if (v9)
  {
    context = objc_autoreleasePoolPush();
    userInfo = [mergeCopy userInfo];
    v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE148]];

    userInfo2 = [mergeCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBE180]];

    userInfo3 = [mergeCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBE308]];

    v15 = [MEMORY[0x277CBEB58] set];
    if ([v12 count])
    {
      [v15 unionSet:v12];
    }

    v27 = v12;
    if ([v14 count])
    {
      [v15 unionSet:v14];
    }

    v16 = [MEMORY[0x277CBEB58] set];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        v21 = 0;
        do
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v16 addObject:*(*(&v33 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    processingQueue = [(ICCloudContext *)self processingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICCloudContext_contextDidSaveOrMerge___block_invoke;
    block[3] = &unk_278194DC0;
    v30 = v26;
    v31 = v16;
    selfCopy = self;
    v23 = v16;
    v24 = v26;
    dispatch_async(processingQueue, block);

    objc_autoreleasePoolPop(context);
  }
}

void __40__ICCloudContext_contextDidSaveOrMerge___block_invoke(id *a1)
{
  v2 = a1 + 4;
  if ([a1[4] count])
  {
    v3 = [MEMORY[0x277CBEB98] setWithSet:*v2];
    v4 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __40__ICCloudContext_contextDidSaveOrMerge___block_invoke_cold_1();
    }

    [a1[5] minusSet:v3];
    v5 = [a1[6] objectIDsToProcess];
    [v5 minusSet:v3];

    v6 = [a1[6] objectIDsToRetry];
    [v6 minusSet:v3];
  }

  if ([a1[5] count])
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__ICCloudContext_contextDidSaveOrMerge___block_invoke_cold_2();
    }

    v8 = [a1[6] objectIDsToProcess];
    [v8 unionSet:a1[5]];

    v9 = [a1[6] processingSelectorDelayer];
    [v9 requestFire];
  }
}

- (void)processPendingCloudObjectsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(ICCloudContext *)self newSessionForReason:@"ProcessPendingCloudObjects"];
  v5 = [(ICCloudContext *)self completionEndingProcessingSession:v6 wrappingCompletion:handlerCopy];

  [(ICCloudContext *)self processPendingCloudObjectsInSession:v6 withCompletionHandler:v5];
}

- (void)processAllCloudObjectsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(ICCloudContext *)self newSessionForReason:@"ProcessAllCloudObjects"];
  v5 = [(ICCloudContext *)self completionEndingProcessingSession:v6 wrappingCompletion:handlerCopy];

  [(ICCloudContext *)self processAllCloudObjectsInSession:v6 withCompletionHandler:v5];
}

- (void)processAllCloudObjectsInSession:(id)session withCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ICCloudContext_processAllCloudObjectsInSession_withCompletionHandler___block_invoke;
  block[3] = &unk_278194E38;
  block[4] = self;
  v12 = sessionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(processingQueue, block);
}

uint64_t __72__ICCloudContext_processAllCloudObjectsInSession_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsToProcessAllObjects:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 addOperationToProcessObjectsInSession:v3 withCompletionHandler:v4];
}

- (id)completionEndingProcessingSession:(id)session wrappingCompletion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__ICCloudContext_completionEndingProcessingSession_wrappingCompletion___block_invoke;
  aBlock[3] = &unk_278198780;
  v13 = sessionCopy;
  v14 = completionCopy;
  aBlock[4] = self;
  v8 = sessionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);

  return v10;
}

void __71__ICCloudContext_completionEndingProcessingSession_wrappingCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ICCloudContext_completionEndingProcessingSession_wrappingCompletion___block_invoke_2;
  block[3] = &unk_278194DC0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  dispatch_async(v5, block);
}

void __71__ICCloudContext_completionEndingProcessingSession_wrappingCompletion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasBegun])
  {
    v2 = *(a1 + 32);
    v3 = [objc_opt_class() errorFromErrors:*(a1 + 48)];
    [v2 sessionEndedWithError:v3];
  }
}

- (void)addOperationToProcessObjectsInSession:(id)session withCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  if ([(ICCloudContext *)self isDisabled]|| [(ICCloudContext *)self isDisabledInternal]|| ![(ICCloudContext *)self isReadyToSync]|| [(ICCloudContext *)self syncOnlyIfReachable]&& ![(ICCloudContext *)self isInternetReachable])
  {
    v18 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudContext isDisabled](self, "isDisabled")}];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudContext isDisabledInternal](self, "isDisabledInternal")}];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudContext isReadyToSync](self, "isReadyToSync")}];
      v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudContext syncOnlyIfReachable](self, "syncOnlyIfReachable")}];
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudContext isInternetReachable](self, "isInternetReachable")}];
      *buf = 138413314;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEFAULT, "Not adding operation to process objects because we're not able to sync: isDisabled=%@, isDisabledInternal=%@, isReadyToSync=%@, syncOnlyIfReachable=%@, isInternetReachable=%@", buf, 0x34u);
    }

    if (handlerCopy)
    {
      errorForDisabledCloudSyncing = [objc_opt_class() errorForDisabledCloudSyncing];
      v31 = errorForDisabledCloudSyncing;
      v16 = MEMORY[0x277CBEA60];
      v17 = &v31;
      goto LABEL_17;
    }
  }

  else
  {
    if (-[ICCloudContext disableRetryTimer](self, "disableRetryTimer") || (-[ICCloudContext retryTimer](self, "retryTimer"), (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, -[ICCloudContext retryTimer](self, "retryTimer"), v10 = objc_claimAutoreleasedReturnValue(), [v10 fireDate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "ic_isLaterThanDate:", v12), v12, v11, v10, v9, !v13))
    {
      processingQueue = [(ICCloudContext *)self processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke;
      block[3] = &unk_278194E38;
      v27 = sessionCopy;
      selfCopy = self;
      v29 = handlerCopy;
      dispatch_async(processingQueue, block);

      errorForDisabledCloudSyncing = v27;
      goto LABEL_18;
    }

    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Not adding operation to process objects because we're waiting for a retry timer", buf, 2u);
    }

    if (handlerCopy)
    {
      errorForDisabledCloudSyncing = [objc_opt_class() errorForWaitingForRetryTimer];
      v30 = errorForDisabledCloudSyncing;
      v16 = MEMORY[0x277CBEA60];
      v17 = &v30;
LABEL_17:
      v24 = [v16 arrayWithObjects:v17 count:1];
      (*(handlerCopy + 2))(handlerCopy, v24);

LABEL_18:
    }
  }
}

void __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCA8C8]);
  [v2 setName:@"ProcessObjects"];
  [v2 setIc_cloudSession:*(a1 + 32)];
  objc_initWeak(&location, v2);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_2;
  v23[3] = &unk_278198F50;
  objc_copyWeak(&v26, &location);
  v18 = *(a1 + 32);
  v3 = v18.i64[0];
  v24 = vextq_s8(v18, v18, 8uLL);
  v25 = *(a1 + 48);
  [v2 addExecutionBlock:v23];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 40) needsToProcessAllObjects];
    __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_cold_1();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [*(a1 + 40) operationQueue];
  v6 = [v5 operations];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v2 addDependency:{*(*(&v19 + 1) + 8 * v10++), *&v18}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v8);
  }

  v11 = [v2 dependencies];
  v12 = [v11 count] == 0;

  if (!v12)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v2 dependencies];
      v17 = [v16 count];
      *buf = 134218240;
      v30 = v2;
      v31 = 2048;
      v32 = v17;
      _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "Process operation %p waiting on %ld other operations", buf, 0x16u);
    }
  }

  v14 = *(a1 + 40);
  v28 = v2;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:{1, *&v18}];
  [v14 addOperations:v15];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v3 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_368;
  block[3] = &unk_278194E38;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_async(v3, block);
}

uint64_t __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_368(uint64_t a1)
{
  if ([*(a1 + 32) needsToProcessAllObjects])
  {
    [*(a1 + 32) setNeedsToProcessAllObjects:0];
    v2 = [*(a1 + 32) backgroundContext];
    v3 = [*(a1 + 32) _objectIDsToProcessForFullSyncInContext:v2];
    v4 = [*(a1 + 32) objectIDsToProcess];
    [v4 unionSet:v3];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v5 _processPendingCloudObjectsInSession:v6 withCompletionHandler:v7];
}

- (id)_objectIDsToProcessForFullSyncInContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ICCloudContext__objectIDsToProcessForFullSyncInContext___block_invoke;
  v10[3] = &unk_278194DC0;
  v10[4] = self;
  v11 = contextCopy;
  v12 = v5;
  v6 = v5;
  v7 = contextCopy;
  [v7 performBlockAndWait:v10];
  v8 = [v6 copy];

  return v8;
}

void __58__ICCloudContext__objectIDsToProcessForFullSyncInContext___block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"needsToBeFetchedFromCloud == YES"];
  v11[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"needsToFetchUserSpecificRecordAssets == YES"];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudState.currentLocalVersion > cloudState.latestVersionSyncedToCloud"];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"needsToSaveUserSpecificRecord == YES"];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v2 orPredicateWithSubpredicates:v7];

  v9 = [*(a1 + 32) allCloudObjectIDsInContext:*(a1 + 40) predicate:v8];
  v10 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __58__ICCloudContext__objectIDsToProcessForFullSyncInContext___block_invoke_cold_1(v9);
  }

  [*(a1 + 48) unionSet:v9];
}

- (void)_processPendingCloudObjectsInSession:(id)session withCompletionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  handlerCopy = handler;
  if ([(ICCloudContext *)self isReadyToSync])
  {
    if (![(ICCloudContext *)self syncOnlyIfReachable]|| [(ICCloudContext *)self isInternetReachable])
    {
      processingQueue = [(ICCloudContext *)self processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke;
      block[3] = &unk_278194E38;
      block[4] = self;
      v15 = sessionCopy;
      v16 = handlerCopy;
      dispatch_async(processingQueue, block);

      goto LABEL_15;
    }

    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext _processPendingCloudObjectsInSession:withCompletionHandler:];
    }
  }

  else
  {
    isCloudKitAccountAvailable = [(ICCloudContext *)self isCloudKitAccountAvailable];
    v10 = os_log_create("com.apple.notes", "Cloud");
    v11 = v10;
    if (isCloudKitAccountAvailable)
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudContext _processPendingCloudObjectsInSession:? withCompletionHandler:?];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext _processPendingCloudObjectsInSession:withCompletionHandler:];
    }
  }

  if (handlerCopy)
  {
    errorForDisabledCloudSyncing = [objc_opt_class() errorForDisabledCloudSyncing];
    v17[0] = errorForDisabledCloudSyncing;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }

LABEL_15:
}

void __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectIDsToRetry];
  v4 = [v3 count];

  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_1(v2);
    }

    v6 = [*v2 objectIDsToProcess];
    v7 = [*v2 objectIDsToRetry];
    [v6 unionSet:v7];

    v8 = [*v2 objectIDsToRetry];
    [v8 removeAllObjects];
  }

  v9 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_2(v2);
  }

  v10 = *(a1 + 32);
  v11 = [v10 objectIDsToProcess];
  [v10 processObjectIDs:v11 inSession:*(a1 + 40) completionHandler:*(a1 + 48)];

  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_3();
  }

  v13 = [*v2 objectIDsToProcess];
  [v13 removeAllObjects];
}

- (void)processObjectIDs:(id)ds inSession:(id)session completionHandler:(id)handler
{
  dsCopy = ds;
  sessionCopy = session;
  handlerCopy = handler;
  backgroundContext = [(ICCloudContext *)self backgroundContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__ICCloudContext_processObjectIDs_inSession_completionHandler___block_invoke;
  v16[3] = &unk_278198A98;
  v17 = dsCopy;
  v18 = backgroundContext;
  selfCopy = self;
  v20 = sessionCopy;
  v21 = handlerCopy;
  v12 = handlerCopy;
  v13 = sessionCopy;
  v14 = backgroundContext;
  v15 = dsCopy;
  [v14 performBlockAndWait:v16];
}

void __63__ICCloudContext_processObjectIDs_inSession_completionHandler___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = [MEMORY[0x277CBEB40] orderedSet];
  v44 = [MEMORY[0x277CBEB18] array];
  v43 = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v41 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v54;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v53 + 1) + 8 * i);
        v8 = [v7 entity];
        v9 = [v8 name];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 isEqualToString:v11];

        if (v12)
        {
          v13 = v43;
        }

        else
        {
          v13 = v44;
        }

        [v13 addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v4);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v60 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v18 = [ICCloudSyncingObject ic_objectsFromObjectIDs:v44 relationshipKeyPathsForPrefetching:v17 context:v41[5]];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v50;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v50 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = ICProtocolCast();
        v25 = v24;
        if (v24 && (([v24 isInICloudAccount] & 1) != 0 || objc_msgSend(v25, "needsToBeDeletedFromCloud")))
        {
          [v42 addObject:{v25, v41}];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v21);
  }

  objc_autoreleasePoolPop(v14);
  v26 = objc_autoreleasePoolPush();
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v58 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v30 = [ICCloudState ic_objectsFromObjectIDs:v43 relationshipKeyPathsForPrefetching:v29 context:v41[5]];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        objc_opt_class();
        v36 = ICDynamicCast();
        v37 = [v36 cloudSyncingObject];
        v38 = v37;
        if (v37 && (([v37 isInICloudAccount] & 1) != 0 || objc_msgSend(v38, "needsToBeDeletedFromCloud")))
        {
          [v42 addObject:{v38, v41}];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v33);
  }

  objc_autoreleasePoolPop(v26);
  v39 = v41[6];
  v40 = [v42 array];
  [v39 _processCloudObjects:v40 inSession:v41[7] completionHandler:v41[8]];
}

- (void)_processCloudObjects:(id)objects inSession:(id)session completionHandler:(id)handler
{
  v89 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  sessionCopy = session;
  handlerCopy = handler;
  v10 = objectsCopy;
  v11 = handlerCopy;
  if ([objectsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v45 = [objc_opt_class() objectsByAccount:objectsCopy];
    v46 = v11;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_2;
    v68[3] = &unk_278198F78;
    v13 = sessionCopy;
    v69 = v13;
    selfCopy = self;
    v14 = array;
    v71 = v14;
    v72 = &v74;
    v73 = &v78;
    [v45 enumerateKeysAndObjectsUsingBlock:v68];
    if ([v14 count])
    {
      v15 = +[ICCloudConfiguration sharedConfiguration];
      throttlingPolicy = [v15 throttlingPolicy];
      [throttlingPolicy incrementBatchCount];

      [(ICCloudContext *)self addOperations:v14];
    }

    v17 = 0x277CCA000uLL;
    v44 = v10;
    if (*(v75 + 24) == 1)
    {
      v18 = MEMORY[0x277CCA8C8];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_548;
      v66[3] = &unk_278194AD8;
      v66[4] = self;
      v67 = v13;
      v19 = [v18 blockOperationWithBlock:v66];
      [v19 ic_setResistsCancellation:1];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v20 = v14;
      v21 = [v20 countByEnumeratingWithState:&v62 objects:v88 count:16];
      if (v21)
      {
        v22 = *v63;
        do
        {
          v23 = 0;
          do
          {
            if (*v63 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v62 + 1) + 8 * v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v19 addDependency:v24];
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v20 countByEnumeratingWithState:&v62 objects:v88 count:16];
        }

        while (v21);
      }

      v10 = v44;
      v11 = v46;
      v17 = 0x277CCA000;
      v87 = v19;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      [(ICCloudContext *)self addOperations:v25];
    }

    else
    {
      v19 = 0;
    }

    if (*(v79 + 24) == 1)
    {
      v28 = *(v17 + 2248);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_3;
      v60[3] = &unk_278194AD8;
      v60[4] = self;
      v61 = v13;
      v29 = [v28 blockOperationWithBlock:v60];
      [v29 ic_setResistsCancellation:1];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v30 = v14;
      v31 = [v30 countByEnumeratingWithState:&v56 objects:v86 count:16];
      if (v31)
      {
        v32 = *v57;
        do
        {
          v33 = 0;
          do
          {
            if (*v57 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v56 + 1) + 8 * v33);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v29 addDependency:v34];
            }

            ++v33;
          }

          while (v31 != v33);
          v31 = [v30 countByEnumeratingWithState:&v56 objects:v86 count:16];
        }

        while (v31);
      }

      v10 = v44;
      v11 = v46;
      v17 = 0x277CCA000;
      v85 = v29;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
      [(ICCloudContext *)self addOperations:v35];

      if (!v46)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v29 = 0;
      if (!v11)
      {
LABEL_45:

        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v78, 8);

        goto LABEL_46;
      }
    }

    v36 = *(v17 + 2248);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_5;
    v52[3] = &unk_278194E38;
    v37 = v14;
    v53 = v37;
    selfCopy2 = self;
    v55 = v11;
    v38 = [v36 blockOperationWithBlock:v52];
    [v38 setName:@"ProcessObjects-Completion"];
    [v38 ic_setResistsCancellation:1];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v48 objects:v84 count:16];
    if (v40)
    {
      v41 = *v49;
      do
      {
        v42 = 0;
        do
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v39);
          }

          [v38 addDependency:{*(*(&v48 + 1) + 8 * v42++), v44}];
        }

        while (v40 != v42);
        v40 = [v39 countByEnumeratingWithState:&v48 objects:v84 count:16];
      }

      while (v40);
    }

    v11 = v46;
    if (v19)
    {
      [v38 addDependency:v19];
    }

    if (v29)
    {
      [v38 addDependency:v29];
    }

    operationQueue = [(ICCloudContext *)self operationQueue];
    [operationQueue addOperation:v38];

    goto LABEL_45;
  }

  v26 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext _processCloudObjects:sessionCopy inSession:? completionHandler:?];
  }

  if (v11)
  {
    operationQueue2 = [(ICCloudContext *)self operationQueue];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke;
    v82[3] = &unk_278195F28;
    v83 = v11;
    [operationQueue2 addOperationWithBlock:v82];

    v14 = v83;
LABEL_46:
  }
}

void __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v37 = [v5 count];
    v38 = [*(a1 + 32) identifier];
    v39 = [v38 UUIDString];
    *buf = 134218498;
    v54 = v37;
    v55 = 2112;
    v56 = v41;
    v57 = 2112;
    v58 = v39;
    _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Processing %lu cloud objects for accountID %@ for session %@", buf, 0x20u);
  }

  v43 = [MEMORY[0x277CBEB58] set];
  v42 = [MEMORY[0x277CBEB58] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v12 recordID];
        if (v13)
        {
          v14 = [*(a1 + 40) supportsDeferredAssetDownload];
          v15 = [v12 needsToBeFetchedFromCloud];
          if (v14)
          {
            if ((v15 & 1) == 0 && [v12 needsToBePushedToCloud] && (objc_msgSend(v12, "needsToBeDeletedFromCloud") & 1) == 0)
            {
              if ([v12 hasOutOfDateCommonAssetSignatures])
              {
                v16 = 1;
              }

              else
              {
                v16 = ([v12 hasCommonAssetSignatures] & 1) == 0 && objc_msgSend(v12, "numberOfCommonRecordAssets") != 0;
              }

              [v12 setNeedsToBeFetchedFromCloud:v16];
            }

            if (([v12 needsToFetchUserSpecificRecordAssets] & 1) == 0 && objc_msgSend(v12, "needsToSaveUserSpecificRecord"))
            {
              if ([v12 hasOutOfDateUserSpecificAssetSignatures])
              {
                v17 = 1;
              }

              else
              {
                v17 = ([v12 hasUserSpecificAssetSignatures] & 1) == 0 && objc_msgSend(v12, "numberOfUserSpecificRecordAssets") != 0;
              }

              [v12 setNeedsToFetchUserSpecificRecordAssets:v17];
            }

            if ([v12 needsToBeFetchedFromCloud])
            {
              v18 = [v12 hasOutOfDateCommonAssetSignatures];
              v19 = v42;
              if ((v18 & 1) == 0)
              {
                if ([v12 shouldAlwaysDownloadAssets])
                {
                  v19 = v42;
                }

                else
                {
                  v19 = v43;
                }
              }

              [v19 addObject:v13];
            }

            if ([v12 needsToFetchUserSpecificRecordAssets])
            {
              v20 = [v12 userSpecificRecordID];
              if (v20)
              {
                [v42 addObject:v20];
              }
            }
          }

          else if (v15)
          {
            [v43 addObject:v13];
          }
        }

        if ([v12 canBeRootShareObject])
        {
          v21 = [v12 serverRecord];
          v22 = [v21 share];
          v23 = [v22 recordID];

          if (v23)
          {
            v24 = [v12 serverShare];

            if (!v24)
            {
              [v43 addObject:v23];
              [MEMORY[0x277D36278] postBasicEvent:10];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v9);
  }

  v25 = *(a1 + 40);
  v26 = [v43 allObjects];
  v27 = [v25 operationsToFetchRecordIDs:v26 forSession:*(a1 + 32) shouldDownloadAssets:objc_msgSend(*(a1 + 40) qualityOfService:"supportsDeferredAssetDownload") ^ 1 operationGroupName:objc_msgSend(*(a1 + 40) accountID:{"qualityOfService"), 0, v41}];

  [*(a1 + 48) addObjectsFromArray:v27];
  *(*(*(a1 + 56) + 8) + 24) |= [v27 count] != 0;
  if ([*(a1 + 40) supportsDeferredAssetDownload] && objc_msgSend(v42, "count"))
  {
    v28 = *(a1 + 40);
    v29 = [v42 allObjects];
    v30 = [v28 operationsToFetchRecordIDs:v29 forSession:*(a1 + 32) shouldDownloadAssets:1 qualityOfService:objc_msgSend(*(a1 + 40) operationGroupName:"qualityOfService") accountID:{0, v41}];

    [*(a1 + 48) addObjectsFromArray:v30];
    *(*(*(a1 + 56) + 8) + 24) |= [v30 count] != 0;
  }

  v31 = *(a1 + 40);
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  [v31 _filterCloudSyncingObjects:v7 accountID:v41 objectsToSave:&v47 objectsToDelete:&v46 objectsToDeleteShares:&v45 objectsToSaveUserSpecificRecord:&v44];
  v32 = v47;
  v33 = v46;
  v34 = v45;
  v35 = v44;
  LOBYTE(v40) = 1;
  v36 = [*(a1 + 40) operationsToModifyRecordsForCloudObjectsToSave:v32 delete:v33 deleteShares:v34 saveUserSpecificRecords:v35 forSession:*(a1 + 32) operationGroupName:@"SaveChangedObjects" addDependencies:v40 accountID:v41];
  [*(a1 + 48) addObjectsFromArray:v36];
  *(*(*(a1 + 64) + 8) + 24) |= [v36 count] != 0;
}

void __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_548(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_2_549;
  block[3] = &unk_278194B00;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_4;
  block[3] = &unk_278194B00;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __67__ICCloudContext__processCloudObjects_inSession_completionHandler___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 error];

        if (v9)
        {
          v10 = [v8 error];
          [v2 addObject:v10];

          v11 = *(a1 + 40);
          v12 = [v8 error];
          [v11 startRetryTimerIfNecessaryWithError:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if (*(a1 + 48))
  {
    if ([v2 count])
    {
      v13 = v2;
    }

    else
    {
      v13 = 0;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v13);
  }
}

- (void)_filterCloudSyncingObjects:(id)objects accountID:(id)d objectsToSave:(id *)save objectsToDelete:(id *)delete objectsToDeleteShares:(id *)shares objectsToSaveUserSpecificRecord:(id *)record
{
  saveCopy = save;
  v43 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = objectsCopy;
  v15 = array4;
  v16 = v14;
  v17 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
  v32 = array4;
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        if ([v21 needsToBePushedToCloud] && (objc_msgSend(v21, "shouldBeIgnoredForSync") & 1) == 0 && (objc_msgSend(v21, "needsToBeDeletedFromCloud") & 1) == 0)
        {
          if ([v21 hasAllMandatoryFields])
          {
            v22 = array;
LABEL_18:
            [v22 addObject:v21];
            goto LABEL_19;
          }

          v23 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            loggingDescription = [v21 loggingDescription];
            *buf = 138412546;
            v39 = dCopy;
            v40 = 2112;
            v41 = loggingDescription;
            _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEFAULT, "Not syncing object because it's missing mandatory fields in account ID %@: %@", buf, 0x16u);

            v15 = v32;
          }
        }

        if ([v21 shouldBeIgnoredForSync])
        {
          [v21 decrementFailureCounts];
          goto LABEL_19;
        }

        if ([v21 needsToBeDeletedFromCloud])
        {
          v22 = array2;
          goto LABEL_18;
        }

LABEL_19:
        if ([v21 needsToDeleteShare])
        {
          [array3 addObject:v21];
          [array removeObject:v21];
        }

        if (([v21 needsToBeDeletedFromCloud] & 1) == 0 && objc_msgSend(v21, "wantsUserSpecificRecord") && objc_msgSend(v21, "needsToSaveUserSpecificRecord"))
        {
          userSpecificRecordID = [v21 userSpecificRecordID];

          if (userSpecificRecordID)
          {
            [v15 addObject:v21];
          }

          else
          {
            v26 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              loggingDescription2 = [v21 loggingDescription];
              *buf = 138412546;
              v39 = dCopy;
              v40 = 2112;
              v41 = loggingDescription2;
              _os_log_error_impl(&dword_214D51000, v26, OS_LOG_TYPE_ERROR, "Not syncing user-specific object because it's missing its user-specific record ID in account ID %@: %@", buf, 0x16u);

              v15 = v32;
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v18);
  }

  if (saveCopy)
  {
    *saveCopy = [array copy];
  }

  if (delete)
  {
    *delete = [array2 copy];
  }

  if (shares)
  {
    *shares = [array3 copy];
  }

  if (record)
  {
    *record = [v32 copy];
  }
}

- (void)handleRemoteNotificationWithUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    v11 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:infoCopy];
    v12 = [infoCopy objectForKeyedSubscript:@"aps"];
    v13 = [v12 objectForKeyedSubscript:@"content-available"];

    if (v11)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__ICCloudContext_handleRemoteNotificationWithUserInfo_completion___block_invoke;
      v17[3] = &unk_278194CD8;
      v18 = completionCopy;
      [(ICCloudContext *)self handleCloudKitNotification:v11 completionHandler:v17];
      v14 = v18;
    }

    else
    {
      if ([v13 integerValue] != 1)
      {
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
        }

        goto LABEL_11;
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__ICCloudContext_handleRemoteNotificationWithUserInfo_completion___block_invoke_2;
      v15[3] = &unk_278194CD8;
      v16 = completionCopy;
      [(ICCloudContext *)self syncWithReason:@"GenericContentAvailablePush" uploadUnsyncedChanges:0 completionHandler:v15];
      v14 = v16;
    }

LABEL_11:
    goto LABEL_12;
  }

  cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
  v10 = [cloudContextDelegate2 shouldIgnoreNotificationsForCloudContext:self];

  if (!v10)
  {
    goto LABEL_6;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 1);
  }

LABEL_12:
}

uint64_t __66__ICCloudContext_handleRemoteNotificationWithUserInfo_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 1);
  }

  return result;
}

void __66__ICCloudContext_handleRemoteNotificationWithUserInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  performBlockOnMainThread();
}

uint64_t __66__ICCloudContext_handleRemoteNotificationWithUserInfo_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1);
  }

  return result;
}

- (void)handleCloudKitNotification:(id)notification completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  handlerCopy = handler;
  cloudContextDelegate = [(ICCloudContext *)self cloudContextDelegate];
  if (objc_opt_respondsToSelector())
  {
    cloudContextDelegate2 = [(ICCloudContext *)self cloudContextDelegate];
    v10 = [cloudContextDelegate2 shouldIgnoreNotificationsForCloudContext:self];

    if (v10)
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext handleCloudKitNotification:notificationCopy completionHandler:?];
  }

  if (![(ICCloudContext *)self isReadyToSync]|| [(ICCloudContext *)self isDisabled]|| [(ICCloudContext *)self isDisabledInternal])
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      readinessLoggingDescription = [(ICCloudContext *)self readinessLoggingDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = readinessLoggingDescription;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Not handling CloudKit push notification: %@", &buf, 0xCu);
    }

    if (handlerCopy)
    {
      errorForDisabledCloudSyncing = [objc_opt_class() errorForDisabledCloudSyncing];
      (handlerCopy)[2](handlerCopy, errorForDisabledCloudSyncing);
    }
  }

  else
  {
    notificationType = [notificationCopy notificationType];
    if (notificationType == 2 || notificationType == 4)
    {
      v16 = notificationCopy;
      databaseScope = [v16 databaseScope];
      subscriptionOwnerUserRecordID = [v16 subscriptionOwnerUserRecordID];

      recordName = [subscriptionOwnerUserRecordID recordName];
    }

    else
    {
      subscriptionOwnerUserRecordID = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(subscriptionOwnerUserRecordID, OS_LOG_TYPE_ERROR))
      {
        [ICCloudContext handleCloudKitNotification:completionHandler:];
      }

      recordName = 0;
      databaseScope = 0;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    if (databaseScope)
    {
      if (recordName)
      {
        containersByAccountID = [(ICCloudContext *)self containersByAccountID];
        v21 = [containersByAccountID count] == 0;

        if (!v21)
        {
          containersByAccountID2 = [(ICCloudContext *)self containersByAccountID];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke;
          v23[3] = &unk_278198FF0;
          p_buf = &buf;
          v28 = databaseScope;
          v24 = recordName;
          selfCopy = self;
          v26 = handlerCopy;
          [containersByAccountID2 enumerateKeysAndObjectsUsingBlock:v23];
        }
      }
    }

    if (handlerCopy && (*(*(&buf + 1) + 24) & 1) == 0)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_15:
}

void __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_2;
  v8[3] = &unk_278198FC8;
  v9 = *(a1 + 32);
  v10 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v13 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  v7 = v4;
  [v7 fetchUserRecordIDWithCompletionHandler:v8];
}

void __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 recordName];
  if ([*(a1 + 32) isEqualToString:v3])
  {
    v4 = [*(a1 + 40) databaseWithDatabaseScope:*(a1 + 64)];
    v5 = [*(a1 + 48) newSessionForReason:@"PushNotification"];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_3;
    aBlock[3] = &unk_278198BD8;
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);
    v24 = v6;
    aBlock[4] = v7;
    v8 = v5;
    v23 = v8;
    v9 = _Block_copy(aBlock);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_5;
    v18 = &unk_278198FA0;
    v19 = *(a1 + 48);
    v20 = v8;
    v21 = v9;
    v10 = v9;
    v11 = v8;
    v12 = _Block_copy(&v15);
    v13 = *(a1 + 48);
    v25[0] = v4;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:{1, v15, v16, v17, v18, v19}];
    [v13 fetchDatabaseChangesForDatabases:v14 session:v11 completionHandler:v12];
  }
}

void __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ICCloudContext_handleCloudKitNotification_completionHandler___block_invoke_4;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)validateAccountZoneIDsNeedingFetchChanges
{
  v3 = MEMORY[0x277CBEB58];
  accountZoneIDsNeedingFetchChanges = [(ICCloudContext *)self accountZoneIDsNeedingFetchChanges];
  allKeys = [accountZoneIDsNeedingFetchChanges allKeys];
  v6 = [v3 setWithArray:allKeys];

  v7 = MEMORY[0x277CBEB98];
  containersByAccountID = [(ICCloudContext *)self containersByAccountID];
  allKeys2 = [containersByAccountID allKeys];
  v10 = [v7 setWithArray:allKeys2];

  [v6 minusSet:v10];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ICCloudContext_validateAccountZoneIDsNeedingFetchChanges__block_invoke;
  v11[3] = &unk_278199018;
  v11[4] = self;
  [v6 enumerateObjectsUsingBlock:v11];
}

void __59__ICCloudContext_validateAccountZoneIDsNeedingFetchChanges__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Filtering out account ID %@ from needing fetch changes since there is no corresponding container.", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
  [v5 setObject:0 forKeyedSubscript:v3];
}

- (void)fetchRecordZoneChangesWithReason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(ICCloudContext *)self newSessionForReason:reason];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__ICCloudContext_fetchRecordZoneChangesWithReason_completionHandler___block_invoke;
  aBlock[3] = &unk_278198BD8;
  v12 = v7;
  v13 = handlerCopy;
  aBlock[4] = self;
  v8 = v7;
  v9 = handlerCopy;
  v10 = _Block_copy(aBlock);
  [(ICCloudContext *)self fetchRecordZoneChangesForSession:v8 completionHandler:v10];
}

void __69__ICCloudContext_fetchRecordZoneChangesWithReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ICCloudContext_fetchRecordZoneChangesWithReason_completionHandler___block_invoke_2;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)fetchRecordZoneChangesForSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ICCloudContext_fetchRecordZoneChangesForSession_completionHandler___block_invoke;
  block[3] = &unk_278194E38;
  block[4] = self;
  v12 = sessionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sessionCopy;
  dispatch_async(processingQueue, block);
}

void __69__ICCloudContext_fetchRecordZoneChangesForSession_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) validateAccountZoneIDsNeedingFetchChanges];
  v2 = *(a1 + 32);
  v3 = [v2 accountZoneIDsNeedingFetchChanges];
  [v2 fetchRecordZoneChangesForAccountZoneIDs:v3 session:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)fetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d reason:(id)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  dsCopy = ds;
  v13 = [(ICCloudContext *)self newSessionForReason:reason];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__ICCloudContext_fetchRecordZoneChangesForZoneIDs_accountID_reason_completionHandler___block_invoke;
  aBlock[3] = &unk_278198BD8;
  v18 = v13;
  v19 = handlerCopy;
  aBlock[4] = self;
  v14 = v13;
  v15 = handlerCopy;
  v16 = _Block_copy(aBlock);
  [(ICCloudContext *)self fetchRecordZoneChangesForZoneIDs:dsCopy accountID:dCopy session:v14 completionHandler:v16];
}

void __86__ICCloudContext_fetchRecordZoneChangesForZoneIDs_accountID_reason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__ICCloudContext_fetchRecordZoneChangesForZoneIDs_accountID_reason_completionHandler___block_invoke_2;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)fetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d session:(id)session completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  sessionCopy = session;
  handlerCopy = handler;
  v13 = [MEMORY[0x277CBEB98] setWithArray:ds];
  v14 = v13;
  if (dCopy)
  {
    v16 = dCopy;
    v17[0] = v13;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v15 = 0;
  }

  [(ICCloudContext *)self fetchRecordZoneChangesForAccountZoneIDs:v15 session:sessionCopy completionHandler:handlerCopy];
}

- (void)fetchRecordZoneChangesForAccountZoneIDs:(id)ds session:(id)session completionHandler:(id)handler
{
  dsCopy = ds;
  sessionCopy = session;
  handlerCopy = handler;
  v11 = MEMORY[0x277D36278];
  reason = [sessionCopy reason];
  [v11 postFetchZoneChangesTelemetryWithReason:reason];

  processingQueue = [(ICCloudContext *)self processingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke;
  v17[3] = &unk_278195788;
  v18 = dsCopy;
  selfCopy = self;
  v20 = sessionCopy;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = sessionCopy;
  v16 = dsCopy;
  dispatch_async(processingQueue, v17);
}

void __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"Asking to fetch changes for:"];
  v3 = a1[4];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2;
  v36[3] = &unk_278199040;
  v4 = v2;
  v37 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v36];
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_1();
  }

  v25 = v4;

  v6 = MEMORY[0x277CCA8C8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_573;
  v32[3] = &unk_278195788;
  v26 = *(a1 + 2);
  v7 = v26.i64[0];
  v33 = vextq_s8(v26, v26, 8uLL);
  v34 = a1[6];
  v35 = a1[7];
  v8 = [v6 blockOperationWithBlock:v32];
  [v8 setName:@"CreateFetchZoneChanges"];
  v27 = v8;
  [v8 setIc_cloudSession:a1[6]];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [a1[5] operationQueue];
  v10 = [v9 operations];

  v11 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v17 = a1[5];
          v18 = [v16 database];
          v19 = [v17 accountIDForDatabase:v18];

          if (v19)
          {
            v20 = [a1[4] objectForKeyedSubscript:v19];
            v21 = [v20 count];

            if (v21)
            {
              v22 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_2(v39, v16);
              }

              [v27 addDependency:v16];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v12);
  }

  v23 = a1[5];
  v38 = v27;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [v23 addOperations:v24];
}

void __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) ic_loggingDescription];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@" "];
  [*(a1 + 32) appendFormat:@" account ID: %@, zone IDs: %@.", v5, v14, v15];
}

- (void)addOperationsToFetchRecordZoneChangesForAccountZoneIDs:(id)ds session:(id)session completionHandler:(id)handler
{
  dsCopy = ds;
  sessionCopy = session;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke;
  v15[3] = &unk_278195788;
  v16 = dsCopy;
  selfCopy = self;
  v18 = sessionCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = sessionCopy;
  v14 = dsCopy;
  dispatch_async(processingQueue, v15);
}

void __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke(id *a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = a1[4];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2;
  v74[3] = &unk_278199068;
  v4 = v2;
  v5 = a1[5];
  v6 = a1[6];
  v75 = v4;
  v76 = v5;
  v77 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v74];
  v7 = [a1[5] operationQueue];
  [v7 setSuspended:1];

  v54 = [MEMORY[0x277CBEB18] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v70 objects:v90 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v71;
    *&v10 = 67109890;
    v51 = v10;
    v52 = *v71;
    v53 = v8;
    do
    {
      v13 = 0;
      v55 = v11;
      do
      {
        if (*v71 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v56 = v13;
        v14 = *(*(&v70 + 1) + 8 * v13);
        if ([v14 isFinished] & 1) != 0 || (objc_msgSend(v14, "isExecuting") & 1) != 0 || (objc_msgSend(v14, "isCancelled") & 1) != 0 || (objc_msgSend(a1[5], "operationQueue"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "operations"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", v14), v16, v15, (v17))
        {
          v18 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v14 isFinished];
            v34 = [v14 isExecuting];
            v35 = [v14 isCancelled];
            v36 = [v14 ic_loggingDescription];
            *buf = v51;
            v81 = v33;
            v82 = 1024;
            v83 = v34;
            v84 = 1024;
            v85 = v35;
            v86 = 2112;
            v87 = v36;
            _os_log_debug_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEBUG, "Not adding operation to queue. isFinished=%d isExecuting=%d isCancelled=%d %@", buf, 0x1Eu);
          }
        }

        else
        {
          v57 = v14;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v19 = [a1[5] operationQueue];
          v20 = [v19 operations];

          v21 = [v20 countByEnumeratingWithState:&v66 objects:v89 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v67;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v67 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v66 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v25;
                  v27 = a1[5];
                  v28 = [v26 database];
                  v29 = [v27 accountIDForDatabase:v28];

                  if (v29)
                  {
                    v30 = [a1[4] objectForKeyedSubscript:v29];
                    v31 = [v30 count];

                    if (v31)
                    {
                      v32 = os_log_create("com.apple.notes", "Cloud");
                      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                      {
                        __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_1(v88, v26);
                      }

                      [v57 addDependency:v26];
                    }
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v66 objects:v89 count:16];
            }

            while (v22);
          }

          [v57 setIc_cloudSession:a1[6]];
          [v54 addObject:v57];
          v12 = v52;
          v8 = v53;
          v11 = v55;
        }

        v13 = v56 + 1;
      }

      while (v56 + 1 != v11);
      v37 = [v8 countByEnumeratingWithState:&v70 objects:v90 count:16];
      v11 = v37;
    }

    while (v37);
  }

  v38 = a1[5];
  v39 = [v54 copy];
  [v38 addOperations:v39];

  v40 = [a1[5] operationQueue];
  [v40 setSuspended:0];

  v41 = MEMORY[0x277CCA8C8];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_577;
  v62[3] = &unk_278195788;
  v62[4] = a1[5];
  v42 = v8;
  v63 = v42;
  v64 = a1[6];
  v65 = a1[7];
  v43 = [v41 blockOperationWithBlock:v62];
  [v43 setName:@"FetchZoneChangesCompletion"];
  [v43 setIc_cloudSession:a1[6]];
  [v43 ic_setResistsCancellation:1];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v44 = v42;
  v45 = [v44 countByEnumeratingWithState:&v58 objects:v79 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v59;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v43 addDependency:*(*(&v58 + 1) + 8 * j)];
      }

      v46 = [v44 countByEnumeratingWithState:&v58 objects:v79 count:16];
    }

    while (v46);
  }

  v49 = a1[5];
  v78 = v43;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  [v49 addOperations:v50];
}

void __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  v9 = [a3 allObjects];
  v8 = [v6 operationsToFetchRecordZoneChangesForZoneIDs:v9 accountID:v7 session:a1[6]];

  [v5 addObjectsFromArray:v8];
}

void __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_577(id *a1)
{
  v2 = [a1[4] processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2_578;
  block[3] = &unk_278195788;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(v2, block);
}

void __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_2_578(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) phaseEnded:1];
  }

  v2 = [objc_opt_class() errorFromOperations:*(a1 + 32)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

- (id)operationsToFetchRecordZoneChangesForZoneIDs:(id)ds accountID:(id)d session:(id)session
{
  dsCopy = ds;
  dCopy = d;
  sessionCopy = session;
  if ([dCopy length])
  {
    array = [MEMORY[0x277CBEB18] array];
    v12 = [objc_opt_class() objectsByDatabaseScope:dsCopy];
    v13 = [(ICCloudContext *)self containerForAccountID:dCopy];
    v14 = [objc_opt_class() userRecordNameForContainer:v13];
    v15 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v15 setName:@"FetchRecordZoneChanges"];
    [v15 setExpectedSendSize:1];
    [v15 setExpectedReceiveSize:0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__ICCloudContext_operationsToFetchRecordZoneChangesForZoneIDs_accountID_session___block_invoke;
    v23[3] = &unk_278199090;
    v24 = v13;
    selfCopy = self;
    v26 = dCopy;
    v27 = v14;
    v28 = sessionCopy;
    v16 = v15;
    v29 = v16;
    v30 = array;
    v17 = array;
    v18 = v14;
    v19 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v23];
    v20 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudContext operationsToFetchRecordZoneChangesForZoneIDs:accountID:session:];
    }

    v21 = [v17 copy];
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICCloudContext operationsToFetchRecordZoneChangesForZoneIDs:accountID:session:];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  return v21;
}

void __81__ICCloudContext_operationsToFetchRecordZoneChangesForZoneIDs_accountID_session___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 integerValue];
  v24 = [*(a1 + 32) databaseWithDatabaseScope:v6];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [*(a1 + 40) accountZoneIDsNeedingFetchChanges];
        [v14 ic_removeZoneID:v13 forAccountID:*(a1 + 48)];

        if (v6 == 3 && ([v13 ownerName], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *(a1 + 56)), v15, v16))
        {
          v17 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(a1 + 48);
            *buf = 138412290;
            v30 = v19;
            _os_log_debug_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEBUG, "Filtered the current users zone from being fetched from the shared db in account ID %@.", buf, 0xCu);
          }
        }

        else
        {
          v18 = [*(a1 + 40) accountZoneIDsFetchingChanges];
          [v18 ic_addZoneID:v13 forAccountID:*(a1 + 48)];

          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v20 = *(a1 + 40);
  v21 = [v7 copy];
  v22 = [v20 operationToFetchRecordZoneChangesForZoneIDs:v21 database:v24 session:*(a1 + 64)];

  v23 = [v22 group];

  if (!v23)
  {
    [v22 setGroup:*(a1 + 72)];
    [*(a1 + 72) setQuantity:{objc_msgSend(*(a1 + 72), "quantity") + 1}];
  }

  [v22 setIc_cloudSession:*(a1 + 64)];
  [*(a1 + 80) addObject:v22];
}

- (id)operationToFetchRecordZoneChangesForZoneIDs:(id)ds database:(id)database session:(id)session
{
  v61 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  databaseCopy = database;
  sessionCopy = session;
  v42 = databaseCopy;
  v10 = [(ICCloudContext *)self accountIDForDatabase:databaseCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = dsCopy;
  v11 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    v14 = *MEMORY[0x277CBC060];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        zoneName = [v16 zoneName];
        v18 = [zoneName isEqualToString:v14];

        if (v18)
        {
          v19 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v59 = v10;
            _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Not trying to sync the default record zone in account ID %@.", buf, 0xCu);
          }
        }

        else
        {
          v19 = objc_alloc_init(MEMORY[0x277CBC3A0]);
          backgroundContext = [(ICCloudContext *)self backgroundContext];
          v21 = -[ICCloudContext serverChangeTokenForRecordZoneID:databaseScope:accountID:context:](self, "serverChangeTokenForRecordZoneID:databaseScope:accountID:context:", v16, [v42 databaseScope], v10, backgroundContext);
          [v19 setPreviousServerChangeToken:v21];

          previousServerChangeToken = [v19 previousServerChangeToken];

          if (!previousServerChangeToken)
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __79__ICCloudContext_operationToFetchRecordZoneChangesForZoneIDs_database_session___block_invoke;
            v49[3] = &unk_278194DC0;
            v50 = v10;
            v23 = backgroundContext;
            v51 = v23;
            v52 = v19;
            [v23 performBlockAndWait:v49];
          }

          v24 = +[ICCloudConfiguration sharedConfiguration];
          -[NSObject setResultsLimit:](v19, "setResultsLimit:", [v24 resultsLimitPerSyncOperation]);

          [dictionary setObject:v19 forKeyedSubscript:v16];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v12);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  operationQueue = [(ICCloudContext *)self operationQueue];
  operations = [operationQueue operations];

  v27 = [operations countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (!v27)
  {
LABEL_24:

LABEL_29:
    v36 = v42;
    v38 = dictionary;
    v37 = sessionCopy;
    v32 = [(ICCloudContext *)self newOperationToFetchRecordZoneChangesWithZoneConfigurations:dictionary database:v42 session:sessionCopy];
    goto LABEL_30;
  }

  v28 = v27;
  v29 = *v46;
LABEL_16:
  v30 = 0;
  while (1)
  {
    if (*v46 != v29)
    {
      objc_enumerationMutation(operations);
    }

    v31 = *(*(&v45 + 1) + 8 * v30);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v32 = v31;
    v33 = objc_opt_class();
    configurationsByRecordZoneID = [v32 configurationsByRecordZoneID];
    LOBYTE(v33) = [v33 isZoneConfigurations:dictionary subsetOfZoneConfigurations:configurationsByRecordZoneID];

    if (v33)
    {
      break;
    }

LABEL_22:
    if (v28 == ++v30)
    {
      v28 = [operations countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v28)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  if (!v32)
  {
    goto LABEL_29;
  }

  v35 = os_log_create("com.apple.notes", "Cloud");
  v36 = v42;
  v37 = sessionCopy;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext operationToFetchRecordZoneChangesForZoneIDs:database:session:];
  }

  v38 = dictionary;
LABEL_30:
  v39 = v32;

  return v32;
}

void __79__ICCloudContext_operationToFetchRecordZoneChangesForZoneIDs_database_session___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [ICAccount accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v2 folders];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          if (([v9 isDefaultFolderForAccount] & 1) == 0 && !objc_msgSend(v9, "isTrashFolder"))
          {

            [*(a1 + 48) setFetchNewestChangesFirst:0];
            goto LABEL_25;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = [v3 notes];
    if ([v10 count])
    {
      [*(a1 + 48) setFetchNewestChangesFirst:0];
    }

    else
    {
      v11 = [v3 inlineAttachments];
      if ([v11 count])
      {
        [*(a1 + 48) setFetchNewestChangesFirst:0];
      }

      else
      {
        v12 = [v3 attachments];
        if ([v12 count])
        {
          [*(a1 + 48) setFetchNewestChangesFirst:0];
        }

        else
        {
          v13 = [v3 hashtags];
          if ([v13 count])
          {
            [*(a1 + 48) setFetchNewestChangesFirst:0];
          }

          else
          {
            v14 = [v3 media];
            [*(a1 + 48) setFetchNewestChangesFirst:{objc_msgSend(v14, "count") == 0}];
          }
        }
      }
    }
  }

LABEL_25:
}

+ (BOOL)isZoneConfigurations:(id)configurations subsetOfZoneConfigurations:(id)zoneConfigurations
{
  v31 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  zoneConfigurationsCopy = zoneConfigurations;
  allKeys = [configurationsCopy allKeys];
  v6 = [allKeys copy];

  v7 = [MEMORY[0x277CBEB58] setWithArray:v6];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * v11);
      v13 = [zoneConfigurationsCopy objectForKeyedSubscript:v12];
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = v13;
      v15 = [configurationsCopy objectForKeyedSubscript:v12];
      previousServerChangeToken = [v14 previousServerChangeToken];
      if (previousServerChangeToken)
      {
        break;
      }

      previousServerChangeToken2 = [v15 previousServerChangeToken];

      if (previousServerChangeToken2)
      {
        goto LABEL_10;
      }

LABEL_11:
      [v7 removeObject:v12];

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

LABEL_10:
    previousServerChangeToken3 = [v14 previousServerChangeToken];
    previousServerChangeToken4 = [v15 previousServerChangeToken];
    v20 = [previousServerChangeToken3 isEqual:previousServerChangeToken4];

    if ((v20 & 1) == 0)
    {

      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:

  v21 = [v7 count] == 0;
  return v21;
}

- (id)newOperationToFetchRecordZoneChangesWithZoneConfigurations:(id)configurations database:(id)database session:(id)session
{
  location[5] = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  databaseCopy = database;
  sessionCopy = session;
  v11 = [(ICCloudContext *)self accountIDForDatabase:databaseCopy];
  v12 = objc_alloc(MEMORY[0x277CBC3B8]);
  allKeys = [configurationsCopy allKeys];
  v14 = [v12 initWithRecordZoneIDs:allKeys configurationsByRecordZoneID:configurationsCopy];

  [v14 setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
  discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
  configuration = [v14 configuration];
  [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

  [v14 setDatabase:databaseCopy];
  [v14 setIc_cloudSession:sessionCopy];
  objc_initWeak(location, v14);
  [v14 setFetchAllChanges:1];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__48;
  v55[4] = __Block_byref_object_dispose__48;
  backgroundContext = [(ICCloudContext *)self backgroundContext];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke;
  aBlock[3] = &unk_278196298;
  aBlock[4] = self;
  aBlock[5] = v55;
  v17 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_4;
  v50[3] = &unk_2781990B8;
  v50[4] = self;
  objc_copyWeak(&v53, location);
  v18 = sessionCopy;
  v51 = v18;
  v52 = v55;
  [v14 setRecordWasChangedBlock:v50];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_5;
  v46[3] = &unk_2781990E0;
  v46[4] = self;
  objc_copyWeak(&v49, location);
  v19 = v18;
  v47 = v19;
  v48 = v55;
  [v14 setRecordWithIDWasDeletedBlock:v46];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_6;
  v41[3] = &unk_278199108;
  v41[4] = self;
  objc_copyWeak(&v45, location);
  v20 = v11;
  v42 = v20;
  v44 = v55;
  v21 = v17;
  v43 = v21;
  [v14 setRecordZoneChangeTokensUpdatedBlock:v41];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_7;
  v37[3] = &unk_278199130;
  v37[4] = self;
  objc_copyWeak(&v40, location);
  v39 = v55;
  v22 = v21;
  v38 = v22;
  [v14 setRecordZoneFetchCompletionBlock:v37];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_8;
  v32 = &unk_278199158;
  selfCopy = self;
  objc_copyWeak(&v36, location);
  v23 = v19;
  v34 = v23;
  v24 = v22;
  v35 = v24;
  [v14 setFetchRecordZoneChangesCompletionBlock:&v29];
  [v14 setShouldFetchAssetContents:{-[ICCloudContext supportsDeferredAssetDownload](self, "supportsDeferredAssetDownload", v29, v30, v31, v32, selfCopy) ^ 1}];
  v25 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [v14 ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    [ICCloudContext newOperationToFetchRecordZoneChangesWithZoneConfigurations:database:session:];
  }

  v26 = v35;
  v27 = v14;

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v40);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v49);

  objc_destroyWeak(&v53);
  _Block_object_dispose(v55, 8);

  objc_destroyWeak(location);
  return v27;
}

void __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_2;
  v7[3] = &unk_278194DE8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(*(v2 + 8) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_3;
  v4[3] = &unk_278194DE8;
  v6 = v2;
  v5 = v1;
  [v3 performBlockAndWait:v4];
}

uint64_t __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) ic_saveWithLogDescription:{@"%@", *(a1 + 32)}];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 reset];
}

void __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v7 fetchRecordZoneChangesOperation:WeakRetained recordWasChangedWithRecordID:v10 record:v9 error:v8 session:*(a1 + 40) context:*(*(*(a1 + 48) + 8) + 40)];
}

void __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v5 fetchRecordZoneChangesOperation:WeakRetained recordWasDeletedWithRecordID:v7 recordType:v6 session:*(a1 + 40) context:*(*(*(a1 + 48) + 8) + 40)];
}

uint64_t __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v5 fetchRecordZoneChangesOperation:WeakRetained zoneID:v7 accountID:*(a1 + 40) changeTokenUpdated:v6 context:*(*(*(a1 + 56) + 8) + 40)];

  v9 = *(*(a1 + 48) + 16);

  return v9();
}

uint64_t __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_7(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v9 fetchRecordZoneChangesOperation:WeakRetained completedFetchForZoneID:v12 serverChangeToken:v11 error:v10 context:*(*(*(a1 + 48) + 8) + 40)];

  v14 = *(*(a1 + 40) + 16);

  return v14();
}

void __94__ICCloudContext_newOperationToFetchRecordZoneChangesWithZoneConfigurations_database_session___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 fetchRecordZoneChangesOperationDidComplete:WeakRetained session:*(a1 + 40) error:v4];

  (*(*(a1 + 48) + 16))();
  v6 = *(a1 + 32);
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 informCloudAnalyticsDelegateForOperationDidEnd:v7 recordsByRecordID:MEMORY[0x277CBEC10] operationError:v4];

  v8 = [*(a1 + 32) cloudContextDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [*(a1 + 32) cloudContextDelegate];
    v10 = [v9 shouldSuppressUpdatingParticipantsOnShareChangeForCloudContext:*(a1 + 32)];

    if (v10)
    {
      return;
    }
  }

  else
  {
  }

  v11 = [ICParticipantUpdater alloc];
  v13 = [*(a1 + 32) backgroundContext];
  v12 = [(ICParticipantUpdater *)v11 initWithManagedObjectContext:v13];
  [(ICParticipantUpdater *)v12 updateWithCompletion:0];
}

- (void)fetchRecordZoneChangesOperation:(id)operation completedFetchForZoneID:(id)d serverChangeToken:(id)token error:(id)error context:(id)context
{
  operationCopy = operation;
  dCopy = d;
  tokenCopy = token;
  errorCopy = error;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __106__ICCloudContext_fetchRecordZoneChangesOperation_completedFetchForZoneID_serverChangeToken_error_context___block_invoke;
  v23[3] = &unk_278198BB0;
  v23[4] = self;
  v24 = operationCopy;
  v25 = errorCopy;
  v26 = dCopy;
  v27 = tokenCopy;
  v28 = contextCopy;
  v18 = contextCopy;
  v19 = tokenCopy;
  v20 = dCopy;
  v21 = errorCopy;
  v22 = operationCopy;
  dispatch_async(processingQueue, v23);
}

void __106__ICCloudContext_fetchRecordZoneChangesOperation_completedFetchForZoneID_serverChangeToken_error_context___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  v4 = [v2 accountIDForDatabase:v3];

  if (!*(a1 + 48))
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v33 = [*(a1 + 56) ic_loggingDescription];
      v34 = [*(a1 + 64) ic_loggingDescription];
      v35 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138413058;
      v42 = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v35;
      v47 = 2112;
      v48 = v4;
      _os_log_debug_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEBUG, "Fetched changes for record zone %@ %@ %@ in account ID %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  v5 = [*(a1 + 32) backgroundContext];
  v6 = [*(a1 + 48) code];
  if (v6 <= 20)
  {
    if (v6 != 3 && v6 != 20)
    {
      goto LABEL_23;
    }

    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 56) ic_loggingDescription];
      v15 = [*(a1 + 40) ic_loggingDescription];
      v16 = *(a1 + 48);
      *buf = 138413058;
      v42 = v14;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v4;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Non-fatal error fetching zone changes for zone %@ %@  in account ID %@: %@", buf, 0x2Au);
    }

    goto LABEL_20;
  }

  if (v6 == 28)
  {
    v17 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 56) ic_loggingDescription];
      v19 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138412802;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEFAULT, "User deleted zone %@ %@ in account ID %@", buf, 0x20u);
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) database];
    [v21 deleteServerChangeTokenForRecordZoneID:v20 databaseScope:objc_msgSend(v22 accountID:"databaseScope") context:{v4, v5}];

    v13 = [*(a1 + 32) cloudContextDelegate];
    [v13 cloudContext:*(a1 + 32) userDidDeleteRecordZoneWithID:*(a1 + 56) accountID:v4];
LABEL_20:

    goto LABEL_22;
  }

  if (v6 != 26)
  {
    if (v6 == 21)
    {
      v7 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 56) ic_loggingDescription];
        v9 = [*(a1 + 40) ic_loggingDescription];
        *buf = 138412802;
        v42 = v8;
        v43 = 2112;
        v44 = v9;
        v45 = 2112;
        v46 = v4;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Server change token expired for zone %@ %@ in account ID %@", buf, 0x20u);
      }

      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) database];
      [v11 deleteServerChangeTokenForRecordZoneID:v10 databaseScope:objc_msgSend(v12 accountID:"databaseScope") context:{v4, v5}];

LABEL_26:
      v23 = 1;
      goto LABEL_27;
    }

LABEL_23:
    v24 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v36 = [*(a1 + 56) ic_loggingDescription];
      v37 = [*(a1 + 40) ic_loggingDescription];
      v38 = *(a1 + 48);
      *buf = 138413058;
      v42 = v36;
      v43 = 2112;
      v44 = v37;
      v45 = 2112;
      v46 = v4;
      v47 = 2112;
      v48 = v38;
      _os_log_error_impl(&dword_214D51000, v24, OS_LOG_TYPE_ERROR, "Error fetching zone changes %@ %@ in account ID %@: %@", buf, 0x2Au);
    }

    goto LABEL_26;
  }

  [*(a1 + 32) receivedZoneNotFound:*(a1 + 56) operation:*(a1 + 40) context:v5];
LABEL_22:
  v23 = 0;
LABEL_27:

  v25 = [*(a1 + 32) accountZoneIDsFetchingChanges];
  [v25 ic_removeZoneID:*(a1 + 56) forAccountID:v4];

  if (v23)
  {
    v26 = [*(a1 + 56) zoneName];
    v27 = [v26 isEqualToString:*MEMORY[0x277CBC060]];

    if ((v27 & 1) == 0)
    {
      v28 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
      [v28 ic_addZoneID:*(a1 + 56) forAccountID:v4];

      [*(a1 + 32) startRetryTimerIfNecessaryWithError:*(a1 + 48)];
    }
  }

  [*(a1 + 32) saveZoneFetchState];
  v29 = *(a1 + 64);
  if (v29)
  {
    v30 = *(a1 + 56);
    v31 = *(a1 + 32);
    v32 = [*(a1 + 40) database];
    [v31 saveServerChangeToken:v29 forRecordZoneID:v30 databaseScope:objc_msgSend(v32 accountID:"databaseScope") context:{v4, *(a1 + 72)}];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__ICCloudContext_fetchRecordZoneChangesOperation_completedFetchForZoneID_serverChangeToken_error_context___block_invoke_602;
  block[3] = &unk_278194B00;
  v40 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __106__ICCloudContext_fetchRecordZoneChangesOperation_completedFetchForZoneID_serverChangeToken_error_context___block_invoke_602(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICCloudContextFetchRecordChangeOperationDidFinishNotification" object:*(a1 + 32)];
}

- (void)fetchRecordZoneChangesOperationDidComplete:(id)complete session:(id)session error:(id)error
{
  completeCopy = complete;
  sessionCopy = session;
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke;
  v15[3] = &unk_278195AC8;
  v15[4] = self;
  v16 = completeCopy;
  v17 = sessionCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = sessionCopy;
  v14 = completeCopy;
  dispatch_sync(processingQueue, v15);
}

void __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = a1 + 40;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) database];
  v5 = [v3 accountIDForDatabase:v4];

  v6 = *(v2 + 8);
  v7 = [*v2 metrics];
  [v6 operationEndedForPhase:1 metrics:v7 error:*(v2 + 16)];

  v8 = *(v2 + 16);
  if (!v8)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke_cold_2();
    }

    goto LABEL_14;
  }

  v9 = [v8 code];
  if (v9 == 20 || v9 == 3)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) ic_loggingDescription];
      v13 = *(a1 + 56);
      *buf = 138412802;
      v31 = v5;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEFAULT, "Non-fatal error fetching zone changes in account ID %@: %@: %@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke_cold_1();
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v23 = [*(a1 + 40) ic_loggingDescription];
    v24 = *(a1 + 56);
    *buf = 138412802;
    v31 = v5;
    v32 = 2112;
    v33 = v23;
    v34 = 2112;
    v35 = v24;
    _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "Error fetching zone changes in account ID %@: %@: %@", buf, 0x20u);
  }

  v14 = 1;
LABEL_15:

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [*v2 recordZoneIDs];
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        v21 = [*(a1 + 32) accountZoneIDsFetchingChanges];
        [v21 ic_removeZoneID:v20 forAccountID:v5];

        if (v14)
        {
          v22 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
          [v22 ic_addZoneID:v20 forAccountID:v5];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [*(a1 + 32) saveZoneFetchState];
  if (v14)
  {
    [*(a1 + 32) startRetryTimerIfNecessaryWithError:*(a1 + 56)];
  }
}

- (void)fetchRecordZoneChangesOperation:(id)operation recordWasChangedWithRecordID:(id)d record:(id)record error:(id)error session:(id)session context:(id)context
{
  operationCopy = operation;
  dCopy = d;
  recordCopy = record;
  errorCopy = error;
  sessionCopy = session;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__ICCloudContext_fetchRecordZoneChangesOperation_recordWasChangedWithRecordID_record_error_session_context___block_invoke;
  block[3] = &unk_278198B88;
  block[4] = self;
  v28 = operationCopy;
  v29 = recordCopy;
  v30 = sessionCopy;
  v31 = contextCopy;
  v32 = dCopy;
  v33 = errorCopy;
  v21 = errorCopy;
  v22 = dCopy;
  v23 = contextCopy;
  v24 = sessionCopy;
  v25 = recordCopy;
  v26 = operationCopy;
  dispatch_async(processingQueue, block);
}

void __108__ICCloudContext_fetchRecordZoneChangesOperation_recordWasChangedWithRecordID_record_error_session_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  v4 = [v2 accountIDForDatabase:v3];

  v5 = *(a1 + 48);
  v6 = os_log_create("com.apple.notes", "Cloud");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = [*(a1 + 48) ic_loggingDescription];
      v9 = [*(a1 + 40) ic_shortLoggingDescription];
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Record changed for account ID %@: %@ %@", &v13, 0x20u);
    }

    [*(a1 + 32) _ingestCloudKitRecord:*(a1 + 48) forAccountID:v4 forceMerge:0 session:*(a1 + 56) context:*(a1 + 64)];
  }

  else
  {
    if (v7)
    {
      v10 = [*(a1 + 72) ic_loggingDescription];
      v11 = *(a1 + 80);
      v12 = [*(a1 + 40) ic_shortLoggingDescription];
      v13 = 138413058;
      v14 = v4;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Error fetching record for account ID %@: %@ %@ %@", &v13, 0x2Au);
    }
  }
}

- (void)fetchRecordZoneChangesOperation:(id)operation recordWasDeletedWithRecordID:(id)d recordType:(id)type session:(id)session context:(id)context
{
  operationCopy = operation;
  dCopy = d;
  typeCopy = type;
  sessionCopy = session;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __106__ICCloudContext_fetchRecordZoneChangesOperation_recordWasDeletedWithRecordID_recordType_session_context___block_invoke;
  v23[3] = &unk_278198BB0;
  v24 = contextCopy;
  selfCopy = self;
  v26 = operationCopy;
  v27 = dCopy;
  v28 = sessionCopy;
  v29 = typeCopy;
  v18 = typeCopy;
  v19 = sessionCopy;
  v20 = dCopy;
  v21 = operationCopy;
  v22 = contextCopy;
  dispatch_async(processingQueue, v23);
}

void __106__ICCloudContext_fetchRecordZoneChangesOperation_recordWasDeletedWithRecordID_recordType_session_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__ICCloudContext_fetchRecordZoneChangesOperation_recordWasDeletedWithRecordID_recordType_session_context___block_invoke_2;
  v9[3] = &unk_278198BB0;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  [v2 performBlockAndWait:v9];
}

void __106__ICCloudContext_fetchRecordZoneChangesOperation_recordWasDeletedWithRecordID_recordType_session_context___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  v4 = [v2 accountIDForDatabase:v3];

  if ([ICUserSpecificRecordIDParser isUserSpecificRecordID:*(a1 + 48)])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v19 = [*(a1 + 48) ic_loggingDescription];
      v20 = [*(a1 + 40) ic_shortLoggingDescription];
      v23 = 138412802;
      v24 = v4;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_debug_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEBUG, "User-specific record was deleted in account ID %@: %@ %@", &v23, 0x20u);
    }

    v6 = [*(a1 + 32) existingCloudObjectForUserSpecificRecordID:*(a1 + 48) createPlaceholderIfNecessary:0 accountID:v4 context:*(a1 + 56)];
    v7 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = [v6 recordType];
    [v7 fetchedRecordWasDeleted:v8 type:v9];

    [v6 didDeleteUserSpecificRecordID:*(a1 + 48)];
LABEL_12:

    goto LABEL_13;
  }

  v10 = *MEMORY[0x277CBC050];
  v11 = [*(a1 + 72) isEqualToString:*MEMORY[0x277CBC050]];
  v12 = os_log_create("com.apple.notes", "Cloud");
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = [*(a1 + 48) ic_loggingDescription];
      v22 = [*(a1 + 40) ic_shortLoggingDescription];
      v23 = 138412802;
      v24 = v4;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "Record was deleted in account ID %@: %@ %@", &v23, 0x20u);
    }

    v6 = [*(a1 + 32) existingCloudObjectForRecordID:*(a1 + 48) recordType:*(a1 + 72) accountID:v4 context:*(a1 + 56)];
    v16 = *(a1 + 64);
    v17 = *(a1 + 48);
    v18 = [v6 recordType];
    [v16 fetchedRecordWasDeleted:v17 type:v18];

    [v6 objectWasDeletedFromCloudByAnotherDevice];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 48) ic_loggingDescription];
    v15 = [*(a1 + 40) ic_shortLoggingDescription];
    v23 = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Share was deleted in account ID %@: %@ %@", &v23, 0x20u);
  }

  [*(a1 + 64) fetchedRecordWasDeleted:*(a1 + 48) type:v10];
LABEL_13:
}

- (void)fetchRecordZoneChangesOperation:(id)operation zoneID:(id)d accountID:(id)iD changeTokenUpdated:(id)updated context:(id)context
{
  operationCopy = operation;
  dCopy = d;
  iDCopy = iD;
  updatedCopy = updated;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__ICCloudContext_fetchRecordZoneChangesOperation_zoneID_accountID_changeTokenUpdated_context___block_invoke;
  v23[3] = &unk_278198BB0;
  v24 = dCopy;
  v25 = updatedCopy;
  v26 = operationCopy;
  selfCopy = self;
  v28 = iDCopy;
  v29 = contextCopy;
  v18 = contextCopy;
  v19 = iDCopy;
  v20 = operationCopy;
  v21 = updatedCopy;
  v22 = dCopy;
  dispatch_async(processingQueue, v23);
}

void __94__ICCloudContext_fetchRecordZoneChangesOperation_zoneID_accountID_changeTokenUpdated_context___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__ICCloudContext_fetchRecordZoneChangesOperation_zoneID_accountID_changeTokenUpdated_context___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 48) database];
  [v5 saveServerChangeToken:v3 forRecordZoneID:v4 databaseScope:objc_msgSend(v6 accountID:"databaseScope") context:{*(a1 + 64), *(a1 + 72)}];
}

- (BOOL)shouldUpdateServerRecordForObject:(id)object withRecord:(id)record
{
  recordCopy = record;
  objectCopy = object;
  objc_opt_class();
  v8 = ICDynamicCast();

  if (!v8)
  {
    goto LABEL_8;
  }

  recordID = [recordCopy recordID];
  v10 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:recordID];

  if (!v10)
  {
    serverRecord = [v8 serverRecord];
    recordChangeTag = [serverRecord recordChangeTag];
    recordChangeTag2 = [recordCopy recordChangeTag];
    v19 = [recordChangeTag isEqualToString:recordChangeTag2];

    if (!v19)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  userSpecificServerRecord = [v8 userSpecificServerRecord];
  recordChangeTag3 = [userSpecificServerRecord recordChangeTag];
  recordChangeTag4 = [recordCopy recordChangeTag];
  v14 = [recordChangeTag3 isEqualToString:recordChangeTag4];

  if (v14)
  {
LABEL_6:
    if ([(ICCloudContext *)self supportsDeferredAssetDownload])
    {
      hasFetchedAssets = [recordCopy hasFetchedAssets];
      goto LABEL_9;
    }

LABEL_8:
    hasFetchedAssets = 0;
    goto LABEL_9;
  }

LABEL_4:
  hasFetchedAssets = 1;
LABEL_9:

  return hasFetchedAssets;
}

- (void)setAssetDownloadStateOnObject:(id)object withRecord:(id)record managedObjectContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v11 = ICDynamicCast();

  if (v11)
  {
    cloudAccount = [v11 cloudAccount];
    [ICAssetSignature mergeIncomingAssetsFromRecord:recordCopy forObject:v11 account:cloudAccount context:contextCopy];

    if ([(ICCloudContext *)self supportsDeferredAssetDownload])
    {
      hasUnfetchedAssets = [recordCopy hasUnfetchedAssets];
      hasFetchedAssets = [recordCopy hasFetchedAssets];
      v15 = [v11 isUnsupported] ^ 1;
      outOfDateCommonAssetSignatures = [v11 outOfDateCommonAssetSignatures];
      outOfDateUserSpecificAssetSignatures = [v11 outOfDateUserSpecificAssetSignatures];
      v18 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        ic_loggingDescription = [recordCopy ic_loggingDescription];
        ic_loggingDescription2 = [v11 ic_loggingDescription];
        isUnsupported = [v11 isUnsupported];
        *buf = 138413826;
        v28 = @"NO";
        v33 = ic_loggingDescription;
        if (isUnsupported)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        if (hasUnfetchedAssets)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        v34 = 2112;
        v35 = ic_loggingDescription2;
        v36 = 2112;
        if (hasFetchedAssets)
        {
          v28 = @"YES";
        }

        v37 = v29;
        v38 = 2112;
        v39 = v30;
        v40 = 2112;
        v41 = v28;
        v42 = 2112;
        v43 = outOfDateCommonAssetSignatures;
        v44 = 2112;
        v45 = outOfDateUserSpecificAssetSignatures;
        _os_log_debug_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEBUG, "[AssetDownload] setAssetDownloadStateOnObject:withRecord :: record %@ fetched for object %@. object.isUnsupported = %@, record.hasUnfetchedAssets = %@, record.hasFetchedAssets = %@, outOfDateCommonAssetKeys = %@, outOfDateUserSpecificAssetKeys = %@", buf, 0x48u);
      }

      v19 = v15 & hasUnfetchedAssets;

      if ([objc_opt_class() supportsUserSpecificRecords] && (objc_msgSend(recordCopy, "recordID"), v20 = objc_claimAutoreleasedReturnValue(), v21 = +[ICUserSpecificRecordIDParser isUserSpecificRecordID:](ICUserSpecificRecordIDParser, "isUserSpecificRecordID:", v20), v20, v21))
      {
        if (v19 && [v11 shouldAlwaysDownloadAssets])
        {
          hasOutOfDateUserSpecificAssetSignatures = [v11 hasOutOfDateUserSpecificAssetSignatures];
        }

        else
        {
          hasOutOfDateUserSpecificAssetSignatures = 0;
        }

        [v11 setNeedsToFetchUserSpecificRecordAssets:hasOutOfDateUserSpecificAssetSignatures];
      }

      else
      {
        if (v19)
        {
          if ([v11 shouldAlwaysDownloadAssets])
          {
            hasOutOfDateCommonAssetSignatures = [v11 hasOutOfDateCommonAssetSignatures];
          }

          else
          {
            hasOutOfDateCommonAssetSignatures = 0;
          }

          [v11 setNeedsToBeFetchedFromCloud:hasOutOfDateCommonAssetSignatures];
          v24 = [v11 hasPresentableContent] ^ 1;
        }

        else
        {
          [v11 setNeedsToBeFetchedFromCloud:0];
          v24 = 0;
        }

        [v11 setNeedsInitialFetchFromCloud:v24];
        v25 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudContext setAssetDownloadStateOnObject:withRecord:managedObjectContext:];
        }
      }
    }
  }
}

- (void)fetchDatabaseChangesForSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  sessionCopy = session;
  v8 = objc_opt_new();
  containersByAccountID = [(ICCloudContext *)self containersByAccountID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ICCloudContext_fetchDatabaseChangesForSession_completionHandler___block_invoke;
  v12[3] = &unk_278199180;
  v13 = v8;
  v10 = v8;
  [containersByAccountID enumerateKeysAndObjectsUsingBlock:v12];

  v11 = [v10 copy];
  [(ICCloudContext *)self fetchDatabaseChangesForDatabases:v11 session:sessionCopy completionHandler:handlerCopy];
}

void __67__ICCloudContext_fetchDatabaseChangesForSession_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __67__ICCloudContext_fetchDatabaseChangesForSession_completionHandler___block_invoke_cold_1();
  }

  v8 = *(a1 + 32);
  v9 = [v6 privateCloudDatabase];
  [v8 addObject:v9];

  v10 = *(a1 + 32);
  v11 = [v6 sharedCloudDatabase];

  [v10 addObject:v11];
}

- (void)fetchDatabaseChangesForDatabases:(id)databases session:(id)session completionHandler:(id)handler
{
  databasesCopy = databases;
  sessionCopy = session;
  handlerCopy = handler;
  v11 = MEMORY[0x277D36278];
  reason = [sessionCopy reason];
  [v11 postFetchDatabaseChangesTelemetryWithReason:reason];

  processingQueue = [(ICCloudContext *)self processingQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke;
  v17[3] = &unk_278195788;
  v18 = sessionCopy;
  v19 = databasesCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = databasesCopy;
  v16 = sessionCopy;
  dispatch_async(processingQueue, v17);
}

void __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke(id *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v27 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  v2 = [a1[4] reason];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [a1[4] reason];
    v5 = [@"FetchDatabaseChanges" stringByAppendingFormat:@"-%@", v4];

    v6 = v5;
  }

  else
  {
    v6 = @"FetchDatabaseChanges";
  }

  v25 = v6;
  [v27 setName:?];
  [v27 setQuantity:{objc_msgSend(a1[5], "count")}];
  [v27 setExpectedSendSize:1];
  [v27 setExpectedReceiveSize:1];
  v7 = [MEMORY[0x277CBEB18] array];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__48;
  v42[4] = __Block_byref_object_dispose__48;
  v43 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a1[5];
  v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v8)
  {
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = a1[6];
        v13 = a1[4];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_2;
        v37[3] = &unk_2781991A8;
        v37[4] = v12;
        v37[5] = v42;
        v14 = [v12 operationToFetchDatabaseChangesForDatabase:v11 session:v13 completionHandler:v37];
        [v14 setGroup:v27];
        [v7 addObject:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v8);
  }

  [a1[6] addOperations:v7];
  v15 = MEMORY[0x277CCA8C8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_4;
  v32[3] = &unk_2781991D0;
  v32[4] = a1[6];
  v16 = v7;
  v33 = v16;
  v34 = a1[4];
  v36 = v42;
  v35 = a1[7];
  v17 = [v15 blockOperationWithBlock:v32];
  [v17 setName:@"FetchDatabaseChanges-Completion"];
  [v17 ic_setResistsCancellation:1];
  [v17 setIc_cloudSession:a1[4]];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v19)
  {
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [v17 addDependency:*(*(&v28 + 1) + 8 * v21++)];
      }

      while (v19 != v21);
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v19);
  }

  v22 = a1[6];
  v44 = v17;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  [v22 addOperations:v23];

  v24 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [v27 ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_cold_1();
  }

  _Block_object_dispose(v42, 8);
}

void __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) processingQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_3;
    v5[3] = &unk_278194DE8;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_5;
  block[3] = &unk_2781991D0;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v6 = *(a1 + 56);
  v5 = v6;
  v11 = v6;
  dispatch_async(v2, block);
}

void __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) phaseEnded:0];
  }

  v2 = [objc_opt_class() errorFromErrors:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

- (id)operationToFetchDatabaseChangesForDatabase:(id)database session:(id)session completionHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  sessionCopy = session;
  handlerCopy = handler;
  v40 = databaseCopy;
  v11 = [(ICCloudContext *)self accountIDForDatabase:databaseCopy];
  backgroundContext = [(ICCloudContext *)self backgroundContext];
  v39 = [(ICCloudContext *)self serverChangeTokenForChangedZonesInDatabase:databaseCopy accountID:v11 context:backgroundContext];
  v13 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:v39];
  [v13 setQualityOfService:{-[ICCloudContext qualityOfService](self, "qualityOfService")}];
  discretionaryNetworkBehavior = [(ICCloudContext *)self discretionaryNetworkBehavior];
  configuration = [v13 configuration];
  [configuration setDiscretionaryNetworkBehavior:discretionaryNetworkBehavior];

  [v13 setDatabase:v40];
  [v13 setFetchAllChanges:1];
  [v13 setIc_cloudSession:sessionCopy];
  objc_initWeak(&location, v13);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke;
  v59[3] = &unk_2781991F8;
  v59[4] = self;
  objc_copyWeak(&v62, &location);
  v16 = v11;
  v60 = v16;
  v17 = sessionCopy;
  v61 = v17;
  [v13 setRecordZoneWithIDChangedBlock:v59];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_2;
  v55[3] = &unk_2781991F8;
  v55[4] = self;
  objc_copyWeak(&v58, &location);
  v18 = v16;
  v56 = v18;
  v19 = v17;
  v57 = v19;
  [v13 setRecordZoneWithIDWasDeletedBlock:v55];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_3;
  v51[3] = &unk_278199220;
  v51[4] = self;
  objc_copyWeak(&v54, &location);
  v20 = v18;
  v52 = v20;
  v21 = backgroundContext;
  v53 = v21;
  [v13 setChangeTokenUpdatedBlock:v51];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_4;
  v45[3] = &unk_278199248;
  v45[4] = self;
  objc_copyWeak(&v50, &location);
  v38 = v20;
  v46 = v38;
  v35 = v19;
  v47 = v35;
  v36 = handlerCopy;
  v49 = v36;
  v37 = v21;
  v48 = v37;
  [v13 setFetchDatabaseChangesCompletionBlock:v45];
  v22 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [v13 ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    [ICCloudContext operationToFetchDatabaseChangesForDatabase:session:completionHandler:];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  operationQueue = [(ICCloudContext *)self operationQueue];
  operations = [operationQueue operations];

  v25 = [operations countByEnumeratingWithState:&v41 objects:v68 count:16];
  if (v25)
  {
    v26 = *v42;
    do
    {
      v27 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(operations);
        }

        v28 = *(*(&v41 + 1) + 8 * v27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            ic_loggingDescription = [v13 ic_loggingDescription];
            ic_loggingDescription2 = [v28 ic_loggingDescription];
            *buf = 138412546;
            v65 = ic_loggingDescription;
            v66 = 2112;
            v67 = ic_loggingDescription2;
            _os_log_debug_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEBUG, "Database changes operation %@ will wait for %@", buf, 0x16u);
          }

          [v13 addDependency:v28];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [operations countByEnumeratingWithState:&v41 objects:v68 count:16];
    }

    while (v25);
  }

  v32 = v48;
  v33 = v13;

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v54);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v62);

  objc_destroyWeak(&location);

  return v33;
}

void __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 fetchDatabaseChangesOperation:WeakRetained recordZoneWithIDChanged:v4 accountID:*(a1 + 40) session:*(a1 + 48)];
}

void __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 fetchDatabaseChangesOperation:WeakRetained recordZoneWithIDWasDeleted:v4 accountID:*(a1 + 40) session:*(a1 + 48)];
}

void __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v3 fetchDatabaseChangesOperation:WeakRetained changeTokenUpdated:v4 accountID:*(a1 + 40) context:*(a1 + 48)];
}

void __87__ICCloudContext_operationToFetchDatabaseChangesForDatabase_session_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [v6 fetchDatabaseChangesOperation:WeakRetained finishedWithServerChangeToken:v8 accountID:*(a1 + 40) session:*(a1 + 48) error:v7 completionHandler:*(a1 + 64) context:*(a1 + 56)];

  v10 = *(a1 + 32);
  v11 = objc_loadWeakRetained((a1 + 72));
  [v10 informCloudAnalyticsDelegateForOperationDidEnd:v11 recordsByRecordID:MEMORY[0x277CBEC10] operationError:v7];
}

- (void)fetchDatabaseChangesOperation:(id)operation recordZoneWithIDChanged:(id)changed accountID:(id)d session:(id)session
{
  operationCopy = operation;
  changedCopy = changed;
  dCopy = d;
  sessionCopy = session;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDChanged_accountID_session___block_invoke;
  block[3] = &unk_278198F00;
  v20 = dCopy;
  v21 = changedCopy;
  v22 = operationCopy;
  v23 = sessionCopy;
  selfCopy = self;
  v15 = sessionCopy;
  v16 = operationCopy;
  v17 = changedCopy;
  v18 = dCopy;
  dispatch_async(processingQueue, block);
}

void __90__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDChanged_accountID_session___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDChanged_accountID_session___block_invoke_cold_1();
  }

  [*(a1 + 56) zoneWasChanged:*(a1 + 40)];
  v3 = [*(a1 + 40) zoneName];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBC060]];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 64) accountZoneIDsNeedingFetchChanges];
    [v5 ic_addZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

    [*(a1 + 64) saveZoneFetchState];
  }
}

- (void)fetchDatabaseChangesOperation:(id)operation recordZoneWithIDWasDeleted:(id)deleted accountID:(id)d session:(id)session
{
  operationCopy = operation;
  deletedCopy = deleted;
  dCopy = d;
  sessionCopy = session;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDWasDeleted_accountID_session___block_invoke;
  block[3] = &unk_278198F00;
  v20 = dCopy;
  v21 = deletedCopy;
  v22 = operationCopy;
  v23 = sessionCopy;
  selfCopy = self;
  v15 = sessionCopy;
  v16 = operationCopy;
  v17 = deletedCopy;
  v18 = dCopy;
  dispatch_async(processingQueue, block);
}

void __93__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDWasDeleted_accountID_session___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDWasDeleted_accountID_session___block_invoke_cold_1();
  }

  [*(a1 + 56) zoneWasDeleted:*(a1 + 40)];
  v3 = [*(a1 + 48) database];
  if ([v3 databaseScope] == 3)
  {
    v4 = [*(a1 + 40) ownerName];
    v5 = [v4 isEqualToString:*MEMORY[0x277CBBF28]];

    if (v5)
    {
      v6 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) ic_loggingDescription];
        v8 = [*(a1 + 48) ic_loggingDescription];
        v18 = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Callback for operation in shared database says private zone was deleted %@: %@", &v18, 0x16u);
      }

      [MEMORY[0x277D36278] postBasicEvent:11];
      return;
    }
  }

  else
  {
  }

  if ([*(a1 + 40) ic_isOwnedByCurrentUser])
  {
    v9 = [*(a1 + 40) zoneName];
    v10 = [v9 isEqualToString:*MEMORY[0x277CBC060]];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 64) accountZoneIDsNeedingFetchChanges];
      [v11 ic_addZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

      [*(a1 + 64) saveZoneFetchState];
    }
  }

  else
  {
    v12 = [*(a1 + 64) cloudContextDelegate];
    [v12 cloudContext:*(a1 + 64) sharedZoneWasDeleted:*(a1 + 40) accountID:*(a1 + 32)];

    v13 = [*(a1 + 64) accountZoneIDsNeedingFetchChanges];
    [v13 ic_removeZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

    [*(a1 + 64) saveZoneFetchState];
    v14 = [*(a1 + 64) backgroundContext];
    v15 = *(a1 + 64);
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) database];
    [v15 deleteServerChangeTokenForRecordZoneID:v16 databaseScope:objc_msgSend(v17 accountID:"databaseScope") context:{*(a1 + 32), v14}];
  }
}

- (void)fetchDatabaseChangesOperation:(id)operation changeTokenUpdated:(id)updated accountID:(id)d context:(id)context
{
  operationCopy = operation;
  updatedCopy = updated;
  dCopy = d;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ICCloudContext_fetchDatabaseChangesOperation_changeTokenUpdated_accountID_context___block_invoke;
  block[3] = &unk_278198F00;
  v20 = dCopy;
  v21 = updatedCopy;
  v22 = operationCopy;
  selfCopy = self;
  v24 = contextCopy;
  v15 = contextCopy;
  v16 = operationCopy;
  v17 = updatedCopy;
  v18 = dCopy;
  dispatch_async(processingQueue, block);
}

void __85__ICCloudContext_fetchDatabaseChangesOperation_changeTokenUpdated_accountID_context___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__ICCloudContext_fetchDatabaseChangesOperation_changeTokenUpdated_accountID_context___block_invoke_cold_1();
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) database];
  [v3 saveServerChangeToken:v4 forRecordZoneID:0 databaseScope:objc_msgSend(v5 accountID:"databaseScope") context:{*(a1 + 32), *(a1 + 64)}];
}

- (void)fetchDatabaseChangesOperation:(id)operation finishedWithServerChangeToken:(id)token accountID:(id)d session:(id)session error:(id)error completionHandler:(id)handler context:(id)context
{
  operationCopy = operation;
  tokenCopy = token;
  dCopy = d;
  sessionCopy = session;
  errorCopy = error;
  handlerCopy = handler;
  contextCopy = context;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke;
  v30[3] = &unk_278199270;
  v31 = errorCopy;
  v32 = dCopy;
  v33 = operationCopy;
  v34 = tokenCopy;
  selfCopy = self;
  v36 = contextCopy;
  v37 = sessionCopy;
  v38 = handlerCopy;
  v23 = handlerCopy;
  v24 = sessionCopy;
  v25 = contextCopy;
  v26 = tokenCopy;
  v27 = operationCopy;
  v28 = dCopy;
  v29 = errorCopy;
  dispatch_async(processingQueue, v30);
}

uint64_t __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 21)
    {
      v4 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = [*(a1 + 48) ic_loggingDescription];
        *v27 = 138412546;
        *&v27[4] = v5;
        *&v27[12] = 2112;
        *&v27[14] = v6;
        _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Database changes server change token expired for account %@, %@", v27, 0x16u);
      }

      v7 = *(a1 + 64);
      v8 = [*(a1 + 48) database];
      [v7 deleteServerChangeTokenForChangedZonesInDatabase:v8 accountID:*(a1 + 40) context:*(a1 + 72)];

LABEL_6:
      [*(a1 + 64) startRetryTimerIfNecessaryWithError:*(a1 + 32)];
      goto LABEL_19;
    }

    if ([*v3 code] == 20)
    {
      v13 = os_log_create("com.apple.notes", "Cloud");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
LABEL_18:

        goto LABEL_19;
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) ic_loggingDescription];
      *v27 = 138412546;
      *&v27[4] = v14;
      *&v27[12] = 2112;
      *&v27[14] = v15;
      v16 = "Operation to fetch database changes was cancelled for account %@, %@";
    }

    else
    {
      v17 = [*v3 code];
      v18 = os_log_create("com.apple.notes", "Cloud");
      v13 = v18;
      if (v17 != 3)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke_cold_1();
        }

        goto LABEL_6;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v19 = *(a1 + 40);
      v15 = [*(a1 + 48) ic_loggingDescription];
      *v27 = 138412546;
      *&v27[4] = v19;
      *&v27[12] = 2112;
      *&v27[14] = v15;
      v16 = "Operation to fetch database changes failed with no network connection for account %@, %@";
    }

    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, v16, v27, 0x16u);

    goto LABEL_18;
  }

  v9 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke_cold_2(a1);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 48) database];
    [v11 saveServerChangeToken:v10 forChangedZonesInDatabase:v12 accountID:*(a1 + 40) context:*(a1 + 72)];
  }

LABEL_19:
  if (*v3)
  {
    v20 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [*(a1 + 48) ic_loggingDescription];
      *v27 = 138412290;
      *&v27[4] = v21;
      _os_log_impl(&dword_214D51000, v20, OS_LOG_TYPE_INFO, "Error fetching database changes, canceling dependent operations: %@", v27, 0xCu);
    }

    v22 = [*(a1 + 64) operationQueue];
    v23 = [v22 iterativelyCancelDependentOperations:*(a1 + 48)];
  }

  v24 = *(a1 + 80);
  v25 = [*(a1 + 48) metrics];
  [v24 operationEndedForPhase:0 metrics:v25 error:*(a1 + 32)];

  result = *(a1 + 88);
  if (result)
  {
    return (*(result + 16))(result, *v3);
  }

  return result;
}

void __36__ICCloudContext_loadZoneFetchState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [objc_opt_class() zoneIDsFromZoneInfos:v5];

  v7 = [v6 mutableCopy];
  if ([v7 count])
  {
    v8 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

- (void)saveZoneFetchState
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __36__ICCloudContext_saveZoneFetchState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_opt_class() zoneInfosFromZoneIDs:v5];

  if ([v6 count])
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

void __36__ICCloudContext_saveZoneFetchState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [objc_opt_class() zoneInfosFromZoneIDs:v5];

  if ([v6 count])
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v10];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 arrayByAddingObjectsFromArray:v7];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
    }

    else
    {
      [*(a1 + 40) setObject:v6 forKeyedSubscript:v10];
    }
  }
}

- (void)clearZoneFetchState
{
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICCloudContext_clearZoneFetchState__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

uint64_t __37__ICCloudContext_clearZoneFetchState__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__ICCloudContext_clearZoneFetchState__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) accountZoneIDsFetchingChanges];
  [v4 removeAllObjects];

  return [*(a1 + 32) saveZoneFetchState];
}

+ (id)zoneInfosFromZoneIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = dsCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x277CBBF28];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        zoneName = [v10 zoneName];
        [dictionary setObject:zoneName forKeyedSubscript:@"ZoneName"];

        ownerName = [v10 ownerName];
        v14 = [ownerName isEqualToString:v8];

        if ((v14 & 1) == 0)
        {
          ownerName2 = [v10 ownerName];
          [dictionary setObject:ownerName2 forKeyedSubscript:@"OwnerName"];
        }

        [v4 addObject:dictionary];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)zoneIDsFromZoneInfos:(id)infos
{
  v21 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = infosCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v14 = *MEMORY[0x277CBBF28];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"ZoneName", v14}];
        v11 = [v9 objectForKeyedSubscript:@"OwnerName"];
        if (!v11)
        {
          v11 = v14;
        }

        v12 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v10 ownerName:v11];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)subscriptionForDatabase:(id)database
{
  v3 = MEMORY[0x277CCACA8];
  [database databaseScope];
  v4 = CKDatabaseScopeString();
  v5 = [v3 stringWithFormat:@"DatabaseSubscription-%@", v4];

  v6 = [objc_alloc(MEMORY[0x277CBC2A0]) initWithSubscriptionID:v5];
  v7 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  [v7 setShouldSendContentAvailable:1];
  [v6 setNotificationInfo:v7];

  return v6;
}

- (void)updateSubscriptionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(ICCloudContext *)self hasNoteContextOptions:1])
  {
    processingQueue = [(ICCloudContext *)self processingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke;
    v6[3] = &unk_2781957B0;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(processingQueue, v6);
  }

  else
  {
    [(ICCloudContext *)self setNeedsToUpdateSubscriptions:0];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) setNeedsToUpdateSubscriptions:0];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [*(a1 + 32) containersByAccountID];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_625;
  v37[3] = &unk_278199180;
  v5 = v3;
  v38 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v37];

  v6 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_2781992E8;
  aBlock[4] = *(a1 + 32);
  v7 = v5;
  v34 = v7;
  v24 = v6;
  v35 = v24;
  v36 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v7;
  obj = [v7 copy];
  v9 = [obj countByEnumeratingWithState:&v29 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [*(a1 + 32) subscriptionForDatabase:{v13, v24}];
        v15 = [*(a1 + 32) subscribedSubscriptionIDs];
        v16 = [v14 subscriptionID];
        v17 = [v15 containsObject:v16];

        v18 = os_log_create("com.apple.notes", "Cloud");
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17)
        {
          if (v19)
          {
            [v13 databaseScope];
            v22 = CKDatabaseScopeString();
            v23 = [v14 subscriptionID];
            *buf = 138412546;
            v41 = v22;
            v42 = 2112;
            v43 = v23;
            _os_log_debug_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEBUG, "Not fetching subscriptions for %@, already subscribed to %@", buf, 0x16u);
          }

          v8[2](v8, v13, 0);
        }

        else
        {
          if (v19)
          {
            __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_cold_2(v39, v14);
          }

          v20 = *(a1 + 32);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_627;
          v27[3] = &unk_278199310;
          v21 = v8;
          v27[4] = v13;
          v28 = v21;
          [v20 saveSubscriptionsForDatabase:v13 completionHandler:v27];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v44 count:16];
    }

    while (v10);
  }
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_625(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 privateCloudDatabase];
  [v4 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [v5 sharedCloudDatabase];

  [v7 addObject:v8];
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] processingQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_3;
  v12[3] = &unk_278198AC0;
  v13 = a1[5];
  v14 = v5;
  v15 = v6;
  v8 = a1[6];
  v9 = a1[4];
  v16 = v8;
  v17 = v9;
  v18 = a1[7];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [*(a1 + 56) addObject:?];
  }

  if (![*(a1 + 32) count])
  {
    v3 = [objc_opt_class() errorFromErrors:*(a1 + 56)];
    [*(a1 + 64) setNeedsToUpdateSubscriptions:v3 != 0];
    v2 = *(a1 + 72);
    if (v2)
    {
      (*(v2 + 16))(v2, v3);
    }

    if (*(a1 + 48))
    {
      [*(a1 + 64) startRetryTimerIfNecessaryWithError:?];
    }
  }
}

- (void)fetchSubscriptionsForDatabase:(id)database completionHandler:(id)handler
{
  databaseCopy = database;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke;
  block[3] = &unk_278196690;
  v12 = databaseCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = databaseCopy;
  v10 = handlerCopy;
  dispatch_async(processingQueue, block);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) newSessionForReason:@"FetchSubscriptions"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278198BD8;
  v4 = v2[2];
  v5 = *v2;
  v25 = v4;
  aBlock[4] = v5;
  v6 = v3;
  v24 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x277CBC418] fetchAllSubscriptionsOperation];
  [v8 setQualityOfService:{objc_msgSend(*v2, "qualityOfService")}];
  v9 = [*v2 discretionaryNetworkBehavior];
  v10 = [v8 configuration];
  [v10 setDiscretionaryNetworkBehavior:v9];

  [v8 setDatabase:*(a1 + 40)];
  [v8 setIc_cloudSession:v6];
  objc_initWeak(&location, v8);
  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [v8 ic_loggingDescription];
    objc_claimAutoreleasedReturnValue();
    __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_cold_1();
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_632;
  v18 = &unk_278199338;
  objc_copyWeak(&v21, &location);
  v19 = *(a1 + 32);
  v12 = v7;
  v20 = v12;
  [v8 setFetchSubscriptionCompletionBlock:&v15];
  v13 = *(a1 + 32);
  v26[0] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{1, v15, v16, v17, v18, v19}];
  [v13 addOperations:v14];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_3;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_632(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633;
  block[3] = &unk_278198A98;
  v14 = v5;
  v15 = WeakRetained;
  v9 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v6;
  v18 = v9;
  v10 = v6;
  v11 = WeakRetained;
  v12 = v5;
  dispatch_async(v8, block);
}

uint64_t __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v17 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v7 subscriptionID];
          v12 = [*(a1 + 40) ic_loggingDescription];
          *buf = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Fetched subscription %@ %@", buf, 0x16u);

          v2 = v17;
        }

        v9 = [*(a1 + 48) subscribedSubscriptionIDs];
        v10 = [v7 subscriptionID];
        [v9 addObject:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  v13 = *(a1 + 56);
  v14 = os_log_create("com.apple.notes", "Cloud");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633_cold_1();
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633_cold_2(a1);
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)saveSubscriptionsForDatabase:(id)database completionHandler:(id)handler
{
  databaseCopy = database;
  handlerCopy = handler;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke;
  block[3] = &unk_278194E38;
  block[4] = self;
  v12 = databaseCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = databaseCopy;
  dispatch_async(processingQueue, block);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = a1 + 40;
  v4 = [*(a1 + 32) subscriptionForDatabase:*(a1 + 40)];
  v5 = [*v2 subscribedSubscriptionIDs];
  v6 = [v4 subscriptionID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_cold_2(v3, v4);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    v10 = [*(a1 + 32) newSessionForReason:@"SaveSubscriptions"];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_637;
    aBlock[3] = &unk_278198BD8;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v36 = v11;
    aBlock[4] = v12;
    v13 = v10;
    v35 = v13;
    v14 = _Block_copy(aBlock);
    v15 = objc_alloc(MEMORY[0x277CBC4B0]);
    v38[0] = v4;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

    [v17 setQualityOfService:{objc_msgSend(*(a1 + 32), "qualityOfService")}];
    v18 = [*(a1 + 32) discretionaryNetworkBehavior];
    v19 = [v17 configuration];
    [v19 setDiscretionaryNetworkBehavior:v18];

    [v17 setDatabase:*(a1 + 40)];
    [v17 setIc_cloudSession:v13];
    objc_initWeak(&location, v17);
    v20 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    [v20 setName:@"SaveSubscriptions"];
    v21 = [v17 subscriptionsToSave];
    [v20 setQuantity:{objc_msgSend(v21, "count")}];

    [v20 setExpectedSendSize:1];
    [v20 setExpectedReceiveSize:1];
    [v17 setGroup:v20];
    v22 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [v4 subscriptionID];
      objc_claimAutoreleasedReturnValue();
      [v17 ic_loggingDescription];
      objc_claimAutoreleasedReturnValue();
      __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_cold_1();
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_639;
    v29 = &unk_278199360;
    objc_copyWeak(&v32, &location);
    v30 = *(a1 + 32);
    v23 = v14;
    v31 = v23;
    [v17 setModifySubscriptionsCompletionBlock:&v26];
    v24 = *(a1 + 32);
    v37 = v17;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:{1, v26, v27, v28, v29, v30}];
    [v24 addOperations:v25];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_637(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2;
  v7[3] = &unk_278194AD8;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_639(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640;
  block[3] = &unk_278198A98;
  v16 = v7;
  v17 = WeakRetained;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v6;
  v19 = v10;
  v20 = v11;
  v12 = v6;
  v13 = WeakRetained;
  v14 = v7;
  dispatch_async(v9, block);
}

uint64_t __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.notes", "Cloud");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640_cold_2(a1);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v16 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          v10 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v9 subscriptionID];
            v14 = [*(a1 + 40) ic_loggingDescription];
            *buf = 138412546;
            v22 = v13;
            v23 = 2112;
            v24 = v14;
            _os_log_debug_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEBUG, "Saved subscription %@ %@", buf, 0x16u);

            v4 = v16;
          }

          v11 = [*(a1 + 56) subscribedSubscriptionIDs];
          v12 = [v9 subscriptionID];
          [v11 addObject:v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v6);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)clearSubscribedSubscriptionIDs
{
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICCloudContext_clearSubscribedSubscriptionIDs__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

void __48__ICCloudContext_clearSubscribedSubscriptionIDs__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, OS_LOG_TYPE_INFO, "Clearing subscribed subscription IDs", v4, 2u);
  }

  v3 = [*(a1 + 32) subscribedSubscriptionIDs];
  [v3 removeAllObjects];
}

- (void)updateCloudContextStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke;
  block[3] = &unk_2781993D8;
  block[4] = self;
  v8 = completionCopy;
  v9 = v10;
  v6 = completionCopy;
  dispatch_async(processingQueue, block);

  _Block_object_dispose(v10, 8);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) isDisabled] & 1) != 0 || objc_msgSend(*v2, "isDisabledInternal"))
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Not updating cloud context state because it's disabled", buf, 2u);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, *(*(*(a1 + 48) + 8) + 24));
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_653;
    v9[3] = &unk_278199400;
    v9[4] = v6;
    v8 = *(a1 + 40);
    v7 = v8;
    v10 = v8;
    [v6 updateAccountStatusWithCompletionHandler:v9];
  }
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_653(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2;
  block[3] = &unk_278198848;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewContext];

  if (!v2)
  {
    goto LABEL_19;
  }

  if ([*(a1 + 32) syncOnlyIfReachable] && (objc_msgSend(*(a1 + 32), "isInForeground") & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v6 = "No longer in foreground after updating cloud context state";
      goto LABEL_17;
    }

LABEL_18:

LABEL_19:
    v8 = [*(a1 + 32) processingSelectorDelayer];
    [v8 cancelPreviousFireRequests];

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, *(*(*(a1 + 48) + 8) + 24));
    }

    return;
  }

  if ([*(a1 + 32) syncOnlyIfReachable] && (objc_msgSend(*(a1 + 32), "isInternetReachable") & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v6 = "No longer reachable after updating cloud context state";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (([*(a1 + 32) isReadyToSync] & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) readinessLoggingDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Not ready to sync after updating cloud context state: %@", &buf, 0xCu);
    }

    goto LABEL_18;
  }

  v3 = [*(a1 + 32) isDisabled];
  v4 = os_log_create("com.apple.notes", "Cloud");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v6 = "Syncing is disabled, will not sync after updating account status";
LABEL_17:
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, v6, &buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2_cold_1();
  }

  [*(a1 + 32) enqueueLongLivedOperationsIfNeededWithCompletionHandler:0];
  if ([*(a1 + 32) needsToUpdateSubscriptions])
  {
    [*(a1 + 32) updateSubscriptionsWithCompletionHandler:0];
  }

  v10 = dispatch_group_create();
  v11 = [*(a1 + 32) containersByAccountID];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_654;
  v27[3] = &unk_2781993B0;
  v12 = v10;
  v13 = *(a1 + 32);
  v28 = v12;
  v29 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:v27];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x2020000000;
  v32 = 0;
  v14 = [*(a1 + 32) backgroundContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_657;
  v24[3] = &unk_278194D68;
  v15 = v14;
  v25 = v15;
  p_buf = &buf;
  [v15 performBlockAndWait:v24];

  if (*(*(&buf + 1) + 24) == 1)
  {
    [*(a1 + 32) syncWithReason:@"UpdateContextState" completionHandler:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v16 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_661;
  block[3] = &unk_2781993D8;
  v21 = v12;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v22 = v17;
  v23 = v18;
  v19 = v12;
  dispatch_async(v16, block);

  _Block_object_dispose(&buf, 8);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_654(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2_655;
  v10[3] = &unk_278199388;
  v10[4] = v8;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  [v8 fetchUserRecordWithContainer:v7 completionHandler:v10];
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2_655(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3;
  block[3] = &unk_278198F00;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.notes", "Cloud");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3_cold_1();
    }
  }

  else
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3_cold_2(a1);
    }
  }

  if (*(a1 + 40))
  {
    v6 = [*(a1 + 48) cloudContextDelegate];
    [v6 cloudContext:*(a1 + 48) didFetchUserRecord:*(a1 + 40) accountID:*(a1 + 56)];
  }

  dispatch_group_leave(*(a1 + 64));
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_657(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [ICAccount allActiveCloudKitAccountsInContext:*(a1 + 32), 0];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 serverChangeTokens];
        v9 = [v8 count];

        if (!v9)
        {
          v10 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_657_cold_1(v7);
          }

          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

uint64_t __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_661(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)enqueueLongLivedOperationsIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (-[ICCloudContext isEnqueueingLongLivedOperations](self, "isEnqueueingLongLivedOperations") || -[ICCloudContext didEnqueueLongLivedOperations](self, "didEnqueueLongLivedOperations") || (-[ICCloudContext setEnqueueingLongLivedOperations:](self, "setEnqueueingLongLivedOperations:", 1), -[ICCloudContext containersByAccountID](self, "containersByAccountID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, !v6))
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v7 = dispatch_group_create();
    containersByAccountID = [(ICCloudContext *)self containersByAccountID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke;
    v13[3] = &unk_2781993B0;
    v14 = v7;
    selfCopy = self;
    v9 = v7;
    [containersByAccountID enumerateKeysAndObjectsUsingBlock:v13];

    processingQueue = [(ICCloudContext *)self processingQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2_664;
    v11[3] = &unk_2781957B0;
    v11[4] = self;
    v12 = handlerCopy;
    dispatch_group_notify(v9, processingQueue, v11);
  }
}

void __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_group_enter(*(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_278199428;
  v9 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v4;
  [v7 fetchAllLongLivedOperationIDsWithCompletionHandler:v8];
}

void __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2_cold_1();
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_662;
    v9[3] = &unk_278194B00;
    v8 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v8 enqueueLongLivedOperationsWithIDsIfNeeded:a2 container:v7 completionHandler:v9];
  }
}

uint64_t __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2_664(uint64_t a1)
{
  [*(a1 + 32) setDidEnqueueLongLivedOperations:1];
  [*(a1 + 32) setEnqueueingLongLivedOperations:0];
  v2 = [*(a1 + 32) operationIDsBeforeEnqueuingLongLivedOperations];
  [v2 removeAllObjects];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)enqueueLongLivedOperationsWithIDsIfNeeded:(id)needed container:(id)container completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  containerCopy = container;
  handlerCopy = handler;
  v10 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = neededCopy;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        dispatch_group_enter(v10);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke;
        v23[3] = &unk_278199450;
        v23[4] = self;
        v16 = containerCopy;
        v24 = v16;
        v25 = v15;
        v26 = v10;
        [v16 fetchLongLivedOperationWithID:v15 completionHandler:v23];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  processingQueue = [(ICCloudContext *)self processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_671;
  block[3] = &unk_278195F28;
  v22 = handlerCopy;
  v18 = handlerCopy;
  dispatch_group_notify(v10, processingQueue, block);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = [*(a1 + 32) operationQueue];
  v9 = [v8 operations];
  v10 = [v9 ic_compactMap:&__block_literal_global_666];
  v11 = [v7 setWithArray:v10];

  if (v6)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_1();
    }

LABEL_4:
    v13 = v12;
    goto LABEL_5;
  }

  if (!v5)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_6();
    }

    goto LABEL_4;
  }

  if ([v11 containsObject:*(a1 + 48)])
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_5();
    }

    goto LABEL_4;
  }

  v14 = [*(a1 + 32) operationIDsBeforeEnqueuingLongLivedOperations];
  v15 = [v14 containsObject:*(a1 + 48)];

  if (v15)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_4();
    }

    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = os_log_create("com.apple.notes", "Cloud");
  v17 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if ((isKindOfClass & 1) == 0)
  {
    if (v17)
    {
      __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_2();
    }

    goto LABEL_4;
  }

  if (v17)
  {
    __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_3();
  }

  v13 = [*(a1 + 32) newSessionForReason:@"LongLivedOperation"];
  v18 = v5;
  [v18 setIc_cloudSession:v13];
  [*(a1 + 32) addCallbackBlocksToModifyRecordsOperation:v18 rootRecordIDsByShareID:0 session:v13];
  v19 = *(a1 + 32);
  v20[0] = v18;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v19 addOperations:v12];

LABEL_5:
  dispatch_group_leave(*(a1 + 56));
}

id __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 operationID];

  return v4;
}

uint64_t __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_671(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)incrementRetryCountForOperationType:(id)type
{
  typeCopy = type;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICCloudContext_incrementRetryCountForOperationType___block_invoke;
  v7[3] = &unk_278194AD8;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_async(processingQueue, v7);
}

void __54__ICCloudContext_incrementRetryCountForOperationType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) retryCountsByOperationType];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  v5 = &unk_282747D48;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 unsignedIntegerValue] + 1;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = 138412802;
    v13 = v11;
    v14 = 1024;
    v15 = [v6 unsignedIntegerValue];
    v16 = 1024;
    v17 = v7;
    _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Incrementing retry count for %@ from %d to %d", &v12, 0x18u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [*(a1 + 32) retryCountsByOperationType];
  [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];
}

- (void)clearRetryCountForOperationType:(id)type
{
  typeCopy = type;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICCloudContext_clearRetryCountForOperationType___block_invoke;
  v7[3] = &unk_278194AD8;
  v8 = typeCopy;
  selfCopy = self;
  v6 = typeCopy;
  dispatch_async(processingQueue, v7);
}

void __50__ICCloudContext_clearRetryCountForOperationType___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__ICCloudContext_clearRetryCountForOperationType___block_invoke_cold_1();
  }

  v3 = [*(a1 + 40) retryCountsByOperationType];
  [v3 removeObjectForKey:*(a1 + 32)];
}

- (void)incrementOrClearRetryCountForOperationType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  if (errorCopy)
  {
    if (([objc_opt_class() shouldIgnoreErrorForBackoffTimer:errorCopy] & 1) == 0)
    {
      [(ICCloudContext *)self incrementRetryCountForOperationType:typeCopy];
    }
  }

  else
  {
    [(ICCloudContext *)self clearRetryCountForOperationType:typeCopy];
  }
}

+ (BOOL)shouldIgnoreErrorForBackoffTimer:(id)timer
{
  timerCopy = timer;
  if ([timerCopy code] == 2)
  {
    userInfo = [timerCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    allValues = [v6 allValues];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ICCloudContext_shouldIgnoreErrorForBackoffTimer___block_invoke;
    v12[3] = &__block_descriptor_40_e24_B32__0__NSError_8Q16_B24l;
    v12[4] = self;
    v8 = [allValues ic_containsObjectPassingTest:v12];
  }

  else
  {
    errorCodesToIgnoreForBackoffTimer = [self errorCodesToIgnoreForBackoffTimer];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(timerCopy, "code")}];
    v8 = [errorCodesToIgnoreForBackoffTimer containsObject:v10];
  }

  return v8;
}

- (void)startRetryTimerIfNecessaryWithError:(id)error
{
  errorCopy = error;
  processingQueue = [(ICCloudContext *)self processingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke;
  v7[3] = &unk_278194AD8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(processingQueue, v7);
}

void __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) syncOnlyIfReachable] && (objc_msgSend(*(a1 + 32), "isInternetReachable") & 1) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Not retrying because we have no internet connection", &buf, 2u);
    }
  }

  else if ([*(a1 + 32) isReadyToSync])
  {
    v2 = [*(a1 + 32) disableRetryTimer];
    v3 = os_log_create("com.apple.notes", "Cloud");
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Not starting retry timer because disableRetryTimer has been set.", &buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_cold_1();
      }

      [*(a1 + 32) timeIntervalToRetryAfterFromError:*(a1 + 40)];
      v9 = v8;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v17 = 0x2020000000;
      v18 = 0;
      v10 = [*(a1 + 32) retryCountsByOperationType];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_683;
      v15[3] = &unk_278199498;
      v15[4] = &buf;
      [v10 enumerateKeysAndObjectsUsingBlock:v15];

      v11 = (*(*(&buf + 1) + 24) + 1) * (*(*(&buf + 1) + 24) + 1);
      v12 = fmin(v11 + v11, 273.0);
      if (v12 > v9)
      {
        v13 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_cold_2();
        }

        v9 = v12;
      }

      if (v9 > 0.0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_685;
        block[3] = &unk_278196CD8;
        block[4] = *(a1 + 32);
        *&block[5] = v9;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) readinessLoggingDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Not retrying because we're not ready: %@", &buf, 0xCu);
    }
  }
}

unint64_t __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_683(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a3 unsignedIntegerValue];
  if (v4 <= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_685(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) retryTimer];
  if (!v2 || (v3 = v2, [*(a1 + 32) retryTimer], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isValid"), v4, v3, (v5 & 1) == 0))
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Retrying operations after %ds", v9, 8u);
    }

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_retryOperationsIfNecessary selector:0 userInfo:0 repeats:*(a1 + 40)];
    [*(a1 + 32) setRetryTimer:v8];
  }
}

- (void)retryOperationsIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ICCloudContext_retryOperationsIfNecessary__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  processingQueue = [(ICCloudContext *)self processingQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  dispatch_async(processingQueue, v4);
}

uint64_t __44__ICCloudContext_retryOperationsIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retryTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setRetryTimer:0];
}

void __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) syncOnlyIfReachable] && (objc_msgSend(*v1, "isInternetReachable") & 1) == 0)
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2_cold_1();
    }
  }

  else
  {
    v2 = [*v1 isReadyToSync];
    v3 = os_log_create("com.apple.notes", "Cloud");
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Retrying operations", buf, 2u);
      }

      objc_initWeak(buf, *v1);
      if ([*v1 needsToUpdateSubscriptions])
      {
        v5 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v23 = 0;
          _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Retrying to update subscriptions", v23, 2u);
        }

        v6 = *v1;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_689;
        v21[3] = &unk_2781994C0;
        objc_copyWeak(&v22, buf);
        [v6 updateSubscriptionsWithCompletionHandler:v21];
        objc_destroyWeak(&v22);
      }

      v7 = objc_opt_class();
      v8 = [*v1 accountZoneIDsNeedingToBeSaved];
      LODWORD(v7) = [v7 haveZoneIDsInAccountZoneIDs:v8];

      if (v7)
      {
        v9 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v23 = 0;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Retrying to save record zones", v23, 2u);
        }

        v10 = [*v1 containersByAccountID];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_693;
        v20[3] = &unk_278199180;
        v20[4] = *v1;
        [v10 enumerateKeysAndObjectsUsingBlock:v20];
      }

      v11 = objc_opt_class();
      v12 = [*v1 accountZoneIDsNeedingFetchChanges];
      LODWORD(v11) = [v11 haveZoneIDsInAccountZoneIDs:v12];

      if (v11)
      {
        v13 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *v23 = 0;
          _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Retrying to fetch record zone changes", v23, 2u);
        }

        [*v1 fetchRecordZoneChangesWithReason:@"RetryOperations" completionHandler:0];
      }

      v14 = [*v1 objectIDsToProcess];
      if ([v14 count])
      {
      }

      else
      {
        v17 = [*v1 objectIDsToRetry];
        v18 = [v17 count];

        if (!v18)
        {
LABEL_30:
          objc_destroyWeak(buf);
          return;
        }
      }

      v19 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_214D51000, v19, OS_LOG_TYPE_INFO, "Retrying to process changes", v23, 2u);
      }

      [*v1 processPendingCloudObjects];
      goto LABEL_30;
    }

    v15 = v3;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2_cold_2(v1);
    }
  }
}

void __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_689(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained incrementOrClearRetryCountForOperationType:@"Subscriptions" error:v3];
}

void __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_693(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) operationToSaveZonesIfNecessaryForAccountID:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v7[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 addOperations:v6];
  }
}

- (void)saveServerChangeToken:(id)token forRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v15 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    ic_loggingDescription = [dCopy ic_loggingDescription];
    v21 = ic_loggingDescription;
    if (ic_loggingDescription)
    {
      v22 = ic_loggingDescription;
    }

    else
    {
      v22 = @"zone changes";
    }

    v23 = CKDatabaseScopeString();
    ic_loggingDescription2 = [tokenCopy ic_loggingDescription];
    *buf = 138412802;
    v32 = v22;
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = ic_loggingDescription2;
    _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Saving server change token for %@ %@: %@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__ICCloudContext_saveServerChangeToken_forRecordZoneID_databaseScope_accountID_context___block_invoke;
  v25[3] = &unk_2781994E8;
  v26 = iDCopy;
  v27 = contextCopy;
  v29 = tokenCopy;
  scopeCopy = scope;
  v28 = dCopy;
  v16 = tokenCopy;
  v17 = dCopy;
  v18 = contextCopy;
  v19 = iDCopy;
  [v18 performBlockAndWait:v25];
}

void __88__ICCloudContext_saveServerChangeToken_forRecordZoneID_databaseScope_accountID_context___block_invoke(uint64_t a1)
{
  v2 = [ICAccount accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v2)
  {
    v3 = [ICServerChangeToken serverChangeTokenForAccount:v2 zoneID:*(a1 + 48) databaseScope:*(a1 + 64) context:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      [v3 setCkServerChangeToken:*(a1 + 56)];
    }

    else
    {
      v5 = [ICServerChangeToken addServerChangeTokenForAccount:v2 ckServerChangeToken:*(a1 + 56) zoneID:*(a1 + 48) databaseScope:*(a1 + 64) context:*(a1 + 40)];
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__ICCloudContext_saveServerChangeToken_forRecordZoneID_databaseScope_accountID_context___block_invoke_cold_1();
    }
  }

  [*(a1 + 40) ic_saveWithLogDescription:@"saving server change token"];
}

- (id)serverChangeTokenForRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__48;
  v27 = __Block_byref_object_dispose__48;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__ICCloudContext_serverChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke;
  v17[3] = &unk_278199510;
  v12 = iDCopy;
  v18 = v12;
  v13 = contextCopy;
  v19 = v13;
  v14 = dCopy;
  v21 = &v23;
  scopeCopy = scope;
  v20 = v14;
  [v13 performBlockAndWait:v17];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __83__ICCloudContext_serverChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke(void *a1)
{
  v2 = [ICAccount accountWithIdentifier:a1[4] context:a1[5]];
  if (v2)
  {
    v3 = [ICServerChangeToken serverChangeTokenForAccount:v2 zoneID:a1[6] databaseScope:a1[8] context:a1[5]];
    v4 = [v3 ckServerChangeToken];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__ICCloudContext_serverChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke_cold_1();
    }
  }
}

- (void)deleteServerChangeTokenForRecordZoneID:(id)d databaseScope:(int64_t)scope accountID:(id)iD context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__ICCloudContext_deleteServerChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke;
  v16[3] = &unk_278199538;
  v17 = iDCopy;
  v18 = contextCopy;
  v19 = dCopy;
  scopeCopy = scope;
  v13 = dCopy;
  v14 = contextCopy;
  v15 = iDCopy;
  [v14 performBlockAndWait:v16];
}

void __89__ICCloudContext_deleteServerChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke(uint64_t a1)
{
  v2 = [ICAccount accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v2)
  {
    v3 = [ICServerChangeToken serverChangeTokenForAccount:v2 zoneID:*(a1 + 48) databaseScope:*(a1 + 56) context:*(a1 + 40)];
    if (v3)
    {
      [*(a1 + 40) deleteObject:v3];
      [v2 removeServerChangeTokensObject:v3];
      [*(a1 + 40) ic_saveWithLogDescription:@"deleting server change token"];
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__ICCloudContext_serverChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke_cold_1();
    }
  }
}

- (void)deleteAllServerChangeTokens
{
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Deleting all server change tokens", buf, 2u);
  }

  backgroundContext = [(ICCloudContext *)self backgroundContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ICCloudContext_deleteAllServerChangeTokens__block_invoke;
  v6[3] = &unk_278194B00;
  v7 = backgroundContext;
  v5 = backgroundContext;
  [v5 performBlockAndWait:v6];
}

uint64_t __45__ICCloudContext_deleteAllServerChangeTokens__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [ICAccount allActiveCloudKitAccountsInContext:*(a1 + 32)];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v6 serverChangeTokens];
        v8 = [v7 copy];

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              [*(a1 + 32) deleteObject:v13];
              [v6 removeServerChangeTokensObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) ic_saveWithLogDescription:@"deleting all server change tokens"];
}

- (void)saveServerChangeToken:(id)token forChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  tokenCopy = token;
  -[ICCloudContext saveServerChangeToken:forRecordZoneID:databaseScope:accountID:context:](self, "saveServerChangeToken:forRecordZoneID:databaseScope:accountID:context:", tokenCopy, 0, [database databaseScope], dCopy, contextCopy);
}

- (void)deleteServerChangeTokenForChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  -[ICCloudContext deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:](self, "deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:", 0, [database databaseScope], dCopy, contextCopy);
}

- (id)serverChangeTokenForChangedZonesInDatabase:(id)database accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v10 = -[ICCloudContext serverChangeTokenForRecordZoneID:databaseScope:accountID:context:](self, "serverChangeTokenForRecordZoneID:databaseScope:accountID:context:", 0, [database databaseScope], dCopy, contextCopy);

  return v10;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICCloudContext *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/Shared/CloudKit/ICCloudContext.m"]& 1) != 0)
  {
    v13 = [(ICCloudContext *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == compoundliteral_1 && (v13 & 1) == 0)
    {
      v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      unsignedIntegerValue = [v14 unsignedIntegerValue];

      v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      if (!unsignedIntegerValue && unsignedIntegerValue2 || unsignedIntegerValue && !unsignedIntegerValue2)
      {
        v18 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__ICCloudContext_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_278194B00;
        block[4] = self;
        dispatch_async(v18, block);
      }

      processingQueue = [(ICCloudContext *)self processingQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __65__ICCloudContext_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v20[3] = &unk_278194B00;
      v20[4] = self;
      dispatch_async(processingQueue, v20);
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICCloudContext;
    [(ICCloudContext *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __65__ICCloudContext_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICCloudContextHasPendingOperationsDidChangeNotification" object:*(a1 + 32)];
}

- (ICCloudAnalyticsDelegate)cloudAnalyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudAnalyticsDelegate);

  return WeakRetained;
}

- (ICCloudSessionDelegate)cloudSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudSessionDelegate);

  return WeakRetained;
}

- (void)disableCloudSyncingIfCurrentVersionNotSupported:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)disableCloudSyncingIfCurrentVersionNotSupported:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 operatingSystemVersionString];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62__ICCloudContext_fetchAssetsOnDemandIfEnabledForNoteObjectID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)reachabilityChanged:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)reachabilityChanged:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__ICCloudContext_cloudKitAccountChanged___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)syncWithReason:uploadUnsyncedChanges:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)syncWithReason:uploadUnsyncedChanges:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_190_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__ICCloudContext__syncWithReason_uploadUnsyncedChanges_completionHandler___block_invoke_191_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__ICCloudContext_cancelEverythingWithCompletionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ICCloudContext_clearPendingActivity__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__ICCloudContext_clearPendingActivity__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteRecordZonesWithZoneIDs:accountID:markZonesAsUserPurged:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error deleting zones in account ID %@: %@");
}

void __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __97__ICCloudContext_deleteRecordZonesWithZoneIDs_accountID_markZonesAsUserPurged_completionHandler___block_invoke_203_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_35(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __81__ICCloudContext_finishOperationsForRecordID_qualityOfService_completionHandler___block_invoke_223_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_35(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __71__ICCloudContext_ingestCloudKitRecord_forAccountID_forceMerge_context___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) ic_loggingDescription];
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __80__ICCloudContext__ingestCloudKitRecord_forAccountID_forceMerge_session_context___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232_cold_1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error updating account status for account: %@, %@");
}

void __59__ICCloudContext_updateAccountStatusWithCompletionHandler___block_invoke_2_232_cold_2()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_11(v0);
  v1 = CKStringFromAccountStatus();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)fetchUserRecordWithAccountID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchUserRecordWithContainer:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*(*a1 + 8) + 40) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __65__ICCloudContext_fetchUserRecordWithContainer_completionHandler___block_invoke_235_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __45__ICCloudContext_userRecordNameForContainer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:.cold.2()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)existingCloudObjectForUserSpecificRecordID:createPlaceholderIfNecessary:accountID:context:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)addFetchOperationsForRecordIDs:(void *)a1 forSession:accountID:qualityOfService:operationGroupName:shouldDownloadAssets:completionHandler:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)operationsToFetchRecordIDs:forSession:shouldDownloadAssets:qualityOfService:operationGroupName:accountID:.cold.1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)operationsToFetchRecordIDs:forSession:shouldDownloadAssets:qualityOfService:operationGroupName:accountID:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)operationToFetchRecordIDs:forSession:shouldDownloadAssets:database:qualityOfService:.cold.1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __102__ICCloudContext_operationToFetchRecordIDs_forSession_shouldDownloadAssets_database_qualityOfService___block_invoke_3_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  [OUTLINED_FUNCTION_11(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __80__ICCloudContext_fetchOperation_didCompleteWithRecordsByRecordID_session_error___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)didFetchShare:accountID:context:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 ic_loggingDescription];
  v3 = [v0 ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)didFetchShare:(void *)a1 accountID:(void *)a2 context:(NSObject *)a3 .cold.2(void *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 recordID];
  v6 = [v5 ic_loggingDescription];
  v7 = [a2 recordType];
  v8 = [a2 recordID];
  v9 = [v8 ic_loggingDescription];
  v10 = 138412802;
  v11 = v6;
  OUTLINED_FUNCTION_4_1();
  v12 = v7;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Received share %@ for %@ %@", &v10, 0x20u);
}

void __72__ICCloudContext_pushCloudObjects_operationGroupName_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__ICCloudContext_deleteSharesForObjects_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deleteSharesForObjects:forSession:accountID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  [v0 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __80__ICCloudContext_deleteSharesForObjects_forSession_accountID_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 shortLoggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v0 count];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.2()
{
  OUTLINED_FUNCTION_10();
  [v0 count];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.3()
{
  OUTLINED_FUNCTION_10();
  [v0 count];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:(uint64_t)a3 delete:(NSObject *)a4 deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 134218242;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_23_0(&dword_214D51000, "Grouping modify operations into %ld batches for account ID %@", a2, a4);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.5()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_9_2(v0, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_23_0(&dword_214D51000, "Modifying records with operation group %@ for account ID %@", v4, v5);
}

- (void)operationsToModifyRecordsForCloudObjectsToSave:delete:deleteShares:saveUserSpecificRecords:forSession:operationGroupName:addDependencies:accountID:.cold.6()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)batchRecordsToSave:(uint64_t)a1 delete:(uint64_t)a2 maxRecordCountPerBatch:maxRecordSizePerBatch:withBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25();
  _os_log_debug_impl(v3, v4, v5, v6, v7, v8);
}

+ (void)batchRecordsToSave:(uint64_t)a1 delete:(uint64_t)a2 maxRecordCountPerBatch:maxRecordSizePerBatch:withBlock:.cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_25();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
}

+ (void)batchRecordsToSave:(uint64_t)a1 delete:(uint64_t)a2 maxRecordCountPerBatch:maxRecordSizePerBatch:withBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25();
  _os_log_debug_impl(v3, v4, v5, v6, v7, v8);
}

+ (void)batchRecordsToSave:(_BYTE *)a1 delete:(_BYTE *)a2 maxRecordCountPerBatch:maxRecordSizePerBatch:withBlock:.cold.4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

+ (void)batchRecordsToSave:(_BYTE *)a1 delete:(_BYTE *)a2 maxRecordCountPerBatch:maxRecordSizePerBatch:withBlock:.cold.5(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)operationToModifyRecordsToSave:delete:forSession:rootRecordIDsByShareID:database:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)operationToModifyRecordsToSave:(void *)a1 delete:forSession:rootRecordIDsByShareID:database:.cold.2(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __91__ICCloudContext_addCallbackBlocksToModifyRecordsOperation_rootRecordIDsByShareID_session___block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  [OUTLINED_FUNCTION_11(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __73__ICCloudContext_modifyRecordsOperation_forSession_didCompleteWithError___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)sortedRecords:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)sortedRecords:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_25();
  _os_log_error_impl(v3, v4, v5, v6, v7, v8);
}

void __35__ICCloudContext_objectsByAccount___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35(v1);
  v2 = objc_opt_class();
  v3 = *(v0 + 32);
  v4 = v2;
  v5 = [v3 identifier];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)resetZoneForCloudAccount:withReason:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_214D51000, v0, OS_LOG_TYPE_FAULT, "Cannot reset zone for non-CloudKit account {account: %@}", v1, 0xCu);
}

void __54__ICCloudContext_resetZoneForCloudAccount_withReason___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(&dword_214D51000, v0, OS_LOG_TYPE_FAULT, "Error deleting zone records {error: %@, account: %@}", v1, 0x16u);
}

- (void)operationToSaveZonesForZoneIDs:accountID:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  [OUTLINED_FUNCTION_18(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __59__ICCloudContext_operationToSaveZonesForZoneIDs_accountID___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_18(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __40__ICCloudContext_contextDidSaveOrMerge___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __40__ICCloudContext_contextDidSaveOrMerge___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_33();
  *v1 = 134218240;
  *(v1 + 4) = v2;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
  _os_log_debug_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEBUG, "Adding process objects operation %p. allObjects=%d", v3, 0x12u);
}

void __78__ICCloudContext_addOperationToProcessObjectsInSession_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__ICCloudContext__objectIDsToProcessForFullSyncInContext___block_invoke_cold_1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_processPendingCloudObjectsInSession:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_processPendingCloudObjectsInSession:(void *)a1 withCompletionHandler:.cold.2(void *a1)
{
  v1 = [a1 readinessLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_processPendingCloudObjectsInSession:withCompletionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) objectIDsToRetry];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) objectIDsToProcess];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICCloudContext__processPendingCloudObjectsInSession_withCompletionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_processCloudObjects:(void *)a1 inSession:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  v2 = [v1 UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)handleCloudKitNotification:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v2 = objc_opt_class();
  v3 = [a1 subscriptionID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)handleCloudKitNotification:completionHandler:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__ICCloudContext_fetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25();
  _os_log_debug_impl(v3, v4, v5, v6, v7, v8);
}

void __99__ICCloudContext_addOperationsToFetchRecordZoneChangesForAccountZoneIDs_session_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.8381e-34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25();
  _os_log_debug_impl(v3, v4, v5, v6, v7, v8);
}

- (void)operationsToFetchRecordZoneChangesForZoneIDs:accountID:session:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)operationsToFetchRecordZoneChangesForZoneIDs:accountID:session:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)operationToFetchRecordZoneChangesForZoneIDs:database:session:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v2 = [OUTLINED_FUNCTION_4_4(v0 v1)];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)newOperationToFetchRecordZoneChangesWithZoneConfigurations:database:session:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_9_2(v2, v0, v3, 5.778e-34);
  OUTLINED_FUNCTION_23_0(&dword_214D51000, "Creating fetch changes operation in account ID %@: %@", v4, v5);
}

void __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [*v0 ic_loggingDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __75__ICCloudContext_fetchRecordZoneChangesOperationDidComplete_session_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  v1 = [*v0 ic_loggingDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __94__ICCloudContext_fetchRecordZoneChangesOperation_zoneID_accountID_changeTokenUpdated_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 32) ic_loggingDescription];
  v3 = [*(v0 + 40) ic_loggingDescription];
  v4 = [*(v0 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)setAssetDownloadStateOnObject:withRecord:managedObjectContext:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 ic_loggingDescription];
  [v0 needsToBeFetchedFromCloud];
  [v0 needsInitialFetchFromCloud];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __67__ICCloudContext_fetchDatabaseChangesForSession_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__ICCloudContext_fetchDatabaseChangesForDatabases_session_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)operationToFetchDatabaseChangesForDatabase:session:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_9_2(v2, v0, v3, 5.778e-34);
  OUTLINED_FUNCTION_23_0(&dword_214D51000, "Creating fetch database changes operation for account %@, %@", v4, v5);
}

void __90__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDChanged_accountID_session___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 40) ic_loggingDescription];
  v3 = [*(v0 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __93__ICCloudContext_fetchDatabaseChangesOperation_recordZoneWithIDWasDeleted_accountID_session___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 40) ic_loggingDescription];
  v3 = [*(v0 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __85__ICCloudContext_fetchDatabaseChangesOperation_changeTokenUpdated_accountID_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v2 = [*(v1 + 40) ic_loggingDescription];
  v3 = [*(v0 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  [*(v1 + 48) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __128__ICCloudContext_fetchDatabaseChangesOperation_finishedWithServerChangeToken_accountID_session_error_completionHandler_context___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 48) ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __37__ICCloudContext_clearZoneFetchState__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ICCloudContext_updateSubscriptionsWithCompletionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  OUTLINED_FUNCTION_26(v2, 5.7779e-34);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25();
  _os_log_debug_impl(v3, v4, v5, v6, v7, v8);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633_cold_1()
{
  OUTLINED_FUNCTION_10();
  [OUTLINED_FUNCTION_18(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __66__ICCloudContext_fetchSubscriptionsForDatabase_completionHandler___block_invoke_2_633_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_18(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9_2(v2, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_23_0(&dword_214D51000, "Saving subscription %@ %@", v5, v6);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_cold_2(uint64_t a1, void *a2)
{
  [OUTLINED_FUNCTION_11(a1) databaseScope];
  v3 = CKDatabaseScopeString();
  v4 = [a2 subscriptionID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640_cold_1()
{
  OUTLINED_FUNCTION_10();
  [OUTLINED_FUNCTION_18(v1) ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __65__ICCloudContext_saveSubscriptionsForDatabase_completionHandler___block_invoke_2_640_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_18(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  [*v1 isInForeground];
  [*v0 isInternetReachable];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*v0, "syncOnlyIfReachable")}];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_3_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_18(a1) ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __56__ICCloudContext_updateCloudContextStateWithCompletion___block_invoke_657_cold_1(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __74__ICCloudContext_enqueueLongLivedOperationsIfNeededWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [OUTLINED_FUNCTION_35(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  v1 = [*(v0 + 40) ic_loggingDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v1 = [OUTLINED_FUNCTION_18(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_10();
  v1 = [OUTLINED_FUNCTION_18(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_10();
  v1 = [OUTLINED_FUNCTION_18(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_10();
  v1 = [OUTLINED_FUNCTION_18(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __88__ICCloudContext_enqueueLongLivedOperationsWithIDsIfNeeded_container_completionHandler___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_3();
  v1 = [OUTLINED_FUNCTION_18(v0) ic_loggingDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __50__ICCloudContext_clearRetryCountForOperationType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_30(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__ICCloudContext_startRetryTimerIfNecessaryWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__ICCloudContext_retryOperationsIfNecessary__block_invoke_2_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) readinessLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __88__ICCloudContext_saveServerChangeToken_forRecordZoneID_databaseScope_accountID_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __83__ICCloudContext_serverChangeTokenForRecordZoneID_databaseScope_accountID_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_24_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deleteServerChangeTokenForRecordZoneID:databaseScope:accountID:context:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 ic_loggingDescription];
  v2 = CKDatabaseScopeString();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end