@interface GKCollectionViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)hasLoaded;
- (BOOL)shouldSlideInContents;
- (GKCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (GKColorPalette)colorPalette;
- (double)showMoreTextMarginAtIndexPath:(id)path;
- (id)_gkRecursiveDescription;
- (id)collectionView;
- (id)currentSearchTerms;
- (id)footerViewAboveShowMoreViewAtIndexPath:(id)path;
- (id)gkDataSource;
- (id)nearestSelectableIndexPath:(id)path;
- (void)_applyUpdates:(id)updates withCompletionHandler:(id)handler;
- (void)_finishUpdates:(id)updates withCompletionHandler:(id)handler;
- (void)_gkRefreshContentsForDataType:(unsigned int)type userInfo:(id)info;
- (void)_gkSetContentsNeedUpdateWithHandler:(id)handler;
- (void)_loadDataWithCompletionHandlerAndError:(id)error;
- (void)_reallyStartLoadingIndicator;
- (void)_systemContentSizeSettingDidChange;
- (void)applyShowMoreLayoutAttributesForShowMoreView:(id)view atIndexPath:(id)path;
- (void)clearButtonPressed:(id)pressed;
- (void)clearSelectionHighlight;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)completeWhenReadyToDisplayData:(id)data;
- (void)dataSource:(id)source didInsertItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didInsertSections:(id)sections;
- (void)dataSource:(id)source didMoveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)dataSource:(id)source didMoveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)dataSource:(id)source didRefreshItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didRefreshSections:(id)sections;
- (void)dataSource:(id)source didRemoveItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didRemoveSections:(id)sections;
- (void)dataSource:(id)source didUpdatePlaceholderVisibility:(BOOL)visibility;
- (void)dataSource:(id)source performBatchUpdate:(id)update complete:(id)complete;
- (void)dataSourceDidMoveSectionsWithItems:(id)items;
- (void)dataSourceDidReloadData:(id)data;
- (void)dealloc;
- (void)didEnterErrorState;
- (void)didEnterNoContentState;
- (void)didTouchShowMore:(id)more;
- (void)hidePlaceholderAnimated:(BOOL)animated;
- (void)invalidateSearch;
- (void)loadDataWithCompletionHandlerAndError:(id)error;
- (void)loadView;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)setCurrentSearchText:(id)text;
- (void)setDataSource:(id)source;
- (void)setIsReadyToDisplayData:(BOOL)data;
- (void)setNeedsReload;
- (void)showCollectionView;
- (void)showPlaceholderWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle animated:(BOOL)animated block:(id)block;
- (void)shutActionPaneAnimated:(BOOL)animated;
- (void)slideInContents;
- (void)startLoadingIndicator;
- (void)stopLoadingIndicator;
- (void)stopLoadingIndicatorWithoutAnimation;
- (void)swipeToDeleteCell:(id)cell;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutGuideOffsets;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation GKCollectionViewController

- (GKCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = GKCollectionViewController;
  v6 = [(GKCollectionViewController *)&v15 initWithCollectionViewLayout:layoutCopy];
  if (v6)
  {
    v7 = objc_alloc_init(GKLoadableContentStateMachine);
    loadingMachine = v6->_loadingMachine;
    v6->_loadingMachine = v7;

    [(_GKStateMachine *)v6->_loadingMachine setDelegate:v6];
    objc_storeStrong(&v6->_defaultLayout, layout);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.GameKit.GKCollectionView.batchUpdateQueue", v9);
    batchUpdateQueue = v6->_batchUpdateQueue;
    v6->_batchUpdateQueue = v10;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = layoutCopy;
      [v12 registerClass:objc_opt_class() forDecorationViewOfKind:@"ColumnDivider"];
    }

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    [(GKCollectionViewController *)v6 setReusableViewsIHaveSeen:weakToWeakObjectsMapTable];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v4 dealloc];
}

