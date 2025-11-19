@interface SUUIScrollingTabBarController
+ (BOOL)areScrollingTabsAllowed;
- ($175F26EC2B3A5A0892810A401BCEA849)_viewControllerContentScrollViewContentInsetDescriptor;
- (BOOL)_focusedContentScrollViewIsScrolledToOrPastBottom;
- (BOOL)dynamicBarAnimator:(id)a3 canHideBarsByDraggingWithOffset:(double)a4;
- (CGRect)tabBarButtonsContainerFrame;
- (CGRect)tabBarPaletteFrame;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (SUUIScrollingTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIOffset)_roundedOffsetFromOffset:(UIOffset)a3;
- (UIOffset)additionalTabBarButtonsContainerPositionOffset;
- (UIOffset)additionalTabBarPalettePositionOffset;
- (double)_effectiveBottomBarOffset;
- (double)_effectiveTopBarHeight;
- (double)contentViewControllerBottomInsetAdjustment;
- (id)_deepestFocusedViewControllerWithTopLevelFocusedViewController:(id)a3;
- (id)_parentCellForViewController:(id)a3;
- (id)_tabBarBackdropGroupName;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)contentScrollView;
- (id)presentedViewController;
- (id)rotatingSnapshotViewForWindow:(id)a3;
- (id)tabBarPaletteWithHeight:(double)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)selectedIndex;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animatePaletteWithSetup:(id)a3 animations:(id)a4 completion:(id)a5;
- (void)_discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:(id *)a3;
- (void)_invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:(id *)a3 indexOfViewControllerWithUpdatedContentSize:(unint64_t)a4;
- (void)_notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:(id *)a3;
- (void)_popVisibleNavigationStacksToRootWithHorizontalLayoutContext:(id *)a3;
- (void)_selectTabAtIndex:(unint64_t)a3 shouldFallbackToPoppingToTabRootContent:(BOOL)a4;
- (void)_setFocusedViewController:(id)a3 showBarsIfNeeded:(BOOL)a4 animated:(BOOL)a5 notifyDelegate:(BOOL)a6;
- (void)_setViewControllers:(id)a3 collectionViewsUpdateHandler:(id)a4 forFinalTearDown:(BOOL)a5;
- (void)_tabBarButtonTapped:(id)a3;
- (void)_updateAdditionalPositionOffsetsWithUpdateRecord:(id *)a3;
- (void)_updateDynamicBarGeometry;
- (void)_updateFocusedViewControllerInsetsForVerticalLayoutChange;
- (void)_updateFocusedViewControllerWithHorizontalLayoutContext:(id *)a3;
- (void)_updateForHorizontalLayoutChange;
- (void)_updateHidesBarsOnSwipeAvailability;
- (void)_updateHorizontalScrollingAvailability;
- (void)_updateLayoutOfCollectionViewCell:(id)a3;
- (void)_updateLayoutOfTabBar;
- (void)_updateLayoutOfVisibleCollectionViewCells;
- (void)_updateNavigationBarsForVerticalLayoutChange;
- (void)_updateScrollViewContentOffsetsToTargetContentOffsets;
- (void)_updateStatusBarPositionForcingVisible:(BOOL)a3;
- (void)_updateTabBarBackgroundsAndHairlines;
- (void)_updateTabBarButtons;
- (void)_updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:(id *)a3;
- (void)_updateViewControllerContentScrollViewInset;
- (void)_viewControllerNeedsNestedPagingScrollViewUpdate:(id)a3;
- (void)attachTabBarPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)detachTabBarPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)didUpdateAdditionalTabBarComponentsPositionOffsets;
- (void)dynamicBarAnimatorDidUpdate:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)hideBarWithTransition:(int)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observedScrollViewDidScroll:(id)a3;
- (void)observedScrollViewWillBeginDragging:(id)a3;
- (void)observedScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint)a5;
- (void)scrollViewDidChangeContentInset:(id)a3;
- (void)scrollingTabBarContentCollectionViewDidLayoutSubviews:(id)a3;
- (void)scrollingTabBarControllerItemContext:(id)a3 observedNavigationStackDidChange:(id)a4;
- (void)scrollingTabBarControllerItemContextRequestsContentOffsetUpdate:(id)a3;
- (void)scrollingTabBarControllerItemContextRequestsContentSizeUpdate:(id)a3;
- (void)setAdditionalTabBarButtonsContainerPositionOffset:(UIOffset)a3;
- (void)setAdditionalTabBarPalettePositionOffset:(UIOffset)a3;
- (void)setChargeEnabledOnTabBarButtonsContainer:(BOOL)a3;
- (void)setClientContext:(id)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSelectedViewController:(id)a3;
- (void)setTransientViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3;
- (void)showBarWithTransition:(int)a3;
- (void)tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTabBarComponentPositionOffsetsWithPresentationValues;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIScrollingTabBarController

+ (BOOL)areScrollingTabsAllowed
{
  if (areScrollingTabsAllowed_sOnceToken != -1)
  {
    +[SUUIScrollingTabBarController areScrollingTabsAllowed];
  }

  return areScrollingTabsAllowed_sAreScrollingTabsAllowed;
}

void __56__SUUIScrollingTabBarController_areScrollingTabsAllowed__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  areScrollingTabsAllowed_sAreScrollingTabsAllowed = [v0 BOOLForKey:@"AllowsScrollingTabs"];
}

- (SUUIScrollingTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUUIScrollingTabBarController;
  v4 = [(SUUIScrollingTabBarController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_chargeEnabledOnTabBarButtonsContainer = 1;
    v4->_indexOfViewControllerWithUpdatedContentSize = 0x7FFFFFFFFFFFFFFFLL;
    v4->_scrollEnabled = [objc_opt_class() areScrollingTabsAllowed];
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [(SUUIScrollingTabBarController *)self _setViewControllers:0 collectionViewsUpdateHandler:0 forFinalTearDown:1];
  [(SUUIProxyScrollView *)self->_proxyScrollView setDelegate:0];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDataSource:0];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDelegate:0];
  v3 = [(SUUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SUUIScrollingTabBarController;
  [(SUUIViewController *)&v8 dealloc];
}

- (id)childViewControllerForStatusBarHidden
{
  v3 = self->_transientViewController;
  if (!v3)
  {
    v3 = self->_topLevelFocusedViewController;
  }

  return v3;
}

- (id)childViewControllerForStatusBarStyle
{
  v3 = self->_transientViewController;
  if (!v3)
  {
    v3 = self->_topLevelFocusedViewController;
  }

  return v3;
}

- (id)presentedViewController
{
  v5.receiver = self;
  v5.super_class = SUUIScrollingTabBarController;
  v3 = [(SUUIScrollingTabBarController *)&v5 presentedViewController];
  if (!v3)
  {
    if (self->_isDelegatingPresentedViewControllerLogicToSelectedViewController)
    {
      v3 = 0;
    }

    else
    {
      self->_isDelegatingPresentedViewControllerLogicToSelectedViewController = 1;
      v3 = [(UIViewController *)self->_topLevelFocusedViewController presentedViewController];
      self->_isDelegatingPresentedViewControllerLogicToSelectedViewController = 0;
    }
  }

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(SUUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tabBarControllerSupportedInterfaceOrientations:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUUIScrollingTabBarController;
    v4 = [(SUUIViewController *)&v7 supportedInterfaceOrientations];
  }

  v5 = v4;

  return v5;
}

- (void)viewDidLoad
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v35 viewDidLoad];
  v3 = [(SUUIScrollingTabBarController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D75D18]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setHidden:1];
  [v3 addSubview:v14];
  self->_contentCollectionViewItemSize.width = v10;
  self->_contentCollectionViewItemSize.height = v12;
  v15 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v15 setScrollDirection:1];
  [v15 setMinimumInteritemSpacing:0.0];
  [v15 setMinimumLineSpacing:0.0];
  v36 = *MEMORY[0x277D768E8];
  v37[0] = &unk_286BBE220;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v15 _setRowAlignmentsOptions:v16];

  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  Width = CGRectGetWidth(v38);
  if (Width >= 2.0)
  {
    v18 = Width;
  }

  else
  {
    v18 = 2.0;
  }

  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v18;
  v39.size.height = v12;
  Height = CGRectGetHeight(v39);
  if (Height >= 2.0)
  {
    v20 = Height;
  }

  else
  {
    v20 = 2.0;
  }

  v21 = [[SUUIScrollingTabBarContentCollectionView alloc] initWithFrame:v15 collectionViewLayout:v6, v8, v18, v20];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v21;

  v23 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView panGestureRecognizer];
  [v23 _setHysteresis:15.0];

  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setAllowsSelection:0];
  v24 = self->_contentCollectionView;
  v25 = [MEMORY[0x277D75348] clearColor];
  [(SUUIScrollingTabBarContentCollectionView *)v24 setBackgroundColor:v25];

  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDataSource:self];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDelegate:self];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AEFD80];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setScrollsToTop:0];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setShowsVerticalScrollIndicator:0];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setPagingEnabled:1];
  [v3 addSubview:self->_contentCollectionView];
  [(SUUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  v26 = [(SUUIScrollingTabBarController *)self _tabBarBackdropGroupName];
  v27 = objc_alloc_init(MEMORY[0x277D75D18]);
  tabBarContainerView = self->_tabBarContainerView;
  self->_tabBarContainerView = v27;

  [v3 addSubview:self->_tabBarContainerView];
  v29 = objc_alloc_init(SUUICrossFadingTabBar);
  tabBar = self->_tabBar;
  self->_tabBar = v29;

  [(SUUICrossFadingTabBar *)self->_tabBar _setChargeEnabled:self->_chargeEnabledOnTabBarButtonsContainer];
  v31 = [(SUUICrossFadingTabBar *)self->_tabBar backgroundView];
  [v31 setBackdropBarGroupName:v26];
  [(UIView *)self->_tabBarContainerView addSubview:self->_tabBar];
  [(SUUIScrollingTabBarController *)self _updateTabBarButtons];
  v32 = objc_alloc_init(SUUIDynamicBarAnimator);
  dynamicBarAnimator = self->_dynamicBarAnimator;
  self->_dynamicBarAnimator = v32;

  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setDelegate:self];
  [(SUUIScrollingTabBarController *)self _updateDynamicBarGeometry];
  if (self->_transientViewController)
  {
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setHidden:1];
    v34 = [(UIViewController *)self->_transientViewController view];
    [v3 insertSubview:v34 belowSubview:self->_tabBarContainerView];
  }
}

