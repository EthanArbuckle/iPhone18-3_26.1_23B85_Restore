@interface GKCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)hasLoaded;
- (BOOL)shouldSlideInContents;
- (GKCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (GKColorPalette)colorPalette;
- (double)showMoreTextMarginAtIndexPath:(id)a3;
- (id)_gkRecursiveDescription;
- (id)collectionView;
- (id)currentSearchTerms;
- (id)footerViewAboveShowMoreViewAtIndexPath:(id)a3;
- (id)gkDataSource;
- (id)nearestSelectableIndexPath:(id)a3;
- (void)_applyUpdates:(id)a3 withCompletionHandler:(id)a4;
- (void)_finishUpdates:(id)a3 withCompletionHandler:(id)a4;
- (void)_gkRefreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
- (void)_gkSetContentsNeedUpdateWithHandler:(id)a3;
- (void)_loadDataWithCompletionHandlerAndError:(id)a3;
- (void)_reallyStartLoadingIndicator;
- (void)_systemContentSizeSettingDidChange;
- (void)applyShowMoreLayoutAttributesForShowMoreView:(id)a3 atIndexPath:(id)a4;
- (void)clearButtonPressed:(id)a3;
- (void)clearSelectionHighlight;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)completeWhenReadyToDisplayData:(id)a3;
- (void)dataSource:(id)a3 didInsertItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didInsertSections:(id)a4;
- (void)dataSource:(id)a3 didMoveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)dataSource:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5;
- (void)dataSource:(id)a3 didRefreshItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didRefreshSections:(id)a4;
- (void)dataSource:(id)a3 didRemoveItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didRemoveSections:(id)a4;
- (void)dataSource:(id)a3 didUpdatePlaceholderVisibility:(BOOL)a4;
- (void)dataSource:(id)a3 performBatchUpdate:(id)a4 complete:(id)a5;
- (void)dataSourceDidMoveSectionsWithItems:(id)a3;
- (void)dataSourceDidReloadData:(id)a3;
- (void)dealloc;
- (void)didEnterErrorState;
- (void)didEnterNoContentState;
- (void)didTouchShowMore:(id)a3;
- (void)hidePlaceholderAnimated:(BOOL)a3;
- (void)invalidateSearch;
- (void)loadDataWithCompletionHandlerAndError:(id)a3;
- (void)loadView;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)setCurrentSearchText:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setIsReadyToDisplayData:(BOOL)a3;
- (void)setNeedsReload;
- (void)showCollectionView;
- (void)showPlaceholderWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 animated:(BOOL)a6 block:(id)a7;
- (void)shutActionPaneAnimated:(BOOL)a3;
- (void)slideInContents;
- (void)startLoadingIndicator;
- (void)stopLoadingIndicator;
- (void)stopLoadingIndicatorWithoutAnimation;
- (void)swipeToDeleteCell:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutGuideOffsets;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation GKCollectionViewController

- (GKCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = GKCollectionViewController;
  v6 = [(GKCollectionViewController *)&v15 initWithCollectionViewLayout:v5];
  if (v6)
  {
    v7 = objc_alloc_init(GKLoadableContentStateMachine);
    loadingMachine = v6->_loadingMachine;
    v6->_loadingMachine = v7;

    [(_GKStateMachine *)v6->_loadingMachine setDelegate:v6];
    objc_storeStrong(&v6->_defaultLayout, a3);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.GameKit.GKCollectionView.batchUpdateQueue", v9);
    batchUpdateQueue = v6->_batchUpdateQueue;
    v6->_batchUpdateQueue = v10;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
      [v12 registerClass:objc_opt_class() forDecorationViewOfKind:@"ColumnDivider"];
    }

    v13 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    [(GKCollectionViewController *)v6 setReusableViewsIHaveSeen:v13];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v4 dealloc];
}

- (id)_gkRecursiveDescription
{
  v3 = [(GKCollectionViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = MEMORY[0x277CCACA8];
    v12.receiver = self;
    v12.super_class = GKCollectionViewController;
    v6 = [(GKCollectionViewController *)&v12 description];
    v7 = [(GKCollectionViewController *)self dataSource];
    v8 = [v7 _gkDescriptionWithChildren:1];
    v9 = [v5 stringWithFormat:@"%@\n%@", v6, v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GKCollectionViewController;
    v9 = [(GKCollectionViewController *)&v11 description];
  }

  return v9;
}

- (id)collectionView
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  v3 = [(GKCollectionViewController *)&v5 collectionView];

  return v3;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 loadView];
  v3 = [(GKCollectionViewController *)self collectionView];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v20 viewDidLoad];
  [(GKCollectionViewController *)self configureDataSource];
  [(GKCollectionViewController *)self configureViewFactories];
  v3 = [(GKCollectionViewController *)self collectionView];
  [v3 setAlwaysBounceVertical:1];
  [v3 setDelegate:self];
  v4 = [(GKCollectionViewController *)self colorPalette];
  v5 = [v4 viewBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [[GKSwipeToEditStateMachine alloc] initWithCollectionView:v3];
  swipeStateMachine = self->_swipeStateMachine;
  self->_swipeStateMachine = v6;

  if (*MEMORY[0x277D0C258] == 1)
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = [(GKCollectionViewController *)self collectionView];
      [v10 scrollIndicatorInsets];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [(GKCollectionViewController *)self collectionView];
      [v19 setScrollIndicatorInsets:{v12, v14, v16 + 5.0, v18}];
    }
  }

  if (!self->_skipLoadAfterViewDidLoad)
  {
    [(GKCollectionViewController *)self loadDataWithCompletionHandlerAndError:0];
  }

  [(GKCollectionViewController *)self setPreviousOrientation:[(GKCollectionViewController *)self interfaceOrientation]];
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v3 viewLayoutMarginsDidChange];
  [(GKCollectionViewController *)self updateLayoutGuideOffsets];
}

