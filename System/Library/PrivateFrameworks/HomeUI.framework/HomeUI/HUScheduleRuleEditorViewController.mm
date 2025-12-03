@interface HUScheduleRuleEditorViewController
- (BOOL)_validateStartTimeBeforeEndTime:(id)time endTime:(id)endTime;
- (HUScheduleRuleEditorViewController)initWithScheduleType:(unint64_t)type scheduleRule:(id)rule scheduleBuilder:(id)builder delegate:(id)delegate;
- (HUScheduleRuleEditorViewControllerDelegate)delegate;
- (id)_editorItemModule;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)_presentAlertWithError:(int64_t)error;
- (void)_saveChanges;
- (void)doneButtonPressed:(id)pressed;
- (void)scheduleRuleEditorModuleController:(id)controller didRequestRuleRemoval:(id)removal;
- (void)viewDidLoad;
@end

@implementation HUScheduleRuleEditorViewController

- (HUScheduleRuleEditorViewController)initWithScheduleType:(unint64_t)type scheduleRule:(id)rule scheduleBuilder:(id)builder delegate:(id)delegate
{
  ruleCopy = rule;
  builderCopy = builder;
  delegateCopy = delegate;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleRuleEditorViewController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"scheduleBuilder"}];
  }

  v14 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__HUScheduleRuleEditorViewController_initWithScheduleType_scheduleRule_scheduleBuilder_delegate___block_invoke;
  v24[3] = &unk_277DBC900;
  typeCopy = type;
  v15 = ruleCopy;
  v25 = v15;
  v16 = builderCopy;
  v26 = v16;
  [v14 setItemModuleCreator:v24];
  v23.receiver = self;
  v23.super_class = HUScheduleRuleEditorViewController;
  v17 = [(HUItemTableViewController *)&v23 initWithItemManager:v14 tableViewStyle:1];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  [(HUScheduleRuleEditorViewController *)v18 setIsModalPresentation:v15 == 0];
  if (type == 2)
  {
    v19 = @"HUScheduleRuleEditor_Times_Title";
  }

  else
  {
    v19 = @"HUScheduleRuleEditor_Dates_Title";
  }

  v20 = _HULocalizedStringWithDefaultValue(v19, v19, 1);
  [(HUScheduleRuleEditorViewController *)v18 setTitleString:v20];

  return v18;
}

