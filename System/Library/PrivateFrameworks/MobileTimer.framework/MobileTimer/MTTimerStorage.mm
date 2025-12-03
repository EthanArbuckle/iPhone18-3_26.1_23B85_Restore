@interface MTTimerStorage
+ (id)_diagnosticDictionaryForTimer:(id)timer;
- (BOOL)_queue_hasMatchingTimer:(id)timer;
- (BOOL)needsCoreDataMigration;
- (BOOL)shouldUseCoreData;
- (MTTimer)nextTimer;
- (MTTimerScheduler)scheduler;
- (MTTimerStorage)init;
- (MTTimerStorage)initWithCoreDataStore:(id)store;
- (MTTimerStorage)initWithPersistence:(id)persistence;
- (MTTimerStorage)initWithPersistence:(id)persistence migrator:(id)migrator serializer:(id)serializer callbackScheduler:(id)scheduler currentDateProvider:(id)provider;
- (NSArray)timers;
- (NSDate)lastModifiedDate;
- (id)_applyNecessaryChangesFromOldTimer:(id)timer currentTimer:(id)currentTimer;
- (id)_diagnosticTimerDictionary;
- (id)_queuePersistTimer:(id)timer replacingTimer:(id)replacingTimer;
- (id)_queue_timerMatchingTimerIdentifier:(id)identifier;
- (id)_queue_updateTimer:(id)timer withCompletion:(id)completion source:(id)source;
- (id)durationFromCD:(id)d;
- (id)durationsFromCD:(id)d;
- (id)gatherDiagnostics;
- (id)newCurrentTimer;
- (void)_createDefaultTimerIfNeededWithCompletion:(id)completion;
- (void)_loadTimersWithCompletion:(id)completion;
- (void)_queue_addTimer:(id)timer withCompletion:(id)completion source:(id)source;
- (void)_queue_dismissTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source;
- (void)_queue_notifyObserversForNextTimerChange:(id)change source:(id)source;
- (void)_queue_notifyObserversForTimerAdd:(id)add source:(id)source;
- (void)_queue_notifyObserversForTimerDismiss:(id)dismiss source:(id)source;
- (void)_queue_notifyObserversForTimerFire:(id)fire source:(id)source;
- (void)_queue_notifyObserversForTimerRemoval:(id)removal source:(id)source;
- (void)_queue_notifyObserversForTimerUpdate:(id)update fromTimers:(id)timers source:(id)source;
- (void)_queue_persistTimers;
- (void)_queue_removeAllTimersForSource:(id)source;
- (void)_queue_removeStaleTimers:(BOOL)timers;
- (void)_queue_removeTimer:(id)timer withCompletion:(id)completion source:(id)source;
- (void)_queue_repeatTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source;
- (void)_queue_setAllTimers:(id)timers source:(id)source persist:(BOOL)persist notify:(BOOL)notify;
- (void)_queue_sortTimers;
- (void)_removeTimerDataIfNecessary:(id)necessary;
- (void)_withLock:(id)lock;
- (void)addFavoriteDuration:(id)duration withCompletion:(id)completion source:(id)source;
- (void)addRecentDuration:(id)duration withCompletion:(id)completion source:(id)source;
- (void)addTimer:(id)timer withCompletion:(id)completion source:(id)source;
- (void)addTimers:(id)timers withCompletion:(id)completion source:(id)source;
- (void)dealloc;
- (void)didFinishLoadingStore;
- (void)dismissTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source;
- (void)getDurationsWithCompletion:(id)completion;
- (void)getTimerWithIdentifier:(id)identifier completion:(id)completion;
- (void)getTimersWithCompletion:(id)completion;
- (void)loadTimersFromCoreDataSync;
- (void)loadTimersFromCoreDataWithCompletion:(id)completion;
- (void)loadTimersSync;
- (void)migrateDefaultsTimersToCoreData:(id)data;
- (void)persistCoreDataMigrationComplete;
- (void)persistTimerStorageVersion;
- (void)printDiagnostics;
- (void)registerStoreLoadCompletion:(id)completion;
- (void)removeFavoriteDuration:(id)duration withCompletion:(id)completion source:(id)source;
- (void)removeRecentDuration:(id)duration withCompletion:(id)completion source:(id)source;
- (void)removeTimer:(id)timer withCompletion:(id)completion source:(id)source;
- (void)repeatTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source;
- (void)saveLatestDuration:(id)duration withCompletion:(id)completion source:(id)source;
- (void)scheduler:(id)scheduler didChangeNextTimer:(id)timer;
- (void)scheduler:(id)scheduler didFireTimer:(id)timer;
- (void)setAllTimers:(id)timers source:(id)source;
- (void)setDurationUpdateDelegate:(id)delegate;
- (void)setScheduler:(id)scheduler;
- (void)setupListeners;
- (void)store_getAllDurations:(id)durations completion:(id)completion;
- (void)store_getRecentsFavoritesLatest:(id)latest;
- (void)store_getTimersWithCompletion:(id)completion;
- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block;
- (void)updateTimer:(id)timer withCompletion:(id)completion source:(id)source;
@end

@implementation MTTimerStorage

- (MTTimer)nextTimer
{
  scheduler = [(MTTimerStorage *)self scheduler];
  nextTimer = [scheduler nextTimer];

  return nextTimer;
}

- (MTTimerScheduler)scheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);

  return WeakRetained;
}

- (MTTimerStorage)init
{
  v3 = +[MTUserDefaults sharedUserDefaults];
  v4 = [(MTTimerStorage *)self initWithPersistence:v3];

  return v4;
}

- (MTTimerStorage)initWithCoreDataStore:(id)store
{
  objc_storeStrong(&self->_coreDataStore, store);
  storeCopy = store;
  [(MTCDDataStore *)self->_coreDataStore setTimerObserver:self];
  v6 = +[MTUserDefaults sharedUserDefaults];

  v7 = [(MTTimerStorage *)self initWithPersistence:v6];
  return v7;
}

- (MTTimerStorage)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v5 = objc_opt_new();
  v6 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTTimerStorage.access-queue", +[MTScheduler defaultPriority]);
  mtMainThreadScheduler = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
  v8 = MTCurrentDateProvider();
  v9 = [(MTTimerStorage *)self initWithPersistence:persistenceCopy migrator:v5 serializer:v6 callbackScheduler:mtMainThreadScheduler currentDateProvider:v8];

  return v9;
}

