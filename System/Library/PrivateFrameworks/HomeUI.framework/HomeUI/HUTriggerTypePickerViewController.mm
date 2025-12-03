@interface HUTriggerTypePickerViewController
- (BOOL)showSuggestedAutomations;
- (BOOL)triggerEditor:(id)editor shouldCommitTriggerBuilder:(id)builder;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HURecommendedTriggerItemModuleController)recommendationModuleController;
- (HUTriggerEditorDelegate)delegate;
- (HUTriggerTypePickerViewController)initWithActionSetBuilder:(id)builder anonymousActionBuilders:(id)builders delegate:(id)delegate;
- (id)_createTriggerBuilderOfClass:(Class)class;
- (id)_createTriggerEditorForItem:(id)item;
- (id)buildItemModuleControllerForModule:(id)module;
- (void)_cancel:(id)_cancel;
- (void)recommendedTriggerModuleController:(id)controller didSelectToOpenTriggerBuilder:(id)builder;
- (void)recommendedTriggerModuleControllerDidSelectShowMore:(id)more;
- (void)setShowSuggestedAutomations:(BOOL)automations;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error;
- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUTriggerTypePickerViewController

- (HUTriggerTypePickerViewController)initWithActionSetBuilder:(id)builder anonymousActionBuilders:(id)builders delegate:(id)delegate
{
  builderCopy = builder;
  buildersCopy = builders;
  delegateCopy = delegate;
  v12 = [(HFItemManager *)[HUTriggerTypePickerItemManager alloc] initWithDelegate:self];
  v19.receiver = self;
  v19.super_class = HUTriggerTypePickerViewController;
  v13 = [(HUItemTableViewController *)&v19 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_actionSetBuilder, builder);
    objc_storeStrong(&v14->_anonymousActionBuilders, builders);
    v15 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerTitle", @"HUTriggerTypePickerTitle", 1);
    [(HUTriggerTypePickerViewController *)v14 setTitle:v15];

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel__cancel_];
    navigationItem = [(HUTriggerTypePickerViewController *)v14 navigationItem];
    [navigationItem setLeftBarButtonItem:v16];
  }

  return v14;
}

- (void)setShowSuggestedAutomations:(BOOL)automations
{
  automationsCopy = automations;
  itemManager = [(HUItemTableViewController *)self itemManager];
  [itemManager setShowSuggestedAutomations:automationsCopy];
}

