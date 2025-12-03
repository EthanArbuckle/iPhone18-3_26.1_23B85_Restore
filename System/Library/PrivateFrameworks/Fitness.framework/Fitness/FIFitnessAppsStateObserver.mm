@interface FIFitnessAppsStateObserver
- (BOOL)areFitnessAppsRestricted;
- (FIFitnessAppsStateObserver)init;
- (FIFitnessAppsStateObserver)initWithBundleIdentifiers:(id)identifiers;
- (FIFitnessAppsStateObserverDelegate)delegate;
- (id)_filteredAppProxies:(id)proxies;
- (int64_t)_lock_installStateForBundleIdentifier:(id)identifier;
- (int64_t)installStateForBundleIdentifier:(id)identifier;
- (void)_cacheInitialFitnessAppsInstallState;
- (void)_cacheInitialFitnessAppsRestrictedState;
- (void)_updateCurrentFitnessAppsInstallStateWithProxies:(id)proxies newState:(int64_t)state;
- (void)_updateCurrentFitnessAppsRestrictedStateWithProxies:(id)proxies;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation FIFitnessAppsStateObserver

- (FIFitnessAppsStateObserver)init
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"com.apple.ActivityMonitorApp";
  v7[1] = @"com.apple.Fitness";
  v7[2] = @"com.apple.Mind";
  v7[3] = @"com.apple.SessionTrackerApp";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [(FIFitnessAppsStateObserver *)self initWithBundleIdentifiers:v3];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (FIFitnessAppsStateObserver)initWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = FIFitnessAppsStateObserver;
  v6 = [(FIFitnessAppsStateObserver *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_fitnessAppsRestrictedState = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fitnessAppsInstallationState = v7->_fitnessAppsInstallationState;
    v7->_fitnessAppsInstallationState = v8;

    objc_storeStrong(&v7->_appBundleIdentifersToMonitor, identifiers);
    [(FIFitnessAppsStateObserver *)v7 _cacheInitialFitnessAppsInstallState];
    [(FIFitnessAppsStateObserver *)v7 _cacheInitialFitnessAppsRestrictedState];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = FIFitnessAppsStateObserver;
  [(FIFitnessAppsStateObserver *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)areFitnessAppsRestricted
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_fitnessAppsRestrictedState == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)installStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(FIFitnessAppsStateObserver *)self _lock_installStateForBundleIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)_filteredAppProxies:(id)proxies
{
  v3 = MEMORY[0x277CBEB98];
  appBundleIdentifersToMonitor = self->_appBundleIdentifersToMonitor;
  proxiesCopy = proxies;
  v6 = [v3 setWithArray:appBundleIdentifersToMonitor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__FIFitnessAppsStateObserver__filteredAppProxies___block_invoke;
  v10[3] = &unk_279004A10;
  v11 = v6;
  v7 = v6;
  v8 = [proxiesCopy hk_filter:v10];

  return v8;
}

uint64_t __50__FIFitnessAppsStateObserver__filteredAppProxies___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)applicationStateDidChange:(id)change
{
  v4 = [(FIFitnessAppsStateObserver *)self _filteredAppProxies:change];
  if ([v4 count])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "App State notice received for monitored apps", v6, 2u);
    }

    [(FIFitnessAppsStateObserver *)self _updateCurrentFitnessAppsRestrictedStateWithProxies:v4];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = [(FIFitnessAppsStateObserver *)self _filteredAppProxies:uninstall];
  if ([v4 count])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Uninstall notice received for monitored apps", v6, 2u);
    }

    [(FIFitnessAppsStateObserver *)self _updateCurrentFitnessAppsInstallStateWithProxies:v4 newState:2];
  }
}

- (void)applicationsDidInstall:(id)install
{
  v4 = [(FIFitnessAppsStateObserver *)self _filteredAppProxies:install];
  if ([v4 count])
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Install notice received for monitored apps", v6, 2u);
    }

    [(FIFitnessAppsStateObserver *)self _updateCurrentFitnessAppsInstallStateWithProxies:v4 newState:1];
  }
}

- (int64_t)_lock_installStateForBundleIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_fitnessAppsInstallationState objectForKeyedSubscript:identifier];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)_cacheInitialFitnessAppsInstallState
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v3, OS_LOG_TYPE_DEFAULT, "Caching app installation states", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_appBundleIdentifersToMonitor;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138543362;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:{v10, v18, v19}];
        appState = [v11 appState];
        isInstalled = [appState isInstalled];

        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC270];
        v15 = os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT);
        if (isInstalled)
        {
          v16 = &unk_285E69E28;
          if (v15)
          {
            *buf = v18;
            v24 = v10;
            _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ is installed", buf, 0xCu);
            v16 = &unk_285E69E28;
          }
        }

        else
        {
          v16 = &unk_285E69E40;
          if (v15)
          {
            *buf = v18;
            v24 = v10;
            _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ is uninstalled", buf, 0xCu);
            v16 = &unk_285E69E40;
          }
        }

        [(NSMutableDictionary *)self->_fitnessAppsInstallationState setObject:v16 forKeyedSubscript:v10];
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentFitnessAppsInstallStateWithProxies:(id)proxies newState:(int64_t)state
{
  v34 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = proxiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    v13 = @"Uninstalled";
    if (state == 1)
    {
      v13 = @"Installed";
    }

    v24 = v13;
    *&v10 = 138543618;
    v23 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        bundleIdentifier = [*(*(&v25 + 1) + 8 * v14) bundleIdentifier];
        if ([(FIFitnessAppsStateObserver *)self _lock_installStateForBundleIdentifier:bundleIdentifier]!= state)
        {
          _HKInitializeLogging();
          v16 = *MEMORY[0x277CCC270];
          if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v30 = bundleIdentifier;
            v31 = 2114;
            v32 = v24;
            _os_log_impl(&dword_24B35E000, v16, OS_LOG_TYPE_DEFAULT, "Updating installed stated for %{public}@ to %{public}@", buf, 0x16u);
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:state];
          [(NSMutableDictionary *)self->_fitnessAppsInstallationState setObject:v17 forKeyedSubscript:bundleIdentifier];

          [v7 addObject:bundleIdentifier];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = [v7 copy];
      [v20 fitnessAppsStateObserver:self applicationInstallStateDidChangeForBundleIdentifiers:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_cacheInitialFitnessAppsRestrictedState
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_appBundleIdentifersToMonitor;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:{*(*(&v11 + 1) + 8 * v8), v11}];
        if (v9)
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(FIFitnessAppsStateObserver *)self _updateCurrentFitnessAppsRestrictedStateWithProxies:v3];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentFitnessAppsRestrictedStateWithProxies:(id)proxies
{
  v25 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = proxiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        appState = [*(*(&v18 + 1) + 8 * i) appState];
        isRestricted = [appState isRestricted];

        if (isRestricted)
        {
          LODWORD(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_fitnessAppsRestrictedState == v6)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_fitnessAppsRestrictedState = v6;
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = @"Allowed";
      if (v6)
      {
        v13 = @"Restricted";
      }

      v14 = v13;
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v14;
        _os_log_impl(&dword_24B35E000, v15, OS_LOG_TYPE_DEFAULT, "Fitness App Restricted State changed to %{public}@, notifying delegate", buf, 0xCu);
      }

      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 fitnessAppsStateObserver:self restrictedStateDidChange:v6];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (FIFitnessAppsStateObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end