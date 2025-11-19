@interface HUSiriTriggerPhraseSettingDetailsItemManager
- (HUSiriTriggerPhraseSettingDetailsItemManager)initWithSourceItem:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)home;
- (id)updateSiriTriggerPhrase:(id)a3;
- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5;
@end

@implementation HUSiriTriggerPhraseSettingDetailsItemManager

- (HUSiriTriggerPhraseSettingDetailsItemManager)initWithSourceItem:(id)a3 delegate:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 copy];
  v12.receiver = self;
  v12.super_class = HUSiriTriggerPhraseSettingDetailsItemManager;
  v8 = [(HFItemManager *)&v12 initWithDelegate:v6 sourceItem:v7];

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)v8 home];
      *buf = 136315394;
      v14 = "[HUSiriTriggerPhraseSettingDetailsItemManager initWithSourceItem:delegate:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%s Current home = [%@]", buf, 0x16u);
    }
  }

  return v8;
}

- (id)updateSiriTriggerPhrase:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self hsOrJSItem];
  if (v6 == v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[HUSiriTriggerPhraseSettingDetailsItemManager updateSiriTriggerPhrase:]";
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Now Updating Siri Trigger Phrase Options to [%lu]", buf, 0x16u);
  }

  v9 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HUSiriTriggerPhraseSettingDetailsItemManager_updateSiriTriggerPhrase___block_invoke;
  v14[3] = &unk_277DBEFD8;
  v14[4] = self;
  v16 = v7;
  v10 = v5;
  v15 = v10;
  [v9 updateSiriPhraseOptions:v7 completion:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __72__HUSiriTriggerPhraseSettingDetailsItemManager_updateSiriTriggerPhrase___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[HUSiriTriggerPhraseSettingDetailsItemManager updateSiriTriggerPhrase:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%s Siri Trigger Phrase Options Update finished with error [%@]", buf, 0x16u);
  }

  if (v3)
  {
    v5 = MEMORY[0x277CBEC28];
  }

  else
  {
    v6 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__HUSiriTriggerPhraseSettingDetailsItemManager_updateSiriTriggerPhrase___block_invoke_2;
    v8[3] = &unk_277DC4940;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v8[5] = v7;
    [v6 dispatchHomeObserverMessage:v8 sender:0];

    v5 = MEMORY[0x277CBEC38];
  }

  [*(a1 + 40) finishWithResult:v5 error:v3];
}

void __72__HUSiriTriggerPhraseSettingDetailsItemManager_updateSiriTriggerPhrase___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  [v4 home:v5 didUpdateSiriTriggerPhraseOptions:*(a1 + 40)];
}

