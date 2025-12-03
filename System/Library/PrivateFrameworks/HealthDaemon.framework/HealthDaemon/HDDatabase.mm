@interface HDDatabase
+ (__CFString)_stateDebugName:(uint64_t)name;
+ (id)allCurrentAndFutureEntityClasses;
+ (id)allEntityClassesWithBehavior:(id)behavior;
- (BOOL)_protectedDataLock_isProtectedDataFlushDeadlinePassed;
- (BOOL)addJournalEntries:(id)entries error:(id *)error;
- (BOOL)addJournalEntry:(id)entry error:(id *)error;
- (BOOL)isInSession;
- (BOOL)performHighPriorityTransactionsWithError:(id *)error block:(id)block;
- (BOOL)performTransactionWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler;
- (BOOL)performWithJournalType:(int64_t)type error:(id *)error block:(id)block;
- (HDDatabase)initWithConfiguration:(id)configuration profile:(id)profile;
- (HDProfile)profile;
- (HKProfileIdentifier)profileIdentifier;
- (NSDate)mostRecentObliterationDate;
- (id)_checkOutDatabaseForTransaction:(uint64_t)transaction databaseType:(__CFString *)type error:;
- (id)_createAndVerifyDatabaseConnectionWithType:(int64_t)type error:(id *)error;
- (id)_journalForType:(int64_t)type;
- (id)_newCorruptionEventStore;
- (id)_newDatabaseConnectionWithURL:(id)l;
- (id)_newTTRPromptControllerWithProfile:(id)profile domainName:(id)name loggingCategory:(id)category;
- (id)_threadLocalTransactionContext;
- (id)allEntityClassesWithProtectionClass:(int64_t)class;
- (id)allSeriesEntityClasses;
- (id)beginExtendedTransactionWithContext:(id)context transactionTimeout:(double)timeout continuationTimeout:(double)continuationTimeout error:(id *)error;
- (id)checkOutProtectedDatabase:(id)database error:(id *)error;
- (id)checkOutProtectedResources:(id)resources error:(id *)error;
- (id)checkOutUnprotectedDatabase:(id)database error:(id *)error;
- (id)cloneAccessibilityAssertion:(id)assertion ownerIdentifier:(id)identifier error:(id *)error;
- (id)databasePoolForDatabaseType:(int64_t)type;
- (id)databaseSizeInBytes;
- (id)databaseSizeInBytesForTypeUnprotected:(BOOL)unprotected WAL:(BOOL)l;
- (id)databaseUUIDWithError:(id *)error;
- (id)diagnosticDescription;
- (id)extendedDatabaseTransactionForIdentifier:(id)identifier;
- (id)migrationTransaction:(id)transaction entityClassesWithBehavior:(id)behavior;
- (id)newConnectionForPool:(id)pool error:(id *)error;
- (id)progressForJournalMergeWithType:(int64_t)type;
- (id)store:(id)store objectForKey:(id)key;
- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier contextType:(int64_t)type error:(id *)error;
- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier contextType:(int64_t)type shouldPerformTransaction:(BOOL)transaction error:(id *)error;
- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier shouldPerformTransaction:(BOOL)transaction timeout:(double)timeout error:(id *)error;
- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier timeout:(double)timeout error:(id *)error;
- (id)takeAccessibilityAssertionWithOwnerIdentifier:(uint64_t)identifier contextType:(int)type timeout:(void *)timeout shouldPerformTransaction:(double)transaction error:;
- (off_t)_fileSizeForURL:(uint64_t)l error:;
- (os_unfair_lock_s)isInvalid;
- (uint64_t)_isDatabaseValidWithError:(uint64_t)result;
- (uint64_t)_performMigrationWithUnprotectedDatabase:(void *)database protectedDatabase:(void *)protectedDatabase error:;
- (uint64_t)_performWithTransactionContext:(int)context merge:(void *)merge error:(void *)error block:;
- (uint64_t)_protectedDataState;
- (uint64_t)_transitionToState:(os_unfair_lock_s *)state;
- (unint64_t)journalChapterCountForType:(int64_t)type;
- (void)_checkInDatabase:(uint64_t)database type:(uint64_t)type flushImmediately:;
- (void)_checkInProtectedResources:(uint64_t)resources;
- (void)_invalidateProtectedResourceAssertions;
- (void)_mainDatabaseURL;
- (void)_mergeSecondaryJournals;
- (void)_mergeSecondaryJournalsWithActivity:(void *)activity completion:;
- (void)_performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:(void *)queue block:;
- (void)_protectedDataQueue_cancelProtectedDataFlushTimer;
- (void)_protectedDataQueue_contentProtectionStateChanged:(uint64_t)changed previousState:;
- (void)_protectedDataQueue_flushProtectedData;
- (void)_protectedDataQueue_flushProtectedDataIfNecessary;
- (void)_protectedDataQueue_handleSpringboardLockoutNotification;
- (void)_protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion:(uint64_t)completion;
- (void)_protectedDataQueue_updateInactivityFlushTimer;
- (void)_protectedDatabaseURL;
- (void)_reportDatabaseMigrationStatus:(int64_t)status component:(int64_t)component schemaVersion:(int64_t)version error:(id)error;
- (void)_reportMigrationResultIfNecessaryForStatus:(void *)status database:(unsigned int)database protectedDatabase:(void *)protectedDatabase error:;
- (void)_reportSQLiteCorruption:(id)corruption forDatabase:(int64_t)database shouldPrompt:(BOOL)prompt;
- (void)_threadLocalTransaction;
- (void)_updateInactivityFlushTimer;
- (void)_waitForContentProtectionObservationSetup;
- (void)addDatabaseJournalMergeObserver:(id)observer journalType:(int64_t)type queue:(id)queue;
- (void)addProtectedResourceStores:(id)stores;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)checkInDatabase:(id)database type:(int64_t)type protectedResources:(id)resources;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)databaseJournalMergeDidComplete:(id)complete;
- (void)databasePool:(id)pool didFlushConnections:(id)connections;
- (void)dealloc;
- (void)enterStateInitialized;
- (void)enterStateRun;
- (void)finalizeExtendedTransactionForIdentifier:(id)identifier;
- (void)invalidateAllAssertionsWithContextType:(int64_t)type;
- (void)invalidateAndWait;
- (void)migrationTransaction:(id)transaction didCreateDatabasesWithIdentifier:(id)identifier;
- (void)migrationTransaction:(id)transaction didEncounterDatabaseMismatchWithUnprotectedIdentifier:(id)identifier protectedIdentifier:(id)protectedIdentifier;
- (void)performInFirstProtectedWriteTransaction:(id)transaction;
- (void)performInFirstUnprotectedWriteTransaction:(id)transaction;
- (void)removeDatabaseJournalMergeObserver:(id)observer journalType:(int64_t)type;
- (void)setProtectedDataFlushInterval:(double)interval;
- (void)store:(id)store setObject:(id)object forKey:(id)key;
- (void)unitTest_disableDatabaseAccessibilityAssertions;
- (void)unitTest_enableDatabaseAccessibilityAssertions;
- (void)unitTest_setContentProtectionStateAndWait:(int64_t)wait;
- (void)unitTest_triggerSpringboardLockout;
@end

@implementation HDDatabase

- (uint64_t)_protectedDataState
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 80));
  v2 = *(self + 96);
  os_unfair_lock_unlock((self + 80));
  if (v2 == 2)
  {
    [*(self + 408) recheckContentProtectionState];
  }

  return v2;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

+ (id)allCurrentAndFutureEntityClasses
{
  v2 = _EntityClasses();
  v3 = _FutureEntityClasses();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

+ (id)allEntityClassesWithBehavior:(id)behavior
{
  futureMigrationsEnabled = [behavior futureMigrationsEnabled];
  v4 = _EntityClasses();
  if (futureMigrationsEnabled)
  {
    v5 = _FutureEntityClasses();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    v8 = [v4 arrayByAddingObjectsFromArray:v7];

    v4 = v8;
  }

  return v4;
}

- (id)allEntityClassesWithProtectionClass:(int64_t)class
{
  v5 = objc_opt_class();
  profile = [(HDDatabase *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  v9 = [v5 allEntityClassesWithBehavior:behavior];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HDDatabase_BuiltInEntities__allEntityClassesWithProtectionClass___block_invoke;
  v12[3] = &__block_descriptor_40_e8_B16__0_8l;
  v12[4] = class;
  v10 = [v9 hk_filter:v12];

  return v10;
}

- (id)allSeriesEntityClasses
{
  v3 = objc_opt_class();
  profile = [(HDDatabase *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  v7 = [v3 allEntityClassesWithBehavior:behavior];
  v8 = [v7 hk_filter:&__block_literal_global_356_0];

  return v8;
}

- (HDDatabase)initWithConfiguration:(id)configuration profile:(id)profile
{
  v112[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  profileCopy = profile;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  directoryPath = [profileCopy directoryPath];

  if (!directoryPath)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"[profile directoryPath] != nil"}];
  }

  if (![configurationCopy concurrentReaderLimit])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"configuration.concurrentReaderLimit > 0"}];
  }

  v106.receiver = self;
  v106.super_class = HDDatabase;
  v11 = [(HDDatabase *)&v106 init];
  v12 = v11;
  if (v11)
  {
    v11->_stateLock._os_unfair_lock_opaque = 0;
    v11->_state = 0;
    objc_storeStrong(&v11->_configuration, configuration);
    directoryPath2 = [profileCopy directoryPath];
    v14 = [directoryPath2 copy];
    profileDirectoryPath = v12->_profileDirectoryPath;
    v12->_profileDirectoryPath = v14;

    objc_storeWeak(&v12->_profile, profileCopy);
    v16 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    schemaMigrationLock = v12->_schemaMigrationLock;
    v12->_schemaMigrationLock = v16;

    v18 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    activeDatabasesLock = v12->_activeDatabasesLock;
    v12->_activeDatabasesLock = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeDatabases = v12->_activeDatabases;
    v12->_activeDatabases = v20;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    migratedDatabases = v12->_migratedDatabases;
    v12->_migratedDatabases = weakObjectsHashTable;

    v24 = MEMORY[0x277CCACA8];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 stringWithFormat:@"%@.%p.transaction", v26, v12];
    threadLocalTransactionKey = v12->_threadLocalTransactionKey;
    v12->_threadLocalTransactionKey = v27;

    v29 = MEMORY[0x277CCACA8];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v29 stringWithFormat:@"%@.%p.transactionContextStack", v31, v12];
    threadLocalTransactionContextStackKey = v12->_threadLocalTransactionContextStackKey;
    v12->_threadLocalTransactionContextStackKey = v32;

    v34 = objc_alloc(MEMORY[0x277D10AF0]);
    concurrentReaderLimit = [(HDDatabaseConfiguration *)v12->_configuration concurrentReaderLimit];
    behavior = [(HDDatabaseConfiguration *)v12->_configuration behavior];
    v102 = [v34 initWithConcurrentReaderLimit:concurrentReaderLimit behavior:behavior debugIdentifier:@"protected" delegate:v12];

    v37 = objc_alloc(MEMORY[0x277D10AF0]);
    concurrentReaderLimit2 = [(HDDatabaseConfiguration *)v12->_configuration concurrentReaderLimit];
    behavior2 = [(HDDatabaseConfiguration *)v12->_configuration behavior];
    v40 = [v37 initWithConcurrentReaderLimit:concurrentReaderLimit2 behavior:behavior2 debugIdentifier:@"unprotected" delegate:v12];

    v111[0] = &unk_283CB0A68;
    v111[1] = &unk_283CB0A80;
    v112[0] = v102;
    v112[1] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
    databasePoolForType = v12->_databasePoolForType;
    v12->_databasePoolForType = v41;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];

    v44 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    writeLock = v12->_writeLock;
    v12->_writeLock = v44;

    v46 = objc_alloc_init(MEMORY[0x277CCABD8]);
    asynchronousOperationQueue = v12->_asynchronousOperationQueue;
    v12->_asynchronousOperationQueue = v46;

    [(NSOperationQueue *)v12->_asynchronousOperationQueue setQualityOfService:-1];
    [(NSOperationQueue *)v12->_asynchronousOperationQueue setMaxConcurrentOperationCount:[(HDDatabaseConfiguration *)v12->_configuration concurrentReaderLimit]];
    v48 = HKCreateSerialDispatchQueue();
    serialAsynchronousQueue = v12->_serialAsynchronousQueue;
    v12->_serialAsynchronousQueue = v48;

    v50 = HKCreateSerialDispatchQueue();
    protectedDataQueue = v12->_protectedDataQueue;
    v12->_protectedDataQueue = v50;

    v12->_protectedDataLock._os_unfair_lock_opaque = 0;
    v52 = objc_alloc(MEMORY[0x277CCD738]);
    v53 = MEMORY[0x277CCC2A0];
    v54 = [v52 initWithName:@"database-protected-data" loggingCategory:*MEMORY[0x277CCC2A0]];
    protectedDataObservers = v12->_protectedDataObservers;
    v12->_protectedDataObservers = v54;

    v56 = dispatch_group_create();
    contentProtectionObservationGroup = v12->_contentProtectionObservationGroup;
    v12->_contentProtectionObservationGroup = v56;

    dispatch_group_enter(v12->_contentProtectionObservationGroup);
    v58 = [HDDatabaseJournal alloc];
    v59 = [(NSString *)v12->_profileDirectoryPath stringByAppendingPathComponent:@"Journals"];
    v60 = [(HDDatabaseJournal *)v58 initWithType:1 path:v59];
    journal = v12->_journal;
    v12->_journal = v60;

    [(HDDatabaseJournal *)v12->_journal setDelegate:v12];
    *&v12->_journalMergeEpoch = xmmword_22916A740;
    v62 = [HDDatabaseJournal alloc];
    v63 = [(NSString *)v12->_profileDirectoryPath stringByAppendingPathComponent:@"CloudSyncJournals"];
    v64 = [(HDDatabaseJournal *)v62 initWithType:2 path:v63];
    cloudSyncJournal = v12->_cloudSyncJournal;
    v12->_cloudSyncJournal = v64;

    [(HDDatabaseJournal *)v12->_cloudSyncJournal setDelegate:v12];
    [(HDDatabaseJournal *)v12->_cloudSyncJournal setMaximumJournalBytes:&unk_283CB0A98];
    _HKInitializeLogging();
    objc_initWeak(&location, v12);
    v66 = objc_alloc(MEMORY[0x277D10BE8]);
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x277D86370], 1);
    xpc_dictionary_set_string(empty, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v68 = *v53;
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __44__HDDatabase_initWithConfiguration_profile___block_invoke;
    v103[3] = &unk_27861C670;
    objc_copyWeak(&v104, &location);
    v69 = [v66 initWithName:@"com.apple.healthd.database.journal.merge.secondary" criteria:empty loggingCategory:v68 handler:v103];
    secondaryJournalMergeActivity = v12->_secondaryJournalMergeActivity;
    v12->_secondaryJournalMergeActivity = v69;

    v71 = [objc_alloc(MEMORY[0x277D10AD0]) initWithAvailableQuota:5 maximumQuota:5 refillInterval:1800.0 minimumInterval:60.0 lastTrigger:0.0];
    [(HDXPCGatedActivity *)v12->_secondaryJournalMergeActivity setQuota:v71];

    v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
    databaseJournalMergeObserverSetByType = v12->_databaseJournalMergeObserverSetByType;
    v12->_databaseJournalMergeObserverSetByType = v72;

    v74 = [objc_alloc(MEMORY[0x277CCD738]) initWithName:@"database-main-journal-observers" loggingCategory:*v53];
    [(NSMutableDictionary *)v12->_databaseJournalMergeObserverSetByType setObject:v74 forKeyedSubscript:&unk_283CB0A68];

    v75 = [objc_alloc(MEMORY[0x277CCD738]) initWithName:@"database-cloudsync-journal-observers" loggingCategory:*v53];
    [(NSMutableDictionary *)v12->_databaseJournalMergeObserverSetByType setObject:v75 forKeyedSubscript:&unk_283CB0AB0];

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    protectedResourceStores = v12->_protectedResourceStores;
    v12->_protectedResourceStores = weakObjectsHashTable2;

    v12->_protectedResourceAssertionsLock._os_unfair_lock_opaque = 0;
    v12->_databaseUUIDLock._os_unfair_lock_opaque = 0;
    v78 = objc_alloc(MEMORY[0x277D10AE0]);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    directoryPath3 = [WeakRetained directoryPath];
    v81 = [v78 initWithDirectoryPath:directoryPath3 prefix:@"_secure"];
    assertionManager = v12->_assertionManager;
    v12->_assertionManager = v81;

    [(HDDatabaseAssertionManager *)v12->_assertionManager addObserver:v12 forAssertionIdentifier:@"DatabaseAccessibility" queue:v12->_protectedDataQueue];
    contentProtectionManager = [(HDDatabaseConfiguration *)v12->_configuration contentProtectionManager];
    contentProtectionManager = v12->_contentProtectionManager;
    v12->_contentProtectionManager = contentProtectionManager;

    *&v12->_protectedDataLock_protectedDataState = xmmword_22916A750;
    v12->_protectedDataFlushInterval = 600.0;
    v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
    firstUnprotectedWriteTransactionBlocks = v12->_firstUnprotectedWriteTransactionBlocks;
    v12->_firstUnprotectedWriteTransactionBlocks = v85;

    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    firstProtectedWriteTransactionBlocks = v12->_firstProtectedWriteTransactionBlocks;
    v12->_firstProtectedWriteTransactionBlocks = v87;

    v12->_transactionStartLock._os_unfair_lock_opaque = 0;
    v89 = dispatch_group_create();
    transactionStartGroup = v12->_transactionStartGroup;
    v12->_transactionStartGroup = v89;

    v91 = [HDWorkoutUtilities alloc];
    v92 = objc_loadWeakRetained(&v12->_profile);
    v93 = [(HDWorkoutUtilities *)v91 initWithProfile:v92];
    workoutUtilities = v12->_workoutUtilities;
    v12->_workoutUtilities = v93;

    _HKInitializeLogging();
    v95 = *v53;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      concurrentReaderLimit3 = [(HDDatabaseConfiguration *)v12->_configuration concurrentReaderLimit];
      *buf = 138543618;
      v108 = v12;
      v109 = 2050;
      v110 = concurrentReaderLimit3;
      _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@: HDDatabase allocated with %{public}lu concurrent readers", buf, 0x16u);
    }

    objc_destroyWeak(&v104);
    objc_destroyWeak(&location);
  }

  v97 = *MEMORY[0x277D85DE8];
  return v12;
}

