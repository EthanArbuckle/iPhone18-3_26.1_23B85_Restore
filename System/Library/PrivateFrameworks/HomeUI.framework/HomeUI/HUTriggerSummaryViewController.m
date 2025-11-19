@interface HUTriggerSummaryViewController
+ (id)createTriggerSummaryViewControllerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 andTriggerActionBuilderEditorDelegate:(id)a5;
- (BOOL)_canCommitTriggerBuilder;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)shouldHideSeparatorsForSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUTriggerEditorDelegate)delegate;
- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5;
- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 isPresentedModally:(BOOL)a5 delegate:(id)a6;
- (NSSet)prioritizedAccessories;
- (NSString)savedName;
- (id)_commitTriggerBuilder;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)childViewControllersToPreload;
- (id)commitChanges;
- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)a3;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)a3;
- (id)defaultTextForTextField:(id)a3 item:(id)a4;
- (id)itemTableHeaderMessage;
- (id)placeholderTextForTextField:(id)a3 item:(id)a4;
- (unint64_t)automaticDisablingReasonsForItem:(id)a3;
- (void)_addAction:(id)a3;
- (void)_cancel:(id)a3;
- (void)_deleteTrigger:(id)a3 indexPath:(id)a4;
- (void)_removeActionsInServiceActionItem:(id)a3;
- (void)_sendNameAssignedEvent:(id)a3 error:(id)a4;
- (void)_setTriggerEnabled:(BOOL)a3;
- (void)_showEditorForTriggerBuilderItem:(id)a3;
- (void)_showShortcutEditorForTriggerBuilderItem:(id)a3;
- (void)_testTrigger;
- (void)_updateDurationModuleDynamicFooterView;
- (void)_updateTableHeaderConfiguration;
- (void)_updateTriggerBuilderName;
- (void)actionSetsModuleController:(id)a3 didUpdateTriggerBuilder:(id)a4;
- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)durationModuleController:(id)a3 requestsScrollToItem:(id)a4;
- (void)eventsModuleController:(id)a3 pushViewController:(id)a4;
- (void)eventsModuleControllerDidUpdateTriggerBuilder:(id)a3;
- (void)home:(id)a3 didRemoveTrigger:(id)a4;
- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5;
- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5;
- (void)itemManagerDidUpdate:(id)a3;
- (void)mediaModuleController:(id)a3 pushViewController:(id)a4;
- (void)serviceGridViewController:(id)a3 didTapItem:(id)a4;
- (void)setPrioritizedAccessories:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidFinishEditing:(id)a3;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUTriggerSummaryViewController

+ (id)createTriggerSummaryViewControllerForHome:(id)a3 withTriggerActionSetBuilder:(id)a4 andTriggerActionBuilderEditorDelegate:(id)a5
{
  v7 = MEMORY[0x277D146E8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 sharedDispatcher];
  [v11 setOverrideHome:v10];

  v12 = objc_alloc(MEMORY[0x277D14C40]);
  v13 = [v9 allActionSets];

  v14 = [v12 initWithActionSets:v13 inHome:v10 filterEmptyActionSets:1];
  v15 = MEMORY[0x277D14940];
  v16 = objc_opt_new();
  v17 = [v15 createPlaceholderTriggerForHome:v10 withTriggerActionSetBuilder:v14 context:v16];

  v18 = [[HUForwardingTriggerActionBuilderDelegate alloc] initWithTriggerActionBuilderEditorDelegate:v8];
  v19 = [[HUTriggerActionFlow alloc] initWithFlowState:7];
  v20 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v17 flow:v19 delegate:0];
  [(HUTriggerSummaryViewController *)v20 setForwardingTriggerActionBuilderDelegate:v18];
  v21 = [(HUTriggerSummaryViewController *)v20 forwardingTriggerActionBuilderDelegate];
  if ([v21 conformsToProtocol:&unk_2824F8AF0])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [(HUTriggerSummaryViewController *)v20 setDelegate:v23];

  return v20;
}

- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)a3 mode:(unint64_t)a4 isPresentedModally:(BOOL)a5 delegate:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  v11 = [HUTriggerActionFlow alloc];
  if (v6)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(HUTriggerActionFlow *)v11 initWithFlowState:v12];
  v14 = [(HUTriggerSummaryViewController *)self initWithTriggerBuilder:v10 flow:v13 delegate:v9];

  return v14;
}