- (MTTimerStorage)initWithPersistence:(id)persistence migrator:(id)migrator serializer:(id)serializer callbackScheduler:(id)scheduler currentDateProvider:(id)provider
{
  v38 = *MEMORY[0x1E69E9840];
  persistenceCopy = persistence;
  migratorCopy = migrator;
  serializerCopy = serializer;
  schedulerCopy = scheduler;
  providerCopy = provider;
  v35.receiver = self;
  v35.super_class = MTTimerStorage;
  v18 = [(MTTimerStorage *)&v35 init];
  if (v18)
  {
    v19 = MTLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = v18;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v18->_migrator, migrator);
    objc_storeStrong(&v18->_serializer, serializer);
    v20 = [[MTObserverStore alloc] initWithCallbackScheduler:schedulerCopy];
    observers = v18->_observers;
    v18->_observers = v20;

    v22 = [providerCopy copy];
    currentDateProvider = v18->_currentDateProvider;
    v18->_currentDateProvider = v22;

    objc_storeStrong(&v18->_persistence, persistence);
    v24 = objc_alloc_init(MTMetrics);
    metrics = v18->_metrics;
    v18->_metrics = v24;

    v26 = objc_opt_new();
    conductor = v18->_conductor;
    v18->_conductor = v26;

    v18->_lock._os_unfair_lock_opaque = 0;
    v28 = +[MTFeatures supportsCoreData];
    v29 = [MTTimerDurationManager alloc];
    persistence = v18->_persistence;
    if (v28)
    {
      v31 = [(MTTimerDurationManager *)v29 initWithPersistence:persistence coreDataStore:v18->_coreDataStore storage:v18];
    }

    else
    {
      v31 = [(MTTimerDurationManager *)v29 initWithPersistence:persistence storage:v18];
    }

    durationManager = v18->_durationManager;
    v18->_durationManager = v31;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v3 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTTimerStorage;
  [(MTTimerStorage *)&v4 dealloc];
}

- (void)setupListeners
{
  v3 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v3 addObserver:self forBundleIdentifier:@"com.apple.mobiletimer"];
}

- (void)loadTimersSync
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MTTimerStorage_loadTimersSync__block_invoke;
  v5[3] = &unk_1E7B0C9D8;
  v6 = v3;
  v4 = v3;
  [(MTTimerStorage *)self _loadTimersWithCompletion:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_loadTimersWithCompletion:(id)completion
{
  completionCopy = completion;
  serializer = [(MTTimerStorage *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MTTimerStorage__loadTimersWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CA00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [serializer performBlock:v7];
}

uint64_t __44__MTTimerStorage__loadTimersWithCompletion___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) persistence];

  if (!v3)
  {
    goto LABEL_54;
  }

  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *v2;
    *buf = 138543362;
    v52 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ loading timers", buf, 0xCu);
  }

  v6 = [*v2 persistence];
  v7 = [v6 objectForKey:@"MTTimers"];

  v8 = [*v2 persistence];
  [v8 floatForKey:@"MTTimerStorageVersion"];
  v10 = v9;

  v11 = [*v2 persistence];
  v12 = [v11 objectForKey:@"MTTimerModifiedDate"];

  v13 = *v2;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_28;
  v49[3] = &unk_1E7B0C9D8;
  v49[4] = v13;
  [v13 _withLock:v49];
  if (v10 >= 1.0)
  {
    if (v7)
    {
      if (v10 >= 2.0)
      {
        objc_opt_class();
        v30 = v7;
        if (objc_opt_isKindOfClass())
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v25 = v31;

        v16 = [[MTStorageReader alloc] initWithEncodedDictionary:v25];
      }

      else
      {
        v21 = MTLogForCategory(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *v2;
          *buf = 138543362;
          v52 = v22;
          _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ binary data storage version detected.  Using old reader.", buf, 0xCu);
        }

        objc_opt_class();
        v23 = v7;
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v48 = 0;
        v16 = [[MTStorageReaderV1 alloc] initForReadingFromData:v25 error:&v48];
        v26 = v48;
        if (v26)
        {
          v27 = MTLogForCategory(4);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_cold_1(v2);
          }
        }
      }

      v20 = [(MTStorageReader *)v16 decodeObjectForKey:@"MTTimers"];
      if (v10 < 3.0)
      {
        v32 = MTLogForCategory(4);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *v2;
          *buf = 138543362;
          v52 = v33;
          _os_log_impl(&dword_1B1F9F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating latest timer duration", buf, 0xCu);
        }

        v34 = [MTTimer currentTimerFromTimers:v20];
        v35 = [*v2 durationManager];
        v36 = [MTTimerDurationManager durationFromTimer:v34];
        [v35 saveLatestDuration:v36];
      }

      if ([*v2 needsCoreDataMigration] && objc_msgSend(*v2, "shouldUseCoreData"))
      {
        v37 = MTLogForCategory(4);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = *v2;
          *buf = 138543362;
          v52 = v38;
          _os_log_impl(&dword_1B1F9F000, v37, OS_LOG_TYPE_INFO, "%{public}@ migrating defaults timers to core data", buf, 0xCu);
        }

        [*v2 migrateDefaultsTimersToCoreData:v20];
      }

      goto LABEL_42;
    }

    v16 = MTLogForCategory(4);
    if (os_log_type_enabled(&v16->super.super, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *v2;
      *buf = 138543362;
      v52 = v29;
      _os_log_impl(&dword_1B1F9F000, &v16->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ has no timers", buf, 0xCu);
    }
  }

  else
  {
    v14 = MTLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v2;
      *buf = 138543362;
      v52 = v15;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ migration needed", buf, 0xCu);
    }

    [*(*v2 + 7) migrateFromOldStorage];
    v16 = [*(*v2 + 7) timer];
    v17 = MTLogForCategory(4);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = *v2;
        *buf = 138543618;
        v52 = v19;
        v53 = 2114;
        v54 = v16;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ migrated timer is %{public}@", buf, 0x16u);
      }

      v50 = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
      goto LABEL_42;
    }

    if (v18)
    {
      v28 = *v2;
      *buf = 138543362;
      v52 = v28;
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ no timer created during migration.", buf, 0xCu);
    }
  }

  v20 = MEMORY[0x1E695E0F0];
LABEL_42:

  [*v2 _queue_setAllTimers:v20 source:0 persist:v10 < 1.0 notify:0];
  [*v2 _queue_removeStaleTimers:0];
  if (v10 < 1.0)
  {
    [*(*v2 + 7) removeFromOldStorage];
  }

  v39 = MTLogForCategory(4);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);

  v41 = MTLogForCategory(4);
  v42 = v41;
  if (v40)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_cold_2(v2);
    }
  }

  else if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *v2;
    v44 = [*(*v2 + 4) valueForKey:@"timerID"];
    *buf = 138543618;
    v52 = v43;
    v53 = 2114;
    v54 = v44;
    _os_log_impl(&dword_1B1F9F000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded %{public}@", buf, 0x16u);
  }

  v45 = v12;
  if (!v12)
  {
    v45 = (*(*(*v2 + 6) + 16))();
  }

  objc_storeStrong(*v2 + 5, v45);
  if (!v12)
  {
  }

