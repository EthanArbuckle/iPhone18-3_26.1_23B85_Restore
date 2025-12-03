@interface HFLightbulbServiceItem
+ (id)supportedServiceTypes;
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)lightProfile;
@end

@implementation HFLightbulbServiceItem

+ (id)supportedServiceTypes
{
  if (_MergedGlobals_309 != -1)
  {
    dispatch_once(&_MergedGlobals_309, &__block_literal_global_4_15);
  }

  v3 = qword_280E03B70;

  return v3;
}

void __47__HFLightbulbServiceItem_supportedServiceTypes__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EA0]];
  v1 = qword_280E03B70;
  qword_280E03B70 = v0;
}

- (id)createControlItemsWithOptions:(id)options
{
  v28[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_new();
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v7 = [HFPowerStateControlItem alloc];
  v27 = @"title";
  v8 = _HFLocalizedStringWithDefaultValue(@"HFControlShortTitlePower", @"HFControlShortTitlePower", 1);
  v28[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v10 = [(HFPowerStateControlItem *)v7 initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v9];

  [v5 na_safeAddObject:v10];
  v25[0] = @"title";
  v11 = HFItemOptionalLocalizedString(@"HFControlShortTitleColor", optionsCopy);
  v25[1] = @"controlItemPurpose";
  v26[0] = v11;
  v26[1] = &unk_282524F18;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v13 = [[HFColorControlItem alloc] initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v12];
  v14 = MEMORY[0x277CBEB38];
  v15 = HFItemOptionalLocalizedString(@"HFControlShortTitleBrightness", optionsCopy);

  v16 = [v14 dictionaryWithObject:v15 forKey:@"title"];

  characteristicOptions = [(HFControlItem *)v13 characteristicOptions];
  allCharacteristicTypes = [characteristicOptions allCharacteristicTypes];
  v19 = [allCharacteristicTypes count];

  if (v19)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v16 setObject:clearColor forKeyedSubscript:@"tintColor"];

    [v5 na_safeAddObject:v13];
  }

  v21 = [HFLightbulbControlItem alloc];
  v22 = [(HFIncrementalStateControlItem *)v21 initWithValueSource:controlItemValueSourceForPrimaryService primaryStateControlItem:v10 incrementalCharacteristicType:*MEMORY[0x277CCF788] displayResults:v16];
  [v5 na_safeAddObject:v22];

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  if (qword_280E03B78 != -1)
  {
    dispatch_once(&qword_280E03B78, &__block_literal_global_25_14);
  }

  v5 = qword_280E03B80;
  v6 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v5 options:optionsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_3;
  v9[3] = &unk_277DF2828;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

void __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9F0], *MEMORY[0x277CCF788], *MEMORY[0x277CCFA30], *MEMORY[0x277CCF7D8], *MEMORY[0x277CCF8D8], 0}];
  v1 = qword_280E03B80;
  qword_280E03B80 = v0;
}

