@interface HMDFetchedSettingsDriverHomePodSettings
+ (id)logCategory;
- (HMDFetchedSettingsDriverDelegate)delegate;
- (HMDFetchedSettingsDriverHomePodSettings)initWithQueue:(id)a3 settingsObjectFactory:(id)a4;
- (id)_hpLanguageValueFromLanguageValue:(id)a3;
- (id)_languageValueList;
- (id)_transformPreferredMediaUserEvent:(id)a3;
- (id)_transformToImmutableSetting:(id)a3;
- (void)_processReadResults:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_readSettingsAtKeyPaths:(id)a3 completion:(id)a4;
- (void)_writeSetting:(id)a3 keyPath:(id)a4 completion:(id)a5;
- (void)didReconnect;
- (void)didUpdateSetting:(id)a3 forKeyPath:(id)a4;
- (void)fetchSettingsForKeyPaths:(id)a3 completion:(id)a4;
- (void)languageValueListWithCompletion:(id)a3;
- (void)serviceDidInitializeForCurrentAccessory:(id)a3;
- (void)updateSettingWithKeyPath:(id)a3 BOOLSettingValue:(id)a4 completion:(id)a5;
- (void)updateSettingWithKeyPath:(id)a3 integerSettingValue:(id)a4 completion:(id)a5;
- (void)updateSettingWithKeyPath:(id)a3 languageSettingValue:(id)a4 completion:(id)a5;
- (void)updateSettingWithKeyPath:(id)a3 primaryUserInfo:(id)a4 completion:(id)a5;
@end

@implementation HMDFetchedSettingsDriverHomePodSettings

- (HMDFetchedSettingsDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)serviceDidInitializeForCurrentAccessory:(id)a3
{
  v4 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDFetchedSettingsDriverHomePodSettings_serviceDidInitializeForCurrentAccessory___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __83__HMDFetchedSettingsDriverHomePodSettings_serviceDidInitializeForCurrentAccessory___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@homepod settings did initialize", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  [v6 driverDidReload:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReconnect
{
  v3 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDFetchedSettingsDriverHomePodSettings_didReconnect__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __55__HMDFetchedSettingsDriverHomePodSettings_didReconnect__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@homepod settings did reconnect", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegate];
  [v6 driverDidReload:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateSetting:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDFetchedSettingsDriverHomePodSettings_didUpdateSetting_forKeyPath___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __71__HMDFetchedSettingsDriverHomePodSettings_didUpdateSetting_forKeyPath___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 40) isEqualToString:@"root.home.primaryUser"];
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (v3)
  {
    v6 = [v4 _transformPreferredMediaUserEvent:v5];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Got primaryUserInfo update for keyPath: %{public}@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v2 driver:*(a1 + 32) didUpdatePrimaryUserInfo:v6];
  }

  else
  {
    v6 = [v4 _transformToImmutableSetting:v5];
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      *buf = 138543874;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Got Setting Update for keyPath: %{public}@ setting: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    if (v6)
    {
      v24 = v6;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [v2 driver:*(a1 + 32) didUpdateSettings:v17];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = *(a1 + 48);
        *buf = 138543618;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to transform %@ to immutable setting", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v6 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_languageValueList
{
  v3 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDFetchedSettingsDriverHomePodSettings *)self service];
  v5 = [v4 settingForKeyPath:@"root.siri.availableLanguages"];

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 languages];
  v8 = [HMDFetchedSettingsUtilities transformHPLanguageItemsToLanguageListValue:v7];

  return v8;
}

