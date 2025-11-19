@interface NoteContext
+ (BOOL)databaseIsCorrupt:(id)a3;
+ (BOOL)isDataProtectionError:(id)a3;
+ (BOOL)isTooLowOnDiskSpace;
+ (BOOL)shouldLogIndexing;
+ (NSFetchRequest)newFetchRequestForNotes;
+ (NSManagedObjectModel)managedObjectModel;
+ (id)allVisibleNotesMatchingPredicate:(id)a3 sorted:(BOOL)a4 context:(id)a5 fetchLimit:(unint64_t)a6;
+ (id)backupsDirectoryURL;
+ (id)generateGUID;
+ (id)mainContextObjectFromObject:(id)a3;
+ (id)newFetchRequestForAccounts;
+ (id)newFetchRequestForStores;
+ (id)newManagedObjectContext;
+ (id)persistentStoreCoordinator;
+ (id)searchIndexerDataSource;
+ (id)sharedContext;
+ (id)storeOptions;
+ (id)urlForPersistentStore;
+ (id)visibleNotesIncludingEmptyBodyContentPredicate;
+ (id)visibleNotesPredicate;
+ (unint64_t)countOfVisibleNotesInCollection:(id)a3;
+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)a3;
+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)a3 includingNoteWithoutBodyContent:(BOOL)a4 context:(id)a5;
+ (void)backupPersistentStore:(id)a3;
+ (void)clearTestsNotesRootPath;
+ (void)isTooLowOnDiskSpace;
+ (void)removeConflictingSqliteAndIdxFiles;
+ (void)removeSqliteAndIdxFiles;
- (BOOL)deleteAccount:(id)a3;
- (BOOL)deleteStore:(id)a3;
- (BOOL)forceDeleteAccount:(id)a3;
- (BOOL)hasMultipleEnabledStores;
- (BOOL)save:(id *)a3;
- (BOOL)saveSilently:(id *)a3;
- (BOOL)setUpCoreDataStack;
- (BOOL)setUpLastIndexTid;
- (BOOL)setUpLocalAccountAndStore;
- (BOOL)shouldDisableLocalStore;
- (NSManagedObjectContext)managedObjectContext;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NoteContext)init;
- (NoteContext)initWithAccountUtilities:(id)a3 inMigrator:(BOOL)a4 isMainContext:(BOOL)a5 usePrivateQueue:(BOOL)a6;
- (NoteContext)initWithPrivateQueue;
- (id)_notePropertyObjectForKey:(id)a3;
- (id)accountForAccountId:(id)a3;
- (id)allNotes;
- (id)allNotesInCollection:(id)a3;
- (id)allNotesMatchingPredicate:(id)a3;
- (id)allNotesWithoutBodiesInCollection:(id)a3;
- (id)allStores;
- (id)collectionForInfo:(id)a3;
- (id)collectionForObjectID:(id)a3;
- (id)defaultStoreForNewNote;
- (id)faultedInStoresForAccounts:(id)a3;
- (id)getNextIdObject;
- (id)initForMainContext;
- (id)initForMigrator;
- (id)liveNotesNeedingBodiesPredicate;
- (id)localAccount;
- (id)localStore;
- (id)mostRecentlyModifiedNoteInCollection:(id)a3;
- (id)newFRCForAccountsWithDelegate:(id)a3;
- (id)newFRCForFetchRequest:(id)a3 delegate:(id)a4 performFetch:(BOOL)a5;
- (id)newFRCForStoresWithDelegate:(id)a3;
- (id)newFetchRequestForNotes;
- (id)newlyAddedAccount;
- (id)newlyAddedAttachment;
- (id)newlyAddedNote;
- (id)newlyAddedNoteWithGUID:(id)a3;
- (id)newlyAddedStore;
- (id)newlyCreatedNoteFromDefaultStore;
- (id)nextIndex;
- (id)noteForGUID:(id)a3;
- (id)noteForObjectID:(id)a3;
- (id)notesForIntegerIds:(id)a3;
- (id)propertyValueForKey:(id)a3;
- (id)storeForExternalIdentifier:(id)a3;
- (id)storeForObjectID:(id)a3;
- (id)storesInCollection:(id)a3;
- (id)visibleNoteForObjectID:(id)a3;
- (id)visibleNotesForIntegerIds:(id)a3;
- (id)visibleNotesPredicate;
- (unint64_t)countOfNotes;
- (unint64_t)countOfNotesInCollection:(id)a3;
- (unint64_t)countOfNotesMatchingPredicate:(id)a3;
- (unint64_t)countOfStores;
- (unint64_t)countOfVisibleNotesInCollection:(id)a3;
- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)a3;
- (void)_createLocalAccount:(id *)a3 andStore:(id *)a4;
- (void)allStores;
- (void)batchFaultNotes:(id)a3;
- (void)cleanUpLocks;
- (void)countOfStores;
- (void)dealloc;
- (void)deleteChanges:(id)a3;
- (void)deleteNote:(id)a3;
- (void)deleteNoteRegardlessOfConstraints:(id)a3;
- (void)forceSetUpUniqueObjects;
- (void)getNextIdObject;
- (void)handleMigration;
- (void)invalidate;
- (void)localAccount;
- (void)managedObjectContext;
- (void)managedObjectContextWillSaveNotification:(id)a3;
- (void)nextIndex;
- (void)postNotesChangedExternally;
- (void)setHasPriorityInSaveConflicts:(BOOL)a3;
- (void)setPropertyValue:(id)a3 forKey:(id)a4;
- (void)setUpLastIndexTid;
- (void)setUpLocalAccountAndStore;
- (void)setUpUniqueObjects;
- (void)sortNotes:(id)a3;
- (void)tearDownCoreDataStack;
- (void)trackChanges:(id)a3;
- (void)updateForRecentChanges;
@end

@implementation NoteContext

+ (id)sharedContext
{
  if (sharedContext_once != -1)
  {
    +[NoteContext(SharedContext) sharedContext];
  }

  v3 = sharedContext_sharedContext;

  return v3;
}

uint64_t __43__NoteContext_SharedContext__sharedContext__block_invoke()
{
  sharedContext_sharedContext = [[NoteContext alloc] initForMainContext];

  return MEMORY[0x2821F96F8]();
}

- (id)initForMainContext
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0 isMainContext:1 usePrivateQueue:0];

  return v4;
}

+ (void)removeConflictingSqliteAndIdxFiles
{
  v5 = NoteStoreCopyPath(a1, a2);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v5];

  if (v4)
  {
    [a1 removeSqliteAndIdxFiles];
  }
}

+ (NSManagedObjectModel)managedObjectModel
{
  if (managedObjectModel_onceToken != -1)
  {
    +[NoteContext managedObjectModel];
  }

  v3 = managedObjectModel__defaultNotesModel;

  return v3;
}

- (BOOL)setUpCoreDataStack
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NoteContextWillSetUpCoreDataStackNotification" object:self];

  [objc_opt_class() removeConflictingSqliteAndIdxFiles];
  v4 = [objc_opt_class() managedObjectModel];

  if (v4 && ([objc_opt_class() persistentStoreCoordinator], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (-[NoteContext managedObjectContext](self, "managedObjectContext"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __33__NoteContext_setUpCoreDataStack__block_invoke;
    v23[3] = &unk_2799AC828;
    v23[4] = self;
    v7 = MEMORY[0x25F88B080](v23);
    v8 = [(NoteContext *)self managedObjectContext];
    v9 = [v8 concurrencyType];

    if (v9)
    {
      v10 = [(NoteContext *)self managedObjectContext];
      [v10 performBlockAndWait:v7];
    }

    else
    {
      v7[2](v7);
    }

    if (!self->_inMigrator)
    {
      if ([(NoteContext *)self shouldObserveDarwinNotifications])
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __ReceiveNotification, @"NoteContextDarwinNotificationWithLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v14 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v14, self, __ReceiveNotification, @"NoteContextDarwinNotificationWithoutLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v15 = objc_alloc(MEMORY[0x277D36210]);
      v16 = [(NoteContext *)self managedObjectContext];
      v17 = [v15 initWithStore:0 context:v16];
      [(NoteContext *)self setMocUpdater:v17];

      v18 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_postNotesChangedExternally delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
      [(NoteContext *)self setExternalChangeNotificationDelayer:v18];
    }

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = *MEMORY[0x277CBE1C0];
    v21 = [(NoteContext *)self managedObjectContext];
    [v19 addObserver:self selector:sel_managedObjectContextWillSaveNotification_ name:v20 object:v21];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

    return 1;
  }

  else
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

    return 0;
  }
}

void __33__NoteContext_managedObjectModel__block_invoke()
{
  v5 = NoteContextManagedObjectModelPath();
  v0 = objc_alloc(MEMORY[0x277CBE450]);
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v2 = [v0 initWithContentsOfURL:v1];
  v3 = managedObjectModel__defaultNotesModel;
  managedObjectModel__defaultNotesModel = v2;

  if (managedObjectModel__defaultNotesModel)
  {
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __33__NoteContext_managedObjectModel__block_invoke_cold_1();
    }

    __break(1u);
  }
}

