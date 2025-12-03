@interface HRERecommendationItem
- (HRERecommendationItem)initWithRecommendation:(id)recommendation;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HRERecommendationItem

- (HRERecommendationItem)initWithRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  v9.receiver = self;
  v9.super_class = HRERecommendationItem;
  v6 = [(HRERecommendationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendation, recommendation);
    v7->_selected = 0;
    v7->_accessoryCountType = 0;
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_opt_new();
  recommendation = [(HRERecommendationItem *)self recommendation];
  [v4 setObject:recommendation forKeyedSubscript:*MEMORY[0x277D14070]];

  v6 = [MEMORY[0x277CBEB58] set];
  recommendation2 = [(HRERecommendationItem *)self recommendation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  recommendation3 = [(HRERecommendationItem *)self recommendation];
  recommendation5 = recommendation3;
  if (isKindOfClass)
  {
    selectedTriggerBuilder = [recommendation3 selectedTriggerBuilder];
    v12 = [selectedTriggerBuilder naturalLanguageNameOfType:2];
    [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13F60]];

    selectedTriggerBuilder2 = [recommendation5 selectedTriggerBuilder];
    triggerActionSets = [selectedTriggerBuilder2 triggerActionSets];
    anonymousActionBuilder = [triggerActionSets anonymousActionBuilder];

    v16 = objc_alloc(MEMORY[0x277D14C78]);
    selectedTriggerBuilder3 = [recommendation5 selectedTriggerBuilder];
    trigger = [selectedTriggerBuilder3 trigger];
    home = [recommendation5 home];
    actionSetBuilders = [v16 initWithTrigger:trigger inHome:home forceDisabled:0 ignoringDisabled:1];

    [v4 setObject:actionSetBuilders forKeyedSubscript:*MEMORY[0x277D140E0]];
    triggerIconDescriptor = [actionSetBuilders triggerIconDescriptor];
    v22 = *MEMORY[0x277D13E88];
    [v4 setObject:triggerIconDescriptor forKeyedSubscript:*MEMORY[0x277D13E88]];

    iconDescriptor = [recommendation5 iconDescriptor];

    if (iconDescriptor)
    {
      iconDescriptor2 = [recommendation5 iconDescriptor];
      [v4 setObject:iconDescriptor2 forKeyedSubscript:v22];
    }

    triggerBuilders = [recommendation5 triggerBuilders];
    v26 = [triggerBuilders na_flatMap:&__block_literal_global_2];
    [v6 unionSet:v26];

    goto LABEL_7;
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  recommendation4 = [(HRERecommendationItem *)self recommendation];
  recommendation5 = recommendation4;
  if (v27)
  {
    selectedActionSetBuilder = [recommendation4 selectedActionSetBuilder];
    name = [selectedActionSetBuilder name];
    [v4 setObject:name forKeyedSubscript:*MEMORY[0x277D13F60]];

    selectedActionSetBuilder2 = [recommendation5 selectedActionSetBuilder];
    anonymousActionBuilder = [selectedActionSetBuilder2 actions];

    selectedActionSetBuilder3 = [recommendation5 selectedActionSetBuilder];
    iconDescriptor3 = [selectedActionSetBuilder3 iconDescriptor];
    [v4 setObject:iconDescriptor3 forKeyedSubscript:*MEMORY[0x277D13E88]];

    actionSetBuilders = [recommendation5 actionSetBuilders];
    triggerBuilders = [actionSetBuilders na_map:&__block_literal_global_7_0];
    [v6 unionSet:triggerBuilders];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  v47 = objc_opt_isKindOfClass();

  if (v47)
  {
    recommendation5 = [(HRERecommendationItem *)self recommendation];
    name2 = [recommendation5 name];
    [v4 setObject:name2 forKeyedSubscript:*MEMORY[0x277D13F60]];

    actionSetBuilders = [recommendation5 iconDescriptor];
    [v4 setObject:actionSetBuilders forKeyedSubscript:*MEMORY[0x277D13E88]];
    anonymousActionBuilder = 0;
    goto LABEL_8;
  }

  anonymousActionBuilder = 0;
LABEL_9:
  v34 = objc_alloc(MEMORY[0x277D14388]);
  recommendation6 = [(HRERecommendationItem *)self recommendation];
  home2 = [recommendation6 home];
  v37 = [v34 initWithHome:home2 formattingContext:2];

  [v37 setAccessoryCountType:{-[HRERecommendationItem accessoryCountType](self, "accessoryCountType")}];
  v38 = [anonymousActionBuilder na_map:&__block_literal_global_12];
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