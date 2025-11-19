@interface HUScheduleDateEditorItemModuleController
- (Class)cellClassForItem:(id)a3;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)a3;
- (void)dateAndTimePickerCell:(id)a3 didSelectDate:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUScheduleDateEditorItemModuleController

- (Class)cellClassForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  v6 = [v5 startTodayDateItem];
  if ([v4 isEqual:v6])
  {
    goto LABEL_4;
  }

  v7 = [v5 endNeverDateItem];
  if ([v4 isEqual:v7])
  {

LABEL_4:
    goto LABEL_5;
  }

  v10 = [v5 specificDateItem];
  v11 = [v4 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [v5 datePickerItem];
    [v4 isEqual:v12];
  }

LABEL_5:
  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HUScheduleDateEditorItemModuleController;
  [(HUItemModuleController *)&v15 setupCell:v6 forItem:a4];
  v7 = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
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

    [v10 toggleTimePickerOptionVisibility:0];
    [v10 setHideTitleLabel:1];
    v11 = [v7 existingDate];
    v12 = [MEMORY[0x277CBEAA8] distantFuture];
    if ([v11 isEqualToDate:v12])
    {
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = [v13 hf_endOfDay];
    }

    else
    {
      v14 = [v7 existingDate];
    }

    [v10 setDateAndTimePickerDate:v14];
    [v7 setEditedDate:v14];
    [v10 setDelegate:self];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v23.receiver = self;
  v23.super_class = HUScheduleDateEditorItemModuleController;
  [(HUItemModuleController *)&v23 updateCell:v8 forItem:v9 animated:v5];
  v10 = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
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

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [v10 startTodayDateItem];
  if (([v9 isEqual:v14] & 1) == 0)
  {
    v15 = [v10 endNeverDateItem];
    if (![v9 isEqual:v15])
    {
      v21 = [v10 specificDateItem];
      v22 = [v9 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  v16 = [v9 latestResults];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
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
  v19 = [v9 latestResults];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [v13 setAccessibilityIdentifier:v20];

LABEL_13:
}

- (unint64_t)didSelectItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", &v16, 0x20u);
  }

  v8 = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  v9 = [v8 startTodayDateItem];
  v10 = [v5 isEqual:v9];

  if (v10)
  {
    [v8 updateToTodayDateOption];
  }

  else
  {
    v11 = [v8 endNeverDateItem];
    v12 = [v5 isEqual:v11];

    if (v12)
    {
      [v8 updateToNeverDateOption];
    }

    else
    {
      v13 = [v8 specificDateItem];
      v14 = [v5 isEqual:v13];

      if (v14)
      {
        [v8 updateToSpecificDateOption];
      }
    }
  }

  return 0;
}

- (void)dateAndTimePickerCell:(id)a3 didSelectDate:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected date [%@] from calendar picker.", &v10, 0x20u);
  }

  v9 = [(HUScheduleDateEditorItemModuleController *)self _editorItemModule];
  [v9 setEditedDate:v6];
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