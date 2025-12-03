@interface HMDLowPowerModeProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_canEnterNewState:(unint64_t)state;
- (BOOL)_shouldManageAccessoryLPM;
- (HMDLowPowerModeProfile)initWithAccessory:(id)accessory powerManagementservice:(id)managementservice workQueue:(id)queue;
- (HMDLowPowerModeProfileDelegate)delegate;
- (NSString)description;
- (id)_validateSupportedSleepConfiguration:(id)configuration;
- (id)connectivityInfo;
- (id)hapAccessory;
- (id)newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:(int64_t)type;
- (id)selectedSleepConfigurationCharacteristic;
- (id)supportedSleepConfigurationCharacteristic;
- (unint64_t)suspendedState;
- (void)_configureAccessoryWithCompletion:(id)completion;
- (void)_enterState:(unint64_t)state;
- (void)_processSelectedSleepConfigurationParametersWithCharacteristic:(id)characteristic;
- (void)_processSupportedSleepConfigurationParametersWithCharacteristic:(id)characteristic;
- (void)_queryAccessoryWithOperation:(int64_t)operation completion:(id)completion;
- (void)_readAccessorySelectedConfigWithCompletion:(id)completion;
- (void)_readFromCharacteristic:(id)characteristic completion:(id)completion;
- (void)_readInitialRequiredCharacteristics;
- (void)_resetStateMachine;
- (void)_runStateMachine;
- (void)_startTimerForType:(unint64_t)type;
- (void)_stateMachine_Idle;
- (void)_stateMachine_backoffOperation;
- (void)_stateMachine_configureAccessory;
- (void)_stateMachine_configureAccessoryCompletion:(id)completion withInterval:(id)interval withWowInfos:(id)infos withStatus:(id)status;
- (void)_stateMachine_readAccessoryConfiguration;
- (void)_stateMachine_unconfigureAccessory;
- (void)_stopBackoffTimerForType:(unint64_t)type;
- (void)_unconfigureAccessoryWithCompletion:(id)completion;
- (void)_wakeSuspendedAccessory:(id)accessory activity:(id)activity completion:(id)completion;
- (void)_writeToCharacteristic:(id)characteristic value:(id)value completion:(id)completion;
- (void)dealloc;
- (void)enterState:(unint64_t)state;
- (void)handleAccessoryCharacteristicsChanged:(id)changed;
- (void)handleAccessoryConfigurationChanged:(id)changed;
- (void)handleInitialState;
- (void)registerForMessages;
- (void)timerDidFire:(id)fire;
- (void)unconfigure;
- (void)wakeAccessoryWithCompletion:(id)completion;
- (void)wakeAccessoryWithType:(int64_t)type completion:(id)completion;
@end

@implementation HMDLowPowerModeProfile

- (HMDLowPowerModeProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v23 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  backoffTimer = [(HMDLowPowerModeProfile *)self backoffTimer];

  if (backoffTimer == fireCopy)
  {
    [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:1];
    if (self->_internalState == 4)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalOldState);
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        v21 = 2112;
        v22 = selfCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Resuming a backed-off state: %@ for %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDLowPowerModeProfile *)selfCopy _enterState:selfCopy->_internalOldState];
    }
  }

  else
  {
    waitForWakeTimer = [(HMDLowPowerModeProfile *)self waitForWakeTimer];

    if (waitForWakeTimer == fireCopy)
    {
      [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:2];
      pendingWakeBlock = [(HMDLowPowerModeProfile *)self pendingWakeBlock];
      if (pendingWakeBlock)
      {
        suspendedAccessory = [(HMDLowPowerModeProfile *)self suspendedAccessory];

        if (suspendedAccessory)
        {
          v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:24];
          (pendingWakeBlock)[2](pendingWakeBlock, v10);
        }
      }

      [(HMDLowPowerModeProfile *)self setPendingWakeBlock:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopBackoffTimerForType:(unint64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 2)
  {
    waitForWakeTimer = [(HMDLowPowerModeProfile *)self waitForWakeTimer];

    if (waitForWakeTimer)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = selfCopy;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Stopping wait for wake timer for %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      waitForWakeTimer2 = [(HMDLowPowerModeProfile *)selfCopy waitForWakeTimer];
      [waitForWakeTimer2 cancel];

      [(HMDLowPowerModeProfile *)selfCopy setWaitForWakeTimer:0];
    }
  }

  else if (type == 1)
  {
    backoffTimer = [(HMDLowPowerModeProfile *)self backoffTimer];

    if (backoffTimer)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = selfCopy2;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Stopping backoff timer for %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      backoffTimer2 = [(HMDLowPowerModeProfile *)selfCopy2 backoffTimer];
      [backoffTimer2 cancel];

      [(HMDLowPowerModeProfile *)selfCopy2 setBackoffTimer:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_startTimerForType:(unint64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (type == 1)
  {
    v6 = @"lowPowerModeRetryInterval";
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_13;
    }

    v6 = @"lowPowerModeWaitForWakeInterval";
  }

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [mEMORY[0x277D0F8D0] preferenceForKey:v6];
  numberValue = [v8 numberValue];

  if (numberValue)
  {
    [numberValue doubleValue];
    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v10];
    [v11 setDelegate:self];
    workQueue2 = [(HMDAccessoryProfile *)self workQueue];
    [v11 setDelegateQueue:workQueue2];

    if (type == 1)
    {
      [(HMDLowPowerModeProfile *)self setBackoffTimer:v11];
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = selfCopy;
        v17 = "%{public}@Starting backoff timer for %@";
LABEL_11:
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, v17, &v20, 0x16u);
      }
    }

    else
    {
      [(HMDLowPowerModeProfile *)self setWaitForWakeTimer:v11];
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = selfCopy2;
        v17 = "%{public}@Starting wait for wake timer for %@";
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v13);
    [v11 resume];
  }

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v4 = MEMORY[0x277CCABB0];
  connectivityInfo = [hapAccessory connectivityInfo];
  v6 = [v4 numberWithUnsignedChar:{objc_msgSend(connectivityInfo, "woWLANVersion")}];

  v7 = MEMORY[0x277CCACA8];
  identifier = [hapAccessory identifier];
  name = [hapAccessory name];
  [(HMDLowPowerModeProfile *)self suspendedState];
  v10 = HAPAccessorySuspendedStateDescription();
  v11 = HMDLowPowerModeStateMachineDescription([(HMDLowPowerModeProfile *)self internalState]);
  v12 = v11;
  v13 = @"unknown";
  if (v6)
  {
    v13 = v6;
  }

  v14 = [v7 stringWithFormat:@"<LPM ID: %@/%@, Suspended State: '%@', Internal State: '%@', WOLAN Version: '%@'>", identifier, name, v10, v11, v13];

  return v14;
}

