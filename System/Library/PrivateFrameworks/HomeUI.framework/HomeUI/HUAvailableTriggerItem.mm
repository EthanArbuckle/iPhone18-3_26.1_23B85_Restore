@interface HUAvailableTriggerItem
- (BOOL)isActive;
- (HFServiceLikeItem)preferredRelatedItem;
- (HFTriggerItem)triggerItem;
- (HMTrigger)trigger;
- (HRERecommendationItem)recommendationItem;
- (HUAvailableTriggerItem)initWithHome:(id)home containingItem:(id)item relatedToServiceLikeItems:(id)items;
- (NSString)identifier;
- (id)_subclass_updateWithOptions:(id)options;
- (id)buildersForActivating:(BOOL)activating inHome:(id)home withContext:(id)context serviceLikeItems:(id)items;
- (id)removalTriggerBuildersForTriggers:(id)triggers home:(id)home context:(id)context relatedItems:(id)items;
- (void)_updateNaturalLanguageOptions;
- (void)setActive:(BOOL)active;
- (void)setSourceItem:(id)item;
@end

@implementation HUAvailableTriggerItem

- (HUAvailableTriggerItem)initWithHome:(id)home containingItem:(id)item relatedToServiceLikeItems:(id)items
{
  homeCopy = home;
  itemCopy = item;
  itemsCopy = items;
  v16.receiver = self;
  v16.super_class = HUAvailableTriggerItem;
  v12 = [(HUAvailableTriggerItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(HUAvailableTriggerItem *)v12 setSourceItem:itemCopy];
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v13->_relatedServiceLikeItems, items);
    activeValue = v13->_activeValue;
    v13->_activeValue = 0;
  }

  return v13;
}

- (void)setSourceItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_Huavailabletri.isa);
  }

  sourceItem = self->_sourceItem;
  self->_sourceItem = itemCopy;
}

- (HFServiceLikeItem)preferredRelatedItem
{
  relatedServiceLikeItems = [(HUAvailableTriggerItem *)self relatedServiceLikeItems];
  firstObject = [relatedServiceLikeItems firstObject];

  return firstObject;
}

