@interface CADSpotlightIndexer
+ (__CFSet)_entityTypesThatAffectSpotlightIndexing;
+ (id)_personaID:(void *)d;
+ (id)_spotlightDomainIDForItem:(void *)item bundleID:(id)d personaID:(id)iD;
+ (void)_executeWithNumRetriesOnFailure:(int64_t)failure block:(id)block;
- (BOOL)_deleteAllSearchableItemsAndSetClientStateForBundleID:(id)d eventIndex:(id)index;
- (BOOL)_deleteFromIndex:(id)index eventsIndex:(id)eventsIndex;
- (BOOL)_mostRecentFailureWithinADayOfNow:(id)now;
- (BOOL)_pushUpdatesForCalendarItemsWithUUIDs:(id)ds database:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting;
- (BOOL)_pushUpdatesForCalendarItemsWithUUIDs:(id)ds inBatchesOf:(unint64_t)of database:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting;
- (BOOL)_sendSpotlightUpdates:(id)updates deletes:(id)deletes toIndex:(id)index;
- (BOOL)_upsertToIndex:(__CFArray *)index inDatabase:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting eventsIndex:(id)eventsIndex;
- (CADSpotlightIndexer)initWithDatabaseConfiguration:(id)configuration spotlightIndexProvider:(id)provider spotlightDefaults:(id)defaults spotlightEntityAnnotator:(id)annotator;
- (CADSpotlightIndexer)initWithSpotlightEntityAnnotator:(id)annotator;
- (id)_expectedClientState;
- (id)_mostRecentFailure;
- (id)_spotlightItemAttributes:(void *)attributes;
- (id)_spotlightRecurrenceId:(void *)id;
- (id)_textRepresentationForEvent:(void *)event;
- (void)_enumerateDatabases:(id)databases;
- (void)_fullReindexWithReason:(unint64_t)reason;
- (void)_incrementalUpdate;
- (void)_upsertsAndDeletesFromChanges:(id)changes inDatabase:(CalDatabase *)database personaID:(id)d outUpserts:(id *)upserts outDeletes:(id *)deletes;
- (void)cancelOngoingWorkAndShutdown;
- (void)checkForAndReportPastSpotlightMigrationErrorsAndReindexIfNeeded;
- (void)indexUnconsumedChanges;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)waitUntilIdle;
@end

@implementation CADSpotlightIndexer

- (CADSpotlightIndexer)initWithSpotlightEntityAnnotator:(id)annotator
{
  annotatorCopy = annotator;
  v5 = objc_alloc_init(CADCoreSpotlightIndexProvider);
  mEMORY[0x277CF77A8] = [MEMORY[0x277CF77A8] shared];
  v7 = [(CADSpotlightIndexer *)self initWithDatabaseConfiguration:0 spotlightIndexProvider:v5 spotlightDefaults:mEMORY[0x277CF77A8] spotlightEntityAnnotator:annotatorCopy];

  return v7;
}

- (CADSpotlightIndexer)initWithDatabaseConfiguration:(id)configuration spotlightIndexProvider:(id)provider spotlightDefaults:(id)defaults spotlightEntityAnnotator:(id)annotator
{
  configurationCopy = configuration;
  providerCopy = provider;
  defaultsCopy = defaults;
  annotatorCopy = annotator;
  v30.receiver = self;
  v30.super_class = CADSpotlightIndexer;
  v15 = [(CADSpotlightIndexer *)&v30 init];
  if (v15)
  {
    v26 = configurationCopy;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("spotlightIndexingQueue", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    objc_initWeak(&location, v15);
    v19 = objc_alloc(MEMORY[0x277CF7760]);
    v20 = v15->_queue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__CADSpotlightIndexer_initWithDatabaseConfiguration_spotlightIndexProvider_spotlightDefaults_spotlightEntityAnnotator___block_invoke;
    v27[3] = &unk_27851AAB0;
    objc_copyWeak(&v28, &location);
    v21 = [v19 initWithQueue:v20 andBlock:v27];
    incrementalUpdateQueue = v15->_incrementalUpdateQueue;
    v15->_incrementalUpdateQueue = v21;

    objc_storeStrong(&v15->_databaseConfiguration, configuration);
    objc_storeStrong(&v15->_spotlightIndexProvider, provider);
    objc_storeStrong(&v15->_spotlightDefaults, defaults);
    objc_storeStrong(&v15->_spotlightEntityAnnotator, annotator);
    v23 = objc_alloc_init(MEMORY[0x277CF7778]);
    cancellationTokenSource = v15->_cancellationTokenSource;
    v15->_cancellationTokenSource = v23;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    configurationCopy = v26;
  }

  return v15;
}

void __119__CADSpotlightIndexer_initWithDatabaseConfiguration_spotlightIndexProvider_spotlightDefaults_spotlightEntityAnnotator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _incrementalUpdate];
    WeakRetained = v2;
  }
}

- (void)cancelOngoingWorkAndShutdown
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (__CFSet)_entityTypesThatAffectSpotlightIndexing
{
  if (_entityTypesThatAffectSpotlightIndexing_onceToken != -1)
  {
    +[CADSpotlightIndexer _entityTypesThatAffectSpotlightIndexing];
  }

  return _entityTypesThatAffectSpotlightIndexing_entityTypes;
}

void __62__CADSpotlightIndexer__entityTypesThatAffectSpotlightIndexing__block_invoke()
{
  _entityTypesThatAffectSpotlightIndexing_entityTypes = CFSetCreateMutable(0, 5, 0);
  CFSetAddValue(_entityTypesThatAffectSpotlightIndexing_entityTypes, 0x1A);
  CFSetAddValue(_entityTypesThatAffectSpotlightIndexing_entityTypes, 6);
  CFSetAddValue(_entityTypesThatAffectSpotlightIndexing_entityTypes, 1);
  CFSetAddValue(_entityTypesThatAffectSpotlightIndexing_entityTypes, 2);
  v0 = _entityTypesThatAffectSpotlightIndexing_entityTypes;

  CFSetAddValue(v0, 5);
}

- (void)waitUntilIdle
{
  dispatch_assert_queue_not_V2(self->_queue);
  v3 = os_transaction_create();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CADSpotlightIndexer_waitUntilIdle__block_invoke;
  block[3] = &unk_27851AAD8;
  v7 = v3;
  v5 = v3;
  dispatch_sync(queue, block);
}

- (void)_enumerateDatabases:(id)databases
{
  databaseConfiguration = self->_databaseConfiguration;
  if (databaseConfiguration)
  {
    MEMORY[0x282147D90](databaseConfiguration, databases);
  }

  else
  {
    CalDatabaseEnumerateDatabases();
  }
}

- (void)_incrementalUpdate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__CADSpotlightIndexer__incrementalUpdate__block_invoke;
  v2[3] = &unk_27851AB00;
  v2[4] = self;
  [(CADSpotlightIndexer *)self _enumerateDatabases:v2];
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2;
  v58 = *MEMORY[0x277D85DE8];
  v36 = *MEMORY[0x277CF7AA8];
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [*(*(a1 + 32) + 56) token];
    v8 = [v7 isCancelled];

    v9 = CADSpotlightHandle;
    if (v8)
    {
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
      {
        [CADSpotlightIndexer cancelOngoingWorkAndShutdown];
      }

      v31 = @"returning because indexer was shutdown";
      goto LABEL_45;
    }

    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v4;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "Fetching changes for database %@", buf, 0xCu);
    }

    v51 = 0;
    v50 = 0;
    v49 = 0;
    v10 = *(a1 + 32);
    [objc_opt_class() _entityTypesThatAffectSpotlightIndexing];
    v34 = &v49;
    v33 = &v50;
    ChangedEKObjectsForClient = CalDatabaseGetChangedEKObjectsForClient();
    if (ChangedEKObjectsForClient == -1)
    {
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
      {
        __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_6();
      }

      v33 = -1;
      v31 = @"error fetching changes: %ld";
LABEL_45:
      [CADSpotlightLogger logError:v31, v33, v34];
      goto LABEL_49;
    }

    if (v50 == 1)
    {
      break;
    }

    v12 = ChangedEKObjectsForClient;
    v13 = v49;
    v14 = CADSpotlightHandle;
    v15 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = v14;
      v17 = [v13 count];
      *buf = 134218498;
      v53 = v17;
      v54 = 1024;
      v55 = v51;
      v56 = 2112;
      v57 = v4;
      v18 = v16;
      v19 = "Processing a partial batch of %lu changes (through %i) for %@";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = v14;
      v20 = [v13 count];
      *buf = 134218498;
      v53 = v20;
      v54 = 1024;
      v55 = v51;
      v56 = 2112;
      v57 = v4;
      v18 = v16;
      v19 = "Processing all remaining %lu changes (through %i) for %@";
    }

    _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x1Cu);

