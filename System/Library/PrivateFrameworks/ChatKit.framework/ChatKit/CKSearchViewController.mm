@interface CKSearchViewController
+ (BOOL)wantsInternalDebugInformation;
- (BOOL)_hasResults;
- (BOOL)_hasSearchBarInput;
- (BOOL)_hasSelectedItemAtIndexPath:(id *)path;
- (BOOL)_isSectionShowingTokenSuggestions:(int64_t)suggestions;
- (BOOL)_needsIndexing;
- (BOOL)_shouldHideShowAllButtonForController:(id)controller;
- (BOOL)contextMenuInteractionShouldBegin:(id)begin;
- (BOOL)conversationSearchHasResult;
- (BOOL)shouldInsetResultsForSearchController:(id)controller;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKContainerSearchControllerDelegate)delegate;
- (CKSearchAnalytics)searchAnalytics;
- (CKSearchViewController)initWithSearchControllerClasses:(id)classes;
- (IMIndexThrottleMonitor)throttleMonitor;
- (IMPersistentTaskMonitor)taskMonitor;
- (IMSpotlightClientStateMonitor)clientStateMonitor;
- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)controller;
- (double)containerWidthForController:(id)controller;
- (double)widthForDeterminingAvatarVisibility;
- (id)_identifiersToAppendForResults:(id)results;
- (id)_newSnapshotForCurrentControllerState;
- (id)_spotlightClientState;
- (id)_subtitleStringForIndexingUI;
- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier;
- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path forSupplementaryViewKind:(id)kind;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)contextMenusForConversation:(id)conversation;
- (id)footerBoundryItemsForController:(id)controller withEnvironment:(id)environment;
- (id)globalLayoutConfiguration;
- (id)headerBoundryItemsForController:(id)controller withEnvironment:(id)environment;
- (id)layoutSectionForController:(id)controller withEnvironment:(id)environment;
- (id)layoutSectionForSection:(int64_t)section withEnvironment:(id)environment;
- (id)searchController:(id)controller cellForResult:(id)result;
- (id)searchController:(id)controller conversationForChatGUID:(id)d;
- (id)searchController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds;
- (id)searchTokenFiltersForSearchController:(id)controller;
- (int64_t)_indexForExistingConversationToken:(id)token;
- (void)__updateSectionHeadersAtIndexPaths:(id)paths elementKind:(id)kind;
- (void)_configureIndexingCell:(id)cell;
- (void)_dismissQuickLookPreviewModalIfNeeded;
- (void)_hideInlineSearchSuggestions;
- (void)_insertTokenToSearchTextField:(id)field;
- (void)_logResultsDidChange;
- (void)_registerCells;
- (void)_reloadDataAndLayout;
- (void)_searchImmediately;
- (void)_selectItemForFindAtIndexPath:(id)path;
- (void)_updateSectionHeaders;
- (void)cancelCurrentQuery;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)findNext;
- (void)findPrevious;
- (void)loadView;
- (void)logActivationViaSearchBar;
- (void)logActivationViaSpotlight;
- (void)logCancelButtonTapped;
- (void)logClearButtonTapped;
- (void)logDeactivation;
- (void)logSearchButtonTapped;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchController:(id)controller requestsPresentationOfAlertController:(id)alertController atRect:(CGRect)rect;
- (void)searchController:(id)controller requestsPresentationOfShareController:(id)shareController atRect:(CGRect)rect;
- (void)searchControllerContentsDidChange:(id)change;
- (void)searchEnded;
- (void)searchResultsTitleCellShowAllButtonTapped:(id)tapped;
- (void)searchWithText:(id)text;
- (void)setCanShowTokenSuggestions:(BOOL)suggestions;
- (void)setMode:(unint64_t)mode;
- (void)setSearchControllers:(id)controllers;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKSearchViewController

- (CKSearchViewController)initWithSearchControllerClasses:(id)classes
{
  v25 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v23.receiver = self;
  v23.super_class = CKSearchViewController;
  v5 = [(CKSearchViewController *)&v23 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(CKConversationListCellLayout);
    [(CKSearchViewController *)v5 setCellLayout:v6];

    [(CKSearchViewController *)v5 setIsInitialLoad:1];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [(UIViewController *)v5 setBalloonBackdropGroupTraitOverrideWithUniqueContextString:uUIDString];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(classesCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = classesCopy;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = objc_alloc_init(*(*(&v19 + 1) + 8 * v14));
          v16 = v15;
          if (v15)
          {
            [v15 setDelegate:{v5, v19}];
            [v9 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(CKSearchViewController *)v5 setSearchControllers:v9];
    v17 = objc_opt_new();
    [(CKSearchViewController *)v5 setSearchCompleteControllerSet:v17];
  }

  return v5;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  collectionView = [(CKSearchViewController *)self collectionView];
  [collectionView setSuppressDatasourceUpdates:1];

  collectionView2 = [(CKSearchViewController *)self collectionView];
  contextMenuInteraction = [(CKSearchViewController *)self contextMenuInteraction];
  [collectionView2 removeInteraction:contextMenuInteraction];

  [(CKSearchViewController *)self setContextMenuInteraction:0];
  v6.receiver = self;
  v6.super_class = CKSearchViewController;
  [(CKSearchViewController *)&v6 dealloc];
}

- (void)loadView
{
  v34.receiver = self;
  v34.super_class = CKSearchViewController;
  [(CKSearchViewController *)&v34 loadView];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __34__CKSearchViewController_loadView__block_invoke;
  v31[3] = &unk_1E72ECC10;
  objc_copyWeak(&v32, &location);
  v4 = [v3 initWithSectionProvider:v31];
  [(CKSearchViewController *)self setCollectionViewLayout:v4];
  collectionViewLayout = [(CKSearchViewController *)self collectionViewLayout];
  globalLayoutConfiguration = [(CKSearchViewController *)self globalLayoutConfiguration];
  v7 = [globalLayoutConfiguration copy];
  [collectionViewLayout setConfiguration:v7];

  v8 = [CKSearchCollectionView alloc];
  view = [(CKSearchViewController *)self view];
  [view bounds];
  v10 = [(CKSearchCollectionView *)v8 initWithFrame:v4 collectionViewLayout:?];

  [(CKSearchCollectionView *)v10 setAutoresizingMask:18];
  [(CKSearchCollectionView *)v10 setDelegate:self];
  [(CKSearchViewController *)self setCollectionView:v10];
  view2 = [(CKSearchViewController *)self view];
  [view2 addSubview:v10];

  [(CKSearchViewController *)self _registerCells];
  collectionView = [(CKSearchViewController *)self collectionView];
  v13 = +[CKUIBehavior sharedBehaviors];
  theme = [v13 theme];
  spotlightSearchBackgroundColor = [theme spotlightSearchBackgroundColor];
  [collectionView setBackgroundColor:spotlightSearchBackgroundColor];

  collectionView2 = [(CKSearchViewController *)self collectionView];
  [collectionView2 setAlwaysBounceVertical:1];

  collectionView3 = [(CKSearchViewController *)self collectionView];
  [collectionView3 setAlwaysBounceHorizontal:0];

  v18 = objc_alloc(MEMORY[0x1E69DC820]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __34__CKSearchViewController_loadView__block_invoke_2;
  v29[3] = &unk_1E72F11A0;
  objc_copyWeak(&v30, &location);
  v19 = [v18 initWithCollectionView:v10 cellProvider:v29];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __34__CKSearchViewController_loadView__block_invoke_3;
  v27 = &unk_1E72F11C8;
  objc_copyWeak(&v28, &location);
  [v19 setSupplementaryViewProvider:&v24];
  [(CKSearchViewController *)self setDataSource:v19, v24, v25, v26, v27];
  v20 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [(CKSearchViewController *)self setContextMenuInteraction:v20];

  collectionView4 = [(CKSearchViewController *)self collectionView];
  contextMenuInteraction = [(CKSearchViewController *)self contextMenuInteraction];
  [collectionView4 addInteraction:contextMenuInteraction];

  collectionView5 = [(CKSearchViewController *)self collectionView];
  [collectionView5 setDragDelegate:self];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

id __34__CKSearchViewController_loadView__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained layoutSectionForSection:a2 withEnvironment:v5];

  return v7;
}

id __34__CKSearchViewController_loadView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained cellForItemInCollectionView:v9 atIndexPath:v8 withIdentifier:v7];

  return v11;
}

id __34__CKSearchViewController_loadView__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained cellForSupplementaryItemInCollectionView:v9 atIndexPath:v7 forSupplementaryViewKind:v8];

  return v11;
}

