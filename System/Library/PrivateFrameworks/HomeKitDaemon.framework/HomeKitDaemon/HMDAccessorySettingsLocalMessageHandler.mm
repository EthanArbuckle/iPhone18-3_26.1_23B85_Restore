@interface HMDAccessorySettingsLocalMessageHandler
+ (id)logCategory;
- (HMDAccessorySettingsLocalMessageHandler)initWithHomeUUID:(id)d languageValuesDataProvider:(id)provider;
- (HMDAccessorySettingsLocalMessageHandlerDataSource)dataSource;
- (HMDAccessorySettingsLocalMessageHandlerDelegate)delegate;
- (id)callerVersionForMessage:(id)message;
- (id)siriAvailableLanguagesSetting;
- (unint64_t)dataSourceCallerPrivilegeWithMessage:(id)message error:(id *)error;
- (void)handleAccessorySettingsFetchRequestMessage:(id)message;
- (void)handleAccessorySettingsUpdateRequestMessage:(id)message;
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

- (id)callerVersionForMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy isRemote])
  {
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    version = [remoteSourceDevice version];
    v7 = version;
    if (version)
    {
      v8 = version;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = remoteSourceDevice;
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

- (unint64_t)dataSourceCallerPrivilegeWithMessage:(id)message error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDAccessorySettingsLocalMessageHandler *)self dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource accessorySettingsLocalMessageHandler:self callerPrivilegeWithMessage:messageCopy];
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy2 = self;
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
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
  }

  v9 = 2;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)handleAccessorySettingsUpdateRequestMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory settings update request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD17B8]) initWithPayload:messagePayload];
    if (v10)
    {
      v11 = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy callerVersionForMessage:messageCopy];
      if (v11)
      {
        settingValue = [v10 settingValue];
        if (settingValue)
        {
          delegate = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy delegate];
          if (delegate)
          {
            homeUUID = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy homeUUID];
            accessoryUUID = [v10 accessoryUUID];
            keyPath = [v10 keyPath];
            [delegate accessorySettingsLocalMessageHandler:selfCopy didReceiveUpdateRequestMessage:messageCopy withHomeUUID:homeUUID accessoryUUID:accessoryUUID keyPath:keyPath value:settingValue callerVersion:v11];
          }

          else
          {
            v33 = objc_autoreleasePoolPush();
            v34 = selfCopy;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543362;
              v39 = v36;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting due to no delegate", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v33);
            homeUUID = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
            [messageCopy respondWithError:homeUUID];
          }
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543362;
            v39 = v32;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting as unable to determine setting value from payload", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v29);
          delegate = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
          [messageCopy respondWithError:delegate];
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v28;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to update setting due no caller version", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
        settingValue = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
        [messageCopy respondWithError:settingValue];
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v24;
        v40 = 2112;
        v41 = messagePayload;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to create update request payload with message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:v11];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
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
    [messageCopy respondWithError:v10];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)siriAvailableLanguagesSetting
{
  languageValuesDataProvider = [(HMDAccessorySettingsLocalMessageHandler *)self languageValuesDataProvider];
  languageValueList = [languageValuesDataProvider languageValueList];

  v4 = [objc_alloc(MEMORY[0x277CD1B00]) initWithKeyPath:@"root.siri.availableLanguages" readOnly:1 languageValues:languageValueList];

  return v4;
}

- (void)handleAccessorySettingsFetchRequestMessage:(id)message
{
  v55 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v8;
    v53 = 2112;
    v54 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling accessory settings fetch request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  if (messagePayload)
  {
    v10 = [objc_alloc(MEMORY[0x277CD17A0]) initWithPayload:messagePayload];
    if (!v10)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v26;
        v53 = 2112;
        v54 = messagePayload;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch request payload with message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:v11];
      goto LABEL_32;
    }

    v11 = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy callerVersionForMessage:messageCopy];
    if (v11)
    {
      v50 = 0;
      v12 = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy dataSourceCallerPrivilegeWithMessage:messageCopy error:&v50];
      v13 = v50;
      if (!v13)
      {
        delegate = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy delegate];
        if (delegate)
        {
          keyPaths = [v10 keyPaths];
          v32 = [keyPaths mutableCopy];

          if ([v32 containsObject:@"root.siri.availableLanguages"])
          {
            v33 = objc_autoreleasePoolPush();
            v34 = selfCopy;
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
            siriAvailableLanguagesSetting = [(HMDAccessorySettingsLocalMessageHandler *)v34 siriAvailableLanguagesSetting];
          }

          else
          {
            siriAvailableLanguagesSetting = 0;
          }

          homeUUID = [(HMDAccessorySettingsLocalMessageHandler *)selfCopy homeUUID];
          accessoryUUID = [v10 accessoryUUID];
          v47 = v12;
          v43 = delegate;
          [delegate accessorySettingsLocalMessageHandler:selfCopy didReceiveFetchRequestMessage:messageCopy withHomeUUID:homeUUID accessoryUUID:accessoryUUID keyPaths:v32 callerVersion:v11 callerPrivilege:v47 siriAvailableLanguagesSetting:siriAvailableLanguagesSetting];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = selfCopy;
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
          [messageCopy respondWithError:v32];
          v43 = 0;
        }

        v14 = 0;
        goto LABEL_31;
      }

      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
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
      v28 = selfCopy;
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

    [messageCopy respondWithError:v14];
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
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
  [messageCopy respondWithError:v10];
LABEL_33:

  v46 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsLocalMessageHandler)initWithHomeUUID:(id)d languageValuesDataProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HMDAccessorySettingsLocalMessageHandler;
  v9 = [(HMDAccessorySettingsLocalMessageHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, d);
    objc_storeStrong(&v10->_languageValuesDataProvider, provider);
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