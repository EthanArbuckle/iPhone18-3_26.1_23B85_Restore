@interface HUSceneActionEditorViewController
- (BOOL)_allowEditingNameAndIcon;
- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (HUSceneActionEditorViewController)initWithActionSetBuilder:(id)a3 mode:(unint64_t)a4;
- (HUSceneEditorDelegate)sceneEditorDelegate;
- (NSSet)prioritizedAccessories;
- (NSString)savedName;
- (id)_actionGridViewControllerForEditorType:(unint64_t)a3;
- (id)childViewControllersToPreload;
- (id)commitChanges;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)a3;
- (id)currentTextForTextField:(id)a3 item:(id)a4;
- (id)mediaSelectionViewController:(id)a3 messageForMediaPickerUnavailableReason:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)_changeServices:(id)a3;
- (void)_deleteScene:(id)a3 indexPath:(id)a4;
- (void)_presentMediaSelection;
- (void)_sendSceneIconEditEventDidChangeColor:(BOOL)a3 didChangeIcon:(BOOL)a4;
- (void)_servicePickerDidFinish;
- (void)_testScene:(id)a3;
- (void)_updateActionSetBuilderName;
- (void)_validateDoneButton;
- (void)iconPicker:(id)a3 didPickIcon:(id)a4 withTintColor:(id)a5;
- (void)iconPicker:(id)a3 didPickIconDescriptor:(id)a4;
- (void)iconPickerDidCancel:(id)a3;
- (void)itemManagerDidUpdate:(id)a3;
- (void)nameAndIconEditorCellDidTapIcon:(id)a3;
- (void)sceneActionGridViewController:(id)a3 didUpdate:(id)a4;
- (void)serviceGridViewController:(id)a3 didTapItem:(id)a4;
- (void)setPrioritizedAccessories:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HUSceneActionEditorViewController

- (HUSceneActionEditorViewController)initWithActionSetBuilder:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277D14398]);
    v8 = [MEMORY[0x277D146E8] sharedDispatcher];
    v9 = [v8 home];
    v6 = [v7 initWithHome:v9];
  }

  v10 = [v6 home];
  v11 = [v10 hf_currentUserIsAdministrator];

  if (v11)
  {
    v12 = a4;
  }

  else
  {
    v12 = 4;
  }

  v13 = [[HUSceneActionEditorItemManager alloc] initWithActionSetBuilder:v6 mode:v12 delegate:self];
  v19.receiver = self;
  v19.super_class = HUSceneActionEditorViewController;
  v14 = [(HUItemTableViewController *)&v19 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    v14->_mode = v12;
    v14->_showCancelButton = 1;
    v14->_requiresPresentingViewControllerDismissal = 1;
    v16 = objc_opt_new();
    actionGridViewControllersByEditorType = v15->_actionGridViewControllersByEditorType;
    v15->_actionGridViewControllersByEditorType = v16;
  }

  return v15;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = HUSceneActionEditorViewController;
  [(HUItemTableViewController *)&v13 viewDidLoad];
  mode = self->_mode;
  if (mode - 1 < 2)
  {
    v4 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorNewTitle", @"HUSceneActionEditorNewTitle", 1);
    [(HUSceneActionEditorViewController *)self setTitle:v4];
    goto LABEL_6;
  }

  if (mode - 3 < 2 || !mode)
  {
    v4 = [(HUItemTableViewController *)self itemManager];
    v5 = [v4 actionSetBuilder];
    v6 = [v5 name];
    [(HUSceneActionEditorViewController *)self setTitle:v6];

LABEL_6:
  }

  if ([(HUSceneActionEditorViewController *)self showCancelButton])
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
    v8 = [(HUSceneActionEditorViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v7];
  }

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  v10 = [(HUSceneActionEditorViewController *)self navigationItem];
  [v10 setRightBarButtonItem:v9];

  v11 = [(HUSceneActionEditorViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setAccessibilityIdentifier:@"Home.NewScene.Done"];

  [(HUSceneActionEditorViewController *)self _validateDoneButton];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = HUSceneActionEditorViewController;
  [(HUItemTableViewController *)&v15 viewDidAppear:a3];
  if ([(HUSceneActionEditorViewController *)self _allowEditingNameAndIcon]&& ![(HUSceneActionEditorViewController *)self hasViewEverAppeared]&& [(HUSceneActionEditorViewController *)self mode]== 2)
  {
    v4 = [(HUItemTableViewController *)self itemManager];
    v5 = [v4 nameAndIconItem];
    v6 = [(HUItemTableViewController *)self textFieldForVisibleItem:v5];
    [v6 becomeFirstResponder];
  }

  [(HUSceneActionEditorViewController *)self setHasViewEverAppeared:1];
  v7 = [(HUSceneActionEditorViewController *)self parentViewController];
  v8 = [v7 navigationItem];
  v9 = [v8 titleView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUSceneActionEditorViewController *)self setNavigationBarTitleView:v9];
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 actionSetBuilder];
    v12 = [v11 name];
    v13 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
    v14 = [v13 summaryView];
    [v14 setPrimaryText:v12];
  }

  if (![(HUSceneActionEditorViewController *)self mode])
  {
    [MEMORY[0x277D143D8] sendEvent:35];
  }
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
  v3 = [v2 actionSetBuilder];
  v4 = [v3 name];

  return v4;
}

