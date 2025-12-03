@interface EDSearchableIndex
+ (OS_os_log)indexWhileLockedLog;
+ (OS_os_log)log;
+ (OS_os_log)signpostLog;
+ (id)_localClientState;
+ (id)_localClientStateURL;
+ (id)_reindexReasonString:(int64_t)string;
+ (void)_saveLocalClientState:(id)state;
- (BOOL)_processIndexingBatch:(id)batch clientState:(id)state itemsNotIndexed:(id)indexed;
- (BOOL)clientStateFetched;
- (BOOL)isActive;
- (BOOL)isIndexingDisabledForPPT;
- (BOOL)isPersistenceAvailable;
- (CSSearchableIndex)searchIndex;
- (EDSearchableIndex)initWithName:(id)name dataSource:(id)source;
- (EDSearchableIndexDataSource)dataSource;
- (EDSearchableIndexSchedulableDelegate)schedulableDelegate;
- (NSString)copyDiagnosticInformation;
- (double)_throttleRequestedSize:(unint64_t *)size targetTime:(double)time action:(id)action;
- (id)_consumeBatchOfSize:(unint64_t)size;
- (id)_eventDataForTransitionState:(id)state;
- (id)_identifiersForItems:(id)items;
- (id)_identifiersStringForItems:(id)items maxLength:(unint64_t)length;
- (id)_missingIdentifiersForIdentifiersNeedingReindex:(id)reindex;
- (id)_processDomainRemovals:(id)removals;
- (id)_suggestionsService;
- (id)bundleIDForSearchableIndexVerifier:(id)verifier;
- (id)dataSamplesForSearchableIndexVerifier:(id)verifier searchableIndex:(id)index count:(unint64_t)count lastVerifiedMessageID:(int64_t)d;
- (id)knownTransactionIDsForSearchableIndexVerifier:(id)verifier;
- (int64_t)_nextTransaction;
- (int64_t)_transaction;
- (int64_t)resumeCount;
- (unint64_t)currentMaximumBatchSize;
- (unint64_t)signpostID;
- (void)_clearOrphanedSearchableMessagesFromDatabase;
- (void)_coalescingTimerFired;
- (void)_collectAnalyticsForReindexReason:(int64_t)reason withInfo:(id)info;
- (void)_dataSourceAssignTransaction:(int64_t)transaction forIdentifiers:(id)identifiers completion:(id)completion;
- (void)_dataSourceAssignTransaction:(int64_t)transaction updates:(id)updates completion:(id)completion;
- (void)_dataSourceInvalidateItemsGreaterThanTransaction:(int64_t)transaction completion:(id)completion;
- (void)_dataSourcePrepareToIndexItems:(id)items fromRefresh:(BOOL)refresh withCompletion:(id)completion;
- (void)_dataSourceRequestNeededUpdatesExcludingIdentifiers:(id)identifiers completion:(id)completion;
- (void)_dataSourceScheduleWork:(id)work;
- (void)_dataSourceVerifyRepresentativeSampleWithCompletion:(id)completion;
- (void)_doIndexItems:(id)items fromRefresh:(BOOL)refresh immediately:(BOOL)immediately;
- (void)_fetchLastClientState;
- (void)_getDomainRemovals:(id *)removals identifierRemovals:(id *)identifierRemovals;
- (void)_handleFailingTransactionIDs:(id)ds;
- (void)_invalidateItemsInTransactions:(id)transactions;
- (void)_logSignpostForIndexingBatchAssignedDomainRemovalCount:(unint64_t)count;
- (void)_logSignpostForIndexingBatchAssignedUpdatesWithItemsIndexedCount:(unint64_t)count;
- (void)_logSignpostForIndexingBatchCompletedWithItemsIndexedCount:(id)count;
- (void)_logSignpostForIndexingBatchStartWithPendingItemsCount:(id)count;
- (void)_noteNeedsLastClientStateFetch;
- (void)_powerStateChanged;
- (void)_processAttachmentItemsForSuggestionsService:(id)service;
- (void)_processIdentifierRemovals:(id)removals;
- (void)_processRefreshRequestWithCompletion:(id)completion;
- (void)_processSpotlightVerificationWithCompletion:(id)completion;
- (void)_queueConsumeBudgetElapsedPeriod:(double)period;
- (void)_queueConsumeBudgetItemCount:(unint64_t)count lastItemDateReceived:(id)received;
- (void)_queueRefresh;
- (void)_registerDistantFutureSpotlightVerification;
- (void)_registerStateCaptureHandler;
- (void)_resume;
- (void)_resumeIndexingScheduler;
- (void)_scheduleDataSourceRefresh;
- (void)_scheduleProcessPendingItemsFromRefresh:(BOOL)refresh;
- (void)_scheduleSpotlightVerification;
- (void)_scheduleSpotlightVerificationOnIndexingQueueWithCompletion:(id)completion;
- (void)_sendAnalyticsForRedonatingItems:(unint64_t)items;
- (void)_sendAnalyticsForReindexReason:(int64_t)reason;
- (void)_startCoalescingTimer;
- (void)_stopCoalescingTimer;
- (void)_storeLastKnownReindexReason:(int64_t)reason withInfo:(id)info;
- (void)_suspend;
- (void)_suspendIndexingScheduler;
- (void)_transitionWithBudgetTimeUsed:(double)used;
- (void)_verifySpotlightIndex;
- (void)attachmentBecameAvailable:(id)available;
- (void)dealloc;
- (void)generatedSummariesDidUpdate:(id)update;
- (void)indexItems:(id)items fromRefresh:(BOOL)refresh immediately:(BOOL)immediately;
- (void)indexMessages:(id)messages includeBody:(BOOL)body indexingType:(int64_t)type;
- (void)markMessagesAsPrinted:(id)printed;
- (void)performMaintenancePreWork;
- (void)recordDataNeedsToBeDonatedForMessages:(id)messages;
- (void)recordMessagesNeedToBeDonated:(id)donated indexingType:(int64_t)type;
- (void)redonateAllItemsWithAcknowledgementHandler:(id)handler;
- (void)refresh;
- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)removeItemsForDomainIdentifier:(id)identifier;
- (void)removeItemsWithIdentifiers:(id)identifiers;
- (void)removeItemsWithIdentifiers:(id)identifiers reasons:(id)reasons fromRefresh:(BOOL)refresh;
- (void)removeMessages:(id)messages;
- (void)resetIndexForNewLibraryWithCompletionHandler:(id)handler;
- (void)resume;
- (void)richLinkBecameAvailable:(id)available;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask;
- (void)setClientStateFetched:(BOOL)fetched;
- (void)setDataSourceIndexingPermitted:(BOOL)permitted;
- (void)setForeground:(BOOL)foreground;
- (void)setIndexingDisabledForPPT:(BOOL)t;
- (void)setPersistenceAvailable:(BOOL)available;
- (void)suspend;
- (void)test_resetSpotlightIndex;
- (void)test_tearDown;
@end

@implementation EDSearchableIndex

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EDSearchableIndex_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_84 != -1)
  {
    dispatch_once(&log_onceToken_84, block);
  }

  v2 = log_log_84;

  return v2;
}

void __24__EDSearchableIndex_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_84;
  log_log_84 = v1;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EDSearchableIndex_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_8 != -1)
  {
    dispatch_once(&signpostLog_onceToken_8, block);
  }

  v2 = signpostLog_log_8;

  return v2;
}

void __32__EDSearchableIndex_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_8;
  signpostLog_log_8 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (OS_os_log)indexWhileLockedLog
{
  if (indexWhileLockedLog_onceToken != -1)
  {
    +[EDSearchableIndex indexWhileLockedLog];
  }

  if (_os_feature_enabled_impl())
  {
    v2 = indexWhileLockedLog_log;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __40__EDSearchableIndex_indexWhileLockedLog__block_invoke()
{
  v0 = os_log_create("com.apple.email", "IndexWhileLocked");
  v1 = indexWhileLockedLog_log;
  indexWhileLockedLog_log = v0;
}

- (EDSearchableIndex)initWithName:(id)name dataSource:(id)source
{
  location[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  sourceCopy = source;
  v77.receiver = self;
  v77.super_class = EDSearchableIndex;
  v8 = [(EDSearchableIndex *)&v77 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__EDSearchableIndex_initWithName_dataSource___block_invoke;
    aBlock[3] = &unk_1E8255B10;
    v76 = nameCopy;
    v11 = _Block_copy(aBlock);
    v12 = [_EDSearchableIndexPendingRemovals alloc];
    purgeReasons = [v8 purgeReasons];
    exclusionReasons = [v8 exclusionReasons];
    v72 = [(_EDSearchableIndexPendingRemovals *)v12 initWithPurgeReasons:purgeReasons exclusionReasons:exclusionReasons];

    v15 = [[EDSearchableIndexState alloc] initWithPendingIdentifierRemovals:v72];
    v16 = *(v8 + 24);
    *(v8 + 24) = v15;

    v17 = MEMORY[0x1E699B988];
    v18 = MEMORY[0x1E699B978];
    v19 = v11[2](v11, @"state");
    v20 = [v18 serialDispatchQueueSchedulerWithName:v19];
    v21 = [v17 assertableSchedulerWithScheduler:v20];
    v22 = *(v8 + 4);
    *(v8 + 4) = v21;

    objc_storeWeak(v8 + 21, sourceCopy);
    v23 = objc_alloc_init(MEMORY[0x1E699AC70]);
    v24 = *(v8 + 20);
    *(v8 + 20) = v23;

    v25 = MEMORY[0x1E699B988];
    v26 = MEMORY[0x1E699B978];
    v27 = v11[2](v11, @"indexingQueue");
    v28 = [v26 serialDispatchQueueSchedulerWithName:v27 qualityOfService:9];
    v29 = [v25 suspendableSchedulerWithScheduler:v28];
    v30 = *(v8 + 10);
    *(v8 + 10) = v29;

    v31 = objc_alloc(MEMORY[0x1E699B988]);
    v32 = MEMORY[0x1E699B978];
    v33 = v11[2](v11, @"dataSource");
    v34 = [v32 serialDispatchQueueSchedulerWithName:v33 qualityOfService:9];
    v35 = [v31 initWithScheduler:v34];
    v36 = *(v8 + 11);
    *(v8 + 11) = v35;

    v37 = objc_alloc(MEMORY[0x1E699B988]);
    v38 = MEMORY[0x1E699B978];
    v39 = v11[2](v11, @"addIndexItems");
    v40 = [v38 serialDispatchQueueSchedulerWithName:v39 qualityOfService:9];
    v41 = [v37 initWithScheduler:v40];
    v42 = *(v8 + 12);
    *(v8 + 12) = v41;

    *(v8 + 28) = 0;
    *(v8 + 36) = 0;
    atomic_store(0, v8 + 37);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    activeProcessorCount = [processInfo activeProcessorCount];

    v45 = objc_alloc(MEMORY[0x1E699B988]);
    v46 = [MEMORY[0x1E699B978] operationQueueSchedulerWithMaxConcurrentOperationCount:{vcvtd_n_f64_u64(activeProcessorCount, 1uLL) + 1}];
    v47 = [v45 initWithScheduler:v46];
    v48 = *(v8 + 13);
    *(v8 + 13) = v47;

    v49 = objc_alloc(MEMORY[0x1E699B988]);
    v50 = MEMORY[0x1E699B978];
    v51 = v11[2](v11, @"batch");
    v52 = [v50 serialDispatchQueueSchedulerWithName:v51 qualityOfService:9];
    v53 = [v49 initWithScheduler:v52];
    v54 = *(v8 + 15);
    *(v8 + 15) = v53;

    *(v8 + 3) = vdupq_n_s64(0x40uLL);
    *(v8 + 8) = 64;
    *(v8 + 216) = xmmword_1C6471F50;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [v8 _suspendIndexingScheduler];
    }

    v55 = _os_activity_create(&dword_1C61EF000, "processing batch of indexable items", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
    v56 = *(v8 + 9);
    *(v8 + 9) = v55;

    v8[154] = 0;
    atomic_store(0, v8 + 16);
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v8[155] = [em_userDefaults BOOLForKey:@"DisableSpotlightVerification"] ^ 1;

    powerObservable = [v8 powerObservable];
    if (powerObservable)
    {
      v59 = objc_alloc_init(MEMORY[0x1E699B7F8]);
      v60 = *(v8 + 2);
      *(v8 + 2) = v59;

      objc_initWeak(location, v8);
      v61 = *(v8 + 2);
      v62 = MEMORY[0x1E699B838];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __45__EDSearchableIndex_initWithName_dataSource___block_invoke_2;
      v73[3] = &unk_1E82567B0;
      objc_copyWeak(&v74, location);
      v63 = [v62 observerWithResultBlock:v73];
      v64 = [powerObservable subscribe:v63];
      [v61 addCancelable:v64];

      objc_destroyWeak(&v74);
      objc_destroyWeak(location);
    }

    [v8 _registerStateCaptureHandler];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_richLinkBecameAvailable_ name:@"LibraryMessageRichLinkDataBecameAvailableNotification" object:0];

    if (_os_feature_enabled_impl())
    {
      indexWhileLockedLog = [objc_opt_class() indexWhileLockedLog];
      if (os_log_type_enabled(indexWhileLockedLog, OS_LOG_TYPE_DEFAULT))
      {
        v67 = MEMORY[0x1E696AD98];
        processInfo2 = [MEMORY[0x1E696AE30] processInfo];
        v69 = [v67 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v69;
        _os_log_impl(&dword_1C61EF000, indexWhileLockedLog, OS_LOG_TYPE_DEFAULT, "maild started with pid %@", location, 0xCu);
      }
    }
  }

  v70 = *MEMORY[0x1E69E9840];
  return v8;
}

id __45__EDSearchableIndex_initWithName_dataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.email.searchableIndex.%@.%@", a2, *(a1 + 32)];

  return v2;
}

void __45__EDSearchableIndex_initWithName_dataSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _powerStateChanged];
}

- (void)dealloc
{
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating searchable index", buf, 2u);
  }

  [(EFManualCancelationToken *)self->_cancelationToken cancel];
  [(EFCancelable *)self->_stateCancelable cancel];
  [(EFCancelable *)self->_coalescingTimer cancel];
  if (![(EDSearchableIndexState *)self->_state isActive]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    [(EFSuspendableScheduler *)self->_indexingScheduler resume];
  }

  [(CSSearchableIndex *)self->_searchIndex setIndexDelegate:0];
  v4.receiver = self;
  v4.super_class = EDSearchableIndex;
  [(EDSearchableIndex *)&v4 dealloc];
}

- (CSSearchableIndex)searchIndex
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  searchIndex = selfCopy->_searchIndex;
  if (!searchIndex)
  {
    searchableIndexBundleID = [(EDSearchableIndex *)selfCopy searchableIndexBundleID];

    if (searchableIndexBundleID)
    {
      v5 = objc_alloc(MEMORY[0x1E6964E78]);
      indexName = selfCopy->_indexName;
      protectionClass = [MEMORY[0x1E699AE70] protectionClass];
      searchableIndexBundleID2 = [(EDSearchableIndex *)selfCopy searchableIndexBundleID];
      v9 = [v5 initWithName:indexName protectionClass:protectionClass bundleIdentifier:searchableIndexBundleID2];
      v10 = selfCopy->_searchIndex;
      selfCopy->_searchIndex = v9;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E6964E78]);
      v12 = selfCopy->_indexName;
      protectionClass = [MEMORY[0x1E699AE70] protectionClass];
      v13 = [v11 initWithName:v12 protectionClass:protectionClass];
      searchableIndexBundleID2 = selfCopy->_searchIndex;
      selfCopy->_searchIndex = v13;
    }

    state = [(EDSearchableIndex *)selfCopy state];
    persistenceAvailable = [state persistenceAvailable];

    searchIndex = selfCopy->_searchIndex;
    if (persistenceAvailable)
    {
      [(CSSearchableIndex *)searchIndex setIndexDelegate:selfCopy];
      searchIndex = selfCopy->_searchIndex;
    }
  }

  v16 = searchIndex;
  objc_sync_exit(selfCopy);

  return v16;
}

