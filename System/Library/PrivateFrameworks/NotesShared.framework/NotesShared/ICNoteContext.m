@interface ICNoteContext
+ (BOOL)hasContextOptions:(unint64_t)a3;
+ (BOOL)legacyNotesDisabled;
+ (BOOL)updateSharedStateFile:(id)a3 toState:(BOOL)a4 error:(id *)a5;
+ (ICNoteContext)sharedContext;
+ (id)filenameFromFileWrapper:(id)a3;
+ (id)initializeSearchIndexerDataSourceWithPersistentContainer:(id)a3;
+ (id)performBackgroundTaskSerialQueue;
+ (id)snapshotManagedObjectContextForContainer:(id)a3;
+ (id)workerManagedObjectContextForContainer:(id)a3;
+ (void)clearSharedContext;
+ (void)enableLocalAccount;
+ (void)markOldTrashedNotesForDeletionInContext:(id)a3;
+ (void)resetAppContainer;
+ (void)resetAppState;
+ (void)setLegacyNotesDisabled:(BOOL)a3;
+ (void)sharedContext;
+ (void)startSharedContextWithOptions:(unint64_t)a3;
+ (void)useContainerNamed:(id)a3;
- (BOOL)noteIsVisible:(id)a3;
- (BOOL)recoverFromSaveError;
- (BOOL)save;
- (BOOL)save:(id *)a3;
- (ICNoteContext)initWithOptions:(unint64_t)a3;
- (ICPersistentContainer)persistentContainer;
- (NSArray)visibleNotes;
- (OS_dispatch_queue)backgroundTaskQueue;
- (id)allICloudACAccounts;
- (id)defaultPersistentStoreFromPersistentStores:(id)a3;
- (id)fetchedResultsControllerForFetchRequest:(id)a3 sectionNameKeyPath:(id)a4;
- (id)newFetchedResultsControllerForAllAccounts;
- (id)objectID;
- (id)persistentContainerQueue;
- (id)persistentStoreCoordinator;
- (id)persistentStoreForAccountID:(id)a3;
- (id)predicateForSearchableAttachments;
- (id)predicateForSearchableNotes;
- (id)predicateForVisibleNotes;
- (id)primaryICloudACAccount;
- (id)snapshotManagedObjectContext;
- (id)workerManagedObjectContext;
- (unint64_t)visibleNotesCount;
- (void)accountsDidChange:(id)a3;
- (void)addOrDeleteLocalAccountIfNecessary;
- (void)applicationWillTerminate;
- (void)cleanupAdditionalPersistentStores;
- (void)clearPersistentContainer;
- (void)cloudContextFetchRecordChangeOperationDidFinish:(id)a3;
- (void)createAdditionalPersistentStoresWithAccountIdentifiers:(id)a3 completionBlock:(id)a4;
- (void)createAdditionalPersistentStoresWithAccountIdentifiers:(id)a3 persistentContainer:(id)a4;
- (void)dealloc;
- (void)deleteEverything;
- (void)destroyPersistentStore;
- (void)ensureModernAccountExistsInContext:(id)a3;
- (void)loadAdditionalPersistentStores;
- (void)managedObjectContextDidSave:(id)a3;
- (void)managedObjectContextUpdaterDidChangeObjectWithID:(id)a3;
- (void)managedObjectContextUpdaterDidMerge:(id)a3;
- (void)performBackgroundTask:(id)a3;
- (void)performSnapshotBackgroundTask:(id)a3;
- (void)purgeDeletedObjectsInManagedObjectContext:(id)a3;
- (void)purgeEverything;
- (void)recoverFromSaveError;
- (void)refreshAll;
- (void)refreshPersistentStoresByAccountIdFromPersistentStores:(id)a3;
- (void)save;
- (void)setupCrossProcessChangeCoordinator;
- (void)setupTrashDeletionTimer;
- (void)startIndexingWithCoreSpotlightDelegateForDescription:(id)a3 coordinator:(id)a4;
- (void)startSearchIndexerChangeObservingIfNecessary;
- (void)updateAccounts;
@end

@implementation ICNoteContext

- (void)setupCrossProcessChangeCoordinator
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (ICPersistentContainer)persistentContainer
{
  v3 = [(ICNoteContext *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ICNoteContext_persistentContainer__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_sync(v3, block);
  v4 = [(ICNoteContext *)self crossProcessChangeCoordinator];

  if (!v4)
  {
    dispatchMainAfterDelay();
  }

  persistentContainer = self->_persistentContainer;
  v6 = persistentContainer;

  return persistentContainer;
}

- (id)persistentContainerQueue
{
  if (persistentContainerQueue_onceToken != -1)
  {
    [ICNoteContext persistentContainerQueue];
  }

  v3 = persistentContainerQueue_persistentContainerQueue;

  return v3;
}

void __36__ICNoteContext_persistentContainer__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 16))
  {
    v2 = *MEMORY[0x277CBE2E8];
    v3 = [MEMORY[0x277D36238] standardStoreOptions];
    v4 = [v3 mutableCopy];

    if (([*(a1 + 32) hasContextOptions:0x200000] & 1) == 0)
    {
      v5 = ICDataStoreServiceBundleIdentifier();
      [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBE340]];

      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBE338]];
      v6 = *MEMORY[0x277CBE348];

      v2 = v6;
    }

    if ([*(a1 + 32) hasContextOptions:2056])
    {
      v7 = *MEMORY[0x277CBE2E0];
      v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE2E0]];
      v9 = [v8 mutableCopy];

      if (!v9)
      {
        v9 = [MEMORY[0x277CBEB38] dictionary];
      }

      [v9 setObject:@"0" forKeyedSubscript:@"cache_spill"];
      [v4 setObject:v9 forKeyedSubscript:v7];
    }

    if ([*(a1 + 32) hasContextOptions:64])
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBE2B0]];
    }

    if ([*(a1 + 32) hasContextOptions:0x800000])
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CBE1D8]];
    }

    if (([*(a1 + 32) hasContextOptions:721457] & 1) == 0)
    {
      [v4 setObject:&unk_282747C10 forKeyedSubscript:*MEMORY[0x277CBE218]];
    }

    v10 = [MEMORY[0x277D36230] persistentStoreURL];
    if (v10)
    {
      v11 = objc_alloc_init(ICNoteMergePolicy);
      v12 = [objc_alloc(MEMORY[0x277D36238]) initWithStoreURL:v10 storeType:v2 options:v4 mergePolicy:v11];
      v13 = *(a1 + 32);
      v14 = *(v13 + 16);
      *(v13 + 16) = v12;
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"storeURL" functionName:"-[ICNoteContext persistentContainer]_block_invoke" simulateCrash:1 showAlert:1 format:@"Couldn't find store URL for persistent container"];
    }

    v15 = *(a1 + 32);
    if (*(v15 + 16))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __36__ICNoteContext_persistentContainer__block_invoke_2;
      aBlock[3] = &unk_278197430;
      aBlock[4] = v15;
      v16 = _Block_copy(aBlock);
      v17 = *(*(a1 + 32) + 16);
      v45 = 0;
      v18 = [v17 loadPersistentStore:&v45 storeCreatedHandler:v16];
      v19 = v45;
      v20 = os_log_create("com.apple.notes", "CoreData");
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __36__ICNoteContext_persistentContainer__block_invoke_cold_2();
        }

        v22 = *(a1 + 32);
        v23 = [v22[2] persistentStoreCoordinator];
        v24 = [v23 persistentStores];
        [v22 refreshPersistentStoresByAccountIdFromPersistentStores:v24];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __36__ICNoteContext_persistentContainer__block_invoke_cold_1();
        }

        [*(a1 + 32) setDatabaseOpenError:v19];
        v23 = [v19 domain];
        if ([v23 isEqualToString:*MEMORY[0x277D36110]])
        {
          v25 = [v19 code] == 209;
        }

        else
        {
          v25 = 0;
        }

        [*(a1 + 32) setDatabaseOpenFailedDueToLowDiskSpace:v25];
      }

      v26 = [*(a1 + 32) hasContextOptions:2048];
      v27 = *(*(a1 + 32) + 16);
      if (v26)
      {
        v28 = [v27 newBackgroundContext];
      }

      else
      {
        v28 = [v27 viewContext];
      }

      v29 = v28;
      [*(a1 + 32) setManagedObjectContext:v28];

      if (([*(a1 + 32) hasContextOptions:64] & 1) == 0)
      {
        v38 = v19;
        v39 = v16;
        v40 = v2;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v30 = [*(*(a1 + 32) + 16) persistentStoreDescriptions];
        v31 = [v30 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v42;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v42 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v41 + 1) + 8 * i);
              v36 = *(a1 + 32);
              v37 = [v36[2] persistentStoreCoordinator];
              [v36 startIndexingWithCoreSpotlightDelegateForDescription:v35 coordinator:v37];
            }

            v32 = [v30 countByEnumeratingWithState:&v41 objects:v47 count:16];
          }

          while (v32);
        }

        dispatchMainAfterDelay();
        v16 = v39;
        v2 = v40;
        v19 = v38;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D36110] code:217 userInfo:0];
      [*(a1 + 32) setDatabaseOpenError:v16];
    }
  }
}