void __44__HDDatabase_initWithConfiguration_profile___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    atomic_store(0, WeakRetained + 240);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [(HDDatabase *)v8 _mergeSecondaryJournalsWithActivity:v9 completion:v6];
}

- (void)_mergeSecondaryJournalsWithActivity:(void *)activity completion:
{
  v5 = a2;
  activityCopy = activity;
  if (self)
  {
    mergeQueue = [*(self + 312) mergeQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HDDatabase__mergeSecondaryJournalsWithActivity_completion___block_invoke;
    block[3] = &unk_27861C9D8;
    block[4] = self;
    v9 = v5;
    v10 = activityCopy;
    dispatch_sync(mergeQueue, block);
  }
}

- (void)dealloc
{
  [(HDDatabaseAssertionManager *)self->_assertionManager removeObserver:self];
  if (notify_is_valid_token(self->_springboardLockoutToken))
  {
    notify_cancel(self->_springboardLockoutToken);
  }

  v3.receiver = self;
  v3.super_class = HDDatabase;
  [(HDDatabase *)&v3 dealloc];
}

+ (__CFString)_stateDebugName:(uint64_t)name
{
  objc_opt_self();
  if (a2 >= 6)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"HDDatabaseState Unknown (%d)", a2];
  }

  else
  {
    v3 = off_27861CB08[a2];
  }

  return v3;
}

- (uint64_t)_transitionToState:(os_unfair_lock_s *)state
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  if (state)
  {
    os_unfair_lock_lock(state + 2);
    v4 = *(stateCopy + 16);
    if (v4 == a2)
    {
LABEL_27:
      os_unfair_lock_unlock((stateCopy + 8));
      stateCopy = 0;
      v9 = 0;
LABEL_28:

      goto LABEL_29;
    }

    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        if (v4)
        {
          _HKInitializeLogging();
          v5 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
          {
            v7 = [HDDatabase _stateDebugName:?];
            v14 = 138543362;
            v15 = v7;
            _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "HDDatabase attempted to transition to HDDatabaseStateInitialized from %{public}@", &v14, 0xCu);
          }

          goto LABEL_26;
        }
      }

      else if (v4 != 1)
      {
        _HKInitializeLogging();
        v5 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v13 = [HDDatabase _stateDebugName:?];
          v14 = 138543362;
          v15 = v13;
          _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "HDDatabase attempted to transition to HDDatabaseStateAddResources from %{public}@", &v14, 0xCu);
        }

        goto LABEL_26;
      }
    }

    else if (a2 == 3)
    {
      if ((v4 - 1) >= 2)
      {
        _HKInitializeLogging();
        v5 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v8 = [HDDatabase _stateDebugName:?];
          v14 = 138543362;
          v15 = v8;
          _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "HDDatabase attempted to transition to HDDatabaseStateStart from %{public}@", &v14, 0xCu);
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (a2 != 4)
      {
        *(stateCopy + 16) = 5;
        if (v4 == 5)
        {
          goto LABEL_27;
        }

LABEL_20:
        v9 = [HDDatabase _stateDebugName:a2];
        os_unfair_lock_unlock((stateCopy + 8));
        if (v9)
        {
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC2A0];
          stateCopy = 1;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
          {
            v14 = 138543362;
            v15 = v9;
            _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "HDDatabase transitioned to state %{public}@", &v14, 0xCu);
          }
        }

        else
        {
          stateCopy = 1;
        }

        goto LABEL_28;
      }

      if (v4 != 3)
      {
        _HKInitializeLogging();
        v5 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          v6 = [HDDatabase _stateDebugName:?];
          v14 = 138543362;
          v15 = v6;
          _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "HDDatabase attempted to transition to HDDatabaseStateRun from %{public}@", &v14, 0xCu);
        }

LABEL_26:

        goto LABEL_27;
      }
    }

    *(stateCopy + 16) = a2;
    goto LABEL_20;
  }

LABEL_29:
  v11 = *MEMORY[0x277D85DE8];
  return stateCopy;
}

- (void)enterStateInitialized
{
  if ([(HDDatabase *)self _transitionToState:?])
  {
    transactionStartGroup = self->_transactionStartGroup;

    dispatch_group_enter(transactionStartGroup);
  }
}

- (void)enterStateRun
{
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDDatabase_enterStateRun__block_invoke;
  block[3] = &unk_27861C698;
  block[4] = self;
  dispatch_sync(protectedDataQueue, block);
}

void __27__HDDatabase_enterStateRun__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HDDatabase *)*(a1 + 32) _transitionToState:?])
  {
    if ([*(*(a1 + 32) + 408) deviceUnlockedSinceBoot])
    {
      v2 = *(*(a1 + 32) + 176);
      v3 = *(a1 + 32);
      v4 = *(v3 + 176);
      *(v3 + 176) = 0;

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
      if (v6)
      {
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v14 + 1) + 8 * v8) + 16))(*(*(&v14 + 1) + 8 * v8));
            ++v8;
          }

          while (v6 != v8);
          v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
        }

        while (v6);
      }
    }

    v9 = *(a1 + 32);
    if (v9 && (*(v9 + 112) & 1) == 0)
    {
      *(v9 + 184) = 1;
      os_unfair_lock_lock((v9 + 80));
      *(v9 + 104) = 0;
      os_unfair_lock_unlock((v9 + 80));
      [*(v9 + 408) addSynchronousContentProtectionObserver:v9];
      v10 = [*(v9 + 24) behavior];
      v11 = [v10 isAppleInternalInstall];

      if ((v11 & 1) == 0)
      {
        objc_initWeak(&location, v9);
        v12 = *(v9 + 72);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __65__HDDatabase__protectedDataQueue_beginObservingContentProtection__block_invoke;
        handler[3] = &unk_27861C828;
        objc_copyWeak(&v19, &location);
        notify_register_dispatch("com.apple.springboard.lock-with-force-biolockout", (v9 + 212), v12, handler);
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }

      -[HDDatabase _protectedDataQueue_contentProtectionStateChanged:previousState:](v9, [*(v9 + 408) observedState], 0);
      *(v9 + 112) = 1;
      dispatch_group_leave(*(v9 + 120));
      v9 = *(a1 + 32);
    }

    [(HDDatabase *)v9 _transitionToState:?];
    dispatch_group_leave(*(*(a1 + 32) + 168));
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addProtectedResourceStores:(id)stores
{
  storesCopy = stores;
  if (self && (os_unfair_lock_lock(&self->_stateLock), state = self->_state, os_unfair_lock_unlock(&self->_stateLock), state == 2) || ([(HDDatabase *)self _transitionToState:?]& 1) != 0)
  {
    protectedDataQueue = self->_protectedDataQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__HDDatabase_addProtectedResourceStores___block_invoke;
    v8[3] = &unk_27861C6C0;
    v9 = storesCopy;
    selfCopy = self;
    dispatch_sync(protectedDataQueue, v8);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v7, OS_LOG_TYPE_FAULT, "Unable to add protected resources", buf, 2u);
    }
  }
}

void __41__HDDatabase_addProtectedResourceStores___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 272) addObject:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_threadLocalTransaction
{
  selfCopy = self;
  if (self)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    selfCopy = [threadDictionary objectForKey:selfCopy[41]];
  }

  return selfCopy;
}

- (id)_threadLocalTransactionContext
{
  if (self)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    v4 = [threadDictionary objectForKey:*(self + 336)];

    lastObject = [v4 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (off_t)_fileSizeForURL:(uint64_t)l error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (stat([v5 fileSystemRepresentation], &v11))
    {
      if (*__error() != 2)
      {
        v7 = MEMORY[0x277CCA9B8];
        v8 = __error();
        [v7 hk_assignError:l code:102 format:{@"Failed to retrieve size for file at '%@': %s", v6, strerror(*v8)}];
      }

      st_size = -1;
    }

    else
    {
      st_size = v11.st_size;
    }
  }

  else
  {
    st_size = 0;
  }

  return st_size;
}

- (void)_protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion:(uint64_t)completion
{
  v3 = a2;
  if (completion)
  {
    dispatch_assert_queue_V2(*(completion + 72));
    mergeQueue = [*(completion + 304) mergeQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__HDDatabase__protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion___block_invoke;
    v5[3] = &unk_27861C710;
    v5[4] = completion;
    v6 = v3;
    dispatch_async(mergeQueue, v5);
  }
}

- (id)databasePoolForDatabaseType:(int64_t)type
{
  databasePoolForType = self->_databasePoolForType;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v8 = [(NSDictionary *)databasePoolForType objectForKeyedSubscript:v7];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = HDStringFromHDDatabaseType(type);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:529 description:{@"Missing database pool for type %@", v11}];
  }

  return v8;
}

- (uint64_t)_performWithTransactionContext:(int)context merge:(void *)merge error:(void *)error block:
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a2;
  errorCopy = error;
  if (!self)
  {
    v22 = 0;
    goto LABEL_28;
  }

  _threadLocalTransaction = [(HDDatabase *)self _threadLocalTransaction];
  if (_threadLocalTransaction)
  {
    v12 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Cannot set database transaction context inside transaction"];
    v13 = v12;
    if (v12)
    {
      if (merge)
      {
        v14 = v12;
        *merge = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v29 = 138543362;
      v30 = v13;
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Failed to set transaction context: %{public}@", &v29, 0xCu);
    }

    v22 = 0;
    goto LABEL_27;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v17 = [threadDictionary objectForKeyedSubscript:self[42]];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [threadDictionary setObject:v17 forKey:self[42]];
  }

  v18 = v9;
  if (([v18 requiresProtectedData] & 1) != 0 || objc_msgSend(v18, "requiresWrite"))
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      v29 = 138543362;
      v30 = v18;
      _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "Over-specified transaction context for performWithTransactionContext:error:block:. Contexts should not specify transaction properties like requiresProtectedData or requiresWrite. (%{public}@)", &v29, 0xCu);
    }

    v20 = [v18 mutableCopy];
    [v20 setRequiresProtectedData:0];
    [v20 setRequiresWrite:0];
  }

  else
  {
    v20 = v18;
  }

  if (context)
  {
    _threadLocalTransactionContext = [(HDDatabase *)self _threadLocalTransactionContext];
    v24 = _threadLocalTransactionContext;
    if (_threadLocalTransactionContext)
    {
      v25 = [_threadLocalTransactionContext mergedContextWithContext:v20 error:merge];
    }

    else
    {
      v25 = [v20 copy];
    }

    v26 = v25;
    if (!v25)
    {

      v22 = 0;
      goto LABEL_26;
    }

    [v17 addObject:v25];
  }

  else
  {
    [v17 addObject:v20];
  }

  v22 = errorCopy[2](errorCopy, merge);
  [v17 removeLastObject];
LABEL_26:

LABEL_27:
LABEL_28:

  v27 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

