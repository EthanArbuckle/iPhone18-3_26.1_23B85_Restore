@interface HUSceneActionEditorViewController
- (BOOL)_allowEditingNameAndIcon;
- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUPresentationDelegate)presentationDelegate;
- (HUSceneActionEditorViewController)initWithActionSetBuilder:(id)builder mode:(unint64_t)mode;
- (HUSceneEditorDelegate)sceneEditorDelegate;
- (NSSet)prioritizedAccessories;
- (NSString)savedName;
- (id)_actionGridViewControllerForEditorType:(unint64_t)type;
- (id)childViewControllersToPreload;
- (id)commitChanges;
- (id)contentConfigurationForHeaderViewAtSectionIndex:(unint64_t)index;
- (id)currentTextForTextField:(id)field item:(id)item;
- (id)mediaSelectionViewController:(id)controller messageForMediaPickerUnavailableReason:(int64_t)reason;
- (void)_cancel:(id)_cancel;
- (void)_changeServices:(id)services;
- (void)_deleteScene:(id)scene indexPath:(id)path;
- (void)_presentMediaSelection;
- (void)_sendSceneIconEditEventDidChangeColor:(BOOL)color didChangeIcon:(BOOL)icon;
- (void)_servicePickerDidFinish;
- (void)_testScene:(id)scene;
- (void)_updateActionSetBuilderName;
- (void)_validateDoneButton;
- (void)iconPicker:(id)picker didPickIcon:(id)icon withTintColor:(id)color;
- (void)iconPicker:(id)picker didPickIconDescriptor:(id)descriptor;
- (void)iconPickerDidCancel:(id)cancel;
- (void)itemManagerDidUpdate:(id)update;
- (void)nameAndIconEditorCellDidTapIcon:(id)icon;
- (void)sceneActionGridViewController:(id)controller didUpdate:(id)update;
- (void)serviceGridViewController:(id)controller didTapItem:(id)item;
- (void)setPrioritizedAccessories:(id)accessories;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textDidChange:(id)change forTextField:(id)field item:(id)item;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HUSceneActionEditorViewController

- (HUSceneActionEditorViewController)initWithActionSetBuilder:(id)builder mode:(unint64_t)mode
{
  builderCopy = builder;
  if (!builderCopy)
  {
    v7 = objc_alloc(MEMORY[0x277D14398]);
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    home = [mEMORY[0x277D146E8] home];
    builderCopy = [v7 initWithHome:home];
  }

  home2 = [builderCopy home];
  hf_currentUserIsAdministrator = [home2 hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = 4;
  }

  v13 = [[HUSceneActionEditorItemManager alloc] initWithActionSetBuilder:builderCopy mode:modeCopy delegate:self];
  v19.receiver = self;
  v19.super_class = HUSceneActionEditorViewController;
  v14 = [(HUItemTableViewController *)&v19 initWithItemManager:v13 tableViewStyle:1];
  v15 = v14;
  if (v14)
  {
    v14->_mode = modeCopy;
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
    itemManager = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorNewTitle", @"HUSceneActionEditorNewTitle", 1);
    [(HUSceneActionEditorViewController *)self setTitle:itemManager];
    goto LABEL_6;
  }

  if (mode - 3 < 2 || !mode)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager actionSetBuilder];
    name = [actionSetBuilder name];
    [(HUSceneActionEditorViewController *)self setTitle:name];

