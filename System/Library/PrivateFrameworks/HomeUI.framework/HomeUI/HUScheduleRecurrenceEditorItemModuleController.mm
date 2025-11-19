@interface HUScheduleRecurrenceEditorItemModuleController
- (Class)cellClassForItem:(id)a3;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)a3;
- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUScheduleRecurrenceEditorItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  v6 = [v5 dailyOptionItem];
  if ([v4 isEqual:v6])
  {
  }

  else
  {
    v7 = [v5 weeklyOptionItem];
    v8 = [v4 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 daysOfWeekPickerItem];
      [v4 isEqual:v9];
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HUScheduleRecurrenceEditorItemModuleController;
  [(HUItemModuleController *)&v14 setupCell:v6 forItem:a4];
  v7 = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  v8 = v6;
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
    v12 = [v7 initialRecurrences];
    v13 = [v11 setWithArray:v12];
    [v10 setSelectedRecurrences:v13];

    [v10 setDelegate:self];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = HUScheduleRecurrenceEditorItemModuleController;
  [(HUItemModuleController *)&v22 updateCell:v8 forItem:v9 animated:v5];
  v10 = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  v11 = v8;
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
    v14 = [v10 dailyOptionItem];
    if ([v9 isEqual:v14])
    {
    }

    else
    {
      v15 = [v10 weeklyOptionItem];
      v16 = [v9 isEqual:v15];

      if (!v16)
      {
        goto LABEL_12;
      }
    }

    v17 = [v9 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
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
    v20 = [v9 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v13 setAccessibilityIdentifier:v21];
  }

LABEL_12:
}

- (unint64_t)didSelectItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", &v14, 0x20u);
  }

  v8 = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  v9 = [v8 dailyOptionItem];
  v10 = [v5 isEqual:v9];

  if (v10)
  {
    [v8 updateToDailyRecurrenceOption];
  }

  else
  {
    v11 = [v8 weeklyOptionItem];
    v12 = [v5 isEqual:v11];

    if (v12)
    {
      [v8 updateToWeeklyRecurrenceOption];
    }
  }

  return 0;
}

- (void)dayOfWeekPickerCell:(id)a3 didChangeSelectedRecurrences:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HUScheduleRecurrenceEditorItemModuleController *)self _editorItemModule];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [v7 editedRecurrences];
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ User changed selected recurrences from [%@] to [%@]", &v12, 0x2Au);
  }

  v11 = [v6 allObjects];
  [v7 setEditedRecurrences:v11];
}

- (id)_editorItemModule
{
  objc_opt_class();
  v3 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end