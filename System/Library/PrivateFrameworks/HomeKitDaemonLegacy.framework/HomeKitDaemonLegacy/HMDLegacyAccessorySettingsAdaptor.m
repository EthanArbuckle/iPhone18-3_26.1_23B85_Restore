@interface HMDLegacyAccessorySettingsAdaptor
+ (id)logCategory;
+ (id)parsedBoolSettingEvent:(id)a3 topic:(id)a4;
+ (id)parsedIntegerSettingEvent:(id)a3 topic:(id)a4;
+ (id)parsedLanguageListSetting:(id)a3 topic:(id)a4;
+ (id)parsedLanguageSetting:(id)a3 topic:(id)a4;
- (HMDLegacyAccessorySettingsAdaptor)initWithQueue:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 settingsController:(id)a6 subscriptionProvider:(id)a7;
- (HMDLegacyAccessorySettingsAdaptorDelegate)delegate;
- (HMDLegacyAccessorySettingsAdaptorSettingsOperationProvider)currentAccessorySettingsController;
- (id)_settingValueForKeyPath:(id)a3 value:(id)a4;
- (id)_transformLegacyLanguageSettingValueToImmutableSetting:(id)a3;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)startup;
- (void)updateSettingWithKeyPath:(id)a3 settingValue:(id)a4 completion:(id)a5;
@end

@implementation HMDLegacyAccessorySettingsAdaptor

- (HMDLegacyAccessorySettingsAdaptorSettingsOperationProvider)currentAccessorySettingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentAccessorySettingsController);

  return WeakRetained;
}

- (HMDLegacyAccessorySettingsAdaptorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDLegacyAccessorySettingsAdaptor *)self delegate];
  if (v8)
  {
    v9 = [objc_opt_class() parsedBoolSettingEvent:v6 topic:v7];
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v9 keyPath];
        v26 = 138543618;
        v27 = v13;
        v28 = 2114;
        v29 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Forwarding decoded setting event for %{public}@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [v9 keyPath];
      [v8 legacySettingsAdaptor:v11 didUpdateSettingKeyPath:v15 BOOLValue:{objc_msgSend(v9, "BOOLValue")}];
    }

    else
    {
      v15 = [objc_opt_class() parsedIntegerSettingEvent:v6 topic:v7];
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          v21 = [0 keyPath];
          v26 = 138543618;
          v27 = v20;
          v28 = 2114;
          v29 = v21;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Forwarding decoded setting event for %{public}@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "integerValue")}];
        v23 = [v15 keyPath];
        [v8 legacySettingsAdaptor:v17 didUpdateSettingKeyPath:v23 numberValue:v22];
      }

      else
      {
        if (v19)
        {
          v24 = HMFGetLogIdentifier();
          v26 = 138543618;
          v27 = v24;
          v28 = 2114;
          v29 = v7;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Parsed setting for topic%{public}@ is neither BOOL nor integer", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v15 = 0;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_transformLegacyLanguageSettingValueToImmutableSetting:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:{@", "}];
  if ([v5 count] > 2)
  {
    v11 = [v5 objectAtIndex:0];
    v12 = [v5 objectAtIndex:1];
    v13 = [v5 objectAtIndex:2];
    v14 = 0;
    if ([v5 count] >= 5)
    {
      v14 = [v5 objectAtIndex:4];
    }

    v10 = [objc_alloc(MEMORY[0x277CD1DC0]) initWithInputLanguageCode:v11 outputVoiceLanguageCode:v12 outputVoiceGenderCode:v13 voiceName:v14];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get expected language code count from legacy language setting encoding: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_settingValueForKeyPath:(id)a3 value:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CD1790] isKeyPathForBooleanSettingType:v6])
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v10, "BOOLValue")}];
LABEL_31:
      v31 = v11;
LABEL_37:

      goto LABEL_38;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v35 = HMFGetLogIdentifier();
    v49 = 138543874;
    v50 = v35;
    v51 = 2112;
    v52 = v8;
    v53 = 2114;
    v54 = v6;
    v36 = "%{public}@Passed in value: %@ is not a number for BOOL setting: %{public}@";
LABEL_34:
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, v36, &v49, 0x20u);