+ (id)urlForPersistentStore
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [a1 pathForPersistentStore];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

+ (id)storeOptions
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277CBE178];
  v8[0] = *MEMORY[0x277CBE1D8];
  v8[1] = v3;
  v9[0] = MEMORY[0x277CBEC38];
  v9[1] = MEMORY[0x277CBEC38];
  v8[2] = *MEMORY[0x277CBE240];
  v4 = [objc_opt_class() fileProtectionOption];
  v8[3] = *MEMORY[0x277CBE210];
  v9[2] = v4;
  v9[3] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)persistentStoreCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (persistentStoreCoordinator_onceToken != -1)
  {
    dispatch_once(&persistentStoreCoordinator_onceToken, block);
  }

  v2 = persistentStoreCoordinator__persistentStoreCoordinator;

  return v2;
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) urlForPersistentStore];
  v37 = [*v2 managedObjectModel];
  obj = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v37];
  v4 = [*v2 storeOptions];
  v5 = [v4 mutableCopy];

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v6 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v3];
    [v6 setType:*MEMORY[0x277CBE2E8]];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v8)
    {
      v9 = *v47;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:{v11, v37}];
          [v6 setOption:v12 forKey:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = objc_opt_class();
  objc_sync_enter(v13);
  v14 = objc_alloc_init(NotesMigrationManager);
  v15 = ICUseCoreDataCoreSpotlightIntegration();
  v16 = *MEMORY[0x277CBE2E8];
  if (v15)
  {
    v45 = 0;
    v17 = [(NotesMigrationManager *)v14 migrateNotesStoreAtURL:v3 storeType:v16 managedObjectModel:v37 options:v5 error:&v45];
    v18 = v45;
    *(v51 + 24) = v17;
    if (v6)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke_2;
      v44[3] = &unk_2799AC898;
      v44[4] = &v50;
      [obj addPersistentStoreWithDescription:v6 completionHandler:v44];
    }
  }

  else
  {
    v19 = [*(a1 + 32) managedObjectModel];
    v43 = 0;
    v20 = [(NotesMigrationManager *)v14 migrateNotesStoreAtURL:v3 storeType:v16 managedObjectModel:v19 options:v5 error:&v43];
    v21 = v43;
    *(v51 + 24) = v20;

    v42 = v21;
    v22 = [obj addPersistentStoreWithType:v16 configuration:0 URL:v3 options:v5 error:&v42];
    v23 = v42;

    *(v51 + 24) = v22 != 0;
    v18 = v23;
  }

  if ((v51[3] & 1) == 0)
  {
    if ([*(a1 + 32) isTooLowOnDiskSpace])
    {
      v24 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_5();
      }
    }

    else
    {
      v25 = [*(a1 + 32) isDataProtectionError:v18];
      v26 = os_log_create("com.apple.notes", "HTML");
      v24 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25C69C000, v24, OS_LOG_TYPE_INFO, "Data protection prevented loading persistent store, because device has not been unlocked since boot", buf, 2u);
        }
      }

      else
      {
        v27 = v26;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [v18 userInfo];
          objc_claimAutoreleasedReturnValue();
          __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_1();
        }

        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[NoteContext persistentStoreCoordinator]_block_invoke" simulateCrash:1 showAlert:1 format:@"Failed to open HTML notes database."];
        v28 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v41 = 0;
          _os_log_impl(&dword_25C69C000, v28, OS_LOG_TYPE_INFO, "Destroying old persistent store and creating a new one", v41, 2u);
        }

        [*(a1 + 32) backupPersistentStore:obj];
        v29 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_2();
        }

        if (ICUseCoreDataCoreSpotlightIntegration())
        {
          if (v6)
          {
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke_236;
            v40[3] = &unk_2799AC898;
            v40[4] = &v50;
            [obj addPersistentStoreWithDescription:v6 completionHandler:v40];
          }
        }

        else
        {
          v30 = *MEMORY[0x277CBE2E8];
          v39 = v18;
          v31 = [obj addPersistentStoreWithType:v30 configuration:0 URL:v3 options:v5 error:&v39];
          v32 = v39;

          *(v51 + 24) = v31 != 0;
          v18 = v32;
        }

        v33 = os_log_create("com.apple.notes", "HTML");
        v24 = v33;
        if (v18)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_3();
          }
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_4();
          }

          v18 = 0;
        }
      }
    }
  }

  objc_sync_exit(v13);

  if (*(v51 + 24) == 1)
  {
    objc_storeStrong(&persistentStoreCoordinator__persistentStoreCoordinator, obj);
    if (ICUseCoreDataCoreSpotlightIntegration())
    {
      v34 = [objc_alloc(MEMORY[0x277D361C0]) initForStoreWithDescription:v6 coordinator:obj indexingPriority:1];
      if (v34)
      {
        v35 = [MEMORY[0x277D361A8] sharedReindexer];
        [v35 registerCoreDataCoreSpotlightDelegate:v34];

        [v34 startSpotlightIndexing];
      }
    }
  }

  _Block_object_dispose(&v50, 8);
  v36 = *MEMORY[0x277D85DE8];
}

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext)
  {
    v3 = managedObjectContext;
    goto LABEL_17;
  }

  v5 = [objc_opt_class() persistentStoreCoordinator];
  if (v5)
  {
    if ([(NoteContext *)self isMainContext])
    {
      v6 = objc_alloc(MEMORY[0x277CBE440]);
      v7 = 2;
    }

    else
    {
      if (![(NoteContext *)self usePrivateQueue])
      {
        v8 = objc_alloc_init(MEMORY[0x277CBE440]);
        goto LABEL_10;
      }

      v6 = objc_alloc(MEMORY[0x277CBE440]);
      v7 = 1;
    }

    v8 = [v6 initWithConcurrencyType:v7];
LABEL_10:
    v9 = self->_managedObjectContext;
    self->_managedObjectContext = v8;

    [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:v5];
  }

  [(NSManagedObjectContext *)self->_managedObjectContext setUndoManager:0];
  [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
  [(NSManagedObjectContext *)self->_managedObjectContext setStalenessInterval:0.0];
  [(NSManagedObjectContext *)self->_managedObjectContext _setDelegate:self];
  if (self->_managedObjectContext)
  {
    v10 = [objc_opt_class() searchIndexerDataSource];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NoteContext managedObjectContext];
    }
  }

  v3 = self->_managedObjectContext;

LABEL_17:

  return v3;
}

+ (id)searchIndexerDataSource
{
  if (searchIndexerDataSource_onceToken != -1)
  {
    +[NoteContext searchIndexerDataSource];
  }

  v3 = searchIndexerDataSource_sDataSource;

  return v3;
}

void __38__NoteContext_searchIndexerDataSource__block_invoke()
{
  v4 = [MEMORY[0x277D36248] sharedIndexer];
  v0 = objc_alloc_init(ICHTMLSearchIndexerDataSource);
  v1 = searchIndexerDataSource_sDataSource;
  searchIndexerDataSource_sDataSource = v0;

  [v4 addDataSource:searchIndexerDataSource_sDataSource];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  if ((([v3 isEqualToString:@"dataaccessd"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"exchangesyncd")) && (objc_msgSend(v4, "isObservingChanges") & 1) == 0)
  {
    [v4 setDisabled:0];
    [v4 startObservingChanges];
  }
}

uint64_t __33__NoteContext_setUpCoreDataStack__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpUniqueObjects];
  v2 = *(a1 + 32);

  return [v2 handleMigration];
}

