@interface HFCharacteristicConditionItem
- (HFCharacteristicConditionItem)init;
- (HFCharacteristicConditionItem)initWithCondition:(id)condition;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFCharacteristicConditionItem

- (HFCharacteristicConditionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicConditionItem.m" lineNumber:22 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicConditionItem init]", v5}];

  return 0;
}

- (HFCharacteristicConditionItem)initWithCondition:(id)condition
{
  conditionCopy = condition;
  if (!conditionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicConditionItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"condition != nil"}];
  }

  v11.receiver = self;
  v11.super_class = HFCharacteristicConditionItem;
  v7 = [(HFCharacteristicConditionItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_condition, condition);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB38];
  optionsCopy = options;
  dictionary = [v4 dictionary];
  v7 = [optionsCopy objectForKeyedSubscript:@"conditionFomattingContext"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_282525050;
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [[HFCharacteristicConditionNaturalLanguageOptions alloc] initWithFormattingContext:unsignedIntegerValue];
  condition = [(HFCharacteristicConditionItem *)self condition];
  v12 = [condition hf_naturalLanguageSummaryWithOptions:v10];

  conditionTitle = [v12 conditionTitle];
  [dictionary setObject:conditionTitle forKeyedSubscript:@"title"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

@end