LABEL_35:
LABEL_36:

    objc_autoreleasePoolPop(v32);
    v10 = 0;
    v31 = 0;
    goto LABEL_37;
  }

  if ([MEMORY[0x277CD1790] isKeyPathForConstrainedNumberSettingType:v6])
  {
    v12 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v10 = v13;

    if (v10)
    {
      v14 = [MEMORY[0x277CD1790] scaleUpNumberSettingValue:v12];
      v15 = [v14 integerValue];

      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
        v49 = 138544130;
        v50 = v19;
        v51 = 2112;
        v52 = v12;
        v53 = 2112;
        v54 = v20;
        v55 = 2114;
        v56 = v6;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating legacy integer value %@ to %@: %{public}@", &v49, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v11 = [objc_alloc(MEMORY[0x277CD1DB8]) initWithIntegerValue:v15];
      goto LABEL_31;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v35 = HMFGetLogIdentifier();
    v49 = 138543874;
    v50 = v35;
    v51 = 2112;
    v52 = v12;
    v53 = 2114;
    v54 = v6;
    v36 = "%{public}@Passed in value: %@ is not a number for integer setting: %{public}@";
    goto LABEL_34;
  }

  if ([MEMORY[0x277CD1790] isKeyPathForTapAssistanceSelectionSettingType:v6])
  {
    v21 = v7;
    if (v21)
    {
      v10 = v21;
      v22 = [MEMORY[0x277CD1790] itemIndexWithTapAssistanceSelectionItem:v21];
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      v24 = [MEMORY[0x277CD1790] scaleUpNumberSettingValue:v23];
      v25 = [v24 integerValue];

      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
        v49 = 138544130;
        v50 = v29;
        v51 = 2112;
        v52 = v10;
        v53 = 2112;
        v54 = v30;
        v55 = 2114;
        v56 = v6;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Updating legacy selection item index value %@ to %@: %{public}@", &v49, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [objc_alloc(MEMORY[0x277CD1DB8]) initWithIntegerValue:v25];

      goto LABEL_37;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      v49 = 138543874;
      v50 = v48;
      v51 = 2112;
      v52 = 0;
      v53 = 2114;
      v54 = v6;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Passed in value: %@ is not a selection item for setting: %{public}@", &v49, 0x20u);
    }

    goto LABEL_36;
  }

  v37 = [MEMORY[0x277CD1790] languageKeyPaths];
  v38 = [v37 containsObject:v7];

  if (v38)
  {
    v39 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v10 = v40;

    if (!v10)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = HMFGetLogIdentifier();
        v49 = 138543618;
        v50 = v44;
        v51 = 2112;
        v52 = v39;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Passed value = %@, is not a language setting", &v49, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
    }

    v11 = [(HMDLegacyAccessorySettingsAdaptor *)self _transformLegacyLanguageSettingValueToImmutableSetting:v10];
    goto LABEL_31;
  }

  v31 = 0;
LABEL_38:

  v45 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)updateSettingWithKeyPath:(id)a3 settingValue:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDLegacyAccessorySettingsAdaptor *)self _settingValueForKeyPath:v8 value:v9];
  if (v11)
  {
    v12 = [(HMDLegacyAccessorySettingsAdaptor *)self currentAccessorySettingsController];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v8;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending update %{public}@ to controller", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [v12 updateSettingWithKeyPath:v8 settingValue:v11 completion:v10];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v22;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No current settings controller.", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v10[2](v10, v23);

      v12 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain setting value from given legacy value.", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v10[2](v10, v12);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startup
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDLegacyAccessorySettingsAdaptor *)v4 homeUUID];
    v8 = [(HMDLegacyAccessorySettingsAdaptor *)v4 accessoryUUID];
    *buf = 138543874;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Subscribing to home: %@, accessory: %@ keyPaths on startup.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [MEMORY[0x277CD1790] defaultSettingsAllKeyPaths];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke;
  v22[3] = &unk_279729D80;
  v22[4] = v4;
  v10 = [v9 na_map:v22];

  v11 = [MEMORY[0x277CD1790] languageKeyPaths];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_2;
  v21[3] = &unk_279729D80;
  v21[4] = v4;
  v12 = [v11 na_map:v21];
  v13 = [v12 arrayByAddingObjectsFromArray:v10];

  if (v13 && [v13 count])
  {
    v14 = [(HMDLegacyAccessorySettingsAdaptor *)v4 subscriptionProvider];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_3;
    v20[3] = &unk_279734EB8;
    v20[4] = v4;
    [v14 changeRegistrationsForConsumer:v4 topicFilterAdditions:v13 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@No default settings keypaths are found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 homeUUID];
  v6 = [*(a1 + 32) accessoryUUID];
  v7 = MEMORY[0x259C01CC0](v5, v6, v4);

  return v7;
}

id __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 homeUUID];
  v6 = [*(a1 + 32) accessoryUUID];
  v7 = MEMORY[0x259C01CC0](v5, v6, v4);

  return v7;
}

void __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_2_4;
  block[3] = &unk_279734960;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_2_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_3;
    v5[3] = &unk_279729DD0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v2;
    v7 = *(a1 + 48);
    [v4 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v5];
  }
}