LABEL_13:
    v21 = *(a1 + 32);
    v22 = [objc_opt_class() _personaID:a3];
    if (!v22)
    {
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
      {
        __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_4(&v39, v40);
      }

      v30 = 0;
      goto LABEL_32;
    }

    v23 = [*(*(a1 + 32) + 24) newSpotlightIndexForBundleID:v36];
    v24 = *(a1 + 32);
    v48 = 0;
    v47 = 0;
    [v24 _upsertsAndDeletesFromChanges:v13 inDatabase:v4 personaID:v22 outUpserts:&v48 outDeletes:&v47];
    v25 = v48;
    v26 = v47;
    v27 = [*(*(a1 + 32) + 56) token];
    v28 = [v27 isCancelled];

    if (!v28)
    {
      if ([*(a1 + 32) _deleteFromIndex:v26 eventsIndex:v23])
      {
        if ([*(a1 + 32) _upsertToIndex:v25 inDatabase:a2 personaID:v22 deleteBeforeInserting:1 eventsIndex:v23])
        {
          CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
          v30 = 1;
          goto LABEL_29;
        }

        if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
        {
          __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_2(&v43, v44);
        }
      }

      else if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
      {
        __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_1(&v41, v42);
      }

      v30 = 0;
LABEL_29:
      if ([v23 needsReindex])
      {
        [*(a1 + 32) _fullReindexWithReason:4];
      }

      v4 = a2;
LABEL_32:
      if (v12 == 1)
      {
        [*(a1 + 32) _resetDatabase:v4];
      }

      v29 = 1;
      goto LABEL_35;
    }

    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_3(&v45, v46);
    }

    [CADSpotlightLogger logError:@"returning because indexer was shutdown", v33];

    v29 = 0;
    v30 = 0;
    v4 = a2;
LABEL_35:

    objc_autoreleasePoolPop(v6);
    if (!v30 || !v29 || v12 != 1)
    {
      goto LABEL_50;
    }
  }

  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
  {
    __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_5();
  }

  [*(a1 + 32) _fullReindexWithReason:{1, &v50, &v49}];
  *a4 = 1;
LABEL_49:
  objc_autoreleasePoolPop(v6);
LABEL_50:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)indexUnconsumedChanges
{
  v9[1] = *MEMORY[0x277D85DE8];
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer cancelOngoingWorkAndShutdown];
    }

    [CADSpotlightLogger logError:@"returning because indexer was shutdown"];
  }

  else
  {
    v8 = @"incrementalUpdateTransactionKey";
    v5 = os_transaction_create();
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

    [(CalAccumulatingQueue *)self->_incrementalUpdateQueue updateTagsAndExecuteBlock:0 withContext:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkForAndReportPastSpotlightMigrationErrorsAndReindexIfNeeded
{
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer cancelOngoingWorkAndShutdown];
    }

    [CADSpotlightLogger logError:@"returning because indexer was shutdown"];
  }

  else
  {
    v5 = os_transaction_create();
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__CADSpotlightIndexer_checkForAndReportPastSpotlightMigrationErrorsAndReindexIfNeeded__block_invoke;
    v8[3] = &unk_27851AB28;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(queue, v8);
  }
}

void __86__CADSpotlightIndexer_checkForAndReportPastSpotlightMigrationErrorsAndReindexIfNeeded__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKey:@"kCalDBLastSpotLightIndexVersion"];
  v3 = [*(*(a1 + 32) + 32) objectForKey:@"LastABCReport"];
  v4 = [*(a1 + 32) _mostRecentFailure];
  if (v4)
  {
    v5 = [*(a1 + 32) _mostRecentFailureWithinADayOfNow:v4];
    v6 = CADSpotlightHandle;
    v7 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "****** [Spotlight indexing] reindex aborted, less than one day since last failure", &v16, 2u);
      }

      [CADSpotlightLogger log:@"reindex aborted, less than one day since last failure"];
      if (v3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v7)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "****** [Spotlight indexing] 1 day since last failure, reindex needed", &v16, 2u);
      }

      if (v3)
      {
        goto LABEL_15;
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CF7758]) initWithType:@"Database" subtype:@"Spotlight" context:@"IndexFailure"];
    [v12 report];
    v13 = *(*(a1 + 32) + 32);
    v14 = [MEMORY[0x277CBEAA8] date];
    [v13 setObject:v14 forKey:@"LastABCReport"];

    if ((v5 & 1) == 0)
    {
LABEL_15:
      v11 = 2;
LABEL_16:
      [*(a1 + 32) _fullReindexWithReason:v11];
    }
  }

  else
  {
    v8 = [v2 intValue];
    v9 = CADSpotlightHandle;
    v10 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT);
    if (v8 <= 23)
    {
      if (v10)
      {
        v16 = 138412290;
        v17 = v2;
        _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "****** [Spotlight indexing] reindex needed, last version was %@", &v16, 0xCu);
      }

      v11 = 3;
      goto LABEL_16;
    }

    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "****** [Spotlight indexing] spotlight index is current", &v16, 2u);
    }
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_mostRecentFailure
{
  v3 = [(CADSpotlightDefaults *)self->_spotlightDefaults objectForKey:@"CalDBSpotLightError"];
  v4 = [(CADSpotlightDefaults *)self->_spotlightDefaults objectForKey:@"LastUnfinishedSpotlightReindex"];
  v5 = v4;
  if (v3 | v4)
  {
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v9 = v3;
    }

    else
    {
      if (v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4 == 0;
      }

      if (v7)
      {
        v9 = [v3 laterDate:v4];
      }

      else
      {
        v9 = v4;
      }
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  return v8;
}

- (BOOL)_mostRecentFailureWithinADayOfNow:(id)now
{
  v3 = MEMORY[0x277CBEAA8];
  nowCopy = now;
  date = [v3 date];
  [date timeIntervalSinceDate:nowCopy];
  v7 = v6;

  return v7 <= 86400.0;
}

- (id)_expectedClientState
{
  v4 = 1;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:1];

  return v2;
}

- (BOOL)_deleteAllSearchableItemsAndSetClientStateForBundleID:(id)d eventIndex:(id)index
{
  dCopy = d;
  indexCopy = index;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = dispatch_group_create();
  v9 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke;
  v14[3] = &unk_27851ABA0;
  v10 = v8;
  v15 = v10;
  v11 = indexCopy;
  v16 = v11;
  v12 = dCopy;
  selfCopy = self;
  v19 = &v20;
  v17 = v12;
  [v9 _executeWithNumRetriesOnFailure:1 block:v14];
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

uint64_t __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke(uint64_t a1, char a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2;
  v13[3] = &unk_27851AB50;
  v16 = a2;
  v15 = *(a1 + 64);
  v14 = *(a1 + 32);
  [v4 deleteAllSearchableItemsForBundleID:v5 completionHandler:v13];
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(*(a1 + 32));
  [*(a1 + 40) beginIndexBatch];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 56) _expectedClientState];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_59;
  v10[3] = &unk_27851AB78;
  v12 = *(a1 + 64);
  v11 = *(a1 + 32);
  [v6 endIndexBatchWithExpectedClientState:0 newClientState:v7 completionHandler:v10];

  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(*(*(a1 + 64) + 8) + 24);

  return v8;
}

void __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR);
    if (v4 == 1)
    {
      if (v5)
      {
        __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2_cold_2();
      }

      v6 = @"error deleting searchable items for calendar: %@. Retrying...";
    }

    else
    {
      if (v5)
      {
        __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2_cold_1();
      }

      v6 = @"error deleting searchable items for calendar: %@";
    }

    [CADSpotlightLogger logError:v6, v3];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEFAULT, "Deleted events for database during full re-index, beginning index", buf, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_59_cold_1();
    }

    [CADSpotlightLogger logError:@"Error reseting client state, error = %@", v3];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_fullReindexWithReason:(unint64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer cancelOngoingWorkAndShutdown];
    }

    [CADSpotlightLogger logError:@"returning because indexer was shutdown"];
  }

  else
  {
    dispatch_assert_queue_V2(self->_queue);
    [(CADSpotlightDefaults *)self->_spotlightDefaults setObject:0 forKey:@"CalDBSpotLightError"];
    spotlightDefaults = self->_spotlightDefaults;
    date = [MEMORY[0x277CBEAA8] date];
    [(CADSpotlightDefaults *)spotlightDefaults setObject:date forKey:@"LastUnfinishedSpotlightReindex"];

    v9 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithUnsignedInteger:reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_DEFAULT, "Beginning spotlight re-index for all databases: %@", &buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    [CADSpotlightLogger log:@"started _fullReindexWithReason: %@", v13];

    v14 = *MEMORY[0x277CF7AA8];
    v15 = [(CADSpotlightIndexProvider *)self->_spotlightIndexProvider newSpotlightIndexForBundleID:v14];
    v16 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Deleting events for database during full re-index", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = [(CADSpotlightIndexer *)self _deleteAllSearchableItemsAndSetClientStateForBundleID:v14 eventIndex:v15];
    token2 = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
    isCancelled2 = [token2 isCancelled];

    if (isCancelled2)
    {
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
      {
        [CADSpotlightIndexer cancelOngoingWorkAndShutdown];
      }

      [CADSpotlightLogger logError:@"returning because indexer was shutdown"];
    }

    else
    {
      if (*(*(&buf + 1) + 24) != 1 || (v25[0] = MEMORY[0x277D85DD0], v25[1] = 3221225472, v25[2] = __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke, v25[3] = &unk_27851ABF0, v25[4] = self, v25[5] = &buf, [(CADSpotlightIndexer *)self _enumerateDatabases:v25], (*(*(&buf + 1) + 24) & 1) == 0))
      {
        [CADSpotlightLogger logError:@"error while attemping full reindex, writing error pref"];
        v19 = self->_spotlightDefaults;
        date2 = [MEMORY[0x277CBEAA8] date];
        [(CADSpotlightDefaults *)v19 setObject:date2 forKey:@"CalDBSpotLightError"];
      }

      [(CADSpotlightDefaults *)self->_spotlightDefaults setObject:0 forKey:@"LastUnfinishedSpotlightReindex"];
      [(CADSpotlightDefaults *)self->_spotlightDefaults setObject:0 forKey:@"LastABCReport"];
      [(CADSpotlightDefaults *)self->_spotlightDefaults setObject:&unk_2837C7408 forKey:@"kCalDBLastSpotLightIndexVersion"];
      v21 = CADSpotlightHandle;
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_DEFAULT, "Finished spotlight re-index for all databases", v24, 2u);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
      [CADSpotlightLogger log:@"finished _fullReindexWithReason: %@", v22];
    }

    _Block_object_dispose(&buf, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2;
  v9[3] = &unk_27851ABC8;
  v11 = a2;
  v12 = a3;
  v10 = *(a1 + 32);
  return [v7 _executeWithNumRetriesOnFailure:1 block:v9];
}