id __54__HFLightbulbServiceItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 readResponse];
  v4 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF9F0]];
  v5 = [v4 characteristic];
  v6 = [v4 valueWithExpectedClass:objc_opt_class()];
  v7 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF788]];
  v38 = [v7 characteristic];
  v36 = v7;
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];
  v37 = v6;
  if (+[HFUtilities hasInternalDiagnostics])
  {
    v9 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      *buf = 138413058;
      v41 = v12;
      v42 = 2112;
      v43 = v37;
      v44 = 2112;
      v45 = v8;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%@ read power state %@, brightness %@ in item: %@", buf, 0x2Au);

      v6 = v37;
    }
  }

  if (v8 && ![v8 intValue] && objc_msgSend(v6, "BOOLValue"))
  {
    v14 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = *(a1 + 32);
      *buf = 138413058;
      v41 = v17;
      v42 = 2112;
      v43 = v8;
      v44 = 2112;
      v45 = &unk_282524F00;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@ overriding brightness from %@ to %@ in item: %@", buf, 0x2Au);

      v6 = v37;
    }

    v8 = &unk_282524F00;
  }

  v19 = [v2 standardResults];
  v20 = [v19 mutableCopy];

  v21 = [v2 displayMetadata];

  v22 = [v21 primaryState];
  if (v8)
  {
    v23 = &unk_282524F30;
    if (v22 == 2)
    {
      v23 = v8;
    }

    v24 = v23;
    v25 = [v38 metadata];
    v26 = [v25 hf_percentageForCharacteristicValue:v24];

    [v20 setObject:v26 forKeyedSubscript:@"subPriority"];
    v27 = [*(a1 + 32) descriptionForCharacteristic:v38 withValue:v24];
    v28 = [v20 objectForKeyedSubscript:@"description"];

    if (!v28)
    {
      if (v27 && v22 == 2)
      {
        [v20 setObject:v27 forKeyedSubscript:@"description"];
        goto LABEL_22;
      }

      if (v37)
      {
        v35 = [*(a1 + 32) descriptionForCharacteristic:v5 withValue:?];

        [v20 na_safeSetObject:v35 forKey:@"description"];
        v27 = v35;
      }
    }

    if (v22 == 1)
    {
      v29 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTitleIncrementalStateOff", @"HFCharacteristicTitleIncrementalStateOff", 1);
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v29 = [*(a1 + 32) controlDescriptionForCharacteristic:v38 withValue:v24];
    goto LABEL_23;
  }

  if (v6)
  {
    v29 = [*(a1 + 32) controlDescriptionForCharacteristic:v5 withValue:v6];
    v24 = [*(a1 + 32) descriptionForCharacteristic:v5 withValue:v6];
    [v20 na_safeSetObject:v24 forKey:@"description"];
    v26 = 0;
LABEL_24:

    v6 = v37;
    goto LABEL_25;
  }

  v26 = 0;
  v29 = 0;
LABEL_25:
  [v20 na_safeSetObject:v29 forKey:@"controlDescription"];
  [*(a1 + 32) applyInflectionToDescriptions:v20];
  v30 = MEMORY[0x277D2C900];
  v31 = [HFItemUpdateOutcome outcomeWithResults:v20];
  v32 = [v30 futureWithResult:v31];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  homeCopy = home;
  v16.receiver = self;
  v16.super_class = HFLightbulbServiceItem;
  v5 = [(HFServiceItem *)&v16 currentStateActionBuildersForHome:homeCopy];
  lightProfile = [(HFLightbulbServiceItem *)self lightProfile];
  settings = [lightProfile settings];
  supportedFeatures = [settings supportedFeatures];

  if (supportedFeatures)
  {
    v9 = [(HFItemBuilder *)[HFNaturalLightingActionBuilder alloc] initWithHome:homeCopy];
    [(HFNaturalLightingActionBuilder *)v9 setLightProfile:lightProfile];
    settings2 = [lightProfile settings];
    -[HFNaturalLightingActionBuilder setNaturalLightEnabled:](v9, "setNaturalLightEnabled:", [settings2 isNaturalLightingEnabled]);
  }

  else
  {
    v9 = 0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HFLightbulbServiceItem_currentStateActionBuildersForHome___block_invoke;
  v14[3] = &unk_277DFC8D8;
  v15 = v9;
  v11 = v9;
  v12 = [v5 flatMap:v14];

  return v12;
}

id __60__HFLightbulbServiceItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 na_safeAddObject:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)lightProfile
{
  service = [(HFServiceItem *)self service];
  hf_lightProfiles = [service hf_lightProfiles];

  if ([hf_lightProfiles count] >= 2)
  {
    NSLog(&cfstr_OnlyExpectedOn.isa, hf_lightProfiles);
  }

  anyObject = [hf_lightProfiles anyObject];

  return anyObject;
}

@end