void __36__ICNoteContext_persistentContainer__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)persistentStoreCoordinator
{
  v2 = [(ICNoteContext *)self persistentContainer];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

void __41__ICNoteContext_persistentContainerQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.persistent-container", v2);
  v1 = persistentContainerQueue_persistentContainerQueue;
  persistentContainerQueue_persistentContainerQueue = v0;
}

- (void)loadAdditionalPersistentStores
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ICNoteContext *)self accountUtilities];
  v4 = [v3 allICloudACAccounts];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 ic_shouldCreateSeparatePersistentStore] && objc_msgSend(v11, "ic_isNotesEnabled"))
        {
          v12 = [v11 identifier];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__ICNoteContext_loadAdditionalPersistentStores__block_invoke;
    v15[3] = &unk_278194B00;
    v16 = v13;
    v14 = v13;
    [(ICNoteContext *)self createAdditionalPersistentStoresWithAccountIdentifiers:v5 completionBlock:v15];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }
}

+ (ICNoteContext)sharedContext
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277D361D0] isRunningUnitTests];
  v4 = sharedContext;
  if (sharedContext)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACC8] callStackSymbols];
      +[(ICNoteContext *)v7];
    }

    v4 = sharedContext;
  }

  v8 = v4;
  objc_sync_exit(v2);

  return v8;
}

- (void)addOrDeleteLocalAccountIfNecessary
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (BOOL)legacyNotesDisabled
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Notes/.DisableLegacyNotes"];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (void)startSearchIndexerChangeObservingIfNecessary
{
  if ([(ICNoteContext *)self hasContextOptions:0x10000])
  {
    v2 = [MEMORY[0x277D36248] sharedIndexer];
    [v2 setDisabled:0];
    if (([v2 isObservingChanges] & 1) == 0)
    {
      [v2 startObservingChanges];
    }
  }
}

- (id)workerManagedObjectContext
{
  v3 = objc_opt_class();
  v4 = [(ICNoteContext *)self persistentContainer];
  v5 = [v3 workerManagedObjectContextForContainer:v4];

  return v5;
}

+ (void)startSharedContextWithOptions:(unint64_t)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  ++sharedContextReferenceCount;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[ICNoteContext startSharedContextWithOptions:];
  }

  if (!sharedContext)
  {
    +[ICCloudSyncingObjectActivityEvent registerWithICCRCoder];
    +[ICRealtimeCollaborationSelectionState registerWithICCRCoder];
    +[ICTTAudioDocument registerWithICCRCoder];
    +[ICTable registerWithICCRCoder];
    if ((a3 & 0x200000) == 0)
    {
      v6 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        +[ICNoteContext startSharedContextWithOptions:];
      }

      if (([MEMORY[0x277D36260] BOOLForKey:@"EnableXPCStore"] & 1) == 0)
      {
        v7 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          +[ICNoteContext startSharedContextWithOptions:];
        }

        a3 |= 0x200000uLL;
      }
    }

    v8 = [MEMORY[0x277D36200] currentConfiguration];
    v9 = [v8 container];

    if (v9)
    {
      v10 = [MEMORY[0x277D36200] currentConfiguration];
      v11 = [v10 container];
      [ICNoteContext useContainerNamed:v11];
    }

    v12 = [MEMORY[0x277D36200] currentConfiguration];
    v13 = [v12 resetsState];

    if (v13)
    {
      +[ICNoteContext resetAppState];
    }

    v14 = [MEMORY[0x277D36200] currentConfiguration];
    v15 = [v14 resetsContainer];

    if (v15)
    {
      +[ICNoteContext resetAppContainer];
    }

    if ((a3 & 0x400000) == 0)
    {
      v16 = [MEMORY[0x277D36178] sharedInstance];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __47__ICNoteContext_startSharedContextWithOptions___block_invoke;
      v21[3] = &__block_descriptor_40_e5_v8__0l;
      v21[4] = a3;
      [v16 performBlockInPersonaContext:v21 forAccountIdentifier:0];
    }

    v17 = [sharedContext managedObjectContext];
    [v17 performBlockAndWait:&__block_literal_global_34];

    if (([sharedContext hasContextOptions:64] & 1) == 0)
    {
      if ([sharedContext hasContextOptions:1])
      {
        v18 = dispatch_get_global_queue(-2, 0);
        dispatch_async(v18, &__block_literal_global_72);
      }

      else
      {
        [MEMORY[0x277D36260] setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D36298]];
      }
    }

    v19 = [MEMORY[0x277D36200] currentConfiguration];
    v20 = [v19 environment];

    if (v20 == 2)
    {
      +[ICNoteContext enableLocalAccount];
    }
  }

  objc_sync_exit(v4);
}

void __47__ICNoteContext_startSharedContextWithOptions___block_invoke(uint64_t a1)
{
  v1 = [[ICNoteContext alloc] initWithOptions:*(a1 + 32)];
  v2 = sharedContext;
  sharedContext = v1;
}

void __47__ICNoteContext_startSharedContextWithOptions___block_invoke_2()
{
  if (([sharedContext hasContextOptions:64] & 1) == 0 && (objc_msgSend(sharedContext, "hasContextOptions:", 8) & 1) == 0)
  {
    v0 = ICIsSandboxModeEnabled();
    v1 = sharedContext;
    if (v0)
    {

      [v1 updateAccounts];
    }

    else if ([sharedContext hasContextOptions:721457])
    {
      [sharedContext addOrDeleteLocalAccountIfNecessary];
      v2 = [sharedContext managedObjectContext];
      v3 = [v2 hasChanges];

      if (v3)
      {
        v4 = [sharedContext managedObjectContext];
        [v4 ic_save];
      }
    }
  }
}

+ (void)clearSharedContext
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__ICNoteContext_clearSharedContext__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_sync_enter(v1);
  if (!sharedContextReferenceCount)
  {
    v2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      +[ICNoteContext clearSharedContext];
    }

    v3 = sharedContext;
    sharedContext = 0;
  }

  objc_sync_exit(v1);
}

+ (void)useContainerNamed:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277D36230] resetApplicationDocumentsURL];
  v4 = [MEMORY[0x277D36230] applicationDocumentsURL];
  v5 = [v4 URLByAppendingPathComponent:@"Containers"];

  v6 = MEMORY[0x277D36230];
  v7 = [v3 ic_sanitizedFilenameString];
  v8 = [v5 URLByAppendingPathComponent:v7];
  [v6 setApplicationDocumentsURL:v8];

  v9 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Switched to container named '%@'", &v10, 0xCu);
  }
}

+ (void)enableLocalAccount
{
  if ([MEMORY[0x277D36260] BOOLForKey:@"LocalNotes"])
  {
    v2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 0;
      v3 = "Local account is already enabled";
      v4 = &v5;
LABEL_6:
      _os_log_impl(&dword_214D51000, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
    }
  }

  else
  {
    [MEMORY[0x277D36260] setBool:1 forKey:@"LocalNotes"];
    [MEMORY[0x277D36260] setBool:1 forKey:*MEMORY[0x277D362A0]];
    v2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Enabled local account";
      v4 = buf;
      goto LABEL_6;
    }
  }
}

