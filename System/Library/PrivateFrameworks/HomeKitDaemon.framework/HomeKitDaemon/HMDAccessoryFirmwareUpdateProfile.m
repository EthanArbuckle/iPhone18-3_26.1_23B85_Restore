@interface HMDAccessoryFirmwareUpdateProfile
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryFirmwareUpdateProfile)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5;
- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithCompletion:(id)a3;
- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithStagedFirmwareVersion:(id)a3;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (NSString)description;
- (id)characteristics;
- (id)firmwareVersionCharacteristic;
- (id)logIdentifier;
- (id)matterFirmwareVersionCharacteristic;
- (id)privateDescription;
- (id)readinessCharacteristic;
- (id)statusCharacteristic;
- (void)__handleAccessoryIsReachable;
- (void)__handleFirmwareUpdateReadinessUpdate:(id)a3;
- (void)__handleFirmwareUpdateStatusUpdate:(id)a3;
- (void)__handleFirmwareVersionUpdate:(id)a3;
- (void)__handleStagedFirmwareVersionUpdate:(id)a3;
- (void)_handleCharacteristicChanges:(id)a3;
- (void)_registerForNotifications;
- (void)_updateAccessoryFirmwareVersion:(id)a3;
- (void)_updateFirmwareStagingNotReadyReasons:(unint64_t)a3;
- (void)_updateFirmwareUpdateNotReadyReasons:(unint64_t)a3;
- (void)_updateFirmwareUpdateState:(int64_t)a3;
- (void)_updateStagedFirmwareVersion:(id)a3;
- (void)configure;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)a3;
- (void)handleCharacteristicValuesChanged:(id)a3;
- (void)monitorCharacteristics:(BOOL)a3;
- (void)readAndProcessCharacteristics:(id)a3 withCompletion:(id)a4;
@end

@implementation HMDAccessoryFirmwareUpdateProfile

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)__handleFirmwareVersionUpdate:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v6 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v8];
    [(HMDAccessoryFirmwareUpdateProfile *)self setCurrentVersion:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Update fetched firmware version not available for accessory %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateStagedFirmwareVersion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMDAccessoryFirmwareUpdateProfile *)self stagedFirmwareVersion];
  if (!v7 || (-[HMDAccessoryFirmwareUpdateProfile stagedFirmwareVersion](self, "stagedFirmwareVersion"), v3 = objc_claimAutoreleasedReturnValue(), ([v3 isEqualToVersion:v6] & 1) != 0))
  {
    v8 = [(HMDAccessoryFirmwareUpdateProfile *)self stagedFirmwareVersion];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    v10 = !v9;

    if (v7)
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (!v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDAccessoryFirmwareUpdateProfile *)v12 stagedFirmwareVersion];
    v18 = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@StagedFirmwareVersion changed from %@ to %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDAccessoryFirmwareUpdateProfile *)v12 setStagedFirmwareVersion:v6];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"HMDAccessoryStagedFirmwareVersionChangedNotification" object:v12];

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)__handleStagedFirmwareVersionUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:v8];
}

- (void)__handleFirmwareUpdateReadinessUpdate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v19 = 0;
  v9 = [MEMORY[0x277CFEB50] parsedFromData:v8 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 value];
      *buf = 138544386;
      v21 = v14;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse firmware update readiness (%@) - characteristic %@ value %@ error %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v16 = [v9 stagingNotReadyReasons];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareStagingNotReadyReasons:](self, "_updateFirmwareStagingNotReadyReasons:", [v16 value]);

    v17 = [v9 updateNotReadyReasons];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateNotReadyReasons:](self, "_updateFirmwareUpdateNotReadyReasons:", [v17 value]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)__handleFirmwareUpdateStatusUpdate:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v29 = 0;
  v9 = [MEMORY[0x277CFEB58] parsedFromData:v8 error:&v29];
  v10 = v29;
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 value];
      *buf = 138544386;
      v31 = v14;
      v32 = 2112;
      v33 = v4;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse firmware update status (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_15:
    }