- (id)newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:(int64_t)type
{
  v33 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v27 = v26 = self;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
  woWLANInfos = [connectivityInfo woWLANInfos];

  v7 = [woWLANInfos countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(woWLANInfos);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (type != 2 || [*(*(&v28 + 1) + 8 * i) wakeType] == 2)
        {
          v12 = objc_alloc(MEMORY[0x277CFEA50]);
          wakePort = [v11 wakePort];
          wakeAddressString = [v11 wakeAddressString];
          wakePattern = [v11 wakePattern];
          v16 = [v12 initWithPort:wakePort wakeAddress:wakeAddressString wakePattern:wakePattern];

          if (v16)
          {
            [v27 addObject:v16];
          }
        }
      }

      v8 = [woWLANInfos countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  if ([v27 count])
  {
    v17 = objc_alloc(MEMORY[0x277CFEC70]);
    hapAccessory = [(HMDLowPowerModeProfile *)v26 hapAccessory];
    name = [hapAccessory name];
    hapAccessory2 = [(HMDLowPowerModeProfile *)v26 hapAccessory];
    identifier = [hapAccessory2 identifier];
    workQueue = [(HMDAccessoryProfile *)v26 workQueue];
    v23 = [v17 initWithName:name identifier:identifier wakeTuples:v27 queue:workQueue];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (unint64_t)suspendedState
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  suspendedState = [hapAccessory suspendedState];

  return suspendedState;
}

- (id)supportedSleepConfigurationCharacteristic
{
  powerManagementService = [(HMDLowPowerModeProfile *)self powerManagementService];
  v3 = [powerManagementService findCharacteristicWithType:@"00000251-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)selectedSleepConfigurationCharacteristic
{
  powerManagementService = [(HMDLowPowerModeProfile *)self powerManagementService];
  v3 = [powerManagementService findCharacteristicWithType:@"00000252-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)connectivityInfo
{
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  connectivityInfo = [hapAccessory connectivityInfo];

  return connectivityInfo;
}

- (id)hapAccessory
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = accessory;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)handleAccessoryConfigurationChanged:(id)changed
{
  v26 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [changedCopy name];
    *buf = 138543874;
    v21 = v8;
    v22 = 2112;
    v23 = name;
    v24 = 2112;
    v25 = selfCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling notification: %@ received by %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  name2 = [changedCopy name];
  v11 = [name2 isEqualToString:@"HMDAccessoryConnectedNotification"];

  if (v11)
  {
    workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
    v13 = workQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke;
    v19[3] = &unk_27868A728;
    v19[4] = selfCopy;
    v14 = v19;
LABEL_7:
    dispatch_async(workQueue, v14);

    goto LABEL_8;
  }

  name3 = [changedCopy name];
  v16 = [name3 isEqualToString:@"HMDAccessoryDisconnectedNotification"];

  if (v16)
  {
    workQueue = [(HMDAccessoryProfile *)selfCopy workQueue];
    v13 = workQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke_2;
    v18[3] = &unk_27868A728;
    v18[4] = selfCopy;
    v14 = v18;
    goto LABEL_7;
  }

LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
}

void __62__HMDLowPowerModeProfile_handleAccessoryConfigurationChanged___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) suspendedState] == 2)
  {
    v2 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 profile:*(a1 + 32) didUpdateAccessoryState:3];
    }
  }
}

- (void)handleAccessoryCharacteristicsChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDLowPowerModeProfile_handleAccessoryCharacteristicsChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDLowPowerModeProfile_handleAccessoryCharacteristicsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  v3 = findMatchingCharacteristic(@"00000251-0000-1000-8000-0026BB765291", v5);
  if (v3)
  {
    [*(a1 + 40) _processSupportedSleepConfigurationParametersWithCharacteristic:v3];
  }

  v4 = findMatchingCharacteristic(@"00000252-0000-1000-8000-0026BB765291", v5);
  if (v4)
  {
    [*(a1 + 40) _processSelectedSleepConfigurationParametersWithCharacteristic:v4];
  }
}

- (BOOL)_shouldManageAccessoryLPM
{
  v21 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];

  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  if (__51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(primaryResidentDevice))
  {
    isCurrentDevice = [primaryResidentDevice isCurrentDevice];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    residentDeviceManager2 = [home residentDeviceManager];
    residentDevices = [residentDeviceManager2 residentDevices];

    v9 = [residentDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(residentDevices);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (__51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(v13))
          {
            isCurrentDevice = [v13 isCurrentDevice];
            goto LABEL_13;
          }
        }

        v10 = [residentDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    isCurrentDevice = 1;
LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];
  return isCurrentDevice;
}

uint64_t __51__HMDLowPowerModeProfile__shouldManageAccessoryLPM__block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 isReachable] && objc_msgSend(v1, "isEnabled"))
  {
    v2 = [v1 capabilities];
    v3 = [v2 supportsWakeOnLAN];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_readInitialRequiredCharacteristics
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  supportedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self supportedSleepConfigurationCharacteristic];
  if (supportedSleepConfigurationCharacteristic)
  {
    [(HMDLowPowerModeProfile *)self _processSupportedSleepConfigurationParametersWithCharacteristic:supportedSleepConfigurationCharacteristic];
  }

  selectedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self selectedSleepConfigurationCharacteristic];
  if (selectedSleepConfigurationCharacteristic)
  {
    [(HMDLowPowerModeProfile *)self _processSelectedSleepConfigurationParametersWithCharacteristic:selectedSleepConfigurationCharacteristic];
  }

  [(HMDLowPowerModeProfile *)self _updateCharacteristicsNotifications:1];
}

