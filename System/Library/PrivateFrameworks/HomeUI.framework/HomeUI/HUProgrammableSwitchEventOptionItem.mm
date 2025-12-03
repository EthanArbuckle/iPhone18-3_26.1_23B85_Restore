@interface HUProgrammableSwitchEventOptionItem
+ (id)_buildOutTriggerEditorOptionsForCharacteristic:(id)characteristic triggerValue:(id)value latestResults:(id)results;
+ (id)_longformTitleForCharacteristic:(id)characteristic latestResults:(id)results;
+ (id)_sectionTitleForCharacteristic:(id)characteristic latestResults:(id)results;
+ (id)_triggerBuilderContextAwareTitleForCharacteristic:(id)characteristic latestResults:(id)results;
- (HMCharacteristic)characteristic;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristic:(id)characteristic triggerValue:(id)value valueSource:(id)source;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics thresholdValueRange:(id)range;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics triggerValue:(id)value;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics triggerValueRange:(id)range;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUProgrammableSwitchEventOptionItem

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristic:(id)characteristic triggerValue:(id)value valueSource:(id)source
{
  characteristicCopy = characteristic;
  valueCopy = value;
  sourceCopy = source;
  if (sourceCopy)
  {
    if (characteristicCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    if (valueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

  if (!characteristicCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (valueCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"triggerValue"}];

LABEL_4:
  v12 = [MEMORY[0x277CBEB98] setWithObject:characteristicCopy];
  v18.receiver = self;
  v18.super_class = HUProgrammableSwitchEventOptionItem;
  v13 = [(HUCharacteristicEventOptionItem *)&v18 initWithCharacteristics:v12 triggerValue:valueCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_valueSource, source);
  }

  return v13;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics triggerValue:(id)value
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:triggerValue:]", v7}];

  return 0;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics triggerValueRange:(id)range
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:triggerValueRange:]", v7}];

  return 0;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)characteristics thresholdValueRange:(id)range
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:52 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:thresholdValueRange:]", v7}];

  return 0;
}

