@interface HMDAccessoryFirmwareUpdateManager
+ (id)logCategory;
- (BOOL)_registerAccessory:(id)a3 source:(int64_t)a4 path:(id)a5;
- (BOOL)checkForUpdateForAccessory:(id)a3;
- (BOOL)hasReachedMaximumFirmwareUpdateRetriesForAccessory:(id)a3 assetID:(id)a4;
- (BOOL)isAccessoryRegistered:(id)a3;
- (BOOL)isFirmwareUpdateRetryAllowedForAccessory:(id)a3 forAsset:(id)a4;
- (BOOL)registerAccessory:(id)a3;
- (BOOL)startUARPPacketCapture:(id)a3;
- (BOOL)supportsFirmwareUpdate;
- (HMDAccessoryFirmwareUpdateManager)init;
- (HMDAccessoryFirmwareUpdateManager)initWithHomeManager:(id)a3 wingman:(id)a4;
- (HMDHomeManager)homeManager;
- (UARPController)defaultUARPController;
- (id)UARPAccessoryForHMDAccessory:(id)a3;
- (id)UARPControllerForAccessory:(id)a3;
- (id)addSessionForUARPAccessory:(id)a3;
- (id)availableSoftwareAssetForMatterAccessory:(id)a3 error:(id *)a4;
- (id)findHMDHAPAccessoryWithUARPAccessory:(id)a3;
- (id)matterUARPController;
- (id)registerAndCreateSessionForAccessory:(id)a3 updateUARPParameters:(BOOL)a4;
- (id)sessionForAccessory:(id)a3;
- (id)sessionForUARPAccessory:(id)a3;
- (int64_t)defaultProductDataUpdateAssetSource;
- (int64_t)defaultUpdateAssetSourceWithAccessory:(id)a3;
- (void)_handleAccessoryFirmwareVersionUpdateNotification:(id)a3;
- (void)_handleHomeAccessoryRemovedNotification:(id)a3;
- (void)_handleMatterSettingsUpdateNotification:(id)a3;
- (void)dealloc;
- (void)handleAccessoryFirmwareVersionUpdateNotification:(id)a3;
- (void)handleHomeAccessoryRemovedNotification:(id)a3;
- (void)handleMatterSettingsUpdateNotification:(id)a3;
- (void)removeSession:(id)a3;
- (void)rescindStagedAsset:(id)a3 completion:(id)a4;
- (void)resetFirmwareUpdateAccessoryRetryTracking:(id)a3 forAsset:(id)a4;
- (void)startStatusTimer;
- (void)stopUARPPacketCapture;
- (void)timerDidFire:(id)a3;
- (void)unregisterAccessory:(id)a3;
@end

@implementation HMDAccessoryFirmwareUpdateManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];

  if (v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      [(HMDAccessoryFirmwareUpdateManager *)v8 defaultProductDataUpdateAssetSource];
      v11 = HMSoftwareUpdateAssetSourceAsString();
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Default asset source: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDAccessoryFirmwareUpdateManager *)v8 activeSessions];
    [v12 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_106_127195];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)rescindStagedAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke;
  v11[3] = &unk_279730E50;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained isAccessoryRegistered:a1[4]])
  {
    v3 = [WeakRetained sessionForAccessory:a1[4]];
    if (v3)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__HMDAccessoryFirmwareUpdateManager_rescindStagedAsset_completion___block_invoke_102;
      v16[3] = &unk_279735558;
      v17 = a1[5];
      [v3 rescindStagedAsset:v16];
      v4 = v17;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = WeakRetained;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[4] shortDescription];
        *buf = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not available session for accessory", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:0 reason:@"Invalid state: session not available for accessory" suggestion:0];
      (*(a1[5] + 2))();
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[4] shortDescription];
      *buf = 138543618;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[%@] Accessory not registered", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:0 reason:@"accessory not registered" suggestion:0];
    (*(a1[5] + 2))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopUARPPacketCapture
{
  v2 = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  [v2 stopPacketCapture];
}

- (BOOL)startUARPPacketCapture:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  v6 = [v5 startPacketCapture:v4];

  return v6;
}

- (void)resetFirmwareUpdateAccessoryRetryTracking:(id)a3 forAsset:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [a3 uuid];
  v9 = [v8 UUIDString];
  v10 = [v7 assetVersion];

  v12 = [v6 stringWithFormat:@"%@-%@", v9, v10];

  v11 = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  [v11 removeObjectForKey:v12];
}

- (BOOL)isFirmwareUpdateRetryAllowedForAccessory:(id)a3 forAsset:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [v8 uuid];
  v10 = [v9 UUIDString];
  v11 = [v7 assetVersion];
  v12 = [v6 stringWithFormat:@"%@-%@", v10, v11];

  v13 = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  v14 = [v13 objectForKeyedSubscript:v12];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
  v16 = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  [v16 setObject:v15 forKeyedSubscript:v12];

  LOBYTE(self) = [(HMDAccessoryFirmwareUpdateManager *)self hasReachedMaximumFirmwareUpdateRetriesForAccessory:v8 assetID:v7];
  return self ^ 1;
}

- (BOOL)hasReachedMaximumFirmwareUpdateRetriesForAccessory:(id)a3 assetID:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [a3 uuid];
  v9 = [v8 UUIDString];
  v10 = [v7 assetVersion];

  v11 = [v6 stringWithFormat:@"%@-%@", v9, v10];

  v12 = [(HMDAccessoryFirmwareUpdateManager *)self accessoryRetries];
  v13 = [v12 objectForKeyedSubscript:v11];

  LOBYTE(v12) = [v13 intValue] > 0xA;
  return v12;
}

- (id)UARPAccessoryForHMDAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 identityType])
  {
    v5 = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories];
    v6 = [v5 objectForKey:v4];

    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277D02600]) initWithHMDHAPAccessory:v4];
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v4 shortDescription];
        v12 = [v4 name];
        v22 = 138544130;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = v6;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Initialized UARP Accessory %@ from HAP Accessory %@", &v22, 0x2Au);
      }

      objc_autoreleasePoolPop(v7);
      if (v6)
      {
        v13 = [(HMDAccessoryFirmwareUpdateManager *)v8 registeredAccessories];
        [v13 setObject:v6 forKey:v4];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 shortDescription];
      v19 = [v4 name];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unknown identity type for %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v6 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)findHMDHAPAccessoryWithUARPAccessory:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self homeManager];
  v6 = [v4 uuid];
  v7 = [v5 accessoryWithUUID:v6];

  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() & 1;
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v9)
    {
      v12 = v8;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory %@ is not a HAPAccessory", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v12 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 uuid];
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory %@ not found in homes", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)sessionForUARPAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
  v6 = [v4 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)addSessionForUARPAccessory:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    v5 = [(HMDAccessoryFirmwareUpdateManager *)self findHMDHAPAccessoryWithUARPAccessory:v4];
    if (v5)
    {
      v6 = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
      v7 = [(HMDAccessoryFirmwareUpdateManager *)self logEventManager];
      v8 = [v6 newAccessoryFirmwareUpdateSessionWithHAPAccessory:v5 uarpAccessory:v4 accessoryFirmwareUpdateManager:self logEventManager:v7];

      [v8 configure];
      os_unfair_lock_lock_with_options();
      v9 = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
      v10 = [v4 uuid];
      [v9 setObject:v8 forKey:v10];

      os_unfair_lock_unlock(&self->_lock);
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v5 shortDescription];
        v29 = 138543874;
        v30 = v14;
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] Created session %@ for accessory", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = objc_autoreleasePoolPush();
      v17 = v12;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v5 shortDescription];
        v29 = 138543874;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] New firmwareUpdateSession %@", &v29, 0x20u);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v25 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find HAPAccessory from UARPHomeKitAccessory %@", &v29, 0x16u);
      }

      v8 = 0;
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not enabled on this device; ignoring", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v8 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sessionForAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self activeSessions];
  v6 = [v4 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)removeSession:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hapAccessory];
  v6 = [v5 uuid];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 hapAccessory];
      v13 = [v12 shortDescription];
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Removing session %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    os_unfair_lock_lock_with_options();
    v14 = [(HMDAccessoryFirmwareUpdateManager *)v8 activeSessions];
    [v14 removeObjectForKey:v6];

    os_unfair_lock_unlock(&v8->_lock);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@removeSession: No accessory UUID exists", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startStatusTimer
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:13 options:86400.0];
  [(HMDAccessoryFirmwareUpdateManager *)self setStatusTimer:v3];

  v4 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [v4 setDelegate:self];

  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  v6 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [v6 setDelegateQueue:v5];

  v7 = [(HMDAccessoryFirmwareUpdateManager *)self statusTimer];
  [v7 resume];
}

- (BOOL)checkForUpdateForAccessory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self UARPControllerForAccessory:v4];
  v6 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:v4];
  if (v6)
  {
    v7 = [v5 checkForUpdate:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 shortDescription];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Cannot check for update for accessory - unsupported", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)unregisterAccessory:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:v4];
  if (v5)
  {
    v6 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:v4];
    v7 = v6;
    if (v6)
    {
      [v6 unregisterAccessory];
      [(HMDAccessoryFirmwareUpdateManager *)self removeSession:v7];
    }

    v8 = [(HMDAccessoryFirmwareUpdateManager *)self UARPControllerForAccessory:v4];
    v9 = [v8 accessoryList];
    v10 = [v9 containsObject:v5];

    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = [v8 removeAccessory:v5];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v4 shortDescription];
        *v29 = 138543874;
        *&v29[4] = v16;
        *&v29[12] = 2112;
        *&v29[14] = v17;
        *&v29[22] = 2112;
        v30 = v5;
        v18 = "%{public}@[%@] Unregistering accessory %@";
        v19 = v15;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
        _os_log_impl(&dword_2531F8000, v19, v20, v18, v29, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v4 shortDescription];
      *v29 = 138543874;
      *&v29[4] = v16;
      *&v29[12] = 2112;
      *&v29[14] = v17;
      *&v29[22] = 2112;
      v30 = v5;
      v18 = "%{public}@[%@] Not unregistering accessory %@ - failed";
      v19 = v15;
      v20 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v12);
LABEL_15:
    v27 = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories:*v29];
    [v27 removeObjectForKey:v4];

    goto LABEL_16;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v4 shortDescription];
    v26 = [v4 name];
    *v29 = 138543874;
    *&v29[4] = v24;
    *&v29[12] = 2112;
    *&v29[14] = v25;
    *&v29[22] = 2112;
    v30 = v26;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not unregistering accessory %@ - unsupported", v29, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomeAccessoryRemovedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  v7 = v8;
  if (v8)
  {
    [(HMDAccessoryFirmwareUpdateManager *)self unregisterAccessory:v8];
    v7 = v8;
  }
}

- (void)handleHomeAccessoryRemovedNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAccessoryFirmwareUpdateManager_handleHomeAccessoryRemovedNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__HMDAccessoryFirmwareUpdateManager_handleHomeAccessoryRemovedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleHomeAccessoryRemovedNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)_registerAccessory:(id)a3 source:(int64_t)a4 path:(id)a5
{
  v183 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [v8 home];
  v12 = [v11 isOwnerUser];

  v13 = [v8 firmwareVersion];

  v14 = [v8 firmwareUpdateProfile];

  if (![(HMDAccessoryFirmwareUpdateManager *)self isAccessoryRegistered:v8])
  {
    v161 = a4;
    if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [v8 supportsCHIP])
    {
      v21 = [v8 matterVendorID];
      if (v21)
      {
        v22 = [v8 matterVendorID];
        v23 = [v22 isEqualToNumber:&unk_286628F30] ^ 1;
      }

      else
      {
        v23 = 0;
      }

      v24 = [v8 matterProductID];
      if (v24)
      {
        v25 = [v8 matterProductID];
        v158 = [v25 isEqualToNumber:&unk_286628F30] ^ 1;
      }

      else
      {
        v158 = 0;
      }

      v154 = [v8 name];

      v150 = v12;
      if (v14)
      {
        v26 = [v8 firmwareUpdateProfile];
        v27 = [v26 matterFirmwareUpdateProfile];

        if (v27)
        {
          v28 = [v8 firmwareUpdateProfile];
          v27 = [v28 matterFirmwareUpdateProfile];
          v29 = [v27 matterFirmwareRevisionNumber];
          v30 = v29 != 0;

          v31 = v30;
          LODWORD(v27) = 1;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
        LODWORD(v27) = 0;
      }

      context = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v146 = v23;
        v140 = HMFGetLogIdentifier();
        v144 = [v8 shortDescription];
        HMFBooleanToString();
        v34 = v141 = v32;
        HMFBooleanToString();
        v35 = v164 = v9;
        HMFBooleanToString();
        v27 = v142 = v27;
        HMFBooleanToString();
        v36 = v143 = v31;
        v37 = HMFBooleanToString();
        *buf = 138544898;
        v168 = v140;
        v169 = 2112;
        v170 = v144;
        v171 = 2112;
        v172 = v34;
        v173 = 2112;
        v174 = v35;
        v175 = 2112;
        v176 = v27;
        v177 = 2112;
        v178 = v36;
        v179 = 2112;
        v180 = v37;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[%@] Matter AFU Settings: hasMatterFirmwareUpdateProfile: %@, hasMatterFirmwareRevisionNumber: %@, hasMatterVendorID: %@, hasMatterProductID: %@, hasHapAccessoryName: %@", buf, 0x48u);

        v23 = v146;
        v31 = v143;

        LODWORD(v27) = v142;
        v9 = v164;

        v32 = v141;
      }

      objc_autoreleasePoolPop(context);
      v12 = v150;
      if ((v27 & v31 & v23 & v158) != 1 || !v154)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = v32;
        v57 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
LABEL_53:

          objc_autoreleasePoolPop(v55);
LABEL_54:
          v20 = 0;
          goto LABEL_94;
        }

        v58 = HMFGetLogIdentifier();
        v59 = [v8 shortDescription];
        *buf = 138543618;
        v168 = v58;
        v169 = 2112;
        v170 = v59;
        _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering with FirmwareUpdateManager due to invalid matter AFU settings", buf, 0x16u);
LABEL_52:

        goto LABEL_53;
      }
    }

    if (![v8 identityType])
    {
      v45 = [v8 matterVendorID];
      v46 = [v8 matterProductID];
      v47 = objc_autoreleasePoolPush();
      v48 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        v51 = [v8 shortDescription];
        v52 = [v8 manufacturer];
        [v8 model];
        v53 = v166 = v9;
        [v8 productData];
        v54 = v162 = v47;
        *buf = 138545154;
        v168 = v50;
        v169 = 2112;
        v170 = v51;
        v171 = 2112;
        v172 = v52;
        v173 = 2112;
        v174 = v53;
        v175 = 2112;
        v176 = v54;
        v177 = 2112;
        v178 = v45;
        v179 = 2112;
        v180 = v46;
        v181 = 2112;
        v182 = v8;
        _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering with FirmwareUpdateManager due to unknown identity type for manufacturer: %@ model: %@ productData: %@ vendorID: %@ productID: %@ accessory: %@", buf, 0x52u);

        v47 = v162;
        v9 = v166;
      }

      objc_autoreleasePoolPop(v47);
      goto LABEL_54;
    }

    v165 = v9;
    if (v13)
    {
      v38 = (v14 != 0) & v12;
    }

    else
    {
      v38 = 0;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
LABEL_43:

      objc_autoreleasePoolPop(v39);
      if (v38)
      {
        v61 = [v8 softwareUpdate];
        if (!v61)
        {
          goto LABEL_57;
        }

        v62 = v61;
        v63 = [v8 softwareUpdate];
        if ([v63 state] == 2)
        {
          v64 = [v8 firmwareVersion];
          v65 = [v8 softwareUpdate];
          v66 = [v65 version];
          v67 = [v64 isAtLeastVersion:v66];

          if (!v67)
          {
            goto LABEL_57;
          }

          v68 = objc_autoreleasePoolPush();
          v69 = v40;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = HMFGetLogIdentifier();
            v72 = [v8 shortDescription];
            *buf = 138543618;
            v168 = v71;
            v169 = 2112;
            v170 = v72;
            _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Verifying pending firmware version on registered accessory", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          v62 = [v8 softwareUpdate];
          [v62 updateLocalState:4];
        }

        else
        {
        }

LABEL_57:
        v76 = [(HMDAccessoryFirmwareUpdateManager *)v40 UARPAccessoryForHMDAccessory:v8];
        if (!v76)
        {
          v77 = objc_autoreleasePoolPush();
          v78 = v40;
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v80 = HMFGetLogIdentifier();
            v81 = [v8 shortDescription];
            *buf = 138543618;
            v168 = v80;
            v169 = 2112;
            v170 = v81;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not registering accessory with FirmwareUpdateManager - unsupported accessory type", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v77);
          v20 = 0;
          goto LABEL_93;
        }

        if (v9)
        {
          v160 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:0];
        }

        else
        {
          v160 = 0;
        }

        v82 = objc_alloc(MEMORY[0x277D02618]);
        if ((v161 - 1) > 8)
        {
          v83 = 1;
        }

        else
        {
          v83 = qword_253D4BF98[v161 - 1];
        }

        v84 = [v82 initWithLocationType:v83 remoteURL:v160];
        v85 = [(HMDAccessoryFirmwareUpdateManager *)v40 UARPControllerForAccessory:v8];
        v86 = objc_autoreleasePoolPush();
        v87 = v40;
        v88 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = HMFGetLogIdentifier();
          v90 = [v8 shortDescription];
          *buf = 138544130;
          v168 = v89;
          v169 = 2112;
          v170 = v90;
          v171 = 2112;
          v172 = v76;
          v173 = 2112;
          v174 = v84;
          _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@[%@] Registering UARP Accessory %@ with AssetID %@", buf, 0x2Au);

          v9 = v165;
        }

        objc_autoreleasePoolPop(v86);
        if ([v85 addAccessory:v76 assetID:v84])
        {
          v91 = [v8 firmwareVersion];
          v92 = [v91 versionString];

          if (![v8 supportsCHIP])
          {
            goto LABEL_72;
          }

          v93 = [v8 firmwareUpdateProfile];
          [v93 matterFirmwareUpdateProfile];
          v94 = v84;
          v95 = v85;
          v97 = v96 = v92;
          v98 = [v97 matterFirmwareRevisionNumber];
          v99 = [v98 stringValue];

          v85 = v95;
          v84 = v94;

          v9 = v165;
          v92 = v99;
          if (v99)
          {
LABEL_72:
            v163 = v92;
            v100 = objc_autoreleasePoolPush();
            v101 = v87;
            v102 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = HMFGetLogIdentifier();
              v104 = [v8 shortDescription];
              v105 = [v8 name];
              *buf = 138544386;
              v168 = v103;
              v169 = 2112;
              v170 = v104;
              v171 = 2112;
              v172 = v105;
              v173 = 2112;
              v174 = v76;
              v175 = 2112;
              v176 = v163;
              _os_log_impl(&dword_2531F8000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Registered accessory %@ %@, version %@ with FirmwareUpdateManager", buf, 0x34u);

              v9 = v165;
            }

            objc_autoreleasePoolPop(v100);
            if (([v85 updateProperty:4 value:v163 forAccessory:v76] & 1) == 0)
            {
              v106 = objc_autoreleasePoolPush();
              v107 = v101;
              v108 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
                v109 = HMFGetLogIdentifier();
                v110 = [v8 shortDescription];
                *buf = 138543618;
                v168 = v109;
                v169 = 2112;
                v170 = v110;
                _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to update UARP accessory firmware version property for accessory", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v106);
              v9 = v165;
            }

            if ([v8 isAppleAccessory])
            {
              v111 = [(HMDAccessoryFirmwareUpdateManager *)v101 sessionForUARPAccessory:v76];
              if (v111)
              {
                v112 = objc_autoreleasePoolPush();
                v113 = v101;
                v114 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v115 = v156 = v111;
                  [v8 shortDescription];
                  v116 = v152 = v112;
                  v117 = [v76 uuid];
                  *buf = 138543874;
                  v168 = v115;
                  v169 = 2112;
                  v170 = v116;
                  v171 = 2112;
                  v172 = v117;
                  _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@[%@] Session already created when trying to register accessory %@ with FirmwareUpdateSession", buf, 0x20u);

                  v112 = v152;
                  v111 = v156;
                }

                objc_autoreleasePoolPop(v112);
              }

              v118 = objc_autoreleasePoolPush();
              v119 = v101;
              v120 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v121 = v157 = v111;
                v122 = [v8 shortDescription];
                [v76 uuid];
                v123 = v153 = v118;
                *buf = 138543874;
                v168 = v121;
                v169 = 2112;
                v170 = v122;
                v171 = 2112;
                v172 = v123;
                _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Creating session to register accessory %@ with FirmwareUpdateSession", buf, 0x20u);

                v118 = v153;
                v111 = v157;
              }

              objc_autoreleasePoolPop(v118);
              v124 = [(HMDAccessoryFirmwareUpdateManager *)v119 addSessionForUARPAccessory:v76];

              [v124 registerAccessory];
              v9 = v165;
            }

            v125 = objc_autoreleasePoolPush();
            v126 = v101;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
            {
              v128 = HMFGetLogIdentifier();
              v129 = [v8 shortDescription];
              v130 = [v8 firmwareVersion];
              *buf = 138544130;
              v168 = v128;
              v169 = 2112;
              v170 = v129;
              v171 = 2112;
              v172 = v130;
              v173 = 2112;
              v174 = v163;
              _os_log_impl(&dword_2531F8000, v127, OS_LOG_TYPE_INFO, "%{public}@[%@] Accessory firmware version updated to %@ (%@)", buf, 0x2Au);

              v9 = v165;
            }

            objc_autoreleasePoolPop(v125);
            v20 = 1;
            goto LABEL_92;
          }

          v131 = objc_autoreleasePoolPush();
          v132 = v87;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v138 = HMFGetLogIdentifier();
            v139 = [v8 shortDescription];
            *buf = 138543874;
            v168 = v138;
            v169 = 2112;
            v170 = v139;
            v171 = 2112;
            v172 = 0;
            _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@[%@] Matter firmware version is invalid: %@", buf, 0x20u);
          }
        }

        else
        {
          v131 = objc_autoreleasePoolPush();
          v132 = v87;
          v133 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            v134 = HMFGetLogIdentifier();
            v135 = [v8 shortDescription];
            *buf = 138543874;
            v168 = v134;
            v169 = 2112;
            v170 = v135;
            v171 = 2112;
            v172 = v76;
            _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to register UARP accessory %@", buf, 0x20u);

            v9 = v165;
          }
        }

        objc_autoreleasePoolPop(v131);
        v20 = 0;
