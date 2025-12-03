@interface HFAccessorySettingItem
- (BOOL)_validateKeyPathDependencies;
- (HFAccessorySettingItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting;
- (HFAccessorySettingsEntity)entity;
- (NSString)settingKeyPath;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)updateValue:(id)value;
- (id)value;
- (void)_decorateHiddenOrDisabled:(id)disabled;
- (void)_decorateOutcomeWithAccessorySettingResultKeys:(id)keys;
- (void)_decorateOutcomeWithDependencies:(id)dependencies;
- (void)_decorateOutcomeWithResultKeys:(id)keys;
@end

@implementation HFAccessorySettingItem

- (HFAccessorySettingItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options setting:(id)setting
{
  vendorCopy = vendor;
  optionsCopy = options;
  settingCopy = setting;
  v13 = settingCopy;
  if (vendorCopy)
  {
    if (settingCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingItem.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"setting"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = HFAccessorySettingItem;
  v14 = [(HFAccessorySettingItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_homeKitSettingsVendor, vendor);
    objc_storeStrong(&v15->_setting, setting);
    objc_storeStrong(&v15->_usageOptions, options);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  usageOptions = [(HFAccessorySettingItem *)self usageOptions];
  setting = [(HFAccessorySettingItem *)self setting];
  v8 = [v4 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions setting:setting];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFAccessorySettingsEntity)entity
{
  entity = self->_entity;
  if (!entity)
  {
    homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    settings = [homeKitSettingsVendor settings];
    hf_codex = [settings hf_codex];
    settingKeyPath = [(HFAccessorySettingItem *)self settingKeyPath];
    v8 = [hf_codex hf_nodeWithKeyPath:settingKeyPath];
    representedObject = [v8 representedObject];
    v10 = self->_entity;
    self->_entity = representedObject;

    entity = self->_entity;
  }

  v11 = entity;

  return v11;
}

- (NSString)settingKeyPath
{
  setting = [(HFAccessorySettingItem *)self setting];
  keyPath = [setting keyPath];

  return keyPath;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFAccessorySettingItem *)self _decorateOutcomeWithResultKeys:v5];
  [(HFAccessorySettingItem *)self _decorateOutcomeWithDependencies:v5];
  [(HFAccessorySettingItem *)self _decorateOutcomeWithAccessorySettingResultKeys:v5];
  [(HFAccessorySettingItem *)self _decorateHiddenOrDisabled:v5];
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
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  hf_settingsValueManager = [homeKitSettingsVendor hf_settingsValueManager];

  if (!hf_settingsValueManager)
  {
    NSLog(&cfstr_ValueManagerWa.isa);
  }

  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    setting = [(HFAccessorySettingItem *)self setting];
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = setting;
    v18 = 2112;
    v19 = valueCopy;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating setting item '%@/%@' to value: %@", &v14, 0x20u);
  }

  if (hf_settingsValueManager)
  {
    setting2 = [(HFAccessorySettingItem *)self setting];
    [hf_settingsValueManager changeValueForSetting:setting2 toValue:valueCopy];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    setting2 = [MEMORY[0x277CCA9B8] hf_errorWithCode:7];
    [v10 futureWithError:setting2];
  }
  v11 = ;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)value
{
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  hf_settingsValueManager = [homeKitSettingsVendor hf_settingsValueManager];

  setting = [(HFAccessorySettingItem *)self setting];
  v6 = [hf_settingsValueManager valueForSetting:setting];

  return v6;
}

- (BOOL)_validateKeyPathDependencies
{
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor settings];

  homeKitSettingsVendor2 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  hf_settingsValueManager = [homeKitSettingsVendor2 hf_settingsValueManager];

  entity = [(HFAccessorySettingItem *)self entity];
  bOOLeanKeyPathDependencies = [entity BOOLeanKeyPathDependencies];
  if ([bOOLeanKeyPathDependencies count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__HFAccessorySettingItem__validateKeyPathDependencies__block_invoke;
    v11[3] = &unk_277DF3DB0;
    v12 = settings;
    v13 = hf_settingsValueManager;
    v9 = [bOOLeanKeyPathDependencies na_all:v11];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __54__HFAccessorySettingItem__validateKeyPathDependencies__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) hf_accessorySettingAtKeyPath:a2];
  if (v3)
  {
    objc_opt_class();
    v4 = v3;
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
      v7 = [*(a1 + 40) valueForSetting:v6];
      v8 = [*(a1 + 32) hf_codex];
      v9 = [v6 keyPath];
      v10 = [v8 hf_nodeWithKeyPath:v9];
      v11 = [v10 representedObject];

      v12 = [v11 userInfo];
      v13 = [v12 objectForKey:@"BooleanDependencyFalseKey"];

      v14 = [v7 title];
      v15 = [v13 componentsSeparatedByString:@"."];
      v16 = [v15 lastObject];
      v17 = [v14 isEqualToString:v16];

      v18 = v17 ^ 1u;
    }

    else
    {
      objc_opt_class();
      v7 = v4;
      if (objc_opt_isKindOfClass())
      {
        v19 = v7;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (!v20)
      {
        v7 = 0;
        v18 = 1;
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) valueForSetting:v20];
      v18 = [v11 BOOLValue];
    }

LABEL_14:
    goto LABEL_15;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

- (void)_decorateOutcomeWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  [dependenciesCopy setObject:homeKitSettingsVendor forKeyedSubscript:@"HFResultHomeKitSettingsVendorKey"];

  v6 = MEMORY[0x277CBEB58];
  setting = [(HFAccessorySettingItem *)self setting];
  keyPath = [setting keyPath];
  v16 = [v6 setWithObject:keyPath];

  entity = [(HFAccessorySettingItem *)self entity];
  bOOLeanKeyPathDependencies = [entity BOOLeanKeyPathDependencies];
  [v16 na_safeAddObjectsFromArray:bOOLeanKeyPathDependencies];

  [dependenciesCopy setObject:v16 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];
  homeKitSettingsVendor2 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  homekitObjectIdentifiers = [homeKitSettingsVendor2 homekitObjectIdentifiers];
  [dependenciesCopy setObject:homekitObjectIdentifiers forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v13 = MEMORY[0x277CBEB98];
  homeKitSettingsVendor3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v15 = [v13 setWithObject:homeKitSettingsVendor3];
  [dependenciesCopy setObject:v15 forKeyedSubscript:@"dependentHomeKitObjects"];
}

- (void)_decorateOutcomeWithAccessorySettingResultKeys:(id)keys
{
  v74[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  hf_settingsValueManager = [homeKitSettingsVendor hf_settingsValueManager];

  entity = [(HFAccessorySettingItem *)self entity];
  setting = [(HFAccessorySettingItem *)self setting];
  v73 = hf_settingsValueManager;
  v9 = [hf_settingsValueManager valueForSetting:setting];
  if (v9)
  {
    [keysCopy setObject:v9 forKeyedSubscript:@"HFAccessorySettingValueKey"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [keysCopy setObject:null forKeyedSubscript:@"HFAccessorySettingValueKey"];
  }

  setting2 = [(HFAccessorySettingItem *)self setting];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    setting3 = [(HFAccessorySettingItem *)self setting];
    stepValue = [setting3 stepValue];
    v15 = stepValue;
    if (stepValue)
    {
      v16 = stepValue;
    }

    else
    {
      v16 = &unk_282525510;
    }

    [keysCopy setObject:v16 forKeyedSubscript:@"HFAccessorySettingNumberValueStepKey"];

    maximumValue = [setting3 maximumValue];
    v18 = maximumValue;
    if (maximumValue)
    {
      v19 = maximumValue;
    }

    else
    {
      v19 = &unk_282525520;
    }

    [keysCopy setObject:v19 forKeyedSubscript:@"HFAccessorySettingNumberValueMaxKey"];

    minimumValue = [setting3 minimumValue];
    v21 = minimumValue;
    if (minimumValue)
    {
      v22 = minimumValue;
    }

    else
    {
      v22 = &unk_282525530;
    }

    [keysCopy setObject:v22 forKeyedSubscript:@"HFAccessorySettingNumberValueMinKey"];
  }

  v72 = entity;
  if (!entity)
  {
    userInfo = MEMORY[0x277CBEC10];
LABEL_20:
    setting4 = [(HFAccessorySettingItem *)self setting];
    interfaceModality = HFAccessorySettingsDefaultInterfaceModalityForHMAccessorySetting(setting4);

    goto LABEL_21;
  }

  [keysCopy setObject:entity forKeyedSubscript:@"HFAccessorySettingsEntityKey"];
  interfaceModality = [entity interfaceModality];
  userInfo = [entity userInfo];
  if (interfaceModality == 1 || interfaceModality == -1)
  {
    goto LABEL_20;
  }

LABEL_21:
  settingKeyPath = [(HFAccessorySettingItem *)self settingKeyPath];
  if (![settingKeyPath isEqualToString:@"root.siri.allowHeySiri"])
  {

    settingKeyPath3 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceModality];
    v43 = @"HFAccessorySettingInterfaceModalityKey";
LABEL_32:
    [keysCopy setObject:settingKeyPath3 forKeyedSubscript:v43];
    goto LABEL_33;
  }

  settingKeyPath2 = [(HFAccessorySettingItem *)self settingKeyPath];
  [settingKeyPath2 isEqualToString:@"root.siri.allowHeySiri"];

  settingKeyPath3 = [(HFAccessorySettingItem *)self settingKeyPath];
  if ([settingKeyPath3 isEqualToString:@"root.siri.allowHeySiri"])
  {
    v29 = [keysCopy objectForKeyedSubscript:@"HFAccessorySettingInterfaceModalityKey"];

    if (v29)
    {
      goto LABEL_34;
    }

    homeKitSettingsVendor2 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if ([homeKitSettingsVendor2 conformsToProtocol:&unk_282584A38])
    {
      v31 = homeKitSettingsVendor2;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    accessories = [v32 accessories];

    anyObject = [accessories anyObject];
    mediaProfile = [anyObject mediaProfile];
    hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];
    v37 = [hf_mediaAccessoryCommonSettingsManager settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];
    bOOLValue = [v37 BOOLValue];

    homeKitSettingsVendor3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    hf_settingsValueManager2 = [homeKitSettingsVendor3 hf_settingsValueManager];
    v41 = [hf_settingsValueManager2 valueForSettingAtKeyPath:@"root.siri.allowHeySiri"];
    LOBYTE(mediaProfile) = [v41 BOOLValue];

    if ((bOOLValue | mediaProfile))
    {
      v42 = @"HFSiriSetting_On";
    }

    else
    {
      v42 = @"HFSiriSetting_Off";
    }

    settingKeyPath3 = _HFLocalizedStringWithDefaultValue(v42, v42, 1);
    v43 = @"description";
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  [keysCopy setObject:userInfo forKeyedSubscript:@"HFAccessorySettingUserInfoKey"];
  homeKitSettingsVendor4 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  v71 = userInfo;
  if (v45)
  {
    objc_opt_class();
    homeKitSettingsVendor5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v47 = homeKitSettingsVendor5;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    accessory = [v48 accessory];
    mediaProfile2 = [accessory mediaProfile];
    v51 = [HFMediaHelper isHomePodOriginal:mediaProfile2];

    accessory2 = [v48 accessory];

    mediaProfile3 = [accessory2 mediaProfile];
    v54 = [HFMediaHelper isHomePodMini:mediaProfile3];

    v55 = @"homepodmini.fill";
    v56 = @"homepod.fill";
  }

  else
  {
    homeKitSettingsVendor6 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    v55 = @"homepodmini.fill";
    v56 = @"homepod.fill";
    if (v58)
    {
      objc_opt_class();
      homeKitSettingsVendor7 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v60 = homeKitSettingsVendor7;
      }

      else
      {
        v60 = 0;
      }

      v61 = v60;

      v51 = [HFMediaHelper isHomePodOriginalMediaSystem:v61];
      v54 = [HFMediaHelper isHomePodMiniMediaSystem:v61];

      if (v54)
      {
        v55 = @"homepodmini.2.fill";
      }

      if (v51)
      {
        v56 = @"homepod.2.fill";
      }
    }

    else
    {
      v51 = 0;
      v54 = 0;
    }
  }

  v62 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v74[0] = systemGrayColor;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  v65 = [v62 _configurationWithHierarchicalColors:v64];

  v66 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08]];
  v67 = [v66 configurationByApplyingConfiguration:v65];
  if (v51)
  {
    v68 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v56 configuration:v67];
    v69 = v72;
    if (!v68)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v69 = v72;
  if (v54)
  {
    v68 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v55];
    if (v68)
    {
LABEL_54:
      [keysCopy setObject:v68 forKeyedSubscript:@"icon"];
    }
  }