uint64_t __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  CalRemoveClientForPersistentChangeTracking();
  v5 = *(a1 + 48);
  CalDatabaseRegisterClientForPersistentChangeTracking();
  v6 = *(a1 + 48);
  v7 = CalDatabaseCopyCalendarItemUUIDs();
  v8 = CADSpotlightHandle;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134217984;
    v20 = [v7 count];
    _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "Indexing %lu events in this database as part of full-reindex", buf, 0xCu);
  }

  +[CADSpotlightLogger log:](CADSpotlightLogger, "log:", @"Indexing %lu events in this database as part of reindex", [v7 count]);
  if ([v7 count])
  {
    v10 = *(a1 + 32);
    v11 = [objc_opt_class() _personaID:*(a1 + 56)];
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _pushBatchedUpdatesForCalendarItemsWithUUIDs:v7 database:*(a1 + 48) personaID:v11 deleteBeforeInserting:0];
    v12 = CADSpotlightHandle;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v7 count];
        *buf = 134217984;
        v20 = v14;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEFAULT, "Finished indexing %lu events in this database as part of a full-reindex", buf, 0xCu);
      }

      +[CADSpotlightLogger log:](CADSpotlightLogger, "log:", @"Finished indexing %lu events in this database as part of a full-reindex", [v7 count]);
    }

    else
    {
      v15 = os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR);
      if (a2)
      {
        if (v15)
        {
          __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2_cold_2(v12, v7);
        }

        +[CADSpotlightLogger logError:](CADSpotlightLogger, "logError:", @"error indexing %lu events in this database as part of a full-reindex, retrying...", [v7 count]);
      }

      else
      {
        if (v15)
        {
          __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2_cold_1(v12, v7);
        }

        +[CADSpotlightLogger logError:](CADSpotlightLogger, "logError:", @"error indexing %lu events in this database as part of a full-reindex, out of retries", [v7 count]);
      }
    }
  }

  v16 = *(*(*(a1 + 40) + 8) + 24);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)_executeWithNumRetriesOnFailure:(int64_t)failure block:(id)block
{
  do
  {
    if ((*(block + 2))(block, failure > 0))
    {
      break;
    }
  }

  while (failure-- > 0);
}

+ (id)_personaID:(void *)d
{
  if (!d)
  {
    v3 = @"CalMainDatabasePersona";
    goto LABEL_7;
  }

  v3 = CalAuxDatabaseCopyPersonaID();
  if ([(__CFString *)v3 length])
  {
LABEL_7:
    v3 = v3;
    v4 = v3;
    goto LABEL_8;
  }

  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
  {
    +[CADSpotlightIndexer _personaID:];
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (void)_upsertsAndDeletesFromChanges:(id)changes inDatabase:(CalDatabase *)database personaID:(id)d outUpserts:(id *)upserts outDeletes:(id *)deletes
{
  v78 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(changesCopy, "count")}];
  v11 = [changesCopy count];
  theSet = CFSetCreateMutable(0, v11, MEMORY[0x277CBF158]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = changesCopy;
  v12 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v72;
    v68 = *MEMORY[0x277CF7AA8];
    do
    {
      v15 = 0;
      do
      {
        if (*v72 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:@"record"];
        if (v17)
        {
          v18 = [v16 objectForKeyedSubscript:@"type"];
          integerValue = [v18 integerValue];

          entityType = [v17 entityType];
          v21 = v68;
          if (entityType > 4)
          {
            if (entityType != 5)
            {
              if (entityType == 6)
              {
                if (integerValue == 2)
                {
                  v32 = [v16 objectForKeyedSubscript:@"persistent_id"];
                  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", v21, dCopy, v32];
                  [v63 addObject:v33];
                }

                goto LABEL_55;
              }

              if (entityType == 26)
              {
                if (integerValue == 2)
                {
                  v22 = [v16 objectForKeyedSubscript:@"persona_id"];

                  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v21, v22];
                  [v63 addObject:v23];

                  dCopy = v22;
                }

                goto LABEL_55;
              }

LABEL_33:
              v41 = CADSpotlightHandle;
              if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v76 = entityType;
                _os_log_error_impl(&dword_22430B000, v41, OS_LOG_TYPE_ERROR, "Got changes for unexpected entity type: %d", buf, 8u);
              }

              goto LABEL_55;
            }

            if (integerValue != 2)
            {
              v27 = [v16 objectForKeyedSubscript:@"event_id_tomb"];
              intValue = [v27 intValue];

              v29 = MEMORY[0x22AA4B950](database, intValue);
              if (v29)
              {
                v30 = v29;
                CFSetAddValue(theSet, v29);
                v31 = v30;
                goto LABEL_43;
              }
            }

            goto LABEL_55;
          }

          if (entityType == 1)
          {
            if (integerValue == 2)
            {
              v34 = [v16 objectForKeyedSubscript:@"UUID"];
              v35 = [v16 objectForKeyedSubscript:@"store_id"];
              [v35 intValue];

              v36 = CalDatabaseCopyStoreWithUID();
              if (v36)
              {
                v37 = v36;
                v38 = CalStoreCopyUUID();
                if (v38 && v34)
                {
                  [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@", v21, dCopy, v38, v34];
                  v40 = v39 = dCopy;
                  [v63 addObject:v40];

                  dCopy = v39;
                }

                CFRelease(v37);
              }
            }

            goto LABEL_55;
          }

          if (entityType != 2)
          {
            goto LABEL_33;
          }

          if (integerValue != 2)
          {
            v42 = MEMORY[0x22AA4B950](database, [v17 entityID]);
            if (v42)
            {
              v43 = v42;
              CFSetAddValue(theSet, v42);
              v44 = [v16 objectForKeyedSubscript:@"has_recurrence_set_changed"];
              bOOLValue = [v44 BOOLValue];

              if (bOOLValue)
              {
                v46 = CalEventCopyDetachedEvents();
                if (v46)
                {
                  v47 = v46;
                  v65 = dCopy;
                  Count = CFArrayGetCount(v46);
                  if (Count >= 1)
                  {
                    v49 = Count;
                    for (i = 0; i != v49; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v47, i);
                      CFSetAddValue(theSet, ValueAtIndex);
                    }
                  }

                  CFRelease(v47);
                  dCopy = v65;
                }
              }

              v31 = v43;
LABEL_43:
              CFRelease(v31);
            }

LABEL_55:

            goto LABEL_56;
          }

          v64 = dCopy;
          v62 = [v16 objectForKeyedSubscript:@"UUID"];
          v24 = [v16 objectForKeyedSubscript:@"calendar_id"];
          [v24 intValue];

          v25 = CalDatabaseCopyCalendarWithUID();
          if (v25)
          {
            v26 = CalCalendarCopyUUID();
          }

          else
          {
            v26 = 0;
          }

          v52 = [v16 objectForKeyedSubscript:@"store_id"];
          [v52 intValue];

          v53 = CalDatabaseCopyStoreWithUID();
          if (v53)
          {
            v54 = CalStoreCopyUUID();
            if (v54 && v26 && v62)
            {
              v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@.%@", v21, v64, v54, v26, v62];
              [v63 addObject:v55];
            }

            if (v25)
            {
LABEL_51:
              CFRelease(v25);
            }
          }

          else
          {
            v54 = 0;
            if (v25)
            {
              goto LABEL_51;
            }
          }

          if (v53)
          {
            CFRelease(v53);
          }

          dCopy = v64;
          goto LABEL_55;
        }

        if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
        {
          [CADSpotlightIndexer _upsertsAndDeletesFromChanges:v70 inDatabase:? personaID:? outUpserts:? outDeletes:?];
        }

        [CADSpotlightLogger logError:@"CADObjectId was nil for change, skipping"];
LABEL_56:

        ++v15;
      }

      while (v15 != v13);
      v56 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      v13 = v56;
    }

    while (v56);
  }

  *upserts = [(__CFSet *)theSet allObjects];

  v57 = v63;
  *deletes = v57;

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deleteFromIndex:(id)index eventsIndex:(id)eventsIndex
{
  v39 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  eventsIndexCopy = eventsIndex;
  dispatch_assert_queue_V2(self->_queue);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  if ([indexCopy count])
  {
    v8 = CADSpotlightHandle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [indexCopy count];
      *buf = 134217984;
      v38 = v9;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_DEFAULT, "Beginning delete of %lu domain ids", buf, 0xCu);
    }

    v10 = dispatch_group_create();
    [eventsIndexCopy beginIndexBatch];
    dispatch_group_enter(v10);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke;
    v29[3] = &unk_27851AC18;
    v11 = indexCopy;
    v30 = v11;
    v32 = &v33;
    v12 = v10;
    v31 = v12;
    [eventsIndexCopy deleteSearchableItemsWithDomainIdentifiers:v11 completionHandler:v29];
    _expectedClientState = [(CADSpotlightIndexer *)self _expectedClientState];
    dispatch_group_enter(v12);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_134;
    v25 = &unk_27851AC18;
    v14 = v11;
    v26 = v14;
    v28 = &v33;
    v15 = v12;
    v27 = v15;
    [eventsIndexCopy endIndexBatchWithExpectedClientState:_expectedClientState newClientState:_expectedClientState completionHandler:&v22];
    v16 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Beginning wait for deletion of domain ids", buf, 2u);
    }

    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v17 = CADSpotlightHandle;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v14 count];
      *buf = 134217984;
      v38 = v18;
      _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, "Finished deleting %lu domain ids", buf, 0xCu);
    }

    v19 = *(v34 + 24);
  }

  else
  {
    v19 = *(v34 + 24);
  }

  _Block_object_dispose(&v33, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_cold_1(a1);
    }

    [CADSpotlightLogger logError:@"Failed to push spotlight deletes for domain ids: %@", v3];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_134_cold_1(a1);
    }

    [CADSpotlightLogger logError:@"Failed to execute spotlight deletes for domain ids: %@", v3];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)_upsertToIndex:(__CFArray *)index inDatabase:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting eventsIndex:(id)eventsIndex
{
  insertingCopy = inserting;
  v123 = *MEMORY[0x277D85DE8];
  dCopy = d;
  eventsIndexCopy = eventsIndex;
  dispatch_assert_queue_V2(self->_queue);
  theArray = index;
  Count = CFArrayGetCount(index);
  if (Count)
  {
    v13 = Count;
    v14 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v122 = v13;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_DEFAULT, "Start upserting %ld entities", buf, 0xCu);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
    v18 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
    context = v15;
    v106 = v17;
    databaseCopy = database;
    if (v18)
    {
      v19 = v18;
      UID = CalCalendarGetUID();
      CFRelease(v19);
    }

    else
    {
      UID = -1;
    }

    date = [MEMORY[0x277CBEAA8] date];
    v89 = [date dateByAddingTimeInterval:15811200.0];
    v86 = date;
    v88 = [date dateByAddingTimeInterval:31536000.0];
    if (v13 >= 1)
    {
      v21 = 0;
      v108 = *MEMORY[0x277CF7AA8];
      v97 = v16;
      v105 = v13;
      selfCopy = self;
      do
      {
        v22 = objc_autoreleasePoolPush();
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
        v24 = [(CADSpotlightIndexer *)self _spotlightItemAttributes:ValueAtIndex];
        v25 = [objc_opt_class() _spotlightDomainIDForItem:ValueAtIndex bundleID:v108 personaID:dCopy];
        if (!v25)
        {
          v35 = CADSpotlightHandle;
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v122 = ValueAtIndex;
            _os_log_error_impl(&dword_22430B000, v35, OS_LOG_TYPE_ERROR, "Skipping record %@ because we got a nil domain id", buf, 0xCu);
          }

          [CADSpotlightLogger logError:@"Skipping record because we got a nil domain id"];
          goto LABEL_39;
        }

        v26 = v25;
        v112 = CalCalendarItemCopyUUID();
        if (insertingCopy)
        {
          [v106 addObject:v26];
        }

        if (CalEventGetJunkStatus() == 1)
        {
          v27 = v16;
          v28 = dCopy;
          v29 = v24;
          v30 = v26;
          v31 = v22;
          v32 = CADSpotlightHandle;
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v33 = v32;
            v34 = "Skip indexing event marked as junk";
LABEL_21:
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
          }
        }

        else
        {
          if (CalEventGetCalendarId() != UID)
          {
            v37 = 0;
            goto LABEL_24;
          }

          v27 = v16;
          v28 = dCopy;
          v29 = v24;
          v30 = v26;
          v31 = v22;
          v36 = CADSpotlightHandle;
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v33 = v36;
            v34 = "Skip indexing event on natural language suggested calendar";
            goto LABEL_21;
          }
        }

        v37 = 1;
        v22 = v31;
        v26 = v30;
        v24 = v29;
        dCopy = v28;
        v16 = v27;