- (unint64_t)currentMaximumBatchSize
{
  os_unfair_lock_lock(&self->_mainThreadAccessibleIvarLock);
  currentMaximumBatchSize = self->_currentMaximumBatchSize;
  os_unfair_lock_unlock(&self->_mainThreadAccessibleIvarLock);
  return currentMaximumBatchSize;
}

- (NSString)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = -86;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = -86;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = -86;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = -86;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = -86;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = -86;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = -86;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = -86;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = -86;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = -86;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__38;
  v66 = __Block_byref_object_dispose__38;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__38;
  v60 = __Block_byref_object_dispose__38;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__38;
  v54 = __Block_byref_object_dispose__38;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__38;
  v48 = __Block_byref_object_dispose__38;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__EDSearchableIndex_copyDiagnosticInformation__block_invoke;
  v39[3] = &unk_1E82567D8;
  v39[4] = self;
  v39[5] = &v112;
  v39[6] = &v108;
  v39[7] = &v104;
  v39[8] = &v100;
  v39[9] = &v96;
  v39[10] = &v92;
  v39[11] = &v88;
  v39[12] = &v84;
  v39[13] = &v80;
  v39[14] = &v76;
  v39[15] = &v72;
  v39[16] = &v68;
  v39[17] = &v62;
  v39[18] = &v56;
  v39[19] = &v50;
  v39[20] = &v44;
  v39[21] = &v40;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v39];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  dataSourceScheduler = self->_dataSourceScheduler;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __46__EDSearchableIndex_copyDiagnosticInformation__block_invoke_2;
  v34[3] = &unk_1E8251C30;
  v34[4] = self;
  v34[5] = &v35;
  [(EFStoppableScheduler *)dataSourceScheduler performSyncBlock:v34];
  currentMaximumBatchSize = [(EDSearchableIndex *)self currentMaximumBatchSize];
  [v3 appendString:@"==== Searchable Index State ====\n"];
  [v3 appendFormat:@"  transaction:                    %lld\n", v73[3]];
  v7 = *(v101 + 24);
  v8 = NSStringFromBOOL();
  [v3 appendFormat:@"  active:                         %@ (rc=%lld)\n", v8, v69[3]];

  v9 = *(v97 + 24);
  v10 = NSStringFromBOOL();
  [v3 appendFormat:@"  persistenceAvailable:           %@\n", v10];

  v11 = *(v93 + 24);
  v12 = NSStringFromBOOL();
  [v3 appendFormat:@"  client state fetched:           %@\n", v12];

  v13 = *(v89 + 24);
  v14 = NSStringFromBOOL();
  [v3 appendFormat:@"  coalesce timer fired:           %@\n", v14];

  v15 = *(v109 + 24);
  v16 = NSStringFromBOOL();
  [v3 appendFormat:@"  scheduled processing:           %@\n", v16];

  v17 = *(v85 + 24);
  v18 = NSStringFromBOOL();
  [v3 appendFormat:@"  needs refresh:                  %@\n", v18];

  v19 = *(v105 + 24);
  v20 = NSStringFromBOOL();
  [v3 appendFormat:@"  scheduled refresh:              %@\n", v20];

  v21 = *(v81 + 24);
  v22 = NSStringFromBOOL();
  [v3 appendFormat:@"  needs verification:             %@\n", v22];

  v23 = *(v113 + 24);
  v24 = NSStringFromBOOL();
  [v3 appendFormat:@"  scheduled verification:         %@\n", v24];

  [v3 appendFormat:@"  indexing batch size:            %lu\n", v41[3]];
  [v3 appendFormat:@"  data source batch size:         %lu\n", v36[3]];
  [v3 appendFormat:@"  maximum batch size:             %lu\n", currentMaximumBatchSize];
  schedulableDelegate = [(EDSearchableIndex *)self schedulableDelegate];
  v26 = *(v77 + 24);
  v27 = NSStringFromBOOL();
  [v3 appendFormat:@"  data source indexing permitted: %@\n", v27];

  [schedulableDelegate hasAvailableIndexingBudgetForSearchableIndexSchedulable:self];
  v28 = NSStringFromBOOL();
  [v3 appendFormat:@"  has available indexing budget:  %@\n", v28];

  v29 = [v63[5] count];
  [v3 appendFormat:@"  pending items:                  %lu (%p)\n", v29, v63[5]];
  v30 = [v57[5] count];
  [v3 appendFormat:@"  pre-processing items:           %lu (%p)\n", v30, v57[5]];
  v31 = [v51[5] count];
  [v3 appendFormat:@"  pending removals:               %lu (%p)\n", v31, v51[5]];
  v32 = [v45[5] count];
  [v3 appendFormat:@"  pending domain removals:        %lu (%p)\n", v32, v45[5]];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v112, 8);
  return v3;
}

void __46__EDSearchableIndex_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 scheduledVerification];

  v3 = [*(a1 + 32) state];
  *(*(*(a1 + 48) + 8) + 24) = [v3 scheduledProcessing];

  v4 = [*(a1 + 32) state];
  *(*(*(a1 + 56) + 8) + 24) = [v4 scheduledRefresh];

  v5 = [*(a1 + 32) state];
  *(*(*(a1 + 64) + 8) + 24) = [v5 isActive];

  v6 = [*(a1 + 32) state];
  *(*(*(a1 + 72) + 8) + 24) = [v6 persistenceAvailable];

  v7 = [*(a1 + 32) state];
  *(*(*(a1 + 80) + 8) + 24) = [v7 clientStateFetched];

  v8 = [*(a1 + 32) state];
  *(*(*(a1 + 88) + 8) + 24) = [v8 coalesceTimerFired];

  v9 = [*(a1 + 32) state];
  *(*(*(a1 + 96) + 8) + 24) = [v9 needsRefresh];

  v10 = [*(a1 + 32) state];
  *(*(*(a1 + 104) + 8) + 24) = [v10 needsVerification];

  *(*(*(a1 + 112) + 8) + 24) = *(*(a1 + 32) + 152);
  v11 = [*(a1 + 32) state];
  *(*(*(a1 + 120) + 8) + 24) = [v11 transaction];

  v12 = [*(a1 + 32) state];
  *(*(*(a1 + 128) + 8) + 24) = [v12 resumeCount];

  v13 = [*(a1 + 32) state];
  v14 = [v13 pendingItems];
  v15 = [v14 copy];
  v16 = *(*(a1 + 136) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(a1 + 32) state];
  v19 = [v18 preprocessingItems];
  v20 = [v19 copy];
  v21 = *(*(a1 + 144) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = [*(a1 + 32) state];
  v24 = [v23 pendingIdentifierRemovals];
  v25 = [v24 copy];
  v26 = *(*(a1 + 152) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = [*(a1 + 32) state];
  v29 = [v28 pendingDomainRemovals];
  v30 = [v29 copy];
  v31 = *(*(a1 + 160) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = v30;

  *(*(*(a1 + 168) + 8) + 24) = *(*(a1 + 32) + 48);
}

- (void)_powerStateChanged
{
  if ([(EDSearchableIndex *)self isPluggedIn])
  {

    [(EDSearchableIndex *)self refresh];
  }
}

+ (id)_reindexReasonString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Batch Transaction Failed";
  }

  else
  {
    return off_1E8256E10[string - 1];
  }
}

- (void)_sendAnalyticsForReindexReason:(int64_t)reason
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"reason";
  v4 = [objc_opt_class() _reindexReasonString:reason];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.searchableIndex.reindexAnalytics" collectionData:v5];
  analyticsCollector = [(EDSearchableIndex *)self analyticsCollector];
  [analyticsCollector logOneTimeEvent:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_storeLastKnownReindexReason:(int64_t)reason withInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  date = [MEMORY[0x1E695DF00] date];
  v7 = [objc_opt_class() _reindexReasonString:reason];
  infoCopy = [v5 initWithFormat:@"%@: %@ %@", date, v7, infoCopy];

  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v11 = [em_userDefaults objectForKey:@"LastKnownReindexReasons"];
  v12 = [v9 initWithArray:v11];

  if ([v12 count] >= 0x32)
  {
    [v12 removeObjectAtIndex:0];
  }

  [v12 addObject:infoCopy];
  em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
  v14 = [v12 copy];
  [em_userDefaults2 setObject:v14 forKey:@"LastKnownReindexReasons"];
}

- (void)_registerStateCaptureHandler
{
  v3 = MEMORY[0x1E69E96A0];
  v4 = EFLogRegisterStateCaptureBlock();
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = v4;

  v6 = MEMORY[0x1E69E96A0];
}

id __49__EDSearchableIndex__registerStateCaptureHandler__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E695E000] em_userDefaults];
  v2 = [v1 objectForKey:@"LastKnownReindexReasons"];
  [v0 setObject:v2 forKeyedSubscript:@"LastKnownReindexReasons"];

  v3 = [v0 copy];

  return v3;
}

- (void)_collectAnalyticsForReindexReason:(int64_t)reason withInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _reindexReasonString:reason];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = infoCopy;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Collecting reindexing analytics for reason: %@, info: %@", &v10, 0x16u);
  }

  [(EDSearchableIndex *)self _sendAnalyticsForReindexReason:reason];
  [(EDSearchableIndex *)self _storeLastKnownReindexReason:reason withInfo:infoCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_sendAnalyticsForRedonatingItems:(unint64_t)items
{
  if (!atomic_fetch_add(&self->_redonatedItems, items))
  {
    block[7] = v3;
    block[8] = v4;
    v6 = dispatch_get_global_queue(9, 0);
    v7 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__EDSearchableIndex__sendAnalyticsForRedonatingItems___block_invoke;
    block[3] = &unk_1E8250260;
    block[4] = self;
    dispatch_after(v7, v6, block);
  }
}

void __54__EDSearchableIndex__sendAnalyticsForRedonatingItems___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (atomic_exchange((*(a1 + 32) + 148), 0))
  {
    v7 = @"itemCount";
    v2 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v8[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

    v4 = [objc_alloc(MEMORY[0x1E699AC78]) initWithEventName:@"com.apple.mail.searchableIndex.redonateItems" collectionData:v3];
    v5 = [*(a1 + 32) analyticsCollector];
    [v5 logOneTimeEvent:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setDataSourceIndexingPermitted:(BOOL)permitted
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__EDSearchableIndex_setDataSourceIndexingPermitted___block_invoke;
  v4[3] = &unk_1E8256800;
  v4[4] = self;
  permittedCopy = permitted;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v4];
}

uint64_t __52__EDSearchableIndex_setDataSourceIndexingPermitted___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 152) != v2)
  {
    v3 = result;
    *(v1 + 152) = v2;
    v4 = *(result + 40);
    v5 = *(result + 32);
    if (v4 == 1)
    {
      v6 = [v5 state];
      v7 = [v6 isActive];

      v8 = *(v3 + 32);
      if (v7)
      {
        v9 = [v8 state];
        [v9 setNeedsVerification:1];

        v10 = *(v3 + 32);

        return [v10 _queueRefresh];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __52__EDSearchableIndex_setDataSourceIndexingPermitted___block_invoke_2;
        v11[3] = &unk_1E8250260;
        v11[4] = v8;
        return [v8 _dataSourceScheduleWork:v11];
      }
    }

    else
    {

      return [v5 _queueTransitionFromRefresh:0];
    }
  }

  return result;
}

void __52__EDSearchableIndex_setDataSourceIndexingPermitted___block_invoke_2(uint64_t a1)
{
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Finishing because indexing is disabled", v4, 2u);
  }

  v3 = [*(a1 + 32) schedulableDelegate];
  [v3 indexingDidFinishForSearchableIndexSchedulable:*(a1 + 32) backlogComplete:0];
}

- (void)performMaintenancePreWork
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__EDSearchableIndex_performMaintenancePreWork__block_invoke;
  v2[3] = &unk_1E8250260;
  v2[4] = self;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v2];
}

void __46__EDSearchableIndex_performMaintenancePreWork__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSource];
  [v1 queueRedonationForDownloadedMessagesWithUnindexedBodies];
}

- (void)_scheduleSpotlightVerification
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  scheduledVerification = [state scheduledVerification];

  if ((scheduledVerification & 1) == 0)
  {
    state2 = [(EDSearchableIndex *)self state];
    [state2 setScheduledVerification:1];

    indexingScheduler = self->_indexingScheduler;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke;
    v7[3] = &unk_1E8250260;
    v7[4] = self;
    [(EFSuspendableScheduler *)indexingScheduler performBlock:v7];
  }
}

void __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"LastVerificationFailureReportDate"];
  v4 = objc_opt_new();
  v5 = v4;
  if (v3 && ([v4 timeIntervalSinceDate:v3], v6 < 604800.0))
  {
    v7 = 1;
  }

  else
  {
    [v2 removeObjectForKey:@"LastVerificationFailureReportDate"];
    v7 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_2;
  aBlock[3] = &unk_1E8256870;
  v15 = v7;
  v8 = v2;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  v10 = _Block_copy(aBlock);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  [*(a1 + 32) _scheduleSpotlightVerificationOnIndexingQueueWithCompletion:v11];
  [*(a1 + 32) _clearOrphanedSearchableMessagesFromDatabase];
}

void __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      if (v5)
      {
        [v5 addSuccessBlock:&__block_literal_global_175_0];
      }

      else
      {
        __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_3();
      }
    }

    [*(a1 + 32) setObject:*(a1 + 40) forKey:@"LastVerificationFailureReportDate"];
  }
}

void __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_3()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__38;
  v10 = __Block_byref_object_dispose__38;
  v11 = [objc_alloc(MEMORY[0x1E69D4F80]) initWithQueue:0];
  v0 = v7[5];
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v0 signatureWithDomain:@"Mail" type:@"Spotlight" subType:@"Verification Failed" subtypeContext:@"VerificationStateCorrupt" detectedProcess:v2 triggerThresholdValues:0];

  v4 = v7[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_4;
  v5[3] = &unk_1E8256848;
  v5[4] = &v6;
  [v4 snapshotWithSignature:v3 duration:0 events:0 payload:0 actions:v5 reply:0.0];

  _Block_object_dispose(&v6, 8);
}

void __51__EDSearchableIndex__scheduleSpotlightVerification__block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69D50D0]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69D50C0]];
  if (!v4 || ((v6 = [v4 BOOLValue], v5) ? (v7 = v6) : (v7 = 0), (v7 & 1) == 0))
  {
    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69D50A0]];
    v9 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, "Failed to get diagnostic signature with reason: %@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_clearOrphanedSearchableMessagesFromDatabase
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__EDSearchableIndex__clearOrphanedSearchableMessagesFromDatabase__block_invoke;
  v2[3] = &unk_1E8250260;
  v2[4] = self;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v2];
}

