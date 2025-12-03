@interface HDWatchAppStateMonitor
+ (void)launchWorkoutAppIfNeededWithFitnessMachineSessionUUID:(id)d;
- (HDWatchAppStateMonitor)initWithBundleIdentifier:(id)identifier;
- (HDWatchAppStateMonitorDelegate)delegate;
- (void)dealloc;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
@end

@implementation HDWatchAppStateMonitor

- (HDWatchAppStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = bundleIdentifier;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing layout observer for %{public}@", buf, 0x16u);
  }

  v5 = [MEMORY[0x277D0AD08] sharedMonitorForDisplayType:0];
  [v5 removeObserver:self];

  v7.receiver = self;
  v7.super_class = HDWatchAppStateMonitor;
  [(HDWatchAppStateMonitor *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (HDWatchAppStateMonitor)initWithBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HDWatchAppStateMonitor;
  v6 = [(HDWatchAppStateMonitor *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D0AD08] sharedMonitorForDisplayType:0];
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    [v7 addObserver:v6];
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = v6->_bundleIdentifier;
      *buf = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = bundleIdentifier;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding layout observer for %{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)launchWorkoutAppIfNeededWithFitnessMachineSessionUUID:(id)d
{
  v3 = MEMORY[0x277CBEB38];
  dCopy = d;
  v10 = objc_alloc_init(v3);
  v5 = MEMORY[0x277CBEBC0];
  v6 = MEMORY[0x277CCACA8];
  uUIDString = [dCopy UUIDString];

  v8 = [v6 stringWithFormat:@"%@://%@/%@", @"SessionTrackerApp", @"startFitnessMachineSession", uUIDString];
  v9 = [v5 URLWithString:v8];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277D0AC40]];

  [MEMORY[0x277D0AD78] hd_openApplication:*MEMORY[0x277CCE528] optionsDictionary:v10 completion:&__block_literal_global_120];
}

void __80__HDWatchAppStateMonitor_launchWorkoutAppIfNeededWithFitnessMachineSessionUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  v5 = *MEMORY[0x277CCC330];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Attempt to open workouts failed with error: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&dword_228986000, v4, OS_LOG_TYPE_DEBUG, "Workouts successfully opened", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  elements = [layoutCopy elements];
  if ([elements count] == 1)
  {
    elements2 = [layoutCopy elements];
    firstObject = [elements2 firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
    v11 = [bundleIdentifier isEqualToString:self->_bundleIdentifier];
  }

  else
  {
    v11 = 0;
  }

  displayBacklightLevel = [layoutCopy displayBacklightLevel];
  _HKInitializeLogging();
  v13 = MEMORY[0x277CCC330];
  v14 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v16 = v14;
    v17 = HKStringFromBool();
    v18 = HKStringFromBool();
    v25 = 138544130;
    selfCopy3 = self;
    v27 = 2114;
    v28 = bundleIdentifier;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_INFO, "%{public}@: didUpdateDisplayLayout for %{public}@, running: %{public}@, screenOn: %{public}@", &v25, 0x2Au);
  }

  if (v11)
  {
    if (displayBacklightLevel >= 1)
    {
      if (!self->_appIsActive)
      {
        _HKInitializeLogging();
        v19 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_bundleIdentifier;
          v25 = 138543618;
          selfCopy3 = self;
          v27 = 2114;
          v28 = v20;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected app (%{public}@) onscreen", &v25, 0x16u);
        }

        self->_appIsActive = 1;
      }

      delegate = [(HDWatchAppStateMonitor *)self delegate];
      [delegate monitorDidDetectAppActivate:self];
LABEL_17:
    }
  }

  else if ([(HDWatchAppStateMonitor *)self appIsActive])
  {
    _HKInitializeLogging();
    v22 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_bundleIdentifier;
      v25 = 138543618;
      selfCopy3 = self;
      v27 = 2114;
      v28 = v23;
      _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected app (%{public}@) deactivated", &v25, 0x16u);
    }

    self->_appIsActive = 0;
    delegate = [(HDWatchAppStateMonitor *)self delegate];
    [delegate monitorDidDetectAppDeactivate:self];
    goto LABEL_17;
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end