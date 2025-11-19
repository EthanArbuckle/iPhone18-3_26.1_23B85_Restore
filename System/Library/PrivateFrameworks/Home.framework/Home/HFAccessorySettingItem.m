@interface HFAccessorySettingItem
- (BOOL)_validateKeyPathDependencies;
- (HFAccessorySettingItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5;
- (HFAccessorySettingsEntity)entity;
- (NSString)settingKeyPath;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)updateValue:(id)a3;
- (id)value;
- (void)_decorateHiddenOrDisabled:(id)a3;
- (void)_decorateOutcomeWithAccessorySettingResultKeys:(id)a3;
- (void)_decorateOutcomeWithDependencies:(id)a3;
- (void)_decorateOutcomeWithResultKeys:(id)a3;
@end

@implementation HFAccessorySettingItem

- (HFAccessorySettingItem)initWithHomeKitSettingsVendor:(id)a3 usageOptions:(id)a4 setting:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"homeKitSettingsVendor"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HFAccessorySettingItem.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"setting"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = HFAccessorySettingItem;
  v14 = [(HFAccessorySettingItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_homeKitSettingsVendor, a3);
    objc_storeStrong(&v15->_setting, a5);
    objc_storeStrong(&v15->_usageOptions, a4);
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [(HFAccessorySettingItem *)self usageOptions];
  v7 = [(HFAccessorySettingItem *)self setting];
  v8 = [v4 initWithHomeKitSettingsVendor:v5 usageOptions:v6 setting:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFAccessorySettingsEntity)entity
{
  entity = self->_entity;
  if (!entity)
  {
    v4 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v5 = [v4 settings];
    v6 = [v5 hf_codex];
    v7 = [(HFAccessorySettingItem *)self settingKeyPath];
    v8 = [v6 hf_nodeWithKeyPath:v7];
    v9 = [v8 representedObject];
    v10 = self->_entity;
    self->_entity = v9;

    entity = self->_entity;
  }

  v11 = entity;

  return v11;
}

- (NSString)settingKeyPath
{
  v2 = [(HFAccessorySettingItem *)self setting];
  v3 = [v2 keyPath];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  [(HFAccessorySettingItem *)self _decorateOutcomeWithResultKeys:v5];
  [(HFAccessorySettingItem *)self _decorateOutcomeWithDependencies:v5];
  [(HFAccessorySettingItem *)self _decorateOutcomeWithAccessorySettingResultKeys:v5];
  [(HFAccessorySettingItem *)self _decorateHiddenOrDisabled:v5];
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
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [v5 hf_settingsValueManager];

  if (!v6)
  {
    NSLog(&cfstr_ValueManagerWa.isa);
  }

  v7 = HFLogForCategory(0x3EuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(HFAccessorySettingItem *)self setting];
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Updating setting item '%@/%@' to value: %@", &v14, 0x20u);
  }

  if (v6)
  {
    v9 = [(HFAccessorySettingItem *)self setting];
    [v6 changeValueForSetting:v9 toValue:v4];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:7];
    [v10 futureWithError:v9];
  }
  v11 = ;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)value
{
  v3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v4 = [v3 hf_settingsValueManager];

  v5 = [(HFAccessorySettingItem *)self setting];
  v6 = [v4 valueForSetting:v5];

  return v6;
}

