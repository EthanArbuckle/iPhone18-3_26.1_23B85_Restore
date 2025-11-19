@interface HMDAccessoryFirmwareUpdateCameraPolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)_checkStreamingStatus;
- (void)_handleStreamStatusCharacteristicChanges;
- (void)_processStreamingStatus:(id)a3;
- (void)configure;
- (void)handleAccessoryConfiguredNotification:(id)a3;
- (void)handleAccessoryUnconfiguredNotification:(id)a3;
- (void)handleCharacteristicValuesChanged:(id)a3;
- (void)handleSettingsChange:(id)a3;
- (void)registerForNotifications;
@end

@implementation HMDAccessoryFirmwareUpdateCameraPolicy

- (BOOL)evaluate
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v4 = [v3 cameraProfileSettingsManager];
  v5 = [v4 currentSettings];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v11 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v9;
      v10 = "%{public}@Invalid settings, policy status evaluated to NO";
      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if ([v5 currentAccessMode])
  {
    if (HMIsRecordingAllowedForCameraAccessMode())
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v9;
        v10 = "%{public}@Recording enabled, policy status evaluated to NO";
LABEL_13:
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, v10, &v20, 0xCu);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    if (HMIsStreamingAllowedForCameraAccessMode())
    {
      [(HMDAccessoryFirmwareUpdateCameraPolicy *)self _checkStreamingStatus];
      v6 = objc_autoreleasePoolPush();
      v16 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v9;
        v10 = "%{public}@Checking streaming status, policy status temporarily set to NO";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    HMIsMotionDetectionAllowedForCameraAccessMode();
    v6 = objc_autoreleasePoolPush();
    v19 = self;
    v8 = HMFGetOSLogHandle();
    v13 = 1;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v14 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v14;
    v15 = "%{public}@Policy status evaluated to YES";
LABEL_18:
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, v15, &v20, 0xCu);

    goto LABEL_15;
  }

  v6 = objc_autoreleasePoolPush();
  v12 = self;
  v8 = HMFGetOSLogHandle();
  v13 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v14;
    v15 = "%{public}@Camera access mode is OFF, policy status evaluated to YES";
    goto LABEL_18;
  }

