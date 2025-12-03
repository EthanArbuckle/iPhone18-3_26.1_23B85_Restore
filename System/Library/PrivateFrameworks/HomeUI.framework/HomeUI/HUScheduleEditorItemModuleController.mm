@interface HUScheduleEditorItemModuleController
- (BOOL)_validateEndDateAfterNowDate:(id)date;
- (BOOL)_validateEndDateAfterStartDate:(id)date startDate:(id)startDate;
- (BOOL)_validateRecurrences:(id)recurrences;
- (BOOL)_validateStartDateBeforeEndDate:(id)date endDate:(id)endDate;
- (BOOL)_validateStartTimeBeforeEndTime:(id)time endTime:(id)endTime;
- (BOOL)saveCustomScheduleStartAndEndTimes;
- (Class)cellClassForItem:(id)item;
- (id)_editorItemModule;
- (unint64_t)didSelectItem:(id)item;
- (void)_presentAlertWithError:(int64_t)error;
- (void)_presentErrorAlertWithTitle:(id)title message:(id)message;
- (void)didUpdateDate:(id)date date:(id)a4 editorContext:(unint64_t)context;
- (void)didUpdateRecurrences:(id)recurrences recurrences:(id)a4;
- (void)didUpdateScheduleBuilder:(id)builder scheduleBuilder:(id)scheduleBuilder;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)timePickerCell:(id)cell didSelectEndTime:(id)time;
- (void)timePickerCell:(id)cell didSelectStartTime:(id)time;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUScheduleEditorItemModuleController

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ([_editorItemModule addScheduleRuleItem], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(itemCopy, "isEqual:", v8), v8, v9))
  {
    v6 = objc_opt_class();
    goto LABEL_4;
  }

  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  editStartDatePeriodItem = [ruleEditorItemModule editStartDatePeriodItem];
  if (([itemCopy isEqual:editStartDatePeriodItem] & 1) == 0)
  {
    editEndDatePeriodItem = [ruleEditorItemModule editEndDatePeriodItem];
    if (![itemCopy isEqual:editEndDatePeriodItem])
    {
      editRecurrenceItem = [ruleEditorItemModule editRecurrenceItem];
      v14 = [itemCopy isEqual:editRecurrenceItem];

      if ((v14 & 1) == 0)
      {
        allDayItem = [ruleEditorItemModule allDayItem];
        v16 = [itemCopy isEqual:allDayItem];

        if ((v16 & 1) == 0)
        {
          editTimeOfDayItem = [ruleEditorItemModule editTimeOfDayItem];
          v18 = [itemCopy isEqual:editTimeOfDayItem];

          if ((v18 & 1) == 0)
          {
            removeRuleItem = [ruleEditorItemModule removeRuleItem];
            [itemCopy isEqual:removeRuleItem];
          }
        }
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v6 = objc_opt_class();

LABEL_4:

  return v6;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v31.receiver = self;
  v31.super_class = HUScheduleEditorItemModuleController;
  [(HUItemModuleController *)&v31 setupCell:cellCopy forItem:itemCopy];
  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  objc_opt_class();
  v10 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  editTimeOfDayItem = [ruleEditorItemModule editTimeOfDayItem];
  v14 = [itemCopy isEqual:editTimeOfDayItem];

  if (v14 && v12)
  {
    editedStartTime = [ruleEditorItemModule editedStartTime];
    v16 = editedStartTime;
    if (editedStartTime)
    {
      v17 = editedStartTime;
    }

    else
    {
      editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
      weekDayRule = [editedScheduleRule weekDayRule];
      startTime = [weekDayRule startTime];

      v17 = startTime;
    }

    editedEndTime = [ruleEditorItemModule editedEndTime];
    v22 = editedEndTime;
    if (editedEndTime)
    {
      endTime = editedEndTime;
    }

    else
    {
      [ruleEditorItemModule editedScheduleRule];
      v24 = v30 = v17;
      weekDayRule2 = [v24 weekDayRule];
      endTime = [weekDayRule2 endTime];

      v17 = v30;
    }

    [v12 setStartTimeComponents:v17];
    [v12 setEndTimeComponents:endTime];
    latestResults = [itemCopy latestResults];
    v27 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [v12 setTitle:v27];

    latestResults2 = [itemCopy latestResults];
    v29 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v12 setAccessibilityIdentifier:v29];

    [v12 setDelegate:self];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v47.receiver = self;
  v47.super_class = HUScheduleEditorItemModuleController;
  [(HUItemModuleController *)&v47 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
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

  v14 = MEMORY[0x277D13DC8];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      latestResults = [itemCopy latestResults];
      v16 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
      if ([v16 BOOLValue])
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }

      [v13 setAccessoryType:v17];

      [v13 setDisabled:0];
      latestResults2 = [itemCopy latestResults];
      v19 = [latestResults2 objectForKeyedSubscript:*v14];
      [v13 setAccessibilityIdentifier:v19];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 setAccessoryType:1];
      [v13 setDisabled:0];
      latestResults3 = [itemCopy latestResults];
      v21 = [latestResults3 objectForKeyedSubscript:*v14];
      [v13 setAccessibilityIdentifier:v21];
    }
  }

  v46 = _editorItemModule;
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  objc_opt_class();
  v23 = v11;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    editStartDatePeriodItem = [ruleEditorItemModule editStartDatePeriodItem];
    if ([itemCopy isEqual:editStartDatePeriodItem])
    {
LABEL_19:

LABEL_20:
      [v25 setAccessoryView:0];
      [v25 setHideIcon:1];
      [v25 setAccessoryType:1];
      [v25 setDisabled:0];
      latestResults4 = [itemCopy latestResults];
      v29 = [latestResults4 objectForKeyedSubscript:*v14];
      [v13 setAccessibilityIdentifier:v29];

      goto LABEL_21;
    }

    editEndDatePeriodItem = [ruleEditorItemModule editEndDatePeriodItem];
    if ([itemCopy isEqual:editEndDatePeriodItem])
    {

      goto LABEL_19;
    }

    editRecurrenceItem = [ruleEditorItemModule editRecurrenceItem];
    v45 = [itemCopy isEqual:editRecurrenceItem];

    v14 = MEMORY[0x277D13DC8];
    if (v45)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  objc_opt_class();
  v30 = v23;
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    removeRuleItem = [ruleEditorItemModule removeRuleItem];
    v34 = [itemCopy isEqual:removeRuleItem];

    if (v34)
    {
      [v32 setDestructive:1];
      latestResults5 = [itemCopy latestResults];
      v36 = [latestResults5 objectForKeyedSubscript:*v14];
      [v32 setAccessibilityIdentifier:v36];
    }
  }

  objc_opt_class();
  v37 = v30;
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  if (v39)
  {
    allDayItem = [ruleEditorItemModule allDayItem];
    v41 = [itemCopy isEqual:allDayItem];

    if (v41)
    {
      [v39 setDelegate:self];
      latestResults6 = [itemCopy latestResults];
      v43 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v39 setAccessibilityIdentifier:v43];
    }
  }
}