- (void)_readFromCharacteristic:(id)characteristic completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [HMDCharacteristicRequest requestWithCharacteristic:characteristicCopy];
  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v19[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__HMDLowPowerModeProfile__readFromCharacteristic_completion___block_invoke;
  v16[3] = &unk_2786873B0;
  v16[4] = self;
  v17 = characteristicCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = characteristicCopy;
  [hapAccessory readCharacteristicValues:v11 source:1180 queue:workQueue2 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __61__HMDLowPowerModeProfile__readFromCharacteristic_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [v4 value];
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

  v8 = [v4 error];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      [*(a1 + 40) instanceID];
      v13 = v17 = v3;
      [*(a1 + 40) type];
      v14 = v18 = v9;
      v15 = [v4 error];
      *buf = 138544130;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Reading from characteristic: %@/%@ failed with error: %@", buf, 0x2Au);

      v9 = v18;
      v3 = v17;
    }

    objc_autoreleasePoolPop(v9);
  }

  (*(*(a1 + 48) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_writeToCharacteristic:(id)characteristic value:(id)value completion:(id)completion
{
  v22[1] = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  completionCopy = completion;
  valueCopy = value;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:characteristicCopy value:valueCopy authorizationData:0 type:0];

  hapAccessory = [(HMDLowPowerModeProfile *)self hapAccessory];
  v22[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  workQueue2 = [(HMDAccessoryProfile *)self workQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HMDLowPowerModeProfile__writeToCharacteristic_value_completion___block_invoke;
  v19[3] = &unk_2786873B0;
  v19[4] = self;
  v20 = characteristicCopy;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = characteristicCopy;
  [hapAccessory writeCharacteristicValues:v14 source:1180 queue:workQueue2 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __66__HMDLowPowerModeProfile__writeToCharacteristic_value_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 error];

    v6 = [v3 firstObject];
    v7 = [v6 value];

    if (v5)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) instanceID];
        v13 = [*(a1 + 40) type];
        v17 = 138544130;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Writing to the characteristic: %@/%@ failed with error: %@", &v17, 0x2Au);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v14 = [v3 firstObject];
      v15 = [v14 value];

      v5 = 0;
      v7 = v15;
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v7 = 0;
  }

  (*(*(a1 + 48) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_processSelectedSleepConfigurationParametersWithCharacteristic:(id)characteristic
{
  v31 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = value;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_opt_class();
  v10 = deserializeObject(v9, v8);
  v11 = v10;
  if (v10)
  {
    operationStatus = [v10 operationStatus];
    value2 = [operationStatus value];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMDLowPowerModeOperationStatusDescription(value2);
      v25 = 138543874;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = selfCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing selected sleep configuration with status: '%@' for %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (value2 <= 2)
    {
      delegate = [(HMDLowPowerModeProfile *)selfCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate profile:selfCopy didUpdateAccessoryState:value2];
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v23;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse selected sleep configuration with data: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_processSupportedSleepConfigurationParametersWithCharacteristic:(id)characteristic
{
  v26 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDLowPowerModeProfile *)self _shouldManageAccessoryLPM])
  {
    value = [characteristicCopy value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = value;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = objc_opt_class();
    v10 = deserializeObject(v9, v8);
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v15;
        v24 = 2112;
        v25 = selfCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Processing supported sleep configuration for %@.", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (![(HMDLowPowerModeProfile *)selfCopy internalState])
      {
        [(HMDLowPowerModeProfile *)selfCopy _enterState:1];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse supported sleep configuration with data: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = selfCopy2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Skipping processing characteristic update since a resident is present for %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_queryAccessoryWithOperation:(int64_t)operation completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((operation - 1) >= 3)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = HMDLowPowerModeOperationTypeDescription(operation);
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2112;
      v49 = selfCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received invalid operation type: '%@' for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v12, 0);
    goto LABEL_22;
  }

  v8 = objc_alloc_init(HMDSelectedSleepConfigurationTLV);
  if (v8)
  {
    v9 = v8;
    v10 = [[HMDSleepConfigurationOperationTypeWrapper alloc] initWithValue:operation];
    [(HMDSelectedSleepConfigurationTLV *)v9 setOperationType:v10];

    selectedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self selectedSleepConfigurationCharacteristic];
    v12 = v9;
    if ([(HMDSelectedSleepConfigurationTLV *)v12 conformsToProtocol:&unk_283EB7020])
    {
      v43 = 0;
      v13 = [(HMDSelectedSleepConfigurationTLV *)v12 serializeWithError:&v43];
      v14 = v43;
      if (v14 || !v13)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v18 = v17 = selectedSleepConfigurationCharacteristic;
          *buf = 138543874;
          v45 = v18;
          v46 = 2112;
          v47 = v12;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize object: %@ with error: %@", buf, 0x20u);

          selectedSleepConfigurationCharacteristic = v17;
        }

        objc_autoreleasePoolPop(v15);
        v19 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
    }

    v13 = v13;
    v19 = v13;
LABEL_14:

    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    v28 = v27;
    if (v19)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        v30 = HMDLowPowerModeOperationTypeDescription(operation);
        [(HMDAccessoryProfile *)selfCopy2 accessory];
        v31 = v40 = selectedSleepConfigurationCharacteristic;
        identifier = [v31 identifier];
        *buf = 138543874;
        v45 = v29;
        v46 = 2112;
        v47 = v30;
        v48 = 2112;
        v49 = identifier;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Requesting response to operation type: '%@' from accessory: %@", buf, 0x20u);

        selectedSleepConfigurationCharacteristic = v40;
      }

      objc_autoreleasePoolPop(v25);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__HMDLowPowerModeProfile__queryAccessoryWithOperation_completion___block_invoke;
      aBlock[3] = &unk_2786776C8;
      v42 = completionCopy;
      v33 = _Block_copy(aBlock);
      [(HMDLowPowerModeProfile *)selfCopy2 _writeToCharacteristic:selectedSleepConfigurationCharacteristic value:v19 completion:v33];

      v34 = v42;
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        instanceID = [selectedSleepConfigurationCharacteristic instanceID];
        [selectedSleepConfigurationCharacteristic type];
        v38 = v37 = selectedSleepConfigurationCharacteristic;
        *buf = 138543874;
        v45 = v35;
        v46 = 2112;
        v47 = instanceID;
        v48 = 2112;
        v49 = v38;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize selected sleep configuration value for charactersitic %@/%@", buf, 0x20u);

        selectedSleepConfigurationCharacteristic = v37;
      }

      objc_autoreleasePoolPop(v25);
      v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      completionCopy[2](completionCopy, v34, 0);
    }

LABEL_22:
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __66__HMDLowPowerModeProfile__queryAccessoryWithOperation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = deserializeObject(v6, v5);

  v8 = v9;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_unconfigureAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDLowPowerModeProfile__unconfigureAccessoryWithCompletion___block_invoke;
  v7[3] = &unk_2786776A0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HMDLowPowerModeProfile *)self _queryAccessoryWithOperation:3 completion:v7];
}

void __62__HMDLowPowerModeProfile__unconfigureAccessoryWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [a3 operationStatus];
    (*(v3 + 16))(v3, 0, [v6 value]);
  }
}