void __65__EDSearchableIndex__clearOrphanedSearchableMessagesFromDatabase__block_invoke(uint64_t a1)
{
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Checking messages.searchable_message for orphaned values", v4, 2u);
  }

  v3 = [*(a1 + 32) dataSource];
  [v3 clearOrphanedSearchableMessagesFromDatabase];
}

- (void)_scheduleSpotlightVerificationOnIndexingQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  v5 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  v6 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_INFO, "verifying representative sample of items in the datasource are actually indexed", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__EDSearchableIndex__scheduleSpotlightVerificationOnIndexingQueueWithCompletion___block_invoke;
  v9[3] = &unk_1E82568C0;
  v9[4] = self;
  v7 = completionCopy;
  v11 = v7;
  v8 = v5;
  v10 = v8;
  [(EDSearchableIndex *)self _processSpotlightVerificationWithCompletion:v9];
  [v8 lockWhenCondition:1];
  [v8 unlock];
  [(EDSearchableIndex *)self _transitionWithBudgetTimeUsed:0.0];
}

void __81__EDSearchableIndex__scheduleSpotlightVerificationOnIndexingQueueWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 == 2)
  {
    v9 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Spotlight found everything from the sample";
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v11 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __81__EDSearchableIndex__scheduleSpotlightVerificationOnIndexingQueueWithCompletion___block_invoke_cold_1();
      }

      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v14 = [v13 stringValue];
      [v12 _collectAnalyticsForReindexReason:0 withInfo:v14];

      v15 = *(a1 + 32);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __81__EDSearchableIndex__scheduleSpotlightVerificationOnIndexingQueueWithCompletion___block_invoke_184;
      v19[3] = &unk_1E8256898;
      v16 = v8;
      v20 = v16;
      [v15 _promptToFileRadarAboutReindexing:v19];
      [*(a1 + 32) _handleFailingTransactionIDs:v16];
      v9 = v20;
      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_13;
    }

    v9 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "Datasource couldn't verify or Mail didn't fetch any samples";
LABEL_11:
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
    }
  }

LABEL_12:

LABEL_13:
  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v7);
  }

  [*(*(a1 + 32) + 32) assertIsExecuting:1];
  v18 = [*(a1 + 32) state];
  [v18 setScheduledVerification:0];

  if (a2 == 1)
  {
    [*(a1 + 32) _scheduleSpotlightVerification];
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:1];
}

id __81__EDSearchableIndex__scheduleSpotlightVerificationOnIndexingQueueWithCompletion___block_invoke_184(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v4 = [v2 stringWithFormat:@"Index verification failed for %@ transactions: %@", v3, *(a1 + 32)];

  return v4;
}

- (void)_registerDistantFutureSpotlightVerification
{
  if ([(EDSearchableIndex *)self enableSpotlightVerification])
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __64__EDSearchableIndex__registerDistantFutureSpotlightVerification__block_invoke_2;
    v4[3] = &unk_1E82568E8;
    objc_copyWeak(&v5, &location);
    v3 = _Block_copy(v4);
    ef_xpc_activity_register();

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __64__EDSearchableIndex__registerDistantFutureSpotlightVerification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CE0]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  v3 = v2;
  v4 = _os_feature_enabled_impl();
  v5 = v3;
  v6 = MEMORY[0x1E69E9DA8];
  if (!v4)
  {
    v6 = MEMORY[0x1E69E9D98];
  }

  v7 = v5;
  xpc_dictionary_set_BOOL(v5, *v6, 1);
}

void __64__EDSearchableIndex__registerDistantFutureSpotlightVerification__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _verifySpotlightIndex];
}

- (void)_verifySpotlightIndex
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__EDSearchableIndex__verifySpotlightIndex__block_invoke;
  v3[3] = &unk_1E8250260;
  v3[4] = self;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v3];
}

uint64_t __42__EDSearchableIndex__verifySpotlightIndex__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [v2 setNeedsVerification:1];

  v3 = *(a1 + 32);

  return [v3 _queueTransitionFromRefresh:0];
}

- (void)_handleFailingTransactionIDs:(id)ds
{
  v9 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    -[EDSearchableIndex _handleFailingTransactionIDs:].cold.1(dsCopy, v8, [dsCopy count], v5);
  }

  allObjects = [dsCopy allObjects];
  [(EDSearchableIndex *)self _invalidateItemsInTransactions:allObjects];

  v7 = *MEMORY[0x1E69E9840];
}

- (double)_throttleRequestedSize:(unint64_t *)size targetTime:(double)time action:(id)action
{
  actionCopy = action;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  thermalState = [processInfo thermalState];

  if ((thermalState - 1) >= 3)
  {
    if (thermalState)
    {
      v17 = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      v17 = *size;
    }
  }

  else
  {
    if (!_throttleRequestedSize_targetTime_action__lastLog || ([MEMORY[0x1E695DF00] now], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", _throttleRequestedSize_targetTime_action__lastLog), v13 = v12, v11, v13 > 300.0))
    {
      v14 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Throttling batch size based on thermal conditions", buf, 2u);
      }

      v15 = [MEMORY[0x1E695DF00] now];
      v16 = _throttleRequestedSize_targetTime_action__lastLog;
      _throttleRequestedSize_targetTime_action__lastLog = v15;
    }

    v17 = 4;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __62__EDSearchableIndex__throttleRequestedSize_targetTime_action___block_invoke;
  v30 = &unk_1E8256910;
  v32 = buf;
  v18 = actionCopy;
  v31 = v18;
  v33 = v17;
  v19 = v28;
  v20 = mach_absolute_time();
  v29(v19);
  v21 = mach_absolute_time();
  if (EFGetElapsedTimeSinceAbsoluteTime_onceToken_1 != -1)
  {
    [EDSearchableIndex _throttleRequestedSize:targetTime:action:];
  }

  v23 = EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo_1;
  v22 = *algn_1EDC94D14;

  currentMaximumBatchSize = [(EDSearchableIndex *)self currentMaximumBatchSize];
  v25 = *size;
  v26 = *(v35 + 3);
  if (v26)
  {
    v25 = vcvtad_u64_f64(time / (((v21 - v20) * v23 / v22) / 1000000000.0 / v26) * 0.7 + v25 * 0.3);
  }

  if (v25 <= 4)
  {
    v25 = 4;
  }

  if (v25 >= currentMaximumBatchSize)
  {
    v25 = currentMaximumBatchSize;
  }

  *size = v25;

  _Block_object_dispose(buf, 8);
  return ((v21 - v20) * v23 / v22) / 1000000000.0;
}

void __62__EDSearchableIndex__throttleRequestedSize_targetTime_action___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[6];
  *(*(a1[5] + 8) + 24) = (*(a1[4] + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)setForeground:(BOOL)foreground
{
  if (foreground)
  {
    v4 = 512;
  }

  else
  {
    v4 = 64;
  }

  os_unfair_lock_lock(&self->_mainThreadAccessibleIvarLock);
  self->_currentMaximumBatchSize = v4;

  os_unfair_lock_unlock(&self->_mainThreadAccessibleIvarLock);
}

+ (id)_localClientStateURL
{
  if (_localClientStateURL_onceToken != -1)
  {
    +[EDSearchableIndex _localClientStateURL];
  }

  v3 = _localClientStateURL_result;

  return v3;
}

void __41__EDSearchableIndex__localClientStateURL__block_invoke()
{
  v0 = [MEMORY[0x1E699AE20] baseMailDirectory];
  if (v0)
  {
    v3 = v0;
    v1 = [v0 URLByAppendingPathComponent:@"SpotlightState.json"];
    v2 = _localClientStateURL_result;
    _localClientStateURL_result = v1;

    v0 = v3;
  }
}

+ (id)_localClientState
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    _localClientStateURL = [self _localClientStateURL];
    if (_localClientStateURL)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:_localClientStateURL options:1 error:0];
      v7 = [EDSearchableIndexClientState clientStateFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_saveLocalClientState:(id)state
{
  stateCopy = state;
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__EDSearchableIndex__saveLocalClientState___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (_saveLocalClientState__onceToken != -1)
    {
      dispatch_once(&_saveLocalClientState__onceToken, block);
    }

    [_saveLocalClientState__coalescer coalesceValue:stateCopy];
  }
}

void __43__EDSearchableIndex__saveLocalClientState___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _localClientStateURL];
  v2 = objc_alloc(MEMORY[0x1E699B7A0]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EDSearchableIndex__saveLocalClientState___block_invoke_2;
  v6[3] = &unk_1E8256938;
  v3 = v1;
  v7 = v3;
  v4 = [v2 initWithCoalescingAction:v6];
  v5 = _saveLocalClientState__coalescer;
  _saveLocalClientState__coalescer = v4;
}

void __43__EDSearchableIndex__saveLocalClientState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = [v3 archiveRepresentation];
    [v4 writeToURL:*(a1 + 32) options:0x10000000 error:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtURL:*(a1 + 32) error:0];
  }
}

- (void)_fetchLastClientState
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Requesting last client state from CSSearchableIndex", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke;
  aBlock[3] = &unk_1E8256960;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  searchIndex = [(EDSearchableIndex *)self searchIndex];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke_2_217;
  v13[3] = &unk_1E8256988;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  [searchIndex fetchLastClientStateWithCompletionHandler:v13];

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2.0];
  v10 = [v7 lockWhenCondition:1 beforeDate:v9];

  if (v10)
  {
    [v7 unlock];
  }

  else
  {
    [v7 lock];
    if (![v7 condition])
    {
      v11 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [EDSearchableIndex _fetchLastClientState];
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke_218;
      v12[3] = &unk_1E8250260;
      v12[4] = self;
      [(EDSearchableIndex *)self _dataSourceScheduleWork:v12];
    }

    [v7 unlockWithCondition:1];
  }
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    if (!v5)
    {
      v10 = *(a1 + 32);
      v11 = [objc_opt_class() _localClientState];
      if (v11)
      {
        v12 = +[EDSearchableIndex log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_2(v11, v12);
        }

        v13 = *(a1 + 32);
        [objc_opt_class() _saveLocalClientState:0];
      }
    }

    v14 = [EDSearchableIndexClientState clientStateFromData:v5];
    v15 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &stru_1F45B4608;
      *buf = 138412802;
      v39 = v14;
      v40 = 2112;
      if (!v5)
      {
        v16 = @" (new)";
      }

      v41 = v16;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "last client state: %@%@ data:%@", buf, 0x20u);
    }

    if (!v14 || ![v14 transaction])
    {
      v17 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [v14 transaction];
        __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_3(v14, buf);
      }

      v18 = *(a1 + 32);
      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v14, "transaction")}];
      v20 = [v19 stringValue];
      [v18 _collectAnalyticsForReindexReason:1 withInfo:v20];
    }

    v21 = [*(a1 + 32) state];
    if ([v21 transaction])
    {
      v22 = [*(a1 + 32) state];
      v23 = [v22 transaction];
      LOBYTE(v23) = v23 == [v14 transaction];

      if (v23)
      {
LABEL_25:
        v28 = [v14 transaction];
        v29 = [*(a1 + 32) state];
        [v29 setTransaction:v28];

        v30 = [*(a1 + 32) state];
        [v30 setClientStateFetched:1];

        v31 = *(a1 + 32);
        v32 = [v14 transaction];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke_2;
        v35[3] = &unk_1E8250260;
        v35[4] = *(a1 + 32);
        [v31 _dataSourceInvalidateItemsGreaterThanTransaction:v32 completion:v35];

        goto LABEL_26;
      }

      v24 = *(a1 + 32);
      v25 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v14, "transaction")}];
      v26 = [v25 stringValue];
      [v24 _collectAnalyticsForReindexReason:1 withInfo:v26];

      v27 = *(a1 + 32);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke_211;
      v36[3] = &unk_1E8256898;
      v37 = v14;
      [v27 _promptToFileRadarAboutReindexing:v36];
      v21 = v37;
    }

    goto LABEL_25;
  }

  v8 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [v7 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_1();
  }

  v9 = *(a1 + 32);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __42__EDSearchableIndex__fetchLastClientState__block_invoke_215;
  v34[3] = &unk_1E8250260;
  v34[4] = v9;
  [v9 _dataSourceScheduleWork:v34];
LABEL_26:

  v33 = *MEMORY[0x1E69E9840];
}

id __42__EDSearchableIndex__fetchLastClientState__block_invoke_211(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "transaction")}];
  v3 = [v1 stringWithFormat:@"Invalidated items greater than transaction: %@", v2];

  return v3;
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_215(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulableDelegate];
  [v2 indexingDidFinishForSearchableIndexSchedulable:*(a1 + 32) backlogComplete:0];
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_2_217(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) tryLockWhenCondition:0])
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) unlockWithCondition:1];
  }
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_218(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulableDelegate];
  [v2 indexingDidFinishForSearchableIndexSchedulable:*(a1 + 32) backlogComplete:0];
}

- (void)_noteNeedsLastClientStateFetch
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:0];
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__EDSearchableIndex__noteNeedsLastClientStateFetch__block_invoke;
  v4[3] = &unk_1E8250260;
  v4[4] = self;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v4];
}

void __51__EDSearchableIndex__noteNeedsLastClientStateFetch__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) state];
  [v1 setClientStateFetched:0];
}

- (int64_t)_transaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__EDSearchableIndex__transaction__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __33__EDSearchableIndex__transaction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 transaction];
}

- (int64_t)_nextTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__EDSearchableIndex__nextTransaction__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__EDSearchableIndex__nextTransaction__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) state];
  v2 = [v3 transaction] + 1;
  [v3 setTransaction:v2];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (id)_eventDataForTransitionState:(id)state
{
  v22[5] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  v22[0] = stateCopy;
  v21[0] = @"state";
  v21[1] = @"resumeCount";
  v4 = MEMORY[0x1E696AD98];
  state = [(EDSearchableIndex *)self state];
  v6 = [v4 numberWithLongLong:{objc_msgSend(state, "resumeCount")}];
  v22[1] = v6;
  v21[2] = @"pending";
  v7 = MEMORY[0x1E696AD98];
  state2 = [(EDSearchableIndex *)self state];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(state2, "countOfItemsInPendingQueues")}];
  v22[2] = v9;
  v21[3] = @"preprocessingItemCount";
  v10 = MEMORY[0x1E696AD98];
  state3 = [(EDSearchableIndex *)self state];
  preprocessingItems = [state3 preprocessingItems];
  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(preprocessingItems, "count")}];
  v22[3] = v13;
  v21[4] = @"persistenceAvailable";
  v14 = MEMORY[0x1E696AD98];
  state4 = [(EDSearchableIndex *)self state];
  v16 = [v14 numberWithBool:{objc_msgSend(state4, "persistenceAvailable")}];
  v22[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_suspend
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  suspend = [state suspend];

  v4 = @"still resumed";
  if (suspend < 0)
  {
    v4 = @"already suspended";
  }

  if (!suspend)
  {
    v4 = @"suspending";
  }

  v9 = v4;
  schedulableDelegate = [(EDSearchableIndex *)self schedulableDelegate];
  v6 = [(EDSearchableIndex *)self _eventDataForTransitionState:v9];
  [schedulableDelegate searchableIndexSchedulable:self didGenerateImportantPowerEventWithIdentifier:@"suspend" eventData:v6];

  if (!suspend)
  {
    [schedulableDelegate indexingDidSuspendForSearchableIndexSchedulable:self];
    state2 = [(EDSearchableIndex *)self state];
    [state2 setIsActive:0];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(EDSearchableIndex *)self _suspendIndexingScheduler];
    }

    [(EDSearchableIndex *)self _queueTransitionFromRefresh:0];
  }
}

