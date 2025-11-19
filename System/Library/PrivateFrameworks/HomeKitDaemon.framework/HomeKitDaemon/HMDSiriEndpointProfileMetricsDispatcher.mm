@interface HMDSiriEndpointProfileMetricsDispatcher
+ (id)logCategory;
- (BOOL)dataSourceShouldSubmitRoutineConfigurationEvent;
- (HMDSiriEndpointProfileMetricsDispatcher)initWithAccessoryUUID:(id)a3 homeUUID:(id)a4 logEventSubmitter:(id)a5;
- (HMDSiriEndpointProfileMetricsDispatcherDataSource)dataSource;
- (id)dataSourceAccessoryCategoryType;
- (id)dataSourceCompositeSettingsControllerManager;
- (id)dataSourceProfileFields;
- (id)fetchAccessorySettingFields;
- (id)logIdentifier;
- (void)submitRoutineConfigurationEvent;
- (void)submitRoutineConfigurationEventWithAccessorySettingFields:(id)a3;
@end

@implementation HMDSiriEndpointProfileMetricsDispatcher

- (HMDSiriEndpointProfileMetricsDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDSiriEndpointProfileMetricsDispatcher *)self accessoryUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dataSourceProfileFields
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 profileFieldsForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile fields due to no data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [[HMDSiriEndpointProfileFields alloc] initWithNeedsOnboardingField:@"NoDataSource" supportsOnboardingField:@"NoDataSource" siriEnableField:@"NoDataSource" siriListeningField:@"NoDataSource" siriTouchToUseField:@"NoDataSource" siriLightOnUseField:@"NoDataSource" siriSoundOnUseField:@"NoDataSource"];
  }

  v10 = v5;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dataSourceCompositeSettingsControllerManager
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 compositeSettingsControllerManagerForSiriEndpointProfileMetricsDispatcher:self];
    if (v5)
    {
      v6 = [v4 compositeSettingsControllerManagerForSiriEndpointProfileMetricsDispatcher:self];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get composite settings controller manager from data source: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v6 = 0;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory category type due to no data source", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dataSourceAccessoryCategoryType
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryCategoryTypeForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory category type due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = @"NoDataSource";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)dataSourceShouldSubmitRoutineConfigurationEvent
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 shouldSubmitRoutineConfigurationEventForSiriEndpointProfileMetricsDispatcher:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get should submit routine configuration event due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)fetchAccessorySettingFields
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceCompositeSettingsControllerManager];
  if (v4)
  {
    v5 = [(HMDSiriEndpointProfileMetricsDispatcher *)self accessoryUUID];
    v6 = [(HMDSiriEndpointProfileMetricsDispatcher *)self homeUUID];
    v7 = +[HMDSiriEndpointProfileAccessorySettingFields keyPaths];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__HMDSiriEndpointProfileMetricsDispatcher_fetchAccessorySettingFields__block_invoke;
    v13[3] = &unk_27867C870;
    v13[4] = self;
    v8 = v3;
    v14 = v8;
    [v4 localFetchSettingsForUUID:v5 homeUUID:v6 withKeyPaths:v7 completion:v13];

    v9 = v8;
  }

  else
  {
    v10 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
    [v3 finishWithResult:v10];
    v11 = v3;
  }

  return v3;
}