- (BOOL)_validateKeyPathDependencies
{
  v3 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v4 = [v3 settings];

  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [v5 hf_settingsValueManager];

  v7 = [(HFAccessorySettingItem *)self entity];
  v8 = [v7 BOOLeanKeyPathDependencies];
  if ([v8 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__HFAccessorySettingItem__validateKeyPathDependencies__block_invoke;
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

- (void)_decorateOutcomeWithDependencies:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  [v4 setObject:v5 forKeyedSubscript:@"HFResultHomeKitSettingsVendorKey"];

  v6 = MEMORY[0x277CBEB58];
  v7 = [(HFAccessorySettingItem *)self setting];
  v8 = [v7 keyPath];
  v16 = [v6 setWithObject:v8];

  v9 = [(HFAccessorySettingItem *)self entity];
  v10 = [v9 BOOLeanKeyPathDependencies];
  [v16 na_safeAddObjectsFromArray:v10];

  [v4 setObject:v16 forKeyedSubscript:@"HFResultSettingKeyPathsDependenciesKey"];
  v11 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v12 = [v11 homekitObjectIdentifiers];
  [v4 setObject:v12 forKeyedSubscript:@"HFResultSettingParentIdentifiersDependenciesKey"];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v15 = [v13 setWithObject:v14];
  [v4 setObject:v15 forKeyedSubscript:@"dependentHomeKitObjects"];
}

- (void)_decorateOutcomeWithAccessorySettingResultKeys:(id)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v6 = [v5 hf_settingsValueManager];

  v7 = [(HFAccessorySettingItem *)self entity];
  v8 = [(HFAccessorySettingItem *)self setting];
  v73 = v6;
  v9 = [v6 valueForSetting:v8];
  if (v9)
  {
    [v4 setObject:v9 forKeyedSubscript:@"HFAccessorySettingValueKey"];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB68] null];
    [v4 setObject:v10 forKeyedSubscript:@"HFAccessorySettingValueKey"];
  }

  v11 = [(HFAccessorySettingItem *)self setting];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [(HFAccessorySettingItem *)self setting];
    v14 = [v13 stepValue];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_282525510;
    }

    [v4 setObject:v16 forKeyedSubscript:@"HFAccessorySettingNumberValueStepKey"];

    v17 = [v13 maximumValue];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_282525520;
    }

    [v4 setObject:v19 forKeyedSubscript:@"HFAccessorySettingNumberValueMaxKey"];

    v20 = [v13 minimumValue];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &unk_282525530;
    }

    [v4 setObject:v22 forKeyedSubscript:@"HFAccessorySettingNumberValueMinKey"];
  }

  v72 = v7;
  if (!v7)
  {
    v24 = MEMORY[0x277CBEC10];
LABEL_20:
    v25 = [(HFAccessorySettingItem *)self setting];
    v23 = HFAccessorySettingsDefaultInterfaceModalityForHMAccessorySetting(v25);

    goto LABEL_21;
  }

  [v4 setObject:v7 forKeyedSubscript:@"HFAccessorySettingsEntityKey"];
  v23 = [v7 interfaceModality];
  v24 = [v7 userInfo];
  if (v23 == 1 || v23 == -1)
  {
    goto LABEL_20;
  }