+ (void)resetAppState
{
  +[ICNoteContext enableLocalAccount];
  v2 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    +[ICNoteContext resetAppState];
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setBool:1 forKey:@"bypassWhatsNewScreen"];

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setBool:1 forKey:@"hasShownWelcomeScreen"];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setBool:1 forKey:@"didShowMoveToRecentyDeletedFolderAlert"];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setBool:1 forKey:@"disableConfirmFolderDeleteAlert"];

  v7 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Disabled What's New screen, welcome Screen, recently deleted alert, and delete folder alert", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setBool:0 forKey:@"alexandria"];

  v9 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Reset user interface state", v10, 2u);
  }
}

+ (void)resetAppContainer
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [MEMORY[0x277D36230] applicationDocumentsURL];
  v4 = [v2 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_103];

  v5 = [v4 nextObject];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  v8 = 0;
  *&v6 = 138412546;
  v14 = v6;
  do
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = v8;
    [v10 removeItemAtURL:v7 error:&v15];
    v8 = v15;

    if (v8)
    {
      v11 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = v14;
        v17 = v7;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "Cannot remove container item {url: %@, error: %@}", buf, 0x16u);
      }
    }

    v12 = [v4 nextObject];

    v7 = v12;
  }

  while (v12);
  if (!v8)
  {
LABEL_9:
    v13 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Successfully reset container", buf, 2u);
    }

    v8 = 0;
  }
}

uint64_t __34__ICNoteContext_resetAppContainer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __34__ICNoteContext_resetAppContainer__block_invoke_cold_1();
  }

  return 1;
}

- (ICNoteContext)initWithOptions:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = ICNoteContext;
  v4 = [(ICNoteContext *)&v35 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  [(ICNoteContext *)v4 setContextOptions:a3];
  if ([(ICNoteContext *)v5 hasAnyContextOptions:3])
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 registerDefaults:&unk_282748158];
  }

  if ([(ICNoteContext *)v5 hasContextOptions:0x40000])
  {
    v7 = [MEMORY[0x277D36230] applicationDataContainerURL];
    if (!v7)
    {
      v7 = [MEMORY[0x277D36230] applicationDocumentsURL];
    }

    v8 = [v7 URLByAppendingPathComponent:@"tmp" isDirectory:1];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v34 = 0;
      v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v34];
      v11 = v34;

      if ((v10 & 1) == 0)
      {
        v12 = os_log_create("com.apple.notes", "Application");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ICNoteContext initWithOptions:];
        }
      }

      if (!v7)
      {
LABEL_13:
        if (!v8)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_23:
        v18 = [v8 path];
        v19 = setenv("TMPDIR", [v18 fileSystemRepresentation], 1);

        v20 = os_log_create("com.apple.notes", "Application");
        v21 = v20;
        if (v19)
        {
          v22 = v20;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [ICNoteContext initWithOptions:];
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v37 = v8;
          _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_INFO, "setenv TMPDIR %@", buf, 0xCu);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v13 = [v7 path];
    v14 = setenv("HOME", [v13 fileSystemRepresentation], 1);

    v15 = os_log_create("com.apple.notes", "Application");
    v16 = v15;
    if (v14)
    {
      v17 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ICNoteContext initWithOptions:];
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "setenv HOME %@", buf, 0xCu);
    }

    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_31:
  v23 = [(ICNoteContext *)v5 hasContextOptions:64];
  [MEMORY[0x277D36230] setIsReadOnlyPersistentStore:v23];
  v24 = v5;
  dispatchMainAfterDelay();
  if (![(ICNoteContext *)v24 hasContextOptions:0x2000])
  {
    v25 = [MEMORY[0x277D36178] sharedInstance];
    [(ICNoteContext *)v24 setAccountUtilities:v25];
  }

  [(ICNoteContext *)v24 setupCrossProcessChangeCoordinator];
  [(ICNoteContext *)v24 setPersistentStoresByAccountId:0];
  [(ICNoteContext *)v24 loadAdditionalPersistentStores];
  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 addObserver:v24 selector:sel_accountsDidChange_ name:@"ICAccountsDidChangeNotification" object:0];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:v24 selector:sel_managedObjectContextUpdaterDidMerge_ name:*MEMORY[0x277D36128] object:0];

  if ([(ICNoteContext *)v24 hasContextOptions:1])
  {
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = *MEMORY[0x277CBE1B0];
    v30 = [(ICNoteContext *)v24 persistentStoreCoordinator];
    [v28 addObserver:v24 selector:sel_managedObjectContextDidSave_ name:v29 object:v30];

    v33 = v24;
    dispatchMainAfterDelay();
    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v33 selector:sel_cloudContextFetchRecordChangeOperationDidFinish_ name:@"ICCloudContextFetchRecordChangeOperationDidFinishNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(ICNoteContext *)self trashDeletionTimer];
  [v3 invalidate];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v5.receiver = self;
  v5.super_class = ICNoteContext;
  [(ICNoteContext *)&v5 dealloc];
}

- (void)applicationWillTerminate
{
  +[ICCloudSyncingObject resetAllDeletedByThisDeviceProperties];
  v3 = [(ICNoteContext *)self managedObjectContext];
  [(ICNoteContext *)self purgeDeletedObjectsInManagedObjectContext:v3];

  v4 = [(ICNoteContext *)self managedObjectContext];
  [v4 ic_save];
}

- (void)purgeDeletedObjectsInManagedObjectContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICNoteContext *)self hasContextOptions:64])
  {
    v5 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICNoteContext purgeDeletedObjectsInManagedObjectContext:];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"markedForDeletion == YES"];
    v14 = v4;
    [ICCloudSyncingObject ic_objectsMatchingPredicate:v5 context:v4];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v18 = 0u;
    v6 = [v13 copy];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 shouldBeDeletedFromLocalDatabase] && (objc_msgSend(v11, "isDeleted") & 1) == 0)
          {
            v12 = os_log_create("com.apple.notes", "Delete");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              [(ICNoteContext *)v19 purgeDeletedObjectsInManagedObjectContext:v11];
            }

            [v11 deleteFromLocalDatabase];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v4 = v14;
  }
}

- (void)setupTrashDeletionTimer
{
  if (setupTrashDeletionTimer_onceToken != -1)
  {
    [ICNoteContext setupTrashDeletionTimer];
  }

  v3 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v3 doubleForKey:@"TrashCleanupInterval"];
  v5 = v4;

  v6 = [(ICNoteContext *)self trashDeletionTimer];
  [v6 invalidate];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277CBEBB8];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __40__ICNoteContext_setupTrashDeletionTimer__block_invoke_140;
  v12 = &unk_278196780;
  objc_copyWeak(&v13, &location);
  v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v9 block:v5];
  [(ICNoteContext *)self setTrashDeletionTimer:v8, v9, v10, v11, v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __40__ICNoteContext_setupTrashDeletionTimer__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v2 = @"TrashCleanupInterval";
  v3[0] = &unk_282747BE0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

void __40__ICNoteContext_setupTrashDeletionTimer__block_invoke_140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICNoteContext sharedContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICNoteContext_setupTrashDeletionTimer__block_invoke_2;
  v5[3] = &unk_278197398;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 performSnapshotBackgroundTask:v5];

  objc_destroyWeak(&v6);
}

void __40__ICNoteContext_setupTrashDeletionTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [ICNoteContext performSelector:sel_beginBackgroundTaskNamed_ withObject:@"Mark Trash Notes For Deletion"];
    }

    else
    {
      v4 = [MEMORY[0x277CCAE60] value:MEMORY[0x277D767B0] withObjCType:"Q"];
    }

    v5 = v4;
    [ICNoteContext markOldTrashedNotesForDeletionInContext:v6];
    [v6 ic_save];
    if (objc_opt_respondsToSelector())
    {
      [ICNoteContext performSelector:sel_endBackgroundTask_ withObject:v5];
    }
  }
}

