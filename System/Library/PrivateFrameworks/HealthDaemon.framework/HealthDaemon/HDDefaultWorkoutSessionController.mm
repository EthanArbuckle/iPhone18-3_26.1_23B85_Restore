@interface HDDefaultWorkoutSessionController
- (BOOL)enableAutomaticDetectionForActivityConfigurations:(id)configurations;
- (HDDefaultWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state;
- (id)_maxTypesToCollect;
- (id)_ownerIdentifier;
- (id)currentActivityConfiguration;
- (id)databaseAssertion;
- (id)launchPayloadOptions;
- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count;
- (id)unitTest_databaseAssertion;
- (void)_handleSamplesUpdated:(uint64_t)updated;
- (void)_hideBackgroundActivityAndUnregisterObserver;
- (void)_instantiateBackgroudActivityControllerWithSessionConfiguration:(uint64_t)configuration;
- (void)_lowPowerModeStateChanged:(id)changed;
- (void)_persistAndNotifyClientsOfGeneratedTypesUpdate:(uint64_t)update moveMode:(void *)mode configuration:(unsigned int)configuration didUpdateActivity:(void *)activity earliestSampleDate:;
- (void)_queue_instantiateAndStartSwimTrackerIfNeededWithIdentifier:(uint64_t)identifier activityType:;
- (void)_queue_setupAssertionGroup;
- (void)_queue_updateDataObserverWithMoveMode:(unsigned int)mode didUpdateActivity:(void *)activity earliestDate:;
- (void)_showOrHideBackgroundActivityIfNeeded:(char)needed isForegrounded:;
- (void)beginNewActivity:(id)activity;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)endCurrentActivity:(id)activity;
- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity;
- (void)hktest_setStateTransitionCompletionHandler:(id)handler;
- (void)processDidEnterBackground:(id)background;
- (void)processDidEnterForeground:(id)foreground;
- (void)receivedWorkoutEvent:(id)event;
- (void)receivedWorkoutEvent:(id)event forWorkoutActivity:(id)activity;
- (void)unitTest_setSwimTracker:(id)tracker;
- (void)unitTest_suggestActivity:(id)activity;
- (void)workoutSessionServer:(id)server didChangeConfiguration:(id)configuration;
- (void)workoutSessionServer:(id)server didTransitionFromState:(int64_t)state toState:(int64_t)toState date:(id)date;
@end

@implementation HDDefaultWorkoutSessionController

- (HDDefaultWorkoutSessionController)initWithProfile:(id)profile sessionConfiguration:(id)configuration sessionStateController:(id)controller recoveryState:(id)state
{
  profileCopy = profile;
  configurationCopy = configuration;
  controllerCopy = controller;
  stateCopy = state;
  v48.receiver = self;
  v48.super_class = HDDefaultWorkoutSessionController;
  v14 = [(HDDefaultWorkoutSessionController *)&v48 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    v16 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v16;

    objc_storeStrong(&v15->_sessionConfiguration, configuration);
    objc_storeWeak(&v15->_sessionStateController, controllerCopy);
    currentActivity = v15->_currentActivity;
    v15->_currentActivity = 0;

    v19 = [HDWorkoutUtilities alloc];
    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    v21 = [(HDWorkoutUtilities *)v19 initWithProfile:WeakRetained];
    workoutUtilities = v15->_workoutUtilities;
    v15->_workoutUtilities = v21;

    v23 = 0.0;
    if (!_HDIsUnitTesting)
    {
      v23 = 20.0;
    }

    v15->_generateFinalDataWaitInterval = v23;
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (isAppleWatch)
    {
      v15->_currentMoveMode = 1;
    }

    else
    {
      v15->_currentMoveMode = 2;
      v26 = objc_loadWeakRetained(&v15->_profile);
      daemon = [v26 daemon];
      processStateManager = [daemon processStateManager];
      clientProcessBundleIdentifier = [configurationCopy clientProcessBundleIdentifier];
      [processStateManager registerObserver:v15 forBundleIdentifier:clientProcessBundleIdentifier];
    }

    v30 = v15->_queue;
    v42 = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __111__HDDefaultWorkoutSessionController_initWithProfile_sessionConfiguration_sessionStateController_recoveryState___block_invoke;
    v45 = &unk_278613920;
    v31 = v15;
    v46 = v31;
    v47 = stateCopy;
    dispatch_sync(v30, &v42);
    v32 = [HDWorkoutEventsManager alloc];
    v33 = objc_loadWeakRetained(&v15->_profile);
    v34 = [(HDWorkoutEventsManager *)v32 initWithProfile:v33, v42, v43, v44, v45];
    eventsManager = v31->_eventsManager;
    v31->_eventsManager = v34;

    v36 = objc_loadWeakRetained(&v15->_profile);
    workoutManager = [v36 workoutManager];
    biomeInterface = [workoutManager biomeInterface];
    bmInterface = v31->_bmInterface;
    v31->_bmInterface = biomeInterface;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v31 selector:sel__lowPowerModeStateChanged_ name:*MEMORY[0x277CCA5E8] object:0];

    [HDDefaultWorkoutSessionController _instantiateBackgroudActivityControllerWithSessionConfiguration:v31];
  }

  return v15;
}

void __111__HDDefaultWorkoutSessionController_initWithProfile_sessionConfiguration_sessionStateController_recoveryState___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  [(HDDefaultWorkoutSessionController *)*(a1 + 32) _queue_setupAssertionGroup];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v2;
    _HKInitializeLogging();
    v6 = MEMORY[0x277CCC330];
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v3;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting to recover session controller state", buf, 0xCu);
    }

    v36 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v36];

    v9 = v36;
    if (v8)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB58]);
      v11 = [v8 generatedTypes];
      v12 = [v10 initWithSet:v11];
      v13 = *(v3 + 120);
      *(v3 + 120) = v12;

      *(v3 + 128) = [v8 moveMode];
    }

    else
    {
      _HKInitializeLogging();
      v14 = *v6;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v38 = v3;
        v39 = 2114;
        v40 = v9;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recover with error: %{public}@", buf, 0x16u);
      }
    }

    v3 = *(a1 + 32);
  }

  if (*(v3 + 120))
  {
    v15 = objc_alloc(MEMORY[0x277CCDC50]);
    v16 = [(HDDefaultWorkoutSessionController *)*(a1 + 32) currentActivityConfiguration];
    v17 = *(*(a1 + 32) + 120);
    v18 = [MEMORY[0x277CBEB98] set];
    v19 = [v15 initWithWorkoutConfiguration:v16 sampleTypesToCollect:v17 eventTypesToCollect:v18 collectsDefaultTypes:1];
    v20 = *(a1 + 32);
    v21 = *(v20 + 136);
    *(v20 + 136) = v19;
  }

  else
  {
    v22 = MEMORY[0x277CCDC48];
    v23 = [(HDDefaultWorkoutSessionController *)v3 currentActivityConfiguration];
    v24 = [v22 defaultConfigurationWithWorkoutConfiguration:v23 activityMoveMode:*(*(a1 + 32) + 128)];
    v25 = *(a1 + 32);
    v26 = *(v25 + 136);
    *(v25 + 136) = v24;

    v27 = objc_alloc(MEMORY[0x277CBEB58]);
    v16 = [*(*(a1 + 32) + 136) sampleTypesToCollect];
    v28 = [v27 initWithSet:v16];
    v29 = *(a1 + 32);
    v18 = *(v29 + 120);
    *(v29 + 120) = v28;
  }

  v30 = [MEMORY[0x277CCDD30] sharedBehavior];
  v31 = [v30 supportsCoreOSDatabaseAssertion];

  if (v31)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v32 = [WeakRetained database];
    [v32 addProtectedDataObserver:*(a1 + 32) queue:*(*(a1 + 32) + 24)];

    v33 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v34 = *MEMORY[0x277D85DE8];
  }
}

