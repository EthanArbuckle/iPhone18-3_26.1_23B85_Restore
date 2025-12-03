@interface HUScheduleRecurrenceEditorItemModuleController
- (Class)cellClassForItem:(id)item;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)item;
- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUScheduleRecurrenceEditorItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  _editorItemModule = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  dailyOptionItem = [_editorItemModule dailyOptionItem];
  if ([itemCopy isEqual:dailyOptionItem])
  {
  }

  else
  {
    weeklyOptionItem = [_editorItemModule weeklyOptionItem];
    v8 = [itemCopy isEqual:weeklyOptionItem];

    if ((v8 & 1) == 0)
    {
      daysOfWeekPickerItem = [_editorItemModule daysOfWeekPickerItem];
      [itemCopy isEqual:daysOfWeekPickerItem];
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = HUScheduleRecurrenceEditorItemModuleController;
  [(HUItemModuleController *)&v14 setupCell:cellCopy forItem:item];
  _editorItemModule = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  v8 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = MEMORY[0x277CBEB98];
    initialRecurrences = [_editorItemModule initialRecurrences];
    v13 = [v11 setWithArray:initialRecurrences];
    [v10 setSelectedRecurrences:v13];

    [v10 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = HUScheduleRecurrenceEditorItemModuleController;
  [(HUItemModuleController *)&v22 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  _editorItemModule = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  v11 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    dailyOptionItem = [_editorItemModule dailyOptionItem];
    if ([itemCopy isEqual:dailyOptionItem])
    {
    }

    else
    {
      weeklyOptionItem = [_editorItemModule weeklyOptionItem];
      v16 = [itemCopy isEqual:weeklyOptionItem];

      if (!v16)
      {
        goto LABEL_12;
      }
    }

    latestResults = [itemCopy latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    if ([v18 BOOLValue])
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }

    [v13 setAccessoryType:v19];

    [v13 setDisabled:0];
    latestResults2 = [itemCopy latestResults];
    v21 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v13 setAccessibilityIdentifier:v21];
  }

LABEL_12:
}

- (unint64_t)didSelectItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", &v14, 0x20u);
  }

  _editorItemModule = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  dailyOptionItem = [_editorItemModule dailyOptionItem];
  v10 = [itemCopy isEqual:dailyOptionItem];

  if (v10)
  {
    [_editorItemModule updateToDailyRecurrenceOption];
  }

  else
  {
    weeklyOptionItem = [_editorItemModule weeklyOptionItem];
    v12 = [itemCopy isEqual:weeklyOptionItem];

    if (v12)
    {
      [_editorItemModule updateToWeeklyRecurrenceOption];
    }
  }

  return 0;
}

- (void)dayOfWeekPickerCell:(id)cell didChangeSelectedRecurrences:(id)recurrences
{
  v20 = *MEMORY[0x277D85DE8];
  recurrencesCopy = recurrences;
  _editorItemModule = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    editedRecurrences = [_editorItemModule editedRecurrences];
    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = editedRecurrences;
    v18 = 2112;
    v19 = recurrencesCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ User changed selected recurrences from [%@] to [%@]", &v12, 0x2Au);
  }

  allObjects = [recurrencesCopy allObjects];
  [_editorItemModule setEditedRecurrences:allObjects];
}

- (id)_editorItemModule
{
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v4 = module;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end