LABEL_92:

LABEL_93:
        goto LABEL_94;
      }

      v55 = objc_autoreleasePoolPush();
      v56 = v40;
      v57 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      v58 = HMFGetLogIdentifier();
      v59 = [v8 shortDescription];
      v73 = [v8 name];
      v74 = HMFBooleanToString();
      v75 = HMFBooleanToString();
      *buf = 138544386;
      v168 = v58;
      v169 = 2112;
      v170 = v59;
      v171 = 2112;
      v172 = v73;
      v173 = 2112;
      v174 = v74;
      v175 = 2112;
      v176 = v75;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@[%@] Not registering accessory %@ with FirmwareUpdateManager. Details: validAFUSettings = %@, validDynamicAssetUpdateSettings = %@", buf, 0x34u);

      goto LABEL_52;
    }

    v155 = v39;
    v159 = HMFGetLogIdentifier();
    contexta = [v8 shortDescription];
    v147 = HMFBooleanToString();
    v151 = HMFBooleanToString();
    v145 = HMFBooleanToString();
    v42 = HMFBooleanToString();
    v43 = [v8 identityType];
    if (!v43)
    {
      goto LABEL_41;
    }

    if (v43 != 3)
    {
      v44 = @"AppleModelNumber";
      if (v43 == 1)
      {
        v44 = @"ProductData";
      }

      goto LABEL_42;
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v44 = @"VendorProductID";
    }

    else
    {
LABEL_41:
      v44 = @"Unknown";
    }

LABEL_42:
    v60 = v44;
    *buf = 138544898;
    v168 = v159;
    v169 = 2112;
    v170 = contexta;
    v171 = 2112;
    v172 = v147;
    v173 = 2112;
    v174 = v151;
    v175 = 2112;
    v176 = v145;
    v177 = 2112;
    v178 = v42;
    v179 = 2112;
    v180 = v60;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@[%@] Valid AFU settings = %@ : isOwner = %@, hasFirmwareUpdateProfile = %@, hasFirmwareVersion = %@, identityType = %@", buf, 0x48u);

    v39 = v155;
    goto LABEL_43;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v8 shortDescription];
    *buf = 138543618;
    v168 = v18;
    v169 = 2112;
    v170 = v19;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Accessory already registered with FirmwareUpdateManager", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = 1;
