@interface HFMediaAccessoryCommonSettingsManager
- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)container home:(id)home;
- (id)_settingKeyPaths;
- (id)settingForKeyPath:(id)path;
- (id)settingValueForKeyPath:(id)path;
- (id)updateAccessorySettingWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPath:(id)path rawSettingValue:(id)value;
- (void)_subscribeToAccessorySettings;
- (void)_updateCachedValue:(id)value forKeyPath:(id)path;
- (void)_updateSettings:(id)settings;
- (void)addObserver:(id)observer;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)removeObserver:(id)observer;
- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier;
@end

@implementation HFMediaAccessoryCommonSettingsManager

- (HFMediaAccessoryCommonSettingsManager)initWithMediaProfileContainer:(id)container home:(id)home
{
  containerCopy = container;
  homeCopy = home;
  v21.receiver = self;
  v21.super_class = HFMediaAccessoryCommonSettingsManager;
  v9 = [(HFMediaAccessoryCommonSettingsManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, container);
    objc_storeStrong(&v10->_home, home);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = weakObjectsHashTable;

    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v13 homeManager];
    homeManager = v10->_homeManager;
    v10->_homeManager = homeManager;

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    accessorySettingsDataSource = [v16 accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v10];

    hf_accessorySettingsController = [(HMHomeManager *)v10->_homeManager hf_accessorySettingsController];
    settingsController = v10->_settingsController;
    v10->_settingsController = hf_accessorySettingsController;

    [(HFMediaAccessoryCommonSettingsManager *)v10 _subscribeToAccessorySettings];
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
  [observers removeObject:observerCopy];
}

- (id)updateAccessorySettingWithHomeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier keyPath:(id)path rawSettingValue:(id)value
{
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  pathCopy = path;
  valueCopy = value;
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v15 = [(HFMediaAccessoryCommonSettingsManager *)self settingForKeyPath:pathCopy];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 homeKitAccessorySettingValueForRawValue:valueCopy];
    settingsController = [(HFMediaAccessoryCommonSettingsManager *)self settingsController];
    v19 = [settingsController hf_updateAccessorySettingWithHomeIdentifier:identifierCopy accessoryIdentifier:accessoryIdentifierCopy keyPath:pathCopy settingValue:v17];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __126__HFMediaAccessoryCommonSettingsManager_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_rawSettingValue___block_invoke;
    v26[3] = &unk_277E00208;
    v20 = v14;
    v27 = v20;
    selfCopy = self;
    v29 = v17;
    v30 = pathCopy;
    v31 = valueCopy;
    v32 = accessoryIdentifierCopy;
    v21 = v17;
    v22 = [v19 addCompletionBlock:v26];

    futureWithNoResult = v20;
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v24 = futureWithNoResult;

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

- (id)settingValueForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSettingCachedValue];
LABEL_13:
    v6 = announceEnabledSettingCachedValue;
    goto LABEL_14;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSettingCachedValue];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    announceEnabledSettingCachedValue = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSettingCachedValue];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self announceEnabledSetting];
