@interface CapsuleNavigationBarViewController
- (BOOL)_activeWebViewIsFirstResponder;
- (BOOL)_shouldAttachCapsuleForTabViewTransition;
- (BOOL)capsuleCollectionViewAllowsMinimizationGesture:(id)a3;
- (BOOL)capsuleCollectionViewContentScaleCompletesMinimization:(id)a3;
- (BOOL)capsuleCollectionViewShouldFocusSelectedItem:(id)a3;
- (BOOL)transitionToState:(int64_t)a3 options:(int64_t)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (CGSize)capsuleCollectionView:(id)a3 preferredSizeForState:(int64_t)a4;
- (CapsuleNavigationBarViewControllerDelegate)delegate;
- (SFCapsuleCollectionView)capsuleCollectionView;
- (SFCapsuleNavigationBar)selectedItemNavigationBar;
- (UIFocusEnvironment)customParentFocusEnvironment;
- (UIResponder)customNextResponder;
- (UnifiedField)unifiedField;
- (double)capsuleCollectionView:(id)a3 distanceToTopEdgeIncludingDeceleration:(BOOL)a4;
- (double)capsuleCollectionView:(id)a3 heightForWidth:(double)a4 state:(int64_t)a5;
- (double)capsuleCollectionViewMinimizedContentScale:(id)a3;
- (id)_contextMenuActionProvider;
- (id)_dragPreviewForNavigationBar:(id)a3;
- (id)capsuleCollectionView:(id)a3 contentViewForItemAtIndex:(int64_t)a4;
- (id)capsuleCollectionView:(id)a3 createSupplementaryViewWithIdentifier:(id)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)nextResponder;
- (id)parentFocusEnvironment;
- (id)tabAtCollectionViewIndex:(int64_t)a3;
- (id)topActionForCapsuleCollectionView:(id)a3;
- (id)trailingActionForCapsuleCollectionView:(id)a3;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (unint64_t)_boundaryEdgesForScrollView:(id)a3;
- (unint64_t)capsuleCollectionViewBoundaryEdgesForScrollableContent:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_switchObservingFromTabDocument:(id)a3 toTabDocument:(id)a4;
- (void)_updateHidingCapsuleAnimated:(BOOL)a3;
- (void)_updateSelectedItemAccessoryViews;
- (void)_updateTabDocumentsAnimated:(BOOL)a3 reloadingTab:(id)a4;
- (void)_updateTabDocumentsWithoutUpdatingCollectionView;
- (void)beginHidingCapsuleAnimated:(BOOL)a3 reason:(id)a4;
- (void)capsuleCollectionView:(id)a3 didBeginSelectionGestureOnAxis:(unint64_t)a4;
- (void)capsuleCollectionView:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)capsuleCollectionView:(id)a3 selectedItemWillChangeToState:(int64_t)a4 options:(int64_t)a5 coordinator:(id)a6;
- (void)capsuleCollectionView:(id)a3 willChangeToLayoutStyle:(int64_t)a4;
- (void)capsuleCollectionViewDidEndSelectionGesture:(id)a3;
- (void)capsuleCollectionViewLayoutStyleDidChange:(id)a3;
- (void)capsuleCollectionViewWillHideKeyboard:(id)a3;
- (void)capsuleCollectionViewWillReloadData:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)editTabBar;
- (void)endHidingCapsuleAnimated:(BOOL)a3 reason:(id)a4;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCapsuleIsHiddenForMoreMenu:(BOOL)a3;
- (void)setLinkedPageView:(id)a3;
- (void)setNextResponder:(id)a3 parentFocusEnvironment:(id)a4;
- (void)setTabController:(id)a3;
- (void)tabCollectionViewDidPresent:(id)a3;
- (void)tabController:(id)a3 didSwitchFromTabDocument:(id)a4 toTabDocument:(id)a5;
- (void)tabDocumentWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4;
- (void)updateAdditionalBottomObscuredInset;
- (void)updateCapsuleMinimizationBehavior;
- (void)updateVisibleContextMenu;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionFromTabView:(id)a3 toTabView:(id)a4;
@end

@implementation CapsuleNavigationBarViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D28BF8]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  capsuleCollectionView = self->_capsuleCollectionView;
  self->_capsuleCollectionView = v5;

  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setDataSource:self];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setDelegate:self];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView addGestureObserver:self];
  v7 = self->_capsuleCollectionView;

  [(CapsuleNavigationBarViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v29[2] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = CapsuleNavigationBarViewController;
  [(CapsuleNavigationBarViewController *)&v27 viewDidLoad];
  [(CapsuleNavigationBarViewController *)self updateAdditionalBottomObscuredInset];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView updateVerticalSwipeThreshold];
  objc_initWeak(&location, self);
  capsuleCollectionView = self->_capsuleCollectionView;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke;
  v24[3] = &unk_2781D5B30;
  objc_copyWeak(&v25, &location);
  [(SFCapsuleCollectionView *)capsuleCollectionView registerContentViewIdentifier:@"urlField" block:v24];
  v4 = self->_capsuleCollectionView;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_3;
  v22[3] = &unk_2781D5B30;
  objc_copyWeak(&v23, &location);
  [(SFCapsuleCollectionView *)v4 registerContentViewIdentifier:@"navigationBar" block:v22];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
  [v5 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  v6 = objc_alloc(MEMORY[0x277D28C00]);
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView bounds];
  v7 = [v6 initForSizingWithFrame:?];
  sizingNavigationBar = self->_sizingNavigationBar;
  self->_sizingNavigationBar = v7;

  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setIsSelected:1];
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setHidden:1];
  v9 = [MEMORY[0x277D28BF8] maximumContentSizeCategory];
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setMaximumContentSizeCategory:v9];

  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar _setHostsLayoutEngine:1];
  v10 = objc_alloc(MEMORY[0x277D28C00]);
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView bounds];
  v11 = [v10 initForSizingWithFrame:?];
  minimizedSizingNavigationBar = self->_minimizedSizingNavigationBar;
  self->_minimizedSizingNavigationBar = v11;

  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar setIsMinimized:1];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar setIsSelected:1];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar setHidden:1];
  v13 = [MEMORY[0x277D28BF8] maximumContentSizeCategory];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar setMaximumContentSizeCategory:v13];

  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar _setHostsLayoutEngine:1];
  v14 = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_4();
  v29[0] = v14;
  v15 = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_4();
  v29[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setLeadingButtons:v16];

  v17 = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_4();
  v28[0] = v17;
  v18 = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_4();
  v28[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setTrailingButtons:v19];

  [(CapsuleNavigationBarViewController *)self _updateSelectedItemAccessoryViews];
  v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v20 floatForKey:@"DebugCapsuleEdgeMargin"];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setEdgeMargin:v21];
  [(CapsuleNavigationBarViewController *)self updateCapsuleMinimizationBehavior];
  [v20 addObserver:self forKeyPath:@"DebugBarCollapsingBehavior" options:0 context:kvoContext];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)updateAdditionalBottomObscuredInset
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 safari_doubleForKey:*MEMORY[0x277D29040] defaultValue:10.0];
  self->_additionalBottomObscuredInset = v3;
}

