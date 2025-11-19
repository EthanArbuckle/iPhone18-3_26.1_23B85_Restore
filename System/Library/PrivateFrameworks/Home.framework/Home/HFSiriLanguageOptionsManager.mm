@interface HFSiriLanguageOptionsManager
- (BOOL)shouldShowSettingsEntity:(id)a3;
- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)a3 accessoryIdentifier:(id)a4 home:(id)a5;
- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)a3 sourceItem:(id)a4 home:(id)a5;
- (id)_settingKeyPaths;
- (id)availableSiriLanguageOptions;
- (id)preferredOutputVoiceAccentOptionsForSelectedOption;
- (id)preferredOutputVoiceOptionsForSelectedOption;
- (id)preferredRecognitionLanguageOptionsForSelectedOption;
- (id)updateSelectedLanguageOption:(id)a3;
- (id)updateSelectedLanguageOption:(id)a3 accessoryIdentifier:(id)a4;
- (void)_fetchAvailableLanguagesAndGenerateOptions;
- (void)_subscribeToSiriLanguageSettings;
- (void)_updateSettingsAndNotifyObservers:(id)a3;
- (void)addObserver:(id)a3;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation HFSiriLanguageOptionsManager

- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)a3 sourceItem:(id)a4 home:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 accessories];
  v11 = [v10 anyObject];

  v12 = [v11 uniqueIdentifier];
  v13 = [(HFSiriLanguageOptionsManager *)self initWithSettingsController:v9 accessoryIdentifier:v12 home:v8];

  return v13;
}

- (HFSiriLanguageOptionsManager)initWithSettingsController:(id)a3 accessoryIdentifier:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = HFSiriLanguageOptionsManager;
  v12 = [(HFSiriLanguageOptionsManager *)&v20 init];
  if (v12)
  {
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    v14 = [v13 accessorySettingsDataSource];
    [v14 addObserver:v12];

    objc_storeStrong(&v12->_settingsController, a3);
    objc_storeStrong(&v12->_home, a5);
    v15 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = v15;

    objc_storeStrong(&v12->_accessoryIdentifier, a4);
    v17 = objc_alloc_init(MEMORY[0x277D2C900]);
    availableLanguagesFuture = v12->_availableLanguagesFuture;
    v12->_availableLanguagesFuture = v17;

    [(HFSiriLanguageOptionsManager *)v12 _fetchAvailableLanguagesAndGenerateOptions];
    [(HFSiriLanguageOptionsManager *)v12 _subscribeToSiriLanguageSettings];
  }

  return v12;
}

- (id)availableSiriLanguageOptions
{
  v3 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];

  if (v3)
  {
    v4 = MEMORY[0x277D2C900];
    v5 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    v6 = [(HFSiriLanguageOptionsManager *)self availableLanguagesFuture];
  }

  return v6;
}

- (id)preferredRecognitionLanguageOptionsForSelectedOption
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 voiceNameWithDefaultFallback];
        v11 = [v9 outputLanguage];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [v11 stringByAppendingString:v10];
          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke;
  v20[3] = &unk_277DFC8B0;
  v20[4] = self;
  v21 = v3;
  v16 = v3;
  v17 = [v15 flatMap:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke_2;
  v10 = &unk_277DF53F8;
  v3 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = [a2 na_filter:&v7];
  v5 = [MEMORY[0x277D2C900] futureWithResult:{v4, v7, v8, v9, v10, v11}];

  return v5;
}

