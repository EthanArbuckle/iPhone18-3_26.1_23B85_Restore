@interface HMDHomeRemoteEventRouterClientController
- (BOOL)client:(id)a3 isIdsIdentifier:(id)a4 ofAccessory:(id)a5;
- (BOOL)clientIsEnabled:(id)a3;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isNetworkAvailable;
- (BOOL)isPrimaryResidentClientConnected;
- (BOOL)primaryResidentClientHasConnectivity;
- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 requestMessageName:(id)a6 updateMessageName:(id)a7 multiHopFetchResponseMessageName:(id)a8 clientUserMessagePolicy:(id)a9 currentAccessoryUUID:(id)a10 assertionController:(id)a11;
- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 routerClientFactory:(id)a6 requestMessageName:(id)a7 updateMessageName:(id)a8 multiHopFetchResponseMessageName:(id)a9 clientUserMessagePolicy:(id)a10 currentAccessoryUUID:(id)a11 assertionController:(id)a12 remoteTransportStartFuture:(id)a13 delegatingRouterFactory:(id)a14;
- (NSUUID)homeUUID;
- (id)delegatingRouter:(id)a3 filteredTopics:(id)a4 forRouter:(id)a5;
- (id)dumpStateDescription;
- (id)primaryResidentChangeMonitorForRouterClient:(id)a3;
- (id)routerClientMessageDestination:(id)a3 serverIdentifier:(id *)a4;
- (id)routerClientPrimaryResidentDeviceIdentifier:(id)a3;
- (void)_sendNetworkAvailableOnStartingMessaging:(uint64_t)a1;
- (void)client:(id)a3 connectDidFailWithError:(id)a4;
- (void)client:(id)a3 didReceiveFetchedCachedEvents:(id)a4;
- (void)createResidentRouterForAccessoryUUID:(id)a3;
- (void)delegatingRouter:(id)a3 fetchCachedEventsForTopics:(id)a4 forRouter:(id)a5 cachedEventCollection:(id)a6;
- (void)discoverPrimaryResidentForEventRouterClient:(id)a3;
- (void)fetchWithFilters:(id)a3 completion:(id)a4;
- (void)hasConnectivityToServerDidChangeForEventRouterClient:(id)a3;
- (void)networkAvailabilityDidChange:(BOOL)a3;
- (void)removeResidentRouterForAccessoryUUID:(id)a3;
- (void)updateCurrentAccessoryUUID:(id)a3;
@end

@implementation HMDHomeRemoteEventRouterClientController

- (void)delegatingRouter:(id)a3 fetchCachedEventsForTopics:(id)a4 forRouter:(id)a5 cachedEventCollection:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(HMDHomeRemoteEventRouterClientController *)self isCurrentDevicePrimaryResident])
  {
    v12 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v16 = self ? objc_getProperty(self, v15, 88, 1) : 0;
      v17 = [v16 eventRouterClient];

      if (v14 != v17)
      {
        v30 = [v9 na_filter:&__block_literal_global_87_112208];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        if (self)
        {
          v19 = self;
          Property = objc_getProperty(self, v18, 96, 1);
        }

        else
        {
          v19 = 0;
          Property = 0;
        }

        v21 = Property;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v33 + 1) + 8 * i);
              v27 = [v26 eventRouterClient];

              if (v14 == v27)
              {
                [v11 willAddAdditionalEvents];
                v28 = [v26 eventRouterClient];
                v31[0] = MEMORY[0x277D85DD0];
                v31[1] = 3221225472;
                v31[2] = __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_2;
                v31[3] = &unk_2786785B8;
                v31[4] = v19;
                v31[5] = v26;
                v32 = v11;
                [v26 client:v28 fetchWithFilters:v30 isMultiHop:0 completion:v31];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v23);
        }

        v9 = v30;
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v18 = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch events from router: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *(a1 + 48);
  v16 = [v8 na_map:&__block_literal_global_91_112211];
  [v15 addEventInfoItems:v16];

  [*(a1 + 48) didFinishAddingAdditionalEvents];
  v17 = *MEMORY[0x277D85DE8];
}

id __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke_88(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

uint64_t __120__HMDHomeRemoteEventRouterClientController_delegatingRouter_fetchCachedEventsForTopics_forRouter_cachedEventCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CD19F0] decodeTopic:a2];
  v3 = [v2 isIndexTopic];

  return v3 ^ 1u;
}

