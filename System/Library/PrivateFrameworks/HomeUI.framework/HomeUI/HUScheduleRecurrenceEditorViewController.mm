@interface HUScheduleRecurrenceEditorViewController
- (HUScheduleRecurrenceEditorViewController)initWithRecurrences:(id)recurrences delegate:(id)delegate;
- (HUScheduleRecurrenceEditorViewControllerDelegate)delegate;
- (id)_editorItemModule;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)_saveChanges;
- (void)doneButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HUScheduleRecurrenceEditorViewController

- (HUScheduleRecurrenceEditorViewController)initWithRecurrences:(id)recurrences delegate:(id)delegate
{
  recurrencesCopy = recurrences;
  delegateCopy = delegate;
  if (!recurrencesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleRecurrenceEditorViewController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"recurrences"}];
  }

  v9 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HUScheduleRecurrenceEditorViewController_initWithRecurrences_delegate___block_invoke;
  v16[3] = &unk_277DB9F78;
  v10 = recurrencesCopy;
  v17 = v10;
  [v9 setItemModuleCreator:v16];
  v15.receiver = self;
  v15.super_class = HUScheduleRecurrenceEditorViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v9 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v12;
}

id __73__HUScheduleRecurrenceEditorViewController_initWithRecurrences_delegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUScheduleRecurrenceEditorItemModule alloc] initWithItemUpdater:v4 recurrences:*(a1 + 32)];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HUScheduleRecurrenceEditorViewController;
  [(HUItemTableViewController *)&v8 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUScheduleRuleEditor_Repeat", @"HUScheduleRuleEditor_Repeat", 1);
  [(HUScheduleRecurrenceEditorViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  navigationItem = [(HUScheduleRecurrenceEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  navigationItem2 = [(HUScheduleRecurrenceEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.Schedule.Recurrence.DoneButton"];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v4 = [(HUItemModuleController *)[HUScheduleRecurrenceEditorItemModuleController alloc] initWithModule:moduleCopy];

  return v4;
}

- (void)doneButtonPressed:(id)pressed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Done button pressed", &v9, 0x16u);
  }

  [(HUScheduleRecurrenceEditorViewController *)self _saveChanges];
  navigationController = [(HUScheduleRecurrenceEditorViewController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)_saveChanges
{
  v18 = *MEMORY[0x277D85DE8];
  _editorItemModule = [(HUScheduleRecurrenceEditorViewController *)self _editorItemModule];
  editedRecurrences = [_editorItemModule editedRecurrences];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    delegate = [(HUScheduleRecurrenceEditorViewController *)self delegate];
    v10 = 138413058;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = delegate;
    v16 = 2112;
    v17 = editedRecurrences;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated recurrences [%@]", &v10, 0x2Au);
  }

  delegate2 = [(HUScheduleRecurrenceEditorViewController *)self delegate];
  [delegate2 didUpdateRecurrences:self recurrences:editedRecurrences];
}

- (id)_editorItemModule
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  itemModules = [itemManager itemModules];
  v4 = [itemModules na_firstObjectPassingTest:&__block_literal_global_267];

  return v4;
}

uint64_t __61__HUScheduleRecurrenceEditorViewController__editorItemModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HUScheduleRecurrenceEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end