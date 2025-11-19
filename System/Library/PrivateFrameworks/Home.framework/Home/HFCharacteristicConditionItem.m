@interface HFCharacteristicConditionItem
- (HFCharacteristicConditionItem)init;
- (HFCharacteristicConditionItem)initWithCondition:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFCharacteristicConditionItem

- (HFCharacteristicConditionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicConditionItem.m" lineNumber:22 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicConditionItem init]", v5}];

  return 0;
}

- (HFCharacteristicConditionItem)initWithCondition:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFCharacteristicConditionItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"condition != nil"}];
  }

  v11.receiver = self;
  v11.super_class = HFCharacteristicConditionItem;
  v7 = [(HFCharacteristicConditionItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_condition, a3);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [v5 objectForKeyedSubscript:@"conditionFomattingContext"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_282525050;
  }

  v9 = [v8 unsignedIntegerValue];

  v10 = [[HFCharacteristicConditionNaturalLanguageOptions alloc] initWithFormattingContext:v9];
  v11 = [(HFCharacteristicConditionItem *)self condition];
  v12 = [v11 hf_naturalLanguageSummaryWithOptions:v10];

  v13 = [v12 conditionTitle];
  [v6 setObject:v13 forKeyedSubscript:@"title"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:v6];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

@end