+ (void)markOldTrashedNotesForDeletionInContext:(id)a3
{
  v37[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (markOldTrashedNotesForDeletionInContext__onceToken != -1)
  {
    +[ICNoteContext markOldTrashedNotesForDeletionInContext:];
  }

  v4 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v4 doubleForKey:@"TrashedNoteLifetime"];
  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v6];
  v8 = os_log_create("com.apple.notes", "Delete");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[ICNoteContext markOldTrashedNotesForDeletionInContext:];
  }

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.folderType == %d", 1];
  v37[0] = v9;
  v26 = v7;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folderModificationDate < %@", v7];
  v37[1] = v10;
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"markedForDeletion == NO"];
  v37[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

  v25 = v12;
  [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];
  v24 = v13 = 0x278192000uLL;
  v27 = v3;
  [ICNote notesMatchingPredicate:"notesMatchingPredicate:context:" context:?];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v31 = 0u;
  v14 = [v23 copy];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = os_log_create("com.apple.notes", "Delete");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v19 identifier];
          v22 = [v19 folderModificationDate];
          *buf = 138412546;
          v33 = v21;
          v34 = 2112;
          v35 = v22;
          _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Marking expired trashed note (%@) as deleted. Trashed %@", buf, 0x16u);

          v13 = 0x278192000;
        }

        [*(v13 + 3584) deleteNote:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }
}

void __57__ICNoteContext_markOldTrashedNotesForDeletionInContext___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v2 = @"TrashedNoteLifetime";
  v3[0] = &unk_282747BF8;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

- (BOOL)save:(id *)a3
{
  if ([(ICNoteContext *)self hasContextOptions:64])
  {
    v5 = 1;
  }

  else
  {
    if (ICInternalSettingsIsTracingEnabled())
    {
      kdebug_trace();
    }

    [(ICNoteContext *)self setSaving:1];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__29;
    v13 = __Block_byref_object_dispose__29;
    v14 = 0;
    v6 = [(ICNoteContext *)self managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __22__ICNoteContext_save___block_invoke;
    v8[3] = &unk_2781973C0;
    v8[4] = self;
    v8[5] = &v15;
    v8[6] = &v9;
    [v6 performBlockAndWait:v8];

    if (a3)
    {
      *a3 = v10[5];
    }

    [(ICNoteContext *)self setSaving:0];
    if (ICInternalSettingsIsTracingEnabled())
    {
      kdebug_trace();
    }

    v5 = *(v16 + 24);
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
  }

  return v5 & 1;
}

void __22__ICNoteContext_save___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __22__ICNoteContext_save___block_invoke_cold_1();
    }

    v5 = [*(a1 + 32) managedObjectContext];
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v5 save:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __22__ICNoteContext_save___block_invoke_cold_2();
      }
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && [*(a1 + 32) hasContextOptions:0x20000])
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) recoverFromSaveError];
      v9 = *(*(*(a1 + 40) + 8) + 24);
      v10 = os_log_create("com.apple.notes", "CoreData");
      v11 = v10;
      if (v9 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "Successfully recovered from save error", v12, 2u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __22__ICNoteContext_save___block_invoke_cold_3();
      }
    }
  }
}

- (BOOL)save
{
  if ([(ICNoteContext *)self delaySaving])
  {
    v3 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteContext save];
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
    [(ICNoteContext *)self performSelector:sel_save withObject:0 afterDelay:10.0];
    return 1;
  }

  else
  {

    return [(ICNoteContext *)self saveImmediately];
  }
}

- (BOOL)recoverFromSaveError
{
  v3 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteContext recoverFromSaveError];
  }

  [(ICNoteContext *)self cleanupAdditionalPersistentStores];
  v4 = [(ICNoteContext *)self managedObjectContext];
  [v4 refreshAllObjects];

  v5 = [(ICNoteContext *)self managedObjectContext];
  [v5 rollback];

  v6 = [(ICNoteContext *)self managedObjectContext];
  v10 = 0;
  v7 = [v6 save:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    abort();
  }

  return 1;
}

- (id)predicateForSearchableAttachments
{
  v2 = [(ICNoteContext *)self managedObjectContext];
  v3 = [ICAttachment predicateForSearchableAttachmentsInContext:v2];

  return v3;
}

- (void)refreshAll
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__ICNoteContext_refreshAll__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 registeredObjects];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __27__ICNoteContext_refreshAll__block_invoke_cold_1(v15, v8);
        }

        v10 = [*(a1 + 32) managedObjectContext];
        [v10 refreshObject:v8 mergeChanges:*(a1 + 40)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }
}

+ (BOOL)updateSharedStateFile:(id)a3 toState:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x277CBEA90] data];
    v14 = 0;
    [v8 writeToFile:v7 options:0 error:&v14];
    v9 = v14;

    if (!v9 || [v9 code] != 516)
    {
      goto LABEL_8;
    }

LABEL_7:

    v9 = 0;
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  [v10 removeItemAtPath:v7 error:&v13];
  v9 = v13;

  if (v9 && [v9 code] == 4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a5)
  {
    v11 = v9;
    *a5 = v9;
  }

  return v9 == 0;
}

+ (void)setLegacyNotesDisabled:(BOOL)a3
{
  v3 = a3;
  if (+[ICNoteContext legacyNotesDisabled]!= a3)
  {
    v5 = CPSharedResourcesDirectory();
    v6 = [v5 stringByAppendingString:@"/Library/Notes/.DisableLegacyNotes"];
    v10 = 0;
    v7 = [a1 updateSharedStateFile:v6 toState:v3 error:&v10];
    v8 = v10;
    if ((v7 & 1) == 0)
    {
      v9 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ICNoteContext setLegacyNotesDisabled:];
      }
    }
  }
}

- (void)managedObjectContextDidSave:(id)a3
{
  v4 = [a3 object];
  if (self->_persistentContainer)
  {
    v5 = [(ICNoteContext *)self managedObjectContext];

    if (v4 != v5)
    {
      v6 = [(ICNoteContext *)self managedObjectContext];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __45__ICNoteContext_managedObjectContextDidSave___block_invoke;
      v7[3] = &unk_278194B00;
      v8 = v4;
      [v6 performBlock:v7];
    }
  }
}

void __45__ICNoteContext_managedObjectContextDidSave___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICNoteContextDidMergeChangesFromContextDidSaveNotification" object:*(a1 + 32)];
}

- (void)accountsDidChange:(id)a3
{
  [ICNoteContext setLegacyNotesDisabled:0];
  v4 = [(ICNoteContext *)self accountUtilities];
  [v4 invalidateCache];

  if (+[ICAccount clearAccountForAppleCloudKitTable])
  {
    v5 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteContext accountsDidChange:];
    }
  }

  [(ICNoteContext *)self loadAdditionalPersistentStores];
  if (ICIsSandboxModeEnabled())
  {
    [(ICNoteContext *)self updateAccounts];
  }

  else if ([(ICNoteContext *)self hasContextOptions:721457])
  {
    [(ICNoteContext *)self addOrDeleteLocalAccountIfNecessary];
    v6 = [(ICNoteContext *)self managedObjectContext];
    v7 = [v6 hasChanges];

    if (v7)
    {
      v8 = [(ICNoteContext *)self managedObjectContext];
      [v8 ic_save];
    }
  }
}