- (BOOL)performTransactionWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler
{
  v165 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  handlerCopy = handler;
  if (([(HDDatabase *)self _isDatabaseValidWithError:error]& 1) != 0)
  {
    if (([(HDContentProtectionManager *)self->_contentProtectionManager deviceUnlockedSinceBoot]& 1) != 0)
    {
      currentThread = [MEMORY[0x277CCACC8] currentThread];
      threadDictionary = [currentThread threadDictionary];

      _threadLocalTransaction = [(HDDatabase *)self _threadLocalTransaction];
      requiresWrite = [contextCopy requiresWrite];
      if (_threadLocalTransaction)
      {
        rootContext = [(HDDatabaseTransaction *)_threadLocalTransaction rootContext];
        v15 = _threadLocalTransaction;
        v146 = 0;
        v16 = [rootContext containsContext:contextCopy error:&v146];
        v17 = v146;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            localizedDescription = [v17 localizedDescription];
            *buf = 138412290;
            v164 = localizedDescription;
            _os_log_fault_impl(&dword_228986000, v23, OS_LOG_TYPE_FAULT, "Incompatible nested transaction context: %@", buf, 0xCu);
          }

          v24 = v17;
          v25 = v24;
          if (v24)
          {
            if (error)
            {
              v26 = v24;
              v27 = 0;
              *error = v25;
            }

            else
            {
              _HKLogDroppedError();
              v27 = 0;
            }

            v132 = v25;
          }

          else
          {
            v132 = 0;
            v27 = 0;
          }

          goto LABEL_144;
        }

        _threadLocalTransaction = v15;
      }

      else
      {
        _threadLocalTransactionContext = [(HDDatabase *)self _threadLocalTransactionContext];
        if (!_threadLocalTransactionContext)
        {
          if (contextCopy)
          {
            v22 = contextCopy;
          }

          else
          {
            v22 = objc_alloc_init(HDDatabaseTransactionContext);
          }

          _threadLocalTransactionContext = v22;
        }

        v28 = [_threadLocalTransactionContext mergedContextWithContext:contextCopy error:error];

        if (!v28)
        {
          v27 = 0;
LABEL_145:

          goto LABEL_146;
        }

        v15 = [[HDDatabaseTransaction alloc] initWithDatabase:self provider:self rootContext:v28];
      }

      rootContext2 = [(HDDatabaseTransaction *)v15 rootContext];
      v135 = v15;
      v132 = -[HDDatabase _journalForType:](self, "_journalForType:", [rootContext2 journalType]);
      v129 = _threadLocalTransaction;

      if (_threadLocalTransaction)
      {
        LOBYTE(requiresWrite) = 0;
        v25 = 0;
        goto LABEL_110;
      }

      [(HDDatabaseTransaction *)v15 rootContext];
      v30 = v145 = 0;
      os_unfair_lock_lock(&self->_stateLock);
      state = self->_state;
      os_unfair_lock_unlock(&self->_stateLock);
      v32 = state == 4;
      v33 = v30;
      v130 = v30;
      if (!v32)
      {
        profile = [(HDDatabase *)self profile];
        daemon = [profile daemon];
        behavior = [daemon behavior];
        isAppleInternalInstall = [behavior isAppleInternalInstall];

        v33 = v130;
        if (isAppleInternalInstall)
        {
          _HKInitializeLogging();
          v38 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_228986000, v38, OS_LOG_TYPE_FAULT, "Detected transaction start before profileReady. Please delay access to the database until profileReady has been called for the profile; this is already mandatory for protected data transactions and will block all transactions in the future. Reach out to the HealthKit team with questions.", buf, 2u);
          }
        }
      }

      if ([v33 skipTransactionStartTasks])
      {
        v39 = 1;
        goto LABEL_88;
      }

      if ([v33 requiresProtectedData])
      {
        v40 = -[HDDatabase _journalForType:](self, "_journalForType:", [v33 journalType]);
        if (v40 != self->_journal && ([v33 skipJournalMerge] & 1) == 0)
        {
          v41 = objc_alloc_init(HDDatabaseTransactionContext);
          v147[0] = MEMORY[0x277D85DD0];
          v147[1] = 3221225472;
          v147[2] = __68__HDDatabase__waitForTransactionStartTasksIfNeededForContext_error___block_invoke;
          v147[3] = &unk_27861CA00;
          v42 = v40;
          v148 = v42;
          selfCopy = self;
          v43 = [(HDDatabase *)self _performWithTransactionContext:v41 merge:0 error:&v145 block:v147];

          if ((v43 & 1) == 0)
          {

LABEL_78:
            v39 = 0;
            goto LABEL_87;
          }
        }

        dispatch_group_wait(self->_transactionStartGroup, 0xFFFFFFFFFFFFFFFFLL);

        v33 = v130;
      }

      os_unfair_lock_lock(&self->_transactionStartLock);
      v44 = v33;
      os_unfair_lock_assert_owner(&self->_transactionStartLock);
      p_firstUnprotectedWriteTransactionBlocks = &self->_firstUnprotectedWriteTransactionBlocks;
      if (self->_firstUnprotectedWriteTransactionBlocks)
      {
        goto LABEL_42;
      }

      if ([v44 requiresProtectedData])
      {
        if (self->_firstProtectedWriteTransactionBlocks || self->_journalMergeEpoch != self->_mergedJournalEpoch)
        {
LABEL_42:

LABEL_43:
          v126 = v44;
          os_unfair_lock_assert_owner(&self->_transactionStartLock);
          obj = *p_firstUnprotectedWriteTransactionBlocks;
          v46 = *p_firstUnprotectedWriteTransactionBlocks;
          v47 = *p_firstUnprotectedWriteTransactionBlocks;
          *p_firstUnprotectedWriteTransactionBlocks = 0;

          if ([v126 requiresProtectedData])
          {
            v124 = self->_firstProtectedWriteTransactionBlocks;
            firstProtectedWriteTransactionBlocks = self->_firstProtectedWriteTransactionBlocks;
            self->_firstProtectedWriteTransactionBlocks = 0;
          }

          else
          {
            v124 = 0;
          }

          if ([v46 count] || -[NSMutableArray count](v124, "count"))
          {
            if ([v126 requiresProtectedData])
            {
              +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
            }

            else
            {
              +[HDMutableDatabaseTransactionContext contextForWriting];
            }
            v51 = ;
            v121 = v46;
            [v51 setSkipTransactionStartTasks:1];
            [v51 setSkipJournalMerge:1];
            v157 = 0u;
            v158 = 0u;
            v155 = 0u;
            v156 = 0u;
            accessibilityAssertions = [v126 accessibilityAssertions];
            v53 = [accessibilityAssertions countByEnumeratingWithState:&v155 objects:buf count:16];
            if (v53)
            {
              v54 = *v156;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v156 != v54)
                  {
                    objc_enumerationMutation(accessibilityAssertions);
                  }

                  [v51 addAccessibilityAssertion:*(*(&v155 + 1) + 8 * i)];
                }

                v53 = [accessibilityAssertions countByEnumeratingWithState:&v155 objects:buf count:16];
              }

              while (v53);
            }

            v56 = objc_alloc_init(HDDatabaseTransactionContext);
            v159 = 0;
            *&v150 = MEMORY[0x277D85DD0];
            *(&v150 + 1) = 3221225472;
            *&v151 = __86__HDDatabase__transactionStartLock_runFirstTransactionBlocksIfNeededForContext_error___block_invoke;
            *(&v151 + 1) = &unk_27861CA50;
            *&v152 = self;
            v120 = v51;
            *(&v152 + 1) = v120;
            v57 = v121;
            *&v153 = v57;
            v58 = v126;
            *(&v153 + 1) = v58;
            v119 = v124;
            v154 = v119;
            v59 = [(HDDatabase *)self _performWithTransactionContext:v56 merge:0 error:&v159 block:&v150];
            v122 = v159;

            if ((v59 & 1) == 0)
            {
              if ([(HDMutableDatabaseTransactionContext *)v122 hk_isDatabaseAccessibilityError])
              {
                v60 = v122;
                v61 = v60;
                if (v60)
                {
                  v62 = v60;
                  v145 = v61;
                }
              }

              else
              {
                if ((HKIsUnitTesting() & 1) == 0)
                {
                  _HKInitializeLogging();
                  v64 = *MEMORY[0x277CCC2A0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *v161 = 138543362;
                    v162 = v122;
                    _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "First transaction block failed with non-accessibility error: %{public}@", v161, 0xCu);
                  }
                }

                hk_protectedDataInaccessibilityError = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
                v61 = hk_protectedDataInaccessibilityError;
                if (hk_protectedDataInaccessibilityError)
                {
                  v66 = hk_protectedDataInaccessibilityError;
                  v145 = v61;
                }
              }

              objc_storeStrong(&self->_firstUnprotectedWriteTransactionBlocks, obj);
              if ([v58 requiresProtectedData])
              {
                objc_storeStrong(&self->_firstProtectedWriteTransactionBlocks, v124);
              }
            }

            os_unfair_lock_unlock(&self->_transactionStartLock);
            if ((v59 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          else
          {

            os_unfair_lock_unlock(&self->_transactionStartLock);
          }

          v123 = v126;
          if (([v123 requiresProtectedData] & 1) == 0 || objc_msgSend(v123, "skipJournalMerge") && (-[HDDatabase _journalForType:](self, "_journalForType:", objc_msgSend(v123, "journalType")), v67 = objc_claimAutoreleasedReturnValue(), v68 = v67 == self->_journal, v67, v68))
          {
            v39 = 1;
            goto LABEL_86;
          }

          v127 = handlerCopy;
          os_unfair_lock_lock(&self->_transactionStartLock);
          os_unfair_lock_lock(&self->_protectedDataLock);
          journalMergeEpoch = self->_journalMergeEpoch;
          protectedDataLock_protectedDataState = self->_protectedDataLock_protectedDataState;
          os_unfair_lock_unlock(&self->_protectedDataLock);
          os_unfair_lock_unlock(&self->_transactionStartLock);
          if (protectedDataLock_protectedDataState)
          {
            v39 = 1;
            handlerCopy = v127;
LABEL_86:

            goto LABEL_87;
          }

          handlerCopy = v127;
          while (1)
          {
            v125 = v123;
            WeakRetained = objc_loadWeakRetained(&self->_profile);
            if (WeakRetained)
            {
              v99 = objc_alloc_init(HDMutableDatabaseTransactionContext);
              [(HDMutableDatabaseTransactionContext *)v99 setSkipTransactionStartTasks:1];
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              accessibilityAssertions2 = [v125 accessibilityAssertions];
              v101 = [accessibilityAssertions2 countByEnumeratingWithState:&v150 objects:buf count:16];
              if (v101)
              {
                v102 = *v151;
                do
                {
                  for (j = 0; j != v101; ++j)
                  {
                    if (*v151 != v102)
                    {
                      objc_enumerationMutation(accessibilityAssertions2);
                    }

                    [(HDMutableDatabaseTransactionContext *)v99 addAccessibilityAssertion:*(*(&v150 + 1) + 8 * j)];
                  }

                  v101 = [accessibilityAssertions2 countByEnumeratingWithState:&v150 objects:buf count:16];
                }

                while (v101);
              }

              handlerCopy = v127;
              v159 = 0;
              *&v155 = MEMORY[0x277D85DD0];
              *(&v155 + 1) = 3221225472;
              *&v156 = __51__HDDatabase__mergePrimaryJournalForContext_error___block_invoke;
              *(&v156 + 1) = &unk_27861CA00;
              *&v157 = self;
              *(&v157 + 1) = WeakRetained;
              v39 = [(HDDatabase *)self _performWithTransactionContext:v99 merge:0 error:&v159 block:&v155];
              v104 = v159;
              v105 = v104;
              if ((v39 & 1) == 0)
              {
                if ([(HDMutableDatabaseTransactionContext *)v104 hk_isDatabaseAccessibilityError])
                {
                  v106 = v105;
                  v107 = v106;
                  if (v106)
                  {
                    v108 = v106;
                    v145 = v107;
                  }
                }

                else
                {
                  _HKInitializeLogging();
                  v111 = *MEMORY[0x277CCC2A0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *v161 = 138543362;
                    v162 = v105;
                    _os_log_error_impl(&dword_228986000, v111, OS_LOG_TYPE_ERROR, "Journal merge failed with non-accessibility error: %{public}@", v161, 0xCu);
                  }

                  hk_protectedDataInaccessibilityError2 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
                  v107 = hk_protectedDataInaccessibilityError2;
                  if (hk_protectedDataInaccessibilityError2)
                  {
                    v113 = hk_protectedDataInaccessibilityError2;
                    v145 = v107;
                  }
                }
              }
            }

            else
            {
              hk_protectedDataInaccessibilityError3 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
              v105 = hk_protectedDataInaccessibilityError3;
              if (hk_protectedDataInaccessibilityError3)
              {
                v110 = hk_protectedDataInaccessibilityError3;
                v39 = 0;
                v145 = v105;
                v99 = v105;
              }

              else
              {
                v99 = 0;
                v39 = 0;
              }
            }

            os_unfair_lock_lock(&self->_transactionStartLock);
            os_unfair_lock_lock(&self->_protectedDataLock);
            v114 = self->_journalMergeEpoch;
            if ((v39 & 1) == 0)
            {
              break;
            }

            if (journalMergeEpoch == v114)
            {
              self->_mergedJournalEpoch = journalMergeEpoch;
            }

            else
            {
              journalMergeEpoch = self->_mergedJournalEpoch;
            }

            v115 = self->_protectedDataLock_protectedDataState;
            if (v114 != journalMergeEpoch || v115)
            {
              if (v114 != journalMergeEpoch)
              {
                goto LABEL_181;
              }

LABEL_180:
              v116 = 0;
              goto LABEL_182;
            }

            v116 = 0;
            self->_protectedDataLock_protectedDataState = 1;
LABEL_182:
            os_unfair_lock_unlock(&self->_protectedDataLock);
            os_unfair_lock_unlock(&self->_transactionStartLock);
            v117 = v39 & v116;
            journalMergeEpoch = v114;
            if ((v117 & 1) == 0)
            {
              goto LABEL_86;
            }
          }

          if (v114 != self->_mergedJournalEpoch)
          {
            v115 = self->_protectedDataLock_protectedDataState;
LABEL_181:
            v116 = v115 == 0;
            goto LABEL_182;
          }

          goto LABEL_180;
        }

        v49 = -[HDDatabase _journalForType:](self, "_journalForType:", [v44 journalType]);
        v50 = v49 == self->_journal;

        if (!v50)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      os_unfair_lock_unlock(&self->_transactionStartLock);
      v39 = 1;
LABEL_87:
      v33 = v130;
LABEL_88:

      v71 = v145;
      rootContext3 = [(HDDatabaseTransaction *)v135 rootContext];
      if ([rootContext3 requiresProtectedData])
      {
        rootContext4 = [(HDDatabaseTransaction *)v135 rootContext];
        skipTransactionStartTasks = [rootContext4 skipTransactionStartTasks];

        if (skipTransactionStartTasks)
        {
          goto LABEL_93;
        }

        v75 = _Block_copy(self->_unitTest_didWaitForJournalMergeHandler);
        rootContext3 = v75;
        if (v75)
        {
          (*(v75 + 2))(v75, self);
        }
      }

LABEL_93:
      if (requiresWrite)
      {
        rootContext5 = [(HDDatabaseTransaction *)v135 rootContext];
        skipJournalMerge = [rootContext5 skipJournalMerge];

        if ((skipJournalMerge & 1) == 0)
        {
          [(HDDatabaseJournal *)v132 lock];
        }

        if (v132 == self->_journal)
        {
          [(HDDatabaseJournal *)self->_cloudSyncJournal interruptJournalMerge];
          v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [(HDDatabaseJournal *)v25 addObject:self->_cloudSyncJournal];
        }

        else
        {
          v25 = 0;
        }

        [(NSLock *)self->_writeLock lock];
        goto LABEL_108;
      }

      rootContext6 = [(HDDatabaseTransaction *)v135 rootContext];
      if ([rootContext6 requiresProtectedData])
      {
        rootContext7 = [(HDDatabaseTransaction *)v135 rootContext];
        v131 = rootContext6;
        allowsJournalingDuringProtectedRead = [rootContext7 allowsJournalingDuringProtectedRead];
        if (handlerCopy)
        {
          v81 = allowsJournalingDuringProtectedRead;
        }

        else
        {
          v81 = 0;
        }

        if (!v81)
        {
          goto LABEL_105;
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __79__HDDatabase_performTransactionWithContext_error_block_inaccessibilityHandler___block_invoke;
        aBlock[3] = &unk_27861C6E8;
        v143 = v132;
        v144 = handlerCopy;
        handlerCopy = _Block_copy(aBlock);

        rootContext6 = v143;
      }

LABEL_105:
      v25 = 0;
LABEL_108:
      [threadDictionary setObject:v135 forKeyedSubscript:self->_threadLocalTransactionKey];
      if ((v39 & 1) == 0)
      {
        hk_isDatabaseAccessibilityError = [(HDMutableDatabaseTransactionContext *)v71 hk_isDatabaseAccessibilityError];
        if (handlerCopy)
        {
          v92 = hk_isDatabaseAccessibilityError;
        }

        else
        {
          v92 = 0;
        }

        if (v92 == 1)
        {
          v27 = (*(handlerCopy + 2))(handlerCopy, v71, error);
        }

        else
        {
          v93 = v71;
          v94 = v93;
          if (v93)
          {
            if (error)
            {
              v95 = v93;
              *error = v94;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v27 = 0;
        }

        v84 = 0;
        v82 = 0;
        if (!requiresWrite)
        {
          goto LABEL_138;
        }

        goto LABEL_115;
      }

LABEL_110:
      v141 = 0;
      v82 = [(HDDatabaseTransaction *)v135 performWithContext:contextCopy error:&v141 block:blockCopy inaccessibilityHandler:handlerCopy];
      v83 = v141;
      v84 = v83;
      if (v83)
      {
        if (error)
        {
          v85 = v83;
          *error = v84;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v27 = v82;
      if ((requiresWrite & 1) == 0)
      {
LABEL_125:
        if (v129)
        {
LABEL_143:

          v15 = v135;
LABEL_144:

          goto LABEL_145;
        }

LABEL_138:
        [threadDictionary removeObjectForKey:self->_threadLocalTransactionKey];
        if (v82)
        {
          [(HDDatabaseTransaction *)v135 transactionDidEndWithError:0];
        }

        else
        {
          if (!v84)
          {
            v84 = [MEMORY[0x277CCA9B8] hk_error:124 format:@"Transaction failed with unknown error"];
          }

          [(HDDatabaseTransaction *)v135 transactionDidEndWithError:v84];
        }

        goto LABEL_143;
      }

LABEL_115:
      v128 = handlerCopy;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v25 = v25;
      v86 = [(HDDatabaseJournal *)v25 countByEnumeratingWithState:&v137 objects:v160 count:16];
      if (v86)
      {
        v87 = *v138;
        do
        {
          for (k = 0; k != v86; ++k)
          {
            if (*v138 != v87)
            {
              objc_enumerationMutation(v25);
            }

            [*(*(&v137 + 1) + 8 * k) resumeJournalMerge];
          }

          v86 = [(HDDatabaseJournal *)v25 countByEnumeratingWithState:&v137 objects:v160 count:16];
        }

        while (v86);
      }

      handlerCopy = v128;
      rootContext8 = [(HDDatabaseTransaction *)v135 rootContext];
      skipJournalMerge2 = [rootContext8 skipJournalMerge];

      if ((skipJournalMerge2 & 1) == 0)
      {
        [(HDDatabaseJournal *)v132 unlock];
      }

      [(NSLock *)self->_writeLock unlock];
      goto LABEL_125;
    }

    hk_databaseInaccessibleBeforeFirstUnlockError = [MEMORY[0x277CCA9B8] hk_databaseInaccessibleBeforeFirstUnlockError];
    v19 = hk_databaseInaccessibleBeforeFirstUnlockError;
    if (hk_databaseInaccessibleBeforeFirstUnlockError)
    {
      if (error)
      {
        v20 = hk_databaseInaccessibleBeforeFirstUnlockError;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v27 = 0;
LABEL_146:

  v96 = *MEMORY[0x277D85DE8];
  return v27;
}

- (uint64_t)_isDatabaseValidWithError:(uint64_t)result
{
  v11 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock((result + 8));
    v4 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 8));
    if (v4 == 5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = @"Database invalidated";
    }

    else
    {
      if (v4)
      {
        result = 1;
        goto LABEL_10;
      }

      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        v9 = 138543362;
        v10 = v3;
        _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "%{public}@: Attempt to access the database before calling its ready. This represents a bug in the caller; clients should wait on database availability before attempting to open transactions.", &v9, 0xCu);
      }

      v6 = MEMORY[0x277CCA9B8];
      v7 = @"Database not yet available";
    }

    [v6 hk_assignError:a2 code:1500 description:v7];
    result = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __79__HDDatabase_performTransactionWithContext_error_block_inaccessibilityHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  v4 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) unlock];

  return v4;
}

- (BOOL)performHighPriorityTransactionsWithError:(id *)error block:(id)block
{
  blockCopy = block;
  v7 = +[HDDatabaseTransactionContext highPriorityContext];
  LOBYTE(error) = [(HDDatabase *)self performWithTransactionContext:v7 error:error block:blockCopy];

  return error;
}

- (void)_performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:(void *)queue block:
{
  v5 = a2;
  queueCopy = queue;
  v7 = queueCopy;
  if (self && queueCopy)
  {
    if (!v5)
    {
      v5 = dispatch_get_global_queue(21, 0);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke;
    aBlock[3] = &unk_27861C710;
    v5 = v5;
    v17 = v5;
    v18 = v7;
    v8 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_3;
    v14[3] = &unk_27861C738;
    v14[4] = self;
    v7 = v8;
    v15 = v7;
    v9 = _Block_copy(v14);
    if ((v9[2]() & 1) == 0)
    {
      v10 = *(self + 72);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_4;
      block[3] = &unk_27861C760;
      block[4] = self;
      v12 = v9;
      v13 = v7;
      dispatch_async(v10, block);
    }
  }
}

void __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke(uint64_t a1)
{
  v2 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithName:@"_performWhenDataProtectedByFirstUnlockIsAvailableOnQueue"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_2;
  v6[3] = &unk_27861C710;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 invalidate];
}

uint64_t __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_3(uint64_t a1)
{
  result = [*(*(a1 + 32) + 408) deviceUnlockedSinceBoot];
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3 && (os_unfair_lock_lock((v3 + 8)), v4 = *(v3 + 16), os_unfair_lock_unlock((v3 + 8)), v4 == 4))
    {
      (*(*(a1 + 40) + 16))();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __77__HDDatabase__performWhenDataProtectedByFirstUnlockIsAvailableOnQueue_block___block_invoke_4(uint64_t a1)
{
  if (([(HDDatabase *)*(a1 + 32) isInvalid]& 1) == 0 && ((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    v2 = *(*(a1 + 32) + 176);
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v4 = *(a1 + 32);
      v5 = *(v4 + 176);
      *(v4 + 176) = v3;

      v2 = *(*(a1 + 32) + 176);
    }

    v6 = _Block_copy(*(a1 + 48));
    [v2 addObject:?];
  }
}

- (os_unfair_lock_s)isInvalid
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 2);
    v2 = *&v1[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1 + 2);
    return (v2 == 5);
  }

  return result;
}

- (BOOL)performWithJournalType:(int64_t)type error:(id *)error block:(id)block
{
  blockCopy = block;
  v9 = objc_alloc_init(HDMutableDatabaseTransactionContext);
  [(HDMutableDatabaseTransactionContext *)v9 setJournalType:type];
  LOBYTE(error) = [(HDDatabase *)self performWithTransactionContext:v9 error:error block:blockCopy];

  return error;
}

- (id)beginExtendedTransactionWithContext:(id)context transactionTimeout:(double)timeout continuationTimeout:(double)continuationTimeout error:(id *)error
{
  contextCopy = context;
  v11 = [[HDExtendedDatabaseTransaction alloc] initWithDatabase:self context:contextCopy transactionTimeout:error continuationTimeout:timeout error:continuationTimeout];
  v12 = v11;
  if (v11)
  {
    protectedDataQueue = self->_protectedDataQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__HDDatabase_beginExtendedTransactionWithContext_transactionTimeout_continuationTimeout_error___block_invoke;
    v15[3] = &unk_27861C6C0;
    v15[4] = self;
    v16 = v11;
    dispatch_sync(protectedDataQueue, v15);
  }

  return v12;
}