LABEL_94:

  v136 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)registerAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDAccessoryFirmwareUpdateManager_registerAccessory___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v8);

  return 1;
}

void __55__HMDAccessoryFirmwareUpdateManager_registerAccessory___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    v18 = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] Registering accessory with FirmwareUpdateManager", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) _registerAccessory:*(a1 + 40) source:objc_msgSend(*(a1 + 32) path:{"defaultUpdateAssetSourceWithAccessory:", *(a1 + 40)), 0}];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) shortDescription];
      v18 = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v14 = "%{public}@[%@] FirmwareUpdateManager Registration succeeded for accessory";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v18, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 40) shortDescription];
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v14 = "%{public}@[%@] FirmwareUpdateManager Registration failed for accessory";
    v15 = v11;
    v16 = OS_LOG_TYPE_ERROR;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (int64_t)defaultProductDataUpdateAssetSource
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDAccessoryFirmwareUpdateManager_defaultProductDataUpdateAssetSource__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  if (defaultProductDataUpdateAssetSource_onceToken != -1)
  {
    dispatch_once(&defaultProductDataUpdateAssetSource_onceToken, block);
  }

  return defaultProductDataUpdateAssetSource_updateAssetSource;
}

void __72__HMDAccessoryFirmwareUpdateManager_defaultProductDataUpdateAssetSource__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"firmwareUpdateiCloudContainer"];
  v4 = [v3 stringValue];

  if (v4 && isValidHMSoftwareUpdateAssetSourceString())
  {
    defaultProductDataUpdateAssetSource_updateAssetSource = stringToHMSoftwareUpdateAssetSource();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMSoftwareUpdateAssetSourceAsString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting MFi default container to: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)defaultUpdateAssetSourceWithAccessory:(id)a3
{
  result = [a3 identityType];
  if (result)
  {
    if (result == 3)
    {
      if (_os_feature_enabled_impl())
      {
        return 8;
      }

      else
      {
        return 8 * (CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) != 0);
      }
    }

    else if (result == 1)
    {

      return [(HMDAccessoryFirmwareUpdateManager *)self defaultProductDataUpdateAssetSource];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

- (void)_handleMatterSettingsUpdateNotification:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v11)
    {
      v34 = HMFGetLogIdentifier();
      v85 = 138543362;
      v86 = v34;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received matter settings update notification", &v85, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v35 = objc_autoreleasePoolPush();
    v36 = v9;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v38 = HMFGetLogIdentifier();
    v39 = [v4 object];
    v40 = objc_opt_class();
    v41 = v40;
    v42 = objc_opt_class();
    v85 = 138543874;
    v86 = v38;
    v87 = 2112;
    v88 = v40;
    v89 = 2112;
    v90 = v42;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@The notification object of type %@ is not of expected type %@", &v85, 0x20u);

    goto LABEL_30;
  }

  if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v7 shortDescription];
    v85 = 138543618;
    v86 = v12;
    v87 = 2112;
    v88 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Received matter settings update notification", &v85, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (![(HMDAccessoryFirmwareUpdateManager *)v9 supportsFirmwareUpdate])
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v9;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      v43 = [v7 shortDescription];
      v85 = 138543618;
      v86 = v38;
      v87 = 2112;
      v88 = v43;
      v44 = "%{public}@[%@] Firmware Update not enabled on this device; ignoring";
      v45 = v37;
      v46 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
      _os_log_impl(&dword_2531F8000, v45, v46, v44, &v85, 0x16u);

LABEL_30:
    }

LABEL_31:

    v33 = v35;
    goto LABEL_32;
  }

  if (([v7 supportsCHIP] & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v9;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      v43 = [v7 shortDescription];
      v85 = 138543618;
      v86 = v38;
      v87 = 2112;
      v88 = v43;
      v44 = "%{public}@[%@] Matter firmware update not supported";
      v45 = v37;
      v46 = OS_LOG_TYPE_DEBUG;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  v14 = [v4 name];
  v15 = [v14 isEqualToString:@"HMDAccessoryVendorIDProductIDUpdatedNotification"];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 shortDescription];
      v85 = 138543618;
      v86 = v19;
      v87 = 2112;
      v88 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Received VID/PID update notification", &v85, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [v7 matterVendorID];
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = v21;
    v23 = [v7 matterProductID];
    if (!v23)
    {
      goto LABEL_16;
    }

    v24 = v23;
    v25 = [v7 matterVendorID];
    if ([v25 isEqualToNumber:&unk_286628F30])
    {

LABEL_16:
LABEL_17:
      v26 = objc_autoreleasePoolPush();
      v27 = v17;
      v28 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
LABEL_20:

        v33 = v26;
LABEL_32:
        objc_autoreleasePoolPop(v33);
        goto LABEL_33;
      }

      v29 = HMFGetLogIdentifier();
      v30 = [v7 shortDescription];
      v31 = [v7 matterVendorID];
      v32 = [v7 matterProductID];
      v85 = 138544130;
      v86 = v29;
      v87 = 2112;
      v88 = v30;
      v89 = 2112;
      v90 = v31;
      v91 = 2112;
      v92 = v32;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Ignoring invalid VID: %@, PID: %@", &v85, 0x2Au);

LABEL_19:
      goto LABEL_20;
    }

    v48 = [v7 matterProductID];
    v49 = [v48 isEqualToNumber:&unk_286628F30];

    if (v49)
    {
      goto LABEL_17;
    }
  }

  v50 = [v4 name];
  v51 = [v50 isEqualToString:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification"];

  if (v51)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = v9;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      v56 = [v7 shortDescription];
      v85 = 138543618;
      v86 = v55;
      v87 = 2112;
      v88 = v56;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@[%@] Received matter firmware revision number update notification", &v85, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
    v57 = [v7 firmwareUpdateProfile];
    v58 = [v57 matterFirmwareUpdateProfile];
    v59 = [v58 matterFirmwareRevisionNumber];

    v60 = objc_autoreleasePoolPush();
    v61 = v53;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      v64 = [v7 shortDescription];
      v85 = 138543874;
      v86 = v63;
      v87 = 2112;
      v88 = v64;
      v89 = 2112;
      v90 = v59;
      _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@[%@] Firmware Update Manager: Received matter firmware revision number update notification, request change to %@", &v85, 0x20u);
    }

    objc_autoreleasePoolPop(v60);
    if (!v59)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v61;
      v28 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v29 = HMFGetLogIdentifier();
      v30 = [v7 shortDescription];
      v85 = 138543874;
      v86 = v29;
      v87 = 2112;
      v88 = v30;
      v89 = 2112;
      v90 = 0;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[%@] Ignoring invalid matterFirmwareRevisionNumber: %@", &v85, 0x20u);
      goto LABEL_19;
    }
  }

  v65 = [(HMDAccessoryFirmwareUpdateManager *)v9 registerAndCreateSessionForAccessory:v7 updateUARPParameters:0];
  if (v65)
  {
    v66 = objc_autoreleasePoolPush();
    v67 = v9;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      v70 = [v7 shortDescription];
      v85 = 138543618;
      v86 = v69;
      v87 = 2112;
      v88 = v70;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to register and create session for accessory: %@", &v85, 0x16u);
    }

    objc_autoreleasePoolPop(v66);
  }

  else
  {
    v71 = [v4 name];
    v72 = [v71 isEqualToString:@"HMDAccessoryVendorIDProductIDUpdatedNotification"];

    if (v72)
    {
      v73 = objc_autoreleasePoolPush();
      v74 = v9;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        v77 = [v7 shortDescription];
        v85 = 138543874;
        v86 = v76;
        v87 = 2112;
        v88 = v77;
        v89 = 2112;
        v90 = 0;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating accessory vendor ID and product ID with new session %@", &v85, 0x20u);
      }

      objc_autoreleasePoolPop(v73);
      [0 updateAccessoryVendorIDAndProductID];
    }

    else
    {
      v78 = [v4 name];
      v79 = [v78 isEqualToString:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification"];

      if (v79)
      {
        v80 = objc_autoreleasePoolPush();
        v81 = v9;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          v84 = [v7 shortDescription];
          v85 = 138543874;
          v86 = v83;
          v87 = 2112;
          v88 = v84;
          v89 = 2112;
          v90 = 0;
          _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating matter firmware version number with new session %@", &v85, 0x20u);
        }

        objc_autoreleasePoolPop(v80);
        [0 updateAccessoryFirmwareVersion];
      }
    }
  }