- (void)updateAccounts
{
  v64 = *MEMORY[0x277D85DE8];
  if (ICIsSandboxModeEnabled() && ![(ICNoteContext *)self hasContextOptions:64]&& ![(ICNoteContext *)self hasContextOptions:0x2000])
  {
    v3 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Updating accounts", buf, 2u);
    }

    *buf = 0;
    v53 = buf;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v4 = [(ICNoteContext *)self managedObjectContext];
    v5 = [ICAccount accountsWithAccountType:1 context:v4];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v48 objects:v63 count:16];
    if (v7)
    {
      v9 = *v49;
      *&v8 = 138412802;
      v38 = v8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v48 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [(ICNoteContext *)self accountUtilities];
          v14 = [v13 accountStore];
          v15 = [v14 accountWithIdentifier:v12];

          v16 = [v15 ic_isNotesEnabled];
          v17 = v16;
          if (v15)
          {
            v18 = v16;
          }

          else
          {
            v18 = 0;
          }

          if ((v18 & 1) == 0)
          {
            v19 = os_log_create("com.apple.notes", "Accounts");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *v57 = v38;
              v58 = v12;
              v59 = 1024;
              v60 = v17;
              v61 = 1024;
              v62 = v15 != 0;
              _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Removing account ID %@, isNotesEnabled=%d, iCloudACAccount=%d", v57, 0x18u);
            }

            v53[24] = 1;
            [ICAccount deleteAccount:v11];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v48 objects:v63 count:16];
      }

      while (v7);
    }

    v20 = objc_opt_new();
    v21 = [(ICNoteContext *)self accountUtilities];
    v22 = [v21 allICloudACAccounts];

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v25)
    {
      v26 = *v45;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v44 + 1) + 8 * j);
          if ([v28 ic_shouldCreateSeparatePersistentStore])
          {
            v29 = [v28 identifier];
            [v23 addObject:v29];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v25);
    }

    if ([v23 count])
    {
      v30 = dispatch_group_create();
      dispatch_group_enter(v30);
      v31 = +[ICNoteContext sharedContext];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __31__ICNoteContext_updateAccounts__block_invoke;
      v42[3] = &unk_278194B00;
      v32 = v30;
      v43 = v32;
      [v31 createAdditionalPersistentStoresWithAccountIdentifiers:v23 completionBlock:v42];

      dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
    }

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __31__ICNoteContext_updateAccounts__block_invoke_2;
    v39[3] = &unk_2781973E8;
    v39[4] = self;
    v33 = v20;
    v40 = v33;
    v41 = buf;
    [v24 enumerateObjectsUsingBlock:v39];
    if (v53[24] == 1)
    {
      v34 = +[ICCloudContext sharedContext];
      [v34 cancelEverythingWithCompletionHandler:&__block_literal_global_188];

      v35 = [MEMORY[0x277CCAB98] defaultCenter];
      [v35 postNotificationName:*MEMORY[0x277D36140] object:0];

      [v33 enumerateObjectsUsingBlock:&__block_literal_global_192_0];
      v36 = [MEMORY[0x277CCAB98] defaultCenter];
      [v36 postNotificationName:*MEMORY[0x277D36138] object:0];

      v37 = [MEMORY[0x277CCAB98] defaultCenter];
      [v37 postNotificationName:@"ICAccountsDidChangeNotification" object:0];
    }

    [(ICNoteContext *)self addOrDeleteLocalAccountIfNecessary];
    [(ICNoteContext *)self save];

    _Block_object_dispose(buf, 8);
  }
}

void __31__ICNoteContext_updateAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 ic_isNotesEnabled];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = [ICAccount accountWithIdentifier:v4 context:v6];

  if (v5)
  {
    if (!v7 && v4 != 0)
    {
      v9 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __31__ICNoteContext_updateAccounts__block_invoke_2_cold_1();
      }

      v10 = [*(a1 + 32) managedObjectContext];
      v7 = [ICAccount newAccountWithIdentifier:v4 type:1 context:v10];

      [v7 setNeedsToBeFetchedFromCloud:1];
      v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D36098]];
      [v7 setDidChooseToMigrate:{objc_msgSend(v11, "BOOLValue")}];

      v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277D360A0]];
      [v7 setDidFinishMigration:{objc_msgSend(v12, "BOOLValue")}];

      v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D360A8]];
      [v7 setDidMigrateOnMac:{objc_msgSend(v13, "BOOLValue")}];

      [*(a1 + 40) addObject:v7];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  if (v7)
  {
    v14 = [v3 accountDescription];

    if (v14)
    {
      v15 = [v3 accountDescription];
      [v7 setName:v15];
    }
  }
}

void __31__ICNoteContext_updateAccounts__block_invoke_186()
{
  v0 = +[ICCloudContext sharedContext];
  [v0 updateCloudContextState];
}

void __31__ICNoteContext_updateAccounts__block_invoke_2_189(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 didFinishMigration])
  {
    v2 = [ICDeviceMigrationState currentDeviceMigrationStateForAccount:v4];
    [v2 setState:7];
    v3 = [MEMORY[0x277CBEAA8] date];
    [v2 setStateModificationDate:v3];
  }
}

- (id)primaryICloudACAccount
{
  v2 = [(ICNoteContext *)self accountUtilities];
  v3 = [v2 primaryICloudACAccount];

  return v3;
}

- (id)allICloudACAccounts
{
  v2 = [(ICNoteContext *)self accountUtilities];
  v3 = [v2 allICloudACAccounts];

  return v3;
}

- (void)ensureModernAccountExistsInContext:(id)a3
{
  v4 = a3;
  if (![ICAccount hasModernAccountInContext:v4])
  {
    v5 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteContext ensureModernAccountExistsInContext:];
    }

    [(ICNoteContext *)self setShouldEnsureLocalAccount:1];
    [(ICNoteContext *)self addOrDeleteLocalAccountIfNecessary];
    if ([ICAccount hasModernAccountInContext:v4])
    {
      v6 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Successfully created local account.", v7, 2u);
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteContext ensureModernAccountExistsInContext:]" simulateCrash:1 showAlert:0 format:@"Unable to create local account."];
    }
  }
}

- (BOOL)noteIsVisible:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(ICNoteContext *)self predicateForVisibleNotes];
  v6 = [v5 evaluateWithObject:v4];

  return v6;
}

- (NSArray)visibleNotes
{
  v2 = [(ICNoteContext *)self managedObjectContext];
  v3 = [ICNote visibleNotesInContext:v2];

  return v3;
}

- (unint64_t)visibleNotesCount
{
  v2 = [(ICNoteContext *)self managedObjectContext];
  v3 = [ICNote countOfVisibleNotesInContext:v2];

  return v3;
}

- (id)predicateForVisibleNotes
{
  v2 = [(ICNoteContext *)self managedObjectContext];
  v3 = [ICNote predicateForVisibleNotesInContext:v2];

  return v3;
}

- (id)predicateForSearchableNotes
{
  v2 = [(ICNoteContext *)self managedObjectContext];
  v3 = [ICNote predicateForSearchableNotesInContext:v2];

  return v3;
}

- (id)newFetchedResultsControllerForAllAccounts
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"ICAccount"];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [(ICNoteContext *)self fetchedResultsControllerForFetchRequest:v3 sectionNameKeyPath:0];

  return v6;
}

- (id)fetchedResultsControllerForFetchRequest:(id)a3 sectionNameKeyPath:(id)a4
{
  v6 = MEMORY[0x277CBE430];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(ICNoteContext *)self managedObjectContext];
  v11 = [v9 initWithFetchRequest:v8 managedObjectContext:v10 sectionNameKeyPath:v7 cacheName:0];

  v15 = 0;
  LOBYTE(v6) = [v11 performFetch:&v15];
  v12 = v15;
  v13 = v12;
  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_ErrorProblemPe.isa, v12);
  }

  return v11;
}

+ (id)initializeSearchIndexerDataSourceWithPersistentContainer:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ICNoteContext_initializeSearchIndexerDataSourceWithPersistentContainer___block_invoke;
  block[3] = &unk_278194B00;
  v10 = v3;
  v4 = initializeSearchIndexerDataSourceWithPersistentContainer__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&initializeSearchIndexerDataSourceWithPersistentContainer__onceToken, block);
  }

  v6 = initializeSearchIndexerDataSourceWithPersistentContainer__sDataSource;
  v7 = initializeSearchIndexerDataSourceWithPersistentContainer__sDataSource;

  return v6;
}