- (HMCharacteristic)characteristic
{
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  anyObject = [characteristics anyObject];

  return anyObject;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v125 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  characteristics = [(HUCharacteristicEventOptionItem *)self characteristics];
  v6 = [characteristics count];

  if (!v6)
  {
    NSLog(&cfstr_MustHaveCharac.isa);
  }

  characteristics2 = [(HUCharacteristicEventOptionItem *)self characteristics];

  if (characteristics2)
  {
    triggerValue = [(HUCharacteristicEventOptionItem *)self triggerValue];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = MEMORY[0x277CD19F8];
    characteristics3 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v12 = [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:characteristics3 triggerValue:triggerValue];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277CBEC38];
    }

    v14 = MEMORY[0x277D13FB8];
    if (v12)
    {
      v14 = MEMORY[0x277D13F60];
    }

    [dictionary setObject:v13 forKeyedSubscript:*v14];
    characteristic = [(HUProgrammableSwitchEventOptionItem *)self characteristic];
    if (!characteristic)
    {
      NSLog(&cfstr_NoProgrammable.isa);
    }

    hf_home = [characteristic hf_home];
    v17 = [characteristic hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:triggerValue];
    hf_remoteAccessState = [hf_home hf_remoteAccessState];
    v19 = v17 != 0;
    if (hf_remoteAccessState != 1)
    {
      v19 = 1;
    }

    v89 = v12;
    selfCopy = self;
    v84 = v19;
    if (hf_remoteAccessState == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = [hf_home hf_currentUserIsAdministrator] ^ 1;
    }

    v86 = v20;
    v90 = dictionary;
    v91 = optionsCopy;
    v87 = v17;
    v88 = hf_home;
    v94 = triggerValue;
    if (v17)
    {
      v24 = MEMORY[0x277CBEB98];
      allKeys = [dictionary allKeys];
      v26 = [v24 setWithArray:allKeys];

      v27 = [objc_alloc(MEMORY[0x277D14C60]) initWithHome:hf_home trigger:v17];
      v28 = [v27 updateWithOptions:optionsCopy];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke;
      v115[3] = &unk_277DC1220;
      v116 = v26;
      selfCopy2 = selfCopy;
      v117 = dictionary;
      v118 = selfCopy;
      v119 = characteristic;
      v120 = triggerValue;
      v30 = v26;
      v31 = [v28 flatMap:v115];
    }

    else
    {
      v32 = MEMORY[0x277D2C900];
      v33 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
      v31 = [v32 futureWithResult:v33];

      selfCopy2 = self;
    }

    service = [characteristic service];
    hf_labelNamespaceCharacteristic = [service hf_labelNamespaceCharacteristic];

    v95 = characteristic;
    service2 = [characteristic service];
    hf_labelIndexCharacteristic = [service2 hf_labelIndexCharacteristic];

    v38 = objc_opt_new();
    service3 = [hf_labelNamespaceCharacteristic service];
    [v38 na_safeAddObject:service3];

    service4 = [hf_labelIndexCharacteristic service];
    [v38 na_safeAddObject:service4];

    service5 = [hf_labelNamespaceCharacteristic service];
    accessory = [service5 accessory];
    hf_programmableSwitchNamespaceServices = [accessory hf_programmableSwitchNamespaceServices];
    allObjects = [hf_programmableSwitchNamespaceServices allObjects];
    v45 = allObjects;
    v46 = MEMORY[0x277CBEBF8];
    if (allObjects)
    {
      v46 = allObjects;
    }

    v47 = v46;

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v111 objects:v124 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v112;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v112 != v51)
          {
            objc_enumerationMutation(v48);
          }

          [v38 addObject:*(*(&v111 + 1) + 8 * i)];
        }

        v50 = [v48 countByEnumeratingWithState:&v111 objects:v124 count:16];
      }

      while (v50);
    }

    v53 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF930], *MEMORY[0x277CCF928], 0}];
    v93 = v31;
    v83 = v53;
    if ([v38 count])
    {
      valueSource = [(HUProgrammableSwitchEventOptionItem *)selfCopy2 valueSource];
      v55 = [valueSource readValuesForCharacteristicTypes:v53 inServices:v38];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_3;
      v103[3] = &unk_277DC1270;
      v104 = v48;
      v105 = hf_labelNamespaceCharacteristic;
      v106 = hf_labelIndexCharacteristic;
      v107 = v95;
      v108 = v94;
      v109 = v84;
      v110 = v86;
      v56 = [v55 flatMap:v103];

      v57 = v104;
      v58 = selfCopy2;
      v59 = 0x277D2C000;
    }

    else
    {
      v82 = hf_labelNamespaceCharacteristic;
      value = [hf_labelIndexCharacteristic value];
      if (!value)
      {
        v61 = MEMORY[0x277CCABB0];
        service6 = [v95 service];
        value = [v61 numberWithUnsignedInteger:{objc_msgSend(service6, "hf_fallbackProgrammableSwitchIndex")}];
      }

      v63 = MEMORY[0x277CBEB38];
      v122[0] = @"sectionNamespace";
      v64 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D14D48]];
      v123[0] = v64;
      v123[1] = value;
      v122[1] = @"sectionElementIndex";
      v122[2] = @"sectionIndex";
      v123[2] = &unk_282491D78;
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:3];
      v66 = [v63 dictionaryWithDictionary:v65];

      v67 = [v95 hf_eventTriggersForTriggerValue:v94];
      [v66 na_safeSetObject:v67 forKey:@"associateadTriggersKey"];

      v68 = [MEMORY[0x277CCABB0] numberWithBool:v84];
      [v66 setObject:v68 forKey:@"itemIsEditable"];

      v69 = [MEMORY[0x277CCABB0] numberWithBool:v86];
      [v66 setObject:v69 forKey:*MEMORY[0x277D140D0]];

      v59 = 0x277D2C000uLL;
      v70 = MEMORY[0x277D2C900];
      v71 = [MEMORY[0x277D14780] outcomeWithResults:v66];
      v72 = v70;
      v57 = value;
      v56 = [v72 futureWithResult:v71];

      v58 = selfCopy;
      v31 = v93;
      hf_labelNamespaceCharacteristic = v82;
    }

    v73 = *(v59 + 2304);
    v121[0] = v31;
    v121[1] = v56;
    v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
    v74 = [v73 combineAllFutures:v85];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_64;
    v96[3] = &unk_277DC1298;
    v96[4] = v58;
    v97 = v95;
    v98 = v94;
    v99 = hf_labelIndexCharacteristic;
    v100 = hf_labelNamespaceCharacteristic;
    v101 = v87;
    v102 = v48;
    v75 = v48;
    v76 = v87;
    v77 = hf_labelNamespaceCharacteristic;
    v78 = hf_labelIndexCharacteristic;
    v79 = v94;
    v80 = v95;
    v23 = [v74 flatMap:v96];

    optionsCopy = v91;
  }

  else
  {
    v21 = MEMORY[0x277D2C900];
    v22 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v23 = [v21 futureWithError:v22];
  }

  return v23;
}

id __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = [v4 results];
  v6 = [v5 allKeys];
  v7 = [v3 setWithArray:v6];
  v8 = [v7 mutableCopy];

  [v8 minusSet:*(a1 + 32)];
  v9 = [v4 results];

  v10 = [*(a1 + 40) mutableCopy];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_2;
  v21 = &unk_277DC11F8;
  v22 = v10;
  v23 = v9;
  v11 = v9;
  v12 = v10;
  [v8 enumerateObjectsUsingBlock:&v18];
  v13 = [objc_opt_class() _buildOutTriggerEditorOptionsForCharacteristic:*(a1 + 56) triggerValue:*(a1 + 64) latestResults:{v12, v18, v19, v20, v21}];
  [v12 addEntriesFromDictionary:v13];
  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277D14780] outcomeWithResults:v12];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