void __95__HDDatabase_beginExtendedTransactionWithContext_transactionTimeout_continuationTimeout_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 392);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 392);
    *(v4 + 392) = v3;

    v2 = *(*(a1 + 32) + 392);
  }

  v6 = *(a1 + 40);
  v7 = [v6 transactionIdentifier];
  [v2 setObject:v6 forKeyedSubscript:?];
}

- (id)extendedDatabaseTransactionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"transactionIdentifier != nil"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__64;
  v18 = __Block_byref_object_dispose__64;
  v19 = 0;
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDDatabase_extendedDatabaseTransactionForIdentifier___block_invoke;
  block[3] = &unk_27861C788;
  v12 = identifierCopy;
  v13 = &v14;
  block[4] = self;
  v7 = identifierCopy;
  dispatch_sync(protectedDataQueue, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __55__HDDatabase_extendedDatabaseTransactionForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 392) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)finalizeExtendedTransactionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:906 description:{@"Invalid parameter not satisfying: %@", @"transactionIdentifier != nil"}];
  }

  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDDatabase_finalizeExtendedTransactionForIdentifier___block_invoke;
  block[3] = &unk_27861C6C0;
  block[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  dispatch_async(protectedDataQueue, block);
}

- (id)databaseSizeInBytesForTypeUnprotected:(BOOL)unprotected WAL:(BOOL)l
{
  lCopy = l;
  unprotectedCopy = unprotected;
  v28 = *MEMORY[0x277D85DE8];
  if (unprotected)
  {
    [(HDDatabase *)self _mainDatabaseURL];
  }

  else
  {
    [(HDDatabase *)self _protectedDatabaseURL];
  }
  v7 = ;
  v8 = v7;
  if (lCopy)
  {
    v9 = v7;
    v10 = v9;
    if (self)
    {
      uRLByDeletingPathExtension = [v9 URLByDeletingPathExtension];
      v12 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"sqlite-wal"];
    }

    else
    {
      v12 = 0;
    }

    v23 = 0;
    v13 = [(HDDatabase *)self _fileSizeForURL:v12 error:&v23];
    v14 = v23;

    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
    v13 = [(HDDatabase *)self _fileSizeForURL:v7 error:&v22];
    v14 = v22;
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_8:
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
      goto LABEL_19;
    }
  }

  if (v14)
  {
    v16 = @"protected";
    if (unprotectedCopy)
    {
      v16 = @"unprotected";
    }

    v17 = &stru_283BF39C8;
    if (lCopy)
    {
      v17 = @"WAL";
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v16, v17];
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v18;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Failed to get database size for %@ : %{public}@", buf, 0x16u);
    }
  }

  v15 = 0;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_mainDatabaseURL
{
  if (self)
  {
    self = [MEMORY[0x277D10B30] mainDatabaseURLWithProfileDirectoryPath:self[4]];
    v1 = vars8;
  }

  return self;
}

- (void)_protectedDatabaseURL
{
  if (self)
  {
    self = [MEMORY[0x277D10B30] protectedDatabaseURLWithProfileDirectoryPath:self[4]];
    v1 = vars8;
  }

  return self;
}

- (id)databaseSizeInBytes
{
  v3 = [(HDDatabase *)self databaseSizeInBytesForTypeUnprotected:1 WAL:0];
  v4 = v3;
  v5 = v3 == 0;
  if (v3)
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  v7 = [(HDDatabase *)self databaseSizeInBytesForTypeUnprotected:1 WAL:1];
  v8 = v7;
  if (v7)
  {
    longLongValue += [v7 longLongValue];
  }

  else
  {
    v5 = 1;
  }

  v9 = [(HDDatabase *)self databaseSizeInBytesForTypeUnprotected:0 WAL:0];
  v10 = v9;
  if (v9)
  {
    longLongValue += [v9 longLongValue];
  }

  else
  {
    v5 = 1;
  }

  v11 = [(HDDatabase *)self databaseSizeInBytesForTypeUnprotected:0 WAL:1];
  v12 = v11;
  if (v11 && (v13 = [v11 longLongValue], !v5))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13 + longLongValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_reportDatabaseMigrationStatus:(int64_t)status component:(int64_t)component schemaVersion:(int64_t)version error:(id)error
{
  errorCopy = error;
  _newCorruptionEventStore = [(HDDatabase *)self _newCorruptionEventStore];
  if (!errorCopy)
  {
    goto LABEL_7;
  }

  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileIdentifier = [WeakRetained profileIdentifier];
  v14 = [_newCorruptionEventStore mostRecentMigrationFailureEventForProfile:profileIdentifier component:component schemaVersion:&v25];

  if (!v14 || ([MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "compare:", v15), v17 = v25, v15, v16 != 1) || v17 != version)
  {
    v18 = objc_loadWeakRetained(&self->_profile);
    profileIdentifier2 = [v18 profileIdentifier];
    [_newCorruptionEventStore persistMigrationFailureEventForProfile:profileIdentifier2 component:component schemaVersion:version];

LABEL_7:
    v20 = HDStringFromDatabaseComponentIdentifier(component);
    profile = [(HDDatabase *)self profile];
    daemon = [profile daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    v24 = objc_loadWeakRetained(&self->_profile);
    [analyticsSubmissionCoordinator database_reportDatabaseMigrationStatus:status database:v20 schemaVersion:version error:errorCopy profileType:{objc_msgSend(v24, "profileType")}];

    goto LABEL_8;
  }

LABEL_8:
}

- (void)_reportSQLiteCorruption:(id)corruption forDatabase:(int64_t)database shouldPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  v58 = *MEMORY[0x277D85DE8];
  corruptionCopy = corruption;
  if (atomic_exchange(&self->_hasFaultedForCorruptionError._Value, 1u))
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v48 = "protected";
      if (!database)
      {
        v48 = "unprotected";
      }

      *buf = 136315394;
      v55 = v48;
      v56 = 2112;
      v57 = corruptionCopy;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Corruption of the %s database detected:%@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      v10 = "protected";
      if (!database)
      {
        v10 = "unprotected";
      }

      *buf = 136315394;
      v55 = v10;
      v56 = 2112;
      v57 = corruptionCopy;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Corruption of the %s database detected:%@", buf, 0x16u);
    }
  }

  _newCorruptionEventStore = [(HDDatabase *)self _newCorruptionEventStore];
  v53 = 0;
  [_newCorruptionEventStore dateOfMostRecentObliteration:&v53];
  v50 = v49 = promptCopy;
  v51 = v53;
  if (v50)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = MEMORY[0x277CCACA8];
    _protectedDatabaseURL = [(HDDatabase *)self _protectedDatabaseURL];
    v15 = _protectedDatabaseURL;
    v16 = [v13 stringWithUTF8String:{objc_msgSend(_protectedDatabaseURL, "fileSystemRepresentation")}];
    v17 = [defaultManager attributesOfItemAtPath:v16 error:0];
    fileCreationDate = [v17 fileCreationDate];

    v19 = MEMORY[0x277CCACA8];
    _mainDatabaseURL = [(HDDatabase *)self _mainDatabaseURL];
    v21 = _mainDatabaseURL;
    v22 = [v19 stringWithUTF8String:{objc_msgSend(_mainDatabaseURL, "fileSystemRepresentation")}];
    v23 = [defaultManager attributesOfItemAtPath:v22 error:0];
    fileCreationDate2 = [v23 fileCreationDate];

    if (fileCreationDate && [v50 compare:fileCreationDate] == 1)
    {
      v25 = 1;
    }

    else if (fileCreationDate2)
    {
      v25 = [v50 compare:fileCreationDate2] == 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  profile = [(HDDatabase *)self profile];
  v27 = [HDDatabaseCorruptionEvent createForProfile:profile component:database != 0 error:corruptionCopy failedObliterationReason:v51];

  [_newCorruptionEventStore persistCorruptionEvent:v27];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];

  hd_sqliteExtendedErrorCode = [corruptionCopy hd_sqliteExtendedErrorCode];
  v32 = objc_loadWeakRetained(&self->_profile);
  localizedDescription = [corruptionCopy localizedDescription];
  hd_failingSQLStatement = [corruptionCopy hd_failingSQLStatement];
  v35 = hd_failingSQLStatement;
  if (hd_failingSQLStatement)
  {
    v36 = hd_failingSQLStatement;
  }

  else
  {
    v36 = &stru_283BF39C8;
  }

  [analyticsSubmissionCoordinator database_reportSQLiteCorruptionWithExtendedErrorCode:hd_sqliteExtendedErrorCode type:database profile:v32 description:localizedDescription sqlStatement:v36 failedObliterationAttempt:v25];

  if (v49)
  {
    v37 = [HDDatabaseCorruptionTTRPrompter alloc];
    profile2 = [(HDDatabase *)self profile];
    daemon2 = [profile2 daemon];
    behavior = [daemon2 behavior];
    v41 = [(HDDatabaseCorruptionTTRPrompter *)v37 initWithStore:_newCorruptionEventStore behavior:behavior];

    [(HDDatabaseCorruptionTTRPrompter *)v41 promptForEvent:v27];
  }

  profile3 = [(HDDatabase *)self profile];
  daemon3 = [profile3 daemon];
  autoBugCaptureReporter = [daemon3 autoBugCaptureReporter];
  hd_sqliteExtendedErrorCode2 = [corruptionCopy hd_sqliteExtendedErrorCode];
  if (database)
  {
    v46 = @"protected";
  }

  else
  {
    v46 = @"unprotected";
  }

  [autoBugCaptureReporter reportCorruptionForDatabase:v46 resultCode:hd_sqliteExtendedErrorCode2];

  v47 = *MEMORY[0x277D85DE8];
}

- (NSDate)mostRecentObliterationDate
{
  _newCorruptionEventStore = [(HDDatabase *)self _newCorruptionEventStore];
  v3 = [_newCorruptionEventStore dateOfMostRecentObliteration:0];

  return v3;
}

- (id)_newCorruptionEventStore
{
  v3 = [HDDatabaseCorruptionEventStore alloc];

  return [(HDDatabaseCorruptionEventStore *)v3 initWithDelegate:self];
}

- (id)_newTTRPromptControllerWithProfile:(id)profile domainName:(id)name loggingCategory:(id)category
{
  profileCopy = profile;
  nameCopy = name;
  categoryCopy = category;
  v10 = [[HDTTRPromptController alloc] initWithProfile:profileCopy domainName:nameCopy loggingCategory:categoryCopy];

  return v10;
}

- (void)store:(id)store setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:objectCopy forKey:keyCopy];
}

- (id)store:(id)store objectForKey:(id)key
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  return v6;
}

- (id)_newDatabaseConnectionWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x277D10B30]) initWithDatabaseURL:lCopy];

  return v4;
}

- (id)_createAndVerifyDatabaseConnectionWithType:(int64_t)type error:(id *)error
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  if (self)
  {
    profileDirectoryPath = self->_profileDirectoryPath;
    if (type)
    {
      [MEMORY[0x277D10B30] protectedDatabaseURLWithProfileDirectoryPath:profileDirectoryPath];
    }

    else
    {
      [MEMORY[0x277D10B30] mainDatabaseURLWithProfileDirectoryPath:profileDirectoryPath];
    }
    v8 = ;
    v9 = [(HDDatabase *)self _newDatabaseConnectionWithURL:v8];
    [v9 setDelegate:self];
    if (type == 1)
    {
      v10 = MEMORY[0x277CCA198];
    }

    else if (type)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *v27 = type;
        _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "Unexpected database type (%ld), defaulting to complete protection.", buf, 0xCu);
      }

      v10 = MEMORY[0x277CCA190];
    }

    else
    {
      v10 = MEMORY[0x277CCA1A0];
    }

    [v9 setFileProtectionType:*v10];
  }

  else
  {
    v9 = 0;
  }

  fileURL = [v9 fileURL];
  v25 = 0;
  v13 = [v9 openWithError:&v25];
  v14 = v25;
  if (!v13)
  {
    v18 = v9;
    goto LABEL_25;
  }

  [v9 close];

  if (v13 == 26)
  {
LABEL_17:
    [(HDDatabase *)self _reportSQLiteCorruption:v14 forDatabase:type shouldPrompt:1];
    v15 = @"unprotected";
    if (type == 1)
    {
      v15 = @"protected";
    }

    _newCorruptionEventStore = [MEMORY[0x277CCACA8] stringWithFormat:@"Corrupt %@ database (%d)", v15, v13];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    [WeakRetained obliterateAndTerminateWithOptions:2 reason:_newCorruptionEventStore completion:0];

    goto LABEL_24;
  }

  if (v13 != 13)
  {
    if (v13 != 11)
    {
      _HKInitializeLogging();
      _newCorruptionEventStore = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(_newCorruptionEventStore, OS_LOG_TYPE_ERROR))
      {
        path = [fileURL path];
        *buf = 67109378;
        v27[0] = v13;
        LOWORD(v27[1]) = 2114;
        *(&v27[1] + 2) = path;
        _os_log_error_impl(&dword_228986000, _newCorruptionEventStore, OS_LOG_TYPE_ERROR, "Unable to open database: [%d, %{public}@]", buf, 0x12u);
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  _newCorruptionEventStore = [(HDDatabase *)self _newCorruptionEventStore];
  [_newCorruptionEventStore persistDeviceOutOfSpaceEvent];
LABEL_24:

  v18 = 0;
LABEL_25:
  v19 = v14;
  v20 = v19;
  if (v19)
  {
    if (error)
    {
      v21 = v19;
      *error = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (uint64_t)_performMigrationWithUnprotectedDatabase:(void *)database protectedDatabase:(void *)protectedDatabase error:
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = a2;
  databaseCopy = database;
  _threadLocalTransaction = [(HDDatabase *)self _threadLocalTransaction];
  if (_threadLocalTransaction)
  {
    if (databaseCopy)
    {
LABEL_3:
      protectedDatabase = [_threadLocalTransaction protectedDatabase];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__performMigrationWithUnprotectedDatabase_protectedDatabase_error_ object:self file:@"HDDatabase.mm" lineNumber:1328 description:@"Migration must be performed inside a database transaction"];

    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  protectedDatabase = [_threadLocalTransaction unprotectedDatabase];
LABEL_6:
  if (protectedDatabase)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__performMigrationWithUnprotectedDatabase_protectedDatabase_error_ object:self file:@"HDDatabase.mm" lineNumber:1331 description:@"Transaction database connection must be nil before migration"];
  }

  [_threadLocalTransaction setPerformingMigration:1];
  profile = [self profile];
  daemon = [profile daemon];

  pluginManager = [daemon pluginManager];
  v12 = [pluginManager pluginsConformingToProtocol:&unk_283CCAD48];
  allValues = [v12 allValues];

  v14 = [HDDatabaseMigrationTransaction alloc];
  behavior = [daemon behavior];
  v16 = [(HDDatabaseMigrationTransaction *)v14 initWithUnprotectedDatabase:v37 protectedDatabase:databaseCopy schemaProviders:allValues behavior:behavior];

  [(HDDatabaseMigrationTransaction *)v16 setDelegate:self];
  v40 = 0;
  v17 = [(HDDatabaseMigrationTransaction *)v16 migrateOrCreateSchemaWithError:&v40];
  v18 = v40;
  if (!v17)
  {
    protectedDatabase2 = [_threadLocalTransaction protectedDatabase];
    v21 = protectedDatabase2 == 0;

    if (v21)
    {
      v17 = 0;
      goto LABEL_23;
    }

    [_threadLocalTransaction protectedDatabase];
    v22 = v39 = v18;
    if (!v22)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:sel__runPostMigrationUpdatesWithDatabase_error_ object:self file:@"HDDatabase.mm" lineNumber:1374 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
    }

    [self offsetTimeInterval];
    if (v23 == 0.0 || (*(self + 297) & 1) != 0)
    {
      v24 = 1;
    }

    else
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __57__HDDatabase__runPostMigrationUpdatesWithDatabase_error___block_invoke;
      v42 = &unk_27861C7D8;
      selfCopy = self;
      v44 = v23;
      v32 = [v22 performTransactionWithType:1 error:&v39 usingBlock:buf];
      v24 = v32;
      if (v32)
      {
        *(self + 297) = 1;
      }
    }

    v25 = v39;
    if (v24)
    {
      v17 = 0;
      v18 = v25;
      goto LABEL_23;
    }

    _HKInitializeLogging();
    v31 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Failed to run post-migration updates: %{public}@", buf, 0xCu);
    }

    v17 = 1;
    v18 = v25;
  }

  if ([v18 hd_isCorruptionError])
  {
    [self setCorruptedMigrationAttemptsCount:{objc_msgSend(self, "corruptedMigrationAttemptsCount") + 1}];
    if ([self corruptedMigrationAttemptsCount] >= 6)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        corruptedMigrationAttemptsCount = [self corruptedMigrationAttemptsCount];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = corruptedMigrationAttemptsCount;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%@ received database corruption errors from %ld migration attempts.", buf, 0x16u);
      }

      v17 = 2;
    }
  }

