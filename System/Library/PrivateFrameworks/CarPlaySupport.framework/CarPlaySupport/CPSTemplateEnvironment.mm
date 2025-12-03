@interface CPSTemplateEnvironment
- (BOOL)_applicationRecord:(id)record supportsIntentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)_applicationRecord:(id)record supportsIntentWithIdentifierInExtensions:(id)extensions error:(id *)error;
- (BOOL)applicationSupportsIntentWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)hasAnyTemplateEntitlement;
- (BOOL)rightHandDrive;
- (CPSTemplateEnvironment)initWithConnection:(id)connection templateProvider:(id)provider;
- (CPTemplateProviding)templateProvider;
- (NSXPCConnection)connection;
- (unint64_t)maximumClientHierarchyDepth;
- (unint64_t)maximumTabs;
- (void)addTemplateEnvironmentDelegate:(id)delegate;
- (void)nowPlayingManager:(id)manager didThrottleUpdateForBundleIdentifier:(id)identifier;
- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot;
@end

@implementation CPSTemplateEnvironment

- (CPSTemplateEnvironment)initWithConnection:(id)connection templateProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, connection);
  v79 = 0;
  objc_storeStrong(&v79, provider);
  v4 = selfCopy;
  selfCopy = 0;
  v75 = [(CPSTemplateEnvironment *)v4 init];
  selfCopy = v75;
  objc_storeStrong(&selfCopy, v75);
  if (v75)
  {
    objc_storeWeak(&selfCopy->_connection, location[0]);
    objc_storeWeak(&selfCopy->_templateProvider, v79);
    cp_bundleIdentifier = [location[0] cp_bundleIdentifier];
    bundleIdentifier = selfCopy->_bundleIdentifier;
    selfCopy->_bundleIdentifier = cp_bundleIdentifier;
    *&v7 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
    v64 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1C0], v7}];
    bOOLValue = [v64 BOOLValue];
    selfCopy->_hasNavigationEntitlement = bOOLValue;
    *&v9 = MEMORY[0x277D82BD8](v64).n128_u64[0];
    v65 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB198], v9}];
    bOOLValue2 = [v65 BOOLValue];
    selfCopy->_hasAudioEntitlement = bOOLValue2;
    *&v11 = MEMORY[0x277D82BD8](v65).n128_u64[0];
    v66 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1A8], v11}];
    bOOLValue3 = [v66 BOOLValue];
    selfCopy->_hasCommunicationEntitlement = bOOLValue3;
    *&v13 = MEMORY[0x277D82BD8](v66).n128_u64[0];
    v67 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1A0], v13}];
    bOOLValue4 = [v67 BOOLValue];
    selfCopy->_hasChargingEntitlement = bOOLValue4;
    *&v15 = MEMORY[0x277D82BD8](v67).n128_u64[0];
    v68 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1C8], v15}];
    bOOLValue5 = [v68 BOOLValue];
    selfCopy->_hasParkingEntitlement = bOOLValue5;
    *&v17 = MEMORY[0x277D82BD8](v68).n128_u64[0];
    v69 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1D8], v17}];
    bOOLValue6 = [v69 BOOLValue];
    selfCopy->_hasQuickOrderingEntitlement = bOOLValue6;
    *&v19 = MEMORY[0x277D82BD8](v69).n128_u64[0];
    v70 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1D0], v19}];
    bOOLValue7 = [v70 BOOLValue];
    selfCopy->_hasPublicSafetyEntitlement = bOOLValue7;
    *&v21 = MEMORY[0x277D82BD8](v70).n128_u64[0];
    v71 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1B8], v21}];
    bOOLValue8 = [v71 BOOLValue];
    selfCopy->_hasFuelingEntitlement = bOOLValue8;
    *&v23 = MEMORY[0x277D82BD8](v71).n128_u64[0];
    v72 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1B0], v23}];
    bOOLValue9 = [v72 BOOLValue];
    selfCopy->_hasDrivingTaskEntitlement = bOOLValue9;
    *&v25 = MEMORY[0x277D82BD8](v72).n128_u64[0];
    v73 = [location[0] valueForEntitlement:{*MEMORY[0x277CBB1E0], v25}];
    bOOLValue10 = [v73 BOOLValue];
    selfCopy->_hasVideoEntitlement = bOOLValue10;
    MEMORY[0x277D82BD8](v73);
    v27 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2855D64C8];
    environmentObservers = selfCopy->_environmentObservers;
    selfCopy->_environmentObservers = v27;
    MEMORY[0x277D82BD8](environmentObservers);
    v29 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:5];
    sessionStatus = selfCopy->_sessionStatus;
    selfCopy->_sessionStatus = v29;
    v31 = MEMORY[0x277D82BD8](sessionStatus).n128_u64[0];
    if (selfCopy->_hasNavigationEntitlement)
    {
      v32 = CPSNavigationTemplateClasses();
      allowedTemplateClasses = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v32;
      v31 = MEMORY[0x277D82BD8](allowedTemplateClasses).n128_u64[0];
    }

    else if (selfCopy->_hasAudioEntitlement)
    {
      v34 = CPSAudioTemplateClasses();
      v35 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v34;
      v31 = MEMORY[0x277D82BD8](v35).n128_u64[0];
    }

    else if (selfCopy->_hasCommunicationEntitlement)
    {
      v36 = CPSCommunicationTemplateClasses();
      v37 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v36;
      v31 = MEMORY[0x277D82BD8](v37).n128_u64[0];
    }

    else if (selfCopy->_hasChargingEntitlement || selfCopy->_hasParkingEntitlement)
    {
      v38 = CPSChargingParkingTemplateClasses();
      v39 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v38;
      v31 = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }

    else if (selfCopy->_hasQuickOrderingEntitlement)
    {
      v40 = CPSQuickOrderingTemplateClasses();
      v41 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v40;
      v31 = MEMORY[0x277D82BD8](v41).n128_u64[0];
    }

    else if (selfCopy->_hasPublicSafetyEntitlement)
    {
      v42 = CPSPublicSafetyTemplateClasses();
      v43 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v42;
      v31 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    }

    else if (selfCopy->_hasFuelingEntitlement)
    {
      v44 = CPSFuelingTemplateClasses();
      v45 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v44;
      v31 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    }

    else if (selfCopy->_hasDrivingTaskEntitlement)
    {
      v46 = CPSDrivingTaskTemplateClasses();
      v47 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v46;
      v31 = MEMORY[0x277D82BD8](v47).n128_u64[0];
    }

    else if (selfCopy->_hasVideoEntitlement)
    {
      v48 = CPSVideoTemplateClasses();
      v49 = selfCopy->_allowedTemplateClasses;
      selfCopy->_allowedTemplateClasses = v48;
      v31 = MEMORY[0x277D82BD8](v49).n128_u64[0];
    }

    hasVideoEntitlement = 1;
    if (!selfCopy->_hasAudioEntitlement)
    {
      hasVideoEntitlement = 1;
      if (!selfCopy->_hasCommunicationEntitlement)
      {
        hasVideoEntitlement = 1;
        if (!selfCopy->_hasPublicSafetyEntitlement)
        {
          hasVideoEntitlement = selfCopy->_hasVideoEntitlement;
        }
      }
    }

    selfCopy->_canBecomeNowPlayingApp = hasVideoEntitlement & 1;
    v58 = MEMORY[0x277CC1E60];
    bundleIdentifier = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
    v78 = [v58 applicationProxyForIdentifier:?];
    bundleType = [v78 bundleType];
    v50 = [bundleType isEqualToString:*MEMORY[0x277CC1E40]];
    selfCopy->_isUserApplication = v50;
    v61 = [MEMORY[0x277CBEB98] setWithObject:MEMORY[0x277D82BD8](bundleType).n128_f64[0]];
    v77 = [v78 objectsForInfoDictionaryKeys:?];
    v76 = [v77 dictionaryForKey:{@"UIApplicationSceneManifest", MEMORY[0x277D82BD8](v61).n128_f64[0]}];
    v62 = [v76 objectForKey:@"CPSupportsInstrumentClusterNavigationScene"];
    bOOLValue11 = [v62 BOOLValue];
    selfCopy->_supportsInstrumentCluster = bOOLValue11;
    *&v52 = MEMORY[0x277D82BD8](v62).n128_u64[0];
    if ([(CPSTemplateEnvironment *)selfCopy canBecomeNowPlayingApp])
    {
      mEMORY[0x277CF9158] = [MEMORY[0x277CF9158] sharedManager];
      nowPlayingManager = selfCopy->_nowPlayingManager;
      selfCopy->_nowPlayingManager = mEMORY[0x277CF9158];
      MEMORY[0x277D82BD8](nowPlayingManager);
      [(CPUINowPlayingManager *)selfCopy->_nowPlayingManager setPreferredArtworkSize:200.0];
      [(CPUINowPlayingManager *)selfCopy->_nowPlayingManager setPreferredArtworkScale:2.0];
      isUserApplication = [(CPSTemplateEnvironment *)selfCopy isUserApplication];
      [(CPUINowPlayingManager *)selfCopy->_nowPlayingManager setThrottleBehavior:isUserApplication];
      [(CPUINowPlayingManager *)selfCopy->_nowPlayingManager addNowPlayingObserver:selfCopy];
    }

    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v77, 0);
    objc_storeStrong(&v78, 0);
  }

  v57 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)addTemplateEnvironmentDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  environmentObservers = [(CPSTemplateEnvironment *)selfCopy environmentObservers];
  [(CARObserverHashTable *)environmentObservers registerObserver:location[0]];
  *&v3 = MEMORY[0x277D82BD8](environmentObservers).n128_u64[0];
  if ([(CPSTemplateEnvironment *)selfCopy isNowPlayingApp])
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
  sessionStatus = [(CPSTemplateEnvironment *)self sessionStatus];
  currentSession = [(CARSessionStatus *)sessionStatus currentSession];
  configuration = [currentSession configuration];
  rightHandDrive = [configuration rightHandDrive];
  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](currentSession);
  MEMORY[0x277D82BD8](sessionStatus);
  return rightHandDrive;
}

