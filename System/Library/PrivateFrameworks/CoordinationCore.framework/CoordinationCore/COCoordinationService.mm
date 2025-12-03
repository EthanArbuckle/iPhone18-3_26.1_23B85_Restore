@interface COCoordinationService
+ (void)startWithConstituentType:(unint64_t)type;
- (id)_initWithConstituentType:(unint64_t)type;
- (id)_servicesForClusters:(id)clusters;
- (id)aliasManagerRequestsNewMesh:(id)mesh;
- (id)takeAssertionForCluster:(id)cluster;
- (void)_completeMigration;
- (void)_continueInitialization;
- (void)_continueMigration;
- (void)_initializeServices;
- (void)_initiateMigrationFrom:(int64_t)from;
- (void)_linkServicesToMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_setupIDSServerBag;
- (void)_significantHomeChange:(id)change;
- (void)_unlinkServicesFromMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_withLock:(id)lock;
- (void)_withServicesLock:(id)lock;
- (void)aliasManager:(id)manager activatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)aliasManager:(id)manager deactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)didInvalidateAssertionForCluster:(id)cluster;
- (void)idsServerBagDidUpdate:(id)update;
- (void)waitForClusterBootstrap:(id)bootstrap completion:(id)completion;
@end

@implementation COCoordinationService

- (id)_initWithConstituentType:(unint64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = COCoordinationService;
  v4 = [(COCoordinationService *)&v27 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_lock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INTERACTIVE, 0);

    v8 = dispatch_queue_create("com.apple.coordination.COCoordinationService", v7);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v8;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    assertions = v5->_assertions;
    v5->_assertions = strongToWeakObjectsMapTable;

    v12 = [COClusterAliasManager aliasManagerWithProvider:v5 delegate:v5 delegateDispatchQueue:v5->_dispatchQueue];
    aliasManager = v5->_aliasManager;
    v5->_aliasManager = v12;

    v14 = MEMORY[0x277CFD0B0];
    coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
    v16 = [v14 userDefaultsForIdentifer:coordinationBundleID];

    v17 = [v16 objectForKey:@"SingleShotType"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        type = [v17 unsignedIntegerValue];
        v18 = COCoreLogForCategory(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          typeCopy = type;
          _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Service type overridden with %016llX", buf, 0xCu);
        }
      }

      [v16 removeObjectForKey:@"SingleShotType"];
    }

    v5->_type = type;
    [v16 doubleForKey:@"MinimumPing"];
    v20 = v19;
    [v16 doubleForKey:@"MaximumPing"];
    if (v20 > 0.0 && v20 < v21)
    {
      v5->_pingMinimum = v20;
      v5->_pingMaximum = v21;
    }

    v22 = +[COHomeKitAdapter sharedInstance];
    hkAdapter = v5->_hkAdapter;
    v5->_hkAdapter = v22;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__significantHomeChange_ name:@"COHomeKitAdapterSignificantHomeChangeNotification" object:0];

    v5->_isMigrating = 1;
    -[COCoordinationService _initiateMigrationFrom:](v5, "_initiateMigrationFrom:", [v16 integerForKey:@"LastMigration"]);
    [(COCoordinationService *)v5 _setupIDSServerBag];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (void)startWithConstituentType:(unint64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__COCoordinationService_startWithConstituentType___block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = self;
  v3[5] = type;
  if (startWithConstituentType__onceToken != -1)
  {
    dispatch_once(&startWithConstituentType__onceToken, v3);
  }
}

void __50__COCoordinationService_startWithConstituentType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[COCoordinationService alloc] _initWithConstituentType:*(a1 + 40)];
  [v1 setSingleton:v2];
}

