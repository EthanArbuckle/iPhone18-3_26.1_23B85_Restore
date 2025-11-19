@interface COTimerService
+ (BOOL)_isAllowedClient:(id)a3;
+ (id)serviceWithDelegate:(id)a3;
- (BOOL)_applicableToCluster:(id)a3;
- (COTimerService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5;
- (id)_newClientForConnection:(id)a3;
- (void)_addOnAdded:(id)a3;
- (void)_addOnRemoved:(id)a3;
- (void)_clientLost:(id)a3;
- (void)_completeDispatchabilityStallActivity:(id)a3;
- (void)_configureServiceInterfacesOnConnection:(id)a3;
- (void)_didStopCanDispatchUpdate:(id)a3;
- (void)_postCanDispatchChangedAddOn:(id)a3;
- (void)_postNotificationName:(id)a3 connection:(id)a4 userInfo:(id)a5;
- (void)_postNotificationName:(id)a3 forAccessory:(id)a4 toAddOn:(id)a5;
- (void)_postNotificationName:(id)a3 forTimers:(id)a4 toAddOn:(id)a5 requiresUserInfo:(BOOL)a6;
- (void)addObserverForNotificationName:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 constraints:(id)a6 withCallback:(id)a7;
- (void)addTimer:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5;
- (void)didChangeCompositionForTimerAddOn:(id)a3;
- (void)didResetTimerAddOn:(id)a3;
- (void)dismissTimerWithIdentifier:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
- (void)removeObserverForNotificationName:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
- (void)removeTimer:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
- (void)timerAddOn:(id)a3 didAddTimers:(id)a4;
- (void)timerAddOn:(id)a3 didChangeTimers:(id)a4;
- (void)timerAddOn:(id)a3 didDismissTimers:(id)a4;
- (void)timerAddOn:(id)a3 didFireTimers:(id)a4;
- (void)timerAddOn:(id)a3 didRemoveTimers:(id)a4;
- (void)timerAddOn:(id)a3 didUpdateTimers:(id)a4;
- (void)timerAddOn:(id)a3 resetAccesory:(id)a4;
- (void)timersAsAccessory:(id)a3 asInstance:(id)a4 withCallback:(id)a5;
- (void)timersAsAccessory:(id)a3 forAccessories:(id)a4 callback:(id)a5;
- (void)updateTimer:(id)a3 asAccessory:(id)a4 withCallback:(id)a5;
@end

@implementation COTimerService

+ (id)serviceWithDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(COTimerAddOnListenerProvider);
  v6 = objc_alloc_init(COTimerAddOnProvider);
  v7 = [[a1 alloc] initWithListenerProvider:v5 addOnProvider:v6 delegate:v4];

  return v7;
}

- (COTimerService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5
{
  v9.receiver = self;
  v9.super_class = COTimerService;
  v5 = [(COService *)&v9 initWithListenerProvider:a3 addOnProvider:a4 delegate:a5];
  if (v5)
  {
    v6 = objc_alloc_init(COSignalsClientObserverSet);
    observers = v5->_observers;
    v5->_observers = v6;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

+ (BOOL)_isAllowedClient:(id)a3
{
  v3 = a3;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(COTimerService *)v3 _isAllowedClient:v4];
  }

  return 1;
}

- (void)_configureServiceInterfacesOnConnection:(id)a3
{
  v13.receiver = self;
  v13.super_class = COTimerService;
  v4 = a3;
  [(COService *)&v13 _configureServiceInterfacesOnConnection:v4];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857D6D38];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v13.receiver, v13.super_class}];
  [v5 setClasses:v8 forSelector:sel_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback_ argumentIndex:3 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];

  [v5 setClasses:v11 forSelector:sel_timersAsAccessory_forAccessories_callback_ argumentIndex:1 ofReply:0];
  [v4 setExportedInterface:v5];
  [v4 setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857E64B0];

  [v4 setRemoteObjectInterface:v12];
}

