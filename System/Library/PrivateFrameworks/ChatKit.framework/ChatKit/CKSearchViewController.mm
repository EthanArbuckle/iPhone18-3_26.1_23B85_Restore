@interface CKSearchViewController
+ (BOOL)wantsInternalDebugInformation;
- (BOOL)_hasResults;
- (BOOL)_hasSearchBarInput;
- (BOOL)_hasSelectedItemAtIndexPath:(id *)a3;
- (BOOL)_isSectionShowingTokenSuggestions:(int64_t)a3;
- (BOOL)_needsIndexing;
- (BOOL)_shouldHideShowAllButtonForController:(id)a3;
- (BOOL)contextMenuInteractionShouldBegin:(id)a3;
- (BOOL)conversationSearchHasResult;
- (BOOL)shouldInsetResultsForSearchController:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKContainerSearchControllerDelegate)delegate;
- (CKSearchAnalytics)searchAnalytics;
- (CKSearchViewController)initWithSearchControllerClasses:(id)a3;
- (IMIndexThrottleMonitor)throttleMonitor;
- (IMPersistentTaskMonitor)taskMonitor;
- (IMSpotlightClientStateMonitor)clientStateMonitor;
- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)a3;
- (double)containerWidthForController:(id)a3;
- (double)widthForDeterminingAvatarVisibility;
- (id)_identifiersToAppendForResults:(id)a3;
- (id)_newSnapshotForCurrentControllerState;
- (id)_spotlightClientState;
- (id)_subtitleStringForIndexingUI;
- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5;
- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 forSupplementaryViewKind:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)contextMenusForConversation:(id)a3;
- (id)footerBoundryItemsForController:(id)a3 withEnvironment:(id)a4;
- (id)globalLayoutConfiguration;
- (id)headerBoundryItemsForController:(id)a3 withEnvironment:(id)a4;
- (id)layoutSectionForController:(id)a3 withEnvironment:(id)a4;
- (id)layoutSectionForSection:(int64_t)a3 withEnvironment:(id)a4;
- (id)searchController:(id)a3 cellForResult:(id)a4;
- (id)searchController:(id)a3 conversationForChatGUID:(id)a4;
- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4;
- (id)searchTokenFiltersForSearchController:(id)a3;
- (int64_t)_indexForExistingConversationToken:(id)a3;
- (void)__updateSectionHeadersAtIndexPaths:(id)a3 elementKind:(id)a4;
- (void)_configureIndexingCell:(id)a3;
- (void)_dismissQuickLookPreviewModalIfNeeded;
- (void)_hideInlineSearchSuggestions;
- (void)_insertTokenToSearchTextField:(id)a3;
- (void)_logResultsDidChange;
- (void)_registerCells;
- (void)_reloadDataAndLayout;
- (void)_searchImmediately;
- (void)_selectItemForFindAtIndexPath:(id)a3;
- (void)_updateSectionHeaders;
- (void)cancelCurrentQuery;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
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
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchController:(id)a3 requestsPresentationOfAlertController:(id)a4 atRect:(CGRect)a5;
- (void)searchController:(id)a3 requestsPresentationOfShareController:(id)a4 atRect:(CGRect)a5;
- (void)searchControllerContentsDidChange:(id)a3;
- (void)searchEnded;
- (void)searchResultsTitleCellShowAllButtonTapped:(id)a3;
- (void)searchWithText:(id)a3;
- (void)setCanShowTokenSuggestions:(BOOL)a3;
- (void)setMode:(unint64_t)a3;
- (void)setSearchControllers:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKSearchViewController

- (CKSearchViewController)initWithSearchControllerClasses:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CKSearchViewController;
  v5 = [(CKSearchViewController *)&v23 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(CKConversationListCellLayout);
    [(CKSearchViewController *)v5 setCellLayout:v6];

    [(CKSearchViewController *)v5 setIsInitialLoad:1];
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];

    [(UIViewController *)v5 setBalloonBackdropGroupTraitOverrideWithUniqueContextString:v8];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v4;
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
  v3 = [(CKSearchViewController *)self collectionView];
  [v3 setSuppressDatasourceUpdates:1];

  v4 = [(CKSearchViewController *)self collectionView];
  v5 = [(CKSearchViewController *)self contextMenuInteraction];
  [v4 removeInteraction:v5];

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
  v5 = [(CKSearchViewController *)self collectionViewLayout];
  v6 = [(CKSearchViewController *)self globalLayoutConfiguration];
  v7 = [v6 copy];
  [v5 setConfiguration:v7];

  v8 = [CKSearchCollectionView alloc];
  v9 = [(CKSearchViewController *)self view];
  [v9 bounds];
  v10 = [(CKSearchCollectionView *)v8 initWithFrame:v4 collectionViewLayout:?];

  [(CKSearchCollectionView *)v10 setAutoresizingMask:18];
  [(CKSearchCollectionView *)v10 setDelegate:self];
  [(CKSearchViewController *)self setCollectionView:v10];
  v11 = [(CKSearchViewController *)self view];
  [v11 addSubview:v10];

  [(CKSearchViewController *)self _registerCells];
  v12 = [(CKSearchViewController *)self collectionView];
  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 theme];
  v15 = [v14 spotlightSearchBackgroundColor];
  [v12 setBackgroundColor:v15];

  v16 = [(CKSearchViewController *)self collectionView];
  [v16 setAlwaysBounceVertical:1];

  v17 = [(CKSearchViewController *)self collectionView];
  [v17 setAlwaysBounceHorizontal:0];

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

  v21 = [(CKSearchViewController *)self collectionView];
  v22 = [(CKSearchViewController *)self contextMenuInteraction];
  [v21 addInteraction:v22];

  v23 = [(CKSearchViewController *)self collectionView];
  [v23 setDragDelegate:self];

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
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[CKSearchResultsTitleHeaderCell supplementaryViewType];
  v6 = +[CKSearchResultsTitleHeaderCell reuseIdentifier];
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:v6];

  v7 = [(CKSearchViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v10 = +[CKSearchAvatarSupplementryView reuseIdentifier];
  [v7 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  v11 = [(CKSearchViewController *)self collectionView];
  v12 = objc_opt_class();
  v13 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
  v14 = +[CKPhotosSearchResultsModeHeaderReusableView reuseIdentifier];
  [v11 registerClass:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v14];

  if (CKIsRunningInMacCatalyst())
  {
    v15 = [(CKSearchViewController *)self collectionView];
    v16 = objc_opt_class();
    v17 = +[CKPhotosSearchResultsTitleHeaderCell supplementaryViewType];
    v18 = +[CKPhotosSearchResultsTitleHeaderCell reuseIdentifier];
    [v15 registerClass:v16 forSupplementaryViewOfKind:v17 withReuseIdentifier:v18];
  }

  v19 = [(CKSearchViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[CKSearchIndexingFooterCell supplementaryViewType];
  v22 = +[CKSearchIndexingFooterCell reuseIdentifier];
  [v19 registerClass:v20 forSupplementaryViewOfKind:v21 withReuseIdentifier:v22];

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
        v26 = [objc_opt_class() supportedCellClasses];
        v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v36 + 1) + 8 * v30);
              if (v31)
              {
                v32 = [(CKSearchViewController *)self collectionView];
                v33 = [v31 reuseIdentifier];
                [v32 registerClass:v31 forCellWithReuseIdentifier:v33];
              }

              ++v30;
            }

            while (v28 != v30);
            v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
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

  v6 = [(CKSearchViewController *)self collectionView];
  v7 = [v6 insetsLayoutMarginsFromSafeArea];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v9 = [(CKSearchViewController *)self view];
    [v9 safeAreaInsets];
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

  v14 = [(CKSearchViewController *)self collectionView];
  [v14 setMarginInsets:{0.0, v5, 0.0, v8}];

  if ([(CKSearchViewController *)self isInitialLoad])
  {
    [(CKSearchViewController *)self setIsInitialLoad:0];
    v15 = [(CKSearchViewController *)self performAfterInitialLoadBlock];

    if (v15)
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

      v18 = [(CKSearchViewController *)self performAfterInitialLoadBlock];
      v18[2]();

      [(CKSearchViewController *)self setPerformAfterInitialLoadBlock:0];
    }
  }

  [(CKScrollViewController *)self updateScrollGeometryWithInheritedAnimationForReason:@"LayoutSubviews"];
  if ([(CKSearchViewController *)self mode]== 2)
  {
    v19 = [(CKSearchViewController *)self collectionView];
    [v19 contentInset];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = [(CKSearchViewController *)self collectionView];
    [v26 setContentInset:{0.0, v21, v23, v25}];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CKSearchViewController;
  [(CKViewController *)&v6 viewDidAppear:a3];
  v4 = [(CKSearchViewController *)self performAfterInitialAppearanceBlock];

  if (v4)
  {
    v5 = [(CKSearchViewController *)self performAfterInitialAppearanceBlock];
    v5[2]();

    [(CKSearchViewController *)self setPerformAfterInitialAppearanceBlock:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = CKSearchViewController;
  v8 = a4;
  [(CKSearchViewController *)&v10 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CKSearchViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E72F7DB0;
  v9[4] = self;
  v9[5] = a2;
  [v8 animateAlongsideTransition:v9 completion:0];
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

- (void)viewWillAppear:(BOOL)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CKSearchViewController;
  [(CKViewController *)&v22 viewWillAppear:a3];
  if ([(CKSearchViewController *)self mode]== 2)
  {
    v4 = [(CKSearchViewController *)self visibleSearchControllers];
    v5 = [v4 firstObject];

    v6 = [(CKSearchViewController *)self searchText];
    v7 = [v5 navigationBarTitleSummaryForSearchText:v6];
  }

  else
  {
    if ([(CKSearchViewController *)self mode]== 4)
    {
      v8 = [(CKSearchViewController *)self visibleSearchControllers];
      v5 = [v8 firstObject];

      [objc_opt_class() sectionTitle];
    }

    else
    {
      v5 = CKFrameworkBundle();
      [v5 localizedStringForKey:@"SEARCH" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v7 = ;
  }

  [(CKSearchViewController *)self setTitle:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(CKSearchViewController *)self collectionView];
  v10 = [v9 indexPathsForSelectedItems];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [(CKSearchViewController *)self collectionView];
        [v16 deselectItemAtIndexPath:v15 animated:1];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [(CKSearchViewController *)self navigationItem];
  [v17 setLargeTitleDisplayMode:2];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKSearchViewController;
  [(CKViewController *)&v4 viewDidDisappear:a3];
  [(CKSearchViewController *)self searchEnded];
}

- (void)setMode:(unint64_t)a3
{
  self->_mode = a3;
  v4 = [(CKSearchViewController *)self collectionView];
  [v4 setMode:a3];
}

- (void)setSearchControllers:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_searchControllers, a3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
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

- (id)layoutSectionForSection:(int64_t)a3 withEnvironment:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CKSearchViewController *)self searchControllersWithResults];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        v15 = a3;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "CKSearchController - Asked to provide a layout section for a section we don't have! section is %lu", &v14, 0xCu);
      }
    }

    v11 = 0;
  }

  else
  {
    v9 = [(CKSearchViewController *)self searchControllersWithResults];
    v10 = [v9 objectAtIndex:a3];

    v11 = [(CKSearchViewController *)self layoutSectionForController:v10 withEnvironment:v6];
  }

  return v11;
}

- (id)cellForItemInCollectionView:(id)a3 atIndexPath:(id)a4 withIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 section];
  v13 = [(CKSearchViewController *)self searchControllersWithResults];
  v14 = [v13 count];

  if (v12 >= v14)
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
    v15 = [(CKSearchViewController *)self searchControllersWithResults];
    v16 = [v15 objectAtIndex:v12];

    v17 = [v16 cellForItemInCollectionView:v9 atIndexPath:v10 withIdentifier:v11];
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CKSearchViewController *)self cellLayout];

      if (!v18)
      {
        [CKSearchViewController cellForItemInCollectionView:a2 atIndexPath:? withIdentifier:?];
      }

      v19 = [(CKSearchViewController *)self cellLayout];
      [v17 setCellLayout:v19];
    }

    v20 = [(CKSearchViewController *)self collectionView];
    [v17 _ck_setEditing:{objc_msgSend(v20, "_ck_isEditing")}];
  }

  return v17;
}

- (id)cellForSupplementaryItemInCollectionView:(id)a3 atIndexPath:(id)a4 forSupplementaryViewKind:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 section];
  v12 = [(CKSearchViewController *)self searchControllersWithResults];
  v13 = [v12 count];

  if (v11 >= v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = [(CKSearchViewController *)self searchControllersWithResults];
    v15 = [v14 objectAtIndex:{objc_msgSend(v9, "section")}];
  }

  if ([v15 headerOverrideClass] && CKIsRunningInMacCatalyst())
  {
    v16 = [v15 headerOverrideClass];
  }

  else
  {
    v16 = [(CKSearchViewController *)self _searchResultsHeaderClass];
  }

  v17 = [(objc_class *)v16 supplementaryViewType];
  v18 = [v10 isEqualToString:v17];

  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && CKIsRunningInMacCatalyst())
    {
      v19 = +[CKPhotosSearchResultsTitleHeaderCell supplementaryViewType];
      v20 = +[CKPhotosSearchResultsTitleHeaderCell reuseIdentifier];
      v21 = [v8 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v20 forIndexPath:v9];

      v22 = [v21 control];
      [v22 addTarget:v15 action:sel__filterControlTapped_ forControlEvents:4096];

      v23 = [(CKSearchViewController *)self view];
      [v23 frame];
      [v21 updateSegmentedControlToFitWidth:v24];
    }

    else
    {
      v23 = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
      v29 = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] reuseIdentifier];
      v21 = [v8 dequeueReusableSupplementaryViewOfKind:v23 withReuseIdentifier:v29 forIndexPath:v9];
    }

    if (v15)
    {
      [v21 setDelegate:self];
      v30 = [objc_opt_class() sectionTitle];
      [v21 setTitle:v30];

      v31 = [v21 showAllButton];
      [v31 setHidden:{-[CKSearchViewController _shouldHideShowAllButtonForController:](self, "_shouldHideShowAllButtonForController:", v15)}];

      [v21 setSectionIndex:{objc_msgSend(v9, "section")}];
      v32 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v33 = [v32 isSearchRefreshEnabled];

      if ((v33 & 1) == 0)
      {
        v34 = [v9 section];
        v35 = v34 - 1;
        if (v34 >= 1 && [(CKSearchViewController *)self _isSectionShowingTokenSuggestions:v35])
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
    v26 = [v10 isEqualToString:v25];

    if (v26)
    {
      v27 = +[CKSearchIndexingFooterCell supplementaryViewType];
      v28 = +[CKSearchIndexingFooterCell reuseIdentifier];
      v21 = [v8 dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:v9];

      [(CKSearchViewController *)self _configureIndexingCell:v21];
    }

    else
    {
      v21 = [v15 cellForSupplementaryItemInCollectionView:v8 atIndexPath:v9 supplementaryViewKind:v10];
    }
  }

  return v21;
}