LABEL_23:
  v26 = v18;
  v27 = v26;
  if (v26)
  {
    if (protectedDatabase)
    {
      v28 = v26;
      *protectedDatabase = v27;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  [_threadLocalTransaction setPerformingMigration:0];
  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_reportMigrationResultIfNecessaryForStatus:(void *)status database:(unsigned int)database protectedDatabase:(void *)protectedDatabase error:
{
  v30 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  protectedDatabaseCopy = protectedDatabase;
  v11 = protectedDatabaseCopy;
  if ((a2 > 4 || ((1 << a2) & 0x19) == 0) && ([protectedDatabaseCopy hk_isDatabaseSchemaRolledBackError] & 1) == 0)
  {
    v13 = @"unprotected";
    if (database)
    {
      v13 = @"protected";
    }

    v23 = v13;
    v22 = HDDatabaseMigrationStatusToString(a2);
    v25 = 0;
    v14 = [statusCopy userVersionWithDatabaseName:0 error:&v25];
    v24 = v25;
    v15 = MEMORY[0x277CCC2A0];
    if (v14 == -1)
    {
      _HKInitializeLogging();
      v16 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = v23;
        v28 = 2114;
        v29 = v24;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Unable to get schema version for database %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %lld", v23, v22, v14];
    _HKInitializeLogging();
    v18 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v11;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Report %{public}@ database migration failure %{public}@", buf, 0x16u);
    }

    profile = [self profile];
    daemon = [profile daemon];
    autoBugCaptureReporter = [daemon autoBugCaptureReporter];
    [autoBugCaptureReporter reportDatabaseMigrationFailureWithContext:v17];

    [self _reportDatabaseMigrationStatus:a2 component:database schemaVersion:v14 error:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__HDDatabase__migrateOrCreateProtectedSchemaInDatabase_transaction_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRequiresWrite:1];
  [*(a1 + 32) setHighPriority:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 performTransactionWithContext:v3 error:&obj block:&__block_literal_global_66 inaccessibilityHandler:0];
  objc_storeStrong((v4 + 40), obj);
  atomic_store(v5, (*(*(a1 + 56) + 8) + 24));
}

uint64_t __57__HDDatabase__runPostMigrationUpdatesWithDatabase_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v19 = a2;
  if (v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = objc_opt_class();
    v7 = [v4 profile];
    v8 = [v7 daemon];
    v9 = [v8 behavior];
    v10 = [v6 allEntityClassesWithBehavior:v9];

    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v21 = 0;
          if ([v14 isSubclassOfClass:objc_opt_class()])
          {
            v15 = [v14 updateSQLForTimeOffsetWithBindingCount:&v21];
            if (v15)
            {
              v20[0] = MEMORY[0x277D85DD0];
              v20[1] = 3221225472;
              v20[2] = __54__HDDatabase__applyOffsetTimeInterval_database_error___block_invoke;
              v20[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
              v20[4] = v21;
              v20[5] = v5;
              if (([v19 executeUncachedSQL:v15 error:a3 bindingHandler:v20 enumerationHandler:0] & 1) == 0)
              {

                v16 = 0;
                goto LABEL_15;
              }
            }
          }

          else
          {
            v15 = 0;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v16 = 1;
LABEL_15:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __54__HDDatabase__applyOffsetTimeInterval_database_error___block_invoke(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = sqlite3_bind_double(a2, ++v4, *(v3 + 40));
    }

    while (*(v3 + 32) > v4);
  }

  return result;
}

- (void)migrationTransaction:(id)transaction didCreateDatabasesWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = identifierCopy;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Inserting identifier %{public}@ in user defaults", &v14, 0xCu);
  }

  profile = [(HDDatabase *)self profile];
  profileIdentifier = [profile profileIdentifier];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [MEMORY[0x277CCAD78] hk_UUIDWithData:identifierCopy];
  uUIDString = [v10 UUIDString];
  v12 = HDDatabaseIdentifierDefaultKeyForProfileIdentifier(profileIdentifier);
  [standardUserDefaults setObject:uUIDString forKey:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)migrationTransaction:(id)transaction didEncounterDatabaseMismatchWithUnprotectedIdentifier:(id)identifier protectedIdentifier:(id)protectedIdentifier
{
  identifierCopy = identifier;
  protectedIdentifierCopy = protectedIdentifier;
  profile = [(HDDatabase *)self profile];
  daemon = [profile daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator database_reportUnprotectedDatabaseIdentifier:identifierCopy doesNotMatchProtectedDatabaseIdentifier:protectedIdentifierCopy];
}

- (id)migrationTransaction:(id)transaction entityClassesWithBehavior:(id)behavior
{
  v4 = [HDDatabase allEntityClassesWithBehavior:behavior];

  return v4;
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  dispatch_assert_queue_V2(self->_protectedDataQueue);

  [(HDDatabase *)self _protectedDataQueue_flushProtectedDataIfNecessary];
}

- (void)_protectedDataQueue_flushProtectedDataIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 72));
    os_unfair_lock_lock((self + 80));
    v2 = *(self + 104);
    os_unfair_lock_unlock((self + 80));
    if (v2 == 2 && (*(self + 208) & 1) == 0)
    {
      v3 = [*(self + 344) activeAssertionsForIdentifier:@"DatabaseAccessibility"];
      if ([v3 hk_containsObjectPassingTest:&__block_literal_global_562])
      {
        _HKInitializeLogging();
        v4 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "We have at least one active workout assertion. Will delay flushing protected data", buf, 2u);
        }

        goto LABEL_10;
      }

      if ([v3 count])
      {
        os_unfair_lock_lock((self + 80));
        isProtectedDataFlushDeadline = [(HDDatabase *)self _protectedDataLock_isProtectedDataFlushDeadlinePassed];
        os_unfair_lock_unlock((self + 80));
        if (!isProtectedDataFlushDeadline)
        {
LABEL_10:
          v6 = 0;
LABEL_17:

          goto LABEL_18;
        }

        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" with %lu active assertions", objc_msgSend(v3, "count")];
      }

      else
      {
        v6 = 0;
      }

      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v8 = &stru_283BF39C8;
        if (v6)
        {
          v8 = v6;
        }

        *buf = 138543362;
        v11 = v8;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "Flushing protected data%{public}@", buf, 0xCu);
      }

      [(HDDatabase *)self _protectedDataQueue_flushProtectedData];
      goto LABEL_17;
    }
  }

LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
}

- (id)checkOutProtectedDatabase:(id)database error:(id *)error
{
  v4 = [(HDDatabase *)self _checkOutDatabaseForTransaction:database databaseType:1 error:error];

  return v4;
}

- (id)_checkOutDatabaseForTransaction:(uint64_t)transaction databaseType:(__CFString *)type error:
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    if (([(HDDatabase *)self _isDatabaseValidWithError:type]& 1) == 0)
    {
      self = 0;
      goto LABEL_78;
    }

    rootContext = [v7 rootContext];
    requiresWrite = [rootContext requiresWrite];
    if (requiresWrite)
    {
      if ([rootContext highPriority])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__checkOutDatabaseForTransaction_databaseType_error_ object:self file:@"HDDatabase.mm" lineNumber:1581 description:@"Transaction may not be both high priority and write"];
      }

      v10 = 1;
    }

    else if ([rootContext highPriority])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if ([rootContext requiresNewDatabaseConnection])
    {
      v11 = v10 | 8;
    }

    else
    {
      v11 = v10;
    }

    if (transaction == 1)
    {
      v12 = v7;
      _protectedDataState = [(HDDatabase *)self _protectedDataState];
      if (_protectedDataState)
      {
        if (_protectedDataState != 1)
        {
          if (_protectedDataState != 2)
          {
LABEL_68:

            self = 0;
LABEL_77:

            goto LABEL_78;
          }

          v61 = v12;
          rootContext2 = [v61 rootContext];
          accessibilityAssertions = [rootContext2 accessibilityAssertions];

          if (![accessibilityAssertions count])
          {
            goto LABEL_21;
          }

          os_unfair_lock_lock(self + 20);
          if ([(HDDatabase *)self _protectedDataLock_isProtectedDataFlushDeadlinePassed])
          {
            os_unfair_lock_unlock(self + 20);
LABEL_21:

LABEL_22:
            hk_protectedDataInaccessibilityError = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
            v17 = hk_protectedDataInaccessibilityError;
            if (hk_protectedDataInaccessibilityError)
            {
              if (type)
              {
                v18 = hk_protectedDataInaccessibilityError;
                *type = v17;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            goto LABEL_68;
          }

          v24 = [*(self + 43) activeAssertionsForIdentifier:@"DatabaseAccessibility"];
          v58 = [v24 intersectsSet:accessibilityAssertions];

          os_unfair_lock_unlock(self + 20);
          if ((v58 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        rootContext3 = [v12 rootContext];
        skipJournalMerge = [rootContext3 skipJournalMerge];

        if ((skipJournalMerge & 1) == 0)
        {
          hk_protectedDataInaccessibilityError2 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
          v22 = hk_protectedDataInaccessibilityError2;
          if (hk_protectedDataInaccessibilityError2)
          {
            if (type)
            {
              v23 = hk_protectedDataInaccessibilityError2;
              *type = v22;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v49 = *(self + 9);
          block = MEMORY[0x277D85DD0];
          v64 = 3221225472;
          v65 = __62__HDDatabase__canAccessProtectedDatabaseForTransaction_error___block_invoke;
          v66 = &unk_27861C698;
          selfCopy = self;
          dispatch_async(v49, &block);
          goto LABEL_68;
        }
      }

      if (([rootContext requiresNewDatabaseConnection] & 1) == 0 && !objc_msgSend(*(self + 51), "isProtectedDataAvailable"))
      {
        v11 |= 4uLL;
      }
    }

    v25 = [self databasePoolForDatabaseType:transaction];
    v26 = [v25 checkOutConnectionWithOptions:v11 error:type];
    v27 = v26;
    if (!v26)
    {
      goto LABEL_65;
    }

    [v26 setWriter:requiresWrite];
    if (transaction == 1)
    {
      v28 = v27;
      v29 = v7;
      v30 = v28;
      [*(self + 44) lock];
      if (([(HDDatabase *)self _isDatabaseValidWithError:type]& 1) == 0)
      {
        [*(self + 44) unlock];

        goto LABEL_64;
      }

      v62 = v29;
      if ([*(self + 47) containsObject:v30])
      {
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v33 = [self _createAndVerifyDatabaseConnectionWithType:0 error:type];
        v34 = v30;
        v59 = v34;
        if (v33)
        {
          v71 = 0;
          v32 = [(HDDatabase *)self _performMigrationWithUnprotectedDatabase:v33 protectedDatabase:v34 error:&v71];
          v31 = v71;
          [v33 close];
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to open unprotected database to perform protected migration", &buf, 2u);
          }

          v31 = 0;
          v32 = 1;
        }

        [(HDDatabase *)self _reportMigrationResultIfNecessaryForStatus:v32 database:v59 protectedDatabase:1u error:v31];
        if (v32 - 1 > 2)
        {
          if (!v32)
          {
            [*(self + 47) addObject:v59];
          }
        }

        else
        {
          _HKInitializeLogging();
          v36 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v55 = @"(intentional)";
            if (v31)
            {
              v55 = v31;
            }

            LODWORD(buf) = 138543362;
            *(&buf + 4) = v55;
            _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "Failed to migrate schema for protected database: %{public}@", &buf, 0xCu);
          }

          if (v32 == 2)
          {
            _HKInitializeLogging();
            v37 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Destroying both databases - fatal error while accessing protected database", &buf, 2u);
            }

            v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fatal migration failure accessing protected database: %@", v31];
            WeakRetained = objc_loadWeakRetained(self + 40);
            [WeakRetained obliterateAndTerminateWithOptions:0 reason:v57 completion:0];

            v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Invalid database pair (removed)"];

            v31 = v39;
          }
        }
      }

      [*(self + 44) unlock];
      v40 = v31;
      v41 = v40;
      if (v40)
      {
        if (type)
        {
          v42 = v40;
          *type = v41;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      if (v32 == 4)
      {
        v71 = 0;
        v72 = &v71;
        v73 = 0x2020000000;
        v74 = 0;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__64;
        v78 = __Block_byref_object_dispose__64;
        v79 = 0;
        rootContext4 = [v62 rootContext];
        v44 = [rootContext4 mutableCopy];

        block = MEMORY[0x277D85DD0];
        v64 = 3221225472;
        v65 = __74__HDDatabase__migrateOrCreateProtectedSchemaInDatabase_transaction_error___block_invoke;
        v66 = &unk_27861C7B0;
        v60 = v44;
        selfCopy = v60;
        selfCopy2 = self;
        p_buf = &buf;
        v70 = &v71;
        v45 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &block);
        HKDispatchAsyncOnGlobalConcurrentQueue();
        v46 = dispatch_time(0, 60000000000);
        v47 = dispatch_block_wait(v45, v46);
        v48 = atomic_load(v72 + 24);
        if ((v48 & 1) == 0)
        {
          if (v47)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:type code:103 description:@"Timed out waiting for protected database migration transaction."];
          }

          else
          {
            v50 = *(*(&buf + 1) + 40);
            v51 = v50;
            if (v50)
            {
              if (type)
              {
                v52 = v50;
                *type = v51;
              }

              else
              {
                _HKLogDroppedError();
              }
            }
          }
        }

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v71, 8);

        if (v48)
        {
          goto LABEL_75;
        }

        goto LABEL_64;
      }

      if (v32)
      {
LABEL_64:
        [(HDDatabase *)self _checkInDatabase:v30 type:1 flushImmediately:1];
LABEL_65:
        self = 0;
LABEL_76:

        goto LABEL_77;
      }
    }

LABEL_75:
    [(HDDatabase *)self _updateInactivityFlushTimer];
    self = v27;
    goto LABEL_76;
  }

LABEL_78:

  v53 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)checkOutUnprotectedDatabase:(id)database error:(id *)error
{
  v4 = [(HDDatabase *)self _checkOutDatabaseForTransaction:database databaseType:0 error:error];

  return v4;
}

- (id)checkOutProtectedResources:(id)resources error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileIdentifier = [WeakRetained profileIdentifier];
  identifier = [profileIdentifier identifier];
  v46 = [v6 initWithFormat:@"%@:%@", @"HDDatabase", identifier];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_protectedResourceStores;
  v10 = [(NSHashTable *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v10)
  {

LABEL_36:
    v34 = [v42 copy];
    goto LABEL_47;
  }

  v43 = v10;
  v44 = *v50;
  v39 = 1;
  do
  {
    v11 = 0;
    v12 = protectedResourceIdentifier4;
    do
    {
      if (*v50 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v11);
      v48 = 0;
      v14 = v13;
      v15 = v46;
      os_unfair_lock_lock(&self->_protectedResourceAssertionsLock);
      protectedResourceAssertionsByIdentifier = self->_protectedResourceAssertionsByIdentifier;
      if (!protectedResourceAssertionsByIdentifier)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v18 = self->_protectedResourceAssertionsByIdentifier;
        self->_protectedResourceAssertionsByIdentifier = v17;

        protectedResourceAssertionsByIdentifier = self->_protectedResourceAssertionsByIdentifier;
      }

      protectedResourceIdentifier = [v14 protectedResourceIdentifier];
      v20 = [(NSMutableDictionary *)protectedResourceAssertionsByIdentifier objectForKeyedSubscript:protectedResourceIdentifier];

      if (v20 && [v20 state] != 3)
      {
        v23 = v20;
      }

      else
      {
        if ([v20 state] == 3)
        {
          _HKInitializeLogging();
          v21 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            protectedResourceIdentifier2 = [v14 protectedResourceIdentifier];
            *buf = 138543362;
            v55 = protectedResourceIdentifier2;
            _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Protected resource assertion for %{public}@ is unexpectedly invalid", buf, 0xCu);
          }
        }

        v23 = [v14 requestProtectedResourceAccessAssertionForOwnerIdentifier:v15 error:&v48];

        if (v23)
        {
          v24 = self->_protectedResourceAssertionsByIdentifier;
          protectedResourceIdentifier3 = [v14 protectedResourceIdentifier];
          [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:protectedResourceIdentifier3];
        }
      }

      os_unfair_lock_unlock(&self->_protectedResourceAssertionsLock);

      v26 = v48;
      v27 = v26;
      if (!v23)
      {
        if (v26)
        {
          v35 = v26;
          goto LABEL_40;
        }

        v35 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Protected data store %@ failed to acquire protected resource assertion without providing an error.", v14}];
        if (v35)
        {
LABEL_40:
          if (error)
          {
            v36 = v35;
            *error = v35;
          }

          else
          {
            _HKLogDroppedError();
          }

          if (!v27)
          {
            goto LABEL_44;
          }
        }

        else
        {
LABEL_44:
        }

        goto LABEL_46;
      }

      v47 = 0;
      v28 = [v14 checkOutProtectedResourceWithAssertion:v23 transaction:resourcesCopy error:&v47];
      v29 = v47;
      v30 = v29;
      if (v28)
      {
        protectedResourceIdentifier4 = [v14 protectedResourceIdentifier];
        [v42 setObject:v28 forKeyedSubscript:protectedResourceIdentifier4];
LABEL_20:

        protectedResourceIdentifier4 = v12;
        goto LABEL_28;
      }

      if (v29)
      {
        v31 = v29;
        protectedResourceIdentifier4 = v12;
      }

      else
      {
        v31 = [MEMORY[0x277CCA9B8] hk_error:122 format:{@"Protected data store %@ failed to check out a required protected resource without providing an error.", v14}];
        protectedResourceIdentifier4 = v31;
        if (!v31)
        {
          v39 = 0;
          v12 = 0;
          goto LABEL_20;
        }
      }

      if (error)
      {
        v32 = v31;
        *error = v31;
      }

      else
      {
        _HKLogDroppedError();
      }

      v39 = 0;
      v12 = protectedResourceIdentifier4;
      if (!v30)
      {
        goto LABEL_20;
      }

LABEL_28:

      if (!v28)
      {
        goto LABEL_33;
      }

      ++v11;
      v12 = protectedResourceIdentifier4;
    }

    while (v43 != v11);
    v33 = [(NSHashTable *)obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v43 = v33;
  }

  while (v33);
LABEL_33:

  if (v39)
  {
    goto LABEL_36;
  }

LABEL_46:
  [(HDDatabase *)self _checkInProtectedResources:v42];
  v34 = 0;