LABEL_24:
        v38 = CalEventCopyContactName();
        v111 = CalEventCopyContactIdentifier();
        if (v111 && !v38)
        {
          v39 = CADSpotlightHandle;
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v39, OS_LOG_TYPE_DEFAULT, "Skip indexing event because it is a bad birthday", buf, 2u);
          }

          if (CalCalendarItemGetRowID() != -1)
          {
            goto LABEL_38;
          }

LABEL_35:
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
          {
            [CADSpotlightIndexer _upsertToIndex:v118 inDatabase:? personaID:? deleteBeforeInserting:? eventsIndex:?];
          }

          [CADSpotlightLogger logError:@"Skip indexing event because it has a row id of -1"];
          goto LABEL_38;
        }

        if (CalCalendarItemGetRowID() == -1)
        {
          goto LABEL_35;
        }

        if ((v37 & 1) == 0)
        {
          if (CalCalendarItemIsPhantomMaster())
          {
            v40 = CADSpotlightHandle;
            if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_DEFAULT, "Skip indexing event because is a phantom master", buf, 2u);
            }
          }

          else
          {
            v104 = v38;
            v41 = CalEventCopyUniqueIdentifier();
            if (v41)
            {
              v42 = v41;
              [v24 setIdentifier:v41];
              CFRelease(v42);
            }

            v38 = v104;
            if (CalDatabaseLockForThread())
            {
              v43 = CalFilterCreateWithDatabaseShowingAll();
              HasRecurrenceRules = _CalCalendarItemHasRecurrenceRules();
              if (HasRecurrenceRules)
              {
                v44 = _CalCalendarItemCopyRecurrences();
                v99 = v44;
                if ([v44 count] != 1)
                {
                  goto LABEL_51;
                }

                [v44 objectAtIndexedSubscript:0];

                Frequency = _CalRecurrenceGetFrequency();
                v46 = v89;
                if (Frequency == 1)
                {
                  goto LABEL_49;
                }

                if (Frequency == 2)
                {
                  v46 = v88;
LABEL_49:
                  v47 = v46;
                }

                else
                {
LABEL_51:
                  v47 = 0;
                }

                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              var3 = databaseCopy->var3;
              v84 = v48;
              v100 = _CalEventOccurrenceCacheCopySpotlightOccurrenceDates();
              CFRelease(v43);
              Duration = _CalEventGetDuration();
              CalDatabaseUnlockForThread();
              started = CalCalendarItemCopyStartDate();
              if ((CalEventIsAllDay() & 1) != 0 || CalEventIsFloating())
              {
                v50 = CalCopyTimeZone();
                v51 = [started dateInTimeZone:v50 fromTimeZone:0];

                v92 = 0;
                started = v51;
              }

              else
              {
                v92 = 1;
              }

              v38 = v104;
              v52 = v100;
              if (v111)
              {
                v53 = CalCalendarItemCopyCalendarScale();
                v54 = [MEMORY[0x277CBEA80] CalCalendarWithUnsanitizedCalendarIdentifier:v53];
                calendarIdentifier = [v54 calendarIdentifier];
              }

              else
              {
                calendarIdentifier = 0;
              }

              v85 = dCopy;
              if (![v100 count])
              {
                v55 = MEMORY[0x277CCABB0];
                [started timeIntervalSinceReferenceDate];
                v56 = [v55 numberWithDouble:?];
                v120 = v56;
                v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];

                v52 = v57;
              }

              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              obj = v52;
              v101 = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
              if (v101)
              {
                v98 = *v114;
                v91 = v24;
                while (2)
                {
                  for (i = 0; i != v101; ++i)
                  {
                    if (*v114 != v98)
                    {
                      objc_enumerationMutation(obj);
                    }

                    [*(*(&v113 + 1) + 8 * i) doubleValue];
                    v60 = v59;
                    v61 = v59 + Duration;
                    v62 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
                    [v24 setStartDate:v62];

                    v63 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v61];
                    [v24 setEndDate:v63];

                    if (v111)
                    {
                      v64 = MEMORY[0x277CF7790];
                      startDate = [v24 startDate];
                      v66 = [v64 birthdayStringForContactName:v38 eventDate:startDate birthDate:started lunarCalendar:calendarIdentifier];

                      [v24 setTitle:v66];
                    }

                    v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%f", v112, *&v60];
                    v68 = objc_alloc(MEMORY[0x277CC34B0]);
                    v69 = [v24 copy];
                    v70 = [v68 initWithUniqueIdentifier:v67 domainIdentifier:v26 attributeSet:v69];

                    if (HasRecurrenceRules)
                    {
                      v71 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v60];
                      v72 = v92;
                      if (!v71)
                      {
                        v72 = 1;
                      }

                      if ((v72 & 1) == 0)
                      {
                        v73 = CalCopyTimeZone();
                        v74 = [v71 dateInTimeZone:0 fromTimeZone:v73];

                        v71 = v74;
                        v16 = v97;
                      }
                    }

                    else
                    {
                      v71 = 0;
                    }

                    [(CalSpotlightEntityAnnotator *)selfCopy->_spotlightEntityAnnotator associateEventEntityWithIdentifier:v112 occurrenceDate:v71 withSearchableItem:v70];
                    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
                    [v70 setExpirationDate:distantFuture];

                    [v16 addObject:v70];
                    if ([v16 count] >= 0x64)
                    {
                      token = [(CalCancellationTokenSource *)selfCopy->_cancellationTokenSource token];
                      isCancelled = [token isCancelled];

                      if (isCancelled)
                      {
                        if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
                        {
                          [CADSpotlightIndexer _upsertToIndex:buf inDatabase:&buf[1] personaID:? deleteBeforeInserting:? eventsIndex:?];
                        }

                        [CADSpotlightLogger logError:@"returning NO because indexer was shutdown"];
                        v16 = v97;
                        v78 = v106;
LABEL_91:

                        objc_autoreleasePoolPop(v22);
                        dCopy = v85;
                        goto LABEL_92;
                      }

                      v16 = v97;
                      v78 = v106;
                      if (![(CADSpotlightIndexer *)selfCopy _sendSpotlightUpdates:v97 deletes:v106 toIndex:eventsIndexCopy])
                      {
                        goto LABEL_91;
                      }

                      [v97 removeAllObjects];
                      [v106 removeAllObjects];
                      v24 = v91;
                    }

                    v38 = v104;
                  }

                  v101 = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
                  if (v101)
                  {
                    continue;
                  }

                  break;
                }
              }

              dCopy = v85;
            }
          }
        }

