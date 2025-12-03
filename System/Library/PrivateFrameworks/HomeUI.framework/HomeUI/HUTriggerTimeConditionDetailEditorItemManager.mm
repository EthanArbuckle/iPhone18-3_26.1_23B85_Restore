@interface HUTriggerTimeConditionDetailEditorItemManager
- (HUTriggerTimeConditionDetailEditorItemManager)initWithDelegate:(id)delegate rangeCondition:(id)condition;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)primitiveConditionForPickerItem:(id)item;
- (void)setPrimitiveCondition:(id)condition forPickerItem:(id)item;
@end

@implementation HUTriggerTimeConditionDetailEditorItemManager

- (HUTriggerTimeConditionDetailEditorItemManager)initWithDelegate:(id)delegate rangeCondition:(id)condition
{
  conditionCopy = condition;
  v11.receiver = self;
  v11.super_class = HUTriggerTimeConditionDetailEditorItemManager;
  v8 = [(HFItemManager *)&v11 initWithDelegate:delegate sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rangeCondition, condition);
  }

  return v9;
}

- (id)primitiveConditionForPickerItem:(id)item
{
  itemCopy = item;
  startConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];

  if (startConditionPickerItem == itemCopy)
  {
    rangeCondition = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    startCondition = [rangeCondition startCondition];
  }

  else
  {
    endConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];

    if (endConditionPickerItem != itemCopy)
    {
      NSLog(&cfstr_ItemIsNotAPick.isa, itemCopy);
      v7 = 0;
      goto LABEL_7;
    }

    rangeCondition = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    startCondition = [rangeCondition endCondition];
  }

  v7 = startCondition;

LABEL_7:

  return v7;
}

- (void)setPrimitiveCondition:(id)condition forPickerItem:(id)item
{
  conditionCopy = condition;
  itemCopy = item;
  startConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];

  if (startConditionPickerItem == itemCopy)
  {
    v9 = objc_alloc(MEMORY[0x277D14C20]);
    rangeCondition = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    endCondition = [rangeCondition endCondition];
    v12 = v9;
    v13 = conditionCopy;
    v14 = endCondition;
  }

  else
  {
    endConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];

    if (endConditionPickerItem != itemCopy)
    {
      NSLog(&cfstr_UnknownItem.isa, itemCopy);
      goto LABEL_7;
    }

    v15 = objc_alloc(MEMORY[0x277D14C20]);
    rangeCondition = [(HUTriggerTimeConditionDetailEditorItemManager *)self rangeCondition];
    endCondition = [rangeCondition startCondition];
    v12 = v15;
    v13 = endCondition;
    v14 = conditionCopy;
  }

  v16 = [v12 initWithStartCondition:v13 endCondition:v14];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setRangeCondition:v16];

LABEL_7:
}

- (id)_buildItemProvidersForHome:(id)home
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v5 = MEMORY[0x277CBEC10];
  v6 = [v4 initWithResults:MEMORY[0x277CBEC10]];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setStartConditionPickerItem:v6];

  v7 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v5];
  [(HUTriggerTimeConditionDetailEditorItemManager *)self setEndConditionPickerItem:v7];

  v8 = MEMORY[0x277CBEB98];
  startConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];
  v17[0] = startConditionPickerItem;
  endConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];
  v17[1] = endConditionPickerItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = [v8 setWithArray:v11];

  v13 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v12];
  v16 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

  return v14;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"start"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorStartSectionTitle", @"HUTriggerTimeConditionDetailEditorStartSectionTitle", 1);
  [v5 setHeaderTitle:v6];

  startConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self startConditionPickerItem];
  v15[0] = startConditionPickerItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v5 setItems:v8];

  [v4 addObject:v5];
  v9 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"end"];
  v10 = _HULocalizedStringWithDefaultValue(@"HUTriggerTimeConditionDetailEditorEndSectionTitle", @"HUTriggerTimeConditionDetailEditorEndSectionTitle", 1);
  [v9 setHeaderTitle:v10];

  endConditionPickerItem = [(HUTriggerTimeConditionDetailEditorItemManager *)self endConditionPickerItem];
  v14 = endConditionPickerItem;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v9 setItems:v12];

  [v4 addObject:v9];

  return v4;
}

@end