- (void)updateLayoutGuideOffsets
{
  v38 = [(GKCollectionViewController *)self defaultLayout];
  v3 = [(GKCollectionViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v38;
  if (isKindOfClass)
  {
    v10 = v38;
    v11 = [(GKCollectionViewController *)self view];
    [v11 _contentMargin];
    v13 = v12;

    if (v13 == 0.0)
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      v15 = [v14 userInterfaceIdiom];

      if (v15 != 1 || (v13 = 20.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
      {
        v16 = [MEMORY[0x277D75418] currentDevice];
        v17 = [v16 userInterfaceIdiom];

        v13 = 15.0;
        if (!v17)
        {
          if (([MEMORY[0x277D759A0] mainScreen], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bounds"), v20 = v19, v22 = v21, v18, v20 >= 414.0) && v22 >= 736.0 || (v22 >= 414.0 ? (v23 = v20 < 736.0) : (v23 = 1), !v23))
          {
            v13 = 20.0;
          }
        }
      }
    }

    v24 = v5 + v13;
    v25 = v7 + v13;
    v26 = [MEMORY[0x277D75418] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (!v27)
    {
      if (([MEMORY[0x277D759A0] mainScreen], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "bounds"), v30 = v29, v32 = v31, v28, v30 >= 414.0) && v32 >= 736.0 || v30 >= 736.0 && v32 >= 414.0)
      {
        v33 = [(GKCollectionViewController *)self traitCollection];
        v34 = [v33 horizontalSizeClass];

        if (v34 == 2)
        {
          v24 = v24 + 84.0 - v13;
          v25 = v25 + 84.0 - v13;
        }
      }
    }

    [v10 leftLayoutGuideOffset];
    if (v24 != v35 || ([v10 rightLayoutGuideOffset], v25 != v36))
    {
      [v10 setLeftLayoutGuideOffset:v24];
      [v10 setRightLayoutGuideOffset:v25];
      v37 = [(GKCollectionViewController *)self collectionView];
      [v37 performBatchUpdates:0 completion:0];
    }

    v9 = v38;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v9);
}

- (id)nearestSelectableIndexPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [(GKCollectionViewController *)self collectionView];
  v6 = [v5 numberOfSections];
  if (v6 < 1)
  {

LABEL_13:
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    goto LABEL_14;
  }

  v7 = v6;
  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    v10 = [v5 numberOfItemsInSection:i];
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 1;
      do
      {
        v13 = v8;
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:v12 - 1 inSection:i];

        if (v12 - 1 >= [v4 item])
        {
          break;
        }
      }

      while (v12++ < v11);
    }

    if (i >= [v4 section])
    {
      break;
    }
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v28 viewWillAppear:a3];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    v11 = v8 < 414.0 || v10 < 736.0;
    if (!v11 || v8 >= 736.0 && v10 >= 414.0)
    {
      v12 = [(GKCollectionViewController *)self colorPalette];
      v13 = [v12 windowBackgroundColor];
      v14 = [(GKCollectionViewController *)self collectionView];
      [v14 setBackgroundColor:v13];
    }
  }

  self->_didSlideIn = 0;
  v15 = [(GKCollectionViewController *)self dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [(GKCollectionViewController *)self collectionView];
    [v15 collectionViewWillBecomeActive:v16];
  }

  if (!self->_hasViewFactories)
  {
    [(GKCollectionViewController *)self configureViewFactories];
  }

  [(GKCollectionViewController *)self setActive:1];
  if ([(GKCollectionViewController *)self shouldSlideInContents])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
    v17 = [(GKCollectionViewController *)self collectionView];
    v18 = [v17 layer];

    CATransform3DMakeTranslation(&v27, 0.0, 150.0, 0.0);
    v26 = v27;
    [v18 setSublayerTransform:&v26];
    [MEMORY[0x277CD9FF0] commit];
  }

  v19 = [(_GKStateMachine *)self->_loadingMachine currentState];

  if (v19 == @"NoContentState")
  {
    [(GKCollectionViewController *)self didEnterNoContentState];
  }

  else
  {
    v20 = [(_GKStateMachine *)self->_loadingMachine currentState];

    if (v20 == @"ErrorState")
    {
      [(GKCollectionViewController *)self didEnterErrorState];
    }

    else
    {
      v21 = 0.0;
      if (![(GKCollectionViewController *)self shouldSlideInContents])
      {
        v21 = 1.0;
        if (![(GKCollectionViewController *)self showSupplementaryViewsWhileLoading])
        {
          if ([(GKCollectionViewController *)self hasLoaded])
          {
            v21 = 1.0;
          }

          else
          {
            v21 = 0.0;
          }
        }
      }

      v22 = [(GKCollectionViewController *)self collectionView];
      [v22 setAlpha:v21];
    }
  }

  if (self->_activeSearchBar)
  {
    [(GKCollectionViewController *)self searchBarSearchButtonClicked:?];
  }

  v23 = ([(GKCollectionViewController *)self interfaceOrientation]- 3) < 2;
  if (v23 != ([(GKCollectionViewController *)self previousOrientation]- 3) < 2)
  {
    v24 = [(GKCollectionViewController *)self collectionView];
    v25 = [v24 collectionViewLayout];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v25 forceFullInvalidate];
    }

    else
    {
      [v25 invalidateLayout];
    }
  }

  [(GKCollectionViewController *)self updateLayoutGuideOffsets];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(GKCollectionViewController *)self startLoadingIndicator];
  [(GKCollectionViewController *)self invalidateSearch];
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:a3];
  if (self->_activeSearchBar)
  {
    [(GKCollectionViewController *)self searchBarSearchButtonClicked:?];
  }

  [(GKCollectionViewController *)self setActive:0];
  v4 = [(GKCollectionViewController *)self gkDataSource];
  if (v4)
  {
    v5 = [(GKCollectionViewController *)self collectionView];
    [v4 collectionViewDidBecomeInactive:v5];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 viewDidDisappear:?];
  [(GKCollectionViewController *)self stopLoadingIndicatorWithoutAnimation];
  [(GKSwipeToEditStateMachine *)self->_swipeStateMachine viewDidDisappear:v3];
  [(GKCollectionViewController *)self setPreviousOrientation:[(GKCollectionViewController *)self interfaceOrientation]];
  [(GKCollectionViewController *)self hidePlaceholderAnimated:0];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (*MEMORY[0x277D0C258] == 1)
  {
    v6[5] = v4;
    v6[6] = v5;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__GKCollectionViewController_willAnimateRotationToInterfaceOrientation_duration___block_invoke;
    v6[3] = &unk_2796699A8;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:a4];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = GKCollectionViewController;
  v7 = a4;
  [(GKCollectionViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(GKCollectionViewController *)self updateDynamicColumnCountsForViewSize:width, height];
  v8 = [(GKCollectionViewController *)self collectionViewLayout];
  [v8 invalidateLayout];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__GKCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27966A690;
  v9[4] = self;
  [v7 animateAlongsideTransition:v9 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = GKCollectionViewController;
  v4 = a3;
  [(GKCollectionViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(GKCollectionViewController *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(GKCollectionViewController *)self _systemContentSizeSettingDidChange];
  }
}

- (void)_systemContentSizeSettingDidChange
{
  v3 = [(GKCollectionViewController *)self collectionView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__GKCollectionViewController__systemContentSizeSettingDidChange__block_invoke;
  v5[3] = &unk_279669E48;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 performBatchUpdates:v5 completion:&__block_literal_global_138];
}

void __64__GKCollectionViewController__systemContentSizeSettingDidChange__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 1128) objectEnumerator];
  v2 = [v6 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      [v3 _gkEnumerateSubviewsUsingBlock:&__block_literal_global_33];
      v4 = [v6 nextObject];

      v3 = v4;
    }

    while (v4);
  }

  v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 40), "numberOfSections")}];
  [*(a1 + 40) reloadSections:v5];
}

void __64__GKCollectionViewController__systemContentSizeSettingDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2861BAE00])
  {
    v2 = v3;
    [v2 replayAndApplyStyleWithSystemContentChange:1];
    [v2 _gkSetNeedsRender];
  }
}

