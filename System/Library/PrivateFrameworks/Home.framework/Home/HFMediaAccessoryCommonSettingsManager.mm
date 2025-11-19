@interface HFMediaAccessoryCommonSettingsManager
- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)a3 home:(id)a4;
- (id)_settingKeyPaths;
- (id)settingForKeyPath:(id)a3;
- (id)settingValueForKeyPath:(id)a3;
- (id)updateAccessorySettingWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPath:(id)a5 rawSettingValue:(id)a6;
- (void)_subscribeToAccessorySettings;
- (void)_updateCachedValue:(id)a3 forKeyPath:(id)a4;
- (void)_updateSettings:(id)a3;
- (void)addObserver:(id)a3;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4;
- (void)removeObserver:(id)a3;
- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5;
@end

@implementation HFMediaAccessoryCommonSettingsManager

- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = HFMediaAccessoryCommonSettingsManager;
  v9 = [(HFMediaAccessoryCommonSettingsManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, a3);
    objc_storeStrong(&v10->_home, a4);
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    v14 = [v13 homeManager];
    homeManager = v10->_homeManager;
    v10->_homeManager = v14;

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    v17 = [v16 accessorySettingsDataSource];
    [v17 addObserver:v10];

    v18 = [(HMHomeManager *)v10->_homeManager hf_accessorySettingsController];
    settingsController = v10->_settingsController;
    v10->_settingsController = v18;

    [(HFMediaAccessoryCommonSettingsManager *)v10 _subscribeToAccessorySettings];
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [v5 removeObject:v4];
}

- (id)updateAccessorySettingWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPath:(id)a5 rawSettingValue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = [(HFMediaAccessoryCommonSettingsManager *)self settingForKeyPath:v12];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 homeKitAccessorySettingValueForRawValue:v13];
    v18 = [(HFMediaAccessoryCommonSettingsManager *)self settingsController];
    v19 = [v18 hf_updateAccessorySettingWithHomeIdentifier:v10 accessoryIdentifier:v11 keyPath:v12 settingValue:v17];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __126__HFMediaAccessoryCommonSettingsManager_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_rawSettingValue___block_invoke;
    v26[3] = &unk_277E00208;
    v20 = v14;
    v27 = v20;
    v28 = self;
    v29 = v17;
    v30 = v12;
    v31 = v13;
    v32 = v11;
    v21 = v17;
    v22 = [v19 addCompletionBlock:v26];

    v23 = v20;
  }

  else
  {
    v23 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v24 = v23;

  return v24;
}

uint64_t __126__HFMediaAccessoryCommonSettingsManager_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_rawSettingValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    return [v4 finishWithError:?];
  }

  else
  {
    [*(a1 + 40) _updateCachedValue:*(a1 + 48) forKeyPath:*(a1 + 56)];
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7 = [v6 accessorySettingsDataSource];
    [v7 updateSettingValue:*(a1 + 64) forKeyPath:*(a1 + 56) accessoryIdentifier:*(a1 + 72)];

    v8 = *(a1 + 32);

    return [v8 finishWithNoResult];
  }
}

