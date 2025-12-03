@interface DNDSAppFocusConfigurationCoordinator
- (BOOL)_removeTask:(id)task fromGroupWithIdentifier:(id)identifier;
- (BOOL)_shouldExecuteActionOnApplicationWithBundleIdentifier:(id)identifier;
- (BOOL)resetAppConfigurationState;
- (DNDSAppFocusConfigurationCoordinator)initWithAppConfigurationManager:(id)manager keybagProviding:(id)providing xpcEventPublisher:(id)publisher;
- (DNDSAppFocusConfigurationCoordinatorDelegate)delegate;
- (id)_currentModeIdentifier;
- (id)_groupIdentifierForStateUpdate:(id)update;
- (void)_addTask:(id)task toGroupWithIdentifier:(id)identifier;
- (void)_executeAction:(id)action orActionIdentifier:(id)identifier withBundleIdentifier:(id)bundleIdentifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier exiting:(BOOL)exiting metadata:(id)metadata;
- (void)_executeAction:(id)action orActionIdentifier:(id)identifier withBundleIdentifier:(id)bundleIdentifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier exiting:(BOOL)exiting metadataProvider:(id)provider;
- (void)_executeAction:(id)action withBundleIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier;
- (void)_executeOrQueueTask:(id)task completion:(id)completion;
- (void)_executeQueuedTaskFollowingTask:(id)task;
- (void)_groupWithIdentifierCompleted:(id)completed;
- (void)_incrementTasksExecutedForGroupWithIdentifier:(id)identifier;
- (void)_workQueue_handleFirstLaunch;
- (void)_xpcCheckIn;
- (void)appConfigurationManager:(id)manager didClearActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier;
- (void)appConfigurationManager:(id)manager didClearActionsForAppsInModeIdentifiers:(id)identifiers;
- (void)appConfigurationManager:(id)manager didSetAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier;
- (void)handleStateUpdate:(id)update;
- (void)keybagDidUnlockForTheFirstTime:(id)time;
@end

@implementation DNDSAppFocusConfigurationCoordinator

- (DNDSAppFocusConfigurationCoordinator)initWithAppConfigurationManager:(id)manager keybagProviding:(id)providing xpcEventPublisher:(id)publisher
{
  managerCopy = manager;
  providingCopy = providing;
  publisherCopy = publisher;
  v23.receiver = self;
  v23.super_class = DNDSAppFocusConfigurationCoordinator;
  v12 = [(DNDSAppFocusConfigurationCoordinator *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.donotdisturb.private.app-focus-filter.queue", v13);
    workQueue = v12->_workQueue;
    v12->_workQueue = v14;

    objc_storeStrong(&v12->_appConfigurationManager, manager);
    [managerCopy addDelegate:v12];
    objc_storeStrong(&v12->_xpcEventPublisher, publisher);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    queuedTasksByBundleIdentifier = v12->_queuedTasksByBundleIdentifier;
    v12->_queuedTasksByBundleIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    taskGroups = v12->_taskGroups;
    v12->_taskGroups = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    groupDetails = v12->_groupDetails;
    v12->_groupDetails = dictionary3;

    [(DNDSAppFocusConfigurationCoordinator *)v12 _xpcCheckIn];
    objc_storeStrong(&v12->_keybag, providing);
  }

  return v12;
}

- (void)handleStateUpdate:(id)update
{
  updateCopy = update;
  if (([(DNDSKeybagStateProviding *)self->_keybag hasUnlockedSinceBoot]& 1) != 0)
  {
    previousState = [updateCopy previousState];
    activeModeConfiguration = [previousState activeModeConfiguration];
    mode = [activeModeConfiguration mode];

    state = [updateCopy state];
    activeModeConfiguration2 = [state activeModeConfiguration];
    mode2 = [activeModeConfiguration2 mode];

    modeIdentifier = [mode modeIdentifier];
    modeIdentifier2 = [mode2 modeIdentifier];
    v13 = modeIdentifier2;
    if (modeIdentifier != modeIdentifier2)
    {
      modeIdentifier3 = [mode modeIdentifier];
      if (modeIdentifier3)
      {
        v15 = modeIdentifier3;
        modeIdentifier4 = [mode2 modeIdentifier];
        if (modeIdentifier4)
        {
          v17 = modeIdentifier4;
          modeIdentifier5 = [mode modeIdentifier];
          modeIdentifier6 = [mode2 modeIdentifier];
          v23 = [modeIdentifier5 isEqual:modeIdentifier6];

          if (!v23)
          {
            goto LABEL_14;
          }

LABEL_10:
          v21 = DNDSLogAppFocusConfiguration;
          if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring request to coordinate app configurations; from and to mode are the same.", buf, 2u);
          }

          goto LABEL_15;
        }
      }

LABEL_14:
      workQueue = self->_workQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__DNDSAppFocusConfigurationCoordinator_handleStateUpdate___block_invoke;
      block[3] = &unk_278F89F48;
      v25 = updateCopy;
      selfCopy = self;
      dispatch_async(workQueue, block);

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v20 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring request to coordinate app configurations; device has not unlocked since boot.", buf, 2u);
  }

LABEL_16:
}

void __58__DNDSAppFocusConfigurationCoordinator_handleStateUpdate___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 state];
    v6 = [v5 activeModeIdentifier];
    v7 = [*(a1 + 32) previousState];
    v8 = [v7 activeModeIdentifier];
    *buf = 138543618;
    v78 = v6;
    v79 = 2114;
    v80 = v8;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Handling state update: %{public}@; previous: %{public}@", buf, 0x16u);
  }

  v9 = [*(a1 + 32) state];
  v56 = [v9 activeModeIdentifier];

  v10 = [*(a1 + 40) _groupIdentifierForStateUpdate:*(a1 + 32)];
  v55 = objc_alloc_init(MEMORY[0x277D23C30]);
  v11 = [*(a1 + 32) state];
  v12 = [v11 activeModeIdentifier];

  v57 = a1;
  v48 = v12;
  if (v12)
  {
    v13 = [*(*(a1 + 40) + 40) appActionsForModeIdentifier:v12 error:0];
    v14 = [v13 mutableCopy];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v71;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v71 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v70 + 1) + 8 * i);
          v21 = [v15 objectForKeyedSubscript:v20];
          v22 = [v21 bs_filter:&__block_literal_global_25];
          [v14 setObject:v22 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v70 objects:v76 count:16];
      }

      while (v17);
    }

    v23 = [v14 copy];
  }

  else
  {
    v23 = 0;
  }

  v24 = [*(a1 + 32) previousState];
  v25 = [v24 activeModeIdentifier];

  if (v25)
  {
    v47 = v25;
    [*(*(a1 + 40) + 40) appActionsForModeIdentifier:v25 error:0];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v26 = v69 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v67;
      v50 = v26;
      v51 = v23;
      v49 = *v67;
      do
      {
        v30 = 0;
        v52 = v28;
        do
        {
          if (*v67 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v66 + 1) + 8 * v30);
          v32 = objc_autoreleasePoolPush();
          v33 = [v23 objectForKeyedSubscript:v31];
          if (![v33 count])
          {
            v53 = v32;
            v54 = v30;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v34 = [v26 objectForKeyedSubscript:v31];
            v35 = [v34 countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v63;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v63 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v62 + 1) + 8 * j);
                  if ([v39 isEnabled])
                  {
                    [*(v57 + 40) _incrementTasksExecutedForGroupWithIdentifier:v10];
                    v40 = *(v57 + 40);
                    v41 = [v39 action];
                    v42 = [v31 bundleID];
                    [v40 _executeAction:v41 orActionIdentifier:0 withBundleIdentifier:v42 modeIdentifier:v56 groupIdentifier:v10 exiting:1 metadataProvider:v55];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v62 objects:v74 count:16];
              }

              while (v36);
            }

            v26 = v50;
            v23 = v51;
            v29 = v49;
            v28 = v52;
            v32 = v53;
            v30 = v54;
          }

          objc_autoreleasePoolPop(v32);
          ++v30;
        }

        while (v30 != v28);
        v28 = [v26 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v28);
    }

    v25 = v47;
    a1 = v57;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __58__DNDSAppFocusConfigurationCoordinator_handleStateUpdate___block_invoke_2;
  v58[3] = &unk_278F8B770;
  v58[4] = *(a1 + 40);
  v59 = v10;
  v60 = v56;
  v61 = v55;
  v43 = v55;
  v44 = v56;
  v45 = v10;
  [v23 enumerateKeysAndObjectsUsingBlock:v58];

  v46 = *MEMORY[0x277D85DE8];
}