- (id)_actionGridViewControllerForEditorType:(unint64_t)a3
{
  v5 = [(HUSceneActionEditorViewController *)self actionGridViewControllersByEditorType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUSceneActionEditorViewController__actionGridViewControllerForEditorType___block_invoke;
  v9[3] = &unk_277DBE938;
  v9[4] = self;
  v9[5] = a3;
  v7 = [v5 na_objectForKey:v6 withDefaultValue:v9];

  return v7;
}

HUEmbeddedSceneActionGridViewController *__76__HUSceneActionEditorViewController__actionGridViewControllerForEditorType___block_invoke(uint64_t a1)
{
  v2 = [HUEmbeddedSceneActionGridViewController alloc];
  v3 = [*(a1 + 32) itemManager];
  v4 = [v3 actionSetBuilder];
  v5 = [(HUEmbeddedSceneActionGridViewController *)v2 initWithActionSetBuilder:v4];

  -[ActionGridViewController setAllowsEditing:](v5, "setAllowsEditing:", [*(a1 + 32) mode] != 4);
  [(HUEmbeddedSceneActionGridViewController *)v5 setSceneActionGridDelegate:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (v6 == 2)
  {
    v7 = [*(a1 + 32) prioritizedAccessories];
    v8 = [v7 allObjects];
    [(ActionGridViewController *)v5 setDenylistedAccessories:v8];
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    v7 = [*(a1 + 32) prioritizedAccessories];
    v8 = [v7 allObjects];
    [(ActionGridViewController *)v5 setAllowlistedAccessories:v8];
  }

LABEL_6:

  return v5;
}

- (id)commitChanges
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (v5)
  {
    [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName];
    [(HUSceneActionEditorViewController *)self setEditingName:0];
    v6 = [(HUSceneActionEditorViewController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];

    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v8];
    v10 = [(HUSceneActionEditorViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v9];

    [v8 startAnimating];
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 actionSetBuilder];
    v13 = [v12 commitItem];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke;
    v24[3] = &unk_277DB99B8;
    objc_copyWeak(&v25, &location);
    v14 = [v13 addSuccessBlock:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_2;
    v22[3] = &unk_277DB94D0;
    objc_copyWeak(&v23, &location);
    v15 = [v13 addFailureBlock:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_5;
    v20[3] = &unk_277DB7158;
    v20[4] = self;
    v16 = v7;
    v21 = v16;
    v17 = [v13 addCompletionBlock:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = [(HUSceneActionEditorViewController *)self presentationDelegate];
    v13 = [v18 finishPresentation:self animated:1];
  }

  return v13;
}

void __50__HUSceneActionEditorViewController_commitChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentationDelegate];
  v2 = [v1 finishPresentation:WeakRetained animated:1];
}

void __50__HUSceneActionEditorViewController_commitChanges__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_3;
  v8[3] = &unk_277DB7558;
  v9 = v3;
  v10 = WeakRetained;
  v6 = v3;
  v7 = [v5 afterDelay:v8 performBlock:0.2];
}

void __50__HUSceneActionEditorViewController_commitChanges__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D14640] sharedHandler];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_4;
  v4[3] = &unk_277DB8488;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 handleError:v3 retryBlock:v4 cancelBlock:0];
}