- (void)_queue_setupAssertionGroup
{
  v81[5] = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 24));
    v2 = objc_alloc_init(HDSessionAssertionGroup);
    v3 = *(self + 40);
    *(self + 40) = v2;

    workoutConfiguration = [*(self + 32) workoutConfiguration];
    activityType = [workoutConfiguration activityType];

    objc_initWeak(&location, self);
    v6 = [HDSessionAssertionWrapper alloc];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke;
    v69[3] = &unk_278620DA8;
    objc_copyWeak(&v70, &location);
    v46 = [(HDSessionAssertionWrapper *)v6 initWithCreateAndTakeBlock:v69];
    v7 = [HDSessionAssertionWrapper alloc];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_2;
    v67[3] = &unk_278620DA8;
    objc_copyWeak(&v68, &location);
    v44 = [(HDSessionAssertionWrapper *)v7 initWithCreateAndTakeBlock:v67];
    v8 = [HDSessionAssertionWrapper alloc];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_3;
    v65[3] = &unk_278620DA8;
    objc_copyWeak(&v66, &location);
    v45 = [(HDSessionAssertionWrapper *)v8 initWithCreateAndTakeBlock:v65];
    v9 = [HDSessionAssertionWrapper alloc];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_4;
    v63[3] = &unk_278620DA8;
    objc_copyWeak(&v64, &location);
    v10 = [(HDSessionAssertionWrapper *)v9 initWithCreateAndTakeBlock:v63];
    v11 = [HDSessionAssertionWrapper alloc];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_5;
    v61[3] = &unk_278620DA8;
    objc_copyWeak(&v62, &location);
    v41 = [(HDSessionAssertionWrapper *)v11 initWithCreateAndTakeBlock:v61];
    v12 = [HDSessionAssertionWrapper alloc];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_6;
    v59[3] = &unk_278620DA8;
    objc_copyWeak(&v60, &location);
    v43 = [(HDSessionAssertionWrapper *)v12 initWithCreateAndTakeBlock:v59];
    v13 = [HDSessionAssertionWrapper alloc];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_7;
    v57[3] = &unk_278620DA8;
    objc_copyWeak(&v58, &location);
    v14 = [(HDSessionAssertionWrapper *)v13 initWithCreateAndTakeBlock:v57];
    v15 = [HDSessionAssertionWrapper alloc];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_8;
    v55[3] = &unk_278620DA8;
    objc_copyWeak(&v56, &location);
    v42 = [(HDSessionAssertionWrapper *)v15 initWithCreateAndTakeBlock:v55];
    v16 = [HDSessionAssertionWrapper alloc];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_9;
    v53[3] = &unk_278620DA8;
    objc_copyWeak(&v54, &location);
    v40 = [(HDSessionAssertionWrapper *)v16 initWithCreateAndTakeBlock:v53];
    v17 = [HDSessionAssertionWrapper alloc];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_10;
    v51[3] = &unk_278620DA8;
    objc_copyWeak(&v52, &location);
    v18 = [(HDSessionAssertionWrapper *)v17 initWithCreateAndTakeBlock:v51];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v19 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:&unk_283CB2190];
    [v19 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:&unk_283CB21A8];
    [v19 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:&unk_283CB21C0];
    v81[0] = v46;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v10;
    v81[4] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:5];
    [v19 setObject:v20 forKeyedSubscript:&unk_283CB21D8];

    v80[0] = v46;
    v80[1] = v44;
    v80[2] = v45;
    v80[3] = v10;
    v80[4] = v18;
    v80[5] = v14;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:6];
    [v19 setObject:v21 forKeyedSubscript:&unk_283CB21F0];

    v22 = [v19 objectForKeyedSubscript:&unk_283CB21D8];
    [v19 setObject:v22 forKeyedSubscript:&unk_283CB2208];

    v79[0] = v46;
    v79[1] = v44;
    v79[2] = v45;
    v79[3] = v10;
    v79[4] = v41;
    v79[5] = v18;
    v79[6] = v43;
    v79[7] = v14;
    v79[8] = v42;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:9];
    [v19 setObject:v23 forKeyedSubscript:&unk_283CB2220];

    v78[0] = v46;
    v78[1] = v44;
    v78[2] = v45;
    v78[3] = v10;
    v78[4] = v41;
    v78[5] = v18;
    v78[6] = v43;
    v78[7] = v14;
    v78[8] = v42;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:9];
    [v19 setObject:v24 forKeyedSubscript:&unk_283CB2238];

    v77[0] = v46;
    v77[1] = v44;
    v77[2] = v45;
    v77[3] = v10;
    v77[4] = v41;
    v77[5] = v18;
    v77[6] = v43;
    v77[7] = v42;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:8];
    [v19 setObject:v25 forKeyedSubscript:&unk_283CB2250];

    v76[0] = v46;
    v76[1] = v45;
    v76[2] = v10;
    v76[3] = v41;
    v76[4] = v18;
    v76[5] = v43;
    v76[6] = v14;
    v76[7] = v42;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:8];
    v27 = [v26 mutableCopy];

    if (activityType != 61)
    {
      [v27 addObject:v44];
    }

    [v19 setObject:v27 forKeyedSubscript:&unk_283CB2268];
    v75[0] = v46;
    v75[1] = v44;
    v75[2] = v45;
    v75[3] = v10;
    v75[4] = v18;
    v75[5] = v43;
    v75[6] = v14;
    v75[7] = v42;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:8];
    [v19 setObject:v28 forKeyedSubscript:&unk_283CB2280];
    [v19 setObject:v28 forKeyedSubscript:&unk_283CB2298];
    v74[0] = v46;
    v74[1] = v44;
    v74[2] = v45;
    v74[3] = v10;
    v74[4] = v18;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
    [v19 setObject:v29 forKeyedSubscript:&unk_283CB22B0];
    v30 = [v29 arrayByAddingObject:v40];
    [v19 setObject:v30 forKeyedSubscript:&unk_283CB22C8];

    v73 = v40;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    [v19 setObject:v31 forKeyedSubscript:&unk_283CB22E0];

    [v19 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:&unk_283CB22F8];
    objc_destroyWeak(&v52);

    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);

    objc_destroyWeak(&v62);
    objc_destroyWeak(&v64);

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v68);

    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = [v19 countByEnumeratingWithState:&v47 objects:v72 count:16];
    if (v32)
    {
      v33 = *v48;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v19);
          }

          v35 = *(*(&v47 + 1) + 8 * i);
          integerValue = [v35 integerValue];
          v37 = *(self + 40);
          v38 = [v19 objectForKeyedSubscript:v35];
          [v37 setupState:integerValue withAssertions:v38];
        }

        v32 = [v19 countByEnumeratingWithState:&v47 objects:v72 count:16];
      }

      while (v32);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (id)currentActivityConfiguration
{
  selfCopy = self;
  if (self)
  {
    workoutConfiguration = [self[9] workoutConfiguration];
    v3 = workoutConfiguration;
    if (workoutConfiguration)
    {
      workoutConfiguration2 = workoutConfiguration;
    }

    else
    {
      workoutConfiguration2 = [selfCopy[4] workoutConfiguration];
    }

    selfCopy = workoutConfiguration2;
  }

  return selfCopy;
}

- (void)_instantiateBackgroudActivityControllerWithSessionConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    [*(configuration + 96) hidePillIfNeededWithCompletion:0];
    client = [*(configuration + 32) client];
    v3 = client;
    if (client)
    {
      *buf = 0u;
      v14 = 0u;
      xPCClient = [client XPCClient];
      process = [xPCClient process];
      auditToken = [process auditToken];
      v7 = auditToken;
      if (auditToken)
      {
        [auditToken auditToken];
      }

      else
      {
        *buf = 0u;
        v14 = 0u;
      }

      v9 = [_TtC12HealthDaemon37HDWorkoutBackgroundActivityController alloc];
      v12[0] = *buf;
      v12[1] = v14;
      v10 = [(HDWorkoutBackgroundActivityController *)v9 initWithAuditToken:v12];
      v11 = *(configuration + 96);
      *(configuration + 96) = v10;
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to setup backround activity controller. Client is nil", buf, 2u);
      }
    }
  }
}

- (void)dealloc
{
  [(HDSessionAssertionGroup *)self->_assertionGroup invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CCA5E8] object:0];

  [(HKDaemonTransaction *)self->_daemonTransaction invalidate];
  daemonTransaction = self->_daemonTransaction;
  self->_daemonTransaction = 0;

  [(HDAssertion *)self->_liveActivityAssertion invalidate];
  liveActivityAssertion = self->_liveActivityAssertion;
  self->_liveActivityAssertion = 0;

  liveActivityAssertionTimeoutSource = self->_liveActivityAssertionTimeoutSource;
  if (liveActivityAssertionTimeoutSource)
  {
    dispatch_source_cancel(liveActivityAssertionTimeoutSource);
    v7 = self->_liveActivityAssertionTimeoutSource;
    self->_liveActivityAssertionTimeoutSource = 0;
  }

  [(BSInvalidatable *)self->_liveActivitySubscription invalidate];
  liveActivitySubscription = self->_liveActivitySubscription;
  self->_liveActivitySubscription = 0;

  v9.receiver = self;
  v9.super_class = HDDefaultWorkoutSessionController;
  [(HDDefaultWorkoutSessionController *)&v9 dealloc];
}

