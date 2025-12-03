@interface HMDAccessoryReachabilityChangedLogEventManager
+ (id)logCategory;
- (HMDAccessoryReachabilityChangedLogEventManager)initWithHome:(id)home;
- (HMDHome)home;
- (id)logIdentifier;
- (void)_disable;
- (void)_enable;
- (void)_reset;
- (void)_submit;
- (void)_submitDailyUpdateForAccessory:(id)accessory withTransportReport:(id)report;
- (void)_submitForAccessory:(id)accessory;
- (void)configure;
- (void)handlePrimaryResidentUpdatedNotification:(id)notification;
- (void)runDailyTask;
- (void)submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable;
@end

@implementation HMDAccessoryReachabilityChangedLogEventManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)runDailyTask
{
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDAccessoryReachabilityChangedLogEventManager_runDailyTask__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __62__HMDAccessoryReachabilityChangedLogEventManager_runDailyTask__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@action=submit reason=periodic", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _submit];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handlePrimaryResidentUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDAccessoryReachabilityChangedLogEventManager_handlePrimaryResidentUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __91__HMDAccessoryReachabilityChangedLogEventManager_handlePrimaryResidentUpdatedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@action=enable reason=primary", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _enable];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@action=disable reason=not_primary", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _disable];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_disable
{
  if (self->_enabled)
  {
    [(HMDAccessoryReachabilityChangedLogEventManager *)self _submit];
    self->_enabled = 0;
  }
}

- (void)_enable
{
  if (!self->_enabled)
  {
    [(HMDAccessoryReachabilityChangedLogEventManager *)self _reset];
    self->_enabled = 1;
  }
}

- (void)_submit
{
  if (self->_enabled)
  {
    v7[9] = v2;
    v7[10] = v3;
    home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
    accessories = [home accessories];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__HMDAccessoryReachabilityChangedLogEventManager__submit__block_invoke;
    v7[3] = &unk_279724740;
    v7[4] = self;
    [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  }
}

- (void)_reset
{
  v3 = [MEMORY[0x277CBEAA8] now];
  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  accessories = [home accessories];
  v7 = [v5 initWithCapacity:{objc_msgSend(accessories, "count")}];
  transportReachabilityChangeDatesByUUID = self->_transportReachabilityChangeDatesByUUID;
  self->_transportReachabilityChangeDatesByUUID = v7;

  accessories2 = [home accessories];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke;
  v11[3] = &unk_279724718;
  v11[4] = self;
  v12 = v3;
  v10 = v3;
  [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(*(a1 + 32) + 8);
  v6 = [v3 uuid];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [v3 transportReports];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke_2;
  v10[3] = &unk_2797246F0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
}

void __56__HMDAccessoryReachabilityChangedLogEventManager__reset__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = *(a1[4] + 8);
  v5 = a2;
  v8 = [v3 uuid];
  v6 = [v4 objectForKeyedSubscript:v8];
  v7 = [v5 linkType];

  [v6 setObject:v2 forKeyedSubscript:v7];
}

- (void)_submitForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  transportReports = [accessoryCopy transportReports];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAccessoryReachabilityChangedLogEventManager__submitForAccessory___block_invoke;
  v7[3] = &unk_2797246C8;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  [transportReports hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
}

- (void)_submitDailyUpdateForAccessory:(id)accessory withTransportReport:(id)report
{
  reportCopy = report;
  accessoryCopy = accessory;
  -[HMDAccessoryReachabilityChangedLogEventManager _submitForAccessory:withTransportReport:reachable:changed:](self, "_submitForAccessory:withTransportReport:reachable:changed:", accessoryCopy, reportCopy, [accessoryCopy isReachable], 0);
}

- (void)submitForAccessory:(id)accessory withTransportReport:(id)report reachable:(BOOL)reachable
{
  accessoryCopy = accessory;
  reportCopy = report;
  workQueue = [(HMDAccessoryReachabilityChangedLogEventManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__HMDAccessoryReachabilityChangedLogEventManager_submitForAccessory_withTransportReport_reachable___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = reportCopy;
  reachableCopy = reachable;
  v11 = reportCopy;
  v12 = accessoryCopy;
  dispatch_async(workQueue, v13);
}

- (void)configure
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  home = [(HMDAccessoryReachabilityChangedLogEventManager *)self home];
  dailyScheduler = [home dailyScheduler];
  [dailyScheduler registerDailyTaskRunner:self];
}

- (HMDAccessoryReachabilityChangedLogEventManager)initWithHome:(id)home
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HMDAccessoryReachabilityChangedLogEventManager;
  v5 = [(HMDAccessoryReachabilityChangedLogEventManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
    v6->_enabled = 0;
    v7 = objc_opt_new();
    transportReachabilityChangeDatesByUUID = v6->_transportReachabilityChangeDatesByUUID;
    v6->_transportReachabilityChangeDatesByUUID = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("HMDReachabilityChangedLogEventManagerWorkQueue", v9);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_27767 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_27767, &__block_literal_global_27768);
  }

  v3 = logCategory__hmf_once_v4_27769;

  return v3;
}

uint64_t __61__HMDAccessoryReachabilityChangedLogEventManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_27769;
  logCategory__hmf_once_v4_27769 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end