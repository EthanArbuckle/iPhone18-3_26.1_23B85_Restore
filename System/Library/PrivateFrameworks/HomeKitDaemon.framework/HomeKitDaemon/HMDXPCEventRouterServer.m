@interface HMDXPCEventRouterServer
+ (id)logCategory;
- (BOOL)shouldAllowEvent:(id)a3 topic:(id)a4 connection:(id)a5;
- (HMDXPCEventRouterServer)initWithMessageUUID:(id)a3 dataSource:(id)a4 changeRegistrationsMessageName:(id)a5 updateEventsMessageName:(id)a6 messageDispatcher:(id)a7 queue:(id)a8 notificationCenter:(id)a9 persistentConnectionServerFactory:(id)a10;
- (HMDXPCEventRouterServer)initWithMessageUUID:(id)a3 dataSource:(id)a4 changeRegistrationsMessageName:(id)a5 updateEventsMessageName:(id)a6 messageDispatcher:(id)a7 queue:(id)a8 notificationCenter:(id)a9 subscriptionProvider:(id)a10 registrationEventRouter:(id)a11 storeReadHandle:(id)a12;
- (HMDXPCEventRouterServerDataSource)dataSource;
- (id)dumpStateDescription;
- (id)logIdentifier;
- (id)server:(id)a3 expandedTopicsForTopics:(id)a4;
- (id)server:(id)a3 upstreamTopicsForTopic:(id)a4;
- (uint64_t)isConnectionActive:(uint64_t)a1;
- (void)_handleChangeRegistrationsRequest:(id)a3;
- (void)handleConnectionActiveStateChange:(id)a3;
- (void)handleXPCConnectionInvalidated:(id)a3;
- (void)registerForMessages;
- (void)sendUpdatedCachedEvents:(id)a3 toConnection:(id)a4;
- (void)sendUpdatedEvents:(id)a3 toConnection:(id)a4;
@end

@implementation HMDXPCEventRouterServer

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_11122 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_11122, &__block_literal_global_11123);
  }

  v3 = logCategory__hmf_once_v1_11124;

  return v3;
}

- (id)logIdentifier
{
  v2 = [(HMDXPCEventRouterServer *)self messageUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDXPCEventRouterServerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)dumpStateDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDXPCEventRouterServer *)self persistentConnectionServer];
  v4 = [v3 dumpStateDescription];
  v5 = [v2 stringWithFormat:@"[HMDXPCEventRouterServer server: %@]", v4];

  return v5;
}

- (id)server:(id)a3 expandedTopicsForTopics:(id)a4
{
  v5 = a4;
  v6 = [(HMDXPCEventRouterServer *)self dataSource];
  v7 = [v6 expandedTopicsForTopics:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v9 = v8;

  return v9;
}

- (id)server:(id)a3 upstreamTopicsForTopic:(id)a4
{
  v4 = [HMDHomeEventsGenerated upstreamClientTopicForTopic:a4];
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v4];

  return v5;
}

