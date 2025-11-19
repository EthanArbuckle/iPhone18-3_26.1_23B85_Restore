@interface HDPeriodicCountryMonitor
- (HDKeyValueDomain)_lastActivePairedBuildIdentifiersDomain;
- (HDPeriodicCountryMonitor)initWithProfile:(id)a3 nanoSyncManager:(id)a4;
- (HDPeriodicCountryMonitor)initWithProfile:(id)a3 nanoSyncManager:(id)a4 countryCodeProvider:(id)a5 userDefaults:(id)a6;
- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)_currentPairedBuildIdentifiers;
- (id)diagnosticDescription;
- (uint64_t)_lock_enterStateIfPossible:(uint64_t)result;
- (void)_enqueueMaintenanceOperationIfNeeded;
- (void)_fetchCountryIfNeededWithCompletion:(uint64_t)a1;
- (void)_recordSuccessfulFetchForCurrentPairedBuilds;
- (void)enqueueMaintenanceFetch;
- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)a3;
- (void)nanoSyncManager:(id)a3 pairedDevicesChanged:(id)a4;
@end

@implementation HDPeriodicCountryMonitor

- (HDPeriodicCountryMonitor)initWithProfile:(id)a3 nanoSyncManager:(id)a4
{
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 standardUserDefaults];
  v10 = [(HDPeriodicCountryMonitor *)self initWithProfile:v8 nanoSyncManager:v7 countryCodeProvider:&__block_literal_global_12 userDefaults:v9];

  return v10;
}

- (HDPeriodicCountryMonitor)initWithProfile:(id)a3 nanoSyncManager:(id)a4 countryCodeProvider:(id)a5 userDefaults:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = HDPeriodicCountryMonitor;
  v14 = [(HDPeriodicCountryMonitor *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    objc_storeStrong(&v15->_nanoSyncManager, a4);
    v16 = _Block_copy(v12);
    countryCodeProvider = v15->_countryCodeProvider;
    v15->_countryCodeProvider = v16;

    objc_storeStrong(&v15->_userDefaults, a6);
    v18 = objc_alloc(MEMORY[0x277CCDA88]);
    v19 = [(HDPeriodicCountryMonitor *)v15 hk_classNameWithTag:@"observers"];
    v20 = HKLogInfrastructure();
    v21 = [v18 initWithName:v19 loggingCategory:v20];
    observers = v15->_observers;
    v15->_observers = v21;

    v15->_state = 0;
    v15->_lock_shouldBypassNextBuildVersionLimit = 0;
    v15->_lock._os_unfair_lock_opaque = 0;
    v23 = HKCreateSerialDispatchQueue();
    observerQueue = v15->_observerQueue;
    v15->_observerQueue = v23;

    [v11 addObserver:v15];
    v25 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v25 addObject:v15];
  }

  return v15;
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client requesting immediate fetch", &v13, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldBypassNextBuildVersionLimit = 1;
  v7 = [(HDPeriodicCountryMonitor *)self _lock_enterStateIfPossible:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(HDPeriodicCountryMonitor *)self _fetchCountryIfNeededWithCompletion:v4];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v13 = 138543362;
      v14 = v11;
      v12 = v11;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter fetching state. Returning error to client.", &v13, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"A fetch is already in progress"];
    (*(v4 + 2))(v4, 0, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_enterStateIfPossible:(uint64_t)result
{
  v23 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_25;
  }

  v3 = result;
  os_unfair_lock_assert_owner((result + 48));
  v4 = *(v3 + 56);
  v5 = v4 - 1;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1 || (a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if (((a2 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      if (v5 > 3)
      {
        v8 = @"WaitingForPairingChanges";
      }

      else
      {
        v8 = off_278614E98[v5];
      }

      if ((a2 - 1) > 3)
      {
        v10 = @"WaitingForPairingChanges";
      }

      else
      {
        v10 = off_278614E98[a2 - 1];
      }

      v17 = 138543874;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v10;
      v11 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] State will change from %{public}@ to %{public}@", &v17, 0x20u);
    }

    *(v3 + 56) = a2;
    result = 1;
    goto LABEL_25;
  }

  if (v4 == 2 || v4 == 3)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v4 != 4 || !a2)
  {
    goto LABEL_11;
  }

LABEL_15:
  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    if (v5 > 3)
    {
      v14 = @"WaitingForPairingChanges";
    }

    else
    {
      v14 = off_278614E98[v5];
    }

    if ((a2 - 1) > 3)
    {
      v15 = @"WaitingForPairingChanges";
    }

    else
    {
      v15 = off_278614E98[a2 - 1];
    }

    v17 = 138543874;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v16 = v13;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Invalid attempt to change state from %{public}@ to %{public}@", &v17, 0x20u);
  }

  result = 0;
LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_fetchCountryIfNeededWithCompletion:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 80);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke;
    v6[3] = &unk_278614E28;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)enqueueMaintenanceFetch
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Client requesting maintenance fetch", &v6, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldBypassNextBuildVersionLimit = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(HDPeriodicCountryMonitor *)self _enqueueMaintenanceOperationIfNeeded];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueMaintenanceOperationIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    v2 = [(HDPeriodicCountryMonitor *)a1 _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((a1 + 48));
    if (v2)
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__HDPeriodicCountryMonitor__enqueueMaintenanceOperationIfNeeded__block_invoke;
      v10[3] = &unk_278614DB0;
      v10[4] = a1;
      v5 = [HDMaintenanceOperation maintenanceOperationWithName:v4 asynchronousBlock:v10];

      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v7 = [WeakRetained daemon];
      v8 = [v7 maintenanceWorkCoordinator];
      [v8 enqueueMaintenanceOperation:v5];
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogInfrastructure();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 138543362;
      v12 = objc_opt_class();
      WeakRetained = v12;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter maintenance operation state", buf, 0xCu);
    }

LABEL_6:
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HDKeyValueDomain)_lastActivePairedBuildIdentifiersDomain
{
  v2 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [(HDKeyValueDomain *)v2 initWithCategory:0 domainName:@"HDPeriodicCountryMonitor_ActivePairedBuildIdentifiers" profile:WeakRetained];

  return v4;
}

- (_HDPeriodicCountryMonitorPairedBuildIdentifiers)_currentPairedBuildIdentifiers
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCDD30] sharedBehavior];
    v3 = [v2 currentOSBuild];

    v4 = [*(a1 + 16) pairedDevicesSnapshot];
    v5 = [v4 activeDeviceInfo];

    if (v5)
    {
      v6 = [v5 sourceBundleIdentifier];
      v7 = MEMORY[0x277CCACA8];
      v8 = [v5 systemBuildVersion];
      v9 = [v7 stringWithFormat:@"%@_%@", v3, v8];

      v3 = v9;
    }

    else
    {
      v6 = @"NO_ACTIVE_PAIRED_DEVICE";
    }

    v10 = [[_HDPeriodicCountryMonitorPairedBuildIdentifiers alloc] initWithPairingIdentifier:v6 buildIdentifier:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_recordSuccessfulFetchForCurrentPairedBuilds
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HDPeriodicCountryMonitor *)self _currentPairedBuildIdentifiers];
  v4 = [v3 buildIdentifier];
  v5 = [v3 pairingIdentifier];
  v6 = v5;
  v17 = 0;
  if (self)
  {
    v7 = v5;
    v8 = v4;
    v9 = [(HDPeriodicCountryMonitor *)self _lastActivePairedBuildIdentifiersDomain];
    v10 = [v9 setString:v8 forKey:v7 error:&v17];

    v11 = v17;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = v11;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v19 = v15;
      v16 = v15;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error recording successful fetch for current paired builds", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)nanoSyncManager:(id)a3 pairedDevicesChanged:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v5;
    v7 = v10;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed paired devices snapshot change: %@", &v9, 0x16u);
  }

  [(HDPeriodicCountryMonitor *)self _enqueueMaintenanceOperationIfNeeded];
  v8 = *MEMORY[0x277D85DE8];
}