- (void)setUpUniqueObjects
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleMigration
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Error: Failed to delete earlier notes.db: %@, %@", v4, v5);
}

- (NoteContext)initWithPrivateQueue
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0 isMainContext:0 usePrivateQueue:1];

  return v4;
}

+ (id)newFetchRequestForAccounts
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Account"];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 setSortDescriptors:v4];

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)newFetchRequestForStores
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Store"];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 setSortDescriptors:v4];

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(NoteContext *)self tearDownCoreDataStack];
  v3.receiver = self;
  v3.super_class = NoteContext;
  [(NoteContext *)&v3 dealloc];
}

- (void)tearDownCoreDataStack
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  localStore = self->_localStore;
  self->_localStore = 0;

  localAccount = self->_localAccount;
  self->_localAccount = 0;

  nextId = self->_nextId;
  self->_nextId = 0;

  nextIdContext = self->_nextIdContext;
  self->_nextIdContext = 0;

  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = 0;
}

+ (BOOL)shouldLogIndexing
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"ShouldLogIndexing"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)databaseIsCorrupt:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE2C8]];

  if (v5)
  {
    v6 = [v5 intValue] == 11;
  }

  else
  {
    v6 = 0;
  }

  if ([v3 code] == 259)
  {
    v7 = [v3 domain];
    v8 = [v7 isEqual:*MEMORY[0x277CCA050]];

    v6 |= v8;
  }

  return v6 & 1;
}

+ (void)clearTestsNotesRootPath
{
  v2 = s_testsNotesRootPath;
  s_testsNotesRootPath = 0;
}

+ (id)generateGUID
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_createLocalAccount:(id *)a3 andStore:(id *)a4
{
  obj = [(NoteContext *)self newlyAddedAccount];
  v7 = [(NoteContext *)self accountUtilities];
  v8 = [v7 localAccountDisplayName];
  [obj setName:v8];

  [obj setAccountIdentifier:@"local://local/account"];
  v9 = [(NoteContext *)self newlyAddedStore];
  [v9 setName:@"LOCAL_NOTES_STORE"];
  [v9 setExternalIdentifier:@"local://local/store"];
  [v9 setAccount:obj];
  [obj setDefaultStore:v9];
  if (a3)
  {
    objc_storeStrong(a3, obj);
  }

  if (a4)
  {
    objc_storeStrong(a4, v9);
  }
}

- (BOOL)setUpLocalAccountAndStore
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  v5 = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Account" inManagedObjectContext:v5];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
  [v3 setPredicate:v7];
  v8 = [(NoteContext *)self managedObjectContext];
  v35 = 0;
  v9 = [v8 executeFetchRequest:v3 error:&v35];
  v10 = v35;

  v11 = v10 == 0;
  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext setUpLocalAccountAndStore];
    }

    v13 = v12;
LABEL_18:

    goto LABEL_19;
  }

  if ([v9 count] >= 2)
  {
    v14 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(NoteContext *)v9 setUpLocalAccountAndStore];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v9;
    v15 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v32;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v12);
          }

          if (v17)
          {
            [(NoteContext *)self forceDeleteAccount:*(*(&v31 + 1) + 8 * i)];
          }

          v17 = 1;
        }

        v16 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v16);
    }

    v13 = [(NoteContext *)self managedObjectContext];
    v30 = 0;
    v9 = [v13 executeFetchRequest:v3 error:&v30];
    v10 = v30;
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
LABEL_19:
  p_localAccount = &self->_localAccount;
  localAccount = self->_localAccount;
  self->_localAccount = 0;

  p_localStore = &self->_localStore;
  localStore = self->_localStore;
  self->_localStore = 0;

  if ([v9 count])
  {
    v24 = [v9 lastObject];
    v25 = *p_localAccount;
    *p_localAccount = v24;

    v26 = [*p_localAccount defaultStore];
    v27 = *p_localStore;
    *p_localStore = v26;
  }

  else
  {
    [(NoteContext *)self _createLocalAccount:&self->_localAccount andStore:&self->_localStore];
    v11 = 1;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)setUpLastIndexTid
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  v5 = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Property" inManagedObjectContext:v5];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", @"LastTransactionID"];
  [v3 setPredicate:v7];
  v8 = [(NoteContext *)self managedObjectContext];
  v36 = 0;
  v9 = [v8 executeFetchRequest:v3 error:&v36];
  v10 = v36;

  v11 = v10 == 0;
  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext setUpLastIndexTid];
    }
  }

  else
  {
    v15 = [v9 count];
    v16 = v15 > 1;
    if (v15 >= 2)
    {
      v29 = v15 > 1;
      v30 = v10 == 0;
      v17 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(NoteContext *)v9 setUpLastIndexTid];
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v18);
            }

            if (v21)
            {
              v24 = *(*(&v32 + 1) + 8 * i);
              v25 = [(NoteContext *)self managedObjectContext];
              [v25 deleteObject:v24];
            }

            v21 = 1;
          }

          v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v20);
      }

      v26 = [(NoteContext *)self managedObjectContext];
      v31 = 0;
      v9 = [v26 executeFetchRequest:v3 error:&v31];
      v10 = v31;

      if (v10)
      {
        v11 = 1;
        goto LABEL_6;
      }

      v16 = v29;
      v11 = v30;
    }

    if ([v9 count])
    {
      v10 = 0;
      v11 = v16;
      goto LABEL_6;
    }

    v27 = MEMORY[0x277CBE408];
    v28 = [(NoteContext *)self managedObjectContext];
    v12 = [v27 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:v28];

    [v12 setPropertyKey:@"LastTransactionID"];
    v10 = 0;
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)forceSetUpUniqueObjects
{
  v3 = [objc_opt_class() persistentStoreCoordinator];
  v4 = [objc_opt_class() urlForPersistentStore];
  v8 = [v3 persistentStoreForURL:v4];

  v5 = [v8 metadata];
  v6 = [v5 mutableCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v6 setObject:v7 forKey:@"LocalAccountAndStoreAlreadySetUp"];

  [v8 setMetadata:v6];
  [(NoteContext *)self setUpUniqueObjects];
}

+ (void)removeSqliteAndIdxFiles
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (NoteContext)init
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0];

  return v4;
}

- (id)initForMigrator
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:1];

  return v4;
}

- (NoteContext)initWithAccountUtilities:(id)a3 inMigrator:(BOOL)a4 isMainContext:(BOOL)a5 usePrivateQueue:(BOOL)a6
{
  v11 = a3;
  v21.receiver = self;
  v21.super_class = NoteContext;
  v12 = [(NoteContext *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_isMainContext = a5;
    v12->_inMigrator = a4;
    objc_storeStrong(&v12->_accountUtilities, a3);
    v13->_usePrivateQueue = a6;
    *&v13->_logChanges = 0;
    v14 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
    v15 = [v14 stringByAppendingPathComponent:@"Caches"];

    v16 = [objc_alloc(MEMORY[0x277D361E8]) initWithName:@"com.apple.notes.autoincrement.lock" cachePath:v15];
    nextIdLock = v13->_nextIdLock;
    v13->_nextIdLock = v16;

    v18 = [objc_alloc(MEMORY[0x277D361E8]) initWithName:@"com.apple.notes.objectcreation.lock" cachePath:v15];
    objectCreationLock = v13->_objectCreationLock;
    v13->_objectCreationLock = v18;

    if (![(NoteContext *)v13 setUpCoreDataStack])
    {

      v13 = 0;
    }
  }

  return v13;
}

- (id)visibleNotesPredicate
{
  v2 = objc_opt_class();

  return [v2 visibleNotesPredicate];
}

+ (id)visibleNotesPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [v2 predicateWithFormat:@"((deletedFlag == %@) AND (body.content != nil) AND (isBookkeepingEntry == %@))", v3, v4];

  return v5;
}

+ (id)visibleNotesIncludingEmptyBodyContentPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [v2 predicateWithFormat:@"((deletedFlag == %@) AND (isBookkeepingEntry == %@))", v3, v4];

  return v5;
}

- (id)liveNotesNeedingBodiesPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [v2 predicateWithFormat:@"((body.content = nil) AND (isBookkeepingEntry == %@))", v3];

  return v4;
}