- (BOOL)shouldSlideInContents
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    return self->_shouldSlideInContents;
  }

  v5 = 0;
  if (*MEMORY[0x277D0C258] == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    return self->_shouldSlideInContents;
  }

  return v5;
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v7 setDataSource:v5];
  }

  dataSource = self->_dataSource;
  if (dataSource != v5)
  {
    v9 = dataSource;
    v10 = [(GKCollectionViewController *)self collectionView];
    v11 = [v10 window];

    if (v11)
    {
      v12 = [(GKCollectionViewController *)self gkDataSource];
      v13 = [(GKCollectionViewController *)self collectionView];
      [v12 collectionViewDidBecomeInactive:v13];
    }

    objc_storeStrong(&self->_dataSource, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = self->_dataSource;
      [(UICollectionViewDataSource *)v14 setDelegate:self];
      v15 = [(GKCollectionViewController *)self collectionView];
      v16 = [v15 window];

      if (v16)
      {
        v17 = [(GKCollectionViewController *)self collectionView];
        [(UICollectionViewDataSource *)v14 collectionViewWillBecomeActive:v17];
      }

      v18 = [(GKCollectionViewController *)self collectionView];
      [(UICollectionViewDataSource *)v14 configureCollectionView:v18];
    }

    if (!self->_hasViewFactories)
    {
      [(GKCollectionViewController *)self configureViewFactories];
    }

    v19 = [(GKCollectionViewController *)self collectionView];
    [v19 setDataSource:v5];

    v20 = [(GKCollectionViewController *)self collectionView];
    v21 = [v20 collectionViewLayout];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v21 forceFullInvalidate];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UICollectionViewDataSource *)v9 setDelegate:0];
    }
  }
}

- (id)gkDataSource
{
  v2 = [(GKCollectionViewController *)self dataSource];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
      v6 = [v5 lastPathComponent];
      v7 = [v3 stringWithFormat:@"%@ ([dataSource isKindOfClass:[GKCollectionViewDataSource class]])\n[%s (%s:%d)]", v4, "-[GKCollectionViewController gkDataSource]", objc_msgSend(v6, "UTF8String"), 549];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
    }
  }

  return v2;
}

- (GKColorPalette)colorPalette
{
  colorPalette = self->_colorPalette;
  if (colorPalette)
  {
    v3 = colorPalette;
  }

  else
  {
    v3 = [(GKCollectionViewController *)self defaultColorPalette];
  }

  return v3;
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setShowsCancelButton:1 animated:0];
  [v4 _setAutoDisableCancelButton:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = v4;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 _clearButton];
          [v12 removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
          [v12 addTarget:self action:sel_clearButtonPressed_ forEvents:64];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 setClearButtonMode:1];
          v11 = [v10 _clearButton];
          [v11 removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)clearButtonPressed:(id)a3
{
  [a3 removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
  if (self->_activeSearchBar)
  {

    [(GKCollectionViewController *)self searchBarCancelButtonClicked:?];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  [v4 _setAutoDisableCancelButton:1];
  [v4 setShowsCancelButton:0 animated:0];
  [v4 resignFirstResponder];
  [v4 setText:0];

  [(GKCollectionViewController *)self setCurrentSearchText:0];

  [(GKCollectionViewController *)self setActiveSearchBar:0];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  [v4 resignFirstResponder];
  v5 = [v4 text];

  [(GKCollectionViewController *)self setCurrentSearchText:v5];
}

- (id)currentSearchTerms
{
  v3 = [MEMORY[0x277CBEB18] array];
  currentSearchText = self->_currentSearchText;
  v5 = [(NSString *)currentSearchText length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__GKCollectionViewController_currentSearchTerms__block_invoke;
  v8[3] = &unk_27966ABE8;
  v6 = v3;
  v9 = v6;
  [(NSString *)currentSearchText enumerateSubstringsInRange:0 options:v5 usingBlock:1027, v8];

  return v6;
}

- (void)invalidateSearch
{
  v3 = [(GKCollectionViewController *)self dataSource];
  v4 = [(GKCollectionViewController *)self collectionView];
  v5 = [v4 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(NSString *)self->_currentSearchText length])
      {
        v6 = [MEMORY[0x277CBEB58] set];
        v7 = [(GKCollectionViewController *)self currentSearchTerms];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __46__GKCollectionViewController_invalidateSearch__block_invoke;
        v10[3] = &unk_27966C6F0;
        v11 = v3;
        v12 = v7;
        v13 = v6;
        v8 = v6;
        v9 = v7;
        [v11 enumerateItemsAndIndexPathsUsingBlock:v10];
        [v5 setVisibleIndexPathsFilter:v8];
      }

      else
      {
        [v5 setVisibleIndexPathsFilter:0];
      }
    }
  }
}

void __46__GKCollectionViewController_invalidateSearch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  LODWORD(v5) = [v5 item:v7 matchesSearchTerms:v6 inSection:{objc_msgSend(v8, "section")}];

  if (v5)
  {
    [*(a1 + 48) addObject:v8];
  }
}

- (void)setCurrentSearchText:(id)a3
{
  v6 = a3;
  v4 = [v6 length];
  if (v4)
  {
    v5 = v6;
  }

  else
  {

    v5 = 0;
  }

  if (v5 != self->_currentSearchText)
  {
    v7 = v5;
    objc_storeStrong(&self->_currentSearchText, v5);
    v4 = [(GKCollectionViewController *)self invalidateSearch];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setNeedsReload
{
  if ([(GKCollectionViewController *)self hasLoaded])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__GKCollectionViewController_setNeedsReload__block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __44__GKCollectionViewController_setNeedsReload__block_invoke()
{
  gk_dispatch_debounce();
  v0 = dispatch_time(0, 1000000000);
  dispatch_after(v0, MEMORY[0x277D85CD0], &__block_literal_global_168);
}

uint64_t __44__GKCollectionViewController_setNeedsReload__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1088) setCurrentState:@"RefreshingState"];
  v2 = *(a1 + 32);

  return [v2 loadDataWithCompletionHandlerAndError:0];
}

- (void)_gkSetContentsNeedUpdateWithHandler:(id)a3
{
  v5 = a3;
  [(GKCollectionViewController *)self setNeedsReload];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)_finishUpdates:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKCollectionViewController *)self gkDataSource];
  v9 = [(GKCollectionViewController *)self collectionView];
  v10 = [v8 numberOfSectionsInCollectionView:v9];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while ([v8 collectionView:v9 numberOfItemsInSection:v12] < 1)
    {
      if (v11 == ++v12)
      {
        goto LABEL_5;
      }
    }

    v16 = GKLoadStateContentLoaded;
  }

  else
  {
LABEL_5:
    v13 = [v6 error];

    if (v13)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v14 = GKOSLoggers();
      }

      v15 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        [(GKCollectionViewController *)v15 _finishUpdates:v6 withCompletionHandler:?];
      }

      v16 = &GKLoadStateError;
    }

    else
    {
      v16 = GKLoadStateNoContent;
    }
  }

  [(_GKStateMachine *)self->_loadingMachine setCurrentState:*v16];
  if (v7)
  {
    v17 = [v6 error];
    v7[2](v7, v17);
  }
}