id __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_4()
{
  v0 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v1 = [MEMORY[0x277D75348] clearColor];
  v2 = [v0 background];
  [v2 setBackgroundColor:v1];

  [v0 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v3 = MEMORY[0x277D755B8];
  v4 = SFSystemImageNameForBarItem();
  v5 = [v3 systemImageNamed:v4];
  [v0 setImage:v5];

  v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
  [v0 setPreferredSymbolConfigurationForImage:v6];

  v7 = [MEMORY[0x277D28F18] buttonWithConfiguration:v0 primaryAction:0];
  [v7 sf_applyContentSizeCategoryLimitsForToolbarButton];

  return v7;
}

- (void)_updateSelectedItemAccessoryViews
{
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [v3 background];
  [v5 setBackgroundColor:v4];

  [v3 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v6 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView layoutStyle];
  v7 = _WBSLocalizedString();
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {

    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v9 = [MEMORY[0x277D75230] glassButtonConfiguration];

    v7 = &stru_2827BF158;
    v3 = v9;
  }

  else
  {
    if (v6 != 2)
    {
      [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemAccessoryView:0 forState:2];
      goto LABEL_7;
    }

    v8 = 0;
  }

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D75220];
  v11 = MEMORY[0x277D750C8];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __71__CapsuleNavigationBarViewController__updateSelectedItemAccessoryViews__block_invoke;
  v18 = &unk_2781D5B80;
  objc_copyWeak(&v19, &location);
  v12 = [v11 actionWithTitle:v7 image:v8 identifier:0 handler:&v15];
  v13 = [v10 buttonWithConfiguration:v3 primaryAction:{v12, v15, v16, v17, v18}];

  [v13 setConfigurationUpdateHandler:&__block_literal_global_104_0];
  [v13 setPointerInteractionEnabled:1];
  v14 = _SFAccessibilityIdentifierForBarItem();
  [v13 setAccessibilityIdentifier:v14];

  [v13 sf_applyContentSizeCategoryLimitsForToolbarButton];
  [v13 setNeedsLayout];
  [v13 layoutIfNeeded];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemAccessoryView:v13 forState:2];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

LABEL_7:
}

void __71__CapsuleNavigationBarViewController__updateSelectedItemAccessoryViews__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 configuration];
  v3 = [v7 isHighlighted];
  v4 = [v7 tintColor];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 colorWithAlphaComponent:0.25];
    [v2 setBaseForegroundColor:v6];
  }

  else
  {
    [v2 setBaseForegroundColor:v4];
  }

  [v7 setConfiguration:v2];
}

- (SFCapsuleCollectionView)capsuleCollectionView
{
  [(CapsuleNavigationBarViewController *)self loadViewIfNeeded];
  capsuleCollectionView = self->_capsuleCollectionView;

  return capsuleCollectionView;
}

- (void)_updateTabDocumentsWithoutUpdatingCollectionView
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ([(CapsuleNavigationBarViewController *)self _showsOnlyActiveTab])
  {
    v3 = [(TabController *)self->_tabController activeTabDocument];
    v4 = v3;
    if (v3)
    {
      v14[0] = v3;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&self->_tabs, v5);
    if (v4)
    {
    }
  }

  else
  {
    interactivelyInsertedTabDocument = self->_interactivelyInsertedTabDocument;
    v7 = [(TabController *)self->_tabController currentTabs];
    v12 = v7;
    if (interactivelyInsertedTabDocument)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __86__CapsuleNavigationBarViewController__updateTabDocumentsWithoutUpdatingCollectionView__block_invoke;
      v13[3] = &unk_2781D5BC8;
      v13[4] = self;
      v8 = [v7 safari_filterObjectsUsingBlock:v13];
      tabs = self->_tabs;
      self->_tabs = v8;
    }

    else
    {
      v10 = [v7 copy];
      v11 = self->_tabs;
      self->_tabs = v10;
    }
  }
}

id __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x277D28C00]);
    v3 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:WeakRetained];
    [v2 addInteraction:v3];

    v4 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:WeakRetained];
    [v2 addInteraction:v4];

    v5 = [objc_alloc(MEMORY[0x277D753B8]) initWithDelegate:WeakRetained];
    v6 = *(WeakRetained + 130);
    *(WeakRetained + 130) = v5;

    [v2 addInteraction:*(WeakRetained + 130)];
    v7 = [v2 scribbleInteraction];
    [v7 setElementSource:WeakRetained];

    v8 = objc_loadWeakRetained(WeakRetained + 141);
    if (objc_opt_respondsToSelector())
    {
      [v8 capsuleNavigationBarViewController:WeakRetained didCreateNavigationBar:v2];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UnifiedField)unifiedField
{
  if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView numberOfItems])
  {
    v3 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIndex]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 textField];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CapsuleNavigationBarViewController;
    v5 = [(CapsuleNavigationBarViewController *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_activeWebViewIsFirstResponder
{
  v3 = [(CapsuleNavigationBarViewController *)self view];
  v4 = [v3 firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(TabController *)self->_tabController activeTabDocument];
    v6 = [v5 activeWebView];
    v7 = [v4 isDescendantOfView:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kvoContext == a6)
  {
    if ([a3 isEqualToString:{@"DebugBarCollapsingBehavior", a4, a5}])
    {

      [(CapsuleNavigationBarViewController *)self updateCapsuleMinimizationBehavior];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CapsuleNavigationBarViewController;
    [(CapsuleNavigationBarViewController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

id __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277D28C10]);
    v4 = objc_alloc_init(UnifiedField);
    v5 = [v3 initWithTextField:v4];

    v6 = WBSMakeAccessibilityIdentifier();
    [v5 setAccessibilityIdentifier:v6];

    v7 = objc_loadWeakRetained(WeakRetained + 141);
    if (objc_opt_respondsToSelector())
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_2;
      v9[3] = &unk_2781D4F30;
      objc_copyWeak(&v11, (a1 + 32));
      v10 = v7;
      [v5 setVoiceSearchTappedAction:v9];

      objc_destroyWeak(&v11);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __49__CapsuleNavigationBarViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) capsuleNavigationBarViewControllerDidTapVoiceSearch:WeakRetained];
    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CapsuleNavigationBarViewController;
  [(CapsuleNavigationBarViewController *)&v8 viewWillAppear:a3];
  if ((SFEnhancedTabOverviewEnabled() & 1) == 0)
  {
    v4 = [(TabController *)self->_tabController tabCollectionViewProvider];
    v5 = [v4 tabThumbnailCollectionView];

    if (objc_opt_respondsToSelector())
    {
      [v5 addPresentationObserver:self];
    }

    v6 = v5;
    if ([v6 presentationState] == 1)
    {
    }

    else
    {
      v7 = [v6 presentationState];

      if (v7 != 2)
      {
LABEL_8:

        return;
      }
    }

    [(CapsuleNavigationBarViewController *)self beginHidingCapsuleAnimated:0 reason:@"tab view is already presented"];
    goto LABEL_8;
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CapsuleNavigationBarViewController;
  [(CapsuleNavigationBarViewController *)&v6 viewIsAppearing:a3];
  v4 = [(CapsuleNavigationBarViewController *)self view];
  v5 = [v4 window];

  [v5 addSubview:self->_sizingNavigationBar];
  [v5 addSubview:self->_minimizedSizingNavigationBar];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CapsuleNavigationBarViewController;
  [(CapsuleNavigationBarViewController *)&v6 viewDidDisappear:a3];
  v4 = [(TabController *)self->_tabController tabCollectionViewProvider];
  v5 = [v4 tabThumbnailCollectionView];

  if (objc_opt_respondsToSelector())
  {
    [v5 removePresentationObserver:self];
  }

  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar removeFromSuperview];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar removeFromSuperview];
}

- (void)willTransitionFromTabView:(id)a3 toTabView:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v7 removePresentationObserver:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 addPresentationObserver:self];
  }
}