void __50__HUSceneActionEditorViewController_commitChanges__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) navigationItem];
  [v3 setRightBarButtonItem:v2];

  v4 = [*(a1 + 32) sceneEditorDelegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v8 = [*(a1 + 32) sceneEditorDelegate];
    v5 = *(a1 + 32);
    v6 = [v5 itemManager];
    v7 = [v6 actionSetBuilder];
    [v8 sceneEditor:v5 didCommitActionSet:v7];
  }
}

- (void)_cancel:(id)a3
{
  [(HUSceneActionEditorViewController *)self setEditingName:0];
  v5 = [(HUSceneActionEditorViewController *)self presentationDelegate];
  v4 = [v5 finishPresentation:self animated:1];
}

- (void)_changeServices:(id)a3
{
  [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName];
  [(HUSceneActionEditorViewController *)self setEditingName:0];
  v4 = [HUActionSetAccessoryPickerViewController alloc];
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 actionSetBuilder];
  v10 = [(HUActionSetAccessoryPickerViewController *)v4 initWithActionSetBuilder:v6 delegate:self];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v7 setModalPresentationStyle:2];
  v8 = [(HUSceneActionEditorViewController *)self view];
  [v8 endEditing:1];

  v9 = [(UIViewController *)self hu_presentPreloadableViewController:v7 animated:1];
}

- (void)_deleteScene:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 actionSetBuilder];
  v10 = [v9 actionSet];

  if (v10)
  {
    v11 = [v10 name];
    v18 = HULocalizedStringWithFormat(@"HUSceneActionEditorDeleteSceneConfirmationAlertTitle", @"%@", v12, v13, v14, v15, v16, v17, v11);

    v19 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneConfirmationAlertMessage", @"HUSceneActionEditorDeleteSceneConfirmationAlertMessage", 1);
    v20 = [(UITableViewController *)self hu_actionSheetWithTitle:v18 message:v19 indexPath:v7];
    objc_initWeak(&location, self);
    v21 = MEMORY[0x277D750F8];
    v22 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneConfirmationButtonTitle", @"HUSceneActionEditorDeleteSceneConfirmationButtonTitle", 1);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__HUSceneActionEditorViewController__deleteScene_indexPath___block_invoke;
    v27[3] = &unk_277DB9948;
    objc_copyWeak(&v29, &location);
    v28 = v6;
    v23 = [v21 actionWithTitle:v22 style:2 handler:v27];
    [v20 addAction:v23];

    v24 = MEMORY[0x277D750F8];
    v25 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneCancelButtonTitle", @"HUSceneActionEditorDeleteSceneCancelButtonTitle", 1);
    v26 = [v24 actionWithTitle:v25 style:1 handler:&__block_literal_global_135];
    [v20 addAction:v26];

    [(HUSceneActionEditorViewController *)self presentViewController:v20 animated:1 completion:0];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_NoActionSetToD.isa);
  }
}

void __60__HUSceneActionEditorViewController__deleteScene_indexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained mode] == 3)
  {
    v3 = [WeakRetained sceneEditorDelegate];
    v4 = [WeakRetained itemManager];
    v5 = [v4 actionSetBuilder];
    [v3 sceneEditor:WeakRetained removeActionSetBuilderFromTrigger:v5];

    v6 = [WeakRetained presentationDelegate];
    v7 = [v6 finishPresentation:WeakRetained animated:1];
  }

  else
  {
    v8 = [WeakRetained itemManager];
    v9 = [v8 actionSetBuilder];
    v10 = [v9 deleteActionSet];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__HUSceneActionEditorViewController__deleteScene_indexPath___block_invoke_2;
    v12[3] = &unk_277DB7158;
    v12[4] = WeakRetained;
    v13 = *(a1 + 32);
    v11 = [v10 addCompletionBlock:v12];
  }
}

void __60__HUSceneActionEditorViewController__deleteScene_indexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  if (v12)
  {
    v5 = *MEMORY[0x277D13C38];
    v6 = [*(a1 + 32) editingName];
    v7 = [v12 hf_errorWithOperationType:v5 failedItemName:v6];

    v8 = [MEMORY[0x277D14640] sharedHandler];
    [v8 handleError:v7];

LABEL_5:
    goto LABEL_6;
  }

  v9 = [a2 isEqualToString:*MEMORY[0x277CCF1A8]];
  v10 = *(a1 + 32);
  if (v9)
  {
    v7 = [v10 presentationDelegate];
    v11 = [v7 finishPresentation:*(a1 + 32) animated:1];
    goto LABEL_5;
  }

  [v10 _done:*(a1 + 40)];
