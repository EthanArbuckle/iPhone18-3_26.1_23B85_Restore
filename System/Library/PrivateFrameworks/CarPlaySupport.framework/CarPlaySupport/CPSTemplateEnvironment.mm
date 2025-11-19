@interface CPSTemplateEnvironment
- (BOOL)_applicationRecord:(id)a3 supportsIntentWithIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_applicationRecord:(id)a3 supportsIntentWithIdentifierInExtensions:(id)a4 error:(id *)a5;
- (BOOL)applicationSupportsIntentWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)hasAnyTemplateEntitlement;
- (BOOL)rightHandDrive;
- (CPSTemplateEnvironment)initWithConnection:(id)a3 templateProvider:(id)a4;
- (CPTemplateProviding)templateProvider;
- (NSXPCConnection)connection;
- (unint64_t)maximumClientHierarchyDepth;
- (unint64_t)maximumTabs;
- (void)addTemplateEnvironmentDelegate:(id)a3;
- (void)nowPlayingManager:(id)a3 didThrottleUpdateForBundleIdentifier:(id)a4;
- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4;
@end

@implementation CPSTemplateEnvironment

- (CPSTemplateEnvironment)initWithConnection:(id)a3 templateProvider:(id)a4
{
  v81 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v79 = 0;
  objc_storeStrong(&v79, a4);
  v4 = v81;
  v81 = 0;
  v75 = [(CPSTemplateEnvironment *)v4 init];
  v81 = v75;
  objc_storeStrong(&v81, v75);
  if (v75)
  {
    objc_storeWeak(&v81->_connection, location[0]);
    objc_storeWeak(&v81->_templateProvider, v79);
    v5 = [location[0] cp_bundleIdentifier];
    bundleIdentifier = v81->_bundleIdentifier;
    v81->_bundleIdentifier = v5;
    *&v7 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
    v64 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1C0], v7}];
    v8 = [v64 BOOLValue];
    v81->_hasNavigationEntitlement = v8;
    *&v9 = MEMORY[0x277D82BD8](v64).n128_u64[0];
    v65 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB198], v9}];
    v10 = [v65 BOOLValue];
    v81->_hasAudioEntitlement = v10;
    *&v11 = MEMORY[0x277D82BD8](v65).n128_u64[0];
    v66 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1A8], v11}];
    v12 = [v66 BOOLValue];
    v81->_hasCommunicationEntitlement = v12;
    *&v13 = MEMORY[0x277D82BD8](v66).n128_u64[0];
    v67 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1A0], v13}];
    v14 = [v67 BOOLValue];
    v81->_hasChargingEntitlement = v14;
    *&v15 = MEMORY[0x277D82BD8](v67).n128_u64[0];
    v68 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1C8], v15}];
    v16 = [v68 BOOLValue];
    v81->_hasParkingEntitlement = v16;
    *&v17 = MEMORY[0x277D82BD8](v68).n128_u64[0];
    v69 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1D8], v17}];
    v18 = [v69 BOOLValue];
    v81->_hasQuickOrderingEntitlement = v18;
    *&v19 = MEMORY[0x277D82BD8](v69).n128_u64[0];
    v70 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1D0], v19}];
    v20 = [v70 BOOLValue];
    v81->_hasPublicSafetyEntitlement = v20;
    *&v21 = MEMORY[0x277D82BD8](v70).n128_u64[0];
    v71 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1B8], v21}];
    v22 = [v71 BOOLValue];
    v81->_hasFuelingEntitlement = v22;
    *&v23 = MEMORY[0x277D82BD8](v71).n128_u64[0];
    v72 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1B0], v23}];
    v24 = [v72 BOOLValue];
    v81->_hasDrivingTaskEntitlement = v24;
    *&v25 = MEMORY[0x277D82BD8](v72).n128_u64[0];
    v73 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1E0], v25}];
    v26 = [v73 BOOLValue];
    v81->_hasVideoEntitlement = v26;
    MEMORY[0x277D82BD8](v73);
    v27 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2855D64C8];
    environmentObservers = v81->_environmentObservers;
    v81->_environmentObservers = v27;
    MEMORY[0x277D82BD8](environmentObservers);
    v29 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:5];
    sessionStatus = v81->_sessionStatus;
    v81->_sessionStatus = v29;
    v31 = MEMORY[0x277D82BD8](sessionStatus).n128_u64[0];
    if (v81->_hasNavigationEntitlement)
    {
      v32 = CPSNavigationTemplateClasses();
      allowedTemplateClasses = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v32;
      v31 = MEMORY[0x277D82BD8](allowedTemplateClasses).n128_u64[0];
    }

    else if (v81->_hasAudioEntitlement)
    {
      v34 = CPSAudioTemplateClasses();
      v35 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v34;
      v31 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    }

    else if (v81->_hasCommunicationEntitlement)
    {
      v36 = CPSCommunicationTemplateClasses();
      v37 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v36;
      v31 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    }

    else if (v81->_hasChargingEntitlement || v81->_hasParkingEntitlement)
    {
      v38 = CPSChargingParkingTemplateClasses();
      v39 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v38;
      v31 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }

    else if (v81->_hasQuickOrderingEntitlement)
    {
      v40 = CPSQuickOrderingTemplateClasses();
      v41 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v40;
      v31 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    }

    else if (v81->_hasPublicSafetyEntitlement)
    {
      v42 = CPSPublicSafetyTemplateClasses();
      v43 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v42;
      v31 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    }

    else if (v81->_hasFuelingEntitlement)
    {
      v44 = CPSFuelingTemplateClasses();
      v45 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v44;
      v31 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    }

    else if (v81->_hasDrivingTaskEntitlement)
    {
      v46 = CPSDrivingTaskTemplateClasses();
      v47 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v46;
      v31 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    }

    else if (v81->_hasVideoEntitlement)
    {
      v48 = CPSVideoTemplateClasses();
      v49 = v81->_allowedTemplateClasses;
      v81->_allowedTemplateClasses = v48;
      v31 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    }

    hasVideoEntitlement = 1;
    if (!v81->_hasAudioEntitlement)
    {
      hasVideoEntitlement = 1;
      if (!v81->_hasCommunicationEntitlement)
      {
        hasVideoEntitlement = 1;
        if (!v81->_hasPublicSafetyEntitlement)
        {
          hasVideoEntitlement = v81->_hasVideoEntitlement;
        }
      }
    }

    v81->_canBecomeNowPlayingApp = hasVideoEntitlement & 1;
    v58 = MEMORY[0x277CC1E60];
    v59 = [(CPSTemplateEnvironment *)v81 bundleIdentifier];
    v78 = [v58 applicationProxyForIdentifier:?];
    v60 = [v78 bundleType];
    v50 = [v60 isEqualToString:*MEMORY[0x277CC1E40]];
    v81->_isUserApplication = v50;
    v61 = [MEMORY[0x277CBEB98] setWithObject:MEMORY[0x277D82BD8](v60).n128_f64[0]];
    v77 = [v78 objectsForInfoDictionaryKeys:?];
    v76 = [v77 dictionaryForKey:{@"UIApplicationSceneManifest", MEMORY[0x277D82BD8](v61).n128_f64[0]}];
    v62 = [v76 objectForKey:@"CPSupportsInstrumentClusterNavigationScene"];
    v51 = [v62 BOOLValue];
    v81->_supportsInstrumentCluster = v51;
    *&v52 = MEMORY[0x277D82BD8](v62).n128_u64[0];
    if ([(CPSTemplateEnvironment *)v81 canBecomeNowPlayingApp])
    {
      v53 = [MEMORY[0x277CF9158] sharedManager];
      nowPlayingManager = v81->_nowPlayingManager;
      v81->_nowPlayingManager = v53;
      MEMORY[0x277D82BD8](nowPlayingManager);
      [(CPUINowPlayingManager *)v81->_nowPlayingManager setPreferredArtworkSize:200.0];
      [(CPUINowPlayingManager *)v81->_nowPlayingManager setPreferredArtworkScale:2.0];
      v55 = [(CPSTemplateEnvironment *)v81 isUserApplication];
      [(CPUINowPlayingManager *)v81->_nowPlayingManager setThrottleBehavior:v55];
      [(CPUINowPlayingManager *)v81->_nowPlayingManager addNowPlayingObserver:v81];
    }

    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, 0);
  }

  v57 = MEMORY[0x277D82BE0](v81);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v81, 0);
  return v57;
}

