@interface HUProgrammableSwitchEventOptionItem
+ (id)_buildOutTriggerEditorOptionsForCharacteristic:(id)a3 triggerValue:(id)a4 latestResults:(id)a5;
+ (id)_longformTitleForCharacteristic:(id)a3 latestResults:(id)a4;
+ (id)_sectionTitleForCharacteristic:(id)a3 latestResults:(id)a4;
+ (id)_triggerBuilderContextAwareTitleForCharacteristic:(id)a3 latestResults:(id)a4;
- (HMCharacteristic)characteristic;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristic:(id)a3 triggerValue:(id)a4 valueSource:(id)a5;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 thresholdValueRange:(id)a4;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 triggerValue:(id)a4;
- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 triggerValueRange:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUProgrammableSwitchEventOptionItem

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristic:(id)a3 triggerValue:(id)a4 valueSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"characteristic"}];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"triggerValue"}];

LABEL_4:
  v12 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v18.receiver = self;
  v18.super_class = HUProgrammableSwitchEventOptionItem;
  v13 = [(HUCharacteristicEventOptionItem *)&v18 initWithCharacteristics:v12 triggerValue:v10];

  if (v13)
  {
    objc_storeStrong(&v13->_valueSource, a5);
  }

  return v13;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 triggerValue:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:triggerValue:]", v7}];

  return 0;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 triggerValueRange:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:47 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:triggerValueRange:]", v7}];

  return 0;
}

- (HUProgrammableSwitchEventOptionItem)initWithCharacteristics:(id)a3 thresholdValueRange:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithCharacteristic_triggerValue_valueSource_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUProgrammableSwitchEventOptionItem.m" lineNumber:52 description:{@"%s is unavailable; use %@ instead", "-[HUProgrammableSwitchEventOptionItem initWithCharacteristics:thresholdValueRange:]", v7}];

  return 0;
}

- (HMCharacteristic)characteristic
{
  v2 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v3 = [v2 anyObject];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v125 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCharacteristicEventOptionItem *)self characteristics];
  v6 = [v5 count];

  if (!v6)
  {
    NSLog(&cfstr_MustHaveCharac.isa);
  }

  v7 = [(HUCharacteristicEventOptionItem *)self characteristics];

  if (v7)
  {
    v8 = [(HUCharacteristicEventOptionItem *)self triggerValue];
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = MEMORY[0x277CD19F8];
    v11 = [(HUCharacteristicEventOptionItem *)self characteristics];
    v12 = [v10 hf_triggerValueNaturalLanguageDescriptionWithCharacteristics:v11 triggerValue:v8];

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

    [v9 setObject:v13 forKeyedSubscript:*v14];
    v15 = [(HUProgrammableSwitchEventOptionItem *)self characteristic];
    if (!v15)
    {
      NSLog(&cfstr_NoProgrammable.isa);
    }

    v16 = [v15 hf_home];
    v17 = [v15 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:v8];
    v18 = [v16 hf_remoteAccessState];
    v19 = v17 != 0;
    if (v18 != 1)
    {
      v19 = 1;
    }

    v89 = v12;
    v92 = self;
    v84 = v19;
    if (v18 == 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = [v16 hf_currentUserIsAdministrator] ^ 1;
    }

    v86 = v20;
    v90 = v9;
    v91 = v4;
    v87 = v17;
    v88 = v16;
    v94 = v8;
    if (v17)
    {
      v24 = MEMORY[0x277CBEB98];
      v25 = [v9 allKeys];
      v26 = [v24 setWithArray:v25];

      v27 = [objc_alloc(MEMORY[0x277D14C60]) initWithHome:v16 trigger:v17];
      v28 = [v27 updateWithOptions:v4];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke;
      v115[3] = &unk_277DC1220;
      v116 = v26;
      v29 = v92;
      v117 = v9;
      v118 = v92;
      v119 = v15;
      v120 = v8;
      v30 = v26;
      v31 = [v28 flatMap:v115];
    }

    else
    {
      v32 = MEMORY[0x277D2C900];
      v33 = [MEMORY[0x277D14780] outcomeWithResults:v9];
      v31 = [v32 futureWithResult:v33];

      v29 = self;
    }

    v34 = [v15 service];
    v35 = [v34 hf_labelNamespaceCharacteristic];

    v95 = v15;
    v36 = [v15 service];
    v37 = [v36 hf_labelIndexCharacteristic];

    v38 = objc_opt_new();
    v39 = [v35 service];
    [v38 na_safeAddObject:v39];

    v40 = [v37 service];
    [v38 na_safeAddObject:v40];

    v41 = [v35 service];
    v42 = [v41 accessory];
    v43 = [v42 hf_programmableSwitchNamespaceServices];
    v44 = [v43 allObjects];
    v45 = v44;
    v46 = MEMORY[0x277CBEBF8];
    if (v44)
    {
      v46 = v44;
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
      v54 = [(HUProgrammableSwitchEventOptionItem *)v29 valueSource];
      v55 = [v54 readValuesForCharacteristicTypes:v53 inServices:v38];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __67__HUProgrammableSwitchEventOptionItem__subclass_updateWithOptions___block_invoke_3;
      v103[3] = &unk_277DC1270;
      v104 = v48;
      v105 = v35;
      v106 = v37;
      v107 = v95;
      v108 = v94;
      v109 = v84;
      v110 = v86;
      v56 = [v55 flatMap:v103];

      v57 = v104;
      v58 = v29;
      v59 = 0x277D2C000;
    }

    else
    {
      v82 = v35;
      v60 = [v37 value];
      if (!v60)
      {
        v61 = MEMORY[0x277CCABB0];
        v62 = [v95 service];
        v60 = [v61 numberWithUnsignedInteger:{objc_msgSend(v62, "hf_fallbackProgrammableSwitchIndex")}];
      }

      v63 = MEMORY[0x277CBEB38];
      v122[0] = @"sectionNamespace";
      v64 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D14D48]];
      v123[0] = v64;
      v123[1] = v60;
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
      v57 = v60;
      v56 = [v72 futureWithResult:v71];

      v58 = v92;
      v31 = v93;
      v35 = v82;
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
    v99 = v37;
    v100 = v35;
    v101 = v87;
    v102 = v48;
    v75 = v48;
    v76 = v87;
    v77 = v35;
    v78 = v37;
    v79 = v94;
    v80 = v95;
    v23 = [v74 flatMap:v96];

    v4 = v91;
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