- (id)newFRCForAccountsWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[NoteContext newFetchRequestForAccounts];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:v4 performFetch:1];

  return v6;
}

- (id)newFRCForStoresWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[NoteContext newFetchRequestForStores];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:v4 performFetch:1];

  return v6;
}

- (id)newFRCForFetchRequest:(id)a3 delegate:(id)a4 performFetch:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(NoteContext *)self managedObjectContext];
  v11 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:v9 managedObjectContext:v10 sectionNameKeyPath:0 cacheName:0];

  [v11 setDelegate:v8];
  if (v5)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke;
    v13[3] = &unk_2799AC828;
    v14 = v11;
    [v10 performBlockAndWait:v13];
  }

  return v11;
}

void __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v2 = [v1 performFetch:&v5];
  v3 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke_cold_1();
    }
  }
}

- (id)newFetchRequestForNotes
{
  v2 = objc_opt_class();

  return [v2 newFetchRequestForNotes];
}

+ (NSFetchRequest)newFetchRequestForNotes
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Note"];
  v4 = [a1 defaultNotesSortDescriptors];
  [(NSFetchRequest *)v3 setSortDescriptors:v4];

  return v3;
}

- (void)sortNotes:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() defaultNotesSortDescriptors];
  [v3 sortUsingDescriptors:v4];
}

- (void)batchFaultNotes:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Note"];
    [v5 setReturnsObjectsAsFaults:0];
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", v4];
    [v5 setPredicate:v6];

    v7 = [(NoteContext *)self managedObjectContext];
    v11 = 0;
    v8 = [v7 executeFetchRequest:v5 error:&v11];
    v9 = v11;

    if (!v8)
    {
      v10 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [NoteContext batchFaultNotes:];
      }
    }
  }
}

- (id)newlyAddedNote
{
  v3 = +[NoteContext generateGUID];
  v4 = [(NoteContext *)self newlyAddedNoteWithGUID:v3];

  return v4;
}

- (id)newlyAddedNoteWithGUID:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [(NoteContext *)self managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:@"Note" inManagedObjectContext:v6];

  v8 = MEMORY[0x277CBE408];
  v9 = [(NoteContext *)self managedObjectContext];
  v10 = [v8 insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:v9];
  [v7 setBody:v10];

  v11 = [(NoteContext *)self nextIndex];
  [v7 setIntegerId:v11];

  [v7 setGuid:v5];

  return v7;
}

- (id)newlyCreatedNoteFromDefaultStore
{
  v3 = [(NoteContext *)self newlyAddedNote];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 setCreationDate:v4];

  v5 = [MEMORY[0x277CBEAA8] ic_modificationDateForNoteBeingEdited];
  [v3 setModificationDate:v5];

  [v3 setContent:&stru_286E2F780];
  [v3 setTitle:0];
  v6 = [(NoteContext *)self defaultStoreForNewNote];
  [v3 setStore:v6];

  return v3;
}

- (id)newlyAddedAttachment
{
  v3 = objc_opt_class();
  v4 = [(NoteContext *)self managedObjectContext];
  v5 = [v3 newlyAddedAttachmentInContext:v4];

  return v5;
}

- (id)collectionForObjectID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NoteContext *)self managedObjectContext];
    v6 = [v5 existingObjectWithID:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)storeForObjectID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NoteContext *)self managedObjectContext];
    v6 = [v5 existingObjectWithID:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteNote:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  if (v5)
  {
    v6 = [(NoteContext *)self managedObjectContext];
    v7 = [v6 existingObjectWithID:v5 error:0];

    if (([v4 isInserted] & 1) == 0)
    {
      if (v7)
      {
        v8 = [v7 store];
        v9 = [v8 objectID];
        v10 = [(NoteContext *)self storeForObjectID:v9];

        if (v10)
        {
          v11 = [(NoteContext *)self managedObjectContext];
          v12 = [v10 account];
          v13 = [v12 objectID];
          v14 = [v11 existingObjectWithID:v13 error:0];

          if (v14)
          {
            v15 = [v14 shouldMarkNotesAsDeleted];

            if (v15)
            {
              [v4 markForDeletion];
LABEL_13:

              goto LABEL_14;
            }
          }

          else
          {
            v17 = [(NoteContext *)self managedObjectContext];
            [v17 deleteObject:v10];
          }
        }
      }
    }

    [(NoteContext *)self deleteNoteRegardlessOfConstraints:v4];
    goto LABEL_13;
  }

  v16 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NoteContext deleteNote:];
  }

LABEL_14:
}

- (void)deleteNoteRegardlessOfConstraints:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self managedObjectContext];
  [v5 deleteObject:v4];
}

- (void)deleteChanges:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(NoteContext *)self managedObjectContext];
        [v10 deleteObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  localStore = self->_localStore;
  self->_localStore = 0;

  localAccount = self->_localAccount;
  self->_localAccount = 0;

  notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  self->_notePropertyObjectsRealized = 0;

  v6 = [(NoteContext *)self managedObjectContext];
  [v6 reset];
}

- (BOOL)save:(id *)a3
{
  if (![(NSManagedObjectContext *)self->_managedObjectContext hasChanges])
  {
    return 1;
  }

  if (![(NoteContext *)self saveSilently:a3])
  {
    return 0;
  }

  if ([(NoteContext *)self shouldObserveDarwinNotifications])
  {
    ++self->_notificationCount;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (self->_logChanges)
  {
    v6 = @"NoteContextDarwinNotificationWithLoggedChanges";
  }

  else
  {
    v6 = @"NoteContextDarwinNotificationWithoutLoggedChanges";
  }

  v7 = 1;
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
  return v7;
}

- (BOOL)saveSilently:(id *)a3
{
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NoteContext saveSilently:];
  }

  v6 = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v7 = [v6 save:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [NoteContext saveSilently:];
    }

    if ([NoteContext databaseIsCorrupt:v8])
    {
      v10 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [NoteContext saveSilently:];
      }
    }
  }

  if (a3)
  {
    v11 = v8;
    *a3 = v8;
  }

  return v7;
}

- (unint64_t)countOfVisibleNotesInCollection:(id)a3
{
  v4 = [a3 predicateForNotes];
  v5 = [(NoteContext *)self countOfVisibleNotesMatchingPredicate:v4];

  return v5;
}

+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)a3
{
  v4 = a3;
  v5 = [v4 predicateForNotes];
  v6 = [v4 managedObjectContext];

  v7 = [a1 countOfVisibleNotesMatchingPredicate:v5 includingNoteWithoutBodyContent:1 context:v6];
  return v7;
}

+ (unint64_t)countOfVisibleNotesInCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 predicateForNotes];
  v6 = [v4 managedObjectContext];

  v7 = [a1 countOfVisibleNotesMatchingPredicate:v5 context:v6];
  return v7;
}

+ (id)allVisibleNotesMatchingPredicate:(id)a3 sorted:(BOOL)a4 context:(id)a5 fetchLimit:(unint64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = MEMORY[0x277CBEA60];
    v14 = [a1 visibleNotesPredicate];
    v15 = [v13 arrayWithObjects:{v14, v10, 0}];
    v16 = [v12 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = [a1 visibleNotesPredicate];
  }

  v17 = [a1 newFetchRequestForNotes];
  [v17 setPredicate:v16];
  if (v8)
  {
    v18 = [a1 defaultNotesSortDescriptors];
    [v17 setSortDescriptors:v18];
  }

  if (a6)
  {
    [v17 setFetchLimit:a6];
  }

  v19 = [v11 executeFetchRequest:v17 error:0];

  return v19;
}

- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NoteContext *)self managedObjectContext];
  v7 = [v5 countOfVisibleNotesMatchingPredicate:v4 context:v6];

  return v7;
}

+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)a3 includingNoteWithoutBodyContent:(BOOL)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    [a1 visibleNotesIncludingEmptyBodyContentPredicate];
  }

  else
  {
    [a1 visibleNotesPredicate];
  }
  v10 = ;
  v11 = v10;
  if (v8)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v10, v8, 0}];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = v10;
  }

  v15 = [a1 newFetchRequestForNotes];
  [v15 setPredicate:v14];
  v16 = [v9 countForFetchRequest:v15 error:0];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)visibleNoteForObjectID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = [(NoteContext *)self managedObjectContext];
    v6 = [v5 existingObjectWithID:v4 error:0];

    v7 = ICCheckedDynamicCast();

    if (([v7 isMarkedForDeletion] & 1) != 0 || (objc_msgSend(v7, "body"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "content"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)visibleNotesForIntegerIds:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CBEA60];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", v4];

  v9 = [(NoteContext *)self visibleNotesPredicate];
  v10 = [v7 arrayWithObjects:{v8, v9, 0}];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  [v5 setPredicate:v11];
  v12 = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [v12 executeFetchRequest:v5 error:&v17];
  v14 = v17;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v13;
}

