@interface CSNotificationAdjunctListViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)isPresentingTransientContent;
- (BOOL)isShowingMediaControls;
- (CGAffineTransform)_disappearedTransformForContentWithHeight:(SEL)a3;
- (CGSize)sizeToMimic;
- (CGSize)sizeToMimicForHost:(id)a3;
- (CGSize)stackViewContentSize;
- (CSNotificationAdjunctListViewController)init;
- (CSNotificationAdjunctListViewControllerDelegate)delegate;
- (CSRemoteContentInlineProviding)remoteContentInlineProvider;
- (PRWidgetMetricsProvider)widgetMetricsProvider;
- (SBFActionProviding)contentActionProvider;
- (UIViewController)digestOnboardingSuggestionViewController;
- (id)_createItemViewForHost:(id)a3 recipe:(int64_t)a4;
- (id)_groupNameBase;
- (id)_stackView;
- (unint64_t)_preferredIndexForItem:(id)a3;
- (void)_didUpdateDisplay;
- (void)_insertItem:(id)a3 atPreferredIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)_removeItem:(id)a3 animated:(BOOL)a4;
- (void)_setIsFocusActivityIndicatorVisible:(BOOL)a3;
- (void)_updateItemsSizeToMimic;
- (void)adjunctListModel:(id)a3 didAddItem:(id)a4;
- (void)adjunctListModel:(id)a3 didRemoveItem:(id)a4;
- (void)adjunctListModel:(id)a3 didUpdateItem:(id)a4 withItem:(id)a5;
- (void)focusActivityIndicatorDidChangeToVisible:(BOOL)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setProminentElementHeightToMimic:(double)a3;
- (void)setRemoteContentInlineProvider:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CSNotificationAdjunctListViewController

- (BOOL)isPresentingTransientContent
{
  v3 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:@"focus activity identifier"];

  if (v3)
  {
    return [(NSMutableDictionary *)self->_identifiersToItems count]!= 1;
  }

  return [(CSNotificationAdjunctListViewController *)self isPresentingContent];
}

- (CSNotificationAdjunctListViewController)init
{
  v19.receiver = self;
  v19.super_class = CSNotificationAdjunctListViewController;
  v2 = [(CSNotificationAdjunctListViewController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowsAddRemoveAnimations = 1;
    v4 = objc_alloc_init(CSNowPlayingController);
    nowPlayingController = v3->_nowPlayingController;
    v3->_nowPlayingController = v4;

    v6 = objc_alloc_init(CSContentActionInterpreter);
    actionInterpreter = v3->_actionInterpreter;
    v3->_actionInterpreter = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    identifiersToItems = v3->_identifiersToItems;
    v3->_identifiersToItems = v8;

    v10 = objc_alloc_init(CSAdjunctListModel);
    model = v3->_model;
    v3->_model = v10;

    [(CSAdjunctListModel *)v3->_model setDelegate:v3];
    v12 = [[CSFocusActivityManager alloc] initWithItemDestination:v3->_model];
    focusActivityManager = v3->_focusActivityManager;
    v3->_focusActivityManager = v12;

    [(CSFocusActivityManager *)v3->_focusActivityManager setDelegate:v3];
    v14 = [[CSAdjunctListActionManager alloc] initWithItemDestination:v3->_model];
    actionManager = v3->_actionManager;
    v3->_actionManager = v14;

    v16 = [[CSRemoteContentInlineManager alloc] initWithItemDestination:v3->_model];
    remoteContentInlineManager = v3->_remoteContentInlineManager;
    v3->_remoteContentInlineManager = v16;
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CSNotificationAdjunctListViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidLoad];
  v3 = [(CSNotificationAdjunctListViewController *)self _stackView];
  v4 = [(CSNotificationAdjunctListViewController *)self delegate];
  [v4 insetMarginsToMimicForAdjunctListViewController:self];
  [v3 setLayoutMargins:?];
  [v4 interItemSpacingToMimicForAdjunctListViewController:self];
  [v3 setSpacing:?];
  [v3 setAxis:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:3];
  actionInterpreter = self->_actionInterpreter;
  v6 = [(CSNowPlayingController *)self->_nowPlayingController controlsViewController];
  [(CSContentActionInterpreter *)actionInterpreter setNowPlayingViewController:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSNotificationAdjunctListViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSAdjunctListModel *)self->_model resumeItemHandling];
  [(CSNotificationAdjunctListViewController *)self _updateItemsSizeToMimic];
  [(CSNotificationAdjunctListViewController *)self _setIsFocusActivityIndicatorVisible:[(CSFocusActivityManager *)self->_focusActivityManager isFocusActivityIndicatorVisible]];
  [(CSProminentUISpacerViewController *)self->_spacerViewController setTopMarginToMimic:self->_prominentElementHeightToMimic];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSNotificationAdjunctListViewController;
  [(CSCoverSheetViewControllerBase *)&v3 viewDidLayoutSubviews];
  if (!self->_respondingToSubviewLayoutChange)
  {
    self->_respondingToSubviewLayoutChange = 1;
    [(CSNotificationAdjunctListViewController *)self _didUpdateDisplay];
    self->_respondingToSubviewLayoutChange = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CSNotificationAdjunctListViewController;
  v7 = a4;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__CSNotificationAdjunctListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27838C938;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 contentHost];

        if (v11 == v4)
        {
          v12 = [v10 itemView];
          [v12 invalidateIntrinsicContentSize];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (CGSize)stackViewContentSize
{
  v3 = [(CSNotificationAdjunctListViewController *)self delegate];
  [v3 sizeToMimicForAdjunctListViewController:self];
  v5 = v4;
  v6 = [(CSNotificationAdjunctListViewController *)self view];
  [v6 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isShowingMediaControls
{
  v2 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:*MEMORY[0x277D66D28]];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)sizeToMimicForHost:(id)a3
{
  v4 = a3;
  v5 = [(CSNotificationAdjunctListViewController *)self delegate];
  [v5 sizeToMimicForAdjunctListViewController:self];
  v7 = v6;
  v9 = v8;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 insetsMargins])
  {
    [v5 insetMarginsToMimicForAdjunctListViewController:self];
    v7 = v7 - v10 - v11;
  }

  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSNotificationAdjunctListViewController;
  if ([(CSCoverSheetViewControllerBase *)&v9 handleEvent:v4])
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 type];
  if (v6 == 8)
  {
    [(CSAdjunctListModel *)self->_model resumeItemHandling];
  }

  else if (v6 == 9)
  {
    [(CSAdjunctListModel *)self->_model suspendItemHandling];
  }

  else if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [v4 isConsumable];
LABEL_10:

  return v7;
}