- (void)_registerCells
{
  v46 = *MEMORY[0x1E69E9840];
  collectionView = [(CKSearchViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[CKSearchResultsTitleHeaderCell supplementaryViewType];
  v6 = +[CKSearchResultsTitleHeaderCell reuseIdentifier];
  [collectionView registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  collectionView2 = [(CKSearchViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v10 = +[CKSearchAvatarSupplementryView reuseIdentifier];
  [collectionView2 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  collectionView3 = [(CKSearchViewController *)self collectionView];
  v12 = objc_opt_class();
  v13 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
  v14 = +[CKPhotosSearchResultsModeHeaderReusableView reuseIdentifier];
  [collectionView3 registerClass:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v14];

  if (CKIsRunningInMacCatalyst())
  {
    collectionView4 = [(CKSearchViewController *)self collectionView];
    v16 = objc_opt_class();
    v17 = +[CKPhotosSearchResultsTitleHeaderCell supplementaryViewType];
    v18 = +[CKPhotosSearchResultsTitleHeaderCell reuseIdentifier];
    [collectionView4 registerClass:v16 forSupplementaryViewOfKind:v17 withReuseIdentifier:v18];
  }

  collectionView5 = [(CKSearchViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[CKSearchIndexingFooterCell supplementaryViewType];
  v22 = +[CKSearchIndexingFooterCell reuseIdentifier];
  [collectionView5 registerClass:v20 forSupplementaryViewOfKind:v21 withReuseIdentifier:v22];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(CKSearchViewController *)self visibleSearchControllers];
  v23 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v35 = *v41;
    do
    {
      v25 = 0;
      do
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        supportedCellClasses = [objc_opt_class() supportedCellClasses];
        v27 = [supportedCellClasses countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v37;
          do
          {
            v30 = 0;
            do
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(supportedCellClasses);
              }

              v31 = *(*(&v36 + 1) + 8 * v30);
              if (v31)
              {
                collectionView6 = [(CKSearchViewController *)self collectionView];
                reuseIdentifier = [v31 reuseIdentifier];
                [collectionView6 registerClass:v31 forCellWithReuseIdentifier:reuseIdentifier];
              }

              ++v30;
            }

            while (v28 != v30);
            v28 = [supportedCellClasses countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v28);
        }

        ++v25;
      }

      while (v25 != v24);
      v24 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v24);
  }
}

- (void)viewDidLayoutSubviews
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CKSearchViewController;
  [(CKSearchViewController *)&v27 viewDidLayoutSubviews];
  if ([(CKSearchViewController *)self mode]== 3 || [(CKSearchViewController *)self mode]== 4)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 searchDetailsLeadingAndTrailingMaxPadding];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 searchLeadingAndTrailingMaxPadding];
  }

  v5 = v4;

  collectionView = [(CKSearchViewController *)self collectionView];
  insetsLayoutMarginsFromSafeArea = [collectionView insetsLayoutMarginsFromSafeArea];

  if (insetsLayoutMarginsFromSafeArea)
  {
    v8 = v5;
  }

  else
  {
    view = [(CKSearchViewController *)self view];
    [view safeAreaInsets];
    v11 = v10;
    v8 = v12;

    if (v11 >= v5)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    if (v8 < v5)
    {
      v8 = v5;
    }

    v5 = v13;
  }

  collectionView2 = [(CKSearchViewController *)self collectionView];
  [collectionView2 setMarginInsets:{0.0, v5, 0.0, v8}];

  if ([(CKSearchViewController *)self isInitialLoad])
  {
    [(CKSearchViewController *)self setIsInitialLoad:0];
    performAfterInitialLoadBlock = [(CKSearchViewController *)self performAfterInitialLoadBlock];

    if (performAfterInitialLoadBlock)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = CKStringFromSearchControllerMode([(CKSearchViewController *)self mode]);
          *buf = 138412290;
          v29 = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Performing deferred load search block. mode={%@}", buf, 0xCu);
        }
      }

      performAfterInitialLoadBlock2 = [(CKSearchViewController *)self performAfterInitialLoadBlock];
      performAfterInitialLoadBlock2[2]();

      [(CKSearchViewController *)self setPerformAfterInitialLoadBlock:0];
    }
  }

  [(CKScrollViewController *)self updateScrollGeometryWithInheritedAnimationForReason:@"LayoutSubviews"];
  if ([(CKSearchViewController *)self mode]== 2)
  {
    collectionView3 = [(CKSearchViewController *)self collectionView];
    [collectionView3 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    collectionView4 = [(CKSearchViewController *)self collectionView];
    [collectionView4 setContentInset:{0.0, v21, v23, v25}];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CKSearchViewController;
  [(CKViewController *)&v6 viewDidAppear:appear];
  performAfterInitialAppearanceBlock = [(CKSearchViewController *)self performAfterInitialAppearanceBlock];

  if (performAfterInitialAppearanceBlock)
  {
    performAfterInitialAppearanceBlock2 = [(CKSearchViewController *)self performAfterInitialAppearanceBlock];
    performAfterInitialAppearanceBlock2[2]();

    [(CKSearchViewController *)self setPerformAfterInitialAppearanceBlock:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = CKSearchViewController;
  coordinatorCopy = coordinator;
  [(CKSearchViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CKSearchViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E72F7DB0;
  v9[4] = self;
  v9[5] = a2;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

uint64_t __77__CKSearchViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) cellLayout];

  if (!v3)
  {
    __77__CKSearchViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_cold_1(a1, v2);
  }

  v4 = [*v2 cellLayout];
  [v4 invalidate];

  result = CKIsRunningInMacCatalyst();
  if (!result)
  {
    v6 = *v2;

    return [v6 _searchImmediately];
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CKSearchViewController;
  [(CKViewController *)&v22 viewWillAppear:appear];
  if ([(CKSearchViewController *)self mode]== 2)
  {
    visibleSearchControllers = [(CKSearchViewController *)self visibleSearchControllers];
    firstObject = [visibleSearchControllers firstObject];

    searchText = [(CKSearchViewController *)self searchText];
    v7 = [firstObject navigationBarTitleSummaryForSearchText:searchText];
  }

  else
  {
    if ([(CKSearchViewController *)self mode]== 4)
    {
      visibleSearchControllers2 = [(CKSearchViewController *)self visibleSearchControllers];
      firstObject = [visibleSearchControllers2 firstObject];

      [objc_opt_class() sectionTitle];
    }

    else
    {
      firstObject = CKFrameworkBundle();
      [firstObject localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v7 = ;
  }

  [(CKSearchViewController *)self setTitle:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(CKSearchViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v11 = [indexPathsForSelectedItems countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        collectionView2 = [(CKSearchViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v15 animated:1];

        ++v14;
      }

      while (v12 != v14);
      v12 = [indexPathsForSelectedItems countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  navigationItem = [(CKSearchViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKSearchViewController;
  [(CKViewController *)&v4 viewDidDisappear:disappear];
  [(CKSearchViewController *)self searchEnded];
}

- (void)setMode:(unint64_t)mode
{
  self->_mode = mode;
  collectionView = [(CKSearchViewController *)self collectionView];
  [collectionView setMode:mode];
}

- (void)setSearchControllers:(id)controllers
{
  v25 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  objc_storeStrong(&self->_searchControllers, controllers);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = controllersCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        if ([objc_opt_class() isVisibleInCollectionView])
        {
          [v6 addObject:v13];
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        [v7 setObject:v13 forKey:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [v6 copy];
  visibleSearchControllers = self->_visibleSearchControllers;
  self->_visibleSearchControllers = v16;

  v18 = [v7 copy];
  searchControllerMap = self->__searchControllerMap;
  self->__searchControllerMap = v18;
}

- (id)layoutSectionForSection:(int64_t)section withEnvironment:(id)environment
{
  v16 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v8 = [searchControllersWithResults count];

  if (v8 <= section)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        sectionCopy = section;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "CKSearchController - Asked to provide a layout section for a section we don't have! section is %lu", &v14, 0xCu);
      }
    }

    v11 = 0;
  }

  else
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v10 = [searchControllersWithResults2 objectAtIndex:section];

    v11 = [(CKSearchViewController *)self layoutSectionForController:v10 withEnvironment:environmentCopy];
  }

  return v11;
}

- (id)cellForItemInCollectionView:(id)view atIndexPath:(id)path withIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v14 = [searchControllersWithResults count];

  if (section >= v14)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKSearchController - Asked to provide a cell for a section we don't have!", v23, 2u);
      }
    }

    v17 = 0;
  }

  else
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v16 = [searchControllersWithResults2 objectAtIndex:section];

    v17 = [v16 cellForItemInCollectionView:viewCopy atIndexPath:pathCopy withIdentifier:identifierCopy];
    if (objc_opt_respondsToSelector())
    {
      cellLayout = [(CKSearchViewController *)self cellLayout];

      if (!cellLayout)
      {
        [CKSearchViewController cellForItemInCollectionView:a2 atIndexPath:? withIdentifier:?];
      }

      cellLayout2 = [(CKSearchViewController *)self cellLayout];
      [v17 setCellLayout:cellLayout2];
    }

    collectionView = [(CKSearchViewController *)self collectionView];
    [v17 _ck_setEditing:{objc_msgSend(collectionView, "_ck_isEditing")}];
  }

  return v17;
}

- (id)cellForSupplementaryItemInCollectionView:(id)view atIndexPath:(id)path forSupplementaryViewKind:(id)kind
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v13 = [searchControllersWithResults count];

  if (section >= v13)
  {
    v15 = 0;
  }

  else
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v15 = [searchControllersWithResults2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  }

  if ([v15 headerOverrideClass] && CKIsRunningInMacCatalyst())
  {
    headerOverrideClass = [v15 headerOverrideClass];
  }

  else
  {
    headerOverrideClass = [(CKSearchViewController *)self _searchResultsHeaderClass];
  }

  supplementaryViewType = [(objc_class *)headerOverrideClass supplementaryViewType];
  v18 = [kindCopy isEqualToString:supplementaryViewType];

  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && CKIsRunningInMacCatalyst())
    {
      v19 = +[CKPhotosSearchResultsTitleHeaderCell supplementaryViewType];
      v20 = +[CKPhotosSearchResultsTitleHeaderCell reuseIdentifier];
      v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v20 forIndexPath:pathCopy];

      control = [v21 control];
      [control addTarget:v15 action:sel__filterControlTapped_ forControlEvents:4096];

      view = [(CKSearchViewController *)self view];
      [view frame];
      [v21 updateSegmentedControlToFitWidth:v24];
    }

    else
    {
      view = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
      reuseIdentifier = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] reuseIdentifier];
      v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:view withReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];
    }

    if (v15)
    {
      [v21 setDelegate:self];
      sectionTitle = [objc_opt_class() sectionTitle];
      [v21 setTitle:sectionTitle];

      showAllButton = [v21 showAllButton];
      [showAllButton setHidden:{-[CKSearchViewController _shouldHideShowAllButtonForController:](self, "_shouldHideShowAllButtonForController:", v15)}];

      [v21 setSectionIndex:{objc_msgSend(pathCopy, "section")}];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isSearchRefreshEnabled = [mEMORY[0x1E69A8070] isSearchRefreshEnabled];

      if ((isSearchRefreshEnabled & 1) == 0)
      {
        section2 = [pathCopy section];
        v35 = section2 - 1;
        if (section2 >= 1 && [(CKSearchViewController *)self _isSectionShowingTokenSuggestions:v35])
        {
          v36 = +[CKUIBehavior sharedBehaviors];
          [v36 searchSectionDirectionalMarginInsets];
          [v21 setLeadingSeparatorInsets:v37];
        }

        else
        {
          [v21 setLeadingSeparatorInsets:{v35, 0.0}];
        }
      }
    }
  }

  else
  {
    v25 = +[CKSearchIndexingFooterCell supplementaryViewType];
    v26 = [kindCopy isEqualToString:v25];

    if (v26)
    {
      v27 = +[CKSearchIndexingFooterCell supplementaryViewType];
      v28 = +[CKSearchIndexingFooterCell reuseIdentifier];
      v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:pathCopy];

      [(CKSearchViewController *)self _configureIndexingCell:v21];
    }

    else
    {
      v21 = [v15 cellForSupplementaryItemInCollectionView:viewCopy atIndexPath:pathCopy supplementaryViewKind:kindCopy];
    }
  }

  return v21;
}