- (void)_applyUpdates:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_hasViewFactories)
  {
    [(GKCollectionViewController *)self configureViewFactories];
  }

  v8 = [(_GKStateMachine *)self->_loadingMachine currentState];
  v9 = v8;
  if (v8 == @"LoadingState")
  {

    goto LABEL_9;
  }

  v10 = [v6 error];
  if (!v10)
  {
    v12 = [v6 updateCount];

    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = [(GKCollectionViewController *)self collectionView];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__GKCollectionViewController__applyUpdates_withCompletionHandler___block_invoke_2;
    v17[3] = &unk_2796699A8;
    v18 = v6;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__GKCollectionViewController__applyUpdates_withCompletionHandler___block_invoke_3;
    v14[3] = &unk_27966C718;
    v14[4] = self;
    v15 = v18;
    v16 = v7;
    [v13 performBatchUpdates:v17 completion:v14];

    goto LABEL_10;
  }

LABEL_6:
  [(GKCollectionViewController *)self _finishUpdates:v6 withCompletionHandler:v7];
  [v6 applyUpdates];
  v11 = [(GKCollectionViewController *)self collectionView];
  [v11 performBatchUpdates:&__block_literal_global_170 completion:0];

LABEL_10:
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__GKCollectionViewController_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v12[3] = &unk_27966BA88;
  v15 = a3;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __81__GKCollectionViewController_refreshContentsForDataType_userInfo_updateNotifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gkDataSource];
  v3 = [*(a1 + 32) collectionView];
  [v2 collectionViewWillBecomeActive:v3];

  v11 = [*(a1 + 32) gkDataSource];
  v4 = [*(*(a1 + 32) + 1088) currentState];

  if (v4 == @"Initial")
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(*(a1 + 32) + 1088) currentState];
    v7 = [v5 stringWithFormat:@"currentState = %@", v6];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    v9 = [v8 lastPathComponent];
    v10 = [v5 stringWithFormat:@"%@ (self->_loadingMachine.currentState != GKLoadStateInitial)\n[%s (%s:%d)]", v7, "-[GKCollectionViewController refreshContentsForDataType:userInfo:updateNotifier:]_block_invoke", objc_msgSend(v9, "UTF8String"), 775];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 refreshContentsForDataType:*(a1 + 56) userInfo:*(a1 + 40) updateNotifier:*(a1 + 48)];
  }
}

- (void)_loadDataWithCompletionHandlerAndError:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0C250] updateGroup];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__GKCollectionViewController__loadDataWithCompletionHandlerAndError___block_invoke;
  v11[3] = &unk_27966BA10;
  v11[4] = self;
  [v5 perform:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__GKCollectionViewController__loadDataWithCompletionHandlerAndError___block_invoke_2;
  v8[3] = &unk_27966B380;
  v8[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 join:v8];
}

- (void)loadDataWithCompletionHandlerAndError:(id)a3
{
  loadingMachine = self->_loadingMachine;
  v7 = a3;
  v5 = [(_GKStateMachine *)loadingMachine currentState];
  if (v5 == @"Initial")
  {
    v6 = GKLoadStateLoadingContent;
  }

  else
  {
    v6 = GKLoadStateRefreshingContent;
  }

  [(_GKStateMachine *)self->_loadingMachine setCurrentState:*v6];

  [(GKCollectionViewController *)self _loadDataWithCompletionHandlerAndError:v7];
}

- (void)_gkRefreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = a4;
  if ([(GKCollectionViewController *)self hasLoaded])
  {
    [(_GKStateMachine *)self->_loadingMachine setCurrentState:@"RefreshingState"];
    v7 = [MEMORY[0x277D0C250] updateGroup];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__GKCollectionViewController__gkRefreshContentsForDataType_userInfo___block_invoke;
    v11[3] = &unk_27966C740;
    v11[4] = self;
    v13 = a3;
    v12 = v6;
    [v7 perform:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__GKCollectionViewController__gkRefreshContentsForDataType_userInfo___block_invoke_2;
    v9[3] = &unk_279669E48;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [v8 join:v9];
  }
}

- (void)dataSource:(id)a3 didInsertItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didInsertItemsAtIndexPaths:?];
  }

  v10 = [(GKCollectionViewController *)self collectionView];
  [v10 insertItemsAtIndexPaths:v7];
}

- (void)dataSource:(id)a3 didRemoveItemsAtIndexPaths:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didRemoveItemsAtIndexPaths:?];
  }

  v10 = [(GKSwipeToEditStateMachine *)self->_swipeStateMachine trackedIndexPath];
  if (v10)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v10 isEqual:{*(*(&v17 + 1) + 8 * v15), v17}])
          {
            [(_GKStateMachine *)self->_swipeStateMachine setCurrentState:@"NothingState"];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = [(GKCollectionViewController *)self collectionView];
  [v16 deleteItemsAtIndexPaths:v7];
}

- (void)dataSource:(id)a3 didRefreshItemsAtIndexPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didRefreshItemsAtIndexPaths:?];
  }

  v10 = [(GKCollectionViewController *)self collectionView];
  [v10 reloadItemsAtIndexPaths:v7];
}

- (void)dataSource:(id)a3 didInsertSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didInsertSections:?];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v10 = [(GKCollectionViewController *)self collectionView];
    [v10 insertSections:v7];
  }

LABEL_6:
}

- (void)dataSource:(id)a3 didRemoveSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didRemoveSections:?];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  v10 = [(GKSwipeToEditStateMachine *)self->_swipeStateMachine trackedIndexPath];
  v11 = v10;
  if (v10)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __59__GKCollectionViewController_dataSource_didRemoveSections___block_invoke;
    v16 = &unk_279669F60;
    v17 = v10;
    v18 = self;
    [v7 enumerateIndexesUsingBlock:&v13];
  }

  v12 = [(GKCollectionViewController *)self collectionView:v13];
  [v12 deleteSections:v7];

LABEL_8:
}

uint64_t __59__GKCollectionViewController_dataSource_didRemoveSections___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) section];
  if (result == a2)
  {
    v5 = *(*(a1 + 40) + 1160);

    return [v5 setCurrentState:@"NothingState"];
  }

  return result;
}