LABEL_21:
  v26 = [(HFAccessorySettingItem *)self settingKeyPath];
  if (![v26 isEqualToString:@"root.siri.allowHeySiri"])
  {

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
    v43 = @"HFAccessorySettingInterfaceModalityKey";
LABEL_32:
    [v4 setObject:v28 forKeyedSubscript:v43];
    goto LABEL_33;
  }

  v27 = [(HFAccessorySettingItem *)self settingKeyPath];
  [v27 isEqualToString:@"root.siri.allowHeySiri"];

  v28 = [(HFAccessorySettingItem *)self settingKeyPath];
  if ([v28 isEqualToString:@"root.siri.allowHeySiri"])
  {
    v29 = [v4 objectForKeyedSubscript:@"HFAccessorySettingInterfaceModalityKey"];

    if (v29)
    {
      goto LABEL_34;
    }

    v30 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if ([v30 conformsToProtocol:&unk_282584A38])
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v33 = [v32 accessories];

    v34 = [v33 anyObject];
    v35 = [v34 mediaProfile];
    v36 = [v35 hf_mediaAccessoryCommonSettingsManager];
    v37 = [v36 settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];
    v38 = [v37 BOOLValue];

    v39 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v40 = [v39 hf_settingsValueManager];
    v41 = [v40 valueForSettingAtKeyPath:@"root.siri.allowHeySiri"];
    LOBYTE(v35) = [v41 BOOLValue];

    if ((v38 | v35))
    {
      v42 = @"HFSiriSetting_On";
    }

    else
    {
      v42 = @"HFSiriSetting_Off";
    }

    v28 = _HFLocalizedStringWithDefaultValue(v42, v42, 1);
    v43 = @"description";
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  [v4 setObject:v24 forKeyedSubscript:@"HFAccessorySettingUserInfoKey"];
  v44 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  v71 = v24;
  if (v45)
  {
    objc_opt_class();
    v46 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    v49 = [v48 accessory];
    v50 = [v49 mediaProfile];
    v51 = [HFMediaHelper isHomePodOriginal:v50];

    v52 = [v48 accessory];

    v53 = [v52 mediaProfile];
    v54 = [HFMediaHelper isHomePodMini:v53];

    v55 = @"homepodmini.fill";
    v56 = @"homepod.fill";
  }

  else
  {
    v57 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    v55 = @"homepodmini.fill";
    v56 = @"homepod.fill";
    if (v58)
    {
      objc_opt_class();
      v59 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
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
  v63 = [MEMORY[0x277D75348] systemGrayColor];
  v74[0] = v63;
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
      [v4 setObject:v68 forKeyedSubscript:@"icon"];
    }
  }

LABEL_55:

  v70 = *MEMORY[0x277D85DE8];
}