- (void)viewDidLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v29 viewDidLayoutSubviews];
  v3 = [(SUUIScrollingTabBarController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  proxyScrollView = self->_proxyScrollView;
  if (proxyScrollView)
  {
    v13 = [(SUUIProxyScrollView *)proxyScrollView superview];

    if (!v13)
    {
      [v3 addSubview:self->_proxyScrollView];
    }
  }

  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v16 = SUUIMPUFoundationFramework();
  v17 = SUUIWeakLinkedSymbolForString("MPUSizeEqualToSize", v16);
  p_contentCollectionViewItemSize = &self->_contentCollectionViewItemSize;
  if (v17(self->_contentCollectionViewItemSize.width, self->_contentCollectionViewItemSize.height, v9, v11))
  {
    v19 = 0;
  }

  else
  {
    if (self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange)
    {
      v19 = p_contentCollectionViewItemSize->width > 0.00000011920929;
      if (p_contentCollectionViewItemSize->width > 0.00000011920929)
      {
        [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
        v14 = v20;
        UIRoundToViewScale();
        v15 = v21;
      }

      self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange = 0;
    }

    else
    {
      v19 = 0;
    }

    p_contentCollectionViewItemSize->width = v9;
    self->_contentCollectionViewItemSize.height = v11;
    v22 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    v23 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

    [v23 setInvalidateFlowLayoutDelegateMetrics:1];
    v24 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    [v24 invalidateLayoutWithContext:v23];
  }

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  Width = CGRectGetWidth(v30);
  if (Width >= 2.0)
  {
    v26 = Width;
  }

  else
  {
    v26 = 2.0;
  }

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v26;
  v31.size.height = v11;
  Height = CGRectGetHeight(v31);
  if (Height >= 2.0)
  {
    v28 = Height;
  }

  else
  {
    v28 = 2.0;
  }

  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setFrame:v5, v7, v26, v28];
  if (v19)
  {
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setContentOffset:v15, v14];
  }

  [(SUUIScrollingTabBarController *)self _updateLayoutOfTabBar];
  [(SUUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SUUIScrollingTabBarController;
  [(SUUIViewController *)&v8 viewWillAppear:a3];
  v4 = [(SUUIScrollingTabBarController *)self transitionCoordinator];
  v5 = v4;
  if (v4)
  {
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SUUIScrollingTabBarController_viewWillAppear___block_invoke;
    v7[3] = &unk_2798F5A88;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SUUIScrollingTabBarController_viewWillAppear___block_invoke_2;
    v6[3] = &unk_2798F5A88;
    [v4 animateAlongsideTransition:v7 completion:v6];
  }

  else
  {
    [(SUUIScrollingTabBarController *)self _updateStatusBarPositionForcingVisible:0];
  }
}

uint64_t __48__SUUIScrollingTabBarController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateStatusBarPositionForcingVisible:1];
  }

  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v8 viewWillDisappear:a3];
  v4 = [(SUUIScrollingTabBarController *)self transitionCoordinator];
  v5 = v4;
  if (v4)
  {
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SUUIScrollingTabBarController_viewWillDisappear___block_invoke;
    v7[3] = &unk_2798F5A88;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SUUIScrollingTabBarController_viewWillDisappear___block_invoke_2;
    v6[3] = &unk_2798F5A88;
    [v4 animateAlongsideTransition:v7 completion:v6];
  }

  else
  {
    [(SUUIScrollingTabBarController *)self _updateStatusBarPositionForcingVisible:1];
  }
}

uint64_t __51__SUUIScrollingTabBarController_viewWillDisappear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateStatusBarPositionForcingVisible:0];
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(SUUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 tabBarController:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }

  self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange = 1;
  if (v7)
  {
    ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__SUUIScrollingTabBarController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_2798F5A88;
    v10[4] = self;
    [v7 animateAlongsideTransition:0 completion:v10];
  }

  v9.receiver = self;
  v9.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (id)contentScrollView
{
  if (!self->_proxyScrollView && [(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v3 = [SUUIProxyScrollView alloc];
    v4 = [(SUUIProxyScrollView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    proxyScrollView = self->_proxyScrollView;
    self->_proxyScrollView = v4;

    [(SUUIProxyScrollView *)self->_proxyScrollView setHidden:1];
    [(SUUIProxyScrollView *)self->_proxyScrollView setDelegate:self];
    [(SUUIProxyScrollView *)self->_proxyScrollView setScrollEnabled:0];
    [(SUUIProxyScrollView *)self->_proxyScrollView setScrollsToTop:0];
    v6 = [(SUUIScrollingTabBarController *)self view];
    [v6 addSubview:self->_proxyScrollView];
  }

  v7 = self->_proxyScrollView;

  return v7;
}

- (id)rotatingSnapshotViewForWindow:(id)a3
{
  v4 = self->_transientViewController;
  if (!v4)
  {
    v4 = self->_topLevelFocusedViewController;
  }

  v5 = [(UIViewController *)v4 view];

  return v5;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v17.receiver = self;
  v17.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v17 _edgeInsetsForChildViewController:a3 insetsAreAbsolute:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SUUIScrollingTabBarController *)self contentViewControllerBottomInsetAdjustment];
  v13 = v12;
  if (a4)
  {
    *a4 = 0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.right = v16;
  result.bottom = v13;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setClientContext:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUUIScrollingTabBarController;
  [(SUUIViewController *)&v15 setClientContext:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_286BCF1D8, v11}])
        {
          [v10 setClientContext:v4];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_SUUIScrollingTabFocusedContentScrollViewContentSizeObservationContext == a6)
  {

    [(SUUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = SUUIScrollingTabBarController;
    [(SUUIScrollingTabBarController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (BOOL)dynamicBarAnimator:(id)a3 canHideBarsByDraggingWithOffset:(double)a4
{
  [(UIScrollView *)self->_focusedContentScrollView contentSize];
  v7 = v6;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v9 = v7 + v8;
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  return v9 - CGRectGetMaxY(v11) - a4 > 49.0;
}

- (void)dynamicBarAnimatorDidUpdate:(id)a3
{
  [(SUUIScrollingTabBarController *)self _updateNavigationBarsForVerticalLayoutChange];
  [(SUUIScrollingTabBarController *)self _updateLayoutOfTabBar];

  [(SUUIScrollingTabBarController *)self _updateFocusedViewControllerInsetsForVerticalLayoutChange];
}

- (void)scrollViewDidChangeContentInset:(id)a3
{
  if (self->_proxyScrollView == a3)
  {
    [a3 contentInset];
    v8.f64[0] = v4;
    v8.f64[1] = v5;
    v9.f64[0] = v6;
    v9.f64[1] = v7;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.top, v8), vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.bottom, v9)))) & 1) == 0)
    {
      self->_proxyScrollViewContentInsetAdjustment.top = v4;
      self->_proxyScrollViewContentInsetAdjustment.left = v5;
      self->_proxyScrollViewContentInsetAdjustment.bottom = v6;
      self->_proxyScrollViewContentInsetAdjustment.right = v7;

      [(SUUIScrollingTabBarController *)self _updateViewControllerContentScrollViewInset];
    }
  }
}

