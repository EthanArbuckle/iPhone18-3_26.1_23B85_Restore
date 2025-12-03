@interface HUScheduleRuleEditorItemModuleController
- (BOOL)_validateEndDateAfterNowDate:(id)date;
- (BOOL)_validateEndDateAfterStartDate:(id)date startDate:(id)startDate;
- (BOOL)_validateRecurrences:(id)recurrences;
- (BOOL)_validateStartDateBeforeEndDate:(id)date endDate:(id)endDate;
- (Class)cellClassForItem:(id)item;
- (HUScheduleRuleEditorItemModuleControllerDelegate)delegate;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)item;
- (void)_presentAlertWithError:(int64_t)error;
- (void)didUpdateDate:(id)date date:(id)a4 editorContext:(unint64_t)context;
- (void)didUpdateRecurrences:(id)recurrences recurrences:(id)a4;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)timePickerCell:(id)cell didSelectEndTime:(id)time;
- (void)timePickerCell:(id)cell didSelectStartTime:(id)time;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUScheduleRuleEditorItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  editStartDatePeriodItem = [_editorItemModule editStartDatePeriodItem];
  if ([itemCopy isEqual:editStartDatePeriodItem])
  {
    goto LABEL_4;
  }

  editEndDatePeriodItem = [_editorItemModule editEndDatePeriodItem];
  if ([itemCopy isEqual:editEndDatePeriodItem])
  {

LABEL_4:
    goto LABEL_5;
  }

  editRecurrenceItem = [_editorItemModule editRecurrenceItem];
  v11 = [itemCopy isEqual:editRecurrenceItem];

  if ((v11 & 1) == 0)
  {
    allDayItem = [_editorItemModule allDayItem];
    v13 = [itemCopy isEqual:allDayItem];

    if ((v13 & 1) == 0)
    {
      editTimeOfDayItem = [_editorItemModule editTimeOfDayItem];
      v15 = [itemCopy isEqual:editTimeOfDayItem];

      if ((v15 & 1) == 0)
      {
        removeRuleItem = [_editorItemModule removeRuleItem];
        [itemCopy isEqual:removeRuleItem];
      }
    }
  }

LABEL_5:
  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = HUScheduleRuleEditorItemModuleController;
  [(HUItemModuleController *)&v26 setupCell:cellCopy forItem:itemCopy];
  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  v9 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  editTimeOfDayItem = [_editorItemModule editTimeOfDayItem];
  v13 = [itemCopy isEqual:editTimeOfDayItem];

  if (v13 && v11)
  {
    editedStartTime = [_editorItemModule editedStartTime];
    v15 = editedStartTime;
    if (editedStartTime)
    {
      startTime = editedStartTime;
    }

    else
    {
      editedScheduleRule = [_editorItemModule editedScheduleRule];
      weekDayRule = [editedScheduleRule weekDayRule];
      startTime = [weekDayRule startTime];
    }

    editedEndTime = [_editorItemModule editedEndTime];
    v20 = editedEndTime;
    if (editedEndTime)
    {
      endTime = editedEndTime;
    }

    else
    {
      editedScheduleRule2 = [_editorItemModule editedScheduleRule];
      weekDayRule2 = [editedScheduleRule2 weekDayRule];
      endTime = [weekDayRule2 endTime];
    }

    [v11 setStartTimeComponents:startTime];
    [v11 setEndTimeComponents:endTime];
    latestResults = [itemCopy latestResults];
    v25 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v11 setTitle:v25];

    [v11 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v34.receiver = self;
  v34.super_class = HUScheduleRuleEditorItemModuleController;
  [(HUItemModuleController *)&v34 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
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
    goto LABEL_10;
  }

  editStartDatePeriodItem = [_editorItemModule editStartDatePeriodItem];
  if ([itemCopy isEqual:editStartDatePeriodItem])
  {
    goto LABEL_8;
  }

  editEndDatePeriodItem = [_editorItemModule editEndDatePeriodItem];
  if ([itemCopy isEqual:editEndDatePeriodItem])
  {

LABEL_8:
LABEL_9:
    [v13 setAccessoryView:0];
    [v13 setHideIcon:1];
    [v13 setAccessoryType:1];
    [v13 setDisabled:0];
    latestResults = [itemCopy latestResults];
    v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v13 setAccessibilityIdentifier:v17];

    goto LABEL_10;
  }

  editRecurrenceItem = [_editorItemModule editRecurrenceItem];
  v33 = [itemCopy isEqual:editRecurrenceItem];

  if (v33)
  {
    goto LABEL_9;
  }

