@interface HUSceneSuggestionsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUPresentationDelegate)presentationDelegate;
- (HUSceneEditorDelegate)sceneEditorDelegate;
- (HUSceneSuggestionsItemManager)suggestionsItemManager;
- (HUSceneSuggestionsViewController)init;
- (void)_cancel:(id)_cancel;
- (void)_showActionEditorForActionSetSuggestionItem:(id)item;
- (void)_showActionEditorForNewCustomScene;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUSceneSuggestionsViewController

- (HUSceneSuggestionsViewController)init
{
  v3 = [(HFItemManager *)[HUSceneSuggestionsItemManager alloc] initWithDelegate:self];
  v12.receiver = self;
  v12.super_class = HUSceneSuggestionsViewController;
  v4 = [(HUItemTableViewController *)&v12 initWithItemManager:v3 tableViewStyle:1];
  v5 = v4;
  if (v4)
  {
    [(HUSceneSuggestionsViewController *)v4 setSuggestionsItemManager:v3];
    v6 = _HULocalizedStringWithDefaultValue(@"HUSceneSuggestionsTitle", @"HUSceneSuggestionsTitle", 1);
    [(HUSceneSuggestionsViewController *)v5 setTitle:v6];

    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel__cancel_];
    navigationItem = [(HUSceneSuggestionsViewController *)v5 navigationItem];
    [navigationItem setLeftBarButtonItem:v7];

    navigationItem2 = [(HUSceneSuggestionsViewController *)v5 navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem setAccessibilityIdentifier:@"Home.NewScene.Cancel"];
  }

  return v5;
}

- (void)_cancel:(id)_cancel
{
  presentationDelegate = [(HUSceneSuggestionsViewController *)self presentationDelegate];
  v4 = [presentationDelegate finishPresentation:self animated:1];
}

- (void)_showActionEditorForActionSetSuggestionItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D40]];

  if (v5)
  {
    v6 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v5 mode:1];
    [(HUSceneActionEditorViewController *)v6 setShowCancelButton:0];
    sceneEditorDelegate = [(HUSceneSuggestionsViewController *)self sceneEditorDelegate];
    [(HUSceneActionEditorViewController *)v6 setSceneEditorDelegate:sceneEditorDelegate];

    presentationDelegate = [(HUSceneSuggestionsViewController *)self presentationDelegate];
    [(HUSceneActionEditorViewController *)v6 setPresentationDelegate:presentationDelegate];

    navigationController = [(HUSceneSuggestionsViewController *)self navigationController];
    v10 = [navigationController hu_pushPreloadableViewController:v6 animated:1];
  }

  else
  {
    NSLog(&cfstr_Hfactionsetsug.isa, itemCopy);
  }
}

- (void)_showActionEditorForNewCustomScene
{
  v7 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:0 mode:2];
  [(HUSceneActionEditorViewController *)v7 setShowCancelButton:0];
  sceneEditorDelegate = [(HUSceneSuggestionsViewController *)self sceneEditorDelegate];
  [(HUSceneActionEditorViewController *)v7 setSceneEditorDelegate:sceneEditorDelegate];

  presentationDelegate = [(HUSceneSuggestionsViewController *)self presentationDelegate];
  [(HUSceneActionEditorViewController *)v7 setPresentationDelegate:presentationDelegate];

  navigationController = [(HUSceneSuggestionsViewController *)self navigationController];
  v6 = [navigationController hu_pushPreloadableViewController:v7 animated:1];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  suggestionsItemManager = [(HUSceneSuggestionsViewController *)self suggestionsItemManager];
  addCustomSceneItem = [suggestionsItemManager addCustomSceneItem];

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = cellCopy;
    [v5 setHideDescription:1];
    [v5 setAccessoryType:1];
    [v5 setIconDisplayStyle:1];
    v6 = MEMORY[0x277CCACA8];
    titleText = [v5 titleText];
    v8 = [titleText stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
    v9 = [v6 stringWithFormat:@"Home.NewScene.%@", v8];
    [v5 setAccessibilityIdentifier:v9];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
      font = [v10 font];
      [v5 setTitleFont:font];
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = cellCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    [cellCopy setAccessibilityIdentifier:@"Home.NewScene.Custom"];
  }

  v13 = cellCopy;
LABEL_8:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v13.receiver = self;
  v13.super_class = HUSceneSuggestionsViewController;
  pathCopy = path;
  viewCopy = view;
  [(HUItemTableViewController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v13.receiver, v13.super_class}];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUSceneSuggestionsViewController *)self _showActionEditorForActionSetSuggestionItem:v9];
  }

  else
  {
    suggestionsItemManager = [(HUSceneSuggestionsViewController *)self suggestionsItemManager];
    addCustomSceneItem = [suggestionsItemManager addCustomSceneItem];
    v12 = [v9 isEqual:addCustomSceneItem];

    if (v12)
    {
      [(HUSceneSuggestionsViewController *)self _showActionEditorForNewCustomScene];
    }
  }
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

- (HUSceneSuggestionsItemManager)suggestionsItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionsItemManager);

  return WeakRetained;
}

@end