- (BOOL)showSuggestedAutomations
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  showSuggestedAutomations = [itemManager showSuggestedAutomations];

  return showSuggestedAutomations;
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HUTriggerTypePickerViewController *)self delegate];
  [delegate triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  itemManager = [(HUItemTableViewController *)self itemManager];
  suggestedAutomationsModule = [itemManager suggestedAutomationsModule];

  if (suggestedAutomationsModule == moduleCopy)
  {
    v7 = [(HUItemModuleController *)[HURecommendedTriggerItemModuleController alloc] initWithModule:moduleCopy];
    [(HURecommendedTriggerItemModuleController *)v7 setDelegate:self];
    [(HURecommendedTriggerItemModuleController *)v7 setAnalyticsPresentationContext:@"trigger-type-picker"];
    objc_storeWeak(&self->_recommendationModuleController, v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v14 BOOLValue];

    v16 = cellCopy;
    [v16 setDisabled:bOOLValue];
    [v16 setAccessoryType:bOOLValue ^ 1];
    if (bOOLValue)
    {
      v17 = 0.200000003;
    }

    else
    {
      v17 = 1.0;
    }

    [v16 setIconAlpha:v17];
    [v16 setTextAlpha:v17];
    [v16 setIconDisplayStyle:1];
  }

  v18.receiver = self;
  v18.super_class = HUTriggerTypePickerViewController;
  [(HUItemTableViewController *)&v18 updateCell:cellCopy forItem:itemCopy indexPath:pathCopy animated:animatedCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = HUTriggerTypePickerViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v17.receiver, v17.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  latestResults = [v9 latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  bOOLValue = [v11 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerEditorForItem:v9];
    v14 = v13;
    if (v13)
    {
      [v13 setModalInPresentation:1];
      navigationController = [(HUTriggerTypePickerViewController *)self navigationController];
      v16 = [navigationController hu_pushPreloadableViewController:v14 animated:1];
    }
  }
}

- (void)triggerEditor:(id)editor didFinishWithTriggerBuilder:(id)builder
{
  builderCopy = builder;
  editorCopy = editor;
  delegate = [(HUTriggerTypePickerViewController *)self delegate];
  [delegate triggerEditor:editorCopy didFinishWithTriggerBuilder:builderCopy];
}

- (BOOL)triggerEditor:(id)editor shouldCommitTriggerBuilder:(id)builder
{
  editorCopy = editor;
  builderCopy = builder;
  delegate = [(HUTriggerTypePickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HUTriggerTypePickerViewController *)self delegate];
    v11 = [delegate2 triggerEditor:editorCopy shouldCommitTriggerBuilder:builderCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error
{
  editorCopy = editor;
  builderCopy = builder;
  errorCopy = error;
  context = [builderCopy context];
  suggestionItem = [context suggestionItem];
  if (suggestionItem)
  {
    v12 = suggestionItem;
    itemManager = [(HUItemTableViewController *)self itemManager];
    suggestedAutomationsModule = [itemManager suggestedAutomationsModule];
    context2 = [builderCopy context];
    suggestionItem2 = [context2 suggestionItem];
    v17 = [suggestedAutomationsModule containsItem:suggestionItem2];

    if (!v17)
    {
      goto LABEL_5;
    }

    context = [(HUTriggerTypePickerViewController *)self recommendationModuleController];
    context3 = [builderCopy context];
    suggestionItem3 = [context3 suggestionItem];
    [context didCommitTriggerBuilderForItem:suggestionItem3 withError:errorCopy];
  }

LABEL_5:
  delegate = [(HUTriggerTypePickerViewController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    delegate2 = [(HUTriggerTypePickerViewController *)self delegate];
    [delegate2 triggerEditor:editorCopy didCommitTriggerBuilder:builderCopy withError:errorCopy];
  }
}

- (void)recommendedTriggerModuleController:(id)controller didSelectToOpenTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v6 = [[HUTriggerActionFlow alloc] initWithFlowState:0];
  getNextState = [(HUTriggerActionFlow *)v6 getNextState];

  v8 = objc_alloc_init(HUTriggerBuilderContext);
  trigger = [builderCopy trigger];
  [(HUTriggerBuilderContext *)v8 setShowTriggerDeleteButton:trigger != 0];

  context = [builderCopy context];
  suggestionItem = [context suggestionItem];
  [(HUTriggerBuilderContext *)v8 setSuggestionItem:suggestionItem];

  v15 = [builderCopy triggerBuilderWithContext:v8];

  v12 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v15 flow:getNextState delegate:self];
  [(HUTriggerSummaryViewController *)v12 setModalInPresentation:1];
  navigationController = [(HUTriggerTypePickerViewController *)self navigationController];
  v14 = [navigationController hu_pushPreloadableViewController:v12 animated:1];
}

- (void)recommendedTriggerModuleControllerDidSelectShowMore:(id)more
{
  v4 = [HUSimpleItemModuleTableViewController alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__HUTriggerTypePickerViewController_recommendedTriggerModuleControllerDidSelectShowMore___block_invoke_2;
  v9[3] = &unk_277DBF9B8;
  v9[4] = self;
  v5 = [(HUSimpleItemModuleTableViewController *)v4 initWithTableViewStyle:1 moduleCreator:&__block_literal_global_202 moduleControllerBuilder:v9];
  [(HUSimpleItemModuleTableViewController *)v5 setModalInPresentation:1];
  v6 = _HULocalizedStringWithDefaultValue(@"HURecommendedAutomationsSectionTitle", @"HURecommendedAutomationsSectionTitle", 1);
  [(HUSimpleItemModuleTableViewController *)v5 setTitle:v6];

  navigationController = [(HUTriggerTypePickerViewController *)self navigationController];
  v8 = [navigationController hu_pushPreloadableViewController:v5 animated:1];
}

id __89__HUTriggerTypePickerViewController_recommendedTriggerModuleControllerDidSelectShowMore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v6 = [[HURecommendedTriggerItemModule alloc] initWithItemUpdater:v4 home:v5];

  [(HURecommendedTriggerItemModule *)v6 setMaximumNumberOfShownRecommendations:0x7FFFFFFFFFFFFFFFLL];
  [(HURecommendedTriggerItemModule *)v6 setHideSectionHeaderTitle:1];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

HURecommendedTriggerItemModuleController *__89__HUTriggerTypePickerViewController_recommendedTriggerModuleControllerDidSelectShowMore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HUItemModuleController *)[HURecommendedTriggerItemModuleController alloc] initWithModule:v6];
    [(HURecommendedTriggerItemModuleController *)v7 setDelegate:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_createTriggerEditorForItem:(id)item
{
  v57[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  timerTriggerItem = [itemManager timerTriggerItem];

  if (timerTriggerItem == itemCopy)
  {
    v25 = [HUTimerTriggerEditorViewController alloc];
    v26 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    delegate = [(HUTriggerTypePickerViewController *)self delegate];
    v24 = [(HUTimerTriggerEditorViewController *)v25 initWithTimerTriggerBuilder:v26 mode:0 delegate:delegate];

    goto LABEL_16;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  leavingLocationTriggerItem = [itemManager2 leavingLocationTriggerItem];
  v57[0] = leavingLocationTriggerItem;
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  arrivingAtLocationTriggerItem = [itemManager3 arrivingAtLocationTriggerItem];
  v57[1] = arrivingAtLocationTriggerItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v12 = [v11 containsObject:itemCopy];

  if (v12)
  {
    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    itemManager4 = [(HUItemTableViewController *)self itemManager];
    leavingLocationTriggerItem2 = [itemManager4 leavingLocationTriggerItem];
    if (leavingLocationTriggerItem2 == itemCopy)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    itemManager5 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager5 home];
    v19 = [HULocationTriggerEditorSummaryViewController defaultLocationEventBuilderForHome:home eventType:v16];
    locationInterface = [v13 locationInterface];
    [locationInterface setLocationEventBuilder:v19];

    v21 = [HULocationTriggerEditorSummaryViewController alloc];
    delegate2 = [(HUTriggerTypePickerViewController *)self delegate];
    v23 = [(HULocationTriggerEditorSummaryViewController *)v21 initWithTriggerBuilder:v13 mode:0 delegate:delegate2];
  }

  else
  {
    itemManager6 = [(HUItemTableViewController *)self itemManager];
    characteristicTriggerItem = [itemManager6 characteristicTriggerItem];

    if (characteristicTriggerItem == itemCopy)
    {
      v34 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
      anonymousActionBuilders = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __65__HUTriggerTypePickerViewController__createTriggerEditorForItem___block_invoke;
      v55 = &unk_277DC1130;
      v56 = v34;
      v13 = v34;
      [anonymousActionBuilders na_each:&v52];

      eventBuilders = [v13 eventBuilders];
      v37 = [eventBuilders na_map:&__block_literal_global_111_3];

      v38 = objc_alloc(MEMORY[0x277D14530]);
      v39 = [MEMORY[0x277CBEB98] setWithArray:v37];
      v40 = [v38 initWithEventBuilders:v39];

      v41 = [HUAccessoryEventPickerViewController alloc];
      delegate3 = [(HUTriggerTypePickerViewController *)self delegate];
      v24 = [(HUAccessoryEventPickerViewController *)v41 initWithEventBuilderItem:v40 triggerBuilder:v13 mode:0 source:1 delegate:delegate3];

      goto LABEL_15;
    }

    itemManager7 = [(HUItemTableViewController *)self itemManager];
    alarmTriggerItem = [itemManager7 alarmTriggerItem];

    if (alarmTriggerItem == itemCopy)
    {
      v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
      eventBuilders2 = [v13 eventBuilders];
      v44 = [eventBuilders2 na_map:&__block_literal_global_117_0];

      v45 = objc_alloc(MEMORY[0x277D14530]);
      v46 = [MEMORY[0x277CBEB98] setWithArray:v44];
      v47 = [v45 initWithEventBuilders:v46];

      v48 = [HUAccessoryEventPickerViewController alloc];
      delegate4 = [(HUTriggerTypePickerViewController *)self delegate];
      v24 = [(HUAccessoryEventPickerViewController *)v48 initWithEventBuilderItem:v47 triggerBuilder:v13 mode:0 source:0 delegate:delegate4];

      goto LABEL_15;
    }

    itemManager8 = [(HUItemTableViewController *)self itemManager];
    customAutomationItem = [itemManager8 customAutomationItem];

    if (customAutomationItem != itemCopy)
    {
      v24 = 0;
      goto LABEL_16;
    }

    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    [v13 setName:@"Custom Automation"];
    v51 = [HUTriggerSummaryViewController alloc];
    delegate2 = [(HUTriggerTypePickerViewController *)self delegate];
    v23 = [(HUTriggerSummaryViewController *)v51 initWithTriggerBuilder:v13 mode:0 isPresentedModally:0 delegate:delegate2];
  }

  v24 = v23;

LABEL_15:
LABEL_16:

  return v24;
}

void __65__HUTriggerTypePickerViewController__createTriggerEditorForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerActionSets];
  [v4 removeAnonymousActionBuilder:v3];
}

void *__65__HUTriggerTypePickerViewController__createTriggerEditorForItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
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

void *__65__HUTriggerTypePickerViewController__createTriggerEditorForItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
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

- (id)_createTriggerBuilderOfClass:(Class)class
{
  v4 = [class alloc];
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  v7 = objc_opt_new();
  v8 = [v4 initWithHome:home context:v7];

  actionSetBuilder = [(HUTriggerTypePickerViewController *)self actionSetBuilder];

  if (actionSetBuilder)
  {
    triggerActionSets = [v8 triggerActionSets];
    actionSetBuilder2 = [(HUTriggerTypePickerViewController *)self actionSetBuilder];
    [triggerActionSets addActionSetBuilder:actionSetBuilder2];
  }

  anonymousActionBuilders = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];

  if (anonymousActionBuilders)
  {
    anonymousActionBuilders2 = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__HUTriggerTypePickerViewController__createTriggerBuilderOfClass___block_invoke;
    v15[3] = &unk_277DC1130;
    v16 = v8;
    [anonymousActionBuilders2 na_each:v15];
  }

  return v8;
}

void __66__HUTriggerTypePickerViewController__createTriggerBuilderOfClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 triggerActionSets];
  [v4 addAnonymousActionBuilder:v3];
}

- (HUTriggerEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HURecommendedTriggerItemModuleController)recommendationModuleController
{
  WeakRetained = objc_loadWeakRetained(&self->_recommendationModuleController);

  return WeakRetained;
}

@end