uint64_t __84__HFSiriLanguageOptionsManager_preferredRecognitionLanguageOptionsForSelectedOption__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [*(a1 + 32) selectedLanguageOption];
  v6 = [v5 outputVoice];
  v7 = [v3 recognitionLanguage];
  v8 = [v4 voiceSimilarToVoice:v6 inSiriSessionLanguage:v7];

  v9 = [v8 name];
  v10 = [v8 languageCode];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || ([v10 stringByAppendingString:v9], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(*(a1 + 40), "containsObject:", v13), v13, !v14))
  {
    v21 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v3 recognitionLanguage];
      v25 = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Most similar voice %@ in recognition language %@ not available. Using default for recognition language", &v25, 0x16u);
    }

    v20 = [v3 isDefaultVoiceForRecognitionLanguage];
  }

  else
  {
    v15 = [v3 voiceNameWithDefaultFallback];
    v16 = [v8 name];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = HFLogForCategory(0x3EuLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(a1 + 32) selectedLanguageOption];
        v25 = 138412546;
        v26 = v3;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Option %@ most similar to current selected option %@", &v25, 0x16u);
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)preferredOutputVoiceAccentOptionsForSelectedOption
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke;
  v6[3] = &unk_277DFC8D8;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 recognitionLanguage];
        v11 = [*(a1 + 32) selectedLanguageOption];
        v12 = [v11 recognitionLanguage];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          v14 = [v9 outputLanguage];
          v15 = [v23 na_objectForKey:v14 withDefaultValue:&__block_literal_global_127];
          [v15 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v16 = MEMORY[0x277CBEB98];
  v17 = [v23 allValues];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_3;
  v24[3] = &unk_277DF5488;
  v24[4] = *(a1 + 32);
  v18 = [v17 na_map:v24];
  v19 = [v16 setWithArray:v18];

  v20 = [MEMORY[0x277D2C900] futureWithResult:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_4;
  v7[3] = &unk_277DF5420;
  v7[4] = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v7];
  if (!v4)
  {
    v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_10_7];
    if (!v4)
    {
      v4 = [v3 anyObject];
    }
  }

  v5 = v4;

  return v5;
}

uint64_t __82__HFSiriLanguageOptionsManager_preferredOutputVoiceAccentOptionsForSelectedOption__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEF2D8];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v6 = [*(a1 + 32) selectedLanguageOption];
  v7 = [v6 outputVoice];
  v8 = [v4 outputLanguage];
  v9 = [v5 voiceSimilarToVoice:v7 inSiriSessionLanguage:v8];

  v10 = [v4 voiceNameWithDefaultFallback];

  v11 = [v9 name];
  v12 = [v10 isEqualToString:v11];

  return v12;
}

- (id)preferredOutputVoiceOptionsForSelectedOption
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke;
  v6[3] = &unk_277DFC8D8;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

id __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke_2;
  v5[3] = &unk_277DF5420;
  v5[4] = *(a1 + 32);
  v2 = [a2 na_filter:v5];
  v3 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v3;
}

uint64_t __76__HFSiriLanguageOptionsManager_preferredOutputVoiceOptionsForSelectedOption__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recognitionLanguage];
  v5 = [*(a1 + 32) selectedLanguageOption];
  v6 = [v5 recognitionLanguage];
  if ([v4 isEqualToString:v6])
  {
    v7 = [v3 outputLanguage];
    v8 = [*(a1 + 32) selectedLanguageOption];
    v9 = [v8 outputLanguage];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSiriLanguageOptionsManager *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSiriLanguageOptionsManager *)self observers];
  [v5 removeObject:v4];
}

- (id)updateSelectedLanguageOption:(id)a3
{
  v4 = a3;
  v5 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v6 = [(HFSiriLanguageOptionsManager *)self updateSelectedLanguageOption:v4 accessoryIdentifier:v5];

  return v6;
}

- (id)updateSelectedLanguageOption:(id)a3 accessoryIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HFSiriLanguageOptionsManager *)self availableSiriLanguageOptions];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke;
  v14[3] = &unk_277DFC950;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v18 = a2;
  v10 = v8;
  v11 = v7;
  v12 = [v9 flatMap:v14];

  return v12;
}

