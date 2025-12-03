@interface NoteContext
+ (BOOL)databaseIsCorrupt:(id)corrupt;
+ (BOOL)isDataProtectionError:(id)error;
+ (BOOL)isTooLowOnDiskSpace;
+ (BOOL)shouldLogIndexing;
+ (NSFetchRequest)newFetchRequestForNotes;
+ (NSManagedObjectModel)managedObjectModel;
+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context fetchLimit:(unint64_t)limit;
+ (id)backupsDirectoryURL;
+ (id)generateGUID;
+ (id)mainContextObjectFromObject:(id)object;
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
+ (unint64_t)countOfVisibleNotesInCollection:(id)collection;
+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)content;
+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate includingNoteWithoutBodyContent:(BOOL)content context:(id)context;
+ (void)backupPersistentStore:(id)store;
+ (void)clearTestsNotesRootPath;
+ (void)isTooLowOnDiskSpace;
+ (void)removeConflictingSqliteAndIdxFiles;
+ (void)removeSqliteAndIdxFiles;
- (BOOL)deleteAccount:(id)account;
- (BOOL)deleteStore:(id)store;
- (BOOL)forceDeleteAccount:(id)account;
- (BOOL)hasMultipleEnabledStores;
- (BOOL)save:(id *)save;
- (BOOL)saveSilently:(id *)silently;
- (BOOL)setUpCoreDataStack;
- (BOOL)setUpLastIndexTid;
- (BOOL)setUpLocalAccountAndStore;
- (BOOL)shouldDisableLocalStore;
- (NSManagedObjectContext)managedObjectContext;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NoteContext)init;
- (NoteContext)initWithAccountUtilities:(id)utilities inMigrator:(BOOL)migrator isMainContext:(BOOL)context usePrivateQueue:(BOOL)queue;
- (NoteContext)initWithPrivateQueue;
- (id)_notePropertyObjectForKey:(id)key;
- (id)accountForAccountId:(id)id;
- (id)allNotes;
- (id)allNotesInCollection:(id)collection;
- (id)allNotesMatchingPredicate:(id)predicate;
- (id)allNotesWithoutBodiesInCollection:(id)collection;
- (id)allStores;
- (id)collectionForInfo:(id)info;
- (id)collectionForObjectID:(id)d;
- (id)defaultStoreForNewNote;
- (id)faultedInStoresForAccounts:(id)accounts;
- (id)getNextIdObject;
- (id)initForMainContext;
- (id)initForMigrator;
- (id)liveNotesNeedingBodiesPredicate;
- (id)localAccount;
- (id)localStore;
- (id)mostRecentlyModifiedNoteInCollection:(id)collection;
- (id)newFRCForAccountsWithDelegate:(id)delegate;
- (id)newFRCForFetchRequest:(id)request delegate:(id)delegate performFetch:(BOOL)fetch;
- (id)newFRCForStoresWithDelegate:(id)delegate;
- (id)newFetchRequestForNotes;
- (id)newlyAddedAccount;
- (id)newlyAddedAttachment;
- (id)newlyAddedNote;
- (id)newlyAddedNoteWithGUID:(id)d;
- (id)newlyAddedStore;
- (id)newlyCreatedNoteFromDefaultStore;
- (id)nextIndex;
- (id)noteForGUID:(id)d;
- (id)noteForObjectID:(id)d;
- (id)notesForIntegerIds:(id)ids;
- (id)propertyValueForKey:(id)key;
- (id)storeForExternalIdentifier:(id)identifier;
- (id)storeForObjectID:(id)d;
- (id)storesInCollection:(id)collection;
- (id)visibleNoteForObjectID:(id)d;
- (id)visibleNotesForIntegerIds:(id)ids;
- (id)visibleNotesPredicate;
- (unint64_t)countOfNotes;
- (unint64_t)countOfNotesInCollection:(id)collection;
- (unint64_t)countOfNotesMatchingPredicate:(id)predicate;
- (unint64_t)countOfStores;
- (unint64_t)countOfVisibleNotesInCollection:(id)collection;
- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate;
- (void)_createLocalAccount:(id *)account andStore:(id *)store;
- (void)allStores;
- (void)batchFaultNotes:(id)notes;
- (void)cleanUpLocks;
- (void)countOfStores;
- (void)dealloc;
- (void)deleteChanges:(id)changes;
- (void)deleteNote:(id)note;
- (void)deleteNoteRegardlessOfConstraints:(id)constraints;
- (void)forceSetUpUniqueObjects;
- (void)getNextIdObject;
- (void)handleMigration;
- (void)invalidate;
- (void)localAccount;
- (void)managedObjectContext;
- (void)managedObjectContextWillSaveNotification:(id)notification;
- (void)nextIndex;
- (void)postNotesChangedExternally;
- (void)setHasPriorityInSaveConflicts:(BOOL)conflicts;
- (void)setPropertyValue:(id)value forKey:(id)key;
- (void)setUpLastIndexTid;
- (void)setUpLocalAccountAndStore;
- (void)setUpUniqueObjects;
- (void)sortNotes:(id)notes;
- (void)tearDownCoreDataStack;
- (void)trackChanges:(id)changes;
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
  v5 = NoteStoreCopyPath(self, a2);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v5];

  if (v4)
  {
    [self removeSqliteAndIdxFiles];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextWillSetUpCoreDataStackNotification" object:self];

  [objc_opt_class() removeConflictingSqliteAndIdxFiles];
  managedObjectModel = [objc_opt_class() managedObjectModel];

  if (managedObjectModel && ([objc_opt_class() persistentStoreCoordinator], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (-[NoteContext managedObjectContext](self, "managedObjectContext"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __33__NoteContext_setUpCoreDataStack__block_invoke;
    v23[3] = &unk_2799AC828;
    v23[4] = self;
    v7 = MEMORY[0x25F88B080](v23);
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    concurrencyType = [managedObjectContext concurrencyType];

    if (concurrencyType)
    {
      managedObjectContext2 = [(NoteContext *)self managedObjectContext];
      [managedObjectContext2 performBlockAndWait:v7];
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
      managedObjectContext3 = [(NoteContext *)self managedObjectContext];
      v17 = [v15 initWithStore:0 context:managedObjectContext3];
      [(NoteContext *)self setMocUpdater:v17];

      v18 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_postNotesChangedExternally delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
      [(NoteContext *)self setExternalChangeNotificationDelayer:v18];
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = *MEMORY[0x277CBE1C0];
    managedObjectContext4 = [(NoteContext *)self managedObjectContext];
    [defaultCenter2 addObserver:self selector:sel_managedObjectContextWillSaveNotification_ name:v20 object:managedObjectContext4];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

    return 1;
  }

  else
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

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
  pathForPersistentStore = [self pathForPersistentStore];
  v4 = [v2 fileURLWithPath:pathForPersistentStore];

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
  fileProtectionOption = [objc_opt_class() fileProtectionOption];
  v8[3] = *MEMORY[0x277CBE210];
  v9[2] = fileProtectionOption;
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
  block[4] = self;
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

  persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
  if (persistentStoreCoordinator)
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

    [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  [(NSManagedObjectContext *)self->_managedObjectContext setUndoManager:0];
  [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
  [(NSManagedObjectContext *)self->_managedObjectContext setStalenessInterval:0.0];
  [(NSManagedObjectContext *)self->_managedObjectContext _setDelegate:self];
  if (self->_managedObjectContext)
  {
    searchIndexerDataSource = [objc_opt_class() searchIndexerDataSource];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ShouldLogIndexing"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)databaseIsCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  userInfo = [corruptCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CBE2C8]];

  if (v5)
  {
    v6 = [v5 intValue] == 11;
  }

  else
  {
    v6 = 0;
  }

  if ([corruptCopy code] == 259)
  {
    domain = [corruptCopy domain];
    v8 = [domain isEqual:*MEMORY[0x277CCA050]];

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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_createLocalAccount:(id *)account andStore:(id *)store
{
  obj = [(NoteContext *)self newlyAddedAccount];
  accountUtilities = [(NoteContext *)self accountUtilities];
  localAccountDisplayName = [accountUtilities localAccountDisplayName];
  [obj setName:localAccountDisplayName];

  [obj setAccountIdentifier:@"local://local/account"];
  newlyAddedStore = [(NoteContext *)self newlyAddedStore];
  [newlyAddedStore setName:@"LOCAL_NOTES_STORE"];
  [newlyAddedStore setExternalIdentifier:@"local://local/store"];
  [newlyAddedStore setAccount:obj];
  [obj setDefaultStore:newlyAddedStore];
  if (account)
  {
    objc_storeStrong(account, obj);
  }

  if (store)
  {
    objc_storeStrong(store, newlyAddedStore);
  }
}

- (BOOL)setUpLocalAccountAndStore
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Account" inManagedObjectContext:managedObjectContext];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
  [v3 setPredicate:v7];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v35 = 0;
  v9 = [managedObjectContext2 executeFetchRequest:v3 error:&v35];
  v10 = v35;

  v11 = v10 == 0;
  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext setUpLocalAccountAndStore];
    }

    managedObjectContext3 = v12;
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

    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v30 = 0;
    v9 = [managedObjectContext3 executeFetchRequest:v3 error:&v30];
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
    lastObject = [v9 lastObject];
    v25 = *p_localAccount;
    *p_localAccount = lastObject;

    defaultStore = [*p_localAccount defaultStore];
    v27 = *p_localStore;
    *p_localStore = defaultStore;
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
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Property" inManagedObjectContext:managedObjectContext];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", @"LastTransactionID"];
  [v3 setPredicate:v7];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v36 = 0;
  v9 = [managedObjectContext2 executeFetchRequest:v3 error:&v36];
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
              managedObjectContext3 = [(NoteContext *)self managedObjectContext];
              [managedObjectContext3 deleteObject:v24];
            }

            v21 = 1;
          }

          v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v20);
      }

      managedObjectContext4 = [(NoteContext *)self managedObjectContext];
      v31 = 0;
      v9 = [managedObjectContext4 executeFetchRequest:v3 error:&v31];
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
    managedObjectContext5 = [(NoteContext *)self managedObjectContext];
    v12 = [v27 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:managedObjectContext5];

    [v12 setPropertyKey:@"LastTransactionID"];
    v10 = 0;
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)forceSetUpUniqueObjects
{
  persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
  urlForPersistentStore = [objc_opt_class() urlForPersistentStore];
  v8 = [persistentStoreCoordinator persistentStoreForURL:urlForPersistentStore];

  metadata = [v8 metadata];
  v6 = [metadata mutableCopy];
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

- (NoteContext)initWithAccountUtilities:(id)utilities inMigrator:(BOOL)migrator isMainContext:(BOOL)context usePrivateQueue:(BOOL)queue
{
  utilitiesCopy = utilities;
  v21.receiver = self;
  v21.super_class = NoteContext;
  v12 = [(NoteContext *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_isMainContext = context;
    v12->_inMigrator = migrator;
    objc_storeStrong(&v12->_accountUtilities, utilities);
    v13->_usePrivateQueue = queue;
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

- (id)newFRCForAccountsWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[NoteContext newFetchRequestForAccounts];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:delegateCopy performFetch:1];

  return v6;
}

- (id)newFRCForStoresWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[NoteContext newFetchRequestForStores];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:delegateCopy performFetch:1];

  return v6;
}

- (id)newFRCForFetchRequest:(id)request delegate:(id)delegate performFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  delegateCopy = delegate;
  requestCopy = request;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v11 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:requestCopy managedObjectContext:managedObjectContext sectionNameKeyPath:0 cacheName:0];

  [v11 setDelegate:delegateCopy];
  if (fetchCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke;
    v13[3] = &unk_2799AC828;
    v14 = v11;
    [managedObjectContext performBlockAndWait:v13];
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
  defaultNotesSortDescriptors = [self defaultNotesSortDescriptors];
  [(NSFetchRequest *)v3 setSortDescriptors:defaultNotesSortDescriptors];

  return v3;
}

