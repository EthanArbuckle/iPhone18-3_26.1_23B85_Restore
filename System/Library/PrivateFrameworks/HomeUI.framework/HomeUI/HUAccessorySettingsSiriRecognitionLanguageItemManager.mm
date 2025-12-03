@interface HUAccessorySettingsSiriRecognitionLanguageItemManager
- (HFSiriLanguageOptionsManager)siriLanguageOptionsManager;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate accessorySettingItem:(id)item accessoryItem:(id)accessoryItem;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate groupItem:(id)item;
- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)mediaProfileContainer;
- (id)updateSelectionWithOptionItem:(id)item;
- (void)_registerForExternalUpdates;
- (void)_unregisterForExternalUpdates;
@end

@implementation HUAccessorySettingsSiriRecognitionLanguageItemManager

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriRecognitionLanguageItemManager.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriRecognitionLanguageItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithDelegate_groupItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySettingsSiriRecognitionLanguageItemManager.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySettingsSiriRecognitionLanguageItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate groupItem:(id)item
{
  delegateCopy = delegate;
  v7 = [item copy];
  v14.receiver = self;
  v14.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  v8 = [(HFItemManager *)&v14 initWithDelegate:delegateCopy sourceItem:v7];

  if (v8)
  {
    homeKitSettingsVendor = [v7 homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    v11 = [hf_settingsAdapterManager adapterForIdentifier:*MEMORY[0x277D13338]];
    adapter = v8->_adapter;
    v8->_adapter = v11;
  }

  return v8;
}

- (HUAccessorySettingsSiriRecognitionLanguageItemManager)initWithDelegate:(id)delegate accessorySettingItem:(id)item accessoryItem:(id)accessoryItem
{
  accessoryItemCopy = accessoryItem;
  delegateCopy = delegate;
  v10 = [item copy];
  accessoryItem = self->_accessoryItem;
  self->_accessoryItem = accessoryItemCopy;
  v12 = accessoryItemCopy;

  v15.receiver = self;
  v15.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  v13 = [(HFItemManager *)&v15 initWithDelegate:delegateCopy sourceItem:v10];

  return v13;
}

- (HFSiriLanguageOptionsManager)siriLanguageOptionsManager
{
  v28 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  mediaProfileContainer = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
  if (objc_opt_isKindOfClass())
  {
    v5 = mediaProfileContainer;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    homeManager = [mEMORY[0x277D146E8] homeManager];
    if ([homeManager hasOptedToHH2])
    {

LABEL_8:
      hf_siriLanguageOptionsManager = [v6 hf_siriLanguageOptionsManager];
      goto LABEL_19;
    }

    accessory = [v6 accessory];
    hf_isSiriEndpoint = [accessory hf_isSiriEndpoint];

    if (hf_isSiriEndpoint)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  mediaProfileContainer2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
  if (objc_opt_isKindOfClass())
  {
    v13 = mediaProfileContainer2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14 && ([MEMORY[0x277D146E8] sharedDispatcher], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "homeManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasOptedToHH2"), v16, v15, v17))
  {
    hf_siriLanguageOptionsManager = [v14 hf_siriLanguageOptionsManager];
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      mediaProfileContainer3 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self mediaProfileContainer];
      v22 = 138412802;
      selfCopy = self;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = mediaProfileContainer3;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Siri Language Options Manager not found for mediaProfileContainer %@", &v22, 0x20u);
    }

    hf_siriLanguageOptionsManager = 0;
  }

LABEL_19:

  return hf_siriLanguageOptionsManager;
}

- (id)mediaProfileContainer
{
  objc_opt_class();
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    homeKitSettingsVendor = [v5 homeKitSettingsVendor];
  }

  else
  {
    accessoryItem = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self accessoryItem];
    accessories = [accessoryItem accessories];
    anyObject = [accessories anyObject];
    homeKitSettingsVendor = [anyObject mediaProfile];
  }

  return homeKitSettingsVendor;
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
    siriLanguageOptionsManager = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

    if (siriLanguageOptionsManager)
    {
      [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    }

    else
    {
      [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
    }
    v10 = ;
    languageOption = [v7 languageOption];
    v11 = [v10 updateSelectedLanguageOption:languageOption];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v11 = [v9 futureWithError:v10];
  }

  return v11;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v15[1] = *MEMORY[0x277D85DE8];
  siriLanguageOptionsManager = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (siriLanguageOptionsManager)
  {
    v5 = [HUSiriLanguageOptionItemProvider alloc];
    siriLanguageOptionsManager2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    sourceItem = [(HFItemManager *)self sourceItem];
    v8 = [(HUSiriLanguageOptionItemProvider *)v5 initWithSiriLanguageOptionsManager:siriLanguageOptionsManager2 sourceItem:sourceItem optionStyle:0];
    [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self setOptionItemProvider:v8];
  }

  else
  {
    adapter = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];

    if (!adapter)
    {
      goto LABEL_6;
    }

    v10 = [HUSiriLanguageOptionItemProvider alloc];
    siriLanguageOptionsManager2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
    sourceItem = [(HUSiriLanguageOptionItemProvider *)v10 initWithAdapter:siriLanguageOptionsManager2 optionStyle:0];
    [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self setOptionItemProvider:sourceItem];
  }

LABEL_6:
  optionItemProvider = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
  if (optionItemProvider)
  {
    optionItemProvider2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
    v15[0] = optionItemProvider2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"Languages"];
  optionItemProvider = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self optionItemProvider];
  items = [optionItemProvider items];
  v9 = [items na_setByIntersectingWithSet:itemsCopy];

  allObjects = [v9 allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v12 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
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
  adapter = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
  [adapter addObserver:self];

  siriLanguageOptionsManager = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (siriLanguageOptionsManager)
  {
    siriLanguageOptionsManager2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    [siriLanguageOptionsManager2 addObserver:self];
  }
}

- (void)_unregisterForExternalUpdates
{
  adapter = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self adapter];
  [adapter removeObserver:self];

  siriLanguageOptionsManager = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];

  if (siriLanguageOptionsManager)
  {
    siriLanguageOptionsManager2 = [(HUAccessorySettingsSiriRecognitionLanguageItemManager *)self siriLanguageOptionsManager];
    [siriLanguageOptionsManager2 removeObserver:self];
  }

  v6.receiver = self;
  v6.super_class = HUAccessorySettingsSiriRecognitionLanguageItemManager;
  [(HFItemManager *)&v6 _unregisterForExternalUpdates];
}

@end