- (BOOL)hasAnyTemplateEntitlement
{
  v3 = 1;
  if (![(CPSTemplateEnvironment *)self hasNavigationEntitlement])
  {
    v3 = 1;
    if (![(CPSTemplateEnvironment *)self hasAudioEntitlement])
    {
      v3 = 1;
      if (![(CPSTemplateEnvironment *)self hasCommunicationEntitlement])
      {
        v3 = 1;
        if (![(CPSTemplateEnvironment *)self hasChargingEntitlement])
        {
          v3 = 1;
          if (![(CPSTemplateEnvironment *)self hasParkingEntitlement])
          {
            v3 = 1;
            if (![(CPSTemplateEnvironment *)self hasQuickOrderingEntitlement])
            {
              v3 = 1;
              if (![(CPSTemplateEnvironment *)self hasPublicSafetyEntitlement])
              {
                v3 = 1;
                if (![(CPSTemplateEnvironment *)self hasFuelingEntitlement])
                {
                  v3 = 1;
                  if (![(CPSTemplateEnvironment *)self hasDrivingTaskEntitlement])
                  {
                    return [(CPSTemplateEnvironment *)self hasVideoEntitlement];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

- (unint64_t)maximumTabs
{
  if ([(CPSTemplateEnvironment *)self hasAudioEntitlement]|| [(CPSTemplateEnvironment *)self hasVideoEntitlement])
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (unint64_t)maximumClientHierarchyDepth
{
  if ([(CPSTemplateEnvironment *)self hasQuickOrderingEntitlement]|| [(CPSTemplateEnvironment *)self hasDrivingTaskEntitlement])
  {
    return 2;
  }

  if ([(CPSTemplateEnvironment *)self hasFuelingEntitlement])
  {
    return 3;
  }

  return 5;
}

- (void)addTemplateEnvironmentDelegate:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSTemplateEnvironment *)v15 environmentObservers];
  [(CARObserverHashTable *)v7 registerObserver:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if ([(CPSTemplateEnvironment *)v15 isNowPlayingApp])
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __57__CPSTemplateEnvironment_addTemplateEnvironmentDelegate___block_invoke;
    v12 = &unk_278D913E8;
    v13 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)rightHandDrive
{
  v5 = [(CPSTemplateEnvironment *)self sessionStatus];
  v4 = [(CARSessionStatus *)v5 currentSession];
  v3 = [v4 configuration];
  v6 = [v3 rightHandDrive];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

- (void)nowPlayingManager:(id)a3 didUpdateSnapshot:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [v10 bundleIdentifier];
  v7 = [(CPSTemplateEnvironment *)v12 bundleIdentifier];
  v4 = [v8 isEqualToString:?];
  v12->_isNowPlayingApp = v4;
  MEMORY[0x277D82BD8](v7);
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(CPSTemplateEnvironment *)v12 environmentObservers];
  [(CARObserverHashTable *)v9 applicationDidBecomeNowPlayingApp:[(CPSTemplateEnvironment *)v12 isNowPlayingApp]];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)a3 didThrottleUpdateForBundleIdentifier:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)applicationSupportsIntentWithIdentifier:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v16 = objc_alloc(MEMORY[0x277CC1E70]);
  v17 = [(CPSTemplateEnvironment *)v29 bundleIdentifier];
  v26 = [v16 initWithBundleIdentifier:? allowPlaceholder:? error:?];
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v26)
  {
    if ([(CPSTemplateEnvironment *)v29 _applicationRecord:v26 supportsIntentWithIdentifierInExtensions:location[0] error:v27, v4])
    {
      v22 = CarPlaySupportGeneralLogging();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(CPSTemplateEnvironment *)v29 bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v35, v13, location[0]);
        _os_log_impl(&dword_242FE8000, v22, v21, "Application %{public}@ supports intent %{public}@ in extensions", v35, 0x16u);
        MEMORY[0x277D82BD8](v13);
      }

      objc_storeStrong(&v22, 0);
      v30 = 1;
      v23 = 1;
    }

    else if ([(CPSTemplateEnvironment *)v29 _applicationRecord:v26 supportsIntentWithIdentifier:location[0] error:v27])
    {
      v20 = CarPlaySupportGeneralLogging();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CPSTemplateEnvironment *)v29 bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v34, v12, location[0]);
        _os_log_impl(&dword_242FE8000, v20, v19, "Application %{public}@ supports intent %{public}@ in app", v34, 0x16u);
        MEMORY[0x277D82BD8](v12);
      }

      objc_storeStrong(&v20, 0);
      v30 = 1;
      v23 = 1;
    }

    else
    {
      oslog = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CPSTemplateEnvironment *)v29 bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v33, v11, location[0]);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Application %{public}@ does not support intent %{public}@", v33, 0x16u);
        MEMORY[0x277D82BD8](v11);
      }

      objc_storeStrong(&oslog, 0);
      if (v27)
      {
        v7 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA450];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Application does not support required intent: %@", location[0]];
        v32 = v10;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v9 = [v7 errorWithDomain:@"CPSErrorDomain" code:-1 userInfo:?];
        v5 = v9;
        *v27 = v9;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v10);
      }

      v30 = 0;
      v23 = 1;
    }
  }

  else
  {
    v25 = CarPlaySupportGeneralLogging();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(CPSTemplateEnvironment *)v29 bundleIdentifier];
      __os_log_helper_16_2_1_8_66(v36, v14);
      _os_log_impl(&dword_242FE8000, v25, v24, "Failed to lookup app record for %{public}@", v36, 0xCu);
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v25, 0);
    v30 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (BOOL)_applicationRecord:(id)a3 supportsIntentWithIdentifierInExtensions:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0;
  v16 = [location[0] applicationExtensionRecords];
  if ([v16 count])
  {
    v7 = v16;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __92__CPSTemplateEnvironment__applicationRecord_supportsIntentWithIdentifierInExtensions_error___block_invoke;
    v14 = &unk_278D91A38;
    v15[0] = MEMORY[0x277D82BE0](v23);
    v15[1] = &v17;
    [v7 enumerateObjectsUsingBlock:&v10];
    objc_storeStrong(v15, 0);
  }

  v6 = *(v18 + 24);
  objc_storeStrong(&v16, 0);
  _Block_object_dispose(&v17, 8);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

void __92__CPSTemplateEnvironment__applicationRecord_supportsIntentWithIdentifierInExtensions_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] supportedIntents];
  v6 = [v5 containsObject:a1[4]];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a3 = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_applicationRecord:(id)a3 supportsIntentWithIdentifier:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = [location[0] supportedIntents];
  v8 = [v7 containsObject:v9];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (CPTemplateProviding)templateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_templateProvider);

  return WeakRetained;
}

@end