- (void)scrollingTabBarContentCollectionViewDidLayoutSubviews:(id)a3
{
  if (self->_contentCollectionView == a3)
  {
    [(SUUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
  }
}

- (void)scrollingTabBarControllerItemContextRequestsContentOffsetUpdate:(id)a3
{
  v4 = a3;
  if (!self->_referenceCountForIgnoringContentOffsetUpdateRequests)
  {
    v14 = v4;
    v5 = [v4 viewController];
    if ([v5 isViewLoaded])
    {
      v6 = [v5 view];
      v7 = [v6 window];

      if (v7)
      {
        v8 = [(SUUIScrollingTabBarController *)self _parentCellForViewController:v5];
        if (v8)
        {
          v9 = [v14 nestedPagingScrollView];
          [v9 contentOffset];
          v11 = v10;
          [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
          v13 = v12;
          [v8 frame];
          [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setContentOffset:v11 + CGRectGetMinX(v16), v13];
        }
      }
    }

    v4 = v14;
  }
}

- (void)scrollingTabBarControllerItemContextRequestsContentSizeUpdate:(id)a3
{
  viewControllers = self->_viewControllers;
  v5 = [a3 viewController];
  self->_indexOfViewControllerWithUpdatedContentSize = [(NSArray *)viewControllers indexOfObject:v5];

  if (![(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView isPerformingLayout])
  {

    [(SUUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
  }
}

- (void)scrollingTabBarControllerItemContext:(id)a3 observedNavigationStackDidChange:(id)a4
{
  if (self->_topLevelFocusedViewController == a4)
  {
    [(SUUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  }
}

- (void)tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:(id)a3
{
  tabBarPalette = self->_tabBarPalette;
  if (tabBarPalette == a3 && [(SUUIScrollingTabBarPalette *)tabBarPalette isAttached])
  {

    [(SUUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
  }
}

- (void)observedScrollViewDidScroll:(id)a3
{
  v5 = a3;
  [(SUUIScrollingTabBarController *)self _updateDynamicBarGeometry];
  if (self->_focusedScrollViewIsDragging)
  {
    if (self->_shouldShowBarsAfterDraggingDownward)
    {
      if ([(SUUIScrollingTabBarController *)self _focusedContentScrollViewIsScrolledToOrPastBottom])
      {
        [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
      }

      self->_shouldShowBarsAfterDraggingDownward = 0;
    }

    [v5 contentOffset];
    [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator updateDraggingWithOffset:v4];
  }

  [(SUUIScrollingTabBarController *)self _updateNavigationBarsForVerticalLayoutChange];
  [(SUUIScrollingTabBarController *)self _updateFocusedViewControllerInsetsForVerticalLayoutChange];
}

- (void)observedScrollViewWillBeginDragging:(id)a3
{
  self->_focusedScrollViewIsDragging = 1;
  [a3 contentOffset];
  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator beginDraggingWithOffset:v4];
  self->_shouldShowBarsAfterDraggingDownward = [(SUUIScrollingTabBarController *)self _focusedContentScrollViewIsScrolledToOrPastBottom];
}

- (void)observedScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint)a5
{
  if (self->_focusedScrollViewIsDragging)
  {
    self->_focusedScrollViewIsDragging = 0;
    [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator endDraggingWithTargetOffset:a3 velocity:a5.y, a4.y * 1000.0, a5.x];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (self->_contentCollectionView == a3)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return 0;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_contentCollectionView == v6)
  {
    ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [v7 item]);
    v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v10];
    v12 = [v11 collectionViewCell];
    if (v12)
    {
      v13 = v12;
      v14 = [(SUUIScrollingTabBarContentCollectionView *)v6 layoutAttributesForItemAtIndexPath:v8];
      v15 = MEMORY[0x277D75D18];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __71__SUUIScrollingTabBarController_collectionView_cellForItemAtIndexPath___block_invoke;
      v23[3] = &unk_2798F5BC0;
      v24 = v6;
      v25 = v14;
      v9 = v13;
      v26 = v9;
      v16 = v14;
      [v15 performWithoutAnimation:v23];
    }

    else
    {
      v9 = [(SUUIScrollingTabBarContentCollectionView *)v6 dequeueReusableCellWithReuseIdentifier:0x286AEFD80 forIndexPath:v8];
      [v11 setCollectionViewCell:v9];
    }

    v17 = [v10 view];
    if ([v11 viewControllerIsNavigationController])
    {
      v18 = [v10 viewControllers];
      v19 = [v18 firstObject];

      v20 = [v19 view];
    }

    [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
    [v11 applyNewContentInsetDescriptor:&v22];
    [v9 setManagesViewControllerContainerViewLayout:0];
    [v9 setViewController:v10];
    --self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  [a3 bounds];
  v9 = v8;
  v11 = v10;
  viewControllerToItemContext = self->_viewControllerToItemContext;
  v13 = [v7 viewController];
  v14 = [(NSMapTable *)viewControllerToItemContext objectForKey:v13];

  [v14 prepareViewControllerForDisplayWithSize:{v9, v11}];
  v15 = MEMORY[0x277D75D18];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __83__SUUIScrollingTabBarController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
  v22 = &unk_2798F5AF8;
  v23 = self;
  v16 = v7;
  v24 = v16;
  [v15 performWithoutAnimation:&v19];
  v17 = [(SUUIScrollingTabBarController *)self delegate:v19];
  if (objc_opt_respondsToSelector())
  {
    v18 = [v16 viewController];
    [v17 tabBarController:self willDisplayViewController:v18];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = [a4 viewController];
  v6 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:?];
  [v6 notifyOfUpdatedAppearanceStatus:{0, 0}];
  v7 = [(SUUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 tabBarController:self didEndDisplayingViewController:v8];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  if (self->_contentCollectionView == a3)
  {
    width = self->_contentCollectionViewItemSize.width;
    height = self->_contentCollectionViewItemSize.height;
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [a5 item]);
    v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v10];
    [v11 nestedPagingScrollViewContentWidth];
    v13 = v12;
    if ([v10 isViewLoaded])
    {
      v14 = [v10 view];
      [v14 bounds];
      v15 = CGRectGetWidth(v21);

      if (v15 > 0.00000011920929)
      {
        UIRoundToViewScale();
        v13 = v16;
      }
    }

    if (v13 <= width)
    {
      v17 = width;
    }

    else
    {
      v17 = v13;
    }

    if (v17 >= 2.0)
    {
      v5 = v17;
    }

    else
    {
      v5 = 2.0;
    }

    if (height >= 2.0)
    {
      v6 = height;
    }

    else
    {
      v6 = 2.0;
    }
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v18 = v5;
  v19 = v6;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"_SUUIScrollingTabStateRestorationSelectedViewController"];
  if (v5)
  {
    v6 = [(SUUIScrollingTabBarController *)self allViewControllers];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      [(SUUIScrollingTabBarController *)self setSelectedViewController:v5];
    }
  }

  v8.receiver = self;
  v8.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v8 decodeRestorableStateWithCoder:v4];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUUIScrollingTabBarController *)self selectedViewController];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"_SUUIScrollingTabStateRestorationSelectedViewController"];
  }

  else
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 ignoreSnapshotOnNextApplicationLaunch];
  }

  v7.receiver = self;
  v7.super_class = SUUIScrollingTabBarController;
  [(SUUIScrollingTabBarController *)&v7 encodeRestorableStateWithCoder:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = SUUIScrollingTabBarController;
  v4 = a3;
  [(SUUIScrollingTabBarController *)&v11 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(SUUIScrollingTabBarController *)self traitCollection];
  [v7 displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    if ([(SUUIScrollingTabBarController *)self isViewLoaded])
    {
      v10 = [(SUUIScrollingTabBarController *)self view];
      [v10 setNeedsLayout];
    }
  }
}

- (double)contentViewControllerBottomInsetAdjustment
{
  [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
  [(SUUIScrollingTabBarController *)self _effectiveBottomBarOffset];
  return 0.0 - v3;
}

- (unint64_t)selectedIndex
{
  if (self->_transientViewController)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(SUUIScrollingTabBarController *)self viewControllers];
  v5 = [(SUUIScrollingTabBarController *)self selectedViewController];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (void)setAdditionalTabBarButtonsContainerPositionOffset:(UIOffset)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(SUUIScrollingTabBarController *)self _roundedOffsetFromOffset:a3.horizontal, a3.vertical];
  p_additionalTabBarButtonsContainerPositionOffset = &self->_additionalTabBarButtonsContainerPositionOffset;
  if (self->_additionalTabBarButtonsContainerPositionOffset.horizontal != v4 || self->_additionalTabBarButtonsContainerPositionOffset.vertical != v5)
  {
    v12 = *p_additionalTabBarButtonsContainerPositionOffset;
    p_additionalTabBarButtonsContainerPositionOffset->horizontal = v4;
    self->_additionalTabBarButtonsContainerPositionOffset.vertical = v5;
    if ([(SUUIScrollingTabBarController *)self isViewLoaded])
    {
      if (self->_additionalPositionOffsetsAtomicUpdateRequestCount)
      {
        if (!self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset)
        {
          self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset = 1;
          self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarButtonsContainerPositionOffset = v12;
        }
      }

      else
      {
        *&v14[3] = 0;
        *v14 = 0;
        *&v13[3] = 0;
        *v13 = 0;
        *&v14[7] = v12;
        *&v13[7] = *MEMORY[0x277D76DA8];
        v8 = 1;
        *v9 = *v14;
        *&v9[15] = v12.vertical;
        v10 = 0;
        *v11 = *v13;
        *&v11[15] = *&v13[15];
        [(SUUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:&v8];
      }
    }
  }
}

- (void)setAdditionalTabBarPalettePositionOffset:(UIOffset)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(SUUIScrollingTabBarController *)self _roundedOffsetFromOffset:a3.horizontal, a3.vertical];
  p_additionalTabBarPalettePositionOffset = &self->_additionalTabBarPalettePositionOffset;
  if (self->_additionalTabBarPalettePositionOffset.horizontal != v4 || self->_additionalTabBarPalettePositionOffset.vertical != v5)
  {
    v12 = *p_additionalTabBarPalettePositionOffset;
    p_additionalTabBarPalettePositionOffset->horizontal = v4;
    self->_additionalTabBarPalettePositionOffset.vertical = v5;
    if ([(SUUIScrollingTabBarController *)self isViewLoaded])
    {
      if (self->_additionalPositionOffsetsAtomicUpdateRequestCount)
      {
        if (!self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarPalettePositionOffset)
        {
          self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarPalettePositionOffset = 1;
          self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarPalettePositionOffset = v12;
        }
      }

      else
      {
        *&v14[3] = 0;
        *v14 = 0;
        *&v13[3] = 0;
        *v13 = 0;
        *&v14[7] = *MEMORY[0x277D76DA8];
        *&v13[7] = v12;
        v8 = 0;
        *v9 = *v14;
        *&v9[15] = *&v14[15];
        v10 = 1;
        *v11 = *v13;
        *&v11[15] = v12.vertical;
        [(SUUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:&v8];
      }
    }
  }
}

- (void)setChargeEnabledOnTabBarButtonsContainer:(BOOL)a3
{
  if (self->_chargeEnabledOnTabBarButtonsContainer != a3)
  {
    v3 = a3;
    self->_chargeEnabledOnTabBarButtonsContainer = a3;
    if ([(SUUIScrollingTabBarController *)self isViewLoaded])
    {
      tabBar = self->_tabBar;

      [(SUUICrossFadingTabBar *)tabBar _setChargeEnabled:v3];
    }
  }
}