void __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

id __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_4;
  v31[3] = &unk_277DC1248;
  v6 = v3;
  v32 = v6;
  v7 = [v5 sortedArrayUsingComparator:v31];
  v8 = [*(a1 + 40) service];
  v9 = [v7 indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v7 count])
    {
      NSLog(&cfstr_UnableToFindNa_0.isa);
    }

    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    v14 = 0;
LABEL_11:
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D14D48]];

    v14 = v15;
    goto LABEL_12;
  }

  v11 = *MEMORY[0x277CCF930];
  v12 = [v10 service];
  v13 = [v6 responseForCharacteristicType:v11 inService:v12];
  v14 = [v13 valueWithExpectedClass:objc_opt_class()];

  if (!v14)
  {
    v14 = [*(a1 + 40) value];
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  [v14 integerValue];
  if ((HMCharacteristicValueLabelNamespaceValidate() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v16 = *MEMORY[0x277CCF928];
  v17 = [*(a1 + 48) service];
  v18 = [v6 responseForCharacteristicType:v16 inService:v17];
  v19 = [v18 valueWithExpectedClass:objc_opt_class()];

  if (!v19)
  {
    v20 = [*(a1 + 48) value];
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = [*(a1 + 56) service];
      v19 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "hf_fallbackProgrammableSwitchIndex")}];
    }
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [v4 na_safeSetObject:v23 forKey:@"sectionIndex"];

  [v4 na_safeSetObject:v14 forKey:@"sectionNamespace"];
  [v4 na_safeSetObject:v19 forKey:@"sectionElementIndex"];
  v24 = [*(a1 + 56) hf_eventTriggersForTriggerValue:*(a1 + 64)];
  [v4 na_safeSetObject:v24 forKey:@"associateadTriggersKey"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
  [v4 setObject:v25 forKey:@"itemIsEditable"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 73)];
  [v4 setObject:v26 forKey:*MEMORY[0x277D140D0]];

  v27 = MEMORY[0x277D2C900];
  v28 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v29 = [v27 futureWithResult:v28];

  return v29;
}

uint64_t __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CCF930];
  v8 = [*(a1 + 32) responseForCharacteristicType:*MEMORY[0x277CCF930] inService:v5];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [*(a1 + 32) responseForCharacteristicType:v7 inService:v6];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [v9 compare:v11];
  if (!v12)
  {
    v13 = [v5 uniqueIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v6 uniqueIdentifier];
    v16 = [v15 UUIDString];
    v12 = [v14 compare:v16];
  }

  return v12;
}

id __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_64(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addResultsFromOutcome:{*(*(&v23 + 1) + 8 * i), v23}];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v10 = objc_opt_class();
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [v4 results];
  v14 = [v10 _buildOutTriggerEditorOptionsForCharacteristic:v11 triggerValue:v12 latestResults:v13];

  [v4 addResultsFromDictionary:v14];
  v15 = [MEMORY[0x277CBEB58] set];
  [v15 na_safeAddObject:*(a1 + 56)];
  [v15 na_safeAddObject:*(a1 + 64)];
  [v15 na_safeAddObject:*(a1 + 72)];
  v16 = [*(a1 + 32) characteristics];
  v17 = [v16 allObjects];
  [v15 addObjectsFromArray:v17];

  [v15 addObjectsFromArray:*(a1 + 80)];
  [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F98]];
  v19 = MEMORY[0x277D2C900];
  v20 = [v4 copy];
  v21 = [v19 futureWithResult:v20];

  return v21;
}

+ (id)_longformTitleForCharacteristic:(id)characteristic latestResults:(id)results
{
  characteristicCopy = characteristic;
  resultsCopy = results;
  v8 = [self _shortformTitleForLatestResults:resultsCopy];
  service = [characteristicCopy service];
  accessory = [service accessory];
  hf_numberOfProgrammableSwitches = [accessory hf_numberOfProgrammableSwitches];

  if (hf_numberOfProgrammableSwitches == 1)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v8 lowercaseStringWithLocale:currentLocale];
  }

  else
  {
    currentLocale = [self _sectionTitleForCharacteristic:characteristicCopy latestResults:resultsCopy];
    v20 = HULocalizedStringWithFormat(@"HUProgrammableSwitchEventOptionLongFormTitleFormatString", @"%@%@", v14, v15, v16, v17, v18, v19, currentLocale);
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v20 lowercaseStringWithLocale:currentLocale2];
  }

  return v13;
}