+ (id)_longformTitleForCharacteristic:(id)a3 latestResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _shortformTitleForLatestResults:v7];
  v9 = [v6 service];
  v10 = [v9 accessory];
  v11 = [v10 hf_numberOfProgrammableSwitches];

  if (v11 == 1)
  {
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v8 lowercaseStringWithLocale:v12];
  }

  else
  {
    v12 = [a1 _sectionTitleForCharacteristic:v6 latestResults:v7];
    v20 = HULocalizedStringWithFormat(@"HUProgrammableSwitchEventOptionLongFormTitleFormatString", @"%@%@", v14, v15, v16, v17, v18, v19, v12);
    v21 = [MEMORY[0x277CBEAF8] currentLocale];
    v13 = [v20 lowercaseStringWithLocale:v21];
  }

  return v13;
}

+ (id)_sectionTitleForCharacteristic:(id)a3 latestResults:(id)a4
{
  v5 = a4;
  v6 = [a3 service];
  v7 = [v6 accessory];
  v8 = [v7 hf_numberOfProgrammableSwitches];

  if (v8 == 1)
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsItemManagerProgrammableSwitchDefaultSectionTitle", @"HUServiceDetailsItemManagerProgrammableSwitchDefaultSectionTitle", 1);
  }

  else
  {
    v10 = [v5 objectForKey:@"sectionElementIndex"];
    v11 = [v5 objectForKey:@"sectionNamespace"];
    [v11 unsignedIntegerValue];
    [v10 unsignedIntegerValue];
    v9 = HFProgrammableSwitchLocalizableStringForAccessoryNamingSystemAndIndex();
  }

  return v9;
}

+ (id)_triggerBuilderContextAwareTitleForCharacteristic:(id)a3 latestResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _shortformTitleForLatestResults:v7];
  v9 = [v6 service];
  v10 = [v9 accessory];
  v11 = [v10 hf_numberOfProgrammableSwitches];

  if (v11 == 1)
  {
    v12 = [v8 localizedCapitalizedString];
  }

  else
  {
    v13 = [a1 _sectionTitleForCharacteristic:v6 latestResults:v7];
    v20 = HULocalizedStringWithFormat(@"HUProgrammableSwitchEventOptionLongFormTitleFormatString", @"%@%@", v14, v15, v16, v17, v18, v19, v13);
    v12 = [v20 localizedCapitalizedString];
  }

  return v12;
}

+ (id)_buildOutTriggerEditorOptionsForCharacteristic:(id)a3 triggerValue:(id)a4 latestResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [a1 _sectionTitleForCharacteristic:v8 latestResults:v9];
  v12 = objc_opt_new();
  [v12 na_safeSetObject:v11 forKey:@"sectionTitleKey"];
  v13 = [v8 hf_eventTriggersForTriggerValue:v10];
  v14 = [v13 mutableCopy];

  v15 = [v8 hf_designatedEventTriggerForProgrammableSwitchWithTriggerValue:v10];

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

  v21 = [a1 _triggerBuilderContextAwareTitleForCharacteristic:v8 latestResults:v9];

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