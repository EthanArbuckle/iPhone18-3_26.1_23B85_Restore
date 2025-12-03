@interface HUTriggerSummaryViewController
+ (id)createTriggerSummaryViewControllerForHome:(id)home withTriggerActionSetBuilder:(id)builder andTriggerActionBuilderEditorDelegate:(id)delegate;
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)shouldHideSeparatorsForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUTriggerEditorDelegate)delegate;
- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate;
- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode isPresentedModally:(BOOL)modally delegate:(id)delegate;
- (NSSet)prioritizedAccessories;
- (NSString)savedName;
- (id)_commitTriggerBuilder;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)childViewControllersToPreload;
- (id)commitChanges;
- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)index;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)index;
- (id)defaultTextForTextField:(id)field item:(id)item;
- (id)itemTableHeaderMessage;
- (id)placeholderTextForTextField:(id)field item:(id)item;
- (unint64_t)automaticDisablingReasonsForItem:(id)item;
- (void)_addAction:(id)action;
- (void)_cancel:(id)_cancel;
- (void)_deleteTrigger:(id)trigger indexPath:(id)path;
- (void)_removeActionsInServiceActionItem:(id)item;
- (void)_sendNameAssignedEvent:(id)event error:(id)error;
- (void)_setTriggerEnabled:(BOOL)enabled;
- (void)_showEditorForTriggerBuilderItem:(id)item;
- (void)_showShortcutEditorForTriggerBuilderItem:(id)item;
- (void)_testTrigger;
- (void)_updateDurationModuleDynamicFooterView;
- (void)_updateTableHeaderConfiguration;
- (void)_updateTriggerBuilderName;
- (void)actionSetsModuleController:(id)controller didUpdateTriggerBuilder:(id)builder;
- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)durationModuleController:(id)controller requestsScrollToItem:(id)item;
- (void)eventsModuleController:(id)controller pushViewController:(id)viewController;
- (void)eventsModuleControllerDidUpdateTriggerBuilder:(id)builder;
- (void)home:(id)home didRemoveTrigger:(id)trigger;
- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory;
- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path;
- (void)itemManagerDidUpdate:(id)update;
- (void)mediaModuleController:(id)controller pushViewController:(id)viewController;
- (void)serviceGridViewController:(id)controller didTapItem:(id)item;
- (void)setPrioritizedAccessories:(id)accessories;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidFinishEditing:(id)editing;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUTriggerSummaryViewController

+ (id)createTriggerSummaryViewControllerForHome:(id)home withTriggerActionSetBuilder:(id)builder andTriggerActionBuilderEditorDelegate:(id)delegate
{
  v7 = MEMORY[0x277D146E8];
  delegateCopy = delegate;
  builderCopy = builder;
  homeCopy = home;
  sharedDispatcher = [v7 sharedDispatcher];
  [sharedDispatcher setOverrideHome:homeCopy];

  v12 = objc_alloc(MEMORY[0x277D14C40]);
  allActionSets = [builderCopy allActionSets];

  v14 = [v12 initWithActionSets:allActionSets inHome:homeCopy filterEmptyActionSets:1];
  v15 = MEMORY[0x277D14940];
  v16 = objc_opt_new();
  v17 = [v15 createPlaceholderTriggerForHome:homeCopy withTriggerActionSetBuilder:v14 context:v16];

  v18 = [[HUForwardingTriggerActionBuilderDelegate alloc] initWithTriggerActionBuilderEditorDelegate:delegateCopy];
  v19 = [[HUTriggerActionFlow alloc] initWithFlowState:7];
  v20 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v17 flow:v19 delegate:0];
  [(HUTriggerSummaryViewController *)v20 setForwardingTriggerActionBuilderDelegate:v18];
  forwardingTriggerActionBuilderDelegate = [(HUTriggerSummaryViewController *)v20 forwardingTriggerActionBuilderDelegate];
  if ([forwardingTriggerActionBuilderDelegate conformsToProtocol:&unk_2824F8AF0])
  {
    v22 = forwardingTriggerActionBuilderDelegate;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [(HUTriggerSummaryViewController *)v20 setDelegate:v23];

  return v20;
}

- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)builder mode:(unint64_t)mode isPresentedModally:(BOOL)modally delegate:(id)delegate
{
  modallyCopy = modally;
  delegateCopy = delegate;
  builderCopy = builder;
  v11 = [HUTriggerActionFlow alloc];
  if (modallyCopy)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(HUTriggerActionFlow *)v11 initWithFlowState:v12];
  v14 = [(HUTriggerSummaryViewController *)self initWithTriggerBuilder:builderCopy flow:v13 delegate:delegateCopy];

  return v14;
}

- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)builder flow:(id)flow delegate:(id)delegate
{
  builderCopy = builder;
  flowCopy = flow;
  delegateCopy = delegate;
  if ([MEMORY[0x277D14670] isShortcuts])
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [builderCopy home];
    [mEMORY[0x277D146E8] setOverrideHome:home];
  }

  v14 = [[HUTriggerSummaryItemManager alloc] initWithTriggerBuilder:builderCopy flow:flowCopy delegate:self];
  v33.receiver = self;
  v33.super_class = HUTriggerSummaryViewController;
  v15 = [(HUItemTableViewController *)&v33 initWithItemManager:v14 tableViewStyle:1];
  v16 = v15;
  if (v15)
  {
    [(HUTriggerSummaryViewController *)v15 setTriggerBuilder:builderCopy];
    [(HUTriggerSummaryViewController *)v16 setDelegate:delegateCopy];
    [(HUTriggerSummaryViewController *)v16 setFlow:flowCopy];
    name = [builderCopy name];

    if (!name)
    {
      v18 = [builderCopy naturalLanguageNameOfType:0];
      [builderCopy setName:v18];

      name2 = [builderCopy name];

      if (!name2)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v16 file:@"HUTriggerSummaryViewController.m" lineNumber:117 description:{@"Could not generate name for triggerBuilder: %@", builderCopy}];
      }
    }

    if ([flowCopy isSingleFlow])
    {
      v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v16 action:sel__cancel_];
      navigationItem = [(HUTriggerSummaryViewController *)v16 navigationItem];
      [navigationItem setLeftBarButtonItem:v20];
    }

    if ([flowCopy isLastState])
    {
      context = [builderCopy context];
      doneButtonTitle = [context doneButtonTitle];

      v24 = objc_alloc(MEMORY[0x277D751E0]);
      v25 = v24;
      if (doneButtonTitle)
      {
        context2 = [builderCopy context];
        doneButtonTitle2 = [context2 doneButtonTitle];
        v28 = [v25 initWithTitle:doneButtonTitle2 style:2 target:v16 action:sel__done_];
      }

      else
      {
        v28 = [v24 initWithBarButtonSystemItem:0 target:v16 action:sel__done_];
      }

      navigationItem2 = [(HUTriggerSummaryViewController *)v16 navigationItem];
      [navigationItem2 setRightBarButtonItem:v28];
    }

    [(HUTriggerSummaryViewController *)v16 setModalInPresentation:1];
    -[HUTriggerSummaryViewController setIsEditingExistingTrigger:](v16, "setIsEditingExistingTrigger:", [flowCopy flowState] == 3);
    +[HUTriggerUtilities preloadShortcutHomeManager];
    mEMORY[0x277D146E8]2 = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8]2 addHomeObserver:v16];
  }

  return v16;
}

- (NSSet)prioritizedAccessories
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  prioritizedAccessories = [itemManager prioritizedAccessories];

  return prioritizedAccessories;
}

- (void)setPrioritizedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager setPrioritizedAccessories:accessoriesCopy];
}

- (NSString)savedName
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  triggerBuilder = [itemManager triggerBuilder];
  name = [triggerBuilder name];

  return name;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v7 viewWillAppear:appear];
  [(HUTriggerSummaryViewController *)self setViewHasAppeared:1];
  itemManager = [(HUItemTableViewController *)self itemManager];
  triggerCurrentDisplayedName = [itemManager triggerCurrentDisplayedName];
  [(HUTriggerSummaryViewController *)self setTitle:triggerCurrentDisplayedName];

  if ([(HUTriggerSummaryViewController *)self detailEditorChangedTrigger])
  {
    [(HUTriggerSummaryViewController *)self setDetailEditorChangedTrigger:0];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    [itemManager2 triggerBuilderDidChange];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  flow = [(HUTriggerSummaryViewController *)self flow];
  flowState = [flow flowState];

  if (flowState == 5)
  {
    triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
    triggerActionSets = [triggerBuilder triggerActionSets];
    [triggerActionSets setHomeWorkflow:0];
  }

  v9.receiver = self;
  v9.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v9 viewWillDisappear:disappearCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = HUTriggerSummaryViewController;
  [(HUTriggerSummaryViewController *)&v6 dismissViewControllerAnimated:animated completion:completion];
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  [mEMORY[0x277D146E8] removeHomeObserver:self];
}