- (void)_configureAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  supportedSleepConfigurationCharacteristic = [(HMDLowPowerModeProfile *)self supportedSleepConfigurationCharacteristic];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke;
  v8[3] = &unk_278677678;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [(HMDLowPowerModeProfile *)self _readFromCharacteristic:supportedSleepConfigurationCharacteristic completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v80 = [WeakRetained accessory];
    if (v5)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v87 = v12;
        v88 = 2112;
        *v89 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Reading from Support Sleep Configuration resulted in error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [[HMDWoLANInvalidConfigurationLogEvent alloc] initWithAccessory:v80];
      v14 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v14 submitLogEvent:v13 error:v5];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v15 = objc_opt_class();
      v13 = deserializeObject(v15, v6);
      v16 = [v8 _validateSupportedSleepConfiguration:v13];
      if (v16)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v8;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v87 = v20;
          v88 = 2112;
          *v89 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Validating Support Sleep Configuration resulted in error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v21 = [HMDWoLANInvalidConfigurationLogEvent alloc];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
        v23 = [(HMDWoLANInvalidConfigurationLogEvent *)v13 version];
        v24 = [v23 value];
        v25 = [(HMDWoLANInvalidConfigurationLogEvent *)v21 initWithAccessory:v80 maxSupportedWoLANVersion:v22 wolanVersion:v24];

        v26 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v26 submitLogEvent:v25 error:v16];

        (*(*(a1 + 32) + 16))();
      }

      else
      {
        v78 = HMDLowPowerModeWoWLANInfoForSupportedSleepConfiguration(v13);
        v79 = [v80 home];
        v77 = [v78 firstObject];
        v27 = [v79 featuresDataSource];
        v28 = [v27 isWakeOnLanV2Enabled];

        if (v28)
        {
          if ([v77 woWLANSupportsDarkPoll])
          {
            v29 = [(HMDWoLANInvalidConfigurationLogEvent *)v13 darkPollMinimumInterval];

            if (v29)
            {
              v75 = 0;
            }

            else
            {
              v30 = objc_autoreleasePoolPush();
              v31 = v8;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = HMFGetLogIdentifier();
                *buf = 138543618;
                v87 = v33;
                v88 = 2112;
                *v89 = v13;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Supported Sleep Configuration Validation Failure: No Dark Poll Minimum Interval specified in Supported Sleep Configuration: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v30);
              v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
              v34 = -[HMDWoLANDarkPollInvalidIntervalLogEvent initWithAccessory:interval:minValueMinutes:maxValueMinutes:wolanVersion:logType:]([HMDWoLANDarkPollInvalidIntervalLogEvent alloc], "initWithAccessory:interval:minValueMinutes:maxValueMinutes:wolanVersion:logType:", v80, 0, 5, 120, [v77 woWLANVersion], 0);
              v35 = +[HMDMetricsManager sharedLogEventSubmitter];
              [v35 submitLogEvent:v34 error:v75];

              (*(*(a1 + 32) + 16))();
            }

            v36 = [(HMDWoLANInvalidConfigurationLogEvent *)v13 darkPollMinimumInterval];
            v37 = [v36 value];
            v38 = [v37 unsignedIntValue];

            if ((v38 - 121) > 0xFFFFFF8B)
            {
              v16 = v75;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v39 = v8;
              v40 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v67 = HMFGetLogIdentifier();
                v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:120];
                *buf = 138544386;
                v87 = v67;
                v88 = 2112;
                *v89 = v69;
                *&v89[8] = 2112;
                *&v89[10] = v41;
                *&v89[18] = 1024;
                *&v89[20] = v38;
                v90 = 2112;
                v91 = v13;
                _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@LPM Configuration Error: Supported Sleep Configuration Validation Failure: Dark Poll Minimum Interval is an invalid value. Must be between %@ and %@ minutes, inclusive. Specified value is: %u minutes, from Supported Sleep Configuration: %@", buf, 0x30u);
              }

              objc_autoreleasePoolPop(context);
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];

              v42 = [HMDWoLANDarkPollInvalidIntervalLogEvent alloc];
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
              v44 = -[HMDWoLANDarkPollInvalidIntervalLogEvent initWithAccessory:interval:minValueMinutes:maxValueMinutes:wolanVersion:logType:](v42, "initWithAccessory:interval:minValueMinutes:maxValueMinutes:wolanVersion:logType:", v80, v43, 5, 120, [v77 woWLANVersion], 1);

              v45 = +[HMDMetricsManager sharedLogEventSubmitter];
              [v45 submitLogEvent:v44 error:v16];

              (*(*(a1 + 32) + 16))();
            }
          }

          else
          {
            v16 = 0;
          }

          v46 = objc_alloc(MEMORY[0x277CCABB0]);
          v47 = [(HMDWoLANInvalidConfigurationLogEvent *)v13 darkPollMinimumInterval];
          v48 = [v47 value];
          v76 = [v46 initWithUnsignedInt:{objc_msgSend(v48, "unsignedIntValue")}];
        }

        else
        {
          v76 = 0;
          v16 = 0;
        }

        v49 = [v79 featuresDataSource];
        v50 = [v49 isWakeOnLanV2Enabled];

        if (v50)
        {
          v51 = [v77 woWLANSupportsDarkPoll];
          contexta = objc_autoreleasePoolPush();
          v52 = v8;
          v53 = HMFGetOSLogHandle();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_INFO);
          if (v51)
          {
            if (v54)
            {
              v55 = HMFGetLogIdentifier();
              v66 = [v77 woWLANVersion];
              v70 = [v52 connectivityInfo];
              v68 = [v70 woWLANDarkPollMinimumInterval];
              v56 = [v52 connectivityInfo];
              v57 = [v56 woWLANInfos];
              *buf = 138544642;
              v87 = v55;
              v88 = 1024;
              *v89 = v66;
              *&v89[4] = 2112;
              *&v89[6] = v68;
              *&v89[14] = 2112;
              *&v89[16] = v76;
              v90 = 2112;
              v91 = v57;
              v92 = 2112;
              v93 = v78;
              _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@LPM Configuration: For accessory version %d supporting Dark Poll, attempting to update darkPollMinimumInteraval: '%@' -> '%@', WoWLANInfo: '%@' -> '%@'", buf, 0x3Au);
            }
          }

          else if (v54)
          {
            v61 = HMFGetLogIdentifier();
            v72 = [v77 woWLANVersion];
            v62 = [v52 connectivityInfo];
            v63 = [v62 woWLANInfos];
            *buf = 138544130;
            v87 = v61;
            v88 = 1024;
            *v89 = v72;
            *&v89[4] = 2112;
            *&v89[6] = v63;
            *&v89[14] = 2112;
            *&v89[16] = v78;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@LPM Configuration: For accessory version %d not supporting Dark Poll, attempting to update WoWLANInfo: '%@' -> '%@'", buf, 0x26u);
          }
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v58 = v8;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v71 = HMFGetLogIdentifier();
            v59 = [v58 connectivityInfo];
            v60 = [v59 woWLANInfos];
            *buf = 138543874;
            v87 = v71;
            v88 = 2112;
            *v89 = v60;
            *&v89[8] = 2112;
            *&v89[10] = v78;
            _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@LPM Configuration: Attempting to update WoWLANInfo: '%@' -> '%@'", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(contexta);
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke_125;
        v81[3] = &unk_278677650;
        objc_copyWeak(&v85, (a1 + 40));
        v84 = *(a1 + 32);
        v64 = v76;
        v82 = v64;
        v25 = v78;
        v83 = v25;
        [v8 _queryAccessoryWithOperation:2 completion:v81];

        objc_destroyWeak(&v85);
      }
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

void __60__HMDLowPowerModeProfile__configureAccessoryWithCompletion___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v11)
    {
      (*(v7 + 16))(v7, v11, v9, v8, 0);
    }

    else
    {
      v10 = [v5 operationStatus];
      (*(v7 + 16))(v7, 0, v9, v8, v10);
    }
  }
}

- (id)_validateSupportedSleepConfiguration:(id)configuration
{
  v39 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v21;
      v22 = "%{public}@Supported Sleep Configuration Validation Failure: parameter is nil, deserialization failed.";
      v23 = v16;
      v24 = 12;
LABEL_11:
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, v22, &v31, v24);
    }

LABEL_12:
    v26 = 3;