- (id)home
{
  objc_opt_class();
  v3 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 home];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HUSiriTriggerPhraseSettingDetailsItemManager;
    v7 = [(HFItemManager *)&v10 home];
  }

  v8 = v7;

  return v8;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v69[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = [v4 siriPhraseOptions];
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "siriPhraseOptions = [%lu]", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D14B38]);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke;
  v58[3] = &unk_277DB7478;
  v7 = v4;
  v59 = v7;
  v8 = [v6 initWithResultsBlock:v58];
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setHsOrJSItem:v8];

  v9 = objc_alloc(MEMORY[0x277D14B38]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2;
  v56[3] = &unk_277DB7478;
  v44 = v7;
  v57 = v44;
  v10 = [v9 initWithResultsBlock:v56];
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setHsItem:v10];

  v11 = objc_alloc(MEMORY[0x277D14B40]);
  v12 = MEMORY[0x277CBEB98];
  v13 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self hsOrJSItem];
  v69[0] = v13;
  v14 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self hsItem];
  v69[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
  v16 = [v12 setWithArray:v15];
  v17 = [v11 initWithItems:v16];
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setSiriTriggerPhraseSelectionItemProvider:v17];

  v18 = objc_opt_new();
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setUnsupportedMediaAccessories:v18];

  v19 = objc_opt_new();
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setUnsupportedLanguageCodes:v19];

  v20 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:v44];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_3;
  v55[3] = &unk_277DB83E8;
  v55[4] = self;
  [v20 setFilter:v55];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  objc_opt_class();
  v21 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = objc_alloc(MEMORY[0x277D14C38]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_284;
  v48[3] = &unk_277DC4990;
  v48[4] = self;
  v25 = v23;
  v49 = v25;
  v50 = &v51;
  v26 = [v24 initWithSourceProvider:v20 transformationBlock:v48];
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setSiriDeviceItemProvider:v26];

  v27 = objc_alloc(MEMORY[0x277D142F0]);
  v28 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
  v29 = [v27 initWithHome:v28];

  [v29 setFilter:&__block_literal_global_292];
  v52[3] = 1;
  v30 = objc_alloc(MEMORY[0x277D14C38]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_316;
  v45[3] = &unk_277DC49E0;
  v31 = v25;
  v46 = v31;
  v47 = &v51;
  v32 = [v30 initWithSourceProvider:v29 transformationBlock:v45];
  [(HUSiriTriggerPhraseSettingDetailsItemManager *)self setSiriOtherDeviceItemProvider:v32];

  v33 = HFLogForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
    v35 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriDeviceItemProvider];
    v36 = [v35 items];
    v37 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriOtherDeviceItemProvider];
    v38 = [v37 items];
    *buf = 136315906;
    v62 = "[HUSiriTriggerPhraseSettingDetailsItemManager _buildItemProvidersForHome:]";
    v63 = 2112;
    v64 = v34;
    v65 = 2112;
    v66 = v36;
    v67 = 2112;
    v68 = v38;
    _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "%s unsupportedMediaAccessories = %@ -  siriDeviceItems = %@, sidekick items = %@", buf, 0x2Au);
  }

  v39 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriTriggerPhraseSelectionItemProvider];
  v60[0] = v39;
  v40 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriDeviceItemProvider];
  v60[1] = v40;
  v41 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriOtherDeviceItemProvider];
  v60[2] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];

  _Block_object_dispose(&v51, 8);

  return v42;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _HULocalizedStringWithDefaultValue(@"HUJustSiriOrHeySiri_Setting_Title", @"HUJustSiriOrHeySiri_Setting_Title", 1);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"1" forKeyedSubscript:*MEMORY[0x277D13FF0]];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "siriPhraseOptions") == 3}];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v6;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = 1;
  v4 = _HULocalizedStringWithDefaultValue(@"HUHeySiri_Setting_Title", @"HUHeySiri_Setting_Title", 1);
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v2 setObject:@"2" forKeyedSubscript:*MEMORY[0x277D13FF0]];
  v5 = MEMORY[0x277CCABB0];
  if ([*(a1 + 32) siriPhraseOptions] != 1)
  {
    v3 = [*(a1 + 32) siriPhraseOptions] == 0;
  }

  v6 = [v5 numberWithInt:v3];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v7 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v8;
}

uint64_t __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = &unk_2825BCB38;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 accessories];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_4;
    v33[3] = &unk_277DB8EC0;
    v33[4] = *(a1 + 32);
    v8 = [v7 na_all:v33];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_28;
    }

    v7 = v3;
    v9 = [v7 mediaProfile];
    v10 = [v9 settings];
    v11 = [v10 hf_accessorySettingAtKeyPath:*MEMORY[0x277D138B8]];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 hf_siriEndpointProfile];
      *buf = 138412546;
      v35 = v7;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "accessory = [%@] hf_siriEndpointProfile [%@]", buf, 0x16u);
    }

    if (![v7 supportsJustSiri])
    {
      if (v11)
      {
        v14 = [v11 value];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          v16 = [*(a1 + 32) unsupportedMediaAccessories];
          [v16 addObject:v7];
        }
      }
    }

    v17 = [v7 hf_siriEndpointProfile];

    if (v17)
    {
      v18 = [v7 mediaProfile];
      v19 = [v18 hf_mediaAccessoryCommonSettingsManager];
      v17 = [v19 settingForKeyPath:*MEMORY[0x277D133B0]];

      if (([v7 supportsJustSiri] & 1) == 0)
      {
        if (v17)
        {
          v20 = [v17 value];
          v21 = [v20 BOOLValue];

          if (v21)
          {
            v22 = [*(a1 + 32) unsupportedMediaAccessories];
            [v22 addObject:v7];
          }
        }
      }

      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v17;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "allowHSImmutableSetting = [%@] for accessory [%@]", buf, 0x16u);
      }
    }

    if ([v7 supportsJustSiri])
    {
      v24 = [v7 mediaProfile];
      v25 = [MEMORY[0x277D14810] siriLanguageOptionFor:v24];
      v26 = [v25 recognitionLanguage];
      if (v26)
      {
        [MEMORY[0x277D7A8D0] sharedPreferences];
        v32 = v24;
        v28 = v27 = v11;
        v29 = [v28 isCompactVoiceTriggerAvailableForLanguageCode:v26];

        v11 = v27;
        v24 = v32;
        if ((v29 & 1) == 0)
        {
          v30 = [*(a1 + 32) unsupportedLanguageCodes];
          [v30 addObject:v26];
        }
      }
    }

    v8 = (v11 | v17) != 0;
  }