- (id)delegatingRouter:(id)a3 filteredTopics:(id)a4 forRouter:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  if (!v11)
  {
LABEL_19:
    v23 = MEMORY[0x277CBEBF8];
    goto LABEL_25;
  }

  if (self)
  {
    Property = objc_getProperty(self, v10, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v13 = [Property eventRouterClient];

  if (v11 != v13)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    if (self)
    {
      v15 = objc_getProperty(self, v14, 96, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [v21 eventRouterClient];

          if (v22 == v11)
          {
            v24 = [v21 accessoryUUID];
            v25 = [(HMDHomeRemoteEventRouterClientController *)self homeUUID];
            v23 = [HMDAccessoryEventsGenerated forwardingTopicsForTopics:v7 residentAccessoryUUID:v24 homeUUID:v25];

            goto LABEL_24;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_19;
  }

  if (self && (v26 = objc_getProperty(self, v14, 104, 1)) != 0)
  {
    v16 = v26;
    v23 = [HMDAccessoryEventsGenerated topicsRemovingAccessoryTopics:v7 accessoryUUID:objc_getProperty(self, v27, 104, 1)];
LABEL_24:
  }

  else
  {
    v23 = v7;
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)client:(id)a3 didReceiveFetchedCachedEvents:(id)a4
{
  v6 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained clientController:self didReceiveFetchedCachedEvents:v6 source:self];
}

- (void)hasConnectivityToServerDidChangeForEventRouterClient:(id)a3
{
  v8 = a3;
  if (!self)
  {
    v6 = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    WeakRetained = 0;
LABEL_5:
    [WeakRetained primaryResidentClientHasConnectivityDidChangeForRemoteEventRouterClientController:self];

    v6 = v8;
    goto LABEL_6;
  }

  v5 = objc_getProperty(self, v4, 88, 1) == v8;
  v6 = v8;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)client:(id)a3 connectDidFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v9 && (isKindOfClass & 1) != 0)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained clientController:self primaryClientConnectMessageFailWithError:v6];
  }
}

- (BOOL)client:(id)a3 isIdsIdentifier:(id)a4 ofAccessory:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [WeakRetained deviceForAccessoryUUID:v8 forRemoteEventRouterClientController:self];

  v11 = [v10 deviceAddress];
  v12 = [v11 idsIdentifier];
  v13 = [v12 hmf_isEqualToUUID:v7];

  return v13;
}

- (BOOL)clientIsEnabled:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained isCurrentUserRestrictedForRemoteEventRouterClientController:self];

  return v5 ^ 1;
}

- (void)discoverPrimaryResidentForEventRouterClient:(id)a3
{
  v3 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  v4 = self;
  [(HMDHomeRemoteEventRouterClientController *)self discoverPrimaryResidentForEventRouterClientController:v3];
}

- (id)primaryResidentChangeMonitorForRouterClient:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained primaryResidentChangeMonitorForRemoteEventRouterClientController:self];

  return v5;
}

- (id)routerClientPrimaryResidentDeviceIdentifier:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v5 = [WeakRetained primaryResidentDeviceIdentifierForRemoteEventRouterClientController:self];

  return v5;
}

- (BOOL)isNetworkAvailable
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isNetworkAvailableForRemoteEventRouterClientController:self];

  return v4;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResidentForRemoteEventRouterClientController:self];

  return v4;
}

- (id)routerClientMessageDestination:(id)a3 serverIdentifier:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v10 = objc_getProperty(self, v9, 32, 1);
    if (objc_getProperty(self, v11, 88, 1) != v7)
    {
      v31 = a4;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = objc_getProperty(self, v12, 96, 1);
      goto LABEL_4;
    }
  }

  else
  {
    v31 = a4;
    dispatch_assert_queue_V2(0);
    if (v7)
    {
      v10 = 0;
      WeakRetained = 0;
      v13 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
LABEL_4:
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            if (v20 == v7)
            {
              v21 = [v20 accessoryUUID];
              v22 = [WeakRetained deviceForAccessoryUUID:v21 forRemoteEventRouterClientController:self];

              v23 = [v7 identifier];

              v17 = v22;
              v10 = v23;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      a4 = v31;
      if (v17)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

    WeakRetained = 0;
    v10 = 0;
  }

  v17 = [WeakRetained deviceForPrimaryResidentForRemoteEventRouterClientController:{self, v31}];
  if (v17)
  {
LABEL_16:
    *a4 = [v17 identifier];
    v24 = [[HMDRemoteDeviceMessageDestination alloc] initWithTarget:v10 device:v17];
    goto LABEL_24;
  }

LABEL_21:
  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v28;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine destination for event router client: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v24 = 0;
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)fetchWithFilters:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeRemoteEventRouterClientController_fetchWithFilters_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(Property, block);
}