- (BOOL)_isSectionShowingTokenSuggestions:(int64_t)suggestions
{
  if (suggestions < 0)
  {
    return 0;
  }

  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v6 = [searchControllersWithResults count];

  if (v6 <= suggestions)
  {
    return 0;
  }

  searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
  v8 = [searchControllersWithResults2 objectAtIndex:suggestions];

  queryController = [v8 queryController];
  if ([queryController isTokenizationQueryController])
  {
    results = [v8 results];
    v11 = [results count] != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (IMSpotlightClientStateMonitor)clientStateMonitor
{
  if (!self->_clientStateMonitor && ![(CKSearchViewController *)self searchIsEnding])
  {
    objc_initWeak(&location, self);
    v3 = objc_alloc(MEMORY[0x1E69A5DF0]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CKSearchViewController_clientStateMonitor__block_invoke;
    v8[3] = &unk_1E72F7DD8;
    objc_copyWeak(&v9, &location);
    v4 = [v3 initWithChangeHandler:v8];
    clientStateMonitor = self->_clientStateMonitor;
    self->_clientStateMonitor = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v6 = self->_clientStateMonitor;

  return v6;
}

void __44__CKSearchViewController_clientStateMonitor__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKSearchViewController_clientStateMonitor__block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __44__CKSearchViewController_clientStateMonitor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDataAndLayout];
}

- (id)_spotlightClientState
{
  clientStateMonitor = [(CKSearchViewController *)self clientStateMonitor];
  clientState = [clientStateMonitor clientState];

  return clientState;
}

- (BOOL)_hasResults
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  visibleSearchControllers = [(CKSearchViewController *)self visibleSearchControllers];
  v3 = [visibleSearchControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(visibleSearchControllers);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasMoreResults])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [visibleSearchControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_configureIndexingCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setTitleLabelHidden:1];
  if ([(CKSearchViewController *)self _needsIndexing])
  {
    mode = [(CKSearchViewController *)self mode];
    v5 = CKFrameworkBundle();
    v6 = v5;
    if (mode == 1)
    {
      v7 = @"SEARCH_SUGGESTIONS_INDEXING_TITLE";
    }

    else
    {
      v7 = @"SEARCH_RESULTS_INDEXING_TITLE";
    }

    v8 = [v5 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    v8 = 0;
  }

  if (+[CKSearchViewController wantsInternalDebugInformation])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isSpotlightInternalIndexingUIEnabled = [mEMORY[0x1E69A8070] isSpotlightInternalIndexingUIEnabled];

    if (isSpotlightInternalIndexingUIEnabled)
    {
      taskMonitor = [(CKSearchViewController *)self taskMonitor];
      _spotlightClientState = [(CKSearchViewController *)self _spotlightClientState];
      [cellCopy updateInternalViewWithTaskMonitor:taskMonitor clientState:_spotlightClientState];
    }
  }

  [cellCopy setTitleString:v8];
  _subtitleStringForIndexingUI = [(CKSearchViewController *)self _subtitleStringForIndexingUI];
  [cellCopy setSubtitleString:_subtitleStringForIndexingUI];
}

- (id)_subtitleStringForIndexingUI
{
  if (![(CKSearchViewController *)self _needsIndexing])
  {
    v7 = 0;
    goto LABEL_10;
  }

  if ([(CKSearchViewController *)self mode]== 1)
  {
    v3 = CKFrameworkBundle();
    firstObject = v3;
    v5 = @"SEARCH_SUGGESTIONS_INDEXING_SUBTITLE";
  }

  else
  {
    if ([(CKSearchViewController *)self mode]== 2 || [(CKSearchViewController *)self mode]== 4)
    {
      visibleSearchControllers = [(CKSearchViewController *)self visibleSearchControllers];
      firstObject = [visibleSearchControllers firstObject];

      indexingString = [objc_opt_class() indexingString];
      goto LABEL_9;
    }

    v3 = CKFrameworkBundle();
    firstObject = v3;
    v5 = @"SEARCH_RESULTS_INDEXING_SUBTITLE";
  }

  indexingString = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_9:
  v7 = indexingString;

LABEL_10:
  if (+[CKSearchViewController wantsInternalDebugInformation])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isSpotlightReindexRefactorEnabled = [mEMORY[0x1E69A8070] isSpotlightReindexRefactorEnabled];

    if (isSpotlightReindexRefactorEnabled)
    {
      array = [MEMORY[0x1E695DF70] array];
      _spotlightClientState = [(CKSearchViewController *)self _spotlightClientState];
      throttleMonitor = [(CKSearchViewController *)self throttleMonitor];
      isThrottled = [throttleMonitor isThrottled];

      if (isThrottled)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = CKFrameworkBundle();
        v17 = [v16 localizedStringForKey:@"SEARCH_RESULTS_THROTTLED" value:&stru_1F04268F8 table:@"ChatKit"];
        dateOfThrottlingCompletion = [MEMORY[0x1E69A5DE8] dateOfThrottlingCompletion];
        v19 = [v15 stringWithFormat:v17, dateOfThrottlingCompletion];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
        {
          v22 = @"\u200F";
        }

        else
        {
          v22 = @"\u200E";
        }

        v23 = [(__CFString *)v22 stringByAppendingString:v19];

        [array addObject:v23];
      }

      if (_spotlightClientState)
      {
        v24 = _spotlightClientState;
        _needsIndexing = [(CKSearchViewController *)self _needsIndexing];
        v26 = MEMORY[0x1E696AEC0];
        v27 = CKFrameworkBundle();
        v28 = v27;
        if (_needsIndexing)
        {
          v29 = [v27 localizedStringForKey:@"SEARCH_RESULTS_REMAINING_CHATS" value:&stru_1F04268F8 table:@"ChatKit"];
          taskMonitor = [(CKSearchViewController *)self taskMonitor];
          v31 = [v26 localizedStringWithFormat:v29, objc_msgSend(taskMonitor, "remainingChats")];

          mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection2 == 1)
          {
            v34 = @"\u200F";
          }

          else
          {
            v34 = @"\u200E";
          }

          v35 = [(__CFString *)v34 stringByAppendingString:v31];

          [array addObject:v35];
          v36 = MEMORY[0x1E696AEC0];
          v37 = CKFrameworkBundle();
          v38 = [v37 localizedStringForKey:@"SEARCH_RESULTS_REMAINING_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
          taskMonitor2 = [(CKSearchViewController *)self taskMonitor];
          v40 = [v36 localizedStringWithFormat:v38, objc_msgSend(taskMonitor2, "remainingMessages")];

          mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection3 == 1)
          {
            v43 = @"\u200F";
          }

          else
          {
            v43 = @"\u200E";
          }

          v44 = [(__CFString *)v43 stringByAppendingString:v40];

          [array addObject:v44];
          _spotlightClientState = v24;
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v24, "indexRevision")];
          v46 = MEMORY[0x1E696AEC0];
          v47 = CKFrameworkBundle();
          v48 = v47;
        }

        else
        {
          v81 = [v27 localizedStringForKey:@"SEARCH_RESULTS_UP_TO_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
          v82 = [v26 stringWithFormat:v81];

          mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection4 = [mEMORY[0x1E69DC668]4 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection4 == 1)
          {
            v85 = @"\u200F";
          }

          else
          {
            v85 = @"\u200E";
          }

          v86 = [(__CFString *)v85 stringByAppendingString:v82];

          [array addObject:v86];
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(_spotlightClientState, "indexRevision")];
          v46 = MEMORY[0x1E696AEC0];
          v47 = CKFrameworkBundle();
          v48 = v47;
        }

        v87 = [v47 localizedStringForKey:@"SEARCH_RESULTS_VERSION" value:&stru_1F04268F8 table:@"ChatKit"];
        v88 = [v46 stringWithFormat:v87, v45];

        mEMORY[0x1E69DC668]5 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection5 = [mEMORY[0x1E69DC668]5 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection5 == 1)
        {
          v91 = @"\u200F";
        }

        else
        {
          v91 = @"\u200E";
        }

        v92 = [(__CFString *)v91 stringByAppendingString:v88];

        [array addObject:v92];
      }

      else
      {
        v50 = MEMORY[0x1E696AEC0];
        v51 = CKFrameworkBundle();
        v52 = [v51 localizedStringForKey:@"SEARCH_RESULTS_STATE_LOADING" value:&stru_1F04268F8 table:@"ChatKit"];
        v53 = [v50 stringWithFormat:v52];

        mEMORY[0x1E69DC668]6 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection6 = [mEMORY[0x1E69DC668]6 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection6 == 1)
        {
          v56 = @"\u200F";
        }

        else
        {
          v56 = @"\u200E";
        }

        v45 = [(__CFString *)v56 stringByAppendingString:v53];

        [array addObject:v45];
      }

      v93 = MEMORY[0x1E696AEC0];
      v94 = CKFrameworkBundle();
      v95 = [v94 localizedStringForKey:@"SEARCH_RESULTS_INTERNAL_STRING" value:&stru_1F04268F8 table:@"ChatKit"];
      v96 = [array componentsJoinedByString:@" "];
      _spotlightClientState2 = [v93 stringWithFormat:v95, v96];

      mEMORY[0x1E69DC668]7 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection7 = [mEMORY[0x1E69DC668]7 userInterfaceLayoutDirection];

      v80 = userInterfaceLayoutDirection7 == 1;
    }

    else
    {
      array = MEMORY[0x193AF5640](@"com.apple.IMCoreSpotlight", @"IMCSIndexLastIndexDate");
      v49 = [array description];
      if (v49)
      {
        _spotlightClientState = [array description];
      }

      else
      {
        v57 = CKFrameworkBundle();
        _spotlightClientState = [v57 localizedStringForKey:@"SEARCH_RESULTS_INTERNAL_NO_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      if ([(CKSearchViewController *)self _needsIndexing])
      {
        _spotlightClientState2 = [(CKSearchViewController *)self _spotlightClientState];
        if (_spotlightClientState2)
        {
          v59 = IMGetCachedDomainIntForKeyWithDefaultValue();
          lastIndexedRowID = [_spotlightClientState2 lastIndexedRowID];
          initialReindexRowID = [_spotlightClientState2 initialReindexRowID];
          indexRevision = [_spotlightClientState2 indexRevision];
          v63 = [MEMORY[0x1E69A7FF8] descriptionForReindexReason:v59];
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu / %lu", initialReindexRowID - lastIndexedRowID, initialReindexRowID];
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", indexRevision];
          v66 = MEMORY[0x1E696AEC0];
          CKFrameworkBundle();
          v108 = array;
          v68 = v67 = _spotlightClientState;
          v69 = [v68 localizedStringForKey:@"SEARCH_RESULTS_INDEXING_INTERNAL" value:&stru_1F04268F8 table:@"ChatKit"];
          v70 = [v66 stringWithFormat:v69, v63, v64, v65, v67];

          mEMORY[0x1E69DC668]8 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection8 = [mEMORY[0x1E69DC668]8 userInterfaceLayoutDirection];

          v80 = userInterfaceLayoutDirection8 == 1;
          _spotlightClientState = v67;
          array = v108;
          if (v80)
          {
            v73 = @"\u200F";
          }

          else
          {
            v73 = @"\u200E";
          }

          v74 = [(__CFString *)v73 stringByAppendingString:v70];
        }

        else
        {
          v100 = MEMORY[0x1E696AEC0];
          v101 = CKFrameworkBundle();
          v102 = [v101 localizedStringForKey:@"LOADING_SEARCH_RESULTS_INDEXING_STATE_INTERNAL" value:&stru_1F04268F8 table:@"ChatKit"];
          v63 = [v100 stringWithFormat:v102];

          mEMORY[0x1E69DC668]9 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection9 = [mEMORY[0x1E69DC668]9 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection9 == 1)
          {
            v105 = @"\u200F";
          }

          else
          {
            v105 = @"\u200E";
          }

          v74 = [(__CFString *)v105 stringByAppendingString:v63];
        }

        goto LABEL_59;
      }

      v75 = MEMORY[0x1E696AEC0];
      v76 = CKFrameworkBundle();
      v77 = [v76 localizedStringForKey:@"SEARCH_RESULTS_INTERNAL" value:&stru_1F04268F8 table:@"ChatKit"];
      _spotlightClientState2 = [v75 stringWithFormat:v77, _spotlightClientState];

      mEMORY[0x1E69DC668]10 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection10 = [mEMORY[0x1E69DC668]10 userInterfaceLayoutDirection];

      v80 = userInterfaceLayoutDirection10 == 1;
    }

    if (v80)
    {
      v99 = @"\u200F";
    }

    else
    {
      v99 = @"\u200E";
    }

    v74 = [(__CFString *)v99 stringByAppendingString:_spotlightClientState2];
LABEL_59:

    if (v7)
    {
      v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n%@", v7, v74];

      v7 = v106;
    }

    else
    {
      v7 = v74;
    }
  }

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v45 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [searchControllersWithResults count];

  if (section < v10)
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [searchControllersWithResults2 objectAtIndex:section];

    v13 = [pathCopy row];
    results = [v12 results];
    v15 = [results count];

    if (v13 < v15)
    {
      selfCopy = self;
      results2 = [v12 results];
      v37 = pathCopy;
      v35 = [results2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      [MEMORY[0x1E695DF70] array];
      v39 = v38 = viewCopy;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      indexPathsForVisibleItems = [viewCopy indexPathsForVisibleItems];
      v18 = [indexPathsForVisibleItems countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(indexPathsForVisibleItems);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            if ([v22 section] == section)
            {
              v23 = [v22 row];
              results3 = [v12 results];
              v25 = [results3 count];

              if (v23 < v25)
              {
                results4 = [v12 results];
                v27 = [results4 objectAtIndex:{objc_msgSend(v22, "row")}];

                [v39 addObject:v27];
              }
            }
          }

          v19 = [indexPathsForVisibleItems countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
      }

      [v12 didSelectResult:v35 visibleResults:v39];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = selfCopy;
        [(CKSearchViewController *)selfCopy _insertTokenToSearchTextField:v35];
        pathCopy = v37;
        viewCopy = v38;
        [v38 deselectItemAtIndexPath:v37 animated:0];
      }

      else
      {
        conversation = [v35 conversation];
        chat = [conversation chat];
        guid = [chat guid];

        v28 = selfCopy;
        delegate = [(CKSearchViewController *)selfCopy delegate];
        messageGUID = [v35 messageGUID];
        [delegate searchController:selfCopy didSelectItem:messageGUID inChat:guid];

        pathCopy = v37;
        viewCopy = v38;
      }

      searchAnalytics = [(CKSearchViewController *)v28 searchAnalytics];
      [searchAnalytics logSearchResultInteraction:objc_msgSend(v12 index:"contentType") mode:objc_msgSend(pathCopy interactionType:{"row"), -[CKSearchViewController mode](v28, "mode"), 0}];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(CKSearchViewController *)self delegate];
  [delegate searchControllerDidBeginDragging:self];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 searchSectionHeadersPinToBounds])
  {
    isViewLoaded = [(CKSearchViewController *)self isViewLoaded];

    if (isViewLoaded)
    {

      [(CKSearchViewController *)self _updateSectionHeaders];
    }
  }

  else
  {
  }
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  supplementaryViewType = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  if ([kindCopy isEqualToString:supplementaryViewType])
  {
  }

  else
  {
    v10 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
    v11 = [kindCopy isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  [supplementaryViewCopy setNeedsLayout];
  [supplementaryViewCopy layoutIfNeeded];
LABEL_5:
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [searchControllersWithResults count];

  if (section < v10)
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [searchControllersWithResults2 objectAtIndex:section];

    searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
    contentType = [v12 contentType];
    v15 = [pathCopy row];
    mode = [(CKSearchViewController *)self mode];
    [viewCopy _verticalVelocity];
    [searchAnalytics logSearchResultDisplayEvent:contentType index:v15 mode:mode displayEventType:0 scrollVelocity:?];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [searchControllersWithResults count];

  if (section < v10)
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [searchControllersWithResults2 objectAtIndex:section];

    searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
    contentType = [v12 contentType];
    v15 = [pathCopy row];
    mode = [(CKSearchViewController *)self mode];
    [viewCopy _verticalVelocity];
    [searchAnalytics logSearchResultDisplayEvent:contentType index:v15 mode:mode displayEventType:1 scrollVelocity:?];
  }
}