- (unint64_t)didSelectItem:(id)item
{
  v78 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy10 = self;
    v72 = 2112;
    v73 = v7;
    v74 = 2112;
    v75 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ User selected item [%@]", buf, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [_editorItemModule updateSelectedScheduleType:itemCopy];
    p_super = HFLogForCategory();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(_editorItemModule, "selectedScheduleType")}];
      *buf = 138412802;
      selfCopy10 = self;
      v72 = 2112;
      v73 = v11;
      v74 = 2112;
      v75 = v12;
      _os_log_impl(&dword_20CEB6000, p_super, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating selected schedule type to [%@].", buf, 0x20u);
    }

LABEL_15:
    v24 = 0;
LABEL_37:

    p_super = &v24->super.super.super.super.super.super;
    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v13 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    p_super = v14;

    selectedScheduleType = [_editorItemModule selectedScheduleType];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      [p_super rule];
      v69 = a2;
      v19 = v18 = ruleEditorItemModule;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selectedScheduleType];
      *buf = 138413058;
      selfCopy10 = self;
      v72 = 2112;
      v73 = v17;
      v74 = 2112;
      v75 = v19;
      v76 = 2112;
      v77 = v20;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ User is attempting to view existing schedule rule [%@] for selected schedule type [%@].", buf, 0x2Au);

      ruleEditorItemModule = v18;
      a2 = v69;
    }

    if ((selectedScheduleType - 1) > 1)
    {
      goto LABEL_15;
    }

    updatedScheduleBuilder = [_editorItemModule updatedScheduleBuilder];
    v22 = updatedScheduleBuilder;
    if (updatedScheduleBuilder)
    {
      originalScheduleBuilder = updatedScheduleBuilder;
    }

    else
    {
      originalScheduleBuilder = [_editorItemModule originalScheduleBuilder];
    }

    v38 = originalScheduleBuilder;

    v46 = HFLogForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy10 = self;
      v72 = 2112;
      v73 = v47;
      v74 = 2112;
      v75 = v38;
      _os_log_impl(&dword_20CEB6000, v46, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to show schedule rule editor for schedule builder [%@].", buf, 0x20u);
    }

    v48 = [HUScheduleRuleEditorViewController alloc];
    rule = [p_super rule];
    v24 = [(HUScheduleRuleEditorViewController *)v48 initWithScheduleType:selectedScheduleType scheduleRule:rule scheduleBuilder:v38 delegate:self];

