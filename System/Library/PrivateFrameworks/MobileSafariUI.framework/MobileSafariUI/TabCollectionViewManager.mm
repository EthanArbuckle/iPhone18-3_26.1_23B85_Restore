@interface TabCollectionViewManager
- (BOOL)_canUpdateClassicBar;
- (BOOL)_canUpdateUnifiedBar;
- (BOOL)_isPrivateBrowsingAndLocked;
- (BOOL)_isTabHiddenWithUUID:(id)a3;
- (BOOL)_shouldShowExplanationView;
- (BOOL)_shouldUpdateSnapshotsForTabHoverPreview;
- (BOOL)hasTabBar;
- (BOOL)isShowingTabView;
- (BOOL)tabCollectionView:(id)a3 canCloseItem:(id)a4;
- (BOOL)tabCollectionView:(id)a3 item:(id)a4 matchesSearchText:(id)a5;
- (BOOL)tabCollectionViewCanDismiss:(id)a3;
- (BOOL)tabItem:(id)a3 matchesSearchText:(id)a4;
- (BOOL)tabSnapshotCache:(id)a3 canAcceptRequestForIdentifier:(id)a4;
- (BrowserController)browserController;
- (NSArray)tabCollectionViews;
- (NSSet)allSnapshotIdentifiers;
- (TabBar)tabBar;
- (TabBarManager)tabBarManager;
- (TabCollectionViewManager)init;
- (TabCollectionViewManagerDataSource)dataSource;
- (TabDragDropInteractionController)tabDragDropController;
- (TabMenuProviderDataSource)tabMenuProviderDataSource;
- (id)_blankSnapshotGroupIdentifierForTabGroup:(id)a3;
- (id)_contentForSnapshotWithIdentifier:(id)a3;
- (id)_extensionIconForTabWithURL:(id)a3 UUID:(id)a4;
- (id)_hiddenCollectionViewTabs;
- (id)_iconForTabWithUUID:(id)a3;
- (id)_openNewTabInteraction;
- (id)_tabCollectionItemsRemovingHiddenItems:(BOOL)a3 outHiddenItems:(id)a4 outIsDragging:(BOOL *)a5 itemRetriever:(id)a6;
- (id)_urlForTabWithUUID:(id)a3;
- (id)cachedContentImageForTabWithUUID:(id)a3 allowScaledImage:(BOOL)a4;
- (id)dragItemForTab:(id)a3 tabItem:(id)a4;
- (id)insertPlaceholderAfterTabItem:(id)a3;
- (id)replacePlaceholderItem:(id)a3 withTabsForDropSession:(id)a4 dragItems:(id)a5;
- (id)snapshottableTabDocumentForIdentifier:(id)a3;
- (id)tabCollectionView:(id)a3 borrowContentViewControllerForItem:(id)a4;
- (id)tabCollectionViewForItem:(id)a3;
- (id)tabWithUUID:(id)a3;
- (int64_t)visibleTabCollectionViewType;
- (unint64_t)_indexToInsertPlaceholderAtTabItem:(id)a3;
- (unint64_t)_snapshotCacheCapacityWithSnapshotsEnabled:(BOOL)a3;
- (void)_didReceiveMemoryWarning:(id)a3;
- (void)_enumerateTabsOrderedByVisibility:(id)a3;
- (void)_movePlaceholder:(id)a3 toIndex:(unint64_t)a4;
- (void)_openTabFromNewTabButton;
- (void)_setTabsForDragItems:(id)a3 hidden:(BOOL)a4;
- (void)_setUpTabOverview;
- (void)_temporarilyUpdateSnapshotsForTabDocument:(id)a3;
- (void)_updateClassicTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4;
- (void)_updateSnapshotCacheStateWithCapacity:(unint64_t)a3;
- (void)_updateTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4;
- (void)_updateTabSnapshotsWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)_updateUnifiedTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4;
- (void)clearSnapshotCache;
- (void)dealloc;
- (void)didBeginTrackingSession:(id)a3;
- (void)didEndTrackingSession:(id)a3;
- (void)dismissTabHoverPreview;
- (void)flushPendingSnapshotsWithCompletion:(id)a3;
- (void)invalidateSnapshotForTab:(id)a3;
- (void)movePlaceholder:(id)a3 overTabItem:(id)a4;
- (void)movePlaceholderToEndOfPinnedTabs:(id)a3;
- (void)performBatchUpdatesWithBlock:(id)a3;
- (void)registerLibraryController:(id)a3;
- (void)removePlaceholderItem:(id)a3;
- (void)removeSnapshotForTabWithUUID:(id)a3;
- (void)requestSnapshotForTabDocument:(id)a3 completion:(id)a4;
- (void)scrollTabBarToActiveTabAnimated:(BOOL)a3;
- (void)setPrivateBrowsingEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldDeferSnapshotRequest:(BOOL)a3;
- (void)setSnapshotsEnabled:(BOOL)a3;
- (void)setTabBar:(id)a3;
- (void)setTabBarManager:(id)a3;
- (void)setTabThumbnailCollectionViewStyle:(int64_t)a3;
- (void)tabBar:(id)a3 toggleMediaStateMutedForItem:(id)a4;
- (void)tabBarManager:(id)a3 didCreateTabBar:(id)a4;
- (void)tabCollectionView:(id)a3 closeItem:(id)a4;
- (void)tabCollectionView:(id)a3 didSelectItem:(id)a4;
- (void)tabCollectionView:(id)a3 item:(id)a4 didProduceNavigationIntent:(id)a5;
- (void)tabCollectionView:(id)a3 relinquishBorrowedContentViewController:(id)a4 forItem:(id)a5;
- (void)tabCollectionViewDidCancelDismissal:(id)a3;
- (void)tabCollectionViewDidDismiss:(id)a3;
- (void)tabCollectionViewWillDismiss:(id)a3;
- (void)tabCollectionViewWillPresent:(id)a3;
- (void)tabHoverPreviewController:(id)a3 showPreviewForItem:(id)a4;
- (void)tabHoverPreviewControllerDismissPreview:(id)a3;
- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5;
- (void)tabSnapshotCacheDidFinishUpdating:(id)a3;
- (void)updateExplanationViewVisibilityAnimated:(BOOL)a3;
- (void)updateSnapshotCacheAndSnapshotActiveTab;
- (void)updateSnapshotCacheState;
- (void)updateSnapshotIdentifiers;
- (void)updateSnapshotsForTabHoverPreviewIfNeeded;
- (void)updateStartPageSnapshotIfNeededForTabDocument:(id)a3 currentSnapshotSize:(CGSize)a4;
- (void)updateTabBarAnimated:(BOOL)a3 keepingTabVisible:(id)a4;
- (void)updateTabOverviewItems;
- (void)updateTabViewsAnimatingTabBar:(BOOL)a3;
- (void)webViewDidFirstMeaningfulPaintForTabDocument:(id)a3;
- (void)willBeginDragSession:(id)a3;
- (void)willEndDragSession:(id)a3;
@end

@implementation TabCollectionViewManager