LABEL_16:

    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  v16 = [v9 state];

  if (!v16)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v14;
    v19 = "%{public}@Missing update state in Firmware Update Status TLV";
    v20 = v13;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  v17 = [v9 state];
  if ([v17 value] == 3)
  {
    v18 = [v9 stagedFirmwareVersion];

    if (!v18)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v14;
      v19 = "%{public}@Dropping Firmware Staging Status Success without a Staged Firmware Version";
      v20 = v13;
      v21 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_229538000, v20, v21, v19, buf, 0xCu);
      goto LABEL_15;
    }
  }

  else
  {
  }

  v23 = [v9 state];

  if (v23)
  {
    v24 = [v9 state];
    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateState:](self, "_updateFirmwareUpdateState:", [v24 value]);
  }

  v25 = [v9 updateDuration];

  if (v25)
  {
    v26 = [v9 updateDuration];
    v27 = [v26 value];

    -[HMDAccessoryFirmwareUpdateProfile _updateFirmwareUpdateDuration:](self, "_updateFirmwareUpdateDuration:", [v27 unsignedIntegerValue]);
  }

  v28 = [v9 stagedFirmwareVersion];
  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:v28];

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v37;
    v35 = *MEMORY[0x277CCF8B8];
    v34 = *MEMORY[0x277CFE670];
    *&v9 = 138543362;
    v32 = v9;
    v33 = v6;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = [v14 isEqualToString:@"00000235-0000-1000-8000-0026BB765291"];

        if (v15)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleFirmwareUpdateStatusUpdate:v13];
          continue;
        }

        v16 = [v13 type];
        v17 = [v16 isEqualToString:@"00000234-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleFirmwareUpdateReadinessUpdate:v13];
          continue;
        }

        v18 = [v13 type];
        v19 = [v18 isEqualToString:@"00000249-0000-1000-8000-0026BB765291"];

        if (v19)
        {
          [(HMDAccessoryFirmwareUpdateProfile *)self __handleStagedFirmwareVersionUpdate:v13];
          continue;
        }

        v20 = [v13 type];
        v21 = [v20 isEqualToString:v35];

        if (v21)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            *buf = v32;
            v41 = v25;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Firmware Update Profile _handleCharacteristicChanges: characteristic update for HMCharacteristicTypeFirmwareVersion", buf, 0xCu);

            v6 = v33;
          }

          objc_autoreleasePoolPop(v22);
          if ([v6 supportsHAP])
          {
            goto LABEL_21;
          }
        }

        else
        {
          v26 = [v13 type];
          v27 = [v26 isEqualToString:v34];

          if (v27)
          {
            v28 = objc_autoreleasePoolPush();
            v23 = self;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v30 = HMFGetLogIdentifier();
              *buf = v32;
              v41 = v30;
              _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Firmware Update Profile _handleCharacteristicChanges: characteristic update for HAPCharacteristicUUID_MatterFirmwareRevisionNumber", buf, 0xCu);

              v6 = v33;
            }

            objc_autoreleasePoolPop(v28);
            if ([v6 supportsCHIP])
            {
LABEL_21:
              [(HMDAccessoryFirmwareUpdateProfile *)v23 __handleFirmwareVersionUpdate:v13];
              continue;
            }
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v10);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)__handleAccessoryIsReachable
{
  v3 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self notificationsEnabled])
  {

    [(HMDAccessoryFirmwareUpdateProfile *)self _enableCharacteristicsNotifications:1];
  }
}