LABEL_6:
}

- (void)_testScene:(id)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 home];
  v6 = [v5 hf_characteristicValueManager];

  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 actionSetBuilder];
  v9 = [v8 actions];
  v10 = [v9 na_map:&__block_literal_global_141];

  v11 = [MEMORY[0x277D2C900] combineAllFutures:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HUSceneActionEditorViewController__testScene___block_invoke_2;
  v16[3] = &unk_277DB98F8;
  v17 = v6;
  v18 = self;
  v12 = v6;
  v13 = [v11 addSuccessBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HUSceneActionEditorViewController__testScene___block_invoke_5;
  v15[3] = &unk_277DB8C00;
  v15[4] = self;
  v14 = [v13 addFailureBlock:v15];
}

void __48__HUSceneActionEditorViewController__testScene___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) beginTransactionWithReason:@"HUSceneActionEditorTransactionReasonTestScene"];
  v2 = [*(a1 + 40) itemManager];
  v3 = [v2 actionSetBuilder];
  v4 = [v3 actions];
  v5 = [v4 na_map:&__block_literal_global_144];
  v9 = [v5 na_filter:&__block_literal_global_147];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEB98] setWithArray:v9];
  v8 = [v6 executeActions:v7];

  [*(a1 + 32) commitTransactionWithReason:@"HUSceneActionEditorTransactionReasonTestScene"];
}

void __48__HUSceneActionEditorViewController__testScene___block_invoke_5(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x277D14640] sharedHandler];
  v4 = *MEMORY[0x277D13CB0];
  v5 = [*(a1 + 32) editingName];
  v6 = v5;
  if (!v5)
  {
    v6 = [*(a1 + 32) savedName];
  }

  v7 = [v8 hf_errorWithOperationType:v4 failedItemName:v6];
  [v3 handleError:v7];

  if (!v5)
  {
  }
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 nameAndIconItem];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUItemTableViewController *)self itemManager];
    v10 = [v9 actionGridItems];
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [(HUItemTableViewController *)self itemManager];
      v13 = [v12 mediaItem];
      v14 = [v5 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [(HUItemTableViewController *)self itemManager];
        v16 = [v15 showInHomeDashboardItem];
        [v5 isEqual:v16];
      }
    }
  }

  v17 = objc_opt_class();

  return v17;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v51 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 nameAndIconItem];

  if (v11 == v8)
  {
    v23 = objc_opt_class();
    v24 = v51;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v24;
      if (v25)
      {
        goto LABEL_11;
      }

      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v27 handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v23, objc_opt_class()}];
    }

    v26 = 0;
LABEL_11:

    [v26 setDelegate:self];
    [v26 setDisabled:{-[HUSceneActionEditorViewController _allowEditingNameAndIcon](self, "_allowEditingNameAndIcon") ^ 1}];
    v29 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
    v30 = [v29 font];
    [v26 setTextFieldFont:v30];

    v31 = [v26 iconButton];
    [v31 setSelected:1];

    v32 = [v26 textField];
    [v32 setAccessibilityIdentifier:@"Home.NewScene.SceneName"];

    goto LABEL_23;
  }

  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 actionGridItems];
  v14 = [v13 containsObject:v8];

  if (v14)
  {
    v15 = MEMORY[0x277D75348];
    v16 = v51;
    v17 = [v15 clearColor];
    [v16 setBackgroundColor:v17];

    v18 = [MEMORY[0x277D75348] clearColor];
    v19 = [v16 contentView];
    [v19 setBackgroundColor:v18];

    [v16 setIgnoreRounding:1];
    v20 = [(HUItemTableViewController *)self itemManager];
    v21 = [v20 displayedSectionIdentifierForSectionIndex:{objc_msgSend(v9, "section")}];

    v22 = [(HUSceneActionEditorViewController *)self _actionGridViewControllerForEditorType:[HUSceneActionEditorItemManager actionGridEditorTypeForSectionIdentifier:v21]];
    [v16 setViewController:v22];

    goto LABEL_24;
  }

  v33 = [(HUItemTableViewController *)self itemManager];
  v34 = [v33 deleteSceneItem];
  v35 = [v8 isEqual:v34];

  if (v35)
  {
    v26 = v51;
    [v26 setDestructive:1];
    if (![(HUSceneActionEditorViewController *)self mode])
    {
      v36 = @"Home.Scene.DeleteScene";
LABEL_22:
      [v26 setAccessibilityIdentifier:v36];
    }

LABEL_23:

    goto LABEL_24;
  }

  v37 = [(HUItemTableViewController *)self itemManager];
  v38 = [v37 mediaItem];
  v39 = [v8 isEqual:v38];

  if (v39)
  {
    v40 = v51;
    [v40 setAccessoryType:1];
    [v40 setHideIcon:1];

    goto LABEL_24;
  }

  v41 = [(HUItemTableViewController *)self itemManager];
  v42 = [v41 showInHomeDashboardItem];
  v43 = [v8 isEqual:v42];

  if (v43)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_WrongCellClass.isa);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v51;
      [v26 setDelegate:self];
      v36 = @"Home.Scene.AddToHomeView";
      goto LABEL_22;
    }
  }

  else
  {
    v44 = [(HUItemTableViewController *)self itemManager];
    v45 = [v44 testSceneItem];
    v46 = [v8 isEqual:v45];

    if (v46)
    {
      v47 = @"Home.Scene.TestScene";
    }

    else
    {
      v48 = [(HUItemTableViewController *)self itemManager];
      v49 = [v48 changeServicesItem];
      v50 = [v8 isEqual:v49];

      if (!v50)
      {
        goto LABEL_24;
      }

      v47 = @"Home.Scene.ChangeAccessories";
    }

    [v51 setAccessibilityIdentifier:v47];
  }