id __97__HUScheduleRuleEditorViewController_initWithScheduleType_scheduleRule_scheduleBuilder_delegate___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUScheduleRuleEditorItemModule alloc] initWithItemUpdater:v4 scheduleType:a1[6] scheduleRule:a1[4] scheduleBuilder:a1[5]];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HUScheduleRuleEditorViewController;
  [(HUItemTableViewController *)&v6 viewDidLoad];
  titleString = [(HUScheduleRuleEditorViewController *)self titleString];
  [(HUScheduleRuleEditorViewController *)self setTitle:titleString];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  navigationItem = [(HUScheduleRuleEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v5 = [(HUItemModuleController *)[HUScheduleRuleEditorItemModuleController alloc] initWithModule:moduleCopy];
  [(HUScheduleRuleEditorItemModuleController *)v5 setDelegate:self];

  return v5;
}

- (void)doneButtonPressed:(id)pressed
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Done button pressed", &v11, 0x16u);
  }

  [(HUScheduleRuleEditorViewController *)self _saveChanges];
  isModalPresentation = [(HUScheduleRuleEditorViewController *)self isModalPresentation];
  navigationController = [(HUScheduleRuleEditorViewController *)self navigationController];
  v9 = navigationController;
  if (isModalPresentation)
  {
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v10 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)scheduleRuleEditorModuleController:(id)controller didRequestRuleRemoval:(id)removal
{
  v32 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v24 = 138412802;
    selfCopy4 = self;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = removalCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User requested to remove schedule rule [%@]", &v24, 0x20u);
  }

  _editorItemModule = [(HUScheduleRuleEditorViewController *)self _editorItemModule];
  existingScheduleRule = [_editorItemModule existingScheduleRule];
  v11 = HFLogForCategory();
  scheduleBuilder = v11;
  if (existingScheduleRule)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v24 = 138412802;
      selfCopy4 = self;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = existingScheduleRule;
      _os_log_impl(&dword_20CEB6000, scheduleBuilder, OS_LOG_TYPE_DEFAULT, "%@:%@ Removing schedule rule [%@]", &v24, 0x20u);
    }

    scheduleBuilder = [_editorItemModule scheduleBuilder];
    v14 = MEMORY[0x277CBEB58];
    rules = [scheduleBuilder rules];
    v16 = [v14 setWithSet:rules];

    [v16 removeObject:existingScheduleRule];
    [scheduleBuilder setRules:v16];
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      delegate = [(HUScheduleRuleEditorViewController *)self delegate];
      v24 = 138413058;
      selfCopy4 = self;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = delegate;
      v30 = 2112;
      v31 = scheduleBuilder;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule builder [%@]", &v24, 0x2Au);
    }

    delegate2 = [(HUScheduleRuleEditorViewController *)self delegate];
    [delegate2 didUpdateScheduleBuilder:self scheduleBuilder:scheduleBuilder];

    navigationController = [(HUScheduleRuleEditorViewController *)self navigationController];
    v22 = [navigationController popViewControllerAnimated:1];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v23 = NSStringFromSelector(a2);
    v24 = 138412546;
    selfCopy4 = self;
    v26 = 2112;
    v27 = v23;
    _os_log_error_impl(&dword_20CEB6000, scheduleBuilder, OS_LOG_TYPE_ERROR, "%@:%@ Invalid request. Requesting to remove schedule rule with no existing rule.", &v24, 0x16u);
  }
}

