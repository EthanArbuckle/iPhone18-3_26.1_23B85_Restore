@interface CSLPRFLegacyWatchApplicationLibrary
- (CSLPRFLegacyWatchApplicationLibrary)initWithPairedWatch:(id)a3;
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
- (void)nanoRegistrySource:(id)a3 updatedWithAllApplications:(id)a4;
@end

@implementation CSLPRFLegacyWatchApplicationLibrary

- (void)applicationsUninstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];

  if (v8 == v7)
  {
    os_unfair_lock_lock(&self->_lock);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:*(*(&v18 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__CSLPRFLegacyWatchApplicationLibrary_applicationsUninstalled_onDeviceWithPairingID___block_invoke;
    v16[3] = &unk_278744DC0;
    v16[4] = self;
    v17 = v9;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];

  if (v8 == v7)
  {
    v9 = [v6 bs_mapNoNulls:&__block_literal_global_15];
    os_unfair_lock_lock(&self->_lock);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          v17 = [v15 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__CSLPRFLegacyWatchApplicationLibrary_applicationsUpdated_onDeviceWithPairingID___block_invoke_2;
    v21[3] = &unk_278744DC0;
    v21[4] = self;
    v22 = v10;
    v19 = v10;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PDRDevice *)self->_pairedWatch pairingID];

  if (v8 == v7)
  {
    v9 = [v6 bs_mapNoNulls:&__block_literal_global_12];
    os_unfair_lock_lock(&self->_lock);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          lock_cachedApplications = self->_lock_cachedApplications;
          v17 = [v15 bundleIdentifier];
          [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_lock);
    observationHelper = self->_observationHelper;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__CSLPRFLegacyWatchApplicationLibrary_applicationsInstalled_onDeviceWithPairingID___block_invoke_2;
    v21[3] = &unk_278744DC0;
    v21[4] = self;
    v22 = v10;
    v19 = v10;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)nanoRegistrySource:(id)a3 updatedWithAllApplications:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_firstPartyApplications;
  v7 = MEMORY[0x277CBEB38];
  v8 = [v5 bs_mapNoNulls:&__block_literal_global_2443];
  v9 = [v7 dictionaryWithObjects:v5 forKeys:v8];

  objc_storeStrong(&self->_lock_firstPartyApplications, v9);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v60;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v59 + 1) + 8 * i);
        lock_cachedApplications = self->_lock_cachedApplications;
        v17 = [v15 bundleIdentifier];
        [(NSMutableDictionary *)lock_cachedApplications setObject:v15 forKey:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = MEMORY[0x277CBEB98];
  v44 = v6;
  v19 = [(NSMutableDictionary *)v6 allKeys];
  v20 = [v18 setWithArray:v19];

  v21 = MEMORY[0x277CBEB98];
  v42 = v9;
  v22 = [v9 allKeys];
  v23 = [v21 setWithArray:v22];

  v24 = [v23 mutableCopy];
  [v24 minusSet:v20];
  v25 = [v23 mutableCopy];
  [v25 minusSet:v24];
  v43 = v20;
  v26 = [v20 mutableCopy];
  [v26 minusSet:v23];
  os_unfair_lock_lock(&self->_lock);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v56;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(NSMutableDictionary *)self->_lock_cachedApplications removeObjectForKey:*(*(&v55 + 1) + 8 * j)];
      }

      v29 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v29);
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([v24 count])
  {
    v32 = [v42 allValues];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_2;
    v53[3] = &unk_278744C28;
    v54 = v24;
    v33 = [v32 bs_filter:v53];

    observationHelper = self->_observationHelper;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_3;
    v51[3] = &unk_278744DC0;
    v51[4] = self;
    v52 = v33;
    v35 = v33;
    [(CSLPRFObservationHelper *)observationHelper notifyObserversWithBlock:v51];
  }

  if ([v25 count])
  {
    v36 = [v42 allValues];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_4;
    v49[3] = &unk_278744C28;
    v50 = v25;
    v37 = [v36 bs_filter:v49];

    v38 = self->_observationHelper;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_5;
    v47[3] = &unk_278744DC0;
    v47[4] = self;
    v48 = v37;
    v39 = v37;
    [(CSLPRFObservationHelper *)v38 notifyObserversWithBlock:v47];
  }

  if ([v27 count])
  {
    v40 = self->_observationHelper;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_6;
    v45[3] = &unk_278744DC0;
    v45[4] = self;
    v46 = v27;
    [(CSLPRFObservationHelper *)v40 notifyObserversWithBlock:v45];
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __85__CSLPRFLegacyWatchApplicationLibrary_nanoRegistrySource_updatedWithAllApplications___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  [v4 applicationLibrary:v2 didRemoveApplications:v5];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CSLPRFLegacyWatchApplicationLibrary_addObserver___block_invoke;
  v6[3] = &unk_278744C00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

void __51__CSLPRFLegacyWatchApplicationLibrary_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = a2;
  [v4 addObserver:v3];
  [*(a1 + 40) applicationLibrary:*(a1 + 32) didAddApplications:v5];
}

- (void)_loadApplicationsWithCompletion:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__CSLPRFLegacyWatchApplicationLibrary__loadApplicationsWithCompletion___block_invoke;
    v6[3] = &unk_278744F48;
    v6[4] = a1;
    v7 = v3;
    [v5 allApplicationsWithCompletion:v6];
  }
}