- (id)databaseAssertion
{
  if (_HDIsUnitTesting)
  {
    WeakRetained = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_databaseAssertion);
  }

  return WeakRetained;
}

- (void)workoutSessionServer:(id)server didTransitionFromState:(int64_t)state toState:(int64_t)toState date:(id)date
{
  dateCopy = date;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HDDefaultWorkoutSessionController_workoutSessionServer_didTransitionFromState_toState_date___block_invoke;
  v12[3] = &unk_278616F60;
  stateCopy = state;
  toStateCopy = toState;
  v12[4] = self;
  v13 = dateCopy;
  v11 = dateCopy;
  dispatch_async(queue, v12);
}

void __94__HDDefaultWorkoutSessionController_workoutSessionServer_didTransitionFromState_toState_date___block_invoke(uint64_t a1)
{
  v131 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = [(HDDefaultWorkoutSessionController *)*(a1 + 32) _maxTypesToCollect];
    [HDActiveDataCollectionObserverServer launchObservingProcessesForTypes:v2];

    if (!*(*(a1 + 32) + 104))
    {
      _HKInitializeLogging();
      v3 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_INFO, "%@{public}: Taking Daemon Transaction for Workout Start", buf, 0xCu);
      }

      v5 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:*(a1 + 32) activityName:@"Workout"];
      v6 = *(*(a1 + 32) + 104);
      *(*(a1 + 32) + 104) = v5;
    }
  }

  *(*(a1 + 32) + 56) = *(a1 + 56);
  [*(*(a1 + 32) + 40) transitionToState:?];
  v7 = *(a1 + 32);
  v8 = *(v7 + 160);
  if (v8)
  {
    (*(v8 + 16))(v8, *(v7 + 56), *(a1 + 48));
    v7 = *(a1 + 32);
  }

  [*(v7 + 64) workoutSessionWithConfiguration:*(v7 + 32) transitionedToState:*(a1 + 56) fromState:*(a1 + 48)];
  v9 = *(a1 + 56);
  if (v9 > 11)
  {
    if ((v9 - 14) >= 3)
    {
      if (v9 == 12)
      {
        v42 = *(a1 + 32);
        v43 = *(a1 + 40);
        if (v42)
        {
          _HKInitializeLogging();
          v44 = MEMORY[0x277CCC330];
          v45 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v42;
            _os_log_impl(&dword_228986000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Requesting post-stop data aggregation for all collected types and pending events collection.", buf, 0xCu);
          }

          v46 = dispatch_group_create();
          v118[0] = 0;
          v118[1] = v118;
          v118[2] = 0x2020000000;
          v119 = 0;
          WeakRetained = objc_loadWeakRetained((v42 + 8));
          v48 = [WeakRetained dataCollectionManager];
          v49 = v48 == 0;

          if (!v49)
          {
            dispatch_group_enter(v46);
            v50 = objc_loadWeakRetained((v42 + 8));
            v51 = [v50 dataCollectionManager];
            v52 = *(v42 + 80);
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke;
            v116[3] = &unk_278616020;
            v116[4] = v42;
            v117 = v46;
            [v51 requestAggregationThroughDate:v43 types:v52 mode:0 options:3 completion:v116];
          }

          if (*(v42 + 48))
          {
            dispatch_group_enter(v46);
            _HKInitializeLogging();
            v53 = *v44;
            if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v42;
              _os_log_impl(&dword_228986000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting pending events collection", buf, 0xCu);
            }

            v54 = *(v42 + 48);
            v55 = [*(v42 + 32) sessionIdentifier];
            v113[0] = MEMORY[0x277D85DD0];
            v113[1] = 3221225472;
            v113[2] = __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_422;
            v113[3] = &unk_278613920;
            v114 = v46;
            v115 = v42;
            [v54 requestPendingEventsThroughDate:v43 sessionIdentifier:v55 completion:v113];
          }

          v56 = objc_loadWeakRetained((v42 + 8));
          v57 = [v56 daemon];
          v58 = [v57 workoutPluginExtension];
          v59 = [v58 coreMotionWorkoutInterface];

          if (v59)
          {
            dispatch_group_enter(v46);
            v60 = [*(v42 + 32) sessionIdentifier];
            v111[0] = MEMORY[0x277D85DD0];
            v111[1] = 3221225472;
            v111[2] = __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_423;
            v111[3] = &unk_278620DD0;
            v111[4] = v42;
            v112 = v46;
            [v59 averageMETsForWorkoutSessionUUID:v60 completion:v111];
          }

          v61 = dispatch_time(0, (*(v42 + 168) * 1000000000.0));
          v62 = *(v42 + 24);
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_425;
          v127 = &unk_278620DF8;
          v128 = v42;
          v130 = v118;
          v63 = v43;
          v129 = v63;
          dispatch_after(v61, v62, buf);
          v64 = *(v42 + 24);
          *&block = MEMORY[0x277D85DD0];
          *(&block + 1) = 3221225472;
          v121 = __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_426;
          v122 = &unk_27861F190;
          v125 = v118;
          v123 = v42;
          v124 = v63;
          dispatch_group_notify(v46, v64, &block);

          _Block_object_dispose(v118, 8);
        }
      }

      else if (v9 == 17)
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
        {
          v26 = *(a1 + 32);
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "%@{public}: Invalidating Daemon Transaction for Workout Finish", buf, 0xCu);
        }

        v28 = *(a1 + 32);
        v27 = (a1 + 32);
        [*(v28 + 104) invalidate];
        v29 = (*v27)[13];
        (*v27)[13] = 0;

        [(HDDefaultWorkoutSessionController *)*v27 _hideBackgroundActivityAndUnregisterObserver];
      }
    }

    else
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        _HKInitializeLogging();
        v16 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(v15 + 32);
          v18 = v16;
          v19 = [v17 workoutConfiguration];
          *buf = 138543618;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Disabling low power mode, if necessary, with configuration: %@", buf, 0x16u);
        }

        v20 = [*(v15 + 32) workoutConfiguration];
        v21 = [v20 shouldUseLowPowerMode];

        if (v21)
        {
          v22 = [*(v15 + 32) workoutConfiguration];
          [v22 setShouldUseLowPowerMode:0];

          v23 = objc_loadWeakRetained((v15 + 16));
          v24 = [*(v15 + 32) workoutConfiguration];
          [v23 generateConfigurationUpdate:v24];
        }
      }

      [*(*(a1 + 32) + 88) stop];
      [(HDDefaultWorkoutSessionController *)*(a1 + 32) _hideBackgroundActivityAndUnregisterObserver];
    }
  }

  else if (v9 == 7)
  {
    v30 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v31 = [v30 daemon];
    v32 = [v31 processStateManager];
    v33 = [*(*(a1 + 32) + 32) clientProcessBundleIdentifier];
    v34 = [v32 isApplicationStateForegroundForBundleIdentifier:v33];

    v35 = *(a1 + 32);
    v36 = objc_loadWeakRetained((v35 + 8));
    v37 = [v36 database];
    -[HDDefaultWorkoutSessionController _showOrHideBackgroundActivityIfNeeded:isForegrounded:](v35, [v37 isProtectedDataAvailable], v34);

    v38 = *(a1 + 32);
    if (v38)
    {
      v39 = [MEMORY[0x277CCDD30] sharedBehavior];
      v40 = [v39 isAppleWatch];

      if ((v40 & 1) == 0)
      {
        if (v38[25])
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(block) = 138543362;
            *(&block + 4) = v38;
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: Live Activity observer already setup.", &block, 0xCu);
          }
        }

        else
        {
          v65 = objc_alloc_init(MEMORY[0x277CB98A0]);
          v66 = v38[24];
          v38[24] = v65;

          objc_initWeak(&block, v38);
          v67 = v38[24];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __63__HDDefaultWorkoutSessionController__setupLiveActivityObserver__block_invoke;
          v127 = &unk_278620D80;
          objc_copyWeak(&v128, &block);
          v68 = [v67 observeContentUpdatesWithHandler:buf];
          v69 = v38[25];
          v38[25] = v68;

          objc_destroyWeak(&v128);
          objc_destroyWeak(&block);
        }
      }

      v70 = *(a1 + 32);
      if (v70)
      {
        v71 = [MEMORY[0x277CCDD30] sharedBehavior];
        v72 = [v71 isAppleWatch];
        v73 = _HDIsUnitTesting ? 1 : v72;

        if ((v73 & 1) == 0)
        {
          if (*(v70 + 176))
          {
            _HKInitializeLogging();
            v74 = *MEMORY[0x277CCC330];
            if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(block) = 138543362;
              *(&block + 4) = v70;
              _os_log_impl(&dword_228986000, v74, OS_LOG_TYPE_DEFAULT, "%{public}@: Live Activity assertion already taken.", &block, 0xCu);
            }
          }

          else
          {
            v75 = objc_loadWeakRetained((v70 + 8));
            v76 = [v75 workoutManager];
            v77 = [(HDDefaultWorkoutSessionController *)v70 _ownerIdentifier];
            v78 = [*(v70 + 32) clientProcessBundleIdentifier];
            v79 = [v76 takeLiveActivityAssertionWithOwnerIdentifier:v77 clientBundleIdentifier:v78 explanation:@"Live Activity running workout session on iOS"];
            v80 = *(v70 + 176);
            *(v70 + 176) = v79;

            v81 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v70 + 24));
            v83 = (v70 + 184);
            v82 = *(v70 + 184);
            *(v70 + 184) = v81;

            v84 = *(v70 + 184);
            v85 = dispatch_time(0, 30000000000);
            dispatch_source_set_timer(v84, v85, 0xFFFFFFFFFFFFFFFFLL, 0);
            objc_initWeak(&block, v70);
            v86 = *(v70 + 184);
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __71__HDDefaultWorkoutSessionController__takeLiveActivityAssertionIfNeeded__block_invoke;
            v127 = &unk_278616F38;
            objc_copyWeak(&v128, &block);
            dispatch_source_set_event_handler(v86, buf);
            dispatch_resume(*v83);
            objc_destroyWeak(&v128);
            objc_destroyWeak(&block);
          }
        }
      }
    }

    v87 = *(a1 + 48);
    switch(v87)
    {
      case 10:
        goto LABEL_56;
      case 9:
        goto LABEL_57;
      case 8:
LABEL_56:
        v88 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v89 = [v88 daemon];
        v90 = [v89 workoutPluginExtension];
        v91 = [v90 coreMotionWorkoutInterface];

        v92 = [*(*(a1 + 32) + 32) sessionIdentifier];
        [v91 resumeWorkoutForWorkoutSessionUUID:v92];

        goto LABEL_57;
    }

    v94 = *(a1 + 32);
    if (v94)
    {
      _HKInitializeLogging();
      v95 = MEMORY[0x277CCC330];
      v96 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v97 = *(v94 + 32);
        v98 = v96;
        v99 = [v97 workoutConfiguration];
        *buf = 138543618;
        *&buf[4] = v94;
        *&buf[12] = 2112;
        *&buf[14] = v99;
        _os_log_impl(&dword_228986000, v98, OS_LOG_TYPE_DEFAULT, "%{public}@: Enabling low power mode, if necessary, with configuration: %@", buf, 0x16u);
      }

      v100 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v101 = [v100 persistentDomainForName:@"com.apple.nanolifestyle.sessiontrackerapp"];

      v102 = [v101 objectForKey:@"EnablePowerSavingMode"];
      v103 = v102;
      if (v102)
      {
        v104 = [v102 BOOLValue];

        if (v104)
        {
          v105 = [MEMORY[0x277CCAC38] processInfo];
          v106 = [v105 isLowPowerModeEnabled];

          if (v106)
          {
            _HKInitializeLogging();
            v107 = *v95;
            if (os_log_type_enabled(*v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v94;
              _os_log_impl(&dword_228986000, v107, OS_LOG_TYPE_DEFAULT, "%{public}@: Low power mode is already enabled; do nothing.", buf, 0xCu);
            }
          }

          else
          {
            v108 = [*(v94 + 32) workoutConfiguration];
            [v108 setShouldUseLowPowerMode:1];

            v109 = objc_loadWeakRetained((v94 + 16));
            v110 = [*(v94 + 32) workoutConfiguration];
            [v109 generateConfigurationUpdate:v110];
          }
        }
      }

      else
      {
      }
    }
  }

  else if (v9 == 8 || v9 == 10)
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v11 = [v10 daemon];
    v12 = [v11 workoutPluginExtension];
    v13 = [v12 coreMotionWorkoutInterface];

    v14 = [*(*(a1 + 32) + 32) sessionIdentifier];
    [v13 pauseWorkoutForWorkoutSessionUUID:v14];
  }