id __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__18;
  v40 = __Block_byref_object_dispose__18;
  v41 = [*(a1 + 32) settingLanguageValue];
  if (v37[5])
  {
    goto LABEL_3;
  }

  v5 = [*(a1 + 32) allSerializedRepresentations];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_12;
  v33[3] = &unk_277DFC900;
  v6 = v5;
  v34 = v6;
  v35 = &v36;
  [v3 enumerateObjectsUsingBlock:v33];

  if (v37[5])
  {
LABEL_3:
    v7 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = [*(a1 + 40) home];
      v11 = [v10 uniqueIdentifier];
      v12 = [*(a1 + 40) accessoryIdentifier];
      *buf = 138413058;
      v43 = v8;
      v44 = 2112;
      v45 = v9;
      v46 = 2112;
      v47 = v11;
      v48 = 2112;
      v49 = v12;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Now calling updateAccessorySettingWithHomeIdentifier: for HomeID %@ Accessory ID %@", buf, 0x2Au);
    }

    v13 = [*(a1 + 40) settingsController];
    v14 = [*(a1 + 40) home];
    v15 = [v14 uniqueIdentifier];
    v16 = [v13 hf_updateAccessorySettingWithHomeIdentifier:v15 accessoryIdentifier:*(a1 + 48) keyPath:HFSiriLanguageSettingKeyPath settingValue:v37[5]];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_15;
    v27[3] = &unk_277DFC928;
    v26 = *(a1 + 32);
    v17 = v26.i64[0];
    v28 = vextq_s8(v26, v26, 8uLL);
    v19 = *(a1 + 48);
    v18 = *(a1 + 56);
    v31 = &v36;
    v32 = v18;
    v29 = v19;
    v20 = v4;
    v30 = v20;
    v21 = [v16 addCompletionBlock:v27];
    v22 = v20;
  }

  else
  {
    v25 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v22 = [v25 futureWithError:v16];
  }

  _Block_object_dispose(&v36, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_12(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 serializedRepresentation];
  v8 = [v6 indexOfObject:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v12 settingLanguageValue];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

void __81__HFSiriLanguageOptionsManager_updateSelectedLanguageOption_accessoryIdentifier___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [*(a1 + 32) setSelectedLanguageOption:*(a1 + 40)];
    v5 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 72));
      v8 = [*(a1 + 32) observers];
      v9 = [v8 copy];
      *buf = 138412802;
      v32 = v6;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ self.observers: %@", buf, 0x20u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [*(a1 + 32) observers];
    v11 = [v10 copy];

    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v17 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 32);
              v19 = NSStringFromSelector(*(a1 + 72));
              v20 = *(a1 + 40);
              *buf = 138412802;
              v32 = v18;
              v33 = 2112;
              v34 = v19;
              v35 = 2112;
              v36 = v20;
              _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying observers: %@", buf, 0x20u);
            }

            [v16 siriLanguageOptionsManager:*(a1 + 32) selectedLanguageOptionDidChange:*(a1 + 40)];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v21 = +[HFHomeKitDispatcher sharedDispatcher];
    v22 = [v21 accessorySettingsDataSource];
    [v22 updateSettingValue:*(*(*(a1 + 64) + 8) + 40) forKeyPath:HFSiriLanguageSettingKeyPath accessoryIdentifier:*(a1 + 48)];

    v4 = 0;
  }

  v23 = *(a1 + 56);
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v4 == 0];
  [v23 finishWithResult:v24 error:v4];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAvailableLanguagesAndGenerateOptions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HFSiriLanguageOptionsManager *)self _settingKeyPaths];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 accessorySettingsDataSource];
  v6 = [(HFSiriLanguageOptionsManager *)self home];
  v7 = [v6 uniqueIdentifier];
  v8 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v9 = [v5 hf_defaultSettingsWithHomeIdentifier:v7 accessoryIdentifier:v8 keyPaths:v3];

  v10 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "defaultSettings for Siri language option for accessoryUUID [%@] - keyPaths [%@] = [%@]", &v13, 0x20u);
  }

  [(HFSiriLanguageOptionsManager *)self _updateSettingsAndNotifyObservers:v9];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToSiriLanguageSettings
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 accessorySettingsDataSource];
  v5 = [(HFSiriLanguageOptionsManager *)self home];
  v6 = [v5 uniqueIdentifier];
  v7 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v8 = [(HFSiriLanguageOptionsManager *)self _settingKeyPaths];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFSiriLanguageOptionsManager__subscribeToSiriLanguageSettings__block_invoke;
  v9[3] = &unk_277DF2D08;
  v9[4] = self;
  [v4 hf_subscribeToAccessorySettingsWithHomeIdentifier:v6 accessoryIdentifier:v7 keyPaths:v8 options:0 completionHandler:v9];
}

void __64__HFSiriLanguageOptionsManager__subscribeToSiriLanguageSettings__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) _settingKeyPaths];
      v7 = [*(a1 + 32) accessoryIdentifier];
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

