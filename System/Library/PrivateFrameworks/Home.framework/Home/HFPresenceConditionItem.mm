@interface HFPresenceConditionItem
- (HFPresenceConditionItem)init;
- (HFPresenceConditionItem)initWithCondition:(id)a3 home:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFPresenceConditionItem

- (HFPresenceConditionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFPresenceConditionItem.m" lineNumber:20 description:{@"%s is unavailable; use %@ instead", "-[HFPresenceConditionItem init]", v5}];

  return 0;
}

- (HFPresenceConditionItem)initWithCondition:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFPresenceConditionItem;
  v9 = [(HFPresenceConditionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    objc_storeStrong(&v10->_condition, a3);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"conditionFomattingContext"];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282524120;
  }

  v8 = [v6 unsignedIntegerValue];

  v9 = [v4 objectForKeyedSubscript:@"conditionFomattingStyle"];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &unk_282524138;
  }

  v11 = [v10 unsignedIntegerValue];

  v12 = [HFPresenceConditionNaturalLanguageOptions alloc];
  v13 = [(HFPresenceConditionItem *)self home];
  v14 = [(HFPresenceConditionNaturalLanguageOptions *)v12 initWithHome:v13 formattingContext:v8 formattingStyle:v11];

  v15 = [(HFPresenceConditionItem *)self condition];
  v16 = [v15 hf_naturalLanguageSummaryWithOptions:v14];

  v17 = [v16 conditionTitle];
  [v5 setObject:v17 forKeyedSubscript:@"title"];

  v18 = MEMORY[0x277D2C900];
  v19 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v20 = [v18 futureWithResult:v19];

  return v20;
}

@end