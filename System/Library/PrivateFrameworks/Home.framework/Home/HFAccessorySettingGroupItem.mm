@interface HFAccessorySettingGroupItem
- (BOOL)_useManagedConfigurationForProfiles;
- (BOOL)_validateKeyPathDependencies;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options entity:(id)entity;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options group:(id)group;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options selectionSetting:(id)setting;
- (NSString)settingKeyPath;
- (id)_displayTitle;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateHiddenOrDisabled:(id)disabled;
@end

@implementation HFAccessorySettingGroupItem

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options
{
  optionsCopy = options;
  vendorCopy = vendor;
  settings = [vendorCopy settings];
  rootGroup = [settings rootGroup];

  v10 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:vendorCopy usageOptions:optionsCopy group:rootGroup];
  return v10;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options entity:(id)entity
{
  vendorCopy = vendor;
  optionsCopy = options;
  entityCopy = entity;
  if (!vendorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];
  }

  v17.receiver = self;
  v17.super_class = HFAccessorySettingGroupItem;
  v13 = [(HFAccessorySettingGroupItem *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entity, entity);
    objc_storeStrong(&v14->_homeKitSettingsVendor, vendor);
    objc_storeStrong(&v14->_usageOptions, options);
  }

  return v14;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options group:(id)group
{
  vendorCopy = vendor;
  optionsCopy = options;
  groupCopy = group;
  v12 = groupCopy;
  if (vendorCopy)
  {
    if (groupCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"group"}];

LABEL_3:
  keyPath = [v12 keyPath];
  settings = [vendorCopy settings];
  hf_codex = [settings hf_codex];
  v16 = [hf_codex hf_nodeWithKeyPath:keyPath];
  representedObject = [v16 representedObject];

  v18 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:vendorCopy usageOptions:optionsCopy entity:representedObject];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingGroup, group);
  }

  return v19;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)vendor usageOptions:(id)options selectionSetting:(id)setting
{
  vendorCopy = vendor;
  optionsCopy = options;
  settingCopy = setting;
  v12 = settingCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"selectionSetting"}];

LABEL_3:
  keyPath = [v12 keyPath];
  settings = [vendorCopy settings];
  hf_codex = [settings hf_codex];
  v16 = [hf_codex hf_nodeWithKeyPath:keyPath];
  representedObject = [v16 representedObject];

  v18 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:vendorCopy usageOptions:optionsCopy entity:representedObject];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_selectionSetting, setting);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selectionSetting = [(HFAccessorySettingGroupItem *)self selectionSetting];

  if (selectionSetting)
  {
    v6 = [objc_opt_class() allocWithZone:zone];
    homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    usageOptions = [(HFAccessorySettingGroupItem *)self usageOptions];
    selectionSetting2 = [(HFAccessorySettingGroupItem *)self selectionSetting];
    v10 = [v6 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions selectionSetting:selectionSetting2];
  }

  else
  {
    settingGroup = [(HFAccessorySettingGroupItem *)self settingGroup];

    v12 = [objc_opt_class() allocWithZone:zone];
    homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    usageOptions = [(HFAccessorySettingGroupItem *)self usageOptions];
    if (settingGroup)
    {
      selectionSetting2 = [(HFAccessorySettingGroupItem *)self settingGroup];
      v10 = [v12 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions group:selectionSetting2];
    }

    else
    {
      selectionSetting2 = [(HFAccessorySettingGroupItem *)self entity];
      v10 = [v12 initWithHomeKitSettingsVendor:homeKitSettingsVendor usageOptions:usageOptions entity:selectionSetting2];
    }
  }

  v13 = v10;

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (NSString)settingKeyPath
{
  selectionSetting = [(HFAccessorySettingGroupItem *)self selectionSetting];

  if (selectionSetting)
  {
    selectionSetting2 = [(HFAccessorySettingGroupItem *)self selectionSetting];
  }

  else
  {
    settingGroup = [(HFAccessorySettingGroupItem *)self settingGroup];

    if (settingGroup)
    {
      [(HFAccessorySettingGroupItem *)self settingGroup];
    }

    else
    {
      [(HFAccessorySettingGroupItem *)self entity];
    }
    selectionSetting2 = ;
  }

  v6 = selectionSetting2;
  keyPath = [selectionSetting2 keyPath];

  return keyPath;
}

