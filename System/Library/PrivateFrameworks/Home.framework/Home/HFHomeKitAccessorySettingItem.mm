@interface HFHomeKitAccessorySettingItem
- (BOOL)updateSetting:(id)setting;
- (HFHomeKitAccessorySettingItem)initWithDefaultSetting:(id)setting sourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)self0;
- (HFHomeKitAccessorySettingItem)initWithSetting:(id)setting sourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)self0;
- (HFHomeKitAccessorySettingItem)initWithSettingsController:(id)controller localizedTitle:(id)title homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)options;
- (HFHomeKitAccessorySettingItem)initWithSourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)options;
- (NSString)targetSettingKeyPath;
- (id)_formattedValueForSetting;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)updateValue:(id)value;
- (void)_decorateOutcomeWithResultKeys:(id)keys;
- (void)setIsControllable:(BOOL)controllable;
- (void)updateSettingValue:(id)value;
@end

@implementation HFHomeKitAccessorySettingItem

- (HFHomeKitAccessorySettingItem)initWithSettingsController:(id)controller localizedTitle:(id)title homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)options
{
  controllerCopy = controller;
  titleCopy = title;
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  dictCopy = dict;
  optionsCopy = options;
  v30.receiver = self;
  v30.super_class = HFHomeKitAccessorySettingItem;
  v18 = [(HFHomeKitAccessorySettingItem *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingsController, controller);
    objc_storeStrong(&v19->_localizedTitle, title);
    objc_storeStrong(&v19->_homeIdentifier, identifier);
    objc_storeStrong(&v19->_accessoryIdentifier, accessoryIdentifier);
    objc_storeStrong(&v19->_settingDict, dict);
    allKeys = [(NSDictionary *)v19->_settingDict allKeys];
    firstObject = [allKeys firstObject];
    settingKeyPath = v19->_settingKeyPath;
    v19->_settingKeyPath = firstObject;

    objc_storeStrong(&v19->_usageOptions, options);
    v23 = [(NSDictionary *)v19->_settingDict objectForKeyedSubscript:v19->_settingKeyPath];
    v24 = [v23 objectForKeyedSubscript:HFUIInterfaceTypeKey];
    if (v24)
    {
      v25 = [v23 objectForKeyedSubscript:HFUIInterfaceTypeKey];
      v19->_userInterfaceType = [v25 integerValue];
    }

    else
    {
      v19->_userInterfaceType = -1;
    }
  }

  return v19;
}

- (HFHomeKitAccessorySettingItem)initWithSetting:(id)setting sourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)self0
{
  settingCopy = setting;
  itemCopy = item;
  v18 = [(HFHomeKitAccessorySettingItem *)self initWithSettingsController:controller localizedTitle:title homeIdentifier:identifier accessoryIdentifier:accessoryIdentifier settingDict:dict usageOptions:options];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_setting, setting);
    objc_storeStrong(&v19->_sourceItem, item);
    value = [(HMImmutableSetting *)v19->_setting value];
    cachedSettingValue = v19->_cachedSettingValue;
    v19->_cachedSettingValue = value;
  }

  return v19;
}

- (HFHomeKitAccessorySettingItem)initWithDefaultSetting:(id)setting sourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)self0
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = [(HFHomeKitAccessorySettingItem *)self initWithSetting:setting sourceItem:item localizedTitle:title settingsController:controller homeIdentifier:identifier accessoryIdentifier:accessoryIdentifier settingDict:dict usageOptions:options];
  if (v10)
  {
    v11 = HFLogForCategory(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_debug_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEBUG, "Initialized Default Accessory Setting Item = [%@]", buf, 0xCu);
    }

    v10->_disabled = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HFHomeKitAccessorySettingItem)initWithSourceItem:(id)item localizedTitle:(id)title settingsController:(id)controller homeIdentifier:(id)identifier accessoryIdentifier:(id)accessoryIdentifier settingDict:(id)dict usageOptions:(id)options
{
  itemCopy = item;
  v17 = [(HFHomeKitAccessorySettingItem *)self initWithSettingsController:controller localizedTitle:title homeIdentifier:identifier accessoryIdentifier:accessoryIdentifier settingDict:dict usageOptions:options];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceItem, item);
    v18->_disabled = 1;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  homeIdentifier = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  accessoryIdentifier = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  setting = [(HFHomeKitAccessorySettingItem *)self setting];
  keyPath = [setting keyPath];
  settingDict = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v9 = [v3 stringWithFormat:@"homeIdentifier:[%@], accessoryIdentifier:[%@], keyPath:[%@], settingDict:[%@]", homeIdentifier, accessoryIdentifier, keyPath, settingDict];

  return v9;
}