- (TabCollectionViewManager)init
{
  v30.receiver = self;
  v30.super_class = TabCollectionViewManager;
  v2 = [(TabCollectionViewManager *)&v30 init];
  if (v2)
  {
    v3 = +[TabSnapshotCache defaultSnapshotCache];
    snapshotCache = v2->_snapshotCache;
    v2->_snapshotCache = v3;

    v2->_snapshotsEnabled = 1;
    v5 = [MEMORY[0x277CBEB58] set];
    hiddenTabUUIDs = v2->_hiddenTabUUIDs;
    v2->_hiddenTabUUIDs = v5;

    objc_initWeak(&location, v2);
    v7 = objc_alloc(MEMORY[0x277D28D90]);
    v8 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v9 = [v7 initWithSiteMetadataManager:v8];
    iconPool = v2->_iconPool;
    v2->_iconPool = v9;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __32__TabCollectionViewManager_init__block_invoke;
    v27[3] = &unk_2781D8E30;
    objc_copyWeak(&v28, &location);
    [(SFTabIconPool *)v2->_iconPool setExistingIconProvider:v27];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __32__TabCollectionViewManager_init__block_invoke_2;
    v25[3] = &unk_2781D8E58;
    objc_copyWeak(&v26, &location);
    [(SFTabIconPool *)v2->_iconPool setExtensionIconProvider:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__TabCollectionViewManager_init__block_invoke_3;
    v23[3] = &unk_2781D8E80;
    objc_copyWeak(&v24, &location);
    [(SFTabIconPool *)v2->_iconPool setUrlProvider:v23];
    v11 = objc_alloc_init(MEMORY[0x277D28DB8]);
    snapshotPool = v2->_snapshotPool;
    v2->_snapshotPool = v11;

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __32__TabCollectionViewManager_init__block_invoke_4;
    v21[3] = &unk_2781D8EA8;
    objc_copyWeak(&v22, &location);
    [(SFTabSnapshotPool *)v2->_snapshotPool setContentProvider:v21];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __32__TabCollectionViewManager_init__block_invoke_5;
    v19 = &unk_2781D5598;
    objc_copyWeak(&v20, &location);
    [(SFTabSnapshotPool *)v2->_snapshotPool setSortedSnapshotIdentifiersDidChangeHandler:&v16];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
    v14 = v2;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)updateSnapshotCacheState
{
  v3 = [(TabCollectionViewManager *)self _snapshotCacheCapacity];

  [(TabCollectionViewManager *)self _updateSnapshotCacheStateWithCapacity:v3];
}

- (BOOL)_shouldUpdateSnapshotsForTabHoverPreview
{
  if (self->_snapshotsEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
    v4 = [WeakRetained effectiveTabBar];
    if (v4)
    {

LABEL_5:
      v6 = +[Application sharedApplication];
      v7 = [v6 hasPointerDevice];

      return v7;
    }

    v5 = objc_loadWeakRetained(&self->_tabBar);

    if (v5)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

- (BOOL)_canUpdateUnifiedBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  if (WeakRetained)
  {
    v4 = self->_tabBarItemsFixed == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateTabOverviewItems
{
  if (!self->_tabOverviewItemsFixed)
  {
    if (SFEnhancedTabOverviewEnabled())
    {
      tabSwitcherViewController = self->_tabSwitcherViewController;

      [(TabSwitcherViewController *)tabSwitcherViewController setNeedsApplyContentAnimated:1];
    }

    else
    {
      v4 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
      if (objc_opt_respondsToSelector())
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __50__TabCollectionViewManager_updateTabOverviewItems__block_invoke;
        aBlock[3] = &unk_2781D8F70;
        v5 = v4;
        v11 = v5;
        v6 = _Block_copy(aBlock);
        if ([(TabCollectionViewManager *)self _isPrivateBrowsingAndLocked])
        {
          v7 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v8 = [(TabCollectionViewManager *)self _tabCollectionItemsRemovingHiddenItems:1 outHiddenItems:0 outIsDragging:0 itemRetriever:v6];
          v7 = [v8 safari_partionedArrayUsingCondition:&__block_literal_global_42];
        }

        [v5 setItems:v7];
        if ([v5 presentationState])
        {
          [(TabCollectionViewManager *)self updateSnapshotIdentifiers];
        }

        WeakRetained = objc_loadWeakRetained(&self->_browserController);
        [WeakRetained updateTabViewPinchRecognizer];
      }
    }
  }
}

- (BOOL)isShowingTabView
{
  v2 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  v3 = [v2 presentationState] == 1 || objc_msgSend(v2, "presentationState") == 2;

  return v3;
}

- (BOOL)_canUpdateClassicBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  if (WeakRetained)
  {
    v4 = self->_tabBarItemsFixed == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)allSnapshotIdentifiers
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained normalAndPrivateTabs];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count") + 2}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) uuid];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [WeakRetained allTabGroups];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(TabCollectionViewManager *)self _blankSnapshotGroupIdentifierForTabGroup:*(*(&v19 + 1) + 8 * j)];
        [v5 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (void)_setUpTabOverview
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained makeTabOverview];
  tabThumbnailCollectionView = self->_tabThumbnailCollectionView;
  self->_tabThumbnailCollectionView = v4;

  [(TabThumbnailCollectionView *)self->_tabThumbnailCollectionView setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_tabSwitcherViewController, self->_tabThumbnailCollectionView);
  }

  v6 = objc_loadWeakRetained(&self->_dataSource);
  [v6 didSetUpTabOverview];

  [(TabCollectionViewManager *)self updateTabOverviewItems];

  [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:0];
}

- (TabDragDropInteractionController)tabDragDropController
{
  tabDragDropController = self->_tabDragDropController;
  if (!tabDragDropController)
  {
    v4 = [TabDocumentDropHandler alloc];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = [WeakRetained viewControllerToPresentFrom];
    v7 = [(TabDocumentDropHandler *)v4 initWithAlertPresentationViewController:v6];

    v8 = [[TabDragDropInteractionController alloc] initWithDataSource:self dropHandler:v7];
    v9 = self->_tabDragDropController;
    self->_tabDragDropController = v8;

    tabDragDropController = self->_tabDragDropController;
  }

  return tabDragDropController;
}

id __32__TabCollectionViewManager_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _contentForSnapshotWithIdentifier:v3];

  return v5;
}

id __32__TabCollectionViewManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _iconForTabWithUUID:v3];

  return v5;
}

id __32__TabCollectionViewManager_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _extensionIconForTabWithURL:v6 UUID:v5];

  return v8;
}

id __32__TabCollectionViewManager_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _urlForTabWithUUID:v3];

  return v5;
}

void __32__TabCollectionViewManager_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSnapshotIdentifiers];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_flushPendingSnapshotsCompletions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = TabCollectionViewManager;
  [(TabCollectionViewManager *)&v8 dealloc];
}

- (void)_didReceiveMemoryWarning:(id)a3
{
  [(TabCollectionViewManager *)self updateSnapshotIdentifiers];
  v4 = [(TabCollectionViewManager *)self _snapshotCacheCapacityWithSnapshotsEnabled:0];

  [(TabCollectionViewManager *)self _updateSnapshotCacheStateWithCapacity:v4];
}

- (void)setPrivateBrowsingEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_privateBrowsingEnabled != a3)
  {
    self->_privateBrowsingEnabled = a3;
    [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:a4];
    [(TabCollectionViewManager *)self updateTabOverviewItems];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained activeNonLibraryTab];
    [(TabCollectionViewManager *)self updateTabBarAnimated:0 keepingTabVisible:v6];
  }
}

- (BOOL)_isPrivateBrowsingAndLocked
{
  if (!self->_privateBrowsingEnabled)
  {
    return 0;
  }

  v2 = +[Application sharedApplication];
  v3 = [v2 isPrivateBrowsingLocked];

  return v3;
}

- (BOOL)_isTabHiddenWithUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained hiddenTabForExplanationView];
  v7 = [v6 uuid];
  if ([v4 isEqual:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableSet *)self->_hiddenTabUUIDs containsObject:v4];
  }

  return v8;
}

- (id)_hiddenCollectionViewTabs
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [WeakRetained currentTabs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TabCollectionViewManager__hiddenCollectionViewTabs__block_invoke;
  v9[3] = &unk_2781D5BC8;
  v9[4] = self;
  v6 = [v5 safari_filterObjectsUsingBlock:v9];
  v7 = [v4 initWithArray:v6];

  return v7;
}

uint64_t __53__TabCollectionViewManager__hiddenCollectionViewTabs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _isTabHiddenWithUUID:v3];

  return v4;
}

- (BOOL)tabItem:(id)a3 matchesSearchText:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 lastSearchTerm];
  v9 = [v8 isEqualToString:v7];

  v10 = [v6 title];
  v11 = [v6 titleForLastSearch];
  v12 = [v10 isEqualToString:v11];

  v13 = [v6 URLString];
  v14 = [v6 URLStringForLastSearch];
  v15 = [v13 isEqualToString:v14];

  if (v9 && v12 && v15)
  {
    LOBYTE(v16) = [v6 matchedLastSearch];
    goto LABEL_35;
  }

  if (([v7 isEqualToString:self->_lastSearchTerm] & 1) == 0)
  {
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = [v7 length];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke;
    v68[3] = &unk_2781D8ED0;
    v69 = v17;
    v19 = v17;
    [v7 enumerateSubstringsInRange:0 options:v18 usingBlock:{3, v68}];
    v20 = [v19 copy];
    searchTermWords = self->_searchTermWords;
    self->_searchTermWords = v20;
  }

  v22 = [v7 copy];
  lastSearchTerm = self->_lastSearchTerm;
  self->_lastSearchTerm = v22;

  v24 = [v6 title];
  v25 = [v6 URLString];
  [v6 setLastSearchTerm:v7];
  [v6 setURLStringForLastSearch:v25];
  [v6 setTitleForLastSearch:v24];
  v26 = [v24 localizedStandardContainsString:v7];
  v27 = v26;
  if (((v12 ^ 1 | v26) & 1) == 0)
  {
    v48 = [v6 titleWords];

    if (v48)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v28 = [MEMORY[0x277CBEB18] array];
    v29 = [v24 length];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke_2;
    v66[3] = &unk_2781D8ED0;
    v67 = v28;
    v30 = v28;
    [v24 enumerateSubstringsInRange:0 options:v29 usingBlock:{3, v66}];
    [v6 setTitleWords:v30];
  }