LABEL_38:

        self = selfCopy;
        v13 = v105;
LABEL_39:

        objc_autoreleasePoolPop(v22);
        ++v21;
      }

      while (v21 != v13);
    }

    v78 = v106;
    if (([v16 count] || objc_msgSend(v106, "count")) && !-[CADSpotlightIndexer _sendSpotlightUpdates:deletes:toIndex:](self, "_sendSpotlightUpdates:deletes:toIndex:", v16, v106, eventsIndexCopy))
    {
LABEL_92:

      objc_autoreleasePoolPop(context);
      v80 = 0;
      goto LABEL_93;
    }

    objc_autoreleasePoolPop(context);
    v79 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v122 = v13;
      _os_log_impl(&dword_22430B000, v79, OS_LOG_TYPE_DEFAULT, "Finished upserting %ld entities to index", buf, 0xCu);
    }
  }

  v80 = 1;
LABEL_93:

  v81 = *MEMORY[0x277D85DE8];
  return v80;
}

- (BOOL)_sendSpotlightUpdates:(id)updates deletes:(id)deletes toIndex:(id)index
{
  v47 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  deletesCopy = deletes;
  indexCopy = index;
  dispatch_assert_queue_V2(self->_queue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v11 = [updatesCopy count];
  if (v11)
  {
    v12 = dispatch_group_create();
    v25 = [updatesCopy copy];
    if ([deletesCopy count])
    {
      v13 = CADSpotlightHandle;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [deletesCopy count];
        *buf = 134218240;
        v44 = v14;
        v45 = 2048;
        v46 = v11;
        _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEFAULT, "Beginning delete of %lu events, before indexing %lu events", buf, 0x16u);
      }

      dispatch_group_enter(v12);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke;
      v35[3] = &unk_27851AC18;
      v36 = deletesCopy;
      v38 = &v39;
      v15 = v12;
      v37 = v15;
      [indexCopy deleteSearchableItemsWithDomainIdentifiers:v36 completionHandler:v35];
      v16 = CADSpotlightHandle;
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Beginning wait for delete, then indexing of events", buf, 2u);
      }

      dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (*(v40 + 24) == 1)
    {
      [indexCopy beginIndexBatch];
      dispatch_group_enter(v12);
      v17 = CADSpotlightHandle;
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v44 = v11;
        _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, "Beginning indexing of %lu events", buf, 0xCu);
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_157;
      v31[3] = &unk_27851AC40;
      v33 = &v39;
      v34 = v11;
      v18 = v12;
      v32 = v18;
      [indexCopy indexSearchableItems:v25 completionHandler:v31];
      dispatch_group_enter(v18);
      _expectedClientState = [(CADSpotlightIndexer *)self _expectedClientState];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_161;
      v26[3] = &unk_27851AC68;
      v29 = &v39;
      v27 = deletesCopy;
      v30 = v11;
      v20 = v18;
      v28 = v20;
      [indexCopy endIndexBatchWithExpectedClientState:_expectedClientState newClientState:_expectedClientState completionHandler:v26];
      v21 = CADSpotlightHandle;
      if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_DEFAULT, "Beginning wait for indexing of events", buf, 2u);
      }

      dispatch_group_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v22 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_cold_1(a1);
    }

    [CADSpotlightLogger logError:@"Failed to push spotlight deletes for ids before indexing: %@", v3];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    *buf = 134217984;
    v9 = [v5 count];
    _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "Finished pushing delete of %lu events into batch", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x277D85DE8];
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_157(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_157_cold_1();
    }

    [CADSpotlightLogger logError:@"Failed to push spotlight inserts/updates: %@", v3];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 134217984;
    v8 = v5;
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEFAULT, "Finished pushing %lu events into batch", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));

  v6 = *MEMORY[0x277D85DE8];
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_161(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CADSpotlightHandle;
  if (v3)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_161_cold_1();
    }

    [CADSpotlightLogger logError:@"Failed to execute batch request %@", v3];
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 count];
    v8 = *(a1 + 56);
    *buf = 134218240;
    v11 = v7;
    v12 = 2048;
    v13 = v8;
    _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "Finished executing delete of %lu events and updates of %lu events into batch", buf, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_spotlightDomainIDForItem:(void *)item bundleID:(id)d personaID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  RecordLock = CalGetRecordLock();
  os_unfair_lock_lock(RecordLock);
  cf = MEMORY[0x22AA4B660](item);
  _CalDatabaseGetRecordStore();
  v10 = _CalEntityIsOfType();
  v11 = MEMORY[0x277CF7110];
  if (v10)
  {
    StoreWithUID = CFRetain(item);
    CalendarWithUID = 0;
    v14 = 0;
    goto LABEL_22;
  }

  if (_CalEntityIsOfType())
  {
    CalendarWithUID = CFRetain(item);
    if (!CalendarWithUID)
    {
LABEL_5:
      v14 = 0;
      v29 = 0;
LABEL_10:
      StoreWithUID = 0;
      goto LABEL_24;
    }
  }

  else
  {
    if (!_CalEntityIsOfType())
    {
      v14 = 0;
      v29 = 0;
      CalendarWithUID = 0;
      goto LABEL_10;
    }

    Calendar = _CalCalendarItemGetCalendar();
    if (Calendar)
    {
      CalendarWithUID = Calendar;
    }

    else
    {
      CPRecordGetOriginalProperty();
      CalendarWithUID = _CalGetCalendarWithUID();
      if (!CalendarWithUID)
      {
        goto LABEL_5;
      }
    }

    CFRetain(CalendarWithUID);
  }

  Store = _CalCalendarGetStore();
  if (Store)
  {
    StoreWithUID = Store;
  }

  else
  {
    if (*v11 == 1)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    CPRecordGetOriginalProperty();
    StoreWithUID = _CalGetStoreWithUID();
    if (!StoreWithUID)
    {
      goto LABEL_21;
    }
  }

  CFRetain(StoreWithUID);
LABEL_21:
  v14 = _CalCalendarCopyUUID();