void __58__DNDSAppFocusConfigurationCoordinator_handleStateUpdate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        [*(a1 + 32) _incrementTasksExecutedForGroupWithIdentifier:*(a1 + 40)];
        v14 = *(a1 + 32);
        v15 = [v13 action];
        v16 = [v5 bundleID];
        [v14 _executeAction:v15 orActionIdentifier:0 withBundleIdentifier:v16 modeIdentifier:*(a1 + 48) groupIdentifier:*(a1 + 40) exiting:0 metadataProvider:*(a1 + 56)];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)resetAppConfigurationState
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DNDSAppFocusConfigurationCoordinator_resetAppConfigurationState__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(workQueue, block);
  return 1;
}

- (void)appConfigurationManager:(id)manager didClearActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  _currentModeIdentifier = [(DNDSAppFocusConfigurationCoordinator *)self _currentModeIdentifier];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __133__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didClearActionWithIdentifier_forApplicationIdentifier_modeIdentifier___block_invoke;
  block[3] = &unk_278F8B118;
  v19 = _currentModeIdentifier;
  v20 = modeIdentifierCopy;
  v21 = identifierCopy;
  v22 = applicationIdentifierCopy;
  selfCopy = self;
  v14 = applicationIdentifierCopy;
  v15 = identifierCopy;
  v16 = modeIdentifierCopy;
  v17 = _currentModeIdentifier;
  dispatch_async(workQueue, block);
}

void __133__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didClearActionWithIdentifier_forApplicationIdentifier_modeIdentifier___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqualToString:*(a1 + 40)])
  {
    v2 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v3 = *(a1 + 56);
      v5 = v2;
      v6 = [v3 bundleID];
      v7 = *(a1 + 40);
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Running default action due to action deletion in active mode. identifier=%@; bundle=%@; mode=%@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = objc_alloc_init(MEMORY[0x277D23C30]);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) bundleID];
    [v10 _executeAction:0 orActionIdentifier:v11 withBundleIdentifier:v12 modeIdentifier:*(a1 + 40) groupIdentifier:v8 exiting:1 metadataProvider:v9];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)appConfigurationManager:(id)manager didSetAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier
{
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  _currentModeIdentifier = [(DNDSAppFocusConfigurationCoordinator *)self _currentModeIdentifier];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didSetAction_forApplicationIdentifier_modeIdentifier___block_invoke;
  block[3] = &unk_278F8B118;
  v19 = _currentModeIdentifier;
  v20 = modeIdentifierCopy;
  v21 = actionCopy;
  v22 = identifierCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v15 = actionCopy;
  v16 = modeIdentifierCopy;
  v17 = _currentModeIdentifier;
  dispatch_async(workQueue, block);
}

