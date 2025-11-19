@interface HUTriggerActionEditorViewController
+ (id)createTriggerActionEditorViewControllerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 andTriggerActionBuilderEditorDelegate:(id)a5;
- (HFTriggerBuilder)triggerBuilder;
- (HUTriggerActionEditorContentViewController)actionEditorContentViewController;
- (HUTriggerActionEditorViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4;
- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5;
- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5;
- (HUTriggerEditorDelegate)delegate;
- (void)_informUserShortcutsAreNotSupportedInThisHome;
- (void)_showShortcutsEditor;
- (void)_showShortcutsEditorIfPossible;
- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5;
- (void)setDelegate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUTriggerActionEditorViewController

+ (id)createTriggerActionEditorViewControllerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 andTriggerActionBuilderEditorDelegate:(id)a5
{
  v7 = MEMORY[0x277D146E8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDispatcher];
  [v11 setOverrideHome:v10];

  v12 = MEMORY[0x277D14940];
  v13 = objc_opt_new();
  v14 = [v12 createPlaceholderTriggerForHome:v10 withTriggerActionSetBuilder:v9 context:v13];

  v15 = [[HUForwardingTriggerActionBuilderDelegate alloc] initWithTriggerActionBuilderEditorDelegate:v8];
  v16 = [[HUTriggerActionFlow alloc] initWithFlowState:4];
  v17 = [[HUTriggerActionEditorViewController alloc] initWithTriggerBuilder:v14 flow:v16 delegate:0];
  [(HUTriggerActionEditorViewController *)v17 setForwardingTriggerActionBuilderDelegate:v15];
  v18 = [(HUTriggerActionEditorViewController *)v17 forwardingTriggerActionBuilderDelegate];
  if ([v18 conformsToProtocol:&unk_2824F8AF0])
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  [(HUTriggerActionEditorViewController *)v17 setDelegate:v20];

  return v17;
}

- (HUTriggerActionEditorViewController)initWithInstructionsItem:(id)a3 contentViewController:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTriggerBuilder_mode_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUTriggerActionEditorViewController.m" lineNumber:81 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerActionEditorViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[HUTriggerActionFlow alloc] initWithEditorMode:a4];
  v11 = [(HUTriggerActionEditorViewController *)self initWithTriggerBuilder:v9 flow:v10 delegate:v8];

  return v11;
}

- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HUTriggerActionEditorContentViewController alloc];
  v12 = [(HUTriggerActionEditorViewController *)self navigationItem];
  v13 = [(HUTriggerActionEditorContentViewController *)v11 initWithTriggerBuilder:v8 flow:v9 effectiveNavigationItem:v12 delegate:v10];

  v14 = 1;
  [(HUTriggerActionEditorViewController *)self setModalInPresentation:1];
  objc_opt_class();
  v15 = v8;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v17 locationInterface];
    v14 = [v18 isCustomLocationTrigger] ^ 1;
  }

  v19 = -[HUTriggerActionEditorItemManager initWithDelegate:showShortcutItem:]([HUTriggerActionEditorItemManager alloc], "initWithDelegate:showShortcutItem:", self, ([v9 isStandalone] ^ 1) & v14);
  [(HUServiceGridViewController *)v13 setContentMargins:1];
  +[HUTriggerUtilities preloadShortcutHomeManager];
  v22.receiver = self;
  v22.super_class = HUTriggerActionEditorViewController;
  v20 = [(HUInstructionsTableViewController *)&v22 initWithItemManager:v19 instructionsItem:0 contentViewController:v13];

  return v20;
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = HUTriggerActionEditorViewController;
  [(HUInstructionsTableViewController *)&v15 viewDidLoad];
  v3 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  v4 = [v3 context];
  v5 = [v4 triggerContextAwareTitle];
  if (v5)
  {
    [(HUTriggerActionEditorViewController *)self setTitle:v5];
  }

  else
  {
    v6 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
    v7 = [v6 naturalLanguageNameOfType:2];
    [(HUTriggerActionEditorViewController *)self setTitle:v7];
  }

  v8 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  v9 = [v8 context];
  v10 = [v9 actionEditorInstructionsDescription];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorInstructionsDescription", @"HUTriggerActionEditorInstructionsDescription", 1);
  }

  v13 = v12;

  v14 = [(HUTriggerActionEditorViewController *)self navigationItem];
  [v14 setPrompt:v13];
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11.receiver = self;
  v11.super_class = HUTriggerActionEditorViewController;
  [(HUInstructionsTableViewController *)&v11 updateCell:v10 forItem:a4 indexPath:a5 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 removeMargins];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  objc_opt_class();
  v11 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v13 addShortcutItem];

  if (v10 == v14)
  {
    [v7 deselectRowAtIndexPath:v8 animated:1];
    [(HUTriggerActionEditorViewController *)self _showShortcutsEditorIfPossible];
  }

  else if ([+[HUTriggerActionEditorViewController superclass](HUTriggerActionEditorViewController "superclass")])
  {
    v15.receiver = self;
    v15.super_class = HUTriggerActionEditorViewController;
    [(HUItemTableViewController *)&v15 tableView:v7 didSelectRowAtIndexPath:v8];
  }
}