- (id)_newClientForConnection:(id)a3
{
  v3 = a3;
  v4 = [[COTimerServiceClient alloc] initWithConnection:v3];

  return v4;
}

- (void)_clientLost:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = COTimerService;
  [(COService *)&v20 _clientLost:v4];
  v5 = [(COTimerService *)self observers];
  v6 = [v4 connection];
  v7 = [v5 clientObserversForXPCConnection:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v5 removeClientObserver:v13 forNotificationName:{0, v16}];
        [(COTimerService *)self _didStopCanDispatchUpdate:v13];
        v14 = [v13 cluster];
        [(COService *)self _releaseAssertionForCluster:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addOnAdded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [v4 homekit];
  v6 = [v5 currentAccessory];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:v6];
    if (v7)
    {
      v8 = COCoreLogForCategory(3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v12 = self;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p TimerService added secondary cluster for accessory %@", buf, 0x16u);
      }

      [v4 establishSecondaryClusterForAccessory:v7];
    }
  }

  v10.receiver = self;
  v10.super_class = COTimerService;
  [(COService *)&v10 _addOnAdded:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)a3
{
  v4.receiver = self;
  v4.super_class = COTimerService;
  v3 = a3;
  [(COService *)&v4 _addOnRemoved:v3];
  [v3 setDelegate:{0, v4.receiver, v4.super_class}];
}

- (BOOL)_applicableToCluster:(id)a3
{
  v3 = [a3 label];
  v4 = [v3 isEqual:*MEMORY[0x277CFCEE8]];

  return v4;
}

- (void)_postNotificationName:(id)a3 connection:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__COTimerService__postNotificationName_connection_userInfo___block_invoke;
  v18[3] = &unk_278E16A88;
  v18[4] = self;
  v10 = v9;
  v19 = v10;
  v11 = a5;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COTimerService__postNotificationName_connection_userInfo___block_invoke_82;
  v15[3] = &unk_278E17E48;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v13 = v8;
  v14 = v10;
  [v12 postNotificationName:v13 withUserInfo:v11 callback:v15];
}

void __60__COTimerService__postNotificationName_connection_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_cold_1(a1);
  }
}

void __60__COTimerService__postNotificationName_connection_userInfo___block_invoke_82(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82_cold_1(a1);
    }
  }
}

- (void)_postNotificationName:(id)a3 forTimers:(id)a4 toAddOn:(id)a5 requiresUserInfo:(BOOL)a6
{
  v38 = a6;
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 homekit];
  v32 = [v11 homehub];
  v33 = v12;
  v31 = [v12 currentAccessory];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = self;
  v13 = [(COTimerService *)self observers];
  v35 = v9;
  v14 = [v13 clientObserversForNotificationName:v9];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    v37 = *MEMORY[0x277D296B0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        v20 = [v19 connection];
        v21 = [v19 constraints];
        if (v21)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke_2;
          v39[3] = &unk_278E16C88;
          v40 = v11;
          v41 = v21;
          v22 = [v10 indexesOfObjectsPassingTest:v39];

          v23 = v40;
        }

        else
        {
          v23 = [v20 co_PeerInstance];
          if (v23)
          {
            v24 = [v32 accessoryForPeerInstance:v23 usingHomeKitAdapter:v33];
          }

          else
          {
            v24 = v31;
          }

          v25 = v24;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke;
          v42[3] = &unk_278E16C88;
          v43 = v11;
          v44 = v25;
          v26 = v25;
          v22 = [v10 indexesOfObjectsPassingTest:v42];
        }

        if ([v22 count])
        {
          v27 = MEMORY[0x277CBEAC0];
          v28 = [v10 objectsAtIndexes:v22];
          v29 = [v27 dictionaryWithObject:v28 forKey:v37];
        }

        else
        {
          v29 = 0;
        }

        if (!v38 || v29)
        {
          [(COTimerService *)v34 _postNotificationName:v35 connection:v20 userInfo:v29];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v16);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __75__COTimerService__postNotificationName_forTimers_toAddOn_requiresUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  v6 = [v2 _isTimer:v4 targetingAccessoryIdentifiers:v5];

  return v6;
}