- (id)_subclass_updateWithOptions:(id)options
{
  selfCopy = self;
  v84 = *MEMORY[0x277D85DE8];
  entity = [(HFAccessorySettingGroupItem *)self entity];
  settingKeyPath = [(HFAccessorySettingGroupItem *)selfCopy settingKeyPath];
  v7 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", settingKeyPath];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v8 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:&unk_282523C88 forKeyedSubscript:@"state"];
  entity2 = [(HFAccessorySettingGroupItem *)selfCopy entity];
  previewValueKeyPath = [entity2 previewValueKeyPath];
  v11 = previewValueKeyPath;
  if (previewValueKeyPath)
  {
    settingKeyPath2 = previewValueKeyPath;
  }

  else
  {
    settingKeyPath2 = [(HFAccessorySettingGroupItem *)selfCopy settingKeyPath];
  }

  v13 = settingKeyPath2;

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v14 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];

  homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
  homekitObjectIdentifiers = [homeKitSettingsVendor homekitObjectIdentifiers];
  [(HFMutableItemUpdateOutcome *)v7 setObject:homekitObjectIdentifiers forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v17 = MEMORY[0x277CBEB98];
  homeKitSettingsVendor2 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
  v19 = [v17 setWithObject:homeKitSettingsVendor2];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v19 forKeyedSubscript:@"dependentHomeKitObjects"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  homeKitSettingsVendor3 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
  [(HFMutableItemUpdateOutcome *)v7 setObject:homeKitSettingsVendor3 forKeyedSubscript:@"HFResultHomeKitSettingsVendorKey"];

  previewValueKeyPath2 = [entity previewValueKeyPath];
  v22 = 0x277CCA000;
  if (previewValueKeyPath2)
  {
  }

  else if (([entity previewAccessory] & 1) == 0)
  {
    goto LABEL_39;
  }

  previewAccessory = [entity previewAccessory];
  homeKitSettingsVendor4 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
  v25 = homeKitSettingsVendor4;
  aSelector = a2;
  v26 = v13;
  if (previewAccessory)
  {
    hf_isBooleanSetting = 0;
  }

  else
  {
    hf_settingsValueManager = [homeKitSettingsVendor4 hf_settingsValueManager];

    homeKitSettingsVendor5 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
    settings = [homeKitSettingsVendor5 settings];
    previewValueKeyPath3 = [entity previewValueKeyPath];
    v32 = [settings hf_accessorySettingAtKeyPath:previewValueKeyPath3];

    v25 = [hf_settingsValueManager valueForSetting:v32];
    hf_isBooleanSetting = [v32 hf_isBooleanSetting];
  }

  v33 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v33 homeManager];
  hasOptedToHH2 = [homeManager hasOptedToHH2];

  if (hasOptedToHH2 && (([settingKeyPath isEqualToString:@"root.siri.recognitionLanguage"] & 1) != 0 || objc_msgSend(settingKeyPath, "isEqualToString:", @"root.siri.outputVoice")))
  {
    homeKitSettingsVendor6 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
    if ([homeKitSettingsVendor6 conformsToProtocol:&unk_282584A38])
    {
      v37 = homeKitSettingsVendor6;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    hf_siriLanguageOptionsManager = [v38 hf_siriLanguageOptionsManager];

    if (hf_siriLanguageOptionsManager)
    {
      v40 = HFLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v81 = v41;
        v82 = 2112;
        v83 = settingKeyPath;
        _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ language setting %@ is being formatted, fetching the option from the siri endpoint manager instead", buf, 0x16u);
      }

      selectedLanguageOption = [hf_siriLanguageOptionsManager selectedLanguageOption];

      v25 = selectedLanguageOption;
    }
  }

  previewValueFormatter = [entity previewValueFormatter];
  v44 = previewValueFormatter;
  v13 = v26;
  if (previewValueFormatter)
  {
    v45 = [previewValueFormatter stringForObjectValue:v25];
  }

  else
  {
    if (v25)
    {
      v47 = hf_isBooleanSetting;
    }

    else
    {
      v47 = 0;
    }

    if (v47 == 1)
    {
      objc_opt_class();
      aSelectora = v26;
      v48 = v25;
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;

      v51 = +[HFAccessorySettingFormatterFactory defaultFactory];
      v52 = [v51 formatterForKey:@"AccessorySettingsDefaultFormatter"];
      v46 = [v52 stringForObjectValue:v50];

      v13 = aSelectora;
      goto LABEL_35;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = 0;
      goto LABEL_35;
    }

    v45 = v25;
  }

  v46 = v45;
LABEL_35:
  if (v46)
  {
    v53 = v46;
  }

  else
  {
    v53 = &stru_2824B1A78;
  }

  [(HFMutableItemUpdateOutcome *)v7 setObject:v53 forKeyedSubscript:@"description"];

  v22 = 0x277CCA000uLL;