LABEL_6:
  }

  if ([(HUSceneActionEditorViewController *)self showCancelButton])
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
    navigationItem = [(HUSceneActionEditorViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v7];
  }

  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem2 = [(HUSceneActionEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v9];

  navigationItem3 = [(HUSceneActionEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityIdentifier:@"Home.NewScene.Done"];

  [(HUSceneActionEditorViewController *)self _validateDoneButton];
}

- (void)viewDidAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = HUSceneActionEditorViewController;
  [(HUItemTableViewController *)&v15 viewDidAppear:appear];
  if ([(HUSceneActionEditorViewController *)self _allowEditingNameAndIcon]&& ![(HUSceneActionEditorViewController *)self hasViewEverAppeared]&& [(HUSceneActionEditorViewController *)self mode]== 2)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    nameAndIconItem = [itemManager nameAndIconItem];
    v6 = [(HUItemTableViewController *)self textFieldForVisibleItem:nameAndIconItem];
    [v6 becomeFirstResponder];
  }

  [(HUSceneActionEditorViewController *)self setHasViewEverAppeared:1];
  parentViewController = [(HUSceneActionEditorViewController *)self parentViewController];
  navigationItem = [parentViewController navigationItem];
  titleView = [navigationItem titleView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUSceneActionEditorViewController *)self setNavigationBarTitleView:titleView];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager2 actionSetBuilder];
    name = [actionSetBuilder name];
    navigationBarTitleView = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
    summaryView = [navigationBarTitleView summaryView];
    [summaryView setPrimaryText:name];
  }

  if (![(HUSceneActionEditorViewController *)self mode])
  {
    [MEMORY[0x277D143D8] sendEvent:35];
  }
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
  actionSetBuilder = [itemManager actionSetBuilder];
  name = [actionSetBuilder name];

  return name;
}

- (id)_actionGridViewControllerForEditorType:(unint64_t)type
{
  actionGridViewControllersByEditorType = [(HUSceneActionEditorViewController *)self actionGridViewControllersByEditorType];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HUSceneActionEditorViewController__actionGridViewControllerForEditorType___block_invoke;
  v9[3] = &unk_277DBE938;
  v9[4] = self;
  v9[5] = type;
  v7 = [actionGridViewControllersByEditorType na_objectForKey:v6 withDefaultValue:v9];

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
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName];
    [(HUSceneActionEditorViewController *)self setEditingName:0];
    navigationItem = [(HUSceneActionEditorViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v8];
    navigationItem2 = [(HUSceneActionEditorViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v9];

    [v8 startAnimating];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager2 actionSetBuilder];
    commitItem = [actionSetBuilder commitItem];

    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke;
    v24[3] = &unk_277DB99B8;
    objc_copyWeak(&v25, &location);
    v14 = [commitItem addSuccessBlock:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_2;
    v22[3] = &unk_277DB94D0;
    objc_copyWeak(&v23, &location);
    v15 = [commitItem addFailureBlock:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__HUSceneActionEditorViewController_commitChanges__block_invoke_5;
    v20[3] = &unk_277DB7158;
    v20[4] = self;
    v16 = rightBarButtonItem;
    v21 = v16;
    v17 = [commitItem addCompletionBlock:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    presentationDelegate = [(HUSceneActionEditorViewController *)self presentationDelegate];
    commitItem = [presentationDelegate finishPresentation:self animated:1];
  }

  return commitItem;
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

- (void)_cancel:(id)_cancel
{
  [(HUSceneActionEditorViewController *)self setEditingName:0];
  presentationDelegate = [(HUSceneActionEditorViewController *)self presentationDelegate];
  v4 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)_changeServices:(id)services
{
  [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName];
  [(HUSceneActionEditorViewController *)self setEditingName:0];
  v4 = [HUActionSetAccessoryPickerViewController alloc];
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];
  v10 = [(HUActionSetAccessoryPickerViewController *)v4 initWithActionSetBuilder:actionSetBuilder delegate:self];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v7 setModalPresentationStyle:2];
  view = [(HUSceneActionEditorViewController *)self view];
  [view endEditing:1];

  v9 = [(UIViewController *)self hu_presentPreloadableViewController:v7 animated:1];
}

- (void)_deleteScene:(id)scene indexPath:(id)path
{
  sceneCopy = scene;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];
  actionSet = [actionSetBuilder actionSet];

  if (actionSet)
  {
    name = [actionSet name];
    v18 = HULocalizedStringWithFormat(@"HUSceneActionEditorDeleteSceneConfirmationAlertTitle", @"%@", v12, v13, v14, v15, v16, v17, name);

    v19 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneConfirmationAlertMessage", @"HUSceneActionEditorDeleteSceneConfirmationAlertMessage", 1);
    v20 = [(UITableViewController *)self hu_actionSheetWithTitle:v18 message:v19 indexPath:pathCopy];
    objc_initWeak(&location, self);
    v21 = MEMORY[0x277D750F8];
    v22 = _HULocalizedStringWithDefaultValue(@"HUSceneActionEditorDeleteSceneConfirmationButtonTitle", @"HUSceneActionEditorDeleteSceneConfirmationButtonTitle", 1);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__HUSceneActionEditorViewController__deleteScene_indexPath___block_invoke;
    v27[3] = &unk_277DB9948;
    objc_copyWeak(&v29, &location);
    v28 = sceneCopy;
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

- (void)_testScene:(id)scene
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  home = [itemManager home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager2 actionSetBuilder];
  actions = [actionSetBuilder actions];
  v10 = [actions na_map:&__block_literal_global_141];

  v11 = [MEMORY[0x277D2C900] combineAllFutures:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HUSceneActionEditorViewController__testScene___block_invoke_2;
  v16[3] = &unk_277DB98F8;
  v17 = hf_characteristicValueManager;
  selfCopy = self;
  v12 = hf_characteristicValueManager;
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

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  itemManager = [(HUItemTableViewController *)self itemManager];
  nameAndIconItem = [itemManager nameAndIconItem];
  v8 = [itemCopy isEqual:nameAndIconItem];

  if ((v8 & 1) == 0)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    actionGridItems = [itemManager2 actionGridItems];
    v11 = [actionGridItems containsObject:itemCopy];

    if ((v11 & 1) == 0)
    {
      itemManager3 = [(HUItemTableViewController *)self itemManager];
      mediaItem = [itemManager3 mediaItem];
      v14 = [itemCopy isEqual:mediaItem];

      if ((v14 & 1) == 0)
      {
        itemManager4 = [(HUItemTableViewController *)self itemManager];
        showInHomeDashboardItem = [itemManager4 showInHomeDashboardItem];
        [itemCopy isEqual:showInHomeDashboardItem];
      }
    }
  }

  v17 = objc_opt_class();

  return v17;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  nameAndIconItem = [itemManager nameAndIconItem];

  if (nameAndIconItem == itemCopy)
  {
    v23 = objc_opt_class();
    v24 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v28 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v23, objc_opt_class()}];
    }

    v26 = 0;
