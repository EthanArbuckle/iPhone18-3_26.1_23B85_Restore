@interface COAlarmService
+ (BOOL)_isAllowedClient:(id)a3;
+ (id)serviceWithDelegate:(id)a3;
- (BOOL)_applicableToCluster:(id)a3;
- (COAlarmService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5;
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
- (void)_postNotificationName:(id)a3 forAlarms:(id)a4 toAddOn:(id)a5 requiresUserInfo:(BOOL)a6;
- (void)addAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)addObserverForNotificationName:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 constraints:(id)a6 withCallback:(id)a7;
- (void)alarmAddOn:(id)a3 didAddAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didChangeAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didChangeFiringAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didDismissAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didFireAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didRemoveAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 didUpdateAlarms:(id)a4;
- (void)alarmAddOn:(id)a3 resetAccesory:(id)a4;
- (void)alarmsAsAccessory:(id)a3 asInstance:(id)a4 forAccessories:(id)a5 callback:(id)a6;
- (void)alarmsAsAccessory:(id)a3 asInstance:(id)a4 withCallback:(id)a5;
- (void)canDispatchAsAccessory:(id)a3 asInstance:(id)a4 reply:(id)a5;
- (void)didChangeCompositionForAlarmAddOn:(id)a3;
- (void)didResetAlarmAddOn:(id)a3;
- (void)dismissAlarmWithIdentifier:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)removeAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)removeObserverForNotificationName:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)snoozeAlarmWithIdentifier:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
- (void)updateAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6;
@end

@implementation COAlarmService

+ (id)serviceWithDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(COAlarmAddOnListenerProvider);
  v6 = objc_alloc_init(COAlarmAddOnProvider);
  v7 = [[a1 alloc] initWithListenerProvider:v5 addOnProvider:v6 delegate:v4];

  return v7;
}

- (COAlarmService)initWithListenerProvider:(id)a3 addOnProvider:(id)a4 delegate:(id)a5
{
  v9.receiver = self;
  v9.super_class = COAlarmService;
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
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(COAlarmService *)v3 _isAllowedClient:v4];
  }

  return 1;
}

- (void)_configureServiceInterfacesOnConnection:(id)a3
{
  v13.receiver = self;
  v13.super_class = COAlarmService;
  v4 = a3;
  [(COService *)&v13 _configureServiceInterfacesOnConnection:v4];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857D6038];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v13.receiver, v13.super_class}];
  [v5 setClasses:v8 forSelector:sel_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback_ argumentIndex:3 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];

  [v5 setClasses:v11 forSelector:sel_alarmsAsAccessory_asInstance_forAccessories_callback_ argumentIndex:2 ofReply:0];
  [v4 setExportedInterface:v5];
  [v4 setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857E6408];

  [v4 setRemoteObjectInterface:v12];
}

- (id)_newClientForConnection:(id)a3
{
  v3 = a3;
  v4 = [[COAlarmServiceClient alloc] initWithConnection:v3];

  return v4;
}

- (void)_clientLost:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = COAlarmService;
  [(COService *)&v20 _clientLost:v4];
  v5 = [(COAlarmService *)self observers];
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
        [(COAlarmService *)self _didStopCanDispatchUpdate:v13];
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
      v8 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v12 = self;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p AlarmService added secondary cluster for accessory %@", buf, 0x16u);
      }

      [v4 establishSecondaryClusterForAccessory:v7];
    }
  }

  v10.receiver = self;
  v10.super_class = COAlarmService;
  [(COService *)&v10 _addOnAdded:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)a3
{
  v4.receiver = self;
  v4.super_class = COAlarmService;
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
  v18[2] = __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke;
  v18[3] = &unk_278E16A88;
  v18[4] = self;
  v10 = v9;
  v19 = v10;
  v11 = a5;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82;
  v15[3] = &unk_278E17E48;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v13 = v8;
  v14 = v10;
  [v12 postNotificationName:v13 withUserInfo:v11 callback:v15];
}