- (id)mostRecentlyModifiedNoteInCollection:(id)a3
{
  v4 = [a3 predicateForNotes];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    v8 = [(NoteContext *)self visibleNotesPredicate];
    v9 = [v7 arrayWithObjects:{v8, v5, 0}];
    v10 = [v6 andPredicateWithSubpredicates:v9];
  }

  else
  {
    v10 = [(NoteContext *)self visibleNotesPredicate];
  }

  v11 = [(NoteContext *)self newFetchRequestForNotes];
  [v11 setPredicate:v10];
  v12 = [objc_opt_class() defaultNotesSortDescriptors];
  [v11 setSortDescriptors:v12];

  [v11 setFetchLimit:1];
  v13 = [(NoteContext *)self managedObjectContext];
  v14 = [v13 executeFetchRequest:v11 error:0];

  v15 = [v14 lastObject];

  return v15;
}

- (id)allNotes
{
  v3 = [(NoteContext *)self newFetchRequestForNotes];
  v4 = [(NoteContext *)self managedObjectContext];
  v5 = [v4 executeFetchRequest:v3 error:0];

  return v5;
}

- (unint64_t)countOfNotes
{
  v3 = [(NoteContext *)self newFetchRequestForNotes];
  v4 = [(NoteContext *)self managedObjectContext];
  v5 = [v4 countForFetchRequest:v3 error:0];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)allNotesInCollection:(id)a3
{
  v4 = [a3 predicateForNotes];
  v5 = [(NoteContext *)self allNotesMatchingPredicate:v4];

  return v5;
}

- (unint64_t)countOfNotesInCollection:(id)a3
{
  v4 = [a3 predicateForNotes];
  v5 = [(NoteContext *)self countOfNotesMatchingPredicate:v4];

  return v5;
}

- (id)allNotesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  [v5 setPredicate:v4];

  v6 = [(NoteContext *)self managedObjectContext];
  v7 = [v6 executeFetchRequest:v5 error:0];

  return v7;
}

- (unint64_t)countOfNotesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  [v5 setPredicate:v4];

  v6 = [(NoteContext *)self managedObjectContext];
  v7 = [v6 countForFetchRequest:v5 error:0];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)noteForObjectID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NoteContext *)self managedObjectContext];
    v6 = [v5 existingObjectWithID:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)notesForIntegerIds:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", v4];

  [v5 setPredicate:v6];
  v7 = [(NoteContext *)self managedObjectContext];
  v12 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v8;
}

- (id)noteForGUID:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(guid ==[c] %@)", v4];
  [v5 setPredicate:v6];
  v7 = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext noteForGUID:];
    }
  }

  v11 = [v8 firstObject];

  return v11;
}

- (id)storeForExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() newFetchRequestForStores];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(externalIdentifier == %@)", v4];
  [v5 setPredicate:v6];
  v7 = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext storeForExternalIdentifier:];
    }
  }

  v11 = [v8 firstObject];

  return v11;
}

- (id)allNotesWithoutBodiesInCollection:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self newFetchRequestForNotes];
  if (v4)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    v8 = [v4 predicateForNotes];
    v9 = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
    v10 = [v7 arrayWithObjects:{v8, v9, 0}];
    v11 = [v6 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
  }

  [v5 setPredicate:v11];
  v12 = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [v12 executeFetchRequest:v5 error:&v17];
  v14 = v17;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v13;
}

- (id)collectionForInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKey:@"NoteCollectionPrimaryIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), -[NoteContext accountForAccountId:](self, "accountForAccountId:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [v5 objectForKey:@"NoteCollectionType"];
    v9 = [v8 isEqualToString:@"Account"];

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v11 = [v5 objectForKey:@"NoteCollectionSecondaryIdentifier"];
      v10 = [v7 storeForExternalId:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newlyAddedStore
{
  v2 = MEMORY[0x277CBE408];
  v3 = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Store" inManagedObjectContext:v3];

  return v4;
}

- (id)allStores
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  v5 = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:v5];
  [v3 setEntity:v6];

  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  [v3 setSortDescriptors:v8];

  v9 = [(NoteContext *)self managedObjectContext];
  v18 = 0;
  v10 = [v9 executeFetchRequest:v3 error:&v18];
  v11 = v18;

  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

    v13 = v12;
LABEL_5:

    goto LABEL_7;
  }

  if (![v10 count])
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

    [(NoteContext *)self forceSetUpUniqueObjects];
    v13 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v16 = [v13 executeFetchRequest:v3 error:&v17];
    v11 = v17;
    v12 = v10;
    v10 = v16;
    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (id)storesInCollection:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self allStores];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NoteContext_storesInCollection___block_invoke;
  v9[3] = &unk_2799AC850;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectsPassingTest:v9];

  return v7;
}

BOOL __34__NoteContext_storesInCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [v4 parentStore];

  if (isKindOfClass)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v6 == v7;

  return v8;
}

- (id)faultedInStoresForAccounts:(id)a3
{
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = [[v4 alloc] initWithEntityName:@"Store"];
  [v6 setReturnsObjectsAsFaults:0];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"account", v5];

  [v6 setPredicate:v7];
  v8 = [(NoteContext *)self managedObjectContext];
  v14 = 0;
  v9 = [v8 executeFetchRequest:v6 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext faultedInStoresForAccounts:];
    }
  }

  return v9;
}

- (unint64_t)countOfStores
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  v5 = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:v5];
  [v3 setEntity:v6];

  v7 = [(NoteContext *)self managedObjectContext];
  v15 = 0;
  v8 = [v7 countForFetchRequest:v3 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

LABEL_5:
    goto LABEL_7;
  }

  if (!v8)
  {
    v13 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NoteContext countOfStores];
    }

    [(NoteContext *)self forceSetUpUniqueObjects];
    v10 = [(NoteContext *)self managedObjectContext];
    v14 = 0;
    v8 = [v10 countForFetchRequest:v3 error:&v14];
    v9 = v14;
    goto LABEL_5;
  }

LABEL_7:
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)newlyAddedAccount
{
  v2 = MEMORY[0x277CBE408];
  v3 = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Account" inManagedObjectContext:v3];

  return v4;
}

- (id)accountForAccountId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  v7 = [(NoteContext *)self managedObjectContext];
  v8 = [v6 entityForName:@"Account" inManagedObjectContext:v7];
  [v5 setEntity:v8];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", v4];
  [v5 setPredicate:v9];

  v10 = [(NoteContext *)self managedObjectContext];
  v16 = 0;
  v11 = [v10 executeFetchRequest:v5 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NoteContext accountForAccountId:];
    }
  }

  v14 = [v11 lastObject];

  return v14;
}

- (id)defaultStoreForNewNote
{
  v22 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.mobilenotes");
  v3 = CFPreferencesCopyAppValue(@"DefaultNotesAccount", @"com.apple.mobilenotes");
  v4 = [(NoteContext *)self accountUtilities];
  v5 = [v4 defaultStoreSyncIdWithDesiredSyncId:v3];

  v6 = [(NoteContext *)self accountForAccountId:v5];
  v7 = v6;
  if (v6 && ![v6 didChooseToMigrate])
  {
LABEL_13:
    v14 = [v7 defaultStore];

    goto LABEL_15;
  }

  [(NoteContext *)self allAccounts];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      if (![v13 didChooseToMigrate])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v7 = v13;

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:

LABEL_14:
  v14 = [(NoteContext *)self localStore];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)localStore
{
  localStore = self->_localStore;
  if (!localStore)
  {
    v4 = [(NoteContext *)self localAccount];
    v5 = [v4 defaultStore];
    v6 = self->_localStore;
    self->_localStore = v5;

    localStore = self->_localStore;
  }

  return localStore;
}