- (void)suspend
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__EDSearchableIndex_suspend__block_invoke;
  v3[3] = &unk_1E8250260;
  v3[4] = self;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v3];
}

- (void)_resume
{
  v17 = *MEMORY[0x1E69E9840];
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  resume = [state resume];

  v5 = @"still suspended";
  if (resume > 1)
  {
    v5 = @"already resumed";
  }

  if (resume == 1)
  {
    v5 = @"resuming";
  }

  v6 = v5;
  v7 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    state2 = [(EDSearchableIndex *)self state];
    v13 = 138412546;
    v14 = v6;
    v15 = 2048;
    resumeCount = [state2 resumeCount];
    _os_log_debug_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEBUG, "[EDSearchableIndex resume]: %@ (%lld)", &v13, 0x16u);
  }

  schedulableDelegate = [(EDSearchableIndex *)self schedulableDelegate];
  v9 = [(EDSearchableIndex *)self _eventDataForTransitionState:v6];
  [schedulableDelegate searchableIndexSchedulable:self didGenerateImportantPowerEventWithIdentifier:@"resume" eventData:v9];

  if (resume == 1)
  {
    [schedulableDelegate indexingDidResumeForSearchableIndexSchedulable:self];
    state3 = [(EDSearchableIndex *)self state];
    [state3 setIsActive:1];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(EDSearchableIndex *)self _resumeIndexingScheduler];
    }

    [(EDSearchableIndex *)self _queueTransitionFromRefresh:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__EDSearchableIndex_resume__block_invoke;
  v3[3] = &unk_1E8250260;
  v3[4] = self;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v3];
}

- (void)refresh
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__EDSearchableIndex_refresh__block_invoke;
  v3[3] = &unk_1E8250260;
  v3[4] = self;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v3];
}

- (void)setPersistenceAvailable:(BOOL)available
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EDSearchableIndex_setPersistenceAvailable___block_invoke;
  v4[3] = &unk_1E8256800;
  v4[4] = self;
  availableCopy = available;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v4];
}

void __45__EDSearchableIndex_setPersistenceAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 persistenceAvailable];
  v4 = *(a1 + 40);

  if (v4 != v3)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) state];
    [v6 setPersistenceAvailable:v5];

    v7 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      v8 = [*(a1 + 32) searchIndex];
      [v8 setIndexDelegate:v7];

      [*(a1 + 32) _resume];
      v9 = *(a1 + 32);

      [v9 _queueRefresh];
    }

    else
    {
      v10 = *(a1 + 32);

      [v10 _suspend];
    }
  }
}

- (BOOL)isPersistenceAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EDSearchableIndex_isPersistenceAvailable__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__EDSearchableIndex_isPersistenceAvailable__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 persistenceAvailable];
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__EDSearchableIndex_isActive__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__EDSearchableIndex_isActive__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isActive];
}

- (int64_t)resumeCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__EDSearchableIndex_resumeCount__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __32__EDSearchableIndex_resumeCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 resumeCount];
}

- (BOOL)isIndexingDisabledForPPT
{
  os_unfair_lock_lock(&self->_indexingDisabledForPPTLock);
  indexingDisabledForPPT = self->_indexingDisabledForPPT;
  os_unfair_lock_unlock(&self->_indexingDisabledForPPTLock);
  return indexingDisabledForPPT;
}

- (void)setIndexingDisabledForPPT:(BOOL)t
{
  os_unfair_lock_lock(&self->_indexingDisabledForPPTLock);
  self->_indexingDisabledForPPT = t;

  os_unfair_lock_unlock(&self->_indexingDisabledForPPTLock);
}

- (BOOL)clientStateFetched
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EDSearchableIndex_clientStateFetched__block_invoke;
  v5[3] = &unk_1E8251C30;
  v5[4] = self;
  v5[5] = &v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__EDSearchableIndex_clientStateFetched__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 clientStateFetched];
}

- (void)setClientStateFetched:(BOOL)fetched
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EDSearchableIndex_setClientStateFetched___block_invoke;
  v4[3] = &unk_1E8256800;
  v4[4] = self;
  fetchedCopy = fetched;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v4];
}

void __43__EDSearchableIndex_setClientStateFetched___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) state];
  [v2 setClientStateFetched:v1];
}

- (void)_dataSourceScheduleWork:(id)work
{
  workCopy = work;
  v5 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.searchableIndex.dataSourceWorkBlock"];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45__EDSearchableIndex__dataSourceScheduleWork___block_invoke;
  v12 = &unk_1E82518B0;
  v6 = workCopy;
  v14 = v6;
  v7 = v5;
  v13 = v7;
  v8 = _Block_copy(&v9);
  [(EFStoppableScheduler *)self->_dataSourceScheduler performBlock:v8, v9, v10, v11, v12];
}

uint64_t __45__EDSearchableIndex__dataSourceScheduleWork___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_dataSourceAssignTransaction:(int64_t)transaction updates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EDSearchableIndex__dataSourceAssignTransaction_updates_completion___block_invoke;
  v12[3] = &unk_1E8252E78;
  v12[4] = self;
  v13 = updatesCopy;
  v14 = completionCopy;
  transactionCopy = transaction;
  v10 = completionCopy;
  v11 = updatesCopy;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v12];
}

void __69__EDSearchableIndex__dataSourceAssignTransaction_updates_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delayDataSourceAssignmentFuture];
  if (v2)
  {
    v3 = *(a1 + 56);

    if (v3 >= 1)
    {
      v4 = [*(a1 + 32) delayDataSourceAssignmentFuture];
      v5 = [v4 result];
    }
  }

  v6 = [*(a1 + 32) dataSource];
  v8 = [v6 searchableIndex:*(a1 + 32) assignTransaction:*(a1 + 56) updates:*(a1 + 40)];

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (void)_dataSourceAssignTransaction:(int64_t)transaction forIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  v9 = [[EDSearchableIndexUpdates alloc] initWithIdentifiers:identifiersCopy];
  [(EDSearchableIndex *)self _dataSourceAssignTransaction:transaction updates:v9 completion:completionCopy];
}

- (void)_dataSourceInvalidateItemsGreaterThanTransaction:(int64_t)transaction completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__EDSearchableIndex__dataSourceInvalidateItemsGreaterThanTransaction_completion___block_invoke;
  v8[3] = &unk_1E8255CF8;
  v9 = completionCopy;
  transactionCopy = transaction;
  v8[4] = self;
  v7 = completionCopy;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v8];
}

uint64_t __81__EDSearchableIndex__dataSourceInvalidateItemsGreaterThanTransaction_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 searchableIndex:*(a1 + 32) invalidateItemsGreaterThanTransaction:*(a1 + 48)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_dataSourceRequestNeededUpdatesExcludingIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndex.m" lineNumber:1229 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke;
  v12[3] = &unk_1E82534D8;
  v12[4] = self;
  v9 = identifiersCopy;
  v13 = v9;
  v10 = completionCopy;
  v14 = v10;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v12];
}

void __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke(id *a1)
{
  v2 = +[EDSearchableIndex signpostLog];
  v3 = [a1[4] signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "EDSearchableIndexDataSourceUpdates", "", buf, 2u);
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if ([a1[4] isPerformingBlockAffectingDataSourceAndIndex])
  {
    v32[24] = 1;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E699B7F8]) initWithLabel:@"com.apple.mail.searchableIndex.dataSourceCancelation"];
    objc_initWeak(location, v4);
    v5 = a1[4];
    v6 = v5[4];
    [v5 dataSourceUpdateTimeLimit];
    v8 = v7;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_273;
    v24[3] = &unk_1E8250098;
    objc_copyWeak(&v25, location);
    v24[4] = a1[4];
    v9 = [v6 afterDelay:v24 performBlock:v8];
    v10 = a1[4];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_276;
    v20[3] = &unk_1E82569B0;
    v20[4] = v10;
    v21 = a1[5];
    v11 = v4;
    v22 = v11;
    v23 = buf;
    [v10 _throttleRequestedSize:v10 + 56 targetTime:v20 action:0.5];
    v28[3] = v12;

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  v13 = a1[4];
  v14 = v13[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_2;
  v17[3] = &unk_1E82569D8;
  v19 = &v27;
  v17[4] = v13;
  v18 = a1[6];
  [v14 performSyncBlock:v17];
  if (v32[24] == 1)
  {
    [a1[4] refresh];
  }

  v15 = +[EDSearchableIndex signpostLog];
  v16 = [a1[4] signpostID];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(location[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v15, OS_SIGNPOST_INTERVAL_END, v16, "EDSearchableIndexDataSourceUpdates", "", location, 2u);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);
}

void __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_273(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_273_cold_1();
    }

    [WeakRetained cancel];
    v4 = [*(a1 + 32) schedulableDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 didCancelDataSourceUpdateRequestForSearchableIndexSchedulable:*(a1 + 32)];
    }
  }
}

uint64_t __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_276(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  [*(a1 + 32) _suspendIndexingScheduler];
  v5 = [*v4 dataSource];
  v6 = [v5 itemsToRemoveForSearchableIndex:*v4];

  if ([v6 count])
  {
    v7 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Removing %@ items", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v9 dataSourceRefreshReasons];
    [v9 removeItemsWithIdentifiers:v6 reasons:v10 fromRefresh:1];
  }

  v11 = [*(a1 + 32) dataSource];
  v12 = [v11 itemsToIndexForSearchableIndex:*(a1 + 32) excludingIdentifiers:*(a1 + 40) count:a2 cancelationToken:*(a1 + 48)];

  if ([v12 count])
  {
    v13 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      v15 = *(*(a1 + 32) + 56);
      *buf = 138412802;
      v38 = v14;
      v39 = 2048;
      v40 = v15;
      v41 = 2048;
      v42 = a2;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_INFO, "Indexing %@ items throttledDataSourceBatchSize:%lu batchSize:%lu", buf, 0x20u);
    }

    [*(a1 + 32) _indexItems:v12 fromRefresh:1 immediately:0];
  }

  v16 = [*(a1 + 32) dataSource];
  v17 = [v16 domainsToRemoveForSearchableIndex:*(a1 + 32)];

  if ([v17 count])
  {
    v18 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      *buf = 138412290;
      v38 = v19;
      _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_INFO, "Removing %@ domains", buf, 0xCu);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [*(a1 + 32) removeItemsForDomainIdentifier:*(*(&v32 + 1) + 8 * i)];
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }
  }

  [*(a1 + 32) _resumeIndexingScheduler];
  v24 = [v12 count];
  if (v24 || [*(a1 + 48) isCanceled])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if ([*(a1 + 32) isDataSourceIndexingPermitted])
  {
    v27 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v38 = 0;
      v39 = 2048;
      v40 = a2;
      _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "Data source returned %lu out of %lu requested items to index.", buf, 0x16u);
    }

    v28 = [*(a1 + 32) schedulableDelegate];
    [v28 indexingDidFinishForSearchableIndexSchedulable:*(a1 + 32) backlogComplete:1];

    v29 = *(a1 + 32);
    v30 = *(v29 + 32);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_277;
    v31[3] = &unk_1E8250260;
    v31[4] = v29;
    [v30 performBlock:v31];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

void __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_277(uint64_t a1)
{
  v1 = [*(a1 + 32) state];
  [v1 didCompleteBacklog];
}

uint64_t __84__EDSearchableIndex__dataSourceRequestNeededUpdatesExcludingIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) > 0.0)
  {
    [*(a1 + 32) _queueConsumeBudgetElapsedPeriod:?];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_dataSourceVerifyRepresentativeSampleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__EDSearchableIndex__dataSourceVerifyRepresentativeSampleWithCompletion___block_invoke;
    v6[3] = &unk_1E8250C30;
    v6[4] = self;
    v7 = completionCopy;
    [(EDSearchableIndex *)self _dataSourceScheduleWork:v6];
  }
}

void __73__EDSearchableIndex__dataSourceVerifyRepresentativeSampleWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [[EDSearchableIndexVerifier alloc] initWithDataSource:*(a1 + 32)];
  [(EDSearchableIndexVerifier *)v2 verifyDataSamplesWithCompletionHandler:*(a1 + 40) scheduler:*(*(a1 + 32) + 32)];
}

- (void)_dataSourcePrepareToIndexItems:(id)items fromRefresh:(BOOL)refresh withCompletion:(id)completion
{
  refreshCopy = refresh;
  itemsCopy = items;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke;
  v14[3] = &unk_1E8256A28;
  v14[4] = self;
  v10 = itemsCopy;
  v15 = v10;
  v16 = refreshCopy;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v14];
  if (refreshCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_3;
    v11[3] = &unk_1E82534D8;
    v11[4] = self;
    v12 = v10;
    v13 = completionCopy;
    [(EDSearchableIndex *)self _dataSourceScheduleWork:v11];
  }
}

void __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analytics];
  v3 = [v2 willEnqueueItems:*(a1 + 40) fromBacklog:*(a1 + 48)];

  if ([v3 count])
  {
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_2;
    v5[3] = &unk_1E8256A00;
    v6 = v3;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

void __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 setEnqueuedDonation:v5];
}