- (void)_updateSectionHeaders
{
  v18[2] = *MEMORY[0x1E69E9840];
  supplementaryViewType = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  v18[0] = supplementaryViewType;
  v4 = +[CKPhotosSearchResultsTitleHeaderCell supplementaryViewType];
  v18[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(CKSearchCollectionView *)self->_collectionView indexPathsForVisibleSupplementaryElementsOfKind:v11, v13];
        [(CKSearchViewController *)self __updateSectionHeadersAtIndexPaths:v12 elementKind:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)__updateSectionHeadersAtIndexPaths:(id)paths elementKind:(id)kind
{
  v46 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  kindCopy = kind;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [pathsCopy countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v8 = *v42;
    v9 = &OBJC_IVAR___CKMessageSearchResultCell_marginInsets;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = v9[253];
        collectionViewLayout = [*(&self->super.super.super.super.super.isa + v12) collectionViewLayout];
        v14 = [collectionViewLayout layoutAttributesForItemAtIndexPath:v11];

        if (v14)
        {
          [v14 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [*(&self->super.super.super.super.super.isa + v12) supplementaryViewForElementKind:kindCopy atIndexPath:v11];
          if (v23)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(CKSearchViewController *)a2 __updateSectionHeadersAtIndexPaths:v23 elementKind:?];
            }

            v24 = *(&self->super.super.super.super.super.isa + v12);
            [v23 frame];
            MaxY = CGRectGetMaxY(v47);
            [v24 contentScaleFactor];
            v27 = round(MaxY * v26) / v26;
            v28 = *(&self->super.super.super.super.super.isa + v12);
            v48.origin.x = v16;
            v48.origin.y = v18;
            v48.size.width = v20;
            v48.size.height = v22;
            MinY = CGRectGetMinY(v48);
            [v28 contentScaleFactor];
            [v23 setPinnedEffectVisible:round(MinY * v30) / v30 < v27];
            if (CKIsRunningInMacCatalyst())
            {
              v31 = +[CKUIBehavior sharedBehaviors];
              theme = [v31 theme];
              [theme spotlightSearchSegmentedControlBackgroundColor];
              v33 = v9;
              v34 = v8;
              v35 = kindCopy;
              v37 = v36 = pathsCopy;
              [v23 setBackgroundColor:v37];

              pathsCopy = v36;
              kindCopy = v35;
              v8 = v34;
              v9 = v33;
              self = selfCopy;
            }

            else
            {
              [v23 setBackgroundColor:0];
            }
          }
        }

        ++v10;
      }

      while (v40 != v10);
      v40 = [pathsCopy countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }
}

- (void)searchResultsTitleCellShowAllButtonTapped:(id)tapped
{
  v22[1] = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKSearchViewController *)self _searchResultHeaderButtonTapped:tappedCopy];
  }

  else
  {
    sectionIndex = [tappedCopy sectionIndex];
    searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
    v7 = [searchControllersWithResults count];

    if (sectionIndex < v7)
    {
      searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
      v9 = [searchControllersWithResults2 objectAtIndex:sectionIndex];

      v22[0] = objc_opt_class();
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v20 = 138412290;
          v21 = v13;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "'Show All' button tapped for controller {%@}.", &v20, 0xCu);
        }
      }

      v14 = [[CKSearchViewController alloc] initWithSearchControllerClasses:v10];
      [(CKSearchViewController *)v14 setMode:2];
      delegate = [(CKSearchViewController *)self delegate];
      [(CKSearchViewController *)v14 setDelegate:delegate];

      searchText = [(CKSearchViewController *)self searchText];
      [(CKSearchViewController *)v14 setSearchText:searchText];

      delegate2 = [(CKSearchViewController *)self delegate];
      [delegate2 searchViewController:self requestsPushOfSearchController:v14];

      searchText2 = [(CKSearchViewController *)self searchText];
      [(CKSearchViewController *)v14 searchWithText:searchText2];

      searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
      [searchAnalytics logShowAllInteraction:{objc_msgSend(v9, "contentType")}];
    }
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  isActive = [controllerCopy isActive];
  if (isActive && !self->_dismissingSearchController)
  {
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];

    [(CKSearchViewController *)self searchWithText:text];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      dismissingSearchController = self->_dismissingSearchController;
      if (isActive)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v12 = 136315650;
      v13 = "[CKSearchViewController updateSearchResultsForSearchController:]";
      v14 = 2112;
      v15 = v9;
      if (dismissingSearchController)
      {
        v7 = @"YES";
      }

      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%s Not searching because ([searchController isActive]==[%@] || dismissingSearchController==[%@])", &v12, 0x20u);
    }
  }
}

- (void)_hideInlineSearchSuggestions
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  searchControllers = [(CKSearchViewController *)self searchControllers];
  v4 = [searchControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(searchControllers);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      v8 = objc_opt_class();
      if (v8 == objc_opt_class())
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [searchControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v7;

    if (!v9)
    {
      goto LABEL_12;
    }

    [v9 discardSuggestionResults];
    collectionView = [(CKSearchViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_reloadData object:0];
    [(CKSearchViewController *)self reloadData];
  }

  else
  {
LABEL_9:

LABEL_12:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Unable to find the tokenization search controller within self.searchControllers.", v13, 2u);
      }
    }
  }
}

- (void)_insertTokenToSearchTextField:(id)field
{
  fieldCopy = field;
  delegate = [(CKSearchViewController *)self delegate];
  v5 = [delegate searchBarForSearchViewController:self];

  searchTextField = [v5 searchTextField];
  tokens = [searchTextField tokens];
  v8 = [tokens count];

  associatedStagedFilter = [fieldCopy associatedStagedFilter];

  if (associatedStagedFilter)
  {
    associatedStagedFilter2 = [fieldCopy associatedStagedFilter];
    v11 = [(CKSearchViewController *)self _indexForExistingConversationToken:associatedStagedFilter2];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [searchTextField removeTokenAtIndex:v11];
      v8 = v11;
    }
  }

  searchToken = [fieldCopy searchToken];
  [searchTextField insertToken:searchToken atIndex:v8];

  [searchTextField setText:&stru_1F04268F8];
}

- (BOOL)_hasSearchBarInput
{
  delegate = [(CKSearchViewController *)self delegate];
  v4 = [delegate searchBarForSearchViewController:self];

  searchTextField = [v4 searchTextField];
  text = [searchTextField text];
  if ([text length])
  {
    v7 = 1;
  }

  else
  {
    searchTextField2 = [v4 searchTextField];
    tokens = [searchTextField2 tokens];
    v7 = [tokens count] != 0;
  }

  return v7;
}