LABEL_47:

  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_checkInProtectedResources:(uint64_t)resources
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (resources)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(resources + 272);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          protectedResourceIdentifier = [v8 protectedResourceIdentifier];
          v10 = [v3 objectForKeyedSubscript:protectedResourceIdentifier];

          if (v10)
          {
            [v8 checkInProtectedResource:v10];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkInDatabase:(id)database type:(int64_t)type protectedResources:(id)resources
{
  databaseCopy = database;
  resourcesCopy = resources;
  [(HDDatabase *)self _checkInDatabase:databaseCopy type:type flushImmediately:0];
  if (type == 1 && resourcesCopy)
  {
    [(HDDatabase *)self _checkInProtectedResources:resourcesCopy];
  }

  [(HDDatabase *)self _updateInactivityFlushTimer];
}

- (void)_checkInDatabase:(uint64_t)database type:(uint64_t)type flushImmediately:
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (self)
  {
    if ([v7 checkpointRequired])
    {
      v24 = 0;
      v9 = [v8 executeUncachedSQL:@"PRAGMA wal_checkpoint(truncate)" error:&v24 bindingHandler:0 enumerationHandler:0];
      v10 = v24;
      if ((v9 & 1) == 0)
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v10;
          _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to truncate the wal after a transaction requiring checkpointing: %{public}@", buf, 0xCu);
        }
      }

      [v8 setCheckpointRequired:0];
    }

    if ([v8 isWriter])
    {
      v23 = 0;
      v12 = [v8 incrementalVacuumDatabaseIfNeeded:0 error:&v23];
      v13 = v23;
      if ((v12 & 1) == 0)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
        {
          v15 = v14;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v22 = HDStringFromHDDatabaseType(database);
            *buf = 138543618;
            v26 = v13;
            v27 = 2114;
            v28 = v22;
            _os_log_debug_impl(&dword_228986000, v15, OS_LOG_TYPE_DEBUG, "Error vacuuming %{public}@ database: %{public}@", buf, 0x16u);
          }
        }
      }

      [(HDDatabase *)self _mergeSecondaryJournals];
    }

    corruptionError = [v8 corruptionError];
    v17 = corruptionError == 0;

    if (!v17)
    {
      corruptionError2 = [v8 corruptionError];
      [self _reportSQLiteCorruption:corruptionError2 forDatabase:database shouldPrompt:1];

      type = 1;
    }

    if ([v8 encounteredOutOfSpace])
    {
      _newCorruptionEventStore = [self _newCorruptionEventStore];
      [_newCorruptionEventStore persistDeviceOutOfSpaceEvent];

      [v8 setEncounteredOutOfSpace:0];
    }

    v20 = [self databasePoolForDatabaseType:database];
    [v20 checkInConnection:v8 flushImmediately:type];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_updateInactivityFlushTimer
{
  if (self)
  {
    v1 = *(self + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HDDatabase__updateInactivityFlushTimer__block_invoke;
    block[3] = &unk_27861C698;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (void)_mergeSecondaryJournals
{
  if (self)
  {
    v2 = 0;
    atomic_compare_exchange_strong((self + 240), &v2, 1u);
    if (!v2)
    {
      behavior = [*(self + 24) behavior];
      features = [behavior features];
      xpcGatedSecondaryJournalMerge = [features xpcGatedSecondaryJournalMerge];

      if (xpcGatedSecondaryJournalMerge)
      {
        objc_initWeak(&location, self);
        v6 = *(self + 248);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __37__HDDatabase__mergeSecondaryJournals__block_invoke;
        v9[3] = &unk_27861C988;
        objc_copyWeak(&v10, &location);
        [v6 requestRunWithMaximumDelay:v9 completion:300.0];
        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }

      else
      {
        mergeQueue = [*(self + 312) mergeQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__HDDatabase__mergeSecondaryJournals__block_invoke_2;
        block[3] = &unk_27861C698;
        block[4] = self;
        dispatch_async(mergeQueue, block);
      }
    }
  }
}

- (id)newConnectionForPool:(id)pool error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  if (([(HDDatabase *)self _isDatabaseValidWithError:error]& 1) != 0)
  {
    [(NSConditionLock *)self->_activeDatabasesLock lock];
    v7 = poolCopy;
    v8 = [(HDDatabase *)self databasePoolForDatabaseType:0];

    v9 = [(HDDatabase *)self databasePoolForDatabaseType:1];

    if (v8 != v7 && v9 != v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__databaseTypeForDatabasePool_ object:self file:@"HDDatabase.mm" lineNumber:537 description:{@"Database pool %@ not created by %@", v7, self}];
    }

    if (([(HDDatabase *)self _isDatabaseValidWithError:error]& 1) == 0)
    {
      goto LABEL_29;
    }

    [(NSLock *)self->_schemaMigrationLock lock];
    v32 = 0;
    v10 = [(HDDatabase *)self _createAndVerifyDatabaseConnectionWithType:v8 != v7 error:&v32];
    v11 = v32;
    if (v10)
    {
      if (v8 == v7)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v8 == v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v10;
      }

      v14 = v12;
      v15 = v13;
      if (v8 == v7)
      {
        v31 = v11;
        v16 = [(HDDatabase *)self _performMigrationWithUnprotectedDatabase:v10 protectedDatabase:0 error:&v31];
        v17 = v31;

        v11 = v17;
        [(HDDatabase *)self _reportMigrationResultIfNecessaryForStatus:v16 database:v10 protectedDatabase:0 error:v17];
        if (v16)
        {
          _HKInitializeLogging();
          v18 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v29 = @"(intentional)";
            if (v17)
            {
              v29 = v17;
            }

            *buf = 138543362;
            v34 = v29;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to migrate database: %{public}@", buf, 0xCu);
          }

          if (v16 == 2)
          {
            v19 = MEMORY[0x277CCACA8];
            fileURL = [v10 fileURL];
            path = [fileURL path];
            v22 = [v19 stringWithFormat:@"Failed migrations for %@, error: %@", path, v11];

            WeakRetained = objc_loadWeakRetained(&self->_profile);
            [WeakRetained obliterateAndTerminateWithOptions:0 reason:v22 completion:0];
          }

          [v10 close];

          v10 = 0;
        }
      }
    }

    [(NSLock *)self->_schemaMigrationLock unlock];
    if (!(v10 | v11))
    {
      v11 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to open database"];
    }

    v24 = v11;
    v25 = v24;
    if (v24)
    {
      if (error)
      {
        v26 = v24;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    if (v10)
    {
      [(NSMutableSet *)self->_activeDatabases addObject:v10];
    }

    else
    {
LABEL_29:
      v10 = 0;
    }

    [(NSConditionLock *)self->_activeDatabasesLock unlockWithCondition:[(NSMutableSet *)self->_activeDatabases count]!= 0];
  }

  else
  {
    v10 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)databasePool:(id)pool didFlushConnections:(id)connections
{
  v17 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  [(NSConditionLock *)self->_activeDatabasesLock lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = connectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(NSMutableSet *)self->_activeDatabases removeObject:v10, v12];
        [v10 close];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSConditionLock *)self->_activeDatabasesLock unlockWithCondition:[(NSMutableSet *)self->_activeDatabases count]!= 0];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_protectedDataQueue_updateInactivityFlushTimer
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 72));
    v2 = [self databasePoolForDatabaseType:0];
    checkedOutDatabaseCount = [v2 checkedOutDatabaseCount];

    if (checkedOutDatabaseCount || *(self + 432) <= 0.0 || (*(self + 136) & 1) != 0)
    {
      v4 = *(self + 128);
      if (v4)
      {
        dispatch_source_cancel(v4);
        v5 = *(self + 128);
        *(self + 128) = 0;
      }

      if (checkedOutDatabaseCount >= 1)
      {
        *(self + 136) = 0;
      }
    }

    else if (!*(self + 128))
    {
      objc_initWeak(&location, self);
      v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 72));
      v7 = *(self + 128);
      *(self + 128) = v6;

      v8 = *(self + 128);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __60__HDDatabase__protectedDataQueue_updateInactivityFlushTimer__block_invoke;
      v11[3] = &unk_27861C800;
      objc_copyWeak(&v12, &location);
      dispatch_source_set_event_handler(v8, v11);
      v9 = *(self + 128);
      v10 = dispatch_time(0, (*(self + 432) * 1000000000.0));
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(*(self + 128));
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __60__HDDatabase__protectedDataQueue_updateInactivityFlushTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 9));
    v1 = [*(WeakRetained + 43) activeAssertionsForIdentifier:@"DatabaseAccessibility"];
    if (![v1 count] || (os_unfair_lock_lock(WeakRetained + 20), isProtectedDataFlushDeadline = -[HDDatabase _protectedDataLock_isProtectedDataFlushDeadlinePassed](WeakRetained), os_unfair_lock_unlock(WeakRetained + 20), isProtectedDataFlushDeadline))
    {
      *(WeakRetained + 136) = 1;
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v9 = WeakRetained;
        _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_INFO, "%{public}@: Flushing connections due to inactivity.", buf, 0xCu);
      }

      v4 = [WeakRetained databasePoolForDatabaseType:0];
      v5 = [v4 flush];

      [(HDDatabase *)WeakRetained _protectedDataQueue_flushProtectedData];
      [(HDDatabase *)WeakRetained _protectedDataQueue_updateInactivityFlushTimer];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_protectedDataLock_isProtectedDataFlushDeadlinePassed
{
  os_unfair_lock_assert_owner((self + 80));
  if (*(self + 104) != 2)
  {
    return 0;
  }

  v2 = *(self + 192);
  if (!v2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__protectedDataLock_isProtectedDataFlushDeadlinePassed object:self file:@"HDDatabase.mm" lineNumber:2465 description:{@"Invalid parameter not satisfying: %@", @"_protectedDataFlushDeadlineDate != nil"}];

    v2 = *(self + 192);
  }

  [v2 timeIntervalSinceNow];
  return v3 <= 0.0;
}

- (void)_protectedDataQueue_flushProtectedData
{
  dispatch_assert_queue_V2(*(self + 72));
  v2 = [*(self + 400) objectForKeyedSubscript:&unk_283CB0A68];
  flush = [v2 flush];

  v4 = *(self + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDDatabase__protectedDataQueue_flushProtectedData__block_invoke;
  block[3] = &unk_27861C698;
  block[4] = self;
  dispatch_group_notify(flush, v4, block);
  *(self + 208) = 1;
}

- (void)setProtectedDataFlushInterval:(double)interval
{
  if (interval < 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:1792 description:{@"Invalid parameter not satisfying: %@", @"protectedDataFlushInterval >= 0.0"}];
  }

  self->_protectedDataFlushInterval = interval;
}

void __65__HDDatabase__protectedDataQueue_beginObservingContentProtection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDDatabase *)WeakRetained _protectedDataQueue_handleSpringboardLockoutNotification];
}

- (void)_protectedDataQueue_handleSpringboardLockoutNotification
{
  v22 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 72));
    os_unfair_lock_lock((self + 80));
    if (*(self + 104) == 4)
    {
      os_unfair_lock_unlock((self + 80));
      _HKInitializeLogging();
      v2 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received biolockout notification; ignoring (no passcode)", buf, 0xCu);
      }
    }

    else
    {
      v3 = [MEMORY[0x277D10AD8] isProtectedDataAvailableWithState:?];
      *(self + 104) = 2;
      v4 = [MEMORY[0x277CBEAA8] now];
      v5 = *(self + 192);
      *(self + 192) = v4;

      *(self + 96) = 2;
      os_unfair_lock_unlock((self + 80));
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Received biolockout notification; flushing protected data", buf, 0xCu);
      }

      [(HDDatabase *)self _protectedDataQueue_cancelProtectedDataFlushTimer];
      [self currentlyActiveAssertions];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v7 = v16 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = *v16;
        do
        {
          v10 = 0;
          do
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v15 + 1) + 8 * v10++) invalidate];
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      [(HDDatabase *)self _protectedDataQueue_flushProtectedData];
      v11 = *(self + 88);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__HDDatabase__protectedDataQueue_handleSpringboardLockoutNotification__block_invoke;
      v13[3] = &unk_27861C878;
      v13[4] = self;
      v14 = v3;
      [v11 notifyObservers:v13];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_protectedDataQueue_contentProtectionStateChanged:(uint64_t)changed previousState:
{
  v98 = *MEMORY[0x277D85DE8];
  if (self)
  {
    behavior = [*(self + 24) behavior];
    features = [behavior features];
    dbAvailablityAfterPrimaryMerge = [features dbAvailablityAfterPrimaryMerge];

    if (dbAvailablityAfterPrimaryMerge)
    {
      dispatch_assert_queue_V2(*(self + 72));
      os_unfair_lock_lock((self + 80));
      v9 = [MEMORY[0x277D10AD8] isProtectedDataAvailableWithState:*(self + 104)];
      v10 = [MEMORY[0x277D10AD8] isProtectedDataAvailableWithState:a2];
      _HKInitializeLogging();
      v11 = MEMORY[0x277CCC2A0];
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(self + 104);
        v14 = HDStringFromContentProtectionState();
        v15 = HDStringFromContentProtectionState();
        v16 = v15;
        v17 = @"unavailable";
        *buf = 138544130;
        *&buf[4] = v14;
        if (v9)
        {
          v18 = @"available";
        }

        else
        {
          v18 = @"unavailable";
        }

        *&buf[14] = v18;
        *&buf[12] = 2114;
        if (v10)
        {
          v17 = @"available";
        }

        *&buf[22] = 2114;
        v95 = v15;
        LOWORD(v96) = 2114;
        *(&v96 + 2) = v17;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Got content protection state change notification %{public}@ (%{public}@) -> %{public}@ (%{public}@).", buf, 0x2Au);
      }

      if (*(self + 104) != changed)
      {
        _HKInitializeLogging();
        v19 = *v11;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = HDStringFromContentProtectionState();
          v21 = *(self + 104);
          v22 = HDStringFromContentProtectionState();
          *buf = 138543618;
          *&buf[4] = v20;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "Previous content protection state %{public}@ does not match observed content protection state %{public}@", buf, 0x16u);
        }
      }

      *(self + 104) = a2;
      os_unfair_lock_unlock((self + 80));
      if (v10)
      {
        v23 = *(self + 192);
        *(self + 192) = 0;

        [(HDDatabase *)self _protectedDataQueue_cancelProtectedDataFlushTimer];
        [*(self + 344) suspendBudgetConsumption];
      }

      else
      {
        [*(self + 344) resumeBudgetConsumption];
        if (!*(self + 192))
        {
          v43 = MEMORY[0x277CBEAA8];
          [self protectedDataFlushInterval];
          v44 = [v43 dateWithTimeIntervalSinceNow:?];
          v45 = *(self + 192);
          *(self + 192) = v44;

          *(self + 208) = 0;
          if (*(self + 424) > 0.0)
          {
            [(HDDatabase *)self _protectedDataQueue_cancelProtectedDataFlushTimer];
            v46 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 72));
            v47 = *(self + 200);
            *(self + 200) = v46;

            v48 = dispatch_walltime(0, (*(self + 424) * 1000000000.0));
            dispatch_source_set_timer(*(self + 200), v48, 0xFFFFFFFFFFFFFFFFLL, 0);
            objc_initWeak(buf, self);
            v49 = *(self + 200);
            *&v87 = MEMORY[0x277D85DD0];
            *(&v87 + 1) = 3221225472;
            *&v88 = __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke;
            *(&v88 + 1) = &unk_27861C800;
            objc_copyWeak(v89, buf);
            dispatch_source_set_event_handler(v49, &v87);
            dispatch_activate(*(self + 200));
            objc_destroyWeak(v89);
            objc_destroyWeak(buf);
          }

          _HKInitializeLogging();
          v50 = *v11;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(self + 192);
            v52 = HKDiagnosticStringFromDate();
            *buf = 138543362;
            *&buf[4] = v52;
            _os_log_impl(&dword_228986000, v50, OS_LOG_TYPE_DEFAULT, "Started protected data flush timer with deadline %{public}@", buf, 0xCu);
          }
        }
      }

      [(HDDatabase *)self _protectedDataQueue_flushProtectedDataIfNecessary];
      if (v9 != v10)
      {
        os_unfair_lock_lock((self + 160));
        os_unfair_lock_lock((self + 80));
        if (v10)
        {
          if (*(self + 184) == 1 && (os_unfair_lock_lock((self + 8)), v53 = *(self + 16), os_unfair_lock_unlock((self + 8)), v53 == 4))
          {
            *(self + 184) = 0;
            v54 = *(self + 176);
            v55 = *(self + 176);
            *(self + 176) = 0;

            v56 = 1;
          }

          else
          {
            v54 = 0;
            v56 = 0;
          }

          *(self + 96) = 0;
          ++*(self + 224);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_541;
          v95 = &unk_27861C8F0;
          *&v96 = self;
          v97 = v56;
          v74 = v54;
          *(&v96 + 1) = v74;
          [(HDDatabase *)self _protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion:buf];
        }

        else
        {
          *(self + 96) = 2;
          notify_post(*MEMORY[0x277CCC8F8]);
          _HKInitializeLogging();
          v71 = *v11;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v72 = [*(self + 88) count];
            *buf = 134217984;
            *&buf[4] = v72;
            _os_log_impl(&dword_228986000, v71, OS_LOG_TYPE_DEFAULT, "Notifying %lu observers of protected data availability change: unavailable", buf, 0xCu);
          }

          v73 = *(self + 88);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_544;
          v95 = &unk_27861C8A0;
          *&v96 = self;
          [v73 notifyObservers:buf];
          v74 = 0;
        }

        os_unfair_lock_unlock((self + 80));
        os_unfair_lock_unlock((self + 160));
      }
    }

    else
    {
      dispatch_assert_queue_V2(*(self + 72));
      os_unfair_lock_lock((self + 80));
      v24 = [MEMORY[0x277D10AD8] isProtectedDataAvailableWithState:*(self + 104)];
      v25 = [MEMORY[0x277D10AD8] isProtectedDataAvailableWithState:a2];
      _HKInitializeLogging();
      v26 = MEMORY[0x277CCC2A0];
      v27 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(self + 104);
        v29 = HDStringFromContentProtectionState();
        v30 = HDStringFromContentProtectionState();
        v31 = v30;
        v32 = @"unavailable";
        *buf = 138544130;
        *&buf[4] = v29;
        if (v24)
        {
          v33 = @"available";
        }

        else
        {
          v33 = @"unavailable";
        }

        *&buf[14] = v33;
        *&buf[12] = 2114;
        if (v25)
        {
          v32 = @"available";
        }

        *&buf[22] = 2114;
        v95 = v30;
        LOWORD(v96) = 2114;
        *(&v96 + 2) = v32;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Got content protection state change notification %{public}@ (%{public}@) -> %{public}@ (%{public}@).", buf, 0x2Au);
      }

      if (*(self + 104) != changed)
      {
        _HKInitializeLogging();
        v34 = *v26;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HDStringFromContentProtectionState();
          v36 = *(self + 104);
          v37 = HDStringFromContentProtectionState();
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v37;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "Previous content protection state %{public}@ does not match observed content protection state %{public}@", buf, 0x16u);
        }

        changed = *(self + 104);
      }

      if (a2 == 3 && changed == 2)
      {
        _HKInitializeLogging();
        v38 = *v26;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(self + 104);
          v40 = HDStringFromContentProtectionState();
          v41 = HDStringFromContentProtectionState();
          *buf = 138543618;
          *&buf[4] = v40;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Ignoring invalid protection state transition (%{public}@ -> %{public}@)", buf, 0x16u);
        }

        os_unfair_lock_unlock((self + 80));
      }

      else
      {
        *(self + 104) = a2;
        os_unfair_lock_unlock((self + 80));
        if (v25)
        {
          v42 = *(self + 192);
          *(self + 192) = 0;

          [(HDDatabase *)self _protectedDataQueue_cancelProtectedDataFlushTimer];
          [*(self + 344) suspendBudgetConsumption];
        }

        else
        {
          [*(self + 344) resumeBudgetConsumption];
          if (!*(self + 192))
          {
            v57 = MEMORY[0x277CBEAA8];
            [self protectedDataFlushInterval];
            v58 = [v57 dateWithTimeIntervalSinceNow:?];
            v59 = *(self + 192);
            *(self + 192) = v58;

            *(self + 208) = 0;
            if (*(self + 424) > 0.0)
            {
              [(HDDatabase *)self _protectedDataQueue_cancelProtectedDataFlushTimer];
              v60 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(self + 72));
              v61 = *(self + 200);
              *(self + 200) = v60;

              v62 = dispatch_walltime(0, (*(self + 424) * 1000000000.0));
              dispatch_source_set_timer(*(self + 200), v62, 0xFFFFFFFFFFFFFFFFLL, 0);
              objc_initWeak(buf, self);
              v63 = *(self + 200);
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = __82__HDDatabase__old_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke;
              handler[3] = &unk_27861C800;
              objc_copyWeak(&v93, buf);
              dispatch_source_set_event_handler(v63, handler);
              dispatch_activate(*(self + 200));
              objc_destroyWeak(&v93);
              objc_destroyWeak(buf);
            }

            _HKInitializeLogging();
            v64 = *v26;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(self + 192);
              v66 = HKDiagnosticStringFromDate();
              *buf = 138543362;
              *&buf[4] = v66;
              _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "Started protected data flush timer with deadline %{public}@", buf, 0xCu);
            }
          }
        }

        [(HDDatabase *)self _protectedDataQueue_flushProtectedDataIfNecessary];
        if (v24 != v25)
        {
          os_unfair_lock_lock((self + 160));
          os_unfair_lock_lock((self + 80));
          if (v25)
          {
            if (*(self + 184) == 1 && (os_unfair_lock_lock((self + 8)), v67 = *(self + 16), os_unfair_lock_unlock((self + 8)), v67 == 4))
            {
              *(self + 184) = 0;
              v68 = *(self + 176);
              v69 = *(self + 176);
              *(self + 176) = 0;

              v70 = 1;
            }

            else
            {
              v68 = 0;
              v70 = 0;
            }

            *(self + 96) = 0;
            ++*(self + 224);
            [(HDDatabase *)self _protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion:?];
          }

          else
          {
            v68 = 0;
            v70 = 0;
            *(self + 96) = 2;
          }

          os_unfair_lock_unlock((self + 80));
          os_unfair_lock_unlock((self + 160));
          _HKInitializeLogging();
          v75 = *v26;
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v76 = [*(self + 88) count];
            v77 = "unavailable";
            if (v25)
            {
              v77 = "available";
            }

            *buf = 134218242;
            *&buf[4] = v76;
            *&buf[12] = 2082;
            *&buf[14] = v77;
            _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_DEFAULT, "Notifying %lu observers of protected data availability change: %{public}s", buf, 0x16u);
          }

          v78 = *(self + 88);
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __82__HDDatabase__old_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_547;
          v90[3] = &unk_27861C878;
          v90[4] = self;
          v91 = v25;
          [v78 notifyObservers:v90];
          v79 = MEMORY[0x277CCC8F0];
          if (!v25)
          {
            v79 = MEMORY[0x277CCC8F8];
          }

          notify_post(*v79);
          if (v70)
          {
            _HKInitializeLogging();
            v80 = *v26;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 = [v68 count];
              *buf = 134217984;
              *&buf[4] = v81;
              _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_DEFAULT, "Running %lu first unlock blocks", buf, 0xCu);
            }

            memset(v89, 0, sizeof(v89));
            v87 = 0u;
            v88 = 0u;
            v82 = v68;
            v83 = [v82 countByEnumeratingWithState:&v87 objects:buf count:16];
            if (v83)
            {
              v84 = *v88;
              do
              {
                v85 = 0;
                do
                {
                  if (*v88 != v84)
                  {
                    objc_enumerationMutation(v82);
                  }

                  (*(*(*(&v87 + 1) + 8 * v85) + 16))(*(*(&v87 + 1) + 8 * v85));
                  ++v85;
                }

                while (v83 != v85);
                v83 = [v82 countByEnumeratingWithState:&v87 objects:buf count:16];
              }

              while (v83);
            }
          }
        }
      }
    }
  }

  v86 = *MEMORY[0x277D85DE8];
}