- (id)commitChanges
{
  view = [(HUTriggerSummaryViewController *)self view];
  [view endEditing:1];

  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  [triggerActionSets convertToHomeWorkflowActionSetIfNeeded];

  if ([(HUTriggerSummaryViewController *)self _canCommitTriggerBuilder])
  {
    triggerBuilder2 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    context = [triggerBuilder2 context];
    showTriggerEnableSwitch = [context showTriggerEnableSwitch];

    if ((showTriggerEnableSwitch & 1) == 0)
    {
      triggerBuilder3 = [(HUTriggerSummaryViewController *)self triggerBuilder];
      [triggerBuilder3 setEnabled:1];
    }

    _commitTriggerBuilder = [(HUTriggerSummaryViewController *)self _commitTriggerBuilder];
  }

  else
  {
    delegate = [(HUTriggerSummaryViewController *)self delegate];
    triggerBuilder4 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    [delegate triggerEditor:self didFinishWithTriggerBuilder:triggerBuilder4];

    _commitTriggerBuilder = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return _commitTriggerBuilder;
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUTriggerSummaryViewController *)self delegate];
  [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_showShortcutEditorForTriggerBuilderItem:(id)item
{
  triggerBuilder = [item triggerBuilder];
  v16 = triggerBuilder;
  if (item)
  {
    if (triggerBuilder)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_NilParameter.isa);
    if (v16)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_NoTriggerBuild.isa);
LABEL_3:
  triggerBuilder2 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder2 triggerActionSets];
  homeWorkflow = [triggerActionSets homeWorkflow];

  v9 = objc_alloc(MEMORY[0x277D7D778]);
  triggerBuilder3 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  home = [triggerBuilder3 home];
  v12 = [v9 initWithHomeWorkflow:homeWorkflow actionSetBuilder:0 home:home];

  [v12 setDelegate:self];
  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
  [v13 setModalInPresentation:1];
  [v13 setModalPresentationStyle:2];
  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelShortcutEditor_];
  navigationItem = [v12 navigationItem];
  [navigationItem setLeftBarButtonItem:v14];

  [(HUTriggerSummaryViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_testTrigger
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  allActionBuilders = [triggerActionSets allActionBuilders];

  v9 = [allActionBuilders na_map:&__block_literal_global_40];
  v10 = [MEMORY[0x277D2C900] combineAllFutures:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__HUTriggerSummaryViewController__testTrigger__block_invoke_2;
  v16[3] = &unk_277DB98F8;
  v17 = allActionBuilders;
  v18 = hf_characteristicValueManager;
  v11 = hf_characteristicValueManager;
  v12 = allActionBuilders;
  v13 = [v10 addSuccessBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__HUTriggerSummaryViewController__testTrigger__block_invoke_5;
  v15[3] = &unk_277DB8C00;
  v15[4] = self;
  v14 = [v13 addFailureBlock:v15];
}

void __46__HUTriggerSummaryViewController__testTrigger__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) na_map:&__block_literal_global_292];
  v6 = [v2 na_filter:&__block_literal_global_295];

  if ([v6 count])
  {
    [*(a1 + 40) beginTransactionWithReason:@"HUTriggerSummaryTransactionReasonTestTrigger"];
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v5 = [v3 executeActions:v4];

    [*(a1 + 40) commitTransactionWithReason:@"HUTriggerSummaryTransactionReasonTestTrigger"];
  }
}

void __46__HUTriggerSummaryViewController__testTrigger__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v9 = [v3 sharedHandler];
  v5 = *MEMORY[0x277D13CB8];
  v6 = [*(a1 + 32) triggerBuilder];
  v7 = [v6 displayName];
  v8 = [v4 hf_errorWithOperationType:v5 failedItemName:v7];

  [v9 handleError:v8];
}

- (void)_addAction:(id)action
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  currentFlow = [itemManager currentFlow];
  v11 = +[HUTriggerActionFlow selectFlowForState:](HUTriggerActionFlow, "selectFlowForState:", [currentFlow flowState]);

  v6 = [HUTriggerActionPickerViewController alloc];
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v8 = [(HUTriggerActionPickerViewController *)v6 initWithTriggerBuilder:triggerBuilder flow:v11 delegate:self];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(UIViewController *)self hu_presentPreloadableViewController:v9 animated:1];
}

- (void)_deleteTrigger:(id)trigger indexPath:(id)path
{
  triggerCopy = trigger;
  pathCopy = path;
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  trigger = [triggerBuilder trigger];

  if (trigger)
  {
    triggerBuilder2 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    context = [triggerBuilder2 context];

    deleteConfirmationAlertTitle = [context deleteConfirmationAlertTitle];
    deleteConfirmationAlertMessage = [context deleteConfirmationAlertMessage];
    v14 = [(UITableViewController *)self hu_actionSheetWithTitle:deleteConfirmationAlertTitle message:deleteConfirmationAlertMessage indexPath:pathCopy];

    objc_initWeak(&location, self);
    v15 = MEMORY[0x277D750F8];
    deleteInstructionDescription = [context deleteInstructionDescription];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke;
    v21[3] = &unk_277DB9948;
    objc_copyWeak(&v23, &location);
    v22 = trigger;
    v17 = [v15 actionWithTitle:deleteInstructionDescription style:2 handler:v21];
    [v14 addAction:v17];

    v18 = MEMORY[0x277D750F8];
    v19 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryDeleteTriggerCancelButtonTitle", @"HUTriggerSummaryDeleteTriggerCancelButtonTitle", 1);
    v20 = [v18 actionWithTitle:v19 style:1 handler:&__block_literal_global_314];
    [v14 addAction:v20];

    [(HUTriggerSummaryViewController *)self presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_NoTriggerToDel.isa);
  }
}

void __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained triggerBuilder];
  v4 = [v3 deleteTrigger];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke_2;
  v6[3] = &unk_277DB7158;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v5 = [v4 addCompletionBlock:v6];
}

void __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 triggerEditor:*(a1 + 32) didFinishWithTriggerBuilder:0];

  v3 = [MEMORY[0x277D146E8] sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke_3;
  v5[3] = &unk_277DB9920;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 dispatchHomeObserverMessage:v5 sender:0];
}

void __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) itemManager];
    v4 = [v3 home];
    [v5 home:v4 didRemoveTrigger:*(a1 + 40)];
  }
}

- (void)_setTriggerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  [triggerBuilder setEnabled:enabledCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager triggerBuilderDidChange];
}

- (void)_removeActionsInServiceActionItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  actionBuilders = [itemCopy actionBuilders];
  v6 = [actionBuilders mutableCopy];

  actions = [itemCopy actions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HUTriggerSummaryViewController__removeActionsInServiceActionItem___block_invoke;
  v21[3] = &unk_277DB9990;
  v21[4] = self;
  v8 = [actions na_map:v21];
  [v6 unionSet:v8];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
          triggerActionSets = [triggerBuilder triggerActionSets];
          [triggerActionSets removeAnonymousActionBuilder:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }
}