- (id)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_customParentFocusEnvironment);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CapsuleNavigationBarViewController;
    v5 = [(CapsuleNavigationBarViewController *)&v8 parentFocusEnvironment];
  }

  v6 = v5;

  return v6;
}

- (void)setNextResponder:(id)a3 parentFocusEnvironment:(id)a4
{
  obj = a4;
  objc_storeWeak(&self->_customNextResponder, a3);
  objc_storeWeak(&self->_customParentFocusEnvironment, obj);
}

- (void)beginHidingCapsuleAnimated:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "Begin hiding capsule with reason: %{public}@", &v8, 0xCu);
  }

  ++self->_hideCapsuleCount;
  [(CapsuleNavigationBarViewController *)self _updateHidingCapsuleAnimated:v4];
}

- (void)endHidingCapsuleAnimated:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_DEFAULT, "End hiding capsule with reason: %{public}@", &v10, 0xCu);
  }

  hideCapsuleCount = self->_hideCapsuleCount;
  if (hideCapsuleCount)
  {
    self->_hideCapsuleCount = hideCapsuleCount - 1;
    [(CapsuleNavigationBarViewController *)self _updateHidingCapsuleAnimated:v4];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CapsuleNavigationBarViewController endHidingCapsuleAnimated:v9 reason:?];
    }
  }
}

- (void)_updateHidingCapsuleAnimated:(BOOL)a3
{
  v3 = a3;
  hideCapsuleCount = self->_hideCapsuleCount;
  capsuleCollectionView = self->_capsuleCollectionView;
  if (hideCapsuleCount <= 0)
  {
    if (([(SFCapsuleCollectionView *)capsuleCollectionView itemsAreHidden]& 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  else
  {
    v7 = [(SFCapsuleCollectionView *)capsuleCollectionView isInteractivelySelectingItem]^ 1;
    if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView itemsAreHidden]== v7)
    {
      return;
    }
  }

  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setItemsAreHidden:v7];
  if (v3)
  {
    if ([(CapsuleNavigationBarViewController *)self _shouldAttachCapsuleForTabViewTransition])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __67__CapsuleNavigationBarViewController__updateHidingCapsuleAnimated___block_invoke;
      v9[3] = &unk_2781D4D40;
      v9[4] = self;
      [MEMORY[0x277D75D18] sf_animated:1 usingFastSpringWithDelay:2 options:v9 animations:0 completion:0.0];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __67__CapsuleNavigationBarViewController__updateHidingCapsuleAnimated___block_invoke_2;
      v8[3] = &unk_2781D4D40;
      v8[4] = self;
      [MEMORY[0x277D75D18] sf_animate:1 usingDefaultMotionWithOptions:2 animations:v8 completion:0];
    }
  }
}

- (void)setCapsuleIsHiddenForMoreMenu:(BOOL)a3
{
  if (self->_capsuleIsHiddenForMoreMenu != a3)
  {
    v4 = a3;
    self->_capsuleIsHiddenForMoreMenu = a3;
    v6 = [(CapsuleNavigationBarViewController *)self capsuleCollectionView];
    if (v4)
    {
      [v6 setHidingStyle:1];
      [v6 beginHiddenExemptionForSupplementaryWithIdentifier:*MEMORY[0x277D28FD8]];
      [(CapsuleNavigationBarViewController *)self beginHidingCapsuleAnimated:0 reason:@"minibar menu"];
    }

    else
    {
      [(CapsuleNavigationBarViewController *)self endHidingCapsuleAnimated:0 reason:@"minibar menu"];
      [v6 setHidingStyle:0];
      [v6 endHiddenExemptionForSupplementaryWithIdentifier:*MEMORY[0x277D28FD8]];
    }

    [v6 layoutIfNeeded];
  }
}

- (BOOL)_shouldAttachCapsuleForTabViewTransition
{
  if ([(TabController *)self->_tabController isPrivateBrowsingAndLocked])
  {
    return 0;
  }

  if (([(SFCapsuleCollectionView *)self->_capsuleCollectionView layoutStyle]| 2) == 3)
  {
    return [(SFCapsuleCollectionView *)self->_capsuleCollectionView selectionGestureState]!= 0;
  }

  return 1;
}

- (void)setLinkedPageView:(id)a3
{
  objc_storeStrong(&self->_linkedPageView, a3);
  v5 = a3;
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setLinkedPageView:v5];
  [v5 setCapsuleIndexProvider:self];
}

- (void)setTabController:(id)a3
{
  v5 = a3;
  tabController = self->_tabController;
  if (tabController != v5)
  {
    v9 = v5;
    v7 = [(TabController *)tabController activeTabDocument];
    v8 = [(TabController *)v9 activeTabDocument];
    [(CapsuleNavigationBarViewController *)self _switchObservingFromTabDocument:v7 toTabDocument:v8];

    [(TabController *)self->_tabController removeDocumentObserver:self];
    objc_storeStrong(&self->_tabController, a3);
    [(TabController *)self->_tabController addDocumentObserver:self];
    [(CapsuleNavigationBarViewController *)self _updateTabDocumentsAnimated:0];
    v5 = v9;
  }
}

- (void)_switchObservingFromTabDocument:(id)a3 toTabDocument:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 webView];
  v9 = [v8 scrollView];
  [v9 _removeScrollViewScrollObserver:self];

  v10 = [v7 readerWebView];
  v11 = [v10 scrollView];
  [v11 _removeScrollViewScrollObserver:self];

  [v7 removeNavigationObserver:self];
  v12 = [v6 webView];
  v13 = [v12 scrollView];
  [v13 _addScrollViewScrollObserver:self];

  v14 = [v6 readerWebView];
  v15 = [v14 scrollView];
  [v15 _addScrollViewScrollObserver:self];

  [v6 addNavigationObserver:self];
  v16 = [v6 navigationBarItem];

  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setNavigationBarItem:v16];
}