- (id)_gkRecursiveDescription
{
  dataSource = [(GKCollectionViewController *)self dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = MEMORY[0x277CCACA8];
    v12.receiver = self;
    v12.super_class = GKCollectionViewController;
    v6 = [(GKCollectionViewController *)&v12 description];
    dataSource2 = [(GKCollectionViewController *)self dataSource];
    v8 = [dataSource2 _gkDescriptionWithChildren:1];
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
  collectionView = [(GKCollectionViewController *)&v5 collectionView];

  return collectionView;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 loadView];
  collectionView = [(GKCollectionViewController *)self collectionView];
  layer = [collectionView layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v20 viewDidLoad];
  [(GKCollectionViewController *)self configureDataSource];
  [(GKCollectionViewController *)self configureViewFactories];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView setDelegate:self];
  colorPalette = [(GKCollectionViewController *)self colorPalette];
  viewBackgroundColor = [colorPalette viewBackgroundColor];
  [collectionView setBackgroundColor:viewBackgroundColor];

  v6 = [[GKSwipeToEditStateMachine alloc] initWithCollectionView:collectionView];
  swipeStateMachine = self->_swipeStateMachine;
  self->_swipeStateMachine = v6;

  if (*MEMORY[0x277D0C258] == 1)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      collectionView2 = [(GKCollectionViewController *)self collectionView];
      [collectionView2 scrollIndicatorInsets];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      collectionView3 = [(GKCollectionViewController *)self collectionView];
      [collectionView3 setScrollIndicatorInsets:{v12, v14, v16 + 5.0, v18}];
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
  defaultLayout = [(GKCollectionViewController *)self defaultLayout];
  view = [(GKCollectionViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = defaultLayout;
  if (isKindOfClass)
  {
    v10 = defaultLayout;
    view2 = [(GKCollectionViewController *)self view];
    [view2 _contentMargin];
    v13 = v12;

    if (v13 == 0.0)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1 || (v13 = 20.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

        v13 = 15.0;
        if (!userInterfaceIdiom2)
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
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    if (!userInterfaceIdiom3)
    {
      if (([MEMORY[0x277D759A0] mainScreen], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "bounds"), v30 = v29, v32 = v31, v28, v30 >= 414.0) && v32 >= 736.0 || v30 >= 736.0 && v32 >= 414.0)
      {
        traitCollection = [(GKCollectionViewController *)self traitCollection];
        horizontalSizeClass = [traitCollection horizontalSizeClass];

        if (horizontalSizeClass == 2)
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
      collectionView = [(GKCollectionViewController *)self collectionView];
      [collectionView performBatchUpdates:0 completion:0];
    }

    v9 = defaultLayout;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v9);
}

- (id)nearestSelectableIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    goto LABEL_13;
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  if (numberOfSections < 1)
  {

LABEL_13:
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    goto LABEL_14;
  }

  v7 = numberOfSections;
  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    v10 = [collectionView numberOfItemsInSection:i];
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 1;
      do
      {
        v13 = v8;
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:v12 - 1 inSection:i];

        if (v12 - 1 >= [pathCopy item])
        {
          break;
        }
      }

      while (v12++ < v11);
    }

    if (i >= [pathCopy section])
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