- (void)languageValueListWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HMDFetchedSettingsDriverHomePodSettings_languageValueListWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __75__HMDFetchedSettingsDriverHomePodSettings_languageValueListWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _languageValueList];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)_writeSetting:(id)a3 keyPath:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v15;
    v25 = 2114;
    v26 = v9;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 service];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HMDFetchedSettingsDriverHomePodSettings__writeSetting_keyPath_completion___block_invoke;
  v20[3] = &unk_278684DE0;
  v20[4] = v13;
  v21 = v9;
  v22 = v10;
  v17 = v10;
  v18 = v9;
  [v16 updateSettingForKeyPath:v18 setting:v8 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __76__HMDFetchedSettingsDriverHomePodSettings__writeSetting_keyPath_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Update %{public}@ completion error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processReadResults:(id)a3 error:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v44 = v13;
    v45 = 2112;
    v46 = v8;
    v47 = 2112;
    v48 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fetched settings: %@, error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = v9;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v18 = v15;
  if (v17)
  {
    v19 = v17;
    v20 = *v39;
    v18 = v15;
    v34 = v14;
    v35 = *v39;
    v36 = v16;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v38 + 1) + 8 * i) setting];
        if (v22)
        {
          v23 = [(HMDFetchedSettingsDriverHomePodSettings *)v11 _transformToImmutableSetting:v22];
          if (v23)
          {
            [v14 addObject:v23];
          }

          else
          {
            v37 = v18;
            v24 = objc_autoreleasePoolPush();
            v25 = v11;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v27 = v11;
              v29 = v28 = v15;
              *buf = 138543618;
              v44 = v29;
              v45 = 2112;
              v46 = v22;
              _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Returned value %@ not of expected type.", buf, 0x16u);

              v15 = v28;
              v11 = v27;
              v14 = v34;
            }

            objc_autoreleasePoolPop(v24);
            if (v15)
            {
              v30 = v15;
            }

            else
            {
              v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            }

            v18 = v30;

            v20 = v35;
            v16 = v36;
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  v31 = [v14 copy];
  v33[2](v33, v31, v18);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_readSettingsAtKeyPaths:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDFetchedSettingsDriverHomePodSettings *)v9 service];
    *buf = 138543874;
    v19 = v11;
    v20 = 2114;
    v21 = v6;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch setting keyPaths: %{public}@ on service: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDFetchedSettingsDriverHomePodSettings *)v9 service];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke;
  v16[3] = &unk_278687158;
  v16[4] = v9;
  v17 = v7;
  v14 = v7;
  [v13 settingsForKeyPaths:v6 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMDFetchedSettingsDriverHomePodSettings__readSettingsAtKeyPaths_completion___block_invoke_2;
  v11[3] = &unk_278689AB8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

- (id)_transformPreferredMediaUserEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringValue];
  v6 = [objc_alloc(MEMORY[0x277CD1708]) initWithUUIDString:v5 selectionType:v5 != 0];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Transform hpSetting to primaryUserInfo: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_transformToImmutableSetting:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSBooleanSettingProtocolMethods:v4])
  {
    v5 = v4;
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc(MEMORY[0x277CD1868]);
      v8 = [v6 keyPath];
      v9 = [v7 initWithKeyPath:v8 readOnly:0 BOOLValue:{objc_msgSend(v6, "BOOLeanValue")}];
LABEL_4:

LABEL_9:
      goto LABEL_23;
    }
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSConstrainedNumberSettingProtocolMethods:v4])
  {
    v6 = v4;
    v10 = MEMORY[0x277CD1790];
    v11 = [v6 numberValue];
    v12 = [v10 scaleUpNumberSettingValue:v11];
    v13 = [v12 integerValue];

    v14 = MEMORY[0x277CD1790];
    v15 = [v6 maximumValue];
    v16 = [v14 scaleUpNumberSettingValue:v15];
    v17 = [v16 integerValue];

    v18 = MEMORY[0x277CD1790];
    v19 = [v6 minimumValue];
    v20 = [v18 scaleUpNumberSettingValue:v19];
    v21 = [v20 integerValue];

    v22 = MEMORY[0x277CD1790];
    v23 = [v6 stepValue];
    v24 = [v22 scaleUpNumberSettingValue:v23];
    v25 = [v24 integerValue];

    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v48 = 138544386;
      v49 = v29;
      v50 = 2048;
      v51 = v13;
      v52 = 2048;
      v53 = v17;
      v54 = 2048;
      v55 = v21;
      v56 = 2048;
      v57 = v25;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Transform constrained number setting (after scaling up) with value: %ld, max: %ld, min: %ld, step: %ld", &v48, 0x34u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = objc_alloc(MEMORY[0x277CD1870]);
    v31 = [v6 keyPath];
    v9 = [v30 initWithKeyPath:v31 readOnly:0 integerValue:v13 maxValue:v17 minValue:v21 valueStepSize:v25];

    goto LABEL_9;
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:v4])
  {
    v32 = [v4 keyPath];
    v33 = [v32 isEqual:@"root.siri.availableLanguages"];

    if (v33)
    {
      v34 = v4;
      if (v34)
      {
        v6 = v34;
        v35 = objc_alloc(MEMORY[0x277CD1B00]);
        v8 = [v6 keyPath];
        v36 = [v6 languages];
        v37 = [HMDFetchedSettingsUtilities transformHPLanguageItemsToLanguageListValue:v36];
        v9 = [v35 initWithKeyPath:v8 readOnly:1 languageValues:v37];

        goto LABEL_4;
      }
    }
  }

  if ([HMDHPSAPIConformanceProviding objectRespondsToHPSSiriLanguageSettingProtocolMethods:v4])
  {
    v6 = v4;
    v38 = [v6 languageValue];
    v8 = v38;
    if (v6)
    {
      if (v38)
      {
        v39 = objc_alloc(MEMORY[0x277CD1AF8]);
        v40 = [v6 keyPath];
        v41 = [HMDFetchedSettingsUtilities languageValueFromHPLanguageValue:v8];
        v9 = [v39 initWithKeyPath:v40 readOnly:0 languageValue:v41];

        goto LABEL_4;
      }

      v42 = objc_autoreleasePoolPush();
      v43 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        v48 = 138543362;
        v49 = v45;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Nil Language Value", &v48, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
    }
  }

  v9 = 0;