- (BOOL)transitionToState:(int64_t)a3 options:(int64_t)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemState];
  if (v11 != a3)
  {
    v12 = v11;
    v13 = v11 == 1 && a3 == 0;
    if (v13 && self->_keyboardIsVisible)
    {
      self->_unminimizeOnHideKeyboard = 1;
    }

    else
    {
      v14 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView isForceHidden];
      if (v12 != 1 || a3 == 1 || v14 == 0)
      {
        v17 = _Block_copy(v10);
        nextStateChangeCompletionHandler = self->_nextStateChangeCompletionHandler;
        self->_nextStateChangeCompletionHandler = v17;

        [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemState:a3 options:a4 animated:v6];
        v19 = 1;
        goto LABEL_21;
      }
    }
  }

  if (v10)
  {
    v10[2](v10);
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (SFCapsuleNavigationBar)selectedItemNavigationBar
{
  if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView numberOfItems])
  {
    v3 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIndex]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    cachedSelectedItemNavigationBar = v3;
    if ((isKindOfClass & 1) == 0)
    {
      cachedSelectedItemNavigationBar = self->_cachedSelectedItemNavigationBar;
    }

    v6 = cachedSelectedItemNavigationBar;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dragPreviewForNavigationBar:(id)a3
{
  v4 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView viewForItemAtIndex:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIndex]];
  v5 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIndex]];
  if ([MEMORY[0x277D49A08] isSolariumEnabled] && -[SFCapsuleCollectionView layoutStyle](self->_capsuleCollectionView, "layoutStyle") == 1 && -[SFCapsuleCollectionView selectedItemIsMinimized](self->_capsuleCollectionView, "selectedItemIsMinimized"))
  {
    v6 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView viewForSupplementaryWithIdentifier:*MEMORY[0x277D28FC8]];
  }

  else
  {
    v6 = [v4 dragPreviewView];
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x277D758D8]);
  v9 = MEMORY[0x277D75208];
  [v5 bounds];
  [v5 convertRect:v7 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView capsuleBackgroundCornerRadius];
  v19 = [v9 bezierPathWithRoundedRect:v11 cornerRadius:{v13, v15, v17, v18}];
  [v8 setVisiblePath:v19];

  v20 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v20];

  v21 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:v7 parameters:v8];

  return v21;
}

- (void)updateCapsuleMinimizationBehavior
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 integerForKey:@"DebugBarCollapsingBehavior"];

  capsuleCollectionView = self->_capsuleCollectionView;
  if (v4 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4 == 3;
  }

  [(SFCapsuleCollectionView *)capsuleCollectionView setMinimizationScrollBehavior:v6];
}

- (void)updateVisibleContextMenu
{
  if (self->_showingContextMenu)
  {
    v5[5] = v2;
    v5[6] = v3;
    contextMenuInteraction = self->_contextMenuInteraction;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__CapsuleNavigationBarViewController_updateVisibleContextMenu__block_invoke;
    v5[3] = &unk_2781D5B58;
    v5[4] = self;
    [(UIContextMenuInteraction *)contextMenuInteraction updateVisibleMenuWithBlock:v5];
  }
}

id __62__CapsuleNavigationBarViewController_updateVisibleContextMenu__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _contextMenuActionProvider];
  v2 = v1[2](v1, MEMORY[0x277CBEBF8]);

  return v2;
}

void __71__CapsuleNavigationBarViewController__updateSelectedItemAccessoryViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v1 = [WeakRetained tabController];
      v2 = [v1 activeTabDocument];
      v3 = [v2 browserController];
      [v3 navigationBarCancelButtonWasTapped:0];
    }

    else
    {
      v1 = [WeakRetained unifiedField];
      if ([v1 isFirstResponder] && (objc_msgSend(MEMORY[0x277D75658], "isInHardwareKeyboardMode") & 1) == 0)
      {
        [v1 resignFirstResponder];
      }

      else
      {
        [WeakRetained transitionToState:0 animated:1 completionHandler:0];
      }
    }
  }
}

- (void)_updateTabDocumentsAnimated:(BOOL)a3 reloadingTab:(id)a4
{
  v4 = a3;
  v17 = a4;
  tabs = self->_tabs;
  if (!tabs)
  {
    tabs = MEMORY[0x277CBEBF8];
  }

  v7 = tabs;
  [(CapsuleNavigationBarViewController *)self _updateTabDocumentsWithoutUpdatingCollectionView];
  if (v17 && (v8 = [(CapsuleNavigationBarViewController *)self collectionViewIndexOfTab:?], v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(TabController *)self->_tabController activeTabDocument];
  v11 = [(NSArray *)self->_tabs differenceFromArray:v7 withOptions:0 usingEquivalenceTest:&__block_literal_global_109];
  if (([v11 hasChanges] & 1) != 0 || objc_msgSend(v9, "count"))
  {
    capsuleCollectionView = self->_capsuleCollectionView;
    if (v4)
    {
      [(SFCapsuleCollectionView *)capsuleCollectionView beginUpdates];
      v13 = self->_capsuleCollectionView;
      v14 = [v11 safari_removalIndexes];
      [(SFCapsuleCollectionView *)v13 deleteItemsAtIndexes:v14 animated:1];

      v15 = self->_capsuleCollectionView;
      v16 = [v11 safari_insertionIndexes];
      [(SFCapsuleCollectionView *)v15 insertItemsAtIndexes:v16 animated:1];

      if ([(NSArray *)self->_tabs containsObject:v10])
      {
        [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemIndex:[(NSArray *)self->_tabs indexOfObject:v10] animated:1];
      }

      if (v9)
      {
        [(SFCapsuleCollectionView *)self->_capsuleCollectionView reloadItemsAtIndexes:v9];
      }

      [(SFCapsuleCollectionView *)self->_capsuleCollectionView endUpdates];
    }

    else
    {
      [(SFCapsuleCollectionView *)capsuleCollectionView reloadData];
    }
  }

  else if ([(NSArray *)self->_tabs containsObject:v10])
  {
    [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemIndex:[(NSArray *)self->_tabs indexOfObject:v10] animated:v4];
  }
}

uint64_t __79__CapsuleNavigationBarViewController__updateTabDocumentsAnimated_reloadingTab___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v4 uuid];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (void)editTabBar
{
  v3 = objc_alloc_init(MEMORY[0x277D28C60]);
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CapsuleNavigationBarViewController_editTabBar__block_invoke;
  v7[3] = &unk_2781D5C38;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v3 addEditablePropertiesWithTitle:@"Tab Bar Geometry" builder:v7];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v4 setModalPresentationStyle:7];
  v5 = [v4 popoverPresentationController];
  v6 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView popoverSourceView];
  [v5 setSourceView:v6];

  [v5 setDelegate:self];
  [v5 _setShouldDimPresentingViewTint:0];
  [(CapsuleNavigationBarViewController *)self presentViewController:v4 animated:1 completion:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__CapsuleNavigationBarViewController_editTabBar__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D28C58];
  [*(*(a1 + 32) + 1024) edgeMargin];
  v5 = [v4 floatValue:@"Edge Margin" named:? min:? max:? roundedTo:?];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CapsuleNavigationBarViewController_editTabBar__block_invoke_2;
  v6[3] = &unk_2781D5C10;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 addEditableProperty:v5 editHandler:v6];

  objc_destroyWeak(&v7);
}

