@interface HFAccessorySettingOptionItem
- (HFAccessorySettingOptionItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5 optionItem:(id)a6;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)settingKeyPath;
- (id)toggleSelection;
- (void)_decorateOutcomeWithDependencies:(id)a3;
@end

@implementation HFAccessorySettingOptionItem

- (HFAccessorySettingOptionItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5 optionItem:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingOptionItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"optionItem"}];
  }

  v19.receiver = self;
  v19.super_class = HFAccessorySettingOptionItem;
  v15 = [(HFAccessorySettingItem *)&v19 initWithHomeKitSettingsVendor:v11 usageOptions:v12 setting:v13];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_optionItem, a6);
    objc_storeStrong(&v16->_usageOptions, a4);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [(HFAccessorySettingOptionItem *)self usageOptions];
  v7 = [(HFAccessorySettingItem *)self setting];
  v8 = [(HFAccessorySettingOptionItem *)self optionItem];
  v9 = [v4 initWithHomeKitSettingsVendor:v5 usageOptions:v6 setting:v7 optionItem:v8];

  [v9 copyLatestResultsFromItem:self];
  return v9;
}

- (id)toggleSelection
{
  v3 = [(HFAccessorySettingOptionItem *)self optionItem];
  v4 = [(HFAccessorySettingItem *)self updateValue:v3];

  return v4;
}

- (id)settingKeyPath
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HFAccessorySettingItem *)self setting];
  v5 = [v4 keyPath];
  v6 = [(HFAccessorySettingOptionItem *)self optionItem];
  v7 = [v6 title];
  v8 = [v3 stringWithFormat:@"%@.%@", v5, v7];

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [v5 hf_settingsValueManager];

  v14.receiver = self;
  v14.super_class = HFAccessorySettingOptionItem;
  v7 = [(HFAccessorySettingItem *)&v14 _subclass_updateWithOptions:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HFAccessorySettingOptionItem__subclass_updateWithOptions___block_invoke;
  v11[3] = &unk_277DF3BB0;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v12 = v8;
  v9 = [v7 flatMap:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

id __60__HFAccessorySettingOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained setting];
  objc_opt_class();
  v7 = [*(a1 + 32) valueForSetting:v6];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 identifier];
  v11 = [WeakRetained optionItem];
  v12 = [v11 identifier];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = MEMORY[0x277CBEC38];
  }

  else
  {
    v14 = MEMORY[0x277CBEC28];
  }

  [v5 setObject:v14 forKeyedSubscript:@"selected"];
  [v5 setObject:&unk_282523478 forKeyedSubscript:@"HFAccessorySettingInterfaceModalityKey"];
  v15 = [WeakRetained optionItem];
  [v5 setObject:v15 forKeyedSubscript:@"AccessorySettingOptionItemValue"];

  v16 = [WeakRetained entity];
  v17 = [v16 overrideLocalizedTitleKey];

  if (v17)
  {
    v18 = [WeakRetained entity];
    v19 = [v18 overrideLocalizedTitleKey];
    v20 = _HFLocalizedStringWithDefaultValue(v19, v19, 1);
    [v5 setObject:v20 forKeyedSubscript:@"title"];
  }

  else
  {
    v18 = [WeakRetained settingKeyPath];
    v19 = _HFLocalizedStringWithDefaultValue(v18, 0, 0);
    [v5 setObject:v19 forKeyedSubscript:@"title"];
  }

  [WeakRetained _decorateOutcomeWithDependencies:v5];
  v21 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v21;
}

- (void)_decorateOutcomeWithDependencies:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [(HFAccessorySettingItem *)self setting];
  v7 = [v6 keyPath];
  v8 = [v4 setWithObject:v7];
  [v5 setObject:v8 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];

  v9 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v10 = [v9 homekitObjectIdentifiers];
  [v5 setObject:v10 forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v11 = MEMORY[0x277CBEB98];
  v13 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v12 = [v11 setWithObject:v13];
  [v5 setObject:v12 forKeyedSubscript:@"dependentHomeKitObjects"];
}

@end