- (BOOL)_isSectionShowingTokenSuggestions:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = [(CKSearchViewController *)self searchControllersWithResults];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(CKSearchViewController *)self searchControllersWithResults];
  v8 = [v7 objectAtIndex:a3];

  v9 = [v8 queryController];
  if ([v9 isTokenizationQueryController])
  {
    v10 = [v8 results];
    v11 = [v10 count] != 0;
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
  v2 = [(CKSearchViewController *)self clientStateMonitor];
  v3 = [v2 clientState];

  return v3;
}

- (BOOL)_hasResults
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CKSearchViewController *)self visibleSearchControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasMoreResults])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (void)_configureIndexingCell:(id)a3
{
  v14 = a3;
  [v14 setTitleLabelHidden:1];
  if ([(CKSearchViewController *)self _needsIndexing])
  {
    v4 = [(CKSearchViewController *)self mode];
    v5 = CKFrameworkBundle();
    v6 = v5;
    if (v4 == 1)
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
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isSpotlightInternalIndexingUIEnabled];

    if (v10)
    {
      v11 = [(CKSearchViewController *)self taskMonitor];
      v12 = [(CKSearchViewController *)self _spotlightClientState];
      [v14 updateInternalViewWithTaskMonitor:v11 clientState:v12];
    }
  }

  [v14 setTitleString:v8];
  v13 = [(CKSearchViewController *)self _subtitleStringForIndexingUI];
  [v14 setSubtitleString:v13];
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
    v4 = v3;
    v5 = @"SEARCH_SUGGESTIONS_INDEXING_SUBTITLE";
  }

  else
  {
    if ([(CKSearchViewController *)self mode]== 2 || [(CKSearchViewController *)self mode]== 4)
    {
      v8 = [(CKSearchViewController *)self visibleSearchControllers];
      v4 = [v8 firstObject];

      v6 = [objc_opt_class() indexingString];
      goto LABEL_9;
    }

    v3 = CKFrameworkBundle();
    v4 = v3;
    v5 = @"SEARCH_RESULTS_INDEXING_SUBTITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_9:
  v7 = v6;

LABEL_10:
  if (+[CKSearchViewController wantsInternalDebugInformation])
  {
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isSpotlightReindexRefactorEnabled];

    if (v10)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = [(CKSearchViewController *)self _spotlightClientState];
      v13 = [(CKSearchViewController *)self throttleMonitor];
      v14 = [v13 isThrottled];

      if (v14)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = CKFrameworkBundle();
        v17 = [v16 localizedStringForKey:@"SEARCH_RESULTS_THROTTLED" value:&stru_1F04268F8 table:@"ChatKit"];
        v18 = [MEMORY[0x1E69A5DE8] dateOfThrottlingCompletion];
        v19 = [v15 stringWithFormat:v17, v18];

        v20 = [MEMORY[0x1E69DC668] sharedApplication];
        v21 = [v20 userInterfaceLayoutDirection];

        if (v21 == 1)
        {
          v22 = @"\u200F";
        }

        else
        {
          v22 = @"\u200E";
        }

        v23 = [(__CFString *)v22 stringByAppendingString:v19];

        [v11 addObject:v23];
      }

      if (v12)
      {
        v24 = v12;
        v25 = [(CKSearchViewController *)self _needsIndexing];
        v26 = MEMORY[0x1E696AEC0];
        v27 = CKFrameworkBundle();
        v28 = v27;
        if (v25)
        {
          v29 = [v27 localizedStringForKey:@"SEARCH_RESULTS_REMAINING_CHATS" value:&stru_1F04268F8 table:@"ChatKit"];
          v30 = [(CKSearchViewController *)self taskMonitor];
          v31 = [v26 localizedStringWithFormat:v29, objc_msgSend(v30, "remainingChats")];

          v32 = [MEMORY[0x1E69DC668] sharedApplication];
          v33 = [v32 userInterfaceLayoutDirection];

          if (v33 == 1)
          {
            v34 = @"\u200F";
          }

          else
          {
            v34 = @"\u200E";
          }

          v35 = [(__CFString *)v34 stringByAppendingString:v31];

          [v11 addObject:v35];
          v36 = MEMORY[0x1E696AEC0];
          v37 = CKFrameworkBundle();
          v38 = [v37 localizedStringForKey:@"SEARCH_RESULTS_REMAINING_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
          v39 = [(CKSearchViewController *)self taskMonitor];
          v40 = [v36 localizedStringWithFormat:v38, objc_msgSend(v39, "remainingMessages")];

          v41 = [MEMORY[0x1E69DC668] sharedApplication];
          v42 = [v41 userInterfaceLayoutDirection];

          if (v42 == 1)
          {
            v43 = @"\u200F";
          }

          else
          {
            v43 = @"\u200E";
          }

          v44 = [(__CFString *)v43 stringByAppendingString:v40];

          [v11 addObject:v44];
          v12 = v24;
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v24, "indexRevision")];
          v46 = MEMORY[0x1E696AEC0];
          v47 = CKFrameworkBundle();
          v48 = v47;
        }

        else
        {
          v81 = [v27 localizedStringForKey:@"SEARCH_RESULTS_UP_TO_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
          v82 = [v26 stringWithFormat:v81];

          v83 = [MEMORY[0x1E69DC668] sharedApplication];
          v84 = [v83 userInterfaceLayoutDirection];

          if (v84 == 1)
          {
            v85 = @"\u200F";
          }

          else
          {
            v85 = @"\u200E";
          }

          v86 = [(__CFString *)v85 stringByAppendingString:v82];

          [v11 addObject:v86];
          v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v12, "indexRevision")];
          v46 = MEMORY[0x1E696AEC0];
          v47 = CKFrameworkBundle();
          v48 = v47;
        }

        v87 = [v47 localizedStringForKey:@"SEARCH_RESULTS_VERSION" value:&stru_1F04268F8 table:@"ChatKit"];
        v88 = [v46 stringWithFormat:v87, v45];

        v89 = [MEMORY[0x1E69DC668] sharedApplication];
        v90 = [v89 userInterfaceLayoutDirection];

        if (v90 == 1)
        {
          v91 = @"\u200F";
        }

        else
        {
          v91 = @"\u200E";
        }

        v92 = [(__CFString *)v91 stringByAppendingString:v88];

        [v11 addObject:v92];
      }

      else
      {
        v50 = MEMORY[0x1E696AEC0];
        v51 = CKFrameworkBundle();
        v52 = [v51 localizedStringForKey:@"SEARCH_RESULTS_STATE_LOADING" value:&stru_1F04268F8 table:@"ChatKit"];
        v53 = [v50 stringWithFormat:v52];

        v54 = [MEMORY[0x1E69DC668] sharedApplication];
        v55 = [v54 userInterfaceLayoutDirection];

        if (v55 == 1)
        {
          v56 = @"\u200F";
        }

        else
        {
          v56 = @"\u200E";
        }

        v45 = [(__CFString *)v56 stringByAppendingString:v53];

        [v11 addObject:v45];
      }

      v93 = MEMORY[0x1E696AEC0];
      v94 = CKFrameworkBundle();
      v95 = [v94 localizedStringForKey:@"SEARCH_RESULTS_INTERNAL_STRING" value:&stru_1F04268F8 table:@"ChatKit"];
      v96 = [v11 componentsJoinedByString:@" "];
      v58 = [v93 stringWithFormat:v95, v96];

      v97 = [MEMORY[0x1E69DC668] sharedApplication];
      v98 = [v97 userInterfaceLayoutDirection];

      v80 = v98 == 1;
    }

    else
    {
      v11 = MEMORY[0x193AF5640](@"com.apple.IMCoreSpotlight", @"IMCSIndexLastIndexDate");
      v49 = [v11 description];
      if (v49)
      {
        v12 = [v11 description];
      }

      else
      {
        v57 = CKFrameworkBundle();
        v12 = [v57 localizedStringForKey:@"SEARCH_RESULTS_INTERNAL_NO_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      if ([(CKSearchViewController *)self _needsIndexing])
      {
        v58 = [(CKSearchViewController *)self _spotlightClientState];
        if (v58)
        {
          v59 = IMGetCachedDomainIntForKeyWithDefaultValue();
          v60 = [v58 lastIndexedRowID];
          v61 = [v58 initialReindexRowID];
          v62 = [v58 indexRevision];
          v63 = [MEMORY[0x1E69A7FF8] descriptionForReindexReason:v59];
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu / %lu", v61 - v60, v61];
          v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v62];
          v66 = MEMORY[0x1E696AEC0];
          CKFrameworkBundle();
          v108 = v11;
          v68 = v67 = v12;
          v69 = [v68 localizedStringForKey:@"SEARCH_RESULTS_INDEXING_INTERNAL" value:&stru_1F04268F8 table:@"ChatKit"];
          v70 = [v66 stringWithFormat:v69, v63, v64, v65, v67];

          v71 = [MEMORY[0x1E69DC668] sharedApplication];
          v72 = [v71 userInterfaceLayoutDirection];

          v80 = v72 == 1;
          v12 = v67;
          v11 = v108;
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

          v103 = [MEMORY[0x1E69DC668] sharedApplication];
          v104 = [v103 userInterfaceLayoutDirection];

          if (v104 == 1)
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
      v58 = [v75 stringWithFormat:v77, v12];

      v78 = [MEMORY[0x1E69DC668] sharedApplication];
      v79 = [v78 userInterfaceLayoutDirection];

      v80 = v79 == 1;
    }

    if (v80)
    {
      v99 = @"\u200F";
    }

    else
    {
      v99 = @"\u200E";
    }

    v74 = [(__CFString *)v99 stringByAppendingString:v58];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [v11 objectAtIndex:v8];

    v13 = [v7 row];
    v14 = [v12 results];
    v15 = [v14 count];

    if (v13 < v15)
    {
      v36 = self;
      v16 = [v12 results];
      v37 = v7;
      v35 = [v16 objectAtIndex:{objc_msgSend(v7, "row")}];

      [MEMORY[0x1E695DF70] array];
      v39 = v38 = v6;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [v6 indexPathsForVisibleItems];
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v40 + 1) + 8 * i);
            if ([v22 section] == v8)
            {
              v23 = [v22 row];
              v24 = [v12 results];
              v25 = [v24 count];

              if (v23 < v25)
              {
                v26 = [v12 results];
                v27 = [v26 objectAtIndex:{objc_msgSend(v22, "row")}];

                [v39 addObject:v27];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
      }

      [v12 didSelectResult:v35 visibleResults:v39];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v36;
        [(CKSearchViewController *)v36 _insertTokenToSearchTextField:v35];
        v7 = v37;
        v6 = v38;
        [v38 deselectItemAtIndexPath:v37 animated:0];
      }

      else
      {
        v29 = [v35 conversation];
        v30 = [v29 chat];
        v31 = [v30 guid];

        v28 = v36;
        v32 = [(CKSearchViewController *)v36 delegate];
        v33 = [v35 messageGUID];
        [v32 searchController:v36 didSelectItem:v33 inChat:v31];

        v7 = v37;
        v6 = v38;
      }

      v34 = [(CKSearchViewController *)v28 searchAnalytics];
      [v34 logSearchResultInteraction:objc_msgSend(v12 index:"contentType") mode:objc_msgSend(v7 interactionType:{"row"), -[CKSearchViewController mode](v28, "mode"), 0}];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(CKSearchViewController *)self delegate];
  [v4 searchControllerDidBeginDragging:self];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = +[CKUIBehavior sharedBehaviors];
  if ([v5 searchSectionHeadersPinToBounds])
  {
    v4 = [(CKSearchViewController *)self isViewLoaded];

    if (v4)
    {

      [(CKSearchViewController *)self _updateSectionHeaders];
    }
  }

  else
  {
  }
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v12 = a4;
  v8 = a5;
  v9 = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  if ([v8 isEqualToString:v9])
  {
  }

  else
  {
    v10 = +[CKPhotosSearchResultsModeHeaderReusableView supplementaryViewType];
    v11 = [v8 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  [v12 setNeedsLayout];
  [v12 layoutIfNeeded];
LABEL_5:
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v17 = a3;
  v7 = a5;
  v8 = [v7 section];
  v9 = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [v11 objectAtIndex:v8];

    v13 = [(CKSearchViewController *)self searchAnalytics];
    v14 = [v12 contentType];
    v15 = [v7 row];
    v16 = [(CKSearchViewController *)self mode];
    [v17 _verticalVelocity];
    [v13 logSearchResultDisplayEvent:v14 index:v15 mode:v16 displayEventType:0 scrollVelocity:?];
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v17 = a3;
  v7 = a5;
  v8 = [v7 section];
  v9 = [(CKSearchViewController *)self searchControllersWithResults];
  v10 = [v9 count];

  if (v8 < v10)
  {
    v11 = [(CKSearchViewController *)self searchControllersWithResults];
    v12 = [v11 objectAtIndex:v8];

    v13 = [(CKSearchViewController *)self searchAnalytics];
    v14 = [v12 contentType];
    v15 = [v7 row];
    v16 = [(CKSearchViewController *)self mode];
    [v17 _verticalVelocity];
    [v13 logSearchResultDisplayEvent:v14 index:v15 mode:v16 displayEventType:1 scrollVelocity:?];
  }
}

- (void)_updateSectionHeaders
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  v18[0] = v3;
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

- (void)__updateSectionHeadersAtIndexPaths:(id)a3 elementKind:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v8 = *v42;
    v9 = &OBJC_IVAR___CKMessageSearchResultCell_marginInsets;
    v39 = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = v9[253];
        v13 = [*(&self->super.super.super.super.super.isa + v12) collectionViewLayout];
        v14 = [v13 layoutAttributesForItemAtIndexPath:v11];

        if (v14)
        {
          [v14 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [*(&self->super.super.super.super.super.isa + v12) supplementaryViewForElementKind:v7 atIndexPath:v11];
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
              v32 = [v31 theme];
              [v32 spotlightSearchSegmentedControlBackgroundColor];
              v33 = v9;
              v34 = v8;
              v35 = v7;
              v37 = v36 = v6;
              [v23 setBackgroundColor:v37];

              v6 = v36;
              v7 = v35;
              v8 = v34;
              v9 = v33;
              self = v39;
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
      v40 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }
}

- (void)searchResultsTitleCellShowAllButtonTapped:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    [(CKSearchViewController *)self _searchResultHeaderButtonTapped:v4];
  }

  else
  {
    v5 = [v4 sectionIndex];
    v6 = [(CKSearchViewController *)self searchControllersWithResults];
    v7 = [v6 count];

    if (v5 < v7)
    {
      v8 = [(CKSearchViewController *)self searchControllersWithResults];
      v9 = [v8 objectAtIndex:v5];

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
      v15 = [(CKSearchViewController *)self delegate];
      [(CKSearchViewController *)v14 setDelegate:v15];

      v16 = [(CKSearchViewController *)self searchText];
      [(CKSearchViewController *)v14 setSearchText:v16];

      v17 = [(CKSearchViewController *)self delegate];
      [v17 searchViewController:self requestsPushOfSearchController:v14];

      v18 = [(CKSearchViewController *)self searchText];
      [(CKSearchViewController *)v14 searchWithText:v18];

      v19 = [(CKSearchViewController *)self searchAnalytics];
      [v19 logShowAllInteraction:{objc_msgSend(v9, "contentType")}];
    }
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 isActive];
  if (v5 && !self->_dismissingSearchController)
  {
    v10 = [v4 searchBar];
    v11 = [v10 text];

    [(CKSearchViewController *)self searchWithText:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      dismissingSearchController = self->_dismissingSearchController;
      if (v5)
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
  v3 = [(CKSearchViewController *)self searchControllers];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      v8 = objc_opt_class();
      if (v8 == objc_opt_class())
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v10 = [(CKSearchViewController *)self collectionView];
    v11 = [v10 collectionViewLayout];
    [v11 invalidateLayout];

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

- (void)_insertTokenToSearchTextField:(id)a3
{
  v13 = a3;
  v4 = [(CKSearchViewController *)self delegate];
  v5 = [v4 searchBarForSearchViewController:self];

  v6 = [v5 searchTextField];
  v7 = [v6 tokens];
  v8 = [v7 count];

  v9 = [v13 associatedStagedFilter];

  if (v9)
  {
    v10 = [v13 associatedStagedFilter];
    v11 = [(CKSearchViewController *)self _indexForExistingConversationToken:v10];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeTokenAtIndex:v11];
      v8 = v11;
    }
  }

  v12 = [v13 searchToken];
  [v6 insertToken:v12 atIndex:v8];

  [v6 setText:&stru_1F04268F8];
}

- (BOOL)_hasSearchBarInput
{
  v3 = [(CKSearchViewController *)self delegate];
  v4 = [v3 searchBarForSearchViewController:self];

  v5 = [v4 searchTextField];
  v6 = [v5 text];
  if ([v6 length])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 searchTextField];
    v9 = [v8 tokens];
    v7 = [v9 count] != 0;
  }

  return v7;
}