LABEL_23:

  v46 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)updateSettingWithKeyPath:(id)a3 primaryUserInfo:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating Primary User setting %{public}@ to %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [v9 uuidString];
  v17 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 hmdhpsObjectFactory];
  v18 = [v17 createHPSStringSettingWithKeyPath:v8 stringValue:v16];

  if (v18)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)v13 _writeSetting:v18 keyPath:v8 completion:v10];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v13;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10[2](v10, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingWithKeyPath:(id)a3 integerSettingValue:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = MEMORY[0x277CD1790];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
  v14 = [v12 scaleDownNumberSettingValue:v13];

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
    v28 = 138544130;
    v29 = v18;
    v30 = 2114;
    v31 = v8;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@ (integer value: %@)", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [(HMDFetchedSettingsDriverHomePodSettings *)v16 hmdhpsObjectFactory];
  v21 = [v20 createHPSNumberSettingWithKeyPath:v8 numberValue:v14];

  if (v21)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)v16 _writeSetting:v21 keyPath:v8 completion:v10];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v16;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10[2](v10, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingWithKeyPath:(id)a3 BOOLSettingValue:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v15;
    v26 = 2114;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 hmdhpsObjectFactory];
  v17 = [v16 createHPSBooleanSettingWithKeyPath:v8 BOOLeanValue:{objc_msgSend(v9, "BOOLValue")}];

  if (v17)
  {
    [(HMDFetchedSettingsDriverHomePodSettings *)v13 _writeSetting:v17 keyPath:v8 completion:v10];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v13;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10[2](v10, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_hpLanguageValueFromLanguageValue:(id)a3
{
  v4 = a3;
  v5 = [(HMDFetchedSettingsDriverHomePodSettings *)self hmdhpsObjectFactory];
  v6 = [v4 inputLanguageCode];
  v7 = [v4 outputVoiceLanguageCode];
  v8 = [v4 outputVoiceGenderCode];
  v9 = [HMDFetchedSettingsUtilities _outputGenderFromString:v8];
  v10 = [v4 voiceName];

  v11 = [v5 createHPSSiriLanguageValueWithRecognitionLanguage:v6 outputLanguage:v7 gender:v9 voiceName:v10];

  return v11;
}

- (void)updateSettingWithKeyPath:(id)a3 languageSettingValue:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v15;
    v32 = 2114;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 hmdhpsObjectFactory];
  v17 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 _hpLanguageValueFromLanguageValue:v9];
  v18 = [v16 createHPSSiriLanguageSettingWithKeyPath:v8 languageValue:v17];

  if (v18)
  {
    v19 = [(HMDFetchedSettingsDriverHomePodSettings *)v13 queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __100__HMDFetchedSettingsDriverHomePodSettings_updateSettingWithKeyPath_languageSettingValue_completion___block_invoke;
    v26[3] = &unk_278689AB8;
    v26[4] = v13;
    v27 = v18;
    v28 = v8;
    v29 = v10;
    dispatch_async(v19, v26);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v13;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not create homepod Setting from setting value %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v10 + 2))(v10, v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)fetchSettingsForKeyPaths:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  dispatch_assert_queue_V2(v8);

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__247791;
  v27[4] = __Block_byref_object_dispose__247792;
  v28 = MEMORY[0x277CBEBF8];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__247791;
  v25[4] = __Block_byref_object_dispose__247792;
  v26 = 0;
  v9 = dispatch_group_create();
  if ([v6 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fetching settings using local api keyPaths: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dispatch_group_enter(v9);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke;
    v21[3] = &unk_278684D90;
    v23 = v27;
    v24 = v25;
    v22 = v9;
    [(HMDFetchedSettingsDriverHomePodSettings *)v11 _readSettingsAtKeyPaths:v6 completion:v21];
  }

  v14 = [(HMDFetchedSettingsDriverHomePodSettings *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke_2;
  v17[3] = &unk_278684DB8;
  v18 = v7;
  v19 = v27;
  v20 = v25;
  v15 = v7;
  dispatch_group_notify(v9, v14, v17);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __79__HMDFetchedSettingsDriverHomePodSettings_fetchSettingsForKeyPaths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

- (HMDFetchedSettingsDriverHomePodSettings)initWithQueue:(id)a3 settingsObjectFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDFetchedSettingsDriverHomePodSettings;
  v9 = [(HMDFetchedSettingsDriverHomePodSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [v8 createHPSAccessorySettingServiceWithDelegate:v10];
    service = v10->_service;
    v10->_service = v11;

    objc_storeStrong(&v10->_hmdhpsObjectFactory, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_247801 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_247801, &__block_literal_global_247802);
  }

  v3 = logCategory__hmf_once_v1_247803;

  return v3;
}

void __54__HMDFetchedSettingsDriverHomePodSettings_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_247803;
  logCategory__hmf_once_v1_247803 = v1;
}

@end