LABEL_24:
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v21.receiver = self;
  v21.super_class = HUSceneActionEditorViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v21 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUItemTableViewController *)self itemManager];
  v13 = [v12 nameAndIconItem];
  v14 = [v11 isEqual:v13];

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = v10;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v16;
      if (v17)
      {
        goto LABEL_9;
      }

      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v19 handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class(), v21.receiver, v21.super_class}];
    }

    v18 = 0;
LABEL_9:

    [v18 setDisabled:{-[HUSceneActionEditorViewController _allowEditingNameAndIcon](self, "_allowEditingNameAndIcon") ^ 1}];
  }
}

- (void)itemManagerDidUpdate:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUSceneActionEditorViewController;
  [(HUItemTableViewController *)&v9 itemManagerDidUpdate:a3];
  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  v4 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
  v5 = [v4 summaryView];

  if (v5)
  {
    v6 = [(HUItemTableViewController *)self itemManager];
    v7 = [v6 actionSetBuilder];
    v8 = [v7 name];
    [v5 setPrimaryText:v8];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = HUSceneActionEditorViewController;
  if ([(HUItemTableViewController *)&v9 shouldHideSeparatorsForCell:v6 indexPath:a4]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)childViewControllersToPreload
{
  v3 = +[HUSceneActionEditorItemManager allActionGridEditorSectionIdentifiers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HUSceneActionEditorViewController_childViewControllersToPreload__block_invoke;
  v7[3] = &unk_277DBE960;
  v7[4] = self;
  v4 = [v3 na_map:v7];
  v5 = [v4 allObjects];

  return v5;
}

id __66__HUSceneActionEditorViewController_childViewControllersToPreload__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemManager];
  v5 = [v4 sectionIndexForDisplayedSectionIdentifier:v3];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _actionGridViewControllerForEditorType:{+[HUSceneActionEditorItemManager actionGridEditorTypeForSectionIdentifier:](HUSceneActionEditorItemManager, "actionGridEditorTypeForSectionIdentifier:", v3)}];
  }

  return v6;
}

- (id)currentTextForTextField:(id)a3 item:(id)a4
{
  v5 = [(HUSceneActionEditorViewController *)self editingName:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(HUSceneActionEditorViewController *)self savedName];
  }

  v8 = v7;

  return v8;
}

