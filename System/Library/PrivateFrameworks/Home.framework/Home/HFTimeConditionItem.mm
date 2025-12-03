@interface HFTimeConditionItem
- (HFTimeConditionItem)init;
- (HFTimeConditionItem)initWithCondition:(id)condition;
- (HFTimeConditionItem)initWithConditionType:(unint64_t)type condition:(id)condition;
- (id)_subclass_updateWithOptions:(id)options;
- (void)setCondition:(id)condition;
@end

@implementation HFTimeConditionItem

- (HFTimeConditionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithConditionType_condition_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimeConditionItem.m" lineNumber:21 description:{@"%s is unavailable; use %@ instead", "-[HFTimeConditionItem init]", v5}];

  return 0;
}

- (HFTimeConditionItem)initWithCondition:(id)condition
{
  conditionCopy = condition;
  v5 = -[HFTimeConditionItem initWithConditionType:condition:](self, "initWithConditionType:condition:", [conditionCopy timeConditionType], conditionCopy);

  return v5;
}

- (HFTimeConditionItem)initWithConditionType:(unint64_t)type condition:(id)condition
{
  conditionCopy = condition;
  v10.receiver = self;
  v10.super_class = HFTimeConditionItem;
  v7 = [(HFTimeConditionItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    [(HFTimeConditionItem *)v7 setCondition:conditionCopy];
  }

  return v8;
}

- (void)setCondition:(id)condition
{
  conditionCopy = condition;
  if (self->_condition != conditionCopy)
  {
    v8 = conditionCopy;
    objc_storeStrong(&self->_condition, condition);
    conditionCopy = v8;
    if (v8)
    {
      timeConditionType = [(HFTimeCondition *)v8 timeConditionType];
      v7 = timeConditionType == [(HFTimeConditionItem *)self type];
      conditionCopy = v8;
      if (!v7)
      {
        NSLog(&cfstr_ConditionHasEx.isa, v8, timeConditionType, [(HFTimeConditionItem *)self type]);
        conditionCopy = v8;
      }
    }
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_opt_new();
  v6 = [optionsCopy objectForKeyedSubscript:@"conditionDisplayContext"];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282524DF8;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v9 = [optionsCopy objectForKeyedSubscript:@"conditionFomattingStyle"];
  v10 = v9;
  if (!v9)
  {
    v9 = &unk_282524E10;
  }

  unsignedIntegerValue2 = [v9 unsignedIntegerValue];

  v12 = [optionsCopy objectForKeyedSubscript:@"conditionFomattingContext"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &unk_282524E28;
  }

  unsignedIntegerValue3 = [v13 unsignedIntegerValue];

  v15 = [[HFTimeConditionNaturalLanguageOptions alloc] initWithFormattingContext:unsignedIntegerValue3 formattingStyle:unsignedIntegerValue2 type:[(HFTimeConditionItem *)self type]];
  [(HFTimeConditionNaturalLanguageOptions *)v15 setTimeContext:unsignedIntegerValue == 1];
  condition = [(HFTimeConditionItem *)self condition];
  v17 = [condition hf_naturalLanguageSummaryWithOptions:v15];

  if (!v17)
  {
    v17 = [HFTimeCondition hf_naturalLanguageSummaryForTypeOnlyWithOptions:v15];
  }

  conditionTitle = [v17 conditionTitle];
  [v5 setObject:conditionTitle forKeyedSubscript:@"title"];

  conditionDescription = [v17 conditionDescription];
  [v5 setObject:conditionDescription forKeyedSubscript:@"description"];

  v20 = MEMORY[0x277D2C900];
  v21 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end