@interface HUScheduleDateEditorViewController
- (HUScheduleDateEditorViewController)initWithDate:(id)date editorContext:(unint64_t)context delegate:(id)delegate;
- (HUScheduleDateEditorViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_editorItemModule;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)_saveChanges;
- (void)doneButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HUScheduleDateEditorViewController

- (HUScheduleDateEditorViewController)initWithDate:(id)date editorContext:(unint64_t)context delegate:(id)delegate
{
  dateCopy = date;
  delegateCopy = delegate;
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUScheduleDateEditorViewController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v11 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HUScheduleDateEditorViewController_initWithDate_editorContext_delegate___block_invoke;
  v18[3] = &unk_277DBA558;
  v12 = dateCopy;
  v19 = v12;
  contextCopy = context;
  [v11 setItemModuleCreator:v18];
  v17.receiver = self;
  v17.super_class = HUScheduleDateEditorViewController;
  v13 = [(HUItemTableViewController *)&v17 initWithItemManager:v11 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    v13->_editorContext = context;
    objc_storeWeak(&v13->_delegate, delegateCopy);
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
  navigationItem = [(HUScheduleDateEditorViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  navigationItem2 = [(HUScheduleDateEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.Schedule.Editor.DoneButton"];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v4 = [(HUItemModuleController *)[HUScheduleDateEditorItemModuleController alloc] initWithModule:moduleCopy];

  return v4;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  if ([path row] == 2)
  {
    v6 = 380.0;
  }

  else
  {
    [viewCopy rowHeight];
    v6 = v7;
  }

  return v6;
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

  [(HUScheduleDateEditorViewController *)self _saveChanges];
  navigationController = [(HUScheduleDateEditorViewController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)_saveChanges
{
  v19 = *MEMORY[0x277D85DE8];
  _editorItemModule = [(HUScheduleDateEditorViewController *)self _editorItemModule];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    delegate = [(HUScheduleDateEditorViewController *)self delegate];
    editedDate = [_editorItemModule editedDate];
    v11 = 138413058;
    selfCopy = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = delegate;
    v17 = 2112;
    v18 = editedDate;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Notifying delegate [%@] of updated schedule rule date [%@]", &v11, 0x2Au);
  }

  editedDate2 = [_editorItemModule editedDate];
  delegate2 = [(HUScheduleDateEditorViewController *)self delegate];
  [delegate2 didUpdateDate:self date:editedDate2 editorContext:{objc_msgSend(_editorItemModule, "editorContext")}];
}

- (id)_editorItemModule
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  itemModules = [itemManager itemModules];
  v4 = [itemModules na_firstObjectPassingTest:&__block_literal_global_55];

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