- (void)viewWillAppear:(BOOL)appear
{
  v28.receiver = self;
  v28.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v28 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v8 = v7;
    v10 = v9;

    v11 = v8 < 414.0 || v10 < 736.0;
    if (!v11 || v8 >= 736.0 && v10 >= 414.0)
    {
      colorPalette = [(GKCollectionViewController *)self colorPalette];
      windowBackgroundColor = [colorPalette windowBackgroundColor];
      collectionView = [(GKCollectionViewController *)self collectionView];
      [collectionView setBackgroundColor:windowBackgroundColor];
    }
  }

  self->_didSlideIn = 0;
  dataSource = [(GKCollectionViewController *)self dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionView2 = [(GKCollectionViewController *)self collectionView];
    [dataSource collectionViewWillBecomeActive:collectionView2];
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
    collectionView3 = [(GKCollectionViewController *)self collectionView];
    layer = [collectionView3 layer];

    CATransform3DMakeTranslation(&v27, 0.0, 150.0, 0.0);
    v26 = v27;
    [layer setSublayerTransform:&v26];
    [MEMORY[0x277CD9FF0] commit];
  }

  currentState = [(_GKStateMachine *)self->_loadingMachine currentState];

  if (currentState == @"NoContentState")
  {
    [(GKCollectionViewController *)self didEnterNoContentState];
  }

  else
  {
    currentState2 = [(_GKStateMachine *)self->_loadingMachine currentState];

    if (currentState2 == @"ErrorState")
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

      collectionView4 = [(GKCollectionViewController *)self collectionView];
      [collectionView4 setAlpha:v21];
    }
  }

  if (self->_activeSearchBar)
  {
    [(GKCollectionViewController *)self searchBarSearchButtonClicked:?];
  }

  v23 = ([(GKCollectionViewController *)self interfaceOrientation]- 3) < 2;
  if (v23 != ([(GKCollectionViewController *)self previousOrientation]- 3) < 2)
  {
    collectionView5 = [(GKCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView5 collectionViewLayout];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [collectionViewLayout forceFullInvalidate];
    }

    else
    {
      [collectionViewLayout invalidateLayout];
    }
  }

  [(GKCollectionViewController *)self updateLayoutGuideOffsets];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(GKCollectionViewController *)self startLoadingIndicator];
  [(GKCollectionViewController *)self invalidateSearch];
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v6 viewWillDisappear:disappear];
  if (self->_activeSearchBar)
  {
    [(GKCollectionViewController *)self searchBarSearchButtonClicked:?];
  }

  [(GKCollectionViewController *)self setActive:0];
  gkDataSource = [(GKCollectionViewController *)self gkDataSource];
  if (gkDataSource)
  {
    collectionView = [(GKCollectionViewController *)self collectionView];
    [gkDataSource collectionViewDidBecomeInactive:collectionView];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = GKCollectionViewController;
  [(GKCollectionViewController *)&v5 viewDidDisappear:?];
  [(GKCollectionViewController *)self stopLoadingIndicatorWithoutAnimation];
  [(GKSwipeToEditStateMachine *)self->_swipeStateMachine viewDidDisappear:disappearCopy];
  [(GKCollectionViewController *)self setPreviousOrientation:[(GKCollectionViewController *)self interfaceOrientation]];
  [(GKCollectionViewController *)self hidePlaceholderAnimated:0];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
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
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:duration];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = GKCollectionViewController;
  coordinatorCopy = coordinator;
  [(GKCollectionViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(GKCollectionViewController *)self updateDynamicColumnCountsForViewSize:width, height];
  collectionViewLayout = [(GKCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__GKCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_27966A690;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = GKCollectionViewController;
  changeCopy = change;
  [(GKCollectionViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(GKCollectionViewController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(GKCollectionViewController *)self _systemContentSizeSettingDidChange];
  }
}

- (void)_systemContentSizeSettingDidChange
{
  collectionView = [(GKCollectionViewController *)self collectionView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__GKCollectionViewController__systemContentSizeSettingDidChange__block_invoke;
  v5[3] = &unk_279669E48;
  v5[4] = self;
  v6 = collectionView;
  v4 = collectionView;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v7 setDataSource:sourceCopy];
  }

  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v9 = dataSource;
    collectionView = [(GKCollectionViewController *)self collectionView];
    window = [collectionView window];

    if (window)
    {
      gkDataSource = [(GKCollectionViewController *)self gkDataSource];
      collectionView2 = [(GKCollectionViewController *)self collectionView];
      [gkDataSource collectionViewDidBecomeInactive:collectionView2];
    }

    objc_storeStrong(&self->_dataSource, source);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = self->_dataSource;
      [(UICollectionViewDataSource *)v14 setDelegate:self];
      collectionView3 = [(GKCollectionViewController *)self collectionView];
      window2 = [collectionView3 window];

      if (window2)
      {
        collectionView4 = [(GKCollectionViewController *)self collectionView];
        [(UICollectionViewDataSource *)v14 collectionViewWillBecomeActive:collectionView4];
      }

      collectionView5 = [(GKCollectionViewController *)self collectionView];
      [(UICollectionViewDataSource *)v14 configureCollectionView:collectionView5];
    }

    if (!self->_hasViewFactories)
    {
      [(GKCollectionViewController *)self configureViewFactories];
    }

    collectionView6 = [(GKCollectionViewController *)self collectionView];
    [collectionView6 setDataSource:sourceCopy];

    collectionView7 = [(GKCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView7 collectionViewLayout];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [collectionViewLayout forceFullInvalidate];
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
  dataSource = [(GKCollectionViewController *)self dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [v3 stringWithFormat:@"%@ ([dataSource isKindOfClass:[GKCollectionViewDataSource class]])\n[%s (%s:%d)]", v4, "-[GKCollectionViewController gkDataSource]", objc_msgSend(lastPathComponent, "UTF8String"), 549];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
    }
  }

  return dataSource;
}

- (GKColorPalette)colorPalette
{
  colorPalette = self->_colorPalette;
  if (colorPalette)
  {
    defaultColorPalette = colorPalette;
  }

  else
  {
    defaultColorPalette = [(GKCollectionViewController *)self defaultColorPalette];
  }

  return defaultColorPalette;
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  v19 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  [editingCopy setShowsCancelButton:1 animated:0];
  [editingCopy _setAutoDisableCancelButton:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = editingCopy;
  subviews = [editingCopy subviews];
  v6 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          _clearButton = [v11 _clearButton];
          [_clearButton removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
          [_clearButton addTarget:self action:sel_clearButtonPressed_ forEvents:64];
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [editing subviews];
  v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 setClearButtonMode:1];
          _clearButton = [v10 _clearButton];
          [_clearButton removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)clearButtonPressed:(id)pressed
{
  [pressed removeTarget:self action:sel_clearButtonPressed_ forControlEvents:64];
  if (self->_activeSearchBar)
  {

    [(GKCollectionViewController *)self searchBarCancelButtonClicked:?];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy _setAutoDisableCancelButton:1];
  [clickedCopy setShowsCancelButton:0 animated:0];
  [clickedCopy resignFirstResponder];
  [clickedCopy setText:0];

  [(GKCollectionViewController *)self setCurrentSearchText:0];

  [(GKCollectionViewController *)self setActiveSearchBar:0];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy resignFirstResponder];
  text = [clickedCopy text];

  [(GKCollectionViewController *)self setCurrentSearchText:text];
}

- (id)currentSearchTerms
{
  array = [MEMORY[0x277CBEB18] array];
  currentSearchText = self->_currentSearchText;
  v5 = [(NSString *)currentSearchText length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__GKCollectionViewController_currentSearchTerms__block_invoke;
  v8[3] = &unk_27966ABE8;
  v6 = array;
  v9 = v6;
  [(NSString *)currentSearchText enumerateSubstringsInRange:0 options:v5 usingBlock:1027, v8];

  return v6;
}

- (void)invalidateSearch
{
  dataSource = [(GKCollectionViewController *)self dataSource];
  collectionView = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(NSString *)self->_currentSearchText length])
      {
        v6 = [MEMORY[0x277CBEB58] set];
        currentSearchTerms = [(GKCollectionViewController *)self currentSearchTerms];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __46__GKCollectionViewController_invalidateSearch__block_invoke;
        v10[3] = &unk_27966C6F0;
        v11 = dataSource;
        v12 = currentSearchTerms;
        v13 = v6;
        v8 = v6;
        v9 = currentSearchTerms;
        [v11 enumerateItemsAndIndexPathsUsingBlock:v10];
        [collectionViewLayout setVisibleIndexPathsFilter:v8];
      }

      else
      {
        [collectionViewLayout setVisibleIndexPathsFilter:0];
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

- (void)setCurrentSearchText:(id)text
{
  textCopy = text;
  invalidateSearch = [textCopy length];
  if (invalidateSearch)
  {
    v5 = textCopy;
  }

  else
  {

    v5 = 0;
  }

  if (v5 != self->_currentSearchText)
  {
    v7 = v5;
    objc_storeStrong(&self->_currentSearchText, v5);
    invalidateSearch = [(GKCollectionViewController *)self invalidateSearch];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](invalidateSearch, v5);
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

- (void)_gkSetContentsNeedUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GKCollectionViewController *)self setNeedsReload];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v4 = handlerCopy;
  }
}

