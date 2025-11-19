@interface HUAccessorySettingsSiriOutputVoiceItemManager
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 groupItem:(id)a4;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 siriLanguageOptionsManager:(id)a4 sourceItem:(id)a5;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)updateSelectionWithOptionItem:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)dealloc;
@end

@implementation HUAccessorySettingsSiriOutputVoiceItemManager

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceItemManager.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceItemManager.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 groupItem:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v27.receiver = self;
  v27.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  v8 = [(HFItemManager *)&v27 initWithDelegate:v6 sourceItem:v7];

  if (v8)
  {
    v9 = [v7 homeKitSettingsVendor];
    v10 = [v9 hf_settingsAdapterManager];
    v11 = [v10 adapterForIdentifier:*MEMORY[0x277D13338]];
    adapter = v8->_adapter;
    v8->_adapter = v11;

    v13 = [MEMORY[0x277D146E8] sharedDispatcher];
    v14 = [v13 homeManager];
    v15 = [v14 hasOptedToHH2];

    if (v15)
    {
      objc_opt_class();
      v16 = [v7 homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = [v18 hf_siriLanguageOptionsManager];
        siriLanguageOptionsManager = v8->_siriLanguageOptionsManager;
        v8->_siriLanguageOptionsManager = v19;
      }

      else
      {
        objc_opt_class();
        siriLanguageOptionsManager = [v7 homeKitSettingsVendor];
        if (objc_opt_isKindOfClass())
        {
          v21 = siriLanguageOptionsManager;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v23 = [v22 hf_siriLanguageOptionsManager];
        }

        else
        {
          v23 = 0;
        }

        objc_storeStrong(&v8->_siriLanguageOptionsManager, v23);
        if (v22)
        {
        }

        else
        {
          siriLanguageOptionsManager = 0;
        }
      }
    }

    v24 = objc_alloc_init(MEMORY[0x277D61448]);
    session = v8->_session;
    v8->_session = v24;
  }

  return v8;
}

- (void)dealloc
{
  if (self->_previewRequest)
  {
    [(SiriTTSServiceSession *)self->_session cancelWithRequest:?];
  }

  v3.receiver = self;
  v3.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  [(HFItemManager *)&v3 dealloc];
}

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)a3 siriLanguageOptionsManager:(id)a4 sourceItem:(id)a5
{
  v9 = a4;
  v10 = a3;
  v11 = [a5 copy];
  v16.receiver = self;
  v16.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  v12 = [(HFItemManager *)&v16 initWithDelegate:v10 sourceItem:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_siriLanguageOptionsManager, a4);
    v13 = objc_alloc_init(MEMORY[0x277D61448]);
    session = v12->_session;
    v12->_session = v13;
  }

  return v12;
}

- (id)updateSelectionWithOptionItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 languageOption];
    v9 = [v8 outputLanguage];

    v10 = [v7 languageOption];
    v11 = [v10 voiceName];

    v12 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v9 name:v11];
    v13 = [objc_alloc(MEMORY[0x277D61438]) initWithVoice:v12 previewType:0];
    previewRequest = self->_previewRequest;
    self->_previewRequest = v13;

    session = self->_session;
    v16 = self->_previewRequest;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __79__HUAccessorySettingsSiriOutputVoiceItemManager_updateSelectionWithOptionItem___block_invoke;
    v28 = &unk_277DB7E90;
    v29 = v9;
    v30 = v11;
    v17 = v11;
    v18 = v9;
    [(SiriTTSServiceSession *)session speakWithPreviewRequest:v16 didFinish:&v25];
    v19 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager:v25];

    if (v19)
    {
      [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
    }

    else
    {
      [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
    }
    v22 = ;
    v23 = [v7 languageOption];
    v21 = [v22 updateSelectedLanguageOption:v23];
  }

  else
  {
    v20 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v21 = [v20 futureWithError:v12];
  }

  return v21;
}

void __79__HUAccessorySettingsSiriOutputVoiceItemManager_updateSelectionWithOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = 67109634;
    v7[1] = v3 == 0;
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Voice Preview completed successfully:%d for language:%@ voiceName:%@", v7, 0x1Cu);
  }
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:0];
  [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:0];
  v4 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];

  v5 = [HUSiriLanguageOptionItemProvider alloc];
  if (v4)
  {
    v6 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
    v7 = [(HFItemManager *)self sourceItem];
    v8 = [(HUSiriLanguageOptionItemProvider *)v5 initWithSiriLanguageOptionsManager:v6 sourceItem:v7 optionStyle:1];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:v8];

    v9 = [HUSiriLanguageOptionItemProvider alloc];
    v10 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
    v11 = [(HFItemManager *)self sourceItem];
    v12 = [(HUSiriLanguageOptionItemProvider *)v9 initWithSiriLanguageOptionsManager:v10 sourceItem:v11 optionStyle:2];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:v12];
  }

  else
  {
    v13 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
    v14 = [(HUSiriLanguageOptionItemProvider *)v5 initWithAdapter:v13 optionStyle:1];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:v14];

    v15 = [HUSiriLanguageOptionItemProvider alloc];
    v10 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
    v11 = [(HUSiriLanguageOptionItemProvider *)v15 initWithAdapter:v10 optionStyle:2];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:v11];
  }

  v16 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
  if (v16)
  {
    v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
    if (v17)
    {
      v18 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
      v22[0] = v18;
      v19 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
      v22[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    }

    else
    {
      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Accents"];
  v7 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
  v8 = [v7 items];
  v9 = [v8 na_setByIntersectingWithSet:v4];

  v10 = [v9 allObjects];
  v11 = [MEMORY[0x277D14778] defaultItemComparator];
  v12 = [v10 sortedArrayUsingComparator:v11];
  [v6 setItems:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsSiriOutputVoiceVarietySectionTitle", @"HUAccessorySettingsSiriOutputVoiceVarietySectionTitle", 1);
  [v6 setHeaderTitle:v13];

  v14 = [v6 items];
  v15 = [v14 count];

  if (v15 >= 2)
  {
    [v5 addObject:v6];
  }

  v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Genders"];
  v17 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
  v18 = [v17 items];
  v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_158];
  [v16 setItems:v19];

  v20 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsSiriOutputVoiceSectionTitle", @"HUAccessorySettingsSiriOutputVoiceSectionTitle", 1);
  [v16 setHeaderTitle:v20];

  v21 = [v16 items];
  v22 = [v21 count];

  if (v22 >= 2)
  {
    [v5 addObject:v16];
  }

  return v5;
}

uint64_t __82__HUAccessorySettingsSiriOutputVoiceItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CEF2D8];
  v5 = a3;
  v6 = a2;
  v7 = [v4 sharedInstance];
  v8 = [v7 outputVoiceComparator];
  v9 = [v6 languageOption];

  v10 = [v9 outputVoice];
  v11 = [v5 languageOption];

  v12 = [v11 outputVoice];
  v13 = (v8)[2](v8, v10, v12);

  return v13;
}

- (void)_registerForExternalUpdates
{
  v5.receiver = self;
  v5.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  [(HFItemManager *)&v5 _registerForExternalUpdates];
  v3 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
  [v3 addObserver:self];

  v4 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
  [v4 addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v3 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
  [v3 removeObserver:self];

  v4 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  [(HFItemManager *)&v5 _unregisterForExternalUpdates];
}

@end