- (void)setRemoteContentInlineProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_remoteContentInlineProvider, v4);
  [(CSRemoteContentInlineManager *)self->_remoteContentInlineManager setRemoteContentInlineProvider:v4];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    [v4 adjunctListViewController:self didAddSectionWithIdentifier:@"AdjunctTopSticky"];
    spacerViewController = self->_spacerViewController;
    if (!spacerViewController)
    {
      v7 = objc_alloc_init(CSProminentUISpacerViewController);
      v8 = self->_spacerViewController;
      self->_spacerViewController = v7;

      [(CSProminentUISpacerViewController *)self->_spacerViewController setTopMarginToMimic:self->_prominentElementHeightToMimic];
      spacerViewController = self->_spacerViewController;
    }

    v9 = [(CSNotificationAdjunctListViewController *)self _createItemViewForHost:spacerViewController recipe:0];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__CSNotificationAdjunctListViewController_setDelegate___block_invoke;
      v13[3] = &unk_27838B7C0;
      v13[4] = self;
      v14 = v9;
      v15 = v4;
      [v11 performWithoutAnimation:v13];
      v12 = [(CSNotificationAdjunctListViewController *)self view];
      [v12 setNeedsLayout];

      [(CSNotificationAdjunctListViewController *)self _didUpdateDisplay];
    }
  }
}

uint64_t __55__CSNotificationAdjunctListViewController_setDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_addChildViewController:*(*(a1 + 32) + 1176) withSuperview:*(a1 + 40) animated:0 transitionBlock:0];
  v2 = *(a1 + 48);

  return [v2 adjunctListViewController:? didAddViewController:? withIdentifier:?];
}

- (void)setProminentElementHeightToMimic:(double)a3
{
  if (self->_prominentElementHeightToMimic != a3)
  {
    self->_prominentElementHeightToMimic = a3;
    [(CSProminentUISpacerViewController *)self->_spacerViewController setTopMarginToMimic:?];
  }
}

- (void)adjunctListModel:(id)a3 didAddItem:(id)a4
{
  v6 = a4;
  v5 = [v6 animatePresentation] && -[CSNotificationAdjunctListViewController _canAnimate](self, "_canAnimate") && self->_allowsAddRemoveAnimations;
  [(CSNotificationAdjunctListViewController *)self _insertItem:v6 atPreferredIndex:[(CSNotificationAdjunctListViewController *)self _preferredIndexForItem:v6] animated:v5];
}

