@interface HUAccessorySettingsSiriOutputVoiceItemManager
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate groupItem:(id)item;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate siriLanguageOptionsManager:(id)manager sourceItem:(id)item;
- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)updateSelectionWithOptionItem:(id)item;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
- (void)dealloc;
@end

@implementation HUAccessorySettingsSiriOutputVoiceItemManager

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceItemManager.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriOutputVoiceItemManager.m" lineNumber:45 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriOutputVoiceItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate groupItem:(id)item
{
  delegateCopy = delegate;
  v7 = [item copy];
  v27.receiver = self;
  v27.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  v8 = [(HFItemManager *)&v27 initWithDelegate:delegateCopy sourceItem:v7];

  if (v8)
  {
    homeKitSettingsVendor = [v7 homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    v11 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13338]];
    adapter = v8->_adapter;
    v8->_adapter = v11;

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    hasOptedToHH2 = [homeManager hasOptedToHH2];

    if (hasOptedToHH2)
    {
      objc_opt_class();
      homeKitSettingsVendor2 = [v7 homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v17 = homeKitSettingsVendor2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        hf_siriLanguageOptionsManager = [v18 hf_siriLanguageOptionsManager];
        siriLanguageOptionsManager = v8->_siriLanguageOptionsManager;
        v8->_siriLanguageOptionsManager = hf_siriLanguageOptionsManager;
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
          hf_siriLanguageOptionsManager2 = [v22 hf_siriLanguageOptionsManager];
        }

        else
        {
          hf_siriLanguageOptionsManager2 = 0;
        }

        objc_storeStrong(&v8->_siriLanguageOptionsManager, hf_siriLanguageOptionsManager2);
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

- (HUAccessorySettingsSiriOutputVoiceItemManager)initWithDelegate:(id)delegate siriLanguageOptionsManager:(id)manager sourceItem:(id)item
{
  managerCopy = manager;
  delegateCopy = delegate;
  v11 = [item copy];
  v16.receiver = self;
  v16.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  v12 = [(HFItemManager *)&v16 initWithDelegate:delegateCopy sourceItem:v11];

  if (v12)
  {
    objc_storeStrong(&v12->_siriLanguageOptionsManager, manager);
    v13 = objc_alloc_init(MEMORY[0x277D61448]);
    session = v12->_session;
    v12->_session = v13;
  }

  return v12;
}

- (id)updateSelectionWithOptionItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
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
    languageOption = [v7 languageOption];
    outputLanguage = [languageOption outputLanguage];

    languageOption2 = [v7 languageOption];
    voiceName = [languageOption2 voiceName];

    v12 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:outputLanguage name:voiceName];
    v13 = [objc_alloc(MEMORY[0x277D61438]) initWithVoice:v12 previewType:0];
    previewRequest = self->_previewRequest;
    self->_previewRequest = v13;

    session = self->_session;
    v16 = self->_previewRequest;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __79__HUAccessorySettingsSiriOutputVoiceItemManager_updateSelectionWithOptionItem___block_invoke;
    v28 = &unk_277DB7E90;
    v29 = outputLanguage;
    v30 = voiceName;
    v17 = voiceName;
    v18 = outputLanguage;
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
    languageOption3 = [v7 languageOption];
    v21 = [v22 updateSelectedLanguageOption:languageOption3];
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

- (id)_buildItemProvidersForHome:(id)home
{
  v22[2] = *MEMORY[0x277D85DE8];
  [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:0];
  [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:0];
  siriLanguageOptionsManager = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];

  v5 = [HUSiriLanguageOptionItemProvider alloc];
  if (siriLanguageOptionsManager)
  {
    siriLanguageOptionsManager2 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
    sourceItem = [(HFItemManager *)self sourceItem];
    v8 = [(HUSiriLanguageOptionItemProvider *)v5 initWithSiriLanguageOptionsManager:siriLanguageOptionsManager2 sourceItem:sourceItem optionStyle:1];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:v8];

    v9 = [HUSiriLanguageOptionItemProvider alloc];
    siriLanguageOptionsManager3 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
    sourceItem2 = [(HFItemManager *)self sourceItem];
    v12 = [(HUSiriLanguageOptionItemProvider *)v9 initWithSiriLanguageOptionsManager:siriLanguageOptionsManager3 sourceItem:sourceItem2 optionStyle:2];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:v12];
  }

  else
  {
    adapter = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
    v14 = [(HUSiriLanguageOptionItemProvider *)v5 initWithAdapter:adapter optionStyle:1];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setAccentOptionItemProvider:v14];

    v15 = [HUSiriLanguageOptionItemProvider alloc];
    siriLanguageOptionsManager3 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
    sourceItem2 = [(HUSiriLanguageOptionItemProvider *)v15 initWithAdapter:siriLanguageOptionsManager3 optionStyle:2];
    [(HUAccessorySettingsSiriOutputVoiceItemManager *)self setGenderOptionItemProvider:sourceItem2];
  }

  accentOptionItemProvider = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
  if (accentOptionItemProvider)
  {
    genderOptionItemProvider = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
    if (genderOptionItemProvider)
    {
      accentOptionItemProvider2 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
      v22[0] = accentOptionItemProvider2;
      genderOptionItemProvider2 = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
      v22[1] = genderOptionItemProvider2;
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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Accents"];
  accentOptionItemProvider = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self accentOptionItemProvider];
  items = [accentOptionItemProvider items];
  v9 = [items na_setByIntersectingWithSet:itemsCopy];

  allObjects = [v9 allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v12 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v6 setItems:v12];

  v13 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsSiriOutputVoiceVarietySectionTitle", @"HUAccessorySettingsSiriOutputVoiceVarietySectionTitle", 1);
  [v6 setHeaderTitle:v13];

  items2 = [v6 items];
  v15 = [items2 count];

  if (v15 >= 2)
  {
    [v5 addObject:v6];
  }

  v16 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"Genders"];
  genderOptionItemProvider = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self genderOptionItemProvider];
  items3 = [genderOptionItemProvider items];
  v19 = [items3 sortedArrayUsingComparator:&__block_literal_global_158];
  [v16 setItems:v19];

  v20 = _HULocalizedStringWithDefaultValue(@"HUAccessorySettingsSiriOutputVoiceSectionTitle", @"HUAccessorySettingsSiriOutputVoiceSectionTitle", 1);
  [v16 setHeaderTitle:v20];

  items4 = [v16 items];
  v22 = [items4 count];

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
  siriLanguageOptionsManager = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
  [siriLanguageOptionsManager addObserver:self];

  adapter = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
  [adapter addObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  adapter = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self adapter];
  [adapter removeObserver:self];

  siriLanguageOptionsManager = [(HUAccessorySettingsSiriOutputVoiceItemManager *)self siriLanguageOptionsManager];
  [siriLanguageOptionsManager removeObserver:self];

  v5.receiver = self;
  v5.super_class = HUAccessorySettingsSiriOutputVoiceItemManager;
  [(HFItemManager *)&v5 _unregisterForExternalUpdates];
}

@end