- (void)_saveChanges
{
  v55 = *MEMORY[0x277D85DE8];
  _editorItemModule = [(HUScheduleRuleEditorViewController *)self _editorItemModule];
  existingScheduleRule = [_editorItemModule existingScheduleRule];
  editedScheduleRule = [_editorItemModule editedScheduleRule];
  if (editedScheduleRule)
  {
    v7 = editedScheduleRule;
    if ([editedScheduleRule isWeekDayRule])
    {
      editedStartTime = [_editorItemModule editedStartTime];
      if (editedStartTime)
      {
        editedStartTime2 = [_editorItemModule editedStartTime];
      }

      else
      {
        weekDayRule = [v7 weekDayRule];
        editedStartTime2 = [weekDayRule startTime];
      }

      editedEndTime = [_editorItemModule editedEndTime];
      if (editedEndTime)
      {
        editedEndTime2 = [_editorItemModule editedEndTime];
      }

      else
      {
        weekDayRule2 = [v7 weekDayRule];
        editedEndTime2 = [weekDayRule2 endTime];
      }

      if (![(HUScheduleRuleEditorViewController *)self _validateStartTimeBeforeEndTime:editedStartTime2 endTime:editedEndTime2])
      {

        v10 = v7;
LABEL_32:

        goto LABEL_33;
      }

      aSelector = a2;
      v15 = objc_alloc(MEMORY[0x277CD1F20]);
      weekDayRule3 = [v7 weekDayRule];
      v17 = [v15 initWithStartTime:editedStartTime2 endTime:editedEndTime2 daysOfTheWeek:{objc_msgSend(weekDayRule3, "daysOfTheWeek")}];

      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        selfCopy6 = self;
        v49 = 2112;
        v50 = v19;
        v51 = 2112;
        v52 = v17;
        _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ New weekDay schedule rule will be %@", buf, 0x20u);
      }

      v10 = [objc_alloc(MEMORY[0x277D14A20]) initWithWeekDayRule:v17];
      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSelector(aSelector);
        *buf = 138413058;
        selfCopy6 = self;
        v49 = 2112;
        v50 = v21;
        v51 = 2112;
        v52 = v7;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating from schedule rule %@ to %@", buf, 0x2Au);
      }

      a2 = aSelector;
    }

    else
    {
      v10 = v7;
    }

    scheduleBuilder = [_editorItemModule scheduleBuilder];
    v23 = scheduleBuilder;
    if (existingScheduleRule && v10)
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        *buf = 138413058;
        selfCopy6 = self;
        v49 = 2112;
        v50 = v25;
        v51 = 2112;
        v52 = existingScheduleRule;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@ Replacing existing schedule rule [%@] with edited schedule rule [%@]", buf, 0x2Au);
      }

      v26 = MEMORY[0x277CBEB58];
      rules = [v23 rules];
      v28 = [v26 setWithSet:rules];

      [v28 removeObject:existingScheduleRule];
      [v28 addObject:v10];
      [v23 setRules:v28];
    }

    else
    {
      rules2 = [scheduleBuilder rules];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __50__HUScheduleRuleEditorViewController__saveChanges__block_invoke;
      v45[3] = &unk_277DBC928;
      v30 = v10;
      v46 = v30;
      v31 = [rules2 na_firstObjectPassingTest:v45];

      v32 = HFLogForCategory();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          v34 = NSStringFromSelector(a2);
          *buf = 138413058;
          selfCopy6 = self;
          v49 = 2112;
          v50 = v34;
          v51 = 2112;
          v52 = v31;
          v53 = 2112;
          v54 = v30;
          _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "%@:%@ Contains duplicate schedule rule [%@] that matches edited schedule rule [%@]", buf, 0x2Au);
        }
      }

      else
      {
        aSelectora = existingScheduleRule;
        if (v33)
        {
          v35 = NSStringFromSelector(a2);
          *buf = 138412802;
          selfCopy6 = self;
          v49 = 2112;
          v50 = v35;
          v51 = 2112;
          v52 = v30;
          _os_log_impl(&dword_20CEB6000, v32, OS_LOG_TYPE_DEFAULT, "%@:%@ Adding schedule rule [%@]", buf, 0x20u);
        }

        v36 = MEMORY[0x277CBEB58];
        [v23 rules];
        v38 = v37 = a2;
        v32 = [v36 setWithSet:v38];

        a2 = v37;
        [v32 addObject:v30];
        [v23 setRules:v32];
        existingScheduleRule = aSelectora;
      }

      v28 = v46;
    }

    v39 = HFLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = NSStringFromSelector(a2);
      delegate = [(HUScheduleRuleEditorViewController *)self delegate];
      *buf = 138413058;
      selfCopy6 = self;
      v49 = 2112;
      v50 = v40;
      v51 = 2112;
      v52 = delegate;
      v53 = 2112;
      v54 = v23;
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule builder [%@]", buf, 0x2Au);
    }

    delegate2 = [(HUScheduleRuleEditorViewController *)self delegate];
    [delegate2 didUpdateScheduleBuilder:self scheduleBuilder:v23];

    goto LABEL_32;
  }

LABEL_33:
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

    [(HUScheduleRuleEditorViewController *)self _presentAlertWithError:102];
  }

  return v12 >> 63;
}

- (void)_presentAlertWithError:(int64_t)error
{
  mEMORY[0x277D14640] = [MEMORY[0x277D14640] sharedHandler];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:error];
  [mEMORY[0x277D14640] handleError:v4 operationType:*MEMORY[0x277D13C68] options:0 retryBlock:0 cancelBlock:0];
}

- (id)_editorItemModule
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  itemModules = [itemManager itemModules];
  v4 = [itemModules na_firstObjectPassingTest:&__block_literal_global_98];

  return v4;
}

uint64_t __55__HUScheduleRuleEditorViewController__editorItemModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HUScheduleRuleEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end