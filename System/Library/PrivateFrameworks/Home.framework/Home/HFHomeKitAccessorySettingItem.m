@interface HFHomeKitAccessorySettingItem
- (BOOL)updateSetting:(id)a3;
- (HFHomeKitAccessorySettingItem)initWithDefaultSetting:(id)a3 sourceItem:(id)a4 localizedTitle:(id)a5 settingsController:(id)a6 homeIdentifier:(id)a7 accessoryIdentifier:(id)a8 settingDict:(id)a9 usageOptions:(id)a10;
- (HFHomeKitAccessorySettingItem)initWithSetting:(id)a3 sourceItem:(id)a4 localizedTitle:(id)a5 settingsController:(id)a6 homeIdentifier:(id)a7 accessoryIdentifier:(id)a8 settingDict:(id)a9 usageOptions:(id)a10;
- (HFHomeKitAccessorySettingItem)initWithSettingsController:(id)a3 localizedTitle:(id)a4 homeIdentifier:(id)a5 accessoryIdentifier:(id)a6 settingDict:(id)a7 usageOptions:(id)a8;
- (HFHomeKitAccessorySettingItem)initWithSourceItem:(id)a3 localizedTitle:(id)a4 settingsController:(id)a5 homeIdentifier:(id)a6 accessoryIdentifier:(id)a7 settingDict:(id)a8 usageOptions:(id)a9;
- (NSString)targetSettingKeyPath;
- (id)_formattedValueForSetting;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)updateValue:(id)a3;
- (void)_decorateOutcomeWithResultKeys:(id)a3;
- (void)setIsControllable:(BOOL)a3;
- (void)updateSettingValue:(id)a3;
@end

@implementation HFHomeKitAccessorySettingItem

- (HFHomeKitAccessorySettingItem)initWithSettingsController:(id)a3 localizedTitle:(id)a4 homeIdentifier:(id)a5 accessoryIdentifier:(id)a6 settingDict:(id)a7 usageOptions:(id)a8
{
  v15 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v16 = a7;
  v17 = a8;
  v30.receiver = self;
  v30.super_class = HFHomeKitAccessorySettingItem;
  v18 = [(HFHomeKitAccessorySettingItem *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingsController, a3);
    objc_storeStrong(&v19->_localizedTitle, a4);
    objc_storeStrong(&v19->_homeIdentifier, a5);
    objc_storeStrong(&v19->_accessoryIdentifier, a6);
    objc_storeStrong(&v19->_settingDict, a7);
    v20 = [(NSDictionary *)v19->_settingDict allKeys];
    v21 = [v20 firstObject];
    settingKeyPath = v19->_settingKeyPath;
    v19->_settingKeyPath = v21;

    objc_storeStrong(&v19->_usageOptions, a8);
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

- (HFHomeKitAccessorySettingItem)initWithSetting:(id)a3 sourceItem:(id)a4 localizedTitle:(id)a5 settingsController:(id)a6 homeIdentifier:(id)a7 accessoryIdentifier:(id)a8 settingDict:(id)a9 usageOptions:(id)a10
{
  v23 = a3;
  v17 = a4;
  v18 = [(HFHomeKitAccessorySettingItem *)self initWithSettingsController:a6 localizedTitle:a5 homeIdentifier:a7 accessoryIdentifier:a8 settingDict:a9 usageOptions:a10];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_setting, a3);
    objc_storeStrong(&v19->_sourceItem, a4);
    v20 = [(HMImmutableSetting *)v19->_setting value];
    cachedSettingValue = v19->_cachedSettingValue;
    v19->_cachedSettingValue = v20;
  }

  return v19;
}

- (HFHomeKitAccessorySettingItem)initWithDefaultSetting:(id)a3 sourceItem:(id)a4 localizedTitle:(id)a5 settingsController:(id)a6 homeIdentifier:(id)a7 accessoryIdentifier:(id)a8 settingDict:(id)a9 usageOptions:(id)a10
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = [(HFHomeKitAccessorySettingItem *)self initWithSetting:a3 sourceItem:a4 localizedTitle:a5 settingsController:a6 homeIdentifier:a7 accessoryIdentifier:a8 settingDict:a9 usageOptions:a10];
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

