@interface HDClientDataCollectionObservationStateMonitor
- (HDClientDataCollectionObservationStateMonitor)init;
- (HDClientDataCollectionObservationStateMonitor)initWithClient:(id)a3 delegate:(id)a4;
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

- (HDClientDataCollectionObservationStateMonitor)initWithClient:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = HDClientDataCollectionObservationStateMonitor;
  v9 = [(HDClientDataCollectionObservationStateMonitor *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    v11 = [v7 profile];
    objc_storeWeak(&v10->_profile, v11);

    objc_storeWeak(&v10->_delegate, v8);
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v10->_lock;
    v10->_lock = v12;

    WeakRetained = objc_loadWeakRetained(&v10->_profile);
    v15 = [WeakRetained daemon];
    v16 = [v15 processStateManager];
    v17 = [(HDHealthStoreClient *)v10->_client process];
    v18 = [v17 bundleIdentifier];
    [v16 registerObserver:v10 forBundleIdentifier:v18];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v10 selector:sel_workoutManagerDidChangeState_ name:@"HDWorkoutManagerStateDidChange" object:0];
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
    v6 = [WeakRetained daemon];
    v7 = [v6 processStateManager];
    v8 = [(HDHealthStoreClient *)self->_client process];
    v9 = [v8 bundleIdentifier];
    [v7 unregisterObserver:self forBundleIdentifier:v9];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:self name:@"HDWorkoutManagerStateDidChange" object:0];
  }
}

- (id)currentObserverState
{
  v3 = [(HDHealthStoreClient *)self->_client process];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained daemon];
  v6 = [v5 processStateManager];
  v7 = [v3 bundleIdentifier];
  v32 = [v6 isApplicationStateForegroundForBundleIdentifier:v7];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [v8 workoutManager];
  v10 = [v9 currentWorkoutClient];
  v11 = [v10 process];
  v12 = [v11 applicationIdentifier];
  v13 = [v3 applicationIdentifier];
  if (v12 == v13)
  {
    v18 = 1;
  }

  else
  {
    v14 = [v3 applicationIdentifier];
    if (v14)
    {
      v29 = v14;
      v28 = objc_loadWeakRetained(&self->_profile);
      v27 = [v28 workoutManager];
      v26 = [v27 currentWorkoutClient];
      [v26 process];
      v15 = v30 = v10;
      [v15 applicationIdentifier];
      v16 = v31 = v8;
      v17 = [v3 applicationIdentifier];
      v18 = [v16 isEqualToString:v17];

      v8 = v31;
      v10 = v30;

      v14 = v29;
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = objc_loadWeakRetained(&self->_profile);
  v20 = [v19 daemon];
  v21 = [v20 processStateManager];
  v22 = [v3 bundleIdentifier];
  v23 = [v21 isApplicationStateBackgroundRunningForBundleIdentifier:v22];

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