LABEL_11:

    [v26 setDelegate:self];
    [v26 setDisabled:{-[HUSceneActionEditorViewController _allowEditingNameAndIcon](self, "_allowEditingNameAndIcon") ^ 1}];
    v29 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
    font = [v29 font];
    [v26 setTextFieldFont:font];

    iconButton = [v26 iconButton];
    [iconButton setSelected:1];

    textField = [v26 textField];
    [textField setAccessibilityIdentifier:@"Home.NewScene.SceneName"];

    goto LABEL_23;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  actionGridItems = [itemManager2 actionGridItems];
  v14 = [actionGridItems containsObject:itemCopy];

  if (v14)
  {
    v15 = MEMORY[0x277D75348];
    v16 = cellCopy;
    clearColor = [v15 clearColor];
    [v16 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [v16 contentView];
    [contentView setBackgroundColor:clearColor2];

    [v16 setIgnoreRounding:1];
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    v21 = [itemManager3 displayedSectionIdentifierForSectionIndex:{objc_msgSend(pathCopy, "section")}];

    v22 = [(HUSceneActionEditorViewController *)self _actionGridViewControllerForEditorType:[HUSceneActionEditorItemManager actionGridEditorTypeForSectionIdentifier:v21]];
    [v16 setViewController:v22];

    goto LABEL_24;
  }

  itemManager4 = [(HUItemTableViewController *)self itemManager];
  deleteSceneItem = [itemManager4 deleteSceneItem];
  v35 = [itemCopy isEqual:deleteSceneItem];

  if (v35)
  {
    v26 = cellCopy;
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

  itemManager5 = [(HUItemTableViewController *)self itemManager];
  mediaItem = [itemManager5 mediaItem];
  v39 = [itemCopy isEqual:mediaItem];

  if (v39)
  {
    v40 = cellCopy;
    [v40 setAccessoryType:1];
    [v40 setHideIcon:1];

    goto LABEL_24;
  }

  itemManager6 = [(HUItemTableViewController *)self itemManager];
  showInHomeDashboardItem = [itemManager6 showInHomeDashboardItem];
  v43 = [itemCopy isEqual:showInHomeDashboardItem];

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
      v26 = cellCopy;
      [v26 setDelegate:self];
      v36 = @"Home.Scene.AddToHomeView";
      goto LABEL_22;
    }
  }

  else
  {
    itemManager7 = [(HUItemTableViewController *)self itemManager];
    testSceneItem = [itemManager7 testSceneItem];
    v46 = [itemCopy isEqual:testSceneItem];

    if (v46)
    {
      v47 = @"Home.Scene.TestScene";
    }

    else
    {
      itemManager8 = [(HUItemTableViewController *)self itemManager];
      changeServicesItem = [itemManager8 changeServicesItem];
      v50 = [itemCopy isEqual:changeServicesItem];

      if (!v50)
      {
        goto LABEL_24;
      }

      v47 = @"Home.Scene.ChangeAccessories";
    }

    [cellCopy setAccessibilityIdentifier:v47];
  }