void __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_3(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v1 = +[EDSearchableIndex signpostLog];
  v2 = [*(a1 + 32) signpostID];
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v1, OS_SIGNPOST_INTERVAL_BEGIN, v2, "EDSearchableIndexDataSourcePrepare", "", buf, 2u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v3)
  {
    v31 = *v46;
    *&v4 = 138413058;
    v28 = v4;
    do
    {
      v5 = 0;
      v32 = v3;
      do
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * v5);
        v7 = [v6 indexingType];
        if ([EDSearchableIndex isIncrementalIndexingType:v7])
        {
          v8 = [*(a1 + 32) dataSource];
          v9 = [v8 indexingTypeForSearchableIndex:*(a1 + 32) item:v6];

          if (v9 != v7)
          {
            *buf = 0;
            v40 = buf;
            v41 = 0x3032000000;
            v42 = __Block_byref_object_copy__38;
            v43 = __Block_byref_object_dispose__38;
            v44 = 0;
            v10 = *(a1 + 32);
            v11 = *(v10 + 32);
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_281;
            v38[3] = &unk_1E8251C30;
            v38[4] = v10;
            v38[5] = buf;
            [v11 performSyncBlock:v38];
            v33 = [v6 identifier];
            if (([*(v40 + 5) containsObject:?] & 1) == 0)
            {
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v12 = *(a1 + 40);
              v13 = [v12 countByEnumeratingWithState:&v34 objects:v57 count:16];
              if (v13)
              {
                v14 = *v35;
LABEL_14:
                v15 = 0;
                while (1)
                {
                  if (*v35 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v34 + 1) + 8 * v15);
                  if (v16 != v6 && !+[EDSearchableIndex isIncrementalIndexingType:](EDSearchableIndex, "isIncrementalIndexingType:", [*(*(&v34 + 1) + 8 * v15) indexingType]))
                  {
                    v17 = [v16 identifier];
                    v18 = [v17 isEqualToString:v33];

                    if (v18)
                    {
                      break;
                    }
                  }

                  if (v13 == ++v15)
                  {
                    v13 = [v12 countByEnumeratingWithState:&v34 objects:v57 count:16];
                    if (v13)
                    {
                      goto LABEL_14;
                    }

                    goto LABEL_22;
                  }
                }

LABEL_32:
              }

              else
              {
LABEL_22:

                if (v9 == 5)
                {
                  v21 = +[EDSearchableIndex log];
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = [v6 identifier];
                    *v49 = 138412802;
                    v50 = v6;
                    v51 = 2114;
                    v52 = v22;
                    v53 = 2048;
                    v54 = v7;
                    _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Changing indexingType for item %@ identifier: %{public}@ from %ld using setNeedsAllAttributesIncludingDataDetectionResultsIndexingType", v49, 0x20u);
                  }

                  [v6 setNeedsAllAttributesIncludingDataDetectionResultsIndexingType];
                }

                else
                {
                  if (v9)
                  {
                    [v6 setIndexingType:v9];
                    v12 = +[EDSearchableIndex log];
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                    {
                      v23 = [v6 identifier];
                      *v49 = v28;
                      v50 = v6;
                      v51 = 2114;
                      v52 = v23;
                      v53 = 2048;
                      v54 = v7;
                      v55 = 2048;
                      v56 = v9;
                      _os_log_error_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_ERROR, "Unexpected changing of indexingType for item %@ identifier: %{public}@ from %ld to %ld", v49, 0x2Au);
                    }

                    goto LABEL_32;
                  }

                  v19 = +[EDSearchableIndex log];
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [v6 identifier];
                    *v49 = 138412802;
                    v50 = v6;
                    v51 = 2114;
                    v52 = v20;
                    v53 = 2048;
                    v54 = v7;
                    _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Changing indexingType for item %@ identifier: %{public}@ from %ld using setNeedsAllAttributesIndexingType", v49, 0x20u);
                  }

                  [v6 setNeedsAllAttributesIndexingType];
                }
              }
            }

            _Block_object_dispose(buf, 8);
          }
        }

        ++v5;
      }

      while (v5 != v32);
      v3 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v3);
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))();
  }

  v25 = +[EDSearchableIndex signpostLog];
  v26 = [*(a1 + 32) signpostID];
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v25, OS_SIGNPOST_INTERVAL_END, v26, "EDSearchableIndexDataSourcePrepare", "", buf, 2u);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __79__EDSearchableIndex__dataSourcePrepareToIndexItems_fromRefresh_withCompletion___block_invoke_281(uint64_t a1)
{
  v5 = [*(a1 + 32) state];
  v2 = [v5 pendingIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)bundleIDForSearchableIndexVerifier:(id)verifier
{
  searchableIndexBundleID = [(EDSearchableIndex *)self searchableIndexBundleID];

  return searchableIndexBundleID;
}

- (id)dataSamplesForSearchableIndexVerifier:(id)verifier searchableIndex:(id)index count:(unint64_t)count lastVerifiedMessageID:(int64_t)d
{
  indexCopy = index;
  dataSource = [(EDSearchableIndex *)self dataSource];
  v11 = [dataSource verificationDataSamplesForSearchableIndex:indexCopy count:count lastVerifiedMessageID:d];

  return v11;
}

- (id)knownTransactionIDsForSearchableIndexVerifier:(id)verifier
{
  dataSource = [(EDSearchableIndex *)self dataSource];
  v5 = [dataSource distinctTransactionIDsForSearchableIndex:self];

  return v5;
}

- (void)_startCoalescingTimer
{
  v14 = *MEMORY[0x1E69E9840];
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  if (!self->_coalescingTimer)
  {
    v3 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      coalescingDelaySeconds = self->_coalescingDelaySeconds;
      *buf = 134217984;
      v13 = coalescingDelaySeconds;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "starting coalescing timer (t=%fs)", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    stateTransitionScheduler = self->_stateTransitionScheduler;
    v6 = self->_coalescingDelaySeconds;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__EDSearchableIndex__startCoalescingTimer__block_invoke;
    v10[3] = &unk_1E8250808;
    objc_copyWeak(&v11, buf);
    v7 = [(EFAssertableScheduler *)stateTransitionScheduler afterDelay:v10 performBlock:v6];
    coalescingTimer = self->_coalescingTimer;
    self->_coalescingTimer = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __42__EDSearchableIndex__startCoalescingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coalescingTimerFired];
}

- (void)_stopCoalescingTimer
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  if (self->_coalescingTimer)
  {
    v3 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "stopping coalescing timer", v5, 2u);
    }

    [(EFCancelable *)self->_coalescingTimer cancel];
    coalescingTimer = self->_coalescingTimer;
    self->_coalescingTimer = 0;
  }
}

- (void)_coalescingTimerFired
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "coalescing timer fired", v6, 2u);
  }

  state = [(EDSearchableIndex *)self state];
  [state setCoalesceTimerFired:1];

  coalescingTimer = self->_coalescingTimer;
  self->_coalescingTimer = 0;

  [(EDSearchableIndex *)self _queueTransitionFromRefresh:0];
}

- (void)_transitionWithBudgetTimeUsed:(double)used
{
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__EDSearchableIndex__transitionWithBudgetTimeUsed___block_invoke;
  v4[3] = &unk_1E8250A90;
  v4[4] = self;
  *&v4[5] = used;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v4];
}

uint64_t __51__EDSearchableIndex__transitionWithBudgetTimeUsed___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queueConsumeBudgetElapsedPeriod:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _queueTransitionFromRefresh:0];
}

- (void)_queueConsumeBudgetElapsedPeriod:(double)period
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  schedulableDelegate = [(EDSearchableIndex *)self schedulableDelegate];
  [schedulableDelegate searchableIndexSchedulable:self didIndexForTime:period];
}

- (void)_queueConsumeBudgetItemCount:(unint64_t)count lastItemDateReceived:(id)received
{
  receivedCopy = received;
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  schedulableDelegate = [(EDSearchableIndex *)self schedulableDelegate];
  [schedulableDelegate searchableIndexSchedulable:self didIndexItemCount:count lastItemDateReceived:receivedCopy];
}

- (void)_queueRefresh
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  [state setNeedsRefresh:1];

  [(EDSearchableIndex *)self _queueTransitionFromRefresh:1];
}

- (void)_suspendIndexingScheduler
{
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EDSearchableIndex _suspendIndexingScheduler];
  }

  [(EFSuspendableScheduler *)self->_indexingScheduler suspend];
}

- (void)_resumeIndexingScheduler
{
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [EDSearchableIndex _resumeIndexingScheduler];
  }

  [(EFSuspendableScheduler *)self->_indexingScheduler resume];
}

- (void)_logSignpostForIndexingBatchStartWithPendingItemsCount:(id)count
{
  v10 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v5 = +[EDSearchableIndex signpostLog];
  signpostID = [(EDSearchableIndex *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 138543362;
    v9 = countCopy;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDSearchableIndexBatchProcessing", "BatchStartedWithPendingItemCount=%{signpost.description:attribute,public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_logSignpostForIndexingBatchAssignedDomainRemovalCount:(unint64_t)count
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = +[EDSearchableIndex signpostLog];
  signpostID = [(EDSearchableIndex *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 134349056;
    countCopy = count;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_EVENT, signpostID, "EDSearchableIndexBatchProcessing", "BatchAssignedDomnainRemovalCount=%{signpost.description:attribute,public}llu", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_logSignpostForIndexingBatchAssignedUpdatesWithItemsIndexedCount:(unint64_t)count
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = +[EDSearchableIndex signpostLog];
  signpostID = [(EDSearchableIndex *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 134349056;
    countCopy = count;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_EVENT, signpostID, "EDSearchableIndexBatchProcessing", "BatchAssignedDomnainRemovalCount=%{signpost.description:attribute,public}llu", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_logSignpostForIndexingBatchCompletedWithItemsIndexedCount:(id)count
{
  v10 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v5 = +[EDSearchableIndex signpostLog];
  signpostID = [(EDSearchableIndex *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = 138543362;
    v9 = countCopy;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v5, OS_SIGNPOST_INTERVAL_END, signpostID, "EDSearchableIndexBatchProcessing", "BatchFinishedWithItemIndexedCount=%{signpost.description:attribute,public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleProcessPendingItemsFromRefresh:(BOOL)refresh
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  scheduledProcessing = [state scheduledProcessing];

  if ((scheduledProcessing & 1) == 0)
  {
    v7 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [EDSearchableIndex _scheduleProcessPendingItemsFromRefresh:];
    }

    state2 = [(EDSearchableIndex *)self state];
    [state2 setScheduledProcessing:1];

    v9 = [MEMORY[0x1E699B860] transactionWithDescription:@"com.apple.email.searchableIndex.indexingBatch"];
    indexingScheduler = self->_indexingScheduler;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke;
    v12[3] = &unk_1E8256A28;
    refreshCopy = refresh;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    [(EFSuspendableScheduler *)indexingScheduler performBlock:v12];
  }
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke(uint64_t a1)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = -86;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2;
  v35[3] = &unk_1E8256A50;
  v35[4] = v2;
  v35[5] = &v44;
  v35[6] = &v40;
  v35[7] = &v36;
  [v3 performSyncBlock:v35];
  v4 = [*(a1 + 32) schedulableDelegate];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v5 = 0.0;
  if (*(v45 + 24) == 1)
  {
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(*(*(a1 + 32) + 72), &state);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41[3]];
    v7 = *(a1 + 32);
    v54[1] = @"preprocessing";
    v55[0] = v6;
    v54[0] = @"pending";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37[3]];
    v55[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    [v4 searchableIndexSchedulable:v7 didGeneratePowerEventWithIdentifier:@"Start Indexing Batch" eventData:v9];

    [*(a1 + 32) _logSignpostForIndexingBatchStartWithPendingItemsCount:v6];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0xAAAAAAAAAAAAAAAALL;
    v10 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_3;
    v24[3] = &unk_1E8256B68;
    v25 = *(a1 + 48);
    v24[4] = v10;
    v24[5] = &v26;
    v24[6] = &v31;
    [v10 _throttleRequestedSize:v10 + 48 targetTime:v24 action:0.5];
    v5 = v11;
    os_activity_scope_leave(&state);
    [*(a1 + 40) invalidate];
    v12 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v27[3];
      *buf = 134218240;
      v51 = v13;
      v52 = 2048;
      v53 = v5;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_INFO, "batch of %lu items took %.4gs to index", buf, 0x16u);
    }

    _Block_object_dispose(&v26, 8);
  }

  [*(a1 + 32) _transitionWithBudgetTimeUsed:v5];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32[3]];
  [*(a1 + 32) _logSignpostForIndexingBatchCompletedWithItemsIndexedCount:v14];
  if (v5 > 0.0 && v32[3])
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_305;
    v23[3] = &unk_1E8255318;
    v23[4] = v15;
    v23[5] = &v40;
    v23[6] = &v36;
    [v16 performSyncBlock:v23];
    v49[0] = v14;
    v48[0] = @"countOfItemsIndexed";
    v48[1] = @"elapsedTime";
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v49[1] = v17;
    v48[2] = @"itemsPerSecond";
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v32[3] / v5];
    v49[2] = v18;
    v48[3] = @"pending";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41[3]];
    v49[3] = v19;
    v48[4] = @"preprocessing";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37[3]];
    v49[4] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];

    [v4 searchableIndexSchedulable:*(a1 + 32) didGenerateImportantPowerEventWithIdentifier:@"Finished Indexing Batch" eventData:v21];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) state];
  [v3 setScheduledProcessing:0];

  v4 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v4 clientStateFetched];

  v5 = [*(a1 + 32) state];
  *(*(*(a1 + 48) + 8) + 24) = [v5 countOfItemsInPendingQueues];

  v6 = [*(a1 + 32) state];
  v2 = [v6 preprocessingItems];
  *(*(*(a1 + 56) + 8) + 24) = [v2 count];
}

uint64_t __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) _consumeBatchOfSize:a2];
  v44 = [*v3 _identifiersStringForItems:v4 maxLength:150];
  v5 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v44;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Indexing batch of %@ items: %{public}@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() indexWhileLockedLog];
  if (v8 && (EFProtectedDataAvailable() & 1) == 0)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "Indexing batch of %@ items: %{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 32);
  v74 = 0;
  v75 = 0;
  [v11 _getDomainRemovals:&v75 identifierRemovals:&v74];
  v12 = v75;
  v45 = v74;
  v13 = [v4 count];
  v14 = [v45 count];
  if (v14 + v13 + [v12 count])
  {
    v15 = +[EDSearchableIndexClientState clientState];
    v42 = +[EDSearchableIndexClientState clientState];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v77 = __Block_byref_object_copy__38;
    v78 = __Block_byref_object_dispose__38;
    v16 = v15;
    v79 = v16;
    [v16 setTransaction:{objc_msgSend(*(a1 + 32), "_nextTransaction")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_291;
    aBlock[3] = &unk_1E8256AA0;
    aBlock[4] = *(a1 + 32);
    v17 = v4;
    v72 = v17;
    v73 = v44;
    v41 = _Block_copy(aBlock);
    v43 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:9];
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v18 = [*(a1 + 32) _processDomainRemovals:v12];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_295;
    v56[3] = &unk_1E8256AF0;
    v57 = v12;
    v20 = v41;
    v64 = v20;
    v21 = v16;
    v22 = *(a1 + 32);
    v39 = v21;
    v58 = v21;
    v59 = v22;
    v23 = v42;
    v60 = v23;
    v65 = buf;
    v24 = v17;
    v61 = v24;
    v66 = &v67;
    v40 = v19;
    v62 = v40;
    v25 = v45;
    v63 = v25;
    v26 = [v18 onScheduler:v43 then:v56];

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2_300;
    v50[3] = &unk_1E8256B18;
    v50[4] = *(a1 + 32);
    v27 = v24;
    v51 = v27;
    v28 = v40;
    v52 = v28;
    v53 = v25;
    v29 = v20;
    v55 = v29;
    v30 = v23;
    v54 = v30;
    v31 = [v26 onScheduler:v43 then:v50];

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_302;
    v46[3] = &unk_1E8256B40;
    v32 = v27;
    v49 = buf;
    v33 = *(a1 + 32);
    v47 = v32;
    v48 = v33;
    v34 = [v31 onScheduler:v43 recover:v46];

    v35 = [v34 result:0];
    if ([*(a1 + 32) canIndexAttachments] && *(v68 + 24) == 1 && (*(a1 + 56) & 1) == 0)
    {
      [*(a1 + 32) refresh];
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(buf, 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = [v4 count];
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 40) + 8) + 24);
  v36 = *(*(*(a1 + 40) + 8) + 24);

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_291(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v7 transaction];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2_292;
  v16 = &unk_1E8256A78;
  v20 = a4;
  v11 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v11;
  v19 = *(a1 + 48);
  [v9 _dataSourceAssignTransaction:v10 updates:v8 completion:&v13];
  v12 = *(a1 + 32);
  [objc_opt_class() _saveLocalClientState:{v7, v13, v14, v15, v16, v17}];
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2_292(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(a1 + 32) + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_3_293;
    v5[3] = &unk_1E8250720;
    v6 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v7 = v3;
    v8 = v4;
    [v2 performSyncBlock:v5];
  }
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_3_293(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "Clearing %lu items %{public}@ from processingItems", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) state];
  [v5 didIndexItems:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

id __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_295(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = [EDSearchableIndexUpdates alloc];
    v3 = [*(a1 + 32) allObjects];
    v4 = [(EDSearchableIndexUpdates *)v2 initWithRemovedDomainIdentifiers:v3];

    v5 = *(a1 + 40);
    (*(*(a1 + 88) + 16))();
    [*(a1 + 48) _logSignpostForIndexingBatchAssignedDomainRemovalCount:{objc_msgSend(*(a1 + 32), "count")}];
  }

  [*(a1 + 56) setTransaction:{objc_msgSend(*(a1 + 48), "_nextTransaction")}];
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 56));
  v6 = [MEMORY[0x1E699B868] promise];
  v7 = +[EDSearchableIndex signpostLog];
  v8 = [*(a1 + 48) signpostID];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "EDSearchableIndexCSProcessing", "BatchBeginCoreSpotlightBatch", buf, 2u);
  }

  v9 = [*(a1 + 48) searchIndex];
  [v9 beginIndexBatch];

  v10 = [*(a1 + 48) analytics];
  v11 = [v10 batchDidStart:*(a1 + 64)];

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 48) _processIndexingBatch:*(a1 + 64) clientState:*(a1 + 56) itemsNotIndexed:*(a1 + 72)];
  [*(a1 + 48) _processIdentifierRemovals:*(a1 + 80)];
  v12 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 56);
    *buf = 138412290;
    v33 = v13;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Ending batch with client state: %@", buf, 0xCu);
  }

  v14 = *(a1 + 48);
  v15 = [objc_opt_class() indexWhileLockedLog];
  if (v15 && (EFProtectedDataAvailable() & 1) == 0 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 56);
    *buf = 138412290;
    v33 = v16;
    _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Ending batch with client state: %@", buf, 0xCu);
  }

  v17 = [*(a1 + 48) searchIndex];
  v18 = [*(a1 + 56) archiveRepresentation];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_297;
  v27 = &unk_1E8256AC8;
  v19 = v6;
  v20 = *(a1 + 48);
  v28 = v19;
  v29 = v20;
  v31 = v11;
  v30 = *(a1 + 64);
  [v17 endIndexBatchWithClientState:v18 completionHandler:&v24];

  v21 = [v19 future];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_297(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  (v3)[2](v3, v6);

  v4 = [*(a1 + 40) analytics];
  [v4 batchDidEnd:*(a1 + 56) error:v6];

  v5 = [*(a1 + 40) analytics];
  if (v6)
  {
    [v5 didFailToDonateItems:*(a1 + 48)];
  }

  else
  {
    [v5 didDonateItems:*(a1 + 48)];
  }
}

