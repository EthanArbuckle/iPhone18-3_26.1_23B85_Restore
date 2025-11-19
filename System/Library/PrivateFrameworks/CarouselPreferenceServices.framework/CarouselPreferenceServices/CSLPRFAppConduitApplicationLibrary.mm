@interface CSLPRFAppConduitApplicationLibrary
- (CSLPRFAppConduitApplicationLibrary)initWithPairedWatch:(id)a3;
- (NSArray)allApplications;
- (NSDictionary)allApplicationsDictionary;
- (id)applicationWithBundleIdentifier:(id)a3;
- (void)_ensureApplicationsCachedSync;
- (void)_loadApplicationsWithCompletion:(uint64_t)a1;
- (void)addObserver:(id)a3;
- (void)allApplicationsWithCompletion:(id)a3;
- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)dealloc;
@end

@implementation CSLPRFAppConduitApplicationLibrary

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:*(*(&v19 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__CSLPRFAppConduitApplicationLibrary_applicationsUninstalled_onDeviceWithPairingID___block_invoke;
    v17[3] = &unk_278744DC0;
    v17[4] = self;
    v18 = v10;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v6 bs_mapNoNulls:&__block_literal_global_24];
    os_unfair_lock_lock(&self->_lock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          v18 = [v16 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v16 forKey:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__CSLPRFAppConduitApplicationLibrary_applicationsUpdated_onDeviceWithPairingID___block_invoke_2;
    v22[3] = &unk_278744DC0;
    v22[4] = self;
    v23 = v11;
    v20 = v11;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v6 bs_mapNoNulls:&__block_literal_global_554];
    os_unfair_lock_lock(&self->_lock);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          v18 = [v16 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v16 forKey:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __82__CSLPRFAppConduitApplicationLibrary_applicationsInstalled_onDeviceWithPairingID___block_invoke_2;
    v22[3] = &unk_278744DC0;
    v22[4] = self;
    v23 = v11;
    v20 = v11;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CSLPRFAppConduitApplicationLibrary_addObserver___block_invoke;
  v6[3] = &unk_278744C00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CSLPRFAppConduitApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

void __50__CSLPRFAppConduitApplicationLibrary_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  v5 = a2;
  [v4 addObserver:v3];
  [*(a1 + 40) applicationLibrary:*(a1 + 32) didAddApplications:v5];
}

- (void)_loadApplicationsWithCompletion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [v5 addObserver:a1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke;
    v14[3] = &unk_278744710;
    v14[4] = a1;
    v6 = v4;
    v15 = v6;
    v16 = v3;
    v7 = MEMORY[0x2318C26B0](v14);
    v8 = [*(a1 + 8) pairingID];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke_3;
    v11[3] = &unk_278744C98;
    v12 = v6;
    v13 = v7;
    v11[4] = a1;
    v9 = v6;
    v10 = v7;
    [v5 enumerateInstalledApplicationsOnDeviceWithPairingID:v8 withBlock:v11];
  }
}

void __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke_2;
  v2[3] = &unk_278744F20;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [CSLPRFSharedWorkloop dispatchWithQOSClass:33 block:v2];
}

uint64_t __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = cslprf_app_library_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = [v6 localizedDescription];
      v23 = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_error_impl(&dword_22CE92000, v7, OS_LOG_TYPE_ERROR, "%@ loadApplications error: %@", &v23, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    v8 = 0;
    goto LABEL_18;
  }

  v9 = cslprf_app_library_log();
  v7 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) count];
      v23 = 138412546;
      v24 = v15;
      v25 = 1024;
      LODWORD(v26) = v16;
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "%@ loadApplications found %d apps", &v23, 0x12u);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = 138412546;
    v24 = v22;
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%@ loadApplications app %@", &v23, 0x16u);
  }

  v10 = [CSLPRFApp appWithACXRemoteApplication:v5];
  v11 = [v10 bundleIdentifier];
  v12 = *(a1 + 32);
  v13 = v11;
  v14 = v13;
  if (v12 && [v13 isEqualToString:@"com.apple.nanonews"] && (BPSIsNewsAllowed() & 1) == 0)
  {
    v17 = cslprf_app_library_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v14;
      _os_log_debug_impl(&dword_22CE92000, v17, OS_LOG_TYPE_DEBUG, "%@ app %@ hidden by policy", &v23, 0x16u);
    }
  }

  else
  {

    [*(a1 + 40) setObject:v10 forKey:v14];
  }

  v8 = 1;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void __70__CSLPRFAppConduitApplicationLibrary__loadApplicationsWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allValues];
  (*(v1 + 16))(v1, v2);
}

- (void)allApplicationsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__CSLPRFAppConduitApplicationLibrary_allApplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278744BD8;
  v7 = v4;
  v5 = v4;
  [(CSLPRFAppConduitApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__CSLPRFAppConduitApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_278744BB0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(CSLPRFAppConduitApplicationLibrary *)self _loadApplicationsWithCompletion:v10];
}

void __81__CSLPRFAppConduitApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) applicationWithBundleIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (NSDictionary)allApplicationsDictionary
{
  [(CSLPRFAppConduitApplicationLibrary *)self _ensureApplicationsCachedSync];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_lock_cachedApplications copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_ensureApplicationsCachedSync
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v2 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 32));
    if (!v2)
    {
      v3 = dispatch_semaphore_create(0);
      v4 = cslprf_app_library_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = a1;
        _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_DEFAULT, "%@ will block while fetching applications asynchronously", buf, 0xCu);
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __67__CSLPRFAppConduitApplicationLibrary__ensureApplicationsCachedSync__block_invoke;
      v7[3] = &unk_278744B88;
      v8 = v3;
      v5 = v3;
      [a1 allApplicationsWithCompletion:v7];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)allApplications
{
  v2 = [(CSLPRFAppConduitApplicationLibrary *)self allApplicationsDictionary];
  v3 = [v2 allValues];

  return v3;
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  [(CSLPRFAppConduitApplicationLibrary *)self _ensureApplicationsCachedSync];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_cachedApplications objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)dealloc
{
  if (self)
  {
    v3 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = CSLPRFAppConduitApplicationLibrary;
  [(CSLPRFAppConduitApplicationLibrary *)&v4 dealloc];
}

- (CSLPRFAppConduitApplicationLibrary)initWithPairedWatch:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSLPRFAppConduitApplicationLibrary;
  v6 = [(CSLPRFAppConduitApplicationLibrary *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pairedWatch, a3);
    v8 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v7->_observationHelper;
    v7->_observationHelper = v8;
  }

  return v7;
}

@end