LABEL_24:
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v21.receiver = self;
  v21.super_class = HUSceneActionEditorViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v21 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  nameAndIconItem = [itemManager nameAndIconItem];
  v14 = [itemCopy isEqual:nameAndIconItem];

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = cellCopy;
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

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v20 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v15, objc_opt_class(), v21.receiver, v21.super_class}];
    }

    v18 = 0;
LABEL_9:

    [v18 setDisabled:{-[HUSceneActionEditorViewController _allowEditingNameAndIcon](self, "_allowEditingNameAndIcon") ^ 1}];
  }
}

- (void)itemManagerDidUpdate:(id)update
{
  v9.receiver = self;
  v9.super_class = HUSceneActionEditorViewController;
  [(HUItemTableViewController *)&v9 itemManagerDidUpdate:update];
  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  navigationBarTitleView = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];

  if (summaryView)
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager actionSetBuilder];
    name = [actionSetBuilder name];
    [summaryView setPrimaryText:name];
  }
}

- (BOOL)shouldHideSeparatorsForCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = HUSceneActionEditorViewController;
  if ([(HUItemTableViewController *)&v9 shouldHideSeparatorsForCell:cellCopy indexPath:path]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  allObjects = [v4 allObjects];

  return allObjects;
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

- (id)currentTextForTextField:(id)field item:(id)item
{
  v5 = [(HUSceneActionEditorViewController *)self editingName:field];
  v6 = v5;
  if (v5)
  {
    savedName = v5;
  }

  else
  {
    savedName = [(HUSceneActionEditorViewController *)self savedName];
  }

  v8 = savedName;

  return v8;
}

- (void)textDidChange:(id)change forTextField:(id)field item:(id)item
{
  [(HUSceneActionEditorViewController *)self setEditingName:change, field, item];
  navigationBarTitleView = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];

  if (summaryView)
  {
    editingName = [(HUSceneActionEditorViewController *)self editingName];
    [summaryView setPrimaryText:editingName];
  }
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  [(HUSceneActionEditorViewController *)self _updateActionSetBuilderName:editing];

  [(HUSceneActionEditorViewController *)self setEditingName:0];
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v7 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  changeServicesItem = [itemManager2 changeServicesItem];
  if (v7 == changeServicesItem)
  {
    v16 = 1;
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    testSceneItem = [itemManager3 testSceneItem];
    if (v7 == testSceneItem)
    {
      v16 = 1;
    }

    else
    {
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      deleteSceneItem = [itemManager4 deleteSceneItem];
      if (v7 == deleteSceneItem)
      {
        v16 = 1;
      }

      else
      {
        itemManager5 = [(HUItemTableViewController *)self itemManager];
        mediaItem = [itemManager5 mediaItem];
        v16 = v7 == mediaItem;
      }
    }
  }

  return v16;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = HUSceneActionEditorViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v18.receiver, v18.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  changeServicesItem = [itemManager2 changeServicesItem];

  if (v9 == changeServicesItem)
  {
    [(HUSceneActionEditorViewController *)self _changeServices:v9];
  }

  else
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    testSceneItem = [itemManager3 testSceneItem];

    if (v9 == testSceneItem)
    {
      [(HUSceneActionEditorViewController *)self _testScene:v9];
    }

    else
    {
      itemManager4 = [(HUItemTableViewController *)self itemManager];
      deleteSceneItem = [itemManager4 deleteSceneItem];

      if (v9 == deleteSceneItem)
      {
        [(HUSceneActionEditorViewController *)self _deleteScene:v9 indexPath:pathCopy];
      }

      else
      {
        itemManager5 = [(HUItemTableViewController *)self itemManager];
        mediaItem = [itemManager5 mediaItem];

        if (v9 == mediaItem)
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
  editingName = [(HUSceneActionEditorViewController *)self editingName];
  v6 = [v4 sanitizeUserEnteredHomeKitName:editingName];
  [(HUSceneActionEditorViewController *)self setEditingName:v6];

  editingName2 = [(HUSceneActionEditorViewController *)self editingName];
  if (!editingName2 || (v8 = editingName2, -[HUSceneActionEditorViewController editingName](self, "editingName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 length], v9, v8, !v10))
  {
    savedName = [(HUSceneActionEditorViewController *)self savedName];
    v12 = [savedName mutableCopy];
    [(HUSceneActionEditorViewController *)self setEditingName:v12];

    editingName3 = [(HUSceneActionEditorViewController *)self editingName];
    itemManager = [(HUItemTableViewController *)self itemManager];
    nameAndIconItem = [itemManager nameAndIconItem];
    v16 = [(HUItemTableViewController *)self textFieldForVisibleItem:nameAndIconItem];
    [v16 setText:editingName3];
  }

  editingName4 = [(HUSceneActionEditorViewController *)self editingName];
  v18 = [editingName4 copy];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager2 actionSetBuilder];
  [actionSetBuilder setName:v18];

  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  itemManager4 = [(HUItemTableViewController *)self itemManager];
  instructionsItems = [itemManager4 instructionsItems];
  v23 = [itemManager3 updateResultsForItems:instructionsItems senderSelector:a2];
}

- (void)_validateDoneButton
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];

  actions = [actionSetBuilder actions];
  v6 = [actions count];
  if (v6)
  {
    name = [actionSetBuilder name];
    v7 = [name length] != 0;
  }

  else
  {
    v7 = 0;
  }

  navigationItem = [(HUSceneActionEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];

  if (v6)
  {
  }
}

- (BOOL)_allowEditingNameAndIcon
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];

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
    actionSet = [actionSetBuilder actionSet];
    if (actionSet)
    {
      actionSet2 = [actionSetBuilder actionSet];
      actionSetType = [actionSet2 actionSetType];
      v5 = [v6 containsObject:actionSetType];
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

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUSceneActionEditorViewController *)self tableView];
  v18 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:v18];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  showInHomeDashboardItem = [itemManager2 showInHomeDashboardItem];
  v12 = [v9 isEqual:showInHomeDashboardItem];

  if (v12)
  {
    itemManager3 = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager3 actionSetBuilder];
    [actionSetBuilder setShowInHomeDashboard:onCopy];
  }

  v15 = MEMORY[0x277D143D8];
  latestResults = [v9 latestResults];
  v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F68]];
  [v15 sendSwitchCellToggleEventForItem:v9 isOn:onCopy title:v17 fromSourceViewController:self];
}