LABEL_54:
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_28(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)didFinishLoadingStore
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ didFinishLoadingStore", &v7, 0xCu);
  }

  [(MTTimerStorage *)self loadTimersFromCoreDataSync];
  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager restoreFromDataStoreSync];

  conductor = [(MTTimerStorage *)self conductor];
  [conductor send];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerStoreLoadCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = +[MTFeatures supportsCoreData];
  v6 = MTLogForCategory(4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      isReady = [(MTCDDataStore *)self->_coreDataStore isReady];
      orderedTimers = self->_orderedTimers;
      *buf = 138543874;
      selfCopy3 = self;
      v18 = 1024;
      v19 = isReady;
      v20 = 2112;
      v21 = orderedTimers;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ registering timer store load completion, core data store ready: %i, ordered timers: %@", buf, 0x1Cu);
    }

    if (![(MTCDDataStore *)self->_coreDataStore isReady]|| ([(MTTimerStorage *)self timers], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      conductor = [(MTTimerStorage *)self conductor];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __46__MTTimerStorage_registerStoreLoadCompletion___block_invoke;
      v14[3] = &unk_1E7B0CA28;
      v14[4] = self;
      v15 = completionCopy;
      [conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];

      goto LABEL_13;
    }

    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy3 = self;
      v11 = "%{public}@ data store is already ready, executing completion";
LABEL_10:
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
    }
  }

  else if (v7)
  {
    *buf = 138543362;
    selfCopy3 = self;
    v11 = "%{public}@ registerStoreLoadCompletion does not support core data, bypassing store load";
    goto LABEL_10;
  }

  completionCopy[2](completionCopy);
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MTTimerStorage_registerStoreLoadCompletion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ executing timer store load completion with status: %i", &v8, 0x12u);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)loadTimersFromCoreDataSync
{
  v13 = *MEMORY[0x1E69E9840];
  needsCoreDataMigration = [(MTTimerStorage *)self needsCoreDataMigration];
  v4 = MTLogForCategory(4);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (needsCoreDataMigration)
  {
    if (v5)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ needs core data migration", buf, 0xCu);
    }

    [(MTTimerStorage *)self loadTimers];
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ does not need core data migration", buf, 0xCu);
    }

    v6 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__MTTimerStorage_loadTimersFromCoreDataSync__block_invoke;
    v9[3] = &unk_1E7B0C9D8;
    v10 = v6;
    v7 = v6;
    [(MTTimerStorage *)self loadTimersFromCoreDataWithCompletion:v9];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)needsCoreDataMigration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MTTimerStorage_needsCoreDataMigration__block_invoke;
  v4[3] = &unk_1E7B0CA50;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerStorage *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__MTTimerStorage_needsCoreDataMigration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v5 = [v2 objectForKey:@"MTTimerStorageMigratedToCoreData"];

  v3 = v5;
  if (v5)
  {
    v4 = [v5 BOOLValue] ^ 1;
    v3 = v5;
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)shouldUseCoreData
{
  v3 = +[MTFeatures supportsCoreData];
  if (v3)
  {
    coreDataStore = self->_coreDataStore;

    LOBYTE(v3) = [(MTCDDataStore *)coreDataStore isReady];
  }

  return v3;
}

- (void)persistCoreDataMigrationComplete
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MTTimerStorage_persistCoreDataMigrationComplete__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTTimerStorage *)self _withLock:v2];
}

void __50__MTTimerStorage_persistCoreDataMigrationComplete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistence];
  v1 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v2 setObject:v1 forKey:@"MTTimerStorageMigratedToCoreData"];
}

- (void)loadTimersFromCoreDataWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ loading timers from core data", buf, 0xCu);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke;
  v9[3] = &unk_1E7B0CA00;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [serializer performBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7B0C6D8;
  v4[4] = v2;
  v5 = v1;
  [v3 getTimersWithCompletion:v4];
}

void __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_4];
  v4 = [*(a1 + 32) serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke_4;
  v7[3] = &unk_1E7B0C5D8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

MTTimer *__55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTTimer alloc] initWithMTCDTimer:v2];

  return v3;
}

uint64_t __55__MTTimerStorage_loadTimersFromCoreDataWithCompletion___block_invoke_4(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v4 = a1 + 4;
  v3 = a1[4];
  v5 = *(v3 + 32);
  *(v3 + 32) = v2;

  [a1[4] _queue_setAllTimers:a1[5] source:0 persist:0 notify:0];
  [a1[4] _queue_removeStaleTimers:0];
  v6 = MTLogForCategory(4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  v8 = MTLogForCategory(4);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_cold_2((a1 + 4));
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *v4;
    v11 = [*(*v4 + 32) valueForKey:@"timerID"];
    v17 = 138543618;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded %{public}@", &v17, 0x16u);
  }

  v12 = (*(*(a1[4] + 48) + 16))();
  v13 = a1[4];
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)migrateDefaultsTimersToCoreData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  coreDataStore = self->_coreDataStore;
  v6 = [dataCopy copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MTTimerStorage_migrateDefaultsTimersToCoreData___block_invoke;
  v7[3] = &unk_1E7B0CA98;
  objc_copyWeak(&v8, &location);
  [(MTCDDataStore *)coreDataStore addTimers:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__MTTimerStorage_migrateDefaultsTimersToCoreData___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MTLogForCategory(4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__MTTimerStorage_migrateDefaultsTimersToCoreData___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = WeakRetained;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_INFO, "%{public}@ transferred alarms from defaults to core data successfully. Marking migration as complete", &v9, 0xCu);
    }

    v7 = [WeakRetained durationManager];
    [v7 migrateFromDefaultsToCoreData];

    [WeakRetained persistCoreDataMigrationComplete];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_createDefaultTimerIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MTTimerStorage__createDefaultTimerIfNeededWithCompletion___block_invoke;
  v8[3] = &unk_1E7B0CAC0;
  v8[4] = self;
  v8[5] = &v9;
  [(MTTimerStorage *)self _withLock:v8];
  if (v10[5] || [(MTTimerStorage *)self shouldUseCoreData])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    newCurrentTimer = [(MTTimerStorage *)self newCurrentTimer];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__MTTimerStorage__createDefaultTimerIfNeededWithCompletion___block_invoke_2;
    v6[3] = &unk_1E7B0C688;
    v7 = completionCopy;
    [(MTTimerStorage *)self _queue_addTimer:newCurrentTimer withCompletion:v6 source:0];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __60__MTTimerStorage__createDefaultTimerIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MTTimer currentTimerFromTimers:*(*(a1 + 32) + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __60__MTTimerStorage__createDefaultTimerIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)newCurrentTimer
{
  v3 = [MTMutableTimer alloc];
  +[MTTimerManager defaultDuration];
  v4 = [(MTTimer *)v3 initWithState:1 duration:self->_currentDateProvider currentDateProvider:?];
  [(MTTimer *)v4 setTitle:@"CURRENT_TIMER"];
  return v4;
}

- (void)setScheduler:(id)scheduler
{
  obj = scheduler;
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);
  [WeakRetained setDelegate:0];

  objc_storeWeak(&self->_scheduler, obj);
  [obj setDelegate:self];
}

- (NSArray)timers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTTimerStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __24__MTTimerStorage_timers__block_invoke;
  v8[3] = &unk_1E7B0CAE8;
  v8[4] = self;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [serializer performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __24__MTTimerStorage_timers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__MTTimerStorage_timers__block_invoke_2;
  v5[3] = &unk_1E7B0CAC0;
  v3 = *(a1 + 48);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _withLock:v5];
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __24__MTTimerStorage_timers__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSDate)lastModifiedDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTTimerStorage *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__MTTimerStorage_lastModifiedDate__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [serializer performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __34__MTTimerStorage_lastModifiedDate__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 40));
  v2 = a1[5];

  return dispatch_semaphore_signal(v2);
}