void __48__CapsuleNavigationBarViewController_editTabBar__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v10 floatValue];
    _SFRoundFloatToPixels();
    v6 = v5;
    v7 = [WeakRetained capsuleCollectionView];
    [v7 setEdgeMargin:v6];

    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v9 = v6;
    [v8 setFloat:@"DebugCapsuleEdgeMargin" forKey:v9];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  self->_keyboardIsVisible = 1;
  if (!self->_unminimizeOnHideKeyboard)
  {
    v4 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIndex]];
    [v4 setNeedsUpdateConstraints];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained capsuleNavigationBarViewControllerIsTrackingDropSession:self] & 1) == 0)
    {
      v5 = [WeakRetained capsuleNavigationBarViewControllerIsShowingFindOnPage:self];
      if (([(CapsuleNavigationBarViewController *)self _activeWebViewIsFirstResponder]|| v5) && [(SFCapsuleCollectionView *)self->_capsuleCollectionView layoutStyle]!= 2)
      {
        self->_unminimizeOnHideKeyboard = (([(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIsMinimized]| v5) & 1) == 0;
        [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemState:1 animated:1];
      }
    }
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = a3;
  self->_keyboardIsVisible = 0;
  if (self->_unminimizeOnHideKeyboard && !self->_showingContextMenu)
  {
    self->_unminimizeOnHideKeyboard = 0;
    self->_transitioningToNormalStateForKeyboardDismissal = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__CapsuleNavigationBarViewController__keyboardWillHide___block_invoke;
    v5[3] = &unk_2781D4D40;
    v5[4] = self;
    [(CapsuleNavigationBarViewController *)self transitionToState:0 animated:1 completionHandler:v5];
  }
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v12 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 activeWebView];
  v6 = [v5 scrollView];

  v7 = v12;
  if (v6 == v12)
  {
    v8 = [v12 isTracking];
    v7 = v12;
    if ((v8 & 1) == 0)
    {
      v9 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView layoutStyle];
      v7 = v12;
      if (v9 == 2 || !self->_keyboardIsVisible)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained capsuleNavigationBarViewController:self shouldUnminimizeOnScrollForScrollView:v12])
        {
          if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIsMinimized])
          {
            [(CapsuleNavigationBarViewController *)self capsuleCollectionView:self->_capsuleCollectionView distanceToTopEdgeIncludingDeceleration:1];
            if (v11 <= 0.0)
            {
              -[CapsuleNavigationBarViewController transitionToState:animated:completionHandler:](self, "transitionToState:animated:completionHandler:", 0, [v12 _isAnimatingScroll], 0);
            }
          }
        }

        v7 = v12;
      }
    }
  }
}

- (void)tabController:(id)a3 didSwitchFromTabDocument:(id)a4 toTabDocument:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(CapsuleNavigationBarViewController *)self _switchObservingFromTabDocument:v8 toTabDocument:v7];
  v9 = [(CapsuleNavigationBarViewController *)self collectionViewIndexOfTab:v8];

  if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView selectionGestureState])
  {
    v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView viewForItemAtIndex:v9];
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    v22[0] = *MEMORY[0x277CBF2C0];
    v22[1] = v12;
    v22[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v11 setTransform:v22];
  }

  if (self->_interactivelyInsertedTabDocument == v7)
  {
    v17 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView linkedPageView];
    v18 = [v17 drivesCapsuleSelection];

    if (v18)
    {
      [self->_interactivelyInsertedTabDocument setInteractivelyInserted:0];
      v19 = [(TabController *)self->_tabController tabCollectionViewProvider];
      v20 = [v19 tabSwitcherViewController];
      [v20 setNeedsApplyContentAnimated:1];
    }

    interactivelyInsertedTabDocument = self->_interactivelyInsertedTabDocument;
    self->_interactivelyInsertedTabDocument = 0;

    [(CapsuleNavigationBarViewController *)self _updateTabDocumentsAnimated:1];
  }

  else
  {
    if ([(CapsuleNavigationBarViewController *)self _showsOnlyActiveTab])
    {
      [(CapsuleNavigationBarViewController *)self _updateTabDocumentsWithoutUpdatingCollectionView];
      capsuleCollectionView = self->_capsuleCollectionView;
      v14 = MEMORY[0x277CCAA78];
      v15 = [(TabController *)self->_tabController activeTabDocument];
      v16 = [v14 indexSetWithIndex:{-[CapsuleNavigationBarViewController collectionViewIndexOfTab:](self, "collectionViewIndexOfTab:", v15)}];
      [(SFCapsuleCollectionView *)capsuleCollectionView reloadItemsAtIndexes:v16];
    }

    else
    {
      [(CapsuleNavigationBarViewController *)self _updateTabDocumentsAnimated:1];
    }

    [(SFCapsuleCollectionView *)self->_capsuleCollectionView updateTrailingActionAnimated:1];
  }
}

- (void)tabDocumentWillEndNavigationGesture:(id)a3 withNavigationToBackForwardListItem:(id)a4
{
  if ([(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemIsMinimized:a3])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__CapsuleNavigationBarViewController_tabDocumentWillEndNavigationGesture_withNavigationToBackForwardListItem___block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)tabCollectionViewDidPresent:(id)a3
{
  if (![(SFCapsuleCollectionView *)self->_capsuleCollectionView selectionGestureState])
  {

    [(CapsuleNavigationBarViewController *)self transitionToState:0 animated:0 completionHandler:0];
  }
}

- (void)capsuleCollectionViewWillReloadData:(id)a3
{
  v6 = a3;
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [(CapsuleNavigationBarViewController *)self collectionViewIndexOfTab:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setSelectedItemIndex:v5];
  }
}

- (BOOL)capsuleCollectionViewShouldFocusSelectedItem:(id)a3
{
  v3 = [(TabController *)self->_tabController activeTabDocument];
  v4 = [v3 sfScribbleControllerIfLoaded];
  v5 = [v4 isScribbling];

  return v5 ^ 1;
}

- (void)capsuleCollectionView:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  tabController = self->_tabController;
  v5 = [(CapsuleNavigationBarViewController *)self tabAtCollectionViewIndex:a4];
  [(TabController *)tabController setActiveTab:v5];
}

- (void)capsuleCollectionView:(id)a3 selectedItemWillChangeToState:(int64_t)a4 options:(int64_t)a5 coordinator:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (self->_nextStateChangeCompletionHandler)
  {
    [v11 addCompletion:?];
    nextStateChangeCompletionHandler = self->_nextStateChangeCompletionHandler;
    self->_nextStateChangeCompletionHandler = 0;
  }

  if (a4 != 1 && [(CapsuleNavigationBarViewController *)self _activeWebViewIsFirstResponder]&& self->_keyboardIsVisible)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke;
    v22[3] = &unk_2781D5C60;
    v22[4] = self;
    [v12 addAnimations:v22];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((a4 == 1) == [v10 selectedItemIsMinimized] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (a4 == 2)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke_2;
      v21[3] = &unk_2781D5C60;
      v21[4] = self;
      [v12 addAnimations:v21];
    }
  }

  else
  {
    [WeakRetained capsuleNavigationController:self obscuredInsetsDidChangeWithCoordinator:v12];
  }

  v15 = [v10 selectedItemState];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained capsuleNavigationBarViewController:self selectedItemWillChangeToState:a4 options:a5 coordinator:v12];
  }

  if (a4 == 2 || v15 == 2)
  {
    self->_capsuleIsFocused = a4 == 2;
    if ([v10 numberOfItems])
    {
      v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v10, "selectedItemIndex")}];
      [v10 reloadItemsAtIndexes:v16];
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke_3;
    v17[3] = &unk_2781D5C88;
    v19 = self;
    v20 = a5;
    v18 = WeakRetained;
    [v12 addAnimations:v17];
  }
}

void __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1120) activeTabDocument];
  v1 = [v2 activeWebView];
  [v1 resignFirstResponder];
}

void __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __110__CapsuleNavigationBarViewController_capsuleCollectionView_selectedItemWillChangeToState_options_coordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 48);
    if ([v5 isTransition])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    [*(a1 + 32) capsuleNavigationBarViewControllerDidChangeCapsuleFocus:*(a1 + 40) options:v4];
  }
}