- (void)_servicePickerDidFinish
{
  [(HUSceneActionEditorViewController *)self _validateDoneButton];
  itemManager = [(HUItemTableViewController *)self itemManager];
  itemsToHideWhenEmpty = [itemManager itemsToHideWhenEmpty];
  itemManager2 = [(HUItemTableViewController *)self itemManager];
  instructionsItems = [itemManager2 instructionsItems];
  v8 = [itemsToHideWhenEmpty setByAddingObjectsFromSet:instructionsItems];

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager3 updateResultsForItems:v8 senderSelector:a2];

  actionGridViewControllersByEditorType = [(HUSceneActionEditorViewController *)self actionGridViewControllersByEditorType];
  allValues = [actionGridViewControllersByEditorType allValues];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HUSceneActionEditorViewController__servicePickerDidFinish__block_invoke;
  v14[3] = &__block_descriptor_40_e40_v16__0__HUItemCollectionViewController_8l;
  v14[4] = a2;
  [allValues na_each:v14];

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

- (void)nameAndIconEditorCellDidTapIcon:(id)icon
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];
  iconDescriptor = [actionSetBuilder iconDescriptor];

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder2 = [itemManager2 actionSetBuilder];
  iconTintColor = [actionSetBuilder2 iconTintColor];

  v9 = +[HUSymbolIconPickerViewController sceneIconDescriptors];
  v10 = [[HUSymbolIconPickerViewController alloc] initWithIconDescriptors:v9 selectedIconDescriptor:iconDescriptor selectedTintColor:iconTintColor delegate:self];
  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  [(HUSceneActionEditorViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)iconPickerDidCancel:(id)cancel
{
  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];

  [(HUSceneActionEditorViewController *)self _sendSceneIconEditEventDidChangeColor:0 didChangeIcon:0];
}