void __72__HMDHomeRemoteEventRouterClientController_fetchWithFilters_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v26 = *(a1 + 40);
  v24 = v2;
  if (v1)
  {
    Property = objc_getProperty(v1, v3, 24, 1);
    dispatch_assert_queue_V2(Property);
    if ([v1 isCurrentDevicePrimaryResident])
    {
      v6 = dispatch_group_create();
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = __Block_byref_object_copy__112221;
      v37[4] = __Block_byref_object_dispose__112222;
      v38 = 0;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = objc_getProperty(v1, v7, 96, 1);
      v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v8)
      {
        v9 = *v34;
        do
        {
          v10 = 0;
          do
          {
            if (*v34 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v33 + 1) + 8 * v10);
            v12 = [v1 residentDelegatingEventRouter];
            v13 = [v11 eventRouter];
            v14 = [v13 synchronousSubscriptionProvider];
            v15 = [v1 delegatingRouter:v12 filteredTopics:v26 forRouter:v14];

            v16 = [v15 na_filter:&__block_literal_global_112223];

            if ([v16 count])
            {
              dispatch_group_enter(v6);
              v17 = [v11 eventRouterClient];
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_3;
              v30[3] = &unk_278678570;
              v32 = v37;
              v30[4] = v1;
              v30[5] = v11;
              v31 = v6;
              [v11 client:v17 fetchWithFilters:v16 isMultiHop:0 completion:v30];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v8);
      }

      v19 = objc_getProperty(v1, v18, 24, 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_81;
      block[3] = &unk_278678E98;
      v28 = v24;
      v29 = v37;
      dispatch_group_notify(v6, v19, block);

      _Block_object_dispose(v37, 8);
    }

    else
    {
      v20 = objc_getProperty(v1, v5, 88, 1);
      v22 = [objc_getProperty(v1 v21];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke;
      v39[3] = &unk_278678548;
      v40 = v24;
      [v20 client:v22 fetchWithFilters:v26 isMultiHop:1 completion:v39];

      v6 = v40;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v11 = *(*(a1 + 56) + 8);
  v13 = *(v11 + 40);
  v12 = (v11 + 40);
  if (!v13)
  {
    objc_storeStrong(v12, a4);
  }

  os_unfair_lock_unlock(v10 + 2);
  if (v9)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch events from router: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  dispatch_group_leave(*(a1 + 48));

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDHomeRemoteEventRouterClientController__fetchWithFilters_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CD19F0] decodeTopic:a2];
  v3 = [v2 isIndexTopic];

  return v3 ^ 1u;
}

- (id)dumpStateDescription
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"[HMDHomeRemoteEventRouterClientController"];
  if (self)
  {
    v5 = [objc_getProperty(self v3];
    [v4 appendFormat:@" primary resident client:%@", v5];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    Property = objc_getProperty(self, v6, 96, 1);
  }

  else
  {
    v17 = [0 dumpStateDescription];
    [v4 appendFormat:@" primary resident client:%@", v17];

    Property = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) dumpStateDescription];
        [v4 appendFormat:@" resident client:%@", v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v4 appendString:@"]"];
  v14 = [v4 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)primaryResidentClientHasConnectivity
{
  if (self)
  {
    self = objc_getProperty(self, a2, 88, 1);
    v2 = vars8;
  }

  return [(HMDHomeRemoteEventRouterClientController *)self hasConnectivityToServer];
}

- (BOOL)isPrimaryResidentClientConnected
{
  if (self)
  {
    self = objc_getProperty(self, a2, 88, 1);
    v2 = vars8;
  }

  return [(HMDHomeRemoteEventRouterClientController *)self isConnected];
}

