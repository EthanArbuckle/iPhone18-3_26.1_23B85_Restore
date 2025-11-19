@interface HUScheduleRuleEditorViewController
- (BOOL)_validateStartTimeBeforeEndTime:(id)a3 endTime:(id)a4;
- (HUScheduleRuleEditorViewController)initWithScheduleType:(unint64_t)a3 scheduleRule:(id)a4 scheduleBuilder:(id)a5 delegate:(id)a6;
- (HUScheduleRuleEditorViewControllerDelegate)delegate;
- (id)_editorItemModule;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)_presentAlertWithError:(int64_t)a3;
- (void)_saveChanges;
- (void)doneButtonPressed:(id)a3;
- (void)scheduleRuleEditorModuleController:(id)a3 didRequestRuleRemoval:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUScheduleRuleEditorViewController

- (HUScheduleRuleEditorViewController)initWithScheduleType:(unint64_t)a3 scheduleRule:(id)a4 scheduleBuilder:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HUScheduleRuleEditorViewController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"scheduleBuilder"}];
  }

  v14 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__HUScheduleRuleEditorViewController_initWithScheduleType_scheduleRule_scheduleBuilder_delegate___block_invoke;
  v24[3] = &unk_277DBC900;
  v27 = a3;
  v15 = v11;
  v25 = v15;
  v16 = v12;
  v26 = v16;
  [v14 setItemModuleCreator:v24];
  v23.receiver = self;
  v23.super_class = HUScheduleRuleEditorViewController;
  v17 = [(HUItemTableViewController *)&v23 initWithItemManager:v14 tableViewStyle:1];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v13);
  }

  [(HUScheduleRuleEditorViewController *)v18 setIsModalPresentation:v15 == 0];
  if (a3 == 2)
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
  v3 = [(HUScheduleRuleEditorViewController *)self titleString];
  [(HUScheduleRuleEditorViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  v5 = [(HUScheduleRuleEditorViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [(HUItemModuleController *)[HUScheduleRuleEditorItemModuleController alloc] initWithModule:v4];
  [(HUScheduleRuleEditorItemModuleController *)v5 setDelegate:self];

  return v5;
}

- (void)doneButtonPressed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Done button pressed", &v11, 0x16u);
  }

  [(HUScheduleRuleEditorViewController *)self _saveChanges];
  v7 = [(HUScheduleRuleEditorViewController *)self isModalPresentation];
  v8 = [(HUScheduleRuleEditorViewController *)self navigationController];
  v9 = v8;
  if (v7)
  {
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v10 = [v8 popViewControllerAnimated:1];
  }
}

- (void)scheduleRuleEditorModuleController:(id)a3 didRequestRuleRemoval:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v24 = 138412802;
    v25 = self;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ User requested to remove schedule rule [%@]", &v24, 0x20u);
  }

  v9 = [(HUScheduleRuleEditorViewController *)self _editorItemModule];
  v10 = [v9 existingScheduleRule];
  v11 = HFLogForCategory();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v24 = 138412802;
      v25 = self;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Removing schedule rule [%@]", &v24, 0x20u);
    }

    v12 = [v9 scheduleBuilder];
    v14 = MEMORY[0x277CBEB58];
    v15 = [v12 rules];
    v16 = [v14 setWithSet:v15];

    [v16 removeObject:v10];
    [v12 setRules:v16];
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [(HUScheduleRuleEditorViewController *)self delegate];
      v24 = 138413058;
      v25 = self;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule builder [%@]", &v24, 0x2Au);
    }

    v20 = [(HUScheduleRuleEditorViewController *)self delegate];
    [v20 didUpdateScheduleBuilder:self scheduleBuilder:v12];

    v21 = [(HUScheduleRuleEditorViewController *)self navigationController];
    v22 = [v21 popViewControllerAnimated:1];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v23 = NSStringFromSelector(a2);
    v24 = 138412546;
    v25 = self;
    v26 = 2112;
    v27 = v23;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@:%@ Invalid request. Requesting to remove schedule rule with no existing rule.", &v24, 0x16u);
  }
}

