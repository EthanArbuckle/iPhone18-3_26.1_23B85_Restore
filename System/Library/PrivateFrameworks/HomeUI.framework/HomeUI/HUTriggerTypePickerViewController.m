@interface HUTriggerTypePickerViewController
- (BOOL)showSuggestedAutomations;
- (BOOL)triggerEditor:(id)a3 shouldCommitTriggerBuilder:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HURecommendedTriggerItemModuleController)recommendationModuleController;
- (HUTriggerEditorDelegate)delegate;
- (HUTriggerTypePickerViewController)initWithActionSetBuilder:(id)a3 anonymousActionBuilders:(id)a4 delegate:(id)a5;
- (id)_createTriggerBuilderOfClass:(Class)a3;
- (id)_createTriggerEditorForItem:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
- (void)_cancel:(id)a3;
- (void)recommendedTriggerModuleController:(id)a3 didSelectToOpenTriggerBuilder:(id)a4;
- (void)recommendedTriggerModuleControllerDidSelectShowMore:(id)a3;
- (void)setShowSuggestedAutomations:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerEditor:(id)a3 didCommitTriggerBuilder:(id)a4 withError:(id)a5;
- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUTriggerTypePickerViewController

- (HUTriggerTypePickerViewController)initWithActionSetBuilder:(id)a3 anonymousActionBuilders:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HFItemManager *)[HUTriggerTypePickerItemManager alloc] initWithDelegate:self];
  v19.receiver = self;
  v19.super_class = HUTriggerTypePickerViewController;
  v13 = [(HUItemTableViewController *)&v19 initWithItemManager:v12 tableViewStyle:1];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v11);
    objc_storeStrong(&v14->_actionSetBuilder, a3);
    objc_storeStrong(&v14->_anonymousActionBuilders, a4);
    v15 = _HULocalizedStringWithDefaultValue(@"HUTriggerTypePickerTitle", @"HUTriggerTypePickerTitle", 1);
    [(HUTriggerTypePickerViewController *)v14 setTitle:v15];

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel__cancel_];
    v17 = [(HUTriggerTypePickerViewController *)v14 navigationItem];
    [v17 setLeftBarButtonItem:v16];
  }

  return v14;
}

- (void)setShowSuggestedAutomations:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUItemTableViewController *)self itemManager];
  [v4 setShowSuggestedAutomations:v3];
}

- (BOOL)showSuggestedAutomations
{
  v2 = [(HUItemTableViewController *)self itemManager];
  v3 = [v2 showSuggestedAutomations];

  return v3;
}

- (void)_cancel:(id)a3
{
  v4 = [(HUTriggerTypePickerViewController *)self delegate];
  [v4 triggerEditor:self didFinishWithTriggerBuilder:0];
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 suggestedAutomationsModule];

  if (v6 == v4)
  {
    v7 = [(HUItemModuleController *)[HURecommendedTriggerItemModuleController alloc] initWithModule:v4];
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

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v4 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v5 = objc_opt_class();

  return v5;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v11 latestResults];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    v15 = [v14 BOOLValue];

    v16 = v10;
    [v16 setDisabled:v15];
    [v16 setAccessoryType:v15 ^ 1];
    if (v15)
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
  [(HUItemTableViewController *)&v18 updateCell:v10 forItem:v11 indexPath:v12 animated:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17.receiver = self;
  v17.super_class = HUTriggerTypePickerViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v17 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v17.receiver, v17.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [v9 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
  v12 = [v11 BOOLValue];

  if ((v12 & 1) == 0)
  {
    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerEditorForItem:v9];
    v14 = v13;
    if (v13)
    {
      [v13 setModalInPresentation:1];
      v15 = [(HUTriggerTypePickerViewController *)self navigationController];
      v16 = [v15 hu_pushPreloadableViewController:v14 animated:1];
    }
  }
}

- (void)triggerEditor:(id)a3 didFinishWithTriggerBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUTriggerTypePickerViewController *)self delegate];
  [v8 triggerEditor:v7 didFinishWithTriggerBuilder:v6];
}

- (BOOL)triggerEditor:(id)a3 shouldCommitTriggerBuilder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUTriggerTypePickerViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUTriggerTypePickerViewController *)self delegate];
    v11 = [v10 triggerEditor:v6 shouldCommitTriggerBuilder:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)triggerEditor:(id)a3 didCommitTriggerBuilder:(id)a4 withError:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 context];
  v11 = [v10 suggestionItem];
  if (v11)
  {
    v12 = v11;
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 suggestedAutomationsModule];
    v15 = [v8 context];
    v16 = [v15 suggestionItem];
    v17 = [v14 containsItem:v16];

    if (!v17)
    {
      goto LABEL_5;
    }

    v10 = [(HUTriggerTypePickerViewController *)self recommendationModuleController];
    v18 = [v8 context];
    v19 = [v18 suggestionItem];
    [v10 didCommitTriggerBuilderForItem:v19 withError:v9];
  }

LABEL_5:
  v20 = [(HUTriggerTypePickerViewController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(HUTriggerTypePickerViewController *)self delegate];
    [v22 triggerEditor:v23 didCommitTriggerBuilder:v8 withError:v9];
  }
}