void __117__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didSetAction_forApplicationIdentifier_modeIdentifier___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqualToString:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) isEnabled];
    v3 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = v3;
      v6 = [v4 identifier];
      v7 = [*(a1 + 56) bundleID];
      v8 = *(a1 + 40);
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Running action due to action update in active mode. identifier=%@; bundle=%@; mode=%@", buf, 0x20u);
    }

    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = objc_alloc_init(MEMORY[0x277D23C30]);
    v11 = *(a1 + 64);
    v12 = [*(a1 + 48) action];
    v13 = [*(a1 + 56) bundleID];
    [v11 _executeAction:v12 orActionIdentifier:0 withBundleIdentifier:v13 modeIdentifier:*(a1 + 40) groupIdentifier:v9 exiting:v2 ^ 1u metadataProvider:v10];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)appConfigurationManager:(id)manager didClearActionsForAppsInModeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _currentModeIdentifier = [(DNDSAppFocusConfigurationCoordinator *)self _currentModeIdentifier];
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didClearActionsForAppsInModeIdentifiers___block_invoke;
  block[3] = &unk_278F89E30;
  v11 = identifiersCopy;
  v12 = _currentModeIdentifier;
  selfCopy = self;
  v8 = _currentModeIdentifier;
  v9 = identifiersCopy;
  dispatch_async(workQueue, block);
}

void __104__DNDSAppFocusConfigurationCoordinator_appConfigurationManager_didClearActionsForAppsInModeIdentifiers___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v4 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412546;
      v48 = v5;
      v49 = 2112;
      v50 = v3;
      _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Running default actions due to deletion of active mode. mode=%@; apps=%@", buf, 0x16u);
    }

    v29 = objc_alloc_init(MEMORY[0x277D23C30]);
    v6 = [MEMORY[0x277CCAD78] UUID];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v3;
    v30 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v30)
    {
      v28 = *v42;
      do
      {
        v7 = 0;
        do
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v7;
          v8 = *(*(&v41 + 1) + 8 * v7);
          context = objc_autoreleasePoolPush();
          v33 = [v8 bundleID];
          v9 = [*(a1 + 48) _effectiveBundleIDForBundleID:?];
          v10 = MEMORY[0x277CBEB98];
          v11 = [MEMORY[0x277D23940] focusConfigurationProtocol];
          v12 = [v10 setWithObject:v11];
          v40 = 0;
          v13 = [v29 actionsConformingToSystemProtocols:v12 logicalType:1 bundleIdentifier:v9 error:&v40];
          v14 = v40;

          if (v14)
          {
            v15 = DNDSLogAppFocusConfiguration;
            if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v48 = v9;
              v49 = 2114;
              v50 = v14;
              _os_log_error_impl(&dword_24912E000, v15, OS_LOG_TYPE_ERROR, "Failed to find actions for %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v31 = v14;
          v32 = v13;
          v16 = [v13 objectForKeyedSubscript:v9];
          v17 = [v16 allValues];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v37;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v36 + 1) + 8 * i);
                v24 = *(a1 + 48);
                v25 = [v23 identifier];
                [v24 _executeAction:0 orActionIdentifier:v25 withBundleIdentifier:v9 modeIdentifier:*(a1 + 40) groupIdentifier:v6 exiting:1 metadata:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v20);
          }

          objc_autoreleasePoolPop(context);
          v7 = v35 + 1;
        }

        while (v35 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v30);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)keybagDidUnlockForTheFirstTime:(id)time
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DNDSAppFocusConfigurationCoordinator_keybagDidUnlockForTheFirstTime___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_currentModeIdentifier
{
  delegate = [(DNDSAppFocusConfigurationCoordinator *)self delegate];
  v4 = [delegate currentStateForAppFocusConfigurationCoordinator:self];
  activeModeIdentifier = [v4 activeModeIdentifier];

  return activeModeIdentifier;
}

- (void)_executeAction:(id)action orActionIdentifier:(id)identifier withBundleIdentifier:(id)bundleIdentifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier exiting:(BOOL)exiting metadataProvider:(id)provider
{
  exitingCopy = exiting;
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  modeIdentifierCopy = modeIdentifier;
  groupIdentifierCopy = groupIdentifier;
  providerCopy = provider;
  if (actionCopy)
  {
    identifier = [actionCopy identifier];

    identifierCopy = identifier;
  }

  v26 = bundleIdentifierCopy;
  v21 = [(DNDSAppFocusConfigurationCoordinator *)self _effectiveBundleIDForBundleID:bundleIdentifierCopy];
  v27 = 0;
  v22 = [providerCopy actionForBundleIdentifier:v21 andActionIdentifier:identifierCopy error:&v27];
  v23 = v27;
  if (v23)
  {
    v24 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDSAppFocusConfigurationCoordinator _executeAction:v26 orActionIdentifier:v24 withBundleIdentifier:v23 modeIdentifier:? groupIdentifier:? exiting:? metadataProvider:?];
    }
  }

  [(DNDSAppFocusConfigurationCoordinator *)self _executeAction:actionCopy orActionIdentifier:identifierCopy withBundleIdentifier:v21 modeIdentifier:modeIdentifierCopy groupIdentifier:groupIdentifierCopy exiting:exitingCopy metadata:v22];
}