id __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_2_300(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndex signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C61EF000, v2, OS_SIGNPOST_INTERVAL_END, v3, "EDSearchableIndexCSProcessing", "BatchEndCoreSpotlightBatch", &v18, 2u);
  }

  v4 = [*(a1 + 40) arrayByExcludingObjectsInArray:*(a1 + 48)];
  v5 = [*(a1 + 56) identifiers];
  v6 = [EDSearchableIndexUpdates alloc];
  v7 = [(EDSearchableIndexUpdates *)v6 initWithIndexableItems:v4 removedIdentifiers:v5 removedDomainIdentifiers:MEMORY[0x1E695E0F0]];
  v8 = *(a1 + 32);
  v9 = [objc_opt_class() indexWhileLockedLog];
  if (v9 && (EFProtectedDataAvailable() & 1) == 0)
  {
    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) _identifiersStringForItems:*(a1 + 40) maxLength:150];
      v18 = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Recording successful index of items: %@", &v18, 0xCu);
    }
  }

  v12 = *(a1 + 64);
  (*(*(a1 + 72) + 16))();
  v13 = *(a1 + 32);
  v14 = [(EDSearchableIndexUpdates *)v7 indexedItems];
  [v13 _logSignpostForIndexingBatchAssignedUpdatesWithItemsIndexedCount:{objc_msgSend(v14, "count")}];

  v15 = [MEMORY[0x1E699B7C8] nullFuture];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_302(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v14 = [*(a1 + 32) count];
    v15 = [*(*(*(a1 + 48) + 8) + 40) transaction];
    v16 = [v3 ef_publicDescription];
    *buf = 134218498;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    v30 = 2114;
    v31 = v16;
    _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "Spotlight failed to index %ld items (transaction=%lld) failed with error: %{public}@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v6 = [objc_opt_class() indexWhileLockedLog];
  if (v6 && (EFProtectedDataAvailable() & 1) == 0)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) count];
      v18 = [*(*(*(a1 + 48) + 8) + 40) transaction];
      v19 = [v3 ef_publicDescription];
      *buf = 134218498;
      v27 = v17;
      v28 = 2048;
      v29 = v18;
      v30 = 2114;
      v31 = v19;
      _os_log_error_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_ERROR, "Spotlight failed to index %ld items (transaction=%lld) failed with error: %{public}@", buf, 0x20u);
    }
  }

  [*(a1 + 40) _noteNeedsLastClientStateFetch];
  v8 = *(*(a1 + 40) + 32);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_303;
  v23 = &unk_1E8250128;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v24 = v9;
  v25 = v10;
  [v8 performSyncBlock:&v20];
  v11 = [MEMORY[0x1E699B7C8] futureWithError:{v3, v20, v21, v22, v23}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_303(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "Clearing %lu items from processingItems due to indexing failure", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) state];
  [v4 failedToIndexItems:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

void __61__EDSearchableIndex__scheduleProcessPendingItemsFromRefresh___block_invoke_305(uint64_t a1)
{
  v3 = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = [v3 countOfItemsInPendingQueues];

  v4 = [*(a1 + 32) state];
  v2 = [v4 preprocessingItems];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count];
}

- (void)_scheduleDataSourceRefresh
{
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  scheduledRefresh = [state scheduledRefresh];

  if ((scheduledRefresh & 1) == 0)
  {
    state2 = [(EDSearchableIndex *)self state];
    [state2 setScheduledRefresh:1];

    indexingScheduler = self->_indexingScheduler;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__EDSearchableIndex__scheduleDataSourceRefresh__block_invoke;
    v7[3] = &unk_1E8250260;
    v7[4] = self;
    [(EFSuspendableScheduler *)indexingScheduler performBlock:v7];
  }
}

uint64_t __47__EDSearchableIndex__scheduleDataSourceRefresh__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__EDSearchableIndex__scheduleDataSourceRefresh__block_invoke_2;
  v4[3] = &unk_1E8250260;
  v4[4] = v2;
  [v2 _processRefreshRequestWithCompletion:v4];
  return [*(a1 + 32) _transitionWithBudgetTimeUsed:0.0];
}

void __47__EDSearchableIndex__scheduleDataSourceRefresh__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 32) assertIsExecuting:1];
  v2 = [*(a1 + 32) state];
  [v2 setScheduledRefresh:0];
}

- (id)_consumeBatchOfSize:(unint64_t)size
{
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__38;
  v13 = __Block_byref_object_dispose__38;
  v14 = 0;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EDSearchableIndex__consumeBatchOfSize___block_invoke;
  v8[3] = &unk_1E8256B90;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = size;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __41__EDSearchableIndex__consumeBatchOfSize___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  v3 = [v2 pendingItems];
  v4 = [v3 count];

  v5 = [*(a1 + 32) state];
  v6 = [v5 processBatchOfSize:*(a1 + 48)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) state];
  v10 = [v9 pendingItems];
  v11 = [v10 count];

  if (v4 != v11)
  {
    v12 = [*(a1 + 32) _identifiersStringForItems:*(*(*(a1 + 40) + 8) + 40) maxLength:150];
    v13 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218498;
      v18 = v4 - v11;
      v19 = 2048;
      v20 = v4;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "consuming %lu items out of a potential %lu new processingItems: %{public}@", &v17, 0x20u);
    }
  }

  if ((v11 - 4) <= 0xB)
  {
    v14 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v11;
      _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Allowing immediate indexing of %lu pending items", &v17, 0xCu);
    }

    v15 = [*(a1 + 32) state];
    [v15 setIndexImmediately:1];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_identifiersForItems:(id)items
{
  v3 = [items ef_map:&__block_literal_global_320];

  return v3;
}

id __42__EDSearchableIndex__identifiersForItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];

  return v2;
}

- (id)_identifiersStringForItems:(id)items maxLength:(unint64_t)length
{
  v5 = [(EDSearchableIndex *)self _identifiersForItems:items];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"[%@]", v7];

  v9 = [v8 length];
  if (v9 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = v9;
  }

  v11 = [v8 substringToIndex:lengthCopy];

  return v11;
}

- (void)_getDomainRemovals:(id *)removals identifierRemovals:(id *)identifierRemovals
{
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__38;
  v23 = __Block_byref_object_dispose__38;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__38;
  v17 = __Block_byref_object_dispose__38;
  v18 = 0;
  objc_initWeak(&location, self);
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__EDSearchableIndex__getDomainRemovals_identifierRemovals___block_invoke;
  v8[3] = &unk_1E8256BD8;
  objc_copyWeak(&v9, &location);
  v10 = removals != 0;
  v11 = identifierRemovals != 0;
  v8[4] = &v13;
  v8[5] = &v19;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v8];
  if (removals)
  {
    *removals = v14[5];
  }

  if (identifierRemovals)
  {
    *identifierRemovals = v20[5];
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
}

void __59__EDSearchableIndex__getDomainRemovals_identifierRemovals___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 1)
  {
    v2 = [WeakRetained state];
    v3 = [v2 removePendingDomainRemovals];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (*(a1 + 57) == 1)
  {
    v6 = [WeakRetained state];
    v7 = [v6 pendingIdentifierRemovals];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [_EDSearchableIndexPendingRemovals alloc];
    v11 = [WeakRetained purgeReasons];
    v12 = [WeakRetained exclusionReasons];
    v13 = [(_EDSearchableIndexPendingRemovals *)v10 initWithPurgeReasons:v11 exclusionReasons:v12];
    v14 = [WeakRetained state];
    [v14 setPendingIdentifierRemovals:v13];
  }
}

- (BOOL)_processIndexingBatch:(id)batch clientState:(id)state itemsNotIndexed:(id)indexed
{
  v57 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  stateCopy = state;
  indexedCopy = indexed;
  v10 = [batchCopy count];
  if (v10)
  {
    v11 = +[EDSearchableIndex signpostLog];
    signpostID = [(EDSearchableIndex *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDSearchableIndexCreateSearchableItems", "", buf, 2u);
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke;
    v47[3] = &unk_1E8256C28;
    v47[4] = self;
    v48 = stateCopy;
    v49 = indexedCopy;
    v13 = [batchCopy ef_map:v47];
    v14 = [MEMORY[0x1E699B7C8] join:v13];
    v46 = 0;
    v15 = [v14 result:&v46];
    v37 = v46;
    v16 = [v15 ef_filter:*MEMORY[0x1E699B748]];

    v17 = +[EDSearchableIndex signpostLog];
    signpostID2 = [(EDSearchableIndex *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C61EF000, v17, OS_SIGNPOST_INTERVAL_END, signpostID2, "EDSearchableIndexCreateSearchableItems", "", buf, 2u);
    }

    if (!v16)
    {
      v19 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [v37 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDSearchableIndex _processIndexingBatch:clientState:itemsNotIndexed:];
      }
    }

    v20 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v16 count];
      throttledIndexingBatchSize = self->_throttledIndexingBatchSize;
      *buf = 134218496;
      v52 = v21;
      v53 = 2048;
      v54 = v10;
      v55 = 2048;
      v56 = throttledIndexingBatchSize;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "indexing %lu / %lu items, throttled batch size %lu", buf, 0x20u);
    }

    indexWhileLockedLog = [objc_opt_class() indexWhileLockedLog];
    if (indexWhileLockedLog && (EFProtectedDataAvailable() & 1) == 0)
    {
      v24 = indexWhileLockedLog;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v16 count];
        v26 = self->_throttledIndexingBatchSize;
        *buf = 134218496;
        v52 = v25;
        v53 = 2048;
        v54 = v10;
        v55 = 2048;
        v56 = v26;
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, "indexing %lu / %lu items, throttled batch size %lu", buf, 0x20u);
      }
    }

    if ([v16 count])
    {
      searchIndex = [(EDSearchableIndex *)self searchIndex];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_329;
      v43[3] = &unk_1E8256C50;
      v28 = v16;
      v44 = v28;
      selfCopy = self;
      [searchIndex indexSearchableItems:v28 completionHandler:v43];

      if ([(EDSearchableIndex *)self canIndexAttachments])
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v29 = v28;
        v30 = [v29 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v30)
        {
          v31 = *v40;
          while (2)
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v40 != v31)
              {
                objc_enumerationMutation(v29);
              }

              attributeSet = [*(*(&v39 + 1) + 8 * i) attributeSet];
              attachmentPaths = [attributeSet attachmentPaths];

              LOBYTE(attributeSet) = [attachmentPaths count] == 0;
              if ((attributeSet & 1) == 0)
              {
                LOBYTE(v30) = 1;
                goto LABEL_34;
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v39 objects:v50 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:
      }

      else
      {
        LOBYTE(v30) = 0;
      }
    }

    else
    {
      LOBYTE(v30) = 0;
    }
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v30;
}

id __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fetchIndexableAttachments];
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_2;
  v10[3] = &unk_1E8256C00;
  v10[4] = v5;
  v7 = v3;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v8 = [v4 onScheduler:v6 map:v10];

  return v8;
}

id __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) skipIndexExclusionCheck] & 1) != 0 || (objc_msgSend(*(a1 + 40), "shouldExcludeFromIndex") & 1) == 0)
  {
    v2 = [*(a1 + 40) searchableItem];
    if (v2)
    {
      v3 = [*(a1 + 32) searchableIndexBundleID];
      v4 = [v2 attributeSet];
      [v4 setBundleID:v3];

      v5 = *(a1 + 48);
      v6 = [v2 attributeSet];
      [v5 addTransactionValueToAttributeSet:v6];

      v7 = v2;
    }

    else if (([*(a1 + 40) alwaysMarkAsIndexed] & 1) == 0)
    {
      [*(a1 + 56) addObject:*(a1 + 40)];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_329(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_329_cold_1();
    }
  }

  else
  {
    v16 = a1;
    v4 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = *(v16 + 32);
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 attributeSet];
          v11 = [v10 relatedUniqueIdentifier];
          if (v11)
          {
            v12 = [v10 accountIdentifier];
            v13 = v12 == 0;

            if (!v13)
            {
              v14 = [v9 copy];
              [v4 addObject:v14];
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    if ([v4 count])
    {
      [*(v16 + 40) _processAttachmentItemsForSuggestionsService:v4];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_processDomainRemovals:(id)removals
{
  v18 = *MEMORY[0x1E69E9840];
  removalsCopy = removals;
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  promise = [MEMORY[0x1E699B868] promise];
  if ([removalsCopy count])
  {
    v6 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [removalsCopy allObjects];
      v8 = [allObjects componentsJoinedByString:{@", "}];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "removing indexed items for domains {%@}", &v16, 0xCu);
    }

    searchIndex = [(EDSearchableIndex *)self searchIndex];
    allObjects2 = [removalsCopy allObjects];
    errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
    [searchIndex deleteSearchableItemsWithDomainIdentifiers:allObjects2 completionHandler:errorOnlyCompletionHandlerAdapter];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [promise finishWithResult:null];
  }

  future = [promise future];

  v14 = *MEMORY[0x1E69E9840];

  return future;
}

- (void)_processIdentifierRemovals:(id)removals
{
  v14 = *MEMORY[0x1E69E9840];
  removalsCopy = removals;
  if ([removalsCopy count])
  {
    v5 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      identifiers = [removalsCopy identifiers];
      v7 = [identifiers componentsJoinedByString:{@", "}];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "removing indexed items with identifiers {%@}", &v12, 0xCu);
    }

    searchIndex = [(EDSearchableIndex *)self searchIndex];
    identifiers2 = [removalsCopy identifiers];
    [searchIndex deleteSearchableItemsWithIdentifiers:identifiers2 completionHandler:0];

    purgedIdentifiers = [removalsCopy purgedIdentifiers];
    [searchIndex changeStateOfSearchableItemsWithUIDs:purgedIdentifiers toState:1];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_processRefreshRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__EDSearchableIndex__processRefreshRequestWithCompletion___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v7];
}

