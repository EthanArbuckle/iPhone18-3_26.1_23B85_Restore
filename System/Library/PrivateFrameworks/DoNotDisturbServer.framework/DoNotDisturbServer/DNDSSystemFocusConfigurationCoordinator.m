@interface DNDSSystemFocusConfigurationCoordinator
- (DNDSSystemFocusConfigurationCoordinator)initWithAppConfigurationManager:(id)a3;
- (DNDSSystemFocusConfigurationCoordinatorDelegate)delegate;
- (id)_currentModeIdentifier;
- (void)_executeAction:(id)a3;
- (void)appConfigurationManager:(id)a3 didClearSystemAction:(id)a4 modeIdentifier:(id)a5;
- (void)appConfigurationManager:(id)a3 didClearSystemActionsInModeIdentifiers:(id)a4;
- (void)appConfigurationManager:(id)a3 didSetSystemAction:(id)a4 modeIdentifier:(id)a5;
- (void)handleStateUpdate:(id)a3;
- (void)workflowRunnerClient:(id)a3 didFinishRunningAction:(id)a4 withReverseAction:(id)a5;
@end

@implementation DNDSSystemFocusConfigurationCoordinator

- (DNDSSystemFocusConfigurationCoordinator)initWithAppConfigurationManager:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DNDSSystemFocusConfigurationCoordinator;
  v6 = [(DNDSSystemFocusConfigurationCoordinator *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.donotdisturb.private.system-actions", v7);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;

    v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    clientToModeIdentifier = v6->_clientToModeIdentifier;
    v6->_clientToModeIdentifier = v10;

    objc_storeStrong(&v6->_appConfigurationManager, a3);
    [v5 addDelegate:v6];
  }

  return v6;
}

- (void)handleStateUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 previousState];
  v6 = [v5 activeModeConfiguration];
  v7 = [v6 mode];

  v8 = [v4 state];
  v9 = [v8 activeModeConfiguration];
  v10 = [v9 mode];

  v11 = [v7 modeIdentifier];
  v12 = [v10 modeIdentifier];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_7;
  }

  v14 = [v7 modeIdentifier];
  if (!v14)
  {
LABEL_10:

LABEL_11:
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__DNDSSystemFocusConfigurationCoordinator_handleStateUpdate___block_invoke;
    block[3] = &unk_278F89F48;
    v24 = v4;
    v25 = self;
    dispatch_async(workQueue, block);

    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v10 modeIdentifier];
  if (!v16)
  {

    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v7 modeIdentifier];
  v19 = [v10 modeIdentifier];
  v22 = [v18 isEqual:v19];

  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_7:
  v20 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring request to coordinate system configurations; from and to mode are the same.", buf, 2u);
  }

LABEL_12:
}

void __61__DNDSSystemFocusConfigurationCoordinator_handleStateUpdate___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 state];
    v6 = [v5 activeModeIdentifier];
    v7 = [*(a1 + 32) previousState];
    v8 = [v7 activeModeIdentifier];
    v9 = [*(a1 + 40) _currentModeIdentifier];
    *buf = 138543874;
    v43 = v6;
    v44 = 2114;
    v45 = v8;
    v46 = 2114;
    v47 = v9;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Handling state update: %{public}@; previous: %{public}@ (%{public}@)", buf, 0x20u);
  }

  v10 = [*(a1 + 32) state];
  v11 = [v10 activeModeIdentifier];

  if (v11)
  {
    v12 = [*(*(a1 + 40) + 16) systemActionsForModeIdentifier:v11 error:0];
    v13 = [v12 bs_filter:&__block_literal_global_12];
  }

  else
  {
    v13 = 0;
  }

  v14 = [*(a1 + 32) previousState];
  v15 = [v14 activeModeIdentifier];

  if (v15)
  {
    v16 = [*(*(a1 + 40) + 16) systemActionsForModeIdentifier:v15 error:0];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          if ([v21 isEnabled])
          {
            v22 = *(a1 + 40);
            v23 = [v21 reverseAction];
            [v22 _executeAction:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(a1 + 40);
        v30 = [*(*(&v32 + 1) + 8 * j) action];
        [v29 _executeAction:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v26);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_executeAction:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D7A0D8]) initWithContextualAction:v4];
    clientToModeIdentifier = self->_clientToModeIdentifier;
    v7 = [(DNDSSystemFocusConfigurationCoordinator *)self _currentModeIdentifier];
    [(NSMapTable *)clientToModeIdentifier setObject:v7 forKey:v5];

    [v5 setDelegate:self];
    v8 = DNDSLogSystemFocusConfiguration;
    if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = v5;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Running system action: runner=%p; action=%{public}@", &v10, 0x16u);
    }

    [v5 start];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)appConfigurationManager:(id)a3 didClearSystemAction:(id)a4 modeIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(DNDSSystemFocusConfigurationCoordinator *)self _currentModeIdentifier];
  if ([v9 isEqualToString:v8])
  {
    v10 = [v7 reverseAction];

    if (v10)
    {
      workQueue = self->_workQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didClearSystemAction_modeIdentifier___block_invoke;
      block[3] = &unk_278F89E30;
      v13 = v7;
      v14 = v8;
      v15 = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }
}

