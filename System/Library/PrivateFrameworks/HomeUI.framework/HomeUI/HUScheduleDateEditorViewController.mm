@interface HUScheduleDateEditorViewController
- (HUScheduleDateEditorViewController)initWithDate:(id)a3 editorContext:(unint64_t)a4 delegate:(id)a5;
- (HUScheduleDateEditorViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_editorItemModule;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)_saveChanges;
- (void)doneButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUScheduleDateEditorViewController

- (HUScheduleDateEditorViewController)initWithDate:(id)a3 editorContext:(unint64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HUScheduleDateEditorViewController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v11 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HUScheduleDateEditorViewController_initWithDate_editorContext_delegate___block_invoke;
  v18[3] = &unk_277DBA558;
  v12 = v9;
  v19 = v12;
  v20 = a4;
  [v11 setItemModuleCreator:v18];
  v17.receiver = self;
  v17.super_class = HUScheduleDateEditorViewController;
  v13 = [(HUItemTableViewController *)&v17 initWithItemManager:v11 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    v13->_editorContext = a4;
    objc_storeWeak(&v13->_delegate, v10);
  }

  return v14;
}

id __74__HUScheduleDateEditorViewController_initWithDate_editorContext_delegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUScheduleDateEditorItemModule alloc] initWithItemUpdater:v4 date:*(a1 + 32) editorContext:*(a1 + 40)];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HUScheduleDateEditorViewController;
  [(HUItemTableViewController *)&v9 viewDidLoad];
  if ([(HUScheduleDateEditorViewController *)self editorContext])
  {
    v3 = @"HUScheduleRuleEditor_EndTime_Title";
  }

  else
  {
    v3 = @"HUScheduleRuleEditor_StartTime_Title";
  }

  v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);
  [(HUScheduleDateEditorViewController *)self setTitle:v4];
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonPressed_];
  v6 = [(HUScheduleDateEditorViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(HUScheduleDateEditorViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setAccessibilityIdentifier:@"Home.Schedule.Editor.DoneButton"];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v3);
  }

  v4 = [(HUItemModuleController *)[HUScheduleDateEditorItemModuleController alloc] initWithModule:v3];

  return v4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a3;
  if ([a4 row] == 2)
  {
    v6 = 380.0;
  }

  else
  {
    [v5 rowHeight];
    v6 = v7;
  }

  return v6;
}

- (void)doneButtonPressed:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Done button pressed", &v9, 0x16u);
  }

  [(HUScheduleDateEditorViewController *)self _saveChanges];
  v7 = [(HUScheduleDateEditorViewController *)self navigationController];
  v8 = [v7 popViewControllerAnimated:1];
}

- (void)_saveChanges
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(HUScheduleDateEditorViewController *)self _editorItemModule];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(HUScheduleDateEditorViewController *)self delegate];
    v8 = [v4 editedDate];
    v11 = 138413058;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule rule date [%@]", &v11, 0x2Au);
  }

  v9 = [v4 editedDate];
  v10 = [(HUScheduleDateEditorViewController *)self delegate];
  [v10 didUpdateDate:self date:v9 editorContext:{objc_msgSend(v4, "editorContext")}];
}

- (id)_editorItemModule
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 itemModules];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_55];

  return v4;
}

uint64_t __55__HUScheduleDateEditorViewController__editorItemModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (HUScheduleDateEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end