- (void)_initiateMigrationFrom:(int64_t)from
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = COCoreLogForCategory(1);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (from < 1)
  {
    if (v6)
    {
      *buf = 134218240;
      fromCopy2 = from;
      v11 = 2048;
      v12 = 1;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "Migration starting from %ld to %ld...", buf, 0x16u);
    }

    [(COCoordinationService *)self _continueMigration];
  }

  else
  {
    if (v6)
    {
      *buf = 134218240;
      fromCopy2 = from;
      v11 = 2048;
      v12 = 1;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "No migration required (%ld >= %ld)", buf, 0x16u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__COCoordinationService__initiateMigrationFrom___block_invoke;
    v8[3] = &unk_278E15AB8;
    v8[4] = self;
    [(COCoordinationService *)self _withLock:v8];
    [(COCoordinationService *)self _continueInitialization];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_continueMigration
{
  v22[2] = *MEMORY[0x277D85DE8];
  hkAdapter = [(COCoordinationService *)self hkAdapter];
  currentAccessory = [hkAdapter currentAccessory];

  if (currentAccessory)
  {
    v5 = objc_alloc_init(MEMORY[0x277D296D8]);
    v6 = objc_alloc_init(MEMORY[0x277D29740]);
    v7 = MEMORY[0x277D2C900];
    alarms = [v5 alarms];
    v22[0] = alarms;
    timers = [v6 timers];
    v22[1] = timers;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v12 = [v7 combineAllFutures:v10 ignoringErrors:1 scheduler:immediateScheduler];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __43__COCoordinationService__continueMigration__block_invoke;
    v17[3] = &unk_278E16E60;
    v18 = currentAccessory;
    v19 = v5;
    v20 = v6;
    selfCopy = self;
    v13 = v6;
    v14 = v5;
    v15 = [v12 addSuccessBlock:v17];
  }

  else
  {
    [(COCoordinationService *)self _completeMigration];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __43__COCoordinationService__continueMigration__block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = 0x277CBE000uLL;
  objc_opt_class();
  v49 = a1;
  if (objc_opt_isKindOfClass())
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v50 = v6;
      v43 = v5;
      v45 = v4;
      v47 = v3;
      v11 = *v58;
      v12 = *MEMORY[0x277CFCEC8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          v15 = [v14 siriContext];
          v16 = [v15 objectForKey:v12];
          if (!v16)
          {
            v17 = *(a1 + 32);
            v16 = COAlarmSiriContextTargetReferenceForAccessory();
            v18 = [v14 mutableCopy];
            if (v15)
            {
              v19 = [v15 mutableCopy];
            }

            else
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v20 = v19;
            [v19 setObject:v16 forKey:v12];
            [v18 setSiriContext:v20];
            v21 = [*(a1 + 40) updateAlarm:v18];
            [v50 addObject:v21];

            a1 = v49;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v10);
      v4 = v45;
      v3 = v47;
      v5 = v43;
      v6 = v50;
      v7 = 0x277CBE000;
    }
  }

  else
  {
    v8 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__COCoordinationService__continueMigration__block_invoke_cold_1();
    }
  }

  v22 = *(v7 + 2656);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v23 = v5;
    v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v51 = v6;
      v44 = v5;
      v46 = v4;
      v48 = v3;
      v26 = *v54;
      v27 = *MEMORY[0x277CFD068];
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v53 + 1) + 8 * j);
          if (([v29 isCurrentTimer] & 1) == 0)
          {
            v30 = [v29 siriContext];
            v31 = [v30 objectForKey:v27];
            if (!v31)
            {
              v32 = *(a1 + 32);
              v31 = COTimerSiriContextTargetReferenceForAccessory();
              v33 = [v29 mutableCopy];
              if (v30)
              {
                v34 = [v30 mutableCopy];
              }

              else
              {
                v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v35 = v34;
              [v34 setObject:v31 forKey:v27];
              [v33 setSiriContext:v35];
              v36 = [*(a1 + 48) updateTimer:v33];
              [v51 addObject:v36];

              a1 = v49;
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v25);
      v4 = v46;
      v3 = v48;
      v5 = v44;
      v6 = v51;
    }
  }

  else
  {
    v23 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __43__COCoordinationService__continueMigration__block_invoke_cold_2();
    }
  }

  if ([v6 count])
  {
    v37 = a1;
    v38 = MEMORY[0x277D2C900];
    v39 = [MEMORY[0x277D2C938] immediateScheduler];
    v40 = [v38 combineAllFutures:v6 ignoringErrors:1 scheduler:v39];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __43__COCoordinationService__continueMigration__block_invoke_36;
    v52[3] = &unk_278E19258;
    v52[4] = *(v37 + 56);
    v41 = [v40 addCompletionBlock:v52];
  }

  else
  {
    [*(a1 + 56) _completeMigration];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_completeMigration
{
  v3 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "Migration complete.", buf, 2u);
  }

  v4 = MEMORY[0x277CFD0B0];
  coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v6 = [v4 userDefaultsForIdentifer:coordinationBundleID];

  [v6 setInteger:1 forKey:@"LastMigration"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__COCoordinationService__completeMigration__block_invoke;
  v7[3] = &unk_278E15AB8;
  v7[4] = self;
  [(COCoordinationService *)self _withLock:v7];
  [(COCoordinationService *)self _continueInitialization];
}