- (BOOL)shouldAllowEvent:(id)a3 topic:(id)a4 connection:(id)a5
{
  v5 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isEntitledForSPIAccess];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sendUpdatedCachedEvents:(id)a3 toConnection:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v14;
      v34 = 2048;
      v35 = [v6 count];
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending cached events: %ld to connection: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v18;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Sending cached events: %@ to connection: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [v6 na_map:&__block_literal_global_43];
    v20 = objc_alloc_init(MEMORY[0x277CD1F40]);
    v21 = [v19 mutableCopy];
    [v20 setCachedEvents:v21];

    v22 = [v20 data];
    v31 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v24 = MEMORY[0x277D0F818];
    v25 = [(HMDXPCEventRouterServer *)v16 updateEventsMessageName];
    v26 = [(HMDXPCEventRouterServer *)v16 messageTargetUUID];
    v27 = [v24 entitledMessageWithName:v25 identifier:v26 messagePayload:v23];

    [v9 sendMessage:v27 completionHandler:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain xpc connection from %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)sendUpdatedEvents:(id)a3 toConnection:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v14;
      v34 = 2048;
      v35 = [v6 count];
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Sending events: %ld to connection: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_autoreleasePoolPush();
    v16 = v11;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v18;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Sending events: %@ to connection: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [v6 na_map:&__block_literal_global_40];
    v20 = objc_alloc_init(MEMORY[0x277CD1F40]);
    v21 = [v19 mutableCopy];
    [v20 setEvents:v21];

    v22 = [v20 data];
    v31 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

    v24 = MEMORY[0x277D0F818];
    v25 = [(HMDXPCEventRouterServer *)v16 updateEventsMessageName];
    v26 = [(HMDXPCEventRouterServer *)v16 messageTargetUUID];
    v27 = [v24 entitledMessageWithName:v25 identifier:v26 messagePayload:v23];

    [v9 sendMessage:v27 completionHandler:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain xpc connection from %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleConnectionActiveStateChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDXPCEventRouterServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDXPCEventRouterServer_handleConnectionActiveStateChange___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDXPCEventRouterServer_handleConnectionActiveStateChange___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[HMDXPCEventRouterSever] Received notification that connection active state changed: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v9 = *(a1 + 40);
    v10 = v4;
    if (v9)
    {
      v11 = [v9 workQueue];
      dispatch_assert_queue_V2(v11);

      if (([(HMDXPCEventRouterServer *)v9 isConnectionActive:v10]& 1) == 0)
      {
        v12 = [v9 persistentConnectionServer];
        [v12 disconnectConnection:v10];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)isConnectionActive:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 processInfo];
    v6 = [v5 shouldMonitor];

    if (v6)
    {
      v7 = [v4 sendPolicyParameters];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      a1 = [v9 isActive];
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

- (void)handleXPCConnectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = [(HMDXPCEventRouterServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDXPCEventRouterServer_handleXPCConnectionInvalidated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__HMDXPCEventRouterServer_handleXPCConnectionInvalidated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  if (v6)
  {
    v5 = [*(a1 + 40) persistentConnectionServer];
    [v5 didInvalidateConnection:v6];
  }
}

- (void)_handleChangeRegistrationsRequest:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCEventRouterServer *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 transport];

  if (!v6)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@No transport on message.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Did not find transport" reason:@"Need xpc connection" suggestion:0];
    goto LABEL_24;
  }

  if (([v4 isEntitledForSPIAccess] & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Not entitled.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
LABEL_24:
    v9 = v34;
    [v4 respondWithError:v34];
    goto LABEL_25;
  }

  v7 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HMDXPCEventRouterServer *)self isConnectionActive:v9];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Found xpc connection in message", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [v4 dataForKey:*MEMORY[0x277CD15C0]];
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x277CD1F38]) initWithData:v16];
        v18 = [v17 topicFilterAdditions];
        v19 = [v18 na_map:&__block_literal_global_26];
        v20 = v19;
        v21 = MEMORY[0x277CBEBF8];
        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = MEMORY[0x277CBEBF8];
        }

        v23 = v22;

        v24 = [v17 topicFilterRemovals];
        v25 = [v24 na_map:&__block_literal_global_29_11096];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v21;
        }

        v28 = v27;

        v29 = [(HMDXPCEventRouterServer *)v12 persistentConnectionServer];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __61__HMDXPCEventRouterServer__handleChangeRegistrationsRequest___block_invoke_3;
        v50[3] = &unk_27867DBA0;
        v50[4] = v12;
        v51 = v4;
        [v29 changeRegistrationsForConnection:v9 topicFilterAdditions:v23 topicFilterRemovals:v28 completion:v50];
      }

      else
      {
        v46 = objc_autoreleasePoolPush();
        v47 = v12;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v53 = v49;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@No message payload present.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v4 respondWithError:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v45;
        v54 = 2112;
        v55 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Connection is not active %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [v4 respondWithSuccess];
    }
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v43;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Transport is not XPC connection.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Transport is not XPC" reason:@"Need xpc connection" suggestion:0];
    [v4 respondWithError:v44];

    v9 = 0;
  }

LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
}

void __61__HMDXPCEventRouterServer__handleChangeRegistrationsRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    [*(a1 + 40) respondWithError:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 na_map:&__block_literal_global_32_11098];
    v10 = objc_alloc_init(MEMORY[0x277CD1F40]);
    v11 = [v9 mutableCopy];
    [v10 setCachedEvents:v11];

    v15 = *MEMORY[0x277CD15B8];
    v12 = [v10 data];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    [*(a1 + 40) respondWithPayload:v13];
    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

id __61__HMDXPCEventRouterServer__handleChangeRegistrationsRequest___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  v8 = [v7 pbEventInfo];

  return v8;
}

- (void)registerForMessages
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCEventRouterServer *)self messageDispatcher];
  v4 = [(HMDXPCEventRouterServer *)self changeRegistrationsMessageName];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handleChangeRegistrationsRequest_];

  v7 = [(HMDXPCEventRouterServer *)self notificationCenter];
  [v7 addObserver:self selector:sel_handleXPCConnectionInvalidated_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:0];

  v8 = [(HMDXPCEventRouterServer *)self notificationCenter];
  [v8 addObserver:self selector:sel_handleConnectionActiveStateChange_ name:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDXPCEventRouterServer)initWithMessageUUID:(id)a3 dataSource:(id)a4 changeRegistrationsMessageName:(id)a5 updateEventsMessageName:(id)a6 messageDispatcher:(id)a7 queue:(id)a8 notificationCenter:(id)a9 persistentConnectionServerFactory:(id)a10
{
  v29 = a3;
  v17 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v18 = a9;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = HMDXPCEventRouterServer;
  v20 = [(HMDXPCEventRouterServer *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_messageUUID, a3);
    objc_storeWeak(&v21->_dataSource, v17);
    objc_storeStrong(&v21->_messageDispatcher, a7);
    objc_storeStrong(&v21->_workQueue, a8);
    objc_storeStrong(&v21->_notificationCenter, a9);
    objc_storeStrong(&v21->_changeRegistrationsMessageName, a5);
    objc_storeStrong(&v21->_updateEventsMessageName, a6);
    v22 = v19[2](v19);
    persistentConnectionServer = v21->_persistentConnectionServer;
    v21->_persistentConnectionServer = v22;

    [(HMEPersistentConnectionServer *)v21->_persistentConnectionServer setDelegate:v21];
    [(HMEPersistentConnectionServer *)v21->_persistentConnectionServer setDataSource:v21];
  }

  return v21;
}

- (HMDXPCEventRouterServer)initWithMessageUUID:(id)a3 dataSource:(id)a4 changeRegistrationsMessageName:(id)a5 updateEventsMessageName:(id)a6 messageDispatcher:(id)a7 queue:(id)a8 notificationCenter:(id)a9 subscriptionProvider:(id)a10 registrationEventRouter:(id)a11 storeReadHandle:(id)a12
{
  v16 = a8;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __217__HMDXPCEventRouterServer_initWithMessageUUID_dataSource_changeRegistrationsMessageName_updateEventsMessageName_messageDispatcher_queue_notificationCenter_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke;
  v28[3] = &unk_27866F530;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = [(HMDXPCEventRouterServer *)self initWithMessageUUID:a3 dataSource:a4 changeRegistrationsMessageName:a5 updateEventsMessageName:a6 messageDispatcher:a7 queue:v23 notificationCenter:a9 persistentConnectionServerFactory:v28];

  return v24;
}

id __217__HMDXPCEventRouterServer_initWithMessageUUID_dataSource_changeRegistrationsMessageName_updateEventsMessageName_messageDispatcher_queue_notificationCenter_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x277D174D8]) initWithQueue:a1[4] provider:a1[5] registrationEventRouter:a1[6] storeReadHandle:a1[7] logCategory:"XPCEventRouter.Server"];

  return v1;
}

void __38__HMDXPCEventRouterServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_11124;
  logCategory__hmf_once_v1_11124 = v1;
}

@end