- (void)searchWithText:(id)text
{
  textCopy = text;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSemanticSearchEnabled = [mEMORY[0x1E69A8070] isSemanticSearchEnabled];

  if (isSemanticSearchEnabled && searchWithText__onceToken != -1)
  {
    [CKSearchViewController searchWithText:];
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__CKSearchViewController_searchWithText___block_invoke_2;
  v12 = &unk_1E72EB8D0;
  selfCopy = self;
  v14 = textCopy;
  v7 = textCopy;
  v8 = _Block_copy(&v9);
  if ([(CKSearchViewController *)self isInitialLoad:v9])
  {
    [(CKSearchViewController *)self setPerformAfterInitialLoadBlock:v8];
  }

  else
  {
    v8[2](v8);
  }
}

void __41__CKSearchViewController_searchWithText___block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E6964EC8];
  v2[0] = *MEMORY[0x1E696A388];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  [v0 prepareProtectionClasses:v1];
}

void __41__CKSearchViewController_searchWithText___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) mode] == 1 && (objc_msgSend(*(a1 + 32), "_hasSearchBarInput") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Already in ZKW mode, not reloading", &v19, 2u);
      }

LABEL_16:
    }
  }

  else
  {
    if (![*(a1 + 32) mode])
    {
      if ([*(a1 + 40) length])
      {
        v10 = [*(a1 + 32) searchText];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          if (!IMOSLoggingEnabled())
          {
            return;
          }

          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Search text has not changed, not reloading", &v19, 2u);
          }

          goto LABEL_16;
        }
      }
    }

    v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [*(a1 + 32) setTimingCollection:v2];
    [v2 startTimingForKey:@"Search"];
    [v2 startTimingForKey:@"CSSearch"];
    if ([*(a1 + 40) length])
    {
      v3 = [*(a1 + 40) length];
      v4 = IMOSLoggingEnabled();
      if (v3 < 3)
      {
        if (v4)
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "User is typing and has not met the minimum search text length, deferring search for a longer duration", &v19, 2u);
          }
        }

        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = (a1 + 32);
        [v16 setSearchText:v17];
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*v18 selector:sel__searchImmediately object:0];
        [*v18 performSelector:sel__searchImmediately withObject:0 afterDelay:0.8];
      }

      else
      {
        if (v4)
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v6 = CKStringFromSearchControllerMode([*(a1 + 32) mode]);
            v19 = 138412290;
            v20 = v6;
            _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "User is typing, deferring search in mode={%@}", &v19, 0xCu);
          }
        }

        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = (a1 + 32);
        [v7 setSearchText:v8];
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*v9 selector:sel__searchImmediately object:0];
        [*v9 performSelector:sel__searchImmediately withObject:0 afterDelay:0.4];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = CKStringFromSearchControllerMode([*(a1 + 32) mode]);
          v19 = 138412290;
          v20 = v14;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "New or current search text is zero len, searching now! in mode={%@}", &v19, 0xCu);
        }
      }

      [*(a1 + 32) setSearchText:*(a1 + 40)];
      [*(a1 + 32) _searchImmediately];
    }
  }
}

- (void)_searchImmediately
{
  v31 = *MEMORY[0x1E69E9840];
  [(CKSearchViewController *)self setSearchInProgress:1];
  searchCompleteControllerSet = [(CKSearchViewController *)self searchCompleteControllerSet];
  [searchCompleteControllerSet removeAllObjects];

  searchText = [(CKSearchViewController *)self searchText];
  [(CKSearchViewController *)self cancelCurrentQuery];
  mode = [(CKSearchViewController *)self mode];
  if (mode != 2 && ![(CKSearchViewController *)self _currentModeIsDetails])
  {
    mode = [(CKSearchViewController *)self _hasSearchBarInput]^ 1;
  }

  [(CKSearchViewController *)self setMode:mode];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [searchText length];
      v8 = CKStringFromSearchControllerMode([(CKSearchViewController *)self mode]);
      *buf = 134218242;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Search started targeting all searchControllers with textLength={%lu} mode={%@}.", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CKSearchViewController__searchImmediately__block_invoke;
  aBlock[3] = &unk_1E72EB8D0;
  aBlock[4] = self;
  v9 = searchText;
  v25 = v9;
  v19 = _Block_copy(aBlock);
  if ([(CKViewController *)self appeared])
  {
    v19[2]();
  }

  else
  {
    [(CKSearchViewController *)self setPerformAfterInitialAppearanceBlock:v19];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  searchControllers = [(CKSearchViewController *)self searchControllers];
  v11 = [searchControllers countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(searchControllers);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([MEMORY[0x1E69A8020] supportsSpotlight] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v14 searchWithText:v9 mode:{-[CKSearchViewController mode](self, "mode")}];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              *buf = 138412290;
              v28 = v16;
              v17 = v16;
              _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "not processing %@, spotlight is not supported.", buf, 0xCu);
            }
          }

          searchCompleteControllerSet2 = [(CKSearchViewController *)self searchCompleteControllerSet];
          [searchCompleteControllerSet2 addObject:objc_opt_class()];

          [(CKSearchViewController *)self searchControllerContentsDidChange:v14];
        }
      }

      v11 = [searchControllers countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }
}

void __44__CKSearchViewController__searchImmediately__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v8 = [v2 searchBarForSearchViewController:*(a1 + 32)];

  v3 = [*(a1 + 32) searchAnalytics];
  v4 = [*(a1 + 32) mode];
  v5 = *(a1 + 40);
  v6 = [v8 searchTextField];
  v7 = [v6 tokens];
  [v3 logUserInputChanged:v4 input:v5 tokens:v7];
}

- (void)searchControllerContentsDidChange:(id)change
{
  v31 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (![(CKSearchViewController *)self searchInProgress]&& IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v28 = 138412290;
      *&v28[4] = objc_opt_class();
      v6 = *&v28[4];
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%@ checked in but search ended, dropping", v28, 0xCu);
    }
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_reloadData object:{0, *v28}];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__logResultsDidChange object:0];
  searchCompleteControllerSet = [(CKSearchViewController *)self searchCompleteControllerSet];
  [searchCompleteControllerSet addObject:objc_opt_class()];

  searchCompleteControllerSet2 = [(CKSearchViewController *)self searchCompleteControllerSet];
  v9 = [searchCompleteControllerSet2 count];

  searchControllers = [(CKSearchViewController *)self searchControllers];
  v11 = [searchControllers count];

  v12 = IMOSLoggingEnabled();
  if (v9 >= v11)
  {
    if (v12)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        searchCompleteControllerSet3 = [(CKSearchViewController *)self searchCompleteControllerSet];
        v21 = [searchCompleteControllerSet3 count];
        v22 = objc_opt_class();
        searchControllers2 = [(CKSearchViewController *)self searchControllers];
        v24 = [searchControllers2 count];
        *v28 = 134218498;
        *&v28[4] = v21;
        *&v28[12] = 2112;
        *&v28[14] = v22;
        v29 = 2048;
        v30 = v24;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "%lu (%@) of %lu controllers checked in, updating now", v28, 0x20u);
      }
    }

    [(CKSearchViewController *)self _reloadDataAndLayout];
    [(CKSearchViewController *)self _logResultsDidChange];
    timingCollection = [(CKSearchViewController *)self timingCollection];
    [timingCollection stopTimingForKey:@"Search"];

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        timingCollection2 = [(CKSearchViewController *)self timingCollection];
        *v28 = 138412290;
        *&v28[4] = timingCollection2;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Search timing %@", v28, 0xCu);
      }
    }
  }

  else
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        searchCompleteControllerSet4 = [(CKSearchViewController *)self searchCompleteControllerSet];
        v15 = [searchCompleteControllerSet4 count];
        v16 = objc_opt_class();
        searchControllers3 = [(CKSearchViewController *)self searchControllers];
        v18 = [searchControllers3 count];
        *v28 = 134218498;
        *&v28[4] = v15;
        *&v28[12] = 2112;
        *&v28[14] = v16;
        v29 = 2048;
        v30 = v18;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%lu (%@) of %lu controllers checked in, delaying update", v28, 0x20u);
      }
    }

    [(CKSearchViewController *)self performSelector:sel_reloadData withObject:0 afterDelay:0.5];
    [(CKSearchViewController *)self performSelector:sel__logResultsDidChange withObject:0 afterDelay:1.0];
  }
}

- (void)_reloadDataAndLayout
{
  [(CKSearchViewController *)self reloadData];
  collectionViewLayout = [(CKSearchViewController *)self collectionViewLayout];
  globalLayoutConfiguration = [(CKSearchViewController *)self globalLayoutConfiguration];
  v4 = [globalLayoutConfiguration copy];
  [collectionViewLayout setConfiguration:v4];
}

- (void)_logResultsDidChange
{
  v45 = *MEMORY[0x1E69E9840];
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  if (searchAnalytics)
  {
    v4 = searchAnalytics;
    searchInProgress = [(CKSearchViewController *)self searchInProgress];

    if (searchInProgress)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      selfCopy = self;
      obj = [(CKSearchViewController *)self searchControllers];
      v35 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      if (v35)
      {
        v38 = 0;
        v39 = 0;
        v12 = 0;
        v13 = 0;
        v34 = *v41;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            v36 = v10;
            v37 = v9;
            if (*v41 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v40 + 1) + 8 * i);
            results = [v15 results];
            v17 = [results count];

            contentType = [v15 contentType];
            if (contentType == 10)
            {
              v19 = v17;
            }

            else
            {
              v19 = v13;
            }

            if (contentType == 8)
            {
              v20 = v17;
            }

            else
            {
              v20 = v12;
            }

            if (contentType == 8)
            {
              v19 = v13;
            }

            v10 = v36;
            v9 = v37;
            if (contentType == 7)
            {
              v21 = v17;
            }

            else
            {
              v21 = v36;
            }

            if (contentType == 7)
            {
              v20 = v12;
              v19 = v13;
            }

            if (contentType == 6)
            {
              v22 = v17;
            }

            else
            {
              v22 = v11;
            }

            if (contentType == 5)
            {
              v23 = v17;
            }

            else
            {
              v23 = v37;
            }

            if (contentType == 5)
            {
              v22 = v11;
            }

            if (contentType <= 6)
            {
              v21 = v36;
            }

            else
            {
              v23 = v37;
            }

            if (contentType <= 6)
            {
              v20 = v12;
            }

            else
            {
              v22 = v11;
            }

            if (contentType <= 6)
            {
              v19 = v13;
            }

            if (contentType == 4)
            {
              v24 = v17;
            }

            else
            {
              v24 = v8;
            }

            if (contentType == 3)
            {
              v25 = v17;
            }

            else
            {
              v25 = v7;
            }

            if (contentType == 3)
            {
              v24 = v8;
            }

            if (contentType == 2)
            {
              v25 = v7;
              v24 = v8;
            }

            v27 = v38;
            v26 = v39;
            if (contentType == 2)
            {
              v28 = v17;
            }

            else
            {
              v28 = v39;
            }

            if (contentType == 1)
            {
              v29 = v17;
            }

            else
            {
              v29 = v6;
            }

            if (contentType)
            {
              v30 = v38;
            }

            else
            {
              v29 = v6;
              v30 = v17;
            }

            if (contentType <= 1)
            {
              v25 = v7;
            }

            else
            {
              v29 = v6;
            }

            if (contentType > 1)
            {
              v30 = v38;
            }

            else
            {
              v24 = v8;
              v28 = v39;
            }

            if (contentType > 4)
            {
              v9 = v23;
              v10 = v21;
            }

            else
            {
              v6 = v29;
              v7 = v25;
              v8 = v24;
            }

            if (contentType <= 4)
            {
              v26 = v28;
            }

            else
            {
              v11 = v22;
            }

            if (contentType <= 4)
            {
              v27 = v30;
            }

            else
            {
              v12 = v20;
              v13 = v19;
            }

            v38 = v27;
            v39 = v26;
          }

          v35 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v35);
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v12 = 0;
        v13 = 0;
      }

      searchAnalytics2 = [(CKSearchViewController *)selfCopy searchAnalytics];
      [searchAnalytics2 logSearchResultsReceivedInMode:-[CKSearchViewController mode](selfCopy conversations:"mode") tokens:v38 messages:v13 links:v6 photos:v7 location:v8 attachments:v9 wallet:v10 collaboration:v11 highlights:{v39, v12}];
    }
  }
}