LABEL_33:
  v47 = *MEMORY[0x277D85DE8];
}

- (void)handleMatterSettingsUpdateNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDAccessoryFirmwareUpdateManager_handleMatterSettingsUpdateNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__HMDAccessoryFirmwareUpdateManager_handleMatterSettingsUpdateNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleMatterSettingsUpdateNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_handleAccessoryFirmwareVersionUpdateNotification:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    v5 = [v4 object];
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

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!v7)
    {
      if (v11)
      {
        v29 = HMFGetLogIdentifier();
        v58 = 138543362;
        v59 = v29;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware version update notification", &v58, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v30 = objc_autoreleasePoolPush();
      v31 = v9;
      v32 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v33 = HMFGetLogIdentifier();
      v34 = [v4 object];
      v35 = objc_opt_class();
      v36 = v35;
      v37 = objc_opt_class();
      v58 = 138543874;
      v59 = v33;
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = v37;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@The notification object of type %@ is not of expected type %@", &v58, 0x20u);

      goto LABEL_28;
    }

    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 shortDescription];
      v58 = 138543618;
      v59 = v12;
      v60 = 2112;
      v61 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[%@] Received accessory firmware version update notification", &v58, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([(HMDAccessoryFirmwareUpdateManager *)v9 registerAccessory:v7])
    {
      if ([(HMDAccessoryFirmwareUpdateManager *)v9 isAccessoryRegistered:v7])
      {
        v14 = [(HMDAccessoryFirmwareUpdateManager *)v9 sessionForAccessory:v7];
        if (v14)
        {
          v15 = v14;
          v16 = objc_autoreleasePoolPush();
          v17 = v9;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            v20 = [v7 shortDescription];
            v58 = 138543874;
            v59 = v19;
            v60 = 2112;
            v61 = v20;
            v62 = 2112;
            v63 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Do not need to establish a new session with existing session: %@", &v58, 0x20u);
          }

          objc_autoreleasePoolPop(v16);
          goto LABEL_48;
        }

        v41 = [(HMDAccessoryFirmwareUpdateManager *)v9 UARPAccessoryForHMDAccessory:v7];
        if (v41)
        {
          v42 = [(HMDAccessoryFirmwareUpdateManager *)v9 addSessionForUARPAccessory:v41];
          if (v42)
          {
            v15 = v42;
            v43 = [v7 supportsCHIP];
            v44 = objc_autoreleasePoolPush();
            v45 = v9;
            v46 = HMFGetOSLogHandle();
            v47 = v46;
            if (v43)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v48 = HMFGetLogIdentifier();
                v49 = [v7 shortDescription];
                v58 = 138543618;
                v59 = v48;
                v60 = 2112;
                v61 = v49;
                _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%@] Ignoring this notification for updating UARP with firmware version", &v58, 0x16u);
              }

              objc_autoreleasePoolPop(v44);
            }

            else
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v56 = HMFGetLogIdentifier();
                v57 = [v7 shortDescription];
                v58 = 138543874;
                v59 = v56;
                v60 = 2112;
                v61 = v57;
                v62 = 2112;
                v63 = v15;
                _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[%@] Updating accessory firmware version with new session %@", &v58, 0x20u);
              }

              objc_autoreleasePoolPop(v44);
              [v15 updateAccessoryFirmwareVersion];
            }

            goto LABEL_47;
          }

          v50 = objc_autoreleasePoolPush();
          v51 = v9;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            v54 = [v7 shortDescription];
            v58 = 138543618;
            v59 = v53;
            v60 = 2112;
            v61 = v54;
            v55 = "%{public}@[%@] Failed to start update for accessory because a session could not be established";
            goto LABEL_42;
          }
        }

        else
        {
          v50 = objc_autoreleasePoolPush();
          v51 = v9;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v53 = HMFGetLogIdentifier();
            v54 = [v7 shortDescription];
            v58 = 138543618;
            v59 = v53;
            v60 = 2112;
            v61 = v54;
            v55 = "%{public}@[%@] UARP accessory is not found for accessory";
LABEL_42:
            _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, v55, &v58, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v50);
        v15 = 0;
LABEL_47:

