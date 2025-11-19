@interface HMDDefaultUARPControllerDelegate
+ (id)logCategory;
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager;
- (HMDDefaultUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)a3;
- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
@end

@implementation HMDDefaultUARPControllerDelegate

- (HMDAccessoryFirmwareUpdateManager)accessoryFirmwareUpdateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryFirmwareUpdateManager);

  return WeakRetained;
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v11 = [v10 sessionForUARPAccessory:v8];
  v12 = v11;
  if (v11 && ([v11 sendMessageToAccessory:v8 uarpMsg:v9 error:a5] & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    if (a5 && !*a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:@"UARP session not found" suggestion:0];
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = v17;
      if (a5)
      {
        v19 = *a5;
      }

      else
      {
        v19 = 0;
      }

      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@sendMessageToAccessory: failed for %@ with error %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v8 = [v7 workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HMDDefaultUARPControllerDelegate_stagedFirmwareApplicationComplete_withStatus___block_invoke;
  v10[3] = &unk_279731EE0;
  objc_copyWeak(v12, &location);
  v12[1] = a4;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, v10);

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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@firmware UARP apply request completed with status %@ for accessory %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v11 = [v10 sessionForUARPAccessory:v8];
  v12 = v11;
  if (v11)
  {
    [v11 firmwareStagingComplete:v8 assetID:v9 withStatus:a5];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@firmwareUpdateComplete: No session exists for accessory", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDDefaultUARPControllerDelegate *)self accessoryFirmwareUpdateManager];
  v13 = [v12 sessionForUARPAccessory:v10];
  v14 = v13;
  if (v13)
  {
    [v13 firmwareStagingProgress:v10 assetID:v11 bytesSent:a5 bytesTotal:a6];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@firmwareStagingProgress: No session exists for accessory %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)assetAvailablityUpdateForAccessory:(id)a3 assetID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [v7 updateAvailabilityStatus];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    *&buf[24] = UARPFirmwareUpdateAvailabilityStatusToString();
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update Available for accessory:%@ status:%s", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDDefaultUARPControllerDelegate *)v9 accessoryFirmwareUpdateManager];
  if ([v12 supportsFirmwareUpdate])
  {
    v13 = [v12 sessionForUARPAccessory:v6];
    if (v13)
    {
LABEL_5:
      [v13 assetAvailablityUpdateForAccessory:v6 assetID:v7];
LABEL_25:

      goto LABEL_26;
    }

    v18 = [v12 findHMDHAPAccessoryWithUARPAccessory:v6];
    v13 = v18;
    if (v18)
    {
      v19 = [v18 firmwareVersion];
      v20 = [v7 softwareVersion];
      v21 = [v19 isAtLeastVersion:v20];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v9;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v7 softwareVersion];
          v27 = [v13 firmwareVersion];
          *buf = 138543874;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = v26;
          *&buf[22] = 2112;
          *&buf[24] = v27;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Available version %@ is equal or older than current accessory version %@", buf, 0x20u);

LABEL_23:
        }

LABEL_24:

        objc_autoreleasePoolPop(v22);
        goto LABEL_25;
      }

      if (![v12 hasReachedMaximumFirmwareUpdateRetriesForAccessory:v13 assetID:v7])
      {
        v35 = [v12 addSessionForUARPAccessory:v6];

        v13 = v35;
        goto LABEL_5;
      }

      v22 = objc_autoreleasePoolPush();
      v32 = v9;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v25 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      v33 = [v13 uuid];

      if (v33)
      {
        v34 = [v13 uuid];
        [v34 getUUIDBytes:buf];
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
      v28 = v9;
      v24 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      v29 = "%{public}@Couldn't find HAPAccessory from UARPAccessory %@";
      v30 = v24;
      v31 = 22;
    }

    _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_23;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = v9;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Firmware Update not supported on this device; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
LABEL_26:

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDDefaultUARPControllerDelegate)initWithAccessoryFirmwareUpdateManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDDefaultUARPControllerDelegate;
  v5 = [(HMDDefaultUARPControllerDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessoryFirmwareUpdateManager, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_133349 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_133349, &__block_literal_global_133350);
  }

  v3 = logCategory__hmf_once_v1_133351;

  return v3;
}

uint64_t __47__HMDDefaultUARPControllerDelegate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_133351;
  logCategory__hmf_once_v1_133351 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end