- (void)dataSource:(id)a3 didMoveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    v20 = [(GKCollectionViewController *)self currentUpdateID];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_28612D290;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"old: %@ \n new: %@", v9, v10];
    *buf = 138413058;
    v25 = v22;
    v26 = 2048;
    v27 = self;
    v28 = 2080;
    v29 = "[GKCollectionViewController dataSource:didMoveItemAtIndexPath:toIndexPath:]";
    v30 = 2112;
    v31 = v23;
    _os_log_debug_impl(&dword_24DE53000, v19, OS_LOG_TYPE_DEBUG, "****** %@ - GKCVC - c:%p %s \n%@", buf, 0x2Au);

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else if (!v9)
  {
LABEL_6:
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    v16 = [v15 lastPathComponent];
    v17 = [v13 stringWithFormat:@"%@ (indexPath != ((void*)0) && newIndexPath != ((void*)0))\n[%s (%s:%d)]", v14, "-[GKCollectionViewController dataSource:didMoveItemAtIndexPath:toIndexPath:]", objc_msgSend(v16, "UTF8String"), 882];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
    goto LABEL_7;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = [(GKCollectionViewController *)self collectionView];
  [v18 moveItemAtIndexPath:v9 toIndexPath:v10];
}

- (void)dataSource:(id)a3 didRefreshSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:v7 didRefreshSections:?];
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v10 = [(GKCollectionViewController *)self collectionView];
    [v10 reloadSections:v7];
  }

LABEL_6:
}

- (void)dataSource:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5
{
  v8 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
  }

  v10 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKCollectionViewController dataSource:v10 didMoveSection:self toSection:a4];
  }

  v11 = [(GKCollectionViewController *)self collectionView];
  [v11 moveSection:a4 toSection:a5];
}

- (void)dataSource:(id)a3 didUpdatePlaceholderVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKCollectionViewController dataSource:v8 didUpdatePlaceholderVisibility:self];
  }

  v9 = [(GKCollectionViewController *)self collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setShowPlaceholder:v4];
  }
}

- (void)dataSourceDidReloadData:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v6 dataSourceDidReloadData:v4];
  }

  v7 = [(GKCollectionViewController *)self collectionView];
  [v7 reloadData];
}

- (void)dataSourceDidMoveSectionsWithItems:(id)a3
{
  v4 = a3;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v6 dataSourceDidMoveSectionsWithItems:v4];
  }

  v7 = [(GKCollectionViewController *)self collectionView];
  v8 = [v7 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 prepareForMovingItemsCarryingSections];
  }
}

- (void)dataSource:(id)a3 performBatchUpdate:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9 && v10)
  {
    (*(v10 + 2))(v10);
  }

  v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
  if (!*MEMORY[0x277D0C2A0])
  {
    v13 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKCollectionViewController dataSource:v12 performBatchUpdate:self complete:?];
  }

  v14 = [(GKCollectionViewController *)self batchUpdateQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke;
  v18[3] = &unk_27966C7E0;
  v19 = v12;
  v20 = self;
  v21 = v9;
  v22 = v11;
  v15 = v11;
  v16 = v9;
  v17 = v12;
  dispatch_async(v14, v18);
}

void __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke(id *a1)
{
  v2 = MEMORY[0x277D0C020];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKCollectionViewController.m", 937, "-[GKCollectionViewController dataSource:performBatchUpdate:complete:]_block_invoke"];
  v4 = [v2 dispatchGroupWithName:v3];

  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_cold_1();
  }

  v6 = a1[5];
  if (v6[143])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v7 stringWithFormat:@"%@ (self->_batchUpdateCount == 0)\n[%s (%s:%d)]", v8, "-[GKCollectionViewController dataSource:performBatchUpdate:complete:]_block_invoke", objc_msgSend(v10, "UTF8String"), 942];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    v6 = a1[5];
    v12 = v6[143] + 1;
  }

  else
  {
    v12 = 1;
  }

  v6[143] = v12;
  [a1[5] setCurrentUpdateID:a1[4]];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_2;
  v19[3] = &unk_27966C7B8;
  v18 = a1[5];
  v13 = a1[6];
  v14 = a1[4];
  v15 = a1[7];
  *&v16 = v13;
  *(&v16 + 1) = v15;
  *&v17 = v18;
  *(&v17 + 1) = v14;
  v20 = v17;
  v21 = v16;
  [v4 perform:v19];
  [v4 wait];
  [a1[5] setCurrentUpdateID:0];
  --*(a1[5] + 143);
}

void __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_3;
  block[3] = &unk_27966C790;
  v10 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v6;
  *&v8 = v10;
  *(&v8 + 1) = v5;
  v12 = v8;
  v13 = v7;
  v14 = v3;
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_3(id *a1)
{
  v2 = [a1[4] collectionView];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_4;
  v10[3] = &unk_27966A4A8;
  v11 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_5;
  v5[3] = &unk_27966C768;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[7];
  v9 = a1[8];
  [v2 performBatchUpdates:v10 completion:v5];
}

uint64_t __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_5(uint64_t a1)
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_5_cold_1();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)didTouchShowMore:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__GKCollectionViewController_didTouchShowMore___block_invoke;
  v3[3] = &unk_27966B1A8;
  v3[4] = self;
  [a3 enumerateIndexesUsingBlock:v3];
}

void __47__GKCollectionViewController_didTouchShowMore___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) collectionView];
  v4 = [v7 collectionViewLayout];
  v5 = [*(a1 + 32) gkDataSource];
  [v4 prepareForUpdate:4 inDataSource:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 revealMoreForSectionIndex:a2];
    [*(a1 + 32) dataSource:v5 didRefreshItemsAtIndexPaths:v6];
  }
}

- (id)footerViewAboveShowMoreViewAtIndexPath:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v5 = [v4 item];
  v6 = [v4 section];
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:v6];
  v8 = [(GKCollectionViewController *)self collectionView];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __69__GKCollectionViewController_footerViewAboveShowMoreViewAtIndexPath___block_invoke;
  v17 = &unk_27966C808;
  v21 = &v22;
  v18 = self;
  v9 = v8;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  [v9 _gkPerformWithoutViewReuse:&v14];
  if ([v23[5] isHidden])
  {
    v11 = v23[5];
    v23[5] = 0;
  }

  v12 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __69__GKCollectionViewController_footerViewAboveShowMoreViewAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) dataSource];
  v2 = [v5 collectionView:*(a1 + 40) viewForSupplementaryElementOfKind:@"SectionFooter" atIndexPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)showMoreTextMarginAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionViewController *)self collectionView];
  v6 = [v4 item];
  v7 = [v4 section];
  v8 = 0.0;
  if (v6 < 1)
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v9 = v7;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if (v7 < [v5 numberOfSections])
    {
      v17 = [(GKCollectionViewController *)self footerViewAboveShowMoreViewAtIndexPath:v4];
      if (!v17 || (objc_opt_respondsToSelector() & 1) == 0 || ([v17 layoutIfNeeded], objc_msgSend(v17, "alignmentRectForText"), v16 = v18, v15 = v19, v14 = v20, v13 = v21, objc_msgSend(v17, "bounds"), v12 = v22, v11 = v23, v10 = v24, v8 = v25, v14 == 0.0))
      {
        v26 = [v5 collectionViewLayout];
        v27 = [v26 currentMaxVisibleItemCountForSection:v9];

        if (v27 >= 1 && v27 <= [v5 numberOfItemsInSection:v9])
        {
          v28 = [MEMORY[0x277CCAA70] indexPathForItem:v27 - 1 inSection:v9];
          v29 = [(GKCollectionViewController *)self dataSource];
          v30 = [v29 collectionView:v5 cellForItemAtIndexPath:v28];

          if (v30)
          {
            [v30 layoutIfNeeded];
            [v30 alignmentRectForText];
            v16 = v31;
            v15 = v32;
            v14 = v33;
            v13 = v34;
            [v30 bounds];
            v12 = v35;
            v11 = v36;
            v10 = v37;
            v8 = v38;
          }
        }
      }
    }
  }

  if (GKShouldLayoutRTL())
  {
    v42.origin.x = v12;
    v42.origin.y = v11;
    v42.size.width = v10;
    v42.size.height = v8;
    MaxX = CGRectGetMaxX(v42);
    v43.origin.x = v16;
    v43.origin.y = v15;
    v43.size.width = v14;
    v43.size.height = v13;
    MinX = MaxX - CGRectGetMaxX(v43);
  }

  else
  {
    v44.origin.x = v16;
    v44.origin.y = v15;
    v44.size.width = v14;
    v44.size.height = v13;
    MinX = CGRectGetMinX(v44);
  }

  return MinX;
}