- (void)_initializeServices
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_servicesLock);
  v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v4 = [COCapabilityService serviceWithDelegate:self];
  [v3 addObject:v4];

  v5 = [CORoleService serviceWithDelegate:self];
  [v3 addObject:v5];

  v6 = [COStateService serviceWithDelegate:self];
  [v3 addObject:v6];

  v7 = [COMessagingService serviceWithDelegate:self];
  [v3 addObject:v7];

  if ([MEMORY[0x277CFD0B8] isDistributedTimersForHH1Enabled])
  {
    v8 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p Alarms & Timers are handled by DistributedTimers (HH1 ok)", &v13, 0xCu);
    }
  }

  else
  {
    v9 = [COAlarmService serviceWithDelegate:self];
    [v3 addObject:v9];

    v8 = [COTimerService serviceWithDelegate:self];
    [v3 addObject:v8];
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB70]) initWithOrderedSet:v3];
  services = self->_services;
  self->_services = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_continueInitialization
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__COCoordinationService__continueInitialization__block_invoke;
  v4[3] = &unk_278E15AB8;
  v4[4] = self;
  [(COCoordinationService *)self _withServicesLock:v4];
  alwaysAssert = self->_alwaysAssert;
  self->_alwaysAssert = 0;
}

- (void)_significantHomeChange:(id)change
{
  changeCopy = change;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__COCoordinationService__significantHomeChange___block_invoke;
  v5[3] = &unk_278E15638;
  v5[4] = self;
  v5[5] = &v6;
  [(COCoordinationService *)self _withLock:v5];
  if (*(v7 + 24) == 1)
  {
    [(COCoordinationService *)self _continueMigration];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_linkServicesToMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v77 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  clustersCopy = clusters;
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x3032000000;
  v64[2] = __Block_byref_object_copy__29;
  v64[3] = __Block_byref_object_dispose__29;
  v65 = 0;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke;
  v60[3] = &unk_278E15A18;
  v62 = &v63;
  v60[4] = self;
  v37 = clustersCopy;
  v61 = v37;
  [(COCoordinationService *)self _withServicesLock:v60];
  isDistributedTimersEnabled = [MEMORY[0x277CFD0B8] isDistributedTimersEnabled];
  hkAdapter = [(COCoordinationService *)self hkAdapter];
  hasOptedToHH2 = [hkAdapter hasOptedToHH2];

  v12 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v35 = "no";
    if (isDistributedTimersEnabled)
    {
      v36 = "yes";
    }

    else
    {
      v36 = "no";
    }

    *buf = 134218498;
    selfCopy4 = self;
    v69 = v36;
    v68 = 2080;
    if (hasOptedToHH2)
    {
      v35 = "yes";
    }

    v70 = 2080;
    v71 = v35;
    _os_log_debug_impl(&dword_244378000, v12, OS_LOG_TYPE_DEBUG, "%p DistributedTimers: %s, HomeHub2: %s", buf, 0x20u);
  }

  if (!([MEMORY[0x277CFD0B8] isDistributedTimersForHH1Enabled] & 1 | ((isDistributedTimersEnabled & 1) == 0)) && ((hasOptedToHH2 ^ 1) & 1) == 0)
  {
    v13 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%p Alarms & Timers are handled by DistributedTimers, removing services.", buf, 0xCu);
    }

    v14 = [*(v64[0] + 40) mutableCopy];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v15 = *(v64[0] + 40);
    v16 = [v15 countByEnumeratingWithState:&v56 objects:v76 count:16];
    if (v16)
    {
      v17 = *v57;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v56 + 1) + 8 * i);
          v20 = objc_opt_class();
          if (([v20 isEqual:objc_opt_class()] & 1) == 0)
          {
            v21 = objc_opt_class();
            if (![v21 isEqual:objc_opt_class()])
            {
              continue;
            }
          }

          v22 = COCoreLogForCategory(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy4 = self;
            v68 = 2112;
            v69 = v19;
            _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p removing %@", buf, 0x16u);
          }

          [v14 removeObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v56 objects:v76 count:16];
      }

      while (v16);
    }

    v23 = *(v64[0] + 40);
    *(v64[0] + 40) = v14;
  }

  v24 = [*(v64[0] + 40) count];
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3042000000;
  v52 = __Block_byref_object_copy__50;
  v53 = __Block_byref_object_dispose__51;
  v54 = 0;
  v25 = dispatch_group_create();
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_52;
  v40[3] = &unk_278E192A8;
  v48 = v24;
  v45 = v55;
  v46 = &v63;
  v26 = v37;
  v41 = v26;
  v27 = controllerCopy;
  v42 = v27;
  v28 = identifierCopy;
  v43 = v28;
  v47 = &v49;
  v29 = v25;
  v44 = v29;
  v30 = MEMORY[0x245D5FF10](v40);
  objc_storeWeak(v50 + 5, v30);
  v31 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [*(v64[0] + 40) count];
    *buf = 134219010;
    selfCopy4 = self;
    v68 = 2048;
    v69 = v32;
    v70 = 2048;
    v71 = v27;
    v72 = 2112;
    v73 = v28;
    v74 = 2112;
    v75 = v26;
    _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "%p linking %lu services to %p with %@ for Clusters %@", buf, 0x34u);
  }

  v33 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    [COCoordinationService _linkServicesToMeshController:v64 withClusterIdentifier:? forClusters:?];
  }

  dispatch_group_enter(v29);
  v30[2](v30);
  dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v49, 8);
  objc_destroyWeak(&v54);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v63, 8);

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesForClusters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_52(void *a1)
{
  if (*(*(a1[8] + 8) + 24) >= a1[11])
  {
    v6 = a1[7];

    dispatch_group_leave(v6);
  }

  else
  {
    v2 = [*(*(a1[9] + 8) + 40) objectAtIndex:?];
    ++*(*(a1[8] + 8) + 24);
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_2;
    v7[3] = &unk_278E19280;
    v7[4] = a1[10];
    [v2 joinClusters:v3 usingMeshController:v4 withClusterIdentifier:v5 completion:v7];
  }
}