LABEL_28:
  return v8;
}

BOOL __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mediaProfile];
  v5 = [v4 settings];
  v6 = [v5 hf_accessorySettingAtKeyPath:*MEMORY[0x277D138B8]];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 hf_siriEndpointProfile];
    v26 = 138412546;
    v27 = v3;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "accessory = [%@] hf_siriEndpointProfile [%@]", &v26, 0x16u);
  }

  if ([v3 hf_isMediaAccessory])
  {
    if (([v3 supportsJustSiri] & 1) == 0)
    {
      if (v6)
      {
        v9 = [v6 value];
        v10 = [v9 BOOLValue];

        if (v10)
        {
          v11 = [*(a1 + 32) unsupportedMediaAccessories];
          [v11 addObject:v3];
        }
      }
    }
  }

  v12 = [v3 hf_siriEndpointProfile];

  if (v12)
  {
    v13 = [v3 mediaProfile];
    v14 = [v13 hf_mediaAccessoryCommonSettingsManager];
    v12 = [v14 settingForKeyPath:*MEMORY[0x277D133B0]];

    v15 = [v3 mediaProfile];
    v16 = [v15 hf_mediaAccessoryCommonSettingsManager];
    [v16 addObserver:*(a1 + 32)];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "allowHSImmutableSetting = [%@] for accessory [%@]", &v26, 0x16u);
    }
  }

  if ([v3 supportsJustSiri])
  {
    v18 = [v3 mediaProfile];
    v19 = [MEMORY[0x277D14810] siriLanguageOptionFor:v18];
    v20 = [v19 recognitionLanguage];
    if (v20)
    {
      v21 = [MEMORY[0x277D7A8D0] sharedPreferences];
      v22 = [v21 isCompactVoiceTriggerAvailableForLanguageCode:v20];

      if ((v22 & 1) == 0)
      {
        v23 = [*(a1 + 32) unsupportedLanguageCodes];
        [v23 addObject:v20];
      }
    }
  }

  if ([v3 hf_isMediaAccessory])
  {
    v24 = (v6 | v12) != 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_284(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2_286;
  v12[3] = &unk_277DC4968;
  v5 = a1[4];
  v6 = a1[5];
  v13 = v3;
  v14 = v5;
  v7 = v6;
  v8 = a1[6];
  v15 = v7;
  v16 = v8;
  v9 = v3;
  v10 = [v4 initWithSourceItem:v9 transformationBlock:v12];

  return v10;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2_286(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  v9 = v7;
  if ([v9 conformsToProtocol:v8])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  objc_opt_class();
  v12 = [*(a1 + 40) sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D13E20];
  [v6 setObject:&stru_2823E0EE8 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v16 = *(a1 + 48);
  v17 = 0x277CCA000;
  if (v14)
  {
    if (!v16)
    {
      v18 = [v14 homeKitSettingsVendor];
      if ([v18 conformsToProtocol:&unk_2825BCB38])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      v21 = [v20 uniqueIdentifier];

      v22 = [v11 mediaProfileContainer];
      v23 = [v22 uniqueIdentifier];
      v24 = [v21 isEqual:v23];

      if (v24)
      {
        v25 = _HULocalizedStringWithDefaultValue(@"HUSelectedHomePodDescriptionText", @"HUSelectedHomePodDescriptionText", 1);
        [v6 setObject:v25 forKeyedSubscript:v15];

        [v6 setObject:&unk_2824926C0 forKeyedSubscript:*MEMORY[0x277D13FF0]];
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if (!v16)
  {
    goto LABEL_22;
  }

  v26 = [v16 accessoryIdentifier];
  v27 = [v11 mediaProfileContainer];
  v28 = [v27 hf_backingAccessory];
  v29 = [v28 uniqueIdentifier];
  v30 = [v26 isEqual:v29];

  if (v30)
  {
    v31 = _HULocalizedStringWithDefaultValue(@"HUSelectedSiriEndpointDescriptionText", @"HUSelectedSiriEndpointDescriptionText", 1);
    [v6 setObject:v31 forKeyedSubscript:v15];

    [v6 setObject:&unk_2824926C0 forKeyedSubscript:*MEMORY[0x277D13FF0]];
    v17 = 0x277CCA000;
    goto LABEL_22;
  }

  v17 = 0x277CCA000uLL;
LABEL_21:
  v32 = [*(v17 + 2992) numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
  [v6 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13FF0]];

  ++*(*(*(a1 + 56) + 8) + 24);
LABEL_22:
  v33 = *(v17 + 2992);
  [v11 isSiriDisabled];
  v34 = [v33 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v34 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

uint64_t __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_315(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ([v5 hf_siriEndpointProfile], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [v5 hf_primaryService];

    if (v8)
    {
      v9 = [v5 mediaProfile];
      v10 = [v9 hf_mediaAccessoryCommonSettingsManager];
      v11 = [v10 settingForKeyPath:*MEMORY[0x277D133B0]];

      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 hf_siriEndpointProfile];
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "accessory = [%@] hf_siriEndpointProfile [%@]", &v15, 0x16u);
      }

      v8 = v11 != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_316(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D14C30]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2_317;
  v10[3] = &unk_277DC49B8;
  v11 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  v8 = [v4 initWithSourceItem:v7 transformationBlock:v10];

  return v8;
}

id __75__HUSiriTriggerPhraseSettingDetailsItemManager__buildItemProvidersForHome___block_invoke_2_317(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = &unk_28251AE08;
  if ([v7 conformsToProtocol:v8])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 accessoryIdentifier];
    v13 = [v10 accessory];
    v14 = [v13 uniqueIdentifier];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      v16 = _HULocalizedStringWithDefaultValue(@"HUSelectedSiriEndpointDescriptionText", @"HUSelectedSiriEndpointDescriptionText", 1);
      [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13E20]];

      [v6 setObject:&unk_2824926C0 forKeyedSubscript:*MEMORY[0x277D13FF0]];
    }

    else
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
      [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13FF0]];

      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  v18 = MEMORY[0x277CCABB0];
  [v10 isSiriDisabled];
  v19 = [v18 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v6 setObject:v19 forKeyedSubscript:*MEMORY[0x277D14068]];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v179 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    v8 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    v9 = [v8 hf_atleastOneMediaAccessorySupportingJustSiri];
    v10 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    *buf = 136315906;
    v172 = "[HUSiriTriggerPhraseSettingDetailsItemManager _buildSectionsWithDisplayedItems:]";
    v173 = 2112;
    v174 = v7;
    v175 = 1024;
    v176 = v9;
    v177 = 1024;
    v178 = [v10 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%s home [%@] atleastOneMediaAccessorySupportingJustSiri = %{BOOL}d, atLeastOneMediaAccessoryWithSupportingJustSiriLanguage = %{BOOL}d", buf, 0x22u);
  }

  v11 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
  v12 = [v11 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSiriTriggerPhraseSettingItemSectionIdentifier"];
    v14 = _HULocalizedStringWithDefaultValue(@"HUSiriTriggerPhraseSelectionSection_Header", @"HUSiriTriggerPhraseSelectionSection_Header", 1);
    [v13 setHeaderTitle:v14];

    v15 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    v16 = [v15 siriPhraseOptions];

    v17 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    v18 = HULocalizedSiriTriggerPhrase(v17);
    v25 = HULocalizedStringWithFormat(@"HUJustSiriOrHeySiri_Setting_Section_Footer", @"%@", v19, v20, v21, v22, v23, v24, v18);

    v26 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
    v27 = [v26 count];

    v161 = v25;
    if (v27 && v16 == 3)
    {
      v28 = v4;
      v29 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
      v30 = [v29 firstObject];
      v31 = [v30 name];

      v32 = self;
      v33 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
      v34 = [v33 firstObject];
      v35 = [v34 mediaProfile];
      v36 = [v35 hf_serviceNameComponents];

      if (v36)
      {
        v37 = [v36 composedString];
        v38 = v37;
        if (v37)
        {
          v39 = v37;

          v31 = v39;
        }
      }

      v40 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)v32 unsupportedMediaAccessories];
      if ([v40 count] >= 2)
      {
        v41 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)v32 unsupportedMediaAccessories];
        [v41 count];
        v48 = HULocalizedStringWithFormat(@"HUJustSiriOrHeySiri_Setting_Section_Footer_SeveralAccessories", @"%@%lu", v42, v43, v44, v45, v46, v47, v31);

        v31 = v48;
      }

      v4 = v28;

      v49 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)v32 unsupportedMediaAccessories];
      v50 = [v49 count];
      v51 = @"HUJustSiriOrHeySiri_Setting_Section_Footer_UnsupportedAccessory";
      if (v50 > 1)
      {
        v51 = @"HUJustSiriOrHeySiri_Setting_Section_Footer_UnsupportedAccessories";
      }

      v52 = v51;

      v59 = HULocalizedStringWithFormat(v52, @"%@", v53, v54, v55, v56, v57, v58, v31);

      v60 = [v161 stringByAppendingFormat:@"\n• %@", v59];
      [v13 setFooterTitle:v60];

      v25 = v161;
      self = v32;
    }

    else
    {
      [v13 setFooterTitle:v25];
    }

    v61 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedLanguageCodes];
    v62 = [v61 count];

    if (v62 && v16 == 3)
    {
      v157 = v13;
      v159 = v4;
      v63 = objc_opt_new();
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v158 = self;
      obj = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedLanguageCodes];
      v64 = [obj countByEnumeratingWithState:&v166 objects:v170 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v167;
        do
        {
          for (i = 0; i != v65; ++i)
          {
            if (*v167 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v68 = *(*(&v166 + 1) + 8 * i);
            v69 = [MEMORY[0x277CEF2D8] sharedInstance];
            v70 = [v69 localizedNameForSiriLanguage:v68 inDisplayLanguage:0];

            v71 = [MEMORY[0x277D7A8D0] sharedPreferences];
            v72 = [v71 localizedTriggerPhraseForLanguageCode:v68];

            v79 = HULocalizedStringWithFormat(@"HUJustSiriOrHeySiri_Setting_Section_Footer_UnsupportedSiriLanguage", @" %@%@", v73, v74, v75, v76, v77, v78, v70);
            v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n• %@", v79, v72];

            [v63 appendString:v80];
          }

          v65 = [obj countByEnumeratingWithState:&v166 objects:v170 count:16];
        }

        while (v65);
      }

      v13 = v157;
      v81 = [v157 footerTitle];
      if ([v63 length])
      {
        v82 = [v81 stringByAppendingFormat:@"%@", v63];

        [v157 setFooterTitle:v82];
        v81 = v82;
      }

      v25 = v161;
      self = v158;
      v4 = v159;
    }

    v83 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriTriggerPhraseSelectionItemProvider];
    v84 = [v83 items];
    v85 = [v84 allObjects];
    v86 = [v85 sortedArrayUsingComparator:&__block_literal_global_359_0];

    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_3;
    v164[3] = &unk_277DB85D8;
    v165 = v4;
    v87 = [v86 na_filter:v164];
    [v13 setItems:v87];

    [v5 addObject:v13];
  }

  v88 = objc_opt_new();
  v89 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriDeviceItemProvider];
  v90 = [v89 items];
  v91 = [v90 allObjects];
  v92 = [v91 sortedArrayUsingComparator:&__block_literal_global_365];

  objc_opt_class();
  v93 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v94 = v93;
  }

  else
  {
    v94 = 0;
  }

  if (v94)
  {
    v95 = [v92 sortedArrayUsingComparator:&__block_literal_global_363];
  }

  else
  {
    if ([v92 count] < 3)
    {
      goto LABEL_37;
    }

    v96 = [v92 firstObject];
    v97 = [v92 subarrayWithRange:{1, objc_msgSend(v92, "count") - 1}];
    v98 = objc_opt_new();
    [v98 addObject:v96];
    v99 = [v97 sortedArrayUsingComparator:&__block_literal_global_363];
    [v98 addObjectsFromArray:v99];

    v95 = [v98 copy];
    v92 = v96;
  }

  v92 = v95;