- (void)sortNotes:(id)notes
{
  notesCopy = notes;
  defaultNotesSortDescriptors = [objc_opt_class() defaultNotesSortDescriptors];
  [notesCopy sortUsingDescriptors:defaultNotesSortDescriptors];
}

- (void)batchFaultNotes:(id)notes
{
  notesCopy = notes;
  if ([notesCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Note"];
    [v5 setReturnsObjectsAsFaults:0];
    notesCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", notesCopy];
    [v5 setPredicate:notesCopy];

    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v11 = 0;
    v8 = [managedObjectContext executeFetchRequest:v5 error:&v11];
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

- (id)newlyAddedNoteWithGUID:(id)d
{
  v4 = MEMORY[0x277CBE408];
  dCopy = d;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:@"Note" inManagedObjectContext:managedObjectContext];

  v8 = MEMORY[0x277CBE408];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v10 = [v8 insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:managedObjectContext2];
  [v7 setBody:v10];

  nextIndex = [(NoteContext *)self nextIndex];
  [v7 setIntegerId:nextIndex];

  [v7 setGuid:dCopy];

  return v7;
}

- (id)newlyCreatedNoteFromDefaultStore
{
  newlyAddedNote = [(NoteContext *)self newlyAddedNote];
  date = [MEMORY[0x277CBEAA8] date];
  [newlyAddedNote setCreationDate:date];

  ic_modificationDateForNoteBeingEdited = [MEMORY[0x277CBEAA8] ic_modificationDateForNoteBeingEdited];
  [newlyAddedNote setModificationDate:ic_modificationDateForNoteBeingEdited];

  [newlyAddedNote setContent:&stru_286E2F780];
  [newlyAddedNote setTitle:0];
  defaultStoreForNewNote = [(NoteContext *)self defaultStoreForNewNote];
  [newlyAddedNote setStore:defaultStoreForNewNote];

  return newlyAddedNote;
}

- (id)newlyAddedAttachment
{
  v3 = objc_opt_class();
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [v3 newlyAddedAttachmentInContext:managedObjectContext];

  return v5;
}

- (id)collectionForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)storeForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteNote:(id)note
{
  noteCopy = note;
  objectID = [noteCopy objectID];
  if (objectID)
  {
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [managedObjectContext existingObjectWithID:objectID error:0];

    if (([noteCopy isInserted] & 1) == 0)
    {
      if (v7)
      {
        store = [v7 store];
        objectID2 = [store objectID];
        v10 = [(NoteContext *)self storeForObjectID:objectID2];

        if (v10)
        {
          managedObjectContext2 = [(NoteContext *)self managedObjectContext];
          account = [v10 account];
          objectID3 = [account objectID];
          v14 = [managedObjectContext2 existingObjectWithID:objectID3 error:0];

          if (v14)
          {
            shouldMarkNotesAsDeleted = [v14 shouldMarkNotesAsDeleted];

            if (shouldMarkNotesAsDeleted)
            {
              [noteCopy markForDeletion];
LABEL_13:

              goto LABEL_14;
            }
          }

          else
          {
            managedObjectContext3 = [(NoteContext *)self managedObjectContext];
            [managedObjectContext3 deleteObject:v10];
          }
        }
      }
    }

    [(NoteContext *)self deleteNoteRegardlessOfConstraints:noteCopy];
    goto LABEL_13;
  }

  v16 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NoteContext deleteNote:];
  }