LABEL_13:
    v6 = announceEnabledSetting;
    goto LABEL_14;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self audioAnalysisEnabledSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self heySiriSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self tapToAccessSiriSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self airPlayEnabledSetting];
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    announceEnabledSetting = [(HFMediaAccessoryCommonSettingsManager *)self doorbellChimeEnabledSetting];
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
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  _settingKeyPaths = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  accessorySettingsDataSource = [v7 accessorySettingsDataSource];
  home = [(HFMediaAccessoryCommonSettingsManager *)self home];
  uniqueIdentifier2 = [home uniqueIdentifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HFMediaAccessoryCommonSettingsManager__subscribeToAccessorySettings__block_invoke;
  v13[3] = &unk_277DF2748;
  v14 = _settingKeyPaths;
  v15 = uniqueIdentifier;
  v11 = uniqueIdentifier;
  v12 = _settingKeyPaths;
  [accessorySettingsDataSource hf_subscribeToAccessorySettingsWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:v11 keyPaths:v12 options:0 completionHandler:v13];
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

- (void)_updateSettings:(id)settings
{
  v52 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = settings;
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
        keyPath = [v8 keyPath];
        v10 = [keyPath isEqualToString:HFAllowHeySiriSettingKeyPath];

        if (v10)
        {
          [(HFMediaAccessoryCommonSettingsManager *)self setHeySiriSetting:v8];
        }

        else
        {
          keyPath2 = [v8 keyPath];
          v12 = [keyPath2 isEqualToString:HFTapToAccessSiriSettingKeyPath];

          if (v12)
          {
            [(HFMediaAccessoryCommonSettingsManager *)self setTapToAccessSiriSetting:v8];
          }

          else
          {
            keyPath3 = [v8 keyPath];
            v14 = [keyPath3 isEqualToString:HFAnnounceEnabledKeyPath];

            if (v14)
            {
              [(HFMediaAccessoryCommonSettingsManager *)self setAnnounceEnabledSetting:v8];
            }

            else
            {
              keyPath4 = [v8 keyPath];
              v16 = [keyPath4 isEqualToString:HFAudioAnalysisEnabledKeyPath];

              if (v16)
              {
                [(HFMediaAccessoryCommonSettingsManager *)self setAudioAnalysisEnabledSetting:v8];
              }

              else
              {
                keyPath5 = [v8 keyPath];
                v18 = [keyPath5 isEqualToString:HFAirPlayEnabledSettingKeyPath];

                if (v18)
                {
                  [(HFMediaAccessoryCommonSettingsManager *)self setAirPlayEnabledSetting:v8];
                }

                else
                {
                  keyPath6 = [v8 keyPath];
                  v20 = [keyPath6 isEqualToString:HFDoorbellChimeEnabledKeyPath];

                  if (v20)
                  {
                    [(HFMediaAccessoryCommonSettingsManager *)self setDoorbellChimeEnabledSetting:v8];
                  }
                }
              }
            }
          }
        }

        _settingKeyPaths = [(HFMediaAccessoryCommonSettingsManager *)self _settingKeyPaths];
        keyPath7 = [v8 keyPath];
        v23 = [_settingKeyPaths containsObject:keyPath7];

        if (v23)
        {
          v40 = v7;
          value = [v8 value];
          v41 = v8;
          keyPath8 = [v8 keyPath];
          [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:value forKeyPath:keyPath8];

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          observers = [(HFMediaAccessoryCommonSettingsManager *)self observers];
          v27 = [observers countByEnumeratingWithState:&v42 objects:v50 count:16];
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
                  objc_enumerationMutation(observers);
                }

                v31 = *(*(&v42 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
                  keyPath9 = [v41 keyPath];
                  [v41 value];
                  v35 = v34 = self;
                  [v31 mediaProfileContainer:mediaProfileContainer didUpdateSettingKeypath:keyPath9 value:v35];

                  self = v34;
                }
              }

              v28 = [observers countByEnumeratingWithState:&v42 objects:v50 count:16];
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

- (void)_updateCachedValue:(id)value forKeyPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = pathCopy;
    v14 = 2112;
    v15 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating Cached Value for keyPath [%@] to [%@]", &v12, 0x16u);
  }

  if ([pathCopy isEqualToString:HFAnnounceEnabledKeyPath])
  {
    v10 = 104;
LABEL_15:
    objc_storeStrong((&self->super.isa + v10), value);
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:HFAudioAnalysisGroupKeyPath])
  {
    v10 = 112;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFTapToAccessSiriSettingKeyPath])
  {
    v10 = 72;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFAllowHeySiriSettingKeyPath])
  {
    v10 = 96;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFAirPlayEnabledSettingKeyPath])
  {
    v10 = 120;
    goto LABEL_15;
  }

  if ([pathCopy isEqualToString:HFDoorbellChimeEnabledKeyPath])
  {
    v10 = 128;
    goto LABEL_15;
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  settingsCopy = settings;
  identifierCopy = identifier;
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  LODWORD(mediaProfileContainer) = [identifierCopy isEqual:uniqueIdentifier];
  if (mediaProfileContainer)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateSettings:settingsCopy];
  }
}

- (void)updateSettingValue:(id)value forKeyPath:(id)path accessoryIdentifier:(id)identifier
{
  valueCopy = value;
  pathCopy = path;
  identifierCopy = identifier;
  mediaProfileContainer = [(HFMediaAccessoryCommonSettingsManager *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  uniqueIdentifier = [hf_backingAccessory uniqueIdentifier];

  LODWORD(mediaProfileContainer) = [identifierCopy isEqual:uniqueIdentifier];
  if (mediaProfileContainer)
  {
    [(HFMediaAccessoryCommonSettingsManager *)self _updateCachedValue:valueCopy forKeyPath:pathCopy];
  }
}

@end