- (void)recommendedTriggerModuleController:(id)a3 didSelectToOpenTriggerBuilder:(id)a4
{
  v5 = a4;
  v6 = [[HUTriggerActionFlow alloc] initWithFlowState:0];
  v7 = [(HUTriggerActionFlow *)v6 getNextState];

  v8 = objc_alloc_init(HUTriggerBuilderContext);
  v9 = [v5 trigger];
  [(HUTriggerBuilderContext *)v8 setShowTriggerDeleteButton:v9 != 0];

  v10 = [v5 context];
  v11 = [v10 suggestionItem];
  [(HUTriggerBuilderContext *)v8 setSuggestionItem:v11];

  v15 = [v5 triggerBuilderWithContext:v8];

  v12 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:v15 flow:v7 delegate:self];
  [(HUTriggerSummaryViewController *)v12 setModalInPresentation:1];
  v13 = [(HUTriggerTypePickerViewController *)self navigationController];
  v14 = [v13 hu_pushPreloadableViewController:v12 animated:1];
}

- (void)recommendedTriggerModuleControllerDidSelectShowMore:(id)a3
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

  v7 = [(HUTriggerTypePickerViewController *)self navigationController];
  v8 = [v7 hu_pushPreloadableViewController:v5 animated:1];
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

- (id)_createTriggerEditorForItem:(id)a3
{
  v57[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 timerTriggerItem];

  if (v6 == v4)
  {
    v25 = [HUTimerTriggerEditorViewController alloc];
    v26 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    v27 = [(HUTriggerTypePickerViewController *)self delegate];
    v24 = [(HUTimerTriggerEditorViewController *)v25 initWithTimerTriggerBuilder:v26 mode:0 delegate:v27];

    goto LABEL_16;
  }

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 leavingLocationTriggerItem];
  v57[0] = v8;
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 arrivingAtLocationTriggerItem];
  v57[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v12 = [v11 containsObject:v4];

  if (v12)
  {
    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    v14 = [(HUItemTableViewController *)self itemManager];
    v15 = [v14 leavingLocationTriggerItem];
    if (v15 == v4)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    v17 = [(HUItemTableViewController *)self itemManager];
    v18 = [v17 home];
    v19 = [HULocationTriggerEditorSummaryViewController defaultLocationEventBuilderForHome:v18 eventType:v16];
    v20 = [v13 locationInterface];
    [v20 setLocationEventBuilder:v19];

    v21 = [HULocationTriggerEditorSummaryViewController alloc];
    v22 = [(HUTriggerTypePickerViewController *)self delegate];
    v23 = [(HULocationTriggerEditorSummaryViewController *)v21 initWithTriggerBuilder:v13 mode:0 delegate:v22];
  }

  else
  {
    v28 = [(HUItemTableViewController *)self itemManager];
    v29 = [v28 characteristicTriggerItem];

    if (v29 == v4)
    {
      v34 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
      v35 = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];
      v52 = MEMORY[0x277D85DD0];
      v53 = 3221225472;
      v54 = __65__HUTriggerTypePickerViewController__createTriggerEditorForItem___block_invoke;
      v55 = &unk_277DC1130;
      v56 = v34;
      v13 = v34;
      [v35 na_each:&v52];

      v36 = [v13 eventBuilders];
      v37 = [v36 na_map:&__block_literal_global_111_3];

      v38 = objc_alloc(MEMORY[0x277D14530]);
      v39 = [MEMORY[0x277CBEB98] setWithArray:v37];
      v40 = [v38 initWithEventBuilders:v39];

      v41 = [HUAccessoryEventPickerViewController alloc];
      v42 = [(HUTriggerTypePickerViewController *)self delegate];
      v24 = [(HUAccessoryEventPickerViewController *)v41 initWithEventBuilderItem:v40 triggerBuilder:v13 mode:0 source:1 delegate:v42];

      goto LABEL_15;
    }

    v30 = [(HUItemTableViewController *)self itemManager];
    v31 = [v30 alarmTriggerItem];

    if (v31 == v4)
    {
      v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
      v43 = [v13 eventBuilders];
      v44 = [v43 na_map:&__block_literal_global_117_0];

      v45 = objc_alloc(MEMORY[0x277D14530]);
      v46 = [MEMORY[0x277CBEB98] setWithArray:v44];
      v47 = [v45 initWithEventBuilders:v46];

      v48 = [HUAccessoryEventPickerViewController alloc];
      v49 = [(HUTriggerTypePickerViewController *)self delegate];
      v24 = [(HUAccessoryEventPickerViewController *)v48 initWithEventBuilderItem:v47 triggerBuilder:v13 mode:0 source:0 delegate:v49];

      goto LABEL_15;
    }

    v32 = [(HUItemTableViewController *)self itemManager];
    v33 = [v32 customAutomationItem];

    if (v33 != v4)
    {
      v24 = 0;
      goto LABEL_16;
    }

    v13 = [(HUTriggerTypePickerViewController *)self _createTriggerBuilderOfClass:objc_opt_class()];
    [v13 setName:@"Custom Automation"];
    v51 = [HUTriggerSummaryViewController alloc];
    v22 = [(HUTriggerTypePickerViewController *)self delegate];
    v23 = [(HUTriggerSummaryViewController *)v51 initWithTriggerBuilder:v13 mode:0 isPresentedModally:0 delegate:v22];
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

- (id)_createTriggerBuilderOfClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 home];
  v7 = objc_opt_new();
  v8 = [v4 initWithHome:v6 context:v7];

  v9 = [(HUTriggerTypePickerViewController *)self actionSetBuilder];

  if (v9)
  {
    v10 = [v8 triggerActionSets];
    v11 = [(HUTriggerTypePickerViewController *)self actionSetBuilder];
    [v10 addActionSetBuilder:v11];
  }

  v12 = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];

  if (v12)
  {
    v13 = [(HUTriggerTypePickerViewController *)self anonymousActionBuilders];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__HUTriggerTypePickerViewController__createTriggerBuilderOfClass___block_invoke;
    v15[3] = &unk_277DC1130;
    v16 = v8;
    [v13 na_each:v15];
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