- (HUTriggerSummaryViewController)initWithTriggerBuilder:(id)a3 flow:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([MEMORY[0x277D14670] isShortcuts])
  {
    v12 = [MEMORY[0x277D146E8] sharedDispatcher];
    v13 = [v9 home];
    [v12 setOverrideHome:v13];
  }

  v14 = [[HUTriggerSummaryItemManager alloc] initWithTriggerBuilder:v9 flow:v10 delegate:self];
  v33.receiver = self;
  v33.super_class = HUTriggerSummaryViewController;
  v15 = [(HUItemTableViewController *)&v33 initWithItemManager:v14 tableViewStyle:1];
  v16 = v15;
  if (v15)
  {
    [(HUTriggerSummaryViewController *)v15 setTriggerBuilder:v9];
    [(HUTriggerSummaryViewController *)v16 setDelegate:v11];
    [(HUTriggerSummaryViewController *)v16 setFlow:v10];
    v17 = [v9 name];

    if (!v17)
    {
      v18 = [v9 naturalLanguageNameOfType:0];
      [v9 setName:v18];

      v19 = [v9 name];

      if (!v19)
      {
        v32 = [MEMORY[0x277CCA890] currentHandler];
        [v32 handleFailureInMethod:a2 object:v16 file:@"HUTriggerSummaryViewController.m" lineNumber:117 description:{@"Could not generate name for triggerBuilder: %@", v9}];
      }
    }

    if ([v10 isSingleFlow])
    {
      v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v16 action:sel__cancel_];
      v21 = [(HUTriggerSummaryViewController *)v16 navigationItem];
      [v21 setLeftBarButtonItem:v20];
    }

    if ([v10 isLastState])
    {
      v22 = [v9 context];
      v23 = [v22 doneButtonTitle];

      v24 = objc_alloc(MEMORY[0x277D751E0]);
      v25 = v24;
      if (v23)
      {
        v26 = [v9 context];
        v27 = [v26 doneButtonTitle];
        v28 = [v25 initWithTitle:v27 style:2 target:v16 action:sel__done_];
      }

      else
      {
        v28 = [v24 initWithBarButtonSystemItem:0 target:v16 action:sel__done_];
      }

      v29 = [(HUTriggerSummaryViewController *)v16 navigationItem];
      [v29 setRightBarButtonItem:v28];
    }

    [(HUTriggerSummaryViewController *)v16 setModalInPresentation:1];
    -[HUTriggerSummaryViewController setIsEditingExistingTrigger:](v16, "setIsEditingExistingTrigger:", [v10 flowState] == 3);
    +[HUTriggerUtilities preloadShortcutHomeManager];
    v30 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v30 addHomeObserver:v16];
  }

  return v16;
}

- (NSSet)prioritizedAccessories
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 prioritizedAccessories];

  return v3;
}

- (void)setPrioritizedAccessories:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  [v5 setPrioritizedAccessories:v4];
}

- (NSString)savedName
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 triggerBuilder];
  v4 = [v3 name];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v7 viewWillAppear:a3];
  [(HUTriggerSummaryViewController *)self setViewHasAppeared:1];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 triggerCurrentDisplayedName];
  [(HUTriggerSummaryViewController *)self setTitle:v5];

  if ([(HUTriggerSummaryViewController *)self detailEditorChangedTrigger])
  {
    [(HUTriggerSummaryViewController *)self setDetailEditorChangedTrigger:0];
    v6 = [(HUItemTableViewController *)self itemManager];
    [v6 triggerBuilderDidChange];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUTriggerSummaryViewController *)self flow];
  v6 = [v5 flowState];

  if (v6 == 5)
  {
    v7 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    v8 = [v7 triggerActionSets];
    [v8 setHomeWorkflow:0];
  }

  v9.receiver = self;
  v9.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v9 viewWillDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6.receiver = self;
  v6.super_class = HUTriggerSummaryViewController;
  [(HUTriggerSummaryViewController *)&v6 dismissViewControllerAnimated:a3 completion:a4];
  v5 = [MEMORY[0x277D146E8] sharedDispatcher];
  [v5 removeHomeObserver:self];
}