- (id)searchController:(id)controller conversationForChatGUID:(id)d
{
  dCopy = d;
  delegate = [(CKSearchViewController *)self delegate];
  v7 = [delegate searchController:self conversationForChatGUID:dCopy];

  return v7;
}

- (id)searchController:(id)controller conversationsForExistingChatsWithGUIDs:(id)ds
{
  dsCopy = ds;
  delegate = [(CKSearchViewController *)self delegate];
  v7 = [delegate searchController:self conversationsForExistingChatsWithGUIDs:dsCopy];

  return v7;
}

- (void)searchController:(id)controller requestsPresentationOfShareController:(id)shareController atRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shareControllerCopy = shareController;
  popoverPresentationController = [shareControllerCopy popoverPresentationController];

  if (popoverPresentationController)
  {
    view = [(CKSearchViewController *)self view];
    popoverPresentationController2 = [shareControllerCopy popoverPresentationController];
    [popoverPresentationController2 setSourceView:view];

    popoverPresentationController3 = [shareControllerCopy popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{x, y, width, height}];
  }

  [(CKSearchViewController *)self presentViewController:shareControllerCopy animated:1 completion:0];
}

- (void)searchController:(id)controller requestsPresentationOfAlertController:(id)alertController atRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  alertControllerCopy = alertController;
  popoverPresentationController = [alertControllerCopy popoverPresentationController];

  if (popoverPresentationController)
  {
    view = [(CKSearchViewController *)self view];
    popoverPresentationController2 = [alertControllerCopy popoverPresentationController];
    [popoverPresentationController2 setSourceView:view];

    popoverPresentationController3 = [alertControllerCopy popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{x, y, width, height}];
  }

  [(CKSearchViewController *)self presentViewController:alertControllerCopy animated:1 completion:0];
}

- (id)contextMenusForConversation:(id)conversation
{
  conversationCopy = conversation;
  delegate = [(CKSearchViewController *)self delegate];
  v6 = [delegate contextMenusForConversation:conversationCopy];

  return v6;
}

- (id)searchTokenFiltersForSearchController:(id)controller
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  delegate = [(CKSearchViewController *)self delegate];
  v6 = [delegate searchBarForSearchViewController:self];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  searchTextField = [v6 searchTextField];
  tokens = [searchTextField tokens];

  v9 = [tokens countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(tokens);
        }

        representedObject = [*(*(&v15 + 1) + 8 * i) representedObject];
        [v4 addObject:representedObject];
      }

      v10 = [tokens countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v4;
}

- (int64_t)_indexForExistingConversationToken:(id)token
{
  tokenCopy = token;
  delegate = [(CKSearchViewController *)self delegate];
  v6 = [delegate searchBarForSearchViewController:self];

  searchTextField = [v6 searchTextField];
  tokens = [searchTextField tokens];

  if ([tokens count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [tokens objectAtIndexedSubscript:v9];
      representedObject = [v10 representedObject];
      conversation = [representedObject conversation];
      conversation2 = [tokenCopy conversation];

      if (conversation == conversation2)
      {
        break;
      }

      if (++v9 >= [tokens count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (BOOL)shouldInsetResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  delegate = [(CKSearchViewController *)self delegate];
  v6 = [delegate shouldInsetResultsForSearchController:controllerCopy];

  return v6;
}

- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)controller
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 searchSectionMarginInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (double)widthForDeterminingAvatarVisibility
{
  collectionView = [(CKSearchViewController *)self collectionView];
  [collectionView bounds];
  v4 = v3;

  return v4;
}

- (double)containerWidthForController:(id)controller
{
  collectionView = [(CKSearchViewController *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v11);
  collectionView2 = [(CKSearchViewController *)self collectionView];
  [collectionView2 safeAreaInsets];
  v9 = Width - (v7 + v8);

  return v9;
}

- (id)searchController:(id)controller cellForResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionView = [(CKSearchViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F0557FF0])
        {
          if (objc_opt_respondsToSelector())
          {
            resultIdentifier = [v10 resultIdentifier];
            identifier = [resultCopy identifier];
            v13 = [resultIdentifier isEqual:identifier];

            if (v13)
            {
              v7 = v10;
              goto LABEL_13;
            }
          }
        }
      }

      v7 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (void)setCanShowTokenSuggestions:(BOOL)suggestions
{
  if (self->_canShowTokenSuggestions != suggestions)
  {
    self->_canShowTokenSuggestions = suggestions;
    if (!suggestions)
    {
      [(CKSearchViewController *)self _hideInlineSearchSuggestions];
    }
  }
}

- (void)cancelCurrentQuery
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "> BEGIN cancelling all search controllers.", buf, 2u);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  searchControllers = [(CKSearchViewController *)self searchControllers];
  v5 = [searchControllers countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(searchControllers);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancelCurrentSearch];
      }

      while (v5 != v7);
      v5 = [searchControllers countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "> END cancelling all search controllers.", buf, 2u);
    }
  }
}

- (void)searchEnded
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Search ended", buf, 2u);
    }
  }

  [(CKSearchViewController *)self setSearchIsEnding:1];
  [(IMPersistentTaskMonitor *)self->_taskMonitor cancel];
  taskMonitor = self->_taskMonitor;
  self->_taskMonitor = 0;

  [(IMIndexThrottleMonitor *)self->_throttleMonitor cancel];
  throttleMonitor = self->_throttleMonitor;
  self->_throttleMonitor = 0;

  [(IMSpotlightClientStateMonitor *)self->_clientStateMonitor cancel];
  clientStateMonitor = self->_clientStateMonitor;
  self->_clientStateMonitor = 0;

  [(CKSearchViewController *)self setSearchInProgress:0];
  [(CKSearchViewController *)self setSearchText:&stru_1F04268F8];
  [(CKSearchViewController *)self _dismissQuickLookPreviewModalIfNeeded];
  [(CKSearchViewController *)self setMode:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  searchControllers = [(CKSearchViewController *)self searchControllers];
  v8 = [searchControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(searchControllers);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 cancelCurrentSearch];
        [v11 searchEnded];
      }

      v8 = [searchControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  contextMenuInteraction = [(CKSearchViewController *)self contextMenuInteraction];

  if (contextMenuInteraction)
  {
    contextMenuInteraction2 = [(CKSearchViewController *)self contextMenuInteraction];
    [contextMenuInteraction2 dismissMenu];
  }

  [(CKSearchViewController *)self setContentUnavailableConfiguration:0];
  [(CKSearchViewController *)self setSearchIsEnding:0];
}

- (void)_dismissQuickLookPreviewModalIfNeeded
{
  presentedViewController = [(CKSearchViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = presentedViewController;
  if (isKindOfClass)
  {
    presentingViewController = [presentedViewController presentingViewController];
    if (presentingViewController == self)
    {
      [(CKSearchViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    v4 = presentedViewController;
  }
}

- (void)findNext
{
  collectionView = [(CKSearchViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:1];

  v11 = 0;
  v5 = [(CKSearchViewController *)self _hasSelectedItemAtIndexPath:&v11];
  v6 = v11;
  v7 = v6;
  v8 = 0;
  v9 = MEMORY[0x1E696AC88];
  if (v5)
  {
    v8 = -[CKSearchViewController rowIndexFindNextForIndex:numberOfTotalItems:](self, "rowIndexFindNextForIndex:numberOfTotalItems:", [v6 row], v4);
  }

  v10 = [v9 indexPathForRow:v8 inSection:1];
  [(CKSearchViewController *)self _selectItemForFindAtIndexPath:v10];
}

- (void)findPrevious
{
  collectionView = [(CKSearchViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:1];

  v11 = 0;
  v5 = [(CKSearchViewController *)self _hasSelectedItemAtIndexPath:&v11];
  v6 = v11;
  v7 = v6;
  v8 = MEMORY[0x1E696AC88];
  if (v5)
  {
    v9 = -[CKSearchViewController rowIndexFindPreviousForIndex:numberOfTotalItems:](self, "rowIndexFindPreviousForIndex:numberOfTotalItems:", [v6 row], v4);
  }

  else
  {
    v9 = v4 - 1;
  }

  v10 = [v8 indexPathForRow:v9 inSection:1];
  [(CKSearchViewController *)self _selectItemForFindAtIndexPath:v10];
}

- (BOOL)conversationSearchHasResult
{
  LODWORD(collectionView) = [(CKSearchViewController *)self isViewLoaded];
  if (collectionView)
  {
    collectionView = [(CKSearchViewController *)self collectionView];
    if (collectionView)
    {
      v4 = collectionView;
      collectionView2 = [(CKSearchViewController *)self collectionView];
      numberOfSections = [collectionView2 numberOfSections];

      if (numberOfSections < 2)
      {
        LOBYTE(collectionView) = 0;
      }

      else
      {
        collectionView3 = [(CKSearchViewController *)self collectionView];
        v8 = [collectionView3 numberOfItemsInSection:1];

        LOBYTE(collectionView) = v8 > 0;
      }
    }
  }

  return collectionView;
}

- (BOOL)_hasSelectedItemAtIndexPath:(id *)path
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  collectionView = [(CKSearchViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 section] == 1)
        {
          v12 = v10;
          *path = v10;
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)_selectItemForFindAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CKSearchViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:pathCopy animated:1 scrollPosition:0];

  collectionView2 = [(CKSearchViewController *)self collectionView];
  [(CKSearchViewController *)self collectionView:collectionView2 didSelectItemAtIndexPath:pathCopy];
}

- (void)reloadData
{
  v41 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Asked to reload search collection view contents.", buf, 2u);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  visibleSearchControllers = [(CKSearchViewController *)self visibleSearchControllers];
  v6 = [visibleSearchControllers countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(visibleSearchControllers);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [(CKSearchViewController *)self mode]== 4 || [(CKSearchViewController *)self mode]== 2;
        results = [v9 results];
        v12 = [results count] != 0;

        if (v12 || v10)
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleSearchControllers countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v13 = [array copy];
  searchControllersWithResults = self->_searchControllersWithResults;
  self->_searchControllersWithResults = v13;

  _newSnapshotForCurrentControllerState = [(CKSearchViewController *)self _newSnapshotForCurrentControllerState];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Updating search collection view by applying snapshot!", buf, 2u);
    }
  }

  dataSource = [(CKSearchViewController *)self dataSource];
  [dataSource applySnapshotUsingReloadData:_newSnapshotForCurrentControllerState];

  collectionView = [(CKSearchViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __36__CKSearchViewController_reloadData__block_invoke;
  v34[3] = &unk_1E72F7E00;
  v34[4] = self;
  [visibleCells enumerateObjectsUsingBlock:v34];

  v20 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  collectionView2 = [(CKSearchViewController *)self collectionView];
  v22 = [collectionView2 indexPathsForVisibleSupplementaryElementsOfKind:v20];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __36__CKSearchViewController_reloadData__block_invoke_2;
  v32[3] = &unk_1E72F2FD8;
  v32[4] = self;
  v23 = v20;
  v33 = v23;
  [v22 enumerateObjectsUsingBlock:v32];

  supplementaryViewType = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  collectionView3 = [(CKSearchViewController *)self collectionView];
  v26 = [collectionView3 indexPathsForVisibleSupplementaryElementsOfKind:supplementaryViewType];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __36__CKSearchViewController_reloadData__block_invoke_3;
  v30[3] = &unk_1E72F2FD8;
  v30[4] = self;
  v27 = supplementaryViewType;
  v31 = v27;
  [v26 enumerateObjectsUsingBlock:v30];

  if ([(CKSearchViewController *)self _currentModeIsDetails]|| [(CKSearchViewController *)self mode]== 1 || [(CKSearchViewController *)self _hasResults])
  {
    [(CKSearchViewController *)self setContentUnavailableConfiguration:0];
  }

  else
  {
    searchConfiguration = [MEMORY[0x1E69DC8C8] searchConfiguration];
    _subtitleStringForIndexingUI = [(CKSearchViewController *)self _subtitleStringForIndexingUI];
    if ([_subtitleStringForIndexingUI length])
    {
      [searchConfiguration setSecondaryText:_subtitleStringForIndexingUI];
    }

    [(CKSearchViewController *)self setContentUnavailableConfiguration:searchConfiguration];
  }
}

void __36__CKSearchViewController_reloadData__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) searchText];
    [v4 refreshForSearchTextIfNeeded:v3];
  }
}

void __36__CKSearchViewController_reloadData__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 section];
  v4 = [*(a1 + 32) searchControllersWithResults];
  v5 = [v4 count];

  if (v3 < v5)
  {
    v6 = [*(a1 + 32) searchControllersWithResults];
    v7 = [v6 objectAtIndex:{objc_msgSend(v10, "section")}];

    v8 = [*(a1 + 32) collectionView];
    v9 = [v8 supplementaryViewForElementKind:*(a1 + 40) atIndexPath:v10];

    [v7 updateSupplementryViewIfNeeded:v9 atIndexPath:v10];
  }
}

