@interface HUScheduleDateEditorItemModuleController
- (Class)cellClassForItem:(id)item;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)item;
- (void)dateAndTimePickerCell:(id)cell didSelectDate:(id)date;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUScheduleDateEditorItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  _editorItemModule = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  startTodayDateItem = [_editorItemModule startTodayDateItem];
  if ([itemCopy isEqual:startTodayDateItem])
  {
    goto LABEL_4;
  }

  endNeverDateItem = [_editorItemModule endNeverDateItem];
  if ([itemCopy isEqual:endNeverDateItem])
  {

LABEL_4:
    goto LABEL_5;
  }

  specificDateItem = [_editorItemModule specificDateItem];
  v11 = [itemCopy isEqual:specificDateItem];

  if ((v11 & 1) == 0)
  {
    datePickerItem = [_editorItemModule datePickerItem];
    [itemCopy isEqual:datePickerItem];
  }

LABEL_5:
  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v15.receiver = self;
  v15.super_class = HUScheduleDateEditorItemModuleController;
  [(HUItemModuleController *)&v15 setupCell:cellCopy forItem:item];
  _editorItemModule = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
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

    [v10 toggleTimePickerOptionVisibility:0];
    [v10 setHideTitleLabel:1];
    existingDate = [_editorItemModule existingDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    if ([existingDate isEqualToDate:distantFuture])
    {
      date = [MEMORY[0x277CBEAA8] date];
      hf_endOfDay = [date hf_endOfDay];
    }

    else
    {
      hf_endOfDay = [_editorItemModule existingDate];
    }

    [v10 setDateAndTimePickerDate:hf_endOfDay];
    [_editorItemModule setEditedDate:hf_endOfDay];
    [v10 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = HUScheduleDateEditorItemModuleController;
  [(HUItemModuleController *)&v23 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  _editorItemModule = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
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

  if (!v13)
  {
    goto LABEL_13;
  }

  startTodayDateItem = [_editorItemModule startTodayDateItem];
  if (([itemCopy isEqual:startTodayDateItem] & 1) == 0)
  {
    endNeverDateItem = [_editorItemModule endNeverDateItem];
    if (![itemCopy isEqual:endNeverDateItem])
    {
      specificDateItem = [_editorItemModule specificDateItem];
      v22 = [itemCopy isEqual:specificDateItem];

      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  latestResults = [itemCopy latestResults];
  v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v17 BOOLValue])
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  [v13 setAccessoryType:v18];

  [v13 setDisabled:0];
  latestResults2 = [itemCopy latestResults];
  v20 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v13 setAccessibilityIdentifier:v20];

LABEL_13:
}

- (unint64_t)didSelectItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", &v16, 0x20u);
  }

  _editorItemModule = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  startTodayDateItem = [_editorItemModule startTodayDateItem];
  v10 = [itemCopy isEqual:startTodayDateItem];

  if (v10)
  {
    [_editorItemModule updateToTodayDateOption];
  }

  else
  {
    endNeverDateItem = [_editorItemModule endNeverDateItem];
    v12 = [itemCopy isEqual:endNeverDateItem];

    if (v12)
    {
      [_editorItemModule updateToNeverDateOption];
    }

    else
    {
      specificDateItem = [_editorItemModule specificDateItem];
      v14 = [itemCopy isEqual:specificDateItem];

      if (v14)
      {
        [_editorItemModule updateToSpecificDateOption];
      }
    }
  }

  return 0;
}

- (void)dateAndTimePickerCell:(id)cell didSelectDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = dateCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected date [%@] from calendar picker.", &v10, 0x20u);
  }

  _editorItemModule = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  [_editorItemModule setEditedDate:dateCopy];
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