- (id)commitChanges
{
  v3 = [(HUTriggerSummaryViewController *)self view];
  [v3 endEditing:1];

  v4 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v5 = [v4 triggerActionSets];
  [v5 convertToHomeWorkflowActionSetIfNeeded];

  if ([(HUTriggerSummaryViewController *)self _canCommitTriggerBuilder])
  {
    v6 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    v7 = [v6 context];
    v8 = [v7 showTriggerEnableSwitch];

    if ((v8 & 1) == 0)
    {
      v9 = [(HUTriggerSummaryViewController *)self triggerBuilder];
      [v9 setEnabled:1];
    }

    v10 = [(HUTriggerSummaryViewController *)self _commitTriggerBuilder];
  }

  else
  {
    v11 = [(HUTriggerSummaryViewController *)self delegate];
    v12 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    [v11 triggerEditor:self didFinishWithTriggerBuilder:v12];

    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
}

- (void)_cancel:(id)a3
{
  v4 = [(HUTriggerSummaryViewController *)self delegate];
  [v4 triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (void)_showShortcutEditorForTriggerBuilderItem:(id)a3
{
  v5 = [a3 triggerBuilder];
  v16 = v5;
  if (a3)
  {
    if (v5)
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
  v6 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v7 = [v6 triggerActionSets];
  v8 = [v7 homeWorkflow];

  v9 = objc_alloc(MEMORY[0x277D7D778]);
  v10 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v11 = [v10 home];
  v12 = [v9 initWithHomeWorkflow:v8 actionSetBuilder:0 home:v11];

  [v12 setDelegate:self];
  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
  [v13 setModalInPresentation:1];
  [v13 setModalPresentationStyle:2];
  v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelShortcutEditor_];
  v15 = [v12 navigationItem];
  [v15 setLeftBarButtonItem:v14];

  [(HUTriggerSummaryViewController *)self presentViewController:v13 animated:1 completion:0];
}

- (void)_testTrigger
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 home];
  v5 = [v4 hf_characteristicValueManager];

  v6 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v7 = [v6 triggerActionSets];
  v8 = [v7 allActionBuilders];

  v9 = [v8 na_map:&__block_literal_global_40];
  v10 = [MEMORY[0x277D2C900] combineAllFutures:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__HUTriggerSummaryViewController__testTrigger__block_invoke_2;
  v16[3] = &unk_277DB98F8;
  v17 = v8;
  v18 = v5;
  v11 = v5;
  v12 = v8;
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

- (void)_addAction:(id)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 currentFlow];
  v11 = +[HUTriggerActionFlow selectFlowForState:](HUTriggerActionFlow, "selectFlowForState:", [v5 flowState]);

  v6 = [HUTriggerActionPickerViewController alloc];
  v7 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v8 = [(HUTriggerActionPickerViewController *)v6 initWithTriggerBuilder:v7 flow:v11 delegate:self];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v9 setModalPresentationStyle:2];
  v10 = [(UIViewController *)self hu_presentPreloadableViewController:v9 animated:1];
}

- (void)_deleteTrigger:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v9 = [v8 trigger];

  if (v9)
  {
    v10 = [(HUTriggerSummaryViewController *)self triggerBuilder];
    v11 = [v10 context];

    v12 = [v11 deleteConfirmationAlertTitle];
    v13 = [v11 deleteConfirmationAlertMessage];
    v14 = [(UITableViewController *)self hu_actionSheetWithTitle:v12 message:v13 indexPath:v7];

    objc_initWeak(&location, self);
    v15 = MEMORY[0x277D750F8];
    v16 = [v11 deleteInstructionDescription];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__HUTriggerSummaryViewController__deleteTrigger_indexPath___block_invoke;
    v21[3] = &unk_277DB9948;
    objc_copyWeak(&v23, &location);
    v22 = v9;
    v17 = [v15 actionWithTitle:v16 style:2 handler:v21];
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

- (void)_setTriggerEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  [v5 setEnabled:v3];

  v6 = [(HUItemTableViewController *)self itemManager];
  [v6 triggerBuilderDidChange];
}

