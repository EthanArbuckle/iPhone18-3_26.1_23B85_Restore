@interface HUSceneSuggestionsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (HUSceneEditorDelegate)sceneEditorDelegate;
- (HUSceneSuggestionsItemManager)suggestionsItemManager;
- (HUSceneSuggestionsViewController)init;
- (void)_cancel:(id)a3;
- (void)_showActionEditorForActionSetSuggestionItem:(id)a3;
- (void)_showActionEditorForNewCustomScene;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v8 = [(HUSceneSuggestionsViewController *)v5 navigationItem];
    [v8 setLeftBarButtonItem:v7];

    v9 = [(HUSceneSuggestionsViewController *)v5 navigationItem];
    v10 = [v9 leftBarButtonItem];
    [v10 setAccessibilityIdentifier:@"Home.NewScene.Cancel"];
  }

  return v5;
}

- (void)_cancel:(id)a3
{
  v5 = [(HUSceneSuggestionsViewController *)self presentationDelegate];
  v4 = [v5 finishPresentation:self animated:1];
}

- (void)_showActionEditorForActionSetSuggestionItem:(id)a3
{
  v11 = a3;
  v4 = [v11 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13D40]];

  if (v5)
  {
    v6 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:v5 mode:1];
    [(HUSceneActionEditorViewController *)v6 setShowCancelButton:0];
    v7 = [(HUSceneSuggestionsViewController *)self sceneEditorDelegate];
    [(HUSceneActionEditorViewController *)v6 setSceneEditorDelegate:v7];

    v8 = [(HUSceneSuggestionsViewController *)self presentationDelegate];
    [(HUSceneActionEditorViewController *)v6 setPresentationDelegate:v8];

    v9 = [(HUSceneSuggestionsViewController *)self navigationController];
    v10 = [v9 hu_pushPreloadableViewController:v6 animated:1];
  }

  else
  {
    NSLog(&cfstr_Hfactionsetsug.isa, v11);
  }
}

- (void)_showActionEditorForNewCustomScene
{
  v7 = [[HUSceneActionEditorViewController alloc] initWithActionSetBuilder:0 mode:2];
  [(HUSceneActionEditorViewController *)v7 setShowCancelButton:0];
  v3 = [(HUSceneSuggestionsViewController *)self sceneEditorDelegate];
  [(HUSceneActionEditorViewController *)v7 setSceneEditorDelegate:v3];

  v4 = [(HUSceneSuggestionsViewController *)self presentationDelegate];
  [(HUSceneActionEditorViewController *)v7 setPresentationDelegate:v4];

  v5 = [(HUSceneSuggestionsViewController *)self navigationController];
  v6 = [v5 hu_pushPreloadableViewController:v7 animated:1];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUSceneSuggestionsViewController *)self suggestionsItemManager];
  v7 = [v6 addCustomSceneItem];

  v8 = objc_opt_class();

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
    [v5 setHideDescription:1];
    [v5 setAccessoryType:1];
    [v5 setIconDisplayStyle:1];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 titleText];
    v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_2823E0EE8];
    v9 = [v6 stringWithFormat:@"Home.NewScene.%@", v8];
    [v5 setAccessibilityIdentifier:v9];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:1];
      v11 = [v10 font];
      [v5 setTitleFont:v11];
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = v14;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    [v14 setAccessibilityIdentifier:@"Home.NewScene.Custom"];
  }

  v13 = v14;
LABEL_8:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = HUSceneSuggestionsViewController;
  v6 = a4;
  v7 = a3;
  [(HUItemTableViewController *)&v13 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v13.receiver, v13.super_class}];

  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HUSceneSuggestionsViewController *)self _showActionEditorForActionSetSuggestionItem:v9];
  }

  else
  {
    v10 = [(HUSceneSuggestionsViewController *)self suggestionsItemManager];
    v11 = [v10 addCustomSceneItem];
    v12 = [v9 isEqual:v11];

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