- (id)localAccount
{
  localAccount = self->_localAccount;
  if (!localAccount)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE428]);
    v5 = MEMORY[0x277CBE408];
    v6 = [(NoteContext *)self managedObjectContext];
    v7 = [v5 entityForName:@"Account" inManagedObjectContext:v6];

    [v4 setEntity:v7];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
    [v4 setPredicate:v8];
    v9 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v10 = [v9 executeFetchRequest:v4 error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [NoteContext localAccount];
      }
    }

    else if ([v10 count] == 1)
    {
      v13 = [v10 lastObject];
      v14 = self->_localAccount;
      self->_localAccount = v13;
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(NoteContext *)v10 localAccount];
      }

      [(NoteContext *)self forceSetUpUniqueObjects];
    }

    localAccount = self->_localAccount;
  }

  return localAccount;
}

- (BOOL)forceDeleteAccount:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
  v35 = v4;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.store.account == %@", v4];
  [v5 setPredicate:v6];

  v34 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:1];
  v33 = self;
  v8 = [(NoteContext *)self managedObjectContext];
  v45 = 0;
  v32 = v7;
  v9 = [v8 executeRequest:v7 error:&v45];
  v10 = v45;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v9;
  obj = [v9 result];
  v11 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v40 = v10;
        v16 = [NoteAttachmentObject attachmentDirectoryURLForAttachmentObjectID:v15 error:&v40];
        v17 = v40;

        if (v17)
        {
          v18 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v47 = v17;
            _os_log_fault_impl(&dword_25C69C000, v18, OS_LOG_TYPE_FAULT, "Error getting file directory URL for attachment: %@", buf, 0xCu);
          }
        }

        if (v16)
        {
          v39 = v17;
          v19 = [v37 removeItemAtURL:v16 error:&v39];
          v10 = v39;

          if (v19)
          {
            goto LABEL_18;
          }

          v20 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_fault_impl(&dword_25C69C000, v20, OS_LOG_TYPE_FAULT, "Error removing attachment file: %@", buf, 0xCu);
          }
        }

        else
        {
          v20 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v47 = v15;
            _os_log_fault_impl(&dword_25C69C000, v20, OS_LOG_TYPE_FAULT, "Failed to get attachment folder URL for object ID: %@", buf, 0xCu);
          }

          v10 = v17;
        }

LABEL_18:
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v12);
  }

  v21 = [(NoteContext *)v33 newFetchRequestForNotes];
  v22 = [v35 predicateForNotes];
  [v21 setPredicate:v22];

  v23 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v21];
  v24 = [(NoteContext *)v33 managedObjectContext];
  v38 = v10;
  v25 = [v24 executeRequest:v23 error:&v38];
  v26 = v38;

  if (v26)
  {
    v27 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [NoteContext forceDeleteAccount:];
    }
  }

  v28 = [(NoteContext *)v33 managedObjectContext];
  [v28 deleteObject:v35];

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)deleteAccount:(id)a3
{
  v4 = a3;
  v5 = [(NoteContext *)self localAccount];

  v6 = v5 != v4 && [(NoteContext *)self forceDeleteAccount:v4];
  return v6;
}

- (BOOL)deleteStore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NoteContext *)self localStore];

  if (v5 != v4)
  {
    v6 = [(NoteContext *)self allNotesInCollection:v4];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(NoteContext *)self deleteNoteRegardlessOfConstraints:*(*(&v14 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v11 = [(NoteContext *)self managedObjectContext];
    [v11 deleteObject:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5 != v4;
}

- (BOOL)shouldDisableLocalStore
{
  if ([(NoteContext *)self countOfStores]< 2)
  {
    return 0;
  }

  v3 = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:v3]== 0;

  return v4;
}

- (BOOL)hasMultipleEnabledStores
{
  v3 = [(NoteContext *)self countOfStores];
  if (v3 > 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v5 = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:v5]!= 0;

  return v4;
}

- (id)_notePropertyObjectForKey:(id)a3
{
  v4 = a3;
  notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  if (!notePropertyObjectsRealized)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_notePropertyObjectsRealized;
    self->_notePropertyObjectsRealized = v6;

    notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  }

  v8 = [(NSMutableDictionary *)notePropertyObjectsRealized objectForKey:v4];
  if (v8)
  {
    v9 = v8;
    v10 = [(NoteContext *)self managedObjectContext];
    [v10 refreshObject:v9 mergeChanges:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE428]);
    v12 = MEMORY[0x277CBE408];
    v13 = [(NoteContext *)self managedObjectContext];
    v14 = [v12 entityForName:@"Property" inManagedObjectContext:v13];
    [v11 setEntity:v14];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", v4];
    [v11 setPredicate:v15];
    [v11 setFetchLimit:1];
    v16 = [(NoteContext *)self managedObjectContext];
    v21 = 0;
    v17 = [v16 executeFetchRequest:v11 error:&v21];
    v18 = v21;

    if (v18)
    {
      v19 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [NoteContext _notePropertyObjectForKey:];
      }
    }

    v9 = [v17 lastObject];
    if (v9)
    {
      [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:v9 forKey:v4];
    }
  }

  return v9;
}

- (void)setPropertyValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NoteContext *)self _notePropertyObjectForKey:v6];
  if (!v7)
  {
    v8 = MEMORY[0x277CBE408];
    v9 = [(NoteContext *)self managedObjectContext];
    v7 = [v8 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:v9];

    [v7 setPropertyKey:v6];
    [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:v7 forKey:v6];
  }

  [v7 setPropertyValue:v10];
}

- (id)propertyValueForKey:(id)a3
{
  v3 = [(NoteContext *)self _notePropertyObjectForKey:a3];
  v4 = [v3 propertyValue];

  return v4;
}

- (id)getNextIdObject
{
  if (!self->_nextIdContext)
  {
    v3 = [objc_opt_class() persistentStoreCoordinator];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBE440]);
      nextIdContext = self->_nextIdContext;
      self->_nextIdContext = v4;

      [(NSManagedObjectContext *)self->_nextIdContext setPersistentStoreCoordinator:v3];
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBE428]);
  v7 = [MEMORY[0x277CBE408] entityForName:@"NextId" inManagedObjectContext:self->_nextIdContext];
  [v6 setEntity:v7];
  v8 = self->_nextIdContext;
  v39 = 0;
  v9 = [(NSManagedObjectContext *)v8 executeFetchRequest:v6 error:&v39];
  v10 = v39;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NoteContext getNextIdObject];
    }
  }

  if ([v9 count])
  {
    v12 = [v9 lastObject];
    v13 = v10;
  }

  else
  {
    v37 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"NextId" inManagedObjectContext:self->_nextIdContext];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    v15 = MEMORY[0x277CBE408];
    v16 = [(NoteContext *)self managedObjectContext];
    v17 = [v15 entityForName:@"Note" inManagedObjectContext:v16];

    v36 = v17;
    [v14 setEntity:v17];
    [v14 setResultType:2];
    v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"integerId"];
    v19 = MEMORY[0x277CCA9C0];
    v35 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    v21 = [v19 expressionForFunction:@"max:" arguments:v20];

    v22 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v22 setName:@"maxId"];
    v34 = v21;
    [v22 setExpression:v21];
    [v22 setExpressionResultType:200];
    v23 = [MEMORY[0x277CBEA60] arrayWithObject:v22];
    [v14 setPropertiesToFetch:v23];

    v24 = [(NoteContext *)self managedObjectContext];
    v38 = v10;
    v25 = [v24 executeFetchRequest:v14 error:&v38];
    v13 = v38;

    if (v13 || !v25 || ![v25 count])
    {
      v26 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [NoteContext getNextIdObject];
      }
    }

    v27 = [v25 lastObject];
    v28 = [v27 valueForKey:@"maxId"];
    v29 = [v28 unsignedIntValue];

    v30 = 10 * (v29 / 0xA) + 10;
    if (v30 > 0xFFFFFFF5)
    {
      v30 = 0;
    }

    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = 10;
    }

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31];
    v12 = v37;
    [v37 setValue:v32 forKey:@"counter"];
  }

  return v12;
}