- (void)setAllTimers:(id)timers source:(id)source
{
  v21 = *MEMORY[0x1E69E9840];
  timersCopy = timers;
  sourceCopy = source;
  v8 = MTLogForCategory(4);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  v10 = MTLogForCategory(4);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MTTimerStorage setAllTimers:source:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ setting all timers", buf, 0xCu);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__MTTimerStorage_setAllTimers_source___block_invoke;
  v16[3] = &unk_1E7B0C9A0;
  v16[4] = self;
  v17 = timersCopy;
  v18 = sourceCopy;
  v13 = sourceCopy;
  v14 = timersCopy;
  [serializer performBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_queue_setAllTimers:(id)timers source:(id)source persist:(BOOL)persist notify:(BOOL)notify
{
  notifyCopy = notify;
  persistCopy = persist;
  timersCopy = timers;
  sourceCopy = source;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __60__MTTimerStorage__queue_setAllTimers_source_persist_notify___block_invoke;
  v16 = &unk_1E7B0CB38;
  v19 = &v27;
  v20 = &v21;
  selfCopy = self;
  v12 = timersCopy;
  v18 = v12;
  [(MTTimerStorage *)self _withLock:&v13];
  if (persistCopy)
  {
    [(MTTimerStorage *)self _queue_persistTimers:v13];
  }

  [(MTTimerStorage *)self _queue_sortTimers:v13];
  if (notifyCopy)
  {
    [(MTTimerStorage *)self _queue_notifyObserversForTimerRemoval:v28[5] source:sourceCopy];
    [(MTTimerStorage *)self _queue_notifyObserversForTimerAdd:v22[5] source:sourceCopy];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

uint64_t __60__MTTimerStorage__queue_setAllTimers_source_persist_notify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) orderedTimers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x1E695DF70] arrayWithArray:*(a1 + 40)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(a1 + 32) + 32) removeAllObjects];
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 32);

  return [v10 addObjectsFromArray:v9];
}

- (void)getTimersWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received request for timers", buf, 0xCu);
  }

  if (completionCopy)
  {
    nextTimer = [(MTTimerStorage *)self nextTimer];
    serializer = [(MTTimerStorage *)self serializer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MTTimerStorage_getTimersWithCompletion___block_invoke;
    v10[3] = &unk_1E7B0C5D8;
    v10[4] = self;
    v11 = nextTimer;
    v12 = completionCopy;
    v8 = nextTimer;
    [serializer performBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __42__MTTimerStorage_getTimersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__MTTimerStorage_getTimersWithCompletion___block_invoke_2;
  v3[3] = &unk_1E7B0C5D8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _createDefaultTimerIfNeededWithCompletion:v3];
}

uint64_t __42__MTTimerStorage_getTimersWithCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(4);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  v4 = MTLogForCategory(4);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__MTTimerStorage_getTimersWithCompletion___block_invoke_2_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [*(v6 + 32) valueForKey:@"timerID"];
    v8 = [*(a1 + 40) timerID];
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ returning timers: %{public}@, next timer: %{public}@", &v13, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 32);
  result = (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getTimerWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  serializer = [(MTTimerStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MTTimerStorage_getTimerWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7B0C5D8;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [serializer performBlock:v11];
}

uint64_t __52__MTTimerStorage_getTimerWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_timerMatchingTimerIdentifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return MEMORY[0x1EEE66BB8](v3, v2);
}

- (void)addTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timerCopy timerID];
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = timerID;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ adding timer %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTTimerStorage - Adding Timer", buf, 2u);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__MTTimerStorage_addTimer_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = timerCopy;
  v21 = sourceCopy;
  v22 = completionCopy;
  v15 = sourceCopy;
  v16 = completionCopy;
  v17 = timerCopy;
  [serializer performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timerCopy timerID];
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = timerID;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updating timer %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTTimerStorage - Updating Timer", buf, 2u);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__MTTimerStorage_updateTimer_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = timerCopy;
  v21 = sourceCopy;
  v22 = completionCopy;
  v15 = sourceCopy;
  v16 = completionCopy;
  v17 = timerCopy;
  [serializer performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    timerID = [timerCopy timerID];
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = timerID;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ removing timer %{public}@", buf, 0x16u);
  }

  v13 = MTLogForCategory(9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "MTTimerStorage - Removing Timer", buf, 2u);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__MTTimerStorage_removeTimer_withCompletion_source___block_invoke;
  v19[3] = &unk_1E7B0CB60;
  v19[4] = self;
  v20 = timerCopy;
  v21 = sourceCopy;
  v22 = completionCopy;
  v15 = sourceCopy;
  v16 = completionCopy;
  v17 = timerCopy;
  [serializer performBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dismissTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  sourceCopy = source;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2114;
    v25 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing timer with ID %{public}@", buf, 0x16u);
  }

  v12 = MTLogForCategory(9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_INFO, "MTTimerStorage - Dismissing Timer", buf, 2u);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__MTTimerStorage_dismissTimerWithIdentifier_withCompletion_source___block_invoke;
  v18[3] = &unk_1E7B0CB60;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = sourceCopy;
  v21 = completionCopy;
  v14 = sourceCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  [serializer performBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)repeatTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  sourceCopy = source;
  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2114;
    v25 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ repeating timer with ID %{public}@", buf, 0x16u);
  }

  v12 = MTLogForCategory(9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_INFO, "MTTimerStorage - Repeating Timer", buf, 2u);
  }

  serializer = [(MTTimerStorage *)self serializer];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__MTTimerStorage_repeatTimerWithIdentifier_withCompletion_source___block_invoke;
  v18[3] = &unk_1E7B0CB60;
  v18[4] = self;
  v19 = identifierCopy;
  v20 = sourceCopy;
  v21 = completionCopy;
  v14 = sourceCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  [serializer performBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_queue_addTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v29[1] = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  if ([(MTTimerStorage *)self _queue_hasMatchingTimer:timerCopy])
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_addTimer:withCompletion:source:];
    }

    v12 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Timer already exists!";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:1 userInfo:v13];

    v15 = MTLogForCategory(9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Adding Timer", buf, 2u);
    }

    if (!completionCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    completionCopy[2](completionCopy, v14);
    goto LABEL_12;
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __56__MTTimerStorage__queue_addTimer_withCompletion_source___block_invoke;
  v23 = &unk_1E7B0C928;
  selfCopy = self;
  v16 = timerCopy;
  v25 = v16;
  [(MTTimerStorage *)self _withLock:&v20];
  [(MTTimerStorage *)self _queue_persistTimers:v20];
  v27 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [(MTTimerStorage *)self _queue_notifyObserversForTimerAdd:v17 source:sourceCopy];

  [(MTTimerStorage *)self _queue_sortTimers];
  v18 = MTLogForCategory(9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_INFO, "MTTimerStorage - Finished Adding Timer", buf, 2u);
  }

  v14 = 0;
  if (completionCopy)
  {
    goto LABEL_11;
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
}

