@interface HMDAccessorySettingsLocalMessageHandler
+ (id)logCategory;
- (HMDAccessorySettingsLocalMessageHandler)initWithHomeUUID:(id)a3 languageValuesDataProvider:(id)a4;
- (HMDAccessorySettingsLocalMessageHandlerDataSource)dataSource;
- (HMDAccessorySettingsLocalMessageHandlerDelegate)delegate;
- (id)callerVersionForMessage:(id)a3;
- (id)siriAvailableLanguagesSetting;
- (unint64_t)dataSourceCallerPrivilegeWithMessage:(id)a3 error:(id *)a4;
- (void)handleAccessorySettingsFetchRequestMessage:(id)a3;
- (void)handleAccessorySettingsUpdateRequestMessage:(id)a3;
@end

@implementation HMDAccessorySettingsLocalMessageHandler

- (HMDAccessorySettingsLocalMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDAccessorySettingsLocalMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)callerVersionForMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isRemote])
  {
    v5 = [v4 remoteSourceDevice];
    v6 = [v5 version];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get caller version from remote source device: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v7 = +[HMDHomeKitVersion currentVersion];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)dataSourceCallerPrivilegeWithMessage:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDAccessorySettingsLocalMessageHandler *)self dataSource];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 accessorySettingsLocalMessageHandler:self callerPrivilegeWithMessage:v6];
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      v14 = "%{public}@Failed to get caller privilege from data source";
LABEL_7:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0xCu);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      v14 = "%{public}@Failed to data source composite settings controller due to no data source";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v10);
  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  }

  v9 = 2;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handleAccessorySettingsUpdateRequestMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory settings update request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CD17B8]) initWithPayload:v9];
    if (v10)
    {
      v11 = [(HMDAccessorySettingsLocalMessageHandler *)v6 callerVersionForMessage:v4];
      if (v11)
      {
        v12 = [v10 settingValue];
        if (v12)
        {
          v13 = [(HMDAccessorySettingsLocalMessageHandler *)v6 delegate];
          if (v13)
          {
            v14 = [(HMDAccessorySettingsLocalMessageHandler *)v6 homeUUID];
            v15 = [v10 accessoryUUID];
            v16 = [v10 keyPath];
            [v13 accessorySettingsLocalMessageHandler:v6 didReceiveUpdateRequestMessage:v4 withHomeUUID:v14 accessoryUUID:v15 keyPath:v16 value:v12 callerVersion:v11];
          }

          else
          {
            v33 = objc_autoreleasePoolPush();
            v34 = v6;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v39 = v36;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting due to no delegate", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v33);
            v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
            [v4 respondWithError:v14];
          }
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v6;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v39 = v32;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting as unable to determine setting value from payload", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
          v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          [v4 respondWithError:v13];
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v6;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v28;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting due no caller version", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [v4 respondWithError:v12];
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v6;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v24;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create update request payload with message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [v4 respondWithError:v11];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings due to no payload found on message", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    [v4 respondWithError:v10];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)siriAvailableLanguagesSetting
{
  v2 = [(HMDAccessorySettingsLocalMessageHandler *)self languageValuesDataProvider];
  v3 = [v2 languageValueList];

  v4 = [objc_alloc(MEMORY[0x277CD1B00]) initWithKeyPath:@"root.siri.availableLanguages" readOnly:1 languageValues:v3];

  return v4;
}

- (void)handleAccessorySettingsFetchRequestMessage:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v8;
    v53 = 2112;
    v54 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory settings fetch request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CD17A0]) initWithPayload:v9];
    if (!v10)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v6;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v26;
        v53 = 2112;
        v54 = v9;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch request payload with message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [v4 respondWithError:v11];
      goto LABEL_32;
    }

    v11 = [(HMDAccessorySettingsLocalMessageHandler *)v6 callerVersionForMessage:v4];
    if (v11)
    {
      v50 = 0;
      v12 = [(HMDAccessorySettingsLocalMessageHandler *)v6 dataSourceCallerPrivilegeWithMessage:v4 error:&v50];
      v13 = v50;
      if (!v13)
      {
        v49 = [(HMDAccessorySettingsLocalMessageHandler *)v6 delegate];
        if (v49)
        {
          v31 = [v10 keyPaths];
          v32 = [v31 mutableCopy];

          if ([v32 containsObject:@"root.siri.availableLanguages"])
          {
            v33 = objc_autoreleasePoolPush();
            v34 = v6;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v52 = v36;
              v48 = v33;
              v37 = v36;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Fetching siri available language setting", buf, 0xCu);

              v33 = v48;
            }

            objc_autoreleasePoolPop(v33);
            v38 = [(HMDAccessorySettingsLocalMessageHandler *)v34 siriAvailableLanguagesSetting];
          }

          else
          {
            v38 = 0;
          }

          v44 = [(HMDAccessorySettingsLocalMessageHandler *)v6 homeUUID];
          v45 = [v10 accessoryUUID];
          v47 = v12;
          v43 = v49;
          [v49 accessorySettingsLocalMessageHandler:v6 didReceiveFetchRequestMessage:v4 withHomeUUID:v44 accessoryUUID:v45 keyPaths:v32 callerVersion:v11 callerPrivilege:v47 siriAvailableLanguagesSetting:v38];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = v6;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v52 = v42;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch settings due to no delegate", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v39);
          v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
          [v4 respondWithError:v32];
          v43 = 0;
        }

        v14 = 0;
        goto LABEL_31;
      }

      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v18;
        v53 = 2112;
        v54 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch settings due caller privilege data sourcing error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v6;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v30;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch settings due no caller version", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    }

    [v4 respondWithError:v14];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v6;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v52 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload on fetch request message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
  [v4 respondWithError:v10];
LABEL_33:

  v46 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsLocalMessageHandler)initWithHomeUUID:(id)a3 languageValuesDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAccessorySettingsLocalMessageHandler;
  v9 = [(HMDAccessorySettingsLocalMessageHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, a3);
    objc_storeStrong(&v10->_languageValuesDataProvider, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_135437 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_135437, &__block_literal_global_135438);
  }

  v3 = logCategory__hmf_once_v17_135439;

  return v3;
}

void __54__HMDAccessorySettingsLocalMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_135439;
  logCategory__hmf_once_v17_135439 = v1;
}

@end