- (void)_finishUpdates:(id)updates withCompletionHandler:(id)handler
{
  updatesCopy = updates;
  handlerCopy = handler;
  gkDataSource = [(GKCollectionViewController *)self gkDataSource];
  collectionView = [(GKCollectionViewController *)self collectionView];
  v10 = [gkDataSource numberOfSectionsInCollectionView:collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while ([gkDataSource collectionView:collectionView numberOfItemsInSection:v12] < 1)
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
    error = [updatesCopy error];

    if (error)
    {
      if (!*MEMORY[0x277D0C2A0])
      {
        v14 = GKOSLoggers();
      }

      v15 = *MEMORY[0x277D0C290];
      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        [(GKCollectionViewController *)v15 _finishUpdates:updatesCopy withCompletionHandler:?];
      }

      v16 = &GKLoadStateError;
    }

    else
    {
      v16 = GKLoadStateNoContent;
    }
  }

  [(_GKStateMachine *)self->_loadingMachine setCurrentState:*v16];
  if (handlerCopy)
  {
    error2 = [updatesCopy error];
    handlerCopy[2](handlerCopy, error2);
  }
}

- (void)_applyUpdates:(id)updates withCompletionHandler:(id)handler
{
  updatesCopy = updates;
  handlerCopy = handler;
  if (!self->_hasViewFactories)
  {
    [(GKCollectionViewController *)self configureViewFactories];
  }

  currentState = [(_GKStateMachine *)self->_loadingMachine currentState];
  v9 = currentState;
  if (currentState == @"LoadingState")
  {

    goto LABEL_9;
  }

  error = [updatesCopy error];
  if (!error)
  {
    updateCount = [updatesCopy updateCount];

    if (!updateCount)
    {
      goto LABEL_6;
    }

LABEL_9:
    collectionView = [(GKCollectionViewController *)self collectionView];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__GKCollectionViewController__applyUpdates_withCompletionHandler___block_invoke_2;
    v17[3] = &unk_2796699A8;
    v18 = updatesCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__GKCollectionViewController__applyUpdates_withCompletionHandler___block_invoke_3;
    v14[3] = &unk_27966C718;
    v14[4] = self;
    v15 = v18;
    v16 = handlerCopy;
    [collectionView performBatchUpdates:v17 completion:v14];

    goto LABEL_10;
  }

LABEL_6:
  [(GKCollectionViewController *)self _finishUpdates:updatesCopy withCompletionHandler:handlerCopy];
  [updatesCopy applyUpdates];
  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 performBatchUpdates:&__block_literal_global_170 completion:0];

