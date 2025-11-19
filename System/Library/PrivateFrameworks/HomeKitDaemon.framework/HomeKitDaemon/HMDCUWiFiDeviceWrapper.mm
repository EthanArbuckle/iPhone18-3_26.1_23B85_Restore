@interface HMDCUWiFiDeviceWrapper
+ (id)logCategory;
- (HMDCUWiFiDeviceWrapper)initWithCUWiFiDevice:(id)a3 dispatchQueue:(id)a4;
- (NSString)description;
- (NSString)name;
- (void)cancelConfigurationWithCompletionHandler:(id)a3;
- (void)startConfigurationWithCompletionHandler:(id)a3;
@end

@implementation HMDCUWiFiDeviceWrapper

- (NSString)description
{
  v3 = [(HMDCUWiFiDeviceWrapper *)self identifier];
  v4 = [(HMDCUWiFiDeviceWrapper *)self ssid];
  v5 = [(HMDCUWiFiDeviceWrapper *)self name];
  v9 = [(HMDCUWiFiDeviceWrapper *)self deviceID];
  NSAppendPrintF();
  v6 = 0;

  [(CUWiFiDevice *)self->_cuWiFiDevice deviceIEFlags:v3];
  NSAppendPrintF();
  v7 = v6;

  return v6;
}