- (void)handleAccessoryIsReachable:(id)a3
{
  v4 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDAccessoryFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __64__HMDAccessoryFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is now reachable", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) __handleAccessoryIsReachable];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDAccessoryFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__HMDAccessoryFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_BOOLForKey:@"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey"];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Already handled updated accessory firmware version", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            v17 = [*(a1 + 40) accessory];
            v18 = [v16 accessory];
            v19 = HMFEqualObjects();

            if (v19)
            {
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      [*(a1 + 40) _handleCharacteristicChanges:v10];
      v9 = v21;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if (v3)
  {
    v4 = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [v4 addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v3];

    v5 = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [v5 addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:v3];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Not registering for notifications as accessory is nil", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccessoryFirmwareVersion:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v7 = [v6 firmwareVersion];
  v8 = [v4 isGreaterThanVersion:v7];

  if (v8)
  {
    if ([v6 supportsCHIP])
    {
      v31[0] = @"kModifiedCharacteristicsKey";
      v9 = [(HMDAccessoryFirmwareUpdateProfile *)self matterFirmwareVersionCharacteristic];
      v30 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v31[1] = @"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey";
      v32[0] = v10;
      v32[1] = MEMORY[0x277CBEC38];
      v11 = MEMORY[0x277CBEAC0];
      v12 = v32;
      v13 = v31;
    }

    else
    {
      v28[0] = @"kModifiedCharacteristicsKey";
      v9 = [(HMDAccessoryFirmwareUpdateProfile *)self firmwareVersionCharacteristic];
      v27 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v28[1] = @"HMDAccessoryFirmwareUpdateHasHandledFirmwareVersionUpdatedNotificationKey";
      v29[0] = v10;
      v29[1] = MEMORY[0x277CBEC38];
      v11 = MEMORY[0x277CBEAC0];
      v12 = v29;
      v13 = v28;
    }

    v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 firmwareVersion];
      v21 = 138543874;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory version=%@ is different than fetched version=%@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    logAndPostNotification(@"HMDAccessoryCharacteristicsChangedNotification", v6, v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateFirmwareUpdateNotReadyReasons:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self updateNotReadyReasons]== a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)v7 updateNotReadyReasons];
      v10 = HAPUpdateNotReadyReasonsAsString();
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Update Not Ready Reasons not changed: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateProfile *)self setUpdateNotReadyReasons:a3];
    v13 = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [v13 postNotificationName:@"HMDAccessoryFirmwareUpdateApplyNotReadyReasonsChangedNotification" object:self userInfo:0];
    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateFirmwareStagingNotReadyReasons:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDAccessoryFirmwareUpdateProfile *)self stagingNotReadyReasons]== a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)v7 stagingNotReadyReasons];
      v10 = HAPStagingNotReadyReasonsAsString();
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Staging Not Ready Reasons not changed: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(HMDAccessoryFirmwareUpdateProfile *)self setStagingNotReadyReasons:a3];
    v13 = [(HMDAccessoryFirmwareUpdateProfile *)self notificationCenter];
    [v13 postNotificationName:@"HMDAccessoryFirmwareUpdateStagingNotReadyReasonsChangedNotification" object:self userInfo:0];
    v12 = *MEMORY[0x277D85DE8];
  }
}