void __80__HDDatabase__protectedDataQueue_mergeJournalWithPrimaryJournalMergeCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v10 = 0;
  v4 = [v2 performTransactionWithContext:v3 error:&v10 block:&__block_literal_global_530 inaccessibilityHandler:0];
  v5 = v10;

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }

  if (v4)
  {
    [(HDDatabase *)*(a1 + 32) _mergeSecondaryJournals];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Post-unlock journal merge trigger transaction failed: %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_waitForContentProtectionObservationSetup
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
    if (v2)
    {
      v3 = *(self + 120);

      dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "_waitForContentProtectionObservationSetup skipped", v5, 2u);
      }
    }
  }
}

- (BOOL)isInSession
{
  [(HDDatabase *)self _waitForContentProtectionObservationSetup];
  contentProtectionManager = self->_contentProtectionManager;

  return [(HDContentProtectionManager *)contentProtectionManager isInSession];
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDDatabase_contentProtectionStateChanged_previousState___block_invoke;
  block[3] = &unk_27861C850;
  block[4] = self;
  block[5] = changed;
  block[6] = state;
  dispatch_sync(protectedDataQueue, block);
}

- (void)_protectedDataQueue_cancelProtectedDataFlushTimer
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 72));
    v2 = *(self + 200);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 200);
      *(self + 200) = 0;
    }
  }
}

void __70__HDDatabase__protectedDataQueue_handleSpringboardLockoutNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 database:*(a1 + 32) protectedDataDidBecomeAvailable:0 dueToLockout:1];
  }

  else if (*(a1 + 40) == 1)
  {
    [v3 database:*(a1 + 32) protectedDataDidBecomeAvailable:0];
  }
}

void __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDDatabase *)WeakRetained _protectedDataQueue_flushProtectedDataIfNecessary];
}

void __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_541(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_2;
  block[3] = &unk_27861C8C8;
  v8 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, block);
}

uint64_t __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCC2A0];
  if (*(a1 + 48) == 1)
  {
    _HKInitializeLogging();
    v3 = *v2;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) count];
      *buf = 134217984;
      v22 = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "Running %lu first unlock blocks", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v16 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  _HKInitializeLogging();
  v9 = *v2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(*(a1 + 40) + 88) count];
    *buf = 134217984;
    v22 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Notifying %lu observers of protected data availability change: available", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 88);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDDatabase__new_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke_542;
  v15[3] = &unk_27861C8A0;
  v15[4] = v11;
  [v12 notifyObservers:v15];
  result = notify_post(*MEMORY[0x277CCC8F0]);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void __82__HDDatabase__old_protectedDataQueue_contentProtectionStateChanged_previousState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDDatabase *)WeakRetained _protectedDataQueue_flushProtectedDataIfNecessary];
}

- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier timeout:(double)timeout error:(id *)error
{
  v5 = [(HDDatabase *)self takeAccessibilityAssertionWithOwnerIdentifier:identifier contextType:1 timeout:1 shouldPerformTransaction:error error:timeout];

  return v5;
}

- (id)takeAccessibilityAssertionWithOwnerIdentifier:(uint64_t)identifier contextType:(int)type timeout:(void *)timeout shouldPerformTransaction:(double)transaction error:
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (self)
  {
    if (identifier == 3 && ([*(self + 27) shouldAllowWorkoutDatabaseAccessWhileLocked] & 1) == 0)
    {
      v22 = [MEMORY[0x277CCA9B8] hk_error:6 description:@"Database assertion is not available. Data is not accessible while locked"];
      v23 = v22;
      if (v22)
      {
        if (timeout)
        {
          v24 = v22;
          *timeout = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      self = 0;
    }

    else
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__64;
      v45 = __Block_byref_object_dispose__64;
      v46 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__64;
      v39 = __Block_byref_object_dispose__64;
      v40 = 0;
      v12 = *(self + 9);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __111__HDDatabase_takeAccessibilityAssertionWithOwnerIdentifier_contextType_timeout_shouldPerformTransaction_error___block_invoke;
      block[3] = &unk_27861C918;
      v32 = &v41;
      identifierCopy = identifier;
      block[4] = self;
      v30 = &v35;
      v31 = &v47;
      v13 = v11;
      v29 = v13;
      transactionCopy = transaction;
      dispatch_sync(v12, block);
      v14 = v42[5];
      if (v14)
      {
        if (type && v48[3] >= 1)
        {
          v15 = objc_alloc_init(HDMutableDatabaseTransactionContext);
          [(HDMutableDatabaseTransactionContext *)v15 addAccessibilityAssertion:v42[5]];
          [(HDMutableDatabaseTransactionContext *)v15 setRequiresProtectedData:1];
          [(HDMutableDatabaseTransactionContext *)v15 setRequiresNewDatabaseConnection:1];
          [(HDMutableDatabaseTransactionContext *)v15 setHighPriority:1];
          v27 = 0;
          v16 = [self performTransactionWithContext:v15 error:&v27 block:&__block_literal_global_556 inaccessibilityHandler:0];
          v17 = v27;
          if ((v16 & 1) == 0)
          {
            _HKInitializeLogging();
            v18 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v52 = v13;
              v53 = 2114;
              v54 = v17;
              _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "Failed to pre-emptively check out database for accessibility assertion owner %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v14 = v42[5];
        }

        self = v14;
      }

      else
      {
        v19 = v36[5];
        v20 = v19;
        if (v19)
        {
          if (timeout)
          {
            v21 = v19;
            *timeout = v20;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        self = 0;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v41, 8);

      _Block_object_dispose(&v47, 8);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier contextType:(int64_t)type error:(id *)error
{
  v5 = [(HDDatabase *)self takeAccessibilityAssertionWithOwnerIdentifier:identifier contextType:type timeout:1 shouldPerformTransaction:error error:0.0];

  return v5;
}

- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier contextType:(int64_t)type shouldPerformTransaction:(BOOL)transaction error:(id *)error
{
  v6 = [(HDDatabase *)self takeAccessibilityAssertionWithOwnerIdentifier:identifier contextType:type timeout:transaction shouldPerformTransaction:error error:0.0];

  return v6;
}

- (id)takeAccessibilityAssertionWithOwnerIdentifier:(id)identifier shouldPerformTransaction:(BOOL)transaction timeout:(double)timeout error:(id *)error
{
  v6 = [(HDDatabase *)self takeAccessibilityAssertionWithOwnerIdentifier:identifier contextType:1 timeout:transaction shouldPerformTransaction:error error:timeout];

  return v6;
}

void __111__HDDatabase_takeAccessibilityAssertionWithOwnerIdentifier_contextType_timeout_shouldPerformTransaction_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 400) objectForKeyedSubscript:&unk_283CB0A68];
  v3 = *(a1 + 72);
  v4 = [*(*(a1 + 32) + 408) observedState];
  v5 = *(a1 + 32);
  if (v4 == 2 && (v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = *(*(a1 + 48) + 8);
    obj = *(v8 + 40);
    v9 = [v5 _createAndVerifyDatabaseConnectionWithType:1 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (!v9)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
      goto LABEL_17;
    }

    [v9 close];
    v10 = [v2 cacheSize];
    *(*(*(a1 + 56) + 8) + 24) = v10 - [v2 count];
  }

  else if ([v5[51] observedState] == 2)
  {
    if (![v2 count] || *(*(a1 + 32) + 209) == 1)
    {
      v7 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
LABEL_17:
      v20 = *(*(a1 + 48) + 8);
      v19 = *(v20 + 40);
      *(v20 + 40) = v7;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = [v2 cacheSize];
    *(*(*(a1 + 56) + 8) + 24) = v11 - [v2 count];
  }

  v12 = [objc_alloc(MEMORY[0x277D10AB8]) initWithAssertionIdentifier:@"DatabaseAccessibility" ownerIdentifier:*(a1 + 40)];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  [*(*(*(a1 + 64) + 8) + 40) setContextType:*(a1 + 72)];
  if (*(a1 + 80) > 0.0)
  {
    [*(*(*(a1 + 64) + 8) + 40) setBudget:?];
  }

  if (([*(*(a1 + 32) + 344) takeAssertion:*(*(*(a1 + 64) + 8) + 40)] & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to take database accessibility assertion"];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
LABEL_18:
  }
}

- (id)cloneAccessibilityAssertion:(id)assertion ownerIdentifier:(id)identifier error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  identifierCopy = identifier;
  assertionIdentifier = [assertionCopy assertionIdentifier];
  v11 = [assertionIdentifier isEqualToString:@"DatabaseAccessibility"];

  if ((v11 & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = assertionCopy;
      _os_log_fault_impl(&dword_228986000, v17, OS_LOG_TYPE_FAULT, "Attempting to clone improper database accessibility assertion: %{public}@", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([assertionCopy state] != 2)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_16;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__64;
  v31 = __Block_byref_object_dispose__64;
  v32 = [assertionCopy cloneWithOwnerIdentifier:identifierCopy];
  if (*(*(&buf + 1) + 40))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__64;
    v26 = __Block_byref_object_dispose__64;
    v27 = 0;
    protectedDataQueue = self->_protectedDataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HDDatabase_cloneAccessibilityAssertion_ownerIdentifier_error___block_invoke;
    block[3] = &unk_27861C940;
    block[4] = self;
    block[5] = &buf;
    block[6] = &v22;
    dispatch_sync(protectedDataQueue, block);
    v13 = *(*(&buf + 1) + 40);
    if (!v13)
    {
      v14 = v23[5];
      v15 = v14;
      if (v14)
      {
        if (error)
        {
          v16 = v14;
          *error = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v13 = *(*(&buf + 1) + 40);
    }

    v18 = v13;
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&buf, 8);

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __64__HDDatabase_cloneAccessibilityAssertion_ownerIdentifier_error___block_invoke(void *a1)
{
  if (([*(a1[4] + 344) takeAssertion:*(*(a1[5] + 8) + 40)] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Failed to take cloned database accessibility assertion"];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

uint64_t __52__HDDatabase__protectedDataQueue_flushProtectedData__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 360) lock];
  v2 = [*(*(a1 + 32) + 400) objectForKeyedSubscript:&unk_283CB0A68];
  v3 = [v2 checkedOutDatabaseCount];

  if (!v3)
  {
    [(HDDatabase *)*(a1 + 32) _invalidateProtectedResourceAssertions];
  }

  v4 = *(*(a1 + 32) + 360);

  return [v4 unlock];
}

- (void)_invalidateProtectedResourceAssertions
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_INFO, "%{public}@: Invalidate protected resource assertions", buf, 0xCu);
    }

    os_unfair_lock_lock((self + 280));
    allValues = [*(self + 288) allValues];
    v4 = *(self + 288);
    *(self + 288) = 0;

    os_unfair_lock_unlock((self + 280));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = allValues;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v8++) invalidate];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)addJournalEntry:(id)entry error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v10[0] = entryCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  LOBYTE(error) = [(HDDatabase *)self addJournalEntries:v7 error:error];

  v8 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)addJournalEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  if (self && ((-[HDDatabase _threadLocalTransactionContext](self), v7 = objc_claimAutoreleasedReturnValue(), (v8 = v7) == 0) ? (v9 = self->_journal) : (-[HDDatabase _journalForType:](self, "_journalForType:", [v7 journalType]), v9 = objc_claimAutoreleasedReturnValue()), v10 = v9, v8, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [(HDDatabaseJournal *)v10 addJournalEntries:entriesCopy profile:WeakRetained error:error];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Attempt to add a journal entry when no journal is active."];
    v10 = 0;
    v12 = 0;
  }

  return v12;
}

- (id)progressForJournalMergeWithType:(int64_t)type
{
  v3 = [(HDDatabase *)self _journalForType:type];
  progressForJournalMerge = [v3 progressForJournalMerge];

  return progressForJournalMerge;
}

- (id)_journalForType:(int64_t)type
{
  v3 = 304;
  if (type == 2)
  {
    v3 = 312;
  }

  return *(&self->super.isa + v3);
}

void __37__HDDatabase__mergeSecondaryJournals__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [HDDatabase _mergeSecondaryJournals];
  }
}

void __37__HDDatabase__mergeSecondaryJournals__block_invoke_2(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 240));
  v1 = *(a1 + 32);
  v2 = *(v1 + 312);
  WeakRetained = objc_loadWeakRetained((v1 + 320));
  [v2 mergeWithProfile:? shouldContinueHandler:?];
}

