@interface CSLPRFLocalApplicationLibrary
- (BOOL)_isVisibleApplicationForRecord:(uint64_t)a1;
- (CSLPRFLocalApplicationLibrary)init;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)applicationWithBundleIdentifier:(id)a3;
- (void)_applicationsUninstalledWithRecords:(uint64_t)a1;
- (void)_stopObserving;
- (void)addObserver:(id)a3;
- (void)allApplicationsWithCompletion:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation CSLPRFLocalApplicationLibrary

- (void)applicationInstallsDidStart:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CSLPRFLocalApplicationLibrary_applicationInstallsDidStart___block_invoke;
  v5[3] = &unk_2787444D8;
  v5[4] = self;
  v4 = [a3 bs_mapNoNulls:v5];
  if ([v4 count])
  {
    [(CSLPRFLocalApplicationLibrary *)self _applicationsUninstalledWithRecords:v4];
  }
}

id __61__CSLPRFLocalApplicationLibrary_applicationInstallsDidStart___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appState];
  if (([v4 isValid] & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = [v3 appState];
  v6 = [v5 isDowngraded];

  if (!v6)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v7 = cslprf_app_library_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v3 bundleIdentifier];
    v13 = 134218242;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "%p App with bundleID %@ is offloaded, will attempt to remove counterparts if needed", &v13, 0x16u);
  }

  v10 = [v3 cslprf_safeCorrespondingApplicationRecord];
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_applicationsUninstalledWithRecords:(uint64_t)a1
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock((a1 + 24));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v11 allowPlaceholder:1 error:0];
          v13 = v12;
          if ((!v12 || [v12 isPlaceholder]) && -[CSLPRFLocalApplicationLibrary _isVisibleApplicationForRecord:](a1, v10))
          {
            v14 = [*(a1 + 16) objectForKey:v11];

            if (v14)
            {
              v15 = cslprf_app_library_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v26 = a1;
                v27 = 2112;
                v28 = v11;
                _os_log_impl(&dword_22CE92000, v15, OS_LOG_TYPE_INFO, "%p uninstalled, will remove application:%@", buf, 0x16u);
              }

              [*(a1 + 16) removeObjectForKey:v11];
              [v4 addObject:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock((a1 + 24));
    if ([v4 count])
    {
      v16 = *(a1 + 8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__CSLPRFLocalApplicationLibrary__applicationsUninstalledWithRecords___block_invoke;
      v19[3] = &unk_278744DC0;
      v19[4] = a1;
      v20 = v4;
      [v16 notifyObserversWithBlock:v19];
    }

    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isVisibleApplicationForRecord:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && ([v3 appTags], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", @"hidden"), v5, (v6 & 1) == 0))
  {
    v8 = [v4 typeForInstallMachinery];
    v7 = ([v8 isEqualToString:*MEMORY[0x277CC1E30]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CC1E40]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = [a3 bs_mapNoNulls:&__block_literal_global_8];
  [(CSLPRFLocalApplicationLibrary *)self _applicationsUninstalledWithRecords:v4];
}

- (void)applicationsDidInstall:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [a3 bs_mapNoNulls:&__block_literal_global_48];
  v24 = v4;
  if (self)
  {
    v25 = [MEMORY[0x277CBEB18] array];
    v27 = [MEMORY[0x277CBEB18] array];
    v26 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock(&self->_lock);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = v24;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          if ([(CSLPRFLocalApplicationLibrary *)self _isVisibleApplicationForRecord:v10])
          {
            v11 = [v10 bundleIdentifier];
            v12 = [(NSMutableDictionary *)self->_lock_cachedApplications objectForKey:v11];

            v13 = [v10 applicationState];
            v14 = [v13 isInstalled];

            if (v14)
            {
              v15 = [CSLPRFApp appWithApplicationRecord:v10];
              [(NSMutableDictionary *)self->_lock_cachedApplications setObject:v15 forKey:v11];
              v16 = cslprf_app_library_log();
              v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
              if (v12)
              {
                v18 = v27;
                if (v17)
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_22CE92000, v16, OS_LOG_TYPE_INFO, "%p updated application:%@", buf, 0x16u);
                  v18 = v27;
                }
              }

              else
              {
                v18 = v25;
                if (v17)
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2112;
                  *&buf[14] = v15;
                  _os_log_impl(&dword_22CE92000, v16, OS_LOG_TYPE_INFO, "%p added application:%@", buf, 0x16u);
                  v18 = v25;
                }
              }

              [v18 addObject:v15];
            }

            else if (v12)
            {
              v19 = cslprf_app_library_log();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                *&buf[4] = self;
                *&buf[12] = 2112;
                *&buf[14] = v11;
                _os_log_impl(&dword_22CE92000, v19, OS_LOG_TYPE_INFO, "%p not installed, will remove application:%@", buf, 0x16u);
              }

              [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:v11];
              [v26 addObject:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
    if ([v25 count])
    {
      observationHelper = self->_observationHelper;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke;
      v37 = &unk_278744DC0;
      v38 = self;
      v39 = v25;
      [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:buf];
    }

    if ([v27 count])
    {
      v21 = self->_observationHelper;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke_2;
      v30[3] = &unk_278744DC0;
      v30[4] = self;
      v31 = v27;
      [(CSLPRFObservationHelper *)v21 notifyObserversWithBlock:v30];
    }

    if ([v26 count])
    {
      v22 = self->_observationHelper;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__CSLPRFLocalApplicationLibrary_applicationsInstalledWithRecords___block_invoke_3;
      v28[3] = &unk_278744DC0;
      v28[4] = self;
      v29 = v26;
      [(CSLPRFObservationHelper *)v22 notifyObserversWithBlock:v28];
    }

    v4 = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  [(CSLPRFObservationHelper *)self->_observationHelper removeObserver:a3];
  if (![(CSLPRFObservationHelper *)self->_observationHelper observerCount])
  {

    [(CSLPRFLocalApplicationLibrary *)self _stopObserving];
  }
}

- (void)_stopObserving
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 24));
    v2 = *(a1 + 28);
    *(a1 + 28) = 0;
    os_unfair_lock_unlock((a1 + 24));
    if (v2 == 1)
    {
      v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v3 removeObserver:a1];
    }
  }
}