- (void)_updateSettingsAndNotifyObservers:(id)a3
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v65 = NSStringFromSelector(a2);
    v66 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
    *buf = 138413058;
    v91 = self;
    v92 = 2112;
    v93 = v65;
    v94 = 2112;
    v95 = v4;
    v96 = 2112;
    v97 = v66;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "%@:%@ Updating language settings and notifying observers: %@ for accessoryID [%@]", buf, 0x2Au);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v4;
  v6 = [(HFSiriLanguageOption *)obj countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0x277CBE000uLL;
    v9 = 0x277CD1000uLL;
    v69 = *v84;
    do
    {
      v10 = 0;
      v67 = v7;
      do
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * v10);
        v12 = [v11 value];
        v13 = *(v8 + 2656);
        objc_opt_class();
        v14 = v12;
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v17 = *(v9 + 3520);
        objc_opt_class();
        v18 = v14;
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v73 = v20;
        if (v16)
        {
          v21 = MEMORY[0x277CBEB98];
          v22 = [v16 na_map:&__block_literal_global_25_8];
          v23 = [v21 setWithArray:v22];

          v24 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
          v25 = v23;
          v70 = v10;
          if (v24 == v25)
          {
            v26 = 1;
          }

          else if (v24)
          {
            v26 = [(HFSiriLanguageOption *)v24 isEqual:v25];
          }

          else
          {
            v26 = 0;
          }

          [(HFSiriLanguageOptionsManager *)self setAvailableLanguageOptions:v25];
          v43 = HFLogForCategory(0x28uLL);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v55 = NSStringFromSelector(a2);
            *buf = 138412802;
            v91 = self;
            v92 = 2112;
            v93 = v55;
            v94 = 1024;
            LODWORD(v95) = v26 ^ 1;
            v7 = v67;
            _os_log_debug_impl(&dword_20D9BF000, v43, OS_LOG_TYPE_DEBUG, "%@:%@ Available languages changed: %{BOOL}d", buf, 0x1Cu);
          }

          v71 = v18;
          v72 = v16;

          if ((v26 & 1) == 0)
          {
            v44 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              v56 = NSStringFromSelector(a2);
              v57 = [(HFSiriLanguageOptionsManager *)self observers];
              v58 = [v57 copy];
              *buf = 138412802;
              v91 = self;
              v92 = 2112;
              v93 = v56;
              v94 = 2112;
              v95 = v58;
              _os_log_debug_impl(&dword_20D9BF000, v44, OS_LOG_TYPE_DEBUG, "%@:%@ self.observers: %@", buf, 0x20u);
            }

            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v45 = [(HFSiriLanguageOptionsManager *)self observers];
            v46 = [v45 copy];

            v47 = [v46 countByEnumeratingWithState:&v79 objects:v88 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v80;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v80 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(*(&v79 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v52 = HFLogForCategory(0x28uLL);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                    {
                      v53 = NSStringFromSelector(a2);
                      *buf = 138412802;
                      v91 = self;
                      v92 = 2112;
                      v93 = v53;
                      v94 = 2112;
                      v95 = v25;
                      _os_log_debug_impl(&dword_20D9BF000, v52, OS_LOG_TYPE_DEBUG, "%@:%@ Notifying observers: %@", buf, 0x20u);
                    }

                    [v51 siriLanguageOptionsManager:self availableLanguageOptionsDidChange:v25];
                  }
                }

                v48 = [v46 countByEnumeratingWithState:&v79 objects:v88 count:16];
              }

              while (v48);
            }

            v8 = 0x277CBE000;
            v9 = 0x277CD1000;
            v7 = v67;
          }

          v35 = [(HFSiriLanguageOptionsManager *)self availableLanguagesFuture];
          v54 = [(HFSiriLanguageOptionsManager *)self availableLanguageOptions];
          [v35 finishWithResult:v54];

          goto LABEL_57;
        }

        if (v20)
        {
          v27 = [v11 keyPath];
          v28 = [v27 isEqualToString:HFSiriLanguageSettingKeyPath];

          if (v28)
          {
            v29 = HFLogForCategory(0x28uLL);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v59 = NSStringFromSelector(a2);
              *buf = 138412802;
              v91 = self;
              v92 = 2112;
              v93 = v59;
              v94 = 2112;
              v95 = v73;
              _os_log_debug_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEBUG, "%@:%@ siriLanguageSelection: %@", buf, 0x20u);
            }

            v30 = [(HFSiriLanguageOptionsManager *)self selectedLanguageOption];
            v31 = [v30 settingLanguageValue];
            v32 = [v31 isEqual:v73];

            if ((v32 & 1) == 0)
            {
              v71 = v18;
              v72 = 0;
              v25 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v73];
              [(HFSiriLanguageOptionsManager *)self setSelectedLanguageOption:v25];
              v33 = HFLogForCategory(0x28uLL);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v60 = NSStringFromSelector(a2);
                [(HFSiriLanguageOptionsManager *)self observers];
                v62 = v61 = v10;
                v63 = [v62 copy];
                *buf = 138412802;
                v91 = self;
                v92 = 2112;
                v93 = v60;
                v94 = 2112;
                v95 = v63;
                _os_log_debug_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEBUG, "%@:%@ self.observers: %@", buf, 0x20u);

                v10 = v61;
              }

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v34 = [(HFSiriLanguageOptionsManager *)self observers];
              v35 = [v34 copy];

              v36 = [v35 countByEnumeratingWithState:&v75 objects:v87 count:16];
              if (v36)
              {
                v37 = v36;
                v70 = v10;
                v38 = *v76;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v76 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v75 + 1) + 8 * j);
                    if (objc_opt_respondsToSelector())
                    {
                      v41 = HFLogForCategory(0x28uLL);
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                      {
                        v42 = NSStringFromSelector(a2);
                        *buf = 138412802;
                        v91 = self;
                        v92 = 2112;
                        v93 = v42;
                        v94 = 2112;
                        v95 = v25;
                        _os_log_debug_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEBUG, "%@:%@ Notifying observers: %@", buf, 0x20u);
                      }

                      [v40 siriLanguageOptionsManager:self selectedLanguageOptionDidChange:v25];
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v75 objects:v87 count:16];
                }

                while (v37);
                v8 = 0x277CBE000;
                v9 = 0x277CD1000;
                v7 = v67;
