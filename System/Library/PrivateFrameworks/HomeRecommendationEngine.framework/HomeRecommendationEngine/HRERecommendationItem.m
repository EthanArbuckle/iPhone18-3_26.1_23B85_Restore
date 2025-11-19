@interface HRERecommendationItem
- (HRERecommendationItem)initWithRecommendation:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HRERecommendationItem

- (HRERecommendationItem)initWithRecommendation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HRERecommendationItem;
  v6 = [(HRERecommendationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, a3);
    v7->_selected = 0;
    v7->_accessoryCountType = 0;
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(HRERecommendationItem *)self recommendation];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D14070]];

  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [(HRERecommendationItem *)self recommendation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [(HRERecommendationItem *)self recommendation];
  v10 = v9;
  if (isKindOfClass)
  {
    v11 = [v9 selectedTriggerBuilder];
    v12 = [v11 naturalLanguageNameOfType:2];
    [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v13 = [v10 selectedTriggerBuilder];
    v14 = [v13 triggerActionSets];
    v15 = [v14 anonymousActionBuilder];

    v16 = objc_alloc(MEMORY[0x277D14C78]);
    v17 = [v10 selectedTriggerBuilder];
    v18 = [v17 trigger];
    v19 = [v10 home];
    v20 = [v16 initWithTrigger:v18 inHome:v19 forceDisabled:0 ignoringDisabled:1];

    [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277D140E0]];
    v21 = [v20 triggerIconDescriptor];
    v22 = *MEMORY[0x277D13E88];
    [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277D13E88]];

    v23 = [v10 iconDescriptor];

    if (v23)
    {
      v24 = [v10 iconDescriptor];
      [v4 setObject:v24 forKeyedSubscript:v22];
    }

    v25 = [v10 triggerBuilders];
    v26 = [v25 na_flatMap:&__block_literal_global_2];
    [v6 unionSet:v26];

    goto LABEL_7;
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  v28 = [(HRERecommendationItem *)self recommendation];
  v10 = v28;
  if (v27)
  {
    v29 = [v28 selectedActionSetBuilder];
    v30 = [v29 name];
    [v4 setObject:v30 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v31 = [v10 selectedActionSetBuilder];
    v15 = [v31 actions];

    v32 = [v10 selectedActionSetBuilder];
    v33 = [v32 iconDescriptor];
    [v4 setObject:v33 forKeyedSubscript:*MEMORY[0x277D13E88]];

    v20 = [v10 actionSetBuilders];
    v25 = [v20 na_map:&__block_literal_global_7_0];
    [v6 unionSet:v25];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  v47 = objc_opt_isKindOfClass();

  if (v47)
  {
    v10 = [(HRERecommendationItem *)self recommendation];
    v48 = [v10 name];
    [v4 setObject:v48 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v20 = [v10 iconDescriptor];
    [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277D13E88]];
    v15 = 0;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_9:
  v34 = objc_alloc(MEMORY[0x277D14388]);
  v35 = [(HRERecommendationItem *)self recommendation];
  v36 = [v35 home];
  v37 = [v34 initWithHome:v36 formattingContext:2];

  [v37 setAccessoryCountType:{-[HRERecommendationItem accessoryCountType](self, "accessoryCountType")}];
  v38 = [v15 na_map:&__block_literal_global_12];
  v39 = [v38 na_filter:&__block_literal_global_15];

  v40 = [MEMORY[0x277D14390] hf_naturalLanguageDescriptionForActions:v39 withOptions:v37];
  [v4 setObject:v40 forKeyedSubscript:*MEMORY[0x277D13E20]];

  v41 = MEMORY[0x277CCABB0];
  [(HRERecommendationItem *)self isSelected];
  v42 = [v41 numberWithInteger:HFPrimaryStateFromBOOL()];
  [v4 setObject:v42 forKeyedSubscript:*MEMORY[0x277D14068]];

  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  v43 = MEMORY[0x277D2C900];
  v44 = [MEMORY[0x277D14780] outcomeWithResults:v4];
  v45 = [v43 futureWithResult:v44];

  return v45;
}

id __53__HRERecommendationItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB58];
  v3 = a2;
  v4 = [v2 set];
  v5 = [v3 trigger];

  [v4 na_safeAddObject:v5];

  return v4;
}

@end