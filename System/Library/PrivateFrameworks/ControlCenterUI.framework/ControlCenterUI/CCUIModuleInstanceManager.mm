@interface CCUIModuleInstanceManager
- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)context;
- (CCUIContentModuleContextDelegate)contextDelegate;
- (CCUIModuleInstanceManager)initWithModuleRepository:(id)repository systemAgent:(id)agent displayLayoutContextProvider:(id)provider;
- (NSSet)loadableModuleIdentifiers;
- (id)_instantiateModuleWithMetadata:(id)metadata uniqueIdentifier:(id)identifier;
- (id)_loadBundlesForModuleMetadata:(id)metadata;
- (id)contentModuleContext:(id)context requestsSensorActivityDataForActiveSensorType:(unint64_t)type;
- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)data;
- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)selection;
- (id)loadAlertModuleWithBundleIdentifier:(id)identifier;
- (id)obtainModuleWithBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier;
- (void)_runBlockOnObservers:(id)observers;
- (void)_updateModuleInstances;
- (void)contentModuleContext:(id)context enqueueStatusUpdate:(id)update;
- (void)dealloc;
- (void)dismissControlCenterForContentModuleContext:(id)context;
- (void)dismissExpandedViewForContentModuleContext:(id)context;
- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)context;
- (void)loadableModulesChangedForModuleRepository:(id)repository;
- (void)removeModuleWithUniqueIdentifier:(id)identifier;
- (void)requestExpandModuleForContentModuleContext:(id)context;
- (void)setEnabledModuleIdentifiersFromSettingsApp:(id)app;
@end

@implementation CCUIModuleInstanceManager

- (void)_updateModuleInstances
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__CCUIModuleInstanceManager__updateModuleInstances__block_invoke;
  v2[3] = &unk_278382280;
  v2[4] = self;
  [(CCUIModuleInstanceManager *)self _runBlockOnObservers:v2];
}

- (NSSet)loadableModuleIdentifiers
{
  v10 = *MEMORY[0x277D85DE8];
  loadableModuleIdentifiers = [(CCSModuleRepository *)self->_repository loadableModuleIdentifiers];
  v3 = [loadableModuleIdentifiers mutableCopy];

  v4 = MEMORY[0x277CFC8F0];
  v5 = *MEMORY[0x277CFC8F0];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = @"com.apple.control-center.SatelliteModule";
    _os_log_impl(&dword_21E9F5000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcefully removing any existing Satellite modules.", &v8, 0xCu);
  }

  [v3 removeObject:@"com.apple.control-center.SatelliteModule"];
  v6 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = @"com.apple.springboard.ContinuousExposeModule";
    _os_log_impl(&dword_21E9F5000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forcefully adding stage manager module if device supports but not in loadable.", &v8, 0xCu);
  }

  if ([MEMORY[0x277CFC860] isStageManagerAvailable] && (objc_msgSend(v3, "containsObject:", @"com.apple.springboard.ContinuousExposeModule") & 1) == 0)
  {
    [v3 addObject:@"com.apple.springboard.ContinuousExposeModule"];
  }

  return v3;
}

- (CCUIContentModuleContextDelegate)contextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextDelegate);

  return WeakRetained;
}

- (CCUIModuleInstanceManager)initWithModuleRepository:(id)repository systemAgent:(id)agent displayLayoutContextProvider:(id)provider
{
  repositoryCopy = repository;
  agentCopy = agent;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = CCUIModuleInstanceManager;
  v12 = [(CCUIModuleInstanceManager *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemAgent, agent);
    objc_storeStrong(&v13->_repository, repository);
    objc_storeStrong(&v13->_displayLayoutContextProvider, provider);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    alertModuleInstanceByModuleIdentifier = v13->_alertModuleInstanceByModuleIdentifier;
    v13->_alertModuleInstanceByModuleIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    enabledModuleInstanceByUniqueIdentifer = v13->_enabledModuleInstanceByUniqueIdentifer;
    v13->_enabledModuleInstanceByUniqueIdentifer = v16;

    v18 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v13->_observers;
    v13->_observers = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.ControlCenter.ModuleInstanceManager", v20);
    queue = v13->_queue;
    v13->_queue = v21;

    CCUIRegisterControlCenterLogging();
    [(CCUIModuleInstanceManager *)v13 _updateModuleInstances];
    [(CCSModuleRepository *)v13->_repository addObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  [(CCUIDisplayLayoutContextProviding *)self->_displayLayoutContextProvider invalidate];
  v3.receiver = self;
  v3.super_class = CCUIModuleInstanceManager;
  [(CCUIModuleInstanceManager *)&v3 dealloc];
}

- (void)setEnabledModuleIdentifiersFromSettingsApp:(id)app
{
  appCopy = app;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appCopy copy];
    enabledModuleIdentifiersFromSettingsApp = self->_enabledModuleIdentifiersFromSettingsApp;
    self->_enabledModuleIdentifiersFromSettingsApp = v4;

    [(CCUIModuleInstanceManager *)self _updateModuleInstances];
  }
}

- (id)loadAlertModuleWithBundleIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [CCUIModuleInstanceManager loadAlertModuleWithBundleIdentifier:];
  }

  v5 = [(NSMutableDictionary *)self->_alertModuleInstanceByModuleIdentifier objectForKey:identifierCopy];
  if (!v5)
  {
    v6 = [(CCSModuleRepository *)self->_repository moduleMetadataForModuleIdentifier:identifierCopy];
    v7 = v6;
    if (v6)
    {
      v8 = MEMORY[0x277CCA8D8];
      moduleBundleURL = [v6 moduleBundleURL];
      v10 = [v8 bundleWithURL:moduleBundleURL];

      if (([v10 isLoaded] & 1) == 0)
      {
        v16[0] = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
        v12 = [(CCUIModuleInstanceManager *)self _loadBundlesForModuleMetadata:v11];
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v5 = [(CCUIModuleInstanceManager *)self _instantiateModuleWithMetadata:v7 uniqueIdentifier:uUIDString];

      [(NSMutableDictionary *)self->_alertModuleInstanceByModuleIdentifier bs_setSafeObject:v5 forKey:identifierCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)obtainModuleWithBundleIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier
{
  v18[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  v8 = uniqueIdentifierCopy;
  if (identifierCopy)
  {
    if (uniqueIdentifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CCUIModuleInstanceManager obtainModuleWithBundleIdentifier:uniqueIdentifier:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CCUIModuleInstanceManager obtainModuleWithBundleIdentifier:uniqueIdentifier:];
LABEL_3:
  v9 = [(NSMutableDictionary *)self->_enabledModuleInstanceByUniqueIdentifer objectForKey:v8];
  if (!v9)
  {
    v10 = [(CCSModuleRepository *)self->_repository moduleMetadataForModuleIdentifier:identifierCopy];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x277CCA8D8];
      moduleBundleURL = [v10 moduleBundleURL];
      v14 = [v12 bundleWithURL:moduleBundleURL];

      if (([v14 isLoaded] & 1) == 0)
      {
        v18[0] = v11;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
        v16 = [(CCUIModuleInstanceManager *)self _loadBundlesForModuleMetadata:v15];
      }

      v9 = [(CCUIModuleInstanceManager *)self _instantiateModuleWithMetadata:v11 uniqueIdentifier:v8];
      [(NSMutableDictionary *)self->_enabledModuleInstanceByUniqueIdentifer bs_setSafeObject:v9 forKey:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)removeModuleWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (!identifierCopy)
  {
    [CCUIModuleInstanceManager removeModuleWithUniqueIdentifier:];
    identifierCopy = 0;
  }

  [(NSMutableDictionary *)self->_enabledModuleInstanceByUniqueIdentifer removeObjectForKey:identifierCopy];
}

- (id)_loadBundlesForModuleMetadata:(id)metadata
{
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = metadataCopy;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138543362;
    v26 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = MEMORY[0x277CCA8D8];
        moduleBundleURL = [v10 moduleBundleURL];
        v13 = [v11 bundleWithURL:moduleBundleURL];

        if (([v13 isLoaded] & 1) == 0)
        {
          v14 = *MEMORY[0x277CFC8F0];
          if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            moduleIdentifier = [v10 moduleIdentifier];
            *buf = 138543618;
            v34 = moduleIdentifier;
            v35 = 2114;
            v36 = v13;
            _os_log_impl(&dword_21E9F5000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loading bundle %{public}@ for module", buf, 0x16u);
          }

          v28 = 0;
          v17 = [v13 loadAndReturnError:&v28];
          v18 = v28;
          v19 = *MEMORY[0x277CFC8F0];
          v20 = *MEMORY[0x277CFC8F0];
          if (v17)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v19;
              moduleIdentifier2 = [v10 moduleIdentifier];
              *buf = v26;
              v34 = moduleIdentifier2;
              _os_log_impl(&dword_21E9F5000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bundle was loaded successfully", buf, 0xCu);
            }

            [v27 addObject:v13];
          }

          else if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            v23 = v19;
            moduleIdentifier3 = [v10 moduleIdentifier];
            *buf = 138543618;
            v34 = moduleIdentifier3;
            v35 = 2114;
            v36 = v18;
            _os_log_fault_impl(&dword_21E9F5000, v23, OS_LOG_TYPE_FAULT, "[%{public}@] Bundle was not loaded, error=%{public}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  return v27;
}

- (void)_runBlockOnObservers:(id)observers
{
  observers = self->_observers;
  observersCopy = observers;
  allObjects = [(NSHashTable *)observers allObjects];
  [allObjects bs_each:observersCopy];
}

- (void)loadableModulesChangedForModuleRepository:(id)repository
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CCUIModuleInstanceManager_loadableModulesChangedForModuleRepository___block_invoke;
  block[3] = &unk_278381DF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)contentModuleContext:(id)context enqueueStatusUpdate:(id)update
{
  updateCopy = update;
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  [contextDelegate contentModuleContext:contextCopy enqueueStatusUpdate:updateCopy];
}

- (void)requestExpandModuleForContentModuleContext:(id)context
{
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  [contextDelegate requestExpandModuleForContentModuleContext:contextCopy];
}

- (void)dismissExpandedViewForContentModuleContext:(id)context
{
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  [contextDelegate dismissExpandedViewForContentModuleContext:contextCopy];
}

- (void)dismissControlCenterForContentModuleContext:(id)context
{
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  [contextDelegate dismissControlCenterForContentModuleContext:contextCopy];
}

- (id)contentModuleContext:(id)context requestsSensorActivityDataForActiveSensorType:(unint64_t)type
{
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  v8 = [contextDelegate contentModuleContext:contextCopy requestsSensorActivityDataForActiveSensorType:type];

  return v8;
}

- (id)contentModuleContextRequestsMutedMicrophoneSensorActivityData:(id)data
{
  dataCopy = data;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  v6 = [contextDelegate contentModuleContextRequestsMutedMicrophoneSensorActivityData:dataCopy];

  return v6;
}

- (id)contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:(id)selection
{
  selectionCopy = selection;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  v6 = [contextDelegate contentModuleContextRequestsSensorActivityDataEligibleForInactiveMicModeSelection:selectionCopy];

  return v6;
}

- (void)invalidateContainerViewsForPlatterTreatmentForContentModuleContext:(id)context
{
  contextCopy = context;
  contextDelegate = [(CCUIModuleInstanceManager *)self contextDelegate];
  [contextDelegate invalidateContainerViewsForPlatterTreatmentForContentModuleContext:contextCopy];
}

- (BOOL)isDevicePasscodeLockedForContentModuleContext:(id)context
{
  v3 = MKBGetDeviceLockState();
  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (id)_instantiateModuleWithMetadata:(id)metadata uniqueIdentifier:(id)identifier
{
  v67 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  identifierCopy = identifier;
  v8 = MEMORY[0x277CCA8D8];
  moduleBundleURL = [metadataCopy moduleBundleURL];
  v10 = [v8 bundleWithURL:moduleBundleURL];

  moduleIdentifier = [metadataCopy moduleIdentifier];
  if ([v10 isLoaded])
  {
    principalClass = [v10 principalClass];
    v13 = objc_opt_class();
    v14 = principalClass;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = v15;

    if ([v24 conformsToProtocol:&unk_2830739F0])
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__0;
    v63 = __Block_byref_object_dispose__0;
    v54 = v25;
    v64 = [v54 alloc];
    if (v60[5])
    {
      [v10 ccui_associateWithModuleInstance:?];
      if ([v60[5] conformsToProtocol:&unk_28309C618] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __77__CCUIModuleInstanceManager__instantiateModuleWithMetadata_uniqueIdentifier___block_invoke;
        v57[3] = &unk_2783822A8;
        v26 = v58;
        v27 = moduleIdentifier;
        v58[1] = self;
        v58[2] = &v59;
        v58[0] = v27;
        v28 = "instantiate internal module";
        v29 = v57;
      }

      else
      {
        activity_block[0] = MEMORY[0x277D85DD0];
        activity_block[1] = 3221225472;
        activity_block[2] = __77__CCUIModuleInstanceManager__instantiateModuleWithMetadata_uniqueIdentifier___block_invoke_99;
        activity_block[3] = &unk_2783822D0;
        v26 = v56;
        v56[0] = moduleIdentifier;
        v56[1] = &v59;
        v28 = "instantiate module";
        v29 = activity_block;
      }

      _os_activity_initiate(&dword_21E9F5000, v28, OS_ACTIVITY_FLAG_DEFAULT, v29);

      if (v60[5])
      {
        if (objc_opt_respondsToSelector())
        {
          v30 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
          v31 = [objc_alloc(MEMORY[0x277CFC948]) initWithModuleIdentifier:moduleIdentifier uniqueIdentifier:v30];
          [v31 setDelegate:self];
          [v31 setDisplayLayoutContextProvider:self->_displayLayoutContextProvider];
          [v60[5] setContentModuleContext:v31];
        }

        v32 = [CCUIModuleInstance alloc];
        v33 = v60[5];
        ccui_prototypeModuleSize = [v10 ccui_prototypeModuleSize];
        v36 = v35;
        ccui_displayName = [v10 ccui_displayName];
        v23 = [(CCUIModuleInstance *)v32 initWithMetadata:metadataCopy module:v33 prototypeModuleSize:ccui_prototypeModuleSize uniqueIdentifier:v36 displayName:identifierCopy, ccui_displayName];
      }

      else
      {
        v45 = *MEMORY[0x277CFC8F0];
        if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_ERROR))
        {
          [(CCUIModuleInstanceManager *)moduleIdentifier _instantiateModuleWithMetadata:v45 uniqueIdentifier:v46, v47, v48, v49, v50, v51];
        }

        [v10 unload];
        v23 = 0;
      }

      if (![moduleIdentifier isEqualToString:@"com.apple.control-center.SatelliteModule"])
      {
        goto LABEL_33;
      }

      v52 = *MEMORY[0x277CFC8F0];
      if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v66 = moduleIdentifier;
        _os_log_impl(&dword_21E9F5000, v52, OS_LOG_TYPE_DEFAULT, "[Satellite Module] [%{public}@] is not supported. Setting module instance to nil.", buf, 0xCu);
      }
    }

    else
    {
      v38 = *MEMORY[0x277CFC8F0];
      if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_ERROR))
      {
        [(CCUIModuleInstanceManager *)moduleIdentifier _instantiateModuleWithMetadata:v38 uniqueIdentifier:v39, v40, v41, v42, v43, v44];
      }

      [v10 unload];
    }

    v23 = 0;
LABEL_33:
    _Block_object_dispose(&v59, 8);

    goto LABEL_34;
  }

  v16 = *MEMORY[0x277CFC8F0];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_ERROR))
  {
    [(CCUIModuleInstanceManager *)moduleIdentifier _instantiateModuleWithMetadata:v16 uniqueIdentifier:v17, v18, v19, v20, v21, v22];
  }

  v23 = 0;
LABEL_34:

  return v23;
}

void __77__CCUIModuleInstanceManager__instantiateModuleWithMetadata_uniqueIdentifier___block_invoke(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC8F0];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21E9F5000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will instantiate internal module", &v7, 0xCu);
  }

  v4 = [*(*(a1[6] + 8) + 40) initWithSystemAgent:*(a1[5] + 16)];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __77__CCUIModuleInstanceManager__instantiateModuleWithMetadata_uniqueIdentifier___block_invoke_99(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC8F0];
  if (os_log_type_enabled(*MEMORY[0x277CFC8F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21E9F5000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will instantiate module", &v7, 0xCu);
  }

  v4 = [*(*(*(a1 + 40) + 8) + 40) init];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)loadAlertModuleWithBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"moduleIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)obtainModuleWithBundleIdentifier:uniqueIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"moduleIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)obtainModuleWithBundleIdentifier:uniqueIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"uniqueIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeModuleWithUniqueIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"uniqueIdentifier != nil" object:? file:? lineNumber:? description:?];
}

@end