LABEL_57:
  v93 = *MEMORY[0x277D85DE8];
}

- (void)_showOrHideBackgroundActivityIfNeeded:(char)needed isForegrounded:
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_13;
  }

  v4 = *(self + 56);
  if (v4 >= 14)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      selfCopy3 = self;
      v6 = "%{public}@: Ignoring attempted update for background activity. Session is in the process of ending";
LABEL_8:
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, v6, &v15, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v4 <= 5)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      selfCopy3 = self;
      v6 = "%{public}@: Ignoring attempted update for background activity. Session has not yet started";
      goto LABEL_8;
    }

LABEL_13:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*(self + 208) == 1)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: The client has a live activity. Hiding background activity and will not process the requested update.", &v15, 0xCu);
    }

    [*(self + 96) hidePillIfNeededWithCompletion:0];
    goto LABEL_13;
  }

  if ([*(self + 152) shouldAllowWorkoutDatabaseAccessWhileLocked])
  {
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  else if (!a2)
  {
    goto LABEL_19;
  }

  if ((needed & 1) == 0)
  {
LABEL_22:
    v13 = *(self + 96);
    v14 = *MEMORY[0x277D85DE8];

    [v13 showPillIfNeededWithCompletion:0];
    return;
  }

LABEL_19:
  v11 = *(self + 96);
  v12 = *MEMORY[0x277D85DE8];

  [v11 hidePillIfNeededWithCompletion:0];
}

- (void)_hideBackgroundActivityAndUnregisterObserver
{
  if (self)
  {
    [self[12] hidePillIfNeededWithCompletion:0];
    WeakRetained = objc_loadWeakRetained(self + 1);
    daemon = [WeakRetained daemon];
    processStateManager = [daemon processStateManager];
    clientProcessBundleIdentifier = [self[4] clientProcessBundleIdentifier];
    [processStateManager unregisterObserver:self forBundleIdentifier:clientProcessBundleIdentifier];
  }
}

- (void)workoutSessionServer:(id)server didChangeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HDDefaultWorkoutSessionController_workoutSessionServer_didChangeConfiguration___block_invoke;
  v8[3] = &unk_278613920;
  v9 = configurationCopy;
  selfCopy = self;
  v7 = configurationCopy;
  dispatch_async(queue, v8);
}

void __81__HDDefaultWorkoutSessionController_workoutSessionServer_didChangeConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 32) activityConfigurations];
  [*(a1 + 32) setActivityConfigurations:v2];

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 40);
  [(HDDefaultWorkoutSessionController *)v3 _queue_setupAssertionGroup];
  [*(*(a1 + 40) + 40) transitionToState:{objc_msgSend(v4, "state")}];
  [v4 invalidate];
  [HDDefaultWorkoutSessionController _instantiateBackgroudActivityControllerWithSessionConfiguration:?];
}

- (void)beginNewActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (activityCopy)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HDDefaultWorkoutSessionController_beginNewActivity___block_invoke;
    v8[3] = &unk_278613920;
    v8[4] = self;
    v9 = activityCopy;
    dispatch_async(queue, v8);
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Not beginning activity as workoutActivity is nil", buf, 2u);
    }
  }
}

void __54__HDDefaultWorkoutSessionController_beginNewActivity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained daemon];
  v4 = [v3 workoutPluginExtension];
  v20 = [v4 coreMotionWorkoutInterface];

  v5 = [*(a1 + 40) workoutConfiguration];
  v6 = [v5 suggestedActivityUUID];
  v7 = v6 == 0;

  [v20 setCurrentActivity:*(a1 + 40) isManualTransition:v7];
  v8 = [*(a1 + 40) copy];
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v9 = *(a1 + 32);
  v10 = [*(v9 + 72) UUID];
  v11 = [*(*(a1 + 32) + 72) workoutConfiguration];
  -[HDDefaultWorkoutSessionController _queue_instantiateAndStartSwimTrackerIfNeededWithIdentifier:activityType:](v9, v10, [v11 activityType]);

  v12 = *(*(a1 + 32) + 48);
  v13 = [v5 activityType];
  v14 = [*(a1 + 40) UUID];
  [v12 updateEventCollectorsForActivityType:v13 activityIdentifier:v14];

  v15 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v15 didBeginNewActivity:v8];

  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *(v17 + 128);
  v19 = [v16 startDate];
  [(HDDefaultWorkoutSessionController *)v17 _queue_updateDataObserverWithMoveMode:v18 didUpdateActivity:1u earliestDate:v19];
}