void __103__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didClearSystemAction_modeIdentifier___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = *(a1 + 40);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Running reverse action due to action deletion in active mode. identifier=%{public}@; mode=%{public}@", &v10, 0x16u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) reverseAction];
  [v7 _executeAction:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)appConfigurationManager:(id)a3 didSetSystemAction:(id)a4 modeIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(DNDSSystemFocusConfigurationCoordinator *)self _currentModeIdentifier];
  v10 = [v9 isEqualToString:v8];

  if (v10)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didSetSystemAction_modeIdentifier___block_invoke;
    block[3] = &unk_278F89E30;
    v13 = v7;
    v14 = v8;
    v15 = self;
    dispatch_async(workQueue, block);
  }
}

void __101__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didSetSystemAction_modeIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    if ([v3 isEnabled])
    {
      v5 = &stru_285C26090;
    }

    else
    {
      v5 = @" reverse";
    }

    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 40);
    v13 = 138543874;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "Running%{public}@ action due to action update in active mode. identifier=%{public}@; mode=%{public}@", &v13, 0x20u);
  }

  v8 = [*(a1 + 32) isEnabled];
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  if (v8)
  {
    [v10 action];
  }

  else
  {
    [v10 reverseAction];
  }
  v11 = ;
  [v9 _executeAction:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)appConfigurationManager:(id)a3 didClearSystemActionsInModeIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [(DNDSSystemFocusConfigurationCoordinator *)self _currentModeIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didClearSystemActionsInModeIdentifiers___block_invoke;
    block[3] = &unk_278F89E30;
    v10 = v5;
    v11 = v6;
    v12 = self;
    dispatch_async(workQueue, block);
  }
}

void __106__DNDSSystemFocusConfigurationCoordinator_appConfigurationManager_didClearSystemActionsInModeIdentifiers___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v2 valueForKey:@"identifier"];
    *buf = 138543618;
    v23 = v4;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Running reverse actions due to action deletion in active mode. mode=%{public}@; identifiers=%{public}@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 reverseAction];

        if (v13)
        {
          v14 = *(a1 + 48);
          v15 = [v12 reverseAction];
          [v14 _executeAction:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningAction:(id)a4 withReverseAction:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DNDSLogSystemFocusConfiguration;
  if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Finished running system action: runner=%p; action=%{public}@; reverse=%{public}@", buf, 0x20u);
  }

  workQueue = self->_workQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__DNDSSystemFocusConfigurationCoordinator_workflowRunnerClient_didFinishRunningAction_withReverseAction___block_invoke;
  v17[3] = &unk_278F8AB30;
  v17[4] = self;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  dispatch_sync(workQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __105__DNDSSystemFocusConfigurationCoordinator_workflowRunnerClient_didFinishRunningAction_withReverseAction___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (v2)
  {
    if (*(a1 + 48) && (v3 = *(a1 + 56), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && ([*(a1 + 32) _currentModeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "isEqualToString:", v4), v4, v5))
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(*(a1 + 32) + 16);
    v8 = [*(a1 + 56) identifier];
    v9 = [v7 updateSystemActionWithReverseAction:v6 actionIdentifier:v8 modeIdentifier:v2];
  }

  else
  {
    v10 = DNDSLogSystemFocusConfiguration;
    if (os_log_type_enabled(DNDSLogSystemFocusConfiguration, OS_LOG_TYPE_ERROR))
    {
      __105__DNDSSystemFocusConfigurationCoordinator_workflowRunnerClient_didFinishRunningAction_withReverseAction___block_invoke_cold_1(a1, v10);
    }
  }
}

- (id)_currentModeIdentifier
{
  v3 = [(DNDSSystemFocusConfigurationCoordinator *)self delegate];
  v4 = [v3 currentStateForSystemFocusConfigurationCoordinator:self];
  v5 = [v4 activeModeIdentifier];

  return v5;
}

- (DNDSSystemFocusConfigurationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __105__DNDSSystemFocusConfigurationCoordinator_workflowRunnerClient_didFinishRunningAction_withReverseAction___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = [v3 identifier];
  v6 = *(a1 + 56);
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_24912E000, v4, OS_LOG_TYPE_ERROR, "Lost track of mode associated with action. identifier=%{public}@; action=%{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end