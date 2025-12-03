@interface HUTriggerTimeConditionEditorSectionModule
- (BOOL)doesOptionItemRequireInitialUserConfiguration:(id)configuration;
- (id)_conditionItemForType:(unint64_t)type;
- (id)_createConditionItemForType:(unint64_t)type;
- (id)buildConditionOptionItems;
- (id)conditionForOptionItem:(id)item;
- (id)preferredConditionFromConditions:(id)conditions;
- (id)selectOptionItemForCondition:(id)condition;
@end

@implementation HUTriggerTimeConditionEditorSectionModule

- (id)conditionForOptionItem:(id)item
{
  itemCopy = item;
  anyTimeOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self anyTimeOptionItem];

  if (anyTimeOptionItem == itemCopy)
  {
    condition = 0;
  }

  else
  {
    objc_opt_class();
    v6 = itemCopy;
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
      sourceItem = [v8 sourceItem];
      condition = [sourceItem condition];

      if (!condition)
      {
        v13 = MEMORY[0x277D14C08];
        sourceItem2 = [v8 sourceItem];
        condition = [v13 defaultConditionForType:{objc_msgSend(sourceItem2, "type")}];
      }
    }

    else
    {
      NSLog(&cfstr_UnknownOptionI.isa, v6);
      condition = 0;
    }
  }

  return condition;
}

- (id)selectOptionItemForCondition:(id)condition
{
  conditionCopy = condition;
  if (conditionCopy)
  {
    objc_opt_class();
    v5 = conditionCopy;
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
      anyTimeOptionItem = -[HUTriggerTimeConditionEditorSectionModule _conditionItemForType:](self, "_conditionItemForType:", [v7 timeConditionType]);
      sourceItem = [anyTimeOptionItem sourceItem];
      [sourceItem setCondition:v7];
    }

    else
    {
      NSLog(&cfstr_UnexpectedCond.isa, v5);
      anyTimeOptionItem = 0;
    }
  }

  else
  {
    anyTimeOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self anyTimeOptionItem];
  }

  return anyTimeOptionItem;
}

- (id)preferredConditionFromConditions:(id)conditions
{
  v3 = [conditions na_filter:&__block_literal_global_120];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_8];
  v5 = v4;
  if (v4)
  {
    firstObject = v4;
  }

  else
  {
    firstObject = [v3 firstObject];
  }

  v7 = firstObject;

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

- (BOOL)doesOptionItemRequireInitialUserConfiguration:(id)configuration
{
  configurationCopy = configuration;
  specificTimesOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];

  if (specificTimesOptionItem == configurationCopy)
  {
    specificTimesOptionItem2 = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];
    sourceItem = [specificTimesOptionItem2 sourceItem];
    condition = [sourceItem condition];
    v6 = condition == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_conditionItemForType:(unint64_t)type
{
  specificTimesOptionItem = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      specificTimesOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self specificTimesOptionItem];
    }

    else if (type == 3)
    {
      specificTimesOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self customOptionItem];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      specificTimesOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self onlyNightOptionItem];
    }
  }

  else
  {
    specificTimesOptionItem = [(HUTriggerTimeConditionEditorSectionModule *)self onlyDayOptionItem];
  }

  return specificTimesOptionItem;
}

- (id)_createConditionItemForType:(unint64_t)type
{
  v5 = [objc_alloc(MEMORY[0x277D14C10]) initWithConditionType:type];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277D14C30]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HUTriggerTimeConditionEditorSectionModule__createConditionItemForType___block_invoke_27;
  v10[3] = &unk_277DBD6D8;
  objc_copyWeak(v12, &location);
  v12[1] = type;
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