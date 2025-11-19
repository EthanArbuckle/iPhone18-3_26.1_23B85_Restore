@interface HFAccessorySettingGroupItem
- (BOOL)_useManagedConfigurationForProfiles;
- (BOOL)_validateKeyPathDependencies;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 entity:(id)a5;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 group:(id)a5;
- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 selectionSetting:(id)a5;
- (NSString)settingKeyPath;
- (id)_displayTitle;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateHiddenOrDisabled:(id)a3;
@end

@implementation HFAccessorySettingGroupItem

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 settings];
  v9 = [v8 rootGroup];

  v10 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:v7 usageOptions:v6 group:v9];
  return v10;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 entity:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];
  }

  v17.receiver = self;
  v17.super_class = HFAccessorySettingGroupItem;
  v13 = [(HFAccessorySettingGroupItem *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entity, a5);
    objc_storeStrong(&v14->_homeKitSettingsVendor, a3);
    objc_storeStrong(&v14->_usageOptions, a4);
  }

  return v14;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 group:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"group"}];

LABEL_3:
  v13 = [v12 keyPath];
  v14 = [v9 settings];
  v15 = [v14 hf_codex];
  v16 = [v15 hf_nodeWithKeyPath:v13];
  v17 = [v16 representedObject];

  v18 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:v9 usageOptions:v10 entity:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_settingGroup, a5);
  }

  return v19;
}

- (HFAccessorySettingGroupItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 selectionSetting:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingGroupItem.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"selectionSetting"}];