void __74__ICNoteContext_initializeSearchIndexerDataSourceWithPersistentContainer___block_invoke(uint64_t a1)
{
  v1 = [[ICModernSearchIndexerDataSource alloc] initWithPersistentContainer:*(a1 + 32)];
  v2 = initializeSearchIndexerDataSourceWithPersistentContainer__sDataSource;
  initializeSearchIndexerDataSourceWithPersistentContainer__sDataSource = v1;

  v3 = [MEMORY[0x277D36248] sharedIndexer];
  [v3 addDataSource:initializeSearchIndexerDataSourceWithPersistentContainer__sDataSource];
}

- (void)clearPersistentContainer
{
  v3 = [(ICNoteContext *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICNoteContext_clearPersistentContainer__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __41__ICNoteContext_clearPersistentContainer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(a1 + 32) setPersistentStoresByAccountId:0];
  [*(a1 + 32) setManagedObjectContext:0];
  [*(a1 + 32) setCrossProcessChangeCoordinator:0];
  v4 = *(a1 + 32);

  return [v4 setContextUpdater:0];
}

void __36__ICNoteContext_persistentContainer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ICNoteContext_persistentContainer__block_invoke_3;
  v6[3] = &unk_278194AD8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 performBlock:v6];
}

void __36__ICNoteContext_persistentContainer__block_invoke_3(uint64_t a1)
{
  v2 = [ICAccount localAccountInContext:*(a1 + 32)];
  if (!v2)
  {
    if ([*(a1 + 40) hasContextOptions:64])
    {
      v2 = 0;
    }

    else
    {
      v3 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Creating local account.", v4, 2u);
      }

      v2 = [ICAccount newLocalAccountInContext:*(a1 + 32)];
      if (v2)
      {
        [*(a1 + 32) ic_save];
      }
    }
  }
}

void __36__ICNoteContext_persistentContainer__block_invoke_261(uint64_t a1)
{
  v2 = objc_opt_class();
  v4 = [*(a1 + 32) persistentContainer];
  v3 = [v2 initializeSearchIndexerDataSourceWithPersistentContainer:v4];
}

void __36__ICNoteContext_persistentContainer__block_invoke_2_263(uint64_t a1)
{
  v2 = [*(a1 + 32) crossProcessChangeCoordinator];

  if (!v2)
  {
    v3 = *(a1 + 32);

    [v3 setupCrossProcessChangeCoordinator];
  }
}

- (void)startIndexingWithCoreSpotlightDelegateForDescription:(id)a3 coordinator:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v6 = [objc_alloc(MEMORY[0x277D361C0]) initForStoreWithDescription:v8 coordinator:v5 indexingPriority:2];
    if (v6)
    {
      v7 = [MEMORY[0x277D361A8] sharedReindexer];
      [v7 registerCoreDataCoreSpotlightDelegate:v6];

      [v6 startSpotlightIndexing];
    }
  }
}

- (void)createAdditionalPersistentStoresWithAccountIdentifiers:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteContext *)self persistentContainer];
  v9 = [(ICNoteContext *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_completionBlock___block_invoke;
  block[3] = &unk_278194DC0;
  block[4] = self;
  v17 = v6;
  v10 = v8;
  v18 = v10;
  v11 = v6;
  dispatch_sync(v9, block);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_completionBlock___block_invoke_2;
  v13[3] = &unk_278194AD8;
  v14 = v10;
  v15 = self;
  v12 = v10;
  dispatch_sync(v9, v13);
  if (v7)
  {
    v7[2](v7);
  }
}

void __88__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 persistentStores];

  [*(a1 + 40) refreshPersistentStoresByAccountIdFromPersistentStores:v3];
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = objc_opt_new();
  v5 = [(ICNoteContext *)self defaultPersistentStoreFromPersistentStores:v4];
  v36 = v4;
  v33 = [(ICNoteContext *)self inMemoryPersistentStoreFromPersistentStores:v4];
  v35 = self;
  v6 = [(ICNoteContext *)self accountUtilities];
  v7 = [v6 allICloudACAccounts];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 identifier];
        if ([v13 ic_isNotesEnabled])
        {
          if ([v13 ic_isPrimaryAppleAccount])
          {
            v15 = os_log_create("com.apple.notes", "CoreData");
            v16 = v15;
            if (v5)
            {
              v17 = v15;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v24 = [v5 URL];
                *buf = 138412546;
                v45 = v14;
                v46 = 2112;
                v47 = v24;
                _os_log_debug_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEBUG, "Found loaded persistent store for primary account %@: %@", buf, 0x16u);
              }

              [v37 setObject:v5 forKeyedSubscript:v14];
            }

            else
            {
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v45 = v14;
                _os_log_debug_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEBUG, "Didn't find a loaded persistent store for primary account %@", buf, 0xCu);
              }
            }
          }

          else if ([v13 ic_shouldCreateSeparatePersistentStore])
          {
            v18 = [(ICNoteContext *)v35 storeFilenameForAccountIdentifier:v14];
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __72__ICNoteContext_refreshPersistentStoresByAccountIdFromPersistentStores___block_invoke;
            v38[3] = &unk_278197458;
            v39 = v18;
            v19 = v18;
            v20 = [v36 ic_objectPassingTest:v38];
            v21 = os_log_create("com.apple.notes", "CoreData");
            v22 = v21;
            if (v20)
            {
              v23 = v21;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v34 = [v20 URL];
                *buf = 138412546;
                v45 = v14;
                v46 = 2112;
                v47 = v34;
                _os_log_debug_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEBUG, "Found loaded persistent store for account %@: %@", buf, 0x16u);
              }

              [v37 setObject:v20 forKeyedSubscript:v14];
            }

            else
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v45 = v14;
                _os_log_debug_impl(&dword_214D51000, v22, OS_LOG_TYPE_DEBUG, "Didn't find a loaded persistent store for account %@", buf, 0xCu);
              }
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  v25 = os_log_create("com.apple.notes", "CoreData");
  v26 = v25;
  if (v5)
  {
    v27 = v25;
    v28 = v33;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteContext refreshPersistentStoresByAccountIdFromPersistentStores:v5];
    }

    [v37 setObject:v5 forKeyedSubscript:@"LocalAccount"];
  }

  else
  {
    v28 = v33;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ICNoteContext refreshPersistentStoresByAccountIdFromPersistentStores:];
    }
  }

  v29 = os_log_create("com.apple.notes", "CoreData");
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
  if (v28)
  {
    if (v30)
    {
      [ICNoteContext refreshPersistentStoresByAccountIdFromPersistentStores:];
    }

    [v37 setObject:v28 forKeyedSubscript:@"InMemoryAccount"];
  }

  else
  {
    if (v30)
    {
      [ICNoteContext refreshPersistentStoresByAccountIdFromPersistentStores:];
    }
  }

  v31 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteContext refreshPersistentStoresByAccountIdFromPersistentStores:];
  }

  v32 = [v37 copy];
  [(ICNoteContext *)v35 setPersistentStoresByAccountId:v32];
}

uint64_t __72__ICNoteContext_refreshPersistentStoresByAccountIdFromPersistentStores___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = [v3 absoluteString];
  v5 = [v4 containsString:*(a1 + 32)];

  return v5;
}

- (id)defaultPersistentStoreFromPersistentStores:(id)a3
{
  v3 = MEMORY[0x277D36230];
  v4 = a3;
  v5 = [v3 persistentStoreURL];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ICNoteContext_defaultPersistentStoreFromPersistentStores___block_invoke;
  v9[3] = &unk_278197458;
  v10 = v5;
  v6 = v5;
  v7 = [v4 ic_objectPassingTest:v9];

  return v7;
}

uint64_t __60__ICNoteContext_defaultPersistentStoreFromPersistentStores___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

BOOL __61__ICNoteContext_inMemoryPersistentStoreFromPersistentStores___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = v2 == *MEMORY[0x277CBE170];

  return v3;
}

- (void)createAdditionalPersistentStoresWithAccountIdentifiers:(id)a3 persistentContainer:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke;
  v14[3] = &unk_2781974C8;
  v9 = v6;
  v15 = v9;
  v16 = v8;
  v10 = v7;
  v17 = v10;
  v11 = [v10 performBlockWithDatabaseOpenLock:v14];
  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v11 userInfo];
      [(ICNoteContext *)v11 createAdditionalPersistentStoresWithAccountIdentifiers:v13 persistentContainer:buf, v12];
    }
  }

  objc_sync_exit(v8);
}