- (void)_removeActionsInServiceActionItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 actionBuilders];
  v6 = [v5 mutableCopy];

  v7 = [v4 actions];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__HUTriggerSummaryViewController__removeActionsInServiceActionItem___block_invoke;
  v21[3] = &unk_277DB9990;
  v21[4] = self;
  v8 = [v7 na_map:v21];
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
          v15 = [(HUTriggerSummaryViewController *)self triggerBuilder];
          v16 = [v15 triggerActionSets];
          [v16 removeAnonymousActionBuilder:v14];
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
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 sourceItem];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13E40]];

  v6 = HUPriorityMessageDefaultAttributedStringAttributes();
  v7 = [v5 stringWithAttributes:v6];

  return v7;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 enableItem];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    goto LABEL_10;
  }

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 testTriggerItem];
  if (v10 == v5)
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 createActionButtonItem];
  v13 = v12;
  if (v12 == v5)
  {

    goto LABEL_9;
  }

  v14 = [(HUItemTableViewController *)self itemManager];
  v15 = [v14 deleteTriggerItem];

  if (v15 != v5)
  {
    v16 = [(HUItemTableViewController *)self itemManager];
    v17 = [v16 durationModule];
    v18 = [v17 durationSummaryItem];

    if (v18 != v5)
    {
      v19 = [(HUItemTableViewController *)self itemManager];
      v20 = [v19 durationModule];
      v21 = [v20 durationPickerItem];

      if (v21 != v5)
      {
        v22 = [(HUItemTableViewController *)self itemManager];
        [v22 namingRowItem];
      }
    }
  }

LABEL_10:
  v23 = objc_opt_class();

  return v23;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v15 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v15 setDelegate:self];
    goto LABEL_11;
  }

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 namingRowItem];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    objc_opt_class();
    v11 = v15;
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
    v14 = [v13 textField];

    [v14 setClearButtonMode:3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v14 = [v15 textLabel];
    [v14 setNumberOfLines:0];
  }

LABEL_11:
}

- (unint64_t)automaticDisablingReasonsForItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = HUTriggerSummaryViewController;
  v3 = a3;
  v4 = [(HUItemTableViewController *)&v7 automaticDisablingReasonsForItem:v3];
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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v36.receiver = self;
  v36.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v36 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 unsupportedItemProvider];
  v14 = [v13 items];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = v10;
    [v16 setAccessoryType:0];
    v17 = [MEMORY[0x277D755B8] hu_exclamationMarkImage];
    [v16 setDescriptionIcon:v17];

    [v16 setHideDescriptionIcon:0];
    [v16 setHideIcon:0];
    [v16 setIconForegroundColorFollowsTintColor:1];
    [v16 setIconDisplayStyle:3];
    [v16 setDisabled:1];
LABEL_3:

    goto LABEL_4;
  }

  v18 = [(HUItemTableViewController *)self itemManager];
  v19 = [v18 enableItem];
  v20 = [v11 isEqual:v19];

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
      v21 = v10;
      [v21 setDelegate:self];
      v16 = [v11 latestResults];
      v22 = [v16 objectForKeyedSubscript:*MEMORY[0x277D14068]];
      [v21 setOn:{objc_msgSend(v22, "integerValue") == 2}];

      goto LABEL_3;
    }
  }

  else
  {
    v23 = [(HUItemTableViewController *)self itemManager];
    v24 = [v23 deleteTriggerItem];
    v25 = [v11 isEqual:v24];

    if (!v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v10;
        [v16 setAccessoryType:0];
        [v16 setIconForegroundColorFollowsTintColor:0];
        [v16 setIconForegroundColor:0];
        [v16 setIconTintColorFollowsDisabledState:1];
      }

      else
      {
        v26 = [(HUItemTableViewController *)self itemManager];
        v27 = [v26 namingRowItem];

        if (v27 != v11)
        {
          goto LABEL_4;
        }

        v16 = v10;
        [v16 setHideIconButton:1];
        v28 = [v16 textField];
        [v28 setClearButtonMode:3];

        v29 = [v11 latestResults];
        v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
        v31 = [v16 textField];
        [v31 setPlaceholder:v30];

        v32 = [v16 textField];
        LOBYTE(v30) = [v32 isFirstResponder];

        if ((v30 & 1) == 0)
        {
          v33 = [v11 latestResults];
          v34 = [v33 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
          v35 = [v16 textField];
          [v35 setText:v34];
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
      [v10 setDestructive:1];
    }
  }

LABEL_4:
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 eventsModule];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = [[HUTriggerEventsModuleController alloc] initWithModule:v4];
    [(HUTriggerEventsModuleController *)v8 setDelegate:self];
    [(HUTriggerEventsModuleController *)v8 setAllowsEditingEvents:[(HUTriggerSummaryViewController *)self isEditingExistingTrigger]];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = HUTriggerDurationModuleController;
LABEL_5:
    v8 = [[v9 alloc] initWithModule:v4];
    [(HUTriggerEventsModuleController *)v8 setDelegate:self];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(HUItemModuleController *)[HUTriggerActionSetsModuleController alloc] initWithModule:v4];
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
      v8 = [[HUTriggerConditionEditorItemModuleController alloc] initWithModule:v4 delegate:self];
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

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = HUTriggerSummaryViewController;
  v7 = -[HUItemTableViewController shouldHideSeparatorsForCell:indexPath:](&v9, sel_shouldHideSeparatorsForCell_indexPath_, a3, v6) || -[HUTriggerSummaryViewController shouldHideSeparatorsForSection:](self, "shouldHideSeparatorsForSection:", [v6 section]);

  return v7;
}