- (void)iconPicker:(id)picker didPickIcon:(id)icon withTintColor:(id)color
{
  pickerCopy = picker;
  iconCopy = icon;
  colorCopy = color;
  v11 = colorCopy;
  v53 = iconCopy;
  if (!iconCopy)
  {
    v22 = 0;
    if (colorCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = 0;
    v24 = v53;
    goto LABEL_16;
  }

  objc_opt_class();
  v12 = iconCopy;
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
    itemManager = [(HUItemTableViewController *)self itemManager];
    [itemManager actionSetBuilder];
    v52 = v11;
    v17 = v16 = a2;
    iconDescriptor = [v17 iconDescriptor];
    imageIdentifier = [iconDescriptor imageIdentifier];
    imageIdentifier2 = [v14 imageIdentifier];
    v21 = [imageIdentifier isEqualToString:imageIdentifier2] ^ 1;

    v22 = v21;
    a2 = v16;
    v11 = v52;
  }

  else
  {
    v22 = 0;
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager2 actionSetBuilder];
  [actionSetBuilder setIconDescriptor:v12];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_11:
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder2 = [itemManager3 actionSetBuilder];
  iconTintColor = [actionSetBuilder2 iconTintColor];

  itemManager4 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder3 = [itemManager4 actionSetBuilder];
  actionSet = [actionSetBuilder3 actionSet];
  v33 = actionSet | iconTintColor;

  if (v33 || ([MEMORY[0x277D75348] systemOrangeColor], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v11, "isEqual:", v34), v34, (v35 & 1) == 0))
  {
    v23 = [iconTintColor isEqual:v11] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = v53;
  itemManager5 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder4 = [itemManager5 actionSetBuilder];
  [actionSetBuilder4 setIconTintColor:v11];

LABEL_16:
  itemManager6 = [(HUItemTableViewController *)self itemManager];
  v39 = MEMORY[0x277CBEB98];
  itemManager7 = [(HUItemTableViewController *)self itemManager];
  nameAndIconItem = [itemManager7 nameAndIconItem];
  v42 = [v39 setWithObject:nameAndIconItem];
  v43 = [itemManager6 updateResultsForItems:v42 senderSelector:a2];

  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation] & 1) == 0)
  {
    navigationBarTitleView = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
    summaryView = [navigationBarTitleView summaryView];
    baseIconView = [summaryView baseIconView];
    configuration = [baseIconView configuration];

    if (configuration)
    {
      v48 = [configuration copyWithIconDescriptor:v24];
      navigationBarTitleView2 = [(HUSceneActionEditorViewController *)self navigationBarTitleView];
      summaryView2 = [navigationBarTitleView2 summaryView];
      baseIconView2 = [summaryView2 baseIconView];
      [baseIconView2 setConfiguration:v48];
    }
  }

  [(HUSceneActionEditorViewController *)self _sendSceneIconEditEventDidChangeColor:v23 didChangeIcon:v22];
}

