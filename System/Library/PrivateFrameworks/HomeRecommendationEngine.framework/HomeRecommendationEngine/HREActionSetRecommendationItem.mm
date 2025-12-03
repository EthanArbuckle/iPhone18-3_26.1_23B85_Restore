@interface HREActionSetRecommendationItem
- (HREActionSetRecommendation)recommendation;
- (HREActionSetRecommendationItem)init;
- (HREActionSetRecommendationItem)initWithRecommendationItem:(id)item;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HREActionSetRecommendationItem

- (HREActionSetRecommendationItem)initWithRecommendationItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = HREActionSetRecommendationItem;
  v6 = [(HREActionSetRecommendationItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recommendationItem, item);
  }

  return v7;
}

- (HREActionSetRecommendationItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRecommendationItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HREActionSetRecommendationItem.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HREActionSetRecommendationItem init]", v5}];

  return 0;
}

- (HREActionSetRecommendation)recommendation
{
  objc_opt_class();
  recommendationItem = [(HREActionSetRecommendationItem *)self recommendationItem];
  recommendation = [recommendationItem recommendation];
  if (objc_opt_isKindOfClass())
  {
    v5 = recommendation;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  recommendationItem = [(HREActionSetRecommendationItem *)self recommendationItem];
  v6 = [recommendationItem updateWithOptions:optionsCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HREActionSetRecommendationItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_279776770;
  v10[4] = self;
  v11 = optionsCopy;
  v7 = optionsCopy;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __62__HREActionSetRecommendationItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) recommendation];
  v5 = [v4 selectedActionSetBuilder];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13D40]];

  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) recommendation];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "containsMeaningfulChanges") ^ 1}];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v9 = [*(a1 + 32) serviceLikeItem];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D143B8]);
    v11 = [*(a1 + 32) recommendation];
    v12 = [v11 selectedActionSetBuilder];
    v13 = [v10 initWithActionSetBuilder:v12];

    v14 = [*(a1 + 32) serviceLikeItem];
    v15 = [v14 copyWithValueSource:v13];

    v16 = objc_alloc(MEMORY[0x277D14A88]);
    v17 = [*(a1 + 32) recommendation];
    v18 = [v17 home];
    v19 = [v16 initWithHome:v18 containingItem:v15];

    v20 = MEMORY[0x277CBEB98];
    v21 = [*(a1 + 32) recommendation];
    v22 = [v21 selectedActionSetBuilder];
    v23 = [v22 actions];
    v24 = [v20 setWithArray:v23];
    [v19 setActionBuilders:v24];

    v25 = [v19 updateWithOptions:*(a1 + 40)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__HREActionSetRecommendationItem__subclass_updateWithOptions___block_invoke_2;
    v28[3] = &unk_279776748;
    v29 = v3;
    v26 = [v25 flatMap:v28];
  }

  else
  {
    v26 = [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  return v26;
}

uint64_t __62__HREActionSetRecommendationItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D13E20];
  v4 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];

  v5 = MEMORY[0x277D2C900];
  v6 = *(a1 + 32);

  return [v5 futureWithResult:v6];
}

@end