- (void)setScrollEnabled:(BOOL)a3
{
  if (a3)
  {
    v4 = [objc_opt_class() areScrollingTabsAllowed];
  }

  else
  {
    v4 = 0;
  }

  if (self->_scrollEnabled != v4)
  {
    self->_scrollEnabled = v4;

    [(SUUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  }
}

- (void)setSelectedViewController:(id)a3
{
  v4 = a3;
  v5 = [(SUUIScrollingTabBarController *)self viewControllers];
  v6 = [v5 indexOfObject:v4];

  [(SUUIScrollingTabBarController *)self setSelectedIndex:v6];
}

- (void)setTransientViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  transientViewController = self->_transientViewController;
  if (transientViewController != v6)
  {
    v8 = transientViewController;
    if (v8)
    {
      v9 = *(MEMORY[0x277D768C8] + 16);
      v25 = *MEMORY[0x277D768C8];
      v26 = v9;
      transientViewControllerItemContext = self->_transientViewControllerItemContext;
      v27 = 0;
      [(SUUIScrollingTabBarControllerItemContext *)transientViewControllerItemContext applyNewContentInsetDescriptor:&v25];
      v11 = self->_transientViewControllerItemContext;
      self->_transientViewControllerItemContext = 0;

      [(UIViewController *)v8 willMoveToParentViewController:0];
      if ([(UIViewController *)v8 isViewLoaded])
      {
        v12 = [(UIViewController *)v8 view];
        [v12 removeFromSuperview];
      }

      [(UIViewController *)v8 removeFromParentViewController];
    }

    objc_storeStrong(&self->_transientViewController, a3);
    if (self->_transientViewController)
    {
      [(SUUIScrollingTabBarController *)self addChildViewController:?];
      if ([(SUUIScrollingTabBarController *)self isViewLoaded])
      {
        v13 = [(SUUIScrollingTabBarController *)self view];
        v14 = [(UIViewController *)self->_transientViewController view];
        [v13 insertSubview:v14 belowSubview:self->_tabBarContainerView];
      }

      [(UIViewController *)self->_transientViewController didMoveToParentViewController:self];
    }

    v15 = self->_transientViewController;
    if (v8)
    {
      if (v15)
      {
LABEL_15:
        v16 = [[SUUIScrollingTabBarControllerItemContext alloc] initWithViewController:self->_transientViewController];
        v17 = self->_transientViewControllerItemContext;
        self->_transientViewControllerItemContext = v16;

        v18 = [(UIViewController *)self->_transientViewController view];
        if ([(SUUIScrollingTabBarControllerItemContext *)self->_transientViewControllerItemContext viewControllerIsNavigationController])
        {
          v19 = [(UIViewController *)self->_transientViewController viewControllers];
          v20 = [v19 firstObject];

          v21 = [v20 view];
        }

        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
        v22 = self->_transientViewControllerItemContext;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        [(SUUIScrollingTabBarControllerItemContext *)v22 applyNewContentInsetDescriptor:v23];
        goto LABEL_18;
      }
    }

    else if (!v15)
    {
      goto LABEL_18;
    }

    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setHidden:v8 == 0];
    [(SUUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
    [(SUUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    if (self->_transientViewController)
    {
      goto LABEL_15;
    }

LABEL_18:
    [(SUUIScrollingTabBarController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)setViewControllers:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SUUIScrollingTabBarController_setViewControllers___block_invoke;
  v5[3] = &unk_2798F5BE8;
  v5[4] = self;
  v4 = self;
  [(SUUIScrollingTabBarController *)v4 _setViewControllers:a3 collectionViewsUpdateHandler:v5 forFinalTearDown:0];
}

uint64_t __52__SUUIScrollingTabBarController_setViewControllers___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1152) reloadData];
  v2 = *(a1 + 32);

  return [v2 _updateScrollViewContentOffsetsToTargetContentOffsets];
}

- (CGRect)tabBarButtonsContainerFrame
{
  if ([(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v3 = [(SUUIScrollingTabBarController *)self view];
    [(SUUICrossFadingTabBar *)self->_tabBar bounds];
    [v3 convertRect:self->_tabBar fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(SUUICrossFadingTabBar *)self->_tabBar traitCollection];
    [v12 displayScale];
    v14 = v13;

    if (v14 < 0.00000011920929)
    {
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
      v14 = v16;
    }

    v17 = v7 - 1.0 / v14;
    v18 = v11 + 1.0 / v14;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = v5;
  v20 = v9;
  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v17;
  result.origin.x = v19;
  return result;
}

- (CGRect)tabBarPaletteFrame
{
  if ([(SUUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
  {
    v3 = [(SUUIScrollingTabBarController *)self view];
    [(SUUIScrollingTabBarPalette *)self->_tabBarPalette bounds];
    [v3 convertRect:self->_tabBarPalette fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)tabBarPaletteWithHeight:(double)a3
{
  tabBarPalette = self->_tabBarPalette;
  if (!tabBarPalette)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = [(SUUIScrollingTabBarController *)self view];
    [v8 bounds];
    Width = CGRectGetWidth(v16);

    v10 = [[SUUIScrollingTabBarPalette alloc] initWithFrame:v6, v7, Width, a3];
    v11 = self->_tabBarPalette;
    self->_tabBarPalette = v10;

    v12 = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette _backgroundView];
    v13 = [(SUUIScrollingTabBarController *)self _tabBarBackdropGroupName];
    [v12 setBackdropBarGroupName:v13];

    tabBarPalette = self->_tabBarPalette;
  }

  return tabBarPalette;
}

- (void)attachTabBarPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v8 && self->_tabBarPalette == v8)
  {
    v10 = [(SUUIScrollingTabBarController *)self view];
    [(SUUIScrollingTabBarPalette *)self->_tabBarPalette _setAttached:1];
    [(SUUIScrollingTabBarPalette *)self->_tabBarPalette _setDelegate:self];
    [(SUUIScrollingTabBarController *)self _updateViewControllerContentScrollViewInset];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke;
    aBlock[3] = &unk_2798F9498;
    aBlock[4] = self;
    v11 = v10;
    v26 = v11;
    v27 = v9;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v6)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_2;
      v22[3] = &unk_2798F5AF8;
      v23 = v11;
      v24 = self;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_3;
      v21[3] = &unk_2798F5BE8;
      v21[4] = self;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_4;
      v18 = &unk_2798F94C0;
      v19 = self;
      v20 = v13;
      [(SUUIScrollingTabBarController *)self _animatePaletteWithSetup:v22 animations:v21 completion:&v15];
    }

    else
    {
      (*(v12 + 2))(v12);
      [(SUUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
    }

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"SUUIScrollingTabBarControllerPaletteWasAttached" object:self];
  }
}

uint64_t __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1272) insertSubview:*(*(a1 + 32) + 1312) belowSubview:*(*(a1 + 32) + 1264)];
  [*(a1 + 40) setNeedsLayout];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 40) + 1312) frame];
  v8.size.height = v2 + 5.0;
  v8.origin.y = v3 + -5.0;
  v4 = *(*(a1 + 40) + 1312);
  Height = CGRectGetHeight(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, Height);
  return [v4 setTransform:&v7];
}

uint64_t __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1312);
  CGAffineTransformMakeTranslation(&v3, 0.0, 5.0);
  return [v1 setTransform:&v3];
}

uint64_t __73__SUUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1312);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return (*(*(a1 + 40) + 16))();
}

- (void)detachTabBarPalette:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && self->_tabBarPalette == v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke;
    aBlock[3] = &unk_2798F6030;
    aBlock[4] = self;
    v22 = v9;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v6)
    {
      [(SUUIScrollingTabBarPalette *)self->_tabBarPalette frame];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_2;
      v20[3] = &unk_2798F5DA8;
      v20[4] = self;
      v20[5] = v13;
      v20[6] = v14;
      v20[7] = v15;
      v20[8] = v16;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_3;
      v18[3] = &unk_2798F94C0;
      v18[4] = self;
      v19 = v12;
      [(SUUIScrollingTabBarController *)self _animatePaletteWithSetup:0 animations:v20 completion:v18];
    }

    else
    {
      (*(v11 + 2))(v11);
    }

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 postNotificationName:@"SUUIScrollingTabBarControllerPaletteWasDetached" object:self];
  }
}

uint64_t __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1312) _setAttached:0];
  [*(a1 + 32) _updateViewControllerContentScrollViewInset];
  [*(*(a1 + 32) + 1312) removeFromSuperview];
  [*(*(a1 + 32) + 1312) _setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1312);
  *(v2 + 1312) = 0;

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];

  [*(a1 + 32) _updateTabBarBackgroundsAndHairlines];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1312);
  Height = CGRectGetHeight(*(a1 + 40));
  CGAffineTransformMakeTranslation(&v4, 0.0, Height + 5.0);
  return [v1 setTransform:&v4];
}

uint64_t __73__SUUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1312);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return (*(*(a1 + 40) + 16))();
}

- (void)didUpdateAdditionalTabBarComponentsPositionOffsets
{
  additionalPositionOffsetsAtomicUpdateRequestCount = self->_additionalPositionOffsetsAtomicUpdateRequestCount;
  if (additionalPositionOffsetsAtomicUpdateRequestCount)
  {
    v5 = additionalPositionOffsetsAtomicUpdateRequestCount - 1;
    self->_additionalPositionOffsetsAtomicUpdateRequestCount = v5;
    if (!v5)
    {
      v10 = v2;
      v11 = v3;
      p_additionalPositionOffsetsUpdateRecord = &self->_additionalPositionOffsetsUpdateRecord;
      v7 = *&self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarButtonsContainerPositionOffset.vertical;
      v9[0] = *&self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset;
      v9[1] = v7;
      v9[2] = self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarPalettePositionOffset;
      [(SUUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:v9];
      p_additionalPositionOffsetsUpdateRecord->didUpdateAdditionalTabBarButtonsContainerPositionOffset = 0;
      v8 = *MEMORY[0x277D76DA8];
      p_additionalPositionOffsetsUpdateRecord->oldAdditionalTabBarButtonsContainerPositionOffset = *MEMORY[0x277D76DA8];
      p_additionalPositionOffsetsUpdateRecord->didUpdateAdditionalTabBarPalettePositionOffset = 0;
      p_additionalPositionOffsetsUpdateRecord->oldAdditionalTabBarPalettePositionOffset = v8;
    }
  }
}

- (void)updateTabBarComponentPositionOffsetsWithPresentationValues
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__SUUIScrollingTabBarController_updateTabBarComponentPositionOffsetsWithPresentationValues__block_invoke;
  v2[3] = &unk_2798F5BE8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __91__SUUIScrollingTabBarController_updateTabBarComponentPositionOffsetsWithPresentationValues__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1272) layer];
  v43 = [v2 presentationLayer];

  v3 = [*(*(a1 + 32) + 1312) layer];
  v4 = [v3 presentationLayer];

  v5 = [*(a1 + 32) view];
  v6 = [v5 layer];
  v7 = [v6 presentationLayer];
  [v43 bounds];
  [v7 convertRect:v43 fromLayer:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [*(a1 + 32) view];
  v17 = [v16 layer];
  v18 = [v17 presentationLayer];
  [v4 bounds];
  [v18 convertRect:v4 fromLayer:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = SUUIMPUFoundationFramework();
  v28 = SUUIWeakLinkedSymbolForString("MPUSizeEqualToSize", v27);
  if (v28([v43 bounds], v13, v15) && ((v28)(objc_msgSend(v4, "bounds"), v24, v26) & 1) != 0)
  {
    [*(a1 + 32) willUpdateAdditionalTabBarComponentsPositionOffsets];
    v29 = *MEMORY[0x277D76DA8];
    v30 = *(MEMORY[0x277D76DA8] + 8);
    [*(a1 + 32) setAdditionalTabBarButtonsContainerPositionOffset:{*MEMORY[0x277D76DA8], v30}];
    [*(a1 + 32) setAdditionalTabBarPalettePositionOffset:{v29, v30}];
    [*(a1 + 32) didUpdateAdditionalTabBarComponentsPositionOffsets];
    v31 = [*(a1 + 32) view];
    [v31 setNeedsLayout];

    v32 = [*(a1 + 32) view];
    [v32 layoutIfNeeded];

    v33 = [*(a1 + 32) view];
    [*(*(a1 + 32) + 1272) bounds];
    [v33 convertRect:*(*(a1 + 32) + 1272) fromView:?];
    v35 = v34;
    v37 = v36;

    v38 = [*(a1 + 32) view];
    [*(*(a1 + 32) + 1312) bounds];
    [v38 convertRect:*(*(a1 + 32) + 1312) fromView:?];
    v40 = v39;
    v42 = v41;

    [*(a1 + 32) willUpdateAdditionalTabBarComponentsPositionOffsets];
    [*(a1 + 32) setAdditionalTabBarButtonsContainerPositionOffset:{v9 - v35, v11 - v37}];
    [*(a1 + 32) setAdditionalTabBarPalettePositionOffset:{v20 - v40, v22 - v42}];
    [*(a1 + 32) didUpdateAdditionalTabBarComponentsPositionOffsets];
  }

  else
  {
    NSLog(&cfstr_InvalidSizeRet.isa);
  }
}

- (void)hideBarWithTransition:(int)a3
{
  if (!self->_tabBarExplicitlyHidden)
  {
    v3 = *&a3;
    self->_tabBarExplicitlyHidden = 1;
    [(SUUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    v5 = [(SUUIScrollingTabBarController *)self view];
    [v5 layoutIfNeeded];

    [(UIView *)self->_tabBarContainerView bounds];
    v10 = *MEMORY[0x277D76DA8];
    v11 = *(MEMORY[0x277D76DA8] + 8);
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v13 = 0.0;
        goto LABEL_16;
      }

      if (v3 == 7)
      {
        v11 = v11 + CGRectGetHeight(*&v6);
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v10 = v10 - CGRectGetWidth(*&v6);
        goto LABEL_14;
      }

      if (v3 == 2)
      {
        v10 = v10 + CGRectGetWidth(*&v6);
LABEL_14:
        v13 = 1.0;
LABEL_16:
        v14 = MEMORY[0x277D75D18];
        [objc_opt_class() durationForTransition:v3];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__SUUIScrollingTabBarController_hideBarWithTransition___block_invoke;
        v16[3] = &unk_2798F94E8;
        v16[4] = self;
        *&v16[5] = v10;
        *&v16[6] = v11;
        *&v16[7] = v13;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __55__SUUIScrollingTabBarController_hideBarWithTransition___block_invoke_2;
        v15[3] = &unk_2798F5D30;
        v15[4] = self;
        [v14 animateWithDuration:v16 animations:v15 completion:?];
        return;
      }
    }

    [(UIView *)self->_tabBarContainerView setHidden:1];
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_286C23808])
    {
      topLevelFocusedViewController = self->_topLevelFocusedViewController;

      [(UIViewController *)topLevelFocusedViewController scrollingTabBarBottomInsetAdjustmentDidChange];
    }
  }
}

