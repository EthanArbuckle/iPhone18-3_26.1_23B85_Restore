@interface HUAccessorySettingsSiriRecognitionLanguageItemManager
- (HFSiriLanguageOptionsManager)siriLanguageOptionsManager;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 accessorySettingItem:(id)a4 accessoryItem:(id)a5;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 groupItem:(id)a4;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)mediaProfileContainer;
- (id)updateSelectionWithOptionItem:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUAccessorySettingsSiriRecognitionLanguageItemManager

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriRecognitionLanguageItemManager.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriRecognitionLanguageItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriRecognitionLanguageItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriRecognitionLanguageItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 groupItem:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v14.receiver = self;
  v14.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  v8 = [(HFItemManager *)&v14 initWithDelegate:v6 sourceItem:v7];

  if (v8)
  {
    v9 = [v7 homeKitSettingsVendor];
    v10 = [v9 hf_settingsAdapterManager];
    v11 = [v10 adapterForIdentifier:*MEMORY[0x277D13338]];
    adapter = v8->_adapter;
    v8->_adapter = v11;
  }

  return v8;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)a3 accessorySettingItem:(id)a4 accessoryItem:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 copy];
  accessoryItem = self->_accessoryItem;
  self->_accessoryItem = v8;
  v12 = v8;

  v15.receiver = self;
  v15.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  v13 = [(HFItemManager *)&v15 initWithDelegate:v9 sourceItem:v10];

  return v13;
}

- (HFSiriLanguageOptionsManager)siriLanguageOptionsManager
{
  v28 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v4 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = [v7 homeManager];
    if ([v8 hasOptedToHH2])
    {

LABEL_8:
      v11 = [v6 hf_siriLanguageOptionsManager];
      goto LABEL_19;
    }

    v9 = [v6 accessory];
    v10 = [v9 hf_isSiriEndpoint];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v12 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14 && ([MEMORY[0x277D146E8] sharedDispatcher], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "homeManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasOptedToHH2"), v16, v15, v17))
  {
    v11 = [v14 hf_siriLanguageOptionsManager];
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      v20 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
      v22 = 138412802;
      v23 = self;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri Language Options Manager not found for mediaProfileContainer %@", &v22, 0x20u);
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)mediaProfileContainer
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

  if (v5)
  {
    v6 = [v5 homeKitSettingsVendor];
  }

  else
  {
    v7 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self accessoryItem];
    v8 = [v7 accessories];
    v9 = [v8 anyObject];
    v6 = [v9 mediaProfile];
  }

  return v6;
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
    v8 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

    if (v8)
    {
      [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    }

    else
    {
      [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
    }
    v10 = ;
    v12 = [v7 languageOption];
    v11 = [v10 updateSelectedLanguageOption:v12];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v11 = [v9 futureWithError:v10];
  }

  return v11;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (v4)
  {
    v5 = [HUSiriLanguageOptionItemProvider alloc];
    v6 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    v7 = [(HFItemManager *)self sourceItem];
    v8 = [(HUSiriLanguageOptionItemProvider *)v5 initWithSiriLanguageOptionsManager:v6 sourceItem:v7 optionStyle:0];
    [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self setOptionItemProvider:v8];
  }

  else
  {
    v9 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [HUSiriLanguageOptionItemProvider alloc];
    v6 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
    v7 = [(HUSiriLanguageOptionItemProvider *)v10 initWithAdapter:v6 optionStyle:0];
    [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self setOptionItemProvider:v7];
  }

LABEL_6:
  v11 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
  if (v11)
  {
    v12 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"Languages"];
  v7 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
  v8 = [v7 items];
  v9 = [v8 na_setByIntersectingWithSet:v5];

  v10 = [v9 allObjects];
  v11 = [MEMORY[0x277D14778] defaultItemComparator];
  v12 = [v10 sortedArrayUsingComparator:v11];
  [v6 setItems:v12];

  v15[0] = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  return v13;
}

- (void)_registerForExternalUpdates
{
  v6.receiver = self;
  v6.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  [(HFItemManager *)&v6 _registerForExternalUpdates];
  v3 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
  [v3 addObserver:self];

  v4 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (v4)
  {
    v5 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    [v5 addObserver:self];
  }
}

- (void)_unregisterForExternalUpdates
{
  v3 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
  [v3 removeObserver:self];

  v4 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (v4)
  {
    v5 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    [v5 removeObserver:self];
  }

  v6.receiver = self;
  v6.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  [(HFItemManager *)&v6 _unregisterForExternalUpdates];
}

@end