- (void)_decorateOutcomeWithResultKeys:(id)a3
{
  v65 = a3;
  v4 = [(HFAccessorySettingItem *)self settingKeyPath];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v4];
  [v65 setObject:v5 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  v6 = [(HFAccessorySettingItem *)self entity];
  v7 = [v6 overrideLocalizedTitleKey];

  if (v7)
  {
    v8 = [(HFAccessorySettingItem *)self entity];
    v9 = [v8 overrideLocalizedTitleKey];
    v10 = _HFLocalizedStringWithDefaultValue(v9, v9, 1);
    [v65 setObject:v10 forKeyedSubscript:@"title"];

LABEL_5:
    goto LABEL_6;
  }

  v11 = [(HFAccessorySettingItem *)self setting];
  v12 = [v11 localizedTitle];

  if (v12)
  {
    v8 = [(HFAccessorySettingItem *)self setting];
    v9 = [v8 localizedTitle];
    [v65 setObject:v9 forKeyedSubscript:@"title"];
    goto LABEL_5;
  }

  NSLog(&cfstr_AccessorySetti.isa);
LABEL_6:
  [v65 setObject:v4 forKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
  v13 = MEMORY[0x277CCABB0];
  v14 = [(HFAccessorySettingItem *)self setting];
  v15 = [v13 numberWithBool:{objc_msgSend(v14, "isWritable")}];
  [v65 setObject:v15 forKeyedSubscript:@"HFAccessorySettingIsWritableKey"];

  v16 = [(HFAccessorySettingItem *)self setting];
  [v65 setObject:v16 forKeyedSubscript:@"HFAccessorySettingRepresentitiveObjectKey"];

  v17 = [(HFAccessorySettingItem *)self entity];
  v18 = [v17 interfaceModality];

  if (v18 == 9)
  {
    v19 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v20 = [v19 hf_settingsAdapterManager];
    v21 = [(HFAccessorySettingItem *)self entity];
    v22 = [v21 adapterIdentifier];
    v23 = [v20 adapterForIdentifier:v22];
    if ([v23 conformsToProtocol:&unk_282567A78])
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v26 = [(HFAccessorySettingItem *)self entity];
    v27 = [v25 inProgressButtonPressFutureForEntity:v26];

    [v65 setObject:v27 forKeyedSubscript:@"HFResultActionFutureKey"];
  }

  v28 = [(HFAccessorySettingItem *)self settingKeyPath];
  v29 = [v28 isEqualToString:@"root.siri.allowHeySiri"];

  v30 = [(HFAccessorySettingItem *)self settingKeyPath];
  v31 = [v30 isEqualToString:@"root.siri.allowHeySiri"];

  if (v29)
  {
    v32 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v33 = [v32 hf_home];
    if ([v33 siriPhraseOptions] == 3)
    {
      v34 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      v35 = [v34 hf_home];
      v36 = [v35 hf_atLeastOneMediaAccessoryWithSupportingJustSiriLanguage];

      if (v36)
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
    [v65 setObject:v38 forKeyedSubscript:@"title"];
  }

  else if (v31)
  {
    goto LABEL_45;
  }

  v39 = [(HFAccessorySettingItem *)self entity];
  v40 = [v39 previewValueKeyPath];
  if (v40)
  {

    goto LABEL_23;
  }

  v41 = [(HFAccessorySettingItem *)self entity];
  v42 = [v41 previewAccessory];

  if (v42)
  {
LABEL_23:
    v43 = [(HFAccessorySettingItem *)self entity];
    v44 = [v43 previewAccessory];

    v45 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    v46 = v45;
    if (v44)
    {
      v47 = 0;
    }

    else
    {
      v48 = [v45 hf_settingsValueManager];

      v49 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      v50 = [v49 settings];
      v51 = [(HFAccessorySettingItem *)self entity];
      v52 = [v51 previewValueKeyPath];
      v53 = [v50 hf_accessorySettingAtKeyPath:v52];

      v46 = [v48 valueForSetting:v53];
      v47 = [v53 hf_isBooleanSetting];
    }

    v54 = [(HFAccessorySettingItem *)self entity];
    v55 = [v54 previewValueFormatter];

    if (v55)
    {
      v56 = [v55 stringForObjectValue:v46];
    }

    else
    {
      if (v46)
      {
        v58 = v47;
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

    [v65 setObject:v64 forKeyedSubscript:@"description"];
  }

LABEL_45:
}

- (void)_decorateHiddenOrDisabled:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAccessorySettingItem *)self entity];
  v6 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v7 = [v6 hf_home];
  v8 = [v7 hf_currentUserIsAdministrator];

  v9 = [(HFAccessorySettingItem *)self setting];
  v10 = [v9 isWritable];

  v11 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  v12 = [v11 settings];
  v13 = [v12 isControllable];

  v14 = [(HFAccessorySettingItem *)self usageOptions];
  v15 = [v14 objectForKeyedSubscript:?];
  v16 = [v15 BOOLValue];

  v91 = objc_opt_new();
  v90 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__HFAccessorySettingItem__decorateHiddenOrDisabled___block_invoke;
  aBlock[3] = &unk_277DF3DD8;
  aBlock[4] = self;
  v17 = v5;
  v94 = v17;
  v92 = _Block_copy(aBlock);
  v18 = off_277DF0000;
  v88 = v8;
  if ((v8 & 1) == 0 && !v16)
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
    v22 = [v17 requiresDependenciesToShowSetting];
    v23 = MEMORY[0x277CCACA8];
    v24 = [v17 BOOLeanKeyPathDependencies];
    v25 = [v23 stringWithFormat:@"KeyPath dependencies possess one or more failed cases: %@", v24];
    v89 = v22;
    v19 = v22 ^ 1;
    (v92[2])();
  }

  if ((v10 & v13 & 1) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = [(HFAccessorySettingItem *)self setting];
      v28 = [v27 keyPath];
      v29 = [(HFAccessorySettingItem *)self setting];
      v30 = [(HFAccessorySettingItem *)self setting];
      v31 = [v30 isWritable];
      v32 = @"Read Only";
      if (v31)
      {
        v32 = @"Read/Write";
      }

      v33 = [v26 stringWithFormat:@"Setting '%@' is readonly: %@/%@", v28, v29, v32];
      v92[2](v92, v90, v33);
    }

    if ((v13 & 1) == 0)
    {
      v34 = MEMORY[0x277CCACA8];
      v35 = [(HFAccessorySettingItem *)self setting];
      v36 = [v35 keyPath];
      v37 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
      v38 = [v37 settings];
      v39 = [v34 stringWithFormat:@"Setting '%@' is not controllable: %@/%@", v36, v38, @"NOT CONTROLLABLE"];
      v92[2](v92, v90, v39);
    }

    v19 = 1;
  }

  v40 = [(HFAccessorySettingItem *)self setting];
  v41 = [v40 keyPath];
  v87 = [v41 isEqualToString:@"root.announce.enabled"];

  v42 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  LOBYTE(v41) = objc_opt_isKindOfClass();

  if (v41)
  {
    objc_opt_class();
    v43 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;

    v46 = [v45 accessory];
    v47 = [v46 hf_isHomePod];

    v48 = [v45 accessory];

    v49 = [v48 supportsAudioAnalysis];
    if ((v47 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    v58 = +[HFUtilities isAMac];
    v50 = 1;
    goto LABEL_29;
  }

  v51 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v50 = 0;
    v49 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  v53 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;

  v56 = [v55 accessories];

  v57 = [v56 anyObject];
  v49 = [v57 supportsAudioAnalysis];

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

  v60 = [(HFAccessorySettingItem *)self setting];
  v61 = [v60 keyPath];
  v62 = [v61 isEqualToString:@"root.audioAnalysis.enabled"];

  if (v62)
  {
    v21 = v91;
    if ((v50 & v49 & 1) == 0)
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
    v63 = [v4 objectForKeyedSubscript:@"HFAccessorySettingKeyPathKey"];
    v64 = [v63 isEqual:@"root.general.analytics.shareSpeakerAnalytics"];

    v19 = v19 | v64;
  }

  [v4 setObject:&unk_282523490 forKeyedSubscript:@"state"];
  if ([v17 interfaceModality] == 5)
  {
    v65 = [(HFAccessorySettingItem *)self setting];
    if (v65)
    {
      v66 = v65;
      v67 = [(HFAccessorySettingItem *)self setting];
      objc_opt_class();
      v68 = objc_opt_isKindOfClass();

      if (v68)
      {
        v69 = [(HFAccessorySettingItem *)self homeKitSettingsVendor];
        v70 = [v69 hf_settingsValueManager];

        v71 = MEMORY[0x277CCABB0];
        v72 = [(HFAccessorySettingItem *)self setting];
        v73 = [v70 valueForSetting:v72];
        if ([v73 BOOLValue])
        {
          v74 = 2;
        }

        else
        {
          v74 = 1;
        }

        v75 = [v71 numberWithInteger:v74];
        [v4 setObject:v75 forKeyedSubscript:@"state"];

        v21 = v91;
      }
    }
  }

  v76 = [MEMORY[0x277CCABB0] numberWithBool:v89];
  [v4 setObject:v76 forKeyedSubscript:@"hidden"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v4 setObject:v77 forKeyedSubscript:@"isDisabled"];

  if ((v19 & 1) == 0)
  {
    v78 = [(HFAccessorySettingItem *)self usageOptions];
    v79 = [v78 objectForKeyedSubscript:@"HMSettingDisplayOption_AllowNonAdminAccess"];
    v80 = [v79 BOOLValue];

    if (v80)
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    }
  }

  if ([v90 count])
  {
    v81 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [v17 keyPath];
      *buf = 138412546;
      v96 = v82;
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
      v84 = [v17 keyPath];
      *buf = 138412546;
      v96 = v84;
      v97 = 2112;
      v98 = v21;
      _os_log_impl(&dword_20D9BF000, v83, OS_LOG_TYPE_DEFAULT, "Setting Item @ keypath '%@' is hidden for reasons: %@", buf, 0x16u);
    }
  }

  v85 = [MEMORY[0x277CCABB0] numberWithBool:v88];
  [v4 setObject:v85 forKeyedSubscript:@"administrator"];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
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