- (void)searchWithText:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isSemanticSearchEnabled];

  if (v6 && searchWithText__onceToken != -1)
  {
    [CKSearchViewController searchWithText:];
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __41__CKSearchViewController_searchWithText___block_invoke_2;
  v12 = &unk_1E72EB8D0;
  v13 = self;
  v14 = v4;
  v7 = v4;
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
  v3 = [(CKSearchViewController *)self searchCompleteControllerSet];
  [v3 removeAllObjects];

  v4 = [(CKSearchViewController *)self searchText];
  [(CKSearchViewController *)self cancelCurrentQuery];
  v5 = [(CKSearchViewController *)self mode];
  if (v5 != 2 && ![(CKSearchViewController *)self _currentModeIsDetails])
  {
    v5 = [(CKSearchViewController *)self _hasSearchBarInput]^ 1;
  }

  [(CKSearchViewController *)self setMode:v5];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 length];
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
  v9 = v4;
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
  v10 = [(CKSearchViewController *)self searchControllers];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v10);
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

          v18 = [(CKSearchViewController *)self searchCompleteControllerSet];
          [v18 addObject:objc_opt_class()];

          [(CKSearchViewController *)self searchControllerContentsDidChange:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (void)searchControllerContentsDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v7 = [(CKSearchViewController *)self searchCompleteControllerSet];
  [v7 addObject:objc_opt_class()];

  v8 = [(CKSearchViewController *)self searchCompleteControllerSet];
  v9 = [v8 count];

  v10 = [(CKSearchViewController *)self searchControllers];
  v11 = [v10 count];

  v12 = IMOSLoggingEnabled();
  if (v9 >= v11)
  {
    if (v12)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [(CKSearchViewController *)self searchCompleteControllerSet];
        v21 = [v20 count];
        v22 = objc_opt_class();
        v23 = [(CKSearchViewController *)self searchControllers];
        v24 = [v23 count];
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
    v25 = [(CKSearchViewController *)self timingCollection];
    [v25 stopTimingForKey:@"Search"];

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [(CKSearchViewController *)self timingCollection];
        *v28 = 138412290;
        *&v28[4] = v27;
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
        v14 = [(CKSearchViewController *)self searchCompleteControllerSet];
        v15 = [v14 count];
        v16 = objc_opt_class();
        v17 = [(CKSearchViewController *)self searchControllers];
        v18 = [v17 count];
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
  v5 = [(CKSearchViewController *)self collectionViewLayout];
  v3 = [(CKSearchViewController *)self globalLayoutConfiguration];
  v4 = [v3 copy];
  [v5 setConfiguration:v4];
}

- (void)_logResultsDidChange
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(CKSearchViewController *)self searchAnalytics];
  if (v3)
  {
    v4 = v3;
    v5 = [(CKSearchViewController *)self searchInProgress];

    if (v5)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = self;
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
            v16 = [v15 results];
            v17 = [v16 count];

            v18 = [v15 contentType];
            if (v18 == 10)
            {
              v19 = v17;
            }

            else
            {
              v19 = v13;
            }

            if (v18 == 8)
            {
              v20 = v17;
            }

            else
            {
              v20 = v12;
            }

            if (v18 == 8)
            {
              v19 = v13;
            }

            v10 = v36;
            v9 = v37;
            if (v18 == 7)
            {
              v21 = v17;
            }

            else
            {
              v21 = v36;
            }

            if (v18 == 7)
            {
              v20 = v12;
              v19 = v13;
            }

            if (v18 == 6)
            {
              v22 = v17;
            }

            else
            {
              v22 = v11;
            }

            if (v18 == 5)
            {
              v23 = v17;
            }

            else
            {
              v23 = v37;
            }

            if (v18 == 5)
            {
              v22 = v11;
            }

            if (v18 <= 6)
            {
              v21 = v36;
            }

            else
            {
              v23 = v37;
            }

            if (v18 <= 6)
            {
              v20 = v12;
            }

            else
            {
              v22 = v11;
            }

            if (v18 <= 6)
            {
              v19 = v13;
            }

            if (v18 == 4)
            {
              v24 = v17;
            }

            else
            {
              v24 = v8;
            }

            if (v18 == 3)
            {
              v25 = v17;
            }

            else
            {
              v25 = v7;
            }

            if (v18 == 3)
            {
              v24 = v8;
            }

            if (v18 == 2)
            {
              v25 = v7;
              v24 = v8;
            }

            v27 = v38;
            v26 = v39;
            if (v18 == 2)
            {
              v28 = v17;
            }

            else
            {
              v28 = v39;
            }

            if (v18 == 1)
            {
              v29 = v17;
            }

            else
            {
              v29 = v6;
            }

            if (v18)
            {
              v30 = v38;
            }

            else
            {
              v29 = v6;
              v30 = v17;
            }

            if (v18 <= 1)
            {
              v25 = v7;
            }

            else
            {
              v29 = v6;
            }

            if (v18 > 1)
            {
              v30 = v38;
            }

            else
            {
              v24 = v8;
              v28 = v39;
            }

            if (v18 > 4)
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

            if (v18 <= 4)
            {
              v26 = v28;
            }

            else
            {
              v11 = v22;
            }

            if (v18 <= 4)
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

      v31 = [(CKSearchViewController *)v32 searchAnalytics];
      [v31 logSearchResultsReceivedInMode:-[CKSearchViewController mode](v32 conversations:"mode") tokens:v38 messages:v13 links:v6 photos:v7 location:v8 attachments:v9 wallet:v10 collaboration:v11 highlights:{v39, v12}];
    }
  }
}