- (void)applyShowMoreLayoutAttributesForShowMoreView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  [(GKCollectionViewController *)self showMoreTextMarginAtIndexPath:a4];
  [v6 setTextAlignmentOffset:?];
}

- (void)didEnterNoContentState
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = 138412290;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_debug_impl(&dword_24DE53000, v1, OS_LOG_TYPE_DEBUG, "%@ has no content and did not override me or called super", &v3, 0xCu);
}

- (void)didEnterErrorState
{
  v6 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  [(GKCollectionViewController *)self showPlaceholderWithTitle:v3 message:v5 buttonTitle:0 animated:1 block:0];
}

- (void)_reallyStartLoadingIndicator
{
  v3 = [(_GKStateMachine *)self->_loadingMachine currentState];

  if (v3 == @"LoadingState")
  {
    if (!self->_loadingIndicatorView)
    {
      v4 = [(GKCollectionViewController *)self view];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{v6, v8, v10, v12}];
      [(GKCollectionViewController *)self setLoadingIndicatorView:v13];

      v14 = [(GKCollectionViewController *)self loadingIndicatorView];
      [v14 setActivityIndicatorViewStyle:101];

      v15 = [MEMORY[0x277D0C868] sharedPalette];
      v16 = [v15 activityIndicatorColor];
      v17 = [(GKCollectionViewController *)self loadingIndicatorView];
      [v17 setColor:v16];

      v18 = [(GKCollectionViewController *)self loadingIndicatorView];
      [v18 setAutoresizingMask:18];

      v19 = [(GKCollectionViewController *)self view];
      v20 = [(GKCollectionViewController *)self loadingIndicatorView];
      [v19 addSubview:v20];

      v21 = [(GKCollectionViewController *)self loadingIndicatorView];
      [v21 setAlpha:0.0];

      [(UIActivityIndicatorView *)self->_loadingIndicatorView startAnimating];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __58__GKCollectionViewController__reallyStartLoadingIndicator__block_invoke;
      v22[3] = &unk_2796699A8;
      v22[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.15];
    }
  }

  else
  {
    [(GKCollectionViewController *)self stopLoadingIndicatorWithoutAnimation];

    [(GKCollectionViewController *)self slideInContents];
  }
}

void __58__GKCollectionViewController__reallyStartLoadingIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) loadingIndicatorView];
  [v1 setAlpha:1.0];
}

- (BOOL)hasLoaded
{
  v3 = [(_GKStateMachine *)self->_loadingMachine currentState];
  if (v3 == @"Initial")
  {
    v5 = 0;
  }

  else
  {
    v4 = [(_GKStateMachine *)self->_loadingMachine currentState];
    v5 = v4 != @"LoadingState";
  }

  return v5;
}

- (void)startLoadingIndicator
{
  if ([(GKCollectionViewController *)self hasLoaded]|| [(GKCollectionViewController *)self showSupplementaryViewsWhileLoading])
  {
    [(GKCollectionViewController *)self stopLoadingIndicatorWithoutAnimation];

    [(GKCollectionViewController *)self slideInContents];
  }

  else
  {

    [(GKCollectionViewController *)self performSelector:sel__reallyStartLoadingIndicator withObject:0 afterDelay:0.15];
  }
}

- (void)stopLoadingIndicatorWithoutAnimation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__GKCollectionViewController_stopLoadingIndicatorWithoutAnimation__block_invoke;
  v2[3] = &unk_2796699A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

uint64_t __66__GKCollectionViewController_stopLoadingIndicatorWithoutAnimation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 1056))
  {
    [v2 showCollectionView];
    v2 = *(a1 + 32);
  }

  [*(v2 + 1104) stopAnimating];
  [*(*(a1 + 32) + 1104) removeFromSuperview];
  v3 = *(a1 + 32);

  return [v3 setLoadingIndicatorView:0];
}

- (void)stopLoadingIndicator
{
  if (self->_loadingIndicatorView)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__GKCollectionViewController_stopLoadingIndicator__block_invoke;
    v4[3] = &unk_2796699A8;
    v4[4] = self;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __50__GKCollectionViewController_stopLoadingIndicator__block_invoke_2;
    v3[3] = &unk_279669C90;
    v3[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:v3 completion:0.25];
  }

  else if (!self->_placeholderView)
  {
    [(GKCollectionViewController *)self showCollectionView];
  }

  [(GKCollectionViewController *)self slideInContents];
}

void *__50__GKCollectionViewController_stopLoadingIndicator__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) setAlpha:0.0];
  result = *(a1 + 32);
  if (!result[132])
  {

    return [result showCollectionView];
  }

  return result;
}

uint64_t __50__GKCollectionViewController_stopLoadingIndicator__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) stopAnimating];
  [*(*(a1 + 32) + 1104) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setLoadingIndicatorView:0];
}

- (void)setIsReadyToDisplayData:(BOOL)a3
{
  if (self->_readyToDisplayData != a3)
  {
    [(GKCollectionViewController *)self willChangeValueForKey:@"readyToDisplayData"];
    self->_readyToDisplayData = a3;

    [(GKCollectionViewController *)self didChangeValueForKey:@"readyToDisplayData"];
  }
}

- (void)completeWhenReadyToDisplayData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (complete != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKCollectionViewController completeWhenReadyToDisplayData:]", objc_msgSend(v8, "UTF8String"), 1248];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__GKCollectionViewController_completeWhenReadyToDisplayData___block_invoke;
  v12[3] = &unk_27966C830;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  v11 = [(GKCollectionViewController *)self _gkAddObserverForKeyPath:@"readyToDisplayData" options:5 withBlock:v12];
}

void __61__GKCollectionViewController_completeWhenReadyToDisplayData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a4;
  v6 = [a3 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _gkRemoveObserverWithBlockToken:v8];
  }
}