LABEL_22:
  v29 = v10 ^ 1;
  if (StoreWithUID)
  {
    v18 = _CalStoreCopyUUID();
    v19 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v18 = 0;
  v19 = 1;
LABEL_25:
  if (_CalEntityIsOfType())
  {
    v20 = RecordLock;
    v21 = iDCopy;
    v22 = dCopy;
    v23 = _CalCalendarItemCopyUUID();
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@.%@", v22, v21, v18, v14, v23];
    v25 = v23;
    dCopy = v22;
    iDCopy = v21;
    CFRelease(v25);
    goto LABEL_33;
  }

  if (v18 && v14)
  {
    v20 = RecordLock;
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@.%@", dCopy, iDCopy, v18, v14];
    v24 = LABEL_32:;
    goto LABEL_33;
  }

  if (v18)
  {
    v20 = RecordLock;
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", dCopy, iDCopy, v18, v28];
    goto LABEL_32;
  }

  v20 = RecordLock;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
  {
    +[CADSpotlightIndexer _spotlightDomainIDForItem:bundleID:personaID:];
  }

  v24 = 0;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(CalendarWithUID);
    if (v19)
    {
LABEL_37:
      if (!v14)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if (v19)
  {
    goto LABEL_37;
  }

  CFRelease(StoreWithUID);
  if (v14)
  {
LABEL_38:
    CFRelease(v14);
  }

LABEL_39:
  v26 = MEMORY[0x277CF7110];
  if (v18)
  {
    CFRelease(v18);
  }

  if (*v26 == 1)
  {
    os_unfair_lock_assert_owner(v20);
  }

  os_unfair_lock_unlock(v20);

  return v24;
}

- (id)_spotlightRecurrenceId:(void *)id
{
  v3 = CalEventCopyRecurrenceSet();
  if (!v3)
  {
    v4 = CalEventCopyOriginalEvent();
    if (v4)
    {
      v5 = v4;
      v3 = CalEventCopyRecurrenceSet();
      if (!v3)
      {
        v3 = CalCalendarItemCopyUUID();
      }

      CFRelease(v5);
    }

    else
    {
      v3 = CalCalendarItemCopyUUID();
    }
  }

  return v3;
}

- (id)_spotlightItemAttributes:(void *)attributes
{
  v112[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CC34B8]);
  v6 = [v5 initWithContentType:*MEMORY[0x277CE1D20]];
  v7 = CalCalendarItemCopyCalendar();
  v101 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = CalCalendarCopyStore();
    if (v9)
    {
      v10 = CalStoreCopyExternalID();
    }

    else
    {
      v10 = 0;
    }

    v11 = CalCalendarCopyTitle();
    if (v11)
    {
      v12 = v11;
      [v6 setContainerDisplayName:v11];
      CFRelease(v12);
    }

    if ((CalCalendarIsHolidaySubscribedCalendar() & 1) != 0 || CalCalendarIsHolidaySyncedCalendar())
    {
      [v6 setCalendarHolidayIdentifier:@"Y"];
    }

    v13 = v6;
    IsSubscribed = CalCalendarIsSubscribed();
    v15 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilecal_calendarIsSubscribedCalendar" searchable:1 searchableByDefault:0 unique:1 multiValued:0];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:IsSubscribed];
    [v13 setValue:v16 forCustomKey:v15];

    v17 = CalCalendarCopyUUID();
    if (v17)
    {
      v18 = v17;
      v19 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilecal_calendarIdentifier" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
      [v13 setValue:v18 forCustomKey:v19];
      CFRelease(v18);
    }

    SharingStatus = CalCalendarGetSharingStatus();
    if (SharingStatus)
    {
      v21 = SharingStatus;
      [v101 setShared:&unk_2837C7438];
      if (v21 == 2)
      {
        [v101 setUserOwned:&unk_2837C7420];
        v22 = CalCalendarCopySharedOwnerName();
        if (v22)
        {
          [v101 setOwnerName:v22];
        }
      }

      else
      {
        [v101 setUserOwned:&unk_2837C7438];
      }

      v6 = v101;
    }

    else
    {
      v6 = v101;
      [v101 setShared:&unk_2837C7420];
    }

    if (v10)
    {
      [v6 setAccountIdentifier:v10];
      CFRelease(v10);
    }

    v23 = CalCalendarCopySelfIdentityAddress();
    if (v23)
    {
      v24 = v23;
      resourceSpecifier = [v23 resourceSpecifier];
      v26 = resourceSpecifier;
      if (resourceSpecifier)
      {
        v112[0] = resourceSpecifier;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:1];
        [v101 setAccountHandles:v27];

        v6 = v101;
      }

      CFRelease(v24);

      if (v9)
      {
        goto LABEL_26;
      }
    }

    else if (v9)
    {
LABEL_26:
      if (CalStoreIsDelegate())
      {
        v28 = CalStoreCopyName();
        [v6 setCalendarDelegateIdentifier:v28];
      }

      if (CalStoreGetType() == 6)
      {
        [v6 setDisableSearchInSpotlight:MEMORY[0x277CBEC38]];
      }

      CFRelease(v8);
      goto LABEL_33;
    }

    v9 = v8;
LABEL_33:
    CFRelease(v9);
  }

  v29 = CalCalendarItemCopyUUID();
  if (v29)
  {
    v30 = v29;
    v31 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilecal_calendarItemIdentifier" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
    [v6 setValue:v30 forCustomKey:v31];
    CFRelease(v30);
  }

  v32 = CalCalendarItemCopySummary();
  if (v32)
  {
    v33 = v32;
    [v6 setTitle:v32];
    CFRelease(v33);
  }

  v34 = CalCalendarItemCopyDescription();
  if (v34)
  {
    v35 = v34;
    [v6 setComment:v34];
    CFRelease(v35);
  }

  ParticipationStatus = CalEventGetParticipationStatus();
  v37 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilecal_current_user_participation_status" searchable:1 searchableByDefault:0 unique:0 multiValued:0];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:ParticipationStatus];
  v92 = v37;
  [v6 setValue:v38 forCustomKey:v37];

  v111[0] = @"com.apple.calendar.spotlight.identifier";
  v111[1] = @"com.apple.calendar.ics";
  v111[2] = @"com.apple.ical.ics";
  identifier = [*MEMORY[0x277CE1EB0] identifier];
  v111[3] = identifier;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:4];
  [v6 setProviderDataTypes:v40];

  v41 = CalCalendarItemCopyLocation();
  if (v41)
  {
    v42 = v41;
    v43 = CalLocationCopyTitle();
    if (v43)
    {
      v44 = v43;
      [v6 setNamedLocation:v43];
      CFRelease(v44);
    }

    if (CalLocationHasCoordinates())
    {
      CalLocationGetCoordinates();
      v45 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      [v6 setLatitude:v45];

      v46 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      [v6 setLongitude:v46];

      [v6 setSupportsNavigation:MEMORY[0x277CBEC38]];
    }

    v47 = CalLocationCopyAddress();
    if (v47)
    {
      v48 = v47;
      [v6 setFullyFormattedAddress:v47];
      CFRelease(v48);
    }

    CFRelease(v42);
  }

  v49 = MEMORY[0x277CBEC38];
  v50 = CalEventCopySuggestedEventInfo();
  if (v50)
  {
    v51 = v50;
    v52 = CalSuggestedEventInfoCopyExtractionGroupIdentifier();
    [v6 setEventMessageIdentifier:v52];

    CFRelease(v51);
  }

  if (CalCalendarItemIsAllDay())
  {
    v53 = v49;
  }

  else
  {
    v53 = MEMORY[0x277CBEC28];
  }

  [v6 setAllDay:v53];
  v54 = [MEMORY[0x277CCABB0] numberWithBool:CalCalendarItemGetStatus() == 3];
  [v6 setEventIsCancelled:v54];

  v55 = [(CADSpotlightIndexer *)self _spotlightRecurrenceId:attributes];
  [v6 setRelatedUniqueIdentifier:v55];

  v56 = CalCalendarItemCopyOrganizer();
  if (v56)
  {
    v57 = v56;
    v58 = MEMORY[0x22AA4C730]();
    v59 = MEMORY[0x22AA4C750](v57);
    v60 = CalCalendarItemCopyAttendees();
    if (v60)
    {
      v61 = v60;
      v91 = v57;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      array4 = [MEMORY[0x277CBEB18] array];
      array5 = [MEMORY[0x277CBEB18] array];
      array6 = [MEMORY[0x277CBEB18] array];
      array7 = [MEMORY[0x277CBEB18] array];
      Count = CFArrayGetCount(v61);
      v106 = array4;
      if (Count >= 1)
      {
        v64 = 0;
        v94 = *MEMORY[0x277CBCFC0];
        v95 = *MEMORY[0x277CBD098];
        v99 = v59;
        v102 = v61;
        v103 = v58;
        v105 = array7;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v61, v64);
          cf = MEMORY[0x22AA4B080]();
          v66 = MEMORY[0x22AA4B090](ValueAtIndex);
          v67 = MEMORY[0x22AA4B0D0](ValueAtIndex);
          v107 = v67;
          if (v58)
          {
            if ([v58 isEqualToString:v66])
            {
              break;
            }
          }

          if (!v59)
          {
            v68 = v66 != 0;
            if (v66)
            {
              v74 = v66;
            }

            else
            {
              v74 = v67;
            }

            v75 = v74;
            if (v75)
            {
              v70 = v75;
LABEL_81:
              [array3 addObject:v70];
              if (cf)
              {
                [array2 addObject:?];
                v73 = 0;
                v76 = 0;
                v77 = 0;
                if (v68)
                {
                  goto LABEL_90;
                }

                goto LABEL_94;
              }
            }

            else
            {
              if (cf)
              {
                v70 = 0;
LABEL_89:
                [array2 addObject:?];
                v73 = 0;
                v76 = 0;
                v77 = 0;
                if (v68)
                {
LABEL_90:
                  v78 = objc_alloc(MEMORY[0x277CC3450]);
                  v110 = v66;
                  v76 = 1;
                  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
                  v80 = [v78 initWithDisplayName:cf handles:v79 handleIdentifier:v94];

                  v67 = v107;
                  if (v73)
                  {
                    v81 = array5;
                  }

                  else
                  {
                    v81 = array;
                  }

                  [v81 addObject:v80];

                  v77 = v73;
                }

LABEL_94:
                if (v67)
                {
                  v68 = v76;
                  v82 = v101;
                  goto LABEL_96;
                }

                v6 = v101;
                if (v77)
                {
                  v59 = v99;
                  goto LABEL_111;
                }

                v71 = 1;
                v68 = v76;
                v59 = v99;
LABEL_104:
                array4 = v106;
                goto LABEL_109;
              }

              v70 = 0;
            }

            v71 = 0;
            LODWORD(v67) = v67 != 0;
            goto LABEL_109;
          }

          v71 = [v59 isEqualToString:v67];
          v68 = v66 != 0;
          if (v66)
          {
            v72 = v66;
          }

          else
          {
            v72 = v67;
          }

          v70 = v72;
          if (v70)
          {
            if (!v71)
            {
              goto LABEL_81;
            }

LABEL_70:
            [v105 addObject:v70];
LABEL_71:
            v71 = 1;
          }

          if (cf)
          {
            if (!v71)
            {
              goto LABEL_89;
            }

            [array6 addObject:?];
            if (v68)
            {
              v73 = 1;
              goto LABEL_90;
            }

            if (!v67)
            {
              v58 = v103;
              CFRelease(cf);
              goto LABEL_117;
            }

            v82 = v6;
            v68 = 0;
            v77 = 1;
LABEL_96:
            v83 = objc_alloc(MEMORY[0x277CC3450]);
            v109 = v67;
            v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
            v85 = [v83 initWithDisplayName:cf handles:v84 handleIdentifier:v95];

            if (v77)
            {
              [array5 addObject:v85];

              CFRelease(cf);
              if (v68)
              {
                CFRelease(v66);
              }

              v59 = v99;
              v58 = v103;
              v6 = v82;
              array4 = v106;
LABEL_116:
              CFRelease(v107);
              goto LABEL_117;
            }

            [array addObject:v85];

            v71 = 1;
            LODWORD(v67) = 1;
            v59 = v99;
            v6 = v82;
            goto LABEL_104;
          }

          LODWORD(v67) = v67 != 0;
          if (v71)
          {
            v58 = v103;
            if (v68)
            {
              goto LABEL_112;
            }

            goto LABEL_115;
          }

LABEL_109:
          v86 = [MEMORY[0x277CCABB0] numberWithInt:CalAttendeeGetStatus()];
          [array4 addObject:v86];

          if (v71)
          {
            LOBYTE(v76) = v68;
LABEL_111:
            CFRelease(cf);
            v58 = v103;
            if (v76)
            {
              goto LABEL_112;
            }

            goto LABEL_115;
          }

          v58 = v103;
          if (v68)
          {
LABEL_112:
            CFRelease(v66);
            array4 = v106;
            if ((v67 & 1) == 0)
            {
              goto LABEL_117;
            }

            goto LABEL_116;
          }

LABEL_115:
          array4 = v106;
          if (v67)
          {
            goto LABEL_116;
          }

LABEL_117:

          ++v64;
          array7 = v105;
          v61 = v102;
          if (Count == v64)
          {
            goto LABEL_120;
          }
        }

        v68 = v66 != 0;
        if (v66)
        {
          v69 = v66;
        }

        else
        {
          v69 = v67;
        }

        v70 = v69;
        if (v70)
        {
          goto LABEL_70;
        }

        goto LABEL_71;
      }