void __89__COCoordinationService__linkServicesToMeshController_withClusterIdentifier_forClusters___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  WeakRetained[2]();
}

- (void)_unlinkServicesFromMeshController:(id)controller withClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v58 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  clustersCopy = clusters;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__29;
  v46 = __Block_byref_object_dispose__29;
  v47 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke;
  v39[3] = &unk_278E15A18;
  v41 = &v42;
  v39[4] = self;
  v11 = clustersCopy;
  v40 = v11;
  [(COCoordinationService *)self _withServicesLock:v39];
  v12 = [v43[5] count];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3042000000;
  v35 = __Block_byref_object_copy__50;
  v36 = __Block_byref_object_dispose__51;
  v37 = 0;
  v13 = dispatch_group_create();
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_2;
  v24 = &unk_278E192D0;
  v31 = v12;
  v28 = v38;
  v29 = &v42;
  v14 = v11;
  v25 = v14;
  v15 = identifierCopy;
  v26 = v15;
  v30 = &v32;
  v16 = v13;
  v27 = v16;
  v17 = MEMORY[0x245D5FF10](&v21);
  objc_storeWeak(v33 + 5, v17);
  v18 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v43[5] count];
    *buf = 134219010;
    selfCopy = self;
    v50 = 2048;
    v51 = v19;
    v52 = 2048;
    v53 = controllerCopy;
    v54 = 2112;
    v55 = v15;
    v56 = 2112;
    v57 = v14;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p unlinking %lu services from %p with %@ for Clusters %@", buf, 0x34u);
  }

  dispatch_group_enter(v16);
  v17[2](v17);
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v32, 8);
  objc_destroyWeak(&v37);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v42, 8);

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _servicesForClusters:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_2(void *a1)
{
  if (*(*(a1[7] + 8) + 24) >= a1[10])
  {
    v5 = a1[6];

    dispatch_group_leave(v5);
  }

  else
  {
    v2 = [*(*(a1[8] + 8) + 40) objectAtIndex:?];
    ++*(*(a1[7] + 8) + 24);
    v3 = a1[4];
    v4 = a1[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_3;
    v6[3] = &unk_278E19280;
    v6[4] = a1[9];
    [v2 leaveClusters:v3 withClusterIdentifier:v4 completion:v6];
  }
}

void __93__COCoordinationService__unlinkServicesFromMeshController_withClusterIdentifier_forClusters___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  WeakRetained[2]();
}