void __70__HMDSiriEndpointProfileMetricsDispatcher_fetchAccessorySettingFields__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v43 = a3;
  v42 = a4;
  v49 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = v7;
  v50 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v50)
  {
    v9 = *v52;
    v44 = a1;
    v48 = *v52;
    v47 = v8;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [v11 setting];
        if (v12)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v14 = v12;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          if (isKindOfClass)
          {
            v16 = [v12 BOOLValue];
            v17 = [v11 keyPath];
            [(HMDSiriEndpointProfileAccessorySettingFields *)v49 setBoolValue:v16 forKeyPath:v17];
          }

          else
          {
            v24 = v12;
            objc_opt_class();
            v25 = objc_opt_isKindOfClass();
            if (v25)
            {
              v26 = v24;
            }

            else
            {
              v26 = 0;
            }

            v17 = v26;

            if (v25)
            {
              v27 = [v24 numberValue];
              v28 = [v11 keyPath];
              [(HMDSiriEndpointProfileAccessorySettingFields *)v49 setNumberValue:v27 forKeyPath:v28];
            }

            else
            {
              v29 = v24;
              objc_opt_class();
              v30 = objc_opt_isKindOfClass();
              if (v30)
              {
                v31 = v29;
              }

              else
              {
                v31 = 0;
              }

              v27 = v31;

              if (v30)
              {
                v46 = objc_alloc(MEMORY[0x277CD1DC0]);
                v45 = [v29 inputLanguageCode];
                v32 = [v29 outputVoiceLanguageCode];
                v33 = [v29 outputVoiceGenderCode];
                v34 = [v29 voiceName];
                v35 = [v46 initWithInputLanguageCode:v45 outputVoiceLanguageCode:v32 outputVoiceGenderCode:v33 voiceName:v34];

                a1 = v44;
                v36 = [v11 keyPath];
                [(HMDSiriEndpointProfileAccessorySettingFields *)v49 setLanguageValue:v35 forKeyPath:v36];
              }

              else
              {
                v37 = objc_autoreleasePoolPush();
                v38 = *(a1 + 32);
                v39 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v40 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v56 = v40;
                  v57 = 2112;
                  v58 = v11;
                  _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to set setting from result: %@", buf, 0x16u);

                  a1 = v44;
                }

                objc_autoreleasePoolPop(v37);
              }

              v8 = v47;
            }

            v9 = v48;
          }
        }

        else
        {
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 32);
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v11 keyPath];
            v23 = [v11 error];
            *buf = 138543874;
            v56 = v21;
            v57 = 2112;
            v58 = v22;
            v59 = 2112;
            v60 = v23;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to local fetch setting for key path: %@ error: %@", buf, 0x20u);

            v9 = v48;
          }

          objc_autoreleasePoolPop(v18);
        }
      }

      v50 = [v8 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v50);
  }

  [*(a1 + 40) finishWithResult:v49];
  v41 = *MEMORY[0x277D85DE8];
}

- (void)submitRoutineConfigurationEventWithAccessorySettingFields:(id)a3
{
  v4 = a3;
  v8 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceAccessoryCategoryType];
  v5 = [(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceProfileFields];
  v6 = [[HMDSiriEndpointProfileRoutineConfigurationEvent alloc] initWithAccessoryCategoryType:v8 profileFields:v5 accessorySettingFields:v4];

  v7 = [(HMDSiriEndpointProfileMetricsDispatcher *)self logEventSubmitter];
  [v7 submitLogEvent:v6];
}

- (void)submitRoutineConfigurationEvent
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(HMDSiriEndpointProfileMetricsDispatcher *)self dataSourceShouldSubmitRoutineConfigurationEvent])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting routine configuration event", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [(HMDSiriEndpointProfileMetricsDispatcher *)v4 fetchAccessorySettingFields];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke;
    v12[3] = &unk_27868A250;
    v12[4] = v4;
    v8 = [v7 addFailureBlock:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke_5;
    v11[3] = &unk_27867AC58;
    v11[4] = v4;
    v9 = [v7 addSuccessBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __74__HMDSiriEndpointProfileMetricsDispatcher_submitRoutineConfigurationEvent__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Fetch accessory setting fields failed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_alloc_init(HMDSiriEndpointProfileAccessorySettingFields);
  [*(a1 + 32) submitRoutineConfigurationEventWithAccessorySettingFields:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointProfileMetricsDispatcher)initWithAccessoryUUID:(id)a3 homeUUID:(id)a4 logEventSubmitter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    return +[(HMDSiriEndpointProfileMetricsDispatcher *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMDSiriEndpointProfileMetricsDispatcher;
  v13 = [(HMDSiriEndpointProfileMetricsDispatcher *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeUUID, a4);
    objc_storeStrong(&v14->_accessoryUUID, a3);
    objc_storeStrong(&v14->_logEventSubmitter, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_140770 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_140770, &__block_literal_global_140771);
  }

  v3 = logCategory__hmf_once_v13_140772;

  return v3;
}

void __54__HMDSiriEndpointProfileMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_140772;
  logCategory__hmf_once_v13_140772 = v1;
}

@end