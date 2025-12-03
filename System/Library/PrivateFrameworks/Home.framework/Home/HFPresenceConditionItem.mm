@interface HFPresenceConditionItem
- (HFPresenceConditionItem)init;
- (HFPresenceConditionItem)initWithCondition:(id)condition home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFPresenceConditionItem

- (HFPresenceConditionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFPresenceConditionItem.m" lineNumber:20 description:{@"%s is unavailable; use %@ instead", "-[HFPresenceConditionItem init]", v5}];

  return 0;
}

- (HFPresenceConditionItem)initWithCondition:(id)condition home:(id)home
{
  conditionCopy = condition;
  homeCopy = home;
  v12.receiver = self;
  v12.super_class = HFPresenceConditionItem;
  v9 = [(HFPresenceConditionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_condition, condition);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_opt_new();
  v6 = [optionsCopy objectForKeyedSubscript:@"conditionFomattingContext"];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282524120;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v9 = [optionsCopy objectForKeyedSubscript:@"conditionFomattingStyle"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &unk_282524138;
  }

  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [HFPresenceConditionNaturalLanguageOptions alloc];
  home = [(HFPresenceConditionItem *)self home];
  v14 = [(HFPresenceConditionNaturalLanguageOptions *)v12 initWithHome:home formattingContext:unsignedIntegerValue formattingStyle:unsignedIntegerValue2];

  condition = [(HFPresenceConditionItem *)self condition];
  v16 = [condition hf_naturalLanguageSummaryWithOptions:v14];

  conditionTitle = [v16 conditionTitle];
  [v5 setObject:conditionTitle forKeyedSubscript:@"title"];

  v18 = MEMORY[0x277D2C900];
  v19 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

@end