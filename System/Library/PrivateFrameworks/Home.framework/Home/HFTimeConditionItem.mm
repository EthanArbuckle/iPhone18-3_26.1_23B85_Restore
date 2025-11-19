@interface HFTimeConditionItem
- (HFTimeConditionItem)init;
- (HFTimeConditionItem)initWithCondition:(id)a3;
- (HFTimeConditionItem)initWithConditionType:(unint64_t)a3 condition:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (void)setCondition:(id)a3;
@end

@implementation HFTimeConditionItem

- (HFTimeConditionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithConditionType_condition_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFTimeConditionItem.m" lineNumber:21 description:{@"%s is unavailable; use %@ instead", "-[HFTimeConditionItem init]", v5}];

  return 0;
}

- (HFTimeConditionItem)initWithCondition:(id)a3
{
  v4 = a3;
  v5 = -[HFTimeConditionItem initWithConditionType:condition:](self, "initWithConditionType:condition:", [v4 timeConditionType], v4);

  return v5;
}

- (HFTimeConditionItem)initWithConditionType:(unint64_t)a3 condition:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HFTimeConditionItem;
  v7 = [(HFTimeConditionItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    [(HFTimeConditionItem *)v7 setCondition:v6];
  }

  return v8;
}

- (void)setCondition:(id)a3
{
  v5 = a3;
  if (self->_condition != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_condition, a3);
    v5 = v8;
    if (v8)
    {
      v6 = [(HFTimeCondition *)v8 timeConditionType];
      v7 = v6 == [(HFTimeConditionItem *)self type];
      v5 = v8;
      if (!v7)
      {
        NSLog(&cfstr_ConditionHasEx.isa, v8, v6, [(HFTimeConditionItem *)self type]);
        v5 = v8;
      }
    }
  }
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:@"conditionDisplayContext"];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282524DF8;
  }

  v8 = [v6 unsignedIntegerValue];

  v9 = [v4 objectForKeyedSubscript:@"conditionFomattingStyle"];
  v10 = v9;
  if (!v9)
  {
    v9 = &unk_282524E10;
  }

  v11 = [v9 unsignedIntegerValue];

  v12 = [v4 objectForKeyedSubscript:@"conditionFomattingContext"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &unk_282524E28;
  }

  v14 = [v13 unsignedIntegerValue];

  v15 = [[HFTimeConditionNaturalLanguageOptions alloc] initWithFormattingContext:v14 formattingStyle:v11 type:[(HFTimeConditionItem *)self type]];
  [(HFTimeConditionNaturalLanguageOptions *)v15 setTimeContext:v8 == 1];
  v16 = [(HFTimeConditionItem *)self condition];
  v17 = [v16 hf_naturalLanguageSummaryWithOptions:v15];

  if (!v17)
  {
    v17 = [HFTimeCondition hf_naturalLanguageSummaryForTypeOnlyWithOptions:v15];
  }

  v18 = [v17 conditionTitle];
  [v5 setObject:v18 forKeyedSubscript:@"title"];

  v19 = [v17 conditionDescription];
  [v5 setObject:v19 forKeyedSubscript:@"description"];

  v20 = MEMORY[0x277D2C900];
  v21 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v22 = [v20 futureWithResult:v21];

  return v22;
}

@end