- (void)slideInContents
{
  if (!self->_didSlideIn)
  {
    if (!self->_readyToDisplayData)
    {
      [(GKCollectionViewController *)self setIsReadyToDisplayData:1];
      [(GKCollectionViewController *)self didBecomeReadyToDisplayData];
    }

    v3 = [(GKCollectionViewController *)self shouldSlideInContents];
    v4 = [(GKCollectionViewController *)self collectionView];
    v5 = [v4 layer];

    if (v3)
    {
      v6 = [(GKCollectionViewController *)self collectionViewLayout];
      [v6 enableClipView];
      [MEMORY[0x277CD9FF0] begin];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __45__GKCollectionViewController_slideInContents__block_invoke;
      v38[3] = &unk_2796699A8;
      v38[4] = self;
      [MEMORY[0x277CD9FF0] setCompletionBlock:v38];
      v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"sublayerTransform"];
      v8 = MEMORY[0x277CCAE60];
      if (v5)
      {
        [v5 sublayerTransform];
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
      }

      v14 = [v8 valueWithCATransform3D:&v30];
      [v7 setFromValue:v14];

      v15 = *(MEMORY[0x277CD9DE8] + 80);
      v34 = *(MEMORY[0x277CD9DE8] + 64);
      v35 = v15;
      v16 = *(MEMORY[0x277CD9DE8] + 112);
      v36 = *(MEMORY[0x277CD9DE8] + 96);
      v37 = v16;
      v17 = *(MEMORY[0x277CD9DE8] + 16);
      v30 = *MEMORY[0x277CD9DE8];
      v31 = v17;
      v18 = *(MEMORY[0x277CD9DE8] + 48);
      v32 = *(MEMORY[0x277CD9DE8] + 32);
      v33 = v18;
      v19 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v30];
      [v7 setToValue:v19];

      [v7 setDuration:0.75];
      v20 = objc_alloc(MEMORY[0x277CD9EF8]);
      LODWORD(v21) = 1048743772;
      LODWORD(v22) = 1061123680;
      LODWORD(v23) = 1000807911;
      LODWORD(v24) = 1.0;
      v25 = [v20 initWithControlPoints:v21 :v22 :v23 :v24];
      [v7 setTimingFunction:v25];

      [v7 setRemovedOnCompletion:1];
      [v7 setFillMode:*MEMORY[0x277CDA238]];
      [v5 addAnimation:v7 forKey:@"slideIn"];
      [MEMORY[0x277CD9FF0] commit];
      v26 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__GKCollectionViewController_slideInContents__block_invoke_2;
      v28[3] = &unk_2796699A8;
      v29 = v5;
      v9 = v5;
      [v26 performWithoutAnimation:v28];

      v5 = v6;
    }

    else
    {
      v9 = [v5 modelLayer];
      v10 = *(MEMORY[0x277CD9DE8] + 80);
      v34 = *(MEMORY[0x277CD9DE8] + 64);
      v35 = v10;
      v11 = *(MEMORY[0x277CD9DE8] + 112);
      v36 = *(MEMORY[0x277CD9DE8] + 96);
      v37 = v11;
      v12 = *(MEMORY[0x277CD9DE8] + 16);
      v30 = *MEMORY[0x277CD9DE8];
      v31 = v12;
      v13 = *(MEMORY[0x277CD9DE8] + 48);
      v32 = *(MEMORY[0x277CD9DE8] + 32);
      v33 = v13;
      [v9 setSublayerTransform:&v30];
    }

    self->_shouldSlideInContents = 0;
    self->_didSlideIn = 1;
    [(GKCollectionViewController *)self didDisplayData];
    appearCount = self->_appearCount;
    if (appearCount >= 1)
    {
      [(GKCollectionViewController *)self setNeedsReload];
      appearCount = self->_appearCount;
    }

    self->_appearCount = appearCount + 1;
  }
}

void __45__GKCollectionViewController_slideInContents__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 disableClipView];
}

void __45__GKCollectionViewController_slideInContents__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) modelLayer];
  v2 = *(MEMORY[0x277CD9DE8] + 80);
  v6[4] = *(MEMORY[0x277CD9DE8] + 64);
  v6[5] = v2;
  v3 = *(MEMORY[0x277CD9DE8] + 112);
  v6[6] = *(MEMORY[0x277CD9DE8] + 96);
  v6[7] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 16);
  v6[0] = *MEMORY[0x277CD9DE8];
  v6[1] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 48);
  v6[2] = *(MEMORY[0x277CD9DE8] + 32);
  v6[3] = v5;
  [v1 setSublayerTransform:v6];
}

- (void)showPlaceholderWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 animated:(BOOL)a6 block:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(GKCollectionViewController *)self placeholderView];
  v30 = [(GKCollectionViewController *)self placeholderNavigationController];
  if (v16)
  {
    v17 = [v16 title];
    if ([v17 isEqualToString:v12])
    {
      v18 = [v16 message];
      if ([v18 isEqualToString:v13])
      {
        v19 = [v16 buttonTitle];
        v28 = [v19 isEqualToString:v14];

        if (v28)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v20 = [(GKCollectionViewController *)self view];
  [v20 bounds];
  v29 = v13;
  v21 = [GKPlaceholderView placeholderViewWithTitle:v12 message:v13 frame:?];
  [(GKCollectionViewController *)self setPlaceholderView:v21];

  [(GKPlaceholderView *)self->_placeholderView setAlpha:0.0];
  [(GKPlaceholderView *)self->_placeholderView setAutoresizingMask:18];
  if (v14 && v15)
  {
    [(_UIContentUnavailableView *)self->_placeholderView setButtonTitle:v14];
    [(_UIContentUnavailableView *)self->_placeholderView setButtonAction:v15];
  }

  [(GKCollectionViewController *)self addPlaceholderViewToView:v20];
  v22 = [(GKCollectionViewController *)self collectionView];
  [v22 setAlpha:0.0];

  v23 = MEMORY[0x277D75D18];
  if (v8)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke;
    v37[3] = &unk_27966A9A8;
    v37[4] = self;
    v24 = &v38;
    v25 = v16;
    v38 = v25;
    v26 = &v39;
    v27 = v30;
    v39 = v27;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke_2;
    v34[3] = &unk_27966C858;
    v35 = v25;
    v36 = v27;
    [v23 animateWithDuration:v37 animations:v34 completion:0.25];
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke_3;
    v31[3] = &unk_27966A9A8;
    v31[4] = self;
    v24 = &v32;
    v32 = v16;
    v26 = &v33;
    v33 = v30;
    [v23 performWithoutAnimation:v31];
  }

  v13 = v29;
LABEL_15:
}

void __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = [*(a1 + 48) view];
  [v2 setAlpha:0.0];
}

void __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) view];
  [v2 removeFromSuperview];
}

void __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setAlpha:1.0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = [*(a1 + 48) view];
  [v2 setAlpha:0.0];

  [*(a1 + 40) removeFromSuperview];
  v3 = [*(a1 + 48) view];
  [v3 removeFromSuperview];
}