LABEL_15:

  objc_autoreleasePoolPop(v6);
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_processStreamingStatus:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = 0x277CBE000uLL;
    while (2)
    {
      v9 = 0;
      v31 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(v8 + 2704);
        v11 = *(*(&v32 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          v14 = [(HAPTLVBase *)[HMDStreamingStatus alloc] initWithTLVData:v13];
          v15 = v14;
          if (v14 && [(HMDStreamingStatus *)v14 streamingStatus]== 1)
          {

            v24 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v19 = v7;
            v20 = v8;
            v21 = v4;
            v23 = v22 = self;
            *buf = 138543618;
            v37 = v23;
            v38 = 2112;
            v39 = v11;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid value type: %@", buf, 0x16u);

            self = v22;
            v4 = v21;
            v8 = v20;
            v7 = v19;
            v6 = v31;
          }

          objc_autoreleasePoolPop(v16);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_20:

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = HMFBooleanToString();
    *buf = 138543618;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  if (v24 != [(HMDAccessoryFirmwareUpdatePolicy *)v26 status])
  {
    [(HMDAccessoryFirmwareUpdatePolicy *)v26 setStatus:v24];
    [(HMDAccessoryFirmwareUpdatePolicy *)v26 notify:v24];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_checkStreamingStatus
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v5 = [v4 findCharacteristicsByType:*MEMORY[0x277CFE6F0] forServiceType:*MEMORY[0x277CD0E00]];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v29 + 1) + 8 * v9)];
        [v3 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v3 count];
      *buf = 138543618;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Check streaming status, request array size: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    objc_initWeak(buf, v15);
    v19 = [v13 home];
    v20 = [(HMDAccessoryFirmwareUpdateCameraPolicy *)v15 description];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke;
    v26[3] = &unk_279733AE8;
    objc_copyWeak(&v28, buf);
    v27 = v3;
    [v19 readCharacteristicValues:v27 source:1000 sourceForLogging:v20 qualityOfService:-1 withCompletionHandler:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the stream status characteristic from any of the stream services", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v34 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    v10 = v9;
    v33 = v6;
    if (v6)
    {
      v31 = WeakRetained;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v46 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received response for read of stream status", buf, 0xCu);
      }

      v32 = v5;

      objc_autoreleasePoolPop(v8);
      v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = *(a1 + 32);
      v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v13 = v33;
      if (v12)
      {
        v14 = v12;
        v15 = *v41;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v18 = [v17 characteristic];
            v39 = 0;
            v19 = [v13 hmd_valueOfCharacteristic:v18 error:&v39];
            v20 = v39;

            if (v19)
            {
              [v36 addObject:v19];
            }

            else
            {
              v21 = objc_autoreleasePoolPush();
              v22 = v34;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                v25 = [v17 characteristic];
                *buf = 138543618;
                v46 = v24;
                v47 = 2112;
                v48 = v25;
                _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);

                v13 = v33;
              }

              objc_autoreleasePoolPop(v21);
            }
          }

          v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v14);
      }

      v26 = [v34 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy__checkStreamingStatus__block_invoke_15;
      block[3] = &unk_2797359B0;
      block[4] = v34;
      v38 = v36;
      v6 = v13;
      v27 = v36;
      dispatch_async(v26, block);

      WeakRetained = v31;
      v5 = v32;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = *(a1 + 32);
        *buf = 138543874;
        v46 = v28;
        v47 = 2112;
        v48 = v29;
        v49 = 2112;
        v50 = v5;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      v6 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleSettingsChange:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDAccessoryFirmwareUpdateCameraPolicy_handleSettingsChange___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __63__HMDAccessoryFirmwareUpdateCameraPolicy_handleSettingsChange___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Settings changed, updating policy status", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) evaluateAndNotify];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleStreamStatusCharacteristicChanges
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v5 = [v4 findCharacteristicsByType:*MEMORY[0x277CFE6F0] forServiceType:*MEMORY[0x277CD0E00]];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) value];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(HMDAccessoryFirmwareUpdateCameraPolicy *)self _processStreamingStatus:v6];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDAccessoryFirmwareUpdateCameraPolicy_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __76__HMDAccessoryFirmwareUpdateCameraPolicy_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v3 count])
  {
    [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = v17 = v3;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      v8 = *MEMORY[0x277CFE6F0];
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = [*(a1 + 40) accessory];
          v12 = [v10 accessory];
          v13 = HMFEqualObjects();

          if (v13)
          {
            v14 = [v10 type];
            v15 = [v14 isEqualToString:v8];

            if (v15)
            {
              [v18 addObject:v10];
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    if ([v18 count])
    {
      [*(a1 + 40) _handleStreamStatusCharacteristicChanges];
    }

    v3 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryUnconfiguredNotification:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryUnconfiguredNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __82__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryUnconfiguredNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is unconfigured, disabling stream status monitoring...", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *(a1 + 32);
  v8 = [v7 accessory];
  [v6 removeObserver:v7 name:@"HMDAccessoryCharacteristicsChangedNotification" object:v8];

  result = [*(a1 + 32) monitorStreamStatus:0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryConfiguredNotification:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryConfiguredNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __80__HMDAccessoryFirmwareUpdateCameraPolicy_handleAccessoryConfiguredNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is configured, enabling stream status monitoring...", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *(a1 + 32);
  v8 = [v7 accessory];
  [v6 addObserver:v7 selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v8];

  result = [*(a1 + 32) monitorStreamStatus:1];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerForNotifications
{
  v7 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:v7];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleAccessoryUnconfiguredNotification_ name:@"HMDAccessoryDisconnectedNotification" object:v7];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handleSettingsChange_ name:@"HMDCameraProfileSettingsDidChangeNotification" object:v7];

  if ([v7 isReachable])
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v7];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
    if (v6)
    {
      v7 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
      v8 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [v2 hash];

  return v3;
}

- (void)configure
{
  [(HMDAccessoryFirmwareUpdateCameraPolicy *)self registerForNotifications];
  v3 = [(HMDAccessoryFirmwareUpdateCameraPolicy *)self evaluate];

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:v3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_19696 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_19696, &__block_literal_global_19697);
  }

  v3 = logCategory__hmf_once_v1_19698;

  return v3;
}

uint64_t __53__HMDAccessoryFirmwareUpdateCameraPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_19698;
  logCategory__hmf_once_v1_19698 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end