uint64_t __55__SUUIScrollingTabBarController_hideBarWithTransition___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1280) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 1280) != *MEMORY[0x277D76DA8] || *(v2 + 1288) != *(MEMORY[0x277D76DA8] + 8))
  {
    [v2 _updateLayoutOfTabBar];
    v2 = *(a1 + 32);
  }

  if (*(a1 + 56) < 0.999999881)
  {
    [*(v2 + 1272) setAlpha:?];
    v2 = *(a1 + 32);
  }

  result = [*(v2 + 1320) conformsToProtocol:&unk_286C23808];
  if (result)
  {
    v5 = *(*(a1 + 32) + 1320);

    return [v5 scrollingTabBarBottomInsetAdjustmentDidChange];
  }

  return result;
}

uint64_t __55__SUUIScrollingTabBarController_hideBarWithTransition___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1272) setHidden:1];
  }

  return result;
}

- (void)showBarWithTransition:(int)a3
{
  if (self->_tabBarExplicitlyHidden)
  {
    v3 = *&a3;
    v5 = [(SUUIScrollingTabBarController *)self view];
    [v5 layoutIfNeeded];

    [(UIView *)self->_tabBarContainerView bounds];
    v10 = MEMORY[0x277D76DA8];
    v11 = *MEMORY[0x277D76DA8];
    v12 = *(MEMORY[0x277D76DA8] + 8);
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v12 = v12 + CGRectGetHeight(*&v6);
        goto LABEL_14;
      }

      v13 = 0.0;
      if (v3 == 6)
      {
LABEL_15:
        [(UIView *)self->_tabBarContainerView setHidden:0];
        self->_tabBarExplicitHidingOffset.horizontal = v11;
        self->_tabBarExplicitHidingOffset.vertical = v12;
        [(SUUIScrollingTabBarController *)self _updateLayoutOfTabBar];
        [(UIView *)self->_tabBarContainerView setAlpha:v13];
        v15 = MEMORY[0x277D75D18];
        [objc_opt_class() durationForTransition:v3];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __55__SUUIScrollingTabBarController_showBarWithTransition___block_invoke;
        v17[3] = &unk_2798F5BE8;
        v17[4] = self;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__SUUIScrollingTabBarController_showBarWithTransition___block_invoke_2;
        v16[3] = &unk_2798F5D30;
        v16[4] = self;
        [v15 animateWithDuration:v17 animations:v16 completion:?];
        return;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v11 = v11 + CGRectGetWidth(*&v6);
        goto LABEL_14;
      }

      if (v3 == 2)
      {
        v11 = v11 - CGRectGetWidth(*&v6);
LABEL_14:
        v13 = 1.0;
        goto LABEL_15;
      }
    }

    [(UIView *)self->_tabBarContainerView setHidden:0];
    self->_tabBarExplicitlyHidden = 0;
    self->_tabBarExplicitHidingOffset = *v10;
    [(SUUIScrollingTabBarController *)self _updateLayoutOfTabBar];
    [(UIView *)self->_tabBarContainerView setAlpha:1.0];
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_286C23808])
    {
      topLevelFocusedViewController = self->_topLevelFocusedViewController;

      [(UIViewController *)topLevelFocusedViewController scrollingTabBarBottomInsetAdjustmentDidChange];
    }
  }
}

uint64_t __55__SUUIScrollingTabBarController_showBarWithTransition___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1296) = 0;
  *(*(a1 + 32) + 1280) = *MEMORY[0x277D76DA8];
  [*(a1 + 32) _updateLayoutOfTabBar];
  [*(*(a1 + 32) + 1272) setAlpha:1.0];
  result = [*(*(a1 + 32) + 1320) conformsToProtocol:&unk_286C23808];
  if (result)
  {
    v3 = *(*(a1 + 32) + 1320);

    return [v3 scrollingTabBarBottomInsetAdjustmentDidChange];
  }

  return result;
}

uint64_t __55__SUUIScrollingTabBarController_showBarWithTransition___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateHidesBarsOnSwipeAvailability];
  }

  return result;
}

- (void)_tabBarButtonTapped:(id)a3
{
  v6 = a3;
  if (self->_transientViewController)
  {
    [(SUUIScrollingTabBarController *)self setTransientViewController:0 animated:0];
  }

  v4 = [(SUUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v5 = [v4 indexOfObject:v6];

  [(SUUIScrollingTabBarController *)self _selectTabAtIndex:v5 shouldFallbackToPoppingToTabRootContent:1];
}

- (id)_deepestFocusedViewControllerWithTopLevelFocusedViewController:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v4];
  v6 = [v5 nestedPagingScrollView];
  v7 = v4;
  if (v6)
  {
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    Width = CGRectGetWidth(v13);
    if (Width >= 2.0)
    {
      v9 = Width;
    }

    else
    {
      v9 = 2.0;
    }

    [v6 contentOffset];
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v7 = [v5 viewControllerInNestedPagingScrollViewAtPageIndex:vcvtmd_u64_f64(v10 / v9)];
  }

  return v7;
}

- (void)_discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:(id *)a3
{
  if (a3->var0 != a3->var1)
  {
    viewControllers = self->_viewControllers;
    if (a3->var2 >= 0.5)
    {
      var0 = a3->var0;
    }

    else
    {
      var0 = a3->var1;
    }

    v8 = [(NSArray *)viewControllers objectAtIndex:var0];
    v7 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v8];
    [v7 setLastSelectedPageIndex:0];
  }
}

- (double)_effectiveBottomBarOffset
{
  if (self->_tabBarExplicitlyHidden)
  {
    [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
    return 0.0;
  }

  else
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(SUUIDynamicBarAnimator *)dynamicBarAnimator bottomBarOffset];
  }

  return result;
}

- (double)_effectiveTopBarHeight
{
  if (self->_tabBarExplicitlyHidden)
  {
    v3 = [(UIViewController *)self->_focusedViewController navigationController];
    v4 = [v3 navigationBar];
    [v4 bounds];
    Height = CGRectGetHeight(v8);

    return Height;
  }

  else
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(SUUIDynamicBarAnimator *)dynamicBarAnimator topBarHeight];
  }

  return result;
}

- (BOOL)_focusedContentScrollViewIsScrolledToOrPastBottom
{
  [(UIScrollView *)self->_focusedContentScrollView contentSize];
  v4 = v3;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v6 = v5;
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  return CGRectGetMaxY(v8) >= v4 + v6;
}

- (void)_invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:(id *)a3 indexOfViewControllerWithUpdatedContentSize:(unint64_t)a4
{
  v7 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = a3->var0 != a4 || a3->var0 == a3->var1;
  v20 = v7;
  if (v9)
  {
    v17 = *MEMORY[0x277CBF348];
  }

  else
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:a4 inSection:0];
    v11 = [v20 layoutAttributesForItemAtIndexPath:v10];
    [v11 frame];
    Width = CGRectGetWidth(v22);

    viewControllerToItemContext = self->_viewControllerToItemContext;
    v14 = [(NSArray *)self->_viewControllers objectAtIndex:a4];
    v15 = [(NSMapTable *)viewControllerToItemContext objectForKey:v14];

    [v15 nestedPagingScrollViewContentWidth];
    v17 = v16 - Width;
  }

  v18 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v18 setInvalidateFlowLayoutDelegateMetrics:1];
  [v18 setContentOffsetAdjustment:{v17, v8}];
  v19 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  [v19 invalidateLayoutWithContext:v18];
}

- (void)_notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:(id *)a3
{
  var0 = a3->var0;
  var1 = a3->var1;
  v8 = 1.0 - a3->var2;
  v10 = v8 < 0.999999881 && var1 == var0;
  v15 = [(NSArray *)self->_viewControllers objectAtIndex:?];
  v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:?];
  [v11 notifyOfUpdatedAppearanceStatus:{*&v8, v10}];
  if (a3->var1 != a3->var0)
  {
    var2 = a3->var2;
    v13 = [(NSArray *)self->_viewControllers objectAtIndex:?];
    v14 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v13];
    [v14 notifyOfUpdatedAppearanceStatus:{*&var2, 0}];
  }
}

- (id)_parentCellForViewController:(id)a3
{
  v3 = a3;
  if ([v3 isViewLoaded])
  {
    v4 = [v3 view];
    v5 = [v4 superview];
    if (v5)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v6 = [v5 superview];

        v5 = v6;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_animatePaletteWithSetup:(id)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  activePaletteTransitions = self->_activePaletteTransitions;
  if (!activePaletteTransitions)
  {
    [(SUUIScrollingTabBarPalette *)self->_tabBarPalette bounds];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v13 + -5.0, v15, v12 + 5.0}];
    [v16 setClipsToBounds:1];
    [v16 addSubview:self->_tabBarPalette];
    v17 = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette layer];
    [v17 setValue:v16 forKey:@"SUUIScrollingTabBarPaletteClippingView"];

    [(UIView *)self->_tabBarContainerView insertSubview:v16 belowSubview:self->_tabBar];
    [(SUUIScrollingTabBarPalette *)self->_tabBarPalette setTabBarBackgroundExtendsBehindPalette:0];
    [(SUUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
    if (v8)
    {
      v8[2](v8);
    }

    activePaletteTransitions = self->_activePaletteTransitions;
  }

  self->_activePaletteTransitions = activePaletteTransitions + 1;
  v18 = SUUIMPUFoundationFramework();
  v19 = SUUIWeakLinkedClassForString(&cfstr_Mpuspringanima.isa, v18);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__SUUIScrollingTabBarController__animatePaletteWithSetup_animations_completion___block_invoke;
  v21[3] = &unk_2798F94C0;
  v21[4] = self;
  v22 = v10;
  v20 = v10;
  [v19 animateUsingSpringWithDamping:v9 mass:1024 stiffness:v21 velocity:700.0 animations:2.0 options:300.0 completion:0.0];
}