LABEL_55:

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_decorateOutcomeWithResultKeys:(id)keys
{
  keysCopy = keys;
  settingKeyPath = [(HFAccessorySettingItem *)self settingKeyPath];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", settingKeyPath];
  [keysCopy setObject:v5 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  entity = [(HFAccessorySettingItem *)self entity];
  overrideLocalizedTitleKey = [entity overrideLocalizedTitleKey];

  if (overrideLocalizedTitleKey)
  {
    entity2 = [(HFAccessorySettingItem *)self entity];
    overrideLocalizedTitleKey2 = [entity2 overrideLocalizedTitleKey];
    v10 = _HFLocalizedStringWithDefaultValue(overrideLocalizedTitleKey2, overrideLocalizedTitleKey2, 1);
    [keysCopy setObject:v10 forKeyedSubscript:@"title"];

LABEL_5:
    goto LABEL_6;
  }

  setting = [(HFAccessorySettingItem *)self setting];
  localizedTitle = [setting localizedTitle];

  if (localizedTitle)
  {
    entity2 = [(HFAccessorySettingItem *)self setting];
    overrideLocalizedTitleKey2 = [entity2 localizedTitle];
    [keysCopy setObject:overrideLocalizedTitleKey2 forKeyedSubscript:@"title"];
    goto LABEL_5;
  }

  NSLog(&cfstr_AccessorySetti.isa);
LABEL_6:
  [keysCopy setObject:settingKeyPath forKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
  v13 = MEMORY[0x277CCABB0];
  setting2 = [(HFAccessorySettingItem *)self setting];
  v15 = [v13 numberWithBool:{objc_msgSend(setting2, "isWritable")}];
  [keysCopy setObject:v15 forKeyedSubscript:@"HFAccessorySettingIsWritableKey"];

  setting3 = [(HFAccessorySettingItem *)self setting];
  [keysCopy setObject:setting3 forKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];

  entity3 = [(HFAccessorySettingItem *)self entity];
  interfaceModality = [entity3 interfaceModality];

  if (interfaceModality == 9)
  {
    homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor hf_settingsAdapterManager];
    entity4 = [(HFAccessorySettingItem *)self entity];
    adapterIdentifier = [entity4 adapterIdentifier];
    v23 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier];
    if ([v23 conformsToProtocol:&unk_282567A78])
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    entity5 = [(HFAccessorySettingItem *)self entity];
    v27 = [v25 inProgressButtonPressFutureForEntity:entity5];

    [keysCopy setObject:v27 forKeyedSubscript:@"HFResultActionFutureKey"];
  }

  settingKeyPath2 = [(HFAccessorySettingItem *)self settingKeyPath];
  v29 = [settingKeyPath2 isEqualToString:@"root.siri.allowHeySiri"];

  settingKeyPath3 = [(HFAccessorySettingItem *)self settingKeyPath];
  v31 = [settingKeyPath3 isEqualToString:@"root.siri.allowHeySiri"];

  if (v29)
  {
    homeKitSettingsVendor2 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    hf_home = [homeKitSettingsVendor2 hf_home];
    if ([hf_home siriPhraseOptions] == 3)
    {
      homeKitSettingsVendor3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      hf_home2 = [homeKitSettingsVendor3 hf_home];
      hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage = [hf_home2 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

      if (hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage)
      {
        v37 = @"HFJustSiriOrHeySiri_Home_Level_Setting_Title";
      }

      else
      {
        v37 = @"HFHeySiri_Home_Level_Setting_Title";
      }
    }

    else
    {

      v37 = @"HFHeySiri_Home_Level_Setting_Title";
    }

    v38 = _HFLocalizedStringWithDefaultValue(v37, v37, 1);
    [keysCopy setObject:v38 forKeyedSubscript:@"title"];
  }

  else if (v31)
  {
    goto LABEL_45;
  }

  entity6 = [(HFAccessorySettingItem *)self entity];
  previewValueKeyPath = [entity6 previewValueKeyPath];
  if (previewValueKeyPath)
  {

    goto LABEL_23;
  }

  entity7 = [(HFAccessorySettingItem *)self entity];
  previewAccessory = [entity7 previewAccessory];

  if (previewAccessory)
  {
LABEL_23:
    entity8 = [(HFAccessorySettingItem *)self entity];
    previewAccessory2 = [entity8 previewAccessory];

    homeKitSettingsVendor4 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v46 = homeKitSettingsVendor4;
    if (previewAccessory2)
    {
      hf_isBooleanSetting = 0;
    }

    else
    {
      hf_settingsValueManager = [homeKitSettingsVendor4 hf_settingsValueManager];

      homeKitSettingsVendor5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      settings = [homeKitSettingsVendor5 settings];
      entity9 = [(HFAccessorySettingItem *)self entity];
      previewValueKeyPath2 = [entity9 previewValueKeyPath];
      v53 = [settings hf_accessorySettingAtKeyPath:previewValueKeyPath2];

      v46 = [hf_settingsValueManager valueForSetting:v53];
      hf_isBooleanSetting = [v53 hf_isBooleanSetting];
    }

    entity10 = [(HFAccessorySettingItem *)self entity];
    previewValueFormatter = [entity10 previewValueFormatter];

    if (previewValueFormatter)
    {
      v56 = [previewValueFormatter stringForObjectValue:v46];
    }

    else
    {
      if (v46)
      {
        v58 = hf_isBooleanSetting;
      }

      else
      {
        v58 = 0;
      }

      if (v58 == 1)
      {
        objc_opt_class();
        v59 = v46;
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;

        v62 = +[HFAccessorySettingFormatterFactory defaultFactory];
        v63 = [v62 formatterForKey:@"AccessorySettingsDefaultFormatter"];
        v57 = [v63 stringForObjectValue:v61];

        goto LABEL_41;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v57 = 0;
        goto LABEL_41;
      }

      v56 = v46;
    }

    v57 = v56;
LABEL_41:
    if (v57)
    {
      v64 = v57;
    }

    else
    {
      v64 = &stru_2824B1A78;
    }

    [keysCopy setObject:v64 forKeyedSubscript:@"description"];
  }

LABEL_45:
}

- (void)_decorateHiddenOrDisabled:(id)disabled
{
  v99 = *MEMORY[0x277D85DE8];
  disabledCopy = disabled;
  entity = [(HFAccessorySettingItem *)self entity];
  homeKitSettingsVendor = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];
  hf_currentUserIsAdministrator = [hf_home hf_currentUserIsAdministrator];

  setting = [(HFAccessorySettingItem *)self setting];
  isWritable = [setting isWritable];

  homeKitSettingsVendor2 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor2 settings];
  isControllable = [settings isControllable];

  usageOptions = [(HFAccessorySettingItem *)self usageOptions];
  v15 = [usageOptions objectForKeyedSubscript:?];
  bOOLValue = [v15 BOOLValue];

  v91 = objc_opt_new();
  v90 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HFAccessorySettingItem__decorateHiddenOrDisabled___block_invoke;
  aBlock[3] = &unk_277DF3DD8;
  aBlock[4] = self;
  v17 = entity;
  v94 = v17;
  v92 = _Block_copy(aBlock);
  v18 = off_277DF0000;
  v88 = hf_currentUserIsAdministrator;
  if ((hf_currentUserIsAdministrator & 1) == 0 && !bOOLValue)
  {
    v19 = 0;
    v20 = @"Current User is not administrator.";
    v21 = v91;
LABEL_34:
    v92[2](v92, v21, v20);
    v89 = 1;
    goto LABEL_37;
  }

  if ([(HFAccessorySettingItem *)self _validateKeyPathDependencies])
  {
    v19 = 0;
    v89 = 0;
  }

  else
  {
    requiresDependenciesToShowSetting = [v17 requiresDependenciesToShowSetting];
    v23 = MEMORY[0x277CCACA8];
    bOOLeanKeyPathDependencies = [v17 BOOLeanKeyPathDependencies];
    v25 = [v23 stringWithFormat:@"KeyPath dependencies possess one or more failed cases: %@", bOOLeanKeyPathDependencies];
    v89 = requiresDependenciesToShowSetting;
    v19 = requiresDependenciesToShowSetting ^ 1;
    (v92[2])();
  }

  if ((isWritable & isControllable & 1) == 0)
  {
    if ((isWritable & 1) == 0)
    {
      v26 = MEMORY[0x277CCACA8];
      setting2 = [(HFAccessorySettingItem *)self setting];
      keyPath = [setting2 keyPath];
      setting3 = [(HFAccessorySettingItem *)self setting];
      setting4 = [(HFAccessorySettingItem *)self setting];
      isWritable2 = [setting4 isWritable];
      v32 = @"Read Only";
      if (isWritable2)
      {
        v32 = @"Read/Write";
      }

      v33 = [v26 stringWithFormat:@"Setting '%@' is readonly: %@/%@", keyPath, setting3, v32];
      v92[2](v92, v90, v33);
    }

    if ((isControllable & 1) == 0)
    {
      v34 = MEMORY[0x277CCACA8];
      setting5 = [(HFAccessorySettingItem *)self setting];
      keyPath2 = [setting5 keyPath];
      homeKitSettingsVendor3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      settings2 = [homeKitSettingsVendor3 settings];
      v39 = [v34 stringWithFormat:@"Setting '%@' is not controllable: %@/%@", keyPath2, settings2, @"NOT CONTROLLABLE"];
      v92[2](v92, v90, v39);
    }

    v19 = 1;
  }

  setting6 = [(HFAccessorySettingItem *)self setting];
  keyPath3 = [setting6 keyPath];
  v87 = [keyPath3 isEqualToString:@"root.announce.enabled"];

  homeKitSettingsVendor4 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  LOBYTE(keyPath3) = objc_opt_isKindOfClass();

  if (keyPath3)
  {
    objc_opt_class();
    homeKitSettingsVendor5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v44 = homeKitSettingsVendor5;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;

    accessory = [v45 accessory];
    hf_isHomePod = [accessory hf_isHomePod];

    accessory2 = [v45 accessory];

    supportsAudioAnalysis = [accessory2 supportsAudioAnalysis];
    if ((hf_isHomePod & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v58 = +[HFUtilities isAMac];
    v50 = 1;
    goto LABEL_29;
  }

  homeKitSettingsVendor6 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v50 = 0;
    supportsAudioAnalysis = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  homeKitSettingsVendor7 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  if (objc_opt_isKindOfClass())
  {
    v54 = homeKitSettingsVendor7;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;

  accessories = [v55 accessories];

  anyObject = [accessories anyObject];
  supportsAudioAnalysis = [anyObject supportsAudioAnalysis];

  if (v55)
  {
    goto LABEL_26;
  }

LABEL_20:
  v50 = 0;
LABEL_28:
  v58 = 1;
LABEL_29:
  if ((v87 & v58) == 1)
  {
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Announce settings should be hidden since containsHomePod = %{BOOL}d isAMac = %{BOOL}d", v50, +[HFUtilities isAMac](HFUtilities, "isAMac")];
    v92[2](v92, v91, v59);

    v89 = 1;
  }

  setting7 = [(HFAccessorySettingItem *)self setting];
  keyPath4 = [setting7 keyPath];
  v62 = [keyPath4 isEqualToString:@"root.audioAnalysis.enabled"];

  if (v62)
  {
    v21 = v91;
    if ((v50 & supportsAudioAnalysis & 1) == 0)
    {
      v20 = @"Audio Analysis settings should be hidden";
      v18 = off_277DF0000;
      goto LABEL_34;
    }
  }

  else
  {
    v21 = v91;
  }

  v18 = off_277DF0000;
LABEL_37:
  if (([(__objc2_class *)v18[118] supportsAnalytics]& 1) == 0)
  {
    v63 = [disabledCopy objectForKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
    v64 = [v63 isEqual:@"root.general.analytics.shareSpeakerAnalytics"];

    v19 = v19 | v64;
  }

  [disabledCopy setObject:&unk_282523490 forKeyedSubscript:@"state"];
  if ([v17 interfaceModality] == 5)
  {
    setting8 = [(HFAccessorySettingItem *)self setting];
    if (setting8)
    {
      v66 = setting8;
      setting9 = [(HFAccessorySettingItem *)self setting];
      objc_opt_class();
      v68 = objc_opt_isKindOfClass();

      if (v68)
      {
        homeKitSettingsVendor8 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
        hf_settingsValueManager = [homeKitSettingsVendor8 hf_settingsValueManager];

        v71 = MEMORY[0x277CCABB0];
        setting10 = [(HFAccessorySettingItem *)self setting];
        v73 = [hf_settingsValueManager valueForSetting:setting10];
        if ([v73 BOOLValue])
        {
          v74 = 2;
        }

        else
        {
          v74 = 1;
        }

        v75 = [v71 numberWithInteger:v74];
        [disabledCopy setObject:v75 forKeyedSubscript:@"state"];

        v21 = v91;
      }
    }
  }

  v76 = [MEMORY[0x277CCABB0] numberWithBool:v89];
  [disabledCopy setObject:v76 forKeyedSubscript:@"hidden"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [disabledCopy setObject:v77 forKeyedSubscript:@"isDisabled"];

  if ((v19 & 1) == 0)
  {
    usageOptions2 = [(HFAccessorySettingItem *)self usageOptions];
    v79 = [usageOptions2 objectForKeyedSubscript:@"HMSettingDisplayOption_AllowNonAdminAccess"];
    bOOLValue2 = [v79 BOOLValue];

    if (bOOLValue2)
    {
      [disabledCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    }
  }

  if ([v90 count])
  {
    v81 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      keyPath5 = [v17 keyPath];
      *buf = 138412546;
      v96 = keyPath5;
      v97 = 2112;
      v98 = v90;
      _os_log_impl(&dword_20D9BF000, v81, OS_LOG_TYPE_DEFAULT, "Setting Item @ keypath '%@' is disabled for reasons: %@", buf, 0x16u);
    }
  }

  if ([v21 count])
  {
    v83 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      keyPath6 = [v17 keyPath];
      *buf = 138412546;
      v96 = keyPath6;
      v97 = 2112;
      v98 = v21;
      _os_log_impl(&dword_20D9BF000, v83, OS_LOG_TYPE_DEFAULT, "Setting Item @ keypath '%@' is hidden for reasons: %@", buf, 0x16u);
    }
  }

  v85 = [MEMORY[0x277CCABB0] numberWithBool:v88];
  [disabledCopy setObject:v85 forKeyedSubscript:@"administrator"];

  [disabledCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  v86 = *MEMORY[0x277D85DE8];
}

void __52__HFAccessorySettingItem__decorateHiddenOrDisabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) setting];
  if (v6)
  {
  }

  else if ([*(a1 + 40) alwaysShowGroup])
  {
    goto LABEL_5;
  }

  [v7 na_safeAddObject:v5];
LABEL_5:
}

@end