id __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke(id *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__29;
  v53 = __Block_byref_object_dispose__29;
  v54 = 0;
  if ([a1[4] count])
  {
    v28 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = a1[4];
    v2 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v2)
    {
      v34 = *v46;
      v29 = *MEMORY[0x277D360F0];
      v27 = *MEMORY[0x277CBE218];
      *&v3 = 138412546;
      v26 = v3;
      do
      {
        v35 = v2;
        for (i = 0; i != v35; ++i)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v45 + 1) + 8 * i);
          v5 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v38;
            _os_log_debug_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEBUG, "Creating persistent store for %@", buf, 0xCu);
          }

          v6 = [a1[5] persistentStoresByAccountId];
          v7 = [v6 objectForKeyedSubscript:v38];

          if (v7)
          {
            v37 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v38;
              _os_log_debug_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEBUG, "Already created persistent store for %@", buf, 0xCu);
            }
          }

          else
          {
            v8 = [MEMORY[0x277D36178] sharedInstance];
            v37 = [v8 applicationDocumentsURLForAccountIdentifier:v38];

            v36 = [v37 URLByAppendingPathComponent:v29 isDirectory:1];
            v31 = [a1[5] storeFilenameForAccountIdentifier:v38];
            v9 = [v36 URLByAppendingPathComponent:? isDirectory:?];
            v33 = v9;
            if (v9)
            {
              [v28 setObject:v9 forKeyedSubscript:v38];
              if (([v36 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), v44 = 0, objc_msgSend(v10, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v36, 1, 0, &v44), log = v44, v10, !log))
              {
                log = 0;
              }

              else
              {
                v11 = os_log_create("com.apple.notes", "CoreData");
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  *buf = v26;
                  v57 = v36;
                  v58 = 2112;
                  v59 = log;
                  _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "unable to create directory for secondary database. URL: %@ error: %@", buf, 0x16u);
                }
              }

              v12 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:{v9, v26}];
              [v12 setShouldAddStoreAsynchronously:0];
              if (([a1[5] hasContextOptions:721457] & 1) == 0)
              {
                [v12 setOption:&unk_282747C10 forKey:v27];
              }

              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v13 = [a1[6] storeOptions];
              v14 = [v13 allKeys];

              v15 = [v14 countByEnumeratingWithState:&v40 objects:v55 count:16];
              if (v15)
              {
                v16 = *v41;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v41 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v40 + 1) + 8 * j);
                    v19 = [a1[6] storeOptions];
                    v20 = [v19 objectForKeyedSubscript:v18];
                    [v12 setOption:v20 forKey:v18];
                  }

                  v15 = [v14 countByEnumeratingWithState:&v40 objects:v55 count:16];
                }

                while (v15);
              }

              v21 = [a1[6] persistentStoreCoordinator];
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274;
              v39[3] = &unk_2781974A0;
              v39[5] = &v49;
              v39[4] = v38;
              [v21 addPersistentStoreWithDescription:v12 completionHandler:v39];

              if (([a1[5] hasContextOptions:64] & 1) == 0)
              {
                v22 = a1[5];
                v23 = [a1[6] persistentStoreCoordinator];
                [v22 startIndexingWithCoreSpotlightDelegateForDescription:v12 coordinator:v23];
              }
            }

            else
            {
              log = os_log_create("com.apple.notes", "CoreData");
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v38;
                _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Couldn't obtain a store URL to add a persistent store for %@", buf, 0xCu);
              }
            }
          }
        }

        v2 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v2);
    }

    v24 = v50[5];
  }

  else
  {
    v28 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_cold_1();
    }

    v24 = 0;
  }

  _Block_object_dispose(&v49, 8);

  return v24;
}

void __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "CoreData");
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274_cold_2(a1, v5);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274_cold_1();
  }

  v9 = *(*(a1 + 40) + 8);
  if (!*(v9 + 40))
  {
    v10 = v6;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
LABEL_9:
  }
}

- (void)cleanupAdditionalPersistentStores
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) storeFilenameForAccountIdentifier:a2];
  v6 = [*(a1 + 40) absoluteString];
  v7 = [v6 containsString:v8];

  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke_278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  [v4 removePersistentStore:v3 error:&v9];
  v5 = v9;
  v6 = os_log_create("com.apple.notes", "CoreData");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke_278_cold_1();
    }
  }

  else
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke_278_cold_2(v3);
    }
  }
}

+ (id)performBackgroundTaskSerialQueue
{
  if (performBackgroundTaskSerialQueue_onceToken != -1)
  {
    +[ICNoteContext performBackgroundTaskSerialQueue];
  }

  v3 = performBackgroundTaskSerialQueue_queue;

  return v3;
}

void __49__ICNoteContext_performBackgroundTaskSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.noteContextBgTaskQueue", v2);
  v1 = performBackgroundTaskSerialQueue_queue;
  performBackgroundTaskSerialQueue_queue = v0;
}

+ (id)workerManagedObjectContextForContainer:(id)a3
{
  v3 = [a3 newBackgroundContext];
  [v3 setAutomaticallyMergesChangesFromParent:1];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return v3;
}

- (void)performBackgroundTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() performBackgroundTaskSerialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__ICNoteContext_performBackgroundTask___block_invoke;
    v6[3] = &unk_2781957B0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __39__ICNoteContext_performBackgroundTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerManagedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICNoteContext_performBackgroundTask___block_invoke_2;
  v5[3] = &unk_278195F50;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlockAndWait:v5];
}

+ (id)snapshotManagedObjectContextForContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 newBackgroundContext];
  [v4 setAutomaticallyMergesChangesFromParent:0];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__ICNoteContext_snapshotManagedObjectContextForContainer___block_invoke;
  v10[3] = &unk_278194D68;
  v5 = v4;
  v11 = v5;
  v12 = &v13;
  [v5 performBlockAndWait:v10];
  if (v14[5])
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ICNoteContext snapshotManagedObjectContextForContainer:];
    }
  }

  v7 = v11;
  v8 = v5;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __58__ICNoteContext_snapshotManagedObjectContextForContainer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 setQueryGenerationFromToken:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (id)snapshotManagedObjectContext
{
  v3 = objc_opt_class();
  v4 = [(ICNoteContext *)self persistentContainer];
  v5 = [v3 snapshotManagedObjectContextForContainer:v4];

  return v5;
}

- (void)performSnapshotBackgroundTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() performBackgroundTaskSerialQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__ICNoteContext_performSnapshotBackgroundTask___block_invoke;
    v6[3] = &unk_2781957B0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __47__ICNoteContext_performSnapshotBackgroundTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotManagedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ICNoteContext_performSnapshotBackgroundTask___block_invoke_2;
  v5[3] = &unk_278195F50;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlockAndWait:v5];
}

- (id)persistentStoreForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContext *)self persistentStoresByAccountId];

  if (v5)
  {
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [(ICNoteContext *)self persistentStoreCoordinator];
    v7 = [v6 persistentStores];
    [(ICNoteContext *)self refreshPersistentStoresByAccountIdFromPersistentStores:v7];

    if (!v4)
    {
LABEL_8:
      v11 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ICNoteContext persistentStoreForAccountID:];
      }

      v10 = [(ICNoteContext *)self persistentStoreCoordinator];
      v12 = [v10 persistentStores];
      v9 = [(ICNoteContext *)self defaultPersistentStoreFromPersistentStores:v12];

      goto LABEL_11;
    }
  }

  v8 = [(ICNoteContext *)self persistentStoresByAccountId];
  v9 = [v8 objectForKeyedSubscript:v4];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteContext persistentStoreForAccountID:];
  }

LABEL_11:

  return v9;
}