- (void)_queue_instantiateAndStartSwimTrackerIfNeededWithIdentifier:(uint64_t)identifier activityType:
{
  v10 = a2;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 24));
    if (identifier == 46)
    {
      if (_os_feature_enabled_impl())
      {
        v5 = *(self + 88);
        if (!v5)
        {
          v6 = [_TtC12HealthDaemon13HDSwimTracker alloc];
          WeakRetained = objc_loadWeakRetained((self + 8));
          v8 = [(HDSwimTracker *)v6 initWithProfile:WeakRetained];
          v9 = *(self + 88);
          *(self + 88) = v8;

          v5 = *(self + 88);
        }

        [v5 startWith:v10];
      }
    }
  }
}

- (void)_queue_updateDataObserverWithMoveMode:(unsigned int)mode didUpdateActivity:(void *)activity earliestDate:
{
  activityCopy = activity;
  if (self)
  {
    workoutConfiguration = [*(self + 136) workoutConfiguration];
    currentActivityConfiguration = [(HDDefaultWorkoutSessionController *)self currentActivityConfiguration];
    v9 = [workoutConfiguration isEqual:currentActivityConfiguration];

    if (*(self + 128) != a2 || (v9 & 1) == 0)
    {
      v10 = MEMORY[0x277CCDC48];
      currentActivityConfiguration2 = [(HDDefaultWorkoutSessionController *)self currentActivityConfiguration];
      v12 = [v10 defaultConfigurationWithWorkoutConfiguration:currentActivityConfiguration2 activityMoveMode:a2];
      v13 = *(self + 136);
      *(self + 136) = v12;

      sampleTypesToCollect = [*(self + 136) sampleTypesToCollect];
      v15 = *(self + 128);
      if (v15 != a2)
      {
        v16 = MEMORY[0x277CCDC48];
        currentActivityConfiguration3 = [(HDDefaultWorkoutSessionController *)self currentActivityConfiguration];
        v18 = [v16 defaultConfigurationWithWorkoutConfiguration:currentActivityConfiguration3 activityMoveMode:v15];
        sampleTypesToCollect2 = [v18 sampleTypesToCollect];

        v20 = [*(self + 120) hk_minus:sampleTypesToCollect2];
        v21 = MEMORY[0x277CBEB98];
        sampleTypesToCollect3 = [*(self + 136) sampleTypesToCollect];
        v23 = [v21 hk_setByUnioningSet:v20 otherSet:sampleTypesToCollect3];

        *(self + 128) = a2;
        sampleTypesToCollect = v23;
      }

      v24 = [sampleTypesToCollect copy];
      v25 = *(self + 120);
      *(self + 120) = v24;

      [(HDDefaultWorkoutSessionController *)self _persistAndNotifyClientsOfGeneratedTypesUpdate:*(self + 128) moveMode:*(self + 136) configuration:mode didUpdateActivity:activityCopy earliestSampleDate:?];
    }
  }
}

- (void)endCurrentActivity:(id)activity
{
  activityCopy = activity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDDefaultWorkoutSessionController_endCurrentActivity___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(queue, v7);
}

void __56__HDDefaultWorkoutSessionController_endCurrentActivity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v12 = [*(*(a1 + 32) + 32) workoutConfiguration];
  [*(*(a1 + 32) + 88) stop];
  v4 = *(*(a1 + 32) + 48);
  v5 = [v12 activityType];
  v6 = [*(*(a1 + 32) + 32) sessionIdentifier];
  [v4 updateEventCollectorsForActivityType:v5 activityIdentifier:v6];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained didEndCurrentActivity:*(a1 + 40)];

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 128);
  v11 = [v8 endDate];
  [(HDDefaultWorkoutSessionController *)v9 _queue_updateDataObserverWithMoveMode:v10 didUpdateActivity:1u earliestDate:v11];
}

- (BOOL)enableAutomaticDetectionForActivityConfigurations:(id)configurations
{
  v17 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  enableWorkoutChangeDetection = [(HDWorkoutSessionConfiguration *)self->_sessionConfiguration enableWorkoutChangeDetection];
  if (enableWorkoutChangeDetection)
  {
    [(HDWorkoutSessionConfiguration *)self->_sessionConfiguration setActivityConfigurations:configurationsCopy];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      sessionConfiguration = self->_sessionConfiguration;
      v8 = v6;
      clientApplicationIdentifier = [(HDWorkoutSessionConfiguration *)sessionConfiguration clientApplicationIdentifier];
      activityConfigurations = [(HDWorkoutSessionConfiguration *)self->_sessionConfiguration activityConfigurations];
      v13 = 138412546;
      v14 = clientApplicationIdentifier;
      v15 = 2112;
      v16 = activityConfigurations;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Automatic change detection enabled for activity configurations from %@ with configurations %@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return enableWorkoutChangeDetection;
}

- (void)receivedWorkoutEvent:(id)event
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = eventCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Received workout event %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDDefaultWorkoutSessionController_receivedWorkoutEvent___block_invoke;
  v9[3] = &unk_278613920;
  v10 = eventCopy;
  selfCopy = self;
  v7 = eventCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__HDDefaultWorkoutSessionController_receivedWorkoutEvent___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sessionId];
  v3 = [*(*(a1 + 40) + 32) sessionIdentifier];
  if ([v2 isEqual:v3])
  {
  }

  else
  {
    v4 = [*(a1 + 32) sessionId];
    v5 = [*(*(a1 + 40) + 72) UUID];
    v6 = [v4 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = v16;
        v19 = [v17 sessionId];
        v20 = [*(*(a1 + 40) + 32) sessionIdentifier];
        v21 = [*(*(a1 + 40) + 72) UUID];
        *buf = 138543874;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v21;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_INFO, "Event received for non current sessionID: %{public}@, session ID: %{public}@, current activity ID: %{public}@", buf, 0x20u);
      }

      goto LABEL_19;
    }
  }

  if (*(*(a1 + 40) + 56) == 9 && [*(a1 + 32) eventType] == 7 || objc_msgSend(*(a1 + 32), "eventType") == 3 || objc_msgSend(*(a1 + 32), "eventType") == 2)
  {
    goto LABEL_19;
  }

  if ([*(a1 + 32) eventType] == 12)
  {
    v7 = [*(a1 + 32) metadata];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
    v9 = [v8 BOOLValue];

    v10 = [*(*(a1 + 40) + 32) workoutConfiguration];
    v11 = v10;
    if (v9)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    [v10 setLocationType:v12];

    v13 = [*(*(a1 + 40) + 32) workoutConfiguration];
    [v13 setShouldDisambiguateLocation:0];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v15 = [*(*(a1 + 40) + 32) workoutConfiguration];
    [WeakRetained generateConfigurationUpdate:v15];

    [*(*(a1 + 40) + 64) workoutConfigurationUpdated:*(*(a1 + 40) + 32)];
  }

  else
  {
    v22 = objc_loadWeakRetained((*(a1 + 40) + 16));
    [v22 generateEvent:*(a1 + 32)];
  }

  v23 = [*(a1 + 32) eventType];
  if (v23 == 8)
  {
    v28 = objc_loadWeakRetained((*(a1 + 40) + 16));
    v24 = [*(a1 + 32) dateInterval];
    v25 = [v24 startDate];
    [v28 autoResumeWithDate:v25];
    goto LABEL_21;
  }

  if (v23 != 7)
  {
LABEL_19:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v24 = [*(a1 + 32) dateInterval];
  v25 = [v24 startDate];
  [v28 autoPauseWithDate:v25];
LABEL_21:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)receivedWorkoutEvent:(id)event forWorkoutActivity:(id)activity
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activityCopy = activity;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = eventCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Received workout event %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HDDefaultWorkoutSessionController_receivedWorkoutEvent_forWorkoutActivity___block_invoke;
  block[3] = &unk_278613830;
  v14 = eventCopy;
  v15 = activityCopy;
  selfCopy = self;
  v10 = activityCopy;
  v11 = eventCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __77__HDDefaultWorkoutSessionController_receivedWorkoutEvent_forWorkoutActivity___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) workoutEventType] == 14)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "Suggested workout acivity: %{public}@ ", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
    [WeakRetained didDetectActivityChange:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)processDidEnterBackground:(id)background
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  -[HDDefaultWorkoutSessionController _showOrHideBackgroundActivityIfNeeded:isForegrounded:](self, [database isProtectedDataAvailable], 0);
}

- (void)processDidEnterForeground:(id)foreground
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  -[HDDefaultWorkoutSessionController _showOrHideBackgroundActivityIfNeeded:isForegrounded:](self, [database isProtectedDataAvailable], 1);
}