id __68__HUTriggerSummaryViewController__removeActionsInServiceActionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) triggerBuilder];
  v5 = [v4 triggerActionSets];
  v6 = [v5 anonymousActionSetBuilder];
  v7 = [v6 actions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUTriggerSummaryViewController__removeActionsInServiceActionItem___block_invoke_2;
  v11[3] = &unk_277DB96C8;
  v12 = v3;
  v8 = v3;
  v9 = [v7 na_firstObjectPassingTest:v11];

  return v9;
}

uint64_t __68__HUTriggerSummaryViewController__removeActionsInServiceActionItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 action];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)itemTableHeaderMessage
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager sourceItem];
  latestResults = [sourceItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E40]];

  v6 = HUPriorityMessageDefaultAttributedStringAttributes();
  v7 = [v5 stringWithAttributes:v6];

  return v7;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  enableItem = [itemManager enableItem];
  v8 = [itemCopy isEqual:enableItem];

  if (v8)
  {
    goto LABEL_10;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  testTriggerItem = [itemManager2 testTriggerItem];
  if (testTriggerItem == itemCopy)
  {
LABEL_9:

    goto LABEL_10;
  }

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  createActionButtonItem = [itemManager3 createActionButtonItem];
  v13 = createActionButtonItem;
  if (createActionButtonItem == itemCopy)
  {

    goto LABEL_9;
  }

  itemManager4 = [(HUItemTableViewController *)self itemManager];
  deleteTriggerItem = [itemManager4 deleteTriggerItem];

  if (deleteTriggerItem != itemCopy)
  {
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    durationModule = [itemManager5 durationModule];
    durationSummaryItem = [durationModule durationSummaryItem];

    if (durationSummaryItem != itemCopy)
    {
      itemManager6 = [(HUItemTableViewController *)self itemManager];
      durationModule2 = [itemManager6 durationModule];
      durationPickerItem = [durationModule2 durationPickerItem];

      if (durationPickerItem != itemCopy)
      {
        itemManager7 = [(HUItemTableViewController *)self itemManager];
        [itemManager7 namingRowItem];
      }
    }
  }

LABEL_10:
  v23 = objc_opt_class();

  return v23;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setDelegate:self];
    goto LABEL_11;
  }

  itemManager = [(HUItemTableViewController *)self itemManager];
  namingRowItem = [itemManager namingRowItem];
  v10 = [itemCopy isEqual:namingRowItem];

  if (v10)
  {
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

    [v13 setDelegate:self];
    [v13 setDisabled:0];
    textField = [v13 textField];

    [textField setClearButtonMode:3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    textField = [cellCopy textLabel];
    [textField setNumberOfLines:0];
  }

LABEL_11:
}

- (unint64_t)automaticDisablingReasonsForItem:(id)item
{
  v7.receiver = self;
  v7.super_class = HUTriggerSummaryViewController;
  itemCopy = item;
  v4 = [(HUItemTableViewController *)&v7 automaticDisablingReasonsForItem:itemCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v36.receiver = self;
  v36.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v36 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  unsupportedItemProvider = [itemManager unsupportedItemProvider];
  items = [unsupportedItemProvider items];
  v15 = [items containsObject:itemCopy];

  if (v15)
  {
    latestResults = cellCopy;
    [latestResults setAccessoryType:0];
    hu_exclamationMarkImage = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
    [latestResults setDescriptionIcon:hu_exclamationMarkImage];

    [latestResults setHideDescriptionIcon:0];
    [latestResults setHideIcon:0];
    [latestResults setIconForegroundColorFollowsTintColor:1];
    [latestResults setIconDisplayStyle:3];
    [latestResults setDisabled:1];
LABEL_3:

    goto LABEL_4;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  enableItem = [itemManager2 enableItem];
  v20 = [itemCopy isEqual:enableItem];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_WrongCellClass.isa);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = cellCopy;
      [v21 setDelegate:self];
      latestResults = [itemCopy latestResults];
      v22 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
      [v21 setOn:{objc_msgSend(v22, "integerValue") == 2}];

      goto LABEL_3;
    }
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    deleteTriggerItem = [itemManager3 deleteTriggerItem];
    v25 = [itemCopy isEqual:deleteTriggerItem];

    if (!v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        latestResults = cellCopy;
        [latestResults setAccessoryType:0];
        [latestResults setIconForegroundColorFollowsTintColor:0];
        [latestResults setIconForegroundColor:0];
        [latestResults setIconTintColorFollowsDisabledState:1];
      }

      else
      {
        itemManager4 = [(HUItemTableViewController *)self itemManager];
        namingRowItem = [itemManager4 namingRowItem];

        if (namingRowItem != itemCopy)
        {
          goto LABEL_4;
        }

        latestResults = cellCopy;
        [latestResults setHideIconButton:1];
        textField = [latestResults textField];
        [textField setClearButtonMode:3];

        latestResults2 = [itemCopy latestResults];
        v30 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
        textField2 = [latestResults textField];
        [textField2 setPlaceholder:v30];

        textField3 = [latestResults textField];
        LOBYTE(v30) = [textField3 isFirstResponder];

        if ((v30 & 1) == 0)
        {
          latestResults3 = [itemCopy latestResults];
          v34 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
          textField4 = [latestResults textField];
          [textField4 setText:v34];
        }
      }

      goto LABEL_3;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_WrongCellClass.isa);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setDestructive:1];
    }
  }