void __56__MTTimerStorage__queue_addTimer_withCompletion_source___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  if ([*(a1 + 32) shouldUseCoreData])
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 96);
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v3 addTimers:v4];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_queue_updateTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v39[1] = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  timerIDString = [timerCopy timerIDString];
  v12 = [(MTTimerStorage *)self _queue_timerMatchingTimerIdentifier:timerIDString];

  if (!v12)
  {
    v18 = MTLogForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_updateTimer:withCompletion:source:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Timer doesn't exist";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v17 = [v19 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:2 userInfo:v20];

    v21 = MTLogForCategory(9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Updating Timer", buf, 2u);
    }

    [MTAnalytics sendCriticalEvent:@"Timer storage - trying to update timer that does not exist"];
LABEL_17:
    v13 = 0;
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!+[MTTimer stateChangeIsAllowableFromState:toState:](MTTimer, "stateChangeIsAllowableFromState:toState:", [v12 state], objc_msgSend(timerCopy, "state")))
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = +[MTTimer descriptionForState:](MTTimer, "descriptionForState:", [v12 state]);
    v24 = +[MTTimer descriptionForState:](MTTimer, "descriptionForState:", [timerCopy state]);
    v25 = [v22 stringWithFormat:@"Can't update timer from %@ to %@", v23, v24];

    v26 = MTLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_updateTimer:withCompletion:source:];
    }

    v27 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = v25;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v17 = [v27 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:3 userInfo:v28];

    v29 = MTLogForCategory(9);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Updating Timer", buf, 2u);
    }

    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timer storage: %@", v25];
    [MTAnalytics sendCriticalEvent:v30];

    goto LABEL_17;
  }

  v13 = [(MTTimerStorage *)self _queuePersistTimer:timerCopy replacingTimer:v12];
  v39[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v38 = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  [(MTTimerStorage *)self _queue_notifyObserversForTimerUpdate:v14 fromTimers:v15 source:sourceCopy];

  v16 = MTLogForCategory(9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_INFO, "MTTimerStorage - Finished Updating Timer", buf, 2u);
  }

  v17 = 0;
  if (completionCopy)
  {
LABEL_18:
    completionCopy[2](completionCopy, v17);
  }

LABEL_19:

  v31 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_queue_removeTimer:(id)timer withCompletion:(id)completion source:(id)source
{
  v25[1] = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  completionCopy = completion;
  sourceCopy = source;
  timerIDString = [timerCopy timerIDString];
  v12 = [(MTTimerStorage *)self _queue_timerMatchingTimerIdentifier:timerIDString];

  if (v12)
  {
    v13 = [(MTTimerStorage *)self _queuePersistTimer:0 replacingTimer:v12];
    v25[0] = timerCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(MTTimerStorage *)self _queue_notifyObserversForTimerRemoval:v14 source:sourceCopy];

    v15 = MTLogForCategory(9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_INFO, "MTTimerStorage - Finished Removing Timer", v22, 2u);
    }

    v16 = 0;
    if (completionCopy)
    {
LABEL_5:
      completionCopy[2](completionCopy, v16);
    }
  }

  else
  {
    v18 = MTLogForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_removeTimer:withCompletion:source:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Timer does not exist!";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [v19 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:2 userInfo:v20];

    v21 = MTLogForCategory(9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Removing Timer", v22, 2u);
    }

    [MTAnalytics sendCriticalEvent:@"Timer storage - trying to remove timer that does not exist"];
    if (completionCopy)
    {
      goto LABEL_5;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dismissTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  sourceCopy = source;
  v11 = [(MTTimerStorage *)self _queue_timerMatchingTimerIdentifier:identifierCopy];
  v12 = (*(self->_currentDateProvider + 2))();
  if (v11)
  {
    v13 = [v11 mutableCopy];
    [v13 setDismissedDate:v12];
    v14 = MTLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      timerID = [v13 timerID];
      *buf = 138543618;
      v28 = timerID;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "Dismissed timer %{public}@ at %{public}@", buf, 0x16u);
    }

    v16 = [(MTTimerStorage *)self _queue_updateTimer:v13 withCompletion:completionCopy source:sourceCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    [(MTTimerStorage *)self _queue_notifyObserversForTimerDismiss:v18 source:sourceCopy];
    v19 = MTLogForCategory(9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_INFO, "MTTimerStorage - Finished Dismissing Timer", buf, 2u);
    }
  }

  else
  {
    v20 = MTLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_dismissTimerWithIdentifier:withCompletion:source:];
    }

    [MTAnalytics sendCriticalEvent:@"Timer storage - trying to dismiss timer that does not exist"];
    v21 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Timer does not exist!";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = [v21 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:2 userInfo:v22];

    if (completionCopy)
    {
      v23 = MTLogForCategory(9);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Dismissing Timer", buf, 2u);
      }

      completionCopy[2](completionCopy, v13);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_queue_repeatTimerWithIdentifier:(id)identifier withCompletion:(id)completion source:(id)source
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  sourceCopy = source;
  v11 = [(MTTimerStorage *)self _queue_timerMatchingTimerIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    timerByRestarting = [v11 timerByRestarting];
    v14 = MTLogForCategory(4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      timerID = [timerByRestarting timerID];
      *buf = 138543362;
      v26 = timerID;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "Repeated timer %{public}@", buf, 0xCu);
    }

    v16 = [(MTTimerStorage *)self _queue_updateTimer:timerByRestarting withCompletion:completionCopy source:sourceCopy];
    v17 = MTLogForCategory(9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_INFO, "MTTimerStorage - Finished Repeating Timer", buf, 2u);
    }
  }

  else
  {
    v18 = MTLogForCategory(4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MTTimerStorage _queue_dismissTimerWithIdentifier:withCompletion:source:];
    }

    [MTAnalytics sendCriticalEvent:@"Timer storage - trying to repeat timer that does not exist"];
    v19 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Timer does not exist!";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    timerByRestarting = [v19 errorWithDomain:@"com.apple.mobiletimerd.MTTimerStorage" code:2 userInfo:v20];

    if (completionCopy)
    {
      v21 = MTLogForCategory(9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_INFO, "MTTimerStorage - Failed Repeating Timer", buf, 2u);
      }

      completionCopy[2](completionCopy, timerByRestarting);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeAllTimersForSource:(id)source
{
  sourceCopy = source;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MTTimerStorage__queue_removeAllTimersForSource___block_invoke;
  v5[3] = &unk_1E7B0CAC0;
  v5[4] = self;
  v5[5] = &v6;
  [(MTTimerStorage *)self _withLock:v5];
  [(MTTimerStorage *)self _queue_persistTimers];
  [(MTTimerStorage *)self _queue_notifyObserversForTimerRemoval:v7[5] source:sourceCopy];
  _Block_object_dispose(&v6, 8);
}

uint64_t __50__MTTimerStorage__queue_removeAllTimersForSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) orderedTimers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(a1 + 32) + 32) removeAllObjects];
  result = [*(a1 + 32) shouldUseCoreData];
  if (result)
  {
    v7 = *(*(a1 + 32) + 96);

    return [v7 deleteAllTimers];
  }

  return result;
}

