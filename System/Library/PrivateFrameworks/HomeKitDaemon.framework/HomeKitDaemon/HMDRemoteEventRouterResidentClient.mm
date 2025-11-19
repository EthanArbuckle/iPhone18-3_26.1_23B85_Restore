@interface HMDRemoteEventRouterResidentClient
- (BOOL)clientIsEnabled:(id)a3;
- (id)client:(id)a3 upstreamTopicsForTopic:(id)a4;
- (id)dumpStateDescription;
- (id)forwardingTopicsForTopics:(id)a3 downstreamRouter:(id)a4;
- (id)initWitAccessoryUUID:(id)a3 homeUUID:(id)a4 queue:(id)a5 dataSource:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 storeReadHandle:(id)a12 storeWriteHandle:(id)a13 retryIntervalProvider:(id)a14 logCategory:(const char *)a15;
- (void)_registerForNotifications;
- (void)handleAccessoryDeviceDidUpdateNotification:(id)a3;
- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)a3;
- (void)handlePrimaryResidentReceivedIncomingConnection:(id)a3;
@end

@implementation HMDRemoteEventRouterResidentClient

- (id)forwardingTopicsForTopics:(id)a3 downstreamRouter:(id)a4
{
  v5 = a3;
  v6 = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  v7 = [(HMDRemoteEventRouterResidentClient *)self homeUUID];
  v8 = [HMDAccessoryEventsGenerated forwardingTopicsForTopics:v5 residentAccessoryUUID:v6 homeUUID:v7];

  return v8;
}

- (id)client:(id)a3 upstreamTopicsForTopic:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemoteEventRouterResidentClient *)self homeUUID];
  v7 = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  v8 = [HMDHomeEventsGenerated upstreamHomeAndAccessoryTopicsForTopic:v5 homeUUID:v6 accessoryUUID:v7];

  return v8;
}

- (id)dumpStateDescription
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = HMDRemoteEventRouterResidentClient;
  v3 = [(HMDRemoteEventRouterClient *)&v6 dumpStateDescription];
  v4 = [v2 stringWithFormat:@"[HMDRemoteEventRouterResidentClient: %@]", v3];

  return v4;
}

- (BOOL)clientIsEnabled:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMDRemoteEventRouterClient *)self workQueue];
    dispatch_assert_queue_V2(v5);

    v6 = [(HMDRemoteEventRouterClient *)self eventRouterClient];

    LOBYTE(self) = v6 == v4 && [(HMDRemoteEventRouterClient *)self isPrimaryResident];
  }

  return self;
}

- (void)handlePrimaryResidentReceivedIncomingConnection:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"idsIdentifier"];

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

  if (v7)
  {
    v8 = [(HMDRemoteEventRouterClient *)self dataSource];
    v9 = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
    v10 = [v8 client:self isIdsIdentifier:v7 ofAccessory:v9];

    if (v10)
    {
      v11 = [(HMDRemoteEventRouterClient *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__HMDRemoteEventRouterResidentClient_handlePrimaryResidentReceivedIncomingConnection___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v11, block);
    }
  }
}

void __86__HMDRemoteEventRouterResidentClient_handlePrimaryResidentReceivedIncomingConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 120) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Primary resident received incoming connection from client reset retry timer.", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [*(a1 + 32) eventRouterClient];
    [v6 resetRetryTimerToInitialState];

    *(*(a1 + 32) + 120) = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryDeviceDidUpdateNotification:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 uuid];

  v8 = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  v9 = [v8 hmf_isEqualToUUID:v7];

  if (v9)
  {
    v10 = [(HMDRemoteEventRouterClient *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDRemoteEventRouterResidentClient_handleAccessoryDeviceDidUpdateNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v10, block);
  }
}

void __81__HMDRemoteEventRouterResidentClient_handleAccessoryDeviceDidUpdateNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory device updated, kicking event router client", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) eventRouterClient];
  [v6 connectionCapabilityDidChange];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMDRemoteEventRouterResidentClient_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __103__HMDRemoteEventRouterResidentClient_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Resident Client received primary resident change notification %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 40);
  v10.receiver = *(a1 + 32);
  v10.super_class = HMDRemoteEventRouterResidentClient;
  objc_msgSendSuper2(&v10, sel_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification_, v7);
  v8 = [*(a1 + 32) eventRouterClient];
  [v8 connectionCapabilityDidChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v3 = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [v3 addObserver:self selector:sel_handleAccessoryDeviceDidUpdateNotification_ name:@"HMDAppleMediaAccessoryDeviceUpdatedNotification" object:0];

  v4 = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [v4 addObserver:self selector:sel_handlePrimaryResidentReceivedIncomingConnection_ name:@"RemoteEventRouterServerDidReceiveConnectionToPrimary" object:0];
}

- (id)initWitAccessoryUUID:(id)a3 homeUUID:(id)a4 queue:(id)a5 dataSource:(id)a6 messageDispatcher:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 storeReadHandle:(id)a12 storeWriteHandle:(id)a13 retryIntervalProvider:(id)a14 logCategory:(const char *)a15
{
  v40 = a4;
  v19 = a5;
  v37 = a12;
  v35 = a13;
  v33 = a14;
  v32 = a11;
  v30 = a10;
  v31 = a9;
  v29 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = +[HMDMetricsManager sharedLogEventSubmitter];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __259__HMDRemoteEventRouterResidentClient_initWitAccessoryUUID_homeUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_retryIntervalProvider_logCategory___block_invoke;
  v42[3] = &unk_2786726B0;
  v24 = v19;
  v43 = v24;
  v38 = v37;
  v44 = v38;
  v36 = v35;
  v45 = v36;
  v34 = v33;
  v46 = v34;
  v47 = a15;
  v41.receiver = self;
  v41.super_class = HMDRemoteEventRouterResidentClient;
  v25 = [(HMDRemoteEventRouterClient *)&v41 initWithMessageTargetUUID:v22 queue:v24 dataSource:v21 messageDispatcher:v20 notificationCenter:v29 requestMessageName:v31 updateMessageName:v30 multiHopFetchResponseMessageName:v32 logCategory:a15 logEventSubmitter:v23 eventRouterClientFactory:v42];

  if (v25)
  {
    objc_storeStrong(&v25->_homeUUID, a4);
  }

  return v25;
}

@end