- (id)searchController:(id)a3 conversationForChatGUID:(id)a4
{
  v5 = a4;
  v6 = [(CKSearchViewController *)self delegate];
  v7 = [v6 searchController:self conversationForChatGUID:v5];

  return v7;
}

- (id)searchController:(id)a3 conversationsForExistingChatsWithGUIDs:(id)a4
{
  v5 = a4;
  v6 = [(CKSearchViewController *)self delegate];
  v7 = [v6 searchController:self conversationsForExistingChatsWithGUIDs:v5];

  return v7;
}

- (void)searchController:(id)a3 requestsPresentationOfShareController:(id)a4 atRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v10 = [v14 popoverPresentationController];

  if (v10)
  {
    v11 = [(CKSearchViewController *)self view];
    v12 = [v14 popoverPresentationController];
    [v12 setSourceView:v11];

    v13 = [v14 popoverPresentationController];
    [v13 setSourceRect:{x, y, width, height}];
  }

  [(CKSearchViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)searchController:(id)a3 requestsPresentationOfAlertController:(id)a4 atRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v10 = [v14 popoverPresentationController];

  if (v10)
  {
    v11 = [(CKSearchViewController *)self view];
    v12 = [v14 popoverPresentationController];
    [v12 setSourceView:v11];

    v13 = [v14 popoverPresentationController];
    [v13 setSourceRect:{x, y, width, height}];
  }

  [(CKSearchViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (id)contextMenusForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self delegate];
  v6 = [v5 contextMenusForConversation:v4];

  return v6;
}

- (id)searchTokenFiltersForSearchController:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(CKSearchViewController *)self delegate];
  v6 = [v5 searchBarForSearchViewController:self];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 searchTextField];
  v8 = [v7 tokens];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) representedObject];
        [v4 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v4;
}