- (id)transactionalQuantityInsertHandlerForProfile:(id)profile journaled:(BOOL)journaled count:(int64_t)count
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__HDDefaultWorkoutSessionController_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke;
  aBlock[3] = &unk_278620D30;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __98__HDDefaultWorkoutSessionController_transactionalQuantityInsertHandlerForProfile_journaled_count___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v10[0] = a5;
  v6 = MEMORY[0x277CBEA60];
  v7 = a5;
  v8 = [v6 arrayWithObjects:v10 count:1];
  [(HDDefaultWorkoutSessionController *)v5 _handleSamplesUpdated:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSamplesUpdated:(uint64_t)updated
{
  v3 = a2;
  v4 = v3;
  if (updated)
  {
    v5 = *(updated + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__HDDefaultWorkoutSessionController__handleSamplesUpdated___block_invoke;
    v6[3] = &unk_278613920;
    v6[4] = updated;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)_persistAndNotifyClientsOfGeneratedTypesUpdate:(uint64_t)update moveMode:(void *)mode configuration:(unsigned int)configuration didUpdateActivity:(void *)activity earliestSampleDate:
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a2;
  modeCopy = mode;
  activityCopy = activity;
  if (self)
  {
    v14 = [[HDWorkoutDefaultSessionRecoveryConfiguration alloc] initWithGeneratedTypes:v11 moveMode:update];
    v29 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v29];
    v16 = v29;
    v17 = v16;
    if (v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 == 0;
    }

    if (v18)
    {
      configurationCopy = configuration;
      WeakRetained = objc_loadWeakRetained((self + 16));
      v28 = v17;
      v20 = [WeakRetained storeSessionControllerState:v15 forRecoveryIdentifier:@"com.apple.SessionController.Default" error:&v28];
      v21 = v28;

      if ((v20 & 1) == 0)
      {
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v32 = 2114;
          v33 = v21;
          _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to store recovery state with error: %{public}@", buf, 0x16u);
        }
      }

      v23 = objc_loadWeakRetained((self + 16));
      [v23 notifyClientsOfGeneratedTypesUpdate:v11 configuration:modeCopy didUpdateActivity:configurationCopy earliestSampleDate:activityCopy];
    }

    else
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v32 = 2114;
        v33 = v17;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive persisted recovery configuration: %{public}@", buf, 0x16u);
      }

      v21 = v17;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __59__HDDefaultWorkoutSessionController__handleSamplesUpdated___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 128);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = v1;
  v48 = [v3 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v48)
  {

    v4 = 0;
    v31 = 0;
    goto LABEL_33;
  }

  v45 = 0;
  v4 = 0;
  v47 = *v50;
  v44 = *MEMORY[0x277CCC918];
  v42 = *MEMORY[0x277CCC928];
  obj = v3;
  while (2)
  {
    for (i = 0; i != v48; ++i)
    {
      if (*v50 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v49 + 1) + 8 * i);
      v7 = [v6 sourceRevision];
      v8 = [v7 source];
      if ([v8 _isLocalDevice])
      {
      }

      else
      {
        v9 = [v6 sourceRevision];
        v10 = [v9 source];
        v11 = [v10 _isPeripheralSource];

        if (!v11)
        {
          continue;
        }
      }

      v12 = [v6 sampleType];
      v13 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v44];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        v2 = 1;
      }

      else
      {
        v15 = [v6 sampleType];
        v16 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v42];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v2 = 2;
        }
      }

      v18 = *(a1 + 32);
      if (v2 != *(v18 + 128))
      {
        v27 = [v6 startDate];
        [(HDDefaultWorkoutSessionController *)v18 _queue_updateDataObserverWithMoveMode:v2 didUpdateActivity:0 earliestDate:v27];

        v28 = *(a1 + 32);
        if (v28 && *(v28 + 128) != v2)
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC330];
          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v55 = v28;
            v56 = 2048;
            v57 = v2;
            _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Move mode changed to: %ld", buf, 0x16u);
          }

          *(v28 + 128) = v2;
          v30 = *(v28 + 40);
          [(HDDefaultWorkoutSessionController *)v28 _queue_setupAssertionGroup];
          [*(v28 + 40) transitionToState:{objc_msgSend(v30, "state")}];
          [v30 invalidate];
        }

        v26 = obj;
        goto LABEL_30;
      }

      v19 = *(v18 + 120);
      v20 = [v6 sampleType];
      LOBYTE(v19) = [v19 containsObject:v20];

      if ((v19 & 1) == 0)
      {
        v21 = v45;
        if (!v45)
        {
          v21 = [*(*(a1 + 32) + 120) mutableCopy];
        }

        v22 = [v6 sampleType];
        v45 = v21;
        [v21 addObject:v22];
      }

      if (v4)
      {
        v23 = [v6 startDate];
        v24 = [v23 hk_isBeforeDate:v4];

        if (!v24)
        {
          continue;
        }
      }

      v25 = [v6 startDate];

      v4 = v25;
    }

    v26 = obj;
    v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v31 = v45;
  if (v45)
  {
    v32 = objc_alloc(MEMORY[0x277CCDC50]);
    v33 = [(HDDefaultWorkoutSessionController *)*(a1 + 32) currentActivityConfiguration];
    v34 = [MEMORY[0x277CBEB98] set];
    v35 = [v32 initWithWorkoutConfiguration:v33 sampleTypesToCollect:v45 eventTypesToCollect:v34 collectsDefaultTypes:1];
    v36 = *(a1 + 32);
    v37 = *(v36 + 136);
    *(v36 + 136) = v35;

    v38 = [v45 copy];
    v39 = *(a1 + 32);
    v40 = *(v39 + 120);
    *(v39 + 120) = v38;

    [(HDDefaultWorkoutSessionController *)*(a1 + 32) _persistAndNotifyClientsOfGeneratedTypesUpdate:v45 moveMode:*(*(a1 + 32) + 128) configuration:*(*(a1 + 32) + 136) didUpdateActivity:0 earliestSampleDate:v4];
  }

LABEL_33:

  v41 = *MEMORY[0x277D85DE8];
}

- (id)launchPayloadOptions
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D777B8] actionWithFlag:1 forKey:*MEMORY[0x277CCCF38] responder:0];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    isProtectedDataAvailable = [database isProtectedDataAvailable];

    v7 = *MEMORY[0x277D0ABD0];
    if (isProtectedDataAvailable)
    {
      v23 = v3;
      v24 = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v25 = v8;
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v25;
      v11 = &v24;
      v12 = 1;
    }

    else
    {
      v20 = v3;
      v21[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v21[1] = *MEMORY[0x277D0ABF0];
      v22[0] = v8;
      v22[1] = MEMORY[0x277CBEC38];
      v9 = MEMORY[0x277CBEAC0];
      v10 = v22;
      v11 = v21;
      v12 = 2;
    }

    v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      sessionConfiguration = self->_sessionConfiguration;
      v18 = v13;
      clientProcessBundleIdentifier = [(HDWorkoutSessionConfiguration *)sessionConfiguration clientProcessBundleIdentifier];
      *buf = 138543362;
      v27 = clientProcessBundleIdentifier;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Failed to create action for client %{public}@", buf, 0xCu);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __67__HDDefaultWorkoutSessionController__showTransparencyAlertIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 == 1 && WeakRetained)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Passcode"];
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v16 = 0;
    v11 = [v10 openSensitiveURL:v9 withOptions:0 error:&v16];
    v12 = v16;

    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = WeakRetained;
        v19 = 2114;
        v20 = v12;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Could not openURL with error %{public}@", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __63__HDDefaultWorkoutSessionController__setupLiveActivityObserver__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = v3;
  if (WeakRetained)
  {
    v5 = [v4 descriptor];
    v6 = [v5 platterTargetBundleIdentifier];
    v7 = [WeakRetained[4] clientProcessBundleIdentifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = *(WeakRetained + 208);
      *(WeakRetained + 208) = [v4 state] == 0;
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (*(WeakRetained + 208))
        {
          v11 = @"YES";
        }

        *buf = 138543618;
        v15 = WeakRetained;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Live Activity updated to state: %{public}@", buf, 0x16u);
      }

      if ((v9 & 1) == 0 && *(WeakRetained + 208) == 1)
      {
        [WeakRetained[12] hidePillIfNeededWithCompletion:0];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  processStateManager = [daemon processStateManager];
  clientProcessBundleIdentifier = [(HDWorkoutSessionConfiguration *)self->_sessionConfiguration clientProcessBundleIdentifier];
  v10 = [processStateManager isApplicationStateForegroundForBundleIdentifier:clientProcessBundleIdentifier];

  [(HDDefaultWorkoutSessionController *)self _showOrHideBackgroundActivityIfNeeded:availableCopy isForegrounded:v10];
  v11 = objc_loadWeakRetained(&self->_databaseAssertion);
  if (v11 || !availableCopy)
  {
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (self->_sessionServerState >= 7)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: protected data did become available", &v16, 0xCu);
      }

      v13 = self->_assertionGroup;
      [(HDDefaultWorkoutSessionController *)self _queue_setupAssertionGroup];
      [(HDSessionAssertionGroup *)self->_assertionGroup transitionToState:[(HDSessionAssertionGroup *)v13 state]];
      [(HDSessionAssertionGroup *)v13 invalidate];
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (void)hktest_setStateTransitionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HDDefaultWorkoutSessionController_hktest_setStateTransitionCompletionHandler___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

uint64_t __80__HDDefaultWorkoutSessionController_hktest_setStateTransitionCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)unitTest_setSwimTracker:(id)tracker
{
  trackerCopy = tracker;
  [(HDSwimTracker *)self->_swimTracker stop];
  swimTracker = self->_swimTracker;
  self->_swimTracker = trackerCopy;
  v6 = trackerCopy;

  v7 = self->_swimTracker;
  sessionIdentifier = [(HDWorkoutSessionConfiguration *)self->_sessionConfiguration sessionIdentifier];
  [(HDSwimTracker *)v7 startWith:sessionIdentifier];
}

- (void)unitTest_suggestActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_sessionStateController);
  [WeakRetained didDetectActivityChange:activityCopy];
}

