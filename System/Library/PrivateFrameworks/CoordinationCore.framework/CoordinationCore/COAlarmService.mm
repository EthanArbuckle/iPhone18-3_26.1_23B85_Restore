@interface COAlarmService
+ (BOOL)_isAllowedClient:(id)client;
+ (id)serviceWithDelegate:(id)delegate;
- (BOOL)_applicableToCluster:(id)cluster;
- (COAlarmService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate;
- (id)_newClientForConnection:(id)connection;
- (void)_addOnAdded:(id)added;
- (void)_addOnRemoved:(id)removed;
- (void)_clientLost:(id)lost;
- (void)_completeDispatchabilityStallActivity:(id)activity;
- (void)_configureServiceInterfacesOnConnection:(id)connection;
- (void)_didStopCanDispatchUpdate:(id)update;
- (void)_postCanDispatchChangedAddOn:(id)on;
- (void)_postNotificationName:(id)name connection:(id)connection userInfo:(id)info;
- (void)_postNotificationName:(id)name forAccessory:(id)accessory toAddOn:(id)on;
- (void)_postNotificationName:(id)name forAlarms:(id)alarms toAddOn:(id)on requiresUserInfo:(BOOL)info;
- (void)addAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)addObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance constraints:(id)constraints withCallback:(id)callback;
- (void)alarmAddOn:(id)on didAddAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didChangeAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didChangeFiringAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didDismissAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didFireAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didRemoveAlarms:(id)alarms;
- (void)alarmAddOn:(id)on didUpdateAlarms:(id)alarms;
- (void)alarmAddOn:(id)on resetAccesory:(id)accesory;
- (void)alarmsAsAccessory:(id)accessory asInstance:(id)instance forAccessories:(id)accessories callback:(id)callback;
- (void)alarmsAsAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply;
- (void)didChangeCompositionForAlarmAddOn:(id)on;
- (void)didResetAlarmAddOn:(id)on;
- (void)dismissAlarmWithIdentifier:(id)identifier asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)removeAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)removeObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)snoozeAlarmWithIdentifier:(id)identifier asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
- (void)updateAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback;
@end

@implementation COAlarmService

+ (id)serviceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(COAlarmAddOnListenerProvider);
  v6 = objc_alloc_init(COAlarmAddOnProvider);
  v7 = [[self alloc] initWithListenerProvider:v5 addOnProvider:v6 delegate:delegateCopy];

  return v7;
}

- (COAlarmService)initWithListenerProvider:(id)provider addOnProvider:(id)onProvider delegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = COAlarmService;
  v5 = [(COService *)&v9 initWithListenerProvider:provider addOnProvider:onProvider delegate:delegate];
  if (v5)
  {
    v6 = objc_alloc_init(COSignalsClientObserverSet);
    observers = v5->_observers;
    v5->_observers = v6;

    [(COService *)v5 _serviceReady];
  }

  return v5;
}

+ (BOOL)_isAllowedClient:(id)client
{
  clientCopy = client;
  v4 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(COAlarmService *)clientCopy _isAllowedClient:v4];
  }

  return 1;
}

- (void)_configureServiceInterfacesOnConnection:(id)connection
{
  v13.receiver = self;
  v13.super_class = COAlarmService;
  connectionCopy = connection;
  [(COService *)&v13 _configureServiceInterfacesOnConnection:connectionCopy];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857D6038];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0, v13.receiver, v13.super_class}];
  [v5 setClasses:v8 forSelector:sel_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback_ argumentIndex:3 ofReply:0];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];

  [v5 setClasses:v11 forSelector:sel_alarmsAsAccessory_asInstance_forAccessories_callback_ argumentIndex:2 ofReply:0];
  [connectionCopy setExportedInterface:v5];
  [connectionCopy setExportedObject:self];
  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857E6408];

  [connectionCopy setRemoteObjectInterface:v12];
}

- (id)_newClientForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[COAlarmServiceClient alloc] initWithConnection:connectionCopy];

  return v4;
}

