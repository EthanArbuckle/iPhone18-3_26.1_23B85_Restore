@interface CSNotificationAdjunctListViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)isPresentingTransientContent;
- (BOOL)isShowingMediaControls;
- (CGAffineTransform)_disappearedTransformForContentWithHeight:(SEL)height;
- (CGSize)sizeToMimic;
- (CGSize)sizeToMimicForHost:(id)host;
- (CGSize)stackViewContentSize;
- (CSNotificationAdjunctListViewController)init;
- (CSNotificationAdjunctListViewControllerDelegate)delegate;
- (CSRemoteContentInlineProviding)remoteContentInlineProvider;
- (PRWidgetMetricsProvider)widgetMetricsProvider;
- (SBFActionProviding)contentActionProvider;
- (UIViewController)digestOnboardingSuggestionViewController;
- (id)_createItemViewForHost:(id)host recipe:(int64_t)recipe;
- (id)_groupNameBase;
- (id)_stackView;
- (unint64_t)_preferredIndexForItem:(id)item;
- (void)_didUpdateDisplay;
- (void)_insertItem:(id)item atPreferredIndex:(int64_t)index animated:(BOOL)animated;
- (void)_removeItem:(id)item animated:(BOOL)animated;
- (void)_setIsFocusActivityIndicatorVisible:(BOOL)visible;
- (void)_updateItemsSizeToMimic;
- (void)adjunctListModel:(id)model didAddItem:(id)item;
- (void)adjunctListModel:(id)model didRemoveItem:(id)item;
- (void)adjunctListModel:(id)model didUpdateItem:(id)item withItem:(id)withItem;
- (void)focusActivityIndicatorDidChangeToVisible:(BOOL)visible;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setDelegate:(id)delegate;
- (void)setProminentElementHeightToMimic:(double)mimic;
- (void)setRemoteContentInlineProvider:(id)provider;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    identifiersToItems = v3->_identifiersToItems;
    v3->_identifiersToItems = dictionary;

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
  _stackView = [(CSNotificationAdjunctListViewController *)self _stackView];
  delegate = [(CSNotificationAdjunctListViewController *)self delegate];
  [delegate insetMarginsToMimicForAdjunctListViewController:self];
  [_stackView setLayoutMargins:?];
  [delegate interItemSpacingToMimicForAdjunctListViewController:self];
  [_stackView setSpacing:?];
  [_stackView setAxis:1];
  [_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [_stackView setAlignment:3];
  actionInterpreter = self->_actionInterpreter;
  controlsViewController = [(CSNowPlayingController *)self->_nowPlayingController controlsViewController];
  [(CSContentActionInterpreter *)actionInterpreter setNowPlayingViewController:controlsViewController];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSNotificationAdjunctListViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CSNotificationAdjunctListViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__CSNotificationAdjunctListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27838C938;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v18 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_identifiersToItems allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        contentHost = [v10 contentHost];

        if (contentHost == containerCopy)
        {
          itemView = [v10 itemView];
          [itemView invalidateIntrinsicContentSize];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (CGSize)stackViewContentSize
{
  delegate = [(CSNotificationAdjunctListViewController *)self delegate];
  [delegate sizeToMimicForAdjunctListViewController:self];
  v5 = v4;
  view = [(CSNotificationAdjunctListViewController *)self view];
  [view systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
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

- (CGSize)sizeToMimicForHost:(id)host
{
  hostCopy = host;
  delegate = [(CSNotificationAdjunctListViewController *)self delegate];
  [delegate sizeToMimicForAdjunctListViewController:self];
  v7 = v6;
  v9 = v8;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [hostCopy insetsMargins])
  {
    [delegate insetMarginsToMimicForAdjunctListViewController:self];
    v7 = v7 - v10 - v11;
  }

  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = CSNotificationAdjunctListViewController;
  if ([(CSCoverSheetViewControllerBase *)&v9 handleEvent:eventCopy])
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  type = [eventCopy type];
  if (type == 8)
  {
    [(CSAdjunctListModel *)self->_model resumeItemHandling];
  }

  else if (type == 9)
  {
    [(CSAdjunctListModel *)self->_model suspendItemHandling];
  }

  else if (!isConsumable)
  {
    isConsumable2 = 0;
    goto LABEL_10;
  }

  isConsumable2 = [eventCopy isConsumable];
LABEL_10:

  return isConsumable2;
}

- (void)setRemoteContentInlineProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_remoteContentInlineProvider, providerCopy);
  [(CSRemoteContentInlineManager *)self->_remoteContentInlineManager setRemoteContentInlineProvider:providerCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    [delegateCopy adjunctListViewController:self didAddSectionWithIdentifier:@"AdjunctTopSticky"];
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
      v15 = delegateCopy;
      [v11 performWithoutAnimation:v13];
      view = [(CSNotificationAdjunctListViewController *)self view];
      [view setNeedsLayout];

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

- (void)setProminentElementHeightToMimic:(double)mimic
{
  if (self->_prominentElementHeightToMimic != mimic)
  {
    self->_prominentElementHeightToMimic = mimic;
    [(CSProminentUISpacerViewController *)self->_spacerViewController setTopMarginToMimic:?];
  }
}

- (void)adjunctListModel:(id)model didAddItem:(id)item
{
  itemCopy = item;
  v5 = [itemCopy animatePresentation] && -[CSNotificationAdjunctListViewController _canAnimate](self, "_canAnimate") && self->_allowsAddRemoveAnimations;
  [(CSNotificationAdjunctListViewController *)self _insertItem:itemCopy atPreferredIndex:[(CSNotificationAdjunctListViewController *)self _preferredIndexForItem:itemCopy] animated:v5];
}

- (void)adjunctListModel:(id)model didRemoveItem:(id)item
{
  itemCopy = item;
  v5 = [itemCopy animateDismissal] && -[CSNotificationAdjunctListViewController _canAnimate](self, "_canAnimate") && self->_allowsAddRemoveAnimations;
  [(CSNotificationAdjunctListViewController *)self _removeItem:itemCopy animated:v5];
}

- (void)adjunctListModel:(id)model didUpdateItem:(id)item withItem:(id)withItem
{
  itemCopy = item;
  withItemCopy = withItem;
  if (itemCopy != withItemCopy)
  {
    _stackView = [(CSNotificationAdjunctListViewController *)self _stackView];
    itemView = [itemCopy itemView];
    arrangedSubviews = [_stackView arrangedSubviews];
    v11 = [arrangedSubviews indexOfObject:itemView];
    if (!v11)
    {
      v11 = [(CSNotificationAdjunctListViewController *)self _preferredIndexForItem:withItemCopy];
    }

    [(CSNotificationAdjunctListViewController *)self _removeItem:itemCopy animated:0];
    [(CSNotificationAdjunctListViewController *)self _insertItem:withItemCopy atPreferredIndex:v11 animated:0];
  }
}

- (void)focusActivityIndicatorDidChangeToVisible:(BOOL)visible
{
  visibleCopy = visible;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained focusActivityViewChangedToVisible:visibleCopy];
}

- (void)_insertItem:(id)item atPreferredIndex:(int64_t)index animated:(BOOL)animated
{
  v32 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifier = [itemCopy identifier];
  [(NSMutableDictionary *)self->_identifiersToItems setObject:itemCopy forKey:identifier];
  action = [itemCopy action];

  if (action)
  {
    actionInterpreter = self->_actionInterpreter;
    action2 = [itemCopy action];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke;
    v28[3] = &unk_27838C9A0;
    v29 = itemCopy;
    [(CSContentActionInterpreter *)actionInterpreter _viewControllerFromAction:action2 completion:v28];
  }

  contentHost = [itemCopy contentHost];

  if (contentHost)
  {
    contentHost2 = [itemCopy contentHost];
    action3 = [itemCopy action];
    sb_materialRecipe = [action3 sb_materialRecipe];
    if (sb_materialRecipe <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = sb_materialRecipe;
    }

    v16 = [(CSNotificationAdjunctListViewController *)self _createItemViewForHost:contentHost2 recipe:v15];
    [itemCopy setItemView:v16];
    if (v16)
    {
      v17 = MEMORY[0x277D75D18];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __81__CSNotificationAdjunctListViewController__insertItem_atPreferredIndex_animated___block_invoke_35;
      v24 = &unk_27838B7C0;
      selfCopy = self;
      v26 = contentHost2;
      v27 = v16;
      [v17 performWithoutAnimation:&v21];
      v18 = [(CSNotificationAdjunctListViewController *)self view:v21];
      [v18 setNeedsLayout];

      v19 = SBLogDashBoard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [itemCopy identifier];
        *buf = 138412290;
        v31 = identifier2;
        _os_log_impl(&dword_21EB05000, v19, OS_LOG_TYPE_DEFAULT, "Inserted adjunct list item with identifier: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    contentHost2 = SBLogDashBoard();
    if (os_log_type_enabled(contentHost2, OS_LOG_TYPE_ERROR))
    {
      [CSNotificationAdjunctListViewController _insertItem:contentHost2 atPreferredIndex:? animated:?];
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

- (void)_removeItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  contentHost = [itemCopy contentHost];
  itemView = [itemCopy itemView];
  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = itemCopy;
    *&buf[12] = 2112;
    *&buf[14] = contentHost;
    *&buf[22] = 2112;
    *&buf[24] = itemView;
    _os_log_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEFAULT, "Removing adjunct list item: %@, and content host: %@, itemView: %@", buf, 0x20u);
  }

  if (itemView && contentHost)
  {
    [itemView setHidden:0];
    [itemView setAlpha:1.0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *buf = *MEMORY[0x277CBF2C0];
    *&buf[16] = v10;
    v25 = *(MEMORY[0x277CBF2C0] + 32);
    [itemView setTransform:buf];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__CSNotificationAdjunctListViewController__removeItem_animated___block_invoke;
    v21[3] = &unk_27838B838;
    v22 = itemView;
    selfCopy = self;
    v11 = MEMORY[0x223D698D0](v21);
    delegate = [(CSNotificationAdjunctListViewController *)self delegate];
    [delegate adjunctListViewController:self willRemoveViewWithIdentifier:@"com.apple.SpringBoard.sleep"];

    v13 = MEMORY[0x277D75D18];
    if (animatedCopy)
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
      identifier = [itemCopy identifier];
      *buf = 138412290;
      *&buf[4] = identifier;
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

- (unint64_t)_preferredIndexForItem:(id)item
{
  identifier = [item identifier];
  if ([identifier hasPrefix:@"focus activity identifier"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (id)_createItemViewForHost:(id)host recipe:(int64_t)recipe
{
  hostCopy = host;
  v7 = [[CSAdjunctItemView alloc] initWithRecipe:recipe];
  _groupNameBase = [(CSNotificationAdjunctListViewController *)self _groupNameBase];
  [(CSAdjunctItemView *)v7 setMaterialGroupNameBase:_groupNameBase];

  [(CSAdjunctItemView *)v7 setContentHost:hostCopy];
  [(CSNotificationAdjunctListViewController *)self sizeToMimicForHost:hostCopy];
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
  _stackView = [(CSNotificationAdjunctListViewController *)self _stackView];
  arrangedSubviews = [_stackView arrangedSubviews];

  v5 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        contentHost = [v9 contentHost];
        [(CSNotificationAdjunctListViewController *)self sizeToMimicForHost:contentHost];
        [v9 setSizeToMimic:?];
      }

      v6 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  _stackView = [(CSNotificationAdjunctListViewController *)self _stackView];
  [_stackView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
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

- (CGAffineTransform)_disappearedTransformForContentWithHeight:(SEL)height
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 0.05, 0.05);
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeTranslation(&v9, 0.0, a4 * 0.55);
  t1 = v10;
  v7 = v9;
  return CGAffineTransformConcat(retstr, &t1, &v7);
}

- (void)_setIsFocusActivityIndicatorVisible:(BOOL)visible
{
  if (self->_isFocusActivityIndicatorVisible != visible)
  {
    visibleCopy = visible;
    self->_isFocusActivityIndicatorVisible = visible;
    delegate = [(CSNotificationAdjunctListViewController *)self delegate];
    [delegate focusActivityViewChangedToVisible:visibleCopy];
  }
}

- (id)_stackView
{
  view = [(CSNotificationAdjunctListViewController *)self view];
  v3 = objc_opt_class();
  v4 = view;
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