LABEL_14:
}

- (void)deleteNoteRegardlessOfConstraints:(id)constraints
{
  constraintsCopy = constraints;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  [managedObjectContext deleteObject:constraintsCopy];
}

- (void)deleteChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        managedObjectContext = [(NoteContext *)self managedObjectContext];
        [managedObjectContext deleteObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  [managedObjectContext reset];
}

- (BOOL)save:(id *)save
{
  if (![(NSManagedObjectContext *)self->_managedObjectContext hasChanges])
  {
    return 1;
  }

  if (![(NoteContext *)self saveSilently:save])
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

- (BOOL)saveSilently:(id *)silently
{
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NoteContext saveSilently:];
  }

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v7 = [managedObjectContext save:&v13];
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

  if (silently)
  {
    v11 = v8;
    *silently = v8;
  }

  return v7;
}

- (unint64_t)countOfVisibleNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self countOfVisibleNotesMatchingPredicate:predicateForNotes];

  return v5;
}

+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)content
{
  contentCopy = content;
  predicateForNotes = [contentCopy predicateForNotes];
  managedObjectContext = [contentCopy managedObjectContext];

  v7 = [self countOfVisibleNotesMatchingPredicate:predicateForNotes includingNoteWithoutBodyContent:1 context:managedObjectContext];
  return v7;
}