LABEL_36:
    goto LABEL_37;
  }

  addScheduleRuleItem = [_editorItemModule addScheduleRuleItem];
  v26 = [itemCopy isEqual:addScheduleRuleItem];

  if (!v26)
  {
    editStartDatePeriodItem = [ruleEditorItemModule editStartDatePeriodItem];
    v35 = [itemCopy isEqual:editStartDatePeriodItem];

    if (v35)
    {
      editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
      yearDayRule = [editedScheduleRule yearDayRule];
      p_super = [yearDayRule validFrom];

      v24 = [[HUScheduleDateEditorViewController alloc] initWithDate:p_super editorContext:0 delegate:self];
      v38 = HFLogForCategory();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      v39 = NSStringFromSelector(a2);
      editedScheduleRule2 = [ruleEditorItemModule editedScheduleRule];
      *buf = 138413058;
      selfCopy10 = self;
      v72 = 2112;
      v73 = v39;
      v74 = 2112;
      v75 = p_super;
      v76 = 2112;
      v77 = editedScheduleRule2;
      v41 = "%@:%@ Preparing to show schedule rule date editor with initial start date [%@] from schedule rule [%@].";
    }

    else
    {
      editEndDatePeriodItem = [ruleEditorItemModule editEndDatePeriodItem];
      v43 = [itemCopy isEqual:editEndDatePeriodItem];

      if (v43)
      {
        editedScheduleRule3 = [ruleEditorItemModule editedScheduleRule];
        yearDayRule2 = [editedScheduleRule3 yearDayRule];
        p_super = [yearDayRule2 validUntil];

        v24 = [[HUScheduleDateEditorViewController alloc] initWithDate:p_super editorContext:1 delegate:self];
        v38 = HFLogForCategory();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v39 = NSStringFromSelector(a2);
        editedScheduleRule2 = [ruleEditorItemModule editedScheduleRule];
        *buf = 138413058;
        selfCopy10 = self;
        v72 = 2112;
        v73 = v39;
        v74 = 2112;
        v75 = p_super;
        v76 = 2112;
        v77 = editedScheduleRule2;
        v41 = "%@:%@ Preparing to show schedule rule date editor with initial end date [%@] from schedule rule [%@].";
      }

      else
      {
        editRecurrenceItem = [ruleEditorItemModule editRecurrenceItem];
        v51 = [itemCopy isEqual:editRecurrenceItem];

        if (!v51)
        {
          goto LABEL_50;
        }

        editedScheduleRule4 = [ruleEditorItemModule editedScheduleRule];
        weekDayRule = [editedScheduleRule4 weekDayRule];
        [weekDayRule daysOfTheWeek];

        p_super = HMDaysOfTheWeekToDateComponents();
        v24 = [[HUScheduleRecurrenceEditorViewController alloc] initWithRecurrences:p_super delegate:self];
        v38 = HFLogForCategory();
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v39 = NSStringFromSelector(a2);
        editedScheduleRule2 = [ruleEditorItemModule editedScheduleRule];
        *buf = 138413058;
        selfCopy10 = self;
        v72 = 2112;
        v73 = v39;
        v74 = 2112;
        v75 = p_super;
        v76 = 2112;
        v77 = editedScheduleRule2;
        v41 = "%@:%@ Preparing to show schedule rule recurrence editor with initial recurrences [%@] from schedule rule [%@].";
      }
    }

    _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, v41, buf, 0x2Au);

    goto LABEL_36;
  }

  selectedScheduleType2 = [_editorItemModule selectedScheduleType];
  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = NSStringFromSelector(a2);
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selectedScheduleType2];
    *buf = 138412802;
    selfCopy10 = self;
    v72 = 2112;
    v73 = v29;
    v74 = 2112;
    v75 = v30;
    _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ User is attempting to add schedule rule for selected schedule type [%@].", buf, 0x20u);
  }

  if ((selectedScheduleType2 - 1) <= 1)
  {
    updatedScheduleBuilder2 = [_editorItemModule updatedScheduleBuilder];
    v32 = updatedScheduleBuilder2;
    if (updatedScheduleBuilder2)
    {
      originalScheduleBuilder2 = updatedScheduleBuilder2;
    }

    else
    {
      originalScheduleBuilder2 = [_editorItemModule originalScheduleBuilder];
    }

    p_super = originalScheduleBuilder2;

    v62 = HFLogForCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = NSStringFromSelector(a2);
      *buf = 138412802;
      selfCopy10 = self;
      v72 = 2112;
      v73 = v63;
      v74 = 2112;
      v75 = p_super;
      _os_log_impl(&dword_20CEB6000, v62, OS_LOG_TYPE_DEFAULT, "%@:%@ Preparing to show schedule rule editor for schedule builder [%@].", buf, 0x20u);
    }

    rules = [p_super rules];
    v65 = [rules count];
    maxNumberOfRules = [p_super maxNumberOfRules];

    if (v65 >= maxNumberOfRules)
    {
      v67 = HFLogForCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy10 = self;
        v72 = 2112;
        v73 = v68;
        _os_log_error_impl(&dword_20CEB6000, v67, OS_LOG_TYPE_ERROR, "%@:%@ Unsupported action. Max number of rules reached. Cannot add any more rules.", buf, 0x16u);
      }

      host = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_UnsupportedAction_Title", @"HUScheduleRuleEditor_UnsupportedAction_Title", 1);
      navigationController = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_UnsupportedAction_MaxDateTimePeriodsReached_Message", @"HUScheduleRuleEditor_UnsupportedAction_MaxDateTimePeriodsReached_Message", 1);
      [(HUScheduleEditorItemModuleController *)self _presentErrorAlertWithTitle:host message:navigationController];
      goto LABEL_47;
    }

    v24 = [[HUScheduleRuleEditorViewController alloc] initWithScheduleType:selectedScheduleType2 scheduleRule:0 scheduleBuilder:p_super delegate:self];
    goto LABEL_37;
  }

