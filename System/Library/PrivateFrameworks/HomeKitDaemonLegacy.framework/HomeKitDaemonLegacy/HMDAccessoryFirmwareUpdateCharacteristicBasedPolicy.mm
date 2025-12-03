@interface HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy
+ (id)logCategory;
- (BOOL)_policyStatusFromCharacteristic:(id)characteristic;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy)initWithAccessory:(id)accessory serviceType:(id)type characteristicType:(id)characteristicType debounceDuration:(unint64_t)duration policyHandler:(id)handler workQueue:(id)queue;
- (HMDCharacteristic)characteristic;
- (unint64_t)hash;
- (void)_startDebounceTimer;
- (void)_stopDebounceTimer;
- (void)configure;
- (void)dealloc;
- (void)handleCharacteristicValuesChanged:(id)changed;
- (void)registerForNotifications;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy

- (void)_stopDebounceTimer
{
  debounceTimer = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [debounceTimer cancel];

  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self setDebounceTimer:0];
}

- (void)_startDebounceTimer
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:{-[HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy debounceDuration](self, "debounceDuration")}];
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self setDebounceTimer:v3];

  debounceTimer = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [debounceTimer setDelegate:self];

  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  debounceTimer2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [debounceTimer2 setDelegateQueue:workQueue];

  debounceTimer3 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];
  [debounceTimer3 resume];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  debounceTimer = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self debounceTimer];

  if (debounceTimer == fireCopy)
  {
    evaluate = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self evaluate];
    [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _stopDebounceTimer];
    if (evaluate != [(HMDAccessoryFirmwareUpdatePolicy *)self status])
    {
      [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:evaluate];

      [(HMDAccessoryFirmwareUpdatePolicy *)self notify:evaluate];
    }
  }
}

- (BOOL)_policyStatusFromCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  policyHandler = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self policyHandler];
  if (policyHandler)
  {
    policyHandler2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self policyHandler];
    v7 = (policyHandler2)[2](policyHandler2, characteristicCopy);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)handleCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received characteristic values changed notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) userInfo];
  v7 = [v6 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_handleCharacteristicValuesChanged___block_invoke_11;
  v17[3] = &unk_279733D48;
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
  characteristic = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  v4 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _policyStatusFromCharacteristic:characteristic];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)registerForNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  [defaultCenter addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];
}

- (HMDCharacteristic)characteristic
{
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  characteristicType = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristicType];
  serviceType = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self serviceType];
  v6 = [accessory findCharacteristicType:characteristicType forServiceType:serviceType];

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  if (accessory)
  {
    characteristic = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
    v5 = [characteristic deregisterNotificationForClientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

    if (v5)
    {
      characteristic2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
      v14 = characteristic2;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [accessory setNotificationsEnabled:0 forCharacteristics:v7 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Accessory has been removed - bail out from dealloc", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13.receiver = self;
  v13.super_class = HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy;
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
    accessory2 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
    v9 = [accessory isEqual:accessory2];

    if (!v9)
    {
      goto LABEL_9;
    }

    serviceType = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self serviceType];
    serviceType2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)v6 serviceType];
    v12 = [serviceType isEqualToString:serviceType2];

    if (v12)
    {
      characteristicType = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristicType];
      characteristicType2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)v6 characteristicType];
      v15 = [characteristicType isEqualToString:characteristicType2];
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
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [accessory hash];

  return v3;
}

- (void)configure
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self registerForNotifications];
  characteristic = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  [characteristic setNotificationEnabled:1 forClientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  characteristic2 = [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self characteristic];
  v8[0] = characteristic2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [accessory setNotificationsEnabled:1 forCharacteristics:v6 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryfirmwareupdate.policy.characteristic"];

  if ([(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self evaluate])
  {
    [(HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy *)self _startDebounceTimer];
  }

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy)initWithAccessory:(id)accessory serviceType:(id)type characteristicType:(id)characteristicType debounceDuration:(unint64_t)duration policyHandler:(id)handler workQueue:(id)queue
{
  typeCopy = type;
  characteristicTypeCopy = characteristicType;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy;
  v18 = [(HMDAccessoryFirmwareUpdatePolicy *)&v23 initWithAccessory:accessory workQueue:queue];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceType, type);
    objc_storeStrong(&v19->_characteristicType, characteristicType);
    v19->_debounceDuration = duration;
    v20 = _Block_copy(handlerCopy);
    policyHandler = v19->_policyHandler;
    v19->_policyHandler = v20;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_87455 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_87455, &__block_literal_global_87456);
  }

  v3 = logCategory__hmf_once_v1_87457;

  return v3;
}

uint64_t __66__HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_87457;
  logCategory__hmf_once_v1_87457 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end