- (void)hidePlaceholderAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_placeholderView;
  v6 = self->_placeholderNavigationController;
  if (v5)
  {
    [(_UIContentUnavailableView *)v5 setButtonAction:0];
    v7 = MEMORY[0x277D75D18];
    if (v3)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke;
      v16[3] = &unk_27966A9A8;
      v17 = v5;
      v18 = v6;
      v19 = self;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke_2;
      v12[3] = &unk_27966AED8;
      v13 = v17;
      v14 = v18;
      v15 = self;
      [v7 animateWithDuration:v16 animations:v12 completion:0.25];

      v8 = v17;
    }

    else
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke_3;
      v9[3] = &unk_27966A9A8;
      v9[4] = self;
      v10 = v5;
      v11 = v6;
      [v7 performWithoutAnimation:v9];

      v8 = v10;
    }
  }
}

uint64_t __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 48);

  return [v3 showCollectionView];
}

void *__54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) view];
  [v2 removeFromSuperview];

  result = *(a1 + 48);
  if (result[132] == *(a1 + 32))
  {
    [result setPlaceholderView:0];
    result = *(a1 + 48);
  }

  if (result[133] == *(a1 + 40))
  {

    return [result setPlaceholderNavigationController:0];
  }

  return result;
}

void *__54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke_3(id *a1)
{
  [a1[4] showCollectionView];
  [a1[5] setAlpha:0.0];
  v2 = [a1[6] view];
  [v2 setAlpha:0.0];

  [a1[5] removeFromSuperview];
  v3 = [a1[6] view];
  [v3 removeFromSuperview];

  result = a1[4];
  if (result[132] == a1[5])
  {
    [result setPlaceholderView:0];
    result = a1[4];
  }

  if (result[133] == a1[6])
  {

    return [result setPlaceholderNavigationController:0];
  }

  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [(_GKStateMachine *)self->_swipeStateMachine currentState:a3];
  v5 = [v4 isEqualToString:@"NothingState"];

  return v5;
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v18 = a4;
  v9 = a6;
  reusableViewsIHaveSeen = self->_reusableViewsIHaveSeen;
  v11 = a3;
  [(NSMapTable *)reusableViewsIHaveSeen setObject:v18 forKey:v18];
  v12 = [v11 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 attributesForSupplementaryIndexPath:v9];
    v14 = [v13 supplementaryMetrics];
    if (![v14 configurator])
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [v14 target];
    if (v15)
    {
      v16 = v15;
      goto LABEL_5;
    }

    v17 = [v13 dataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v17 targetForAction:{objc_msgSend(v14, "configurator")}];

      if (v16)
      {
LABEL_5:
        if ([v14 configurator])
        {
          [v16 objc_msgSend(v14];
        }
      }
    }

    else
    {

      v16 = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)clearSelectionHighlight
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(GKCollectionViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
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

        [v2 deselectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)shutActionPaneAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKCollectionViewController *)self swipeStateMachine];
  [v4 shutActionPaneForEditingCellAnimated:v3];
}

- (void)swipeToDeleteCell:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKCollectionViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(GKCollectionViewController *)self gkDataSource];
    v8 = [(GKCollectionViewController *)self collectionView];
    v9 = [v8 indexPathForCell:v4];

    if (self->_activeSearchBar)
    {
      v10 = [v6 visibleIndexPathsFilter];
      v11 = [v10 count];
      if (v11 >= 1)
      {
        v24 = v7;
        v25 = v6;
        v26 = v5;
        v27 = v4;
        v12 = [MEMORY[0x277CBEB58] setWithCapacity:v11 - 1];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v23 = v10;
        v13 = v10;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              v19 = [v18 section];
              if (v19 == [v9 section] && (v20 = objc_msgSend(v18, "item"), v20 > objc_msgSend(v9, "item")))
              {
                v21 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v18 inSection:{"item") - 1, objc_msgSend(v18, "section")}];
                [v12 addObject:v21];
              }

              else if (([v18 isEqual:v9] & 1) == 0)
              {
                [v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }

        v6 = v25;
        [v25 setVisibleIndexPathsFilter:v12];

        v5 = v26;
        v4 = v27;
        v7 = v24;
        v10 = v23;
      }
    }

    v22 = [v6 revealMoreForSectionIndex:objc_msgSend(v9 revealCount:"section") andDeleteItemCount:{self->_activeSearchBar == 0, 1}];
    [v6 prepareForUpdate:0 inDataSource:v7];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __70__GKCollectionViewController_GKSwipeToEditSupport__swipeToDeleteCell___block_invoke;
    v28[3] = &unk_27966C858;
    v28[4] = self;
    v29 = v6;
    [v7 removeItemAtIndexPath:v9 completionHandler:v28];
  }
}

uint64_t __70__GKCollectionViewController_GKSwipeToEditSupport__swipeToDeleteCell___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) shutActionPaneAnimated:1];
    v3 = *(v2 + 40);

    return [v3 prepareForUpdate:6 inDataSource:0];
  }

  return result;
}

- (void)showCollectionView
{
  v3 = [(GKCollectionViewController *)self collectionView];
  [v3 setAlpha:1.0];

  v4 = [(GKCollectionViewController *)self collectionView];
  [v4 flashScrollIndicators];
}

- (void)_finishUpdates:(uint64_t)a3 withCompletionHandler:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v6 = 138412546;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_24DE53000, v4, OS_LOG_TYPE_ERROR, "%@ ERROR: %@", &v6, 0x16u);
}

- (void)dataSource:(void *)a1 didUpdatePlaceholderVisibility:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 currentUpdateID];
  OUTLINED_FUNCTION_4_0();
  v7 = a2;
  OUTLINED_FUNCTION_8_0();
  v8 = "[GKCollectionViewController dataSource:didUpdatePlaceholderVisibility:]";
  OUTLINED_FUNCTION_10(&dword_24DE53000, v3, v5, "****** %@ - GKCVC - c:%p %s", v6);
}

- (void)dataSource:(uint64_t)a1 performBatchUpdate:(uint64_t)a2 complete:.cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  OUTLINED_FUNCTION_8_0();
  v7 = "[GKCollectionViewController dataSource:performBatchUpdate:complete:]";
  OUTLINED_FUNCTION_10(&dword_24DE53000, v2, v2, "****** %@ - GKCVC INIT - ds:%p %s", &v3);
}

void __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  v4 = v0;
  OUTLINED_FUNCTION_8_0();
  v5 = "[GKCollectionViewController dataSource:performBatchUpdate:complete:]_block_invoke";
  OUTLINED_FUNCTION_10(&dword_24DE53000, v1, v2, "****** %@ - GKCVC START - ds:%p %s", v3);
}

void __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke_5_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  v4 = v0;
  OUTLINED_FUNCTION_8_0();
  v5 = "[GKCollectionViewController dataSource:performBatchUpdate:complete:]_block_invoke_5";
  OUTLINED_FUNCTION_10(&dword_24DE53000, v1, v2, "****** %@ - GKCVC END - ds:%p %s", v3);
}

@end