LABEL_50:
  p_super = 0;
LABEL_38:
  objc_opt_class();
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v55 = host;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;

  if (v56 && p_super)
  {
    addScheduleRuleItem2 = [_editorItemModule addScheduleRuleItem];
    v58 = [itemCopy isEqual:addScheduleRuleItem2];

    if (v58)
    {
      if (![(HUScheduleEditorItemModuleController *)self saveCustomScheduleStartAndEndTimes])
      {
LABEL_48:
        v56 = host;
        goto LABEL_49;
      }

      navigationController = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:p_super];
      [navigationController setModalPresentationStyle:2];
      v60 = [v56 hu_presentPreloadableViewController:navigationController animated:1];
    }

    else
    {
      navigationController = [v56 navigationController];
      [navigationController pushViewController:p_super animated:1];
    }

LABEL_47:

    goto LABEL_48;
  }

LABEL_49:

  return 0;
}

- (void)didUpdateRecurrences:(id)recurrences recurrences:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v17 = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Did update recurrences to [%@].", &v17, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  if ([ruleEditorItemModule scheduleType] == 2 && -[HUScheduleEditorItemModuleController _validateRecurrences:](self, "_validateRecurrences:", v6))
  {
    [ruleEditorItemModule updateScheduleRuleRecurrences:v6];
    v11 = objc_alloc(MEMORY[0x277D14A00]);
    v12 = MEMORY[0x277CBEB98];
    editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
    v14 = [v12 setWithObject:editedScheduleRule];
    v15 = [v11 initWithScheduleRules:v14];

    v16 = [MEMORY[0x277D14A08] scheduleBuilderFromSchedule:v15];
    [_editorItemModule updateScheduleBuilder:v16];
  }
}

