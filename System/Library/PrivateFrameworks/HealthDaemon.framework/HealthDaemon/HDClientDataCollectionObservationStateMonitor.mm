@interface HDClientDataCollectionObservationStateMonitor
- (HDClientDataCollectionObservationStateMonitor)init;
- (HDClientDataCollectionObservationStateMonitor)initWithClient:(id)client delegate:(id)delegate;
- (HDClientDataCollectionObservationStateMonitorDelegate)delegate;
- (HDProfile)profile;
- (id)currentObserverState;
- (uint64_t)_componentStateDidChange;
- (void)dealloc;
- (void)invalidate;
@end

@implementation HDClientDataCollectionObservationStateMonitor

- (HDClientDataCollectionObservationStateMonitor)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDClientDataCollectionObservationStateMonitor)initWithClient:(id)client delegate:(id)delegate
{
  clientCopy = client;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HDClientDataCollectionObservationStateMonitor;
  v9 = [(HDClientDataCollectionObservationStateMonitor *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    profile = [clientCopy profile];
    objc_storeWeak(&v10->_profile, profile);

    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v10->_lock;
    v10->_lock = v12;

    WeakRetained = objc_loadWeakRetained(&v10->_profile);
    daemon = [WeakRetained daemon];
    processStateManager = [daemon processStateManager];
    process = [(HDHealthStoreClient *)v10->_client process];
    bundleIdentifier = [process bundleIdentifier];
    [processStateManager registerObserver:v10 forBundleIdentifier:bundleIdentifier];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_workoutManagerDidChangeState_ name:@"HDWorkoutManagerStateDidChange" object:0];
  }

  return v10;
}

- (void)dealloc
{
  [(HDClientDataCollectionObservationStateMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDClientDataCollectionObservationStateMonitor;
  [(HDClientDataCollectionObservationStateMonitor *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_invalidated, &v3, 1u);
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    processStateManager = [daemon processStateManager];
    process = [(HDHealthStoreClient *)self->_client process];
    bundleIdentifier = [process bundleIdentifier];
    [processStateManager unregisterObserver:self forBundleIdentifier:bundleIdentifier];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"HDWorkoutManagerStateDidChange" object:0];
  }
}

- (id)currentObserverState
{
  process = [(HDHealthStoreClient *)self->_client process];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  processStateManager = [daemon processStateManager];
  bundleIdentifier = [process bundleIdentifier];
  v32 = [processStateManager isApplicationStateForegroundForBundleIdentifier:bundleIdentifier];

  v8 = objc_loadWeakRetained(&self->_profile);
  workoutManager = [v8 workoutManager];
  currentWorkoutClient = [workoutManager currentWorkoutClient];
  process2 = [currentWorkoutClient process];
  applicationIdentifier = [process2 applicationIdentifier];
  applicationIdentifier2 = [process applicationIdentifier];
  if (applicationIdentifier == applicationIdentifier2)
  {
    v18 = 1;
  }

  else
  {
    applicationIdentifier3 = [process applicationIdentifier];
    if (applicationIdentifier3)
    {
      v29 = applicationIdentifier3;
      v28 = objc_loadWeakRetained(&self->_profile);
      workoutManager2 = [v28 workoutManager];
      currentWorkoutClient2 = [workoutManager2 currentWorkoutClient];
      [currentWorkoutClient2 process];
      v15 = v30 = currentWorkoutClient;
      [v15 applicationIdentifier];
      v16 = v31 = v8;
      applicationIdentifier4 = [process applicationIdentifier];
      v18 = [v16 isEqualToString:applicationIdentifier4];

      v8 = v31;
      currentWorkoutClient = v30;

      applicationIdentifier3 = v29;
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = objc_loadWeakRetained(&self->_profile);
  daemon2 = [v19 daemon];
  processStateManager2 = [daemon2 processStateManager];
  bundleIdentifier2 = [process bundleIdentifier];
  v23 = [processStateManager2 isApplicationStateBackgroundRunningForBundleIdentifier:bundleIdentifier2];

  v24 = [HDDataCollectionObserverState dataCollectionObserverStateInForeground:v32 hasRunningWorkout:v18 hasBackgroundObserver:v23 shouldTakeWorkoutDatabaseAssertion:v18];

  return v24;
}

- (uint64_t)_componentStateDidChange
{
  if (result)
  {
    v1 = *(result + 8);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __73__HDClientDataCollectionObservationStateMonitor__componentStateDidChange__block_invoke;
    v2[3] = &unk_278613968;
    v2[4] = result;
    return [v1 hk_withLock:v2];
  }

  return result;
}

void __73__HDClientDataCollectionObservationStateMonitor__componentStateDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained dataCollectionObservationStateDidChangeForClient:*(*(a1 + 32) + 24)];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HDClientDataCollectionObservationStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end