- (void)textDidChange:(id)a3 forTextField:(id)a4 item:(id)a5
{
  [(HUSceneActionEditorViewController *)self setEditingName:a3, a4, a5];
  v6 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
  v8 = [v6 summaryView];

  if (v8)
  {
    v7 = [(HUSceneActionEditorViewController *)self editingName];
    [v8 setPrimaryText:v7];
  }
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName:a3];

  [(HUSceneActionEditorViewController *)self setEditingName:0];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 changeServicesItem];
  if (v7 == v9)
  {
    v16 = 1;
  }

  else
  {
    v10 = [(HUItemTableViewController *)self itemManager];
    v11 = [v10 testSceneItem];
    if (v7 == v11)
    {
      v16 = 1;
    }

    else
    {
      v12 = [(HUItemTableViewController *)self itemManager];
      v13 = [v12 deleteSceneItem];
      if (v7 == v13)
      {
        v16 = 1;
      }

      else
      {
        v14 = [(HUItemTableViewController *)self itemManager];
        v15 = [v14 mediaItem];
        v16 = v7 == v15;
      }
    }
  }

  return v16;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = HUSceneActionEditorViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v18 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v18.receiver, v18.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 changeServicesItem];

  if (v9 == v11)
  {
    [(HUSceneActionEditorViewController *)self _changeServices:v9];
  }

  else
  {
    v12 = [(HUItemTableViewController *)self itemManager];
    v13 = [v12 testSceneItem];

    if (v9 == v13)
    {
      [(HUSceneActionEditorViewController *)self _testScene:v9];
    }

    else
    {
      v14 = [(HUItemTableViewController *)self itemManager];
      v15 = [v14 deleteSceneItem];

      if (v9 == v15)
      {
        [(HUSceneActionEditorViewController *)self _deleteScene:v9 indexPath:v6];
      }

      else
      {
        v16 = [(HUItemTableViewController *)self itemManager];
        v17 = [v16 mediaItem];

        if (v9 == v17)
        {
          [(HUSceneActionEditorViewController *)self _presentMediaSelection];
        }
      }
    }
  }
}

- (void)_updateActionSetBuilderName
{
  v4 = MEMORY[0x277D14CE8];
  v5 = [(HUSceneActionEditorViewController *)self editingName];
  v6 = [v4 sanitizeUserEnteredHomeKitName:v5];
  [(HUSceneActionEditorViewController *)self setEditingName:v6];

  v7 = [(HUSceneActionEditorViewController *)self editingName];
  if (!v7 || (v8 = v7, -[HUSceneActionEditorViewController editingName](self, "editingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, !v10))
  {
    v11 = [(HUSceneActionEditorViewController *)self savedName];
    v12 = [v11 mutableCopy];
    [(HUSceneActionEditorViewController *)self setEditingName:v12];

    v13 = [(HUSceneActionEditorViewController *)self editingName];
    v14 = [(HUItemTableViewController *)self itemManager];
    v15 = [v14 nameAndIconItem];
    v16 = [(HUItemTableViewController *)self textFieldForVisibleItem:v15];
    [v16 setText:v13];
  }

  v17 = [(HUSceneActionEditorViewController *)self editingName];
  v18 = [v17 copy];
  v19 = [(HUItemTableViewController *)self itemManager];
  v20 = [v19 actionSetBuilder];
  [v20 setName:v18];

  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  v24 = [(HUItemTableViewController *)self itemManager];
  v21 = [(HUItemTableViewController *)self itemManager];
  v22 = [v21 instructionsItems];
  v23 = [v24 updateResultsForItems:v22 senderSelector:a2];
}

- (void)_validateDoneButton
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v10 = [v4 actionSetBuilder];

  v5 = [v10 actions];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [v10 name];
    v7 = [v2 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HUSceneActionEditorViewController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:v7];

  if (v6)
  {
  }
}

- (BOOL)_allowEditingNameAndIcon
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 actionSetBuilder];

  if ([(HUSceneActionEditorViewController *)self mode]== 4)
  {
    v5 = 0;
  }

  else
  {
    if (_MergedGlobals_4_2 != -1)
    {
      dispatch_once(&_MergedGlobals_4_2, &__block_literal_global_193);
    }

    v6 = qword_27C837F40;
    v7 = [v4 actionSet];
    if (v7)
    {
      v8 = [v4 actionSet];
      v9 = [v8 actionSetType];
      v5 = [v6 containsObject:v9];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

void __61__HUSceneActionEditorViewController__allowEditingNameAndIcon__block_invoke_2()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF198];
  v6[0] = *MEMORY[0x277CCF1A8];
  v6[1] = v1;
  v2 = *MEMORY[0x277CCF180];
  v6[2] = *MEMORY[0x277CCF1B0];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277CCF188];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27C837F40;
  qword_27C837F40 = v4;
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUSceneActionEditorViewController *)self tableView];
  v18 = [v7 indexPathForCell:v6];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v18];

  v10 = [(HUItemTableViewController *)self itemManager];
  v11 = [v10 showInHomeDashboardItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [(HUItemTableViewController *)self itemManager];
    v14 = [v13 actionSetBuilder];
    [v14 setShowInHomeDashboard:v4];
  }

  v15 = MEMORY[0x277D143D8];
  v16 = [v9 latestResults];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  [v15 sendSwitchCellToggleEventForItem:v9 isOn:v4 title:v17 fromSourceViewController:self];
}