- (void)_postNotificationName:(id)a3 forAccessory:(id)a4 toAddOn:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self;
  v10 = [(COTimerService *)self observers];
  v23 = v7;
  v11 = [v10 clientObserversForNotificationName:v7];

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
        v17 = [v16 accessory];
        v18 = v17;
        if (v8)
        {
          v19 = [v17 uniqueIdentifier];
          v20 = [v19 isEqual:v8];

          if (v20)
          {
            v21 = [v16 connection];
            [(COTimerService *)v9 _postNotificationName:v23 connection:v21 userInfo:0];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_postCanDispatchChangedAddOn:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COTimerService *)self observers];
  v15 = *MEMORY[0x277CFCFE0];
  v6 = [v5 clientObserversForNotificationName:?];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 accessory];
        if (v12)
        {
          objc_initWeak(&location, self);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __47__COTimerService__postCanDispatchChangedAddOn___block_invoke;
          v16[3] = &unk_278E17E98;
          objc_copyWeak(&v19, &location);
          v17 = v12;
          v18 = v11;
          [v4 canDispatchAsAccessory:v17 asInstance:0 reply:v16];

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
        }

        else
        {
          v13 = [v11 connection];
          [(COTimerService *)self _postNotificationName:v15 connection:v13 userInfo:0];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__COTimerService__postCanDispatchChangedAddOn___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [*(a1 + 32) uniqueIdentifier];
    [v6 _postCanDispatchChanged:a2 forAccessory:v5 toObserver:*(a1 + 40)];

    WeakRetained = v6;
  }
}

- (void)_completeDispatchabilityStallActivity:(id)a3
{
  v4 = a3;
  v3 = [v4 dispatchabilityStallActivity];
  if (v3)
  {
    nw_activity_complete_with_reason();
    [v4 setDispatchabilityStallCount:{objc_msgSend(v4, "dispatchabilityStallCount") + 1}];
    [v4 setDispatchabilityStallActivity:0];
  }
}

- (void)_didStopCanDispatchUpdate:(id)a3
{
  v8 = a3;
  v4 = [v8 connection];
  v5 = [(COService *)self clientForConnection:v4];

  [(COTimerService *)self _completeDispatchabilityStallActivity:v8];
  v6 = [v8 dispatchabilityStallCount];
  if (v6)
  {
    if (v6 == 1)
    {
      if ([v8 canDispatch])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 3;
    }

    [v5 donateClientLifetimeActivityCompletionReason:v7];
  }
}

- (void)timersAsAccessory:(id)a3 asInstance:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(COService *)self currentClient];
  v12 = [v11 connection];
  [v12 co_SetPeerInstance:v10];

  v13 = _ClusterForAccessory(v8);
  [(COService *)self _takeAssertionForCluster:v13];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke;
  v24[3] = &unk_278E17EC0;
  v25 = v13;
  v26 = v9;
  v24[4] = self;
  v14 = v13;
  v15 = v9;
  v16 = MEMORY[0x245D5FF10](v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_3;
  v20[3] = &unk_278E17EE8;
  v21 = v8;
  v22 = v11;
  v23 = v16;
  v17 = v16;
  v18 = v11;
  v19 = v8;
  [(COService *)self _addOnForCluster:v14 completion:v20];
}

void __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__COTimerService_timersAsAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 timersAsAccessory:a1[4] fromClient:a1[5] withCallback:a1[6]];
  }

  else
  {
    v4 = a1[6];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)timersAsAccessory:(id)a3 forAccessories:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(v8);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke;
  v25[3] = &unk_278E17F10;
  v26 = v12;
  v27 = v10;
  v25[4] = self;
  v13 = v12;
  v14 = v10;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = v8;
  v22 = v9;
  v23 = v11;
  v24 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v9;
  v19 = v8;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__COTimerService_timersAsAccessory_forAccessories_callback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 timersForAccessories:a1[5] fromClient:a1[6] callback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)addTimer:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(COService *)self currentClient];
  v15 = [v14 connection];
  [v15 co_SetPeerInstance:v13];

  v16 = _ClusterForAccessory(v11);
  [(COService *)self _takeAssertionForCluster:v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = v12;
  v29[4] = self;
  v17 = v16;
  v18 = v12;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_3;
  v24[3] = &unk_278E17F38;
  v25 = v11;
  v26 = v10;
  v27 = v14;
  v28 = v19;
  v20 = v19;
  v21 = v14;
  v22 = v10;
  v23 = v11;
  [(COService *)self _addOnForCluster:v17 completion:v24];
}

