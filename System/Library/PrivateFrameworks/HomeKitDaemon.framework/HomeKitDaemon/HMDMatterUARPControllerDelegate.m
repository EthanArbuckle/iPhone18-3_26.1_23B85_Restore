@interface HMDMatterUARPControllerDelegate
+ (id)logCategory;
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDMatterUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)a3;
- (id)newUploader;
- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4;
@end

@implementation HMDMatterUARPControllerDelegate

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (id)newUploader
{
  v14 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterOTA", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v3 = *MEMORY[0x277D85DE8];

    return objc_alloc_init(HMDMatterUARPUploader);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2080;
      v13 = "[HMDMatterUARPControllerDelegate newUploader]";
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@%s: Matter Accessory Software Update not enabled.", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@sendMessageToAccessory: failed. This function should not be called for Matter accessories", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [v7 updateAvailabilityStatus];
    updated = UARPFirmwareUpdateAvailabilityStatusToString();
    [v7 releaseNotesAvailabilityStatus];
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = updated;
    v40 = 2080;
    v41 = UARPFirmwareUpdateAvailabilityStatusToString();
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update Available for accessory:%@, status:%s, release notes status:%s", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDMatterUARPControllerDelegate *)v9 accessoryFirmwareUpdateManager];
  if ([v13 supportsFirmwareUpdate])
  {
    v14 = [v13 sessionForUARPAccessory:v6];
    if (v14)
    {
LABEL_5:
      [v14 assetAvailablityUpdateForAccessory:v6 assetID:v7];
LABEL_25:

      goto LABEL_26;
    }

    v19 = [v13 findHMDHAPAccessoryWithUARPAccessory:v6];
    v14 = v19;
    if (v19)
    {
      v20 = [v19 firmwareVersion];
      v21 = [v7 softwareVersion];
      v22 = [v20 isAtLeastVersion:v21];

      if (v22)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = v9;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v7 softwareVersion];
          v28 = [v14 firmwareVersion];
          *buf = 138543874;
          *&buf[4] = v26;
          *&buf[12] = 2112;
          *&buf[14] = v27;
          *&buf[22] = 2112;
          *&buf[24] = v28;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Available version %@ is equal or older than current accessory version %@", buf, 0x20u);

LABEL_23:
        }

LABEL_24:

        objc_autoreleasePoolPop(v23);
        goto LABEL_25;
      }

      if (![v13 hasReachedMaximumFirmwareUpdateRetriesForAccessory:v14 assetID:v7])
      {
        v36 = [v13 addSessionForUARPAccessory:v6];

        v14 = v36;
        goto LABEL_5;
      }

      v23 = objc_autoreleasePoolPush();
      v33 = v9;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v34 = [v14 uuid];

      if (v34)
      {
        v35 = [v14 uuid];
        [v35 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v38 = *buf;
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v38;
      v30 = "%{public}@No more retries for HAPAccessory %{uuid_t}.16P";
      v31 = v25;
      v32 = 28;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v29 = v9;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      v30 = "%{public}@Couldn't find HAPAccessory from UARPAccessory %@";
      v31 = v25;
      v32 = 22;
    }

    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_23;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not supported on this device; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
}

- (HMDMatterUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDMatterUARPControllerDelegate;
  v5 = [(HMDMatterUARPControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessoryFirmwareUpdateManager, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_190404 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_190404, &__block_literal_global_190405);
  }

  v3 = logCategory__hmf_once_v1_190406;

  return v3;
}

void __46__HMDMatterUARPControllerDelegate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_190406;
  logCategory__hmf_once_v1_190406 = v1;
}

@end