LABEL_10:
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier
{
  infoCopy = info;
  notifierCopy = notifier;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__GKCollectionViewController_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v12[3] = &unk_27966BA88;
  typeCopy = type;
  v12[4] = self;
  v13 = infoCopy;
  v14 = notifierCopy;
  v10 = notifierCopy;
  v11 = infoCopy;
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

- (void)_loadDataWithCompletionHandlerAndError:(id)error
{
  errorCopy = error;
  updateGroup = [MEMORY[0x277D0C250] updateGroup];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__GKCollectionViewController__loadDataWithCompletionHandlerAndError___block_invoke;
  v11[3] = &unk_27966BA10;
  v11[4] = self;
  [updateGroup perform:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__GKCollectionViewController__loadDataWithCompletionHandlerAndError___block_invoke_2;
  v8[3] = &unk_27966B380;
  v8[4] = self;
  v9 = updateGroup;
  v10 = errorCopy;
  v6 = errorCopy;
  v7 = updateGroup;
  [v7 join:v8];
}

- (void)loadDataWithCompletionHandlerAndError:(id)error
{
  loadingMachine = self->_loadingMachine;
  errorCopy = error;
  currentState = [(_GKStateMachine *)loadingMachine currentState];
  if (currentState == @"Initial")
  {
    v6 = GKLoadStateLoadingContent;
  }

  else
  {
    v6 = GKLoadStateRefreshingContent;
  }

  [(_GKStateMachine *)self->_loadingMachine setCurrentState:*v6];

  [(GKCollectionViewController *)self _loadDataWithCompletionHandlerAndError:errorCopy];
}

- (void)_gkRefreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  infoCopy = info;
  if ([(GKCollectionViewController *)self hasLoaded])
  {
    [(_GKStateMachine *)self->_loadingMachine setCurrentState:@"RefreshingState"];
    updateGroup = [MEMORY[0x277D0C250] updateGroup];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__GKCollectionViewController__gkRefreshContentsForDataType_userInfo___block_invoke;
    v11[3] = &unk_27966C740;
    v11[4] = self;
    typeCopy = type;
    v12 = infoCopy;
    [updateGroup perform:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__GKCollectionViewController__gkRefreshContentsForDataType_userInfo___block_invoke_2;
    v9[3] = &unk_279669E48;
    v9[4] = self;
    v10 = updateGroup;
    v8 = updateGroup;
    [v8 join:v9];
  }
}

- (void)dataSource:(id)source didInsertItemsAtIndexPaths:(id)paths
{
  sourceCopy = source;
  pathsCopy = paths;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:pathsCopy didInsertItemsAtIndexPaths:?];
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView insertItemsAtIndexPaths:pathsCopy];
}

- (void)dataSource:(id)source didRemoveItemsAtIndexPaths:(id)paths
{
  v22 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  pathsCopy = paths;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:pathsCopy didRemoveItemsAtIndexPaths:?];
  }

  trackedIndexPath = [(GKSwipeToEditStateMachine *)self->_swipeStateMachine trackedIndexPath];
  if (trackedIndexPath)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = pathsCopy;
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

          if ([trackedIndexPath isEqual:{*(*(&v17 + 1) + 8 * v15), v17}])
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

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView deleteItemsAtIndexPaths:pathsCopy];
}

- (void)dataSource:(id)source didRefreshItemsAtIndexPaths:(id)paths
{
  sourceCopy = source;
  pathsCopy = paths;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:pathsCopy didRefreshItemsAtIndexPaths:?];
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView reloadItemsAtIndexPaths:pathsCopy];
}

- (void)dataSource:(id)source didInsertSections:(id)sections
{
  sourceCopy = source;
  sectionsCopy = sections;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:sectionsCopy didInsertSections:?];
    if (!sectionsCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sectionsCopy)
  {
LABEL_5:
    collectionView = [(GKCollectionViewController *)self collectionView];
    [collectionView insertSections:sectionsCopy];
  }

LABEL_6:
}

- (void)dataSource:(id)source didRemoveSections:(id)sections
{
  sourceCopy = source;
  sectionsCopy = sections;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:sectionsCopy didRemoveSections:?];
    if (!sectionsCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!sectionsCopy)
  {
    goto LABEL_8;
  }

  trackedIndexPath = [(GKSwipeToEditStateMachine *)self->_swipeStateMachine trackedIndexPath];
  v11 = trackedIndexPath;
  if (trackedIndexPath)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __59__GKCollectionViewController_dataSource_didRemoveSections___block_invoke;
    v16 = &unk_279669F60;
    v17 = trackedIndexPath;
    selfCopy = self;
    [sectionsCopy enumerateIndexesUsingBlock:&v13];
  }

  v12 = [(GKCollectionViewController *)self collectionView:v13];
  [v12 deleteSections:sectionsCopy];

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

- (void)dataSource:(id)source didMoveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v32 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    v19 = v12;
    currentUpdateID = [(GKCollectionViewController *)self currentUpdateID];
    v21 = currentUpdateID;
    if (currentUpdateID)
    {
      v22 = currentUpdateID;
    }

    else
    {
      v22 = &stru_28612D290;
    }

    indexPathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"old: %@ \n new: %@", pathCopy, indexPathCopy];
    *buf = 138413058;
    v25 = v22;
    v26 = 2048;
    selfCopy = self;
    v28 = 2080;
    v29 = "[GKCollectionViewController dataSource:didMoveItemAtIndexPath:toIndexPath:]";
    v30 = 2112;
    v31 = indexPathCopy;
    _os_log_debug_impl(&dword_24DE53000, v19, OS_LOG_TYPE_DEBUG, "****** %@ - GKCVC - c:%p %s \n%@", buf, 0x2Au);

    if (!pathCopy)
    {
      goto LABEL_6;
    }
  }

  else if (!pathCopy)
  {
LABEL_6:
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    lastPathComponent = [v15 lastPathComponent];
    v17 = [v13 stringWithFormat:@"%@ (indexPath != ((void*)0) && newIndexPath != ((void*)0))\n[%s (%s:%d)]", v14, "-[GKCollectionViewController dataSource:didMoveItemAtIndexPath:toIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 882];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
    goto LABEL_7;
  }

  if (!indexPathCopy)
  {
    goto LABEL_6;
  }

LABEL_7:
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView moveItemAtIndexPath:pathCopy toIndexPath:indexPathCopy];
}