void __36__CKSearchViewController_reloadData__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 section];
  v4 = [*(a1 + 32) searchControllersWithResults];
  v5 = [v4 count];

  if (v3 < v5)
  {
    v6 = [*(a1 + 32) searchControllersWithResults];
    v7 = [v6 objectAtIndex:{objc_msgSend(v11, "section")}];

    v8 = [*(a1 + 32) collectionView];
    v9 = [v8 supplementaryViewForElementKind:*(a1 + 40) atIndexPath:v11];

    v10 = [v9 showAllButton];
    [v10 setHidden:{objc_msgSend(*(a1 + 32), "_shouldHideShowAllButtonForController:", v7)}];

    [v9 setSectionIndex:{objc_msgSend(v11, "section")}];
  }
}

- (id)_newSnapshotForCurrentControllerState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "> BEGIN diffable snapshot generation.", buf, 2u);
    }
  }

  v4 = objc_opt_new();
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v6 = [searchControllersWithResults arrayByApplyingSelector:sel_class];
  v7 = [v6 arrayByApplyingSelector:sel_sectionIdentifier];
  [v4 appendSectionsWithIdentifiers:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CKSearchViewController__newSnapshotForCurrentControllerState__block_invoke;
  v14[3] = &unk_1E72EC738;
  v8 = searchControllersWithResults;
  v15 = v8;
  selfCopy = self;
  v9 = v4;
  v17 = v9;
  [v7 enumerateObjectsUsingBlock:v14];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "> END diffable snapshot generation.", buf, 2u);
    }
  }

  v11 = v17;
  v12 = v9;

  return v12;
}

void __63__CKSearchViewController__newSnapshotForCurrentControllerState__block_invoke(id *a1, void *a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([a1[4] count] >= a3)
  {
    v7 = [a1[4] objectAtIndex:a3];
    v8 = [v7 results];
    if ([v8 count])
    {
      v9 = [a1[5] _identifiersToAppendForResults:v8];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = 138412802;
          v12 = v5;
          v13 = 2048;
          v14 = [v9 count];
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Section={%@} count={%ld} appending %@", &v11, 0x20u);
        }
      }

      [a1[6] appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:v5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Allocated search controllers and section counts do not match!!", &v11, 2u);
    }
  }
}

- (id)_identifiersToAppendForResults:(id)results
{
  v19 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if ([resultsCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = resultsCopy;
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

          identifier = [*(*(&v14 + 1) + 8 * i) identifier];
          [v4 addObject:identifier];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    array = [v4 array];
    v12 = [array copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)layoutSectionForController:(id)controller withEnvironment:(id)environment
{
  controllerCopy = controller;
  environmentCopy = environment;
  v8 = [controllerCopy customLayoutSectionForEnvironment:environmentCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    [v10 contentInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v19 = [controllerCopy layoutGroupWithEnvironment:environmentCopy];
    v10 = [MEMORY[0x1E6995580] sectionWithGroup:v19];
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 searchResultsInsets];
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  [v10 setSupplementariesFollowContentInsets:0];
  if ([controllerCopy applyLayoutMarginsToLayoutGroup])
  {
    collectionView = [(CKSearchViewController *)self collectionView];
    [collectionView marginInsets];
    v14 = v14 + v26;

    collectionView2 = [(CKSearchViewController *)self collectionView];
    [collectionView2 marginInsets];
    v18 = v18 + v28;
  }

  [controllerCopy additionalGroupInsets];
  [v10 setContentInsets:{v12 + v29, v14 + v30, v16 + v32, v18 + v31}];
  [controllerCopy interGroupSpacing];
  [v10 setInterGroupSpacing:?];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [(CKSearchViewController *)self headerBoundryItemsForController:controllerCopy withEnvironment:environmentCopy];
  if (v34)
  {
    [v33 addObjectsFromArray:v34];
  }

  v35 = [(CKSearchViewController *)self footerBoundryItemsForController:controllerCopy withEnvironment:environmentCopy];
  if (v35)
  {
    [v33 addObjectsFromArray:v35];
  }

  [v10 setBoundarySupplementaryItems:v33];
  [v10 setOrthogonalScrollingBehavior:{objc_msgSend(objc_opt_class(), "orthogonalScrollingBehavior")}];
  v36 = v10;

  return v10;
}

- (id)headerBoundryItemsForController:(id)controller withEnvironment:(id)environment
{
  controllerCopy = controller;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([controllerCopy wantsHeaderSection])
  {
    v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v8 = MEMORY[0x1E6995558];
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 searchHeaderHeight];
    v10 = [v8 estimatedDimension:?];

    v11 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v10];
    if ([controllerCopy headerOverrideClass])
    {
      headerOverrideClass = [controllerCopy headerOverrideClass];
    }

    else
    {
      headerOverrideClass = [(CKSearchViewController *)self _searchResultsHeaderClass];
    }

    v13 = MEMORY[0x1E6995548];
    supplementaryViewType = [(objc_class *)headerOverrideClass supplementaryViewType];
    v15 = [v13 boundarySupplementaryItemWithLayoutSize:v11 elementKind:supplementaryViewType alignment:1];

    v16 = +[CKUIBehavior sharedBehaviors];
    [v15 setPinToVisibleBounds:{objc_msgSend(v16, "searchSectionHeadersPinToBounds")}];

    [v15 setZIndex:101];
    [v6 addObject:v15];
  }

  return v6;
}

- (id)footerBoundryItemsForController:(id)controller withEnvironment:(id)environment
{
  controllerCopy = controller;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([controllerCopy wantsFooterSection] && objc_msgSend(controllerCopy, "footerClass"))
  {
    v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v7 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
    v8 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v7];
    footerClass = [controllerCopy footerClass];
    v10 = MEMORY[0x1E6995548];
    supplementaryViewType = [footerClass supplementaryViewType];
    v12 = [v10 boundarySupplementaryItemWithLayoutSize:v8 elementKind:supplementaryViewType alignment:5];

    [v5 addObject:v12];
  }

  return v5;
}

- (id)globalLayoutConfiguration
{
  v16[1] = *MEMORY[0x1E69E9840];
  defaultConfiguration = [MEMORY[0x1E69DC810] defaultConfiguration];
  if ([(CKSearchViewController *)self searchInProgress]&& ([(CKSearchViewController *)self _needsIndexing]|| +[CKSearchViewController wantsInternalDebugInformation]))
  {
    searchCompleteControllerSet = [(CKSearchViewController *)self searchCompleteControllerSet];
    v5 = [searchCompleteControllerSet count];

    searchControllers = [(CKSearchViewController *)self searchControllers];
    v7 = [searchControllers count];

    if (v5 >= v7)
    {
      if ([(CKSearchViewController *)self _hasResults])
      {
        v8 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
        v9 = [MEMORY[0x1E6995558] estimatedDimension:120.0];
        v10 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v8 heightDimension:v9];
        v11 = MEMORY[0x1E6995548];
        v12 = +[CKSearchIndexingFooterCell supplementaryViewType];
        v13 = [v11 boundarySupplementaryItemWithLayoutSize:v10 elementKind:v12 alignment:5];

        v16[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
        [defaultConfiguration setBoundarySupplementaryItems:v14];
      }
    }
  }

  return defaultConfiguration;
}

+ (BOOL)wantsInternalDebugInformation
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (!isInternalInstall)
  {
    return 0;
  }

  return IMGetDomainBoolForKey();
}

- (IMPersistentTaskMonitor)taskMonitor
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [mEMORY[0x1E69A8070] isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled && !self->_taskMonitor && ![(CKSearchViewController *)self searchIsEnding])
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x1E69A5C28]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__CKSearchViewController_taskMonitor__block_invoke;
    v10[3] = &unk_1E72F7E28;
    objc_copyWeak(&v11, &location);
    v6 = [v5 initWithChangeHandler:v10];
    taskMonitor = self->_taskMonitor;
    self->_taskMonitor = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = self->_taskMonitor;

  return v8;
}

