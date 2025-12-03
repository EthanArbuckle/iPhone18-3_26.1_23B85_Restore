@interface HMDRemoteEventRouterPrimaryResidentClient
- (BOOL)_clientIsEnabled:(id)enabled;
- (id)dumpStateDescription;
- (unint64_t)messageTransportRestriction;
- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification;
@end

@implementation HMDRemoteEventRouterPrimaryResidentClient

- (id)dumpStateDescription
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = HMDRemoteEventRouterPrimaryResidentClient;
  dumpStateDescription = [(HMDRemoteEventRouterClient *)&v6 dumpStateDescription];
  v4 = [v2 stringWithFormat:@"[HMDRemoteEventRouterPrimaryResidentClient: %@]", dumpStateDescription];

  return v4;
}

- (BOOL)_clientIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  v7 = [dataSource clientIsEnabled:self];

  if (v7 && ([(HMDRemoteEventRouterClient *)self eventRouterClient], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == enabledCopy))
  {
    v9 = ![(HMDRemoteEventRouterClient *)self isPrimaryResident];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __110__HMDRemoteEventRouterPrimaryResidentClient_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __110__HMDRemoteEventRouterPrimaryResidentClient_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16.receiver = *(a1 + 40);
  v16.super_class = HMDRemoteEventRouterPrimaryResidentClient;
  objc_msgSendSuper2(&v16, sel_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification_, v2);
  v3 = [*(a1 + 40) dataSource];
  v4 = [v3 routerClientPrimaryResidentDeviceIdentifier:*(a1 + 40)];

  if (v4 && ((v6 = *(a1 + 40)) == 0 ? (Property = 0) : (Property = objc_getProperty(v6, v5, 120, 1)), ([v4 hmf_isEqualToUUID:Property] & 1) == 0))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating primary resident identifier to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = *(a1 + 40);
    if (v14)
    {
      objc_setProperty_atomic_copy(v14, v13, v4, 120);
      v14 = *(a1 + 40);
    }

    v8 = [v14 eventRouterClient];
    [v8 serverDidChangeWithServerIdentifier:v4];
  }

  else
  {
    v8 = [*(a1 + 40) eventRouterClient];
    [v8 connectionCapabilityDidChange];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)messageTransportRestriction
{
  selfCopy = self;
  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  LODWORD(selfCopy) = [dataSource routerClientShouldRestrictMessagingToLocalOnly:selfCopy];

  if (selfCopy)
  {
    return 8;
  }

  else
  {
    return -1;
  }
}

@end