LABEL_10:
  if (v27)
  {
    goto LABEL_33;
  }

  if ([(NSArray *)self->_searchTermWords count])
  {
    v50 = v15;
    v51 = v25;
    v52 = v24;
    v53 = v7;
    v31 = [(NSArray *)self->_searchTermWords mutableCopy];
    v54 = v6;
    v32 = [v6 titleWords];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = self->_searchTermWords;
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v63;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v63 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v62 + 1) + 8 * i);
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v38 = v32;
          v39 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v59;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v59 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                if ([*(*(&v58 + 1) + 8 * j) safari_hasLocalizedCaseAndDiacriticInsensitivePrefix:v37])
                {
                  [v31 removeObject:v37];
                }
              }

              v40 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v40);
          }
        }

        v34 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v34);
    }

    v43 = [v31 count];
    v7 = v53;
    v6 = v54;
    v25 = v51;
    v24 = v52;
    v15 = v50;
    if (!v43)
    {
      goto LABEL_33;
    }
  }

  if (!v15 || ([v6 URLStringComponents], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    v45 = [v25 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:0 simplifiedStringOffset:0];
    v46 = [v45 componentsSeparatedByString:@"."];
    [v6 setURLStringComponents:v46];
  }

  if ([v25 localizedStandardContainsString:v7])
  {
LABEL_33:
    LOBYTE(v16) = 1;
    [v6 setMatchedLastSearch:1];
  }

  else
  {
    v49 = [v6 URLStringComponents];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke_3;
    v56[3] = &unk_2781D8EF8;
    v57 = v7;
    v16 = [v49 safari_containsObjectPassingTest:v56];

    [v6 setMatchedLastSearch:v16];
  }

LABEL_35:
  return v16;
}

- (void)_openTabFromNewTabButton
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TabCollectionViewManager__openTabFromNewTabButton__block_invoke;
  v4[3] = &unk_2781D4B18;
  v4[4] = self;
  [WeakRetained openNewTabWithCompletionHandler:v4];
}

void __52__TabCollectionViewManager__openTabFromNewTabButton__block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_215819000, v4, OS_LOG_TYPE_DEFAULT, "Open new tab via tab view button", v6, 2u);
  }

  if (a2)
  {
    v5 = [MEMORY[0x277D499B8] sharedLogger];
    [v5 didOpenNewBlankTabWithTrigger:2 tabCollectionViewType:{objc_msgSend(*(a1 + 32), "visibleTabCollectionViewType")}];
  }
}

- (id)_openNewTabInteraction
{
  objc_copyWeak(&to, &self->_browserController);
  v2 = [UserNavigationDropInteraction alloc];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TabCollectionViewManager__openNewTabInteraction__block_invoke;
  v5[3] = &unk_2781D8F20;
  objc_copyWeak(&v6, &to);
  v3 = [(UserNavigationDropInteraction *)v2 initWithOpensNewTab:1 tabOrder:1 navigationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&to);

  return v3;
}

void __50__TabCollectionViewManager__openNewTabInteraction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dispatchNavigationIntent:v3];
}

- (void)setTabThumbnailCollectionViewStyle:(int64_t)a3
{
  if (self->_tabThumbnailCollectionViewStyle != a3)
  {
    v11 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    self->_tabThumbnailCollectionViewStyle = a3;
    [v11 dismissAnimated:0];
    v6 = [v11 view];
    [v6 removeFromSuperview];

    [v11 setDelegate:0];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v8 = WeakRetained;
    if (self->_tabSwitcherViewController)
    {
      v9 = [WeakRetained rootViewController];
      [v9 tearDownTabSwitcherViewController];

      tabSwitcherViewController = self->_tabSwitcherViewController;
      self->_tabSwitcherViewController = 0;
    }

    if (a3 == 1)
    {
      [(TabCollectionViewManager *)self _setUpTabOverview];
    }

    [(TabCollectionViewManager *)self updateSnapshotCacheState];
  }
}

- (void)setTabBar:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tabBar, obj);
    v5 = [WeakRetained delegate];

    if (v5 == self)
    {
      [WeakRetained setDelegate:0];
    }

    v6 = [WeakRetained tabHoverPreviewController];
    [v6 setDelegate:0];

    v7 = [obj tabHoverPreviewController];
    [v7 setDelegate:self];

    [obj setDelegate:self];
    v8 = objc_loadWeakRetained(&self->_dataSource);
    v9 = [v8 activeNonLibraryTab];
    [(TabCollectionViewManager *)self updateTabBarAnimated:0 keepingTabVisible:v9];
  }
}

- (void)setTabBarManager:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tabBarManager, obj);
    [WeakRetained removeObserver:self];
    [obj addObserver:self];
  }
}

- (BOOL)hasTabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  v4 = [WeakRetained effectiveTabBar];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_tabBar);
    v5 = v6 != 0;
  }

  return v5;
}

- (int64_t)visibleTabCollectionViewType
{
  v3 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  v4 = [v3 presentationState];

  if (v4)
  {
    return 2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained != 0;
}

- (NSArray)tabCollectionViews
{
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 safari_addObjectUnlessNil:self->_tabThumbnailCollectionView];
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  [v3 safari_addObjectUnlessNil:WeakRetained];

  v5 = objc_loadWeakRetained(&self->_tabBarManager);
  v6 = [v5 effectiveTabBar];
  [v3 safari_addObjectUnlessNil:v6];

  v7 = [v3 copy];

  return v7;
}

- (id)tabCollectionViewForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_loadWeakRetained(&self->_tabBarManager);
      WeakRetained = [v6 effectiveTabBar];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)registerLibraryController:(id)a3
{
  v4 = a3;
  v5 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
  [v5 setDelegate:0];

  libraryController = self->_libraryController;
  self->_libraryController = v4;
  v7 = v4;

  v8 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];

  [v8 setDelegate:self];
}

- (id)_tabCollectionItemsRemovingHiddenItems:(BOOL)a3 outHiddenItems:(id)a4 outIsDragging:(BOOL *)a5 itemRetriever:(id)a6
{
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v13 = [WeakRetained currentTabs];
  v14 = v13;
  v16 = 0;
  if (self->_placeholderItem)
  {
    placeholderItemIndex = self->_placeholderItemIndex;
    if (placeholderItemIndex <= [v13 count] && self->_placeholderItemIsPrivate == self->_privateBrowsingEnabled)
    {
      v16 = 1;
    }
  }

  if ([v14 count])
  {
    v17 = [v14 firstObject];
    v11[2](v11, v17);
    v32 = v14;
    v18 = v11;
    v19 = WeakRetained;
    v20 = v10;
    v21 = a5;
    v23 = v22 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    a3 = v22;
    a5 = v21;
    v10 = v20;
    WeakRetained = v19;
    v11 = v18;
    v14 = v32;

    v16 &= isKindOfClass;
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __110__TabCollectionViewManager__tabCollectionItemsRemovingHiddenItems_outHiddenItems_outIsDragging_itemRetriever___block_invoke;
  v33[3] = &unk_2781D8F48;
  v38 = v16;
  v33[4] = self;
  v26 = v25;
  v34 = v26;
  v27 = v11;
  v36 = v27;
  v37 = a5;
  v28 = v10;
  v35 = v28;
  v39 = a3;
  [v14 enumerateObjectsUsingBlock:v33];
  if (v16)
  {
    v29 = self->_placeholderItemIndex;
    if (v29 == [v14 count])
    {
      [v26 addObject:self->_placeholderItem];
    }
  }

  v30 = [v26 copy];

  return v30;
}

void __110__TabCollectionViewManager__tabCollectionItemsRemovingHiddenItems_outHiddenItems_outIsDragging_itemRetriever___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 48) == a3)
    {
      [*(a1 + 40) addObject:*(v5 + 40)];
    }
  }

  v6 = (*(*(a1 + 56) + 16))();
  v7 = *(a1 + 32);
  v8 = [v11 uuid];
  LODWORD(v7) = [v7 _isTabHiddenWithUUID:v8];

  if (!v7)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    *v9 = 1;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v10 addObject:v6];
  }

  if ((*(a1 + 73) & 1) == 0)
  {
LABEL_19:
    if (*(a1 + 64) && [v6 dragState])
    {
      **(a1 + 64) = 1;
    }

    [*(a1 + 40) addObject:v6];
  }
}

- (void)scrollTabBarToActiveTabAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(TabCollectionViewManager *)self _canUpdateUnifiedBar])
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
    [WeakRetained scrollToActiveItemAnimated:v3];
  }

  if ([(TabCollectionViewManager *)self _canUpdateClassicBar])
  {
    v9 = objc_loadWeakRetained(&self->_tabBar);
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 activeTabDocument];
    v8 = [v7 tabBarItem];
    [v9 scrollToItem:v8 animated:v3];
  }
}

- (void)updateTabBarAnimated:(BOOL)a3 keepingTabVisible:(id)a4
{
  v4 = a3;
  v8 = a4;
  if ([(TabCollectionViewManager *)self _canUpdateUnifiedBar])
  {
    v6 = [v8 unifiedTabBarItem];
    [(TabCollectionViewManager *)self _updateUnifiedTabBarAnimated:v4 keepingTabVisibleForItem:v6];
  }

  if ([(TabCollectionViewManager *)self _canUpdateClassicBar])
  {
    v7 = [v8 tabBarItem];
    [(TabCollectionViewManager *)self _updateClassicTabBarAnimated:v4 keepingTabVisibleForItem:v7];
  }
}

- (void)_updateTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(TabCollectionViewManager *)self _canUpdateUnifiedBar])
    {
      [(TabCollectionViewManager *)self _updateUnifiedTabBarAnimated:v4 keepingTabVisibleForItem:v6];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(TabCollectionViewManager *)self _canUpdateClassicBar])
      {
        [(TabCollectionViewManager *)self _updateClassicTabBarAnimated:v4 keepingTabVisibleForItem:v6];
      }
    }
  }

  else
  {
    [(TabCollectionViewManager *)self updateTabBarAnimated:v4 keepingTabVisible:0];
  }
}