LABEL_3:
  v13 = [v12 keyPath];
  v14 = [v9 settings];
  v15 = [v14 hf_codex];
  v16 = [v15 hf_nodeWithKeyPath:v13];
  v17 = [v16 representedObject];

  v18 = [(HFAccessorySettingGroupItem *)self initWithHomeKitSettingsVendor:v9 usageOptions:v10 entity:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_selectionSetting, a5);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HFAccessorySettingGroupItem *)self selectionSetting];

  if (v5)
  {
    v6 = [objc_opt_class() allocWithZone:a3];
    v7 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    v8 = [(HFAccessorySettingGroupItem *)self usageOptions];
    v9 = [(HFAccessorySettingGroupItem *)self selectionSetting];
    v10 = [v6 initWithHomeKitSettingsVendor:v7 usageOptions:v8 selectionSetting:v9];
  }

  else
  {
    v11 = [(HFAccessorySettingGroupItem *)self settingGroup];

    v12 = [objc_opt_class() allocWithZone:a3];
    v7 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    v8 = [(HFAccessorySettingGroupItem *)self usageOptions];
    if (v11)
    {
      v9 = [(HFAccessorySettingGroupItem *)self settingGroup];
      v10 = [v12 initWithHomeKitSettingsVendor:v7 usageOptions:v8 group:v9];
    }

    else
    {
      v9 = [(HFAccessorySettingGroupItem *)self entity];
      v10 = [v12 initWithHomeKitSettingsVendor:v7 usageOptions:v8 entity:v9];
    }
  }

  v13 = v10;

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (NSString)settingKeyPath
{
  v3 = [(HFAccessorySettingGroupItem *)self selectionSetting];

  if (v3)
  {
    v4 = [(HFAccessorySettingGroupItem *)self selectionSetting];
  }

  else
  {
    v5 = [(HFAccessorySettingGroupItem *)self settingGroup];

    if (v5)
    {
      [(HFAccessorySettingGroupItem *)self settingGroup];
    }

    else
    {
      [(HFAccessorySettingGroupItem *)self entity];
    }
    v4 = ;
  }

  v6 = v4;
  v7 = [v4 keyPath];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = self;
  v84 = *MEMORY[0x277D85DE8];
  v5 = [(HFAccessorySettingGroupItem *)self entity];
  v6 = [(HFAccessorySettingGroupItem *)v4 settingKeyPath];
  v7 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v6];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v8 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:&unk_282523C88 forKeyedSubscript:@"state"];
  v9 = [(HFAccessorySettingGroupItem *)v4 entity];
  v10 = [v9 previewValueKeyPath];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(HFAccessorySettingGroupItem *)v4 settingKeyPath];
  }

  v13 = v12;

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v14 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];

  v15 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
  v16 = [v15 homekitObjectIdentifiers];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v16 forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v17 = MEMORY[0x277CBEB98];
  v18 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
  v19 = [v17 setWithObject:v18];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v19 forKeyedSubscript:@"dependentHomeKitObjects"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  v20 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v20 forKeyedSubscript:@"HFResultHomeKitSettingsVendorKey"];

  v21 = [v5 previewValueKeyPath];
  v22 = 0x277CCA000;
  if (v21)
  {
  }

  else if (([v5 previewAccessory] & 1) == 0)
  {
    goto LABEL_39;
  }

  v23 = [v5 previewAccessory];
  v24 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
  v25 = v24;
  aSelector = a2;
  v26 = v13;
  if (v23)
  {
    v27 = 0;
  }

  else
  {
    v28 = [v24 hf_settingsValueManager];

    v29 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
    v30 = [v29 settings];
    v31 = [v5 previewValueKeyPath];
    v32 = [v30 hf_accessorySettingAtKeyPath:v31];

    v25 = [v28 valueForSetting:v32];
    v27 = [v32 hf_isBooleanSetting];
  }

  v33 = +[HFHomeKitDispatcher sharedDispatcher];
  v34 = [v33 homeManager];
  v35 = [v34 hasOptedToHH2];

  if (v35 && (([v6 isEqualToString:@"root.siri.recognitionLanguage"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"root.siri.outputVoice")))
  {
    v36 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
    if ([v36 conformsToProtocol:&unk_282584A38])
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    v39 = [v38 hf_siriLanguageOptionsManager];

    if (v39)
    {
      v40 = HFLogForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        v81 = v41;
        v82 = 2112;
        v83 = v6;
        _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "%@ language setting %@ is being formatted, fetching the option from the siri endpoint manager instead", buf, 0x16u);
      }

      v42 = [v39 selectedLanguageOption];

      v25 = v42;
    }
  }

  v43 = [v5 previewValueFormatter];
  v44 = v43;
  v13 = v26;
  if (v43)
  {
    v45 = [v43 stringForObjectValue:v25];
  }

  else
  {
    if (v25)
    {
      v47 = v27;
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
  v54 = [(HFAccessorySettingGroupItem *)v4 _displayTitle];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v54 forKeyedSubscript:@"title"];

  [(HFMutableItemUpdateOutcome *)v7 setObject:v6 forKeyedSubscript:@"HFAccessorySettingGroupKeyPathKey"];
  v55 = [(HFAccessorySettingGroupItem *)v4 settingGroup];

  if (v55)
  {
    v56 = [(HFAccessorySettingGroupItem *)v4 settingGroup];
    v57 = @"HFAccessorySettingGroupRepresentitiveObjectKey";
  }

  else
  {
    v58 = [(HFAccessorySettingGroupItem *)v4 selectionSetting];

    if (!v58)
    {
      goto LABEL_44;
    }

    v59 = [(HFAccessorySettingGroupItem *)v4 selectionSetting];
    [(HFMutableItemUpdateOutcome *)v7 setObject:v59 forKeyedSubscript:@"HFAccessorySettingGroupRepresentitiveObjectKey"];

    v56 = [(HFAccessorySettingGroupItem *)v4 selectionSetting];
    v57 = @"HFAccessorySettingValueKey";
  }

  [(HFMutableItemUpdateOutcome *)v7 setObject:v56 forKeyedSubscript:v57];

LABEL_44:
  v60 = *(v22 + 2992);
  v61 = [(HFAccessorySettingGroupItem *)v4 entity];
  v62 = [v60 numberWithInteger:{objc_msgSend(v61, "interfaceModality")}];
  [(HFMutableItemUpdateOutcome *)v7 setObject:v62 forKeyedSubscript:@"HFAccessorySettingInterfaceModalityKey"];

  if (v5)
  {
    [(HFMutableItemUpdateOutcome *)v7 setObject:v5 forKeyedSubscript:@"HFAccessorySettingsEntityKey"];
  }

  if ([v5 interfaceModality] == 9)
  {
    v63 = [(HFAccessorySettingGroupItem *)v4 homeKitSettingsVendor];
    v64 = [v63 hf_settingsAdapterManager];
    v65 = [(HFAccessorySettingGroupItem *)v4 entity];
    [v65 adapterIdentifier];
    aSelectorb = v4;
    v66 = v5;
    v67 = v6;
    v69 = v68 = v13;
    v70 = [v64 adapterForIdentifier:v69];
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
    v6 = v67;
    v5 = v66;
    v4 = aSelectorb;

    v73 = [v72 inProgressButtonPressFutureForEntity:v5];

    [(HFMutableItemUpdateOutcome *)v7 setObject:v73 forKeyedSubscript:@"HFResultActionFutureKey"];
  }

  [(HFAccessorySettingGroupItem *)v4 _decorateHiddenOrDisabled:v7];
  v74 = [MEMORY[0x277D2C900] futureWithResult:v7];

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

- (id)_displayTitle
{
  v3 = [(HFAccessorySettingGroupItem *)self entity];
  v4 = [v3 overrideLocalizedTitleKey];

  if (v4)
  {
    v5 = [(HFAccessorySettingGroupItem *)self entity];
    v6 = [v5 overrideLocalizedTitleKey];
    v7 = _HFLocalizedStringWithDefaultValue(v6, v6, 1);
  }

  else
  {
    v8 = [(HFAccessorySettingGroupItem *)self settingGroup];

    if (v8)
    {
      v5 = [(HFAccessorySettingGroupItem *)self settingGroup];
      [v5 localizedTitle];
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(HFAccessorySettingGroupItem *)self settingKeyPath];
      v5 = [v9 stringWithFormat:@"HFAccessorySettingsGroupTitle-%@", v10];

      _HFLocalizedStringWithDefaultValue(v5, 0, 0);
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
  v3 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  v4 = [v3 settings];

  v5 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  v6 = [v5 hf_settingsValueManager];

  v7 = [(HFAccessorySettingGroupItem *)self entity];
  v8 = [v7 BOOLeanKeyPathDependencies];
  if ([v8 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HFAccessorySettingGroupItem__validateKeyPathDependencies__block_invoke;
    v11[3] = &unk_277DF3DB0;
    v12 = v4;
    v13 = v6;
    v9 = [v8 na_all:v11];
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

- (void)_decorateHiddenOrDisabled:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingGroupItem *)self entity];
  v6 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  v7 = [v6 hf_home];
  v71 = [v7 hf_currentUserIsAdministrator];

  v8 = [(HFAccessorySettingGroupItem *)self usageOptions];
  v9 = [v8 objectForKeyedSubscript:?];
  v10 = [v9 BOOLValue];

  v11 = [(HFAccessorySettingGroupItem *)self entity];
  v12 = [v11 adapterIdentifier];

  if (!v12)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  v14 = [v13 homeManager];
  if (![v14 hasOptedToHH2])
  {
    goto LABEL_12;
  }

  v15 = v10;
  v16 = v5;
  v17 = [(HFAccessorySettingGroupItem *)self entity];
  v18 = [v17 adapterIdentifier];
  if (![v18 isEqualToString:@"SiriLanguageAdapter"])
  {

    v5 = v16;
    v10 = v15;
LABEL_12:

LABEL_13:
    v26 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    v27 = [v26 hf_settingsAdapterManager];
    v28 = [(HFAccessorySettingGroupItem *)self entity];
    v29 = [v28 adapterIdentifier];
    v30 = [v27 adapterForIdentifier:v29];

    v24 = v30;
    if ([v24 conformsToProtocol:&unk_282536168])
    {
      v31 = v24;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (!v32)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v19 = [(HFAccessorySettingGroupItem *)self entity];
  v20 = [v19 keyPath];
  v69 = [v20 isEqualToString:@"root.siri.personalRequests"];

  v5 = v16;
  v10 = v15;
  if (v69)
  {
    goto LABEL_13;
  }

  v21 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  if ([v21 conformsToProtocol:&unk_282584A38])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [v23 hf_siriLanguageOptionsManager];

  if (!v24)
  {
    [0 conformsToProtocol:&unk_282536168];
    v33 = 0;
    v25 = 0;
    goto LABEL_18;
  }

  v24 = v24;

LABEL_17:
  v33 = [(HFAccessorySettingGroupItem *)self entity];
  v25 = [v24 shouldShowSettingsEntity:v33] ^ 1;
LABEL_18:

LABEL_20:
LABEL_21:
  if ((v71 | v10))
  {
    if ([(HFAccessorySettingGroupItem *)self _validateKeyPathDependencies])
    {
      v34 = 0;
    }

    else
    {
      v36 = [v5 requiresDependenciesToShowSetting];
      v34 = v36 ^ 1;
      v25 |= v36;
    }

    [v4 setObject:&unk_282523C88 forKeyedSubscript:@"state"];
    v37 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    v38 = [v37 settings];
    v39 = [v38 isControllable];

    v35 = v39 ^ 1 | v34;
    v40 = [v5 userInfo];
    v41 = [v40 objectForKeyedSubscript:@"TargetViewControllerIdentifier"];
    if (v41)
    {
      v42 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      v43 = [v42 settings];
      v44 = [v43 isControllable] ^ 1;

      v35 |= v44;
    }
  }

  else
  {
    v35 = 0;
    v25 = 1;
  }

  v45 = [v4 objectForKeyedSubscript:@"HFAccessorySettingGroupKeyPathKey"];
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
    v47 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v70 = v5;
      objc_opt_class();
      v49 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50;

      v52 = [v51 accessory];

      v53 = [v52 softwareVersion];
      if (v53)
      {
        v54 = [v52 softwareVersion];
        v72 = *MEMORY[0x277D0F608];
        v73 = *(MEMORY[0x277D0F608] + 16);
        v55 = [MEMORY[0x277D0F8F8] versionFromOperatingSystemVersion:&v72];
        v56 = [v54 isAtLeastVersion:v55];
      }

      else
      {
        v56 = 1;
      }

      v46 = v46 | v56;
      v5 = v70;
    }

    else
    {
      v57 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
      objc_opt_class();
      v58 = objc_opt_isKindOfClass();

      if (v58)
      {
        objc_opt_class();
        v59 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;

        v62 = [v61 mediaProfiles];

        LODWORD(v61) = [v62 na_any:&__block_literal_global_69];
        v46 = v46 | v61;
      }
    }
  }

  v63 = [MEMORY[0x277CCABB0] numberWithBool:v46];
  [v4 setObject:v63 forKeyedSubscript:@"hidden"];

  v64 = [MEMORY[0x277CCABB0] numberWithBool:v35 & 1];
  [v4 setObject:v64 forKeyedSubscript:@"isDisabled"];

  if ((v35 & 1) == 0)
  {
    v65 = [(HFAccessorySettingGroupItem *)self usageOptions];
    v66 = [v65 objectForKeyedSubscript:@"HMSettingDisplayOption_AllowNonAdminAccess"];
    v67 = [v66 BOOLValue];

    if (v67)
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    }
  }

  v68 = [MEMORY[0x277CCABB0] numberWithBool:v71];
  [v4 setObject:v68 forKeyedSubscript:@"administrator"];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
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
  v3 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v5 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v8 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    v10 = [(HFAccessorySettingGroupItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v5 = [v12 mediaProfiles];

    v7 = [v5 anyObject];
  }

  v13 = v7;

LABEL_13:
  v14 = [v13 accessory];
  v15 = [v14 supportsManagedConfigurationProfile];

  return v15;
}

@end