- (int64_t)_indexForExistingConversationToken:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self delegate];
  v6 = [v5 searchBarForSearchViewController:self];

  v7 = [v6 searchTextField];
  v8 = [v7 tokens];

  if ([v8 count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = [v10 representedObject];
      v12 = [v11 conversation];
      v13 = [v4 conversation];

      if (v12 == v13)
      {
        break;
      }

      if (++v9 >= [v8 count])
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

- (BOOL)shouldInsetResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self delegate];
  v6 = [v5 shouldInsetResultsForSearchController:v4];

  return v6;
}

- (UIEdgeInsets)parentMarginInsetsForSearchController:(id)a3
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
  v2 = [(CKSearchViewController *)self collectionView];
  [v2 bounds];
  v4 = v3;

  return v4;
}

- (double)containerWidthForController:(id)a3
{
  v4 = [(CKSearchViewController *)self collectionView];
  [v4 bounds];
  Width = CGRectGetWidth(v11);
  v6 = [(CKSearchViewController *)self collectionView];
  [v6 safeAreaInsets];
  v9 = Width - (v7 + v8);

  return v9;
}

- (id)searchController:(id)a3 cellForResult:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CKSearchViewController *)self collectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 conformsToProtocol:&unk_1F0557FF0])
        {
          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 resultIdentifier];
            v12 = [v15 identifier];
            v13 = [v11 isEqual:v12];

            if (v13)
            {
              v7 = v10;
              goto LABEL_13;
            }
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setCanShowTokenSuggestions:(BOOL)a3
{
  if (self->_canShowTokenSuggestions != a3)
  {
    self->_canShowTokenSuggestions = a3;
    if (!a3)
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
  v4 = [(CKSearchViewController *)self searchControllers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancelCurrentSearch];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
  v7 = [(CKSearchViewController *)self searchControllers];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 cancelCurrentSearch];
        [v11 searchEnded];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(CKSearchViewController *)self contextMenuInteraction];

  if (v12)
  {
    v13 = [(CKSearchViewController *)self contextMenuInteraction];
    [v13 dismissMenu];
  }

  [(CKSearchViewController *)self setContentUnavailableConfiguration:0];
  [(CKSearchViewController *)self setSearchIsEnding:0];
}