- (void)didUpdateDate:(id)date date:(id)a4 editorContext:(unint64_t)context
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v23 = 138412802;
    selfCopy = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Did update date to [%@].", &v23, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  if ([ruleEditorItemModule scheduleType] == 1)
  {
    if (context != 1)
    {
      if (context)
      {
LABEL_12:
        v18 = objc_alloc(MEMORY[0x277D14A00]);
        v19 = MEMORY[0x277CBEB98];
        editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
        v21 = [v19 setWithObject:editedScheduleRule];
        validUntil = [v18 initWithScheduleRules:v21];

        v22 = [MEMORY[0x277D14A08] scheduleBuilderFromSchedule:validUntil];
        [_editorItemModule updateScheduleBuilder:v22];

        goto LABEL_13;
      }

      editedScheduleRule2 = [ruleEditorItemModule editedScheduleRule];
      yearDayRule = [editedScheduleRule2 yearDayRule];
      validUntil = [yearDayRule validUntil];

      if ([(HUScheduleEditorItemModuleController *)self _validateStartDateBeforeEndDate:v8 endDate:validUntil])
      {
        [ruleEditorItemModule updateScheduleRuleStartDate:v8];
      }

LABEL_11:

      goto LABEL_12;
    }

    if ([(HUScheduleEditorItemModuleController *)self _validateEndDateAfterNowDate:v8])
    {
      editedScheduleRule3 = [ruleEditorItemModule editedScheduleRule];
      yearDayRule2 = [editedScheduleRule3 yearDayRule];
      validUntil = [yearDayRule2 validFrom];

      if (![(HUScheduleEditorItemModuleController *)self _validateEndDateAfterStartDate:v8 startDate:validUntil])
      {
LABEL_13:

        goto LABEL_14;
      }

      [ruleEditorItemModule updateScheduleRuleEndDate:v8];
      goto LABEL_11;
    }
  }

LABEL_14:
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

    [(HUScheduleEditorItemModuleController *)self _presentAlertWithError:98];
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

    [(HUScheduleEditorItemModuleController *)self _presentAlertWithError:99];
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

    [(HUScheduleEditorItemModuleController *)self _presentAlertWithError:100];
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

    [(HUScheduleEditorItemModuleController *)self _presentAlertWithError:101];
  }

  return v7 >> 63;
}

- (BOOL)saveCustomScheduleStartAndEndTimes
{
  v44 = *MEMORY[0x277D85DE8];
  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  updatedScheduleBuilder = [_editorItemModule updatedScheduleBuilder];
  rules = [updatedScheduleBuilder rules];
  v7 = [rules count];

  if (v7 <= 1)
  {
    ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
    existingScheduleRule = [ruleEditorItemModule existingScheduleRule];
    editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
    if (!editedScheduleRule)
    {
      v8 = 1;
LABEL_27:

      goto LABEL_28;
    }

    v12 = editedScheduleRule;
    if ([editedScheduleRule isWeekDayRule])
    {
      editedStartTime = [ruleEditorItemModule editedStartTime];
      if (editedStartTime)
      {
        editedStartTime2 = [ruleEditorItemModule editedStartTime];
      }

      else
      {
        weekDayRule = [v12 weekDayRule];
        editedStartTime2 = [weekDayRule startTime];
      }

      editedEndTime = [ruleEditorItemModule editedEndTime];
      if (editedEndTime)
      {
        editedEndTime2 = [ruleEditorItemModule editedEndTime];
      }

      else
      {
        weekDayRule2 = [v12 weekDayRule];
        editedEndTime2 = [weekDayRule2 endTime];
      }

      if (![(HUScheduleEditorItemModuleController *)self _validateStartTimeBeforeEndTime:editedStartTime2 endTime:editedEndTime2])
      {

        v8 = 0;
        v15 = v12;
LABEL_26:

        goto LABEL_27;
      }

      v20 = objc_alloc(MEMORY[0x277CD1F20]);
      weekDayRule3 = [v12 weekDayRule];
      v35 = editedEndTime2;
      v22 = [v20 initWithStartTime:editedStartTime2 endTime:editedEndTime2 daysOfTheWeek:{objc_msgSend(weekDayRule3, "daysOfTheWeek")}];

      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        selfCopy3 = self;
        v38 = 2112;
        v39 = v24;
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "%@:%@ New weekDay schedule rule will be %@", buf, 0x20u);
      }

      v15 = [objc_alloc(MEMORY[0x277D14A20]) initWithWeekDayRule:v22];
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromSelector(a2);
        v26 = v34 = editedStartTime2;
        *buf = 138413058;
        selfCopy3 = self;
        v38 = 2112;
        v39 = v26;
        v40 = 2112;
        v41 = v12;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating from schedule rule %@ to %@", buf, 0x2Au);

        editedStartTime2 = v34;
      }
    }

    else
    {
      v15 = v12;
    }

    scheduleBuilder = [ruleEditorItemModule scheduleBuilder];
    if (existingScheduleRule && v15)
    {
      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = NSStringFromSelector(a2);
        *buf = 138413058;
        selfCopy3 = self;
        v38 = 2112;
        v39 = v29;
        v40 = 2112;
        v41 = existingScheduleRule;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ Replacing existing schedule rule [%@] with edited schedule rule [%@]", buf, 0x2Au);
      }

      v30 = MEMORY[0x277CBEB58];
      rules2 = [scheduleBuilder rules];
      v32 = [v30 setWithSet:rules2];

      [v32 removeObject:existingScheduleRule];
      [v32 addObject:v15];
      [scheduleBuilder setRules:v32];
    }

    [_editorItemModule updateScheduleBuilder:scheduleBuilder];

    v8 = 1;
    goto LABEL_26;
  }

  v8 = 1;