- (void)_updateClassicTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    if (self->_suppressTabBarAnimation)
    {
      v4 = 0;
    }

    else
    {
      v7 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
      v4 = [v7 presentationState] == 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v9 = objc_loadWeakRetained(&self->_dataSource);
  v10 = objc_loadWeakRetained(&self->_browserController);
  [v10 updateShowingTabBarAnimated:v4];

  v15 = 0;
  v11 = [(TabCollectionViewManager *)self _tabCollectionItemsRemovingHiddenItems:1 outHiddenItems:0 outIsDragging:&v15 itemRetriever:&__block_literal_global_34_0];
  [WeakRetained setDraggingItem:v15];
  v12 = [v11 safari_partionedArrayUsingCondition:&__block_literal_global_37];

  [WeakRetained layoutIfNeeded];
  [WeakRetained setAllowsScrollingPinnedItems:{objc_msgSend(v9, "shouldAllowScrollingPinnedItems")}];
  v13 = [WeakRetained items];
  v14 = [v13 isEqualToArray:v12];

  if (v14)
  {
    [WeakRetained updatePinnedItems];
  }

  else
  {
    [WeakRetained setItems:v12 animated:v4];
  }

  [WeakRetained scrollToItem:v6 animated:v4];
}

- (void)_updateUnifiedTabBarAnimated:(BOOL)a3 keepingTabVisibleForItem:(id)a4
{
  v4 = a3;
  v33 = a4;
  if (v4 && !self->_suppressTabBarAnimation)
  {
    v7 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    v6 = [v7 presentationState] == 0;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  v9 = objc_loadWeakRetained(&self->_dataSource);
  v10 = [v9 currentTabs];
  if ([v10 count] <= 1)
  {
    privateBrowsingEnabled = self->_privateBrowsingEnabled;

    if (privateBrowsingEnabled)
    {
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x277CBEB58] set];
LABEL_10:
  v13 = [(TabCollectionViewManager *)self _tabCollectionItemsRemovingHiddenItems:0 outHiddenItems:v12 outIsDragging:0 itemRetriever:&__block_literal_global_40_0];
  v14 = [v12 copy];
  if (v14)
  {
    [WeakRetained setHiddenItems:v14];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB98] set];
    [WeakRetained setHiddenItems:v15];
  }

  v16 = [v9 activeNonLibraryTab];
  v17 = [v16 unifiedTabBarItem];

  v18 = objc_loadWeakRetained(&self->_browserController);
  if ([v18 favoritesFieldShouldBeExpanded])
  {
    v19 = 1;
  }

  else
  {
    v20 = [v18 tabController];
    [v20 activeTabDocument];
    v32 = v17;
    v21 = v9;
    v22 = v12;
    v23 = WeakRetained;
    v24 = v13;
    v26 = v25 = v6;
    v27 = [v26 sfScribbleControllerIfLoaded];
    v19 = [v27 isScribbling];

    v6 = v25;
    v13 = v24;
    WeakRetained = v23;
    v12 = v22;
    v9 = v21;
    v17 = v32;
  }

  v28 = [objc_alloc(MEMORY[0x277D28EA8]) initWithItems:v13 activeItem:v17 activeItemIsExpanded:v19 allowsScrollingPinnedItems:{objc_msgSend(v9, "shouldAllowScrollingPinnedItems")}];
  v29 = v33;
  if (!v33)
  {
    if ([WeakRetained displayMode] == 2 && (objc_msgSend(v18, "rootViewController"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isPerformingSizeTransition"), v30, v31))
    {
      v29 = v17;
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = v29;
  [WeakRetained setItemArrangement:v28 animated:v6 keepingItemVisible:v29];
  [v18 updateShowingTabBarAnimated:v6];
}

- (void)updateTabViewsAnimatingTabBar:(BOOL)a3
{
  [(TabCollectionViewManager *)self updateTabBarAnimated:a3 keepingTabVisible:0];

  [(TabCollectionViewManager *)self updateTabOverviewItems];
}

- (BOOL)_shouldShowExplanationView
{
  if (!self->_privateBrowsingEnabled)
  {
    return 0;
  }

  v3 = +[Application sharedApplication];
  v4 = [v3 isPrivateBrowsingLocked];

  if (v4)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained currentTabs];
  if ([v7 count] <= 1)
  {
    v8 = [v7 firstObject];
    v9 = [WeakRetained hiddenTabForExplanationView];
    v5 = v8 == v9;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateExplanationViewVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if (objc_opt_respondsToSelector())
  {
    [v5 setShowsPrivateBrowsingExplanationView:-[TabCollectionViewManager _shouldShowExplanationView](self animated:{"_shouldShowExplanationView"), v3}];
  }
}

- (void)tabCollectionView:(id)a3 didSelectItem:(id)a4
{
  v21 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  v8 = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v8 activeNonLibraryTab];
  v10 = [WeakRetained inlineTabBar];
  if (v10 == v21)
  {
    v11 = [v9 unifiedTabBarItem];

    if (v11 == v6)
    {
      v13 = objc_loadWeakRetained(&self->_browserController);
      [v13 unifiedTabBarActiveTabWasTapped];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [v6 UUID];
  v13 = [v8 tabWithUUID:v12];

  if (v13)
  {
    if (self->_privateBrowsingEnabled)
    {
      v14 = [v8 hiddenTabForExplanationView];

      if (v13 == v14)
      {
        [v8 clearHiddenTabForExplanationView];
        [(TabCollectionViewManager *)self updateTabOverviewItems];
      }
    }

    [v8 setActiveTab:v13];
    v15 = objc_loadWeakRetained(&self->_tabBar);
    if (v15 == v21 || ([WeakRetained effectiveTabBar], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == v21))
    {
      [Application postTestNotificationName:@"TabBarDidSwitchTabNotification" object:self];
    }

    else
    {
      v17 = [v9 tabBarItem];
      [v15 scrollToItem:v17 animated:0];

      v18 = [v9 unifiedTabBarItem];
      if ([WeakRetained displayMode] == 2)
      {
        v19 = [v18 secondaryItem];

        v18 = v19;
      }

      v20 = [WeakRetained effectiveTabBar];
      [v20 scrollToItem:v18 animated:0];
    }
  }

LABEL_16:
}

- (BOOL)tabCollectionView:(id)a3 canCloseItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v7 UUID];
  v10 = [WeakRetained tabWithUUID:v9];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = objc_loadWeakRetained(&self->_tabBar);
  v12 = v11;
  if (v11 == v6)
  {

LABEL_6:
    v15 = objc_loadWeakRetained(&self->_tabBarManager);
    v16 = [v15 inlineTabBar];
    v17 = v16;
    if (v16 == v6)
    {
      v18 = [v15 displayMode];

      if (v18 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v19 = [v15 standaloneTabBar];
    v20 = v19;
    if (v19 != v6)
    {

LABEL_13:
      v24 = [v7 UUID];
      v14 = [WeakRetained canCloseTabWithUUID:v24];

      goto LABEL_14;
    }

    v21 = [v6 itemArrangement];
    v22 = [v21 items];
    v23 = [v22 count];

    if (v23 != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = [v7 isPinned];

  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14 = 0;
LABEL_15:

  return v14;
}

- (void)tabCollectionView:(id)a3 closeItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [v5 UUID];

  v7 = [WeakRetained tabWithUUID:v6];

  if (v7)
  {
    [WeakRetained closeTab:v7 animated:1];
  }

  else
  {
    [(TabCollectionViewManager *)self updateTabOverviewItems];
    [(TabCollectionViewManager *)self updateTabBarAnimated:1 keepingTabVisible:0];
  }
}

- (void)tabCollectionView:(id)a3 item:(id)a4 didProduceNavigationIntent:(id)a5
{
  v11 = a5;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v7 UUID];

  [WeakRetained insertTabWithUUIDForNavigation:v9];
  if (v11)
  {
    v10 = objc_loadWeakRetained(&self->_browserController);
    [v10 dispatchNavigationIntent:v11];
  }
}

- (void)tabCollectionViewWillPresent:(id)a3
{
  v4 = a3;
  [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabCollectionViewWillPresent:v4];

  [(TabCollectionViewManager *)self updateSnapshotCacheAndSnapshotActiveTab];
  v5 = [WeakRetained rootViewController];
  v6 = [v5 statusBarView];
  [v6 clearStatus];
}

- (void)tabCollectionViewWillDismiss:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained hiddenTabForExplanationView];
  if (v5)
  {
    privateBrowsingEnabled = self->_privateBrowsingEnabled;

    if (privateBrowsingEnabled)
    {
      [WeakRetained clearHiddenTabForExplanationView];
      [(TabCollectionViewManager *)self updateTabOverviewItems];
    }
  }

  v7 = objc_loadWeakRetained(&self->_browserController);
  [v7 tabCollectionViewWillDismiss:v4];
}

- (void)tabCollectionViewDidDismiss:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained clearTabsClosedWhileTabViewPresentedCount];
  [(TabCollectionViewManager *)self setShouldDeferSnapshotRequest:0];
  [(TabCollectionViewManager *)self updateSnapshotCacheState];
  v5 = objc_loadWeakRetained(&self->_browserController);
  [v5 tabCollectionViewDidDismiss:v4];
}

- (void)tabCollectionViewDidCancelDismissal:(id)a3
{
  [(TabCollectionViewManager *)self setShouldDeferSnapshotRequest:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained didCancelDismissingTabOverview];

  [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:1];
}

- (BOOL)tabCollectionViewCanDismiss:(id)a3
{
  v4 = [(TabCollectionViewManager *)self _isPrivateBrowsingAndLocked];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if ([WeakRetained activeWindowIsForeground] && !SBSGetScreenLockStatus())
    {
      [WeakRetained authenticateToUnlockPrivateBrowsing];
    }
  }

  return !v4;
}