void __58__EDSearchableIndex__processRefreshRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if (![v2 queueContentsAllowsRefresh])
  {
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) state];
  if (([v3 needsRefresh] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v4 = [*(a1 + 32) isPerformingBlockAffectingDataSourceAndIndex];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v5 state];
    v7 = [v6 pendingIdentifiers];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__EDSearchableIndex__processRefreshRequestWithCompletion___block_invoke_2;
    v10[3] = &unk_1E8250C30;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    [v5 _dataSourceRequestNeededUpdatesExcludingIdentifiers:v7 completion:v10];

    return;
  }

LABEL_7:
  v9 = *(*(a1 + 40) + 16);

  v9();
}

void __58__EDSearchableIndex__processRefreshRequestWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 32) assertIsExecuting:1];
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) state];
  [v2 setNeedsRefresh:0];
}

- (void)_processSpotlightVerificationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(EFSuspendableScheduler *)self->_indexingScheduler assertIsExecuting:1];
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__EDSearchableIndex__processSpotlightVerificationWithCompletion___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  [(EFAssertableScheduler *)stateTransitionScheduler performSyncBlock:v7];
}

uint64_t __65__EDSearchableIndex__processSpotlightVerificationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 needsVerification];

  if (v3)
  {
    v4 = [*(a1 + 32) state];
    [v4 setNeedsVerification:0];

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 _dataSourceVerifyRepresentativeSampleWithCompletion:v6];
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v8 = *(result + 16);

      return v8();
    }
  }

  return result;
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v11 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = identifiersCopy;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Spotlight requests to reindex items with identifiers %@", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
  stringValue = [v12 stringValue];
  [(EDSearchableIndex *)self _collectAnalyticsForReindexReason:2 withInfo:stringValue];

  -[EDSearchableIndex _sendAnalyticsForRedonatingItems:](self, "_sendAnalyticsForRedonatingItems:", [identifiersCopy count]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke;
  v24[3] = &unk_1E8256898;
  v14 = identifiersCopy;
  v25 = v14;
  [(EDSearchableIndex *)self _promptToFileRadarAboutReindexing:v24];
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_2;
  v20[3] = &unk_1E8256198;
  v20[4] = self;
  v16 = v14;
  v21 = v16;
  v17 = handlerCopy;
  v23 = v17;
  v18 = indexCopy;
  v22 = v18;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

id __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v4 = [v2 stringWithFormat:@"Spotlight requested that Mail reindex %@ items: %@", v3, *(a1 + 32)];

  return v4;
}

void __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [v2 setClientStateFetched:0];

  v3 = [*(a1 + 32) _missingIdentifiersForIdentifiersNeedingReindex:*(a1 + 40)];
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_3;
  v7[3] = &unk_1E8256CA0;
  v10 = *(a1 + 56);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_3(uint64_t a1)
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_4;
  v8 = &unk_1E8256C78;
  v2 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = v2;
  v3 = _Block_copy(&v5);
  v4 = [*(a1 + 40) result];
  if ([v4 count])
  {
    [*(a1 + 48) deleteSearchableItemsWithIdentifiers:v4 completionHandler:v3];
  }

  else
  {
    v3[2](v3, 0);
  }
}

uint64_t __98__EDSearchableIndex_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler___block_invoke_4(uint64_t a1)
{
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Calling Spotlight's reindex acknowledgement handler", v4, 2u);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) refresh];
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [EDSearchableIndex searchableIndex:reindexAllSearchableItemsWithAcknowledgementHandler:];
  }

  [(EDSearchableIndex *)self _collectAnalyticsForReindexReason:3];
  [(EDSearchableIndex *)self _promptToFileRadarAboutReindexing:&__block_literal_global_338];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__EDSearchableIndex_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_2;
  v7[3] = &unk_1E8250260;
  v7[4] = self;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v7];
  [(EDSearchableIndex *)self redonateAllItemsWithAcknowledgementHandler:handlerCopy];
}

void __89__EDSearchableIndex_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) analytics];
  [v1 didDropIndex];
}

- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask
{
  maskCopy = mask;
  v11 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (maskCopy)
  {
    v7 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = updateCopy;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "spotlight updated items with summaries: %{public}@", &v9, 0xCu);
    }

    [(EDSearchableIndex *)self generatedSummariesDidUpdate:updateCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_missingIdentifiersForIdentifiersNeedingReindex:(id)reindex
{
  reindexCopy = reindex;
  promise = [MEMORY[0x1E699B868] promise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__EDSearchableIndex__missingIdentifiersForIdentifiersNeedingReindex___block_invoke;
  v9[3] = &unk_1E8253760;
  v6 = promise;
  v10 = v6;
  [(EDSearchableIndex *)self _dataSourceAssignTransaction:0 forIdentifiers:reindexCopy completion:v9];
  future = [v6 future];

  return future;
}

- (void)_invalidateItemsInTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__EDSearchableIndex__invalidateItemsInTransactions___block_invoke;
  v6[3] = &unk_1E8250128;
  v6[4] = self;
  v7 = transactionsCopy;
  v5 = transactionsCopy;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v6];
}

void __52__EDSearchableIndex__invalidateItemsInTransactions___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 searchableIndex:*v2 invalidateItemsInTransactions:*(a1 + 40)];

  v5 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v10 = [v4 count];
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Deleting %lu items from Spotlight index: %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) searchIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__EDSearchableIndex__invalidateItemsInTransactions___block_invoke_342;
  v8[3] = &unk_1E8253788;
  v8[4] = *(a1 + 32);
  [v6 deleteSearchableItemsWithIdentifiers:v4 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  searchIndex = [(EDSearchableIndex *)self searchIndex];
  [(EDSearchableIndex *)self searchableIndex:searchIndex reindexSearchableItemsWithIdentifiers:identifiersCopy acknowledgementHandler:handlerCopy];
}

- (void)reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  searchIndex = [(EDSearchableIndex *)self searchIndex];
  [(EDSearchableIndex *)self searchableIndex:searchIndex reindexAllSearchableItemsWithAcknowledgementHandler:handlerCopy];
}

- (void)generatedSummariesDidUpdate:(id)update
{
  updateCopy = update;
  dataSource = [(EDSearchableIndex *)self dataSource];
  [dataSource searchableIndex:self indexGeneratedSummaries:updateCopy];
}

- (void)redonateAllItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EDSearchableIndex_redonateAllItemsWithAcknowledgementHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v7];
}

void __64__EDSearchableIndex_redonateAllItemsWithAcknowledgementHandler___block_invoke(uint64_t a1)
{
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Redonating All Items", buf, 2u);
  }

  [*(a1 + 32) _suspendIndexingScheduler];
  v3 = [*(a1 + 32) state];
  [v3 startReindex];

  v4 = *(a1 + 32);
  [objc_opt_class() _saveLocalClientState:0];
  v5 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating all items", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EDSearchableIndex_redonateAllItemsWithAcknowledgementHandler___block_invoke_343;
  v7[3] = &unk_1E8250C30;
  v7[4] = v6;
  v8 = *(a1 + 40);
  [v6 _dataSourceInvalidateItemsGreaterThanTransaction:0 completion:v7];
}

uint64_t __64__EDSearchableIndex_redonateAllItemsWithAcknowledgementHandler___block_invoke_343(uint64_t a1)
{
  [*(a1 + 32) _resumeIndexingScheduler];
  if (*(a1 + 40))
  {
    v2 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Invoking acknowledgement handler", v4, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  return [*(a1 + 32) refresh];
}

- (void)resetIndexForNewLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stateTransitionScheduler = self->_stateTransitionScheduler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v7];
}

void __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _suspendIndexingScheduler];
  v2 = [*(a1 + 32) state];
  [v2 startReindex];

  v3 = *(a1 + 32);
  [objc_opt_class() _saveLocalClientState:0];
  v4 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Deleting all items from Spotlight", buf, 2u);
  }

  v5 = [*(a1 + 32) searchIndex];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke_344;
  v7[3] = &unk_1E8253568;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 deleteAllSearchableItemsWithCompletionHandler:v7];
}

void __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke_344(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke_344_cold_1();
    }
  }

  [*(a1 + 32) _resumeIndexingScheduler];
  if (*(a1 + 40))
  {
    v5 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Invoking completion handler", v7, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)indexItems:(id)items fromRefresh:(BOOL)refresh immediately:(BOOL)immediately
{
  itemsCopy = items;
  if ([(EDSearchableIndex *)self isIndexingDisabledForPPT])
  {
    v9 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EDSearchableIndex indexItems:fromRefresh:immediately:];
    }
  }

  else if ([itemsCopy count])
  {
    addIndexItemsScheduler = self->_addIndexItemsScheduler;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__EDSearchableIndex_indexItems_fromRefresh_immediately___block_invoke;
    v11[3] = &unk_1E8256CE8;
    v11[4] = self;
    v12 = itemsCopy;
    refreshCopy = refresh;
    immediatelyCopy = immediately;
    [(EFStoppableScheduler *)addIndexItemsScheduler performBlock:v11];
  }
}

void __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) state];
  v2 = [v5 prepareToIndexItems:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_345(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_2;
  v5[3] = &unk_1E8256CE8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 performBlock:v5];
}

void __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_3;
  v11[3] = &unk_1E8256D10;
  v10 = *(a1 + 32);
  v12 = vextq_s8(v10, v10, 8uLL);
  v2 = [v10.i64[0] ef_compactMap:v11];
  v3 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) _identifiersStringForItems:v6 maxLength:150];
    v8 = *(a1 + 48);
    v9 = *(a1 + 49);
    *buf = 134218754;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    _os_log_debug_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEBUG, "%p prepared indexItems:%{public}@ fromRefresh:%{BOOL}d i:%{BOOL}d", buf, 0x22u);
  }

  [*(a1 + 40) _doIndexItems:v2 fromRefresh:*(a1 + 48) immediately:*(a1 + 49)];
  v4 = [*(a1 + 40) state];
  [v4 didPrepareItems:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

EDSearchableIndexPendingItem *__57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) state];
  v5 = [v4 preparingItems];
  v6 = [v5 containsObject:v3];

  if (v6)
  {
    v7 = [[EDSearchableIndexPendingItem alloc] initWithItem:v3];
  }

  else
  {
    v8 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = [v3 identifier];
      __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_3_cold_1(v9, v10, v13, v8);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_doIndexItems:(id)items fromRefresh:(BOOL)refresh immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  refreshCopy = refresh;
  v94 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  [(EFAssertableScheduler *)self->_stateTransitionScheduler assertIsExecuting:1];
  state = [(EDSearchableIndex *)self state];
  if ([state isActive])
  {
  }

  else
  {
    v8 = _os_feature_enabled_impl();

    if ((v8 & 1) == 0)
    {
      v54 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v76 = [itemsCopy count];
        _os_log_impl(&dword_1C61EF000, v54, OS_LOG_TYPE_INFO, "Requested %lu items to be indexed while inactive", buf, 0xCu);
      }

      [(EDSearchableIndex *)self _queueRefresh];
      goto LABEL_40;
    }
  }

  if (immediatelyCopy)
  {
    state2 = [(EDSearchableIndex *)self state];
    [state2 setIndexImmediately:1];
  }

  state3 = [(EDSearchableIndex *)self state];
  pendingItems = [state3 pendingItems];
  v12 = [pendingItems count];

  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = v12;
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = itemsCopy;
  v13 = [obj countByEnumeratingWithState:&v71 objects:v93 count:16];
  if (v13)
  {
    v14 = *v72;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v72 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * i);
        identifier = [v16 identifier];
        state4 = [(EDSearchableIndex *)self state];
        pendingIdentifierRemovals = [state4 pendingIdentifierRemovals];
        identifiers = [pendingIdentifierRemovals identifiers];
        v21 = [identifiers containsObject:identifier];

        if (!v21)
        {
          state5 = [(EDSearchableIndex *)self state];
          pendingItems2 = [state5 pendingItems];
          v25 = [pendingItems2 count];

          state6 = [(EDSearchableIndex *)self state];
          pendingItems3 = [state6 pendingItems];
          lastObject = [pendingItems3 lastObject];

          state7 = [(EDSearchableIndex *)self state];
          v29 = [state7 indexItem:v16];

          if (v29 <= 1)
          {
            if (!v29)
            {
              items = [v16 items];
              v37 = [items copy];

              preprocessingScheduler = self->_preprocessingScheduler;
              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke;
              v66[3] = &unk_1E8255940;
              referenceItem2 = v37;
              v67 = referenceItem2;
              selfCopy = self;
              v69 = v16;
              v70 = refreshCopy;
              [(EFStoppableScheduler *)preprocessingScheduler performBlock:v66];
              referenceItem = [v16 referenceItem];
              [v63 addObject:referenceItem];

              items2 = v67;
              goto LABEL_26;
            }

            if (v29 != 1)
            {
              goto LABEL_28;
            }

            referenceItem2 = [v16 referenceItem];
            [v63 addObject:referenceItem2];
          }

          else if (v29 == 2)
          {
            referenceItem2 = [v16 referenceItem];
            [v60 addObject:referenceItem2];
          }

          else
          {
            if (v29 == 3)
            {
              referenceItem3 = [v16 referenceItem];
              [v62 addObject:referenceItem3];

              state8 = [(EDSearchableIndex *)self state];
              pendingItems4 = [state8 pendingItems];
              v35 = v25 == [pendingItems4 count];

              if (!v35)
              {
                goto LABEL_28;
              }

              referenceItem2 = [(EDSearchableIndex *)self analytics];
              items2 = [lastObject items];
              [referenceItem2 didEvictItems:items2];
            }

            else
            {
              if (v29 != 4)
              {
                goto LABEL_28;
              }

              referenceItem2 = [(EDSearchableIndex *)self analytics];
              items2 = [v16 items];
              [referenceItem2 didEvictItems:items2];
            }

LABEL_26:
          }

          goto LABEL_28;
        }

        lastObject = +[EDSearchableIndex log];
        if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v76 = identifier;
          _os_log_impl(&dword_1C61EF000, lastObject, OS_LOG_TYPE_DEFAULT, "Skipping index of %{public}@ identifier because it is present in self.state.pendingIdentifierRemovals", buf, 0xCu);
        }