LABEL_10:
  objc_opt_class();
  v18 = v11;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    removeRuleItem = [_editorItemModule removeRuleItem];
    v22 = [itemCopy isEqual:removeRuleItem];

    if (v22)
    {
      [v20 setDestructive:1];
      latestResults2 = [itemCopy latestResults];
      v24 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v20 setAccessibilityIdentifier:v24];
    }
  }

  objc_opt_class();
  v25 = v18;
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    allDayItem = [_editorItemModule allDayItem];
    v29 = [itemCopy isEqual:allDayItem];

    if (v29)
    {
      [v27 setDelegate:self];
      latestResults3 = [itemCopy latestResults];
      v31 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v27 setAccessibilityIdentifier:v31];
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v37 = 138412802;
    selfCopy5 = self;
    v39 = 2112;
    v40 = v7;
    v41 = 2112;
    v42 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", &v37, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  editStartDatePeriodItem = [_editorItemModule editStartDatePeriodItem];
  v10 = [itemCopy isEqual:editStartDatePeriodItem];

  if (v10)
  {
    editedScheduleRule = [_editorItemModule editedScheduleRule];
    yearDayRule = [editedScheduleRule yearDayRule];
    validFrom = [yearDayRule validFrom];

    v14 = [[HUScheduleDateEditorViewController alloc] initWithDate:validFrom editorContext:0 delegate:self];
    existingScheduleRule2 = HFLogForCategory();
    if (os_log_type_enabled(existingScheduleRule2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      editedScheduleRule2 = [_editorItemModule editedScheduleRule];
      v37 = 138413058;
      selfCopy5 = self;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = validFrom;
      v43 = 2112;
      v44 = editedScheduleRule2;
      v18 = "%@:%@ Preparing to show schedule rule date editor with initial start date [%@] from schedule rule [%@].";
LABEL_12:
      _os_log_impl(&dword_20CEB6000, existingScheduleRule2, OS_LOG_TYPE_DEFAULT, v18, &v37, 0x2Au);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  editEndDatePeriodItem = [_editorItemModule editEndDatePeriodItem];
  v20 = [itemCopy isEqual:editEndDatePeriodItem];

  if (v20)
  {
    editedScheduleRule3 = [_editorItemModule editedScheduleRule];
    yearDayRule2 = [editedScheduleRule3 yearDayRule];
    validFrom = [yearDayRule2 validUntil];

    v14 = [[HUScheduleDateEditorViewController alloc] initWithDate:validFrom editorContext:1 delegate:self];
    existingScheduleRule2 = HFLogForCategory();
    if (os_log_type_enabled(existingScheduleRule2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      editedScheduleRule2 = [_editorItemModule editedScheduleRule];
      v37 = 138413058;
      selfCopy5 = self;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = validFrom;
      v43 = 2112;
      v44 = editedScheduleRule2;
      v18 = "%@:%@ Preparing to show schedule rule date editor with initial end date [%@] from schedule rule [%@].";
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  editRecurrenceItem = [_editorItemModule editRecurrenceItem];
  v24 = [itemCopy isEqual:editRecurrenceItem];

  if (v24)
  {
    editedScheduleRule4 = [_editorItemModule editedScheduleRule];
    weekDayRule = [editedScheduleRule4 weekDayRule];
    [weekDayRule daysOfTheWeek];

    validFrom = HMDaysOfTheWeekToDateComponents();
    v14 = [[HUScheduleRecurrenceEditorViewController alloc] initWithRecurrences:validFrom delegate:self];
    existingScheduleRule2 = HFLogForCategory();
    if (os_log_type_enabled(existingScheduleRule2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      editedScheduleRule2 = [_editorItemModule editedScheduleRule];
      v37 = 138413058;
      selfCopy5 = self;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = validFrom;
      v43 = 2112;
      v44 = editedScheduleRule2;
      v18 = "%@:%@ Preparing to show schedule rule recurrence editor with initial recurrences [%@] from schedule rule [%@].";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  removeRuleItem = [_editorItemModule removeRuleItem];
  v33 = [itemCopy isEqual:removeRuleItem];

  if (v33)
  {
    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = NSStringFromSelector(a2);
      existingScheduleRule = [_editorItemModule existingScheduleRule];
      v37 = 138412802;
      selfCopy5 = self;
      v39 = 2112;
      v40 = v35;
      v41 = 2112;
      v42 = existingScheduleRule;
      _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to remove schedule rule [%@].", &v37, 0x20u);
    }

    validFrom = [(HUScheduleRuleEditorItemModuleController *)self delegate];
    existingScheduleRule2 = [_editorItemModule existingScheduleRule];
    [validFrom scheduleRuleEditorModuleController:self didRequestRuleRemoval:existingScheduleRule2];
    v14 = 0;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_14:
  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v28 = host;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  if (v29 && v14)
  {
    navigationController = [v29 navigationController];
    [navigationController pushViewController:v14 animated:1];
  }

  return 0;
}

- (void)didUpdateRecurrences:(id)recurrences recurrences:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Did update recurrences to [%@].", &v10, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  if ([_editorItemModule scheduleType] == 2 && -[HUScheduleRuleEditorItemModuleController _validateRecurrences:](self, "_validateRecurrences:", v6))
  {
    [_editorItemModule updateScheduleRuleRecurrences:v6];
  }
}

- (void)didUpdateDate:(id)date date:(id)a4 editorContext:(unint64_t)context
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v17 = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Did update date to [%@].", &v17, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  if ([_editorItemModule scheduleType] == 1)
  {
    if (context == 1)
    {
      if ([(HUScheduleRuleEditorItemModuleController *)self _validateEndDateAfterNowDate:v8])
      {
        editedScheduleRule = [_editorItemModule editedScheduleRule];
        yearDayRule = [editedScheduleRule yearDayRule];
        validFrom = [yearDayRule validFrom];

        if ([(HUScheduleRuleEditorItemModuleController *)self _validateEndDateAfterStartDate:v8 startDate:validFrom])
        {
          [_editorItemModule updateScheduleRuleEndDate:v8];
        }

        goto LABEL_11;
      }
    }

    else if (!context)
    {
      editedScheduleRule2 = [_editorItemModule editedScheduleRule];
      yearDayRule2 = [editedScheduleRule2 yearDayRule];
      validFrom = [yearDayRule2 validUntil];

      if ([(HUScheduleRuleEditorItemModuleController *)self _validateStartDateBeforeEndDate:v8 endDate:validFrom])
      {
        [_editorItemModule updateScheduleRuleStartDate:v8];
      }

LABEL_11:
    }
  }
}

- (BOOL)_validateRecurrences:(id)recurrences
{
  v17 = *MEMORY[0x277D85DE8];
  recurrencesCopy = recurrences;
  v6 = recurrencesCopy;
  if (recurrencesCopy && ![recurrencesCopy hmf_isEmpty])
  {
    v8 = 1;
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = 138412802;
      selfCopy = self;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%@:%@ Selected recurrences [%@] are nil/empty. Cannot update schedule rules.", &v11, 0x20u);
    }

    [(HUScheduleRuleEditorItemModuleController *)self _presentAlertWithError:98];
    v8 = 0;
  }

  return v8;
}

- (BOOL)_validateStartDateBeforeEndDate:(id)date endDate:(id)endDate
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v9 = [dateCopy compare:endDateCopy];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v14 = 138413058;
      selfCopy = self;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = dateCopy;
      v20 = 2112;
      v21 = endDateCopy;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@:%@ Invalid schedule rule. Start date [%@] is not before end date [%@].", &v14, 0x2Au);
    }

    [(HUScheduleRuleEditorItemModuleController *)self _presentAlertWithError:99];
  }

  return v9 >> 63;
}

- (BOOL)_validateEndDateAfterStartDate:(id)date startDate:(id)startDate
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  startDateCopy = startDate;
  v9 = [startDateCopy compare:dateCopy];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v14 = 138413058;
      selfCopy = self;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = dateCopy;
      v20 = 2112;
      v21 = startDateCopy;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%@:%@ Invalid schedule rule. End date [%@] is not after start date [%@].", &v14, 0x2Au);
    }

    [(HUScheduleRuleEditorItemModuleController *)self _presentAlertWithError:100];
  }

  return v9 >> 63;
}