- (void)networkAvailabilityDidChange:(BOOL)a3
{
  v4 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__HMDHomeRemoteEventRouterClientController_networkAvailabilityDidChange___block_invoke;
  v5[3] = &unk_278688650;
  v5[4] = v4;
  v6 = a3;
  dispatch_async(&self->super, v5);
}

uint64_t __73__HMDHomeRemoteEventRouterClientController_networkAvailabilityDidChange___block_invoke(uint64_t result, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 40);
    Property = objc_getProperty(*(result + 32), a2, 24, 1);
    dispatch_assert_queue_V2(Property);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = objc_getProperty(v2, v5, 96, 1);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * v10++) networkAvailabilityDidChange:{v3, v13}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    result = [objc_getProperty(v2 v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeResidentRouterForAccessoryUUID:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HMDHomeRemoteEventRouterClientController_removeResidentRouterForAccessoryUUID___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __81__HMDHomeRemoteEventRouterClientController_removeResidentRouterForAccessoryUUID___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 24, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 8);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isMessagedHomepodSettingsEnabledForClientController:v1] && objc_msgSend(v6, "isCurrentDeviceResidentCapableForRemoteEventRouterClientController:", v1))
      {
        v28 = v6;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [objc_getProperty(v1 v7];
        v9 = [v8 countByEnumeratingWithState:&v29 objects:buf count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v30;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = [v14 accessoryUUID];
              v16 = [v15 hmf_isEqualToUUID:v3];

              if (v16)
              {
                v17 = v14;

                v11 = v17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:buf count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        v22 = objc_autoreleasePoolPush();
        v23 = v1;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *v33 = 138543874;
          v34 = v25;
          v35 = 2112;
          v36 = v11;
          v37 = 2112;
          v38 = v3;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Removing %@ client resident event router(s) for accessory: %@", v33, 0x20u);
        }

        objc_autoreleasePoolPop(v22);
        [objc_getProperty(v23 v26];

        v6 = v28;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v21;
        v41 = 2112;
        v42 = v3;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident router for accessory: %@ due to nil datasource", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)createResidentRouterForAccessoryUUID:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__HMDHomeRemoteEventRouterClientController_createResidentRouterForAccessoryUUID___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __81__HMDHomeRemoteEventRouterClientController_createResidentRouterForAccessoryUUID___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    Property = objc_getProperty(v1, v2, 24, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(v1 + 8);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      if ([WeakRetained isMessagedHomepodSettingsEnabledForClientController:v1] && objc_msgSend(v6, "isCurrentDeviceResidentCapableForRemoteEventRouterClientController:", v1))
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v8 = objc_getProperty(v1, v7, 96, 1);
        v9 = [v8 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v56;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v56 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v55 + 1) + 8 * i) accessoryUUID];
              v14 = [v13 hmf_isEqualToUUID:v3];

              if (v14)
              {
                v47 = objc_autoreleasePoolPush();
                v48 = v1;
                v49 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  v50 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v60 = v50;
                  v61 = 2112;
                  v62 = v3;
                  _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Not creating resident router for accessory (%@) as it already exists.", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v47);
                goto LABEL_22;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v55 objects:v66 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v54 = [v6 messageDispatcherForRemoteEventRouterClientController:v1];
        v53 = [v6 notificationCenterForRemoteEventRouterClientController:v1];
        v15 = [v6 eventStoreReadHandleForRemoteEventRouterClientController:v1];
        v16 = [v6 eventStoreWriteHandleForRemoteEventRouterClientController:v1];
        v18 = objc_getProperty(v1, v17, 80, 1);
        v20 = objc_getProperty(v1, v19, 32, 1);
        v22 = objc_getProperty(v1, v21, 24, 1);
        v24 = objc_getProperty(v1, v23, 40, 1);
        v26 = objc_getProperty(v1, v25, 48, 1);
        v52 = v15;
        v28 = [v18 residentClientWithAccessoryUUID:v3 homeUUID:v20 queue:v22 dataSource:v1 messageDispatcher:v54 notificationCenter:v53 requestMessageName:v24 updateMessageName:v26 multiHopFetchResponseMessageName:objc_getProperty(v1 storeReadHandle:v27 storeWriteHandle:{56, 1), v15, v16}];

        v29 = [v1 isCurrentDevicePrimaryResident];
        v30 = [v1 isNetworkAvailable];
        v65 = objc_getProperty(v1, v31, 72, 1);
        v32 = MEMORY[0x277CBEA60];
        v33 = v65;
        v34 = [v32 arrayWithObjects:&v65 count:1];

        [v28 configureIsPrimaryResident:v29 networkAvailable:v30 additionalPolicies:v34];
        [(HMDHomeRemoteEventRouterClientController *)v1 _sendNetworkAvailableOnStartingMessaging:v28];
        v35 = [v1 residentDelegatingEventRouter];
        v36 = [v28 eventRouter];
        v37 = [v36 synchronousSubscriptionProvider];
        [v35 registerSubRouter:v37];

        [objc_getProperty(v1 v38];
        v39 = objc_autoreleasePoolPush();
        v40 = v1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543874;
          v60 = v42;
          v61 = 2112;
          v62 = v3;
          v63 = 2112;
          v64 = v28;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Created resident router for accessory: %@, client: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v39);
      }
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v1;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *v66 = 138543618;
        v67 = v46;
        v68 = 2112;
        v69 = v3;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot create resident router for accessory: %@ due to nil datasource", v66, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
    }

LABEL_22:
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_sendNetworkAvailableOnStartingMessaging:(uint64_t)a1
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__112221;
  v9[4] = __Block_byref_object_dispose__112222;
  v4 = *(a1 + 112);
  v10 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__HMDHomeRemoteEventRouterClientController__sendNetworkAvailableOnStartingMessaging___block_invoke;
  v6[3] = &unk_278678520;
  v6[4] = a1;
  v5 = v3;
  v7 = v5;
  v8 = v9;
  [v4 getResultWithCompletion:v6];

  _Block_object_dispose(v9, 8);
}