- (void)_dismissQuickLookPreviewModalIfNeeded
{
  v6 = [(CKSearchViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 presentingViewController];
    if (v5 == self)
    {
      [(CKSearchViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    v4 = v6;
  }
}

- (void)findNext
{
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:1];

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
  v3 = [(CKSearchViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:1];

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
  LODWORD(v3) = [(CKSearchViewController *)self isViewLoaded];
  if (v3)
  {
    v3 = [(CKSearchViewController *)self collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [(CKSearchViewController *)self collectionView];
      v6 = [v5 numberOfSections];

      if (v6 < 2)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v7 = [(CKSearchViewController *)self collectionView];
        v8 = [v7 numberOfItemsInSection:1];

        LOBYTE(v3) = v8 > 0;
      }
    }
  }

  return v3;
}

- (BOOL)_hasSelectedItemAtIndexPath:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CKSearchViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 section] == 1)
        {
          v12 = v10;
          *a3 = v10;
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_selectItemForFindAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self collectionView];
  [v5 selectItemAtIndexPath:v4 animated:1 scrollPosition:0];

  v6 = [(CKSearchViewController *)self collectionView];
  [(CKSearchViewController *)self collectionView:v6 didSelectItemAtIndexPath:v4];
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

  v4 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(CKSearchViewController *)self visibleSearchControllers];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [(CKSearchViewController *)self mode]== 4 || [(CKSearchViewController *)self mode]== 2;
        v11 = [v9 results];
        v12 = [v11 count] != 0;

        if (v12 || v10)
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v6);
  }

  v13 = [v4 copy];
  searchControllersWithResults = self->_searchControllersWithResults;
  self->_searchControllersWithResults = v13;

  v15 = [(CKSearchViewController *)self _newSnapshotForCurrentControllerState];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Updating search collection view by applying snapshot!", buf, 2u);
    }
  }

  v17 = [(CKSearchViewController *)self dataSource];
  [v17 applySnapshotUsingReloadData:v15];

  v18 = [(CKSearchViewController *)self collectionView];
  v19 = [v18 visibleCells];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __36__CKSearchViewController_reloadData__block_invoke;
  v34[3] = &unk_1E72F7E00;
  v34[4] = self;
  [v19 enumerateObjectsUsingBlock:v34];

  v20 = +[CKSearchAvatarSupplementryView supplementaryViewType];
  v21 = [(CKSearchViewController *)self collectionView];
  v22 = [v21 indexPathsForVisibleSupplementaryElementsOfKind:v20];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __36__CKSearchViewController_reloadData__block_invoke_2;
  v32[3] = &unk_1E72F2FD8;
  v32[4] = self;
  v23 = v20;
  v33 = v23;
  [v22 enumerateObjectsUsingBlock:v32];

  v24 = [(objc_class *)[(CKSearchViewController *)self _searchResultsHeaderClass] supplementaryViewType];
  v25 = [(CKSearchViewController *)self collectionView];
  v26 = [v25 indexPathsForVisibleSupplementaryElementsOfKind:v24];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __36__CKSearchViewController_reloadData__block_invoke_3;
  v30[3] = &unk_1E72F2FD8;
  v30[4] = self;
  v27 = v24;
  v31 = v27;
  [v26 enumerateObjectsUsingBlock:v30];

  if ([(CKSearchViewController *)self _currentModeIsDetails]|| [(CKSearchViewController *)self mode]== 1 || [(CKSearchViewController *)self _hasResults])
  {
    [(CKSearchViewController *)self setContentUnavailableConfiguration:0];
  }

  else
  {
    v28 = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v29 = [(CKSearchViewController *)self _subtitleStringForIndexingUI];
    if ([v29 length])
    {
      [v28 setSecondaryText:v29];
    }

    [(CKSearchViewController *)self setContentUnavailableConfiguration:v28];
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
  v5 = [(CKSearchViewController *)self searchControllersWithResults];
  v6 = [v5 arrayByApplyingSelector:sel_class];
  v7 = [v6 arrayByApplyingSelector:sel_sectionIdentifier];
  [v4 appendSectionsWithIdentifiers:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CKSearchViewController__newSnapshotForCurrentControllerState__block_invoke;
  v14[3] = &unk_1E72EC738;
  v8 = v5;
  v15 = v8;
  v16 = self;
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

- (id)_identifiersToAppendForResults:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v14 + 1) + 8 * i) identifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [v4 array];
    v12 = [v11 copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)layoutSectionForController:(id)a3 withEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 customLayoutSectionForEnvironment:v7];
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
    v19 = [v6 layoutGroupWithEnvironment:v7];
    v10 = [MEMORY[0x1E6995580] sectionWithGroup:v19];
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 searchResultsInsets];
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  [v10 setSupplementariesFollowContentInsets:0];
  if ([v6 applyLayoutMarginsToLayoutGroup])
  {
    v25 = [(CKSearchViewController *)self collectionView];
    [v25 marginInsets];
    v14 = v14 + v26;

    v27 = [(CKSearchViewController *)self collectionView];
    [v27 marginInsets];
    v18 = v18 + v28;
  }

  [v6 additionalGroupInsets];
  [v10 setContentInsets:{v12 + v29, v14 + v30, v16 + v32, v18 + v31}];
  [v6 interGroupSpacing];
  [v10 setInterGroupSpacing:?];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [(CKSearchViewController *)self headerBoundryItemsForController:v6 withEnvironment:v7];
  if (v34)
  {
    [v33 addObjectsFromArray:v34];
  }

  v35 = [(CKSearchViewController *)self footerBoundryItemsForController:v6 withEnvironment:v7];
  if (v35)
  {
    [v33 addObjectsFromArray:v35];
  }

  [v10 setBoundarySupplementaryItems:v33];
  [v10 setOrthogonalScrollingBehavior:{objc_msgSend(objc_opt_class(), "orthogonalScrollingBehavior")}];
  v36 = v10;

  return v10;
}

- (id)headerBoundryItemsForController:(id)a3 withEnvironment:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 wantsHeaderSection])
  {
    v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v8 = MEMORY[0x1E6995558];
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 searchHeaderHeight];
    v10 = [v8 estimatedDimension:?];

    v11 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v10];
    if ([v5 headerOverrideClass])
    {
      v12 = [v5 headerOverrideClass];
    }

    else
    {
      v12 = [(CKSearchViewController *)self _searchResultsHeaderClass];
    }

    v13 = MEMORY[0x1E6995548];
    v14 = [(objc_class *)v12 supplementaryViewType];
    v15 = [v13 boundarySupplementaryItemWithLayoutSize:v11 elementKind:v14 alignment:1];

    v16 = +[CKUIBehavior sharedBehaviors];
    [v15 setPinToVisibleBounds:{objc_msgSend(v16, "searchSectionHeadersPinToBounds")}];

    [v15 setZIndex:101];
    [v6 addObject:v15];
  }

  return v6;
}

- (id)footerBoundryItemsForController:(id)a3 withEnvironment:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 wantsFooterSection] && objc_msgSend(v4, "footerClass"))
  {
    v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v7 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
    v8 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v7];
    v9 = [v4 footerClass];
    v10 = MEMORY[0x1E6995548];
    v11 = [v9 supplementaryViewType];
    v12 = [v10 boundarySupplementaryItemWithLayoutSize:v8 elementKind:v11 alignment:5];

    [v5 addObject:v12];
  }

  return v5;
}

