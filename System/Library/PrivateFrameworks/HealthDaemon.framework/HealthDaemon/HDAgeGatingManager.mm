@interface HDAgeGatingManager
- (HDAgeGatingManager)initWithProfile:(id)a3;
- (HDAgeGatingManager)initWithProfile:(id)a3 userDefaults:(id)a4 queue:(id)a5;
- (id)ageInYearsWithError:(id *)a3;
- (void)_queue_updateAgeGating;
- (void)_updateAgeGatingOnQueue;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)didReceiveDayChangeNotification:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
- (void)unitTesting_updateAgeGates;
@end

@implementation HDAgeGatingManager

- (HDAgeGatingManager)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CCE228]];
  v8 = HKCreateSerialDispatchQueue();
  v9 = [(HDAgeGatingManager *)self initWithProfile:v5 userDefaults:v7 queue:v8];

  return v9;
}

- (HDAgeGatingManager)initWithProfile:(id)a3 userDefaults:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HDAgeGatingManager;
  v12 = [(HDAgeGatingManager *)&v16 init];
  if (v12)
  {
    if (!v9)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:v12 file:@"HDAgeGatingManager.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
    }

    objc_storeWeak(&v12->_profile, v9);
    objc_storeStrong(&v12->_userDefaults, a4);
    objc_storeStrong(&v12->_queue, a5);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:0];
  }

  return v12;
}

- (void)dealloc
{
  if (self)
  {
    if (notify_is_valid_token(self->_significantTimeChangeNotificationToken))
    {
      notify_cancel(self->_significantTimeChangeNotificationToken);
    }

    if (notify_is_valid_token(self->_userCharacteristicsDidChangeNotificationToken))
    {
      notify_cancel(self->_userCharacteristicsDidChangeNotificationToken);
    }

    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277CBE580] object:0];
  }

  v4.receiver = self;
  v4.super_class = HDAgeGatingManager;
  [(HDAgeGatingManager *)&v4 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  if (self)
  {
    objc_initWeak(&location, self);
    v4 = objc_opt_class();
    queue = self->_queue;
    handler = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __47__HDAgeGatingManager__registerForNotifications__block_invoke;
    v20 = &unk_2786250D8;
    v21[1] = v4;
    objc_copyWeak(v21, &location);
    notify_register_dispatch("SignificantTimeChangeNotification", &self->_significantTimeChangeNotificationToken, queue, &handler);
    v6 = *MEMORY[0x277CCE580];
    v7 = self->_queue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__HDAgeGatingManager__registerForNotifications__block_invoke_312;
    v15[3] = &unk_2786250D8;
    v16[1] = v4;
    objc_copyWeak(v16, &location);
    notify_register_dispatch(v6, &self->_userCharacteristicsDidChangeNotificationToken, v7, v15);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:self selector:sel_didReceiveDayChangeNotification_ name:*MEMORY[0x277CBE580] object:0];

    objc_destroyWeak(v16);
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
    v9 = [MEMORY[0x277CCACA8] stringWithCString:"-[HDAgeGatingManager _updateAgeGatingViaMaintenanceWorkCoordinator]" encoding:4];
    v10 = self->_queue;
    handler = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __67__HDAgeGatingManager__updateAgeGatingViaMaintenanceWorkCoordinator__block_invoke;
    v20 = &unk_278613968;
    v21[0] = self;
    v11 = [HDMaintenanceOperation maintenanceOperationWithName:v9 queue:v10 synchronousBlock:&handler];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = [WeakRetained daemon];
    v14 = [v13 maintenanceWorkCoordinator];
    [v14 enqueueMaintenanceOperation:v11];
  }
}

- (void)didReceiveDayChangeNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2082;
    v10 = "[HDAgeGatingManager didReceiveDayChangeNotification:]";
    v5 = v8;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] received day change notification", &v7, 0x16u);
  }

  [(HDAgeGatingManager *)self _updateAgeGatingOnQueue];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAgeGatingOnQueue
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HDAgeGatingManager__updateAgeGatingOnQueue__block_invoke;
    block[3] = &unk_278613968;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