LABEL_37:
  v100 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self siriOtherDeviceItemProvider];
  v101 = [v100 items];
  v102 = [v101 allObjects];
  v103 = [v102 sortedArrayUsingComparator:&__block_literal_global_367];

  if (v94)
  {
    v104 = [v103 sortedArrayUsingComparator:&__block_literal_global_363];
  }

  else
  {
    if ([v103 count] < 3)
    {
      goto LABEL_42;
    }

    v105 = [v103 firstObject];
    v106 = [v103 subarrayWithRange:{1, objc_msgSend(v103, "count") - 1}];
    v107 = objc_opt_new();
    [v107 addObject:v105];
    v108 = [v106 sortedArrayUsingComparator:&__block_literal_global_363];
    [v107 addObjectsFromArray:v108];

    v104 = [v107 copy];
    v103 = v105;
  }

  v103 = v104;
LABEL_42:
  objc_opt_class();
  v109 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v110 = v109;
  }

  else
  {
    v110 = 0;
  }

  v111 = v110;

  objc_opt_class();
  v112 = [v111 sourceItem];

  if (objc_opt_isKindOfClass())
  {
    v113 = v112;
  }

  else
  {
    v113 = 0;
  }

  if (v111)
  {
    v114 = v113 == 0;
  }

  else
  {
    v114 = 0;
  }

  if (v114)
  {
    v115 = v103;
  }

  else
  {
    v115 = v92;
  }

  if (v114)
  {
    v116 = v92;
  }

  else
  {
    v116 = v103;
  }

  [v88 na_safeAddObjectsFromArray:v115];
  [v88 na_safeAddObjectsFromArray:v116];
  if ([v88 count])
  {
    v117 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUSiriDevicesItemSectionIdentifier"];
    v118 = _HULocalizedStringWithDefaultValue(@"HUSiriDevicesSection_Header", @"HUSiriDevicesSection_Header", 1);
    [v117 setHeaderTitle:v118];

    v119 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
    v120 = [v119 hf_atleastOneMediaAccessorySupportingJustSiri];

    if ((v120 & 1) == 0)
    {
      v162 = v5;
      v121 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self home];
      v122 = HULocalizedSiriTriggerPhrase(v121);
      v129 = HULocalizedStringWithFormat(@"HUJustSiriListenOn_Setting_Section_Footer", @"%@", v123, v124, v125, v126, v127, v128, v122);

      v130 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
      v131 = [v130 count];

      if (v131)
      {
        v160 = v4;
        v132 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
        v133 = [v132 firstObject];
        v134 = [v133 name];

        v135 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
        if ([v135 count] >= 2)
        {
          v136 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
          [v136 count];
          v143 = HULocalizedStringWithFormat(@"HUJustSiriOrHeySiri_Setting_Section_Footer_SeveralAccessories", @"%@%lu", v137, v138, v139, v140, v141, v142, v134);

          v134 = v143;
        }

        v144 = [(HUSiriTriggerPhraseSettingDetailsItemManager *)self unsupportedMediaAccessories];
        v145 = [v144 count];
        v146 = @"HUJustSiriOrHeySiri_Setting_Section_Footer_UnsupportedAccessory";
        if (v145 > 1)
        {
          v146 = @"HUJustSiriOrHeySiri_Setting_Section_Footer_UnsupportedAccessories";
        }

        v147 = v146;

        v154 = HULocalizedStringWithFormat(v147, @"%@", v148, v149, v150, v151, v152, v153, v134);

        v155 = [v129 stringByAppendingFormat:@" %@", v154];
        [v117 setFooterTitle:v155];

        v4 = v160;
      }

      else
      {
        [v117 setFooterTitle:v129];
      }

      v5 = v162;
    }

    [v117 setItems:v88];
    [v5 addObject:v117];
  }

  return v5;
}

uint64_t __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

uint64_t __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13F60];
  v7 = [v5 objectForKey:*MEMORY[0x277D13F60]];
  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];
  v10 = [v7 localizedStandardCompare:v9];

  return v10;
}

uint64_t __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_6, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

uint64_t __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __81__HUSiriTriggerPhraseSettingDetailsItemManager__buildSectionsWithDisplayedItems___block_invoke_8, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Received update for setting keypath %@ value = %@", &v12, 0x16u);
  }

  v11 = [(HFItemManager *)self reloadAndUpdateAllItemsFromSenderSelector:a2];
}

@end