- (void)adjunctListModel:(id)a3 didRemoveItem:(id)a4
{
  v6 = a4;
  v5 = [v6 animateDismissal] && -[CSNotificationAdjunctListViewController _canAnimate](self, "_canAnimate") && self->_allowsAddRemoveAnimations;
  [(CSNotificationAdjunctListViewController *)self _removeItem:v6 animated:v5];
}

- (void)adjunctListModel:(id)a3 didUpdateItem:(id)a4 withItem:(id)a5
{
  v12 = a4;
  v7 = a5;
  if (v12 != v7)
  {
    v8 = [(CSNotificationAdjunctListViewController *)self _stackView];
    v9 = [v12 itemView];
    v10 = [v8 arrangedSubviews];
    v11 = [v10 indexOfObject:v9];
    if (!v11)
    {
      v11 = [(CSNotificationAdjunctListViewController *)self _preferredIndexForItem:v7];
    }

    [(CSNotificationAdjunctListViewController *)self _removeItem:v12 animated:0];
    [(CSNotificationAdjunctListViewController *)self _insertItem:v7 atPreferredIndex:v11 animated:0];
  }
}

- (void)focusActivityIndicatorDidChangeToVisible:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained focusActivityViewChangedToVisible:v3];
}

- (void)_insertItem:(id)a3 atPreferredIndex:(int64_t)a4 animated:(BOOL)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 identifier];
  [(NSMutableDictionary *)self->_identifiersToItems setObject:v6 forKey:v7];
  v8 = [v6 action];

  if (v8)
  {
    actionInterpreter = self->_actionInterpreter;
    v10 = [v6 action];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke;
    v28[3] = &unk_27838C9A0;
    v29 = v6;
    [(CSContentActionInterpreter *)actionInterpreter _viewControllerFromAction:v10 completion:v28];
  }

  v11 = [v6 contentHost];

  if (v11)
  {
    v12 = [v6 contentHost];
    v13 = [v6 action];
    v14 = [v13 sb_materialRecipe];
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = [(CSNotificationAdjunctListViewController *)self _createItemViewForHost:v12 recipe:v15];
    [v6 setItemView:v16];
    if (v16)
    {
      v17 = MEMORY[0x277D75D18];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke_35;
      v24 = &unk_27838B7C0;
      v25 = self;
      v26 = v12;
      v27 = v16;
      [v17 performWithoutAnimation:&v21];
      v18 = [(CSNotificationAdjunctListViewController *)self view:v21];
      [v18 setNeedsLayout];

      v19 = SBLogDashBoard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v6 identifier];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "Inserted adjunct list item with identifier: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = SBLogDashBoard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CSNotificationAdjunctListViewController _insertItem:v12 atPreferredIndex:? animated:?];
    }
  }
}

void __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    [*(a1 + 32) setContentHost:a2];
  }
}

uint64_t __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke_35(uint64_t a1)
{
  [*(a1 + 32) bs_addChildViewController:*(a1 + 40) withSuperview:*(a1 + 48) animated:0 transitionBlock:0];
  v2 = [*(a1 + 32) delegate];
  [v2 adjunctListViewController:*(a1 + 32) didAddViewController:*(a1 + 40) withIdentifier:@"com.apple.SpringBoard.sleep"];

  v3 = *(a1 + 32);

  return [v3 _didUpdateDisplay];
}

- (void)_removeItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 contentHost];
  v8 = [v6 itemView];
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    *&buf[24] = v8;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Removing adjunct list item: %@, and content host: %@, itemView: %@", buf, 0x20u);
  }

  if (v8 && v7)
  {
    [v8 setHidden:0];
    [v8 setAlpha:1.0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *buf = *MEMORY[0x277CBF2C0];
    *&buf[16] = v10;
    v25 = *(MEMORY[0x277CBF2C0] + 32);
    [v8 setTransform:buf];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__CSNotificationAdjunctListViewController__removeItem_animated___block_invoke;
    v21[3] = &unk_27838B838;
    v22 = v8;
    v23 = self;
    v11 = MEMORY[0x223D698D0](v21);
    v12 = [(CSNotificationAdjunctListViewController *)self delegate];
    [v12 adjunctListViewController:self willRemoveViewWithIdentifier:@"com.apple.SpringBoard.sleep"];

    v13 = MEMORY[0x277D75D18];
    if (v4)
    {
      [(CSNotificationAdjunctListViewController *)self listViewContentAnimationDuration];
      v15 = v14;
      [(CSNotificationAdjunctListViewController *)self listViewContentAnimationDampingRatio];
      [v13 animateWithDuration:0 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v16 completion:0.0];
    }

    else
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__CSNotificationAdjunctListViewController__removeItem_animated___block_invoke_2;
      v19[3] = &unk_27838BB18;
      v20 = v11;
      [v13 performWithoutAnimation:v19];
    }

    v17 = SBLogDashBoard();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 identifier];
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_21EB05000, v17, OS_LOG_TYPE_DEFAULT, "Removed adjunct list item with identifier: %@", buf, 0xCu);
    }
  }
}