void __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__COTimerService_addTimer_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 addTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)updateTimer:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(v9);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = v10;
  v25[4] = self;
  v13 = v12;
  v14 = v10;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __55__COTimerService_updateTimer_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 updateTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)removeTimer:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(v9);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = v10;
  v25[4] = self;
  v13 = v12;
  v14 = v10;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __55__COTimerService_removeTimer_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 removeTimer:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)dismissTimerWithIdentifier:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COService *)self currentClient];
  v12 = _ClusterForAccessory(v9);
  [(COService *)self _takeAssertionForCluster:v12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke;
  v25[3] = &unk_278E17F60;
  v26 = v12;
  v27 = v10;
  v25[4] = self;
  v13 = v12;
  v14 = v10;
  v15 = MEMORY[0x245D5FF10](v25);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_3;
  v20[3] = &unk_278E17F38;
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v24 = v15;
  v16 = v15;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  [(COService *)self _addOnForCluster:v13 completion:v20];
}

void __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __70__COTimerService_dismissTimerWithIdentifier_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 dismissTimerWithIdentifier:a1[5] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)addObserverForNotificationName:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 constraints:(id)a6 withCallback:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = [(COService *)self currentClient];
  v18 = [v17 connection];
  [v18 co_SetPeerInstance:v16];

  v19 = _ClusterForAccessory(v13);
  [(COService *)self _takeAssertionForCluster:v19];
  v20 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v44 = v17;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%p serving request to observe %@", buf, 0x16u);
  }

  v21 = [(COTimerService *)self observers];
  v37 = self;
  if (v14)
  {
    v22 = COCoreLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmService addObserverForNotificationName:v17 asAccessory:v14 asInstance:v22 constraints:? withCallback:?];
    }

    v23 = [[COSignalsClientObserver alloc] initWithConnection:v18 asAccessory:v13 constraints:v14 cluster:v19];
  }

  else
  {
    v23 = [[COSignalsClientObserver alloc] initWithConnection:v18 cluster:v19];
  }

  v24 = v23;
  if ([v12 isEqualToString:*MEMORY[0x277CFCFE0]])
  {
    v25 = [(COSignalsClientObserver *)v24 dispatchabilityStallActivity];
    if (!v25)
    {
      if ([(COSignalsClientObserver *)v24 canDispatch])
      {
        goto LABEL_13;
      }

      [v17 clientLifetimeActivity];
      v26 = v38 = v21;
      v25 = [CONetworkActivityFactory activityWithLabel:7 parentActivity:v26];

      v21 = v38;
      [(COSignalsClientObserver *)v24 setDispatchabilityStallActivity:v25];
      nw_activity_activate();
    }
  }

LABEL_13:
  if ([v14 count])
  {
    v39 = v21;
    v27 = [v21 constraints];
    v28 = [v14 mutableCopy];
    [v28 minusSet:v27];
    if ([v28 count])
    {
      v36 = v19;
      v29 = v18;
      v30 = v15;
      v31 = v17;
      v32 = v12;
      v33 = [v27 mutableCopy];

      [v33 unionSet:v14];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __97__COTimerService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke;
      v40[3] = &unk_278E17F88;
      v41 = v13;
      v34 = v33;
      v12 = v32;
      v17 = v31;
      v15 = v30;
      v18 = v29;
      v28 = v34;
      v42 = v34;
      v19 = v36;
      [(COService *)v37 _addOnForCluster:v36 completion:v40];
    }

    v21 = v39;
  }

  [v21 addClientObserver:v24 forNotificationName:v12];
  v15[2](v15, 0);

  v35 = *MEMORY[0x277D85DE8];
}