- (id)buildersForActivating:(BOOL)activating inHome:(id)home withContext:(id)context serviceLikeItems:(id)items
{
  activatingCopy = activating;
  homeCopy = home;
  contextCopy = context;
  itemsCopy = items;
  objc_opt_class();
  recommendationItem = [(HUAvailableTriggerItem *)self recommendationItem];
  recommendation = [recommendationItem recommendation];
  if (objc_opt_isKindOfClass())
  {
    v15 = recommendation;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    if (activatingCopy)
    {
      selectedTriggerBuilder = [v16 selectedTriggerBuilder];
      v20 = [selectedTriggerBuilder triggerBuilderWithContext:contextCopy];

      [v20 setEnabled:1];
      [array na_safeAddObject:v20];
      triggers = [homeCopy triggers];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__HUAvailableTriggerItem_buildersForActivating_inHome_withContext_serviceLikeItems___block_invoke;
      v34[3] = &unk_277DC3A28;
      v35 = homeCopy;
      v36 = contextCopy;
      v37 = v16;
      v22 = [triggers na_filter:v34];

      [array2 addObjectsFromArray:v22];
    }

    else
    {
      triggers2 = [homeCopy triggers];
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __84__HUAvailableTriggerItem_buildersForActivating_inHome_withContext_serviceLikeItems___block_invoke_2;
      v30 = &unk_277DC3A28;
      v31 = homeCopy;
      v32 = contextCopy;
      v33 = v16;
      v24 = [triggers2 na_filter:&v27];

      [array2 addObjectsFromArray:{v24, v27, v28, v29, v30}];
      v20 = v31;
    }

    if ([array2 count])
    {
      v25 = [(HUAvailableTriggerItem *)self removalTriggerBuildersForTriggers:array2 home:homeCopy context:contextCopy relatedItems:itemsCopy];
      [array addObjectsFromArray:v25];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

uint64_t __84__HUAvailableTriggerItem_buildersForActivating_inHome_withContext_serviceLikeItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D14C48] triggerBuilderForTrigger:v3 inHome:*(a1 + 32) context:*(a1 + 40) assertsFailure:0];
    if (v5)
    {
      v6 = [*(a1 + 48) compareForMatchingToTrigger:v5];
      v4 = [v6 hasNoDifferencesHigherThanPriority:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __84__HUAvailableTriggerItem_buildersForActivating_inHome_withContext_serviceLikeItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D14C48] triggerBuilderForTrigger:a2 inHome:*(a1 + 32) context:*(a1 + 40) assertsFailure:0];
  if (v3)
  {
    v4 = [*(a1 + 48) compareForMatchingToTrigger:v3];
    v5 = [v4 hasNoDifferencesHigherThanPriority:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removalTriggerBuildersForTriggers:(id)triggers home:(id)home context:(id)context relatedItems:(id)items
{
  homeCopy = home;
  contextCopy = context;
  itemsCopy = items;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HUAvailableTriggerItem_removalTriggerBuildersForTriggers_home_context_relatedItems___block_invoke;
  v17[3] = &unk_277DC3A78;
  v18 = homeCopy;
  v19 = contextCopy;
  v20 = itemsCopy;
  v12 = itemsCopy;
  v13 = contextCopy;
  v14 = homeCopy;
  v15 = [triggers na_map:v17];

  return v15;
}

id __86__HUAvailableTriggerItem_removalTriggerBuildersForTriggers_home_context_relatedItems___block_invoke(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D14C48] triggerBuilderForTrigger:a2 inHome:a1[4] context:a1[5]];
  v4 = a1[6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__HUAvailableTriggerItem_removalTriggerBuildersForTriggers_home_context_relatedItems___block_invoke_2;
  v7[3] = &unk_277DC3A50;
  v5 = v3;
  v8 = v5;
  [v4 na_each:v7];

  return v5;
}

- (BOOL)isActive
{
  activeValue = [(HUAvailableTriggerItem *)self activeValue];

  if (activeValue)
  {
    activeValue2 = [(HUAvailableTriggerItem *)self activeValue];
    bOOLValue = [activeValue2 BOOLValue];
  }

  else
  {
    latestResults = [(HUAvailableTriggerItem *)self latestResults];
    activeValue2 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (activeValue2)
    {
      bOOLValue = [activeValue2 integerValue] == 2;
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (void)setActive:(BOOL)active
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:active];
  [(HUAvailableTriggerItem *)self setActiveValue:v4];
}

- (HFTriggerItem)triggerItem
{
  objc_opt_class();
  sourceItem = [(HUAvailableTriggerItem *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (HRERecommendationItem)recommendationItem
{
  objc_opt_class();
  sourceItem = [(HUAvailableTriggerItem *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)identifier
{
  sourceItem = [(HUAvailableTriggerItem *)self sourceItem];
  identifier = [sourceItem identifier];

  return identifier;
}

- (HMTrigger)trigger
{
  sourceItem = [(HUAvailableTriggerItem *)self sourceItem];
  trigger = [sourceItem trigger];

  return trigger;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  recommendationItem = [(HUAvailableTriggerItem *)self recommendationItem];
  recommendation = [recommendationItem recommendation];
  if (objc_opt_isKindOfClass())
  {
    v8 = recommendation;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  sourceItem = [(HUAvailableTriggerItem *)self sourceItem];

  if (!sourceItem)
  {
    v19 = MEMORY[0x277D2C900];
    v18 = [MEMORY[0x277D14780] outcomeWithResults:MEMORY[0x277CBEC10]];
    v20 = [v19 futureWithResult:v18];
    goto LABEL_12;
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"shallow"];
  if (([v11 BOOLValue] & 1) == 0)
  {

    goto LABEL_10;
  }

  sourceItem2 = [(HUAvailableTriggerItem *)self sourceItem];
  latestResults = [sourceItem2 latestResults];
  v14 = [latestResults count];

  if (!v14)
  {
LABEL_10:
    sourceItem4 = [optionsCopy mutableCopy];
    [sourceItem4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D14248]];
    sourceItem3 = [(HUAvailableTriggerItem *)self sourceItem];
    v21 = [sourceItem3 updateWithOptions:sourceItem4];
    v18 = [v21 flatMap:&__block_literal_global_262];

    goto LABEL_11;
  }

  v15 = MEMORY[0x277D2C900];
  sourceItem4 = [(HUAvailableTriggerItem *)self sourceItem];
  sourceItem3 = [sourceItem4 latestResults];
  v18 = [v15 futureWithResult:sourceItem3];
LABEL_11:

  [(HUAvailableTriggerItem *)self _updateNaturalLanguageOptions];
  triggerNaturalLanguageOptions = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];
  v23 = [triggerNaturalLanguageOptions copy];

  v24 = MEMORY[0x277D14C68];
  triggerNaturalLanguageOptions2 = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];
  v26 = [v24 detailOptionsWithOptions:triggerNaturalLanguageOptions2];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_2;
  v30[3] = &unk_277DC3AE8;
  v31 = dictionary;
  selfCopy = self;
  v33 = v9;
  v34 = v23;
  v35 = v26;
  v27 = v23;
  v28 = v26;
  v20 = [v18 flatMap:v30];

LABEL_12:

  return v20;
}

id __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 results];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

id __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_2(id *a1, uint64_t a2)
{
  [a1[4] addEntriesFromDictionary:a2];
  v3 = *MEMORY[0x277D13DA8];
  v4 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB58] set];
  }

  v8 = v7;

  v9 = [a1[5] relatedServiceLikeItems];
  v10 = [v9 na_map:&__block_literal_global_20_5];
  [v8 addObjectsFromArray:v10];

  v11 = [a1[5] triggerItem];
  if (v11)
  {
  }

  else
  {
    v12 = [a1[5] recommendationItem];
    v13 = [v12 recommendation];
    v14 = [v13 hu_triggerBuilderIfAny];
    v15 = [v14 trigger];

    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v16 = [a1[5] trigger];
  [v8 addObject:v16];

LABEL_8:
  [a1[4] setObject:v8 forKeyedSubscript:v3];
  v17 = [a1[5] recommendationItem];

  if (v17)
  {
    [a1[6] containsMeaningfulChanges];
    v18 = [a1[5] activeValue];

    if (v18)
    {
      v19 = [a1[5] activeValue];
      [v19 BOOLValue];
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
    [a1[4] setObject:v24 forKeyedSubscript:*MEMORY[0x277D14068]];

    v25 = MEMORY[0x277CCABB0];
    v26 = [a1[5] home];
    v27 = [v25 numberWithInt:{objc_msgSend(v26, "hf_userCanCreateTrigger") ^ 1}];
    [a1[4] setObject:v27 forKeyedSubscript:*MEMORY[0x277D13EA8]];

    v21 = [a1[7] actionNaturalLanguageOptions];
    [v21 setIgnoreOptionalCharacteristics:1];
  }

  else
  {
    v20 = [a1[5] triggerItem];

    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = [a1[5] trigger];
    if ([v21 isEnabled])
    {
      v22 = @"HUSmartAutomationTriggerEnabledValueText";
    }

    else
    {
      v22 = @"HUSmartAutomationTriggerDisabledValueText";
    }

    v23 = _HULocalizedStringWithDefaultValue(v22, v22, 1);
    [a1[4] setObject:v23 forKeyedSubscript:*MEMORY[0x277D13E30]];
  }

LABEL_18:
  v28 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D140E0]];
  [a1[7] setFormattingStyle:1];
  [a1[8] setFormattingStyle:3];
  [a1[8] setShouldUseFullDayNames:1];
  if ([v28 triggerNameIsConfigured])
  {
    v29 = [v28 triggerName];
  }

  else
  {
    v29 = 0;
  }

  v30 = [a1[5] recommendationItem];

  if (v30)
  {
    [a1[7] setShouldUseFirstPersonPronounIfPossible:1];
    v31 = [a1[6] selectedTriggerBuilder];
    v32 = [v31 naturalLanguageNameWithOptions:a1[7]];

    v33 = [a1[6] selectedTriggerBuilder];
    v34 = [v33 naturalLanguageDetailsWithOptions:a1[8]];
LABEL_34:
    v41 = v34;
LABEL_35:

    goto LABEL_36;
  }

  v35 = [a1[5] triggerItem];

  if (v35)
  {
    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v40 = [a1[5] trigger];
      v32 = [v40 hf_naturalLanguageNameWithOptions:a1[7]];
    }

    v33 = [a1[5] trigger];
    v34 = [v33 hf_naturalLangugeDetailsWithOptions:a1[8]];
    goto LABEL_34;
  }

  v36 = [a1[5] trigger];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v38 = [a1[5] trigger];
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v33 = v39;

    if (v29)
    {
      v32 = v29;
    }

    else
    {
      v72 = MEMORY[0x277CD19F8];
      v73 = a1[7];
      v74 = [v33 events];
      v75 = [v33 hf_effectiveRecurrences];
      v32 = [v72 hf_naturalLanguageNameWithOptions:v73 events:v74 recurrences:v75];
    }

    v76 = [a1[5] trigger];
    v41 = [v76 hf_naturalLangugeDetailsWithOptions:a1[8]];

    goto LABEL_35;
  }

  v32 = 0;
  v41 = 0;
LABEL_36:
  if ([v32 length])
  {
    [a1[4] setObject:v32 forKeyedSubscript:*MEMORY[0x277D13F60]];
    v42 = [v41 length];
    v43 = a1[4];
    if (v42)
    {
      [v43 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13E20]];
    }

    else
    {
      [v43 removeObjectForKey:*MEMORY[0x277D13E20]];
    }
  }

  v44 = *MEMORY[0x277D13E88];
  v45 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  v78 = v8;
  if (v45)
  {
    [a1[4] setObject:v45 forKeyedSubscript:v44];
  }

  else
  {
    v46 = objc_alloc(MEMORY[0x277D14728]);
    v47 = [v46 initWithImageIdentifier:*MEMORY[0x277D13A30]];
    [a1[4] setObject:v47 forKeyedSubscript:v44];
  }

  v77 = v32;

  v48 = *MEMORY[0x277D13D80];
  v49 = [a1[4] objectForKeyedSubscript:*MEMORY[0x277D13D80]];
  v50 = [v49 mutableCopy];
  v51 = v50;
  v52 = v41;
  if (v50)
  {
    v53 = v50;
  }

  else
  {
    v53 = objc_opt_new();
  }

  v54 = v53;

  v55 = [a1[5] sourceItem];
  [v54 addObject:v55];

  [a1[4] setObject:v54 forKeyedSubscript:v48];
  objc_opt_class();
  v56 = [a1[5] latestResults];
  v57 = [v56 objectForKeyedSubscript:v48];
  if (objc_opt_isKindOfClass())
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    v59 = v57;
  }

  else
  {
    v59 = [MEMORY[0x277CBEB98] set];
  }

  v60 = v59;

  v61 = [a1[5] sourceItem];
  v62 = [v60 containsObject:v61];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_4;
  aBlock[3] = &unk_277DBB548;
  v63 = a1[4];
  v64 = a1[5];
  v80 = v63;
  v81 = v64;
  v65 = _Block_copy(aBlock);
  v66 = v65;
  if (v62 && !(*(v65 + 2))(v65))
  {
    v67 = 0;
  }

  else
  {
    v67 = 2;
  }

  v68 = MEMORY[0x277D2C900];
  v69 = [objc_alloc(MEMORY[0x277D14780]) initWithResults:a1[4] type:v67];
  v70 = [v68 futureWithResult:v69];

  return v70;
}