- (void)_servicePickerDidFinish
{
  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 itemsToHideWhenEmpty];
  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 instructionsItems];
  v8 = [v5 setByAddingObjectsFromSet:v7];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 updateResultsForItems:v8 senderSelector:a2];

  v11 = [(HUSceneActionEditorViewController *)self actionGridViewControllersByEditorType];
  v12 = [v11 allValues];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HUSceneActionEditorViewController__servicePickerDidFinish__block_invoke;
  v14[3] = &__block_descriptor_40_e40_v16__0__HUItemCollectionViewController_8l;
  v14[4] = a2;
  [v12 na_each:v14];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HUSceneActionEditorViewController__servicePickerDidFinish__block_invoke_2;
  v13[3] = &unk_277DB8488;
  v13[4] = self;
  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:v13];
}

void __60__HUSceneActionEditorViewController__servicePickerDidFinish__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 itemManager];
  v3 = [v4 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 32)];
}

void __60__HUSceneActionEditorViewController__servicePickerDidFinish__block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 diffableDataSourceDisabled];

  v4 = *(a1 + 32);
  if (v3)
  {
    v10 = [v4 tableView];
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v10 reloadSections:v5 withRowAnimation:5];
  }

  else
  {
    v6 = [v4 itemManager];
    v7 = [v6 itemSectionForSectionIndex:1];

    if (v7)
    {
      v8 = [*(a1 + 32) itemManager];
      v11[0] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [v8 reloadUIRepresentationForSections:v9 withAnimation:0];
    }
  }
}

- (void)nameAndIconEditorCellDidTapIcon:(id)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 actionSetBuilder];
  v12 = [v5 iconDescriptor];

  v6 = [(HUItemTableViewController *)self itemManager];
  v7 = [v6 actionSetBuilder];
  v8 = [v7 iconTintColor];

  v9 = +[HUSymbolIconPickerViewController sceneIconDescriptors];
  v10 = [[HUSymbolIconPickerViewController alloc] initWithIconDescriptors:v9 selectedIconDescriptor:v12 selectedTintColor:v8 delegate:self];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  [(HUSceneActionEditorViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)iconPickerDidCancel:(id)a3
{
  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];

  [(HUSceneActionEditorViewController *)self _sendSceneIconEditEventDidChangeColor:0 didChangeIcon:0];
}

- (void)iconPicker:(id)a3 didPickIcon:(id)a4 withTintColor:(id)a5
{
  v54 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v53 = v9;
  if (!v9)
  {
    v22 = 0;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = 0;
    v24 = v53;
    goto LABEL_16;
  }

  objc_opt_class();
  v12 = v9;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [(HUItemTableViewController *)self itemManager];
    [v15 actionSetBuilder];
    v52 = v11;
    v17 = v16 = a2;
    v18 = [v17 iconDescriptor];
    v19 = [v18 imageIdentifier];
    v20 = [v14 imageIdentifier];
    v21 = [v19 isEqualToString:v20] ^ 1;

    v22 = v21;
    a2 = v16;
    v11 = v52;
  }

  else
  {
    v22 = 0;
  }

  v25 = [(HUItemTableViewController *)self itemManager];
  v26 = [v25 actionSetBuilder];
  [v26 setIconDescriptor:v12];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = [(HUItemTableViewController *)self itemManager];
  v28 = [v27 actionSetBuilder];
  v29 = [v28 iconTintColor];

  v30 = [(HUItemTableViewController *)self itemManager];
  v31 = [v30 actionSetBuilder];
  v32 = [v31 actionSet];
  v33 = v32 | v29;

  if (v33 || ([MEMORY[0x277D75348] systemOrangeColor], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v11, "isEqual:", v34), v34, (v35 & 1) == 0))
  {
    v23 = [v29 isEqual:v11] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = v53;
  v36 = [(HUItemTableViewController *)self itemManager];
  v37 = [v36 actionSetBuilder];
  [v37 setIconTintColor:v11];

LABEL_16:
  v38 = [(HUItemTableViewController *)self itemManager];
  v39 = MEMORY[0x277CBEB98];
  v40 = [(HUItemTableViewController *)self itemManager];
  v41 = [v40 nameAndIconItem];
  v42 = [v39 setWithObject:v41];
  v43 = [v38 updateResultsForItems:v42 senderSelector:a2];

  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    v44 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
    v45 = [v44 summaryView];
    v46 = [v45 baseIconView];
    v47 = [v46 configuration];

    if (v47)
    {
      v48 = [v47 copyWithIconDescriptor:v24];
      v49 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
      v50 = [v49 summaryView];
      v51 = [v50 baseIconView];
      [v51 setConfiguration:v48];
    }
  }

  [(HUSceneActionEditorViewController *)self _sendSceneIconEditEventDidChangeColor:v23 didChangeIcon:v22];
}