- (id)tabCollectionView:(id)a3 borrowContentViewControllerForItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained activeTabDocument];

  v8 = [v5 UUID];

  v9 = [v7 uuid];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_browserController);
    v12 = [v11 borrowContentViewControllerForTab:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tabCollectionView:(id)a3 relinquishBorrowedContentViewController:(id)a4 forItem:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v6 UUID];

  v10 = [WeakRetained tabDocumentWithUUID:v8];

  v9 = objc_loadWeakRetained(&self->_browserController);
  [v9 reinsertBorrowedContentViewForTab:v10];
}

- (BOOL)tabCollectionView:(id)a3 item:(id)a4 matchesSearchText:(id)a5
{
  v7 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = [v8 UUID];

  v11 = [WeakRetained tabWithUUID:v10];

  if (v11)
  {
    v12 = [(TabCollectionViewManager *)self tabItem:v11 matchesSearchText:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tabBar:(id)a3 toggleMediaStateMutedForItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [v5 UUID];

  v8 = [WeakRetained tabDocumentWithUUID:v7];

  [v8 toggleMediaStateMuted];
}

- (void)tabBarManager:(id)a3 didCreateTabBar:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  v6 = [v5 tabHoverPreviewController];

  [v6 setDelegate:self];
}

- (id)_iconForTabWithUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabController];
  v7 = [v6 iconForTabUUID:v4];

  return v7;
}

- (id)_extensionIconForTabWithURL:(id)a3 UUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [v6 UUIDString];

  v10 = [WeakRetained tabGroupRelatedToTabWithUUID:v9];

  v11 = objc_loadWeakRetained(&self->_browserController);
  v12 = [v11 tabGroupManager];
  v13 = [v10 profileIdentifier];
  v14 = [v12 profileWithIdentifier:v13];

  v15 = +[Application sharedApplication];
  v16 = [v14 identifierForExtensions];
  v17 = [v15 webExtensionsControllerForProfileServerID:v16];

  v18 = [v7 host];

  v19 = [v17 webExtensionForBaseURIHost:v18];
  v20 = [v19 icon];

  return v20;
}

- (id)_urlForTabWithUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabWithUUID:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
  }

  else
  {
    v9 = [v4 UUIDString];
    v10 = [WeakRetained wbTabWithUUID:v9];
    v8 = [v10 url];
  }

  return v8;
}

- (void)setSnapshotsEnabled:(BOOL)a3
{
  if (self->_snapshotsEnabled == !a3)
  {
    self->_snapshotsEnabled = a3;
    if (a3)
    {
      postponedSnapshotInvalidationBlock = self->_postponedSnapshotInvalidationBlock;
      if (postponedSnapshotInvalidationBlock)
      {
        postponedSnapshotInvalidationBlock[2](postponedSnapshotInvalidationBlock, a2);
        v6 = self->_postponedSnapshotInvalidationBlock;
        self->_postponedSnapshotInvalidationBlock = 0;
      }
    }

    [(TabCollectionViewManager *)self updateSnapshotCacheState];
  }
}

- (void)setShouldDeferSnapshotRequest:(BOOL)a3
{
  if (self->_shouldDeferSnapshotRequest != a3)
  {
    self->_shouldDeferSnapshotRequest = a3;
    if (!a3)
    {
      v4 = +[TabSnapshotCache defaultSnapshotCache];
      [v4 requestNextSnapshotIfNecessary];
    }
  }
}

- (void)requestSnapshotForTabDocument:(id)a3 completion:(id)a4
{
  v28 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained rootViewController];
    v10 = [v9 view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    v15 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    v17 = snapshotSizeForSuggestedSize(v15, v12, v14);
    v18 = v16;
    if (v17 == 1.79769313e308 && v16 == 1.79769313e308)
    {
      v6[2](v6, 0, 1);
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_dataSource);
      v21 = [v20 activeNonLibraryTab];

      v22 = +[TabSnapshotCache defaultSnapshotCache];
      v23 = [v28 uuid];
      v24 = [v21 uuid];
      v25 = [v22 isIdentifier:v23 memberOfSameGroupAsIdentifier:v24];

      if (v25)
      {
        v26 = v21;

        v28 = v26;
      }

      if ([v15 prefersTransparentBorderPadding])
      {
        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      [v8 snapshotTabDocument:v28 size:v27 options:v6 completion:{v17, v18}];
    }
  }

  else
  {
    v6[2](v6, 0, 2);
  }
}

- (id)cachedContentImageForTabWithUUID:(id)a3 allowScaledImage:(BOOL)a4
{
  v6 = [(TabSnapshotCache *)self->_snapshotCache snapshotWithIdentifier:a3];
  v7 = [v6 CGImage];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v9 = [WeakRetained rootViewController];
    v10 = [v9 view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v17 = v16;

    if (a4 || CGImageGetWidth(v7) / (v12 * v17) >= 0.5 && CGImageGetHeight(v7) / (v14 * v17) >= 0.5)
    {
      Width = CGImageGetWidth(v7);
      v22.size.height = CGImageGetHeight(v7);
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = Width;
      v23 = CGRectInset(v22, 1.0, 1.0);
      v23.origin.y = v23.origin.y + 200.0;
      v23.size.height = v23.size.height + -200.0;
      v19 = CGImageCreateWithImageInRect(v7, v23);
      v7 = [MEMORY[0x277D755B8] imageWithCGImage:v19];
      CGImageRelease(v19);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_updateSnapshotCacheStateWithCapacity:(unint64_t)a3
{
  v5 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([v5 presentationState])
  {

LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v7 = [WeakRetained shouldSnapshotActiveTab];

  if ((v7 & 1) != 0 || self->_flushPendingSnapshots || self->_shouldUpdateSnapshotsTemporarily)
  {
    goto LABEL_6;
  }

  v8 = [(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview];
LABEL_7:
  [(TabSnapshotCache *)self->_snapshotCache setUpdating:self->_snapshotsEnabled && v8 forDelegate:self];
  snapshotCache = self->_snapshotCache;

  [(TabSnapshotCache *)snapshotCache setCapacity:a3 forDelegate:self];
}

- (id)_blankSnapshotGroupIdentifierForTabGroup:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D28F08] settings];
  if ([v4 isSyncable])
  {
    v6 = [v4 uuid];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 isPrivateBrowsing];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v9 = [WeakRetained UUID];

  v10 = [v5 blankSnapshotGroupIdentifierForPrivateBrowsing:v7 syncableTabGroupUUID:v6 forWindowWithUUID:v9];
  if (!v10)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    [v5 setBlankSnapshotGroupIdentifier:v10 forPrivateBrowsing:v7 syncableTabGroupUUID:v6 forWindowWithUUID:v9];
  }

  return v10;
}

- (void)updateSnapshotIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  snapshotCache = self->_snapshotCache;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke;
  v6[3] = &unk_2781D4C88;
  v6[4] = self;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [(TabSnapshotCache *)snapshotCache performBatchUpdatesWithBlock:v6];
}