LABEL_4:
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemTableViewController *)self itemManager];
  eventsModule = [itemManager eventsModule];
  v7 = [moduleCopy isEqual:eventsModule];

  if (v7)
  {
    v8 = [[HUTriggerEventsModuleController alloc] initWithModule:moduleCopy];
    [(HUTriggerEventsModuleController *)v8 setDelegate:self];
    [(HUTriggerEventsModuleController *)v8 setAllowsEditingEvents:[(HUTriggerSummaryViewController *)self isEditingExistingTrigger]];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = HUTriggerDurationModuleController;
LABEL_5:
    v8 = [[v9 alloc] initWithModule:moduleCopy];
    [(HUTriggerEventsModuleController *)v8 setDelegate:self];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(HUItemModuleController *)[HUTriggerActionSetsModuleController alloc] initWithModule:moduleCopy];
    [(HUTriggerEventsModuleController *)v8 setDelegate:self];
    [(HUTriggerSummaryViewController *)self setActionSetsModuleController:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = HUTriggerMediaModuleController;
      goto LABEL_5;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:moduleCopy delegate:self];
      [(HUTriggerSummaryViewController *)self setConditionEditorModuleController:v8];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_8:

  return v8;
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = HUTriggerSummaryViewController;
  v7 = -[HUItemTableViewController shouldHideSeparatorsForCell:indexPath:](&v9, sel_shouldHideSeparatorsForCell_indexPath_, cell, pathCopy) || -[HUTriggerSummaryViewController shouldHideSeparatorsForSection:](self, "shouldHideSeparatorsForSection:", [pathCopy section]);

  return v7;
}

- (BOOL)shouldHideSeparatorsForSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  if ([itemManager actionSetsSection] == section)
  {
    v6 = 1;
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    if ([itemManager2 serviceActionsSection] == section)
    {
      v6 = 1;
    }

    else
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      v9 = [itemManager3 displayedItemsInSection:section];
      v6 = [v9 count] < 2;
    }
  }

  return v6;
}

- (id)childViewControllersToPreload
{
  actionSetsModuleController = [(HUTriggerSummaryViewController *)self actionSetsModuleController];
  childViewControllersToPreload = [actionSetsModuleController childViewControllersToPreload];

  return childViewControllersToPreload;
}

- (void)itemManagerDidUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:update];
  [(HUTriggerSummaryViewController *)self _updateTableHeaderConfiguration];
}

- (void)itemManager:(id)manager didUpdateResultsForItem:(id)item atIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = HUTriggerSummaryViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v13 itemManager:manager didUpdateResultsForItem:itemCopy atIndexPath:path];
  v9 = [(HUItemTableViewController *)self itemManager:v13.receiver];
  durationModule = [v9 durationModule];
  durationSummaryItem = [durationModule durationSummaryItem];
  v12 = [itemCopy isEqual:durationSummaryItem];

  if (v12)
  {
    [(HUTriggerSummaryViewController *)self _updateDurationModuleDynamicFooterView];
  }
}

- (void)diffableDataItemManager:(id)manager didUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems
{
  v15.receiver = self;
  v15.super_class = HUTriggerSummaryViewController;
  itemsCopy = items;
  [(HUItemTableViewController *)&v15 diffableDataItemManager:manager didUpdateItems:itemsCopy addItems:addItems removeItems:removeItems];
  v11 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  durationModule = [v11 durationModule];
  durationSummaryItem = [durationModule durationSummaryItem];
  v14 = [itemsCopy containsObject:durationSummaryItem];

  if (v14)
  {
    [(HUTriggerSummaryViewController *)self _updateDurationModuleDynamicFooterView];
  }
}

- (void)_updateDurationModuleDynamicFooterView
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v4 = [itemManager sectionIndexForDisplayedSectionIdentifier:@"HUTriggerDurationItemModuleSection"];

  tableView = [(HUTriggerSummaryViewController *)self tableView];
  v11 = [tableView footerViewForSection:v4];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager2 footerTitleForSection:v4];

  objc_opt_class();
  contentConfiguration = [v11 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v9 = contentConfiguration;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setText:v7];
  [v11 setContentConfiguration:v10];
}

- (id)defaultTextForTextField:(id)field item:(id)item
{
  v4 = [(HUItemTableViewController *)self itemManager:field];
  namingRowItem = [v4 namingRowItem];
  latestResults = [namingRowItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  return v7;
}

- (id)placeholderTextForTextField:(id)field item:(id)item
{
  v4 = [(HUItemTableViewController *)self itemManager:field];
  namingRowItem = [v4 namingRowItem];
  latestResults = [namingRowItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F70]];

  return v7;
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  [(HUTriggerSummaryViewController *)self setEditingName:change, field, item];
  editingName = [(HUTriggerSummaryViewController *)self editingName];
  if ([editingName length])
  {
    editingName2 = [(HUTriggerSummaryViewController *)self editingName];
    [(HUTriggerSummaryViewController *)self setTitle:editingName2];
  }

  else
  {
    editingName2 = [(HUItemTableViewController *)self itemManager];
    triggerBuilder = [editingName2 triggerBuilder];
    displayName = [triggerBuilder displayName];
    [(HUTriggerSummaryViewController *)self setTitle:displayName];
  }
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)index
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager itemSectionForSectionIndex:index];

  headerTitle = [v5 headerTitle];

  if (headerTitle)
  {
    headerTitle = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
    headerTitle2 = [v5 headerTitle];
    [headerTitle setText:headerTitle2];

    headerSecondaryText = [v5 headerSecondaryText];
    [headerTitle setSecondaryText:headerSecondaryText];

    [headerTitle directionalLayoutMargins];
    [headerTitle setDirectionalLayoutMargins:?];
  }

  return headerTitle;
}

- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)index
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager footerTitleForSection:index];

  if (v5)
  {
    groupedFooterConfiguration = [MEMORY[0x277D756E0] groupedFooterConfiguration];
    [groupedFooterConfiguration setText:v5];
  }

  else
  {
    groupedFooterConfiguration = 0;
  }

  return groupedFooterConfiguration;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v23.receiver = self;
  v23.super_class = HUTriggerSummaryViewController;
  pathCopy = path;
  v7 = [(HUItemTableViewController *)&v23 tableView:view shouldHighlightRowAtIndexPath:pathCopy];
  v8 = [(HUItemTableViewController *)self itemManager:v23.receiver];
  v9 = [v8 displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    testTriggerItem = [itemManager testTriggerItem];
    if (v9 != testTriggerItem)
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      createActionButtonItem = [itemManager2 createActionButtonItem];
      v15 = createActionButtonItem;
      if (v9 != createActionButtonItem)
      {
        itemManager3 = [(HUItemTableViewController *)self itemManager];
        deleteTriggerItem = [itemManager3 deleteTriggerItem];

        if (v9 != deleteTriggerItem)
        {
          itemManager4 = [(HUItemTableViewController *)self itemManager];
          mediaModule = [itemManager4 mediaModule];
          mediaRowItem = [mediaModule mediaRowItem];
          v21 = v9 == mediaRowItem;

          isEditingExistingTrigger = v21 | v7;
          goto LABEL_10;
        }

LABEL_9:
        isEditingExistingTrigger = 1;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  isEditingExistingTrigger = [(HUTriggerSummaryViewController *)self isEditingExistingTrigger];
LABEL_10:

  return isEditingExistingTrigger & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = HUTriggerSummaryViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v16.receiver, v16.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HUTriggerSummaryViewController *)self isEditingExistingTrigger])
  {
    [(HUTriggerSummaryViewController *)self _showShortcutEditorForTriggerBuilderItem:v9];
  }

  else
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    testTriggerItem = [itemManager2 testTriggerItem];

    if (v9 == testTriggerItem)
    {
      [(HUTriggerSummaryViewController *)self _testTrigger];
    }

    else
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      createActionButtonItem = [itemManager3 createActionButtonItem];

      if (v9 == createActionButtonItem)
      {
        [(HUTriggerSummaryViewController *)self _addAction:0];
      }

      else
      {
        itemManager4 = [(HUItemTableViewController *)self itemManager];
        deleteTriggerItem = [itemManager4 deleteTriggerItem];

        if (v9 == deleteTriggerItem)
        {
          [(HUTriggerSummaryViewController *)self _deleteTrigger:v9 indexPath:pathCopy];
        }
      }
    }
  }
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  v5 = [(HUTriggerSummaryViewController *)self triggerBuilder:editor];
  isShortcutOwned = [v5 isShortcutOwned];

  if (isShortcutOwned)
  {
    view = [(HUTriggerSummaryViewController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];
    [rootViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    actionSetsModuleController = [(HUTriggerSummaryViewController *)self actionSetsModuleController];
    [actionSetsModuleController reloadActions];

    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager triggerBuilderDidChange];

    [(HUTriggerSummaryViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUTriggerSummaryViewController *)self tableView];
  v16 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:v16];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  enableItem = [itemManager2 enableItem];
  v12 = [v9 isEqual:enableItem];

  if (v12)
  {
    [(HUTriggerSummaryViewController *)self _setTriggerEnabled:onCopy];
  }

  v13 = MEMORY[0x277D143D8];
  latestResults = [v9 latestResults];
  v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  [v13 sendSwitchCellToggleEventForItem:v9 isOn:onCopy title:v15 fromSourceViewController:self];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v13, 0x16u);
  }

  if (!interaction)
  {
    mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
    v11 = [mEMORY[0x277D148E8] openURL:lCopy];
  }

  return 0;
}

- (void)actionSetsModuleController:(id)controller didUpdateTriggerBuilder:(id)builder
{
  v4 = [(HUItemTableViewController *)self itemManager:controller];
  [v4 triggerBuilderDidChange];
}

- (void)durationModuleController:(id)controller requestsScrollToItem:(id)item
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager indexPathForItem:itemCopy];

  if (v8)
  {
    tableView = [(HUTriggerSummaryViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v8 atScrollPosition:3 animated:1];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindIn_0.isa);
  }
}

- (void)eventsModuleController:(id)controller pushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(HUTriggerSummaryViewController *)self navigationController];
  v6 = [navigationController hu_pushPreloadableViewController:viewControllerCopy animated:1];
}

- (void)eventsModuleControllerDidUpdateTriggerBuilder:(id)builder
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager triggerBuilderDidChange];
}

- (void)_showEditorForTriggerBuilderItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = triggerBuilder;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  triggerBuilder2 = [itemCopy triggerBuilder];
  if (itemCopy)
  {
    if (triggerBuilder2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    NSLog(&cfstr_NilParameter.isa);
    if (triggerBuilder2)
    {
      goto LABEL_6;
    }
  }

  NSLog(&cfstr_NoTriggerBuild.isa);
LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [HUTimerTriggerEditorViewController alloc];
    delegate = [(HUTriggerSummaryViewController *)self delegate];
    v10 = [(HUTimerTriggerEditorViewController *)v8 initWithTimerTriggerBuilder:triggerBuilder2 mode:1 delegate:delegate];
    goto LABEL_23;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  eventBuilders = [v6 eventBuilders];
  firstObject = [eventBuilders firstObject];
  if (objc_opt_isKindOfClass())
  {
    v13 = firstObject;
  }

  else
  {
    v13 = 0;
  }

  delegate = v13;

  eventBuilders2 = [v6 eventBuilders];
  firstObject2 = [eventBuilders2 firstObject];
  if ([firstObject2 conformsToProtocol:&unk_2825BD780])
  {
    v16 = firstObject2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (delegate)
  {
    v18 = objc_alloc(MEMORY[0x277D14530]);
    v19 = [MEMORY[0x277CBEB98] setWithObject:delegate];
    v20 = [v18 initWithEventBuilders:v19];

    v21 = [HUCharacteristicTriggerEventViewController alloc];
    delegate2 = [(HUTriggerSummaryViewController *)self delegate];
    v23 = [(HUCharacteristicTriggerEventViewController *)v21 initWithCharacteristicEventBuilderItem:v20 triggerBuilder:v6 mode:1 delegate:delegate2];
  }

  else
  {
    if (!v17)
    {
      v10 = 0;
      goto LABEL_22;
    }

    v24 = objc_alloc(MEMORY[0x277D147A0]);
    v25 = [MEMORY[0x277CBEB98] setWithObject:v17];
    v20 = [v24 initWithEventBuilders:v25];

    delegate2 = [[HUEventUIFlow alloc] initWithTriggerBuilder:v6 eventBuilderItem:v20];
    v23 = [[HULocationEventEditorSummaryViewController alloc] initWithFlow:delegate2 stepIdentifier:@"locationEventEditor"];
  }

  v10 = v23;

LABEL_22:
LABEL_23:

  if (v10)
  {
    navigationController = [(HUTriggerSummaryViewController *)self navigationController];
    v27 = [navigationController hu_pushPreloadableViewController:v10 animated:1];

    [(HUTriggerSummaryViewController *)self setDetailEditorChangedTrigger:1];
    goto LABEL_26;
  }

LABEL_25:
  NSLog(&cfstr_CouldNotCreate.isa, itemCopy);
LABEL_26:
}

- (void)mediaModuleController:(id)controller pushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  navigationController = [(HUTriggerSummaryViewController *)self navigationController];
  v6 = [navigationController hu_pushPreloadableViewController:viewControllerCopy animated:1];
}

- (void)serviceGridViewController:(id)controller didTapItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    containingItem = [v8 containingItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      v12 = MEMORY[0x277CBEB98];
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      mediaModule = [itemManager2 mediaModule];
      mediaRowItem = [mediaModule mediaRowItem];
      v16 = [v12 setWithObject:mediaRowItem];
      v17 = [itemManager updateResultsForItems:v16 senderSelector:a2];
    }
  }
}

- (void)textFieldDidFinishEditing:(id)editing
{
  text = [editing text];
  [(HUTriggerSummaryViewController *)self setEditingName:text];

  [(HUTriggerSummaryViewController *)self _updateTriggerBuilderName];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = MEMORY[0x277CBEB98];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  sourceItem = [itemManager2 sourceItem];
  v10 = [v7 setWithObjects:{sourceItem, 0}];
  v11 = [itemManager updateResultsForItems:v10 senderSelector:a2];

  [(HUTriggerSummaryViewController *)self setEditingName:0];
}