- (id)unitTest_databaseAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseAssertion);

  return WeakRetained;
}

- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity
{
  v12 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  activityCopy = activity;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = activityCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "faking workout detection %{public}@", &v10, 0xCu);
  }

  [(HDWorkoutEventsManager *)self->_eventsManager fakeActivityDetection:detectionCopy workoutActivity:activityCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_ownerIdentifier
{
  client = [*(self + 32) client];
  process = [client process];
  applicationIdentifier = [process applicationIdentifier];
  v5 = applicationIdentifier;
  if (applicationIdentifier)
  {
    clientApplicationIdentifier = applicationIdentifier;
  }

  else
  {
    clientApplicationIdentifier = [*(self + 32) clientApplicationIdentifier];
  }

  v7 = clientApplicationIdentifier;

  if (v7)
  {
    uUIDString = v7;
  }

  else
  {
    sessionIdentifier = [*(self + 32) sessionIdentifier];
    uUIDString = [sessionIdentifier UUIDString];
  }

  return uUIDString;
}

- (id)_maxTypesToCollect
{
  v22 = *MEMORY[0x277D85DE8];
  workoutConfiguration = [*(self + 32) workoutConfiguration];
  activityType = [workoutConfiguration activityType];

  v4 = [MEMORY[0x277CCDCD8] maxDataTypesForWorkoutActivityType:activityType];
  v5 = [MEMORY[0x277CBEB58] setWithSet:v4];
  v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC920]];
  [v5 addObject:v6];
  if (*(self + 128) == 2)
  {
    v7 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC928]];
    [v5 addObject:v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  activityConfigurations = [*(self + 32) activityConfigurations];
  v9 = [activityConfigurations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(activityConfigurations);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 activityType] == 13)
        {
          v14 = [MEMORY[0x277CCDCD8] maxDataTypesForWorkoutActivityType:{objc_msgSend(v13, "activityType")}];
          [v5 unionSet:v14];
        }
      }

      v10 = [activityConfigurations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __71__HDDefaultWorkoutSessionController__takeLiveActivityAssertionIfNeeded__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = WeakRetained;
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating live Activity assertion after timeout.", buf, 0xCu);
    }

    [WeakRetained[22] invalidate];
    v2 = WeakRetained[22];
    WeakRetained[22] = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    v4 = [v3 daemon];
    v5 = [v4 workoutPluginExtension];

    v6 = [v2[4] clientProcessBundleIdentifier];
    v7 = [v5 alertSuppressor];
    v8 = [(HDDefaultWorkoutSessionController *)v2 _ownerIdentifier];
    v9 = [v7 createAndTakeAssertionForOwnerIdentifier:v8 processBundleIdentifier:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[4] client];
    v4 = [v3 process];

    if (v4)
    {
      v5 = objc_loadWeakRetained(v2 + 1);
      v6 = [v5 workoutManager];
      v7 = [(HDDefaultWorkoutSessionController *)v2 _ownerIdentifier];
      v8 = [v6 takeRBSAssertionWithOwnerIdentifier:v7 assertionIdentifier:@"WorkoutSessionUpdate" pid:objc_msgSend(v4 explanation:{"processIdentifier"), @"Running workout session on iOS"}];
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "Background assertion not taken for client. No process found", v11, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  v3 = [WeakRetained[4] supportsAppRelaunchForRecovery];
  if (!_HDIsUnitTesting && (v3 & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v5 = v2[4];
      v6 = v4;
      v7 = [v5 clientProcessBundleIdentifier];
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Keep alive assertion not taken for client %{public}@", &v17, 0xCu);
    }

    goto LABEL_6;
  }

  v9 = objc_loadWeakRetained(v2 + 1);
  v10 = [v9 daemon];
  v11 = [v10 workoutPluginExtension];

  v12 = [v2[4] clientApplicationIdentifier];
  v13 = [v2[4] clientProcessBundleIdentifier];
  v14 = [v11 appLauncher];
  v8 = [v14 takeKeepAliveAssertionForApplicationBundleIdentifier:v12 processBundleIdentifier:v13 client:v2];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    v4 = [v3 daemon];
    v5 = [v4 workoutPluginExtension];

    if ([v2[4] enableWorkoutChangeDetection])
    {
      v6 = [v2[4] activityConfigurations];
      v7 = [v6 count] != 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = [v5 coreMotionWorkoutInterface];
    v9 = [(HDDefaultWorkoutSessionController *)v2 _ownerIdentifier];
    v10 = [v2[4] sessionIdentifier];
    v11 = [v2[4] workoutConfiguration];
    v12 = [v2[4] activityConfigurations];
    v13 = [v8 takeCMWorkoutAssertionForOwnerIdentifier:v9 sessionUUID:v10 workoutConfiguration:v11 activityConfigurations:v12 enableWorkoutChangeDetection:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_6(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v28 = WeakRetained;
    v3 = [(HDDefaultWorkoutSessionController *)WeakRetained _maxTypesToCollect];
    v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v4 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          if (([v10 isEqual:v4] & 1) == 0)
          {
            v11 = MEMORY[0x277CCABB0];
            v12 = [v10 code];
            v13 = v12 == 179 || v12 == 75;
            v14 = 60.0;
            if (!v13)
            {
              v14 = 0.5;
            }

            v15 = [v11 numberWithDouble:v14];
            [v29 setObject:v15 forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    v16 = [HDDataCollectionObserverState dataCollectionObserverStateInForeground:1 hasRunningWorkout:1 hasBackgroundObserver:0 shouldTakeWorkoutDatabaseAssertion:1];
    v17 = MEMORY[0x277CCACA8];
    v2 = v28;
    v18 = [(HDDefaultWorkoutSessionController *)v28 _ownerIdentifier];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v17 stringWithFormat:@"%@-%@", v18, v20];

    v22 = objc_loadWeakRetained((v28 + 8));
    v23 = [v22 dataCollectionManager];
    v24 = [v23 takeCollectionAssertionWithOwnerIdentifier:v21 collectionIntervalsByType:v29 observerState:v16];

    if (v24)
    {
      objc_storeStrong((v28 + 80), obj);
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_7(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v3 = [(HDDefaultWorkoutSessionController *)WeakRetained _maxTypesToCollect];
    v4 = [v3 containsObject:v2];

    if (v4)
    {
      v5 = [HDDataCollectionObserverState dataCollectionObserverStateInForeground:1 hasRunningWorkout:1 hasBackgroundObserver:0 shouldTakeWorkoutDatabaseAssertion:1];
      v6 = MEMORY[0x277CCACA8];
      v7 = [(HDDefaultWorkoutSessionController *)WeakRetained _ownerIdentifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 stringWithFormat:@"%@-%@", v7, v9];

      v11 = objc_loadWeakRetained(WeakRetained + 1);
      v12 = [v11 dataCollectionManager];
      v22 = v2;
      v13 = MEMORY[0x277CCABB0];
      v14 = [v2 code];
      v15 = v14 == 179 || v14 == 75;
      v16 = 60.0;
      if (!v15)
      {
        v16 = 0.5;
      }

      v17 = [v13 numberWithDouble:v16];
      v23[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v12 takeCollectionAssertionWithOwnerIdentifier:v10 collectionIntervalsByType:v18 observerState:v5];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    if (v3)
    {
      v4 = [v3 workoutConfiguration];
      v5 = [v4 activityType];
    }

    else
    {
      v6 = [*(v2 + 32) workoutConfiguration];
      v5 = [v6 activityType];

      v4 = [*(v2 + 32) sessionIdentifier];
      [(HDDefaultWorkoutSessionController *)v2 _queue_instantiateAndStartSwimTrackerIfNeededWithIdentifier:v4 activityType:v5];
    }

    v7 = *(v2 + 48);
    v8 = [(HDDefaultWorkoutSessionController *)v2 _ownerIdentifier];
    v9 = [*(v2 + 32) sessionIdentifier];
    v10 = [v7 takeSessionAssertionWithOwnerIdentifier:v8 activityType:v5 sessionIdentifier:v9 eventsDelegate:v2 swimTracker:*(v2 + 88)];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 1);
    v4 = [v3 daemon];
    v5 = [v4 workoutPluginExtension];

    v6 = [v5 heartRateRecoveryManager];
    v7 = [(HDDefaultWorkoutSessionController *)v2 _ownerIdentifier];
    v8 = objc_loadWeakRetained(v2 + 2);
    v9 = [v6 createAndTakeAssertionForOwnerIdentifier:v7 sessionStateController:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __78__HDDefaultWorkoutSessionController__queue_assertionsPerStateForActivityType___block_invoke_10(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && ([MEMORY[0x277CCDD30] sharedBehavior], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "supportsCoreOSDatabaseAssertion"), v2, v3))
  {
    v4 = objc_loadWeakRetained(WeakRetained + 1);
    v5 = [v4 database];
    v6 = [WeakRetained[4] sessionIdentifier];
    v7 = [v6 UUIDString];
    v27 = 0;
    v8 = [v5 takeAccessibilityAssertionWithOwnerIdentifier:v7 contextType:3 error:&v27];
    v9 = v27;

    if (!v8)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = WeakRetained;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take database assertion with error %{public}@.", buf, 0x16u);
      }
    }

    v11 = [WeakRetained[4] clientApplicationIdentifier];
    v12 = [v11 hasPrefix:@"com.apple."];

    if (!(v12 & 1 | (([WeakRetained[19] shouldDisplayWorkoutTransparencyAlert] & 1) == 0)))
    {
      v13 = objc_alloc_init(MEMORY[0x277D10BC0]);
      v14 = [[_TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper alloc] initWithSystemColorName:@"systemBlueColor" systemImageName:@"figure.run.and.heart" preventAutomaticDismissal:1];
      v15 = HKHealthKitFrameworkBundle();
      v16 = *MEMORY[0x277CCC1C8];
      v17 = [v15 localizedStringForKey:@"WORKOUT_TRANSPARENCY_ALERT_TITLE" value:&stru_283BF39C8 table:*MEMORY[0x277CCC1C8]];
      [v13 setTitle:v17];

      v18 = HKHealthKitFrameworkBundle();
      v19 = [v18 localizedStringForKey:@"WORKOUT_TRANSPARENCY_ALERT_MESSAGE" value:&stru_283BF39C8 table:v16];
      [v13 setMessage:v19];

      v20 = HKHealthKitFrameworkBundle();
      v21 = [v20 localizedStringForKey:@"WORKOUT_TRANSPARENCY_ALERT_DEFAULT_BUTTON" value:&stru_283BF39C8 table:v16];
      [v13 setDefaultButton:v21];

      v22 = HKHealthKitFrameworkBundle();
      v23 = [v22 localizedStringForKey:@"WORKOUT_TRANSPARENCY_ALERT_ALTERNATE_BUTTON" value:&stru_283BF39C8 table:v16];
      [v13 setCancelButton:v23];

      v24 = [(HDUserNotificationSystemApertureContentDefinitionWrapper *)v14 contentDefinition];
      [v13 setContentDefinition:v24];

      objc_initWeak(&location, WeakRetained);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __67__HDDefaultWorkoutSessionController__showTransparencyAlertIfNeeded__block_invoke;
      v30 = &unk_278620D58;
      objc_copyWeak(v31, &location);
      [v13 presentWithResponseHandler:buf];
      objc_destroyWeak(v31);
      objc_destroyWeak(&location);
    }

    objc_storeWeak(WeakRetained + 14, v8);
  }

  else
  {
    v8 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_lowPowerModeStateChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDDefaultWorkoutSessionController__lowPowerModeStateChanged___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__HDDefaultWorkoutSessionController__lowPowerModeStateChanged___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) workoutConfiguration];
  v3 = [v2 shouldUseLowPowerMode];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 isLowPowerModeEnabled];

    if ((v5 & 1) == 0)
    {
      v6 = [*(*(a1 + 32) + 32) workoutConfiguration];
      [v6 setShouldUseLowPowerMode:0];

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v8 = [*(*(a1 + 32) + 32) workoutConfiguration];
      [WeakRetained generateConfigurationUpdate:v8];

      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 32);
        v12 = v9;
        v13 = [v11 workoutConfiguration];
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: System low power mode state changed; it will NOT be automatically turned off after workout is stopped with configuration: %@", &v15, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  v7 = *MEMORY[0x277CCC330];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully finished post-stop data aggregation.", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Post-stop data aggregation failed: %{public}@.", &v13, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = 0;

  dispatch_group_leave(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

void __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_422(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_group_leave(*(a1 + 32));
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully finished pending events collection", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_423(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 32);
      v10 = v7;
      v11 = [v9 sessionIdentifier];
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Generating average METs for workout session: %{public}@", &v16, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v20 = *MEMORY[0x277CCC468];
    v21[0] = v5;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [WeakRetained generateMetadata:v13];
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = *(*(a1 + 32) + 32);
    WeakRetained = v7;
    v13 = [v15 sessionIdentifier];
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&dword_228986000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed retrieving METs for workout %{public}@ with error %{public}@", &v16, 0x16u);
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 40));

  v14 = *MEMORY[0x277D85DE8];
}

void __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_425(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 56) == 12)
  {
    *(*(a1[6] + 8) + 24) = 1;
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = *(v3 + 168);
      *buf = 138543618;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Failed to receive final data within expected interval (%0.2lfs); Finishing...", buf, 0x16u);
    }

    v5 = a1[4];
    if (v5)
    {
      v6 = [MEMORY[0x277CCDD30] sharedBehavior];
      v7 = [v6 isAppleInternalInstall];

      if (v7)
      {
        v8 = objc_alloc_init(MEMORY[0x277D10BC0]);
        [v8 setTitle:@"Failed to receive workout final data"];
        [v8 setMessage:@"A possible deadlock or recurring jetsam may have occurred."];
        [v8 setDefaultButton:@"Tap-to-Radar"];
        [v8 setCancelButton:@"Not Now"];
        objc_initWeak(&location, v5);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __50__HDDefaultWorkoutSessionController__showTTRAlert__block_invoke;
        v13 = &unk_278620D58;
        objc_copyWeak(v14, &location);
        [v8 presentWithResponseHandler:buf];
        objc_destroyWeak(v14);
        objc_destroyWeak(&location);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    [WeakRetained finishAggregationWithDate:a1[5]];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __72__HDDefaultWorkoutSessionController__queue_collectFinalDataThroughDate___block_invoke_426(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) Completed requests for post-stop data aggregation and event collection.", &v6, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    [WeakRetained finishAggregationWithDate:a1[5]];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__HDDefaultWorkoutSessionController__showTTRAlert__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = v8;
  v10 = v7;
  if (WeakRetained)
  {
    if (a3 == 1)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = WeakRetained;
        _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout Final Data TTR alert: 'Not Now' button pressed", buf, 0xCu);
      }
    }

    else if (!a3)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = WeakRetained;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout Final Data TTR alert: 'Tap-to-Radar' button pressed", buf, 0xCu);
      }

      v12 = [MEMORY[0x277CBEBC0] hk_tapToHealthRadarURLWithTitle:@"Failed to receive workout final data" description:@"A possible deadlock or recurring jetsam may have occurred" classification:6 reproducibility:3 keywords:0 autoDiagnostics:3 attachments:0];
      v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v13 openURL:v12 configuration:0 completionHandler:&__block_literal_global_101];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __79__HDDefaultWorkoutSessionController__handleAlertResponse_selectedButton_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end