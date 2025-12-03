@interface HFUnknownConditionItem
- (HFUnknownConditionItem)init;
- (HFUnknownConditionItem)initWithCondition:(id)condition;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFUnknownConditionItem

- (HFUnknownConditionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFUnknownConditionItem.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HFUnknownConditionItem init]", v5}];

  return 0;
}

- (HFUnknownConditionItem)initWithCondition:(id)condition
{
  conditionCopy = condition;
  v9.receiver = self;
  v9.super_class = HFUnknownConditionItem;
  v6 = [(HFUnknownConditionItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, condition);
  }

  return v7;
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
    v8 = &unk_282525188;
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [(HFSubstringNaturalLanguageOptions *)[HFConditionNaturalLanguageOptions alloc] initWithFormattingContext:unsignedIntegerValue formattingStyle:2];
  condition = [(HFUnknownConditionItem *)self condition];
  v12 = [condition hf_naturalLanguageSummaryWithOptions:v10];

  conditionTitle = [v12 conditionTitle];
  [dictionary setObject:conditionTitle forKeyedSubscript:@"title"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

@end