void __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke_2;
  aBlock[3] = &unk_2781D9018;
  v3 = v2;
  v4 = *(a1 + 32);
  v54 = v3;
  v82 = v3;
  v83 = v4;
  v5 = _Block_copy(aBlock);
  v56 = [*(a1 + 40) activeTabGroup];
  v6 = [*(a1 + 32) _blankSnapshotGroupIdentifierForTabGroup:?];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v60 = a1;
  v7 = [*(a1 + 32) _hiddenCollectionViewTabs];
  v8 = [v7 countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        v13 = [v12 uuid];
        v5[2](v5, v13, [v12 isShowingSystemStartPage], v6);
      }

      v9 = [v7 countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v9);
  }

  if (SFEnhancedTabOverviewEnabled() && ([*(v60 + 32) tabThumbnailCollectionView], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "presentationState"), v14, v15))
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v16 = v60;
    v17 = [*(*(v60 + 32) + 216) sortedSnapshotIdentifiers];
    v18 = [v17 countByEnumeratingWithState:&v73 objects:v86 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v74;
      do
      {
        v21 = 0;
        obj = v19;
        do
        {
          if (*v74 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v73 + 1) + 8 * v21);
          v23 = [*(v16 + 32) tabWithUUID:v22];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 uuid];
            v5[2](v5, v25, [v24 isShowingSystemStartPage], v6);
          }

          else
          {
            v26 = *(v16 + 40);
            [v22 UUIDString];
            v27 = v20;
            v29 = v28 = v17;
            v25 = [v26 wbTabWithUUID:v29];

            v30 = *(v16 + 40);
            v31 = [v25 uuid];
            v32 = [v30 tabGroupRelatedToTabWithUUID:v31];

            v33 = [*(v60 + 32) _blankSnapshotGroupIdentifierForTabGroup:v32];
            v5[2](v5, v22, [v25 isBlank], v33);

            v16 = v60;
            v17 = v28;
            v20 = v27;
            v19 = obj;
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v73 objects:v86 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v16 = v60;
    v34 = *(v60 + 32);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke_3;
    v70[3] = &unk_2781D9040;
    v72 = v5;
    v71 = v6;
    [v34 _enumerateTabsOrderedByVisibility:v70];

    v17 = v72;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obja = [*(v16 + 40) tabGroups];
  v35 = [obja countByEnumeratingWithState:&v66 objects:v85 count:16];
  v36 = v56;
  if (v35)
  {
    v37 = v35;
    v38 = *v67;
    v55 = *v67;
    do
    {
      v39 = 0;
      v57 = v37;
      do
      {
        if (*v67 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v61 = v39;
        v40 = *(*(&v66 + 1) + 8 * v39);
        v41 = [v40 uuid];
        v42 = [v36 uuid];
        v43 = [v41 isEqual:v42];

        if ((v43 & 1) == 0)
        {
          v44 = [*(v60 + 32) _blankSnapshotGroupIdentifierForTabGroup:v40];

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v45 = [v40 tabs];
          v46 = [v45 countByEnumeratingWithState:&v62 objects:v84 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v63;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v63 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v62 + 1) + 8 * j);
                v51 = objc_alloc(MEMORY[0x277CCAD78]);
                v52 = [v50 uuid];
                v53 = [v51 initWithUUIDString:v52];
                v5[2](v5, v53, [v50 isBlank], v44);
              }

              v47 = [v45 countByEnumeratingWithState:&v62 objects:v84 count:16];
            }

            while (v47);
          }

          v6 = v44;
          v38 = v55;
          v36 = v56;
          v37 = v57;
        }

        v39 = v61 + 1;
      }

      while (v61 + 1 != v37);
      v37 = [obja countByEnumeratingWithState:&v66 objects:v85 count:16];
    }

    while (v37);
  }

  [*(*(v60 + 32) + 80) setIdentifiersToCache:v54 forDelegate:?];
}

void __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
    v8 = *(*(a1 + 40) + 80);
    if (a3)
    {
      v9 = [v8 groupIdentifierForSnapshotWithIdentifier:v11];
      v10 = [v9 isEqual:v7];

      if ((v10 & 1) == 0)
      {
        [*(*(a1 + 40) + 80) addIdentifier:v11 toGroupWithIdentifier:v7];
        [*(*(a1 + 40) + 216) contentDidChangeForSnapshotsWithIdentifier:v11];
      }
    }

    else
    {
      [v8 removeIdentifier:v11 fromGroupWithIdentifier:v7];
    }
  }
}

void __53__TabCollectionViewManager_updateSnapshotIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v4 uuid];
  v5 = [v4 isShowingSystemStartPage];

  (*(v3 + 16))(v3, v6, v5, *(a1 + 32));
}

- (void)_enumerateTabsOrderedByVisibility:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([v6 presentationState])
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__TabCollectionViewManager__enumerateTabsOrderedByVisibility___block_invoke;
    v30[3] = &unk_2781D9068;
    v32 = v4;
    v31 = WeakRetained;
    v7 = v4;
    [v6 enumerateItemsOrderedByVisibility:v30];

    v8 = v32;
  }

  else
  {
    v9 = [WeakRetained currentTabs];
    v8 = [WeakRetained activeNonLibraryTab];
    v10 = [v9 indexOfObject:v8];
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if ([v9 count] >= 2)
    {
      v13 = [v9 lastObject];

      if (v8 == v13)
      {
        v11 = 0;
      }

      else
      {
        v14 = [v9 firstObject];

        if (v8 == v14)
        {
          v11 = [v9 count] - 1;
        }

        else
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __62__TabCollectionViewManager__enumerateTabsOrderedByVisibility___block_invoke_2;
    v25 = &unk_2781D9090;
    v27 = v4;
    v28 = v11;
    v29 = v12;
    v7 = v9;
    v26 = v7;
    v15 = v4;
    v16 = _Block_copy(&v22);
    if ([(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview:v22])
    {
      v17 = objc_loadWeakRetained(&self->_tabBar);
      v18 = objc_loadWeakRetained(&self->_tabBarManager);
      v19 = [v18 effectiveTabBar];

      v20 = v19;
      if ((v19 || (v20 = v17, v21 = v12, v17)) && (v21 = [v20 indexOfCenterItem], v21 == 0x7FFFFFFFFFFFFFFFLL) || v21 >= objc_msgSend(v7, "count"))
      {
        v21 = v12;
      }

      [v7 safari_enumerateOutwardFromIndex:v12 otherIndex:v21 usingBlock:v16];
    }

    else
    {
      [v7 safari_enumerateOutwardFromIndex:v12 usingBlock:v16];
    }
  }
}

void __62__TabCollectionViewManager__enumerateTabsOrderedByVisibility___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) tabWithUUID:a2];
  (*(v2 + 16))(v2, v3);
}

void __62__TabCollectionViewManager__enumerateTabsOrderedByVisibility___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 48) != a3)
  {
    v8 = v5;
    (*(*(a1 + 40) + 16))();
    v5 = v8;
    if (*(a1 + 48) != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 56) == a3)
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) objectAtIndexedSubscript:?];
      (*(v6 + 16))(v6, v7);

      v5 = v8;
    }
  }
}

- (void)updateSnapshotCacheAndSnapshotActiveTab
{
  snapshotCache = self->_snapshotCache;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__TabCollectionViewManager_updateSnapshotCacheAndSnapshotActiveTab__block_invoke;
  v3[3] = &unk_2781D4D40;
  v3[4] = self;
  [(TabSnapshotCache *)snapshotCache performBatchUpdatesWithBlock:v3];
}

void __67__TabCollectionViewManager_updateSnapshotCacheAndSnapshotActiveTab__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSnapshotCacheState];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  if (![WeakRetained avoidSnapshotOfActiveTabIfPossible] || objc_msgSend(WeakRetained, "shouldSnapshotActiveTab"))
  {
    [WeakRetained setNeedsSnapshotUpdateForActiveTab];
  }
}

- (void)updateStartPageSnapshotIfNeededForTabDocument:(id)a3 currentSnapshotSize:(CGSize)a4
{
  v5 = a3;
  if ([v5 isShowingSystemStartPage])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained windowSize];
    v8 = v7;
    v10 = v9;

    v11 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    snapshotSizeForSuggestedSize(v11, v8, v10);
    _SFScreenScale();
    if ((_SFEqualWithEpsilon() & 1) == 0)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __94__TabCollectionViewManager_updateStartPageSnapshotIfNeededForTabDocument_currentSnapshotSize___block_invoke;
      v12[3] = &unk_2781D4C88;
      v12[4] = self;
      v13 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }
}

void __94__TabCollectionViewManager_updateStartPageSnapshotIfNeededForTabDocument_currentSnapshotSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 80);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __94__TabCollectionViewManager_updateStartPageSnapshotIfNeededForTabDocument_currentSnapshotSize___block_invoke_2;
  v4[3] = &unk_2781D4C88;
  v4[4] = v2;
  v5 = v1;
  [v3 performBatchUpdatesWithBlock:v4];
}

uint64_t __94__TabCollectionViewManager_updateStartPageSnapshotIfNeededForTabDocument_currentSnapshotSize___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidateSnapshotForTab:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 flushPendingSnapshotsWithCompletion:0];
}

- (void)_temporarilyUpdateSnapshotsForTabDocument:(id)a3
{
  v4 = a3;
  v5 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([v5 presentationState])
  {
  }

  else
  {
    v6 = [v4 contentIsReadyForSnapshot];

    if (v6)
    {
      self->_shouldUpdateSnapshotsTemporarily = 1;
      snapshotCache = self->_snapshotCache;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __70__TabCollectionViewManager__temporarilyUpdateSnapshotsForTabDocument___block_invoke;
      v8[3] = &unk_2781D4C88;
      v8[4] = self;
      v9 = v4;
      [(TabSnapshotCache *)snapshotCache performBatchUpdatesWithBlock:v8];
    }
  }
}

uint64_t __70__TabCollectionViewManager__temporarilyUpdateSnapshotsForTabDocument___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateSnapshotCacheState];
  v2 = *(a1 + 40);

  return [v2 setNeedsNewTabSnapshot];
}

