@interface HUTriggerTimeConditionEditorSectionModule
- (BOOL)doesOptionItemRequireInitialUserConfiguration:(id)a3;
- (id)_conditionItemForType:(unint64_t)a3;
- (id)_createConditionItemForType:(unint64_t)a3;
- (id)buildConditionOptionItems;
- (id)conditionForOptionItem:(id)a3;
- (id)preferredConditionFromConditions:(id)a3;
- (id)selectOptionItemForCondition:(id)a3;
@end

@implementation HUTriggerTimeConditionEditorSectionModule

- (id)conditionForOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerTimeConditionEditorSectionModule *)self anyTimeOptionItem];

  if (v5 == v4)
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8 && (-[HUTriggerConditionEditorExpandingSectionModule optionItems](self, "optionItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v8], v9, v10))
    {
      v11 = [v8 sourceItem];
      v12 = [v11 condition];

      if (!v12)
      {
        v13 = MEMORY[0x277D14C08];
        v14 = [v8 sourceItem];
        v12 = [v13 defaultConditionForType:{objc_msgSend(v14, "type")}];
      }
    }

    else
    {
      NSLog(&cfstr_UnknownOptionI.isa, v6);
      v12 = 0;
    }
  }

  return v12;
}

- (id)selectOptionItemForCondition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = -[HUTriggerTimeConditionEditorSectionModule _conditionItemForType:](self, "_conditionItemForType:", [v7 timeConditionType]);
      v9 = [v8 sourceItem];
      [v9 setCondition:v7];
    }

    else
    {
      NSLog(&cfstr_UnexpectedCond.isa, v5);
      v8 = 0;
    }
  }

  else
  {
    v8 = [(HUTriggerTimeConditionEditorSectionModule *)self anyTimeOptionItem];
  }

  return v8;
}

- (id)preferredConditionFromConditions:(id)a3
{
  v3 = [a3 na_filter:&__block_literal_global_120];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_8];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 firstObject];
  }

  v7 = v6;

  return v7;
}

uint64_t __78__HUTriggerTimeConditionEditorSectionModule_preferredConditionFromConditions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)buildConditionOptionItems
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionOptionNoneTitle", @"HUTriggerTimeConditionOptionNoneTitle", 1);
  v4 = [(HUTriggerConditionEditorExpandingSectionModule *)self createNoConditionOptionItemWithTitle:v3];
  [(HUTriggerTimeConditionEditorSectionModule *)self setAnyTimeOptionItem:v4];
  v5 = [(HUTriggerTimeConditionEditorSectionModule *)self _createConditionItemForType:0, v4];
  [(HUTriggerTimeConditionEditorSectionModule *)self setOnlyDayOptionItem:v5];
  v11[1] = v5;
  v6 = [(HUTriggerTimeConditionEditorSectionModule *)self _createConditionItemForType:1];
  [(HUTriggerTimeConditionEditorSectionModule *)self setOnlyNightOptionItem:v6];
  v11[2] = v6;
  v7 = [(HUTriggerTimeConditionEditorSectionModule *)self _createConditionItemForType:2];
  [(HUTriggerTimeConditionEditorSectionModule *)self setSpecificTimesOptionItem:v7];
  v11[3] = v7;
  v8 = [(HUTriggerTimeConditionEditorSectionModule *)self _createConditionItemForType:3];
  [(HUTriggerTimeConditionEditorSectionModule *)self setCustomOptionItem:v8];
  v11[4] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];

  return v9;
}

- (BOOL)doesOptionItemRequireInitialUserConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];

  if (v5 == v4)
  {
    v7 = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];
    v8 = [v7 sourceItem];
    v9 = [v8 condition];
    v6 = v9 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_conditionItemForType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];
    }

    else if (a3 == 3)
    {
      v4 = [(HUTriggerTimeConditionEditorSectionModule *)self customOptionItem];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(HUTriggerTimeConditionEditorSectionModule *)self onlyNightOptionItem];
    }
  }

  else
  {
    v4 = [(HUTriggerTimeConditionEditorSectionModule *)self onlyDayOptionItem];
  }

  return v4;
}

- (id)_createConditionItemForType:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277D14C10]) initWithConditionType:a3];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D14C30]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HUTriggerTimeConditionEditorSectionModule__createConditionItemForType___block_invoke_27;
  v10[3] = &unk_277DBD6D8;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v7 = v5;
  v11 = v7;
  v8 = [v6 initWithSourceItem:v7 updateOptionsTransformBlock:&__block_literal_global_22_0 resultsAndItemTransformBlock:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v8;
}

id __73__HUTriggerTimeConditionEditorSectionModule__createConditionItemForType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  [v2 setObject:&unk_282491700 forKeyedSubscript:*MEMORY[0x277D13B98]];
  [v2 setObject:&unk_282491718 forKeyedSubscript:*MEMORY[0x277D13BA8]];

  return v2;
}

id __73__HUTriggerTimeConditionEditorSectionModule__createConditionItemForType___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 mutableCopy];

  v9 = [WeakRetained selectedOptionItem];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
  [v8 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];

  if (*(a1 + 48) == 3)
  {
    v11 = [*(a1 + 32) condition];

    if (!v11)
    {
      [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }
  }

  return v8;
}

@end