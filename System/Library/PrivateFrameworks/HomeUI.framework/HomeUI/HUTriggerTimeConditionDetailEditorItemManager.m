@interface HUTriggerTimeConditionDetailEditorItemManager
- (HUTriggerTimeConditionDetailEditorItemManager)initWithDelegate:(id)a3 rangeCondition:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)primitiveConditionForPickerItem:(id)a3;
- (void)setPrimitiveCondition:(id)a3 forPickerItem:(id)a4;
@end

@implementation HUTriggerTimeConditionDetailEditorItemManager

- (HUTriggerTimeConditionDetailEditorItemManager)initWithDelegate:(id)a3 rangeCondition:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUTriggerTimeConditionDetailEditorItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:a3 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rangeCondition, a4);
  }

  return v9;
}

- (id)primitiveConditionForPickerItem:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];

  if (v5 == v4)
  {
    v8 = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    v9 = [v8 startCondition];
  }

  else
  {
    v6 = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];

    if (v6 != v4)
    {
      NSLog(&cfstr_ItemIsNotAPick.isa, v4);
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    v9 = [v8 endCondition];
  }

  v7 = v9;

LABEL_7:

  return v7;
}

- (void)setPrimitiveCondition:(id)a3 forPickerItem:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];

  if (v7 == v6)
  {
    v9 = objc_alloc(MEMORY[0x277D14C20]);
    v10 = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    v11 = [v10 endCondition];
    v12 = v9;
    v13 = v17;
    v14 = v11;
  }

  else
  {
    v8 = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];

    if (v8 != v6)
    {
      NSLog(&cfstr_UnknownItem.isa, v6);
      goto LABEL_7;
    }

    v15 = objc_alloc(MEMORY[0x277D14C20]);
    v10 = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    v11 = [v10 startCondition];
    v12 = v15;
    v13 = v11;
    v14 = v17;
  }

  v16 = [v12 initWithStartCondition:v13 endCondition:v14];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setRangeCondition:v16];

LABEL_7:
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v5 = MEMORY[0x277CBEC10];
  v6 = [v4 initWithResults:MEMORY[0x277CBEC10]];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setStartConditionPickerItem:v6];

  v7 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v5];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setEndConditionPickerItem:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];
  v17[0] = v9;
  v10 = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v8 setWithArray:v11];

  v13 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v12];
  v16 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

  return v14;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"start"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorStartSectionTitle", @"HUTriggerTimeConditionDetailEditorStartSectionTitle", 1);
  [v5 setHeaderTitle:v6];

  v7 = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v5 setItems:v8];

  [v4 addObject:v5];
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"end"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorEndSectionTitle", @"HUTriggerTimeConditionDetailEditorEndSectionTitle", 1);
  [v9 setHeaderTitle:v10];

  v11 = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];
  v14 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v9 setItems:v12];

  [v4 addObject:v9];

  return v4;
}

@end