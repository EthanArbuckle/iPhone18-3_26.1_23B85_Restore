@interface HMDDefaultUARPControllerDelegate
+ (id)logCategory;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDDefaultUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)manager;
- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
@end

@implementation HMDDefaultUARPControllerDelegate

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  msgCopy = msg;
  if (error)
  {
    *error = 0;
  }

  accessoryFirmwareUpdateManager = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v11 = [accessoryFirmwareUpdateManager sessionForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11 && ([v11 sendMessageToAccessory:accessoryCopy uarpMsg:msgCopy error:error] & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    if (error && !*error)
    {
      *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"UARP session not found" suggestion:0];
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      if (error)
      {
        v19 = *error;
      }

      else
      {
        v19 = 0;
      }

      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = accessoryCopy;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@sendMessageToAccessory: failed for %@ with error %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  objc_initWeak(&location, self);
  accessoryFirmwareUpdateManager = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  workQueue = [accessoryFirmwareUpdateManager workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HMDDefaultUARPControllerDelegate_stagedFirmwareApplicationComplete_withStatus___block_invoke;
  v10[3] = &unk_27867DEF8;
  objc_copyWeak(v12, &location);
  v12[1] = status;
  v11 = completeCopy;
  v9 = completeCopy;
  dispatch_async(workQueue, v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __81__HMDDefaultUARPControllerDelegate_stagedFirmwareApplicationComplete_withStatus___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v8 = *(a1 + 32);
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@firmware UARP apply request completed with status %@ for accessory %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  v20 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  dCopy = d;
  accessoryFirmwareUpdateManager = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v11 = [accessoryFirmwareUpdateManager sessionForUARPAccessory:completeCopy];
  v12 = v11;
  if (v11)
  {
    [v11 firmwareStagingComplete:completeCopy assetID:dCopy withStatus:status];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@firmwareUpdateComplete: No session exists for accessory", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  v24 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  dCopy = d;
  accessoryFirmwareUpdateManager = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v13 = [accessoryFirmwareUpdateManager sessionForUARPAccessory:progressCopy];
  v14 = v13;
  if (v13)
  {
    [v13 firmwareStagingProgress:progressCopy assetID:dCopy bytesSent:sent bytesTotal:total];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = progressCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@firmwareStagingProgress: No session exists for accessory %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)assetAvailablityUpdateForAccessory:(id)accessory assetID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [dCopy updateAvailabilityStatus];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = accessoryCopy;
    *&buf[22] = 2080;
    *&buf[24] = UARPFirmwareUpdateAvailabilityStatusToString();
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update Available for accessory:%@ status:%s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  accessoryFirmwareUpdateManager = [(HMDDefaultUARPControllerDelegate *)selfCopy accessoryFirmwareUpdateManager];
  if ([accessoryFirmwareUpdateManager supportsFirmwareUpdate])
  {
    v13 = [accessoryFirmwareUpdateManager sessionForUARPAccessory:accessoryCopy];
    if (v13)
    {
LABEL_5:
      [v13 assetAvailablityUpdateForAccessory:accessoryCopy assetID:dCopy];
LABEL_25:

      goto LABEL_26;
    }

    v18 = [accessoryFirmwareUpdateManager findHMDHAPAccessoryWithUARPAccessory:accessoryCopy];
    v13 = v18;
    if (v18)
    {
      firmwareVersion = [v18 firmwareVersion];
      softwareVersion = [dCopy softwareVersion];
      v21 = [firmwareVersion isAtLeastVersion:softwareVersion];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          softwareVersion2 = [dCopy softwareVersion];
          firmwareVersion2 = [v13 firmwareVersion];
          *buf = 138543874;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = softwareVersion2;
          *&buf[22] = 2112;
          *&buf[24] = firmwareVersion2;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Available version %@ is equal or older than current accessory version %@", buf, 0x20u);

LABEL_23:
        }

LABEL_24:

        objc_autoreleasePoolPop(v22);
        goto LABEL_25;
      }

      if (![accessoryFirmwareUpdateManager hasReachedMaximumFirmwareUpdateRetriesForAccessory:v13 assetID:dCopy])
      {
        v35 = [accessoryFirmwareUpdateManager addSessionForUARPAccessory:accessoryCopy];

        v13 = v35;
        goto LABEL_5;
      }

      v22 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v25 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      uuid = [v13 uuid];

      if (uuid)
      {
        uuid2 = [v13 uuid];
        [uuid2 getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v37 = *buf;
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 1040;
      *&buf[14] = 16;
      *&buf[18] = 2096;
      *&buf[20] = &v37;
      v29 = "%{public}@No more retries for HAPAccessory %{uuid_t}.16P";
      v30 = v24;
      v31 = 28;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = accessoryCopy;
      v29 = "%{public}@Couldn't find HAPAccessory from UARPAccessory %@";
      v30 = v24;
      v31 = 22;
    }

    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_23;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not supported on this device; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
LABEL_26:

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDDefaultUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = HMDDefaultUARPControllerDelegate;
  v5 = [(HMDDefaultUARPControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessoryFirmwareUpdateManager, managerCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_32467 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_32467, &__block_literal_global_32468);
  }

  v3 = logCategory__hmf_once_v1_32469;

  return v3;
}

void __47__HMDDefaultUARPControllerDelegate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_32469;
  logCategory__hmf_once_v1_32469 = v1;
}

@end