- (void)dataSource:(id)source didRefreshSections:(id)sections
{
  sourceCopy = source;
  sectionsCopy = sections;
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v9 dataSource:sectionsCopy didRefreshSections:?];
    if (!sectionsCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sectionsCopy)
  {
LABEL_5:
    collectionView = [(GKCollectionViewController *)self collectionView];
    [collectionView reloadSections:sectionsCopy];
  }

LABEL_6:
}

- (void)dataSource:(id)source didMoveSection:(int64_t)section toSection:(int64_t)toSection
{
  sourceCopy = source;
  if (!*MEMORY[0x277D0C2A0])
  {
    v9 = GKOSLoggers();
  }

  v10 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKCollectionViewController dataSource:v10 didMoveSection:self toSection:section];
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView moveSection:section toSection:toSection];
}

- (void)dataSource:(id)source didUpdatePlaceholderVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  sourceCopy = source;
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
  }

  v8 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKCollectionViewController dataSource:v8 didUpdatePlaceholderVisibility:self];
  }

  collectionViewLayout = [(GKCollectionViewController *)self collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout setShowPlaceholder:visibilityCopy];
  }
}

- (void)dataSourceDidReloadData:(id)data
{
  dataCopy = data;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v6 dataSourceDidReloadData:dataCopy];
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)dataSourceDidMoveSectionsWithItems:(id)items
{
  itemsCopy = items;
  if (!*MEMORY[0x277D0C2A0])
  {
    v5 = GKOSLoggers();
  }

  v6 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [(GKCollectionViewController *)v6 dataSourceDidMoveSectionsWithItems:itemsCopy];
  }

  collectionView = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [collectionViewLayout prepareForMovingItemsCarryingSections];
  }
}