+ (unint64_t)countOfVisibleNotesInCollection:(id)collection
{
  collectionCopy = collection;
  predicateForNotes = [collectionCopy predicateForNotes];
  managedObjectContext = [collectionCopy managedObjectContext];

  v7 = [self countOfVisibleNotesMatchingPredicate:predicateForNotes context:managedObjectContext];
  return v7;
}

+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context fetchLimit:(unint64_t)limit
{
  sortedCopy = sorted;
  predicateCopy = predicate;
  contextCopy = context;
  if (predicateCopy)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = MEMORY[0x277CBEA60];
    visibleNotesPredicate = [self visibleNotesPredicate];
    v15 = [v13 arrayWithObjects:{visibleNotesPredicate, predicateCopy, 0}];
    visibleNotesPredicate2 = [v12 andPredicateWithSubpredicates:v15];
  }

  else
  {
    visibleNotesPredicate2 = [self visibleNotesPredicate];
  }

  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:visibleNotesPredicate2];
  if (sortedCopy)
  {
    defaultNotesSortDescriptors = [self defaultNotesSortDescriptors];
    [newFetchRequestForNotes setSortDescriptors:defaultNotesSortDescriptors];
  }

  if (limit)
  {
    [newFetchRequestForNotes setFetchLimit:limit];
  }

  v19 = [contextCopy executeFetchRequest:newFetchRequestForNotes error:0];

  return v19;
}

- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_class();
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [v5 countOfVisibleNotesMatchingPredicate:predicateCopy context:managedObjectContext];

  return v7;
}

+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate includingNoteWithoutBodyContent:(BOOL)content context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  if (content)
  {
    [self visibleNotesIncludingEmptyBodyContentPredicate];
  }

  else
  {
    [self visibleNotesPredicate];
  }
  v10 = ;
  v11 = v10;
  if (predicateCopy)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v10, predicateCopy, 0}];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = v10;
  }

  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:v14];
  v16 = [contextCopy countForFetchRequest:newFetchRequestForNotes error:0];
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

- (id)visibleNoteForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    objc_opt_class();
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];

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

- (id)visibleNotesForIntegerIds:(id)ids
{
  idsCopy = ids;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CBEA60];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", idsCopy];

  visibleNotesPredicate = [(NoteContext *)self visibleNotesPredicate];
  v10 = [v7 arrayWithObjects:{idsCopy, visibleNotesPredicate, 0}];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  [newFetchRequestForNotes setPredicate:v11];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v17];
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

- (id)mostRecentlyModifiedNoteInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  if (predicateForNotes)
  {
    v5 = predicateForNotes;
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    visibleNotesPredicate = [(NoteContext *)self visibleNotesPredicate];
    v9 = [v7 arrayWithObjects:{visibleNotesPredicate, v5, 0}];
    visibleNotesPredicate2 = [v6 andPredicateWithSubpredicates:v9];
  }

  else
  {
    visibleNotesPredicate2 = [(NoteContext *)self visibleNotesPredicate];
  }

  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:visibleNotesPredicate2];
  defaultNotesSortDescriptors = [objc_opt_class() defaultNotesSortDescriptors];
  [newFetchRequestForNotes setSortDescriptors:defaultNotesSortDescriptors];

  [newFetchRequestForNotes setFetchLimit:1];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v14 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  lastObject = [v14 lastObject];

  return lastObject;
}

- (id)allNotes
{
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  return v5;
}

- (unint64_t)countOfNotes
{
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [managedObjectContext countForFetchRequest:newFetchRequestForNotes error:0];

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

- (id)allNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self allNotesMatchingPredicate:predicateForNotes];

  return v5;
}

- (unint64_t)countOfNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self countOfNotesMatchingPredicate:predicateForNotes];

  return v5;
}

- (id)allNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:predicateCopy];

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  return v7;
}

- (unint64_t)countOfNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:predicateCopy];

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [managedObjectContext countForFetchRequest:newFetchRequestForNotes error:0];

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