LABEL_18:

    objc_autoreleasePoolPop(v14);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v26];
    goto LABEL_19;
  }

  version = [configurationCopy version];

  if (!version)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v21;
      v33 = 2112;
      v34 = v5;
      v22 = "%{public}@Supported Sleep Configuration Validation Failure: Version is nil: %@";
      v23 = v16;
      v24 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  version2 = [v5 version];
  value = [version2 value];
  unsignedCharValue = [value unsignedCharValue];

  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  featuresDataSource = [home featuresDataSource];
  isWakeOnLanV2Enabled = [featuresDataSource isWakeOnLanV2Enabled];

  if (isWakeOnLanV2Enabled)
  {
    if (unsignedCharValue >= 3)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:unsignedCharValue];
        v31 = 138544130;
        v32 = v17;
        v33 = 2112;
        v34 = v18;
        v35 = 2112;
        v36 = &unk_283E728F0;
        v37 = 2112;
        v38 = v5;
        v19 = "%{public}@Supported Sleep Configuration Validation Failure: Accessory's supported LPM version: %@ is greater than current supported device version: %@, from Supported Sleep Configuration: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v19, &v31, 0x2Au);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else if (unsignedCharValue >= 2)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:unsignedCharValue];
      v31 = 138544130;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = &unk_283E72908;
      v37 = 2112;
      v38 = v5;
      v19 = "%{public}@Supported Sleep Configuration Validation Failure: Accessory's supported LPM version: %@ is greater than the current supported device version: %@, from Supported Sleep Configuration: %@";
      goto LABEL_16;
    }

LABEL_17:
    v26 = 48;
    goto LABEL_18;
  }

  v28 = 0;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_readAccessorySelectedConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDLowPowerModeProfile__readAccessorySelectedConfigWithCompletion___block_invoke;
  v7[3] = &unk_278677628;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(HMDLowPowerModeProfile *)self _queryAccessoryWithOperation:1 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __69__HMDLowPowerModeProfile__readAccessorySelectedConfigWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v9)
    {
      (*(v7 + 16))(v7, v9, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v8 = [v5 operationStatus];
      (*(v7 + 16))(v7, 0, [v8 value]);
    }
  }
}

- (void)_stateMachine_unconfigureAccessory
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HMDLowPowerModeProfile__stateMachine_unconfigureAccessory__block_invoke;
  v4[3] = &unk_2786775D8;
  objc_copyWeak(&v5, &location);
  [(HMDLowPowerModeProfile *)self _unconfigureAccessoryWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__HMDLowPowerModeProfile__stateMachine_unconfigureAccessory__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDLowPowerModeOperationStatusDescription(a3);
      *v26 = 138544130;
      *&v26[4] = v10;
      *&v26[12] = 2112;
      *&v26[14] = v8;
      *&v26[22] = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@LPM SM Unconfigure: Did unconfigure %@ with status: '%@' and error: %@", v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v8 delegate];
    if (a3)
    {
      if (a3 == 3)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
LABEL_10:
          v16 = HMFGetLogIdentifier();
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "retryCount")}];
          *v26 = 138543874;
          *&v26[4] = v16;
          *&v26[12] = 2112;
          *&v26[14] = v14;
          *&v26[22] = 2112;
          v27 = v17;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Unconfigure: Need to backoff and retry unconfiguring of %@. Retry count: %@", v26, 0x20u);
        }

LABEL_11:

        objc_autoreleasePoolPop(v13);
        v18 = 4;
LABEL_20:
        [v8 enterState:{v18, *v26, *&v26[16], v27}];

        goto LABEL_21;
      }

      if (a3 == 1)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = v8;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = HMDLowPowerModeOperationStatusDescription(a3);
        v24 = HMDLowPowerModeOperationTypeDescription(2);
        *v26 = 138544130;
        *&v26[4] = v22;
        *&v26[12] = 2112;
        *&v26[14] = v23;
        *&v26[22] = 2112;
        v27 = v24;
        v28 = 2112;
        v29 = v5;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Unconfigure: Received invalid status: %@ to operation: %@ with error: %@", v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v12 profile:v8 didUpdateWoWLANInfos:0 darkPollMinimumInterval:0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v12 profile:v8 didUpdateAccessoryState:0];
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_stateMachine_configureAccessoryCompletion:(id)completion withInterval:(id)interval withWowInfos:(id)infos withStatus:(id)status
{
  v52 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  intervalCopy = interval;
  infosCopy = infos;
  statusCopy = status;
  delegate = [(HMDLowPowerModeProfile *)self delegate];
  if (!completionCopy && statusCopy)
  {
    value = [statusCopy value];
    if (value)
    {
      if (value != 3)
      {
        if (value == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [delegate profile:self didUpdateWoWLANInfos:infosCopy darkPollMinimumInterval:intervalCopy];
          }

          v16 = 0;
          v17 = 1;
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          selfCopy = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            HMDLowPowerModeOperationStatusDescription([statusCopy value]);
            v37 = v43 = intervalCopy;
            HMDLowPowerModeOperationTypeDescription(2);
            v38 = v39 = v33;
            *buf = 138544130;
            v45 = v36;
            v46 = 2112;
            v47 = v37;
            v48 = 2112;
            v49 = v38;
            v50 = 2112;
            v51 = 0;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Configuration: Received invalid status: %@ to operation: %@ with error: %@", buf, 0x2Au);

            v33 = v39;
            intervalCopy = v43;
          }

          objc_autoreleasePoolPop(v33);
          v17 = 0;
          v16 = 0;
        }

LABEL_24:
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v31 = v42 = intervalCopy;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDLowPowerModeProfile retryCount](selfCopy2, "retryCount")}];
        *buf = 138543874;
        v45 = v31;
        v46 = 2112;
        v47 = selfCopy2;
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Configure: Need to backoff and retry configuring of %@. Retry count: %@", buf, 0x20u);

        intervalCopy = v42;
      }

      objc_autoreleasePoolPop(v28);
    }

    v17 = 0;
    v16 = 4;
    goto LABEL_24;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (completionCopy)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      [(HMDAccessoryProfile *)selfCopy3 accessory];
      v40 = infosCopy;
      v24 = v23 = intervalCopy;
      *buf = 138543874;
      v45 = v22;
      v46 = 2112;
      v47 = v24;
      v48 = 2112;
      v49 = completionCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Configure Error: configuring accessory %@ returned error: %@", buf, 0x20u);

      intervalCopy = v23;
      infosCopy = v40;
    }
  }

  else if (v21)
  {
    HMFGetLogIdentifier();
    v25 = v41 = intervalCopy;
    accessory = [(HMDAccessoryProfile *)selfCopy3 accessory];
    *buf = 138543618;
    v45 = v25;
    v46 = 2112;
    v47 = accessory;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Configure Error: configuring accessory %@ returned null status", buf, 0x16u);

    intervalCopy = v41;
  }

  objc_autoreleasePoolPop(v18);
  v17 = 0;
  v16 = 0;
  if (objc_opt_respondsToSelector())
  {
LABEL_15:
    [delegate profile:self didUpdateAccessoryState:{v17, v39}];
  }