- (id)takeAssertionForCluster:(id)cluster
{
  clusterCopy = cluster;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__29;
  v25 = __Block_byref_object_dispose__29;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __49__COCoordinationService_takeAssertionForCluster___block_invoke;
  v12 = &unk_278E192F8;
  selfCopy = self;
  v5 = clusterCopy;
  v14 = v5;
  v15 = &v21;
  v16 = &v17;
  [(COCoordinationService *)self _withLock:&v9];
  if (*(v18 + 24) == 1)
  {
    v6 = [(COCoordinationService *)self aliasManager:v9];
    [v6 startTrackingCluster:v5];
  }

  v7 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

void __49__COCoordinationService_takeAssertionForCluster___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 objectForKey:*(a1 + 40)];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v5 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v8 = *(a1 + 32);
      v9 = [v8 assertions];
      v10 = [v9 count];
      *buf = 134218754;
      v23 = v8;
      v24 = 2048;
      v25 = v7;
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      v29 = v10;
      _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%p reusing assertion %p for Cluster %@ (total %lu)", buf, 0x2Au);
    }
  }

  else
  {
    v11 = [COClusterAssertion assertionForCluster:*(a1 + 40) delegate:*(a1 + 32)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [*(a1 + 32) assertions];
    [v14 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];

    v5 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v17 = *(a1 + 32);
      v18 = [v17 assertions];
      v19 = [v18 count];
      *buf = 134218754;
      v23 = v17;
      v24 = 2048;
      v25 = v16;
      v26 = 2112;
      v27 = v15;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p established assertion %p for Cluster %@ (total %lu)", buf, 0x2Au);
    }
  }

  objc_destroyWeak(&location);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)waitForClusterBootstrap:(id)bootstrap completion:(id)completion
{
  bootstrapCopy = bootstrap;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__COCoordinationService_waitForClusterBootstrap_completion___block_invoke;
  v11[3] = &unk_278E15700;
  v11[4] = self;
  v8 = bootstrapCopy;
  v12 = v8;
  v13 = &v14;
  [(COCoordinationService *)self _withLock:v11];
  if (v15[3])
  {
    v9 = COCoreLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [COCoordinationService waitForClusterBootstrap:completion:];
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    aliasManager = [(COCoordinationService *)self aliasManager];
    [aliasManager waitForBootstrapOfCluster:v8 withBlock:completionCopy];
  }

  _Block_object_dispose(&v14, 8);
}

void __60__COCoordinationService_waitForClusterBootstrap_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 objectForKey:*(a1 + 40)];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  *(*(*(a1 + 48) + 8) + 24) = v4 == 0;

  objc_destroyWeak(&location);
}

- (void)didInvalidateAssertionForCluster:(id)cluster
{
  clusterCopy = cluster;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__COCoordinationService_didInvalidateAssertionForCluster___block_invoke;
  v10 = &unk_278E156B0;
  selfCopy = self;
  v12 = clusterCopy;
  v5 = clusterCopy;
  [(COCoordinationService *)self _withLock:&v7];
  v6 = [(COCoordinationService *)self aliasManager:v7];
  [v6 stopTrackingCluster:v5];
}