+ (id)_sectionTitleForCharacteristic:(id)characteristic latestResults:(id)results
{
  resultsCopy = results;
  service = [characteristic service];
  accessory = [service accessory];
  hf_numberOfProgrammableSwitches = [accessory hf_numberOfProgrammableSwitches];

  if (hf_numberOfProgrammableSwitches == 1)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsItemManagerProgrammableSwitchDefaultSectionTitle", @"HUServiceDetailsItemManagerProgrammableSwitchDefaultSectionTitle", 1);
  }

  else
  {
    v10 = [resultsCopy objectForKey:@"sectionElementIndex"];
    v11 = [resultsCopy objectForKey:@"sectionNamespace"];
    [v11 unsignedIntegerValue];
    [v10 unsignedIntegerValue];
    v9 = HFProgrammableSwitchLocalizableStringForAccessoryNamingSystemAndIndex();
  }

  return v9;
}

+ (id)_triggerBuilderContextAwareTitleForCharacteristic:(id)characteristic latestResults:(id)results
{
  characteristicCopy = characteristic;
  resultsCopy = results;
  v8 = [self _shortformTitleForLatestResults:resultsCopy];
  service = [characteristicCopy service];
  accessory = [service accessory];
  hf_numberOfProgrammableSwitches = [accessory hf_numberOfProgrammableSwitches];

  if (hf_numberOfProgrammableSwitches == 1)
  {
    localizedCapitalizedString = [v8 localizedCapitalizedString];
  }

  else
  {
    v13 = [self _sectionTitleForCharacteristic:characteristicCopy latestResults:resultsCopy];
    v20 = HULocalizedStringWithFormat(@"HUProgrammableSwitchEventOptionLongFormTitleFormatString", @"%@%@", v14, v15, v16, v17, v18, v19, v13);
    localizedCapitalizedString = [v20 localizedCapitalizedString];
  }

  return localizedCapitalizedString;
}

+ (id)_buildOutTriggerEditorOptionsForCharacteristic:(id)characteristic triggerValue:(id)value latestResults:(id)results
{
  characteristicCopy = characteristic;
  resultsCopy = results;
  valueCopy = value;
  v11 = [self _sectionTitleForCharacteristic:characteristicCopy latestResults:resultsCopy];
  v12 = objc_opt_new();
  [v12 na_safeSetObject:v11 forKey:@"sectionTitleKey"];
  v13 = [characteristicCopy hf_eventTriggersForTriggerValue:valueCopy];
  v14 = [v13 mutableCopy];

  v15 = [characteristicCopy hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:valueCopy];

  if (v15)
  {
    [v14 removeObject:v15];
  }

  v16 = objc_opt_new();
  [v16 setShowTriggerSummary:0];
  [v16 setShowActionSetsInstructions:0];
  [v16 setShowConditionTriggers:0];
  [v16 setShowTriggerEnableSwitch:0];
  v17 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryTestProgrammableButtonActionButtonTitle", @"HUTriggerSummaryTestProgrammableButtonActionButtonTitle", 1);
  [v16 setTestActionsInstructionDescription:v17];

  v18 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryAddProgrammableButtonActionButtonTitle", @"HUTriggerSummaryAddProgrammableButtonActionButtonTitle", 1);
  [v16 setServiceActionsInstructionDescription:v18];

  v19 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryDeleteProgrammableButtonActionTitle", @"HUTriggerSummaryDeleteProgrammableButtonActionTitle", 1);
  [v16 setDeleteInstructionDescription:v19];

  v20 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorInstructionsDescriptionStringForProgrammableSwitch", @"HUTriggerActionEditorInstructionsDescriptionStringForProgrammableSwitch", 1);
  [v16 setActionEditorInstructionsDescription:v20];

  v21 = [self _triggerBuilderContextAwareTitleForCharacteristic:characteristicCopy latestResults:resultsCopy];

  [v16 setTriggerContextAwareTitle:v21];
  [v16 setUnsupportedTriggers:v14];
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    v22 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryConfirmationAlertTitleMac", @"HUTriggerSummaryConfirmationAlertTitleMac", 1);
    [v16 setDeleteConfirmationAlertTitle:v22];
  }

  if ([v14 count])
  {
    v23 = @"HUTriggerSummaryConfirmationOfDeletingMultipleTriggers";
  }

  else
  {
    if (![MEMORY[0x277D14CE8] isAMac])
    {
      goto LABEL_10;
    }

    v23 = @"HUTriggerSummaryConfirmationAlertMessageMac";
  }

  v24 = _HULocalizedStringWithDefaultValue(v23, v23, 1);
  [v16 setDeleteConfirmationAlertMessage:v24];

LABEL_10:
  [v12 na_safeSetObject:v16 forKey:@"triggerBuilderContext"];

  return v12;
}

@end