- (id)noteForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)notesForIntegerIds:(id)ids
{
  idsCopy = ids;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", idsCopy];

  [newFetchRequestForNotes setPredicate:idsCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v12 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v12];
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

- (id)noteForGUID:(id)d
{
  dCopy = d;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(guid ==[c] %@)", dCopy];
  [newFetchRequestForNotes setPredicate:dCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext noteForGUID:];
    }
  }

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)storeForExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  newFetchRequestForStores = [objc_opt_class() newFetchRequestForStores];
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(externalIdentifier == %@)", identifierCopy];
  [newFetchRequestForStores setPredicate:identifierCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForStores error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext storeForExternalIdentifier:];
    }
  }

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)allNotesWithoutBodiesInCollection:(id)collection
{
  collectionCopy = collection;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  if (collectionCopy)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    predicateForNotes = [collectionCopy predicateForNotes];
    liveNotesNeedingBodiesPredicate = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
    v10 = [v7 arrayWithObjects:{predicateForNotes, liveNotesNeedingBodiesPredicate, 0}];
    liveNotesNeedingBodiesPredicate2 = [v6 andPredicateWithSubpredicates:v10];
  }

  else
  {
    liveNotesNeedingBodiesPredicate2 = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
  }

  [newFetchRequestForNotes setPredicate:liveNotesNeedingBodiesPredicate2];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v17];
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

- (id)collectionForInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy && ([infoCopy objectForKey:@"NoteCollectionPrimaryIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), -[NoteContext accountForAccountId:](self, "accountForAccountId:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
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
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Store" inManagedObjectContext:managedObjectContext];

  return v4;
}

- (id)allStores
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:managedObjectContext];
  [v3 setEntity:v6];

  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  [v3 setSortDescriptors:v8];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v18 = 0;
  v10 = [managedObjectContext2 executeFetchRequest:v3 error:&v18];
  v11 = v18;

  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

    managedObjectContext3 = v12;
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
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v16 = [managedObjectContext3 executeFetchRequest:v3 error:&v17];
    v11 = v17;
    v12 = v10;
    v10 = v16;
    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (id)storesInCollection:(id)collection
{
  collectionCopy = collection;
  allStores = [(NoteContext *)self allStores];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NoteContext_storesInCollection___block_invoke;
  v9[3] = &unk_2799AC850;
  v10 = collectionCopy;
  v6 = collectionCopy;
  v7 = [allStores ic_objectsPassingTest:v9];

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

- (id)faultedInStoresForAccounts:(id)accounts
{
  v4 = MEMORY[0x277CBE428];
  accountsCopy = accounts;
  v6 = [[v4 alloc] initWithEntityName:@"Store"];
  [v6 setReturnsObjectsAsFaults:0];
  accountsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"account", accountsCopy];

  [v6 setPredicate:accountsCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v14 = 0;
  v9 = [managedObjectContext executeFetchRequest:v6 error:&v14];
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
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:managedObjectContext];
  [v3 setEntity:v6];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v15 = 0;
  v8 = [managedObjectContext2 countForFetchRequest:v3 error:&v15];
  v9 = v15;

  if (v9)
  {
    managedObjectContext3 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(managedObjectContext3, OS_LOG_TYPE_FAULT))
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
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v14 = 0;
    v8 = [managedObjectContext3 countForFetchRequest:v3 error:&v14];
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
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Account" inManagedObjectContext:managedObjectContext];

  return v4;
}

- (id)accountForAccountId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v8 = [v6 entityForName:@"Account" inManagedObjectContext:managedObjectContext];
  [v5 setEntity:v8];

  idCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", idCopy];
  [v5 setPredicate:idCopy];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v16 = 0;
  v11 = [managedObjectContext2 executeFetchRequest:v5 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NoteContext accountForAccountId:];
    }
  }

  lastObject = [v11 lastObject];

  return lastObject;
}

- (id)defaultStoreForNewNote
{
  v22 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.mobilenotes");
  v3 = CFPreferencesCopyAppValue(@"DefaultNotesAccount", @"com.apple.mobilenotes");
  accountUtilities = [(NoteContext *)self accountUtilities];
  v5 = [accountUtilities defaultStoreSyncIdWithDesiredSyncId:v3];

  v6 = [(NoteContext *)self accountForAccountId:v5];
  v7 = v6;
  if (v6 && ![v6 didChooseToMigrate])
  {
LABEL_13:
    defaultStore = [v7 defaultStore];

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
  defaultStore = [(NoteContext *)self localStore];
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return defaultStore;
}

- (id)localStore
{
  localStore = self->_localStore;
  if (!localStore)
  {
    localAccount = [(NoteContext *)self localAccount];
    defaultStore = [localAccount defaultStore];
    v6 = self->_localStore;
    self->_localStore = defaultStore;

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
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [v5 entityForName:@"Account" inManagedObjectContext:managedObjectContext];

    [v4 setEntity:v7];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
    [v4 setPredicate:v8];
    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v10 = [managedObjectContext2 executeFetchRequest:v4 error:&v17];
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
      lastObject = [v10 lastObject];
      v14 = self->_localAccount;
      self->_localAccount = lastObject;
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

- (BOOL)forceDeleteAccount:(id)account
{
  v49 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
  v35 = accountCopy;
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.store.account == %@", accountCopy];
  [v5 setPredicate:accountCopy];

  v34 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:1];
  selfCopy = self;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v45 = 0;
  v32 = v7;
  v9 = [managedObjectContext executeRequest:v7 error:&v45];
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
          v19 = [defaultManager removeItemAtURL:v16 error:&v39];
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

  newFetchRequestForNotes = [(NoteContext *)selfCopy newFetchRequestForNotes];
  predicateForNotes = [v35 predicateForNotes];
  [newFetchRequestForNotes setPredicate:predicateForNotes];

  v23 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:newFetchRequestForNotes];
  managedObjectContext2 = [(NoteContext *)selfCopy managedObjectContext];
  v38 = v10;
  v25 = [managedObjectContext2 executeRequest:v23 error:&v38];
  v26 = v38;

  if (v26)
  {
    v27 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [NoteContext forceDeleteAccount:];
    }
  }

  managedObjectContext3 = [(NoteContext *)selfCopy managedObjectContext];
  [managedObjectContext3 deleteObject:v35];

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)deleteAccount:(id)account
{
  accountCopy = account;
  localAccount = [(NoteContext *)self localAccount];

  v6 = localAccount != accountCopy && [(NoteContext *)self forceDeleteAccount:accountCopy];
  return v6;
}