- (NSString)targetSettingKeyPath
{
  settingDict = [(HFHomeKitAccessorySettingItem *)self settingDict];
  settingKeyPath = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v5 = [settingDict objectForKeyedSubscript:settingKeyPath];
  v6 = [v5 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];

  return v6;
}

- (void)setIsControllable:(BOOL)controllable
{
  if (self->_isControllable != controllable)
  {
    self->_isControllable = controllable;
    [(HFHomeKitAccessorySettingItem *)self setDisabled:!controllable];
    v4 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  }
}

- (BOOL)updateSetting:(id)setting
{
  v22 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  value = [(HMImmutableSetting *)self->_setting value];
  value2 = [settingCopy value];
  if ([value isEqual:value2])
  {
    isDisabled = [(HFHomeKitAccessorySettingItem *)self isDisabled];

    if (!isDisabled)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    keyPath = [(HMImmutableSetting *)self->_setting keyPath];
    value3 = [settingCopy value];
    v18 = 138412546;
    v19 = keyPath;
    v20 = 2112;
    v21 = value3;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Updating setting [%@] with new value [%@]", &v18, 0x16u);
  }

  [(HFHomeKitAccessorySettingItem *)self setDisabled:0];
  objc_storeStrong(&self->_setting, setting);
  value4 = [(HMImmutableSetting *)self->_setting value];
  cachedSettingValue = self->_cachedSettingValue;
  self->_cachedSettingValue = value4;

  v15 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  v9 = 1;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updateSettingValue:(id)value
{
  v14 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    settingKeyPath = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
    v10 = 138412546;
    v11 = settingKeyPath;
    v12 = 2112;
    v13 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating setting value for keypath [%@] with new value [%@]", &v10, 0x16u);
  }

  [(HFHomeKitAccessorySettingItem *)self setDisabled:0];
  cachedSettingValue = self->_cachedSettingValue;
  self->_cachedSettingValue = valueCopy;

  v8 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  settingsController = [(HFHomeKitAccessorySettingItem *)self settingsController];
  localizedTitle = [(HFHomeKitAccessorySettingItem *)self localizedTitle];
  homeIdentifier = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  accessoryIdentifier = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  settingDict = [(HFHomeKitAccessorySettingItem *)self settingDict];
  usageOptions = [(HFHomeKitAccessorySettingItem *)self usageOptions];
  v11 = [v4 initWithSettingsController:settingsController localizedTitle:localizedTitle homeIdentifier:homeIdentifier accessoryIdentifier:accessoryIdentifier settingDict:settingDict usageOptions:usageOptions];

  sourceItem = [(HFHomeKitAccessorySettingItem *)self sourceItem];
  [v11 setSourceItem:sourceItem];

  setting = [(HFHomeKitAccessorySettingItem *)self setting];
  [v11 setSetting:setting];

  cachedSettingValue = [(HFHomeKitAccessorySettingItem *)self cachedSettingValue];
  [v11 setCachedSettingValue:cachedSettingValue];

  [v11 copyLatestResultsFromItem:self];
  return v11;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFHomeKitAccessorySettingItem *)self _decorateOutcomeWithResultKeys:v5];
  if (optionsCopy)
  {
    results = [(HFMutableItemUpdateOutcome *)v5 results];
    v7 = [results mutableCopy];

    [v7 addEntriesFromDictionary:optionsCopy];
    [(HFMutableItemUpdateOutcome *)v5 setResults:v7];
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v8;
}

