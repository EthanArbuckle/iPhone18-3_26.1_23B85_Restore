@interface HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy
+ (id)logCategory;
- (BOOL)_policyStatusFromCharacteristic:(id)a3;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy)initWithAccessory:(id)a3 serviceType:(id)a4 characteristicType:(id)a5 debounceDuration:(unint64_t)a6 policyHandler:(id)a7 workQueue:(id)a8;
- (HMDCharacteristic)characteristic;
- (unint64_t)hash;
- (void)_startDebounceTimer;
- (void)_stopDebounceTimer;
- (void)configure;
- (void)dealloc;
- (void)handleCharacteristicValuesChanged:(id)a3;
- (void)registerForNotifications;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy

- (void)_stopDebounceTimer
{
  v3 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [v3 cancel];

  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self setDebounceTimer:0];
}

- (void)_startDebounceTimer
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:{-[HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy debounceDuration](self, "debounceDuration")}];
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self setDebounceTimer:v3];

  v4 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [v4 setDelegate:self];

  v5 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v6 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [v6 setDelegateQueue:v5];

  v7 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [v7 resume];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];

  if (v5 == v4)
  {
    v6 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self evaluate];
    [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _stopDebounceTimer];
    if (v6 != [(HMDAccessoryFirmwareUpdatePolicy *)self status])
    {
      [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:v6];

      [(HMDAccessoryFirmwareUpdatePolicy *)self notify:v6];
    }
  }
}

- (BOOL)_policyStatusFromCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self policyHandler];
  if (v5)
  {
    v6 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self policyHandler];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)handleCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received characteristic values changed notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke_11;
  v17[3] = &unk_278687EB0;
  v17[4] = *(a1 + 32);
  v8 = [v7 na_firstObjectPassingTest:v17];
  if (v8)
  {
    v9 = [*(a1 + 32) _policyStatusFromCharacteristic:v8];
    v10 = [*(a1 + 32) status];
    v11 = *(a1 + 32);
    if (v9 == v10)
    {
      v14 = [v11 debounceTimer];
      v15 = [v14 isRunning];

      if (v15)
      {
        [*(a1 + 32) _stopDebounceTimer];
      }
    }

    else if (v9)
    {
      v12 = [v11 debounceTimer];
      v13 = [v12 isRunning];

      if ((v13 & 1) == 0)
      {
        [*(a1 + 32) _startDebounceTimer];
      }
    }

    else
    {
      [v11 setStatus:0];
      [*(a1 + 32) notify:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessory];
  v5 = [v3 accessory];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = [*(a1 + 32) characteristicType];
    v8 = [v3 type];
    if ([v7 isEqualToString:v8])
    {
      v9 = [*(a1 + 32) serviceType];
      v10 = [v3 service];
      v11 = [v10 type];
      v12 = [v9 isEqualToString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)evaluate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  v4 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _policyStatusFromCharacteristic:v3];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)registerForNotifications
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  [v4 addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v3];
}

- (HMDCharacteristic)characteristic
{
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v4 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristicType];
  v5 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self serviceType];
  v6 = [v3 findCharacteristicType:v4 forServiceType:v5];

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  if (v3)
  {
    v4 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
    v5 = [v4 deregisterNotificationForClientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

    if (v5)
    {
      v6 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
      v14 = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [v3 setNotificationsEnabled:0 forCharacteristics:v7 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Accessory has been removed - bail out from dealloc", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13.receiver = self;
  v13.super_class = HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy;
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
    v8 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
    v9 = [v7 isEqual:v8];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self serviceType];
    v11 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)v6 serviceType];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristicType];
      v14 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)v6 characteristicType];
      v15 = [v13 isEqualToString:v14];
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [v2 hash];

  return v3;
}

- (void)configure
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self registerForNotifications];
  v3 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  [v3 setNotificationEnabled:1 forClientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v5 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setNotificationsEnabled:1 forCharacteristics:v6 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

  if ([(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self evaluate])
  {
    [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _startDebounceTimer];
  }

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy)initWithAccessory:(id)a3 serviceType:(id)a4 characteristicType:(id)a5 debounceDuration:(unint64_t)a6 policyHandler:(id)a7 workQueue:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy;
  v18 = [(HMDAccessoryFirmwareUpdatePolicy *)&v23 initWithAccessory:a3 workQueue:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceType, a4);
    objc_storeStrong(&v19->_characteristicType, a5);
    v19->_debounceDuration = a6;
    v20 = _Block_copy(v17);
    policyHandler = v19->_policyHandler;
    v19->_policyHandler = v20;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_133614 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_133614, &__block_literal_global_133615);
  }

  v3 = logCategory__hmf_once_v1_133616;

  return v3;
}

void __66__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_133616;
  logCategory__hmf_once_v1_133616 = v1;
}

@end