- (BOOL)shouldHideSeparatorsForSection:(int64_t)a3
{
  v5 = [(HUItemTableViewController *)self itemManager];
  if ([v5 actionSetsSection] == a3)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HUItemTableViewController *)self itemManager];
    if ([v7 serviceActionsSection] == a3)
    {
      v6 = 1;
    }

    else
    {
      v8 = [(HUItemTableViewController *)self itemManager];
      v9 = [v8 displayedItemsInSection:a3];
      v6 = [v9 count] < 2;
    }
  }

  return v6;
}

- (id)childViewControllersToPreload
{
  v2 = [(HUTriggerSummaryViewController *)self actionSetsModuleController];
  v3 = [v2 childViewControllersToPreload];

  return v3;
}

- (void)itemManagerDidUpdate:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUTriggerSummaryViewController;
  [(HUItemTableViewController *)&v4 itemManagerDidUpdate:a3];
  [(HUTriggerSummaryViewController *)self _updateTableHeaderConfiguration];
}

- (void)itemManager:(id)a3 didUpdateResultsForItem:(id)a4 atIndexPath:(id)a5
{
  v13.receiver = self;
  v13.super_class = HUTriggerSummaryViewController;
  v8 = a4;
  [(HUItemTableViewController *)&v13 itemManager:a3 didUpdateResultsForItem:v8 atIndexPath:a5];
  v9 = [(HUItemTableViewController *)self itemManager:v13.receiver];
  v10 = [v9 durationModule];
  v11 = [v10 durationSummaryItem];
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    [(HUTriggerSummaryViewController *)self _updateDurationModuleDynamicFooterView];
  }
}

- (void)diffableDataItemManager:(id)a3 didUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6
{
  v15.receiver = self;
  v15.super_class = HUTriggerSummaryViewController;
  v10 = a4;
  [(HUItemTableViewController *)&v15 diffableDataItemManager:a3 didUpdateItems:v10 addItems:a5 removeItems:a6];
  v11 = [(HUItemTableViewController *)self itemManager:v15.receiver];
  v12 = [v11 durationModule];
  v13 = [v12 durationSummaryItem];
  v14 = [v10 containsObject:v13];

  if (v14)
  {
    [(HUTriggerSummaryViewController *)self _updateDurationModuleDynamicFooterView];
  }
}

- (void)_updateDurationModuleDynamicFooterView
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 sectionIndexForDisplayedSectionIdentifier:@"HUTriggerDurationItemModuleSection"];

  v5 = [(HUTriggerSummaryViewController *)self tableView];
  v11 = [v5 footerViewForSection:v4];

  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 footerTitleForSection:v4];

  objc_opt_class();
  v8 = [v11 contentConfiguration];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setText:v7];
  [v11 setContentConfiguration:v10];
}

- (id)defaultTextForTextField:(id)a3 item:(id)a4
{
  v4 = [(HUItemTableViewController *)self itemManager:a3];
  v5 = [v4 namingRowItem];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  return v7;
}

- (id)placeholderTextForTextField:(id)a3 item:(id)a4
{
  v4 = [(HUItemTableViewController *)self itemManager:a3];
  v5 = [v4 namingRowItem];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F70]];

  return v7;
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  [(HUTriggerSummaryViewController *)self setEditingName:a3, a4, a5];
  v9 = [(HUTriggerSummaryViewController *)self editingName];
  if ([v9 length])
  {
    v6 = [(HUTriggerSummaryViewController *)self editingName];
    [(HUTriggerSummaryViewController *)self setTitle:v6];
  }

  else
  {
    v6 = [(HUItemTableViewController *)self itemManager];
    v7 = [v6 triggerBuilder];
    v8 = [v7 displayName];
    [(HUTriggerSummaryViewController *)self setTitle:v8];
  }
}

- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 itemSectionForSectionIndex:a3];

  v6 = [v5 headerTitle];

  if (v6)
  {
    v6 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
    v7 = [v5 headerTitle];
    [v6 setText:v7];

    v8 = [v5 headerSecondaryText];
    [v6 setSecondaryText:v8];

    [v6 directionalLayoutMargins];
    [v6 setDirectionalLayoutMargins:?];
  }

  return v6;
}

- (id)contentConfigurationForFooterViewAtSectionIndex:(unint64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 footerTitleForSection:a3];

  if (v5)
  {
    v6 = [MEMORY[0x277D756E0] groupedFooterConfiguration];
    [v6 setText:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v23.receiver = self;
  v23.super_class = HUTriggerSummaryViewController;
  v6 = a4;
  v7 = [(HUItemTableViewController *)&v23 tableView:a3 shouldHighlightRowAtIndexPath:v6];
  v8 = [(HUItemTableViewController *)self itemManager:v23.receiver];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 testTriggerItem];
    if (v9 != v12)
    {
      v13 = [(HUItemTableViewController *)self itemManager];
      v14 = [v13 createActionButtonItem];
      v15 = v14;
      if (v9 != v14)
      {
        v16 = [(HUItemTableViewController *)self itemManager];
        v17 = [v16 deleteTriggerItem];

        if (v9 != v17)
        {
          v18 = [(HUItemTableViewController *)self itemManager];
          v19 = [v18 mediaModule];
          v20 = [v19 mediaRowItem];
          v21 = v9 == v20;

          v10 = v21 | v7;
          goto LABEL_10;
        }

LABEL_9:
        v10 = 1;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v10 = [(HUTriggerSummaryViewController *)self isEditingExistingTrigger];
LABEL_10:

  return v10 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = HUTriggerSummaryViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v16 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v16.receiver, v16.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(HUTriggerSummaryViewController *)self isEditingExistingTrigger])
  {
    [(HUTriggerSummaryViewController *)self _showShortcutEditorForTriggerBuilderItem:v9];
  }

  else
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 testTriggerItem];

    if (v9 == v11)
    {
      [(HUTriggerSummaryViewController *)self _testTrigger];
    }

    else
    {
      v12 = [(HUItemTableViewController *)self itemManager];
      v13 = [v12 createActionButtonItem];

      if (v9 == v13)
      {
        [(HUTriggerSummaryViewController *)self _addAction:0];
      }

      else
      {
        v14 = [(HUItemTableViewController *)self itemManager];
        v15 = [v14 deleteTriggerItem];

        if (v9 == v15)
        {
          [(HUTriggerSummaryViewController *)self _deleteTrigger:v9 indexPath:v6];
        }
      }
    }
  }
}

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v5 = [(HUTriggerSummaryViewController *)self triggerBuilder:a3];
  v6 = [v5 isShortcutOwned];

  if (v6)
  {
    v11 = [(HUTriggerSummaryViewController *)self view];
    v7 = [v11 window];
    v8 = [v7 rootViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v9 = [(HUTriggerSummaryViewController *)self actionSetsModuleController];
    [v9 reloadActions];

    v10 = [(HUItemTableViewController *)self itemManager];
    [v10 triggerBuilderDidChange];

    [(HUTriggerSummaryViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUTriggerSummaryViewController *)self tableView];
  v16 = [v7 indexPathForCell:v6];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v16];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 enableItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    [(HUTriggerSummaryViewController *)self _setTriggerEnabled:v4];
  }

  v13 = MEMORY[0x277D143D8];
  v14 = [v9 latestResults];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  [v13 sendSwitchCellToggleEventForItem:v9 isOn:v4 title:v15 fromSourceViewController:self];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v13, 0x16u);
  }

  if (!a6)
  {
    v10 = [MEMORY[0x277D148E8] sharedInstance];
    v11 = [v10 openURL:v8];
  }

  return 0;
}

- (void)actionSetsModuleController:(id)a3 didUpdateTriggerBuilder:(id)a4
{
  v4 = [(HUItemTableViewController *)self itemManager:a3];
  [v4 triggerBuilderDidChange];
}

- (void)durationModuleController:(id)a3 requestsScrollToItem:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v8 = [v6 indexPathForItem:v5];

  if (v8)
  {
    v7 = [(HUTriggerSummaryViewController *)self tableView];
    [v7 scrollToRowAtIndexPath:v8 atScrollPosition:3 animated:1];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindIn_0.isa);
  }
}