void __61__HDDatabase__mergeSecondaryJournalsWithActivity_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2A0];
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v33 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting to merge secondary journals using activity", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  [*(*(a1 + 32) + 312) resetJournalMergeInterruptionsCount];
  v6 = *(a1 + 32);
  v7 = *(v6 + 312);
  WeakRetained = objc_loadWeakRetained((v6 + 320));
  v9 = *(a1 + 40);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HDDatabase__mergeSecondaryJournalsWithActivity_completion___block_invoke_576;
  v30[3] = &unk_27861C9B0;
  v31 = v9;
  v10 = [v7 mergeWithProfile:WeakRetained activity:v31 shouldContinueHandler:v30];

  v11 = [MEMORY[0x277CBEAA8] now];
  [v11 timeIntervalSinceDate:v5];
  v13 = v12;

  if ([*(a1 + 40) shouldDefer])
  {
    _HKInitializeLogging();
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Journal merge activity deffered", buf, 0xCu);
    }

    v16 = objc_loadWeakRetained((*(a1 + 32) + 320));
    v17 = [v16 daemon];
    v18 = [v17 analyticsSubmissionCoordinator];
    v19 = [*(*(a1 + 32) + 312) journalMergeInterruptions];
    [v18 database_reportJournalMergeActivityResult:2 duration:v19 interruptions:0 error:v13];
LABEL_11:

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  if (v10)
  {
    _HKInitializeLogging();
    v20 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *buf = 138543362;
      v33 = v21;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Completing journal merge activity successfully", buf, 0xCu);
    }

    v16 = objc_loadWeakRetained((*(a1 + 32) + 320));
    v17 = [v16 daemon];
    v18 = [v17 analyticsSubmissionCoordinator];
    v19 = [*(*(a1 + 32) + 312) journalMergeInterruptions];
    [v18 database_reportJournalMergeActivityResult:0 duration:v19 interruptions:0 error:v13];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v22 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 32);
    *buf = 138543362;
    v33 = v29;
    _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Error merging secondary journal", buf, 0xCu);
  }

  v23 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error merging secondary journals"];
  v24 = objc_loadWeakRetained((*(a1 + 32) + 320));
  v25 = [v24 daemon];
  v26 = [v25 analyticsSubmissionCoordinator];
  v27 = [*(*(a1 + 32) + 312) journalMergeInterruptions];
  [v26 database_reportJournalMergeActivityResult:1 duration:v27 interruptions:v23 error:v13];

  (*(*(a1 + 48) + 16))();
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HDDatabase__mergeSecondaryJournalsWithActivity_completion___block_invoke_576(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) shouldDefer];
  if (v3)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:708 format:@"Interrupting secondary journal merge activity due to activity deferral request."];
  }

  return v3 ^ 1u;
}

- (unint64_t)journalChapterCountForType:(int64_t)type
{
  v3 = [(HDDatabase *)self _journalForType:type];
  journalChapterCount = [v3 journalChapterCount];

  return journalChapterCount;
}

- (void)performInFirstUnprotectedWriteTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_transactionStartLock);
  v5 = transactionCopy;
  firstUnprotectedWriteTransactionBlocks = self->_firstUnprotectedWriteTransactionBlocks;
  if (firstUnprotectedWriteTransactionBlocks || (v7 = objc_alloc_init(MEMORY[0x277CBEB18]), v8 = self->_firstUnprotectedWriteTransactionBlocks, self->_firstUnprotectedWriteTransactionBlocks = v7, v8, firstUnprotectedWriteTransactionBlocks = self->_firstUnprotectedWriteTransactionBlocks, v5 = transactionCopy, firstUnprotectedWriteTransactionBlocks))
  {
    v9 = [v5 copy];
    v10 = _Block_copy(v9);
    [(NSMutableArray *)firstUnprotectedWriteTransactionBlocks addObject:v10];

    os_unfair_lock_unlock(&self->_transactionStartLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_transactionStartLock);
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:2637 description:@"Attempt to add a first unprotected write transaction block after blocks have already been run."];
  }
}

- (void)performInFirstProtectedWriteTransaction:(id)transaction
{
  transactionCopy = transaction;
  os_unfair_lock_lock(&self->_transactionStartLock);
  firstProtectedWriteTransactionBlocks = self->_firstProtectedWriteTransactionBlocks;
  if (firstProtectedWriteTransactionBlocks)
  {
    v6 = [transactionCopy copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)firstProtectedWriteTransactionBlocks addObject:v7];

    os_unfair_lock_unlock(&self->_transactionStartLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_transactionStartLock);
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:2648 description:@"Attempt to add a first protected write transaction block after blocks have already been run."];
  }
}

uint64_t __68__HDDatabase__waitForTransactionStartTasksIfNeededForContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 320));
  v5 = [v3 mergeWithProfile:WeakRetained shouldContinueHandler:0];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:6 format:@"Failed to merge required journal."];
  }

  return v5;
}

uint64_t __86__HDDatabase__transactionStartLock_runFirstTransactionBlocksIfNeededForContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__HDDatabase__transactionStartLock_runFirstTransactionBlocksIfNeededForContext_error___block_invoke_2;
  v8[3] = &unk_27861CA28;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v6 = [v4 performTransactionWithContext:v5 error:a2 block:v8 inaccessibilityHandler:0];

  return v6;
}

uint64_t __86__HDDatabase__transactionStartLock_runFirstTransactionBlocksIfNeededForContext_error___block_invoke_2(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = a1[4];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = *v34;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      v32 = 0;
      v11 = (*(v10 + 16))();
      v12 = v32;
      v13 = v12;
      if ((v11 & 1) == 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"First unprotected transaction block failed without reporting an error."];
      if (!v21)
      {
        goto LABEL_28;
      }
    }

    if (a3)
    {
      v22 = v21;
      *a3 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

    v23 = v13 == 0;

    goto LABEL_27;
  }

LABEL_9:

  if ([a1[5] requiresProtectedData])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = a1[6];
    v14 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (!v14)
    {
      v20 = 1;
LABEL_30:

      goto LABEL_31;
    }

    v15 = *v29;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v6);
      }

      v17 = *(*(&v28 + 1) + 8 * v16);
      v27 = 0;
      v18 = (*(v17 + 16))();
      v19 = v27;
      v13 = v19;
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
        v20 = 1;
        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_30;
      }
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_error:122 format:@"First protected transaction block failed without reporting an error."];
      if (!v21)
      {
        goto LABEL_28;
      }
    }

    if (a3)
    {
      v26 = v21;
      *a3 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

    v23 = v13 == 0;

LABEL_27:
    if (v23)
    {
LABEL_28:

      v13 = 0;
    }

    v20 = 0;
    goto LABEL_30;
  }

  v20 = 1;
LABEL_31:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __54__HDDatabase__performFirstJournalMergeCleanupIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [*(a1 + 32) allEntityClassesWithProtectionClass:{2, 0}];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    v9 = &selRef_nextObject;
    while (2)
    {
      v10 = 0;
      v11 = v9[382];
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v13 = objc_opt_class();
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
          LOBYTE(v13) = [v13 performPostFirstJournalMergeCleanupWithTransaction:v5 profile:WeakRetained error:a3];

          if ((v13 & 1) == 0)
          {
            v15 = 0;
            goto LABEL_12;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = &selRef_nextObject;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __51__HDDatabase__mergePrimaryJournalForContext_error___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 304) mergeWithProfile:*(a1 + 40) shouldContinueHandler:0];
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = atomic_load((v5 + 256));
      if ((v6 & 1) == 0)
      {
        v7 = *(v5 + 304);
        WeakRetained = objc_loadWeakRetained((v5 + 320));
        v18[4] = v5;
        v19 = 0;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __54__HDDatabase__performFirstJournalMergeCleanupIfNeeded__block_invoke;
        v18[3] = &unk_27861CA78;
        v9 = [v7 performMergeTransactionWithProfile:WeakRetained transactionContext:0 error:&v19 block:v18];
        v10 = v19;

        if (v9)
        {
          atomic_store(1u, (v5 + 256));
          _HKInitializeLogging();
          v11 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Finished first journal merge cleanup.", buf, 2u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v21 = v10;
            _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to perform post-journal merge cleanup (will retry at next journal merge): %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hk_protectedDataInaccessibilityError];
    v13 = v12;
    if (v12)
    {
      if (a2)
      {
        v14 = v12;
        *a2 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)diagnosticDescription
{
  v49 = *MEMORY[0x277D85DE8];
  databaseSizeInBytes = [(HDDatabase *)self databaseSizeInBytes];
  unsignedLongLongValue = [databaseSizeInBytes unsignedLongLongValue];

  os_unfair_lock_lock(&self->_protectedDataLock);
  v5 = MEMORY[0x277CCAB68];
  protectedDataLock_observedContentProtectionState = self->_protectedDataLock_observedContentProtectionState;
  v7 = HDStringFromContentProtectionState();
  v8 = [v5 stringWithFormat:@"Observed content protection state: %@", v7];

  protectedDataLock_protectedDataState = self->_protectedDataLock_protectedDataState;
  if (protectedDataLock_protectedDataState >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid (%ld)", self->_protectedDataLock_protectedDataState];
  }

  else
  {
    v10 = off_27861CB58[protectedDataLock_protectedDataState];
  }

  [v8 appendFormat:@"\nProtected data availability state: %@", v10];

  os_unfair_lock_unlock(&self->_protectedDataLock);
  v37 = self->_protectedDataFlushDeadlineDate;
  if (v37 && !self->_hasFlushedProtectedData)
  {
    [(NSDate *)v37 timeIntervalSinceNow];
    if (v11 <= 0.0)
    {
      [v8 appendFormat:@"\nProtected data flush required NOW"];
    }

    else
    {
      v12 = HKDiagnosticStringFromDate();
      [v8 appendFormat:@"\nProtected data flush required by %@", v12];
    }
  }

  [v8 appendFormat:@"\nDatabase aggregate size: %.2f MB", vcvtd_n_f64_u64(unsignedLongLongValue, 0x14uLL)];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [(NSString *)self->_profileDirectoryPath stringByAppendingPathComponent:@"Journals"];
  v46 = 0;
  v15 = [defaultManager contentsOfDirectoryAtPath:v14 error:&v46];
  v16 = v46;
  v17 = [v15 count];

  if (v17)
  {
    v18 = "s";
    if (v17 == 1)
    {
      v18 = "";
    }

    [v8 appendFormat:@"\n  -- Includes %d journal chapter%s.", v17, v18];
  }

  v19 = [(HDDatabaseAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"DatabaseAccessibility"];
  if ([v19 count])
  {
    [v8 appendFormat:@"\n\nAccessibility Assertions (%lu):", objc_msgSend(v19, "count")];
    v20 = objc_alloc(MEMORY[0x277CCA940]);
    allObjects = [v19 allObjects];
    v22 = [allObjects hk_map:&__block_literal_global_628];
    v23 = [v20 initWithArray:v22];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v25)
    {
      v26 = *v43;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v24);
          }

          [v8 appendFormat:@"\n\t%@ (%lu)", *(*(&v42 + 1) + 8 * i), objc_msgSend(v24, "countForObject:", *(*(&v42 + 1) + 8 * i))];
        }

        v25 = [v24 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v25);
    }
  }

  allObservers = [(HKObserverSet *)self->_protectedDataObservers allObservers];
  v29 = [allObservers count];
  v30 = &stru_283BF39C8;
  if (!v29)
  {
    v30 = @"none";
  }

  [v8 appendFormat:@"\n\nProtected Data Observers: %@", v30];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v31 = allObservers;
  v32 = [v31 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v32)
  {
    v33 = *v39;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v31);
        }

        [v8 appendFormat:@"\n\t%@", *(*(&v38 + 1) + 8 * j)];
      }

      v32 = [v31 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v32);
  }

  [v8 appendFormat:@"\n\nConcurrent Readers: %lu", -[HDDatabaseConfiguration concurrentReaderLimit](self->_configuration, "concurrentReaderLimit")];
  v35 = *MEMORY[0x277D85DE8];

  return v8;
}

id __35__HDDatabase_diagnosticDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ownerIdentifier];

  return v2;
}

- (void)addDatabaseJournalMergeObserver:(id)observer journalType:(int64_t)type queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  databaseJournalMergeObserverSetByType = self->_databaseJournalMergeObserverSetByType;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v11 = [(NSMutableDictionary *)databaseJournalMergeObserverSetByType objectForKeyedSubscript:v10];
  [v11 registerObserver:observerCopy queue:queueCopy];
}

- (void)removeDatabaseJournalMergeObserver:(id)observer journalType:(int64_t)type
{
  observerCopy = observer;
  databaseJournalMergeObserverSetByType = self->_databaseJournalMergeObserverSetByType;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v8 = [(NSMutableDictionary *)databaseJournalMergeObserverSetByType objectForKeyedSubscript:v7];
  [v8 unregisterObserver:observerCopy];
}

- (void)databaseJournalMergeDidComplete:(id)complete
{
  completeCopy = complete;
  if (([(HDDatabase *)self isInvalid]& 1) == 0)
  {
    databaseJournalMergeObserverSetByType = self->_databaseJournalMergeObserverSetByType;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(completeCopy, "type")}];
    v7 = [(NSMutableDictionary *)databaseJournalMergeObserverSetByType objectForKeyedSubscript:v6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__HDDatabase_databaseJournalMergeDidComplete___block_invoke;
    v8[3] = &unk_27861CAC0;
    v8[4] = self;
    v9 = completeCopy;
    [v7 notifyObservers:v8];
  }
}

void __46__HDDatabase_databaseJournalMergeDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([(HDDatabase *)*(a1 + 32) isInvalid]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
    [v4 databaseJournalMergeDidCompleteForProfile:WeakRetained type:{objc_msgSend(*(a1 + 40), "type")}];
  }
}

- (void)invalidateAndWait
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(HDDatabase *)self _transitionToState:?])
  {
    protectedDataQueue = self->_protectedDataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__HDDatabase_invalidateAndWait__block_invoke;
    block[3] = &unk_27861C698;
    block[4] = self;
    dispatch_sync(protectedDataQueue, block);
    [(HDDatabaseAssertionManager *)self->_assertionManager invalidate];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSDictionary *)self->_databasePoolForType allValues];
    v6 = [allValues countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          flush = [*(*(&v15 + 1) + 8 * v8) flush];
          dispatch_group_wait(flush, 0xFFFFFFFFFFFFFFFFLL);

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v6);
    }

    [(HDDatabase *)self _invalidateProtectedResourceAssertions];
    unitTest_didWaitForJournalMergeHandler = self->_unitTest_didWaitForJournalMergeHandler;
    self->_unitTest_didWaitForJournalMergeHandler = 0;

    [(HDDatabaseJournal *)self->_journal invalidate];
    [(HDDatabaseJournal *)self->_cloudSyncJournal invalidate];
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Health database invalidated", buf, 0xCu);
    }
  }

  [(NSConditionLock *)self->_activeDatabasesLock lockWhenCondition:0];
  v12 = [(NSMutableSet *)self->_activeDatabases count];
  [(NSConditionLock *)self->_activeDatabasesLock unlock];
  if (v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase.mm" lineNumber:3123 description:{@"Invalid parameter not satisfying: %@", @"activeDatabaseCount == 0"}];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __31__HDDatabase_invalidateAndWait__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = *(a1 + 32);

  [(HDDatabase *)v4 _protectedDataQueue_cancelProtectedDataFlushTimer];
}

- (id)databaseUUIDWithError:(id *)error
{
  os_unfair_lock_lock(&self->_databaseUUIDLock);
  v5 = self->_databaseUUID;
  os_unfair_lock_unlock(&self->_databaseUUIDLock);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__64;
    v14 = __Block_byref_object_dispose__64;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__HDDatabase_databaseUUIDWithError___block_invoke;
    v9[3] = &unk_27861CAE8;
    v9[4] = self;
    v9[5] = &v10;
    [(HDDatabase *)self performHighPriorityTransactionsWithError:error block:v9];
    v7 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v11[5]];
    os_unfair_lock_lock(&self->_databaseUUIDLock);
    if (!self->_databaseUUID)
    {
      objc_storeStrong(&self->_databaseUUID, v7);
    }

    os_unfair_lock_unlock(&self->_databaseUUIDLock);
    v6 = v7;
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

BOOL __36__HDDatabase_databaseUUIDWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) profile];
  v5 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromProfile:v4 error:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)invalidateAllAssertionsWithContextType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  [(HDDatabase *)self currentlyActiveAssertions];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v4 = v11 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 contextType] == type)
        {
          [v8 invalidate];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_setContentProtectionStateAndWait:(int64_t)wait
{
  contentProtectionManager = [(HDDatabase *)self contentProtectionManager];
  [contentProtectionManager setContentProtectionState:wait];

  protectedDataQueue = self->_protectedDataQueue;

  dispatch_sync(protectedDataQueue, &__block_literal_global_653);
}

- (void)unitTest_triggerSpringboardLockout
{
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDDatabase_unitTest_triggerSpringboardLockout__block_invoke;
  block[3] = &unk_27861C698;
  block[4] = self;
  dispatch_sync(protectedDataQueue, block);
}

- (void)unitTest_disableDatabaseAccessibilityAssertions
{
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDDatabase_unitTest_disableDatabaseAccessibilityAssertions__block_invoke;
  block[3] = &unk_27861C698;
  block[4] = self;
  dispatch_sync(protectedDataQueue, block);
}

void __61__HDDatabase_unitTest_disableDatabaseAccessibilityAssertions__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 209) = 1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 344) allAssertionsForIdentifier:{@"DatabaseAccessibility", 0}];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v4++) invalidate];
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_enableDatabaseAccessibilityAssertions
{
  protectedDataQueue = self->_protectedDataQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDDatabase_unitTest_enableDatabaseAccessibilityAssertions__block_invoke;
  block[3] = &unk_27861C698;
  block[4] = self;
  dispatch_sync(protectedDataQueue, block);
}

- (HKProfileIdentifier)profileIdentifier
{
  profile = [(HDDatabase *)self profile];
  profileIdentifier = [profile profileIdentifier];

  return profileIdentifier;
}

@end