uint64_t __64__CSNotificationAdjunctListViewController__removeItem_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) _didUpdateDisplay];
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 bounds];
  Height = CGRectGetHeight(v7);
  if (v3)
  {
    [v3 _disappearedTransformForContentWithHeight:Height];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [v2 setTransform:v6];
  return [*(a1 + 40) _didUpdateDisplay];
}

- (unint64_t)_preferredIndexForItem:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 hasPrefix:@"focus activity identifier"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (id)_createItemViewForHost:(id)a3 recipe:(int64_t)a4
{
  v6 = a3;
  v7 = [[CSAdjunctItemView alloc] initWithRecipe:a4];
  v8 = [(CSNotificationAdjunctListViewController *)self _groupNameBase];
  [(CSAdjunctItemView *)v7 setMaterialGroupNameBase:v8];

  [(CSAdjunctItemView *)v7 setContentHost:v6];
  [(CSNotificationAdjunctListViewController *)self sizeToMimicForHost:v6];
  v10 = v9;
  v12 = v11;

  [(CSAdjunctItemView *)v7 setSizeToMimic:v10, v12];

  return v7;
}

- (void)_updateItemsSizeToMimic
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CSNotificationAdjunctListViewController *)self _stackView];
  v4 = [v3 arrangedSubviews];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 contentHost];
        [(CSNotificationAdjunctListViewController *)self sizeToMimicForHost:v10];
        [v9 setSizeToMimic:?];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_groupNameBase
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained groupNameBaseForAdjunctListViewController:self];

  return v4;
}

- (void)_didUpdateDisplay
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(CSNotificationAdjunctListViewController *)self _stackView];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;
  v7 = v6;

  [(CSProminentUISpacerViewController *)self->_spacerViewController preferredContentSize];
  [WeakRetained adjunctListViewController:self didUpdateWithSize:{v5, v7 + v8}];
  v9 = [(NSMutableDictionary *)self->_identifiersToItems objectForKey:*MEMORY[0x277D66D28]];
  v10 = v9;
  v11 = v9 != 0;
  if (self->_isNowPlayingVisible != v11)
  {
    self->_isNowPlayingVisible = v11;
    [WeakRetained adjunctListViewController:self updatedNowPlayingVisbility:v9 != 0];
  }
}

- (CGAffineTransform)_disappearedTransformForContentWithHeight:(SEL)a3
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 0.05, 0.05);
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeTranslation(&v9, 0.0, a4 * 0.55);
  t1 = v10;
  v7 = v9;
  return CGAffineTransformConcat(retstr, &t1, &v7);
}

- (void)_setIsFocusActivityIndicatorVisible:(BOOL)a3
{
  if (self->_isFocusActivityIndicatorVisible != a3)
  {
    v4 = a3;
    self->_isFocusActivityIndicatorVisible = a3;
    v5 = [(CSNotificationAdjunctListViewController *)self delegate];
    [v5 focusActivityViewChangedToVisible:v4];
  }
}

- (id)_stackView
{
  v2 = [(CSNotificationAdjunctListViewController *)self view];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (SBFActionProviding)contentActionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contentActionProvider);

  return WeakRetained;
}

- (CSRemoteContentInlineProviding)remoteContentInlineProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteContentInlineProvider);

  return WeakRetained;
}

- (UIViewController)digestOnboardingSuggestionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_digestOnboardingSuggestionViewController);

  return WeakRetained;
}

- (CSNotificationAdjunctListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)sizeToMimic
{
  width = self->_sizeToMimic.width;
  height = self->_sizeToMimic.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PRWidgetMetricsProvider)widgetMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetMetricsProvider);

  return WeakRetained;
}

void __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "Error loading view controller from action: %@", &v4, 0xCu);
}

@end