LABEL_57:
                v10 = v70;
              }

              v18 = v71;
              v16 = v72;
            }
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [(HFSiriLanguageOption *)obj countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v7);
  }

  v64 = *MEMORY[0x277D85DE8];
}

HFSiriLanguageOption *__66__HFSiriLanguageOptionsManager__updateSettingsAndNotifyObservers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFSiriLanguageOption alloc] initWithHomeKitSettingLanguageValue:v2];

  return v3;
}

- (id)_settingKeyPaths
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = HFSiriAvailableLanguagesSettingKeyPath;
  v5[1] = HFSiriLanguageSettingKeyPath;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldShowSettingsEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 keyPath];
  v6 = [v5 isEqualToString:@"root.siri.recognitionLanguage"];

  if (v6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v7 = [(HFSiriLanguageOptionsManager *)self preferredRecognitionLanguageOptionsForSelectedOption];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke;
    v18[3] = &unk_277DFC998;
    v18[4] = &v19;
    v8 = [v7 flatMap:v18];
  }

  else
  {
    v9 = [v4 keyPath];
    v10 = [v9 isEqualToString:@"root.siri.outputVoice"];

    if (!v10)
    {
      v14 = 1;
      goto LABEL_7;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v11 = [(HFSiriLanguageOptionsManager *)self preferredOutputVoiceOptionsForSelectedOption];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_2;
    v17[3] = &unk_277DFC998;
    v17[4] = &v19;
    v12 = [v11 flatMap:v17];

    v7 = [(HFSiriLanguageOptionsManager *)self preferredOutputVoiceAccentOptionsForSelectedOption];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_3;
    v16[3] = &unk_277DFC998;
    v16[4] = &v19;
    v13 = [v7 flatMap:v16];
  }

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
LABEL_7:

  return v14 & 1;
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 count] > 1;
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = [a2 count] > 1;
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

uint64_t __57__HFSiriLanguageOptionsManager_shouldShowSettingsEntity___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a2 count] > 1;
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 24) = v3;
  v5 = MEMORY[0x277D2C900];

  return [v5 futureWithNoResult];
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(HFSiriLanguageOptionsManager *)self accessoryIdentifier];
  v8 = [v6 hmf_isEqualToUUID:v7];

  if (v8)
  {
    [(HFSiriLanguageOptionsManager *)self _updateSettingsAndNotifyObservers:v9];
  }
}

@end