- (void)_executeAction:(id)action orActionIdentifier:(id)identifier withBundleIdentifier:(id)bundleIdentifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier exiting:(BOOL)exiting metadata:(id)metadata
{
  exitingCopy = exiting;
  v67 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  modeIdentifierCopy = modeIdentifier;
  groupIdentifierCopy = groupIdentifier;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_workQueue);
  v49 = exitingCopy;
  if (actionCopy)
  {
    identifier = [actionCopy identifier];

    identifierCopy = identifier;
  }

  v22 = [objc_alloc(MEMORY[0x277D237E8]) initWithType:0 bundleIdentifier:bundleIdentifierCopy url:0];
  v23 = [(DNDSAppFocusConfigurationCoordinator *)self _shouldExecuteActionOnApplicationWithBundleIdentifier:bundleIdentifierCopy];
  if (!metadataCopy)
  {
    v35 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v61 = identifierCopy;
      v62 = 2114;
      v63 = v22;
      v64 = 2114;
      v65 = 0;
      _os_log_impl(&dword_24912E000, v35, OS_LOG_TYPE_DEFAULT, "Failed to find metadata for action. The app may not be installed. action=%{public}@; bundle=%{public}@; %{public}@", buf, 0x20u);
    }

    goto LABEL_32;
  }

  v24 = v23;
  v47 = groupIdentifierCopy;
  v48 = actionCopy;
  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  v26 = effectiveBundleIdentifiers;
  if (v24 && [effectiveBundleIdentifiers containsObject:v22])
  {
    v27 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v61 = identifierCopy;
      v62 = 2114;
      v63 = v22;
      _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Application is running; will use for action %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v45 = modeIdentifierCopy;
    v46 = bundleIdentifierCopy;
    v31 = *v57;
LABEL_10:
    v32 = 0;
    while (1)
    {
      if (*v57 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v56 + 1) + 8 * v32);
      if (([v33 isEqual:{v22, v45, v46}] & 1) == 0 && objc_msgSend(v33, "type") == 1)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v30)
        {
          goto LABEL_10;
        }

        v34 = v22;
        goto LABEL_23;
      }
    }

    v34 = [v33 copy];

    v36 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v61 = identifierCopy;
      v62 = 2114;
      v63 = v34;
      _os_log_impl(&dword_24912E000, v36, OS_LOG_TYPE_DEFAULT, "Found extension for action %{public}@: %{public}@", buf, 0x16u);
      modeIdentifierCopy = v45;
      bundleIdentifierCopy = v46;
      goto LABEL_24;
    }

LABEL_23:
    modeIdentifierCopy = v45;
    bundleIdentifierCopy = v46;
  }

  else
  {
    v34 = v22;
  }

LABEL_24:

  if ([v34 type] == 1)
  {
    v22 = v34;
LABEL_26:

    if (v49)
    {
      v37 = objc_alloc(MEMORY[0x277D23850]);
      [v22 bundleIdentifier];
      v39 = v38 = modeIdentifierCopy;
      v40 = [v37 initWithActionIdentifier:identifierCopy bundleIdentifier:v39];

      modeIdentifierCopy = v38;
      v41 = [objc_alloc(MEMORY[0x277D23AF0]) initWithActionIdentifier:v40 actionMetadata:metadataCopy];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke;
      v50[3] = &unk_278F8B798;
      v34 = v22;
      v51 = v34;
      selfCopy = self;
      v53 = v38;
      v54 = v47;
      v55 = identifierCopy;
      [v41 loadDefaultValuesWithCompletionHandler:v50];

      groupIdentifierCopy = v47;
      actionCopy = v48;
      goto LABEL_33;
    }

    bundleIdentifier = [v22 bundleIdentifier];
    groupIdentifierCopy = v47;
    actionCopy = v48;
    [(DNDSAppFocusConfigurationCoordinator *)self _executeAction:v48 withBundleIdentifier:bundleIdentifier modeIdentifier:modeIdentifierCopy groupIdentifier:v47];

LABEL_32:
    v34 = v22;
    goto LABEL_33;
  }

  v42 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v61 = v34;
    v62 = 2114;
    v63 = identifierCopy;
    _os_log_impl(&dword_24912E000, v42, OS_LOG_TYPE_DEFAULT, "No extension for action in app; background update unavailable. app=%{public}@; action=%{public}@", buf, 0x16u);
  }

  groupIdentifierCopy = v47;
  actionCopy = v48;
LABEL_33:

  v44 = *MEMORY[0x277D85DE8];
}

void __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DNDSLogAppFocusConfiguration;
  if (v5)
  {
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 bundleIdentifier];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Found default action for %{public}@. action=%{public}@", buf, 0x16u);
    }

    v11 = *(a1 + 40);
    v12 = *(v11 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke_19;
    block[3] = &unk_278F8B118;
    block[4] = v11;
    v15 = v5;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    dispatch_async(v12, block);
  }

  else if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
  {
    __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke_cold_1(a1, v6, v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) bundleIdentifier];
  [v2 _executeAction:v3 withBundleIdentifier:v4 modeIdentifier:*(a1 + 56) groupIdentifier:*(a1 + 64)];
}

