@interface HUTriggerActionEditorViewController
+ (id)createTriggerActionEditorViewControllerForHome:(id)home withTriggerActionSetBuilder:(id)builder andTriggerActionBuilderEditorDelegate:(id)delegate;
- (HFTriggerBuilder)triggerBuilder;
- (HUTriggerActionEditorContentViewController)actionEditorContentViewController;
- (HUTriggerActionEditorViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller;
- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate;
- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate;
- (HUTriggerEditorDelegate)delegate;
- (void)_informUserShortcutsAreNotSupportedInThisHome;
- (void)_showShortcutsEditor;
- (void)_showShortcutsEditorIfPossible;
- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUTriggerActionEditorViewController

+ (id)createTriggerActionEditorViewControllerForHome:(id)home withTriggerActionSetBuilder:(id)builder andTriggerActionBuilderEditorDelegate:(id)delegate
{
  v7 = MEMORY[0x277D146E8];
  delegateCopy = delegate;
  builderCopy = builder;
  homeCopy = home;
  sharedDispatcher = [v7 sharedDispatcher];
  [sharedDispatcher setOverrideHome:homeCopy];

  v12 = MEMORY[0x277D14940];
  v13 = objc_opt_new();
  v14 = [v12 createPlaceholderTriggerForHome:homeCopy withTriggerActionSetBuilder:builderCopy context:v13];

  v15 = [[HUForwardingTriggerActionBuilderDelegate alloc] initWithTriggerActionBuilderEditorDelegate:delegateCopy];
  v16 = [[HUTriggerActionFlow alloc] initWithFlowState:4];
  v17 = [[HUTriggerActionEditorViewController alloc] initWithTriggerBuilder:v14 flow:v16 delegate:0];
  [(HUTriggerActionEditorViewController *)v17 setForwardingTriggerActionBuilderDelegate:v15];
  forwardingTriggerActionBuilderDelegate = [(HUTriggerActionEditorViewController *)v17 forwardingTriggerActionBuilderDelegate];
  if ([forwardingTriggerActionBuilderDelegate conformsToProtocol:&unk_2824F8AF0])
  {
    v19 = forwardingTriggerActionBuilderDelegate;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  [(HUTriggerActionEditorViewController *)v17 setDelegate:v20];

  return v17;
}

- (HUTriggerActionEditorViewController)initWithInstructionsItem:(id)item contentViewController:(id)controller
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithTriggerBuilder_mode_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerActionEditorViewController.m" lineNumber:81 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerActionEditorViewController initWithInstructionsItem:contentViewController:]", v7}];

  return 0;
}

- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode delegate:(id)delegate
{
  delegateCopy = delegate;
  builderCopy = builder;
  v10 = [[HUTriggerActionFlow alloc] initWithEditorMode:mode];
  v11 = [(HUTriggerActionEditorViewController *)self initWithTriggerBuilder:builderCopy flow:v10 delegate:delegateCopy];

  return v11;
}

- (HUTriggerActionEditorViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate
{
  builderCopy = builder;
  flowCopy = flow;
  delegateCopy = delegate;
  v11 = [HUTriggerActionEditorContentViewController alloc];
  navigationItem = [(HUTriggerActionEditorViewController *)self navigationItem];
  v13 = [(HUTriggerActionEditorContentViewController *)v11 initWithTriggerBuilder:builderCopy flow:flowCopy effectiveNavigationItem:navigationItem delegate:delegateCopy];

  v14 = 1;
  [(HUTriggerActionEditorViewController *)self setModalInPresentation:1];
  objc_opt_class();
  v15 = builderCopy;
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
    locationInterface = [v17 locationInterface];
    v14 = [locationInterface isCustomLocationTrigger] ^ 1;
  }

  v19 = -[HUTriggerActionEditorItemManager initWithDelegate:showShortcutItem:]([HUTriggerActionEditorItemManager alloc], "initWithDelegate:showShortcutItem:", self, ([flowCopy isStandalone] ^ 1) & v14);
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
  triggerBuilder = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  context = [triggerBuilder context];
  triggerContextAwareTitle = [context triggerContextAwareTitle];
  if (triggerContextAwareTitle)
  {
    [(HUTriggerActionEditorViewController *)self setTitle:triggerContextAwareTitle];
  }

  else
  {
    triggerBuilder2 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
    v7 = [triggerBuilder2 naturalLanguageNameOfType:2];
    [(HUTriggerActionEditorViewController *)self setTitle:v7];
  }

  triggerBuilder3 = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  context2 = [triggerBuilder3 context];
  actionEditorInstructionsDescription = [context2 actionEditorInstructionsDescription];
  v11 = actionEditorInstructionsDescription;
  if (actionEditorInstructionsDescription)
  {
    v12 = actionEditorInstructionsDescription;
  }

  else
  {
    v12 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorInstructionsDescription", @"HUTriggerActionEditorInstructionsDescription", 1);
  }

  v13 = v12;

  navigationItem = [(HUTriggerActionEditorViewController *)self navigationItem];
  [navigationItem setPrompt:v13];
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = HUTriggerActionEditorViewController;
  [(HUInstructionsTableViewController *)&v11 updateCell:cellCopy forItem:item indexPath:path animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy removeMargins];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v12 = itemManager2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  addShortcutItem = [v13 addShortcutItem];

  if (v10 == addShortcutItem)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(HUTriggerActionEditorViewController *)self _showShortcutsEditorIfPossible];
  }

  else if ([+[HUTriggerActionEditorViewController superclass](HUTriggerActionEditorViewController "superclass")])
  {
    v15.receiver = self;
    v15.super_class = HUTriggerActionEditorViewController;
    [(HUItemTableViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)_showShortcutsEditorIfPossible
{
  v3 = MEMORY[0x277CD1DF8];
  triggerBuilder = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  home = [triggerBuilder home];
  LODWORD(v3) = [v3 isSupportedForHome:home];

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
  actionEditorContentViewController = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  triggerBuilderFutureWithLatestUIChanges = [actionEditorContentViewController triggerBuilderFutureWithLatestUIChanges];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke;
  v9[3] = &unk_277DB94D0;
  objc_copyWeak(&v10, &location);
  v5 = [triggerBuilderFutureWithLatestUIChanges addFailureBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUTriggerActionEditorViewController__showShortcutsEditor__block_invoke_3;
  v7[3] = &unk_277DB99B8;
  objc_copyWeak(&v8, &location);
  v6 = [triggerBuilderFutureWithLatestUIChanges addSuccessBlock:v7];
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
  contentViewController = [(HUInstructionsTableViewController *)self contentViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = contentViewController;
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
  actionEditorContentViewController = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  triggerBuilder = [actionEditorContentViewController triggerBuilder];

  return triggerBuilder;
}

- (HUTriggerEditorDelegate)delegate
{
  actionEditorContentViewController = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  delegate = [actionEditorContentViewController delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  actionEditorContentViewController = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  [actionEditorContentViewController setDelegate:delegateCopy];
}

- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory
{
  workflowCopy = workflow;
  triggerBuilder = [(HUTriggerActionEditorViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  [triggerActionSets setHomeWorkflow:workflowCopy];

  actionEditorContentViewController = [(HUTriggerActionEditorViewController *)self actionEditorContentViewController];
  [actionEditorContentViewController goToSummaryScreen];
}

@end