void __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_cold_1(a1);
  }
}

void __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82_cold_1(a1);
    }
  }
}

- (void)_postNotificationName:(id)a3 forAlarms:(id)a4 toAddOn:(id)a5 requiresUserInfo:(BOOL)a6
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
  v13 = [(COAlarmService *)self observers];
  v35 = v9;
  v14 = [v13 clientObserversForNotificationName:v9];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    v37 = *MEMORY[0x277D295A0];
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
          v39[2] = __75__COAlarmService__postNotificationName_forAlarms_toAddOn_requiresUserInfo___block_invoke_2;
          v39[3] = &unk_278E17E70;
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
          v42[2] = __75__COAlarmService__postNotificationName_forAlarms_toAddOn_requiresUserInfo___block_invoke;
          v42[3] = &unk_278E17E70;
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
          [(COAlarmService *)v34 _postNotificationName:v35 connection:v20 userInfo:v29];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v16);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __75__COAlarmService__postNotificationName_forAlarms_toAddOn_requiresUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  v6 = [v2 _isAlarm:v4 targetingAccessoryIdentifiers:v5];

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
  v10 = [(COAlarmService *)self observers];
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
            [(COAlarmService *)v9 _postNotificationName:v23 connection:v21 userInfo:0];
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
  v5 = [(COAlarmService *)self observers];
  v15 = *MEMORY[0x277CFCE88];
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
          v16[2] = __47__COAlarmService__postCanDispatchChangedAddOn___block_invoke;
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
          [(COAlarmService *)self _postNotificationName:v15 connection:v13 userInfo:0];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __47__COAlarmService__postCanDispatchChangedAddOn___block_invoke(uint64_t a1, uint64_t a2)
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

  [(COAlarmService *)self _completeDispatchabilityStallActivity:v8];
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

- (void)alarmsAsAccessory:(id)a3 asInstance:(id)a4 withCallback:(id)a5
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
  v24[2] = __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke;
  v24[3] = &unk_278E17EC0;
  v25 = v13;
  v26 = v9;
  v24[4] = self;
  v14 = v13;
  v15 = v9;
  v16 = MEMORY[0x245D5FF10](v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke_3;
  v20[3] = &unk_278E17EE8;
  v21 = v8;
  v22 = v11;
  v23 = v16;
  v17 = v16;
  v18 = v11;
  v19 = v8;
  [(COService *)self _addOnForCluster:v14 completion:v20];
}

void __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 alarmsAsAccessory:a1[4] fromClient:a1[5] withCallback:a1[6]];
  }

  else
  {
    v4 = a1[6];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)alarmsAsAccessory:(id)a3 asInstance:(id)a4 forAccessories:(id)a5 callback:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(v9);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke;
  v26[3] = &unk_278E17F10;
  v27 = v13;
  v28 = v11;
  v26[4] = self;
  v14 = v13;
  v15 = v11;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = v9;
  v23 = v10;
  v24 = v12;
  v25 = v16;
  v17 = v16;
  v18 = v12;
  v19 = v10;
  v20 = v9;
  [(COService *)self _addOnForCluster:v14 completion:v21];
}

void __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 alarmsForAccessories:a1[5] fromClient:a1[6] callback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)addAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
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
  v29[2] = __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = v12;
  v29[4] = self;
  v17 = v16;
  v18 = v12;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
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

void __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 addAlarm:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)updateAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
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
  v29[2] = __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = v12;
  v29[4] = self;
  v17 = v16;
  v18 = v12;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
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

void __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 updateAlarm:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)removeAlarm:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
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
  v29[2] = __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = v12;
  v29[4] = self;
  v17 = v16;
  v18 = v12;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
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

void __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 removeAlarm:a1[5] asAccessory:a1[4] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)snoozeAlarmWithIdentifier:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(v10);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke;
  v26[3] = &unk_278E17F60;
  v27 = v13;
  v28 = v11;
  v26[4] = self;
  v14 = v13;
  v15 = v11;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = v10;
  v23 = v9;
  v24 = v12;
  v25 = v16;
  v17 = v16;
  v18 = v12;
  v19 = v9;
  v20 = v10;
  [(COService *)self _addOnForCluster:v14 completion:v21];
}