void __71__CSLPRFLegacyWatchApplicationLibrary__loadApplicationsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v2;
  if (v3)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke;
    v16[3] = &unk_278744C70;
    v17 = v4;
    v7 = v6;
    v18 = v7;
    v19 = v3;
    v20 = v5;
    v8 = MEMORY[0x2318C26B0](v16);
    v9 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    [v9 addObserver:v3];
    v10 = [*(v3 + 16) pairingID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_2;
    v13[3] = &unk_278744C98;
    v14 = v7;
    v15 = v8;
    v13[4] = v3;
    v11 = v7;
    v12 = v8;
    [v9 enumerateLocallyAvailableApplicationsForDeviceWithPairingID:v10 options:1 withBlock:v13];
  }
}

void __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138412802;
    v19 = v5;
    v20 = v2;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [*(a1 + 40) objectForKey:v10];

        if (v11)
        {
          v12 = cslprf_app_library_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 48);
            v14 = [*(a1 + 40) objectForKey:v10];
            *buf = v19;
            v29 = v13;
            v2 = v20;
            v30 = 2112;
            v31 = v14;
            v32 = 2112;
            v33 = v9;
            _os_log_error_impl(&dword_22CE92000, v12, OS_LOG_TYPE_ERROR, "%@ appConduit has same app:%@ as nanoAppRegistry:%@", buf, 0x20u);
          }
        }

        else
        {
          [*(a1 + 40) setObject:v9 forKey:v10];
          [v2 setObject:v9 forKey:v10];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  os_unfair_lock_lock((*(a1 + 48) + 48));
  v15 = *(a1 + 48);
  v16 = *(v15 + 40);
  *(v15 + 40) = v2;
  v17 = v2;

  os_unfair_lock_unlock((*(a1 + 48) + 48));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_16;
  block[3] = &unk_278744F20;
  v23 = *(a1 + 56);
  v22 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = cslprf_app_library_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = [v6 localizedDescription];
      v19 = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_22CE92000, v7, OS_LOG_TYPE_ERROR, "%@ loadApplications error: %@", &v19, 0x16u);
    }

LABEL_4:

    (*(*(a1 + 48) + 16))();
    v8 = 0;
    goto LABEL_9;
  }

  v9 = cslprf_app_library_log();
  v7 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) count];
      v19 = 138412546;
      v20 = v14;
      v21 = 1024;
      LODWORD(v22) = v15;
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "%@ loadApplications found %d apps", &v19, 0x12u);
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = 138412546;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%@ loadApplications app %@", &v19, 0x16u);
  }

  v10 = [CSLPRFApp appWithACXRemoteApplication:v5];
  v11 = [v10 bundleIdentifier];
  [*(a1 + 40) setObject:v10 forKey:v11];

  v8 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

void __108__CSLPRFLegacyWatchApplicationLibrary__withFirstPartyApplications_loadAppConduitApplicationsWithCompletion___block_invoke_16(uint64_t a1)
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
  v6[2] = __69__CSLPRFLegacyWatchApplicationLibrary_allApplicationsWithCompletion___block_invoke;
  v6[3] = &unk_278744BD8;
  v7 = v4;
  v5 = v4;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v6];
}

- (void)applicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__CSLPRFLegacyWatchApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_278744BB0;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _loadApplicationsWithCompletion:v10];
}

void __82__CSLPRFLegacyWatchApplicationLibrary_applicationWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) applicationWithBundleIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (NSDictionary)allApplicationsDictionary
{
  [(CSLPRFLegacyWatchApplicationLibrary *)self _ensureApplicationsCachedSync];
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
    os_unfair_lock_lock((a1 + 48));
    v2 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 48));
    if (v2)
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
      v7[2] = __68__CSLPRFLegacyWatchApplicationLibrary__ensureApplicationsCachedSync__block_invoke;
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
  v2 = [(CSLPRFLegacyWatchApplicationLibrary *)self allApplicationsDictionary];
  v3 = [v2 allValues];

  return v3;
}

- (id)applicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  [(CSLPRFLegacyWatchApplicationLibrary *)self _ensureApplicationsCachedSync];
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

    [(CSLPRFNanoAppRegistryApplicationSource *)self->_nanoAppRegistrySource setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = CSLPRFLegacyWatchApplicationLibrary;
  [(CSLPRFLegacyWatchApplicationLibrary *)&v4 dealloc];
}

- (CSLPRFLegacyWatchApplicationLibrary)initWithPairedWatch:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CSLPRFLegacyWatchApplicationLibrary;
  v6 = [(CSLPRFLegacyWatchApplicationLibrary *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pairedWatch, a3);
    v8 = objc_alloc_init(CSLPRFObservationHelper);
    observationHelper = v7->_observationHelper;
    v7->_observationHelper = v8;

    v10 = objc_alloc_init(CSLPRFNanoAppRegistryApplicationSource);
    nanoAppRegistrySource = v7->_nanoAppRegistrySource;
    v7->_nanoAppRegistrySource = v10;

    [(CSLPRFNanoAppRegistryApplicationSource *)v7->_nanoAppRegistrySource setDelegate:v7];
  }

  return v7;
}

@end