uint64_t __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1)
{
  if (_MergedGlobals_4_7 != -1)
  {
    dispatch_once(&_MergedGlobals_4_7, &__block_literal_global_35_3);
  }

  v2 = qword_27C838080;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_7;
  v12 = &unk_277DC3AC0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = v3;
  v14 = v4;
  v5 = [v2 na_map:&v9];
  v6 = [v5 mutableCopy];

  v7 = [v6 na_any:&__block_literal_global_40_2];
  return v7;
}

void __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_6()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D13E20];
  v4[0] = *MEMORY[0x277D13F60];
  v4[1] = v0;
  v1 = *MEMORY[0x277D13EA8];
  v4[2] = *MEMORY[0x277D14068];
  v4[3] = v1;
  v4[4] = *MEMORY[0x277D13FB8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];
  v3 = qword_27C838080;
  qword_27C838080 = v2;
}

id __54__HUAvailableTriggerItem__subclass_updateWithOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [*(a1 + 40) latestResults];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = v6;
  v10 = v8;
  if (v9 == v10)
  {
    v11 = 0;
  }

  else if (v9)
  {
    v11 = [v9 isEqual:v10] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v3 numberWithInt:v11];

  return v12;
}

- (void)_updateNaturalLanguageOptions
{
  v3 = [MEMORY[0x277CBEB98] set];
  triggerItem = [(HUAvailableTriggerItem *)self triggerItem];

  if (triggerItem)
  {
    trigger = [(HUAvailableTriggerItem *)self trigger];
    hf_anonymousActions = [trigger hf_anonymousActions];
  }

  else
  {
    recommendationItem = [(HUAvailableTriggerItem *)self recommendationItem];

    if (!recommendationItem)
    {
      goto LABEL_6;
    }

    recommendationItem2 = [(HUAvailableTriggerItem *)self recommendationItem];
    trigger = [recommendationItem2 recommendation];

    triggerBuilders = [trigger triggerBuilders];
    allObjects = [triggerBuilders allObjects];

    v11 = [allObjects na_flatMap:&__block_literal_global_45_3];
    hf_anonymousActions = [MEMORY[0x277CBEB98] setWithArray:v11];

    v3 = allObjects;
  }

  v3 = hf_anonymousActions;
LABEL_6:
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __55__HUAvailableTriggerItem__updateNaturalLanguageOptions__block_invoke_4;
  v27[3] = &unk_277DC3B50;
  v27[4] = self;
  v12 = [v3 na_filter:v27];
  if ([v12 count])
  {
    v13 = v12;
  }

  else
  {
    v13 = v3;
  }

  v14 = v13;
  triggerNaturalLanguageOptions = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];

  if (triggerNaturalLanguageOptions)
  {
    allObjects2 = [v14 allObjects];
    triggerNaturalLanguageOptions2 = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];
    [triggerNaturalLanguageOptions2 setActions:allObjects2];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277D14C70]);
    allObjects2 = [(HUAvailableTriggerItem *)self home];
    triggerNaturalLanguageOptions2 = [v14 allObjects];
    v19 = [v18 initWithHome:allObjects2 nameType:2 actions:triggerNaturalLanguageOptions2];
    [(HUAvailableTriggerItem *)self setTriggerNaturalLanguageOptions:v19];
  }

  v20 = MEMORY[0x277CBEB98];
  relatedServiceLikeItems = [(HUAvailableTriggerItem *)self relatedServiceLikeItems];
  v22 = [v20 setWithArray:relatedServiceLikeItems];
  v23 = [v22 na_flatMap:&__block_literal_global_57_2];

  triggerNaturalLanguageOptions3 = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];
  [triggerNaturalLanguageOptions3 setObjectsInContext:v23];

  triggerNaturalLanguageOptions4 = [(HUAvailableTriggerItem *)self triggerNaturalLanguageOptions];
  actionNaturalLanguageOptions = [triggerNaturalLanguageOptions4 actionNaturalLanguageOptions];
  [actionNaturalLanguageOptions setObjectsInContext:v23];
}

id __55__HUAvailableTriggerItem__updateNaturalLanguageOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 anonymousActionBuilder];
  v4 = [v3 na_map:&__block_literal_global_48_0];
  v5 = [v4 na_filter:&__block_literal_global_51_0];

  return v5;
}

uint64_t __55__HUAvailableTriggerItem__updateNaturalLanguageOptions__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) relatedServiceLikeItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HUAvailableTriggerItem__updateNaturalLanguageOptions__block_invoke_5;
  v8[3] = &unk_277DC3528;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

id __55__HUAvailableTriggerItem__updateNaturalLanguageOptions__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 homeKitObject];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v2 homeKitObject];
    v7 = [v6 hf_accessoryLikeObject];
    v8 = [v5 setWithObject:v7];

LABEL_5:
    goto LABEL_7;
  }

  v9 = [v2 homeKitObject];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v6 = [v2 homeKitObject];
    v8 = [v6 hf_accessoryLikeObjects];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end