- (void)cancelConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDCUWiFiDeviceWrapper_cancelConfigurationWithCompletionHandler___block_invoke;
  block[3] = &unk_2786841C8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__HMDCUWiFiDeviceWrapper_cancelConfigurationWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[2] invalidate];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startConfigurationWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_wacSession)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@WACSession already active for device", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D02950]);
    wacSession = self->_wacSession;
    self->_wacSession = v9;

    [(CUWACSession *)self->_wacSession setWacDevice:self->_cuWiFiDevice];
    v11 = [(HMDCUWiFiDeviceWrapper *)self name];
    [(CUWACSession *)self->_wacSession setLabel:v11];

    [(CUWACSession *)self->_wacSession setDispatchQueue:self->_dispatchQueue];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__139507;
    v24 = __Block_byref_object_dispose__139508;
    v25 = 0;
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __66__HMDCUWiFiDeviceWrapper_startConfigurationWithCompletionHandler___block_invoke;
    v16 = &unk_27867AA28;
    objc_copyWeak(&v19, &location);
    p_buf = &buf;
    v17 = v4;
    [(CUWACSession *)self->_wacSession setProgressHandler:&v13];
    [(CUWACSession *)self->_wacSession activate:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__HMDCUWiFiDeviceWrapper_startConfigurationWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_67;
  }

  if (a2 != 20)
  {
    if (a2 == 200)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v19;
        v20 = "%{public}@WAC setup successful";
        v21 = v18;
        v22 = 12;
LABEL_65:
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
      }
    }

    else
    {
      if (a2 == 30)
      {
        v7 = [v5 objectForKeyedSubscript:@"eo"];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v10 = objc_autoreleasePoolPush();
        v11 = WeakRetained;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          v14 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138543618;
          v35 = v13;
          v36 = 2112;
          v37 = v14;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@WAC setup failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = *(a1 + 32);
        if (v15)
        {
          (*(v15 + 16))(v15, *(*(*(a1 + 40) + 8) + 40));
        }

        [v11[2] invalidate];
        goto LABEL_67;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v19 = v29;
        if (a2 > 109)
        {
          if (a2 > 159)
          {
            if (a2 <= 179)
            {
              if (a2 == 160)
              {
                v30 = "PostConfigStart";
                goto LABEL_64;
              }

              if (a2 == 170)
              {
                v30 = "FoundPostConfig";
                goto LABEL_64;
              }
            }

            else
            {
              if (a2 == 180)
              {
                v30 = "CheckingPostConfig";
                goto LABEL_64;
              }

              if (a2 == 190)
              {
                v30 = "CheckedPostConfig";
                goto LABEL_64;
              }
            }
          }

          else if (a2 <= 129)
          {
            if (a2 == 110)
            {
              v30 = "ApplyingConfig";
              goto LABEL_64;
            }

            if (a2 == 120)
            {
              v30 = "AppliedConfig";
              goto LABEL_64;
            }
          }

          else
          {
            switch(a2)
            {
              case 130:
                v30 = "RestoringOriginalWiFi";
                goto LABEL_64;
              case 140:
                v30 = "RestoredOriginalWiFi";
                goto LABEL_64;
              case 150:
                v30 = "SearchingPostConfig";
                goto LABEL_64;
            }
          }
        }

        else if (a2 > 59)
        {
          if (a2 <= 79)
          {
            if (a2 == 60)
            {
              v30 = "PreConfigStart";
              goto LABEL_64;
            }

            if (a2 == 70)
            {
              v30 = "SearchingPreConfig";
              goto LABEL_64;
            }
          }

          else
          {
            switch(a2)
            {
              case 'P':
                v30 = "FoundPreConfig";
                goto LABEL_64;
              case 'Z':
                v30 = "Authenticating";
                goto LABEL_64;
              case 'd':
                v30 = "Authenticated";
                goto LABEL_64;
            }
          }
        }

        else if (a2 <= 29)
        {
          if (!a2)
          {
            v30 = "Invalid";
            goto LABEL_64;
          }

          if (a2 == 10)
          {
            v30 = "Start";
            goto LABEL_64;
          }
        }

        else
        {
          if (a2 == 40)
          {
            v30 = "JoiningSoftAP";
            goto LABEL_64;
          }

          if (a2 == 50)
          {
            v30 = "JoinedSoftAP";
LABEL_64:
            *buf = 138543874;
            v35 = v29;
            v36 = 2080;
            v37 = v30;
            v38 = 2112;
            v39 = v5;
            v20 = "%{public}@CUWACSession progress %s: %@";
            v21 = v18;
            v22 = 32;
            goto LABEL_65;
          }
        }

        v30 = "?";
        goto LABEL_64;
      }
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_67;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = WeakRetained;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@WAC setup finalized, calling completion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v27 = *(a1 + 32);
  if (v27 && !*(*(*(a1 + 40) + 8) + 40))
  {
    (*(v27 + 16))(v27, 0);
  }

  [*(v24 + 2) invalidate];
  v28 = *(v24 + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDCUWiFiDeviceWrapper_startConfigurationWithCompletionHandler___block_invoke_90;
  block[3] = &unk_278686B80;
  objc_copyWeak(&v33, (a1 + 48));
  dispatch_async(v28, block);
  objc_destroyWeak(&v33);
LABEL_67:

  v31 = *MEMORY[0x277D85DE8];
}

void __66__HMDCUWiFiDeviceWrapper_startConfigurationWithCompletionHandler___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (NSString)name
{
  v3 = [(CUWiFiDevice *)self->_cuWiFiDevice deviceIEName];
  cuWiFiDevice = self->_cuWiFiDevice;
  if (v3)
  {
    [(CUWiFiDevice *)cuWiFiDevice deviceIEName];
  }

  else
  {
    [(CUWiFiDevice *)cuWiFiDevice ssid];
  }
  v5 = ;

  return v5;
}

- (HMDCUWiFiDeviceWrapper)initWithCUWiFiDevice:(id)a3 dispatchQueue:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDCUWiFiDeviceWrapper;
  v9 = [(HMDCUWiFiDeviceWrapper *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cuWiFiDevice, a3);
    objc_storeStrong(&v10->_dispatchQueue, a4);
    v11 = [v7 deviceIEDeviceID];
    [v11 bytes];
    [v11 length];
    HardwareAddressToCString();
    v12 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    deviceID = v10->deviceID;
    v10->deviceID = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_139543 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_139543, &__block_literal_global_96);
  }

  v3 = logCategory__hmf_once_v19_139544;

  return v3;
}

void __37__HMDCUWiFiDeviceWrapper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_139544;
  logCategory__hmf_once_v19_139544 = v1;
}

@end