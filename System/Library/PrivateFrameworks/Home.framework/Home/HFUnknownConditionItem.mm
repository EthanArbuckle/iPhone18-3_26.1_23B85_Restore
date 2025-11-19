@interface HFUnknownConditionItem
- (HFUnknownConditionItem)init;
- (HFUnknownConditionItem)initWithCondition:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFUnknownConditionItem

- (HFUnknownConditionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCondition_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUnknownConditionItem.m" lineNumber:19 description:{@"%s is unavailable; use %@ instead", "-[HFUnknownConditionItem init]", v5}];

  return 0;
}

- (HFUnknownConditionItem)initWithCondition:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFUnknownConditionItem;
  v6 = [(HFUnknownConditionItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_condition, a3);
  }

  return v7;
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
    v8 = &unk_282525188;
  }

  v9 = [v8 unsignedIntegerValue];

  v10 = [(HFSubstringNaturalLanguageOptions *)[HFConditionNaturalLanguageOptions alloc] initWithFormattingContext:v9 formattingStyle:2];
  v11 = [(HFUnknownConditionItem *)self condition];
  v12 = [v11 hf_naturalLanguageSummaryWithOptions:v10];

  v13 = [v12 conditionTitle];
  [v6 setObject:v13 forKeyedSubscript:@"title"];

  v14 = MEMORY[0x277D2C900];
  v15 = [HFItemUpdateOutcome outcomeWithResults:v6];
  v16 = [v14 futureWithResult:v15];

  return v16;
}

@end