- (void)destroyPersistentStore
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)purgeEverything
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICNoteContext *)self className];
    *buf = 138412290;
    v51 = v4;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Purging everything from %@", buf, 0xCu);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = self;
  v5 = [(ICNoteContext *)self managedObjectContext];
  v6 = [ICAccount allAccountsInContext:v5];

  v7 = [v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [ICMedia mediaIdentifiersForAccount:v11];
        [ICMedia purgeMediaFilesForIdentifiers:v12 account:v11];

        v13 = [ICAttachmentPreviewImage attachmentPreviewImageIdentifiersForAccount:v11];
        [ICAttachmentPreviewImage purgePreviewImageFilesForIdentifiers:v13 account:v11];

        v14 = [ICAttachment attachmentIdentifiersForAccount:v11];
        [ICAttachment purgeAttachmentFilesForIdentifiers:v14 account:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v8);
  }

  v15 = +[ICHashtag fetchRequest];
  v48[0] = v15;
  v16 = +[ICAttachmentPreviewImage fetchRequest];
  v48[1] = v16;
  v17 = +[ICMedia fetchRequest];
  v48[2] = v17;
  v18 = +[ICInlineAttachment fetchRequest];
  v48[3] = v18;
  v19 = +[ICAttachment fetchRequest];
  v48[4] = v19;
  v20 = +[ICNote fetchRequest];
  v48[5] = v20;
  v21 = +[ICLegacyTombstone fetchRequest];
  v48[6] = v21;
  v22 = +[ICFolder purgableFoldersFetchRequest];
  v48[7] = v22;
  v23 = +[ICInvitation fetchRequest];
  v48[8] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:9];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:*(*(&v39 + 1) + 8 * j)];
        v31 = [(ICNoteContext *)v37 managedObjectContext];
        v38 = 0;
        v32 = [v31 executeRequest:v30 error:&v38];
        v33 = v38;

        if (v33)
        {
          v34 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v33;
            _os_log_error_impl(&dword_214D51000, v34, OS_LOG_TYPE_ERROR, "Error purging data: %@", buf, 0xCu);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v27);
  }

  v35 = +[ICCloudContext sharedContext];
  [v35 deleteAllServerChangeTokens];

  v36 = [(ICNoteContext *)v37 managedObjectContext];
  [v36 ic_save];
}

- (void)deleteEverything
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(ICNoteContext *)self className];
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Deleting everything from %@", buf, 0xCu);
  }

  v5 = [(ICNoteContext *)self managedObjectContext];
  v6 = [ICCloudSyncingObject ic_objectsMatchingPredicate:0 context:v5];
  v7 = [v6 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
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

        v13 = *(*(&v15 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 isDeletable])
            {
              [v13 markForDeletion];
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  +[ICCloudSyncingObject resetAllDeletedByThisDeviceProperties];
  v14 = [(ICNoteContext *)self managedObjectContext];
  [(ICNoteContext *)self purgeDeletedObjectsInManagedObjectContext:v14];

  [(ICNoteContext *)self saveImmediately];
}

+ (id)filenameFromFileWrapper:(id)a3
{
  v3 = a3;
  v4 = [v3 preferredFilename];

  if (v4)
  {
    v5 = [v3 preferredFilename];
  }

  else
  {
    v6 = [v3 filename];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = [v3 filename];
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (id)objectID
{
  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteContext objectID]" simulateCrash:1 showAlert:0 format:@"Note context does not have an object ID"];
  v2 = objc_alloc_init(MEMORY[0x277CBE448]);

  return v2;
}

- (OS_dispatch_queue)backgroundTaskQueue
{
  v2 = self;
  objc_sync_enter(v2);
  backgroundTaskQueue = v2->_backgroundTaskQueue;
  if (!backgroundTaskQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.notes.BackgroundTask", v4);
    v6 = v2->_backgroundTaskQueue;
    v2->_backgroundTaskQueue = v5;

    backgroundTaskQueue = v2->_backgroundTaskQueue;
  }

  v7 = backgroundTaskQueue;
  objc_sync_exit(v2);

  return v7;
}

+ (BOOL)hasContextOptions:(unint64_t)a3
{
  result = sharedContext;
  if (sharedContext)
  {
    return [sharedContext hasContextOptions:a3];
  }

  return result;
}

- (void)cloudContextFetchRecordChangeOperationDidFinish:(id)a3
{
  v4 = [(ICNoteContext *)self backgroundTaskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerManagedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke_2;
  v5[3] = &unk_278194AD8;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 performBlock:v5];
}

void __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke_2(uint64_t a1)
{
  [ICAttachmentPreviewImage deleteStrandedAttachmentPreviewImagesInContext:*(a1 + 32)];
  [*(a1 + 40) purgeDeletedObjectsInManagedObjectContext:*(a1 + 32)];
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 save:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke_2_cold_1();
    }
  }
}

- (void)managedObjectContextUpdaterDidMerge:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D36120]];
  v7 = ICCheckedDynamicCast();

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 objectForKey:*MEMORY[0x277CBE308]];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ICNoteContext *)self managedObjectContextUpdaterDidChangeObjectWithID:*(*(&v22 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [v7 objectForKey:{*MEMORY[0x277CBE180], 0}];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(ICNoteContext *)self managedObjectContextUpdaterDidChangeObjectWithID:*(*(&v18 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)managedObjectContextUpdaterDidChangeObjectWithID:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContext *)self persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  v7 = [v4 persistentStore];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [(ICNoteContext *)self managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__ICNoteContext_managedObjectContextUpdaterDidChangeObjectWithID___block_invoke;
    v10[3] = &unk_278194AD8;
    v10[4] = self;
    v11 = v4;
    [v9 performBlock:v10];
  }
}

void __66__ICNoteContext_managedObjectContextUpdaterDidChangeObjectWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v6 = [v2 objectWithID:*(a1 + 40)];

  objc_opt_class();
  v3 = ICDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 attachment];
    [v5 ic_postNotificationOnMainThreadWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
  }
}

+ (void)startSharedContextWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)startSharedContextWithOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)startSharedContextWithOptions:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)sharedContext
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "No shared context: %@", buf, 0xCu);
}

void __34__ICNoteContext_resetAppContainer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Cannot remove container item {url: %@, error: %@}");
}

- (void)initWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithOptions:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)initWithOptions:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)purgeDeletedObjectsInManagedObjectContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_11_1(&dword_214D51000, v5, v6, "Deleting object from database because it's marked for deletion and its deletion has synced: %@");
}

- (void)purgeDeletedObjectsInManagedObjectContext:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)markOldTrashedNotesForDeletionInContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __22__ICNoteContext_save___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __22__ICNoteContext_save___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  v7 = [*(*(*v1 + 8) + 40) domain];
  [*(*(*v0 + 8) + 40) code];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __22__ICNoteContext_save___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)save
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)recoverFromSaveError
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__ICNoteContext_refreshAll__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_10_1(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_11_1(&dword_214D51000, v5, v6, "refreshing objectID %@");
}

+ (void)setLegacyNotesDisabled:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error %@ legacy notes: %@");
}

- (void)accountsDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__ICNoteContext_updateAccounts__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)ensureModernAccountExistsInContext:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__ICNoteContext_persistentContainer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:.cold.4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)refreshPersistentStoresByAccountIdFromPersistentStores:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createAdditionalPersistentStoresWithAccountIdentifiers:(uint8_t *)buf persistentContainer:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Returned error while creating additional persistent stores: %@, %@", buf, 0x16u);
}

void __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274_cold_1()
{
  OUTLINED_FUNCTION_3();
  v6 = [v0 userInfo];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __92__ICNoteContext_createAdditionalPersistentStoresWithAccountIdentifiers_persistentContainer___block_invoke_274_cold_2(uint64_t a1, void *a2)
{
  v7 = [a2 URL];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke_278_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__ICNoteContext_cleanupAdditionalPersistentStores__block_invoke_278_cold_2(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)snapshotManagedObjectContextForContainer:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)persistentStoreForAccountID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Found persistent store for account ID %@: %@", v1, 0x16u);
}

- (void)persistentStoreForAccountID:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ICNoteContext_cloudContextFetchRecordChangeOperationDidFinish___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end