- (id)_queuePersistTimer:(id)timer replacingTimer:(id)replacingTimer
{
  v25[1] = *MEMORY[0x1E69E9840];
  replacingTimerCopy = replacingTimer;
  v7 = [(MTTimerStorage *)self _applyNecessaryChangesFromOldTimer:replacingTimerCopy currentTimer:timer];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __52__MTTimerStorage__queuePersistTimer_replacingTimer___block_invoke;
  v20 = &unk_1E7B0C9A0;
  v8 = replacingTimerCopy;
  v21 = v8;
  selfCopy = self;
  v9 = v7;
  v23 = v9;
  [(MTTimerStorage *)self _withLock:&v17];
  if (![(MTTimerStorage *)self shouldUseCoreData:v17])
  {
    goto LABEL_8;
  }

  if (v8 && v9)
  {
    coreDataStore = self->_coreDataStore;
    v25[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(MTCDDataStore *)coreDataStore updateTimers:v11];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = self->_coreDataStore;
    v24 = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [(MTCDDataStore *)v12 deleteTimers:v11];
  }

LABEL_8:
  [(MTTimerStorage *)self _queue_persistTimers];
  [(MTTimerStorage *)self _queue_sortTimers];
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void __52__MTTimerStorage__queuePersistTimer_replacingTimer___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) orderedTimers];
    [v2 removeObject:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    v3 = [*(a1 + 40) orderedTimers];
    [v3 addObject:*(a1 + 48)];
  }
}

- (id)_applyNecessaryChangesFromOldTimer:(id)timer currentTimer:(id)currentTimer
{
  currentTimerCopy = currentTimer;
  timerCopy = timer;
  v8 = [currentTimerCopy mutableCopy];
  v9 = (*(self->_currentDateProvider + 2))();
  [v8 setLastModifiedDate:v9];

  state = [timerCopy state];
  if (state != 3 && [currentTimerCopy state] == 3)
  {
    [v8 setFiredDate:0];
    [v8 setDismissedDate:0];
  }

  return v8;
}