LABEL_28:
      }

      v13 = [obj countByEnumeratingWithState:&v71 objects:v93 count:16];
    }

    while (v13);
  }

  v40 = [v62 count];
  state9 = [(EDSearchableIndex *)self state];
  pendingItems5 = [state9 pendingItems];
  v43 = [pendingItems5 count];

  v44 = [v63 count];
  v57 = [(EDSearchableIndex *)self _identifiersStringForItems:v62 maxLength:150];
  v58 = [(EDSearchableIndex *)self _identifiersStringForItems:v60 maxLength:150];
  v64 = [(EDSearchableIndex *)self _identifiersStringForItems:v63 maxLength:150];
  v45 = [v62 ef_compactMap:&__block_literal_global_351];
  v46 = [[EDSearchableIndexUpdates alloc] initWithRemovedIdentifiers:v45];
  [(EDSearchableIndex *)self _dataSourceAssignTransaction:-1 updates:v46 completion:0];
  v47 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [obj count];
    state10 = [(EDSearchableIndex *)self state];
    pendingItems6 = [state10 pendingItems];
    v51 = [pendingItems6 count];
    *buf = 134220034;
    v76 = v48;
    v77 = 2048;
    v78 = v40;
    v79 = 2114;
    v80 = v57;
    v81 = 2114;
    v82 = v58;
    v83 = 2048;
    v84 = v40 + v56 - v43;
    v85 = 2048;
    v86 = v44;
    v87 = 2114;
    v88 = v64;
    v89 = 2048;
    v90 = v51;
    v91 = 1024;
    v92 = refreshCopy;
    _os_log_impl(&dword_1C61EF000, v47, OS_LOG_TYPE_DEFAULT, "Requested %lu items to be indexed (new: %lu %{public}@ existing: %{public}@ deferred: %lu preprocess: %lu %{public}@ pending: %lu) fromRefresh: %{BOOL}d", buf, 0x58u);
  }

  if (v40)
  {
    if (refreshCopy)
    {
      lastObject2 = [v62 lastObject];
      dateReceived = [lastObject2 dateReceived];
      [(EDSearchableIndex *)self _queueConsumeBudgetItemCount:v40 lastItemDateReceived:dateReceived];
    }

    [(EDSearchableIndex *)self _queueTransitionFromRefresh:refreshCopy, v56];
  }

LABEL_40:
  v55 = *MEMORY[0x1E69E9840];
}

void __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke(uint64_t a1)
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_2;
  v18 = &unk_1E8250260;
  v19 = *(a1 + 32);
  v2 = v16;
  v3 = mach_absolute_time();
  v17(v2);
  v4 = mach_absolute_time();
  if (EFGetElapsedTimeSinceAbsoluteTime_onceToken_1 != -1)
  {
    [EDSearchableIndex _throttleRequestedSize:targetTime:action:];
  }

  v5 = ((v4 - v3) * EFGetElapsedTimeSinceAbsoluteTime_sTimebaseInfo_1 / *algn_1EDC94D14) / 1000000000.0;

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3;
  v7[3] = &unk_1E8256D38;
  v6 = *(*(a1 + 40) + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 56);
  v9 = &v12;
  v10 = v5;
  [v6 performSyncBlock:v7];
  if (*(v13 + 24) == 1)
  {
    [*(a1 + 40) refresh];
  }

  _Block_object_dispose(&v12, 8);
}

void __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 requiresPreprocessing])
        {
          [v5 preprocess];
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  v3 = [v2 didPreprocessItem:*(a1 + 40)];

  if (v3)
  {
    if (*(a1 + 64))
    {
      v4 = 0;
    }

    else
    {
      v6 = [*(a1 + 40) referenceItem];
      v4 = [v6 shouldIndexImmediatelyPostPreprocessing];
    }

    v7 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 40) identifier];
      __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3_cold_2(v8, v4, buf, v7);
    }

    v9 = *(a1 + 32);
    v14 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v9 _doIndexItems:v5 fromRefresh:*(a1 + 64) immediately:v4];
  }

  else
  {
    v5 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 40) identifier];
      objc_claimAutoreleasedReturnValue();
      __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3_cold_1();
    }
  }

  if (*(a1 + 64) == 1)
  {
    v10 = [*(a1 + 32) state];
    v11 = [v10 queueContentsAllowsRefresh];

    if (v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  result = [*(a1 + 32) _queueConsumeBudgetElapsedPeriod:*(a1 + 56)];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_348(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];

  return v2;
}

- (void)removeItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentReasons = [(EDSearchableIndex *)self currentReasons];
  [(EDSearchableIndex *)self removeItemsWithIdentifiers:identifiersCopy reasons:currentReasons fromRefresh:0];
}

- (void)removeItemsWithIdentifiers:(id)identifiers reasons:(id)reasons fromRefresh:(BOOL)refresh
{
  identifiersCopy = identifiers;
  reasonsCopy = reasons;
  if ([identifiersCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke;
    aBlock[3] = &unk_1E8256D80;
    aBlock[4] = self;
    refreshCopy = refresh;
    v19 = reasonsCopy;
    v10 = _Block_copy(aBlock);
    stateTransitionScheduler = self->_stateTransitionScheduler;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_352;
    v13[3] = &unk_1E8256DA8;
    v16 = v10;
    v14 = identifiersCopy;
    selfCopy = self;
    refreshCopy2 = refresh;
    v12 = v10;
    [(EFAssertableScheduler *)stateTransitionScheduler performBlock:v13];
  }
}

void __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 32) + 32) assertIsExecuting:1];
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
    v5 = [v4 length];
    if (v5 >= 0x96)
    {
      v6 = 150;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 substringToIndex:v6];

    v8 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v12 = 138543618;
      v13 = v7;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Removing identifiers:%{public}@ fromRefresh:%{BOOL}d", &v12, 0x12u);
    }

    v10 = [*(a1 + 32) state];
    [v10 removeIdentifiersFromPendingQueues:v3 reasons:*(a1 + 40)];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_352(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_2;
  v4[3] = &unk_1E8256DD0;
  v4[4] = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _dataSourceScheduleWork:v4];
}

void __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  [v2 searchableIndex:*(a1 + 32) willRemoveIdentifiers:*(a1 + 40) type:0];
  v3 = [v2 childIdentifiersToRemoveFromSearchableIndex:*(a1 + 32) whenRemovingParentIdentifiers:*(a1 + 40)];
  if ([v3 count])
  {
    [v2 searchableIndex:*(a1 + 32) willRemoveIdentifiers:v3 type:0];
  }

  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_3;
  v7[3] = &unk_1E8256DA8;
  v10 = *(a1 + 48);
  v5 = v3;
  v11 = *(a1 + 56);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v4 performBlock:v7];
}

uint64_t __68__EDSearchableIndex_removeItemsWithIdentifiers_reasons_fromRefresh___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  if (*(a1 + 56))
  {
    v3 = 1;
  }

  else
  {
    v4 = [*(a1 + 40) state];
    [v4 setIndexImmediately:1];

    v3 = *(a1 + 56);
  }

  v5 = *(a1 + 40);

  return [v5 _queueTransitionFromRefresh:v3 & 1];
}

- (void)removeItemsForDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__EDSearchableIndex_removeItemsForDomainIdentifier___block_invoke;
  v6[3] = &unk_1E8250128;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(EDSearchableIndex *)self _dataSourceScheduleWork:v6];
}

void __52__EDSearchableIndex_removeItemsForDomainIdentifier___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) dataSource];
  v4 = *v2;
  v13[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v3 searchableIndex:v4 willRemoveIdentifiers:v5 type:1];

  v6 = *(*(a1 + 32) + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__EDSearchableIndex_removeItemsForDomainIdentifier___block_invoke_2;
  v10[3] = &unk_1E8250128;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  [v6 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __52__EDSearchableIndex_removeItemsForDomainIdentifier___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Removing all items for domain: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) state];
  [v4 removeItemsForDomainIdentifier:*(a1 + 32)];

  result = [*(a1 + 40) _queueTransitionFromRefresh:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)test_resetSpotlightIndex
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndex.m" lineNumber:2399 description:{@"%s can only be called from unit tests", "-[EDSearchableIndex test_resetSpotlightIndex]"}];
  }

  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__EDSearchableIndex_test_resetSpotlightIndex__block_invoke;
  v9[3] = &unk_1E8250260;
  v5 = v4;
  v10 = v5;
  [(EDSearchableIndex *)self resetIndexForNewLibraryWithCompletionHandler:v9];
  while (dispatch_semaphore_wait(v5, 0x64uLL))
  {
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
    [currentRunLoop runUntilDate:v7];
  }
}

- (void)removeMessages:(id)messages
{
  v4 = [messages ef_mapSelector:sel_persistentID];
  [(EDSearchableIndex *)self removeItemsWithIdentifiers:?];
}

- (void)_processAttachmentItemsForSuggestionsService:(id)service
{
  v36 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  _suggestionsService = [(EDSearchableIndex *)self _suggestionsService];
  if (_suggestionsService)
  {
    firstObject = [serviceCopy firstObject];
    if (firstObject)
    {
      v4 = objc_opt_new();
      v5 = objc_opt_new();
      v6 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = serviceCopy;
      v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v7)
      {
        v8 = *v30;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(obj);
            }

            attributeSet = [*(*(&v29 + 1) + 8 * i) attributeSet];
            contentType = [attributeSet contentType];
            v12 = contentType;
            if (contentType)
            {
              v13 = contentType;
            }

            else
            {
              v13 = &stru_1F45B4608;
            }

            [v4 addObject:v13];

            displayName = [attributeSet displayName];
            v15 = displayName;
            if (displayName)
            {
              v16 = displayName;
            }

            else
            {
              v16 = &stru_1F45B4608;
            }

            [v5 addObject:v16];

            contentURL = [attributeSet contentURL];
            path = [contentURL path];
            v19 = path;
            if (path)
            {
              v20 = path;
            }

            else
            {
              v20 = &stru_1F45B4608;
            }

            [v6 addObject:v20];
          }

          v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v7);
      }

      attributeSet2 = [firstObject attributeSet];
      [attributeSet2 setAttachmentTypes:v4];
      [attributeSet2 setAttachmentNames:v5];
      [attributeSet2 setAttachmentPaths:v6];
      v22 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = obj;
        _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Processing attachment items %@ with suggestions service", buf, 0xCu);
      }

      [_suggestionsService dissectAttachmentsFromSearchableItem:firstObject options:3 withCompletion:&__block_literal_global_361];
    }

    else
    {
      v4 = +[EDSearchableIndex log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [EDSearchableIndex _processAttachmentItemsForSuggestionsService:v4];
      }
    }

    v23 = firstObject;
  }

  else
  {
    v23 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [EDSearchableIndex _processAttachmentItemsForSuggestionsService:];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __66__EDSearchableIndex__processAttachmentItemsForSuggestionsService___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = +[EDSearchableIndex log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __66__EDSearchableIndex__processAttachmentItemsForSuggestionsService___block_invoke_cold_1();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_suggestionsService
{
  if (_suggestionsService_onceToken != -1)
  {
    [EDSearchableIndex _suggestionsService];
  }

  v3 = _suggestionsService_suggestionsInstance;

  return v3;
}

uint64_t __40__EDSearchableIndex__suggestionsService__block_invoke()
{
  v0 = [MEMORY[0x1E69992A0] serviceForMail];
  v1 = _suggestionsService_suggestionsInstance;
  _suggestionsService_suggestionsInstance = v0;

  v2 = _suggestionsService_suggestionsInstance;

  return [v2 setSyncTimeout:1.0];
}

- (void)recordDataNeedsToBeDonatedForMessages:(id)messages
{
  messagesCopy = messages;
  dataSource = [(EDSearchableIndex *)self dataSource];
  [dataSource searchableIndex:self dataNeedsToBeDonatedForMessages:messagesCopy];
}

- (void)recordMessagesNeedToBeDonated:(id)donated indexingType:(int64_t)type
{
  donatedCopy = donated;
  dataSource = [(EDSearchableIndex *)self dataSource];
  [dataSource searchableIndex:self messagesNeedToBeDonated:donatedCopy indexingType:type];
}

- (void)indexMessages:(id)messages includeBody:(BOOL)body indexingType:(int64_t)type
{
  messagesCopy = messages;
  [(EDSearchableIndex *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndex indexMessages:includeBody:indexingType:]", "EDSearchableIndex.m", 2491, "0");
}

- (void)markMessagesAsPrinted:(id)printed
{
  printedCopy = printed;
  [(EDSearchableIndex *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDSearchableIndex markMessagesAsPrinted:]", "EDSearchableIndex.m", 2495, "0");
}

- (void)attachmentBecameAvailable:(id)available
{
  object = [available object];
  if (object)
  {
    v6 = object;
    if (objc_opt_respondsToSelector())
    {
      persistentID = [v6 persistentID];
      if (persistentID)
      {
        [(EDSearchableIndex *)self indexAttachmentsForMessageWithIdentifier:persistentID immediately:1];
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)richLinkBecameAvailable:(id)available
{
  v4 = +[EDSearchableIndex log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Rich link data became available, starting a data source refresh", v5, 2u);
  }

  [(EDSearchableIndex *)self refresh];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDSearchableIndex.m" lineNumber:2569 description:{@"%s can only be called from unit tests", "-[EDSearchableIndex test_tearDown]"}];
  }

  [(EFStoppableScheduler *)self->_dataSourceScheduler stopAndWait];
  if ([(EDSearchableIndex *)self isActive])
  {
    [(EFSuspendableScheduler *)self->_indexingScheduler stopAndWait];
  }

  [(EFStoppableScheduler *)self->_addIndexItemsScheduler stopAndWait];
  [(EFStoppableScheduler *)self->_preprocessingScheduler stopAndWait];
  [(EFStoppableScheduler *)self->_indexingBatchScheduler stopAndWait];
  stateTransitionScheduler = self->_stateTransitionScheduler;

  [(EFAssertableScheduler *)stateTransitionScheduler stopAndWait];
}

- (EDSearchableIndexDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (EDSearchableIndexSchedulableDelegate)schedulableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_schedulableDelegate);

  return WeakRetained;
}

- (void)_handleFailingTransactionIDs:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Removing corrupt indexes for %lu transactions: %{public}@", buf, 0x16u);
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "failed to retrieve last client state: %{public}@", v5);
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_FAULT, "CoreSpotlight failed to return our client state (old state: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __42__EDSearchableIndex__fetchLastClientState__block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.778e-34);
  *(v2 + 12) = 2048;
  *(v2 + 14) = v3;
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "Received corrupted client state: %@, transaction: %lld, will cause full re-index.", v4, 0x16u);
}

- (void)_processIndexingBatch:clientState:itemsNotIndexed:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "generating searchable items failed: %{public}@", v5);
}

void __71__EDSearchableIndex__processIndexingBatch_clientState_itemsNotIndexed___block_invoke_329_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "indexing searchable items failed: %{public}@", v5);
}

void __66__EDSearchableIndex_resetIndexForNewLibraryWithCompletionHandler___block_invoke_344_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "failed to delete all items from domain: %{public}@", v5);
}

- (void)_indexItems:fromRefresh:immediately:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, v3, v4, "Index items usage issue - indexing identifiers(s) %{public}@ that were removed", v5);
}

void __57__EDSearchableIndex__indexItems_fromRefresh_immediately___block_invoke_3_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "%p dropped item: %{public}@", buf, 0x16u);
}

void __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  _os_log_debug_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEBUG, "Skipped processing item - no longer in preprocessingItems %{public}@", v4, 0xCu);
}

void __59__EDSearchableIndex__doIndexItems_fromRefresh_immediately___block_invoke_3_cold_2(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "Finished processing item %{public}@ immediately: %{BOOL}d", buf, 0x12u);
}

- (void)_processAttachmentItemsForSuggestionsService:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Nil searchableItem for item: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __66__EDSearchableIndex__processAttachmentItemsForSuggestionsService___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to process the attachment items %{public}@", v5);
}

@end