- (void)_executeAction:(id)action withBundleIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier groupIdentifier:(id)groupIdentifier
{
  v35 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  groupIdentifierCopy = groupIdentifier;
  v14 = [[DNDSAppFocusConfigurationTask alloc] initWithAction:actionCopy bundleIdentifier:identifierCopy];
  taskIdentifier = [(DNDSAppFocusConfigurationTask *)v14 taskIdentifier];
  v16 = DNDSLogAppFocusConfiguration;
  if (taskIdentifier)
  {
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      taskIdentifier2 = [(DNDSAppFocusConfigurationTask *)v14 taskIdentifier];
      *buf = 138543618;
      v28 = taskIdentifier2;
      v29 = 2114;
      v30 = groupIdentifierCopy;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Added action execution task=%{public}@ for group=%{public}@", buf, 0x16u);
    }

    [(DNDSAppFocusConfigurationCoordinator *)self _addTask:v14 toGroupWithIdentifier:groupIdentifierCopy];
    objc_initWeak(buf, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__DNDSAppFocusConfigurationCoordinator__executeAction_withBundleIdentifier_modeIdentifier_groupIdentifier___block_invoke;
    v22[3] = &unk_278F8B7E8;
    objc_copyWeak(&v26, buf);
    v23 = identifierCopy;
    v24 = modeIdentifierCopy;
    v25 = groupIdentifierCopy;
    [(DNDSAppFocusConfigurationCoordinator *)self _executeOrQueueTask:v14 completion:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
  {
    v20 = v16;
    identifier = [actionCopy identifier];
    *buf = 138544130;
    v28 = identifier;
    v29 = 2114;
    v30 = identifierCopy;
    v31 = 2114;
    v32 = modeIdentifierCopy;
    v33 = 2114;
    v34 = groupIdentifierCopy;
    _os_log_error_impl(&dword_24912E000, v20, OS_LOG_TYPE_ERROR, "Unable to add action execution task; actionIdentifier=%{public}@ bundleIdentifier=%{public}@ modeIdentifier=%{public}@ group=%{public}@", buf, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __107__DNDSAppFocusConfigurationCoordinator__executeAction_withBundleIdentifier_modeIdentifier_groupIdentifier___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained[1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__DNDSAppFocusConfigurationCoordinator__executeAction_withBundleIdentifier_modeIdentifier_groupIdentifier___block_invoke_2;
  v11[3] = &unk_278F8B7C0;
  objc_copyWeak(&v17, a1 + 7);
  v12 = a1[4];
  v13 = a1[5];
  v14 = v6;
  v15 = v5;
  v16 = a1[6];
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v17);
}

void __107__DNDSAppFocusConfigurationCoordinator__executeAction_withBundleIdentifier_modeIdentifier_groupIdentifier___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = _DNDSPrimaryBundleIdentifier(*(a1 + 32));
  v4 = _DNDSContainingBundleIdentifier(*(a1 + 32));
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, *MEMORY[0x277D05848], [v4 UTF8String]);
  [WeakRetained[6] broadcastEvent:v5];
  if (*(a1 + 40))
  {
    v6 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v3];
    v7 = [*(a1 + 48) actionAppContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v7;
      v8 = v7;
      v9 = [*(a1 + 48) action];
      v32 = [v9 identifier];

      v10 = DNDSLogAppFocusConfiguration;
      if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 138544130;
        v36 = v8;
        v37 = 2114;
        v38 = v6;
        v39 = 2114;
        v40 = v32;
        v41 = 2114;
        v42 = v11;
        _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_DEFAULT, "Retrieved App Context %{public}@ for bundleIdentifier=%{public}@ actionIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
      }

      v30 = v8;
      v31 = v3;
      v12 = [v8 notificationFilterPredicate];
      if (v12)
      {
        v33 = 0;
        v34 = 0;
        v28 = objc_alloc_init(MEMORY[0x277D05A78]);
        v13 = [v28 validatePredicate:v12 compileTimeIssues:&v34 runTimeIssues:&v33];
        v14 = v34;
        v15 = v33;
        if ((v13 & 1) == 0)
        {
          v16 = DNDSLogAppFocusConfiguration;
          if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
          {
            if (v14)
            {
              v26 = v14;
            }

            else
            {
              v26 = v15;
            }

            v27 = *(a1 + 40);
            *buf = 138544130;
            v36 = v26;
            v37 = 2114;
            v38 = v6;
            v39 = 2114;
            v40 = v32;
            v41 = 2114;
            v42 = v27;
            _os_log_error_impl(&dword_24912E000, v16, OS_LOG_TYPE_ERROR, "Notification filter predicate from App Context did not validate, issues=%{public}@ bundleIdentifier=%{public}@ actionIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
          }

          v12 = 0;
        }

        v8 = v30;
      }

      v17 = [WeakRetained[5] setPredicate:v12 forActionIdentifier:v32 forApplicationIdentifier:v6 modeIdentifier:*(a1 + 40)];
      v18 = WeakRetained[5];
      [v8 targetContentIdentifierPrefix];
      v20 = v19 = v8;
      v21 = [v18 setTargetContentIdentifierPrefix:v20 forActionIdentifier:v32 forApplicationIdentifier:v6 modeIdentifier:*(a1 + 40)];

      v3 = v31;
      v7 = v29;
    }
  }

  if ([WeakRetained _removeTask:*(a1 + 56) fromGroupWithIdentifier:*(a1 + 64)])
  {
    v22 = DNDSLogAppFocusConfiguration;
    if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 64);
      *buf = 138543362;
      v36 = v23;
      _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Completed action execution(s) for group=%{public}@", buf, 0xCu);
    }

    [WeakRetained _groupWithIdentifierCompleted:*(a1 + 64)];
    v24 = [WeakRetained delegate];
    [v24 appFocusConfigurationCoordinator:WeakRetained didUpdateAppConfigurationContextForModeIdentifier:*(a1 + 40)];
  }

  [WeakRetained _executeQueuedTaskFollowingTask:*(a1 + 56)];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_executeOrQueueTask:(id)task completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  completionCopy = completion;
  bundleIdentifier = [taskCopy bundleIdentifier];
  v9 = _DNDSPrimaryBundleIdentifier(bundleIdentifier);

  v10 = [(NSMutableDictionary *)self->_queuedTasksByBundleIdentifier objectForKeyedSubscript:v9];
  array = [v10 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [taskCopy prepareWithCompletion:completionCopy];
  [array addObject:taskCopy];
  [(NSMutableDictionary *)self->_queuedTasksByBundleIdentifier setObject:array forKeyedSubscript:v9];
  v12 = DNDSLogAppFocusConfigurationTask;
  if (os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    taskIdentifier = [taskCopy taskIdentifier];
    v19 = 138543874;
    v20 = taskIdentifier;
    v21 = 2114;
    v22 = v9;
    v23 = 2048;
    v24 = [array count];
    _os_log_impl(&dword_24912E000, v13, OS_LOG_TYPE_DEFAULT, "Queued task=%{public}@ for bundleIdentifier=%{public}@ queuedTasks=%lu", &v19, 0x20u);
  }

  if ([array count] == 1)
  {
    v15 = DNDSLogAppFocusConfigurationTask;
    if (os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      taskIdentifier2 = [taskCopy taskIdentifier];
      v19 = 138543362;
      v20 = taskIdentifier2;
      _os_log_impl(&dword_24912E000, v16, OS_LOG_TYPE_DEFAULT, "Immediately executing task=%{public}@", &v19, 0xCu);
    }

    [taskCopy execute];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_executeQueuedTaskFollowingTask:(id)task
{
  v33 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  bundleIdentifier = [taskCopy bundleIdentifier];
  v6 = _DNDSPrimaryBundleIdentifier(bundleIdentifier);

  v7 = [(NSMutableDictionary *)self->_queuedTasksByBundleIdentifier objectForKeyedSubscript:v6];
  v8 = [v7 mutableCopy];

  if (v8 && [v8 count])
  {
    firstObject = [v8 firstObject];
    if (!firstObject)
    {
      goto LABEL_11;
    }

    taskIdentifier = [taskCopy taskIdentifier];
    taskIdentifier2 = [firstObject taskIdentifier];
    v12 = [taskIdentifier isEqual:taskIdentifier2];

    if (v12)
    {
      [v8 removeObject:firstObject];
      [(NSMutableDictionary *)self->_queuedTasksByBundleIdentifier setObject:v8 forKeyedSubscript:v6];
      v13 = DNDSLogAppFocusConfigurationTask;
      if (!os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v14 = v13;
      taskIdentifier3 = [taskCopy taskIdentifier];
      v27 = 138543874;
      v28 = taskIdentifier3;
      v29 = 2114;
      v30 = v6;
      v31 = 2048;
      v32 = [v8 count];
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Removed completed task=%{public}@ for bundleIdentifier=%{public}@ queuedTasks=%lu", &v27, 0x20u);
    }

    else
    {
      v18 = DNDSLogAppFocusConfigurationTask;
      if (!os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        firstObject2 = [v8 firstObject];
        v19 = DNDSLogAppFocusConfigurationTask;
        v20 = os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_DEFAULT);
        if (firstObject2)
        {
          if (v20)
          {
            v21 = v19;
            taskIdentifier4 = [taskCopy taskIdentifier];
            taskIdentifier5 = [firstObject taskIdentifier];
            v27 = 138543618;
            v28 = taskIdentifier4;
            v29 = 2114;
            v30 = taskIdentifier5;
            _os_log_impl(&dword_24912E000, v21, OS_LOG_TYPE_DEFAULT, "Executing task=%{public}@ queued behind task=%{public}@", &v27, 0x16u);
          }

          [firstObject2 execute];
        }

        else if (v20)
        {
          v24 = v19;
          taskIdentifier6 = [firstObject taskIdentifier];
          v27 = 138543618;
          v28 = v6;
          v29 = 2114;
          v30 = taskIdentifier6;
          _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Task queue for bundleIdentifier=%{public}@ empty following completion of task=%{public}@", &v27, 0x16u);
        }

        goto LABEL_17;
      }

      v14 = v18;
      taskIdentifier3 = [taskCopy taskIdentifier];
      v27 = 138543874;
      v28 = taskIdentifier3;
      v29 = 2114;
      v30 = v6;
      v31 = 2048;
      v32 = [v8 count];
      _os_log_error_impl(&dword_24912E000, v14, OS_LOG_TYPE_ERROR, "Completed task=%{public}@ for bundleIdentifier=%{public}@ was not the tracked 'current' task queuedTasks=%lu", &v27, 0x20u);
    }

    goto LABEL_11;
  }

  v16 = DNDSLogAppFocusConfigurationTask;
  if (os_log_type_enabled(DNDSLogAppFocusConfigurationTask, OS_LOG_TYPE_ERROR))
  {
    firstObject = v16;
    firstObject2 = [taskCopy taskIdentifier];
    v27 = 138543874;
    v28 = firstObject2;
    v29 = 2114;
    v30 = v6;
    v31 = 2048;
    v32 = [v8 count];
    _os_log_error_impl(&dword_24912E000, firstObject, OS_LOG_TYPE_ERROR, "Completed task=%{public}@ for bundleIdentifier=%{public}@ was not the tracked queuedTasks=%lu", &v27, 0x20u);
LABEL_17:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_groupIdentifierForStateUpdate:(id)update
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAD78];
  updateCopy = update;
  uUID = [v4 UUID];
  v10 = @"stateUpdate";
  v11[0] = updateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(NSMutableDictionary *)self->_groupDetails setObject:v7 forKey:uUID];

  v8 = *MEMORY[0x277D85DE8];

  return uUID;
}

- (void)_incrementTasksExecutedForGroupWithIdentifier:(id)identifier
{
  groupDetails = self->_groupDetails;
  identifierCopy = identifier;
  v6 = [(NSMutableDictionary *)groupDetails objectForKey:identifierCopy];
  v13 = [v6 mutableCopy];

  v7 = [v13 objectForKey:@"tasksExecuted"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v13 setObject:v10 forKey:@"tasksExecuted"];

  v11 = self->_groupDetails;
  v12 = [v13 copy];
  [(NSMutableDictionary *)v11 setObject:v12 forKey:identifierCopy];
}

- (void)_groupWithIdentifierCompleted:(id)completed
{
  v28 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  v5 = [(NSMutableDictionary *)self->_groupDetails objectForKey:completedCopy];
  v6 = [v5 objectForKey:@"stateUpdate"];
  v7 = [v5 objectForKey:@"tasksExecuted"];
  integerValue = [v7 integerValue];

  if (v6)
  {
    state = [v6 state];
    activeModeIdentifier = [state activeModeIdentifier];

    if (activeModeIdentifier && ([state activeModeConfiguration], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      mode = [v11 mode];
      v14 = DNDSPowerLogFocusModeSemanticTypeForDNDModeSemanticType([mode semanticType]);
    }

    else
    {
      v14 = -2;
    }

    updated = DNDSPowerLogFocusUpdateSourceForDNDStateUpdateSource([v6 source]);
    v16 = DNDSPowerLogFocusUpdateReasonForDNDStateUpdateReason([v6 reason]);
    v17 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_INFO))
    {
      v20 = 134218752;
      v21 = updated;
      v22 = 2048;
      v23 = v16;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = integerValue;
      _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_INFO, "Notifying PowerLog of Focus filter perform event: source=%ld reason=%ld semanticType=%ld extensionsLaunched=%ld", &v20, 0x2Au);
    }

    date = [MEMORY[0x277CBEAA8] date];
    DNDSPowerLogFocusFilterPerformEvent(date, updated, v16, v14, integerValue);

    [(NSMutableDictionary *)self->_groupDetails removeObjectForKey:completedCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addTask:(id)task toGroupWithIdentifier:(id)identifier
{
  taskCopy = task;
  taskGroups = self->_taskGroups;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)taskGroups objectForKeyedSubscript:identifierCopy];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  [v9 addObject:taskCopy];
  [(NSMutableDictionary *)self->_taskGroups setObject:v9 forKey:identifierCopy];
}