void __80__SUUIScrollingTabBarController__animatePaletteWithSetup_animations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  --*(*(a1 + 32) + 1064);
  v3 = *(a1 + 32);
  if (!*(v3 + 1064))
  {
    [*(v3 + 1312) setTabBarBackgroundExtendsBehindPalette:1];
    [*(a1 + 32) _updateTabBarBackgroundsAndHairlines];
    v6 = [*(*(a1 + 32) + 1312) layer];
    v9 = [v6 valueForKey:@"SUUIScrollingTabBarPaletteClippingView"];

    v7 = [*(*(a1 + 32) + 1312) layer];
    [v7 setValue:0 forKey:@"SUUIScrollingTabBarPaletteClippingView"];

    [v9 removeFromSuperview];
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }
  }
}

- (void)_popVisibleNavigationStacksToRootWithHorizontalLayoutContext:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3->var0 != a3->var1)
  {
    v3 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) viewController];
          if ([v8 conformsToProtocol:&unk_286C23950])
          {
            [v8 popToNavigationStackRootContentAnimated:0 withBehavior:1];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (UIOffset)_roundedOffsetFromOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  if ([(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v6 = [(SUUIScrollingTabBarController *)self view];
    UIRoundToViewScale();
    horizontal = v7;
    UIRoundToViewScale();
    vertical = v8;
  }

  v9 = horizontal;
  v10 = vertical;
  result.vertical = v10;
  result.horizontal = v9;
  return result;
}

- (void)_setFocusedViewController:(id)a3 showBarsIfNeeded:(BOOL)a4 animated:(BOOL)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v10 = a3;
  v19 = v10;
  if (v10)
  {
    v11 = [(SUUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:v10];
  }

  else
  {
    v11 = 0;
  }

  focusedViewController = self->_focusedViewController;
  if (focusedViewController != v11)
  {
    if (self->_canHideBarsOnSwipe && [(UIViewController *)focusedViewController conformsToProtocol:&unk_286C4CB88])
    {
      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:0];
    }

    focusedContentScrollView = self->_focusedContentScrollView;
    if (focusedContentScrollView)
    {
      [(UIScrollView *)focusedContentScrollView removeObserver:self forKeyPath:@"contentSize" context:_SUUIScrollingTabFocusedContentScrollViewContentSizeObservationContext];
    }

    topLevelFocusedViewController = self->_topLevelFocusedViewController;
    if (topLevelFocusedViewController != v19)
    {
      objc_storeStrong(&self->_topLevelFocusedViewController, a3);
    }

    objc_storeStrong(&self->_focusedViewController, v11);
    v15 = [(UIViewController *)v11 contentScrollView];
    v16 = self->_focusedContentScrollView;
    self->_focusedContentScrollView = v15;

    v17 = self->_focusedContentScrollView;
    if (v17)
    {
      [(UIScrollView *)v17 addObserver:self forKeyPath:@"contentSize" options:0 context:_SUUIScrollingTabFocusedContentScrollViewContentSizeObservationContext];
    }

    if (self->_canHideBarsOnSwipe && [(UIViewController *)self->_focusedViewController conformsToProtocol:&unk_286C4CB88])
    {
      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:self];
    }

    if (v7)
    {
      [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
    }

    [(SUUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    [(SUUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
    if (topLevelFocusedViewController != v19)
    {
      [(SUUIScrollingTabBarController *)self setNeedsStatusBarAppearanceUpdate];
      if (v6)
      {
        v18 = [(SUUIScrollingTabBarController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v18 tabBarController:self didSelectViewController:self->_topLevelFocusedViewController];
        }
      }
    }
  }
}

- (void)_selectTabAtIndex:(unint64_t)a3 shouldFallbackToPoppingToTabRootContent:(BOOL)a4
{
  v4 = a4;
  contentCollectionView = self->_contentCollectionView;
  v8 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  v37 = [(SUUIScrollingTabBarContentCollectionView *)contentCollectionView layoutAttributesForItemAtIndexPath:v8];

  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
  v10 = v9;
  v12 = v11;
  [v37 frame];
  MinX = CGRectGetMinX(v39);
  v14 = [(NSArray *)self->_viewControllers objectAtIndex:a3];
  v15 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v14];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  Width = CGRectGetWidth(v40);
  v17 = MinX + Width * [v15 lastSelectedPageIndex];
  v18 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  [v18 targetContentOffsetForProposedContentOffset:{v17, v12}];
  v20 = v19;
  v22 = v21;

  if (vabdd_f64(v20, v10) > 0.00000011920929)
  {
    v23 = self->_contentCollectionView;
    v24 = v20;
    v25 = v22;
    v26 = 0;
LABEL_13:
    [(SUUIScrollingTabBarContentCollectionView *)v23 setContentOffset:v26 animated:v24, v25];
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_286C23950])
  {
    v27 = self->_topLevelFocusedViewController;
    if (([(UIViewController *)v27 isShowingNavigationStackRootContent]& 1) == 0)
    {
      v28 = [(SUUIScrollingTabBarController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v29 = [(SUUIScrollingTabBarController *)self delegate];
        v30 = [v29 tabBarController:self shouldFallbackToRootForController:v14];

        if (v30)
        {
          [(UIViewController *)v27 popToNavigationStackRootContentAnimated:1 withBehavior:0];

          goto LABEL_14;
        }
      }

      else
      {
      }
    }
  }

  if ([v15 lastSelectedPageIndex])
  {
    [v37 frame];
    v31 = CGRectGetMinX(v41);
    v32 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    [v32 targetContentOffsetForProposedContentOffset:{v31, v22}];
    v34 = v33;
    v36 = v35;

    v23 = self->_contentCollectionView;
    v24 = v34;
    v25 = v36;
    v26 = 1;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_setViewControllers:(id)a3 collectionViewsUpdateHandler:(id)a4 forFinalTearDown:(BOOL)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  viewControllers = self->_viewControllers;
  if (viewControllers == v8 || [(NSArray *)viewControllers isEqualToArray:v8])
  {
    goto LABEL_74;
  }

  v63 = a5;
  v67 = v9;
  v65 = self->_transientViewController;
  if (v65)
  {
    [(SUUIScrollingTabBarController *)self setTransientViewController:0 animated:0];
  }

  v64 = self->_topLevelFocusedViewController;
  v62 = [(SUUIScrollingTabBarController *)self selectedIndex];
  v11 = [(NSArray *)self->_viewControllers copy];
  v66 = v8;
  v12 = [(NSArray *)v8 copy];
  v13 = self->_viewControllers;
  self->_viewControllers = v12;

  ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  v70 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v86;
    v18 = MEMORY[0x277D768C8];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v86 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v85 + 1) + 8 * i);
        if (![(NSArray *)self->_viewControllers containsObject:v20])
        {
          v21 = [v20 parentViewController];

          if (v21 == self)
          {
            [v70 addObject:v20];
            [v20 willMoveToParentViewController:0];
          }

          v22 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v20];
          [v22 prepareViewControllerForTearDown];
          v23 = v18[1];
          v83[0] = *v18;
          v83[1] = v23;
          v84 = 0;
          [v22 applyNewContentInsetDescriptor:v83];
          v24 = [(SUUIScrollingTabBarController *)self _parentCellForViewController:v20];
          [v24 setViewController:0];
          [(NSMapTable *)self->_viewControllerToItemContext removeObjectForKey:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v16);
  }

  --self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  v68 = [(NSArray *)self->_viewControllers count];
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v68];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v26 = self->_viewControllers;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v79 + 1) + 8 * j);
        if (([v14 containsObject:v31] & 1) == 0)
        {
          [v25 addObject:v31];
          if ([v31 conformsToProtocol:&unk_286BCF1D8])
          {
            v32 = [(SUUIViewController *)self clientContext];
            [v31 setClientContext:v32];
          }

          [(SUUIScrollingTabBarController *)self addChildViewController:v31];
          v33 = [[SUUIScrollingTabBarControllerItemContext alloc] initWithViewController:v31];
          [(SUUIScrollingTabBarControllerItemContext *)v33 setDelegate:self];
          viewControllerToItemContext = self->_viewControllerToItemContext;
          if (!viewControllerToItemContext)
          {
            v35 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:v68];
            v36 = self->_viewControllerToItemContext;
            self->_viewControllerToItemContext = v35;

            viewControllerToItemContext = self->_viewControllerToItemContext;
          }

          [(NSMapTable *)viewControllerToItemContext setObject:v33 forKey:v31];
        }
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v28);
  }

  if (v67)
  {
    v67[2]();
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v37 = v25;
  v38 = [v37 countByEnumeratingWithState:&v75 objects:v90 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v75 + 1) + 8 * k) didMoveToParentViewController:self];
      }

      v39 = [v37 countByEnumeratingWithState:&v75 objects:v90 count:16];
    }

    while (v39);
  }

  v69 = v37;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v42 = v70;
  v43 = [v42 countByEnumeratingWithState:&v71 objects:v89 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v72;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v72 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v71 + 1) + 8 * m);
        [v47 removeFromParentViewController];
        v48 = [(SUUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:v47];
        focusedViewController = self->_focusedViewController;

        if (v48 == focusedViewController)
        {
          [(SUUIScrollingTabBarController *)self _setFocusedViewController:0 showBarsIfNeeded:1 animated:0 notifyDelegate:0];
        }

        if ([v47 conformsToProtocol:&unk_286BCF1D8])
        {
          [v47 setClientContext:0];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v44);
  }

  if (v63 || ![(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v50 = v64;
    v51 = v69;
    if (!v64)
    {
      goto LABEL_71;
    }
  }

  else
  {
    [(SUUIScrollingTabBarController *)self _updateTabBarButtons];
    v50 = v64;
    if (!v64)
    {
      [(SUUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
      v51 = v69;
      goto LABEL_71;
    }

    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setNeedsLayout];
    v51 = v69;
  }

  v52 = [(NSArray *)self->_viewControllers indexOfObject:v50];
  if (v52 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v56 = v52;
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    Width = CGRectGetWidth(v94);
    v58 = v62;
    if (Width > 0.00000011920929)
    {
      [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
      v60 = v59;
      [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
      if (v61 < 0.0)
      {
        v61 = 0.0;
      }

      if (v61 >= v60 - Width)
      {
        v61 = v60 - Width;
      }

      v58 = vcvtad_u64_f64(v61 / Width);
    }

    if (v58 == v56)
    {
      goto LABEL_71;
    }

    v54 = self;
    v55 = v56;
    goto LABEL_69;
  }

  if (v62 >= [(NSArray *)self->_viewControllers count])
  {
    v53 = 0;
  }

  else
  {
    v53 = v62;
  }

  if (v53 < [(NSArray *)self->_viewControllers count]&& v53 != [(SUUIScrollingTabBarController *)self selectedIndex])
  {
    v54 = self;
    v55 = v53;
LABEL_69:
    [(SUUIScrollingTabBarController *)v54 setSelectedIndex:v55];
  }

LABEL_71:
  if (v65)
  {
    [(SUUIScrollingTabBarController *)self setTransientViewController:v65 animated:0];
  }

  v8 = v66;
  v9 = v67;
LABEL_74:
}

- (id)_tabBarBackdropGroupName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> Backdrop Group", v5, self];

  return v6;
}

- (void)_updateAdditionalPositionOffsetsWithUpdateRecord:(id *)a3
{
  if (!self->_tabBarExplicitlyHidden)
  {
    var0 = a3->var0;
    var2 = a3->var2;
    var3 = a3->var3;
    var1 = a3->var1;
    if (var0)
    {
      [(UIView *)self->_tabBarContainerView center];
      v7.f64[1] = v6;
      [(UIView *)self->_tabBarContainerView setCenter:vaddq_f64(vsubq_f64(v7, var1), self->_additionalTabBarButtonsContainerPositionOffset)];
    }

    else if (!a3->var2)
    {
      return;
    }

    if ([(SUUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
    {
      [(SUUIScrollingTabBarPalette *)self->_tabBarPalette center];
      v9.f64[1] = v8;
      if (var0)
      {
        v9 = vsubq_f64(vaddq_f64(var1, v9), self->_additionalTabBarButtonsContainerPositionOffset);
      }

      if (var2)
      {
        v9 = vaddq_f64(vsubq_f64(v9, v12), self->_additionalTabBarPalettePositionOffset);
      }

      tabBarPalette = self->_tabBarPalette;

      [(SUUIScrollingTabBarPalette *)tabBarPalette setCenter:*&v9];
    }
  }
}

- (void)_updateDynamicBarGeometry
{
  v3 = [(UIViewController *)self->_focusedViewController navigationController];
  v4 = [v3 navigationBar];
  [v4 bounds];
  Height = CGRectGetHeight(v20);

  v6 = [MEMORY[0x277D75128] sharedApplication];
  [v6 statusBarFrame];
  v7 = CGRectGetHeight(v21);

  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setTopBarHeight:1 forState:Height];
  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setTopBarHeight:0 forState:-1.0 - v7];
  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setBottomBarOffset:1 forState:0.0];
  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setBottomBarOffset:0 forState:49.0];
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v17 = Height - v16;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  [(SUUIDynamicBarAnimator *)self->_dynamicBarAnimator setMinimumTopBarHeight:v17 - CGRectGetMinY(v22)];
  dynamicBarAnimator = self->_dynamicBarAnimator;

  [(SUUIDynamicBarAnimator *)dynamicBarAnimator setMaximumBottomBarOffset:1.79769313e308];
}

- (void)_updateFocusedViewControllerInsetsForVerticalLayoutChange
{
  v3 = [(SUUIScrollingTabBarController *)self view];
  v4 = [(UIViewController *)self->_focusedViewController navigationController];
  v5 = [v4 navigationBar];

  [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
  [v5 bounds];
  [v3 convertRect:v5 fromView:?];
  MaxY = CGRectGetMaxY(v7);
  [(SUUIScrollingTabBarController *)self _effectiveBottomBarOffset];
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  [(UIScrollView *)self->_focusedContentScrollView setContentInset:MaxY];
  [(UIScrollView *)self->_focusedContentScrollView scrollIndicatorInsets];
  [(UIScrollView *)self->_focusedContentScrollView setScrollIndicatorInsets:MaxY];
}

- (void)_updateFocusedViewControllerWithHorizontalLayoutContext:(id *)a3
{
  var2 = a3->var2;
  if (var2 == a3->var1 || var2 <= 0.5)
  {
    var0 = a3->var0;
  }

  else
  {
    var0 = a3->var1;
  }

  v7 = [(NSArray *)self->_viewControllers objectAtIndex:var0];
  [(SUUIScrollingTabBarController *)self _setFocusedViewController:v7 showBarsIfNeeded:1 animated:1 notifyDelegate:1];
}

- (void)_updateForHorizontalLayoutChange
{
  v41 = *MEMORY[0x277D85DE8];
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v7 = CGRectGetWidth(v42);
  if (v7 >= 2.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  v10 = [v9 layoutAttributesForElementsInRect:{x, y, width, height}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v36 + 1) + 8 * i) frame];
        v49.origin.x = v18;
        v49.origin.y = v19;
        v49.size.width = v20;
        v49.size.height = v21;
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (!CGRectIntersectsRect(v43, v49))
        {
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
          }

          [v14 addIndex:v15];
        }

        ++v15;
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if ([v14 count])
  {
    v22 = [v11 mutableCopy];
    [v22 removeObjectsAtIndexes:v14];

    v11 = v22;
  }

  v23 = [v11 sortedArrayUsingComparator:&__block_literal_global_162];

  if ([v23 count])
  {
    v24 = [v23 firstObject];
    v25 = [v24 indexPath];
    v26 = [v25 item];

    v27 = [v23 lastObject];
    v28 = [v27 indexPath];
    v29 = [v28 item];

    if (v29 == v26 + 1)
    {
      [v27 frame];
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v45 = CGRectIntersection(v44, v50);
      v30 = CGRectGetWidth(v45) / v8;
    }

    else
    {
      [v24 frame];
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v47 = CGRectIntersection(v46, v51);
      v31 = CGRectGetWidth(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v30 = 1.0 - v31 / CGRectGetWidth(v48);
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v32 = fmin(v30, 1.0);
    if (self->_indexOfViewControllerWithUpdatedContentSize == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _popVisibleNavigationStacksToRootWithHorizontalLayoutContext:&v33];
      [(SUUIScrollingTabBarController *)self _updateLayoutOfVisibleCollectionViewCells];
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:&v33];
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _updateFocusedViewControllerWithHorizontalLayoutContext:&v33];
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:&v33];
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:&v33];
    }

    else
    {
      v33 = v26;
      v34 = v29;
      v35 = v32;
      [(SUUIScrollingTabBarController *)self _invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:&v33 indexOfViewControllerWithUpdatedContentSize:?];
      self->_indexOfViewControllerWithUpdatedContentSize = 0x7FFFFFFFFFFFFFFFLL;
      [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView layoutIfNeeded];
    }
  }
}