- (void)_updateFirmwareUpdateState:(int64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self updateState];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5 == a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)v7 updateState];
      v11 = HAPFirmwareUpdateStateAsString();
      *buf = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@State not changed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateProfile *)v7 updateState];
      v13 = HAPFirmwareUpdateStateAsString();
      v14 = HAPFirmwareUpdateStateAsString();
      *buf = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating firmware update state from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessoryFirmwareUpdateProfile *)v7 setUpdateState:a3];
    v15 = [(HMDAccessoryFirmwareUpdateProfile *)v7 notificationCenter];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, @"HMDAccessoryFirmwareUpdateStateKey"}];
    v20 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v15 postNotificationName:@"HMDAccessoryFirmwareUpdateStateChangedNotification" object:v7 userInfo:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)readAndProcessCharacteristics:(id)a3 withCompletion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 count] == 0;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v25;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No characteristics to read and process", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7[2](v7);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v14;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        v19 = 0;
        do
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v31 + 1) + 8 * v19)];
          [v15 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
    }

    objc_initWeak(buf, v11);
    v21 = [(HMDAccessoryFirmwareUpdateProfile *)v11 accessory];
    v22 = [v21 home];

    v23 = [v15 copy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke;
    v27[3] = &unk_278685EC0;
    objc_copyWeak(&v30, buf);
    v29 = v7;
    v24 = v15;
    v28 = v24;
    [v22 readCharacteristicValues:v23 source:1000 qualityOfService:-1 withCompletionHandler:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v35 = WeakRetained;
    v8 = v5;
    if (v5)
    {
      *v50 = 0;
      *&v50[8] = v50;
      *&v50[16] = 0x3032000000;
      v51 = __Block_byref_object_copy__234309;
      v52 = __Block_byref_object_dispose__234310;
      v33 = a1;
      v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = *(a1 + 32);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v9)
      {
        v10 = *v42;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v42 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v41 + 1) + 8 * i);
            v13 = [v12 characteristic];
            v40 = 0;
            v14 = [v8 hmd_valueOfCharacteristic:v13 error:&v40];
            v15 = v40;

            if (v14)
            {
              v16 = *(*&v50[8] + 40);
              v17 = [v12 characteristic];
              [v16 addObject:v17];
            }

            else
            {
              v18 = objc_autoreleasePoolPush();
              v19 = v35;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                v22 = [v12 characteristic];
                *buf = 138543618;
                v46 = v21;
                v47 = 2112;
                v48 = v22;
                _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
            }
          }

          v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v9);
      }

      v23 = [v35 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_52;
      block[3] = &unk_278682E60;
      block[4] = v35;
      v39 = v50;
      v38 = *(v33 + 40);
      dispatch_async(v23, block);

      _Block_object_dispose(v50, 8);
    }

    else
    {
      v26 = a1;
      v27 = objc_autoreleasePoolPush();
      v28 = v7;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(v26 + 32);
        *v50 = 138543874;
        *&v50[4] = v30;
        *&v50[12] = 2112;
        *&v50[14] = v31;
        *&v50[22] = 2112;
        v51 = v34;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", v50, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      (*(*(v26 + 40) + 16))();
    }

    v7 = v35;
  }

  else
  {
    v8 = v5;
    v24 = _Block_copy(*(a1 + 40));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __82__HMDAccessoryFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_52(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[6] + 8) + 40) copy];
  [v2 _handleCharacteristicChanges:v3];

  v4 = *(a1[5] + 16);

  return v4();
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithCompletion:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating accessory firmware update profile", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAccessoryFirmwareUpdateProfile *)v7 characteristics];
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v10, "count") + 1}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 addObject:{*(*(&v24 + 1) + 8 * v16++), v24}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = [(HMDAccessoryFirmwareUpdateProfile *)v7 firmwareVersionCharacteristic];
  if (v17)
  {
    [v11 addObject:v17];
  }

  v18 = [(HMDAccessoryFirmwareUpdateProfile *)v7 accessory];
  v19 = [v18 supportsCHIP];

  if (v19)
  {
    v20 = [(HMDAccessoryFirmwareUpdateProfile *)v7 matterFirmwareVersionCharacteristic];
    if (v20)
    {
      [v11 addObject:v20];
    }
  }

  v21 = [v11 allObjects];
  [(HMDAccessoryFirmwareUpdateProfile *)v7 readAndProcessCharacteristics:v21 withCompletion:v4];

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (HMDAccessoryFirmwareUpdateProfile)updateProfileWithStagedFirmwareVersion:(id)a3
{
  v6 = a3;
  v4 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDAccessoryFirmwareUpdateProfile *)self _updateFirmwareUpdateState:3];
  [(HMDAccessoryFirmwareUpdateProfile *)self _updateStagedFirmwareVersion:v6];

  return result;
}