- (void)_saveChanges
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = [(HUScheduleRuleEditorViewController *)self _editorItemModule];
  v5 = [v4 existingScheduleRule];
  v6 = [v4 editedScheduleRule];
  if (v6)
  {
    v7 = v6;
    if ([v6 isWeekDayRule])
    {
      v8 = [v4 editedStartTime];
      if (v8)
      {
        v9 = [v4 editedStartTime];
      }

      else
      {
        v11 = [v7 weekDayRule];
        v9 = [v11 startTime];
      }

      v12 = [v4 editedEndTime];
      if (v12)
      {
        v13 = [v4 editedEndTime];
      }

      else
      {
        v14 = [v7 weekDayRule];
        v13 = [v14 endTime];
      }

      if (![(HUScheduleRuleEditorViewController *)self _validateStartTimeBeforeEndTime:v9 endTime:v13])
      {

        v10 = v7;
LABEL_32:

        goto LABEL_33;
      }

      aSelector = a2;
      v15 = objc_alloc(MEMORY[0x277CD1F20]);
      v16 = [v7 weekDayRule];
      v17 = [v15 initWithStartTime:v9 endTime:v13 daysOfTheWeek:{objc_msgSend(v16, "daysOfTheWeek")}];

      v18 = HFLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        v48 = self;
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
        v48 = self;
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

    v22 = [v4 scheduleBuilder];
    v23 = v22;
    if (v5 && v10)
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        *buf = 138413058;
        v48 = self;
        v49 = 2112;
        v50 = v25;
        v51 = 2112;
        v52 = v5;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@ Replacing existing schedule rule [%@] with edited schedule rule [%@]", buf, 0x2Au);
      }

      v26 = MEMORY[0x277CBEB58];
      v27 = [v23 rules];
      v28 = [v26 setWithSet:v27];

      [v28 removeObject:v5];
      [v28 addObject:v10];
      [v23 setRules:v28];
    }

    else
    {
      v29 = [v22 rules];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __50__HUScheduleRuleEditorViewController__saveChanges__block_invoke;
      v45[3] = &unk_277DBC928;
      v30 = v10;
      v46 = v30;
      v31 = [v29 na_firstObjectPassingTest:v45];

      v32 = HFLogForCategory();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          v34 = NSStringFromSelector(a2);
          *buf = 138413058;
          v48 = self;
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
        aSelectora = v5;
        if (v33)
        {
          v35 = NSStringFromSelector(a2);
          *buf = 138412802;
          v48 = self;
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
        v5 = aSelectora;
      }

      v28 = v46;
    }

    v39 = HFLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = NSStringFromSelector(a2);
      v41 = [(HUScheduleRuleEditorViewController *)self delegate];
      *buf = 138413058;
      v48 = self;
      v49 = 2112;
      v50 = v40;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = v23;
      _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule builder [%@]", buf, 0x2Au);
    }

    v42 = [(HUScheduleRuleEditorViewController *)self delegate];
    [v42 didUpdateScheduleBuilder:self scheduleBuilder:v23];

    goto LABEL_32;
  }

LABEL_33:
}

- (BOOL)_validateStartTimeBeforeEndTime:(id)a3 endTime:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v10 = [v9 dateFromComponents:v7];
  v11 = [v9 dateFromComponents:v8];
  v12 = [v10 compare:v11];

  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v17 = 138413058;
      v18 = self;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "%@:%@ Invalid schedule rule. Start time [%@] is not before end time [%@].", &v17, 0x2Au);
    }

    [(HUScheduleRuleEditorViewController *)self _presentAlertWithError:102];
  }

  return v12 >> 63;
}

- (void)_presentAlertWithError:(int64_t)a3
{
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:a3];
  [v5 handleError:v4 operationType:*MEMORY[0x277D13C68] options:0 retryBlock:0 cancelBlock:0];
}

- (id)_editorItemModule
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 itemModules];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_98];

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