void __64__HDPeriodicCountryMonitor__enqueueMaintenanceOperationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    os_unfair_lock_lock(v2 + 12);
    v4 = [(HDPeriodicCountryMonitor *)v2 _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock(v2 + 12);
    if (v4)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __67__HDPeriodicCountryMonitor__runMaintenanceOperationWithCompletion___block_invoke;
      v5[3] = &unk_278614DD8;
      v6 = v3;
      [(HDPeriodicCountryMonitor *)v2 _fetchCountryIfNeededWithCompletion:v5];
    }

    else
    {
      v3[2](v3);
    }
  }
}

void __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  if (v2)
  {
    [*(v2 + 24) setObject:v3 forKey:*MEMORY[0x277CCC658]];
  }

  v4 = [*(*(a1 + 32) + 40) allObservers];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke_2;
  v73[3] = &unk_278614E00;
  v73[4] = *(a1 + 32);
  v5 = [v4 hk_containsObjectPassingTest:v73];

  os_unfair_lock_lock((*(a1 + 32) + 48));
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = HKLogInfrastructure();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v21;
      v22 = v21;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping fetch as we have no observers", buf, 0xCu);
    }

    [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((*(a1 + 32) + 48));
    v23 = *(a1 + 40);
    v24 = MEMORY[0x277CCA9B8];
    v25 = @"Skipped fetch due to no observers";
    v26 = 11;
    goto LABEL_31;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_28;
  }

  os_unfair_lock_assert_owner((v6 + 48));
  if (*(v6 + 64) == 1)
  {
    *(v6 + 64) = 0;
    goto LABEL_7;
  }

  v27 = [(HDPeriodicCountryMonitor *)v6 _currentPairedBuildIdentifiers];
  v28 = [v27 buildIdentifier];
  v29 = [v27 pairingIdentifier];
  v30 = v28;
  v74 = 0;
  v31 = v29;
  v32 = [(HDPeriodicCountryMonitor *)v6 _lastActivePairedBuildIdentifiersDomain];
  v33 = [v32 stringForKey:v31 error:&v74];

  v34 = v74;
  v35 = v34;
  if (!v33 && v34)
  {
    _HKInitializeLogging();
    v36 = HKLogInfrastructure();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v62 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      v63 = v62;
      _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Error attempting to read last active paired build identifier: %{public}@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (v33)
  {
    v37 = [v33 isEqualToString:v30];

    if (v37)
    {
LABEL_28:
      _HKInitializeLogging();
      v38 = HKLogInfrastructure();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 32);
        v40 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v40;
        v41 = v40;
        _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping fetch as we've already fetched for this paired build configuration", buf, 0xCu);
      }

      [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
      os_unfair_lock_unlock((*(a1 + 32) + 48));
      v23 = *(a1 + 40);
      v24 = MEMORY[0x277CCA9B8];
      v25 = @"Background check already performed on this build configuration";
      v26 = 130;
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_7:
  v7 = [(HDPeriodicCountryMonitor *)*(a1 + 32) _lock_enterStateIfPossible:?];
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v59 = *(a1 + 32);
      v60 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v60;
      v61 = v60;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to enter fetching state", buf, 0xCu);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 48));
    v23 = *(a1 + 40);
    v24 = MEMORY[0x277CCA9B8];
    v25 = @"A fetch is already in progress";
    v26 = 100;
LABEL_31:
    v42 = [v24 hk_error:v26 description:v25];
    (*(v23 + 16))(v23, 0, 0, v42);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    *buf = 138543362;
    *&buf[4] = v11;
    v12 = v11;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching country code during maintenance operation", buf, 0xCu);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v70 = __64__HDPeriodicCountryMonitor__fetchCountryIfNeededWithCompletion___block_invoke_332;
  v71 = &unk_278614DD8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v72 = v14;
  if (v13)
  {
    v15 = v69;
    os_unfair_lock_lock((v13 + 48));
    if (*(v13 + 56) != 4)
    {
      v66 = [MEMORY[0x277CCA890] currentHandler];
      [v66 handleFailureInMethod:sel__fetchCountryCodeWithCompletion_ object:v13 file:@"HDPeriodicCountryMonitor.m" lineNumber:461 description:@"Must be in the fetching state"];
    }

    v16 = (*(*(v13 + 32) + 16))();
    v17 = *(v13 + 72);
    *(v13 + 72) = v16;

    os_unfair_lock_unlock((v13 + 48));
    v18 = [*(v13 + 72) currentEstimate];
    if (v18)
    {
      v68 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v44 = HKLogInfrastructure();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v64 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v64;
        *&buf[12] = 2114;
        *&buf[14] = 0;
        v65 = v64;
        _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "[%{public}@] Error fetching mobile country code: %{public}@", buf, 0x16u);
      }

      v68 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"Unexpectedly did not receive a countryCode"];
    }

    v45 = v18;
    os_unfair_lock_lock((v13 + 48));
    if (*(v13 + 56) != 4)
    {
      v67 = [MEMORY[0x277CCA890] currentHandler];
      [v67 handleFailureInMethod:sel__processCountryCodeResult_ object:v13 file:@"HDPeriodicCountryMonitor.m" lineNumber:482 description:@"Must be in the fetching state"];
    }

    v46 = *(v13 + 72);
    *(v13 + 72) = 0;

    os_unfair_lock_unlock((v13 + 48));
    if (v18)
    {
      v47 = [v45 provenance];
      v48 = *(v13 + 80);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke;
      v76 = &unk_278614E78;
      v77 = v13;
      v78 = v45;
      v79 = v47;
      dispatch_async(v48, buf);
      [v13 _recordSuccessfulFetchForCurrentPairedBuilds];
    }

    v49 = *(v13 + 88);
    if (v49)
    {
      v50 = v49;
    }

    else
    {
      v50 = [MEMORY[0x277CBEAA8] date];
    }

    v51 = v50;
    os_unfair_lock_lock((v13 + 48));
    [*(v13 + 24) setObject:v51 forKey:@"HDPeriodicCountryMonitor_LastFetchAttemptDate"];

    v52 = *(v13 + 24);
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    v54 = [WeakRetained healthDaemon];
    v55 = [v54 behavior];
    v56 = [v55 currentOSBuild];
    [v52 setObject:v56 forKey:@"HDPeriodicCountryMonitor_LastFetchAttemptBuild"];

    os_unfair_lock_unlock((v13 + 48));
    os_unfair_lock_lock((v13 + 48));
    [(HDPeriodicCountryMonitor *)v13 _lock_enterStateIfPossible:?];
    os_unfair_lock_unlock((v13 + 48));

    v57 = [v45 ISOCode];
    v58 = [v45 provenance];
    (v70)(v15, v57, v58, v68);

    v42 = v72;
  }

  else
  {
    v42 = v14;
  }