void __85__HMDHomeRemoteEventRouterClientController__sendNetworkAvailableOnStartingMessaging___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 64));
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
      WeakRetained = 0;
    }

    v10 = [WeakRetained isNetworkAvailableForRemoteEventRouterClientController:v9];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 40);
        v19 = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Mark network as available on transport start %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 40) networkAvailabilityDidChange:1];
    }
  }

  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentAccessoryUUID:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMDHomeRemoteEventRouterClientController_updateCurrentAccessoryUUID___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __71__HMDHomeRemoteEventRouterClientController_updateCurrentAccessoryUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 104, 1);
  }

  if (([Property hmf_isEqualToUUID:*(a1 + 40)] & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 40);

      objc_setProperty_atomic(v5, v4, v6, 104);
    }
  }
}

- (NSUUID)homeUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 routerClientFactory:(id)a6 requestMessageName:(id)a7 updateMessageName:(id)a8 multiHopFetchResponseMessageName:(id)a9 clientUserMessagePolicy:(id)a10 currentAccessoryUUID:(id)a11 assertionController:(id)a12 remoteTransportStartFuture:(id)a13 delegatingRouterFactory:(id)a14
{
  v64[1] = *MEMORY[0x277D85DE8];
  v62 = a3;
  obj = a4;
  v61 = a4;
  v19 = a5;
  v20 = a8;
  v60 = a6;
  v59 = a7;
  v58 = a8;
  v57 = a9;
  v56 = a10;
  v55 = a11;
  v21 = a12;
  v54 = a13;
  v22 = a14;
  v63.receiver = self;
  v63.super_class = HMDHomeRemoteEventRouterClientController;
  v23 = [(HMDHomeRemoteEventRouterClientController *)&v63 init];
  v24 = v23;
  if (v23)
  {
    v23->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v23->_workQueue, obj);
    v25 = [MEMORY[0x277CBEB18] array];
    residentClients = v24->_residentClients;
    v24->_residentClients = v25;

    objc_storeStrong(&v24->_messageTargetUUID, a3);
    objc_storeStrong(&v24->_currentAccessoryUUID, a11);
    objc_storeWeak(&v24->_dataSource, v19);
    objc_storeStrong(&v24->_requestMessageName, a7);
    objc_storeStrong(&v24->_updateMessageName, v20);
    objc_storeStrong(&v24->_multiHopFetchResponseMessageName, a9);
    objc_storeStrong(&v24->_clientUserMessagePolicy, a10);
    objc_storeStrong(&v24->_routerClientFactory, a6);
    v27 = v22[2](v22, v24);
    residentDelegatingEventRouter = v24->_residentDelegatingEventRouter;
    v24->_residentDelegatingEventRouter = v27;

    objc_storeStrong(&v24->_remoteTransportStartFuture, a13);
    v51 = [v19 messageDispatcherForRemoteEventRouterClientController:v24];
    [v19 notificationCenterForRemoteEventRouterClientController:v24];
    v50 = v53 = v21;
    v29 = [v19 eventStoreReadHandleForRemoteEventRouterClientController:v24];
    v30 = [v19 eventStoreWriteHandleForRemoteEventRouterClientController:v24];
    v31 = [v60 primaryResidentClientWithMessageTargetUUID:v62 queue:v61 dataSource:v24 messageDispatcher:v51 notificationCenter:v50 requestMessageName:v59 updateMessageName:v58 multiHopFetchResponseMessageName:v57 storeReadHandle:v29 storeWriteHandle:v30];
    remoteEventRouterPrimaryResidentClient = v24->_remoteEventRouterPrimaryResidentClient;
    v24->_remoteEventRouterPrimaryResidentClient = v31;

    v33 = v24->_remoteEventRouterPrimaryResidentClient;
    v34 = [(HMDHomeRemoteEventRouterClientController *)v24 isCurrentDevicePrimaryResident];
    v35 = [(HMDHomeRemoteEventRouterClientController *)v24 isNetworkAvailable];
    v64[0] = objc_getProperty(v24, v36, 72, 1);
    v37 = v19;
    v38 = MEMORY[0x277CBEA60];
    v39 = v22;
    v40 = v64[0];
    v41 = [v38 arrayWithObjects:v64 count:1];
    [(HMDRemoteEventRouterClient *)v33 configureIsPrimaryResident:v34 networkAvailable:v35 additionalPolicies:v41];

    v19 = v37;
    [v53 registerClient:v24->_remoteEventRouterPrimaryResidentClient];
    v42 = v24->_residentDelegatingEventRouter;
    v43 = [(HMDRemoteEventRouterClient *)v24->_remoteEventRouterPrimaryResidentClient eventRouter];
    v44 = [v43 synchronousSubscriptionProvider];
    v45 = v42;
    v22 = v39;
    [(HMEDelegatingEventRouter *)v45 registerSubRouter:v44];

    [(HMDHomeRemoteEventRouterClientController *)v24 _sendNetworkAvailableOnStartingMessaging:?];
    v21 = v53;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v24;
}