- (unint64_t)capsuleCollectionViewBoundaryEdgesForScrollableContent:(id)a3
{
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [v4 activeWebView];
  v6 = [v5 scrollView];

  v7 = [(CapsuleNavigationBarViewController *)self _boundaryEdgesForScrollView:v6];
  return v7;
}

- (unint64_t)_boundaryEdgesForScrollView:(id)a3
{
  v3 = a3;
  [v3 contentOffset];
  v5 = v4;
  [v3 contentInset];
  v7 = v6;
  v9 = -v8;
  [v3 bounds];
  Height = CGRectGetHeight(v15);
  [v3 contentSize];
  v12 = v11;

  v13 = 4;
  if (v5 <= v9)
  {
    v13 = 5;
  }

  if (v5 + Height >= v12 - v7)
  {
    return v13;
  }

  else
  {
    return v5 <= v9;
  }
}

- (double)capsuleCollectionView:(id)a3 distanceToTopEdgeIncludingDeceleration:(BOOL)a4
{
  v4 = a4;
  v6 = [(TabController *)self->_tabController activeTabDocument];
  v7 = [v6 activeWebView];
  v8 = [v7 scrollView];

  [v8 contentOffset];
  v10 = v9;
  [v8 _verticalVelocity];
  if (v4)
  {
    v12 = v11;
    if (v11 != 0.0)
    {
      [v8 decelerationRate];
      v14 = v13;
      v15 = dbl_215A95AA0[v12 < 0.0];
      [v8 _verticalVelocity];
      v10 = v10 - (v16 - v15) / log(v14);
    }
  }

  [v8 contentInset];
  v18 = v10 + v17;
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView obscuredInsetsForState:0];
  v20 = v18 - v19;
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView obscuredInsetsForState:[(SFCapsuleCollectionView *)self->_capsuleCollectionView selectedItemState]];
  v22 = v20 + v21;

  return v22;
}

- (id)trailingActionForCapsuleCollectionView:(id)a3
{
  v4 = a3;
  if ([(CapsuleNavigationBarViewController *)self _showsOnlyActiveTab])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_tabs lastObject];
    if (-[TabController canAddNewTabForCurrentBrowsingMode](self->_tabController, "canAddNewTabForCurrentBrowsingMode") && (![v6 isBlank] || objc_msgSend(v6, "isLoading") && (objc_msgSend(v6, "isLoadingStartPage") & 1) == 0))
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D750C8];
      v8 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __77__CapsuleNavigationBarViewController_trailingActionForCapsuleCollectionView___block_invoke;
      v10[3] = &unk_2781D5B80;
      objc_copyWeak(&v11, &location);
      v5 = [v7 actionWithTitle:&stru_2827BF158 image:v8 identifier:@"CapsuleNavigationBarAddTab" handler:v10];
      objc_destroyWeak(&v11);

      objc_destroyWeak(&location);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __77__CapsuleNavigationBarViewController_trailingActionForCapsuleCollectionView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[135] setInteractivelyInserted:0];
    [v2[140] setActiveTabDocument:v2[135]];
    WeakRetained = v2;
  }
}

- (id)topActionForCapsuleCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D750C8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__CapsuleNavigationBarViewController_topActionForCapsuleCollectionView___block_invoke;
  v8[3] = &unk_2781D5B80;
  objc_copyWeak(&v9, &location);
  v6 = [v5 actionWithHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __72__CapsuleNavigationBarViewController_topActionForCapsuleCollectionView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[140] tabCollectionViewProvider];
    v3 = [v2 tabThumbnailCollectionView];

    [v3 presentAnimated:1];
    [v4 _updateHidingCapsuleAnimated:1];

    WeakRetained = v4;
  }
}

- (BOOL)capsuleCollectionViewAllowsMinimizationGesture:(id)a3
{
  v4 = a3;
  if (self->_keyboardIsVisible && [(SFCapsuleCollectionView *)self->_capsuleCollectionView layoutStyle]!= 2)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained capsuleNavigationBarViewControllerAllowsMinimizationGesture:self];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (double)capsuleCollectionView:(id)a3 heightForWidth:(double)a4 state:(int64_t)a5
{
  v8 = [a3 selectedItemIndex];
  v9 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:v8];
  v10 = &OBJC_IVAR___CapsuleNavigationBarViewController__sizingNavigationBar;
  if (a5 == 1)
  {
    v10 = &OBJC_IVAR___CapsuleNavigationBarViewController__minimizedSizingNavigationBar;
  }

  v11 = *(&self->super.super.super.isa + *v10);
  v12 = [(CapsuleNavigationBarViewController *)self tabAtCollectionViewIndex:v8];
  v13 = [v12 navigationBarItem];
  [v11 setItem:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 prepareForSizingNavigationBar:v9];
  }

  [v11 updateTraitsIfNeeded];
  [v11 layoutIfNeeded];
  LODWORD(v14) = 1148846080;
  LODWORD(v15) = 1112014848;
  [v11 systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
  v17 = fmax(v16, 20.0);

  return v17;
}

- (CGSize)capsuleCollectionView:(id)a3 preferredSizeForState:(int64_t)a4
{
  v6 = [a3 selectedItemIndex];
  v7 = [(SFCapsuleCollectionView *)self->_capsuleCollectionView contentViewForItemAtIndex:v6];
  v8 = &OBJC_IVAR___CapsuleNavigationBarViewController__sizingNavigationBar;
  if (a4 == 1)
  {
    v8 = &OBJC_IVAR___CapsuleNavigationBarViewController__minimizedSizingNavigationBar;
  }

  v9 = *(&self->super.super.super.isa + *v8);
  v10 = [(CapsuleNavigationBarViewController *)self tabAtCollectionViewIndex:v6];
  v11 = [v10 navigationBarItem];
  [v9 setItem:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 prepareForSizingNavigationBar:v7];
  }

  [v9 updateTraitsIfNeeded];
  [v9 layoutIfNeeded];
  [v9 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)capsuleCollectionViewMinimizedContentScale:(id)a3
{
  v4 = -[CapsuleNavigationBarViewController tabAtCollectionViewIndex:](self, "tabAtCollectionViewIndex:", [a3 selectedItemIndex]);
  v5 = [v4 navigationBarItem];

  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setItem:v5];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar setItem:v5];
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar urlSize];
  v7 = v6;
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar urlSize];
  v9 = v7 / v8;

  return v9;
}

- (BOOL)capsuleCollectionViewContentScaleCompletesMinimization:(id)a3
{
  [(CapsuleNavigationBarViewController *)self capsuleCollectionViewMinimizedContentScale:a3];
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar keyContentRect];
  CGRectGetWidth(v6);
  [(SFCapsuleNavigationBar *)self->_minimizedSizingNavigationBar keyContentRect];
  CGRectGetWidth(v7);

  return _SFEqualWithEpsilon();
}

- (void)capsuleCollectionViewWillHideKeyboard:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained capsuleNavigationBarViewControllerWillHideKeyboard:self];
  }
}

- (void)capsuleCollectionView:(id)a3 willChangeToLayoutStyle:(int64_t)a4
{
  [(SFCapsuleNavigationBar *)self->_sizingNavigationBar setLayoutStyle:a4];
  minimizedSizingNavigationBar = self->_minimizedSizingNavigationBar;

  [(SFCapsuleNavigationBar *)minimizedSizingNavigationBar setLayoutStyle:a4];
}