- (void)addObserver:(id)a3
{
  observationHelper = self->_observationHelper;
  v5 = a3;
  v6 = [(CSLPRFObservationHelper *)observationHelper observerCount];
  [(CSLPRFObservationHelper *)self->_observationHelper addObserver:v5];
  v7 = [(CSLPRFLocalApplicationLibrary *)self allApplications];
  [v5 applicationLibrary:self didAddApplications:v7];

  if (!v6)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_observing = self->_lock_observing;
    self->_lock_observing = 1;
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_observing)
    {
      v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v9 addObserver:self];
    }
  }
}

- (void)allApplicationsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(CSLPRFLocalApplicationLibrary *)self allApplications];
  (*(a3 + 2))(v5, v6);
}

- (NSDictionary)allApplicationsDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__CSLPRFLocalApplicationLibrary_allApplicationsDictionary__block_invoke;
  v22[3] = &unk_278744490;
  v22[4] = self;
  v4 = MEMORY[0x2318C26B0](v22);
  v5 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  [v5 setFilter:v4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CSLPRFApp appWithApplicationRecord:*(*(&v18 + 1) + 8 * i), v18];
        v12 = [v11 bundleIdentifier];
        [(NSMutableDictionary *)v3 setObject:v11 forKey:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cachedApplications = self->_lock_cachedApplications;
  self->_lock_cachedApplications = v3;
  v14 = v3;

  os_unfair_lock_unlock(&self->_lock);
  v15 = [(NSMutableDictionary *)v14 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

BOOL __58__CSLPRFLocalApplicationLibrary_allApplicationsDictionary__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isPlaceholder] & 1) != 0 || objc_msgSend(v3, "isSystemPlaceholder"))
  {
    v4 = cslprf_app_library_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v3 bundleIdentifier];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_22CE92000, v4, OS_LOG_TYPE_ERROR, "%@ Unexpectedly received a placeholder for %@", &v10, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(CSLPRFLocalApplicationLibrary *)*(a1 + 32) _isVisibleApplicationForRecord:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSArray)allApplications
{
  v2 = [(CSLPRFLocalApplicationLibrary *)self allApplicationsDictionary];
  v3 = [v2 allValues];

  return v3;
}

- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(CSLPRFLocalApplicationLibrary *)self applicationWithBundleIdentifier:a3];
  (*(a4 + 2))(v7, v8);
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v13 = 0;
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v13];
    v7 = v13;
    if (v7)
    {
      v8 = cslprf_app_library_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v15 = self;
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_INFO, "%@ failed to lookup LSApplicationRecord for bundleIdentifier:%@  error:%@", buf, 0x20u);
      }

      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:v5];
      os_unfair_lock_unlock(&self->_lock);
      v9 = 0;
    }

    else
    {
      v9 = [CSLPRFApp appWithApplicationRecord:v6];
      v10 = [v9 bundleIdentifier];
      if (v10)
      {
        os_unfair_lock_lock(&self->_lock);
        [(NSMutableDictionary *)self->_lock_cachedApplications setObject:v9 forKey:v10];
        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dealloc
{
  [(CSLPRFLocalApplicationLibrary *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = CSLPRFLocalApplicationLibrary;
  [(CSLPRFLocalApplicationLibrary *)&v3 dealloc];
}

- (CSLPRFLocalApplicationLibrary)init
{
  v9.receiver = self;
  v9.super_class = CSLPRFLocalApplicationLibrary;
  v2 = [(CSLPRFLocalApplicationLibrary *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v3->_observationHelper;
    v3->_observationHelper = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    lock_cachedApplications = v3->_lock_cachedApplications;
    v3->_lock_cachedApplications = v6;
  }

  return v3;
}

@end