- (HMDHomeRemoteEventRouterClientController)initWithMessageTargetUUID:(id)a3 workQueue:(id)a4 dataSource:(id)a5 requestMessageName:(id)a6 updateMessageName:(id)a7 multiHopFetchResponseMessageName:(id)a8 clientUserMessagePolicy:(id)a9 currentAccessoryUUID:(id)a10 assertionController:(id)a11
{
  v16 = a3;
  v17 = a4;
  v29 = a11;
  v28 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = objc_alloc_init(HMDHomeRemoteEventRouterClientFactory);
  v30 = +[HMDSecureRemoteMessageTransport defaultTransport];
  v27 = [v30 startFuture];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __226__HMDHomeRemoteEventRouterClientController_initWithMessageTargetUUID_workQueue_dataSource_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_clientUserMessagePolicy_currentAccessoryUUID_assertionController___block_invoke;
  v33[3] = &unk_2786784F8;
  v34 = v16;
  v35 = v17;
  v24 = v17;
  v25 = v16;
  v32 = [(HMDHomeRemoteEventRouterClientController *)self initWithMessageTargetUUID:v25 workQueue:v24 dataSource:v22 routerClientFactory:v23 requestMessageName:v21 updateMessageName:v20 multiHopFetchResponseMessageName:v19 clientUserMessagePolicy:v18 currentAccessoryUUID:v28 assertionController:v29 remoteTransportStartFuture:v27 delegatingRouterFactory:v33];

  return v32;
}

id __226__HMDHomeRemoteEventRouterClientController_initWithMessageTargetUUID_workQueue_dataSource_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_clientUserMessagePolicy_currentAccessoryUUID_assertionController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUIDString];
  v6 = [@"Client.EventRouter.Delegating." stringByAppendingString:v5];

  v7 = [objc_alloc(MEMORY[0x277D17498]) initWithQueue:*(a1 + 40) dataSource:v4 storeReadHandle:0 logCategory:objc_msgSend(v6 identifier:{"UTF8String"), *(a1 + 32)}];

  return v7;
}

@end