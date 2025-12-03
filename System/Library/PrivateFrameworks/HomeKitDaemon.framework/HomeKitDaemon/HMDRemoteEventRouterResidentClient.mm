@interface HMDRemoteEventRouterResidentClient
- (BOOL)clientIsEnabled:(id)enabled;
- (id)client:(id)client upstreamTopicsForTopic:(id)topic;
- (id)dumpStateDescription;
- (id)forwardingTopicsForTopics:(id)topics downstreamRouter:(id)router;
- (id)initWitAccessoryUUID:(id)d homeUUID:(id)iD queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 storeReadHandle:(id)self2 storeWriteHandle:(id)self3 retryIntervalProvider:(id)self4 logCategory:(const char *)self5;
- (void)_registerForNotifications;
- (void)handleAccessoryDeviceDidUpdateNotification:(id)notification;
- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification;
- (void)handlePrimaryResidentReceivedIncomingConnection:(id)connection;
@end

@implementation HMDRemoteEventRouterResidentClient

- (id)forwardingTopicsForTopics:(id)topics downstreamRouter:(id)router
{
  topicsCopy = topics;
  accessoryUUID = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  homeUUID = [(HMDRemoteEventRouterResidentClient *)self homeUUID];
  v8 = [HMDAccessoryEventsGenerated forwardingTopicsForTopics:topicsCopy residentAccessoryUUID:accessoryUUID homeUUID:homeUUID];

  return v8;
}

- (id)client:(id)client upstreamTopicsForTopic:(id)topic
{
  topicCopy = topic;
  homeUUID = [(HMDRemoteEventRouterResidentClient *)self homeUUID];
  accessoryUUID = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  v8 = [HMDHomeEventsGenerated upstreamHomeAndAccessoryTopicsForTopic:topicCopy homeUUID:homeUUID accessoryUUID:accessoryUUID];

  return v8;
}

- (id)dumpStateDescription
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = HMDRemoteEventRouterResidentClient;
  dumpStateDescription = [(HMDRemoteEventRouterClient *)&v6 dumpStateDescription];
  v4 = [v2 stringWithFormat:@"[HMDRemoteEventRouterResidentClient: %@]", dumpStateDescription];

  return v4;
}

- (BOOL)clientIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (self)
  {
    workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
    dispatch_assert_queue_V2(workQueue);

    eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];

    LOBYTE(self) = eventRouterClient == enabledCopy && [(HMDRemoteEventRouterClient *)self isPrimaryResident];
  }

  return self;
}

- (void)handlePrimaryResidentReceivedIncomingConnection:(id)connection
{
  userInfo = [connection userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"idsIdentifier"];

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
    dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
    accessoryUUID = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
    v10 = [dataSource client:self isIdsIdentifier:v7 ofAccessory:accessoryUUID];

    if (v10)
    {
      workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__HMDRemoteEventRouterResidentClient_handlePrimaryResidentReceivedIncomingConnection___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(workQueue, block);
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

- (void)handleAccessoryDeviceDidUpdateNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  uuid = [v6 uuid];

  accessoryUUID = [(HMDRemoteEventRouterResidentClient *)self accessoryUUID];
  v9 = [accessoryUUID hmf_isEqualToUUID:uuid];

  if (v9)
  {
    workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HMDRemoteEventRouterResidentClient_handleAccessoryDeviceDidUpdateNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue, block);
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

- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMDRemoteEventRouterResidentClient_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
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
  notificationCenter = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleAccessoryDeviceDidUpdateNotification_ name:@"HMDAppleMediaAccessoryDeviceUpdatedNotification" object:0];

  notificationCenter2 = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handlePrimaryResidentReceivedIncomingConnection_ name:@"RemoteEventRouterServerDidReceiveConnectionToPrimary" object:0];
}

- (id)initWitAccessoryUUID:(id)d homeUUID:(id)iD queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 storeReadHandle:(id)self2 storeWriteHandle:(id)self3 retryIntervalProvider:(id)self4 logCategory:(const char *)self5
{
  iDCopy = iD;
  queueCopy = queue;
  handleCopy = handle;
  writeHandleCopy = writeHandle;
  providerCopy = provider;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  dCopy = d;
  v23 = +[HMDMetricsManager sharedLogEventSubmitter];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __259__HMDRemoteEventRouterResidentClient_initWitAccessoryUUID_homeUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_retryIntervalProvider_logCategory___block_invoke;
  v42[3] = &unk_2786726B0;
  v24 = queueCopy;
  v43 = v24;
  v38 = handleCopy;
  v44 = v38;
  v36 = writeHandleCopy;
  v45 = v36;
  v34 = providerCopy;
  v46 = v34;
  categoryCopy = category;
  v41.receiver = self;
  v41.super_class = HMDRemoteEventRouterResidentClient;
  v25 = [(HMDRemoteEventRouterClient *)&v41 initWithMessageTargetUUID:dCopy queue:v24 dataSource:sourceCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy logCategory:category logEventSubmitter:v23 eventRouterClientFactory:v42];

  if (v25)
  {
    objc_storeStrong(&v25->_homeUUID, iD);
  }

  return v25;
}

@end