- (id)_contentForSnapshotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TabSnapshotCache *)self->_snapshotCache snapshotWithIdentifier:v4];
  v6 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:v4];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = [WeakRetained activeTabDocument];
    v9 = [v8 uuid];
    v10 = [v4 isEqual:v9];

    v11 = 0.0;
    if (v10)
    {
      v12 = objc_loadWeakRetained(&self->_browserController);
      v13 = [v12 rootViewController];
      [v13 bannerHeightIncludedInSnapshot];
      v11 = v14;
    }

    v15 = objc_alloc(MEMORY[0x277D28DA0]);
    v16 = [(TabSnapshotCache *)self->_snapshotCache hasValidSnapshotWithIdentifier:v4];
    [v6 horizontalObscuredPercentage];
    v21 = [v15 initWithImage:v5 bannerHeight:v16 topBackdropHeight:v11 isValid:200.0 horizontalObscuredPercentage:{v17, v18, v19, v20}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)clearSnapshotCache
{
  snapshotCache = self->_snapshotCache;
  v4 = [MEMORY[0x277CBEB70] orderedSet];
  [(TabSnapshotCache *)snapshotCache setIdentifiersToCache:v4 forDelegate:self];

  v5 = self->_snapshotCache;
  self->_snapshotCache = 0;
}

- (void)invalidateSnapshotForTab:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_snapshotsEnabled && self->_postponedSnapshotInvalidationCondition && self->_snapshotInvalidationIsPostponed)
  {
    v6 = _Block_copy(self->_postponedSnapshotInvalidationBlock);
    v7 = _Block_copy(self->_postponedSnapshotInvalidationCondition);
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__TabCollectionViewManager_invalidateSnapshotForTab___block_invoke;
    aBlock[3] = &unk_2781D90B8;
    v21 = v6;
    v8 = v6;
    objc_copyWeak(&v23, &location);
    v22 = v7;
    v20 = v5;
    v9 = v7;
    v10 = _Block_copy(aBlock);
    postponedSnapshotInvalidationBlock = self->_postponedSnapshotInvalidationBlock;
    self->_postponedSnapshotInvalidationBlock = v10;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    snapshotCache = self->_snapshotCache;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__TabCollectionViewManager_invalidateSnapshotForTab___block_invoke_2;
    v16[3] = &unk_2781D4C88;
    v13 = v4;
    v17 = v13;
    v18 = self;
    [(TabSnapshotCache *)snapshotCache performBatchUpdatesWithBlock:v16];
    snapshotPool = self->_snapshotPool;
    v15 = [v13 uuid];
    [(SFTabSnapshotPool *)snapshotPool contentDidChangeForSnapshotsWithIdentifier:v15];
  }
}

void __53__TabCollectionViewManager_invalidateSnapshotForTab___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = (*(*(a1 + 48) + 16))();
    WeakRetained = v5;
    if (v4)
    {
      [v5 invalidateSnapshotForTab:*(a1 + 32)];
      WeakRetained = v5;
    }
  }
}

void __53__TabCollectionViewManager_invalidateSnapshotForTab___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isBlank] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 192));
    v3 = [WeakRetained tabGroupManager];
    v4 = [*(a1 + 32) wbTab];
    v5 = [v4 tabGroupUUID];
    v6 = [v3 tabGroupWithUUID:v5];

    v7 = *(*(a1 + 40) + 80);
    v8 = [*(a1 + 32) uuid];
    v9 = [*(a1 + 40) _blankSnapshotGroupIdentifierForTabGroup:v6];
    [v7 removeIdentifier:v8 fromGroupWithIdentifier:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(*(a1 + 40) + 80);
  v12 = [v10 uuid];
  [v11 invalidateSnapshotWithIdentifier:v12];
}

- (void)removeSnapshotForTabWithUUID:(id)a3
{
  [(TabSnapshotCache *)self->_snapshotCache removeSnapshotWithIdentifier:a3];

  [(TabCollectionViewManager *)self _updateTabSnapshotsAnimated:1];
}

- (void)_updateTabSnapshotsWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained normalAndPrivateTabs];
  v8 = v7;
  v25 = WeakRetained;
  v26 = v5;
  v24 = v7;
  if (v5)
  {
    v9 = [WeakRetained tabWithUUID:v5];
    if (v9 && [v8 containsObject:v9])
    {
      v32[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v7;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 uuid];
        v18 = [(TabCollectionViewManager *)self cachedContentImageForTabWithUUID:v17 allowScaledImage:1];

        if (v18)
        {
          v19 = [v16 uuid];
          v20 = [(CollectionViewTab *)self->_tabShowingPreview uuid];
          if ([v19 isEqual:v20])
          {
            v21 = [v16 isActive];

            if (v21)
            {
              goto LABEL_18;
            }

            v22 = [v16 uuid];
            v19 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:v22];

            v23 = objc_loadWeakRetained(&self->_browserController);
            v20 = [v23 tabHoverPreview];

            [v20 setSnapshotImage:v18 metadata:v19];
          }
        }

LABEL_18:
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  if (v26)
  {
    [(SFTabSnapshotPool *)self->_snapshotPool contentDidChangeForSnapshotsWithIdentifier:v26];
  }
}

- (void)flushPendingSnapshotsWithCompletion:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_flushPendingSnapshots)
  {
    self->_flushPendingSnapshots = 1;
    [(TabCollectionViewManager *)self updateSnapshotCacheState];
  }

  if (v4)
  {
    snapshotCache = self->_snapshotCache;
    if (snapshotCache && ![(TabSnapshotCache *)snapshotCache isFinishedUpdating])
    {
      flushPendingSnapshotsCompletions = self->_flushPendingSnapshotsCompletions;
      p_flushPendingSnapshotsCompletions = &self->_flushPendingSnapshotsCompletions;
      v8 = _Block_copy(v4);
      v9 = [(NSArray *)flushPendingSnapshotsCompletions arrayByAddingObject:v8];
      if (v9)
      {
        objc_storeStrong(p_flushPendingSnapshotsCompletions, v9);
      }

      else
      {
        v10 = _Block_copy(v4);
        v13[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        v12 = *p_flushPendingSnapshotsCompletions;
        *p_flushPendingSnapshotsCompletions = v11;
      }
    }

    else
    {
      (*(v4 + 2))(v4, 1);
    }
  }
}

- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5
{
  v9 = a5;
  v7 = [(TabCollectionViewManager *)self snapshottableTabDocumentForIdentifier:a4];
  if ([v7 inElementFullscreen])
  {
    v8 = v9[2];
  }

  else
  {
    if (v7)
    {
      [(TabCollectionViewManager *)self requestSnapshotForTabDocument:v7 completion:v9];
      goto LABEL_7;
    }

    v8 = v9[2];
  }

  v8();
LABEL_7:
}

- (id)snapshottableTabDocumentForIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabDocumentWithUUID:v4];
  if (!v6)
  {
LABEL_6:
    v9 = +[(WBReusableTabManager *)ReusableTabManager];
    v10 = [v9 reusableTabDocumentWithUUID:v4];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_browserController);
      v12 = [v11 tabGroupManager];

      v13 = [v10 uuidString];
      v14 = [v12 tabWithUUID:v13];

      if (v14)
      {
        v15 = [v14 tabGroupUUID];
        v16 = [v12 tabGroupWithUUID:v15];
      }

      else
      {
        v16 = 0;
      }

      v17 = [v10 uuid];
      v18 = [v17 UUIDString];
      v19 = [v16 tabWithUUID:v18];

      if (v19)
      {
        v6 = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  v7 = [WeakRetained currentTabs];
  if (([v7 containsObject:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [v6 isClosed];

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_15:

  return v6;
}

- (BOOL)tabSnapshotCache:(id)a3 canAcceptRequestForIdentifier:(id)a4
{
  v4 = [(TabCollectionViewManager *)self snapshottableTabDocumentForIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isHibernated] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)tabSnapshotCacheDidFinishUpdating:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  self->_flushPendingSnapshots = 0;
  self->_shouldUpdateSnapshotsTemporarily = 0;
  v4 = self->_flushPendingSnapshotsCompletions;
  flushPendingSnapshotsCompletions = self->_flushPendingSnapshotsCompletions;
  self->_flushPendingSnapshotsCompletions = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(TabCollectionViewManager *)self updateSnapshotCacheState];
}

- (unint64_t)_snapshotCacheCapacityWithSnapshotsEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained viewControllerToPresentFrom];
  v7 = [v6 viewIfLoaded];

  if (v7)
  {
    v8 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 traitCollection];
    v18 = [v8 estimatedSnapshotsPerPageForBounds:v17 withTraitCollection:{v10, v12, v14, v16}];

    if ([v8 presentationState])
    {
      if (v3)
      {
        if (+[Application systemMemorySize]> 0x40000000)
        {
          v18 *= 2;
        }

        else
        {
          v18 = (v18 * 1.5);
        }
      }
    }

    else if (v3)
    {
      v19 = objc_loadWeakRetained(&self->_tabBar);
      v20 = [(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview];
      v21 = v20;
      if (v19 && v20)
      {
        v18 += [v19 maxNumberOfVisibleTabs];
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_tabBarManager);
        v23 = [v22 effectiveTabBar];

        if (v23 != 0 && v21)
        {
          v18 += [v23 maximumNumberOfVisibleItems];
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)updateSnapshotsForTabHoverPreviewIfNeeded
{
  if ([(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview])
  {
    v3 = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    v4 = [v3 presentationState];

    if (!v4)
    {

      [(TabCollectionViewManager *)self updateSnapshotIdentifiers];
    }
  }
}

- (void)dismissTabHoverPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v4 = [WeakRetained tabHoverPreviewController];
  [v4 dismiss];

  v5 = objc_loadWeakRetained(&self->_tabBarManager);
  v6 = [v5 effectiveTabBar];
  v7 = [v6 tabHoverPreviewController];
  [v7 dismiss];

  v8 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
  [v8 dismiss];
}

- (void)tabHoverPreviewController:(id)a3 showPreviewForItem:(id)a4
{
  v32 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v8 = objc_loadWeakRetained(&self->_tabBarManager);
  v9 = [v8 effectiveTabBar];

  v10 = [WeakRetained tabHoverPreviewController];
  if (v10 == v32)
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [WeakRetained viewForItem:v6];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v13 = [v9 tabHoverPreviewController];

  if (v13 == v32)
  {
    v12 = [v9 viewForBarItem:v6];
  }

  else
  {
    v14 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];

    if (v14 != v32)
    {
      goto LABEL_21;
    }

    v12 = [(LibraryContentController *)self->_libraryController viewForTabHoverPreviewItem:v6];
  }

LABEL_9:
  v15 = v12;
  if (v12)
  {
    v16 = objc_loadWeakRetained(&self->_browserController);
    v17 = [v16 tabHoverPreview];

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_dataSource);
      v19 = [v6 UUID];
      v31 = v18;
      v20 = [v18 tabWithUUID:v19];

      objc_storeStrong(&self->_tabShowingPreview, v20);
      if ([v20 isActive])
      {
        [v17 setSnapshotImage:0 metadata:0];
      }

      else
      {
        v21 = [v6 UUID];
        v22 = [(TabCollectionViewManager *)self cachedContentImageForTabWithUUID:v21 allowScaledImage:1];

        v23 = [v6 UUID];
        v24 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:v23];

        [v17 setSnapshotImage:v22 metadata:v24];
      }

      v25 = [v6 title];
      [v17 setTitleText:v25];

      v26 = [v20 url];
      if ([v26 safari_isSafariWebExtensionURL])
      {
        v27 = [v26 safari_userVisibleHostOrExtensionDisplayName];
        v28 = [v17 titleText];
        if ([v28 isEqualToString:v27])
        {
          v29 = &stru_2827BF158;
        }

        else
        {
          v29 = v27;
        }
      }

      else
      {
        v27 = [v26 host];
        v29 = [(__CFString *)v27 safari_stringByRemovingWwwDotPrefix];
        v28 = v29;
      }

      [v17 setSecondaryTitleText:v29];

      v30 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
      [v17 showPreviewForItemView:v15 forVerticalTabs:v30 == v32];
    }
  }