LABEL_39:
  _displayTitle = [(HFAccessorySettingGroupItem *)selfCopy _displayTitle];
  [(HFMutableItemUpdateOutcome *)v7 setObject:_displayTitle forKeyedSubscript:@"title"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:settingKeyPath forKeyedSubscript:@"HFAccessorySettingGroupKeyPathKey"];
  settingGroup = [(HFAccessorySettingGroupItem *)selfCopy settingGroup];

  if (settingGroup)
  {
    settingGroup2 = [(HFAccessorySettingGroupItem *)selfCopy settingGroup];
    v57 = @"HFAccessorySettingGroupRepresentitiveObjectKey";
  }

  else
  {
    selectionSetting = [(HFAccessorySettingGroupItem *)selfCopy selectionSetting];

    if (!selectionSetting)
    {
      goto LABEL_44;
    }

    selectionSetting2 = [(HFAccessorySettingGroupItem *)selfCopy selectionSetting];
    [(HFMutableItemUpdateOutcome *)v7 setObject:selectionSetting2 forKeyedSubscript:@"HFAccessorySettingGroupRepresentitiveObjectKey"];

    settingGroup2 = [(HFAccessorySettingGroupItem *)selfCopy selectionSetting];
    v57 = @"HFAccessorySettingValueKey";
  }

  [(HFMutableItemUpdateOutcome *)v7 setObject:settingGroup2 forKeyedSubscript:v57];

LABEL_44:
  v60 = *(v22 + 2992);
  entity3 = [(HFAccessorySettingGroupItem *)selfCopy entity];
  v62 = [v60 numberWithInteger:{objc_msgSend(entity3, "interfaceModality")}];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v62 forKeyedSubscript:@"HFAccessorySettingInterfaceModalityKey"];

  if (entity)
  {
    [(HFMutableItemUpdateOutcome *)v7 setObject:entity forKeyedSubscript:@"HFAccessorySettingsEntityKey"];
  }

  if ([entity interfaceModality] == 9)
  {
    homeKitSettingsVendor7 = [(HFAccessorySettingGroupItem *)selfCopy homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor7 hf_settingsAdapterManager];
    entity4 = [(HFAccessorySettingGroupItem *)selfCopy entity];
    [entity4 adapterIdentifier];
    aSelectorb = selfCopy;
    v66 = entity;
    v67 = settingKeyPath;
    v69 = v68 = v13;
    v70 = [hf_settingsAdapterManager adapterForIdentifier:v69];
    if ([v70 conformsToProtocol:&unk_282567A78])
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v72 = v71;

    v13 = v68;
    settingKeyPath = v67;
    entity = v66;
    selfCopy = aSelectorb;

    v73 = [v72 inProgressButtonPressFutureForEntity:entity];

    [(HFMutableItemUpdateOutcome *)v7 setObject:v73 forKeyedSubscript:@"HFResultActionFutureKey"];
  }

  [(HFAccessorySettingGroupItem *)selfCopy _decorateHiddenOrDisabled:v7];
  v74 = [MEMORY[0x277D2C900] futureWithResult:v7];

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