- (void)_showShortcutsEditorIfPossible
{
  v3 = MEMORY[0x277CD1DF8];
  v4 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  v5 = [v4 home];
  LODWORD(v3) = [v3 isSupportedForHome:v5];

  if (v3)
  {

    [(HUTriggerActionEditorViewController *)self _showShortcutsEditor];
  }

  else
  {

    [(HUTriggerActionEditorViewController *)self _informUserShortcutsAreNotSupportedInThisHome];
  }
}

- (void)_informUserShortcutsAreNotSupportedInThisHome
{
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUAlertSoftwareUpdateRequired", @"HUAlertSoftwareUpdateRequired", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUTriggerUnsupportedAutomationOnHomeHub", @"HUTriggerUnsupportedAutomationOnHomeHub", 1);
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v9 addAction:v8];

  [(HUTriggerActionEditorViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_showShortcutsEditor
{
  v3 = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  v4 = [v3 triggerBuilderFutureWithLatestUIChanges];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke;
  v9[3] = &unk_277DB94D0;
  objc_copyWeak(&v10, &location);
  v5 = [v4 addFailureBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke_3;
  v7[3] = &unk_277DB99B8;
  objc_copyWeak(&v8, &location);
  v6 = [v4 addSuccessBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke_2;
  v6[3] = &unk_277DB8488;
  v6[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];
}

void __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained triggerBuilder];
  v2 = [v1 triggerActionSets];
  [v2 defaultActionsForShortcut];

  v3 = objc_alloc(MEMORY[0x277D7D778]);
  v4 = [WeakRetained triggerBuilder];
  v5 = [v4 triggerActionSets];
  v6 = [WeakRetained triggerBuilder];
  v7 = [v6 home];
  v8 = [v3 initWithHomeWorkflow:0 actionSetBuilder:v5 home:v7];

  [v8 setDelegate:WeakRetained];
  v9 = [WeakRetained navigationController];
  [v9 pushViewController:v8 animated:1];
}

- (HUTriggerActionEditorContentViewController)actionEditorContentViewController
{
  objc_opt_class();
  v3 = [(HUInstructionsTableViewController *)self contentViewController];
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

- (HFTriggerBuilder)triggerBuilder
{
  v2 = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  v3 = [v2 triggerBuilder];

  return v3;
}

- (HUTriggerEditorDelegate)delegate
{
  v2 = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  [v5 setDelegate:v4];
}

- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5
{
  v6 = a4;
  v7 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  v8 = [v7 triggerActionSets];
  [v8 setHomeWorkflow:v6];

  v9 = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  [v9 goToSummaryScreen];
}

@end