- (BOOL)_removeTask:(id)task fromGroupWithIdentifier:(id)identifier
{
  taskCopy = task;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_taskGroups objectForKeyedSubscript:identifierCopy];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  [v9 removeObject:taskCopy];
  v10 = [v9 count];
  taskGroups = self->_taskGroups;
  if (v10)
  {
    [(NSMutableDictionary *)taskGroups setObject:v9 forKey:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)taskGroups removeObjectForKey:identifierCopy];
  }

  v12 = [v9 count] == 0;

  return v12;
}

- (BOOL)_shouldExecuteActionOnApplicationWithBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:identifierCopy];
  descriptor = [MEMORY[0x277D46FB0] descriptor];
  v19 = 0;
  v6 = [MEMORY[0x277D46FA8] statesForPredicate:v4 withDescriptor:descriptor error:&v19];
  v7 = v19;
  if (!v7)
  {
    if (![v6 count])
    {
      v17 = DNDSLogAppFocusConfiguration;
      if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
      {
        [(DNDSAppFocusConfigurationCoordinator *)identifierCopy _shouldExecuteActionOnApplicationWithBundleIdentifier:v17];
      }

      goto LABEL_4;
    }

    if ([v6 count] != 1)
    {
      if ([v6 count] >= 2)
      {
        v18 = DNDSLogAppFocusConfiguration;
        if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
        {
          [(DNDSAppFocusConfigurationCoordinator *)identifierCopy _shouldExecuteActionOnApplicationWithBundleIdentifier:v18];
        }
      }

      goto LABEL_4;
    }

    firstObject = [v6 firstObject];
    taskState = [firstObject taskState];
    v14 = DNDSLogAppFocusConfiguration;
    v15 = os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT);
    v9 = taskState == 4;
    if (v9)
    {
      if (v15)
      {
        *buf = 138543362;
        v21 = identifierCopy;
        v16 = "Found process state running scheduled for application bundle; will use application if available. bundle=%{public}@";
LABEL_19:
        _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    else if (v15)
    {
      *buf = 138543362;
      v21 = identifierCopy;
      v16 = "Found process state other than running scheduled for application bundle; will use extension if available. bundle=%{public}@";
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  v8 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_ERROR))
  {
    [(DNDSAppFocusConfigurationCoordinator *)identifierCopy _shouldExecuteActionOnApplicationWithBundleIdentifier:v7, v8];
  }

LABEL_4:
  v9 = 0;
LABEL_5:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_workQueue_handleFirstLaunch
{
  v72 = *MEMORY[0x277D85DE8];
  _currentModeIdentifier = [(DNDSAppFocusConfigurationCoordinator *)self _currentModeIdentifier];
  v4 = DNDSLogAppFocusConfiguration;
  if (os_log_type_enabled(DNDSLogAppFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = _currentModeIdentifier;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Handling first launch/unlock: current=%{public}@", buf, 0xCu);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v41 = objc_alloc_init(MEMORY[0x277D23C30]);
  if (_currentModeIdentifier)
  {
    v6 = [(DNDSAppConfigurationManager *)self->_appConfigurationManager appActionsForModeIdentifier:_currentModeIdentifier error:0];
    context = [v6 mutableCopy];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v64;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v64 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v63 + 1) + 8 * i);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = [v13 bs_filter:&__block_literal_global_41_0];
          [context setObject:v14 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v9);
    }

    v15 = [context copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277CBEB98];
  focusConfigurationProtocol = [MEMORY[0x277D23940] focusConfigurationProtocol];
  v18 = [v16 setWithObject:focusConfigurationProtocol];
  v19 = [v41 actionsConformingToSystemProtocols:v18 logicalType:1 bundleIdentifier:0 error:0];

  v40 = v15;
  allKeys = [v15 allKeys];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __68__DNDSAppFocusConfigurationCoordinator__workQueue_handleFirstLaunch__block_invoke_2;
  v62[3] = &unk_278F8B810;
  v62[4] = self;
  v21 = [allKeys bs_map:v62];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = v19;
  v23 = [v22 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v59;
    v43 = v21;
    v44 = v22;
    v42 = *v59;
    do
    {
      v26 = 0;
      v45 = v24;
      do
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v58 + 1) + 8 * v26);
        v28 = [v22 objectForKeyedSubscript:v27];
        contexta = objc_autoreleasePoolPush();
        if (([v21 containsObject:v27] & 1) == 0)
        {
          v46 = v28;
          v47 = v26;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          allValues = [v28 allValues];
          v30 = [allValues countByEnumeratingWithState:&v54 objects:v67 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v55;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v55 != v32)
                {
                  objc_enumerationMutation(allValues);
                }

                v34 = *(*(&v54 + 1) + 8 * j);
                identifier = [v34 identifier];
                [(DNDSAppFocusConfigurationCoordinator *)self _executeAction:0 orActionIdentifier:identifier withBundleIdentifier:v27 modeIdentifier:_currentModeIdentifier groupIdentifier:uUID exiting:1 metadata:v34];
              }

              v31 = [allValues countByEnumeratingWithState:&v54 objects:v67 count:16];
            }

            while (v31);
          }

          v21 = v43;
          v22 = v44;
          v25 = v42;
          v24 = v45;
          v28 = v46;
          v26 = v47;
        }

        objc_autoreleasePoolPop(contexta);

        ++v26;
      }

      while (v26 != v24);
      v24 = [v22 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v24);
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __68__DNDSAppFocusConfigurationCoordinator__workQueue_handleFirstLaunch__block_invoke_3;
  v50[3] = &unk_278F8B770;
  v50[4] = self;
  v51 = _currentModeIdentifier;
  v52 = uUID;
  v53 = v41;
  v36 = v41;
  v37 = uUID;
  v38 = _currentModeIdentifier;
  [v40 enumerateKeysAndObjectsUsingBlock:v50];

  v39 = *MEMORY[0x277D85DE8];
}