- (void)nowPlayingManager:(id)manager didUpdateSnapshot:(id)snapshot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v10 = 0;
  objc_storeStrong(&v10, snapshot);
  bundleIdentifier = [v10 bundleIdentifier];
  bundleIdentifier2 = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:?];
  selfCopy->_isNowPlayingApp = v4;
  MEMORY[0x277D82BD8](bundleIdentifier2);
  *&v5 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
  environmentObservers = [(CPSTemplateEnvironment *)selfCopy environmentObservers];
  [(CARObserverHashTable *)environmentObservers applicationDidBecomeNowPlayingApp:[(CPSTemplateEnvironment *)selfCopy isNowPlayingApp]];
  MEMORY[0x277D82BD8](environmentObservers);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)nowPlayingManager:(id)manager didThrottleUpdateForBundleIdentifier:(id)identifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, identifier);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)applicationSupportsIntentWithIdentifier:(id)identifier error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  errorCopy = error;
  v16 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
  v26 = [v16 initWithBundleIdentifier:? allowPlaceholder:? error:?];
  *&v4 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
  if (v26)
  {
    if ([(CPSTemplateEnvironment *)selfCopy _applicationRecord:v26 supportsIntentWithIdentifierInExtensions:location[0] error:errorCopy, v4])
    {
      v22 = CarPlaySupportGeneralLogging();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v35, bundleIdentifier2, location[0]);
        _os_log_impl(&dword_242FE8000, v22, v21, "Application %{public}@ supports intent %{public}@ in extensions", v35, 0x16u);
        MEMORY[0x277D82BD8](bundleIdentifier2);
      }

      objc_storeStrong(&v22, 0);
      v30 = 1;
      v23 = 1;
    }

    else if ([(CPSTemplateEnvironment *)selfCopy _applicationRecord:v26 supportsIntentWithIdentifier:location[0] error:errorCopy])
    {
      v20 = CarPlaySupportGeneralLogging();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v34, bundleIdentifier3, location[0]);
        _os_log_impl(&dword_242FE8000, v20, v19, "Application %{public}@ supports intent %{public}@ in app", v34, 0x16u);
        MEMORY[0x277D82BD8](bundleIdentifier3);
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
        bundleIdentifier4 = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
        __os_log_helper_16_2_2_8_66_8_66(v33, bundleIdentifier4, location[0]);
        _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_DEFAULT, "Application %{public}@ does not support intent %{public}@", v33, 0x16u);
        MEMORY[0x277D82BD8](bundleIdentifier4);
      }

      objc_storeStrong(&oslog, 0);
      if (errorCopy)
      {
        v7 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277CCA450];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Application does not support required intent: %@", location[0]];
        v32 = v10;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v9 = [v7 errorWithDomain:@"CPSErrorDomain" code:-1 userInfo:?];
        v5 = v9;
        *errorCopy = v9;
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
      bundleIdentifier5 = [(CPSTemplateEnvironment *)selfCopy bundleIdentifier];
      __os_log_helper_16_2_1_8_66(v36, bundleIdentifier5);
      _os_log_impl(&dword_242FE8000, v25, v24, "Failed to lookup app record for %{public}@", v36, 0xCu);
      MEMORY[0x277D82BD8](bundleIdentifier5);
    }

    objc_storeStrong(&v25, 0);
    v30 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (BOOL)_applicationRecord:(id)record supportsIntentWithIdentifierInExtensions:(id)extensions error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, record);
  v23 = 0;
  objc_storeStrong(&v23, extensions);
  errorCopy = error;
  v17 = 0;
  v18 = &v17;
  v19 = 0x20000000;
  v20 = 32;
  v21 = 0;
  applicationExtensionRecords = [location[0] applicationExtensionRecords];
  if ([applicationExtensionRecords count])
  {
    v7 = applicationExtensionRecords;
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
  objc_storeStrong(&applicationExtensionRecords, 0);
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

- (BOOL)_applicationRecord:(id)record supportsIntentWithIdentifier:(id)identifier error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, record);
  v9 = 0;
  objc_storeStrong(&v9, identifier);
  supportedIntents = [location[0] supportedIntents];
  v8 = [supportedIntents containsObject:v9];
  MEMORY[0x277D82BD8](supportedIntents);
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