- (void)dataSource:(id)source performBatchUpdate:(id)update complete:(id)complete
{
  sourceCopy = source;
  updateCopy = update;
  completeCopy = complete;
  v11 = completeCopy;
  if (!updateCopy && completeCopy)
  {
    (*(completeCopy + 2))(completeCopy);
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

  batchUpdateQueue = [(GKCollectionViewController *)self batchUpdateQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__GKCollectionViewController_dataSource_performBatchUpdate_complete___block_invoke;
  v18[3] = &unk_27966C7E0;
  v19 = v12;
  selfCopy = self;
  v21 = updateCopy;
  v22 = v11;
  v15 = v11;
  v16 = updateCopy;
  v17 = v12;
  dispatch_async(batchUpdateQueue, v18);
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

- (void)didTouchShowMore:(id)more
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__GKCollectionViewController_didTouchShowMore___block_invoke;
  v3[3] = &unk_27966B1A8;
  v3[4] = self;
  [more enumerateIndexesUsingBlock:v3];
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

- (id)footerViewAboveShowMoreViewAtIndexPath:(id)path
{
  pathCopy = path;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  item = [pathCopy item];
  section = [pathCopy section];
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:item - 1 inSection:section];
  collectionView = [(GKCollectionViewController *)self collectionView];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __69__GKCollectionViewController_footerViewAboveShowMoreViewAtIndexPath___block_invoke;
  v17 = &unk_27966C808;
  v21 = &v22;
  selfCopy = self;
  v9 = collectionView;
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

- (double)showMoreTextMarginAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(GKCollectionViewController *)self collectionView];
  item = [pathCopy item];
  section = [pathCopy section];
  v8 = 0.0;
  if (item < 1)
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
    v9 = section;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    if (section < [collectionView numberOfSections])
    {
      v17 = [(GKCollectionViewController *)self footerViewAboveShowMoreViewAtIndexPath:pathCopy];
      if (!v17 || (objc_opt_respondsToSelector() & 1) == 0 || ([v17 layoutIfNeeded], objc_msgSend(v17, "alignmentRectForText"), v16 = v18, v15 = v19, v14 = v20, v13 = v21, objc_msgSend(v17, "bounds"), v12 = v22, v11 = v23, v10 = v24, v8 = v25, v14 == 0.0))
      {
        collectionViewLayout = [collectionView collectionViewLayout];
        v27 = [collectionViewLayout currentMaxVisibleItemCountForSection:v9];

        if (v27 >= 1 && v27 <= [collectionView numberOfItemsInSection:v9])
        {
          v28 = [MEMORY[0x277CCAA70] indexPathForItem:v27 - 1 inSection:v9];
          dataSource = [(GKCollectionViewController *)self dataSource];
          v30 = [dataSource collectionView:collectionView cellForItemAtIndexPath:v28];

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

- (void)applyShowMoreLayoutAttributesForShowMoreView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  [(GKCollectionViewController *)self showMoreTextMarginAtIndexPath:path];
  [viewCopy setTextAlignmentOffset:?];
}

- (void)didEnterNoContentState
{
  v5 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = 138412290;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_debug_impl(&dword_24DE53000, selfCopy, OS_LOG_TYPE_DEBUG, "%@ has no content and did not override me or called super", &v3, 0xCu);
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
  currentState = [(_GKStateMachine *)self->_loadingMachine currentState];

  if (currentState == @"LoadingState")
  {
    if (!self->_loadingIndicatorView)
    {
      view = [(GKCollectionViewController *)self view];
      [view bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{v6, v8, v10, v12}];
      [(GKCollectionViewController *)self setLoadingIndicatorView:v13];

      loadingIndicatorView = [(GKCollectionViewController *)self loadingIndicatorView];
      [loadingIndicatorView setActivityIndicatorViewStyle:101];

      mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
      activityIndicatorColor = [mEMORY[0x277D0C868] activityIndicatorColor];
      loadingIndicatorView2 = [(GKCollectionViewController *)self loadingIndicatorView];
      [loadingIndicatorView2 setColor:activityIndicatorColor];

      loadingIndicatorView3 = [(GKCollectionViewController *)self loadingIndicatorView];
      [loadingIndicatorView3 setAutoresizingMask:18];

      view2 = [(GKCollectionViewController *)self view];
      loadingIndicatorView4 = [(GKCollectionViewController *)self loadingIndicatorView];
      [view2 addSubview:loadingIndicatorView4];

      loadingIndicatorView5 = [(GKCollectionViewController *)self loadingIndicatorView];
      [loadingIndicatorView5 setAlpha:0.0];

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
  currentState = [(_GKStateMachine *)self->_loadingMachine currentState];
  if (currentState == @"Initial")
  {
    v5 = 0;
  }

  else
  {
    currentState2 = [(_GKStateMachine *)self->_loadingMachine currentState];
    v5 = currentState2 != @"LoadingState";
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

- (void)setIsReadyToDisplayData:(BOOL)data
{
  if (self->_readyToDisplayData != data)
  {
    [(GKCollectionViewController *)self willChangeValueForKey:@"readyToDisplayData"];
    self->_readyToDisplayData = data;

    [(GKCollectionViewController *)self didChangeValueForKey:@"readyToDisplayData"];
  }
}

- (void)completeWhenReadyToDisplayData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController.m"];
    lastPathComponent = [v7 lastPathComponent];
    1248 = [v5 stringWithFormat:@"%@ (complete != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKCollectionViewController completeWhenReadyToDisplayData:]", objc_msgSend(lastPathComponent, "UTF8String"), 1248];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", 1248}];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__GKCollectionViewController_completeWhenReadyToDisplayData___block_invoke;
  v12[3] = &unk_27966C830;
  v12[4] = self;
  v13 = dataCopy;
  v10 = dataCopy;
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

    shouldSlideInContents = [(GKCollectionViewController *)self shouldSlideInContents];
    collectionView = [(GKCollectionViewController *)self collectionView];
    layer = [collectionView layer];

    if (shouldSlideInContents)
    {
      collectionViewLayout = [(GKCollectionViewController *)self collectionViewLayout];
      [collectionViewLayout enableClipView];
      [MEMORY[0x277CD9FF0] begin];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __45__GKCollectionViewController_slideInContents__block_invoke;
      v38[3] = &unk_2796699A8;
      v38[4] = self;
      [MEMORY[0x277CD9FF0] setCompletionBlock:v38];
      v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"sublayerTransform"];
      v8 = MEMORY[0x277CCAE60];
      if (layer)
      {
        [layer sublayerTransform];
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
      [layer addAnimation:v7 forKey:@"slideIn"];
      [MEMORY[0x277CD9FF0] commit];
      v26 = MEMORY[0x277D75D18];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__GKCollectionViewController_slideInContents__block_invoke_2;
      v28[3] = &unk_2796699A8;
      v29 = layer;
      modelLayer = layer;
      [v26 performWithoutAnimation:v28];

      layer = collectionViewLayout;
    }

    else
    {
      modelLayer = [layer modelLayer];
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
      [modelLayer setSublayerTransform:&v30];
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

- (void)showPlaceholderWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle animated:(BOOL)animated block:(id)block
{
  animatedCopy = animated;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  blockCopy = block;
  placeholderView = [(GKCollectionViewController *)self placeholderView];
  placeholderNavigationController = [(GKCollectionViewController *)self placeholderNavigationController];
  if (placeholderView)
  {
    title = [placeholderView title];
    if ([title isEqualToString:titleCopy])
    {
      message = [placeholderView message];
      if ([message isEqualToString:messageCopy])
      {
        buttonTitle = [placeholderView buttonTitle];
        v28 = [buttonTitle isEqualToString:buttonTitleCopy];

        if (v28)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  view = [(GKCollectionViewController *)self view];
  [view bounds];
  v29 = messageCopy;
  v21 = [GKPlaceholderView placeholderViewWithTitle:titleCopy message:messageCopy frame:?];
  [(GKCollectionViewController *)self setPlaceholderView:v21];

  [(GKPlaceholderView *)self->_placeholderView setAlpha:0.0];
  [(GKPlaceholderView *)self->_placeholderView setAutoresizingMask:18];
  if (buttonTitleCopy && blockCopy)
  {
    [(_UIContentUnavailableView *)self->_placeholderView setButtonTitle:buttonTitleCopy];
    [(_UIContentUnavailableView *)self->_placeholderView setButtonAction:blockCopy];
  }

  [(GKCollectionViewController *)self addPlaceholderViewToView:view];
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setAlpha:0.0];

  v23 = MEMORY[0x277D75D18];
  if (animatedCopy)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __90__GKCollectionViewController_showPlaceholderWithTitle_message_buttonTitle_animated_block___block_invoke;
    v37[3] = &unk_27966A9A8;
    v37[4] = self;
    v24 = &v38;
    v25 = placeholderView;
    v38 = v25;
    v26 = &v39;
    v27 = placeholderNavigationController;
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
    v32 = placeholderView;
    v26 = &v33;
    v33 = placeholderNavigationController;
    [v23 performWithoutAnimation:v31];
  }

  messageCopy = v29;
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

- (void)hidePlaceholderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_placeholderView;
  v6 = self->_placeholderNavigationController;
  if (v5)
  {
    [(_UIContentUnavailableView *)v5 setButtonAction:0];
    v7 = MEMORY[0x277D75D18];
    if (animatedCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke;
      v16[3] = &unk_27966A9A8;
      v17 = v5;
      v18 = v6;
      selfCopy = self;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __54__GKCollectionViewController_hidePlaceholderAnimated___block_invoke_2;
      v12[3] = &unk_27966AED8;
      v13 = v17;
      v14 = v18;
      selfCopy2 = self;
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

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = [(_GKStateMachine *)self->_swipeStateMachine currentState:view];
  v5 = [v4 isEqualToString:@"NothingState"];

  return v5;
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  pathCopy = path;
  reusableViewsIHaveSeen = self->_reusableViewsIHaveSeen;
  viewCopy = view;
  [(NSMapTable *)reusableViewsIHaveSeen setObject:supplementaryViewCopy forKey:supplementaryViewCopy];
  collectionViewLayout = [viewCopy collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [collectionViewLayout attributesForSupplementaryIndexPath:pathCopy];
    supplementaryMetrics = [v13 supplementaryMetrics];
    if (![supplementaryMetrics configurator])
    {
LABEL_12:

      goto LABEL_13;
    }

    target = [supplementaryMetrics target];
    if (target)
    {
      v16 = target;
      goto LABEL_5;
    }

    dataSource = [v13 dataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [dataSource targetForAction:{objc_msgSend(supplementaryMetrics, "configurator")}];

      if (v16)
      {
LABEL_5:
        if ([supplementaryMetrics configurator])
        {
          [v16 objc_msgSend(supplementaryMetrics];
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
  collectionView = [(GKCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [indexPathsForSelectedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [collectionView deselectItemAtIndexPath:*(*(&v8 + 1) + 8 * v7++) animated:1];
      }

      while (v5 != v7);
      v5 = [indexPathsForSelectedItems countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)shutActionPaneAnimated:(BOOL)animated
{
  animatedCopy = animated;
  swipeStateMachine = [(GKCollectionViewController *)self swipeStateMachine];
  [swipeStateMachine shutActionPaneForEditingCellAnimated:animatedCopy];
}

- (void)swipeToDeleteCell:(id)cell
{
  v35 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  collectionView = [(GKCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gkDataSource = [(GKCollectionViewController *)self gkDataSource];
    collectionView2 = [(GKCollectionViewController *)self collectionView];
    v9 = [collectionView2 indexPathForCell:cellCopy];

    if (self->_activeSearchBar)
    {
      visibleIndexPathsFilter = [collectionViewLayout visibleIndexPathsFilter];
      v11 = [visibleIndexPathsFilter count];
      if (v11 >= 1)
      {
        v24 = gkDataSource;
        v25 = collectionViewLayout;
        v26 = collectionView;
        v27 = cellCopy;
        v12 = [MEMORY[0x277CBEB58] setWithCapacity:v11 - 1];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v23 = visibleIndexPathsFilter;
        v13 = visibleIndexPathsFilter;
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
              section = [v18 section];
              if (section == [v9 section] && (v20 = objc_msgSend(v18, "item"), v20 > objc_msgSend(v9, "item")))
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

        collectionViewLayout = v25;
        [v25 setVisibleIndexPathsFilter:v12];

        collectionView = v26;
        cellCopy = v27;
        gkDataSource = v24;
        visibleIndexPathsFilter = v23;
      }
    }

    v22 = [collectionViewLayout revealMoreForSectionIndex:objc_msgSend(v9 revealCount:"section") andDeleteItemCount:{self->_activeSearchBar == 0, 1}];
    [collectionViewLayout prepareForUpdate:0 inDataSource:gkDataSource];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __70__GKCollectionViewController_GKSwipeToEditSupport__swipeToDeleteCell___block_invoke;
    v28[3] = &unk_27966C858;
    v28[4] = self;
    v29 = collectionViewLayout;
    [gkDataSource removeItemAtIndexPath:v9 completionHandler:v28];
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
  collectionView = [(GKCollectionViewController *)self collectionView];
  [collectionView setAlpha:1.0];

  collectionView2 = [(GKCollectionViewController *)self collectionView];
  [collectionView2 flashScrollIndicators];
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