- (void)capsuleCollectionViewLayoutStyleDidChange:(id)a3
{
  [(CapsuleNavigationBarViewController *)self _updateSelectedItemAccessoryViews];

  [(CapsuleNavigationBarViewController *)self _updateTabDocumentsAnimated:0];
}

- (id)capsuleCollectionView:(id)a3 createSupplementaryViewWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v7 isEqualToString:*MEMORY[0x277D28FD0]] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [WeakRetained createToolbarForCapsuleNavigationBarViewController:self];
    goto LABEL_14;
  }

  objc_initWeak(&location, self);
  v10 = [WeakRetained barManagerForCapsuleNavigationBarViewController:self];
  if (!v10)
  {
    goto LABEL_10;
  }

  if (![v7 isEqualToString:*MEMORY[0x277D28FC0]])
  {
    if ([v7 isEqualToString:*MEMORY[0x277D28FD8]])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke_2;
      v15[3] = &unk_2781D5598;
      v11 = &v16;
      objc_copyWeak(&v16, &location);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke_3;
      v13[3] = &unk_2781D5CB0;
      objc_copyWeak(&v14, &location);
      v9 = [SFMinibarRegistration makeTrailingButtonWithManager:v10 sizeUpdateHandler:v15 menuPresentationHandler:v13];
      objc_destroyWeak(&v14);
      goto LABEL_9;
    }

LABEL_10:
    if ([v7 isEqualToString:*MEMORY[0x277D28FC8]])
    {
      v9 = objc_alloc_init(MEMORY[0x277D75D18]);
      [v9 safari_setFlexibleGlassBackgroundEnabled:1];
      [v9 setClipsToBounds:1];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_13;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke;
  v17[3] = &unk_2781D5598;
  v11 = &v18;
  objc_copyWeak(&v18, &location);
  v9 = [SFMinibarRegistration makeLeadingButtonWithManager:v10 sizeUpdateHandler:v17];
LABEL_9:
  objc_destroyWeak(v11);
LABEL_13:

  objc_destroyWeak(&location);
LABEL_14:

  return v9;
}

void __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[128] layoutIfNeeded];
    WeakRetained = v2;
  }
}

void __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[128] layoutIfNeeded];
    WeakRetained = v2;
  }
}

void __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __98__CapsuleNavigationBarViewController_capsuleCollectionView_createSupplementaryViewWithIdentifier___block_invoke_4;
    v10[3] = &unk_2781D51B8;
    v10[4] = WeakRetained;
    v11 = a2;
    v8 = _Block_copy(v10);
    v9 = v8;
    if (v5)
    {
      [v5 addAnimations:v8];
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)capsuleCollectionView:(id)a3 didBeginSelectionGestureOnAxis:(unint64_t)a4
{
  v18 = a3;
  [(CapsuleNavigationBarViewController *)self _updateHidingCapsuleAnimated:1];
  v5 = [v18 selectedItemIndex];
  if (v5 == [v18 numberOfItems] - 1 && !self->_interactivelyInsertedTabDocument && objc_msgSend(v18, "hasTrailingAction"))
  {
    v6 = [TabDocument alloc];
    v7 = [(TabController *)self->_tabController activeTabDocument];
    v8 = [v7 browserController];
    v9 = [(TabDocument *)v6 initWithBrowserController:v8];
    interactivelyInsertedTabDocument = self->_interactivelyInsertedTabDocument;
    self->_interactivelyInsertedTabDocument = v9;

    [self->_interactivelyInsertedTabDocument setIsBlank:1];
    [self->_interactivelyInsertedTabDocument setInteractivelyInserted:1];
    [self->_interactivelyInsertedTabDocument displayNewTabOverridePageIfNecessary];
    tabController = self->_tabController;
    v12 = self->_interactivelyInsertedTabDocument;
    v13 = [(TabController *)tabController currentTabs];
    v14 = [v13 lastObject];
    [(TabController *)tabController insertTab:v12 afterTab:v14 inBackground:1 animated:1];

    v15 = [(TabController *)self->_tabController tabCollectionViewProvider];
    [v15 updateSnapshotIdentifiers];

    v16 = [(TabController *)self->_tabController tabCollectionViewProvider];
    v17 = [v16 tabSwitcherViewController];
    [v17 applyContentIfNeeded];
  }
}

- (void)capsuleCollectionViewDidEndSelectionGesture:(id)a3
{
  interactivelyInsertedTabDocument = self->_interactivelyInsertedTabDocument;
  if (interactivelyInsertedTabDocument)
  {
    [(TabController *)self->_tabController closeTab:interactivelyInsertedTabDocument animated:0];
    v5 = self->_interactivelyInsertedTabDocument;
    self->_interactivelyInsertedTabDocument = 0;
  }
}