LABEL_120:
      if ([array count])
      {
        [v6 setPrimaryRecipients:array];
      }

      if ([array2 count])
      {
        [v6 setRecipientNames:array2];
      }

      if ([array3 count])
      {
        [v6 setRecipientEmailAddresses:array3];
      }

      if ([v106 count])
      {
        v87 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilecal_recipientParticipationStatuses" searchable:1 searchableByDefault:0 unique:0 multiValued:1];
        [v6 setValue:v106 forCustomKey:v87];
      }

      if ([array5 count])
      {
        [v6 setAuthors:array5];
      }

      v57 = v91;
      if ([array6 count])
      {
        [v6 setAuthorNames:array6];
      }

      if ([array7 count])
      {
        [v6 setAuthorEmailAddresses:array7];
      }

      CFRelease(v61);
    }

    CFRelease(v57);
    if (v58)
    {
      CFRelease(v58);
    }

    if (v59)
    {
      CFRelease(v59);
    }
  }

  v88 = v6;

  v89 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer reindexAllItemsForBundleID:protectionClass:acknowledgementHandler:];
    }

    [CADSpotlightLogger logError:@"calling ack handler and returning because indexer was shutdown"];
LABEL_11:
    handlerCopy[2](handlerCopy);
    goto LABEL_12;
  }

  v11 = [dCopy isEqualToString:*MEMORY[0x277CF7AA8]];
  v12 = CADSpotlightHandle;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer reindexAllItemsForBundleID:protectionClass:acknowledgementHandler:];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = dCopy;
    _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_DEFAULT, "CADSpotlightDaemonClientHandler: Received request to reindex all searchable items for Core Spotlight for bundleID: %@", buf, 0xCu);
  }

  v13 = os_transaction_create();
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CADSpotlightIndexer_reindexAllItemsForBundleID_protectionClass_acknowledgementHandler___block_invoke;
  v17[3] = &unk_27851AB28;
  v17[4] = self;
  v18 = v13;
  v15 = v13;
  dispatch_async(queue, v17);
  handlerCopy[2](handlerCopy);

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v47 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  handlerCopy = handler;
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      [CADSpotlightIndexer reindexAllItemsForBundleID:protectionClass:acknowledgementHandler:];
    }

    [CADSpotlightLogger logError:@"calling ack handler and returning because indexer was shutdown"];
LABEL_20:
    handlerCopy[2](handlerCopy);
    goto LABEL_21;
  }

  v14 = *MEMORY[0x277CF7AA8];
  v15 = [dCopy isEqualToString:*MEMORY[0x277CF7AA8]];
  v16 = CADSpotlightHandle;
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v42 = identifiersCopy;
      v43 = 2112;
      v44 = dCopy;
      v45 = 2112;
      v46 = v14;
      _os_log_error_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, "CADSpotlightDaemonClientHandler: Aborting unexpected request to reindex searchable items for Core Spotlight: %@ for bundleID: %@ for donation manager with bundleID: %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = identifiersCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "CADSpotlightDaemonClientHandler: Received request to reindex searchable items for Core Spotlight: %@ for bundleID: %@", buf, 0x16u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = identifiersCopy;
  v18 = identifiersCopy;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v36 + 1) + 8 * v22) componentsSeparatedByString:@"."];
        firstObject = [v23 firstObject];

        if (firstObject)
        {
          [array addObject:firstObject];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }

  v25 = os_transaction_create();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke;
  block[3] = &unk_27851ACE0;
  block[4] = self;
  v33 = v18;
  v34 = array;
  v35 = v25;
  v27 = v25;
  v28 = array;
  dispatch_async(queue, block);
  handlerCopy[2](handlerCopy);

  dCopy = v30;
  identifiersCopy = v31;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

void __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_2;
  v3[3] = &unk_27851ACB8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _enumerateDatabases:v3];
}

void __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() _personaID:a3];
  if (v6)
  {
    v7 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      *buf = 134217984;
      v19 = [v8 count];
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEFAULT, "Indexing %lu events in this database because spotlight told us to.", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_211;
    v13[3] = &unk_27851AC90;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v17 = a2;
    v15 = v6;
    v16 = *(a1 + 40);
    [v11 _executeWithNumRetriesOnFailure:1 block:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __99__CADSpotlightIndexer_reindexItemsWithIdentifiers_bundleID_protectionClass_acknowledgementHandler___block_invoke_211(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) _pushBatchedUpdatesForCalendarItemsWithUUIDs:*(a1 + 40) database:*(a1 + 64) personaID:*(a1 + 48) deleteBeforeInserting:1];
  if (v4)
  {
    v5 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = v5;
      v13 = 134217984;
      v14 = [v6 count];
      v8 = "Finished indexing %lu events in this database because spotlight told us to.";
LABEL_7:
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEFAULT, v8, &v13, 0xCu);
    }
  }

  else if (a2)
  {
    v9 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v7 = v9;
      v13 = 134217984;
      v14 = [v10 count];
      v8 = "Error indexing %lu events in this database because spotlight told us to, retrying...";
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_textRepresentationForEvent:(void *)event
{
  v28 = CalCalendarItemCopySummary();
  v3 = CalCalendarItemCopyLocation();
  v4 = CalLocationCopyTitle();
  if (v3)
  {
    CFRelease(v3);
  }

  v5 = CalCalendarItemCopyURL();
  v6 = CalCalendarItemCopyDescription();
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2837B4630];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v28];
  [v7 appendString:?];
  v8 = MEMORY[0x277CBEAA8];
  CalEventGetStartDate();
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = MEMORY[0x277CBEAA8];
  CalEventGetEndDate();
  v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  IsAllDay = CalEventIsAllDay();
  started = CalEventCopyStartTimeZone();
  v14 = [MEMORY[0x277CF7798] dateStringRepresentationForEventCompontentsStartDate:v9 endDate:v11 allDay:IsAllDay timeZone:started];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v14];

  [v7 appendString:v15];
  if ([v4 length])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v4];
    [v7 appendString:v16];
  }

  if (v5)
  {
    v17 = MEMORY[0x277CCACA8];
    [v5 absoluteString];
    v18 = v9;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v23 = v22 = v11;
    v24 = [v17 stringWithFormat:@"%@\n", v23];
    [v7 appendString:v24];

    v11 = v22;
    v4 = v21;
    v5 = v20;
    v6 = v19;
    v9 = v18;
  }

  if (v6)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v6];
    [v7 appendString:v25];
  }

  return v7;
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  v56[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  classCopy = class;
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
  isCancelled = [token isCancelled];

  if (isCancelled)
  {
    v20 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA068];
    v56[0] = @"CADSpotlightIndexer is shutdown";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v22 = [v20 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v21];
    handlerCopy[2](handlerCopy, 0, v22);

    goto LABEL_18;
  }

  v23 = [dCopy isEqualToString:*MEMORY[0x277CF7AA8]];
  v24 = CADSpotlightHandle;
  if (v23)
  {
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2112;
      v50 = typeIdentifierCopy;
      _os_log_impl(&dword_22430B000, v24, OS_LOG_TYPE_DEFAULT, "CADSpotlightDaemonClientHandler: Received request to provide data for bundleID: %@, %@, %@", buf, 0x20u);
    }

    if ([typeIdentifierCopy isEqualToString:@"com.apple.calendar.spotlight.identifier"])
    {
      v21 = [identifierCopy dataUsingEncoding:4];
      (handlerCopy)[2](handlerCopy, v21, 0);
      goto LABEL_18;
    }

    v21 = [identifierCopy componentsSeparatedByString:@"."];
    firstObject = [v21 firstObject];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = __Block_byref_object_copy__4;
    v51 = __Block_byref_object_dispose__4;
    v52 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__CADSpotlightIndexer_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
    v36[3] = &unk_27851AD08;
    v35 = firstObject;
    v37 = v35;
    v38 = typeIdentifierCopy;
    v28 = handlerCopy;
    selfCopy = self;
    v40 = v28;
    v41 = buf;
    v42 = &v43;
    [(CADSpotlightIndexer *)self _enumerateDatabases:v36];
    v29 = *(*&buf[8] + 40);
    if (*(v44 + 24) == 1)
    {
      if (!v29)
      {
        goto LABEL_17;
      }
    }

    else if (!v29)
    {
      v30 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA068];
      v48 = @"Event Identifier not found";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v32 = [v30 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v31];
      v33 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v32;

      v29 = *(*&buf[8] + 40);
    }

    v28[2](v28, 0, v29);