void __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 snoozeAlarmWithIdentifier:a1[5] fromClient:a1[6] withCallback:a1[7]];
  }

  else
  {
    v4 = a1[7];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)dismissAlarmWithIdentifier:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(v10);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke;
  v26[3] = &unk_278E17F60;
  v27 = v13;
  v28 = v11;
  v26[4] = self;
  v14 = v13;
  v15 = v11;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = v10;
  v23 = v9;
  v24 = v12;
  v25 = v16;
  v17 = v16;
  v18 = v12;
  v19 = v9;
  v20 = v10;
  [(COService *)self _addOnForCluster:v14 completion:v21];
}

void __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 establishSecondaryClusterForAccessory:a1[4]];
    [v6 dismissAlarmWithIdentifier:a1[5] fromClient:a1[6] withCallback:a1[7]];
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
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = v13;
  v18 = v16;
  v19 = [(COService *)self currentClient];
  v20 = [v19 connection];
  [v20 co_SetPeerInstance:v18];

  v21 = _ClusterForAccessory(v17);
  [(COService *)self _takeAssertionForCluster:v21];
  v22 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v42 = v19;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p serving request to observe %@", buf, 0x16u);
  }

  v23 = [(COAlarmService *)self observers];
  v37 = v19;
  if (v14)
  {
    v24 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmService addObserverForNotificationName:v19 asAccessory:v14 asInstance:v24 constraints:? withCallback:?];
    }

    v25 = [[COSignalsClientObserver alloc] initWithConnection:v20 asAccessory:v17 constraints:v14 cluster:v21];
  }

  else
  {
    v25 = [[COSignalsClientObserver alloc] initWithConnection:v20 cluster:v21];
  }

  v26 = v25;
  if ([v12 isEqualToString:*MEMORY[0x277CFCE88]])
  {
    v27 = [(COSignalsClientObserver *)v26 dispatchabilityStallActivity];
    if (v27)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (![(COSignalsClientObserver *)v26 canDispatch])
    {
      [v37 clientLifetimeActivity];
      v28 = v35 = v17;
      v27 = [CONetworkActivityFactory activityWithLabel:7 parentActivity:v28];

      v17 = v35;
      [(COSignalsClientObserver *)v26 setDispatchabilityStallActivity:v27];
      nw_activity_activate();
      goto LABEL_12;
    }
  }

LABEL_13:
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled] && objc_msgSend(v14, "count"))
  {
    v36 = v17;
    v29 = [v23 constraints];
    v30 = [v14 mutableCopy];
    [v30 minusSet:v29];
    if ([v30 count])
    {
      v34 = v29;
      v31 = [v29 mutableCopy];

      [v31 unionSet:v14];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __97__COAlarmService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke;
      v38[3] = &unk_278E17F88;
      v39 = v36;
      v32 = v31;
      v29 = v34;
      v30 = v32;
      v40 = v32;
      [(COService *)self _addOnForCluster:v21 completion:v38];
    }

    v17 = v36;
  }

  [v23 addClientObserver:v26 forNotificationName:v12];
  v15[2](v15, 0);

  v33 = *MEMORY[0x277D85DE8];
}

void __97__COAlarmService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v4 establishSecondaryClusterForAccessory:v3];
    [v4 setInterests:*(a1 + 40) asAccessory:*(a1 + 32) withCallback:&__block_literal_global_8];
  }
}