void __37__CKSearchViewController_taskMonitor__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CKSearchViewController_taskMonitor__block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __37__CKSearchViewController_taskMonitor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDataAndLayout];
}

- (IMIndexThrottleMonitor)throttleMonitor
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [mEMORY[0x1E69A8070] isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled && !self->_throttleMonitor && ![(CKSearchViewController *)self searchIsEnding])
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x1E69A5DE8]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__CKSearchViewController_throttleMonitor__block_invoke;
    v10[3] = &unk_1E72EE728;
    objc_copyWeak(&v11, &location);
    v6 = [v5 initWithChangeHandler:v10];
    throttleMonitor = self->_throttleMonitor;
    self->_throttleMonitor = v6;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v8 = self->_throttleMonitor;

  return v8;
}

void __41__CKSearchViewController_throttleMonitor__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKSearchViewController_throttleMonitor__block_invoke_2;
  block[3] = &unk_1E72EC460;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __41__CKSearchViewController_throttleMonitor__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadDataAndLayout];
}

- (BOOL)_needsIndexing
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSpotlightReindexRefactorEnabled = [mEMORY[0x1E69A8070] isSpotlightReindexRefactorEnabled];

  if (isSpotlightReindexRefactorEnabled)
  {
    taskMonitor = [(CKSearchViewController *)self taskMonitor];
    v6 = [taskMonitor remainingMessages] > 0;

    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E69A7FF8];

    return [v8 needsIndexing];
  }
}

- (BOOL)_shouldHideShowAllButtonForController:(id)controller
{
  controllerCopy = controller;
  if (CKIsRunningInMacCatalyst())
  {
    mode = [controllerCopy mode];
    if (mode == 4 || mode == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = mode;
    }

    queriedResultsCount = [controllerCopy queriedResultsCount];
    queryController = [controllerCopy queryController];
    LOBYTE(v6) = queriedResultsCount <= [queryController maxResultsForMode:v6];
  }

  else
  {
    LODWORD(v6) = [controllerCopy hasMoreResults] ^ 1;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  collectionView = [(CKSearchViewController *)self collectionView];
  [interactionCopy locationInView:collectionView];
  v8 = v7;
  v10 = v9;

  collectionView2 = [(CKSearchViewController *)self collectionView];
  v12 = [collectionView2 indexPathForItemAtPoint:{v8, v10}];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_11;
  }

  collectionView3 = [(CKSearchViewController *)self collectionView];
  v14 = [collectionView3 cellForItemAtIndexPath:v12];

  if (!v14)
  {
    goto LABEL_9;
  }

  window = [v14 window];

  if (!window)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKSearchViewController contextMenuInteraction:v17 previewForHighlightingMenuWithConfiguration:?];
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v16 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v14];
LABEL_10:

LABEL_11:

  return v16;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  if (![(CKSearchViewController *)self contextMenuInteractionShouldBegin:interactionCopy])
  {
    goto LABEL_9;
  }

  collectionView = [(CKSearchViewController *)self collectionView];
  v9 = [collectionView indexPathForItemAtPoint:{x, y}];

  section = [v9 section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v12 = [searchControllersWithResults count];

  if (section >= v12)
  {
LABEL_8:

LABEL_9:
    v48 = 0;
    goto LABEL_10;
  }

  searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
  v14 = [searchControllersWithResults2 objectAtIndex:{objc_msgSend(v9, "section")}];

  v15 = [v9 row];
  results = [v14 results];
  v17 = [results count];

  if (v15 >= v17)
  {

    goto LABEL_8;
  }

  results2 = [v14 results];
  v19 = [results2 objectAtIndex:{objc_msgSend(v9, "row")}];

  view = [(CKSearchViewController *)self view];
  [view bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  collectionView2 = [(CKSearchViewController *)self collectionView];
  v30 = [collectionView2 cellForItemAtIndexPath:v9];

  if (v30)
  {
    [v30 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    view2 = [(CKSearchViewController *)self view];
    [v30 convertRect:view2 toView:{v32, v34, v36, v38}];
    v22 = v40;
    v24 = v41;
    v26 = v42;
    v28 = v43;
  }

  objc_initWeak(&location, self);
  v44 = MEMORY[0x1E69DC8D8];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __80__CKSearchViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v58[3] = &unk_1E72F7E50;
  objc_copyWeak(&v62, &location);
  v59 = v14;
  v60 = v9;
  v61 = v19;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __80__CKSearchViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v50[3] = &unk_1E72F7E78;
  v45 = v59;
  v51 = v45;
  v46 = v61;
  v52 = v46;
  v47 = v60;
  v53 = v47;
  v54 = v22;
  v55 = v24;
  v56 = v26;
  v57 = v28;
  v48 = [v44 configurationWithIdentifier:v47 previewProvider:v58 actionProvider:v50];

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);

LABEL_10:

  return v48;
}

uint64_t __80__CKSearchViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained searchAnalytics];
  v4 = [*(a1 + 32) contentType];
  v5 = [*(a1 + 40) row];
  v6 = objc_loadWeakRetained((a1 + 56));
  [v3 logSearchResultInteraction:v4 index:v5 mode:objc_msgSend(v6 interactionType:{"mode"), 1}];

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);

  return [v7 previewViewControllerForResult:v8];
}

id __80__CKSearchViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) menuElementsForResult:*(a1 + 40) atIndexPath:*(a1 + 48) sourceRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v1];

  return v2;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  identifier = [configuration identifier];
  section = [identifier section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v11 = [searchControllersWithResults count];

  if (section < v11)
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v13 = [searchControllersWithResults2 objectAtIndex:{objc_msgSend(identifier, "section")}];

    if (([objc_opt_class() previewControllerPresentsModally] & 1) == 0)
    {
      v14 = [identifier row];
      results = [v13 results];
      v16 = [results count];

      if (v14 < v16)
      {
        results2 = [v13 results];
        v18 = [results2 objectAtIndex:{objc_msgSend(identifier, "row")}];

        if (v18)
        {
          v19 = [v13 previewViewControllerForResult:v18];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __107__CKSearchViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
          v21[3] = &unk_1E72EB8D0;
          v21[4] = self;
          v22 = v19;
          v20 = v19;
          [animatorCopy addAnimations:v21];
        }
      }
    }
  }
}

void __107__CKSearchViewController_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 searchViewController:*(a1 + 32) requestsPushOfSearchController:*(a1 + 40)];
}

- (BOOL)contextMenuInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  collectionView = [(CKSearchViewController *)self collectionView];
  _ck_isEditing = [collectionView _ck_isEditing];

  if (_ck_isEditing)
  {
    v7 = 0;
  }

  else
  {
    collectionView2 = [(CKSearchViewController *)self collectionView];
    [beginCopy locationInView:collectionView2];
    v10 = v9;
    v12 = v11;

    collectionView3 = [(CKSearchViewController *)self collectionView];
    v14 = [collectionView3 indexPathForItemAtPoint:{v10, v12}];

    collectionView4 = [(CKSearchViewController *)self collectionView];
    v16 = [collectionView4 cellForItemAtIndexPath:v14];

    if (v16 && (v17 = [v14 section], -[CKSearchViewController searchControllersWithResults](self, "searchControllersWithResults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17 < v19))
    {
      searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
      v21 = [searchControllersWithResults objectAtIndex:{objc_msgSend(v14, "section")}];

      if ([objc_opt_class() supportsMenuInteraction] && (v22 = objc_msgSend(v14, "row"), objc_msgSend(v21, "results"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22 < v24))
      {
        results = [v21 results];
        v26 = [results objectAtIndex:{objc_msgSend(v14, "row")}];

        v7 = [v21 shouldStartMenuInteractionForResult:v26];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v21 = 0;
    }
  }

  return v7;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  section = [pathCopy section];
  searchControllersWithResults = [(CKSearchViewController *)self searchControllersWithResults];
  v13 = [searchControllersWithResults count];

  if (section >= v13)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "CKSearchController - Asked to provide a cell for a section we don't have!", buf, 2u);
      }
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  else
  {
    searchControllersWithResults2 = [(CKSearchViewController *)self searchControllersWithResults];
    v15 = [searchControllersWithResults2 objectAtIndex:section];

    results = [v15 results];
    item = [pathCopy item];
    if (item >= [results count])
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "CKSearchController - Index path is out of range for search results", buf, 2u);
        }
      }

      v21 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v27 = [results objectAtIndex:{objc_msgSend(pathCopy, "item")}];
      v18 = [v15 itemProviderForSearchResult:v27];
      if (v18)
      {
        v19 = [viewCopy cellForItemAtIndexPath:pathCopy];
        if (v19)
        {
          v20 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v18];
          [v20 setLocalObject:v27];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __82__CKSearchViewController_collectionView_itemsForBeginningDragSession_atIndexPath___block_invoke;
          v28[3] = &unk_1E72F46B0;
          v29 = v19;
          [v20 setPreviewProvider:v28];
          v30 = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v32 = pathCopy;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Couldn't get cell for indexPath: %@", buf, 0xCu);
            }
          }

          v21 = MEMORY[0x1E695E0F0];
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Failed to create item provider for search drag item", buf, 2u);
          }
        }

        v21 = MEMORY[0x1E695E0F0];
      }
    }
  }

  return v21;
}

id __82__CKSearchViewController_collectionView_itemsForBeginningDragSession_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DC998]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v5 = [v2 initWithView:v3 parameters:v4];

  return v5;
}

- (void)logActivationViaSearchBar
{
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logSearchPresentationWithReason:1];
}

- (void)logActivationViaSpotlight
{
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logSearchPresentationWithReason:2];
}

- (void)logDeactivation
{
  if (+[CKApplicationState isApplicationActive])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logSearchDismissalWithReason:v3];
}

- (void)logSearchButtonTapped
{
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logSearchButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
}

- (void)logCancelButtonTapped
{
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logCancelButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
}

- (void)logClearButtonTapped
{
  searchAnalytics = [(CKSearchViewController *)self searchAnalytics];
  [searchAnalytics logClearButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
}

- (CKSearchAnalytics)searchAnalytics
{
  if ([(CKSearchViewController *)self _currentModeIsDetails])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[CKSearchAnalytics sharedInstance];
  }

  return v2;
}

- (CKContainerSearchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __77__CKSearchViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v4 object:v5 file:@"CKSearchViewController.m" lineNumber:329 description:{@"%@ needs a cell layout.", v7}];
}

- (void)cellForItemInCollectionView:(uint64_t)a1 atIndexPath:(uint64_t)a2 withIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKSearchViewController.m" lineNumber:423 description:{@"%@ needs a cell layout.", v5}];
}

- (void)__updateSectionHeadersAtIndexPaths:(uint64_t)a3 elementKind:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a1 object:a2 file:@"CKSearchViewController.m" lineNumber:760 description:{@"Found a cell ('%@') with an unexpected class. Expected the cell to be an instance of %@.", a3, v8}];
}

@end