- (void)_clientLost:(id)lost
{
  v22 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v20.receiver = self;
  v20.super_class = COAlarmService;
  [(COService *)&v20 _clientLost:lostCopy];
  observers = [(COAlarmService *)self observers];
  connection = [lostCopy connection];
  v7 = [observers clientObserversForXPCConnection:connection];

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
        [observers removeClientObserver:v13 forNotificationName:{0, v16}];
        [(COAlarmService *)self _didStopCanDispatchUpdate:v13];
        cluster = [v13 cluster];
        [(COService *)self _releaseAssertionForCluster:cluster];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addOnAdded:(id)added
{
  v15 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  [addedCopy setDelegate:self];
  homekit = [addedCopy homekit];
  currentAccessory = [homekit currentAccessory];
  if (currentAccessory)
  {
    v7 = [objc_alloc(MEMORY[0x277CFD0C8]) initWithHomeKitAccessory:currentAccessory];
    if (v7)
    {
      v8 = COCoreLogForCategory(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy = self;
        v13 = 2112;
        v14 = currentAccessory;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p AlarmService added secondary cluster for accessory %@", buf, 0x16u);
      }

      [addedCopy establishSecondaryClusterForAccessory:v7];
    }
  }

  v10.receiver = self;
  v10.super_class = COAlarmService;
  [(COService *)&v10 _addOnAdded:addedCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addOnRemoved:(id)removed
{
  v4.receiver = self;
  v4.super_class = COAlarmService;
  removedCopy = removed;
  [(COService *)&v4 _addOnRemoved:removedCopy];
  [removedCopy setDelegate:{0, v4.receiver, v4.super_class}];
}

- (BOOL)_applicableToCluster:(id)cluster
{
  label = [cluster label];
  v4 = [label isEqual:*MEMORY[0x277CFCEE8]];

  return v4;
}

- (void)_postNotificationName:(id)name connection:(id)connection userInfo:(id)info
{
  nameCopy = name;
  connectionCopy = connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke;
  v18[3] = &unk_278E16A88;
  v18[4] = self;
  v10 = connectionCopy;
  v19 = v10;
  infoCopy = info;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__COAlarmService__postNotificationName_connection_userInfo___block_invoke_82;
  v15[3] = &unk_278E17E48;
  v15[4] = self;
  v16 = v10;
  v17 = nameCopy;
  v13 = nameCopy;
  v14 = v10;
  [v12 postNotificationName:v13 withUserInfo:infoCopy callback:v15];
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

- (void)_postNotificationName:(id)name forAlarms:(id)alarms toAddOn:(id)on requiresUserInfo:(BOOL)info
{
  infoCopy = info;
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  alarmsCopy = alarms;
  onCopy = on;
  homekit = [onCopy homekit];
  homehub = [onCopy homehub];
  v33 = homekit;
  currentAccessory = [homekit currentAccessory];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
  observers = [(COAlarmService *)self observers];
  v35 = nameCopy;
  v14 = [observers clientObserversForNotificationName:nameCopy];

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
        connection = [v19 connection];
        constraints = [v19 constraints];
        if (constraints)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __75__COAlarmService__postNotificationName_forAlarms_toAddOn_requiresUserInfo___block_invoke_2;
          v39[3] = &unk_278E17E70;
          v40 = onCopy;
          v41 = constraints;
          v22 = [alarmsCopy indexesOfObjectsPassingTest:v39];

          co_PeerInstance = v40;
        }

        else
        {
          co_PeerInstance = [connection co_PeerInstance];
          if (co_PeerInstance)
          {
            v24 = [homehub accessoryForPeerInstance:co_PeerInstance usingHomeKitAdapter:v33];
          }

          else
          {
            v24 = currentAccessory;
          }

          v25 = v24;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __75__COAlarmService__postNotificationName_forAlarms_toAddOn_requiresUserInfo___block_invoke;
          v42[3] = &unk_278E17E70;
          v43 = onCopy;
          v44 = v25;
          v26 = v25;
          v22 = [alarmsCopy indexesOfObjectsPassingTest:v42];
        }

        if ([v22 count])
        {
          v27 = MEMORY[0x277CBEAC0];
          v28 = [alarmsCopy objectsAtIndexes:v22];
          v29 = [v27 dictionaryWithObject:v28 forKey:v37];
        }

        else
        {
          v29 = 0;
        }

        if (!infoCopy || v29)
        {
          [(COAlarmService *)selfCopy _postNotificationName:v35 connection:connection userInfo:v29];
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

- (void)_postNotificationName:(id)name forAccessory:(id)accessory toAddOn:(id)on
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  observers = [(COAlarmService *)self observers];
  v23 = nameCopy;
  v11 = [observers clientObserversForNotificationName:nameCopy];

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
        accessory = [v16 accessory];
        v18 = accessory;
        if (accessoryCopy)
        {
          uniqueIdentifier = [accessory uniqueIdentifier];
          v20 = [uniqueIdentifier isEqual:accessoryCopy];

          if (v20)
          {
            connection = [v16 connection];
            [(COAlarmService *)selfCopy _postNotificationName:v23 connection:connection userInfo:0];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_postCanDispatchChangedAddOn:(id)on
{
  v26 = *MEMORY[0x277D85DE8];
  onCopy = on;
  observers = [(COAlarmService *)self observers];
  v15 = *MEMORY[0x277CFCE88];
  v6 = [observers clientObserversForNotificationName:?];

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
        accessory = [v11 accessory];
        if (accessory)
        {
          objc_initWeak(&location, self);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __47__COAlarmService__postCanDispatchChangedAddOn___block_invoke;
          v16[3] = &unk_278E17E98;
          objc_copyWeak(&v19, &location);
          v17 = accessory;
          v18 = v11;
          [onCopy canDispatchAsAccessory:v17 asInstance:0 reply:v16];

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
        }

        else
        {
          connection = [v11 connection];
          [(COAlarmService *)self _postNotificationName:v15 connection:connection userInfo:0];
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

- (void)_completeDispatchabilityStallActivity:(id)activity
{
  activityCopy = activity;
  dispatchabilityStallActivity = [activityCopy dispatchabilityStallActivity];
  if (dispatchabilityStallActivity)
  {
    nw_activity_complete_with_reason();
    [activityCopy setDispatchabilityStallCount:{objc_msgSend(activityCopy, "dispatchabilityStallCount") + 1}];
    [activityCopy setDispatchabilityStallActivity:0];
  }
}

- (void)_didStopCanDispatchUpdate:(id)update
{
  updateCopy = update;
  connection = [updateCopy connection];
  v5 = [(COService *)self clientForConnection:connection];

  [(COAlarmService *)self _completeDispatchabilityStallActivity:updateCopy];
  dispatchabilityStallCount = [updateCopy dispatchabilityStallCount];
  if (dispatchabilityStallCount)
  {
    if (dispatchabilityStallCount == 1)
    {
      if ([updateCopy canDispatch])
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

- (void)alarmsAsAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v13 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v13];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke;
  v24[3] = &unk_278E17EC0;
  v25 = v13;
  v26 = callbackCopy;
  v24[4] = self;
  v14 = v13;
  v15 = callbackCopy;
  v16 = MEMORY[0x245D5FF10](v24);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__COAlarmService_alarmsAsAccessory_asInstance_withCallback___block_invoke_3;
  v20[3] = &unk_278E17EE8;
  v21 = accessoryCopy;
  v22 = currentClient;
  v23 = v16;
  v17 = v16;
  v18 = currentClient;
  v19 = accessoryCopy;
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

- (void)alarmsAsAccessory:(id)accessory asInstance:(id)instance forAccessories:(id)accessories callback:(id)callback
{
  accessoryCopy = accessory;
  accessoriesCopy = accessories;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke;
  v26[3] = &unk_278E17F10;
  v27 = v13;
  v28 = callbackCopy;
  v26[4] = self;
  v14 = v13;
  v15 = callbackCopy;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__COAlarmService_alarmsAsAccessory_asInstance_forAccessories_callback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = accessoryCopy;
  v23 = accessoriesCopy;
  v24 = currentClient;
  v25 = v16;
  v17 = v16;
  v18 = currentClient;
  v19 = accessoriesCopy;
  v20 = accessoryCopy;
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

- (void)addAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v16 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = callbackCopy;
  v29[4] = self;
  v17 = v16;
  v18 = callbackCopy;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__COAlarmService_addAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
  v24[3] = &unk_278E17F38;
  v25 = accessoryCopy;
  v26 = alarmCopy;
  v27 = currentClient;
  v28 = v19;
  v20 = v19;
  v21 = currentClient;
  v22 = alarmCopy;
  v23 = accessoryCopy;
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

- (void)updateAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v16 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = callbackCopy;
  v29[4] = self;
  v17 = v16;
  v18 = callbackCopy;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__COAlarmService_updateAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
  v24[3] = &unk_278E17F38;
  v25 = accessoryCopy;
  v26 = alarmCopy;
  v27 = currentClient;
  v28 = v19;
  v20 = v19;
  v21 = currentClient;
  v22 = alarmCopy;
  v23 = accessoryCopy;
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

- (void)removeAlarm:(id)alarm asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  alarmCopy = alarm;
  accessoryCopy = accessory;
  callbackCopy = callback;
  instanceCopy = instance;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:instanceCopy];

  v16 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v16];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke;
  v29[3] = &unk_278E17F60;
  v30 = v16;
  v31 = callbackCopy;
  v29[4] = self;
  v17 = v16;
  v18 = callbackCopy;
  v19 = MEMORY[0x245D5FF10](v29);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__COAlarmService_removeAlarm_asAccessory_asInstance_withCallback___block_invoke_3;
  v24[3] = &unk_278E17F38;
  v25 = accessoryCopy;
  v26 = alarmCopy;
  v27 = currentClient;
  v28 = v19;
  v20 = v19;
  v21 = currentClient;
  v22 = alarmCopy;
  v23 = accessoryCopy;
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

- (void)snoozeAlarmWithIdentifier:(id)identifier asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke;
  v26[3] = &unk_278E17F60;
  v27 = v13;
  v28 = callbackCopy;
  v26[4] = self;
  v14 = v13;
  v15 = callbackCopy;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__COAlarmService_snoozeAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = accessoryCopy;
  v23 = identifierCopy;
  v24 = currentClient;
  v25 = v16;
  v17 = v16;
  v18 = currentClient;
  v19 = identifierCopy;
  v20 = accessoryCopy;
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

- (void)dismissAlarmWithIdentifier:(id)identifier asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  identifierCopy = identifier;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  v13 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v13];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke;
  v26[3] = &unk_278E17F60;
  v27 = v13;
  v28 = callbackCopy;
  v26[4] = self;
  v14 = v13;
  v15 = callbackCopy;
  v16 = MEMORY[0x245D5FF10](v26);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__COAlarmService_dismissAlarmWithIdentifier_asAccessory_asInstance_withCallback___block_invoke_3;
  v21[3] = &unk_278E17F38;
  v22 = accessoryCopy;
  v23 = identifierCopy;
  v24 = currentClient;
  v25 = v16;
  v17 = v16;
  v18 = currentClient;
  v19 = identifierCopy;
  v20 = accessoryCopy;
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

- (void)addObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance constraints:(id)constraints withCallback:(id)callback
{
  v45 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  constraintsCopy = constraints;
  callbackCopy = callback;
  instanceCopy = instance;
  v17 = accessoryCopy;
  v18 = instanceCopy;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  [connection co_SetPeerInstance:v18];

  v21 = _ClusterForAccessory(v17);
  [(COService *)self _takeAssertionForCluster:v21];
  v22 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v42 = currentClient;
    v43 = 2112;
    v44 = nameCopy;
    _os_log_impl(&dword_244378000, v22, OS_LOG_TYPE_DEFAULT, "%p serving request to observe %@", buf, 0x16u);
  }

  observers = [(COAlarmService *)self observers];
  v37 = currentClient;
  if (constraintsCopy)
  {
    v24 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [COAlarmService addObserverForNotificationName:currentClient asAccessory:constraintsCopy asInstance:v24 constraints:? withCallback:?];
    }

    v25 = [[COSignalsClientObserver alloc] initWithConnection:connection asAccessory:v17 constraints:constraintsCopy cluster:v21];
  }

  else
  {
    v25 = [[COSignalsClientObserver alloc] initWithConnection:connection cluster:v21];
  }

  v26 = v25;
  if ([nameCopy isEqualToString:*MEMORY[0x277CFCE88]])
  {
    dispatchabilityStallActivity = [(COSignalsClientObserver *)v26 dispatchabilityStallActivity];
    if (dispatchabilityStallActivity)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (![(COSignalsClientObserver *)v26 canDispatch])
    {
      [v37 clientLifetimeActivity];
      v28 = v35 = v17;
      dispatchabilityStallActivity = [CONetworkActivityFactory activityWithLabel:7 parentActivity:v28];

      v17 = v35;
      [(COSignalsClientObserver *)v26 setDispatchabilityStallActivity:dispatchabilityStallActivity];
      nw_activity_activate();
      goto LABEL_12;
    }
  }

LABEL_13:
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled] && objc_msgSend(constraintsCopy, "count"))
  {
    v36 = v17;
    constraints = [observers constraints];
    v30 = [constraintsCopy mutableCopy];
    [v30 minusSet:constraints];
    if ([v30 count])
    {
      v34 = constraints;
      v31 = [constraints mutableCopy];

      [v31 unionSet:constraintsCopy];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __97__COAlarmService_addObserverForNotificationName_asAccessory_asInstance_constraints_withCallback___block_invoke;
      v38[3] = &unk_278E17F88;
      v39 = v36;
      v32 = v31;
      constraints = v34;
      v30 = v32;
      v40 = v32;
      [(COService *)self _addOnForCluster:v21 completion:v38];
    }

    v17 = v36;
  }

  [observers addClientObserver:v26 forNotificationName:nameCopy];
  callbackCopy[2](callbackCopy, 0);

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

- (void)removeObserverForNotificationName:(id)name asAccessory:(id)accessory asInstance:(id)instance withCallback:(id)callback
{
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryCopy = accessory;
  callbackCopy = callback;
  currentClient = [(COService *)self currentClient];
  connection = [currentClient connection];
  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v46 = currentClient;
    v47 = 2112;
    v48 = nameCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p serving request to stop observing %@", buf, 0x16u);
  }

  observers = [(COAlarmService *)self observers];
  v31 = currentClient;
  v32 = accessoryCopy;
  v16 = callbackCopy;
  if ([MEMORY[0x277CFD0B8] isGlobalMessagingEnabled])
  {
    constraints = [observers constraints];
  }

  else
  {
    constraints = 0;
  }

  v30 = connection;
  v17 = [observers clientObserversForXPCConnection:connection];
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
        [observers removeClientObserver:v23 forNotificationName:nameCopy];
        if ([nameCopy isEqualToString:v21])
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
    constraints2 = [observers constraints];
    if (([constraints2 isEqual:constraints] & 1) == 0)
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
      v36 = constraints2;
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

- (void)canDispatchAsAccessory:(id)accessory asInstance:(id)instance reply:(id)reply
{
  accessoryCopy = accessory;
  instanceCopy = instance;
  replyCopy = reply;
  v11 = _ClusterForAccessory(accessoryCopy);
  [(COService *)self _takeAssertionForCluster:v11];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke;
  v22[3] = &unk_278E17FB0;
  v23 = v11;
  v24 = replyCopy;
  v22[4] = self;
  v12 = v11;
  v13 = replyCopy;
  v14 = MEMORY[0x245D5FF10](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__COAlarmService_canDispatchAsAccessory_asInstance_reply___block_invoke_3;
  v18[3] = &unk_278E17EE8;
  v19 = accessoryCopy;
  v20 = instanceCopy;
  v21 = v14;
  v15 = v14;
  v16 = instanceCopy;
  v17 = accessoryCopy;
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

- (void)alarmAddOn:(id)on didAddAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__COAlarmService_alarmAddOn_didAddAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didRemoveAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didRemoveAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didUpdateAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didUpdateAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didChangeAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__COAlarmService_alarmAddOn_didChangeAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didFireAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COAlarmService_alarmAddOn_didFireAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didDismissAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__COAlarmService_alarmAddOn_didDismissAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on didChangeFiringAlarms:(id)alarms
{
  onCopy = on;
  alarmsCopy = alarms;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__COAlarmService_alarmAddOn_didChangeFiringAlarms___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = alarmsCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = alarmsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)alarmAddOn:(id)on resetAccesory:(id)accesory
{
  onCopy = on;
  accesoryCopy = accesory;
  dispatchQueue = [(COService *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COAlarmService_alarmAddOn_resetAccesory___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v12 = accesoryCopy;
  v13 = onCopy;
  v9 = onCopy;
  v10 = accesoryCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)didResetAlarmAddOn:(id)on
{
  onCopy = on;
  dispatchQueue = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__COAlarmService_didResetAlarmAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)didChangeCompositionForAlarmAddOn:(id)on
{
  onCopy = on;
  dispatchQueue = [(COService *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__COAlarmService_didChangeCompositionForAlarmAddOn___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = onCopy;
  v6 = onCopy;
  dispatch_async(dispatchQueue, v7);
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