- (id)settingValueForKeyPath:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:HFAnnounceEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSettingCachedValue];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSettingCachedValue];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)settingForKeyPath:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:HFAnnounceEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSetting];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSetting];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSetting];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSetting];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSetting];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    v5 = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSetting];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)_settingKeyPaths
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = HFAllowHeySiriSettingKeyPath;
  v5[1] = HFTapToAccessSiriSettingKeyPath;
  v5[2] = HFAnnounceEnabledKeyPath;
  v5[3] = HFAirPlayEnabledSettingKeyPath;
  v5[4] = HFDoorbellChimeEnabledKeyPath;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_subscribeToAccessorySettings
{
  v3 = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  v4 = [v3 hf_backingAccessory];
  v5 = [v4 uniqueIdentifier];

  v6 = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = [v7 accessorySettingsDataSource];
  v9 = [(HFMediaAccessoryCommonSettingsManager *)self home];
  v10 = [v9 uniqueIdentifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HFMediaAccessoryCommonSettingsManager__subscribeToAccessorySettings__block_invoke;
  v13[3] = &unk_277DF2748;
  v14 = v6;
  v15 = v5;
  v11 = v5;
  v12 = v6;
  [v8 hf_subscribeToAccessorySettingsWithHomeIdentifier:v10 accessoryIdentifier:v11 keyPaths:v12 options:0 completionHandler:v13];
}

void __70__HFMediaAccessoryCommonSettingsManager__subscribeToAccessorySettings__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Error subscribing to keyPaths [%@] for accessoryIdentifier [%@] - Error - [%@]", &v8, 0x20u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateSettings:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    v37 = *v47;
    do
    {
      v7 = 0;
      v38 = v5;
      do
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * v7);
        v9 = [v8 keyPath];
        v10 = [v9 isEqualToString:HFAllowHeySiriSettingKeyPath];

        if (v10)
        {
          [(HFMediaAccessoryCommonSettingsManager *)self setHeySiriSetting:v8];
        }

        else
        {
          v11 = [v8 keyPath];
          v12 = [v11 isEqualToString:HFTapToAccessSiriSettingKeyPath];

          if (v12)
          {
            [(HFMediaAccessoryCommonSettingsManager *)self setTapToAccessSiriSetting:v8];
          }

          else
          {
            v13 = [v8 keyPath];
            v14 = [v13 isEqualToString:HFAnnounceEnabledKeyPath];

            if (v14)
            {
              [(HFMediaAccessoryCommonSettingsManager *)self setAnnounceEnabledSetting:v8];
            }

            else
            {
              v15 = [v8 keyPath];
              v16 = [v15 isEqualToString:HFAudioAnalysisEnabledKeyPath];

              if (v16)
              {
                [(HFMediaAccessoryCommonSettingsManager *)self setAudioAnalysisEnabledSetting:v8];
              }

              else
              {
                v17 = [v8 keyPath];
                v18 = [v17 isEqualToString:HFAirPlayEnabledSettingKeyPath];

                if (v18)
                {
                  [(HFMediaAccessoryCommonSettingsManager *)self setAirPlayEnabledSetting:v8];
                }

                else
                {
                  v19 = [v8 keyPath];
                  v20 = [v19 isEqualToString:HFDoorbellChimeEnabledKeyPath];

                  if (v20)
                  {
                    [(HFMediaAccessoryCommonSettingsManager *)self setDoorbellChimeEnabledSetting:v8];
                  }
                }
              }
            }
          }
        }

        v21 = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
        v22 = [v8 keyPath];
        v23 = [v21 containsObject:v22];

        if (v23)
        {
          v40 = v7;
          v24 = [v8 value];
          v41 = v8;
          v25 = [v8 keyPath];
          [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:v24 forKeyPath:v25];

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v26 = [(HFMediaAccessoryCommonSettingsManager *)self observers];
          v27 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v43;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v43 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v42 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  v32 = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
                  v33 = [v41 keyPath];
                  [v41 value];
                  v35 = v34 = self;
                  [v31 mediaProfileContainer:v32 didUpdateSettingKeypath:v33 value:v35];

                  self = v34;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v28);
          }

          v6 = v37;
          v5 = v38;
          v7 = v40;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v5);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedValue:(id)a3 forKeyPath:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating Cached Value for keyPath [%@] to [%@]", &v12, 0x16u);
  }

  if ([v8 isEqualToString:HFAnnounceEnabledKeyPath])
  {
    v10 = 104;
LABEL_15:
    objc_storeStrong((&self->super.isa + v10), a3);
    goto LABEL_16;
  }

  if ([v8 isEqualToString:HFAudioAnalysisGroupKeyPath])
  {
    v10 = 112;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    v10 = 72;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    v10 = 96;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    v10 = 120;
    goto LABEL_15;
  }

  if ([v8 isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    v10 = 128;
    goto LABEL_15;
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  v8 = [v7 hf_backingAccessory];
  v9 = [v8 uniqueIdentifier];

  LODWORD(v7) = [v6 isEqual:v9];
  if (v7)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateSettings:v10];
  }
}

- (void)updateSettingValue:(id)a3 forKeyPath:(id)a4 accessoryIdentifier:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  v11 = [v10 hf_backingAccessory];
  v12 = [v11 uniqueIdentifier];

  LODWORD(v10) = [v9 isEqual:v12];
  if (v10)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:v13 forKeyPath:v8];
  }
}

@end