- (BOOL)deleteStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  localStore = [(NoteContext *)self localStore];

  if (localStore != storeCopy)
  {
    v6 = [(NoteContext *)self allNotesInCollection:storeCopy];
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

    managedObjectContext = [(NoteContext *)self managedObjectContext];
    [managedObjectContext deleteObject:storeCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
  return localStore != storeCopy;
}

- (BOOL)shouldDisableLocalStore
{
  if ([(NoteContext *)self countOfStores]< 2)
  {
    return 0;
  }

  localStore = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:localStore]== 0;

  return v4;
}

- (BOOL)hasMultipleEnabledStores
{
  countOfStores = [(NoteContext *)self countOfStores];
  if (countOfStores > 2)
  {
    return 1;
  }

  if (countOfStores != 2)
  {
    return 0;
  }

  localStore = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:localStore]!= 0;

  return v4;
}

- (id)_notePropertyObjectForKey:(id)key
{
  keyCopy = key;
  notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  if (!notePropertyObjectsRealized)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_notePropertyObjectsRealized;
    self->_notePropertyObjectsRealized = v6;

    notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  }

  v8 = [(NSMutableDictionary *)notePropertyObjectsRealized objectForKey:keyCopy];
  if (v8)
  {
    lastObject = v8;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    [managedObjectContext refreshObject:lastObject mergeChanges:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE428]);
    v12 = MEMORY[0x277CBE408];
    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v14 = [v12 entityForName:@"Property" inManagedObjectContext:managedObjectContext2];
    [v11 setEntity:v14];

    keyCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", keyCopy];
    [v11 setPredicate:keyCopy];
    [v11 setFetchLimit:1];
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v21 = 0;
    v17 = [managedObjectContext3 executeFetchRequest:v11 error:&v21];
    v18 = v21;

    if (v18)
    {
      v19 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [NoteContext _notePropertyObjectForKey:];
      }
    }

    lastObject = [v17 lastObject];
    if (lastObject)
    {
      [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:lastObject forKey:keyCopy];
    }
  }

  return lastObject;
}

- (void)setPropertyValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(NoteContext *)self _notePropertyObjectForKey:keyCopy];
  if (!v7)
  {
    v8 = MEMORY[0x277CBE408];
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [v8 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:managedObjectContext];

    [v7 setPropertyKey:keyCopy];
    [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:v7 forKey:keyCopy];
  }

  [v7 setPropertyValue:valueCopy];
}

- (id)propertyValueForKey:(id)key
{
  v3 = [(NoteContext *)self _notePropertyObjectForKey:key];
  propertyValue = [v3 propertyValue];

  return propertyValue;
}

- (id)getNextIdObject
{
  if (!self->_nextIdContext)
  {
    persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBE440]);
      nextIdContext = self->_nextIdContext;
      self->_nextIdContext = v4;

      [(NSManagedObjectContext *)self->_nextIdContext setPersistentStoreCoordinator:persistentStoreCoordinator];
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
    lastObject = [v9 lastObject];
    v13 = v10;
  }

  else
  {
    v37 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"NextId" inManagedObjectContext:self->_nextIdContext];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    v15 = MEMORY[0x277CBE408];
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v17 = [v15 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

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

    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v38 = v10;
    v25 = [managedObjectContext2 executeFetchRequest:v14 error:&v38];
    v13 = v38;

    if (v13 || !v25 || ![v25 count])
    {
      v26 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [NoteContext getNextIdObject];
      }
    }

    lastObject2 = [v25 lastObject];
    v28 = [lastObject2 valueForKey:@"maxId"];
    unsignedIntValue = [v28 unsignedIntValue];

    v30 = 10 * (unsignedIntValue / 0xA) + 10;
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
    lastObject = v37;
    [v37 setValue:v32 forKey:@"counter"];
  }

  return lastObject;
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
    getNextIdObject = [(NoteContext *)self getNextIdObject];
    v7 = [getNextIdObject valueForKey:@"counter"];
    v8 = self->_nextId;
    self->_nextId = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_nextId, "unsignedIntValue") + 10}];
    [getNextIdObject setValue:v9 forKey:@"counter"];

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
  urlForPersistentStore = [self urlForPersistentStore];
  uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
  v4 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Backups" isDirectory:1];

  return v4;
}