- (void)home:(id)home didRemoveTrigger:(id)trigger
{
  triggerCopy = trigger;
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  trigger = [triggerBuilder trigger];
  uniqueIdentifier = [trigger uniqueIdentifier];
  uniqueIdentifier2 = [triggerCopy uniqueIdentifier];

  if (uniqueIdentifier == uniqueIdentifier2)
  {
    delegate = [(HUTriggerSummaryViewController *)self delegate];
    [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
  }
}

- (void)_updateTriggerBuilderName
{
  v4 = MEMORY[0x277D14CE8];
  editingName = [(HUTriggerSummaryViewController *)self editingName];
  v6 = [v4 sanitizeUserEnteredHomeKitName:editingName];
  [(HUTriggerSummaryViewController *)self setEditingName:v6];

  editingName2 = [(HUTriggerSummaryViewController *)self editingName];
  if (editingName2 && (v8 = editingName2, -[HUTriggerSummaryViewController editingName](self, "editingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    editingName3 = [(HUTriggerSummaryViewController *)self editingName];
    v12 = [editingName3 copy];
    itemManager = [(HUItemTableViewController *)self itemManager];
    triggerBuilder = [itemManager triggerBuilder];
    [triggerBuilder setName:v12];

    itemManager2 = [(HUItemTableViewController *)self itemManager];
    triggerBuilder2 = [itemManager2 triggerBuilder];
    [triggerBuilder2 setNameIsConfigured:1];

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    v18 = MEMORY[0x277CBEB98];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    namingRowItem = [itemManager4 namingRowItem];
    v21 = [v18 setWithObject:namingRowItem];
    v22 = [itemManager3 updateResultsForItems:v21 senderSelector:a2];
  }

  else
  {
    itemManager5 = [(HUItemTableViewController *)self itemManager];
    triggerBuilder3 = [itemManager5 triggerBuilder];
    [triggerBuilder3 setNameIsConfigured:0];

    itemManager3 = [(HUItemTableViewController *)self itemManager];
    [itemManager3 triggerBuilderDidChange];
  }

  itemManager6 = [(HUItemTableViewController *)self itemManager];
  triggerCurrentDisplayedName = [itemManager6 triggerCurrentDisplayedName];
  [(HUTriggerSummaryViewController *)self setTitle:triggerCurrentDisplayedName];
}

- (void)_updateTableHeaderConfiguration
{
  objc_opt_class();
  itemTableHeaderView = [(HUItemTableViewController *)self itemTableHeaderView];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemTableHeaderView;
  }

  else
  {
    v4 = 0;
  }

  v13 = v4;

  if (v13)
  {
    messageTextView = [v13 messageTextView];
    [messageTextView setDelegate:self];

    itemManager = [(HUItemTableViewController *)self itemManager];
    allDisplayedItems = [itemManager allDisplayedItems];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    enableItem = [itemManager2 enableItem];
    v10 = [allDisplayedItems containsObject:enableItem];

    [v13 setIncludeBottomSpacing:v10];
    tableView = [(HUTriggerSummaryViewController *)self tableView];
    [tableView setNeedsLayout];

    tableView2 = [(HUTriggerSummaryViewController *)self tableView];
    [tableView2 layoutIfNeeded];
  }
}

- (BOOL)_canCommitTriggerBuilder
{
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  home = [triggerBuilder home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (!hf_currentUserIsAdministrator)
  {
    return 0;
  }

  delegate = [(HUTriggerSummaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(HUTriggerSummaryViewController *)self delegate];
  triggerBuilder2 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v10 = [delegate2 triggerEditor:self shouldCommitTriggerBuilder:triggerBuilder2];

  return v10;
}

- (id)_commitTriggerBuilder
{
  navigationItem = [(HUTriggerSummaryViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem2 = [(HUTriggerSummaryViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];

  [v5 startAnimating];
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  commitItem = [triggerBuilder commitItem];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke;
  v19[3] = &unk_277DB8620;
  objc_copyWeak(&v21, &location);
  v10 = rightBarButtonItem;
  v20 = v10;
  v11 = [commitItem addCompletionBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_2;
  v17[3] = &unk_277DB94D0;
  objc_copyWeak(&v18, &location);
  v12 = [commitItem addFailureBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_4;
  v15[3] = &unk_277DB99B8;
  objc_copyWeak(&v16, &location);
  v13 = [commitItem addSuccessBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return commitItem;
}

void __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [WeakRetained delegate];
    v10 = [WeakRetained triggerBuilder];
    [v9 triggerEditor:WeakRetained didCommitTriggerBuilder:v10 withError:v13];
  }

  v11 = *(a1 + 32);
  v12 = [WeakRetained navigationItem];
  [v12 setRightBarButtonItem:v11];

  [WeakRetained _sendNameAssignedEvent:v5 error:v13];
}

void __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_3;
  v6[3] = &unk_277DB8488;
  v6[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v6 cancelBlock:0];
}

void __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [WeakRetained delegate];
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@ succeeded commiting! Delegate is %@", &v16, 0x16u);
  }

  v6 = [WeakRetained delegate];
  if (v6 && (v7 = v6, [WeakRetained delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [WeakRetained delegate];
    v11 = [WeakRetained triggerBuilder];
    [v10 triggerEditor:WeakRetained didFinishWithTriggerBuilder:v11];
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [WeakRetained delegate];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@: %@ didn't respond to didFinishWithTriggerBuilder so automatically dismissing", &v16, 0x16u);
    }

    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_sendNameAssignedEvent:(id)event error:(id)error
{
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:event != 0];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277D134B0]];

  if (errorCopy)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277D134B8]];
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:*MEMORY[0x277D134B8]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUTriggerSummaryViewController isEditingExistingTrigger](self, "isEditingExistingTrigger")}];
  [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D134C0]];

  v10 = MEMORY[0x277CCABB0];
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v12 = [v10 numberWithBool:{objc_msgSend(triggerBuilder, "nameIsConfigured")}];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277D134C8]];

  [MEMORY[0x277D143D8] sendEvent:24 withData:dictionary];
}

- (void)homeWorkflowEditorViewController:(id)controller didFinishWithHomeWorkflow:(id)workflow includesSecureAccessory:(BOOL)accessory
{
  workflowCopy = workflow;
  triggerBuilder = [(HUTriggerSummaryViewController *)self triggerBuilder];
  triggerActionSets = [triggerBuilder triggerActionSets];
  [triggerActionSets convertToHomeWorkflowActionSet:workflowCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager triggerBuilderDidChange];

  [(HUTriggerSummaryViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end