- (id)nextIndex
{
  v21[4] = *MEMORY[0x277D85DE8];
  nextId = self->_nextId;
  if (!nextId || (HIDWORD(v4) = -858993459 * [(NSNumber *)nextId unsignedIntValue], LODWORD(v4) = HIDWORD(v4), (v4 >> 1) <= 0x19999999))
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    [(ICExclusiveLock *)self->_nextIdLock lock];
    v6 = [(NoteContext *)self getNextIdObject];
    v7 = [v6 valueForKey:@"counter"];
    v8 = self->_nextId;
    self->_nextId = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_nextId, "unsignedIntValue") + 10}];
    [v6 setValue:v9 forKey:@"counter"];

    nextIdContext = self->_nextIdContext;
    v21[0] = 0;
    v11 = [(NSManagedObjectContext *)nextIdContext save:v21];
    v12 = v21[0];
    if (!v11)
    {
      v13 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [v12 userInfo];
        objc_claimAutoreleasedReturnValue();
        [NoteContext nextIndex];
      }
    }

    [(NSManagedObjectContext *)self->_nextIdContext reset];

    [(ICExclusiveLock *)self->_nextIdLock unlock];
    objc_sync_exit(v5);
  }

  v15 = self->_nextId;
  p_nextId = &self->_nextId;
  v16 = [(NSNumber *)v15 copy];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v16, "unsignedIntValue") + 1}];
  v18 = *p_nextId;
  *p_nextId = v17;

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)backupsDirectoryURL
{
  v2 = [a1 urlForPersistentStore];
  v3 = [v2 URLByDeletingLastPathComponent];
  v4 = [v3 URLByAppendingPathComponent:@"Backups" isDirectory:1];

  return v4;
}

+ (void)backupPersistentStore:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[NoteContext backupPersistentStore:];
  }

  v6 = [a1 urlForPersistentStore];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 stringFromDate:v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v11 UUIDString];
  v49 = v9;
  v13 = [v10 stringWithFormat:@"Backup-%@-%@", v9, v12];

  v14 = [a1 backupsDirectoryURL];
  v48 = v13;
  v15 = [v14 URLByAppendingPathComponent:v13 isDirectory:1];

  v16 = [v6 lastPathComponent];
  v51 = [v15 URLByAppendingPathComponent:v16 isDirectory:0];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v55 = 0;
  LOBYTE(v11) = [v17 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v55];
  v18 = v55;

  if ((v11 & 1) == 0)
  {
    v19 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    v18 = 0;
  }

  v20 = [a1 storeOptions];
  v21 = [a1 storeOptions];
  v22 = *MEMORY[0x277CBE2E8];
  v54 = v18;
  v50 = v4;
  v23 = [v4 replacePersistentStoreAtURL:v51 destinationOptions:v20 withPersistentStoreFromURL:v6 sourceOptions:v21 storeType:v22 error:&v54];
  v24 = v54;

  v25 = os_log_create("com.apple.notes", "HTML");
  v26 = v25;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v57 = v6;
    v58 = 2112;
    v59 = v51;
    _os_log_impl(&dword_25C69C000, v26, OS_LOG_TYPE_INFO, "Backed up old persistent store from %@ to %@", buf, 0x16u);
  }

  v53 = v24;
  v27 = [v6 checkResourceIsReachableAndReturnError:&v53];
  v28 = v53;

  v26 = os_log_create("com.apple.notes", "HTML");
  v29 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
  v30 = v50;
  if (v27)
  {
    if (v29)
    {
      +[NoteContext backupPersistentStore:];
    }

    v31 = [a1 storeOptions];
    v52 = v28;
    v32 = [v50 destroyPersistentStoreAtURL:v6 withType:v22 options:v31 error:&v52];
    v24 = v52;

    v33 = os_log_create("com.apple.notes", "HTML");
    v26 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        +[NoteContext backupPersistentStore:];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    v34 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      +[NoteContext backupPersistentStore:];
    }

    v35 = [MEMORY[0x277CCAA00] defaultManager];
    [v35 removeItemAtURL:v6 error:0];

    v36 = [v6 lastPathComponent];
    v37 = [v36 stringByDeletingPathExtension];
    v26 = [v37 stringByAppendingPathExtension:@"sqlite-wal"];

    v38 = [v6 URLByDeletingLastPathComponent];
    v39 = [v38 URLByAppendingPathComponent:v26 isDirectory:0];

    v40 = [MEMORY[0x277CCAA00] defaultManager];
    [v40 removeItemAtURL:v39 error:0];

    v41 = [v6 lastPathComponent];
    v42 = [v41 stringByDeletingPathExtension];
    v43 = [v42 stringByAppendingPathExtension:@"sqlite-shm"];

    v44 = [v6 URLByDeletingLastPathComponent];
    v45 = [v44 URLByAppendingPathComponent:v43 isDirectory:0];

    v46 = [MEMORY[0x277CCAA00] defaultManager];
    [v46 removeItemAtURL:v45 error:0];

LABEL_26:
    v30 = v50;
    goto LABEL_27;
  }

  if (v29)
  {
    +[NoteContext backupPersistentStore:];
  }

  v24 = v28;
LABEL_27:

  v47 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isTooLowOnDiskSpace
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [a1 urlForPersistentStore];
  v3 = [v2 URLByDeletingPathExtension];
  v4 = [v3 URLByAppendingPathExtension:@"sqlite-wal"];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v2 URLByDeletingLastPathComponent];
  v7 = [v6 path];
  v30 = 0;
  v8 = [v5 attributesOfFileSystemForPath:v7 error:&v30];
  v9 = v30;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(NoteContext *)v2];
    }

    v11 = 0;
  }

  else
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
    v11 = [v10 unsignedIntegerValue];
  }

  v29 = 0;
  v12 = *MEMORY[0x277CBE838];
  v28 = 0;
  v13 = [v2 getResourceValue:&v29 forKey:v12 error:&v28];
  v14 = v29;
  v15 = v28;

  if (v13)
  {
    v16 = [v14 unsignedIntegerValue];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }

    v16 = 0;
  }

  v26 = 0;
  v27 = 0;
  v18 = [v4 getResourceValue:&v27 forKey:v12 error:&v26];
  v19 = v27;

  v20 = v26;
  if (v18)
  {
    v16 += [v19 unsignedIntegerValue];
  }

  else if ([v20 code] != 260)
  {
    v21 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }
  }

  v22 = 3 * v16 + 0x100000;
  v23 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v32 = v22;
    v33 = 2048;
    v34 = v11;
    _os_log_impl(&dword_25C69C000, v23, OS_LOG_TYPE_INFO, "Minimum free space to open database: %lu, current free space: %lu", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11 < v22;
}

+ (BOOL)isDataProtectionError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  v6 = *MEMORY[0x277CBE2C8];
  if ([v5 isEqualToString:*MEMORY[0x277CBE2C8]])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  }

  else
  {
    v8 = [v3 userInfo];
    v7 = [v8 objectForKeyedSubscript:v6];
  }

  v9 = *MEMORY[0x277CCA5B8];
  if ([v5 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  }

  else
  {
    v11 = [v3 userInfo];
    v10 = [v11 objectForKeyedSubscript:v9];
  }

  v12 = [v7 intValue] == 23 || objc_msgSend(v10, "intValue") == 1;

  return v12;
}

- (void)setHasPriorityInSaveConflicts:(BOOL)a3
{
  v3 = a3;
  self->_hasPriorityInSaveConflicts = a3;
  v5 = [(NoteContext *)self managedObjectContext];
  if (v3)
  {
    v4 = +[NoteResurrectionMergePolicy sharedNoteResurrectionMergePolicy];
    [v5 setMergePolicy:v4];
  }

  else
  {
    [v5 setMergePolicy:*MEMORY[0x277CBE1D0]];
  }
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v2 = objc_opt_class();

  return [v2 persistentStoreCoordinator];
}

+ (id)newManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  v4 = [a1 persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:v4];

  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  [v3 setUndoManager:0];
  return v3;
}

- (void)managedObjectContextWillSaveNotification:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [v6 userInfo];
  [v4 postNotificationName:@"NoteContextWillSaveNotification" object:self userInfo:v5];

  if (self->_logChanges)
  {
    [(NoteContext *)self trackChanges:v6];
  }
}