+ (void)backupPersistentStore:(id)store
{
  v60 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[NoteContext backupPersistentStore:];
  }

  urlForPersistentStore = [self urlForPersistentStore];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 stringFromDate:date];

  v10 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v49 = v9;
  v13 = [v10 stringWithFormat:@"Backup-%@-%@", v9, uUIDString];

  backupsDirectoryURL = [self backupsDirectoryURL];
  v48 = v13;
  v15 = [backupsDirectoryURL URLByAppendingPathComponent:v13 isDirectory:1];

  lastPathComponent = [urlForPersistentStore lastPathComponent];
  v51 = [v15 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v55 = 0;
  LOBYTE(uUID) = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v55];
  v18 = v55;

  if ((uUID & 1) == 0)
  {
    v19 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    v18 = 0;
  }

  storeOptions = [self storeOptions];
  storeOptions2 = [self storeOptions];
  v22 = *MEMORY[0x277CBE2E8];
  v54 = v18;
  v50 = storeCopy;
  v23 = [storeCopy replacePersistentStoreAtURL:v51 destinationOptions:storeOptions withPersistentStoreFromURL:urlForPersistentStore sourceOptions:storeOptions2 storeType:v22 error:&v54];
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
    v57 = urlForPersistentStore;
    v58 = 2112;
    v59 = v51;
    _os_log_impl(&dword_25C69C000, v26, OS_LOG_TYPE_INFO, "Backed up old persistent store from %@ to %@", buf, 0x16u);
  }

  v53 = v24;
  v27 = [urlForPersistentStore checkResourceIsReachableAndReturnError:&v53];
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

    storeOptions3 = [self storeOptions];
    v52 = v28;
    v32 = [v50 destroyPersistentStoreAtURL:urlForPersistentStore withType:v22 options:storeOptions3 error:&v52];
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

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtURL:urlForPersistentStore error:0];

    lastPathComponent2 = [urlForPersistentStore lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
    v26 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"sqlite-wal"];

    uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
    v39 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v26 isDirectory:0];

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtURL:v39 error:0];

    lastPathComponent3 = [urlForPersistentStore lastPathComponent];
    stringByDeletingPathExtension2 = [lastPathComponent3 stringByDeletingPathExtension];
    v43 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"sqlite-shm"];

    uRLByDeletingLastPathComponent2 = [urlForPersistentStore URLByDeletingLastPathComponent];
    v45 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:v43 isDirectory:0];

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager4 removeItemAtURL:v45 error:0];

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
  urlForPersistentStore = [self urlForPersistentStore];
  uRLByDeletingPathExtension = [urlForPersistentStore URLByDeletingPathExtension];
  v4 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"sqlite-wal"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v30 = 0;
  v8 = [defaultManager attributesOfFileSystemForPath:path error:&v30];
  v9 = v30;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(NoteContext *)urlForPersistentStore];
    }

    unsignedIntegerValue = 0;
  }

  else
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  v29 = 0;
  v12 = *MEMORY[0x277CBE838];
  v28 = 0;
  v13 = [urlForPersistentStore getResourceValue:&v29 forKey:v12 error:&v28];
  v14 = v29;
  v15 = v28;

  if (v13)
  {
    unsignedIntegerValue2 = [v14 unsignedIntegerValue];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }

    unsignedIntegerValue2 = 0;
  }

  v26 = 0;
  v27 = 0;
  v18 = [v4 getResourceValue:&v27 forKey:v12 error:&v26];
  v19 = v27;

  v20 = v26;
  if (v18)
  {
    unsignedIntegerValue2 += [v19 unsignedIntegerValue];
  }

  else if ([v20 code] != 260)
  {
    v21 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }
  }

  v22 = 3 * unsignedIntegerValue2 + 0x100000;
  v23 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v32 = v22;
    v33 = 2048;
    v34 = unsignedIntegerValue;
    _os_log_impl(&dword_25C69C000, v23, OS_LOG_TYPE_INFO, "Minimum free space to open database: %lu, current free space: %lu", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue < v22;
}

+ (BOOL)isDataProtectionError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];
  v6 = *MEMORY[0x277CBE2C8];
  if ([domain isEqualToString:*MEMORY[0x277CBE2C8]])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:v6];
  }

  v9 = *MEMORY[0x277CCA5B8];
  if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:v9];
  }

  v12 = [v7 intValue] == 23 || objc_msgSend(v10, "intValue") == 1;

  return v12;
}