- (void)iconPicker:(id)a3 didPickIconDescriptor:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(HUItemTableViewController *)self itemManager];
    v8 = [v7 actionSetBuilder];
    [v8 setIconDescriptor:v6];
  }

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = MEMORY[0x277CBEB98];
  v11 = [(HUItemTableViewController *)self itemManager];
  v12 = [v11 nameAndIconItem];
  v13 = [v10 setWithObject:v12];
  v14 = [v9 updateResultsForItems:v13 senderSelector:a2];

  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentMediaSelection
{
  v3 = [(HUItemTableViewController *)self itemManager];
  v6 = [v3 actionSetBuilder];

  v4 = [[HUMediaSelectionViewController alloc] initWithActionSetBuilder:v6];
  [(HUMediaSelectionViewController *)v4 setDelegate:self];
  v5 = [(HUSceneActionEditorViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

- (void)sceneActionGridViewController:(id)a3 didUpdate:(id)a4
{
  if ([a4 na_any:&__block_literal_global_202])
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v6 = MEMORY[0x277CBEB98];
    v7 = [(HUItemTableViewController *)self itemManager];
    v8 = [v7 mediaItem];
    v9 = [v6 setWithObject:v8];
    v10 = [v11 updateResultsForItems:v9 senderSelector:a2];
  }
}

uint64_t __77__HUSceneActionEditorViewController_sceneActionGridViewController_didUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)serviceGridViewController:(id)a3 didTapItem:(id)a4
{
  v17 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = v17;
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
      v14 = [v13 mediaItem];
      v15 = [v12 setWithObject:v14];
      v16 = [v11 updateResultsForItems:v15 senderSelector:a2];
    }
  }
}

- (id)mediaSelectionViewController:(id)a3 messageForMediaPickerUnavailableReason:(int64_t)a4
{
  v4 = @"HUSceneMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
  if (a4 != 1)
  {
    v4 = 0;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return @"HUSceneMediaPickerUnavailableMusicAppUninstalledPromptMessage";
  }
}

- (void)_sendSceneIconEditEventDidChangeColor:(BOOL)a3 didChangeIcon:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = *MEMORY[0x277D136A0];
  v22 = v7;
  if (v5 || v4)
  {
    [v7 na_safeSetObject:MEMORY[0x277CBEC38] forKey:v8];
    if (v5)
    {
      v9 = [(HUItemTableViewController *)self itemManager];
      v10 = [v9 actionSetBuilder];
      v11 = [v10 iconTintColor];
      v12 = [v11 _debugName];
      [v22 na_safeSetObject:v12 forKey:*MEMORY[0x277D13698]];
    }

    if (v4)
    {
      v13 = [(HUItemTableViewController *)self itemManager];
      v14 = [v13 actionSetBuilder];
      v15 = [v14 iconDescriptor];
      v16 = [v15 imageIdentifier];
      [v22 na_safeSetObject:v16 forKey:*MEMORY[0x277D136A8]];
    }
  }

  else
  {
    [v7 na_safeSetObject:MEMORY[0x277CBEC28] forKey:v8];
  }

  v17 = [(HUItemTableViewController *)self itemManager];
  v18 = [v17 actionSetBuilder];
  v19 = [v18 actionSet];
  v20 = v19 == 0;

  v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  [v22 na_safeSetObject:v21 forKey:*MEMORY[0x277D136B0]];

  [MEMORY[0x277D143D8] sendEvent:38 withData:v22];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUSceneEditorDelegate)sceneEditorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneEditorDelegate);

  return WeakRetained;
}

@end