LABEL_16:
  [(HMDLowPowerModeProfile *)self enterState:v16, v39];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_stateMachine_configureAccessory
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = selfCopy;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Configure: Starting configuration of accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMDLowPowerModeProfile__stateMachine_configureAccessory__block_invoke;
  v9[3] = &unk_278677600;
  objc_copyWeak(&v10, &location);
  [(HMDLowPowerModeProfile *)selfCopy _configureAccessoryWithCompletion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__HMDLowPowerModeProfile__stateMachine_configureAccessory__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stateMachine_configureAccessoryCompletion:v14 withInterval:v9 withWowInfos:v10 withStatus:v11];
  }
}

- (void)_stateMachine_readAccessoryConfiguration
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__HMDLowPowerModeProfile__stateMachine_readAccessoryConfiguration__block_invoke;
  v4[3] = &unk_2786775D8;
  objc_copyWeak(&v5, &location);
  [(HMDLowPowerModeProfile *)self _readAccessorySelectedConfigWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__HMDLowPowerModeProfile__stateMachine_readAccessoryConfiguration__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDLowPowerModeOperationStatusDescription(a3);
      v39 = 138544130;
      v40 = v10;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v11;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@LPM SM Read Config: Did read configuration of %@ with status: '%@' and error: %@", &v39, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    if (a3 == 3)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v8;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "retryCount")}];
        v39 = 138543874;
        v40 = v24;
        v41 = 2112;
        v42 = v22;
        v43 = 2112;
        v44 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to backoff and retry reading configuration for %@. Retry count: %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v18 = 4;
    }

    else if (a3 == 1)
    {
      v19 = [v8 connectivityInfo];
      v20 = [v19 woWLANInfo];

      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = v8;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = HMFGetLogIdentifier();
          v36 = [v33 accessory];
          v37 = [v36 identifier];
          v39 = 138543874;
          v40 = v35;
          v41 = 2112;
          v42 = v37;
          v43 = 2112;
          v44 = 0;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to reconfigure the accessory: %@. Accessory has stale WoWLANInfo: %@.", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v18 = 2;
      }
    }

    else if (a3)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v8;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = HMDLowPowerModeOperationStatusDescription(a3);
        v31 = HMDLowPowerModeOperationTypeDescription(2);
        v39 = 138544130;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v31;
        v45 = 2112;
        v46 = v5;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@LPM SM Read Config: Received invalid status: '%@' to operation: '%@' with error: %@", &v39, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v18 = 0;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v13 accessory];
        v17 = [v16 identifier];
        v39 = 138543618;
        v40 = v15;
        v41 = 2112;
        v42 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@LPM SM Read Config: Need to configure the accessory: %@. Accessory is unconfigured.", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = 2;
    }

    [v8 enterState:v18];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_stateMachine_Idle
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLowPowerModeProfile *)self _stopBackoffTimerForType:1];
}

- (void)_stateMachine_backoffOperation
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDLowPowerModeProfile *)self _startTimerForType:1];
}

- (void)_enterState:(unint64_t)state
{
  v32 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDLowPowerModeProfile *)self _canEnterNewState:state])
  {
    if (state == 4 || (internalState = self->_internalState, internalState == state))
    {
      ++self->_retryCount;
      internalState = self->_internalState;
    }

    self->_internalOldState = internalState;
    self->_internalState = state;
    if (self->_internalOldState == 4)
    {
      self->_internalOldState = 0;
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"lowPowerModeRetryCount"];
    numberValue = [v8 numberValue];

    retryCount = self->_retryCount;
    if (retryCount > [numberValue unsignedIntegerValue])
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_retryCount - 1];
        v16 = HMDLowPowerModeStateMachineDescription(state);
        v24 = 138544130;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = selfCopy;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Resetting state machine. Tried '%@' times for operation: '%@' for %@", &v24, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      self->_retryCount = 0;
      [(HMDLowPowerModeProfile *)selfCopy _resetStateMachine];
    }

    [(HMDLowPowerModeProfile *)self _runStateMachine];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = HMDLowPowerModeStateMachineDescription(selfCopy2->_internalState);
      v22 = HMDLowPowerModeStateMachineDescription(state);
      v24 = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid machine state: %@ -> %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)enterState:(unint64_t)state
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__HMDLowPowerModeProfile_enterState___block_invoke;
  v6[3] = &unk_27868A0D0;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(workQueue, v6);
}

- (BOOL)_canEnterNewState:(unint64_t)state
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalState = self->_internalState;
  if (internalState <= 1)
  {
    if (internalState)
    {
      if (internalState != 1 || state >= 5)
      {
        goto LABEL_20;
      }

      v8 = 29;
      goto LABEL_17;
    }

    if (state < 2)
    {
LABEL_19:
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

LABEL_20:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (internalState != 2)
  {
    if (internalState != 3)
    {
      if (internalState != 4 || state - 1 >= 3)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (state < 5)
    {
      v8 = 25;
LABEL_17:
      v9 = v8 >> state;
      return v9 & 1;
    }

    goto LABEL_20;
  }

  if (state >= 5)
  {
    goto LABEL_20;
  }

  LOBYTE(v9) = state ^ 1;
  return v9 & 1;
}

- (void)_resetStateMachine
{
  self->_internalState = 0;
  self->_internalOldState = 0;
  self->_retryCount = 0;
}

- (void)_runStateMachine
{
  v29 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalOldState);
    v9 = HMDLowPowerModeStateMachineDescription(selfCopy->_internalState);
    v21 = 138544130;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = selfCopy;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@LPM running state: '%@' -> '%@' for %@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  if (!selfCopy->_internalState)
  {
    goto LABEL_16;
  }

  if (![(HMDLowPowerModeProfile *)selfCopy _shouldManageAccessoryLPM])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Skipping processing state machine update since a resident is present for %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDLowPowerModeProfile *)v11 _enterState:0];
  }

  internalState = selfCopy->_internalState;
  if (internalState <= 1)
  {
    if (internalState)
    {
      if (internalState == 1)
      {
        [(HMDLowPowerModeProfile *)selfCopy _stateMachine_readAccessoryConfiguration];
        goto LABEL_17;
      }

      goto LABEL_20;
    }

LABEL_16:
    [(HMDLowPowerModeProfile *)selfCopy _stateMachine_Idle];
    goto LABEL_17;
  }

  switch(internalState)
  {
    case 2:
      [(HMDLowPowerModeProfile *)selfCopy _stateMachine_configureAccessory];
      goto LABEL_17;
    case 3:
      [(HMDLowPowerModeProfile *)selfCopy _stateMachine_unconfigureAccessory];
      goto LABEL_17;
    case 4:
      [(HMDLowPowerModeProfile *)selfCopy _stateMachine_backoffOperation];
      goto LABEL_17;
  }