- (id)characteristics
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"00000235-0000-1000-8000-0026BB765291", @"00000234-0000-1000-8000-0026BB765291", 0}];
  v4 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v5 = [v4 findCharacteristicsByTypes:v3 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v5;
}

- (id)statusCharacteristic
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [v2 findCharacteristicType:@"00000235-0000-1000-8000-0026BB765291" forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v3;
}

- (id)matterFirmwareVersionCharacteristic
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if ([v2 supportsCHIP])
  {
    v3 = [v2 findCharacteristicType:*MEMORY[0x277CFE670] forServiceType:*MEMORY[0x277CD0DD0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)firmwareVersionCharacteristic
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [v2 findCharacteristicType:*MEMORY[0x277CCF8B8] forServiceType:*MEMORY[0x277CD0DD0]];

  return v3;
}

- (id)readinessCharacteristic
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [v2 findCharacteristicType:@"00000234-0000-1000-8000-0026BB765291" forServiceType:@"00000236-0000-1000-8000-0026BB765291"];

  return v3;
}

- (void)monitorCharacteristics:(BOOL)a3
{
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HMDAccessoryFirmwareUpdateProfile_monitorCharacteristics___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __60__HMDAccessoryFirmwareUpdateProfile_monitorCharacteristics___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Monitoring characteristics set to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) notificationsEnabled];
  if (*(a1 + 40) != result)
  {
    result = [*(a1 + 32) _enableCharacteristicsNotifications:?];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)configure
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryFirmwareUpdateProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v4 = [(HMDAccessoryFirmwareUpdateProfile *)self matterFirmwareUpdateProfile];
    [v4 configure];
  }

  [(HMDAccessoryFirmwareUpdateProfile *)self _registerForNotifications];
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  if ([v5 isReachable])
  {
    v6 = MEMORY[0x277CBEB98];
    v11[0] = @"00000234-0000-1000-8000-0026BB765291";
    v11[1] = @"00000235-0000-1000-8000-0026BB765291";
    v11[2] = @"00000249-0000-1000-8000-0026BB765291";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [v5 findCharacteristicsByTypes:v8 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];
    [(HMDAccessoryFirmwareUpdateProfile *)self _handleCharacteristicChanges:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryFirmwareUpdateProfile)initWithAccessory:(id)a3 service:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HMDAccessoryFirmwareUpdateProfile;
  v11 = [(HMDAccessoryFirmwareUpdateProfile *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, v8);
    objc_storeWeak(&v12->_service, v9);
    objc_storeStrong(&v12->_workQueue, a5);
    v13 = [v8 firmwareVersion];
    currentVersion = v12->_currentVersion;
    v12->_currentVersion = v13;

    v15 = [[HMDAccessoryMatterFirmwareUpdateProfile alloc] initWithAccessory:v8 workQueue:v10];
    matterFirmwareUpdateProfile = v12->_matterFirmwareUpdateProfile;
    v12->_matterFirmwareUpdateProfile = v15;
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateProfile;
  [(HMDAccessoryFirmwareUpdateProfile *)&v4 dealloc];
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

      v8 = [(HMDAccessoryFirmwareUpdateProfile *)self service];
      v9 = [v8 uuid];
      v10 = [(HMDAccessoryFirmwareUpdateProfile *)v7 service];

      v11 = [v10 uuid];
      v12 = [v9 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, v7];

  return v8;
}

- (NSString)description
{
  v2 = [(HMDAccessoryFirmwareUpdateProfile *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Accessory Firmware Update Profile %@, %@", v4, v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_234344 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_234344, &__block_literal_global_234345);
  }

  v3 = logCategory__hmf_once_v2_234346;

  return v3;
}

void __48__HMDAccessoryFirmwareUpdateProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_234346;
  logCategory__hmf_once_v2_234346 = v1;
}

@end