- (void)setHasPriorityInSaveConflicts:(BOOL)conflicts
{
  conflictsCopy = conflicts;
  self->_hasPriorityInSaveConflicts = conflicts;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  if (conflictsCopy)
  {
    v4 = +[NoteResurrectionMergePolicy sharedNoteResurrectionMergePolicy];
    [managedObjectContext setMergePolicy:v4];
  }

  else
  {
    [managedObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
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
  persistentStoreCoordinator = [self persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  [v3 setUndoManager:0];
  return v3;
}

- (void)managedObjectContextWillSaveNotification:(id)notification
{
  notificationCopy = notification;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  userInfo = [notificationCopy userInfo];
  [defaultCenter postNotificationName:@"NoteContextWillSaveNotification" object:self userInfo:userInfo];

  if (self->_logChanges)
  {
    [(NoteContext *)self trackChanges:notificationCopy];
  }
}

- (void)trackChanges:(id)changes
{
  v123 = *MEMORY[0x277D85DE8];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  deletedObjects = [managedObjectContext deletedObjects];
  v95 = [deletedObjects mutableCopy];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  updatedObjects = [managedObjectContext2 updatedObjects];
  v8 = [updatedObjects mutableCopy];

  managedObjectContext3 = [(NoteContext *)self managedObjectContext];
  insertedObjects = [managedObjectContext3 insertedObjects];
  v93 = [insertedObjects mutableCopy];

  v11 = MEMORY[0x277CBE408];
  selfCopy = self;
  managedObjectContext4 = [(NoteContext *)self managedObjectContext];
  v13 = [v11 entityForName:@"Note" inManagedObjectContext:managedObjectContext4];

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
        entity = [v19 entity];
        v21 = [entity isEqual:v13];

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

          store = [v22 store];

          if (v25 != store)
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
          entity2 = [v33 entity];
          v35 = [entity2 isEqual:v13];

          if (v35)
          {
            v36 = v33;
            store2 = [v36 store];
            v38 = store2;
            if (store2)
            {
              objectID = [store2 objectID];
              v40 = [v100 objectForKey:objectID];

              if (!v40)
              {
                v40 = [(NoteContext *)selfCopy noteChangeWithType:0 store:v38];
                objectID2 = [v38 objectID];
                [v100 setObject:v40 forKey:objectID2];
              }

              noteIntegerIds = [v40 noteIntegerIds];
              integerId = [v36 integerId];
              [noteIntegerIds addObject:integerId];

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
          entity3 = [v50 entity];
          v52 = [entity3 isEqual:v13];

          if (v52)
          {
            v53 = v50;
            store3 = [v53 store];
            objectID3 = [store3 objectID];
            v56 = [v44 objectForKey:objectID3];

            if (!v56)
            {
              store4 = [v53 store];
              v56 = [(NoteContext *)selfCopy noteChangeWithType:1 store:store4];

              store5 = [v56 store];
              objectID4 = [store5 objectID];
              [v44 setObject:v56 forKey:objectID4];
            }

            noteIntegerIds2 = [v56 noteIntegerIds];
            integerId2 = [v53 integerId];
            [noteIntegerIds2 addObject:integerId2];

            serverId = [v53 serverId];

            if (serverId)
            {
              noteServerIds = [v56 noteServerIds];
              serverId2 = [v53 serverId];
              [noteServerIds addObject:serverId2];
            }

            if ([v53 serverIntId])
            {
              noteServerIntIds = [v56 noteServerIntIds];
              v66 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v53, "serverIntId")}];
              [noteServerIntIds addObject:v66];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"NoteContextDeletedNotesNotification" object:v27];

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
        entity4 = [v73 entity];
        v75 = [entity4 isEqual:v13];

        if (v75)
        {
          v76 = v73;
          v77 = [MEMORY[0x277CBEA60] arrayWithObject:@"store"];
          v78 = [v76 committedValuesForKeys:v77];

          v79 = [v78 objectForKey:@"store"];
          if (v79)
          {
            null = [MEMORY[0x277CBEB68] null];
            if (v79 == null)
            {
              goto LABEL_63;
            }

            v81 = [v68 containsObject:v79];

            if ((v81 & 1) == 0)
            {
              objectID5 = [v79 objectID];
              null = [v101 objectForKey:objectID5];

              if (!null)
              {
                null = [(NoteContext *)selfCopy noteChangeWithType:2 store:v79];
                store6 = [null store];
                objectID6 = [store6 objectID];
                [v101 setObject:null forKey:objectID6];
              }

              noteIntegerIds3 = [null noteIntegerIds];
              integerId3 = [v76 integerId];
              [noteIntegerIds3 addObject:integerId3];

              serverId3 = [v76 serverId];

              if (serverId3)
              {
                noteServerIds2 = [null noteServerIds];
                serverId4 = [v76 serverId];
                [noteServerIds2 addObject:serverId4];
              }

              if ([v76 serverIntId])
              {
                noteServerIntIds2 = [null noteServerIntIds];
                v91 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v76, "serverIntId")}];
                [noteServerIntIds2 addObject:v91];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextDidUnlockObjectCreationNotification" object:self];
}

- (void)updateForRecentChanges
{
  mocUpdater = [(NoteContext *)self mocUpdater];
  [mocUpdater requestUpdate];
}

- (void)postNotesChangedExternally
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextChangedElsewhereNotification" object:self userInfo:0];
}

+ (id)mainContextObjectFromObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    sharedContext = [self sharedContext];
    managedObjectContext = [sharedContext managedObjectContext];

    managedObjectContext2 = [objectCopy managedObjectContext];

    v8 = objectCopy;
    if (managedObjectContext2 != managedObjectContext)
    {
      objectID = [objectCopy objectID];
      v8 = [managedObjectContext existingObjectWithID:objectID error:0];

      managedObjectContext3 = [v8 managedObjectContext];

      if (managedObjectContext3 != managedObjectContext)
      {
        v11 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(NoteContext(SharedContext) *)objectCopy mainContextObjectFromObject:v11];
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
  [self count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUpLastIndexTid
{
  v7 = *MEMORY[0x277D85DE8];
  [self count];
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
  [self count];
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
  userInfo = [v0 userInfo];
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