LABEL_20:
  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_internalState];
    v21 = 138543874;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid LPM state: %@ for %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_wakeSuspendedAccessory:(id)accessory activity:(id)activity completion:(id)completion
{
  accessoryCopy = accessory;
  activityCopy = activity;
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke;
  aBlock[3] = &unk_2786889F0;
  objc_copyWeak(&v22, &location);
  v12 = accessoryCopy;
  v20 = v12;
  v13 = completionCopy;
  v21 = v13;
  v14 = _Block_copy(aBlock);
  [(HMDLowPowerModeProfile *)self setPendingWakeBlock:v14];
  [activityCopy markWithReason:@"Waking Suspended Accessory"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke_110;
  v16[3] = &unk_278686D60;
  objc_copyWeak(&v18, &location);
  v15 = v14;
  v17 = v15;
  [v12 wakeWithCompletion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained pendingWakeBlock];

    if (v6)
    {
      [v5 setSuspendedAccessory:0];
      [v5 setPendingWakeBlock:0];
      [v5 _stopBackoffTimerForType:2];
      v7 = objc_autoreleasePoolPush();
      v8 = v5;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 32);
        v13 = 138543874;
        v14 = v10;
        v15 = 2112;
        v16 = v3;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Pending wake block was called with error: %@ for %@", &v13, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      (*(*(a1 + 40) + 16))();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __70__HMDLowPowerModeProfile__wakeSuspendedAccessory_activity_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [WeakRetained _startTimerForType:2];
  }
}

- (void)wakeAccessoryWithType:(int64_t)type completion:(id)completion
{
  v118 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_alloc(MEMORY[0x277D0F770]);
  v10 = MEMORY[0x277CCACA8];
  v11 = MEMORY[0x22AAD2510](self, a2);
  v12 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/PowerManagement/WakeOnLAN/HMDLowPowerModeProfile.m", 201];
  v13 = [v9 initWithName:v12];

  suspendedAccessory = [(HMDLowPowerModeProfile *)self suspendedAccessory];

  if (!suspendedAccessory)
  {
    if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        *buf = 138543874;
        v107 = v25;
        v108 = 2112;
        v109 = v26;
        v110 = 2112;
        v111 = selfCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid wake up type is used '%@' for accessory %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v20 = MEMORY[0x277CCA9B8];
      v21 = 3;
      goto LABEL_9;
    }

    connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
    woWLANInfo = [connectivityInfo woWLANInfo];

    v30 = [(HMDLowPowerModeProfile *)self newHAPSuspendedAccessoryFromAccessoryConnectivityInfoWithType:type];
    accessory = [(HMDAccessoryProfile *)self accessory];
    home = [accessory home];
    featuresDataSource = [home featuresDataSource];
    v93 = home;
    if ([featuresDataSource isWakeOnLanV2Enabled])
    {
      connectivityInfo2 = [(HMDLowPowerModeProfile *)self connectivityInfo];
      woWLANSupportsBSP = [connectivityInfo2 woWLANSupportsBSP];

      if ((woWLANSupportsBSP & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v90 = HMFGetLogIdentifier();
          identifier = [accessory identifier];
          v86 = [MEMORY[0x277CCABB0] numberWithInteger:type];
          v94 = v13;
          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
          v96 = v30;
          v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(woWLANInfo, "wakePacketType")}];
          *buf = 138544386;
          v107 = v90;
          v108 = 2112;
          v109 = identifier;
          v110 = 2112;
          v111 = v86;
          v112 = 2112;
          v113 = v38;
          v114 = 2112;
          v115 = v39;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Waking suspended accessory: %@, wakeType: %@, version: %@, wakePacketType: %@", buf, 0x34u);

          v30 = v96;
          v13 = v94;
        }

        objc_autoreleasePoolPop(context);
        v40 = v13;
        [accessory uuid];

        v41 = [MEMORY[0x277CCABB0] numberWithInteger:type];
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
        v43 = MEMORY[0x277CCABB0];
        wakePacketType = [woWLANInfo wakePacketType];
        v45 = v43;
        v46 = accessory;
        v47 = [v45 numberWithInteger:wakePacketType];

        v48 = -[HMDAccessoryPowerManagementLogEvent initWithAccessory:wolanWakeUpType:version:]([HMDAccessoryPowerManagementLogEvent alloc], "initWithAccessory:wolanWakeUpType:version:", accessory, type, [woWLANInfo version]);
        v49 = +[HMDMetricsManager sharedLogEventSubmitter];
        [(HMDLowPowerModeProfile *)v49 submitLogEvent:v48];
        goto LABEL_24;
      }
    }

    else
    {
    }

    v97 = v30;
    availableBSPsCount = [home availableBSPsCount];
    contexta = [availableBSPsCount unsignedIntegerValue];

    v51 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v53 = HMFGetOSLogHandle();
    v95 = v13;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v91 = HMFGetLogIdentifier();
      [accessory identifier];
      v84 = selfCopy3;
      v54 = v87 = v51;
      v55 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(woWLANInfo, "wakePacketType")}];
      v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:contexta];
      *buf = 138544642;
      v107 = v91;
      v108 = 2112;
      v109 = v54;
      v110 = 2112;
      v111 = v55;
      v112 = 2112;
      v113 = v56;
      v114 = 2112;
      v115 = v57;
      v116 = 2112;
      v117 = v58;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Waking suspended accessory: %@, wakeType: %@, version: %@, wakePacketType: %@, numBSP: %@", buf, 0x3Eu);

      v51 = v87;
      v13 = v95;

      selfCopy3 = v84;
    }

    objc_autoreleasePoolPop(v51);
    v59 = v13;
    v46 = accessory;
    [accessory uuid];

    v60 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(woWLANInfo, "version")}];
    v62 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(woWLANInfo, "wakePacketType")}];
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:contexta];
    v88 = v59;

    v64 = -[HMDAccessoryPowerManagementLogEvent initWithAccessory:wolanWakeUpType:version:]([HMDAccessoryPowerManagementLogEvent alloc], "initWithAccessory:wolanWakeUpType:version:", accessory, type, [woWLANInfo version]);
    v65 = +[HMDMetricsManager sharedLogEventSubmitter];
    v92 = v64;
    [v65 submitLogEvent:v64];

    hapAccessory = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
    hapAccessory2 = [(HMDLowPowerModeProfile *)selfCopy3 hapAccessory];
    identifier2 = [hapAccessory2 identifier];
    v49 = [hapAccessory matchingHAPAccessoryWithServerIdentifier:identifier2 linkType:1];

    server = [(HMDLowPowerModeProfile *)v49 server];
    if ([server wakeNumber])
    {
      v70 = v88;
      [accessory uuid];

      v71 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:contexta];

      v30 = v97;
      [server setSuspendedAccessory:v97];
      v73 = objc_autoreleasePoolPush();
      v74 = selfCopy3;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        identifier3 = [accessory identifier];
        [MEMORY[0x277CCABB0] numberWithInteger:type];
        v77 = v89 = v73;
        v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:contexta];
        *buf = 138544642;
        v107 = v76;
        v108 = 2112;
        v109 = identifier3;
        v110 = 2112;
        v111 = v49;
        v112 = 2112;
        v113 = v97;
        v114 = 2112;
        v115 = v77;
        v116 = 2112;
        v117 = v78;
        _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Found accessory server for %@. Returning the HAPAccessory: %@. Wake will be via suspended accessory: %@, wakeType: %@, numBSP: %@", buf, 0x3Eu);

        v73 = v89;
        v46 = accessory;

        v30 = v97;
      }

      objc_autoreleasePoolPop(v73);
      completionCopy[2](completionCopy, v49, 0);

      v13 = v95;
      accessoryBrowser = v92;
      goto LABEL_25;
    }

    v13 = v95;
    v30 = v97;
    v48 = v92;