LABEL_48:
        goto LABEL_30;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = v9;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        v38 = [v7 shortDescription];
        v58 = 138543618;
        v59 = v33;
        v60 = 2112;
        v61 = v38;
        v39 = "%{public}@[%@] Accessory not registered with FirmwareUpdateManager";
        goto LABEL_27;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v9;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = HMFGetLogIdentifier();
        v38 = [v7 shortDescription];
        v58 = 138543618;
        v59 = v33;
        v60 = 2112;
        v61 = v38;
        v39 = "%{public}@[%@] Failed to register accessory with FirmwareUpdateManager";
LABEL_27:
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEBUG, v39, &v58, 0x16u);

LABEL_28:
      }
    }

LABEL_29:

    objc_autoreleasePoolPop(v30);
LABEL_30:

    goto LABEL_31;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v58 = 138543362;
    v59 = v24;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Received accessory firmware version update notification", &v58, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v25 = objc_autoreleasePoolPush();
  v26 = v22;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v58 = 138543362;
    v59 = v28;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not enabled on this device; ignoring", &v58, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryFirmwareVersionUpdateNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMDAccessoryFirmwareUpdateManager_handleAccessoryFirmwareVersionUpdateNotification___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__HMDAccessoryFirmwareUpdateManager_handleAccessoryFirmwareVersionUpdateNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAccessoryFirmwareVersionUpdateNotification:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)isAccessoryRegistered:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateManager *)self registeredAccessories];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (id)matterUARPController
{
  v2 = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
  v3 = [v2 matterUARPController];

  return v3;
}

- (UARPController)defaultUARPController
{
  v2 = [(HMDAccessoryFirmwareUpdateManager *)self wingman];
  v3 = [v2 defaultUARPController];

  return v3;
}

- (id)UARPControllerForAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0)) && [v4 supportsCHIP])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 shortDescription];
      v19 = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[%@] UARPControllerForAccessory: Returning Matter UARP Controller", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDAccessoryFirmwareUpdateManager *)v6 matterUARPController];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 shortDescription];
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] UARPControllerForAccessory: Returning default UARP Controller", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = [(HMDAccessoryFirmwareUpdateManager *)v12 defaultUARPController];
  }

  v16 = v10;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)registerAndCreateSessionForAccessory:(id)a3 updateUARPParameters:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(HMDAccessoryFirmwareUpdateManager *)self supportsFirmwareUpdate])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 shortDescription];
      v39 = 138543618;
      v40 = v18;
      v41 = 2112;
      v42 = v19;
      v20 = "%{public}@[CHECK_AFU_SESSION][%@] Firmware Update not enabled on this device; ignoring";
      v21 = v17;
      v22 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_2531F8000, v21, v22, v20, &v39, 0x16u);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (([v6 supportsCHIP] & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v18 = HMFGetLogIdentifier();
    v19 = [v6 shortDescription];
    v39 = 138543618;
    v40 = v18;
    v41 = 2112;
    v42 = v19;
    v20 = "%{public}@[CHECK_AFU_SESSION][%@] Matter firmware update not supported";
LABEL_17:
    v21 = v17;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_18;
  }

  if (![(HMDAccessoryFirmwareUpdateManager *)self registerAccessory:v6])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    v18 = HMFGetLogIdentifier();
    v19 = [v6 shortDescription];
    v39 = 138543618;
    v40 = v18;
    v41 = 2112;
    v42 = v19;
    v20 = "%{public}@[CHECK_AFU_SESSION][%@] Failed to register accessory";
    goto LABEL_17;
  }

  if (![(HMDAccessoryFirmwareUpdateManager *)self isAccessoryRegistered:v6])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 shortDescription];
      v39 = 138543618;
      v40 = v18;
      v41 = 2112;
      v42 = v19;
      v20 = "%{public}@[CHECK_AFU_SESSION][%@] accessory not registered";
      goto LABEL_17;
    }

LABEL_19:

    objc_autoreleasePoolPop(v15);
    v14 = 0;
    goto LABEL_20;
  }

  v7 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:v6];
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 shortDescription];
      v39 = 138543874;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      v43 = 2112;
      v44 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[CHECK_AFU_SESSION][%@] Do not need to establish a new session, existing session found: %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
    goto LABEL_37;
  }

  v25 = [(HMDAccessoryFirmwareUpdateManager *)self UARPAccessoryForHMDAccessory:v6];
  if (v25)
  {
    v26 = [(HMDAccessoryFirmwareUpdateManager *)self addSessionForUARPAccessory:v25];
    if (v26)
    {
      v27 = v26;
      if (v4)
      {
        [v26 updateAccessoryVendorIDAndProductID];
        [v27 updateAccessoryFirmwareVersion];
      }

      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v6 shortDescription];
        v39 = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[CHECK_AFU_SESSION][%@] Firmware update registration and session creation complete", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v8 = v27;
      goto LABEL_36;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v6 shortDescription];
      v39 = 138543618;
      v40 = v36;
      v41 = 2112;
      v42 = v37;
      v38 = "%{public}@[CHECK_AFU_SESSION][%@] Failed to establish session for accessory";
      goto LABEL_34;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v6 shortDescription];
      v39 = 138543618;
      v40 = v36;
      v41 = 2112;
      v42 = v37;
      v38 = "%{public}@[CHECK_AFU_SESSION][%@] UARP accessory is not found for accessory";
LABEL_34:
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, v38, &v39, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v33);
  v8 = 0;
LABEL_36:

  v14 = v8;