LABEL_28:

  return v8;
}

- (BOOL)_validateStartTimeBeforeEndTime:(id)time endTime:(id)endTime
{
  v25 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v10 = [hf_sharedCalendar dateFromComponents:timeCopy];
  v11 = [hf_sharedCalendar dateFromComponents:endTimeCopy];
  v12 = [v10 compare:v11];

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v17 = 138413058;
      selfCopy = self;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = timeCopy;
      v23 = 2112;
      v24 = endTimeCopy;
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@:%@ Invalid schedule rule. Start time [%@] is not before end time [%@].", &v17, 0x2Au);
    }

    [(HUScheduleEditorItemModuleController *)self _presentAlertWithError:102];
  }

  return v12 >> 63;
}

- (void)didUpdateScheduleBuilder:(id)builder scheduleBuilder:(id)scheduleBuilder
{
  v16 = *MEMORY[0x277D85DE8];
  scheduleBuilderCopy = scheduleBuilder;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = scheduleBuilderCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Requesting to update schedule builder to %@", &v10, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  [_editorItemModule updateScheduleBuilder:scheduleBuilderCopy];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  v23 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    selfCopy = self;
    v21 = 1024;
    v22 = onCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User tapped switchCell to: %{BOOL}d", &v19, 0x12u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  item = [cellCopy item];

  allDayItem = [ruleEditorItemModule allDayItem];
  v12 = [item isEqual:allDayItem];

  if (v12)
  {
    [ruleEditorItemModule updateAllDayToggle:onCopy];
    v13 = objc_alloc(MEMORY[0x277D14A00]);
    v14 = MEMORY[0x277CBEB98];
    editedScheduleRule = [ruleEditorItemModule editedScheduleRule];
    v16 = [v14 setWithObject:editedScheduleRule];
    v17 = [v13 initWithScheduleRules:v16];

    v18 = [MEMORY[0x277D14A08] scheduleBuilderFromSchedule:v17];
    [_editorItemModule updateScheduleBuilder:v18];
  }
}

- (void)timePickerCell:(id)cell didSelectStartTime:(id)time
{
  v17 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = timeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Start time changed to to [%@].", &v11, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  [ruleEditorItemModule updateScheduleRuleStartTime:timeCopy];
}

- (void)timePickerCell:(id)cell didSelectEndTime:(id)time
{
  v17 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = timeCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ End time changed to to [%@].", &v11, 0x20u);
  }

  _editorItemModule = [(HUScheduleEditorItemModuleController *)self _editorItemModule];
  ruleEditorItemModule = [_editorItemModule ruleEditorItemModule];
  [ruleEditorItemModule updateScheduleRuleEndTime:timeCopy];
}

- (void)_presentErrorAlertWithTitle:(id)title message:(id)message
{
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_218];
  [v11 addAction:v7];

  v8 = [HUViewControllerPresentationRequest requestWithViewController:v11];
  [v8 setPreferredPresentationType:0];
  host = [(HUItemModuleController *)self host];
  v10 = [host moduleController:self presentViewControllerForRequest:v8];
}

void __76__HUScheduleEditorItemModuleController__presentErrorAlertWithTitle_message___block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[HUScheduleEditorItemModuleController _presentErrorAlertWithTitle:message:]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "(%s) User tapped OK button from the alert popup", &v1, 0xCu);
  }
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

@end