- (id)globalLayoutConfiguration
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC810] defaultConfiguration];
  if ([(CKSearchViewController *)self searchInProgress]&& ([(CKSearchViewController *)self _needsIndexing]|| +[CKSearchViewController wantsInternalDebugInformation]))
  {
    v4 = [(CKSearchViewController *)self searchCompleteControllerSet];
    v5 = [v4 count];

    v6 = [(CKSearchViewController *)self searchControllers];
    v7 = [v6 count];

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
        [v3 setBoundarySupplementaryItems:v14];
      }
    }
  }

  return v3;
}

+ (BOOL)wantsInternalDebugInformation
{
  v2 = [MEMORY[0x1E69A60F0] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (!v3)
  {
    return 0;
  }

  return IMGetDomainBoolForKey();
}

- (IMPersistentTaskMonitor)taskMonitor
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSpotlightReindexRefactorEnabled];

  if (v4 && !self->_taskMonitor && ![(CKSearchViewController *)self searchIsEnding])
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSpotlightReindexRefactorEnabled];

  if (v4 && !self->_throttleMonitor && ![(CKSearchViewController *)self searchIsEnding])
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
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isSpotlightReindexRefactorEnabled];

  if (v4)
  {
    v5 = [(CKSearchViewController *)self taskMonitor];
    v6 = [v5 remainingMessages] > 0;

    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E69A7FF8];

    return [v8 needsIndexing];
  }
}

- (BOOL)_shouldHideShowAllButtonForController:(id)a3
{
  v3 = a3;
  if (CKIsRunningInMacCatalyst())
  {
    v4 = [v3 mode];
    if (v4 == 4 || v4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4;
    }

    v7 = [v3 queriedResultsCount];
    v8 = [v3 queryController];
    LOBYTE(v6) = v7 <= [v8 maxResultsForMode:v6];
  }

  else
  {
    LODWORD(v6) = [v3 hasMoreResults] ^ 1;
  }

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(CKSearchViewController *)self collectionView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(CKSearchViewController *)self collectionView];
  v12 = [v11 indexPathForItemAtPoint:{v8, v10}];

  if (!v12)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v13 = [(CKSearchViewController *)self collectionView];
  v14 = [v13 cellForItemAtIndexPath:v12];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [v14 window];

  if (!v15)
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (![(CKSearchViewController *)self contextMenuInteractionShouldBegin:v7])
  {
    goto LABEL_9;
  }

  v8 = [(CKSearchViewController *)self collectionView];
  v9 = [v8 indexPathForItemAtPoint:{x, y}];

  v10 = [v9 section];
  v11 = [(CKSearchViewController *)self searchControllersWithResults];
  v12 = [v11 count];

  if (v10 >= v12)
  {
LABEL_8:

LABEL_9:
    v48 = 0;
    goto LABEL_10;
  }

  v13 = [(CKSearchViewController *)self searchControllersWithResults];
  v14 = [v13 objectAtIndex:{objc_msgSend(v9, "section")}];

  v15 = [v9 row];
  v16 = [v14 results];
  v17 = [v16 count];

  if (v15 >= v17)
  {

    goto LABEL_8;
  }

  v18 = [v14 results];
  v19 = [v18 objectAtIndex:{objc_msgSend(v9, "row")}];

  v20 = [(CKSearchViewController *)self view];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [(CKSearchViewController *)self collectionView];
  v30 = [v29 cellForItemAtIndexPath:v9];

  if (v30)
  {
    [v30 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(CKSearchViewController *)self view];
    [v30 convertRect:v39 toView:{v32, v34, v36, v38}];
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

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  v9 = [v8 section];
  v10 = [(CKSearchViewController *)self searchControllersWithResults];
  v11 = [v10 count];

  if (v9 < v11)
  {
    v12 = [(CKSearchViewController *)self searchControllersWithResults];
    v13 = [v12 objectAtIndex:{objc_msgSend(v8, "section")}];

    if (([objc_opt_class() previewControllerPresentsModally] & 1) == 0)
    {
      v14 = [v8 row];
      v15 = [v13 results];
      v16 = [v15 count];

      if (v14 < v16)
      {
        v17 = [v13 results];
        v18 = [v17 objectAtIndex:{objc_msgSend(v8, "row")}];

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
          [v7 addAnimations:v21];
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

- (BOOL)contextMenuInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CKSearchViewController *)self collectionView];
  v6 = [v5 _ck_isEditing];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(CKSearchViewController *)self collectionView];
    [v4 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(CKSearchViewController *)self collectionView];
    v14 = [v13 indexPathForItemAtPoint:{v10, v12}];

    v15 = [(CKSearchViewController *)self collectionView];
    v16 = [v15 cellForItemAtIndexPath:v14];

    if (v16 && (v17 = [v14 section], -[CKSearchViewController searchControllersWithResults](self, "searchControllersWithResults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17 < v19))
    {
      v20 = [(CKSearchViewController *)self searchControllersWithResults];
      v21 = [v20 objectAtIndex:{objc_msgSend(v14, "section")}];

      if ([objc_opt_class() supportsMenuInteraction] && (v22 = objc_msgSend(v14, "row"), objc_msgSend(v21, "results"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22 < v24))
      {
        v25 = [v21 results];
        v26 = [v25 objectAtIndex:{objc_msgSend(v14, "row")}];

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

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 section];
  v12 = [(CKSearchViewController *)self searchControllersWithResults];
  v13 = [v12 count];

  if (v11 >= v13)
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
    v14 = [(CKSearchViewController *)self searchControllersWithResults];
    v15 = [v14 objectAtIndex:v11];

    v16 = [v15 results];
    v17 = [v10 item];
    if (v17 >= [v16 count])
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
      v27 = [v16 objectAtIndex:{objc_msgSend(v10, "item")}];
      v18 = [v15 itemProviderForSearchResult:v27];
      if (v18)
      {
        v19 = [v8 cellForItemAtIndexPath:v10];
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
              v32 = v10;
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
  v2 = [(CKSearchViewController *)self searchAnalytics];
  [v2 logSearchPresentationWithReason:1];
}

- (void)logActivationViaSpotlight
{
  v2 = [(CKSearchViewController *)self searchAnalytics];
  [v2 logSearchPresentationWithReason:2];
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

  v4 = [(CKSearchViewController *)self searchAnalytics];
  [v4 logSearchDismissalWithReason:v3];
}

- (void)logSearchButtonTapped
{
  v3 = [(CKSearchViewController *)self searchAnalytics];
  [v3 logSearchButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
}

- (void)logCancelButtonTapped
{
  v3 = [(CKSearchViewController *)self searchAnalytics];
  [v3 logCancelButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
}

- (void)logClearButtonTapped
{
  v3 = [(CKSearchViewController *)self searchAnalytics];
  [v3 logClearButtonInteraction:{-[CKSearchViewController mode](self, "mode")}];
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