- (HFHomeKitAccessorySettingItem)initWithSourceItem:(id)a3 localizedTitle:(id)a4 settingsController:(id)a5 homeIdentifier:(id)a6 accessoryIdentifier:(id)a7 settingDict:(id)a8 usageOptions:(id)a9
{
  v16 = a3;
  v17 = [(HFHomeKitAccessorySettingItem *)self initWithSettingsController:a5 localizedTitle:a4 homeIdentifier:a6 accessoryIdentifier:a7 settingDict:a8 usageOptions:a9];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sourceItem, a3);
    v18->_disabled = 1;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  v5 = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  v6 = [(HFHomeKitAccessorySettingItem *)self setting];
  v7 = [v6 keyPath];
  v8 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v9 = [v3 stringWithFormat:@"homeIdentifier:[%@], accessoryIdentifier:[%@], keyPath:[%@], settingDict:[%@]", v4, v5, v7, v8];

  return v9;
}

- (NSString)targetSettingKeyPath
{
  v3 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v4 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:HFHomeKitSettingTargetKeyPathKey];

  return v6;
}

- (void)setIsControllable:(BOOL)a3
{
  if (self->_isControllable != a3)
  {
    self->_isControllable = a3;
    [(HFHomeKitAccessorySettingItem *)self setDisabled:!a3];
    v4 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  }
}

- (BOOL)updateSetting:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HMImmutableSetting *)self->_setting value];
  v7 = [v5 value];
  if ([v6 isEqual:v7])
  {
    v8 = [(HFHomeKitAccessorySettingItem *)self isDisabled];

    if (!v8)
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
    v11 = [(HMImmutableSetting *)self->_setting keyPath];
    v12 = [v5 value];
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Updating setting [%@] with new value [%@]", &v18, 0x16u);
  }

  [(HFHomeKitAccessorySettingItem *)self setDisabled:0];
  objc_storeStrong(&self->_setting, a3);
  v13 = [(HMImmutableSetting *)self->_setting value];
  cachedSettingValue = self->_cachedSettingValue;
  self->_cachedSettingValue = v13;

  v15 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  v9 = 1;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updateSettingValue:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating setting value for keypath [%@] with new value [%@]", &v10, 0x16u);
  }

  [(HFHomeKitAccessorySettingItem *)self setDisabled:0];
  cachedSettingValue = self->_cachedSettingValue;
  self->_cachedSettingValue = v4;

  v8 = [(HFItem *)self updateWithOptions:MEMORY[0x277CBEC10]];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFHomeKitAccessorySettingItem *)self settingsController];
  v6 = [(HFHomeKitAccessorySettingItem *)self localizedTitle];
  v7 = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  v8 = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  v9 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v10 = [(HFHomeKitAccessorySettingItem *)self usageOptions];
  v11 = [v4 initWithSettingsController:v5 localizedTitle:v6 homeIdentifier:v7 accessoryIdentifier:v8 settingDict:v9 usageOptions:v10];

  v12 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
  [v11 setSourceItem:v12];

  v13 = [(HFHomeKitAccessorySettingItem *)self setting];
  [v11 setSetting:v13];

  v14 = [(HFHomeKitAccessorySettingItem *)self cachedSettingValue];
  [v11 setCachedSettingValue:v14];

  [v11 copyLatestResultsFromItem:self];
  return v11;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFHomeKitAccessorySettingItem *)self _decorateOutcomeWithResultKeys:v5];
  if (v4)
  {
    v6 = [(HFMutableItemUpdateOutcome *)v5 results];
    v7 = [v6 mutableCopy];

    [v7 addEntriesFromDictionary:v4];
    [(HFMutableItemUpdateOutcome *)v5 setResults:v7];
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v8;
}