- (void)_queue_notifyObserversForTimerAdd:(id)add source:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  addCopy = add;
  sourceCopy = source;
  if ([addCopy count])
  {
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for timer addition", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MTTimerStorage__queue_notifyObserversForTimerAdd_source___block_invoke;
    v10[3] = &unk_1E7B0CB88;
    v11 = sourceCopy;
    v12 = addCopy;
    [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyObserversForTimerUpdate:(id)update fromTimers:(id)timers source:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  timersCopy = timers;
  sourceCopy = source;
  if ([updateCopy count])
  {
    v11 = MTLogForCategory(4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for timer update", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__MTTimerStorage__queue_notifyObserversForTimerUpdate_fromTimers_source___block_invoke;
    v13[3] = &unk_1E7B0CBB0;
    v14 = sourceCopy;
    v15 = updateCopy;
    v16 = timersCopy;
    [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __73__MTTimerStorage__queue_notifyObserversForTimerUpdate_fromTimers_source___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 source:a1[4] didUpdateTimers:a1[5]];
  if (objc_opt_respondsToSelector())
  {
    [v3 source:a1[4] didUpdateTimers:a1[5] fromTimers:a1[6]];
  }
}

- (void)_queue_notifyObserversForTimerRemoval:(id)removal source:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  removalCopy = removal;
  sourceCopy = source;
  if ([removalCopy count])
  {
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for timer removal", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__MTTimerStorage__queue_notifyObserversForTimerRemoval_source___block_invoke;
    v10[3] = &unk_1E7B0CB88;
    v11 = sourceCopy;
    v12 = removalCopy;
    [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyObserversForTimerDismiss:(id)dismiss source:(id)source
{
  v17 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  sourceCopy = source;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for timer dismissal", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MTTimerStorage__queue_notifyObserversForTimerDismiss_source___block_invoke;
  v12[3] = &unk_1E7B0CB88;
  v13 = sourceCopy;
  v14 = dismissCopy;
  v9 = dismissCopy;
  v10 = sourceCopy;
  [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyObserversForTimerFire:(id)fire source:(id)source
{
  v17 = *MEMORY[0x1E69E9840];
  fireCopy = fire;
  sourceCopy = source;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for timer firing", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MTTimerStorage__queue_notifyObserversForTimerFire_source___block_invoke;
  v12[3] = &unk_1E7B0CB88;
  v13 = sourceCopy;
  v14 = fireCopy;
  v9 = fireCopy;
  v10 = sourceCopy;
  [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyObserversForNextTimerChange:(id)change source:(id)source
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v6 = MTLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for next timer change", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__MTTimerStorage__queue_notifyObserversForNextTimerChange_source___block_invoke;
  v9[3] = &unk_1E7B0CBD8;
  v10 = changeCopy;
  v7 = changeCopy;
  [(MTTimerStorage *)self _queue_notifyObserversWithBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_queue_timerMatchingTimerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MTTimerStorage__queue_timerMatchingTimerIdentifier___block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  [(MTTimerStorage *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __54__MTTimerStorage__queue_timerMatchingTimerIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MTTimerStorage__queue_timerMatchingTimerIdentifier___block_invoke_2;
  v6[3] = &unk_1E7B0CC00;
  v7 = *(a1 + 40);
  v3 = [v2 na_firstObjectPassingTest:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __54__MTTimerStorage__queue_timerMatchingTimerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 timerIDString];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_queue_hasMatchingTimer:(id)timer
{
  timerIDString = [timer timerIDString];
  v5 = [(MTTimerStorage *)self _queue_timerMatchingTimerIdentifier:timerIDString];

  return v5 != 0;
}

- (void)_queue_persistTimers
{
  persistence = [(MTTimerStorage *)self persistence];

  if (persistence)
  {
    v4 = objc_opt_new();
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__MTTimerStorage__queue_persistTimers__block_invoke;
    v9[3] = &unk_1E7B0CAC0;
    v9[4] = self;
    v9[5] = &v10;
    [(MTTimerStorage *)self _withLock:v9];
    [v4 encodeObject:v11[5] forKey:@"MTTimers"];
    encodedDictionary = [v4 encodedDictionary];
    persistence2 = [(MTTimerStorage *)self persistence];
    [persistence2 setObject:encodedDictionary forKey:@"MTTimers"];

    [(MTTimerStorage *)self persistTimerStorageVersion];
    persistence3 = [(MTTimerStorage *)self persistence];
    v8 = (*(self->_currentDateProvider + 2))();
    [persistence3 setObject:v8 forKey:@"MTTimerModifiedDate"];

    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __38__MTTimerStorage__queue_persistTimers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)persistTimerStorageVersion
{
  persistence = [(MTTimerStorage *)self persistence];
  LODWORD(v2) = *"ffF@";
  [persistence setFloat:@"MTTimerStorageVersion" forKey:v2];
}

- (void)_queue_sortTimers
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__MTTimerStorage__queue_sortTimers__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTTimerStorage *)self _withLock:v2];
}

- (void)printDiagnostics
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTTimerStorage-----", &v9, 2u);
  }

  v4 = MTLogForCategory(4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _diagnosticTimerDictionary = [(MTTimerStorage *)self _diagnosticTimerDictionary];
    v9 = 138543362;
    v10 = _diagnosticTimerDictionary;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Timers: %{public}@", &v9, 0xCu);
  }

  if (![(MTTimerStorage *)self shouldUseCoreData])
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastModifiedDate = [(MTTimerStorage *)self lastModifiedDate];
      v9 = 138543362;
      v10 = lastModifiedDate;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Last Modified: %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v11 = @"Timers";
  _diagnosticTimerDictionary = [(MTTimerStorage *)self _diagnosticTimerDictionary];
  v12[0] = _diagnosticTimerDictionary;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  if (![(MTTimerStorage *)self shouldUseCoreData])
  {
    lastModifiedDate = [(MTTimerStorage *)self lastModifiedDate];
    [v6 setValue:lastModifiedDate forKey:@"Timers Last Modified"];
  }

  v8 = [v6 copy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_diagnosticTimerDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  orderedTimers = [(MTTimerStorage *)self orderedTimers];
  v5 = [orderedTimers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(orderedTimers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [objc_opt_class() _diagnosticDictionaryForTimer:v9];
        timerIDString = [v9 timerIDString];
        [v3 setObject:v10 forKeyedSubscript:timerIDString];
      }

      v6 = [orderedTimers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)_diagnosticDictionaryForTimer:(id)timer
{
  timerCopy = timer;
  v4 = objc_opt_new();
  v5 = +[MTTimer descriptionForState:](MTTimer, "descriptionForState:", [timerCopy state]);
  [v4 setObject:v5 forKeyedSubscript:@"state"];

  firedDate = [timerCopy firedDate];
  v7 = firedDate;
  if (firedDate)
  {
    v8 = firedDate;
  }

  else
  {
    v8 = @"None";
  }

  [v4 setObject:v8 forKeyedSubscript:@"fired"];

  lastModifiedDate = [timerCopy lastModifiedDate];
  v10 = lastModifiedDate;
  if (lastModifiedDate)
  {
    v11 = lastModifiedDate;
  }

  else
  {
    v11 = @"None";
  }

  [v4 setObject:v11 forKeyedSubscript:@"modified"];

  v12 = MEMORY[0x1E696AEC0];
  sound = [timerCopy sound];
  toneIdentifier = [sound toneIdentifier];
  sound2 = [timerCopy sound];
  mediaItemIdentifier = [sound2 mediaItemIdentifier];
  sound3 = [timerCopy sound];
  vibrationIdentifier = [sound3 vibrationIdentifier];
  sound4 = [timerCopy sound];

  soundVolume = [sound4 soundVolume];
  v21 = [v12 stringWithFormat:@"toneID: %@, mediaItemID: %@, vibeID: %@, volume: %@", toneIdentifier, mediaItemIdentifier, vibrationIdentifier, soundVolume];
  [v4 setObject:v21 forKeyedSubscript:@"sound"];

  return v4;
}

- (void)scheduler:(id)scheduler didChangeNextTimer:(id)timer
{
  schedulerCopy = scheduler;
  timerCopy = timer;
  serializer = [(MTTimerStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__MTTimerStorage_scheduler_didChangeNextTimer___block_invoke;
  v11[3] = &unk_1E7B0C9A0;
  v11[4] = self;
  v12 = timerCopy;
  v13 = schedulerCopy;
  v9 = schedulerCopy;
  v10 = timerCopy;
  [serializer performBlock:v11];
}

uint64_t __47__MTTimerStorage_scheduler_didChangeNextTimer___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerStorage - Next Timer Changed", v4, 2u);
  }

  return [*(a1 + 32) _queue_notifyObserversForNextTimerChange:*(a1 + 40) source:*(a1 + 48)];
}

- (void)scheduler:(id)scheduler didFireTimer:(id)timer
{
  schedulerCopy = scheduler;
  timerCopy = timer;
  serializer = [(MTTimerStorage *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__MTTimerStorage_scheduler_didFireTimer___block_invoke;
  v11[3] = &unk_1E7B0C9A0;
  v11[4] = self;
  v12 = timerCopy;
  v13 = schedulerCopy;
  v9 = schedulerCopy;
  v10 = timerCopy;
  [serializer performBlock:v11];
}

void __41__MTTimerStorage_scheduler_didFireTimer___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTTimerStorage - Fired Timer", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) scheduleable];
  [v3 _queue_notifyObserversForTimerFire:v4 source:*(a1 + 48)];
}

- (void)_removeTimerDataIfNecessary:(id)necessary
{
  v13 = *MEMORY[0x1E69E9840];
  if (([necessary isEqualToString:@"com.apple.mobiletimer"] & 1) != 0 || !necessary && (+[MTApplicationWorkspaceObserver sharedWorkspaceObserver](MTApplicationWorkspaceObserver, "sharedWorkspaceObserver"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isApplicationInstalledForBundleIdentifier:", @"com.apple.mobiletimer"), v7, (v8 & 1) == 0))
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all timers", buf, 0xCu);
    }

    serializer = [(MTTimerStorage *)self serializer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MTTimerStorage__removeTimerDataIfNecessary___block_invoke;
    v10[3] = &unk_1E7B0C9D8;
    v10[4] = self;
    [serializer performBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeStaleTimers:(BOOL)timers
{
  timersCopy = timers;
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  selfCopy = self;
  v6 = (*(self->_currentDateProvider + 2))();
  v24 = [v6 dateByAddingTimeInterval:-172800.0];

  v7 = MTLogForCategory(4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = v24;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking for stale timers that have not been modified since: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __43__MTTimerStorage__queue_removeStaleTimers___block_invoke;
  v29[3] = &unk_1E7B0CAC0;
  v29[4] = selfCopy;
  v29[5] = buf;
  [(MTTimerStorage *)selfCopy _withLock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(*&buf[8] + 40);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        state = [v12 state];
        v14 = v5;
        if (state == 1)
        {
          lastModifiedDate = [v12 lastModifiedDate];
          v16 = [lastModifiedDate mtIsBeforeDate:v24];

          v14 = v5;
          if (v16)
          {
            v17 = MTLogForCategory(4);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              timerIDString = [v12 timerIDString];
              lastModifiedDate2 = [v12 lastModifiedDate];
              *v30 = 138543874;
              v31 = selfCopy;
              v32 = 2114;
              v33 = timerIDString;
              v34 = 2114;
              v35 = lastModifiedDate2;
              _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ timer: %{public}@ has not been modified since: %{public}@. Removing.", v30, 0x20u);
            }

            v14 = v4;
          }
        }

        [v14 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    [(MTTimerStorage *)selfCopy _queue_setAllTimers:v5 source:0 persist:1 notify:0];
    if ([(MTTimerStorage *)selfCopy shouldUseCoreData])
    {
      coreDataStore = [(MTTimerStorage *)selfCopy coreDataStore];
      [coreDataStore deleteTimers:v4];
    }

    if (timersCopy)
    {
      [(MTTimerStorage *)selfCopy _queue_notifyObserversForTimerRemoval:v4 source:0];
    }
  }

  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __43__MTTimerStorage__queue_removeStaleTimers___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)timeListener:(id)listener didDetectSignificantTimeChangeWithCompletionBlock:(id)block
{
  v5 = [(MTTimerStorage *)self serializer:listener];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__MTTimerStorage_timeListener_didDetectSignificantTimeChangeWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E7B0C9D8;
  v6[4] = self;
  [v5 performBlock:v6];
}

- (void)getDurationsWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    durationManager = [(MTTimerStorage *)self durationManager];
    recentDurations = [durationManager recentDurations];
    durationManager2 = [(MTTimerStorage *)self durationManager];
    favoriteDurations = [durationManager2 favoriteDurations];
    durationManager3 = [(MTTimerStorage *)self durationManager];
    defaultDurations = [objc_opt_class() defaultDurations];
    durationManager4 = [(MTTimerStorage *)self durationManager];
    latestDuration = [durationManager4 latestDuration];
    *buf = 138544386;
    selfCopy = self;
    v25 = 2114;
    v26 = recentDurations;
    v27 = 2114;
    v28 = favoriteDurations;
    v29 = 2114;
    v30 = defaultDurations;
    v31 = 2114;
    v32 = latestDuration;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ returning timer duration query, recents:%{public}@ favorites:%{public}@ default:%{public}@ latest:%{public}@", buf, 0x34u);
  }

  durationManager5 = [(MTTimerStorage *)self durationManager];
  recentDurations2 = [durationManager5 recentDurations];
  durationManager6 = [(MTTimerStorage *)self durationManager];
  favoriteDurations2 = [durationManager6 favoriteDurations];
  durationManager7 = [(MTTimerStorage *)self durationManager];
  defaultDurations2 = [objc_opt_class() defaultDurations];
  durationManager8 = [(MTTimerStorage *)self durationManager];
  latestDuration2 = [durationManager8 latestDuration];
  completionCopy[2](completionCopy, recentDurations2, favoriteDurations2, defaultDurations2, latestDuration2, 0);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)addRecentDuration:(id)duration withCompletion:(id)completion source:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  completionCopy = completion;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ addRecentDuration %{public}@", &v12, 0x16u);
  }

  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager addRecentDuration:durationCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeRecentDuration:(id)duration withCompletion:(id)completion source:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  completionCopy = completion;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removeRecentDuration %{public}@", &v12, 0x16u);
  }

  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager removeRecentDuration:durationCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addFavoriteDuration:(id)duration withCompletion:(id)completion source:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  completionCopy = completion;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ addFavoriteDuration %{public}@", &v12, 0x16u);
  }

  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager addFavoriteDuration:durationCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeFavoriteDuration:(id)duration withCompletion:(id)completion source:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  completionCopy = completion;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removeFavoriteDuration %{public}@", &v12, 0x16u);
  }

  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager removeFavoriteDuration:durationCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)saveLatestDuration:(id)duration withCompletion:(id)completion source:(id)source
{
  v16 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  completionCopy = completion;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = durationCopy;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ saveLatestDuration %{public}@", &v12, 0x16u);
  }

  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager saveLatestDuration:durationCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDurationUpdateDelegate:(id)delegate
{
  delegateCopy = delegate;
  durationManager = [(MTTimerStorage *)self durationManager];
  [durationManager setDurationUpdateDelegate:delegateCopy];
}

- (void)store_getTimersWithCompletion:(id)completion
{
  completionCopy = completion;
  coreDataStore = self->_coreDataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MTTimerStorage_store_getTimersWithCompletion___block_invoke;
  v7[3] = &unk_1E7B0CC48;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MTCDDataStore *)coreDataStore getTimersWithCompletion:v7];
}

void __48__MTTimerStorage_store_getTimersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() timersFromCdTimers:v4];

  (*(v2 + 16))(v2, v5);
}

- (void)addTimers:(id)timers withCompletion:(id)completion source:(id)source
{
  timersCopy = timers;
  completionCopy = completion;
  sourceCopy = source;
  serializer = [(MTTimerStorage *)self serializer];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__MTTimerStorage_addTimers_withCompletion_source___block_invoke;
  v15[3] = &unk_1E7B0CC70;
  v16 = timersCopy;
  selfCopy = self;
  v18 = sourceCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sourceCopy;
  v14 = timersCopy;
  [serializer performBlock:v15];
}

uint64_t __50__MTTimerStorage_addTimers_withCompletion_source___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _queue_addTimer:*(*(&v9 + 1) + 8 * v6++) withCompletion:0 source:{*(a1 + 48), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

MTTimer *__37__MTTimerStorage_timersFromCdTimers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTTimer alloc] initWithMTCDTimer:v2];

  return v3;
}

- (void)store_getAllDurations:(id)durations completion:(id)completion
{
  completionCopy = completion;
  coreDataStore = self->_coreDataStore;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MTTimerStorage_store_getAllDurations_completion___block_invoke;
  v8[3] = &unk_1E7B0CC48;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MTCDDataStore *)coreDataStore getAllDurationsWithCompletion:v8];
}

void __51__MTTimerStorage_store_getAllDurations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) durationsFromCD:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)store_getRecentsFavoritesLatest:(id)latest
{
  latestCopy = latest;
  coreDataStore = self->_coreDataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MTTimerStorage_store_getRecentsFavoritesLatest___block_invoke;
  v7[3] = &unk_1E7B0CC98;
  v7[4] = self;
  v8 = latestCopy;
  v6 = latestCopy;
  [(MTCDDataStore *)coreDataStore getRecentsFavoritesLatestWithCompletion:v7];
}

void __50__MTTimerStorage_store_getRecentsFavoritesLatest___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a4;
  v10 = a3;
  v13 = [v8 durationsFromCD:a2];
  v11 = [*(a1 + 32) durationsFromCD:v10];

  v12 = [*(a1 + 32) durationFromCD:v9];

  (*(v7 + 16))(v7, v13, v11, v12);
}

- (id)durationFromCD:(id)d
{
  dCopy = d;
  v4 = [[MTTimerDuration alloc] initWithMTCDDuration:dCopy];

  return v4;
}

- (id)durationsFromCD:(id)d
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MTTimerStorage_durationsFromCD___block_invoke;
  v5[3] = &unk_1E7B0CCC0;
  v5[4] = self;
  v3 = [d na_map:v5];

  return v3;
}

void __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v2, v3, "%{public}@ unexpected error reading data %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __44__MTTimerStorage__loadTimersWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 32);
  OUTLINED_FUNCTION_1_1();
  v6 = v2;
  _os_log_debug_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ loaded %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __50__MTTimerStorage_migrateDefaultsTimersToCoreData___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ could not add alarms from defaults to core data during migration, not setting migration to complete. Error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setAllTimers:source:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1B1F9F000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ setting all timers %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __42__MTTimerStorage_getTimersWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 32);
  OUTLINED_FUNCTION_1_1();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  _os_log_debug_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ returning timers: %{public}@, next timer: %{public}@", v8, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateTimer:withCompletion:source:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queue_updateTimer:withCompletion:source:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queue_dismissTimerWithIdentifier:withCompletion:source:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't find matching timer to dismiss for %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end