- (void)eventsModuleController:(id)a3 pushViewController:(id)a4
{
  v7 = a4;
  v5 = [(HUTriggerSummaryViewController *)self navigationController];
  v6 = [v5 hu_pushPreloadableViewController:v7 animated:1];
}

- (void)eventsModuleControllerDidUpdateTriggerBuilder:(id)a3
{
  v3 = [(HUItemTableViewController *)self itemManager];
  [v3 triggerBuilderDidChange];
}

- (void)_showEditorForTriggerBuilderItem:(id)a3
{
  v28 = a3;
  objc_opt_class();
  v4 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v28 triggerBuilder];
  if (v28)
  {
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    NSLog(&cfstr_NilParameter.isa);
    if (v7)
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
    v9 = [(HUTriggerSummaryViewController *)self delegate];
    v10 = [(HUTimerTriggerEditorViewController *)v8 initWithTimerTriggerBuilder:v7 mode:1 delegate:v9];
    goto LABEL_23;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  v11 = [v6 eventBuilders];
  v12 = [v11 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v9 = v13;

  v14 = [v6 eventBuilders];
  v15 = [v14 firstObject];
  if ([v15 conformsToProtocol:&unk_2825BD780])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v9)
  {
    v18 = objc_alloc(MEMORY[0x277D14530]);
    v19 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v20 = [v18 initWithEventBuilders:v19];

    v21 = [HUCharacteristicTriggerEventViewController alloc];
    v22 = [(HUTriggerSummaryViewController *)self delegate];
    v23 = [(HUCharacteristicTriggerEventViewController *)v21 initWithCharacteristicEventBuilderItem:v20 triggerBuilder:v6 mode:1 delegate:v22];
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

    v22 = [[HUEventUIFlow alloc] initWithTriggerBuilder:v6 eventBuilderItem:v20];
    v23 = [[HULocationEventEditorSummaryViewController alloc] initWithFlow:v22 stepIdentifier:@"locationEventEditor"];
  }

  v10 = v23;

LABEL_22:
LABEL_23:

  if (v10)
  {
    v26 = [(HUTriggerSummaryViewController *)self navigationController];
    v27 = [v26 hu_pushPreloadableViewController:v10 animated:1];

    [(HUTriggerSummaryViewController *)self setDetailEditorChangedTrigger:1];
    goto LABEL_26;
  }

LABEL_25:
  NSLog(&cfstr_CouldNotCreate.isa, v28);
LABEL_26:
}

- (void)mediaModuleController:(id)a3 pushViewController:(id)a4
{
  v7 = a4;
  v5 = [(HUTriggerSummaryViewController *)self navigationController];
  v6 = [v5 hu_pushPreloadableViewController:v7 animated:1];
}

- (void)serviceGridViewController:(id)a3 didTapItem:(id)a4
{
  v18 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v18;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 containingItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(HUItemTableViewController *)self itemManager];
      v12 = MEMORY[0x277CBEB98];
      v13 = [(HUItemTableViewController *)self itemManager];
      v14 = [v13 mediaModule];
      v15 = [v14 mediaRowItem];
      v16 = [v12 setWithObject:v15];
      v17 = [v11 updateResultsForItems:v16 senderSelector:a2];
    }
  }
}

- (void)textFieldDidFinishEditing:(id)a3
{
  v5 = [a3 text];
  [(HUTriggerSummaryViewController *)self setEditingName:v5];

  [(HUTriggerSummaryViewController *)self _updateTriggerBuilderName];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 sourceItem];
  v10 = [v7 setWithObjects:{v9, 0}];
  v11 = [v6 updateResultsForItems:v10 senderSelector:a2];

  [(HUTriggerSummaryViewController *)self setEditingName:0];
}

- (void)home:(id)a3 didRemoveTrigger:(id)a4
{
  v5 = a4;
  v6 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v7 = [v6 trigger];
  v8 = [v7 uniqueIdentifier];
  v9 = [v5 uniqueIdentifier];

  if (v8 == v9)
  {
    v10 = [(HUTriggerSummaryViewController *)self delegate];
    [v10 triggerEditor:self didFinishWithTriggerBuilder:0];
  }
}