- (id)updateValue:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFHomeKitAccessorySettingItem *)self setting];
  v6 = [v5 homeKitAccessorySettingValueForRawValue:v4];

  v7 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Now updating setting keypath [%@] with HMImmutableSettingValue = [%@]", &v16, 0x16u);
  }

  v9 = [(HFHomeKitAccessorySettingItem *)self settingsController];
  v10 = [(HFHomeKitAccessorySettingItem *)self homeIdentifier];
  v11 = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  v12 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v13 = [v9 hf_updateAccessorySettingWithHomeIdentifier:v10 accessoryIdentifier:v11 keyPath:v12 settingValue:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_decorateOutcomeWithResultKeys:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v6 = [(HFHomeKitAccessorySettingItem *)self localizedTitle];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v8 = [v7 isEqualToString:HFAllowHeySiriSettingKeyPath];

  if (v8)
  {
    v9 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    v10 = [v9 home];
    if ([v10 siriPhraseOptions] == 3)
    {
      v11 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
      v12 = [v11 home];
      v13 = [v12 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

      if (v13)
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
    [v4 setObject:v15 forKeyedSubscript:@"title"];

    v16 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    v17 = [v16 home];
    if ([v17 hf_atleastOneMediaAccessoryHasSiriEnabled])
    {
      v18 = @"HFSiriSetting_On";
    }

    else
    {
      v18 = @"HFSiriSetting_Off";
    }

    v19 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
    [v4 setObject:v19 forKeyedSubscript:@"description"];
  }

  [v4 setObject:v5 forKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
  v20 = MEMORY[0x277CCABB0];
  v21 = [(HFHomeKitAccessorySettingItem *)self setting];
  v22 = [v20 numberWithBool:{objc_msgSend(v21, "isReadOnly")}];
  [v4 setObject:v22 forKeyedSubscript:@"HFAccessorySettingIsWritableKey"];

  v23 = [(HFHomeKitAccessorySettingItem *)self setting];
  [v4 setObject:v23 forKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];

  v24 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v25 = [v24 objectForKeyedSubscript:HFUIInterfaceTypeKey];
  [v25 integerValue];

  v26 = [(NSDictionary *)self->_settingDict objectForKeyedSubscript:self->_settingKeyPath];
  v27 = [v26 objectForKeyedSubscript:HFDisplaySettingValueKey];
  v28 = [v27 BOOLValue];

  if (v28)
  {
    v29 = [(HFHomeKitAccessorySettingItem *)self _formattedValueForSetting];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = &stru_2824B1A78;
    }

    [v4 setObject:v31 forKeyedSubscript:@"description"];
  }

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFHomeKitAccessorySettingItem isDisabled](self, "isDisabled")}];
  [v4 setObject:v32 forKeyedSubscript:@"isDisabled"];

  v33 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v44 = [(HFHomeKitAccessorySettingItem *)self setting];
    v45 = 138412546;
    v46 = v44;
    v47 = 2112;
    v48 = v4;
    _os_log_debug_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEBUG, "Finished configuring setting [%@] with options = [%@]", &v45, 0x16u);
  }

  v34 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v35 = [v34 objectForKeyedSubscript:v5];

  v36 = [v35 objectForKey:HFDisplayValuePreviewFromKeyPath];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v5;
  }

  v39 = [MEMORY[0x277CBEB98] setWithObject:v38];
  [v4 setObject:v39 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];

  v40 = MEMORY[0x277CBEB98];
  v41 = [(HFHomeKitAccessorySettingItem *)self accessoryIdentifier];
  v42 = [v40 setWithObject:v41];
  [v4 setObject:v42 forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v43 = *MEMORY[0x277D85DE8];
}

- (id)_formattedValueForSetting
{
  v3 = [(HFHomeKitAccessorySettingItem *)self settingDict];
  v4 = [(HFHomeKitAccessorySettingItem *)self settingKeyPath];
  v5 = [v3 objectForKeyedSubscript:v4];

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
  v10 = [v9 BOOLValue];

  v11 = [(HFHomeKitAccessorySettingItem *)self settingValue];
  if (v10)
  {
    v12 = [(HFHomeKitAccessorySettingItem *)self sourceItem];
    v13 = [v12 accessories];
    v14 = [v13 anyObject];
    v15 = [v14 mediaProfile];

    v11 = v15;
  }

  if (v8)
  {
    v16 = [v8 stringForObjectValue:v11];
  }

  else
  {
    objc_opt_class();
    v17 = v11;
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