uint64_t __65__SUUIScrollingTabBarController__updateForHorizontalLayoutChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v5 item];

  v7 = [v4 indexPath];

  v8 = [v7 item];
  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (void)_updateHidesBarsOnSwipeAvailability
{
  focusedContentScrollView = self->_focusedContentScrollView;
  if (!focusedContentScrollView || self->_transientViewController || self->_tabBarExplicitlyHidden)
  {
    v4 = 0;
  }

  else
  {
    [(UIScrollView *)focusedContentScrollView contentSize];
    v8 = v7;
    v9 = [(SUUIScrollingTabBarController *)self view];
    [v9 bounds];
    v4 = v8 > CGRectGetHeight(v11) * 1.5;
  }

  if (self->_canHideBarsOnSwipe != v4)
  {
    self->_canHideBarsOnSwipe = v4;
    if ([(UIViewController *)self->_focusedViewController conformsToProtocol:&unk_286C4CB88])
    {
      if (self->_canHideBarsOnSwipe)
      {
        v5 = self;
      }

      else
      {
        v5 = 0;
      }

      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:v5];
    }

    if (!self->_canHideBarsOnSwipe)
    {
      dynamicBarAnimator = self->_dynamicBarAnimator;

      [(SUUIDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:1 animated:0];
    }
  }
}

- (void)_updateHorizontalScrollingAvailability
{
  if (self->_scrollEnabled)
  {
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_286C23950])
    {
      v3 = [(UIViewController *)self->_topLevelFocusedViewController isShowingNavigationStackRootContent];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  contentCollectionView = self->_contentCollectionView;

  [(SUUIScrollingTabBarContentCollectionView *)contentCollectionView setScrollEnabled:v3];
}

- (void)_updateLayoutOfCollectionViewCell:(id)a3
{
  v4 = a3;
  [v4 layoutIfNeeded];
  v46 = [v4 viewController];
  v5 = [v4 viewControllerContainerView];

  v6 = [v5 superview];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
  v40 = v15;
  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  Width = CGRectGetWidth(v48);
  if (Width >= 2.0)
  {
    v17 = Width;
  }

  else
  {
    v17 = 2.0;
  }

  [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
  v19 = v18;
  v20 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v46];
  v21 = [v20 nestedPagingScrollView];
  v22 = v21;
  if (v21)
  {
    [v21 contentOffset];
    v42 = v24;
    v43 = v23;
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView convertRect:v6 fromView:v8, v10, v12, v14];
    v41 = v14;
    x = v49.origin.x;
    y = v49.origin.y;
    v44 = v17;
    v27 = v49.size.width;
    height = v49.size.height;
    v45 = v19;
    v29 = v19 - CGRectGetMinX(v49);
    if (v29 >= 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0.0;
    }

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = v27;
    v17 = v44;
    v50.size.height = height;
    v31 = CGRectGetWidth(v50) - v44;
    if (v30 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    v51.origin.x = v8;
    v51.origin.y = v10;
    v51.size.width = v12;
    v51.size.height = v41;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v8;
    v52.origin.y = v10;
    v52.size.width = v12;
    v52.size.height = v41;
    [v5 setFrame:{v32, MinY, v44, CGRectGetHeight(v52)}];
    if (v43 != v32)
    {
      [v20 updateNestedPagingScrollViewContentOffset:{v32, v42}];
    }

    v34 = vcvtmd_u64_f64((v44 * 0.5 + v32) / v44);
    v19 = v45;
  }

  else
  {
    [v5 setFrame:{v8, v10, v12, v14}];
    v34 = 0;
  }

  [v20 setLastSelectedPageIndex:v34];
  if ([v20 viewControllerIsNavigationController])
  {
    v35 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView layer];
    v36 = [v35 needsLayout];

    if ((v36 & 1) == 0)
    {
      v37 = [v46 navigationBar];
      if ([v37 conformsToProtocol:&unk_286C399A0])
      {
        v38 = v37;
        [v38 positionOffset];
        v39 = v19;
        if (v19 >= 0.0)
        {
          v39 = 0.0;
          if (v19 > v40 - v17)
          {
            v39 = v19 - (v40 - v17);
          }
        }

        [v38 setPositionOffset:v39];
      }
    }
  }
}