- (BOOL)_validateEndDateAfterNowDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [date compare:dateCopy];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v12 = 138413058;
      selfCopy = self;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = dateCopy;
      v18 = 2112;
      v19 = date;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "%@:%@ Invalid schedule rule. End date [%@] is not after current date [%@].", &v12, 0x2Au);
    }

    [(HUScheduleRuleEditorItemModuleController *)self _presentAlertWithError:101];
  }

  return v7 >> 63;
}

- (void)_presentAlertWithError:(int64_t)error
{
  mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:error];
  [mEMORY[0x277D14640] handleError:v4 operationType:*MEMORY[0x277D13C68] options:0 retryBlock:0 cancelBlock:0];
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

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v12 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 1024;
    v11 = onCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@: User tapped switchCell to: %{BOOL}d", &v8, 0x12u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  [_editorItemModule updateAllDayToggle:onCopy];
}

- (void)timePickerCell:(id)cell didSelectStartTime:(id)time
{
  v16 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = timeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Start time changed to to [%@].", &v10, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  [_editorItemModule updateScheduleRuleStartTime:timeCopy];
}

- (void)timePickerCell:(id)cell didSelectEndTime:(id)time
{
  v16 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = timeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ End time changed to to [%@].", &v10, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorItemModuleController *)self _editorItemModule];
  [_editorItemModule updateScheduleRuleEndTime:timeCopy];
}

- (HUScheduleRuleEditorItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end