void __58__COCoordinationService_didInvalidateAssertionForCluster___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) assertions];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = COCoreLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [v4 assertions];
    v8 = 134218498;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [v6 count];
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p assertion invalidated for Cluster %@ (total %lu)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)aliasManagerRequestsNewMesh:(id)mesh
{
  v4 = [[COMeshController alloc] initWithConstituentType:[(COCoordinationService *)self type]];
  dispatchQueue = [(COCoordinationService *)self dispatchQueue];
  [(COMeshController *)v4 setDispatchQueue:dispatchQueue];

  [(COCoordinationService *)self pingMinimum];
  v7 = v6;
  [(COCoordinationService *)self pingMaximum];
  if (v7 > 0.0)
  {
    v9 = v8;
    if (v7 < v8)
    {
      [(COMeshController *)v4 setPingMinimum:v7];
      [(COMeshController *)v4 setPingMaximum:v9];
    }
  }

  return v4;
}

- (void)aliasManager:(id)manager activatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  completionCopy = completion;
  [(COCoordinationService *)self _linkServicesToMeshController:mesh withClusterIdentifier:identifier forClusters:clusters];
  completionCopy[2]();
}

- (void)aliasManager:(id)manager deactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  completionCopy = completion;
  [(COCoordinationService *)self _unlinkServicesFromMeshController:mesh withClusterIdentifier:identifier forClusters:clusters];
  completionCopy[2]();
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withServicesLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_servicesLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_servicesLock);
}

- (id)_servicesForClusters:(id)clusters
{
  v29 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  os_unfair_lock_assert_owner(&self->_servicesLock);
  v18 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  services = [(COCoordinationService *)self services];
  v6 = [services countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(services);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = clustersCopy;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v10 _applicableToCluster:*(*(&v19 + 1) + 8 * j)])
              {
                [v18 addObject:v10];
                goto LABEL_16;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v7 = [services countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_setupIDSServerBag
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v3, OS_LOG_TYPE_DEFAULT, "%p setting up IDSServer Bag", &v9, 0xCu);
  }

  v4 = objc_alloc_init(COIDSServerBag);
  idsServerBag = self->_idsServerBag;
  self->_idsServerBag = v4;

  idsServerBag = [(COCoordinationService *)self idsServerBag];
  [idsServerBag setDelegate:self];

  idsServerBag2 = [(COCoordinationService *)self idsServerBag];
  [idsServerBag2 configure];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)idsServerBagDidUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p IDS server bag updated", &v20, 0xCu);
  }

  v6 = MEMORY[0x277CFD0B0];
  coordinationBundleID = [MEMORY[0x277CFD0B0] coordinationBundleID];
  v8 = [v6 userDefaultsForIdentifer:coordinationBundleID];

  isFastFoldEnabled = [updateCopy isFastFoldEnabled];
  if (isFastFoldEnabled)
  {
    v10 = *MEMORY[0x277CFCF00];
    v11 = [v8 objectForKey:*MEMORY[0x277CFCF00]];
    v12 = v11;
    if (!v11 || ([v11 isEqual:isFastFoldEnabled] & 1) == 0)
    {
      v13 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        selfCopy = isFastFoldEnabled;
        _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "Received an updated bag value for fast fold %@. Writing to prefs", &v20, 0xCu);
      }

      [v8 setObject:isFastFoldEnabled forKey:v10];
    }
  }

  isIPDiffingEnabled = [updateCopy isIPDiffingEnabled];
  if (isIPDiffingEnabled)
  {
    v15 = *MEMORY[0x277CFCF08];
    v16 = [v8 objectForKey:*MEMORY[0x277CFCF08]];
    v17 = v16;
    if (!v16 || ([v16 isEqual:isIPDiffingEnabled] & 1) == 0)
    {
      v18 = COCoreLogForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        selfCopy = isIPDiffingEnabled;
        _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Received an updated bag value for ip diffing %@. Writing to prefs", &v20, 0xCu);
      }

      [v8 setObject:isIPDiffingEnabled forKey:v15];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__COCoordinationService__continueMigration__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "Migrating alarms failed (%@)", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __43__COCoordinationService__continueMigration__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_244378000, v0, OS_LOG_TYPE_ERROR, "Migrating timers failed (%@)", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_linkServicesToMeshController:(uint64_t)a1 withClusterIdentifier:(uint64_t)a2 forClusters:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3();
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_244378000, v4, OS_LOG_TYPE_DEBUG, "%p services: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForClusterBootstrap:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_244378000, v1, OS_LOG_TYPE_ERROR, "%p no assertion for Cluster %@, invoking bootstrap block inline", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end