- (id)_displayTitle
{
  entity = [(HFAccessorySettingGroupItem *)self entity];
  overrideLocalizedTitleKey = [entity overrideLocalizedTitleKey];

  if (overrideLocalizedTitleKey)
  {
    entity2 = [(HFAccessorySettingGroupItem *)self entity];
    overrideLocalizedTitleKey2 = [entity2 overrideLocalizedTitleKey];
    v7 = _HFLocalizedStringWithDefaultValue(overrideLocalizedTitleKey2, overrideLocalizedTitleKey2, 1);
  }

  else
  {
    settingGroup = [(HFAccessorySettingGroupItem *)self settingGroup];

    if (settingGroup)
    {
      entity2 = [(HFAccessorySettingGroupItem *)self settingGroup];
      [entity2 localizedTitle];
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      settingKeyPath = [(HFAccessorySettingGroupItem *)self settingKeyPath];
      entity2 = [v9 stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", settingKeyPath];

      _HFLocalizedStringWithDefaultValue(entity2, 0, 0);
    }
    v7 = ;
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = _HFLocalizedStringWithDefaultValue(@"HFAccessorySettingGroupItemUnknownTitle", @"HFAccessorySettingGroupItemUnknownTitle", 1);
  }

  v12 = v11;

  return v12;
}

- (BOOL)_validateKeyPathDependencies
{
  homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  settings = [homeKitSettingsVendor settings];

  homeKitSettingsVendor2 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  hf_settingsValueManager = [homeKitSettingsVendor2 hf_settingsValueManager];

  entity = [(HFAccessorySettingGroupItem *)self entity];
  bOOLeanKeyPathDependencies = [entity BOOLeanKeyPathDependencies];
  if ([bOOLeanKeyPathDependencies count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HFAccessorySettingGroupItem__validateKeyPathDependencies__block_invoke;
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

uint64_t __59__HFAccessorySettingGroupItem__validateKeyPathDependencies__block_invoke(uint64_t a1, uint64_t a2)
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

- (void)_decorateHiddenOrDisabled:(id)disabled
{
  disabledCopy = disabled;
  entity = [(HFAccessorySettingGroupItem *)self entity];
  homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  hf_home = [homeKitSettingsVendor hf_home];
  hf_currentUserIsAdministrator = [hf_home hf_currentUserIsAdministrator];

  usageOptions = [(HFAccessorySettingGroupItem *)self usageOptions];
  v9 = [usageOptions objectForKeyedSubscript:?];
  bOOLValue = [v9 BOOLValue];

  entity2 = [(HFAccessorySettingGroupItem *)self entity];
  adapterIdentifier = [entity2 adapterIdentifier];

  if (!adapterIdentifier)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v13 homeManager];
  if (![homeManager hasOptedToHH2])
  {
    goto LABEL_12;
  }

  v15 = bOOLValue;
  v16 = entity;
  entity3 = [(HFAccessorySettingGroupItem *)self entity];
  adapterIdentifier2 = [entity3 adapterIdentifier];
  if (![adapterIdentifier2 isEqualToString:@"SiriLanguageAdapter"])
  {

    entity = v16;
    bOOLValue = v15;
LABEL_12:

LABEL_13:
    homeKitSettingsVendor2 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    hf_settingsAdapterManager = [homeKitSettingsVendor2 hf_settingsAdapterManager];
    entity4 = [(HFAccessorySettingGroupItem *)self entity];
    adapterIdentifier3 = [entity4 adapterIdentifier];
    v30 = [hf_settingsAdapterManager adapterForIdentifier:adapterIdentifier3];

    hf_siriLanguageOptionsManager = v30;
    if ([hf_siriLanguageOptionsManager conformsToProtocol:&unk_282536168])
    {
      v31 = hf_siriLanguageOptionsManager;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (!v32)
    {
      hf_siriLanguageOptionsManager = 0;
      v25 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  entity5 = [(HFAccessorySettingGroupItem *)self entity];
  keyPath = [entity5 keyPath];
  v69 = [keyPath isEqualToString:@"root.siri.personalRequests"];

  entity = v16;
  bOOLValue = v15;
  if (v69)
  {
    goto LABEL_13;
  }

  homeKitSettingsVendor3 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  if ([homeKitSettingsVendor3 conformsToProtocol:&unk_282584A38])
  {
    v22 = homeKitSettingsVendor3;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  hf_siriLanguageOptionsManager = [v23 hf_siriLanguageOptionsManager];

  if (!hf_siriLanguageOptionsManager)
  {
    [0 conformsToProtocol:&unk_282536168];
    entity6 = 0;
    v25 = 0;
    goto LABEL_18;
  }

  hf_siriLanguageOptionsManager = hf_siriLanguageOptionsManager;

LABEL_17:
  entity6 = [(HFAccessorySettingGroupItem *)self entity];
  v25 = [hf_siriLanguageOptionsManager shouldShowSettingsEntity:entity6] ^ 1;
LABEL_18:

LABEL_20:
LABEL_21:
  if ((hf_currentUserIsAdministrator | bOOLValue))
  {
    if ([(HFAccessorySettingGroupItem *)self _validateKeyPathDependencies])
    {
      v34 = 0;
    }

    else
    {
      requiresDependenciesToShowSetting = [entity requiresDependenciesToShowSetting];
      v34 = requiresDependenciesToShowSetting ^ 1;
      v25 |= requiresDependenciesToShowSetting;
    }

    [disabledCopy setObject:&unk_282523C88 forKeyedSubscript:@"state"];
    homeKitSettingsVendor4 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    settings = [homeKitSettingsVendor4 settings];
    isControllable = [settings isControllable];

    v35 = isControllable ^ 1 | v34;
    userInfo = [entity userInfo];
    v41 = [userInfo objectForKeyedSubscript:@"TargetViewControllerIdentifier"];
    if (v41)
    {
      homeKitSettingsVendor5 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      settings2 = [homeKitSettingsVendor5 settings];
      v44 = [settings2 isControllable] ^ 1;

      v35 |= v44;
    }
  }

  else
  {
    v35 = 0;
    v25 = 1;
  }

  v45 = [disabledCopy objectForKeyedSubscript:@"HFAccessorySettingGroupKeyPathKey"];
  if ([v45 isEqual:@"root.general.profiles"])
  {
    if (([(HFAccessorySettingGroupItem *)self _useManagedConfigurationForProfiles]| v25))
    {
LABEL_31:
      v46 = 1;
      goto LABEL_38;
    }
  }

  else if (v25)
  {
    goto LABEL_31;
  }

  if (!+[HFUtilities supportsAnalytics](HFUtilities, "supportsAnalytics") && (([v45 isEqual:@"root.general.analytics.logs"] & 1) != 0 || objc_msgSend(v45, "isEqual:", @"root.general.profiles")))
  {
    v46 = 0;
    v35 = 1;
  }

  else
  {
    v46 = 0;
  }

LABEL_38:
  if ([v45 isEqual:@"root.music.playbackInfluencesForYou"])
  {
    homeKitSettingsVendor6 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v70 = entity;
      objc_opt_class();
      homeKitSettingsVendor7 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v50 = homeKitSettingsVendor7;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50;

      accessory = [v51 accessory];

      softwareVersion = [accessory softwareVersion];
      if (softwareVersion)
      {
        softwareVersion2 = [accessory softwareVersion];
        v72 = *MEMORY[0x277D0F608];
        v73 = *(MEMORY[0x277D0F608] + 16);
        v55 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v72];
        v56 = [softwareVersion2 isAtLeastVersion:v55];
      }

      else
      {
        v56 = 1;
      }

      v46 = v46 | v56;
      entity = v70;
    }

    else
    {
      homeKitSettingsVendor8 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      objc_opt_class();
      v58 = objc_opt_isKindOfClass();

      if (v58)
      {
        objc_opt_class();
        homeKitSettingsVendor9 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
        if (objc_opt_isKindOfClass())
        {
          v60 = homeKitSettingsVendor9;
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;

        mediaProfiles = [v61 mediaProfiles];

        LODWORD(v61) = [mediaProfiles na_any:&__block_literal_global_69];
        v46 = v46 | v61;
      }
    }
  }

  v63 = [MEMORY[0x277CCABB0] numberWithBool:v46];
  [disabledCopy setObject:v63 forKeyedSubscript:@"hidden"];

  v64 = [MEMORY[0x277CCABB0] numberWithBool:v35 & 1];
  [disabledCopy setObject:v64 forKeyedSubscript:@"isDisabled"];

  if ((v35 & 1) == 0)
  {
    usageOptions2 = [(HFAccessorySettingGroupItem *)self usageOptions];
    v66 = [usageOptions2 objectForKeyedSubscript:@"HMSettingDisplayOption_AllowNonAdminAccess"];
    bOOLValue2 = [v66 BOOLValue];

    if (bOOLValue2)
    {
      [disabledCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    }
  }

  v68 = [MEMORY[0x277CCABB0] numberWithBool:hf_currentUserIsAdministrator];
  [disabledCopy setObject:v68 forKeyedSubscript:@"administrator"];

  [disabledCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
}

uint64_t __57__HFAccessorySettingGroupItem__decorateHiddenOrDisabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessory];
  v4 = [v3 softwareVersion];
  if (v4)
  {
    v5 = [v2 accessory];
    v6 = [v5 softwareVersion];
    v10 = *MEMORY[0x277D0F608];
    v11 = *(MEMORY[0x277D0F608] + 16);
    v7 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v10];
    v8 = [v6 isAtLeastVersion:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_useManagedConfigurationForProfiles
{
  homeKitSettingsVendor = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    homeKitSettingsVendor2 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v6 = homeKitSettingsVendor2;
    }

    else
    {
      v6 = 0;
    }

    anyObject = v6;
  }

  else
  {
    homeKitSettingsVendor3 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    homeKitSettingsVendor4 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v11 = homeKitSettingsVendor4;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    homeKitSettingsVendor2 = [v12 mediaProfiles];

    anyObject = [homeKitSettingsVendor2 anyObject];
  }

  v13 = anyObject;

LABEL_13:
  accessory = [v13 accessory];
  supportsManagedConfigurationProfile = [accessory supportsManagedConfigurationProfile];

  return supportsManagedConfigurationProfile;
}

@end