- (void)iconPicker:(id)picker didPickIconDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    itemManager = [(HUItemTableViewController *)self itemManager];
    actionSetBuilder = [itemManager actionSetBuilder];
    [actionSetBuilder setIconDescriptor:descriptorCopy];
  }

  itemManager2 = [(HUItemTableViewController *)self itemManager];
  v10 = MEMORY[0x277CBEB98];
  itemManager3 = [(HUItemTableViewController *)self itemManager];
  nameAndIconItem = [itemManager3 nameAndIconItem];
  v13 = [v10 setWithObject:nameAndIconItem];
  v14 = [itemManager2 updateResultsForItems:v13 senderSelector:a2];

  [(HUSceneActionEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentMediaSelection
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder = [itemManager actionSetBuilder];

  v4 = [[HUMediaSelectionViewController alloc] initWithActionSetBuilder:actionSetBuilder];
  [(HUMediaSelectionViewController *)v4 setDelegate:self];
  navigationController = [(HUSceneActionEditorViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)sceneActionGridViewController:(id)controller didUpdate:(id)update
{
  if ([update na_any:&__block_literal_global_202])
  {
    itemManager = [(HUItemTableViewController *)self itemManager];
    v6 = MEMORY[0x277CBEB98];
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    mediaItem = [itemManager2 mediaItem];
    v9 = [v6 setWithObject:mediaItem];
    v10 = [itemManager updateResultsForItems:v9 senderSelector:a2];
  }
}

uint64_t __77__HUSceneActionEditorViewController_sceneActionGridViewController_didUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
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
      mediaItem = [itemManager2 mediaItem];
      v15 = [v12 setWithObject:mediaItem];
      v16 = [itemManager updateResultsForItems:v15 senderSelector:a2];
    }
  }
}

- (id)mediaSelectionViewController:(id)controller messageForMediaPickerUnavailableReason:(int64_t)reason
{
  v4 = @"HUSceneMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
  if (reason != 1)
  {
    v4 = 0;
  }

  if (reason)
  {
    return v4;
  }

  else
  {
    return @"HUSceneMediaPickerUnavailableMusicAppUninstalledPromptMessage";
  }
}

- (void)_sendSceneIconEditEventDidChangeColor:(BOOL)color didChangeIcon:(BOOL)icon
{
  iconCopy = icon;
  colorCopy = color;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = *MEMORY[0x277D136A0];
  v22 = dictionary;
  if (colorCopy || iconCopy)
  {
    [dictionary na_safeSetObject:MEMORY[0x277CBEC38] forKey:v8];
    if (colorCopy)
    {
      itemManager = [(HUItemTableViewController *)self itemManager];
      actionSetBuilder = [itemManager actionSetBuilder];
      iconTintColor = [actionSetBuilder iconTintColor];
      _debugName = [iconTintColor _debugName];
      [v22 na_safeSetObject:_debugName forKey:*MEMORY[0x277D13698]];
    }

    if (iconCopy)
    {
      itemManager2 = [(HUItemTableViewController *)self itemManager];
      actionSetBuilder2 = [itemManager2 actionSetBuilder];
      iconDescriptor = [actionSetBuilder2 iconDescriptor];
      imageIdentifier = [iconDescriptor imageIdentifier];
      [v22 na_safeSetObject:imageIdentifier forKey:*MEMORY[0x277D136A8]];
    }
  }

  else
  {
    [dictionary na_safeSetObject:MEMORY[0x277CBEC28] forKey:v8];
  }

  itemManager3 = [(HUItemTableViewController *)self itemManager];
  actionSetBuilder3 = [itemManager3 actionSetBuilder];
  actionSet = [actionSetBuilder3 actionSet];
  v20 = actionSet == 0;

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