LABEL_24:

    [(HMDLowPowerModeProfile *)self setSuspendedAccessory:v30];
    hapAccessory3 = [(HMDLowPowerModeProfile *)self hapAccessory];
    home2 = [hapAccessory3 home];
    accessoryBrowser = [home2 accessoryBrowser];

    hapAccessory4 = [(HMDLowPowerModeProfile *)self hapAccessory];
    identifier4 = [hapAccessory4 identifier];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke;
    v101[3] = &unk_2786775B0;
    v102 = v30;
    selfCopy4 = self;
    v104 = v13;
    v105 = completionCopy;
    [accessoryBrowser currentlyFoundHAPAccessoryServerWithIdentifier:identifier4 linkType:1 completion:v101];

    v49 = v102;
LABEL_25:

    goto LABEL_10;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    suspendedAccessory2 = [(HMDLowPowerModeProfile *)selfCopy5 suspendedAccessory];
    *buf = 138543874;
    v107 = v18;
    v108 = 2112;
    v109 = selfCopy5;
    v110 = 2112;
    v111 = suspendedAccessory2;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Wake operation is in progress for %@ with suspended accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = MEMORY[0x277CCA9B8];
  v21 = 15;
LABEL_9:
  woWLANInfo = [v20 hmErrorWithCode:v21];
  (completionCopy)[2](completionCopy, 0, woWLANInfo);
LABEL_10:

  v28 = *MEMORY[0x277D85DE8];
}

void __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 wakeNumber])
  {
    v14 = 0;
    [v5 getBonjourDeviceDNSName:&v14];
    v6 = v14;
    [a1[4] setDnsName:v6];
  }

  v7 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDLowPowerModeProfile_wakeAccessoryWithType_completion___block_invoke_2;
  block[3] = &unk_278689AB8;
  v9 = *(a1 + 2);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v12 = a1[6];
  v13 = a1[7];
  dispatch_async(v7, block);
}

- (void)wakeAccessoryWithCompletion:(id)completion
{
  completionCopy = completion;
  connectivityInfo = [(HMDLowPowerModeProfile *)self connectivityInfo];
  woWLANInfo = [connectivityInfo woWLANInfo];
  wakeType = [woWLANInfo wakeType];

  if (wakeType == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(HMDLowPowerModeProfile *)self wakeAccessoryWithType:v7 completion:completionCopy];
}

- (void)dealloc
{
  [(HMDLowPowerModeProfile *)self unconfigure];
  v3.receiver = self;
  v3.super_class = HMDLowPowerModeProfile;
  [(HMDLowPowerModeProfile *)&v3 dealloc];
}

- (void)unconfigure
{
  v4.receiver = self;
  v4.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v4 unconfigure];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(HMDLowPowerModeProfile *)self _updateCharacteristicsNotifications:0];
}

- (void)handleInitialState
{
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4.receiver = self;
  v4.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v4 handleInitialState];
  [(HMDLowPowerModeProfile *)self _readInitialRequiredCharacteristics];
}

- (void)registerForMessages
{
  v21 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14.receiver = self;
  v14.super_class = HMDLowPowerModeProfile;
  [(HMDAccessoryProfile *)&v14 registerForMessages];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = home;
    v19 = 2112;
    v20 = selfCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for messages with home: %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_handleAccessoryCharacteristicsChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel_handleAccessoryConfigurationChanged_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:selfCopy selector:sel_handleAccessoryConfigurationChanged_ name:@"HMDAccessoryDisconnectedNotification" object:accessory];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDLowPowerModeProfile)initWithAccessory:(id)accessory powerManagementservice:(id)managementservice workQueue:(id)queue
{
  v34[1] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  managementserviceCopy = managementservice;
  queueCopy = queue;
  if (HMDLowPowerModeUUIDFromAccessory_onceToken != -1)
  {
    dispatch_once(&HMDLowPowerModeUUIDFromAccessory_onceToken, &__block_literal_global_315);
  }

  v11 = [MEMORY[0x277CBEB28] dataWithLength:16];
  uuid = [accessoryCopy uuid];
  [uuid getUUIDBytes:{objc_msgSend(v11, "mutableBytes")}];

  v13 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:HMDLowPowerModeUUIDFromAccessory_namespace data:v11];

  v34[0] = managementserviceCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v33.receiver = self;
  v33.super_class = HMDLowPowerModeProfile;
  v15 = [(HMDAccessoryProfile *)&v33 initWithAccessory:accessoryCopy uniqueIdentifier:v13 services:v14 workQueue:queueCopy];

  if (v15)
  {
    v16 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v19 = [v16 stringWithFormat:@"%@.HMDLowPowerMode.%@", @"com.apple.HomeKitDaemon", uUIDString];
    clientIdentifier = v15->_clientIdentifier;
    v15->_clientIdentifier = v19;

    home = [accessoryCopy home];
    name = [home name];

    v23 = isInternalBuild();
    v24 = MEMORY[0x277CCACA8];
    if (v23)
    {
      name2 = [accessoryCopy name];
      uuid2 = [accessoryCopy uuid];
      uniqueIdentifier = [accessoryCopy uniqueIdentifier];
      v28 = [v24 stringWithFormat:@"%@/%@/%@/%@", name, name2, uuid2, uniqueIdentifier];
      logIdentifier = v15->_logIdentifier;
      v15->_logIdentifier = v28;
    }

    else
    {
      name2 = [accessoryCopy uuid];
      uuid2 = [accessoryCopy uniqueIdentifier];
      v30 = [v24 stringWithFormat:@"%@/%@/%@", name, name2, uuid2];
      uniqueIdentifier = v15->_logIdentifier;
      v15->_logIdentifier = v30;
    }

    objc_storeWeak(&v15->_delegate, accessoryCopy);
    [(HMDLowPowerModeProfile *)v15 _resetStateMachine];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t57 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t57, &__block_literal_global_145);
  }

  v3 = logCategory__hmf_once_v58;

  return v3;
}

void __37__HMDLowPowerModeProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v58;
  logCategory__hmf_once_v58 = v1;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HMDLowPowerModeProfile;
  v5 = objc_msgSendSuper2(&v7, sel_messageBindingForDispatcher_message_receiver_, dispatcher, message, receiver);

  return v5;
}

@end