LABEL_32:

  v43 = *MEMORY[0x277D85DE8];
}

void __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogInfrastructure();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v5 = a1[5];
    *buf = 138543618;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    v6 = v4;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers of country code: %@", buf, 0x16u);
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke_348;
  v13[3] = &unk_278614E50;
  v13[4] = v8;
  v10 = v7;
  v11 = a1[6];
  v14 = v10;
  v15 = v11;
  [v9 notifyObservers:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __54__HDPeriodicCountryMonitor__processCountryCodeResult___block_invoke_348(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 ISOCode];
  [v5 periodicCountryMonitor:v3 didFetchISOCountryCode:v6 countryCodeProvenance:a1[6]];
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = v3;
  v5 = self->_state - 1;
  if (v5 > 3)
  {
    v6 = @"WaitingForPairingChanges";
  }

  else
  {
    v6 = off_278614E98[v5];
  }

  [v3 appendFormat:@"Current State: %@\n", v6];
  v7 = [(HDPeriodicCountryMonitor *)self lastCheckAttemptDate];
  [v4 appendFormat:@"Last Ran: %@\n", v7];

  v8 = [(HDPeriodicCountryMonitor *)self lastFetchAttemptDate];
  [v4 appendFormat:@"Last Fetched: %@\n", v8];

  v9 = [(HDPeriodicCountryMonitor *)self lastFetchAttemptBuild];
  [v4 appendFormat:@"Last Build: %@\n", v9];

  v10 = [v4 copy];

  return v10;
}

@end