- (id)tabAtCollectionViewIndex:(int64_t)a3
{
  if ([(NSArray *)self->_tabs count]== a3 && (interactivelyInsertedTabDocument = self->_interactivelyInsertedTabDocument) != 0)
  {
    v6 = interactivelyInsertedTabDocument;
  }

  else
  {
    v6 = [(NSArray *)self->_tabs objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (id)capsuleCollectionView:(id)a3 contentViewForItemAtIndex:(int64_t)a4
{
  v6 = a3;
  if ([v6 selectedItemIndex] == a4 && objc_msgSend(v6, "selectedItemState") == 2)
  {
    v7 = [v6 createOrDequeueContentViewWithIdentifier:@"urlField" atIndex:a4];
    v8 = [(CapsuleNavigationBarViewController *)self tabAtCollectionViewIndex:a4];
    cachedSelectedItemNavigationBar = [v8 navigationBarItem];

    LODWORD(v8) = self->_focusingForScribble;
    v10 = [v7 textField];
    v11 = v10;
    if (v8 == 1)
    {
      [v10 setText:0];

      v12 = 0;
      goto LABEL_5;
    }

    v16 = [v10 isFirstResponder];

    if ((v16 & 1) == 0)
    {
      v17 = [cachedSelectedItemNavigationBar textWhenExpanded];
      v18 = [v7 textField];
      [v18 setText:v17];

      v12 = [cachedSelectedItemNavigationBar startIndexOfTextInExpandedText];
      v19 = [cachedSelectedItemNavigationBar text];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [cachedSelectedItemNavigationBar text];
        v22 = [v21 characterAtIndex:0];

        if (v22 == 8206)
        {
          ++v12;
        }

        v13 = v20 - (v22 == 8206);
        goto LABEL_13;
      }

LABEL_5:
      v13 = 0;
LABEL_13:
      [v7 setRangeOfKeyText:{v12, v13}];
    }
  }

  else
  {
    v7 = [v6 createOrDequeueContentViewWithIdentifier:@"navigationBar" atIndex:a4];
    v14 = [(CapsuleNavigationBarViewController *)self tabAtCollectionViewIndex:a4];
    v15 = [v14 navigationBarItem];
    [v7 setItem:v15];

    if ([v6 selectedItemIndex] != a4)
    {
      goto LABEL_15;
    }

    v7 = v7;
    cachedSelectedItemNavigationBar = self->_cachedSelectedItemNavigationBar;
    self->_cachedSelectedItemNavigationBar = v7;
  }

LABEL_15:

  return v7;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  capsuleCollectionView = self->_capsuleCollectionView;
  v8 = a3;
  v9 = [(SFCapsuleCollectionView *)capsuleCollectionView contentViewForItemAtIndex:[(SFCapsuleCollectionView *)capsuleCollectionView selectedItemIndex]];
  v10 = [v8 view];

  if (v10 != v9)
  {
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  [v6 locationInView:v9];
  v12 = [v9 hitTest:0 withEvent:?];
  v13 = [v9 leadingButtons];
  if ([v13 containsObject:v12])
  {
  }

  else
  {
    v14 = [v9 trailingButtons];
    v15 = [v14 containsObject:v12];

    if ((v15 & 1) == 0)
    {
      v16 = [(TabController *)self->_tabController activeTabDocument];
      v17 = [v16 urlForSharing];
      if (v17)
      {
        v18 = [MEMORY[0x277CCAA88] safari_itemProviderForTabDocument:v16];
        v19 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v18];
        [v19 setLocalObject:v17];
        v21[0] = v19;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      }

      else
      {
        v11 = MEMORY[0x277CBEBF8];
      }

      goto LABEL_11;
    }
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_11:

LABEL_12:

  return v11;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = MEMORY[0x277D499B8];
  v6 = a4;
  v7 = [v5 sharedLogger];
  [v7 didStartDragWithDragContentType:2];

  v8 = [(TabController *)self->_tabController activeTabDocument];
  v9 = [v8 uuid];
  [v6 setLocalContext:v9];

  v10 = [v6 items];

  v11 = [v10 firstObject];

  v12 = [v11 localObject];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__CapsuleNavigationBarViewController_dragInteraction_sessionWillBegin___block_invoke;
  v14[3] = &unk_2781D5CD8;
  v15 = v12;
  v13 = v12;
  [v11 setPreviewProvider:v14];
}

id __71__CapsuleNavigationBarViewController_dragInteraction_sessionWillBegin___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75478];
  v2 = *(a1 + 32);
  v3 = [v2 _title];
  v4 = [v1 previewForURL:v2 title:v3];

  return v4;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = [a3 view];
  v7 = [(CapsuleNavigationBarViewController *)self _dragPreviewForNavigationBar:v6];

  return v7;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v4 = [(TabController *)self->_tabController activeTabDocument:a3];
  if ([v4 hasQuickLookContent])
  {
    v5 = [v4 quickLookDocument];
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v5 sourceURL];
    v8 = [v7 safari_URLByNormalizingBlobURL];
    if ([v6 isURLManaged:v8])
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = [a4 localDragSession];
  v6 = [v5 localContext];

  if (v6)
  {
    v7 = [(TabController *)self->_tabController activeTabDocument];
    v8 = [v7 uuid];

    if ([v8 isEqual:v6])
    {
      v9 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];

      goto LABEL_6;
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2];
LABEL_6:

  return v9;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = MEMORY[0x277D28F40];
  v6 = a4;
  v7 = [v5 builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CapsuleNavigationBarViewController_dropInteraction_performDrop___block_invoke;
  v8[3] = &unk_2781D5D00;
  v8[4] = self;
  [v7 buildNavigationIntentForDropSession:v6 completionHandler:v8];
}

void __66__CapsuleNavigationBarViewController_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 1120);
    v3 = a2;
    v4 = [v2 activeTabDocument];
    [v4 dispatchNavigationIntent:v3];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = [(TabController *)self->_tabController activeTabDocument:a3];
  v6 = [v5 sfScribbleControllerIfLoaded];
  v7 = [v6 isScribbling];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CapsuleNavigationBarViewController *)self _contextMenuActionProvider];
    if (v9)
    {
      self->_showingContextMenu = 1;
      v10 = MEMORY[0x277D753B0];
      v11 = [(TabController *)self->_tabController activeTabDocument];
      v12 = [v11 uuid];
      v8 = [v10 configurationWithIdentifier:v12 previewProvider:0 actionProvider:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_contextMenuActionProvider
{
  v3 = [MEMORY[0x277D49A08] isSolariumEnabled];
  v4 = [(TabController *)self->_tabController activeTabDocument];
  v5 = [(TabController *)self->_tabController tabMenuProviderDataSource];
  if (v3)
  {
    [TabMenuProvider addressFieldActionProviderForTab:v4 dataSource:v5];
  }

  else
  {
    [TabMenuProvider actionProviderForTab:v4 dataSource:v5 options:10257];
  }
  v6 = ;

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v6 = [a3 view];
  v7 = [(CapsuleNavigationBarViewController *)self _dragPreviewForNavigationBar:v6];
  cachedHighlightPreview = self->_cachedHighlightPreview;
  self->_cachedHighlightPreview = v7;

  v9 = self->_cachedHighlightPreview;
  v10 = v9;

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v7 = a3;
  v8 = self->_cachedHighlightPreview;
  cachedHighlightPreview = self->_cachedHighlightPreview;
  self->_cachedHighlightPreview = 0;
  v10 = a5;

  v11 = [(TabController *)self->_tabController activeTabDocument];
  v12 = [v11 uuid];
  v13 = WBSIsEqual();

  if (v13)
  {
    v14 = [v7 view];
    v15 = [(CapsuleNavigationBarViewController *)self _dragPreviewForNavigationBar:v14];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D758E0]);
    capsuleCollectionView = self->_capsuleCollectionView;
    [(SFCapsuleCollectionView *)capsuleCollectionView selectedCapsuleFrame];
    UIRectGetCenter();
    v19 = v18;
    v21 = v20;
    CGAffineTransformMakeScale(&v24, 0.0, 0.0);
    v14 = [v16 initWithContainer:capsuleCollectionView center:&v24 transform:{v19, v21}];
    v15 = [(UITargetedPreview *)v8 retargetedPreviewWithTarget:v14];
  }

  v22 = v15;

  return v22;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  capsuleCollectionView = self->_capsuleCollectionView;
  v7 = a5;
  [(SFCapsuleCollectionView *)capsuleCollectionView setIgnoresKeyboardHideEvents:1];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemUsesLiftedPreviewAppearance:1 animator:v7];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  self->_showingContextMenu = 0;
  capsuleCollectionView = self->_capsuleCollectionView;
  v7 = a5;
  [(SFCapsuleCollectionView *)capsuleCollectionView setIgnoresKeyboardHideEvents:0];
  [(SFCapsuleCollectionView *)self->_capsuleCollectionView setSelectedItemUsesLiftedPreviewAppearance:0 animator:v7];
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v4 = [(CapsuleNavigationBarViewController *)self selectedItemNavigationBar:a3];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v7 = a6;
  self->_focusingForScribble = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __119__CapsuleNavigationBarViewController__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke;
  v9[3] = &unk_2781D5D28;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(CapsuleNavigationBarViewController *)self transitionToState:2 animated:1 completionHandler:v9];
}

void __119__CapsuleNavigationBarViewController__scribbleInteraction_focusElement_initialFocusSelectionReferencePoint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) unifiedField];
  (*(v2 + 16))(v2, v3);

  *(*(a1 + 32) + 1105) = 0;
}

- (CapsuleNavigationBarViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIResponder)customNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_customNextResponder);

  return WeakRetained;
}

- (UIFocusEnvironment)customParentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_customParentFocusEnvironment);

  return WeakRetained;
}

@end