- (void)removeObserverForNotificationName:(id)a3 asAccessory:(id)a4 asInstance:(id)a5 withCallback:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(COService *)self currentClient];
  v13 = [v12 connection];
  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v46 = v12;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p serving request to stop observing %@", buf, 0x16u);
  }

  v15 = [(COAlarmService *)self observers];
  v31 = v12;
  v32 = v10;
  v16 = v11;
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v33 = [v15 constraints];
  }

  else
  {
    v33 = 0;
  }

  v30 = v13;
  v17 = [v15 clientObserversForXPCConnection:v13];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v21 = *MEMORY[0x277CFCE88];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        [v15 removeClientObserver:v23 forNotificationName:v9];
        if ([v9 isEqualToString:v21])
        {
          [(COAlarmService *)self _didStopCanDispatchUpdate:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v19);
  }

  v16[2](v16, 0);
  v24 = _ClusterForAccessory(v32);
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    v25 = [v15 constraints];
    if (([v25 isEqual:v33] & 1) == 0)
    {
      [(COService *)self _takeAssertionForCluster:v24];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __88__COAlarmService_removeObserverForNotificationName_asAccessory_asInstance_withCallback___block_invoke;
      v38[3] = &unk_278E156B0;
      v38[4] = self;
      v26 = v24;
      v39 = v26;
      v27 = MEMORY[0x245D5FF10](v38);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __88__COAlarmService_removeObserverForNotificationName_asAccessory_asInstance_withCallback___block_invoke_3;
      v34[3] = &unk_278E17EE8;
      v35 = v32;
      v36 = v25;
      v37 = v27;
      v28 = v27;
      [(COService *)self _addOnForCluster:v26 completion:v34];
    }
  }

  [(COService *)self _releaseAssertionForCluster:v24];

  v29 = *MEMORY[0x277D85DE8];
}

void __88__COAlarmService_removeObserverForNotificationName_asAccessory_asInstance_withCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__COAlarmService_removeObserverForNotificationName_asAccessory_asInstance_withCallback___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __88__COAlarmService_removeObserverForNotificationName_asAccessory_asInstance_withCallback___block_invoke_3(void *a1, void *a2)
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
  v22[2] = __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v22[3] = &unk_278E17FB0;
  v23 = v11;
  v24 = v10;
  v22[4] = self;
  v12 = v11;
  v13 = v10;
  v14 = MEMORY[0x245D5FF10](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke_3;
  v18[3] = &unk_278E17EE8;
  v19 = v8;
  v20 = v9;
  v21 = v14;
  v15 = v14;
  v16 = v9;
  v17 = v8;
  [(COService *)self _addOnForCluster:v12 completion:v18];
}

void __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) dispatchQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke_2;
  v4[3] = &unk_278E156B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke_3(void *a1, void *a2)
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

- (void)alarmAddOn:(id)a3 didAddAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__COAlarmService_alarmAddOn_didAddAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didRemoveAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didRemoveAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didUpdateAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didUpdateAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didChangeAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didChangeAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didFireAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COAlarmService_alarmAddOn_didFireAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didDismissAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__COAlarmService_alarmAddOn_didDismissAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 didChangeFiringAlarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__COAlarmService_alarmAddOn_didChangeFiringAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)alarmAddOn:(id)a3 resetAccesory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COAlarmService_alarmAddOn_resetAccesory___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)didResetAlarmAddOn:(id)a3
{
  v4 = a3;
  v5 = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COAlarmService_didResetAlarmAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didChangeCompositionForAlarmAddOn:(id)a3
{
  v4 = a3;
  v5 = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__COAlarmService_didChangeCompositionForAlarmAddOn___block_invoke;
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
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "alarms service allowing %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_9();
  v7 = v3;
  _os_log_error_impl(&dword_244378000, v4, OS_LOG_TYPE_ERROR, "%p -> %p remote failed %@ ", v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_0_9();
  v10 = v4;
  v11 = v5;
  v12 = v6;
  _os_log_error_impl(&dword_244378000, v7, OS_LOG_TYPE_ERROR, "%p -> %p %@ post failed %@ ", v9, 0x2Au);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addObserverForNotificationName:(os_log_t)log asAccessory:asInstance:constraints:withCallback:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p observing constrained to %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end