void __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_3(id *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = [objc_opt_class() parsedBoolSettingEvent:v6 topic:v5];
  v9 = v8;
  if (v8)
  {
    v12 = a1 + 4;
    v10 = a1[4];
    v11 = v12[1];
    v13 = [v8 keyPath];
    [v11 legacySettingsAdaptor:v10 didLoadSettingKeyPath:v13 BOOLValue:{objc_msgSend(v9, "BOOLValue")}];
  }

  else
  {
    v14 = a1[4];
    v15 = [objc_opt_class() parsedLanguageSetting:v6 topic:v5];
    if (v15)
    {
      v16 = [a1[4] currentAccessorySettingsController];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_4;
      v30[3] = &unk_279729DA8;
      v30[4] = a1[4];
      v31 = a1[6];
      v32 = a1[5];
      v33 = v15;
      v17 = v15;
      [v16 languageValueListWithCompletion:v30];
    }

    else
    {
      v18 = [objc_opt_class() parsedIntegerSettingEvent:v6 topic:v5];
      if (v18)
      {
        v19 = v18;
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "integerValue")}];
        v23 = a1 + 4;
        v21 = a1[4];
        v22 = v23[1];
        v24 = [v19 keyPath];
        [v22 legacySettingsAdaptor:v21 didLoadSettingKeyPath:v24 numberValue:v20];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = a1[4];
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v28;
          v36 = 2114;
          v37 = v5;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Parsed setting for topic%{public}@ is not of {Integer, Bool, Language}", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __44__HMDLegacyAccessorySettingsAdaptor_startup__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@available language fetch returned Error =%@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = [*(a1 + 56) keyPath];
    v15 = [*(a1 + 56) languageValue];
    [v13 legacySettingsAdaptor:v12 didLoadSettingKeyPath:v14 selectedLanguageValue:v15 availableLanguageList:v5];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDLegacyAccessorySettingsAdaptor)initWithQueue:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5 settingsController:(id)a6 subscriptionProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = HMDLegacyAccessorySettingsAdaptor;
  v18 = [(HMDLegacyAccessorySettingsAdaptor *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v19->_homeUUID, a4);
    objc_storeStrong(&v19->_accessoryUUID, a5);
    objc_storeWeak(&v19->_currentAccessorySettingsController, v16);
    objc_storeStrong(&v19->_subscriptionProvider, a7);
  }

  return v19;
}

+ (id)parsedLanguageListSetting:(id)a3 topic:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];
  v10 = v9;
  if (!v9 || ([v9 accessorySettingKeyPath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(@"root.siri.availableLanguages", "isEqual:", v11), v11, !v12))
  {
    v19 = 0;
    goto LABEL_18;
  }

  v31 = 0;
  v13 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v6 error:&v31];
  v14 = v31;
  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v18;
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@unable to decode event:%@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  if (v13)
  {
    v19 = v13;
    objc_opt_class();
    v20 = objc_opt_isKindOfClass() & 1;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v20)
    {
      goto LABEL_17;
    }

    v23 = objc_autoreleasePoolPush();
    v24 = v16;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      v35 = v7;
      v27 = "%{public}@Obtained setting but not of Language type. %{public}@";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v28 = v16;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      v35 = v7;
      v27 = "%{public}@Received setting change event but could not decode. %{public}@";
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v23);
  v19 = 0;
LABEL_17:

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)parsedLanguageSetting:(id)a3 topic:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];
  v10 = v9;
  if (!v9 || ([v9 accessorySettingKeyPath], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(@"root.siri.language", "isEqual:", v11), v11, !v12))
  {
    v15 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v13 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v6 error:&v27];
  v14 = v27;
  if (v13)
  {
    v15 = v13;
    objc_opt_class();
    v16 = objc_opt_isKindOfClass() & 1;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v16)
    {
      goto LABEL_15;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2114;
      v31 = v7;
      v23 = "%{public}@Obtained setting but not of Language type. %{public}@";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v24 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2114;
      v31 = v7;
      v23 = "%{public}@Received setting change event but could not decode. %{public}@";
      goto LABEL_13;
    }
  }

  objc_autoreleasePoolPop(v19);
  v15 = 0;
LABEL_15:

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)parsedIntegerSettingEvent:(id)a3 topic:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = MEMORY[0x277CD1790];
  v12 = [v9 accessorySettingKeyPath];
  if (![v11 isKeyPathForConstrainedNumberSettingType:v12])
  {
    v13 = MEMORY[0x277CD1790];
    v14 = [v10 accessorySettingKeyPath];
    LODWORD(v13) = [v13 isKeyPathForTapAssistanceSelectionSettingType:v14];

    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_5:
  v26 = 0;
  v15 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v6 error:&v26];
  v16 = v26;
  if (v15)
  {
    v17 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v23;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Obtained setting but not of bounded integer type. %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)parsedBoolSettingEvent:(id)a3 topic:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];
  v10 = v9;
  if (v9 && (v11 = MEMORY[0x277CD1790], [v9 accessorySettingKeyPath], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "isKeyPathForBooleanSettingType:", v12), v12, v11))
  {
    v31 = 0;
    v13 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v6 error:&v31];
    v14 = v31;
    if (v13)
    {
      v15 = v13;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (isKindOfClass)
      {
        v19 = v15;
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v27 = v30 = v24;
          *buf = 138543618;
          v33 = v27;
          v34 = 2114;
          v35 = v7;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Obtained setting but not of BOOL type. %{public}@", buf, 0x16u);

          v24 = v30;
        }

        objc_autoreleasePoolPop(v24);
        v19 = 0;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v23;
        v34 = 2114;
        v35 = v7;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received setting change event but could not decode. %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_91206 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_91206, &__block_literal_global_91207);
  }

  v3 = logCategory__hmf_once_v1_91208;

  return v3;
}

uint64_t __48__HMDLegacyAccessorySettingsAdaptor_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_91208;
  logCategory__hmf_once_v1_91208 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end