- (id)updateValue:(id)value
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  setting = [(HFHomeKitAccessorySettingItem *)self setting];
  v6 = [setting homeKitAccessorySettingValueForRawValue:valueCopy];

  v7 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    settingKeyPath = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
    v16 = 138412546;
    v17 = settingKeyPath;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Now updating setting keypath [%@] with HMImmutableSettingValue = [%@]", &v16, 0x16u);
  }

  settingsController = [(HFHomeKitAccessorySettingItem *)self settingsController];
  homeIdentifier = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  accessoryIdentifier = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  settingKeyPath2 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v13 = [settingsController hf_updateAccessorySettingWithHomeIdentifier:homeIdentifier accessoryIdentifier:accessoryIdentifier keyPath:settingKeyPath2 settingValue:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_decorateOutcomeWithResultKeys:(id)keys
{
  v49 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  settingKeyPath = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  localizedTitle = [(HFHomeKitAccessorySettingItem *)self localizedTitle];
  [keysCopy setObject:localizedTitle forKeyedSubscript:@"title"];

  settingKeyPath2 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v8 = [settingKeyPath2 isEqualToString:HFAllowHeySiriSettingKeyPath];

  if (v8)
  {
    sourceItem = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    home = [sourceItem home];
    if ([home siriPhraseOptions] == 3)
    {
      sourceItem2 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
      home2 = [sourceItem2 home];
      hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage = [home2 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

      if (hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage)
      {
        v14 = @"HFJustSiriOrHeySiri_Home_Level_Setting_Title";
      }

      else
      {
        v14 = @"HFHeySiri_Home_Level_Setting_Title";
      }
    }

    else
    {

      v14 = @"HFHeySiri_Home_Level_Setting_Title";
    }

    v15 = _HFLocalizedStringWithDefaultValue(v14, v14, 1);
    [keysCopy setObject:v15 forKeyedSubscript:@"title"];

    sourceItem3 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    home3 = [sourceItem3 home];
    if ([home3 hf_atleastOneMediaAccessoryHasSiriEnabled])
    {
      v18 = @"HFSiriSetting_On";
    }

    else
    {
      v18 = @"HFSiriSetting_Off";
    }

    v19 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
    [keysCopy setObject:v19 forKeyedSubscript:@"description"];
  }

  [keysCopy setObject:settingKeyPath forKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
  v20 = MEMORY[0x277CCABB0];
  setting = [(HFHomeKitAccessorySettingItem *)self setting];
  v22 = [v20 numberWithBool:{objc_msgSend(setting, "isReadOnly")}];
  [keysCopy setObject:v22 forKeyedSubscript:@"HFAccessorySettingIsWritableKey"];

  setting2 = [(HFHomeKitAccessorySettingItem *)self setting];
  [keysCopy setObject:setting2 forKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];

  settingDict = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v25 = [settingDict objectForKeyedSubscript:HFUIInterfaceTypeKey];
  [v25 integerValue];

  v26 = [(NSDictionary *)self->_settingDict objectForKeyedSubscript:self->_settingKeyPath];
  v27 = [v26 objectForKeyedSubscript:HFDisplaySettingValueKey];
  bOOLValue = [v27 BOOLValue];

  if (bOOLValue)
  {
    _formattedValueForSetting = [(HFHomeKitAccessorySettingItem *)self _formattedValueForSetting];
    v30 = _formattedValueForSetting;
    if (_formattedValueForSetting)
    {
      v31 = _formattedValueForSetting;
    }

    else
    {
      v31 = &stru_2824B1A78;
    }

    [keysCopy setObject:v31 forKeyedSubscript:@"description"];
  }

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFHomeKitAccessorySettingItem isDisabled](self, "isDisabled")}];
  [keysCopy setObject:v32 forKeyedSubscript:@"isDisabled"];

  v33 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    setting3 = [(HFHomeKitAccessorySettingItem *)self setting];
    v45 = 138412546;
    v46 = setting3;
    v47 = 2112;
    v48 = keysCopy;
    _os_log_debug_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEBUG, "Finished configuring setting [%@] with options = [%@]", &v45, 0x16u);
  }

  settingDict2 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v35 = [settingDict2 objectForKeyedSubscript:settingKeyPath];

  v36 = [v35 objectForKey:HFDisplayValuePreviewFromKeyPath];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = settingKeyPath;
  }

  v39 = [MEMORY[0x277CBEB98] setWithObject:v38];
  [keysCopy setObject:v39 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];

  v40 = MEMORY[0x277CBEB98];
  accessoryIdentifier = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  v42 = [v40 setWithObject:accessoryIdentifier];
  [keysCopy setObject:v42 forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v43 = *MEMORY[0x277D85DE8];
}

- (id)_formattedValueForSetting
{
  settingDict = [(HFHomeKitAccessorySettingItem *)self settingDict];
  settingKeyPath = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v5 = [settingDict objectForKeyedSubscript:settingKeyPath];

  v6 = [v5 objectForKeyedSubscript:HFDisplayValuePreviewFormatterKey];
  if (v6)
  {
    v7 = +[HFAccessorySettingFormatterFactory defaultFactory];
    v8 = [v7 formatterForKey:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:HFDisplayValuePreviewFromAccessoryKey];
  bOOLValue = [v9 BOOLValue];

  settingValue = [(HFHomeKitAccessorySettingItem *)self settingValue];
  if (bOOLValue)
  {
    sourceItem = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    accessories = [sourceItem accessories];
    anyObject = [accessories anyObject];
    mediaProfile = [anyObject mediaProfile];

    settingValue = mediaProfile;
  }

  if (v8)
  {
    v16 = [v8 stringForObjectValue:settingValue];
  }

  else
  {
    objc_opt_class();
    v17 = settingValue;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19 && (v20 = [v19 objCType], *v20 == 66) && !v20[1])
    {
      v22 = +[HFAccessorySettingFormatterFactory defaultFactory];
      v23 = [v22 formatterForKey:@"AccessorySettingsDefaultFormatter"];
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "BOOLValue")}];
      v16 = [v23 stringForObjectValue:v24];
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v17];
    }
  }

  return v16;
}

@end