- (void)unitTesting_updateAgeGates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDAgeGatingManager_unitTesting_updateAgeGates__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_updateAgeGating
{
  v67[12] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v47 = 0;
    v2 = [a1 ageInYearsWithError:&v47];
    v3 = v47;
    v4 = v3;
    v46 = v2;
    if (v2 || !v3)
    {
      v43 = v3;
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v12 = [WeakRetained database];
      [v12 removeProtectedDataObserver:a1];

      v45 = v46;
      v66[0] = *MEMORY[0x277CCE238];
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE290]];
      v67[0] = v44;
      v66[1] = *MEMORY[0x277CCE248];
      v42 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE418]];
      v67[1] = v42;
      v66[2] = *MEMORY[0x277CCE250];
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE4F0]];
      v67[2] = v41;
      v66[3] = *MEMORY[0x277CCE240];
      v40 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE298]];
      v67[3] = v40;
      v66[4] = *MEMORY[0x277CCC220];
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE348]];
      v67[4] = v39;
      v66[5] = *MEMORY[0x277CCC238];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE4F8]];
      v67[5] = v13;
      v66[6] = *MEMORY[0x277CCE260];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE560]];
      v67[6] = v14;
      v66[7] = *MEMORY[0x277CCE268];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE568]];
      v67[7] = v15;
      v66[8] = *MEMORY[0x277CCE230];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE208]];
      v67[8] = v16;
      v66[9] = *MEMORY[0x277CCE270];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE588]];
      v67[9] = v17;
      v66[10] = *MEMORY[0x277CCE258];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE520]];
      v67[10] = v18;
      v66[11] = *MEMORY[0x277CCC258];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE5D8]];
      v67[11] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:12];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v49;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v49 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v48 + 1) + 8 * i);
            v27 = [v21 objectForKeyedSubscript:v26];
            if (v46)
            {
              v28 = [v45 integerValue];
              v29 = v28 < [v27 integerValue];
            }

            else
            {
              v29 = 0;
            }

            [*(a1 + 32) setBool:v29 forKey:v26];
            _HKInitializeLogging();
            v30 = HKLogInfrastructure();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              *v52 = 138544130;
              v53 = v31;
              v54 = 2082;
              v55 = "[HDAgeGatingManager _updateUserDefaultsWithAge:]";
              v56 = 2114;
              v57 = v26;
              v58 = 1026;
              v59 = v29;
              v32 = v31;
              _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] %{public}@ age gating enabled: %{public}d", v52, 0x26u);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v48 objects:buf count:16];
        }

        while (v23);
      }

      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v61 = v33;
        v62 = 2082;
        v63 = "[HDAgeGatingManager _queue_updateAgeGating]";
        v34 = v33;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] processed", buf, 0x16u);
      }

      v4 = v43;
    }

    else
    {
      v5 = [v3 hk_isDatabaseAccessibilityError];
      _HKInitializeLogging();
      v6 = HKLogInfrastructure();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v8 = objc_opt_class();
          *buf = 138543618;
          v61 = v8;
          v62 = 2082;
          v63 = "[HDAgeGatingManager _queue_updateAgeGating]";
          v9 = v8;
          _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] Protected data not accessible. Adding observer.", buf, 0x16u);
        }

        v6 = objc_loadWeakRetained((a1 + 8));
        v10 = [v6 database];
        [v10 addProtectedDataObserver:a1];
      }

      else if (v7)
      {
        v36 = objc_opt_class();
        v37 = v36;
        v38 = [v4 localizedDescription];
        *buf = 138543874;
        v61 = v36;
        v62 = 2082;
        v63 = "[HDAgeGatingManager _queue_updateAgeGating]";
        v64 = 2114;
        v65 = v38;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] While fetching date of birth components, received error: %{public}@", buf, 0x20u);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)ageInYearsWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [WeakRetained userCharacteristicsManager];
  v20 = 0;
  v8 = [v7 userCharacteristicForType:v5 error:&v20];
  v9 = v20;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v11 = 0;
    if (self && v8)
    {
      v12 = MEMORY[0x277CBEA80];
      v13 = v8;
      v14 = [v12 hk_gregorianCalendarWithLocalTimeZone];
      v15 = [MEMORY[0x277CBEAA8] date];
      v16 = [v14 hk_dateOfBirthDateComponentsWithDate:v15];

      v17 = [v14 components:4 fromDateComponents:v13 toDateComponents:v16 options:0];

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "year")}];
    }
  }

  else if (a3)
  {
    v18 = v9;
    v11 = 0;
    *a3 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

  return v11;
}

void __47__HDAgeGatingManager__registerForNotifications__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to significant time change.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAgeGatingManager *)WeakRetained _updateAgeGatingOnQueue];

  v5 = *MEMORY[0x277D85DE8];
}

void __47__HDAgeGatingManager__registerForNotifications__block_invoke_312(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating age gating due to user characteristics change.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDAgeGatingManager *)WeakRetained _updateAgeGatingOnQueue];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4)
  {
    [(HDAgeGatingManager *)self _updateAgeGatingOnQueue];
  }
}

@end