LABEL_21:
}

- (void)tabHoverPreviewControllerDismissPreview:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabHoverPreview];

  [v6 dismissPreview];
  tabShowingPreview = self->_tabShowingPreview;
  self->_tabShowingPreview = 0;
}

- (id)tabWithUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabWithUUID:v4];

  return v6;
}

- (unint64_t)_indexToInsertPlaceholderAtTabItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained currentTabs];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__TabCollectionViewManager__indexToInsertPlaceholderAtTabItem___block_invoke;
    v9[3] = &unk_2781D90E0;
    v10 = v4;
    v7 = [v6 indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t __63__TabCollectionViewManager__indexToInsertPlaceholderAtTabItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)insertPlaceholderAfterTabItem:(id)a3
{
  self->_placeholderItemIsPrivate = self->_privateBrowsingEnabled;
  v4 = a3;
  v5 = [(TabCollectionViewManager *)self _indexToInsertPlaceholderAtTabItem:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  self->_placeholderItemIndex = v6;
  v7 = [objc_opt_class() placeholderItem];
  placeholderItem = self->_placeholderItem;
  self->_placeholderItem = v7;

  v9 = [v4 isPinned];
  [(TabCollectionItem *)self->_placeholderItem setPinned:v9];
  [(TabCollectionViewManager *)self updateTabOverviewItems];
  [(TabCollectionViewManager *)self updateTabBarAnimated:1 keepingTabVisible:0];
  v10 = self->_placeholderItem;

  return v10;
}

- (void)movePlaceholderToEndOfPinnedTabs:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained currentTabs];

  v6 = [v5 indexOfObjectPassingTest:&__block_literal_global_65];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v5 count];
  }

  [(TabCollectionViewManager *)self _movePlaceholder:v7 toIndex:v6];
}

- (void)movePlaceholder:(id)a3 overTabItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (([v6 isPlaceholder] & 1) == 0)
  {
    v7 = [(TabCollectionViewManager *)self _indexToInsertPlaceholderAtTabItem:v6];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v9 = [WeakRetained currentTabs];
      v10 = [v9 count];
    }

    else if (v7 < self->_placeholderItemIndex)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7 + 1;
    }

    [(TabCollectionViewManager *)self _movePlaceholder:v11 toIndex:v10];
  }
}

- (void)_movePlaceholder:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(TabCollectionViewManager *)self isPlaceholderItemValid:?])
  {
    self->_placeholderItemIndex = a4;
    [(TabCollectionViewManager *)self updateTabOverviewItems];
    [(TabCollectionViewManager *)self _updateTabBarAnimated:1 keepingTabVisibleForItem:v6];
  }
}

- (void)removePlaceholderItem:(id)a3
{
  v4 = a3;
  v5 = [(TabCollectionViewManager *)self isPlaceholderItemValid:v4];
  placeholderItem = self->_placeholderItem;

  if (placeholderItem == v4)
  {
    self->_placeholderItem = 0;

    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  [(TabCollectionViewManager *)self updateTabOverviewItems];

  [(TabCollectionViewManager *)self _updateTabBarAnimated:1 keepingTabVisibleForItem:0];
}

- (id)replacePlaceholderItem:(id)a3 withTabsForDropSession:(id)a4 dragItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = [WeakRetained currentTabs];
  v13 = [v12 count];

  if ([(TabCollectionViewManager *)self isPlaceholderItemValid:v8]&& (placeholderItemIndex = self->_placeholderItemIndex, placeholderItemIndex <= v13))
  {
    v16 = [WeakRetained dropTabsAtIndex:placeholderItemIndex pinned:-[TabCollectionItem isPinned](self->_placeholderItem dropSession:"isPinned") dragItems:{v9, v10}];
    [(TabCollectionViewManager *)self removePlaceholderItem:v8];
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [TabCollectionViewManager replacePlaceholderItem:v13 withTabsForDropSession:v15 dragItems:?];
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)dragItemForTab:(id)a3 tabItem:(id)a4
{
  v6 = MEMORY[0x277D75470];
  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [v6 safari_itemWithTab:v8 tabItem:v7 browserController:WeakRetained];

  return v10;
}

- (void)_setTabsForDragItems:(id)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 safari_localBrowserController];
        v14 = [v6 objectForKey:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [MEMORY[0x277CBEB98] set];
        }

        v17 = v16;

        v18 = [v12 safari_localWBTab];

        if (v18)
        {
          v19 = [v12 safari_localWBTab];
          v20 = [v17 setByAddingObject:v19];

          v17 = v20;
        }

        [v6 setObject:v17 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v32 = v7;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = [v6 keyEnumerator];
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        v27 = [v6 objectForKey:v26];
        v28 = [v27 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_70];

        v29 = [v26 tabController];
        v30 = [(TabController *)v29 tabCollectionViewManager];

        v31 = v30[8];
        if (v4)
        {
          [v31 unionSet:v28];
        }

        else
        {
          [v31 minusSet:v28];
        }

        [v30 updateTabOverviewItems];
        [v30 updateTabBarAnimated:1 keepingTabVisible:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }
}

id __56__TabCollectionViewManager__setTabsForDragItems_hidden___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

- (void)willBeginDragSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocumentWillBeginDragSession:v4];
}

- (void)willEndDragSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocumentWillEndDragSession:v4];
}

- (void)didBeginTrackingSession:(id)a3
{
  v4 = a3;
  [(TabCollectionViewManager *)self dismissTabHoverPreview];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained beginTrackingDropSessionForTabBarVisibility:v4];
}

- (void)didEndTrackingSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained endTrackingDropSessionForTabBarVisibility:v4];
}

- (TabMenuProviderDataSource)tabMenuProviderDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained tabMenuProviderDataSource];

  return v3;
}

- (void)performBatchUpdatesWithBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained performBatchUpdatesWithBlock:v4];
}

- (TabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

- (TabBarManager)tabBarManager
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);

  return WeakRetained;
}

- (TabCollectionViewManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (void)webViewDidFirstMeaningfulPaintForTabDocument:(id)a3
{
  v4 = a3;
  if (([v4 isActive] & 1) == 0)
  {
    [(TabCollectionViewManager *)self _temporarilyUpdateSnapshotsForTabDocument:v4];
  }
}

- (void)replacePlaceholderItem:(uint64_t)a1 withTabsForDropSession:(uint64_t)a2 dragItems:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&dword_215819000, log, OS_LOG_TYPE_FAULT, "Failed to drop at index %lu of %lu tabs", &v4, 0x16u);
}

@end