- (void)_updateTriggerBuilderName
{
  v4 = MEMORY[0x277D14CE8];
  v5 = [(HUTriggerSummaryViewController *)self editingName];
  v6 = [v4 sanitizeUserEnteredHomeKitName:v5];
  [(HUTriggerSummaryViewController *)self setEditingName:v6];

  v7 = [(HUTriggerSummaryViewController *)self editingName];
  if (v7 && (v8 = v7, -[HUTriggerSummaryViewController editingName](self, "editingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, v10))
  {
    v11 = [(HUTriggerSummaryViewController *)self editingName];
    v12 = [v11 copy];
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 triggerBuilder];
    [v14 setName:v12];

    v15 = [(HUItemTableViewController *)self itemManager];
    v16 = [v15 triggerBuilder];
    [v16 setNameIsConfigured:1];

    v17 = [(HUItemTableViewController *)self itemManager];
    v18 = MEMORY[0x277CBEB98];
    v19 = [(HUItemTableViewController *)self itemManager];
    v20 = [v19 namingRowItem];
    v21 = [v18 setWithObject:v20];
    v22 = [v17 updateResultsForItems:v21 senderSelector:a2];
  }

  else
  {
    v23 = [(HUItemTableViewController *)self itemManager];
    v24 = [v23 triggerBuilder];
    [v24 setNameIsConfigured:0];

    v17 = [(HUItemTableViewController *)self itemManager];
    [v17 triggerBuilderDidChange];
  }

  v26 = [(HUItemTableViewController *)self itemManager];
  v25 = [v26 triggerCurrentDisplayedName];
  [(HUTriggerSummaryViewController *)self setTitle:v25];
}

- (void)_updateTableHeaderConfiguration
{
  objc_opt_class();
  v3 = [(HUItemTableViewController *)self itemTableHeaderView];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v13 = v4;

  if (v13)
  {
    v5 = [v13 messageTextView];
    [v5 setDelegate:self];

    v6 = [(HUItemTableViewController *)self itemManager];
    v7 = [v6 allDisplayedItems];
    v8 = [(HUItemTableViewController *)self itemManager];
    v9 = [v8 enableItem];
    v10 = [v7 containsObject:v9];

    [v13 setIncludeBottomSpacing:v10];
    v11 = [(HUTriggerSummaryViewController *)self tableView];
    [v11 setNeedsLayout];

    v12 = [(HUTriggerSummaryViewController *)self tableView];
    [v12 layoutIfNeeded];
  }
}

- (BOOL)_canCommitTriggerBuilder
{
  v3 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v4 = [v3 home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (!v5)
  {
    return 0;
  }

  v6 = [(HUTriggerSummaryViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = [(HUTriggerSummaryViewController *)self delegate];
  v9 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v10 = [v8 triggerEditor:self shouldCommitTriggerBuilder:v9];

  return v10;
}

- (id)_commitTriggerBuilder
{
  v3 = [(HUTriggerSummaryViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  v7 = [(HUTriggerSummaryViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  [v5 startAnimating];
  v8 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v9 = [v8 commitItem];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke;
  v19[3] = &unk_277DB8620;
  objc_copyWeak(&v21, &location);
  v10 = v4;
  v20 = v10;
  v11 = [v9 addCompletionBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_2;
  v17[3] = &unk_277DB94D0;
  objc_copyWeak(&v18, &location);
  v12 = [v9 addFailureBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HUTriggerSummaryViewController__commitTriggerBuilder__block_invoke_4;
  v15[3] = &unk_277DB99B8;
  objc_copyWeak(&v16, &location);
  v13 = [v9 addSuccessBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v9;
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

- (void)_sendNameAssignedEvent:(id)a3 error:(id)a4
{
  v13 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3 != 0];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D134B0]];

  if (v13)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D134B8]];
  }

  else
  {
    [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277D134B8]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUTriggerSummaryViewController isEditingExistingTrigger](self, "isEditingExistingTrigger")}];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277D134C0]];

  v10 = MEMORY[0x277CCABB0];
  v11 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v12 = [v10 numberWithBool:{objc_msgSend(v11, "nameIsConfigured")}];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D134C8]];

  [MEMORY[0x277D143D8] sendEvent:24 withData:v6];
}

- (void)homeWorkflowEditorViewController:(id)a3 didFinishWithHomeWorkflow:(id)a4 includesSecureAccessory:(BOOL)a5
{
  v6 = a4;
  v7 = [(HUTriggerSummaryViewController *)self triggerBuilder];
  v8 = [v7 triggerActionSets];
  [v8 convertToHomeWorkflowActionSet:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  [v9 triggerBuilderDidChange];

  [(HUTriggerSummaryViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end