- (void)trackChanges:(id)a3
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = [(NoteContext *)self managedObjectContext];
  v5 = [v4 deletedObjects];
  v95 = [v5 mutableCopy];

  v6 = [(NoteContext *)self managedObjectContext];
  v7 = [v6 updatedObjects];
  v8 = [v7 mutableCopy];

  v9 = [(NoteContext *)self managedObjectContext];
  v10 = [v9 insertedObjects];
  v93 = [v10 mutableCopy];

  v11 = MEMORY[0x277CBE408];
  v98 = self;
  v12 = [(NoteContext *)self managedObjectContext];
  v13 = [v11 entityForName:@"Note" inManagedObjectContext:v12];

  v102 = [MEMORY[0x277CBEB58] set];
  v99 = [MEMORY[0x277CBEB58] set];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v115 objects:v122 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v116;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v116 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v115 + 1) + 8 * i);
        v20 = [v19 entity];
        v21 = [v20 isEqual:v13];

        if (v21)
        {
          v22 = v19;
          if ([v22 isMarkedForDeletion])
          {
            [v99 addObject:v22];
          }

          v23 = [MEMORY[0x277CBEA60] arrayWithObject:@"store"];
          v24 = [v22 committedValuesForKeys:v23];
          v25 = [v24 objectForKey:@"store"];

          v26 = [v22 store];

          if (v25 != v26)
          {
            [v102 addObject:v22];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v115 objects:v122 count:16];
    }

    while (v16);
  }

  [v14 minusSet:v99];
  v27 = v95;
  [v95 unionSet:v99];
  [v14 minusSet:v102];
  [v95 unionSet:v102];
  [v93 unionSet:v102];
  v97 = v14;
  if ([v93 count])
  {
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v28 = v93;
    v29 = [v28 countByEnumeratingWithState:&v111 objects:v121 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v112;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v112 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v111 + 1) + 8 * j);
          v34 = [v33 entity];
          v35 = [v34 isEqual:v13];

          if (v35)
          {
            v36 = v33;
            v37 = [v36 store];
            v38 = v37;
            if (v37)
            {
              v39 = [v37 objectID];
              v40 = [v100 objectForKey:v39];

              if (!v40)
              {
                v40 = [(NoteContext *)v98 noteChangeWithType:0 store:v38];
                v41 = [v38 objectID];
                [v100 setObject:v40 forKey:v41];
              }

              v42 = [v40 noteIntegerIds];
              v43 = [v36 integerId];
              [v42 addObject:v43];

              v14 = v97;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v111 objects:v121 count:16];
      }

      while (v30);
    }

    v27 = v95;
  }

  if ([v14 count])
  {
    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v45 = v14;
    v46 = [v45 countByEnumeratingWithState:&v107 objects:v120 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v108;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v108 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v107 + 1) + 8 * k);
          v51 = [v50 entity];
          v52 = [v51 isEqual:v13];

          if (v52)
          {
            v53 = v50;
            v54 = [v53 store];
            v55 = [v54 objectID];
            v56 = [v44 objectForKey:v55];

            if (!v56)
            {
              v57 = [v53 store];
              v56 = [(NoteContext *)v98 noteChangeWithType:1 store:v57];

              v58 = [v56 store];
              v59 = [v58 objectID];
              [v44 setObject:v56 forKey:v59];
            }

            v60 = [v56 noteIntegerIds];
            v61 = [v53 integerId];
            [v60 addObject:v61];

            v62 = [v53 serverId];

            if (v62)
            {
              v63 = [v56 noteServerIds];
              v64 = [v53 serverId];
              [v63 addObject:v64];
            }

            if ([v53 serverIntId])
            {
              v65 = [v56 noteServerIntIds];
              v66 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v53, "serverIntId")}];
              [v65 addObject:v66];
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v107 objects:v120 count:16];
      }

      while (v47);
    }

    v27 = v95;
    v14 = v97;
  }

  if ([v27 count])
  {
    v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v67 = [MEMORY[0x277CCAB98] defaultCenter];
    [v67 postNotificationName:@"NoteContextDeletedNotesNotification" object:v27];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v68 = v27;
    v69 = [v68 countByEnumeratingWithState:&v103 objects:v119 count:16];
    if (!v69)
    {
      goto LABEL_67;
    }

    v70 = v69;
    v71 = *v104;
    v96 = v68;
    while (1)
    {
      for (m = 0; m != v70; ++m)
      {
        if (*v104 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v103 + 1) + 8 * m);
        v74 = [v73 entity];
        v75 = [v74 isEqual:v13];

        if (v75)
        {
          v76 = v73;
          v77 = [MEMORY[0x277CBEA60] arrayWithObject:@"store"];
          v78 = [v76 committedValuesForKeys:v77];

          v79 = [v78 objectForKey:@"store"];
          if (v79)
          {
            v80 = [MEMORY[0x277CBEB68] null];
            if (v79 == v80)
            {
              goto LABEL_63;
            }

            v81 = [v68 containsObject:v79];

            if ((v81 & 1) == 0)
            {
              v82 = [v79 objectID];
              v80 = [v101 objectForKey:v82];

              if (!v80)
              {
                v80 = [(NoteContext *)v98 noteChangeWithType:2 store:v79];
                v83 = [v80 store];
                v84 = [v83 objectID];
                [v101 setObject:v80 forKey:v84];
              }

              v85 = [v80 noteIntegerIds];
              v86 = [v76 integerId];
              [v85 addObject:v86];

              v87 = [v76 serverId];

              if (v87)
              {
                v88 = [v80 noteServerIds];
                v89 = [v76 serverId];
                [v88 addObject:v89];
              }

              if ([v76 serverIntId])
              {
                v90 = [v80 noteServerIntIds];
                v91 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v76, "serverIntId")}];
                [v90 addObject:v91];
              }

              v68 = v96;
LABEL_63:
            }
          }

          continue;
        }
      }

      v70 = [v68 countByEnumeratingWithState:&v103 objects:v119 count:16];
      if (!v70)
      {
LABEL_67:

        v27 = v95;
        v14 = v97;
        break;
      }
    }
  }

  v92 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpLocks
{
  [(ICExclusiveLock *)self->_nextIdLock unlock];
  [(ICExclusiveLock *)self->_objectCreationLock unlock];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NoteContextDidUnlockObjectCreationNotification" object:self];
}

- (void)updateForRecentChanges
{
  v2 = [(NoteContext *)self mocUpdater];
  [v2 requestUpdate];
}

- (void)postNotesChangedExternally
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NoteContextChangedElsewhereNotification" object:self userInfo:0];
}

+ (id)mainContextObjectFromObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 sharedContext];
    v6 = [v5 managedObjectContext];

    v7 = [v4 managedObjectContext];

    v8 = v4;
    if (v7 != v6)
    {
      v9 = [v4 objectID];
      v8 = [v6 existingObjectWithID:v9 error:0];

      v10 = [v8 managedObjectContext];

      if (v10 != v6)
      {
        v11 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(NoteContext(SharedContext) *)v4 mainContextObjectFromObject:v11];
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setUpLocalAccountAndStore
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUpLastIndexTid
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)batchFaultNotes:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_25C69C000, v1, OS_LOG_TYPE_FAULT, "Can't batch fault objects: %@, with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteNote:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Trying to delete an object from an HTML account, but the object has a nil object ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveSilently:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveSilently:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveSilently:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)visibleNotesForIntegerIds:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)noteForGUID:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)storeForExternalIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allStores
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)faultedInStoresForAccounts:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)countOfStores
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)allAccountsAsFaults:prefechedRelationshipKeyPaths:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allAccountsAsFaults:prefechedRelationshipKeyPaths:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accountForAccountId:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)localAccount
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Serious error: should have exactly one default notes account but have %lu instead.  Recovering.", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)forceDeleteAccount:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notePropertyObjectForKey:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getNextIdObject
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)nextIndex
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Error: Couldn't save next ID: %@, %@", v4, v5);
}

+ (void)backupPersistentStore:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Failed to create database backup directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)backupPersistentStore:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Error backing up old persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)backupPersistentStore:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)backupPersistentStore:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Error destroying persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)backupPersistentStore:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isTooLowOnDiskSpace
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Error getting file size for write-ahead log: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedObjectContext
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__NoteContext_managedObjectModel__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Unexpected error while opening database %@, %@", v4, v5);
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9(&dword_25C69C000, v0, v1, "Error trying to load persistent store again: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end