id __68__DNDSAppFocusConfigurationCoordinator__workQueue_handleFirstLaunch__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleID];
  v4 = [v2 _effectiveBundleIDForBundleID:v3];

  return v4;
}

void __68__DNDSAppFocusConfigurationCoordinator__workQueue_handleFirstLaunch__block_invoke_3(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = a1[4];
        v15 = [v5 bundleID];
        v16 = [v14 _effectiveBundleIDForBundleID:v15];

        v17 = a1[4];
        v18 = [v13 action];
        [v17 _executeAction:v18 orActionIdentifier:0 withBundleIdentifier:v16 modeIdentifier:a1[5] groupIdentifier:a1[6] exiting:0 metadataProvider:a1[7]];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_xpcCheckIn
{
  v2 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __51__DNDSAppFocusConfigurationCoordinator__xpcCheckIn__block_invoke;
  handler[3] = &unk_278F8B838;
  handler[4] = self;
  xpc_activity_register("com.apple.donotdisturbd.app-focus-filters.first-launch", v2, handler);
}

void __51__DNDSAppFocusConfigurationCoordinator__xpcCheckIn__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__DNDSAppFocusConfigurationCoordinator__xpcCheckIn__block_invoke_2;
    v6[3] = &unk_278F89F48;
    v6[4] = v4;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

uint64_t __51__DNDSAppFocusConfigurationCoordinator__xpcCheckIn__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _workQueue_handleFirstLaunch];
  v2 = *(a1 + 40);

  return MEMORY[0x2822053D0](v2, 0);
}

- (DNDSAppFocusConfigurationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_executeAction:(void *)a3 orActionIdentifier:withBundleIdentifier:modeIdentifier:groupIdentifier:exiting:metadataProvider:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_24912E000, v5, OS_LOG_TYPE_ERROR, "Error fetching actionMetadata for bundle %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __143__DNDSAppFocusConfigurationCoordinator__executeAction_orActionIdentifier_withBundleIdentifier_modeIdentifier_groupIdentifier_exiting_metadata___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v6 = 138543874;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Failed to load default values for action. action=%{public}@; bundle=%{public}@; %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_shouldExecuteActionOnApplicationWithBundleIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Failed to determine process state for application bundle; will use extension if available. bundle=%{public}@; %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_shouldExecuteActionOnApplicationWithBundleIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Found multiple process states for application bundle; will use extension if available. bundle=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_shouldExecuteActionOnApplicationWithBundleIdentifier:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Failed to find process state for application bundle; will use extension if available. bundle=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end