LABEL_37:

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)availableSoftwareAssetForMatterAccessory:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v20 = HMFGetLogIdentifier();
    v21 = [v6 shortDescription];
    *buf = 138543874;
    v39 = v20;
    v40 = 2112;
    v41 = v21;
    v42 = 2080;
    v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
    v22 = "%{public}@[%@] %s: Matter Accessory Software Update not enabled.";
    goto LABEL_14;
  }

  if ([v6 supportsCHIP])
  {
    v7 = [(HMDAccessoryFirmwareUpdateManager *)self sessionForAccessory:v6];
    v8 = v7;
    if (!v7)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v6 shortDescription];
        *buf = 138543874;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        v42 = 2080;
        v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[%@] %s: no session", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v9 = 0;
      if (!a4)
      {
        goto LABEL_32;
      }

      v11 = 4;
      goto LABEL_31;
    }

    v9 = [v7 uarpAssetID];
    v10 = [v9 updateAvailabilityStatus];
    if ((v10 - 6) < 3)
    {
      v12 = objc_autoreleasePoolPush();
      v28 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v6 shortDescription];
        [v9 updateAvailabilityStatus];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
        *buf = 138544130;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        v42 = 2080;
        v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
        v44 = 2114;
        v45 = v31;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: Image is not available %{public}@", buf, 0x2Au);
      }

      v11 = 4;
    }

    else
    {
      v11 = v10;
      if ((v10 - 1) >= 2)
      {
        if (v10 == 3)
        {
          goto LABEL_30;
        }

        v12 = objc_autoreleasePoolPush();
        v32 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v6 shortDescription];
          [v9 updateAvailabilityStatus];
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPFirmwareUpdateAvailabilityStatusToString()];
          *buf = 138544130;
          v39 = v33;
          v40 = 2112;
          v41 = v34;
          v42 = 2080;
          v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
          v44 = 2114;
          v45 = v35;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: These statuses should never be seen, ignore status %{public}@.", buf, 0x2Au);
        }

        v11 = 1;
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = HMFGetLogIdentifier();
          v16 = [v6 shortDescription];
          *buf = 138543874;
          v39 = v15;
          v40 = 2112;
          v41 = v16;
          v42 = 2080;
          v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] %s: Image is busy downloading", buf, 0x20u);
        }

        v11 = 2;
      }
    }

    objc_autoreleasePoolPop(v12);
    v9 = 0;
LABEL_30:
    if (!a4)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_31:
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDAccessoryMatterUARPAssetErrorDomain" code:v11 userInfo:0];
    goto LABEL_32;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v6 shortDescription];
    *buf = 138543874;
    v39 = v20;
    v40 = 2112;
    v41 = v21;
    v42 = 2080;
    v43 = "[HMDAccessoryFirmwareUpdateManager availableSoftwareAssetForMatterAccessory:error:]";
    v22 = "%{public}@[%@] %s: Accessory does not support Matter.";
LABEL_14:
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0x20u);
  }

LABEL_15:

  objc_autoreleasePoolPop(v17);
  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDAccessoryMatterUARPAssetErrorDomain" code:1 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_33:

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)supportsFirmwareUpdate
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsFirmwareUpdate];

  return v3;
}

- (void)dealloc
{
  v3 = [(HMDAccessoryFirmwareUpdateManager *)self defaultUARPController];
  [v3 stopPacketCapture];

  v4.receiver = self;
  v4.super_class = HMDAccessoryFirmwareUpdateManager;
  [(HMDAccessoryFirmwareUpdateManager *)&v4 dealloc];
}

- (HMDAccessoryFirmwareUpdateManager)initWithHomeManager:(id)a3 wingman:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v57.receiver = self;
  v57.super_class = HMDAccessoryFirmwareUpdateManager;
  v8 = [(HMDAccessoryFirmwareUpdateManager *)&v57 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, v6);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = objc_alloc_init(HMDAccessoryFirmwareUpdateManagerWingman);
    }

    wingman = v9->_wingman;
    v9->_wingman = v10;

    v12 = [[HMDDefaultUARPControllerDelegate alloc] initWithAccessoryFirmwareUpdateManager:v9];
    defaultUARPControllerDelegate = v9->_defaultUARPControllerDelegate;
    v9->_defaultUARPControllerDelegate = v12;

    v14 = v9->_defaultUARPControllerDelegate;
    v15 = [(HMDAccessoryFirmwareUpdateManagerWingman *)v9->_wingman defaultUARPController];
    [v15 setDelegate:v14];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v16 = [[HMDMatterUARPControllerDelegate alloc] initWithAccessoryFirmwareUpdateManager:v9];
      matterUARPControllerDelegate = v9->_matterUARPControllerDelegate;
      v9->_matterUARPControllerDelegate = v16;

      v18 = v9->_matterUARPControllerDelegate;
      v19 = [(HMDAccessoryFirmwareUpdateManagerWingman *)v9->_wingman matterUARPController];
      [v19 setDelegate:v18];
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeSessions = v9->_activeSessions;
    v9->_activeSessions = v20;

    v22 = [HMDAccessoryFirmwareUpdateConcurrencyLogEventManager alloc];
    v23 = [v6 metricsManager];
    v24 = [v23 legacyCountersManager];
    v25 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)v22 initWithCountersManager:v24];
    logEventManager = v9->_logEventManager;
    v9->_logEventManager = v25;

    v9->_lock._os_unfair_lock_opaque = 0;
    v27 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    registeredAccessories = v9->_registeredAccessories;
    v9->_registeredAccessories = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryRetries = v9->_accessoryRetries;
    v9->_accessoryRetries = v29;

    v31 = [v6 workQueue];
    workQueue = v9->_workQueue;
    v9->_workQueue = v31;

    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v9 selector:sel_handleAccessoryFirmwareVersionUpdateNotification_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:0];

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v9 selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      v35 = [MEMORY[0x277CCAB98] defaultCenter];
      [v35 addObserver:v9 selector:sel_handleMatterSettingsUpdateNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:0];

      v36 = [MEMORY[0x277CCAB98] defaultCenter];
      [v36 addObserver:v9 selector:sel_handleMatterSettingsUpdateNotification_ name:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:0];
    }

    v37 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v38 = [v37 preferenceForKey:@"firmwareUpdateUARPCapturePath"];

    v39 = [v38 stringValue];
    if (v39)
    {
      v56 = v7;
      v40 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v40 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
      v41 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CBEAA8] date];
      v43 = [v40 stringFromDate:v42];
      v44 = [v41 stringWithFormat:@"%@_%@", v39, v43];

      v45 = [(HMDAccessoryFirmwareUpdateManager *)v9 defaultUARPController];
      LOBYTE(v43) = [v45 startPacketCapture:v44];

      if ((v43 & 1) == 0)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = v9;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v49;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Error starting UARP packet capture for UARP Controller", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v46);
      }

      v50 = objc_autoreleasePoolPush();
      v51 = v9;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v53;
        v60 = 2112;
        v61 = v44;
        _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Started UARP packet capture for UARP Controller in: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v7 = v56;
    }

    [(HMDAccessoryFirmwareUpdateManager *)v9 startStatusTimer];
  }

  v54 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDAccessoryFirmwareUpdateManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t81_127340 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t81_127340, &__block_literal_global_127341);
  }

  v3 = logCategory__hmf_once_v82_127342;

  return v3;
}

uint64_t __48__HMDAccessoryFirmwareUpdateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v82_127342;
  logCategory__hmf_once_v82_127342 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end