LABEL_17:

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v43, 8);

    goto LABEL_18;
  }

  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
  {
    [CADSpotlightIndexer provideDataForBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:];
  }

  v25 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277CCA068];
  v54 = @"Incorrect Bundle ID";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v26 = [v25 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v21];
  handlerCopy[2](handlerCopy, 0, v26);

LABEL_18:
  v34 = *MEMORY[0x277D85DE8];
}

void __118__CADSpotlightIndexer_provideDataForBundleID_protectionClass_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = CalDatabaseCopyCalendarItemWithUUID();
  cf = v7;
  if (v7)
  {
    v8 = v7;
    if (([*(a1 + 40) isEqualToString:@"com.apple.calendar.ics"] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", @"com.apple.ical.ics"))
    {
      v9 = CFArrayCreate(0, &cf, 1, MEMORY[0x277CBF128]);
      if (v9 && (v10 = v9, v11 = CalCreateiCalendarDataFromCalEntitiesWithOptions(), CFRelease(v10), v11))
      {
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA068];
        v31[0] = @"Failed to create ICS";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:{1, cf}];
        v13 = [v12 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v11];
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      v8 = cf;
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = [*MEMORY[0x277CE1EB0] identifier];
      LODWORD(v17) = [v17 isEqualToString:v18];

      if (v17)
      {
        v19 = [*(a1 + 48) _textRepresentationForEvent:v8];
        v20 = *(a1 + 56);
        v21 = [v19 dataUsingEncoding:4];
        (*(v20 + 16))(v20, v21, 0);
      }

      else
      {
        v22 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA068];
        v29 = @"Unrecognized type Identifier";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [v22 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v23];
        v25 = *(*(a1 + 64) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }
    }

    CFRelease(v8);
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *a4 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA068];
  v16[0] = @"FileURLs are not provided for events";
  v10 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v12 = [v10 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v9 errorWithDomain:@"CADSpotlightDaemonClientHandlerErrorDomain" code:0 userInfo:v12];
  (*(handler + 2))(handlerCopy, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_pushUpdatesForCalendarItemsWithUUIDs:(id)ds inBatchesOf:(unint64_t)of database:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting
{
  insertingCopy = inserting;
  v44 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  if (dsCopy && [dsCopy count])
  {
    v12 = CADSpotlightHandle;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:of];
      *buf = 138412546;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_INFO, "Pushing [%@] calendar items in batches of [%@]", buf, 0x16u);
    }

    v17 = [dsCopy count];
    if (v17 >= of)
    {
      ofCopy = of;
    }

    else
    {
      ofCopy = v17;
    }

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ofCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = dsCopy;
    v20 = dsCopy;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 addObject:*(*(&v35 + 1) + 8 * i)];
          if ([v19 count] >= of)
          {
            v25 = [(CADSpotlightIndexer *)self _pushUpdatesForCalendarItemsWithUUIDs:v19 database:database personaID:dCopy deleteBeforeInserting:insertingCopy];
            [(CADSpotlightIndexer *)self _resetDatabase:database];
            [v19 removeAllObjects];
            if (!v25)
            {
              goto LABEL_24;
            }
          }

          token = [(CalCancellationTokenSource *)self->_cancellationTokenSource token];
          isCancelled = [token isCancelled];

          if (isCancelled)
          {
            if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
            {
              [CADSpotlightIndexer _pushUpdatesForCalendarItemsWithUUIDs:inBatchesOf:database:personaID:deleteBeforeInserting:];
            }

            [CADSpotlightLogger logError:@"returning NO because indexer was shutdown"];
LABEL_24:

            v28 = 0;
            goto LABEL_25;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v28 = [(CADSpotlightIndexer *)self _pushUpdatesForCalendarItemsWithUUIDs:v19 database:database personaID:dCopy deleteBeforeInserting:insertingCopy];
LABEL_25:

    dsCopy = v32;
  }

  else
  {
    v29 = CADSpotlightHandle;
    v28 = 1;
    if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_INFO, "No UUIDs were given.  Will not push any calendar items to Spotlight in batches.", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_pushUpdatesForCalendarItemsWithUUIDs:(id)ds database:(CalDatabase *)database personaID:(id)d deleteBeforeInserting:(BOOL)inserting
{
  insertingCopy = inserting;
  v32 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_DEBUG))
  {
    [CADSpotlightIndexer _pushUpdatesForCalendarItemsWithUUIDs:database:personaID:deleteBeforeInserting:];
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = dsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v16 = CalDatabaseCopyCalendarItemWithUUID();
        if (v16)
        {
          v17 = v16;
          CFArrayAppendValue(Mutable, v16);
          CFRelease(v17);
        }

        else
        {
          v18 = CADSpotlightHandle;
          if (os_log_type_enabled(CADSpotlightHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v15;
            _os_log_error_impl(&dword_22430B000, v18, OS_LOG_TYPE_ERROR, "Could not find a calendar item with UUID [%@].  Will not push this item to Spotlight.", buf, 0xCu);
          }

          [CADSpotlightLogger logError:@"Could not find a calendar item with UUID [%@].  Will not push this item to Spotlight.", v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v12);
  }

  v19 = [(CADSpotlightIndexer *)self _upsertToIndex:Mutable inDatabase:database personaID:dCopy deleteBeforeInserting:insertingCopy];
  CFRelease(Mutable);

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_3(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_4(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__CADSpotlightIndexer__incrementalUpdate__block_invoke_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__CADSpotlightIndexer__deleteAllSearchableItemsAndSetClientStateForBundleID_eventIndex___block_invoke_59_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7(&dword_22430B000, v4, v5, "Error indexing %lu events in this database as part of a full-reindex, out of retries", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__CADSpotlightIndexer__fullReindexWithReason___block_invoke_2_cold_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7(&dword_22430B000, v4, v5, "Error indexing %lu events in this database as part of a full-reindex, retrying...", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_personaID:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_upsertsAndDeletesFromChanges:(_BYTE *)a1 inDatabase:(_BYTE *)a2 personaID:outUpserts:outDeletes:.cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_22430B000, v2, v3, "Failed to push spotlight deletes for domain ids: %{public}@, %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __52__CADSpotlightIndexer__deleteFromIndex_eventsIndex___block_invoke_134_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_22430B000, v2, v3, "Failed to execute deletes for domain ids: %{public}@, %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_upsertToIndex:(_BYTE *)a1 inDatabase:(_BYTE *)a2 personaID:deleteBeforeInserting:eventsIndex:.cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_upsertToIndex:(_BYTE *)a1 inDatabase:(_BYTE *)a2 personaID:deleteBeforeInserting:eventsIndex:.cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_22430B000, v2, v3, "Failed to push spotlight deletes for ids before indexing: %{public}@, %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_157_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__CADSpotlightIndexer__sendSpotlightUpdates_deletes_toIndex___block_invoke_161_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_spotlightDomainIDForItem:bundleID:personaID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reindexAllItemsForBundleID:protectionClass:acknowledgementHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_22430B000, v0, v1, "CADSpotlightDaemonClientHandler: Aborting unexpected request to reindex all searchable items for Core Spotlight for bundleID: %@ for donation manager with bundleID: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)reindexAllItemsForBundleID:protectionClass:acknowledgementHandler:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)provideDataForBundleID:protectionClass:itemIdentifier:typeIdentifier:options:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_22430B000, v0, v1, "CADSpotlightDaemonClientHandler: Aborting unexpected request for data on searchable items for Core Spotlight for bundleID: %@ for donation manager with bundleID: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_pushUpdatesForCalendarItemsWithUUIDs:inBatchesOf:database:personaID:deleteBeforeInserting:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pushUpdatesForCalendarItemsWithUUIDs:database:personaID:deleteBeforeInserting:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_22430B000, v0, OS_LOG_TYPE_DEBUG, "Attempting to push calendar items to Spotlight.  Calendar item UUIDs: [%@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end