void __97__COTimerService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v4 establishSecondaryClusterForAccessory:v3];
    [v4 setInterests:*(a1 + 40) asAccessory:*(a1 + 32) withCallback:&__block_literal_global_9];
  }
}

- (void)removeObserverForNotificationName:(id)a3 asAccessory:(id)a4 withCallback:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = a4;
  v29 = a5;
  v9 = [(COService *)self currentClient];
  v10 = [v9 connection];
  v11 = COCoreLogForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v45 = v9;
    v46 = 2112;
    v47 = v8;
    _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p serving request to stop observing %@", buf, 0x16u);
  }

  v31 = v9;

  v12 = [(COTimerService *)self observers];
  v13 = [v12 constraints];
  v30 = v10;
  v14 = [v12 clientObserversForXPCConnection:v10];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    v18 = *MEMORY[0x277CFCFE0];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        [v12 removeClientObserver:v20 forNotificationName:v8];
        if ([v8 isEqualToString:v18])
        {
          [(COTimerService *)self _didStopCanDispatchUpdate:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v16);
  }

  v21 = _ClusterForAccessory(v32);
  v22 = [v12 constraints];
  v23 = v13;
  if (([v22 isEqual:v13] & 1) == 0)
  {
    [(COService *)self _takeAssertionForCluster:v21];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke;
    v37[3] = &unk_278E156B0;
    v37[4] = self;
    v24 = v21;
    v38 = v24;
    v25 = MEMORY[0x245D5FF10](v37);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_3;
    v33[3] = &unk_278E17EE8;
    v34 = v32;
    v35 = v22;
    v36 = v25;
    v26 = v25;
    v27 = v24;
    v23 = v13;
    [(COService *)self _addOnForCluster:v27 completion:v33];
  }

  v29[2](v29, 0);
  [(COService *)self _releaseAssertionForCluster:v21];

  v28 = *MEMORY[0x277D85DE8];
}

void __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __77__COTimerService_removeObserverForNotificationName_asAccessory_withCallback___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    [v4 establishSecondaryClusterForAccessory:v3];
    [v4 setInterests:a1[5] asAccessory:a1[4] withCallback:a1[6]];
  }
}

- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ClusterForAccessory(v8);
  [(COService *)self _takeAssertionForCluster:v11];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v22[3] = &unk_278E17FB0;
  v23 = v11;
  v24 = v10;
  v22[4] = self;
  v12 = v11;
  v13 = v10;
  v14 = MEMORY[0x245D5FF10](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_3;
  v18[3] = &unk_278E17EE8;
  v19 = v8;
  v20 = v9;
  v21 = v14;
  v15 = v14;
  v16 = v9;
  v17 = v8;
  [(COService *)self _addOnForCluster:v12 completion:v18];
}

void __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __58__COTimerService_canDispatchAsAccessory_asInstance_reply___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v4 canDispatchAsAccessory:a1[4] asInstance:a1[5] reply:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)timerAddOn:(id)a3 didAddTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__COTimerService_timerAddOn_didAddTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 didRemoveTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didRemoveTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 didUpdateTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didUpdateTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 didChangeTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COTimerService_timerAddOn_didChangeTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 didFireTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COTimerService_timerAddOn_didFireTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 didDismissTimers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__COTimerService_timerAddOn_didDismissTimers___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)timerAddOn:(id)a3 resetAccesory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COTimerService_timerAddOn_resetAccesory___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)didResetTimerAddOn:(id)a3
{
  v4 = a3;
  v5 = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COTimerService_didResetTimerAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didChangeCompositionForTimerAddOn:(id)a3
{
  v4 = a3;
  v5 = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__COTimerService_didChangeCompositionForTimerAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (void)_isAllowedClient:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "timers service allowing %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end