- (void)_updateLayoutOfTabBar
{
  if ([(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v36 = [(SUUIScrollingTabBarController *)self view];
    [v36 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette isAttached];
    v12 = 0.0;
    if (v11)
    {
      v13 = [v36 traitCollection];
      [v13 displayScale];
      v15 = v14;

      if (v15 < 0.00000011920929)
      {
        v16 = [MEMORY[0x277D759A0] mainScreen];
        [v16 scale];
        v15 = v17;
      }

      [(SUUIScrollingTabBarPalette *)self->_tabBarPalette paletteHeight];
      v12 = 1.0 / v15 + v18;
    }

    if (self->_tabBarExplicitlyHidden)
    {
      horizontal = self->_tabBarExplicitHidingOffset.horizontal;
      vertical = self->_tabBarExplicitHidingOffset.vertical;
      v35 = 0.0;
      v33 = vertical;
      v34 = horizontal;
    }

    else
    {
      [(SUUIScrollingTabBarController *)self _effectiveBottomBarOffset];
      v35 = v21;
      horizontal = self->_additionalTabBarButtonsContainerPositionOffset.horizontal;
      vertical = self->_additionalTabBarButtonsContainerPositionOffset.vertical;
      v33 = self->_additionalTabBarPalettePositionOffset.vertical;
      v34 = self->_additionalTabBarPalettePositionOffset.horizontal;
    }

    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    MaxY = CGRectGetMaxY(v38);
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v12 + 49.0;
    [(UIView *)self->_tabBarContainerView setFrame:v4 + horizontal, vertical + v35 + MaxY - CGRectGetHeight(v39), v8, v39.size.height];
    [(UIView *)self->_tabBarContainerView bounds];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    tabBarExtendedBackgroundView = self->_tabBarExtendedBackgroundView;
    if (tabBarExtendedBackgroundView)
    {
      [(SUUIScrollingTabBarBackgroundView *)tabBarExtendedBackgroundView setFrame:v23, v24, v25, v26];
    }

    if (v11)
    {
      [(SUUIScrollingTabBarPalette *)self->_tabBarPalette setFrame:v34 + v27 - horizontal, v33 + v28 - vertical, v29, v12];
    }

    v40.origin.x = v27;
    v40.origin.y = v28;
    v40.size.width = v29;
    v40.size.height = v30;
    v32 = CGRectGetMaxY(v40);
    v41.origin.x = v27;
    v41.origin.y = v28;
    v41.size.width = v29;
    v41.size.height = 49.0;
    [(SUUICrossFadingTabBar *)self->_tabBar setFrame:v27, v32 - CGRectGetHeight(v41), v29, 49.0];
  }
}

- (void)_updateLayoutOfVisibleCollectionViewCells
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SUUIScrollingTabBarController *)self _updateLayoutOfCollectionViewCell:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateNavigationBarsForVerticalLayoutChange
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) viewController];
        v11 = [(SUUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:v10];

        v12 = [v11 navigationController];
        v13 = [v12 navigationBar];

        if ([v13 conformsToProtocol:&unk_286C399A0])
        {
          v14 = v13;
          [v14 positionOffset];
          v16 = v15;
          [(SUUIScrollingTabBarController *)self _effectiveBottomBarOffset];
          v18 = v17;
          [v14 frame];
          v19 = v18 - CGRectGetHeight(v29);
          [v14 setPositionOffset:{v16, v19}];
          if (v6)
          {
            if (vabdd_f64(v8, v19) > 0.00000011920929)
            {
              v8 = 0.0;
            }
          }

          else
          {
            v8 = v19;
          }

          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  v20 = [MEMORY[0x277D75128] sharedApplication];
  v21 = [v20 statusBar];

  CGAffineTransformMakeTranslation(&v22, 0.0, v8);
  [v21 setTransform:&v22];
}

- (void)_updateScrollViewContentOffsetsToTargetContentOffsets
{
  if ([(SUUIScrollingTabBarController *)self isViewLoaded])
  {
    v3 = [(SUUIScrollingTabBarController *)self view];
    [v3 bounds];
    Width = CGRectGetWidth(v12);

    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
    v6 = v5;
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    MidX = CGRectGetMidX(v13);
    if (MidX < 1.0)
    {
      MidX = 1.0;
    }

    if (MidX >= v6)
    {
      MidX = v6;
    }

    v8 = round((MidX + -1.0) / Width);
    [(SUUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
    if (v9 != Width * v8)
    {
      contentCollectionView = self->_contentCollectionView;

      [(SUUIScrollingTabBarContentCollectionView *)contentCollectionView setContentOffset:?];
    }
  }
}

- (void)_updateStatusBarPositionForcingVisible:(BOOL)a3
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v3;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (!a3)
  {
    v4 = [(UIViewController *)self->_focusedViewController navigationController];
    v5 = [v4 navigationBar];

    if ([v5 conformsToProtocol:&unk_286C399A0])
    {
      [v5 positionOffset];
      CGAffineTransformMakeTranslation(&v11, v6, v7);
    }
  }

  v8 = [MEMORY[0x277D75128] sharedApplication];
  v9 = [v8 statusBar];
  v10 = v11;
  [v9 setTransform:&v10];
}

- (void)_updateTabBarBackgroundsAndHairlines
{
  if ([(SUUIScrollingTabBarPalette *)self->_tabBarPalette tabBarBackgroundExtendsBehindPalette])
  {
    if ([(SUUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
    {
      if (self->_tabBarExtendedBackgroundView)
      {
        v3 = 1;
      }

      else
      {
        v4 = [SUUIScrollingTabBarBackgroundView alloc];
        [(UIView *)self->_tabBarContainerView bounds];
        v5 = [(SUUIScrollingTabBarBackgroundView *)v4 initWithFrame:?];
        tabBarExtendedBackgroundView = self->_tabBarExtendedBackgroundView;
        self->_tabBarExtendedBackgroundView = v5;

        v3 = 1;
        [(SUUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setShowsBackdrop:1];
        [(SUUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setShowsTopHairline:1];
        v7 = self->_tabBarExtendedBackgroundView;
        v8 = [(SUUIScrollingTabBarController *)self _tabBarBackdropGroupName];
        [(SUUIScrollingTabBarBackgroundView *)v7 setBackdropBarGroupName:v8];

        [(UIView *)self->_tabBarContainerView insertSubview:self->_tabBarExtendedBackgroundView atIndex:0];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [(SUUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setHidden:v3 ^ 1];
  v10 = [(SUUICrossFadingTabBar *)self->_tabBar backgroundView];
  [v10 setHidden:v3];
  [v10 setUsesOpaqueColorForTopHairline:v3 ^ 1];
  v9 = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette _backgroundView];
  [v9 setShowsBackdrop:v3 ^ 1];
  [v9 setShowsTopHairline:v3 ^ 1];
  [v9 setShowsBottomHairline:1];
}

- (void)_updateTabBarButtons
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(SUUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v24 + 1) + 8 * i) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v18 = v3;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_viewControllers;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v20 + 1) + 8 * j) tabBarItem];
        v14 = objc_alloc_init(SUUICrossFadingTabBarButton);
        v15 = [v13 title];
        [(SUUICrossFadingTabBarButton *)v14 setTitle:v15];

        v16 = [v13 image];
        [(SUUICrossFadingTabBarButton *)v14 setImage:v16];

        v17 = [v13 selectedImage];
        [(SUUICrossFadingTabBarButton *)v14 setSelectedImage:v17];

        [(SUUICrossFadingTabBarButton *)v14 addTarget:self action:sel__tabBarButtonTapped_ forControlEvents:1];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        [v10 addObject:v14];
        [v13 setView:v14];
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(SUUICrossFadingTabBar *)self->_tabBar setTabBarButtons:v10];
}

- (void)_updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:(id *)a3
{
  if (a3->var0 == a3->var1)
  {
    var2 = 0.0;
  }

  else
  {
    var2 = a3->var2;
  }

  v6 = [(SUUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__SUUIScrollingTabBarController__updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext___block_invoke;
  v7[3] = &unk_2798F9530;
  v7[4] = self;
  v8 = *&a3->var0;
  v9 = a3->var2;
  v10 = var2;
  [v6 enumerateObjectsUsingBlock:v7];
}

uint64_t __98__SUUIScrollingTabBarController__updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 0.0;
  if (!*(*(a1 + 32) + 1360))
  {
    v4 = *(a1 + 40);
    if (v4 <= a3)
    {
      v5 = *(a1 + 48);
      if (v5 >= a3)
      {
        if (v4 == a3)
        {
          v3 = 1.0 - *(a1 + 64);
        }

        else if (v5 == a3)
        {
          v3 = *(a1 + 64);
        }
      }
    }
  }

  return [a2 setSelectionProgress:v3];
}

- (void)_updateViewControllerContentScrollViewInset
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  [(SUUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_viewControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:*(*(&v13 + 1) + 8 * v7)];
        v10 = v17;
        v11 = v18;
        v12 = v19;
        [v8 applyNewContentInsetDescriptor:&v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v5);
  }

  transientViewControllerItemContext = self->_transientViewControllerItemContext;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  [(SUUIScrollingTabBarControllerItemContext *)transientViewControllerItemContext applyNewContentInsetDescriptor:&v10];
}

- ($175F26EC2B3A5A0892810A401BCEA849)_viewControllerContentScrollViewContentInsetDescriptor
{
  v5 = *&self->_proxyScrollViewContentInsetAdjustment.bottom;
  *&retstr->var0.top = *&self->_proxyScrollViewContentInsetAdjustment.top;
  *&retstr->var0.bottom = v5;
  retstr->var1 = 49.0;
  result = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette isAttached];
  if (result)
  {
    v7 = [(SUUIScrollingTabBarController *)self view];
    v8 = [v7 traitCollection];
    [v8 displayScale];
    v10 = v9;

    if (v10 < 0.00000011920929)
    {
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 scale];
      v10 = v12;
    }

    result = [(SUUIScrollingTabBarPalette *)self->_tabBarPalette paletteHeight];
    v14 = 1.0 / v10 + v13 + 49.0;
    retstr->var1 = v14;
  }

  else
  {
    v14 = 49.0;
  }

  retstr->var0.bottom = v14 + retstr->var0.bottom;
  return result;
}

- (void)_viewControllerNeedsNestedPagingScrollViewUpdate:(id)a3
{
  v3 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:a3];
  [v3 updateForPossibleNestedPagingScrollViewChange];
}

- (UIOffset)additionalTabBarButtonsContainerPositionOffset
{
  horizontal = self->_additionalTabBarButtonsContainerPositionOffset.horizontal;
  vertical = self->_additionalTabBarButtonsContainerPositionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIOffset)additionalTabBarPalettePositionOffset
{
  horizontal = self->_additionalTabBarPalettePositionOffset.horizontal;
  vertical = self->_additionalTabBarPalettePositionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end