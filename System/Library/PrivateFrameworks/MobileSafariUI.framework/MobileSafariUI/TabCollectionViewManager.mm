@interface TabCollectionViewManager
- (BOOL)_canUpdateClassicBar;
- (BOOL)_canUpdateUnifiedBar;
- (BOOL)_isPrivateBrowsingAndLocked;
- (BOOL)_isTabHiddenWithUUID:(id)d;
- (BOOL)_shouldShowExplanationView;
- (BOOL)_shouldUpdateSnapshotsForTabHoverPreview;
- (BOOL)hasTabBar;
- (BOOL)isShowingTabView;
- (BOOL)tabCollectionView:(id)view canCloseItem:(id)item;
- (BOOL)tabCollectionView:(id)view item:(id)item matchesSearchText:(id)text;
- (BOOL)tabCollectionViewCanDismiss:(id)dismiss;
- (BOOL)tabItem:(id)item matchesSearchText:(id)text;
- (BOOL)tabSnapshotCache:(id)cache canAcceptRequestForIdentifier:(id)identifier;
- (BrowserController)browserController;
- (NSArray)tabCollectionViews;
- (NSSet)allSnapshotIdentifiers;
- (TabBar)tabBar;
- (TabBarManager)tabBarManager;
- (TabCollectionViewManager)init;
- (TabCollectionViewManagerDataSource)dataSource;
- (TabDragDropInteractionController)tabDragDropController;
- (TabMenuProviderDataSource)tabMenuProviderDataSource;
- (id)_blankSnapshotGroupIdentifierForTabGroup:(id)group;
- (id)_contentForSnapshotWithIdentifier:(id)identifier;
- (id)_extensionIconForTabWithURL:(id)l UUID:(id)d;
- (id)_hiddenCollectionViewTabs;
- (id)_iconForTabWithUUID:(id)d;
- (id)_openNewTabInteraction;
- (id)_tabCollectionItemsRemovingHiddenItems:(BOOL)items outHiddenItems:(id)hiddenItems outIsDragging:(BOOL *)dragging itemRetriever:(id)retriever;
- (id)_urlForTabWithUUID:(id)d;
- (id)cachedContentImageForTabWithUUID:(id)d allowScaledImage:(BOOL)image;
- (id)dragItemForTab:(id)tab tabItem:(id)item;
- (id)insertPlaceholderAfterTabItem:(id)item;
- (id)replacePlaceholderItem:(id)item withTabsForDropSession:(id)session dragItems:(id)items;
- (id)snapshottableTabDocumentForIdentifier:(id)identifier;
- (id)tabCollectionView:(id)view borrowContentViewControllerForItem:(id)item;
- (id)tabCollectionViewForItem:(id)item;
- (id)tabWithUUID:(id)d;
- (int64_t)visibleTabCollectionViewType;
- (unint64_t)_indexToInsertPlaceholderAtTabItem:(id)item;
- (unint64_t)_snapshotCacheCapacityWithSnapshotsEnabled:(BOOL)enabled;
- (void)_didReceiveMemoryWarning:(id)warning;
- (void)_enumerateTabsOrderedByVisibility:(id)visibility;
- (void)_movePlaceholder:(id)placeholder toIndex:(unint64_t)index;
- (void)_openTabFromNewTabButton;
- (void)_setTabsForDragItems:(id)items hidden:(BOOL)hidden;
- (void)_setUpTabOverview;
- (void)_temporarilyUpdateSnapshotsForTabDocument:(id)document;
- (void)_updateClassicTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item;
- (void)_updateSnapshotCacheStateWithCapacity:(unint64_t)capacity;
- (void)_updateTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item;
- (void)_updateTabSnapshotsWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_updateUnifiedTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item;
- (void)clearSnapshotCache;
- (void)dealloc;
- (void)didBeginTrackingSession:(id)session;
- (void)didEndTrackingSession:(id)session;
- (void)dismissTabHoverPreview;
- (void)flushPendingSnapshotsWithCompletion:(id)completion;
- (void)invalidateSnapshotForTab:(id)tab;
- (void)movePlaceholder:(id)placeholder overTabItem:(id)item;
- (void)movePlaceholderToEndOfPinnedTabs:(id)tabs;
- (void)performBatchUpdatesWithBlock:(id)block;
- (void)registerLibraryController:(id)controller;
- (void)removePlaceholderItem:(id)item;
- (void)removeSnapshotForTabWithUUID:(id)d;
- (void)requestSnapshotForTabDocument:(id)document completion:(id)completion;
- (void)scrollTabBarToActiveTabAnimated:(BOOL)animated;
- (void)setPrivateBrowsingEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setShouldDeferSnapshotRequest:(BOOL)request;
- (void)setSnapshotsEnabled:(BOOL)enabled;
- (void)setTabBar:(id)bar;
- (void)setTabBarManager:(id)manager;
- (void)setTabThumbnailCollectionViewStyle:(int64_t)style;
- (void)tabBar:(id)bar toggleMediaStateMutedForItem:(id)item;
- (void)tabBarManager:(id)manager didCreateTabBar:(id)bar;
- (void)tabCollectionView:(id)view closeItem:(id)item;
- (void)tabCollectionView:(id)view didSelectItem:(id)item;
- (void)tabCollectionView:(id)view item:(id)item didProduceNavigationIntent:(id)intent;
- (void)tabCollectionView:(id)view relinquishBorrowedContentViewController:(id)controller forItem:(id)item;
- (void)tabCollectionViewDidCancelDismissal:(id)dismissal;
- (void)tabCollectionViewDidDismiss:(id)dismiss;
- (void)tabCollectionViewWillDismiss:(id)dismiss;
- (void)tabCollectionViewWillPresent:(id)present;
- (void)tabHoverPreviewController:(id)controller showPreviewForItem:(id)item;
- (void)tabHoverPreviewControllerDismissPreview:(id)preview;
- (void)tabSnapshotCache:(id)cache requestSnapshotWithIdentifier:(id)identifier completion:(id)completion;
- (void)tabSnapshotCacheDidFinishUpdating:(id)updating;
- (void)updateExplanationViewVisibilityAnimated:(BOOL)animated;
- (void)updateSnapshotCacheAndSnapshotActiveTab;
- (void)updateSnapshotCacheState;
- (void)updateSnapshotIdentifiers;
- (void)updateSnapshotsForTabHoverPreviewIfNeeded;
- (void)updateStartPageSnapshotIfNeededForTabDocument:(id)document currentSnapshotSize:(CGSize)size;
- (void)updateTabBarAnimated:(BOOL)animated keepingTabVisible:(id)visible;
- (void)updateTabOverviewItems;
- (void)updateTabViewsAnimatingTabBar:(BOOL)bar;
- (void)webViewDidFirstMeaningfulPaintForTabDocument:(id)document;
- (void)willBeginDragSession:(id)session;
- (void)willEndDragSession:(id)session;
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
    mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v9 = [v7 initWithSiteMetadataManager:mEMORY[0x277D28F58]];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];
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
  _snapshotCacheCapacity = [(TabCollectionViewManager *)self _snapshotCacheCapacity];

  [(TabCollectionViewManager *)self _updateSnapshotCacheStateWithCapacity:_snapshotCacheCapacity];
}

- (BOOL)_shouldUpdateSnapshotsForTabHoverPreview
{
  if (self->_snapshotsEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
    effectiveTabBar = [WeakRetained effectiveTabBar];
    if (effectiveTabBar)
    {

LABEL_5:
      v6 = +[Application sharedApplication];
      hasPointerDevice = [v6 hasPointerDevice];

      return hasPointerDevice;
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
      tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
      if (objc_opt_respondsToSelector())
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __50__TabCollectionViewManager_updateTabOverviewItems__block_invoke;
        aBlock[3] = &unk_2781D8F70;
        v5 = tabThumbnailCollectionView;
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
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  v3 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

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
  normalAndPrivateTabs = [WeakRetained normalAndPrivateTabs];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(normalAndPrivateTabs, "count") + 2}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = normalAndPrivateTabs;
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

        uuid = [*(*(&v23 + 1) + 8 * i) uuid];
        [v5 addObject:uuid];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allTabGroups = [WeakRetained allTabGroups];
  v13 = [allTabGroups countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(allTabGroups);
        }

        v17 = [(TabCollectionViewManager *)self _blankSnapshotGroupIdentifierForTabGroup:*(*(&v19 + 1) + 8 * j)];
        [v5 addObject:v17];
      }

      v14 = [allTabGroups countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (void)_setUpTabOverview
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  makeTabOverview = [WeakRetained makeTabOverview];
  tabThumbnailCollectionView = self->_tabThumbnailCollectionView;
  self->_tabThumbnailCollectionView = makeTabOverview;

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
    viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
    v7 = [(TabDocumentDropHandler *)v4 initWithAlertPresentationViewController:viewControllerToPresentFrom];

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

- (void)_didReceiveMemoryWarning:(id)warning
{
  [(TabCollectionViewManager *)self updateSnapshotIdentifiers];
  v4 = [(TabCollectionViewManager *)self _snapshotCacheCapacityWithSnapshotsEnabled:0];

  [(TabCollectionViewManager *)self _updateSnapshotCacheStateWithCapacity:v4];
}

- (void)setPrivateBrowsingEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_privateBrowsingEnabled != enabled)
  {
    self->_privateBrowsingEnabled = enabled;
    [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:animated];
    [(TabCollectionViewManager *)self updateTabOverviewItems];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activeNonLibraryTab = [WeakRetained activeNonLibraryTab];
    [(TabCollectionViewManager *)self updateTabBarAnimated:0 keepingTabVisible:activeNonLibraryTab];
  }
}

- (BOOL)_isPrivateBrowsingAndLocked
{
  if (!self->_privateBrowsingEnabled)
  {
    return 0;
  }

  v2 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v2 isPrivateBrowsingLocked];

  return isPrivateBrowsingLocked;
}

- (BOOL)_isTabHiddenWithUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  hiddenTabForExplanationView = [WeakRetained hiddenTabForExplanationView];
  uuid = [hiddenTabForExplanationView uuid];
  if ([dCopy isEqual:uuid])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSMutableSet *)self->_hiddenTabUUIDs containsObject:dCopy];
  }

  return v8;
}

- (id)_hiddenCollectionViewTabs
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  currentTabs = [WeakRetained currentTabs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__TabCollectionViewManager__hiddenCollectionViewTabs__block_invoke;
  v9[3] = &unk_2781D5BC8;
  v9[4] = self;
  v6 = [currentTabs safari_filterObjectsUsingBlock:v9];
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

- (BOOL)tabItem:(id)item matchesSearchText:(id)text
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  textCopy = text;
  lastSearchTerm = [itemCopy lastSearchTerm];
  v9 = [lastSearchTerm isEqualToString:textCopy];

  title = [itemCopy title];
  titleForLastSearch = [itemCopy titleForLastSearch];
  v12 = [title isEqualToString:titleForLastSearch];

  uRLString = [itemCopy URLString];
  uRLStringForLastSearch = [itemCopy URLStringForLastSearch];
  v15 = [uRLString isEqualToString:uRLStringForLastSearch];

  if (v9 && v12 && v15)
  {
    LOBYTE(v16) = [itemCopy matchedLastSearch];
    goto LABEL_35;
  }

  if (([textCopy isEqualToString:self->_lastSearchTerm] & 1) == 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = [textCopy length];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke;
    v68[3] = &unk_2781D8ED0;
    v69 = array;
    v19 = array;
    [textCopy enumerateSubstringsInRange:0 options:v18 usingBlock:{3, v68}];
    v20 = [v19 copy];
    searchTermWords = self->_searchTermWords;
    self->_searchTermWords = v20;
  }

  v22 = [textCopy copy];
  lastSearchTerm = self->_lastSearchTerm;
  self->_lastSearchTerm = v22;

  title2 = [itemCopy title];
  uRLString2 = [itemCopy URLString];
  [itemCopy setLastSearchTerm:textCopy];
  [itemCopy setURLStringForLastSearch:uRLString2];
  [itemCopy setTitleForLastSearch:title2];
  v26 = [title2 localizedStandardContainsString:textCopy];
  v27 = v26;
  if (((v12 ^ 1 | v26) & 1) == 0)
  {
    titleWords = [itemCopy titleWords];

    if (titleWords)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v12 & 1) == 0)
  {
LABEL_9:
    array2 = [MEMORY[0x277CBEB18] array];
    v29 = [title2 length];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke_2;
    v66[3] = &unk_2781D8ED0;
    v67 = array2;
    v30 = array2;
    [title2 enumerateSubstringsInRange:0 options:v29 usingBlock:{3, v66}];
    [itemCopy setTitleWords:v30];
  }

LABEL_10:
  if (v27)
  {
    goto LABEL_33;
  }

  if ([(NSArray *)self->_searchTermWords count])
  {
    v50 = v15;
    v51 = uRLString2;
    v52 = title2;
    v53 = textCopy;
    v31 = [(NSArray *)self->_searchTermWords mutableCopy];
    v54 = itemCopy;
    titleWords2 = [itemCopy titleWords];
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
          v38 = titleWords2;
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
    textCopy = v53;
    itemCopy = v54;
    uRLString2 = v51;
    title2 = v52;
    v15 = v50;
    if (!v43)
    {
      goto LABEL_33;
    }
  }

  if (!v15 || ([itemCopy URLStringComponents], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
  {
    v45 = [uRLString2 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:0 simplifiedStringOffset:0];
    v46 = [v45 componentsSeparatedByString:@"."];
    [itemCopy setURLStringComponents:v46];
  }

  if ([uRLString2 localizedStandardContainsString:textCopy])
  {
LABEL_33:
    LOBYTE(v16) = 1;
    [itemCopy setMatchedLastSearch:1];
  }

  else
  {
    uRLStringComponents = [itemCopy URLStringComponents];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __54__TabCollectionViewManager_tabItem_matchesSearchText___block_invoke_3;
    v56[3] = &unk_2781D8EF8;
    v57 = textCopy;
    v16 = [uRLStringComponents safari_containsObjectPassingTest:v56];

    [itemCopy setMatchedLastSearch:v16];
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

- (void)setTabThumbnailCollectionViewStyle:(int64_t)style
{
  if (self->_tabThumbnailCollectionViewStyle != style)
  {
    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    self->_tabThumbnailCollectionViewStyle = style;
    [tabThumbnailCollectionView dismissAnimated:0];
    view = [tabThumbnailCollectionView view];
    [view removeFromSuperview];

    [tabThumbnailCollectionView setDelegate:0];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v8 = WeakRetained;
    if (self->_tabSwitcherViewController)
    {
      rootViewController = [WeakRetained rootViewController];
      [rootViewController tearDownTabSwitcherViewController];

      tabSwitcherViewController = self->_tabSwitcherViewController;
      self->_tabSwitcherViewController = 0;
    }

    if (style == 1)
    {
      [(TabCollectionViewManager *)self _setUpTabOverview];
    }

    [(TabCollectionViewManager *)self updateSnapshotCacheState];
  }
}

- (void)setTabBar:(id)bar
{
  obj = bar;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tabBar, obj);
    delegate = [WeakRetained delegate];

    if (delegate == self)
    {
      [WeakRetained setDelegate:0];
    }

    tabHoverPreviewController = [WeakRetained tabHoverPreviewController];
    [tabHoverPreviewController setDelegate:0];

    tabHoverPreviewController2 = [obj tabHoverPreviewController];
    [tabHoverPreviewController2 setDelegate:self];

    [obj setDelegate:self];
    v8 = objc_loadWeakRetained(&self->_dataSource);
    activeNonLibraryTab = [v8 activeNonLibraryTab];
    [(TabCollectionViewManager *)self updateTabBarAnimated:0 keepingTabVisible:activeNonLibraryTab];
  }
}

- (void)setTabBarManager:(id)manager
{
  obj = manager;
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
  effectiveTabBar = [WeakRetained effectiveTabBar];
  if (effectiveTabBar)
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
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  presentationState = [tabThumbnailCollectionView presentationState];

  if (presentationState)
  {
    return 2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained != 0;
}

- (NSArray)tabCollectionViews
{
  array = [MEMORY[0x277CBEB18] array];
  [array safari_addObjectUnlessNil:self->_tabThumbnailCollectionView];
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  [array safari_addObjectUnlessNil:WeakRetained];

  v5 = objc_loadWeakRetained(&self->_tabBarManager);
  effectiveTabBar = [v5 effectiveTabBar];
  [array safari_addObjectUnlessNil:effectiveTabBar];

  v7 = [array copy];

  return v7;
}

- (id)tabCollectionViewForItem:(id)item
{
  itemCopy = item;
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

- (void)registerLibraryController:(id)controller
{
  controllerCopy = controller;
  tabHoverPreviewController = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
  [tabHoverPreviewController setDelegate:0];

  libraryController = self->_libraryController;
  self->_libraryController = controllerCopy;
  v7 = controllerCopy;

  tabHoverPreviewController2 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];

  [tabHoverPreviewController2 setDelegate:self];
}

- (id)_tabCollectionItemsRemovingHiddenItems:(BOOL)items outHiddenItems:(id)hiddenItems outIsDragging:(BOOL *)dragging itemRetriever:(id)retriever
{
  hiddenItemsCopy = hiddenItems;
  retrieverCopy = retriever;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  currentTabs = [WeakRetained currentTabs];
  v14 = currentTabs;
  v16 = 0;
  if (self->_placeholderItem)
  {
    placeholderItemIndex = self->_placeholderItemIndex;
    if (placeholderItemIndex <= [currentTabs count] && self->_placeholderItemIsPrivate == self->_privateBrowsingEnabled)
    {
      v16 = 1;
    }
  }

  if ([v14 count])
  {
    firstObject = [v14 firstObject];
    retrieverCopy[2](retrieverCopy, firstObject);
    v32 = v14;
    v18 = retrieverCopy;
    v19 = WeakRetained;
    v20 = hiddenItemsCopy;
    draggingCopy = dragging;
    v23 = v22 = items;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    items = v22;
    dragging = draggingCopy;
    hiddenItemsCopy = v20;
    WeakRetained = v19;
    retrieverCopy = v18;
    v14 = v32;

    v16 &= isKindOfClass;
  }

  array = [MEMORY[0x277CBEB18] array];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __110__TabCollectionViewManager__tabCollectionItemsRemovingHiddenItems_outHiddenItems_outIsDragging_itemRetriever___block_invoke;
  v33[3] = &unk_2781D8F48;
  v38 = v16;
  v33[4] = self;
  v26 = array;
  v34 = v26;
  v27 = retrieverCopy;
  v36 = v27;
  draggingCopy2 = dragging;
  v28 = hiddenItemsCopy;
  v35 = v28;
  itemsCopy = items;
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

- (void)scrollTabBarToActiveTabAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(TabCollectionViewManager *)self _canUpdateUnifiedBar])
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
    [WeakRetained scrollToActiveItemAnimated:animatedCopy];
  }

  if ([(TabCollectionViewManager *)self _canUpdateClassicBar])
  {
    v9 = objc_loadWeakRetained(&self->_tabBar);
    v6 = objc_loadWeakRetained(&self->_dataSource);
    activeTabDocument = [v6 activeTabDocument];
    tabBarItem = [activeTabDocument tabBarItem];
    [v9 scrollToItem:tabBarItem animated:animatedCopy];
  }
}

- (void)updateTabBarAnimated:(BOOL)animated keepingTabVisible:(id)visible
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ([(TabCollectionViewManager *)self _canUpdateUnifiedBar])
  {
    unifiedTabBarItem = [visibleCopy unifiedTabBarItem];
    [(TabCollectionViewManager *)self _updateUnifiedTabBarAnimated:animatedCopy keepingTabVisibleForItem:unifiedTabBarItem];
  }

  if ([(TabCollectionViewManager *)self _canUpdateClassicBar])
  {
    tabBarItem = [visibleCopy tabBarItem];
    [(TabCollectionViewManager *)self _updateClassicTabBarAnimated:animatedCopy keepingTabVisibleForItem:tabBarItem];
  }
}

- (void)_updateTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item
{
  animatedCopy = animated;
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(TabCollectionViewManager *)self _canUpdateUnifiedBar])
    {
      [(TabCollectionViewManager *)self _updateUnifiedTabBarAnimated:animatedCopy keepingTabVisibleForItem:itemCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(TabCollectionViewManager *)self _canUpdateClassicBar])
      {
        [(TabCollectionViewManager *)self _updateClassicTabBarAnimated:animatedCopy keepingTabVisibleForItem:itemCopy];
      }
    }
  }

  else
  {
    [(TabCollectionViewManager *)self updateTabBarAnimated:animatedCopy keepingTabVisible:0];
  }
}

- (void)_updateClassicTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item
{
  animatedCopy = animated;
  itemCopy = item;
  if (animatedCopy)
  {
    if (self->_suppressTabBarAnimation)
    {
      animatedCopy = 0;
    }

    else
    {
      tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
      animatedCopy = [tabThumbnailCollectionView presentationState] == 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v9 = objc_loadWeakRetained(&self->_dataSource);
  v10 = objc_loadWeakRetained(&self->_browserController);
  [v10 updateShowingTabBarAnimated:animatedCopy];

  v15 = 0;
  v11 = [(TabCollectionViewManager *)self _tabCollectionItemsRemovingHiddenItems:1 outHiddenItems:0 outIsDragging:&v15 itemRetriever:&__block_literal_global_34_0];
  [WeakRetained setDraggingItem:v15];
  v12 = [v11 safari_partionedArrayUsingCondition:&__block_literal_global_37];

  [WeakRetained layoutIfNeeded];
  [WeakRetained setAllowsScrollingPinnedItems:{objc_msgSend(v9, "shouldAllowScrollingPinnedItems")}];
  items = [WeakRetained items];
  v14 = [items isEqualToArray:v12];

  if (v14)
  {
    [WeakRetained updatePinnedItems];
  }

  else
  {
    [WeakRetained setItems:v12 animated:animatedCopy];
  }

  [WeakRetained scrollToItem:itemCopy animated:animatedCopy];
}

- (void)_updateUnifiedTabBarAnimated:(BOOL)animated keepingTabVisibleForItem:(id)item
{
  animatedCopy = animated;
  itemCopy = item;
  if (animatedCopy && !self->_suppressTabBarAnimation)
  {
    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    v6 = [tabThumbnailCollectionView presentationState] == 0;
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  v9 = objc_loadWeakRetained(&self->_dataSource);
  currentTabs = [v9 currentTabs];
  if ([currentTabs count] <= 1)
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

  activeNonLibraryTab = [v9 activeNonLibraryTab];
  unifiedTabBarItem = [activeNonLibraryTab unifiedTabBarItem];

  v18 = objc_loadWeakRetained(&self->_browserController);
  if ([v18 favoritesFieldShouldBeExpanded])
  {
    isScribbling = 1;
  }

  else
  {
    tabController = [v18 tabController];
    [tabController activeTabDocument];
    v32 = unifiedTabBarItem;
    v21 = v9;
    v22 = v12;
    v23 = WeakRetained;
    v24 = v13;
    v26 = v25 = v6;
    sfScribbleControllerIfLoaded = [v26 sfScribbleControllerIfLoaded];
    isScribbling = [sfScribbleControllerIfLoaded isScribbling];

    v6 = v25;
    v13 = v24;
    WeakRetained = v23;
    v12 = v22;
    v9 = v21;
    unifiedTabBarItem = v32;
  }

  v28 = [objc_alloc(MEMORY[0x277D28EA8]) initWithItems:v13 activeItem:unifiedTabBarItem activeItemIsExpanded:isScribbling allowsScrollingPinnedItems:{objc_msgSend(v9, "shouldAllowScrollingPinnedItems")}];
  v29 = itemCopy;
  if (!itemCopy)
  {
    if ([WeakRetained displayMode] == 2 && (objc_msgSend(v18, "rootViewController"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isPerformingSizeTransition"), v30, v31))
    {
      v29 = unifiedTabBarItem;
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

- (void)updateTabViewsAnimatingTabBar:(BOOL)bar
{
  [(TabCollectionViewManager *)self updateTabBarAnimated:bar keepingTabVisible:0];

  [(TabCollectionViewManager *)self updateTabOverviewItems];
}

- (BOOL)_shouldShowExplanationView
{
  if (!self->_privateBrowsingEnabled)
  {
    return 0;
  }

  v3 = +[Application sharedApplication];
  isPrivateBrowsingLocked = [v3 isPrivateBrowsingLocked];

  if (isPrivateBrowsingLocked)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  currentTabs = [WeakRetained currentTabs];
  if ([currentTabs count] <= 1)
  {
    firstObject = [currentTabs firstObject];
    hiddenTabForExplanationView = [WeakRetained hiddenTabForExplanationView];
    v5 = firstObject == hiddenTabForExplanationView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateExplanationViewVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if (objc_opt_respondsToSelector())
  {
    [tabThumbnailCollectionView setShowsPrivateBrowsingExplanationView:-[TabCollectionViewManager _shouldShowExplanationView](self animated:{"_shouldShowExplanationView"), animatedCopy}];
  }
}

- (void)tabCollectionView:(id)view didSelectItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarManager);
  v8 = objc_loadWeakRetained(&self->_dataSource);
  activeNonLibraryTab = [v8 activeNonLibraryTab];
  inlineTabBar = [WeakRetained inlineTabBar];
  if (inlineTabBar == viewCopy)
  {
    unifiedTabBarItem = [activeNonLibraryTab unifiedTabBarItem];

    if (unifiedTabBarItem == itemCopy)
    {
      v13 = objc_loadWeakRetained(&self->_browserController);
      [v13 unifiedTabBarActiveTabWasTapped];
      goto LABEL_16;
    }
  }

  else
  {
  }

  uUID = [itemCopy UUID];
  v13 = [v8 tabWithUUID:uUID];

  if (v13)
  {
    if (self->_privateBrowsingEnabled)
    {
      hiddenTabForExplanationView = [v8 hiddenTabForExplanationView];

      if (v13 == hiddenTabForExplanationView)
      {
        [v8 clearHiddenTabForExplanationView];
        [(TabCollectionViewManager *)self updateTabOverviewItems];
      }
    }

    [v8 setActiveTab:v13];
    v15 = objc_loadWeakRetained(&self->_tabBar);
    if (v15 == viewCopy || ([WeakRetained effectiveTabBar], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == viewCopy))
    {
      [Application postTestNotificationName:@"TabBarDidSwitchTabNotification" object:self];
    }

    else
    {
      tabBarItem = [activeNonLibraryTab tabBarItem];
      [v15 scrollToItem:tabBarItem animated:0];

      unifiedTabBarItem2 = [activeNonLibraryTab unifiedTabBarItem];
      if ([WeakRetained displayMode] == 2)
      {
        secondaryItem = [unifiedTabBarItem2 secondaryItem];

        unifiedTabBarItem2 = secondaryItem;
      }

      effectiveTabBar = [WeakRetained effectiveTabBar];
      [effectiveTabBar scrollToItem:unifiedTabBarItem2 animated:0];
    }
  }

LABEL_16:
}

- (BOOL)tabCollectionView:(id)view canCloseItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];
  v10 = [WeakRetained tabWithUUID:uUID];

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = objc_loadWeakRetained(&self->_tabBar);
  v12 = v11;
  if (v11 == viewCopy)
  {

LABEL_6:
    v15 = objc_loadWeakRetained(&self->_tabBarManager);
    inlineTabBar = [v15 inlineTabBar];
    v17 = inlineTabBar;
    if (inlineTabBar == viewCopy)
    {
      displayMode = [v15 displayMode];

      if (displayMode != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    standaloneTabBar = [v15 standaloneTabBar];
    v20 = standaloneTabBar;
    if (standaloneTabBar != viewCopy)
    {

LABEL_13:
      uUID2 = [itemCopy UUID];
      v14 = [WeakRetained canCloseTabWithUUID:uUID2];

      goto LABEL_14;
    }

    itemArrangement = [viewCopy itemArrangement];
    items = [itemArrangement items];
    v23 = [items count];

    if (v23 != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  isPinned = [itemCopy isPinned];

  if ((isPinned & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v14 = 0;
LABEL_15:

  return v14;
}

- (void)tabCollectionView:(id)view closeItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];

  v7 = [WeakRetained tabWithUUID:uUID];

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

- (void)tabCollectionView:(id)view item:(id)item didProduceNavigationIntent:(id)intent
{
  intentCopy = intent;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];

  [WeakRetained insertTabWithUUIDForNavigation:uUID];
  if (intentCopy)
  {
    v10 = objc_loadWeakRetained(&self->_browserController);
    [v10 dispatchNavigationIntent:intentCopy];
  }
}

- (void)tabCollectionViewWillPresent:(id)present
{
  presentCopy = present;
  [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabCollectionViewWillPresent:presentCopy];

  [(TabCollectionViewManager *)self updateSnapshotCacheAndSnapshotActiveTab];
  rootViewController = [WeakRetained rootViewController];
  statusBarView = [rootViewController statusBarView];
  [statusBarView clearStatus];
}

- (void)tabCollectionViewWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  hiddenTabForExplanationView = [WeakRetained hiddenTabForExplanationView];
  if (hiddenTabForExplanationView)
  {
    privateBrowsingEnabled = self->_privateBrowsingEnabled;

    if (privateBrowsingEnabled)
    {
      [WeakRetained clearHiddenTabForExplanationView];
      [(TabCollectionViewManager *)self updateTabOverviewItems];
    }
  }

  v7 = objc_loadWeakRetained(&self->_browserController);
  [v7 tabCollectionViewWillDismiss:dismissCopy];
}

- (void)tabCollectionViewDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained clearTabsClosedWhileTabViewPresentedCount];
  [(TabCollectionViewManager *)self setShouldDeferSnapshotRequest:0];
  [(TabCollectionViewManager *)self updateSnapshotCacheState];
  v5 = objc_loadWeakRetained(&self->_browserController);
  [v5 tabCollectionViewDidDismiss:dismissCopy];
}

- (void)tabCollectionViewDidCancelDismissal:(id)dismissal
{
  [(TabCollectionViewManager *)self setShouldDeferSnapshotRequest:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained didCancelDismissingTabOverview];

  [(TabCollectionViewManager *)self updateExplanationViewVisibilityAnimated:1];
}

- (BOOL)tabCollectionViewCanDismiss:(id)dismiss
{
  _isPrivateBrowsingAndLocked = [(TabCollectionViewManager *)self _isPrivateBrowsingAndLocked];
  if (_isPrivateBrowsingAndLocked)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if ([WeakRetained activeWindowIsForeground] && !SBSGetScreenLockStatus())
    {
      [WeakRetained authenticateToUnlockPrivateBrowsing];
    }
  }

  return !_isPrivateBrowsingAndLocked;
}

- (id)tabCollectionView:(id)view borrowContentViewControllerForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  activeTabDocument = [WeakRetained activeTabDocument];

  uUID = [itemCopy UUID];

  uuid = [activeTabDocument uuid];
  v10 = [uUID isEqual:uuid];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_browserController);
    v12 = [v11 borrowContentViewControllerForTab:activeTabDocument];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tabCollectionView:(id)view relinquishBorrowedContentViewController:(id)controller forItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];

  v10 = [WeakRetained tabDocumentWithUUID:uUID];

  v9 = objc_loadWeakRetained(&self->_browserController);
  [v9 reinsertBorrowedContentViewForTab:v10];
}

- (BOOL)tabCollectionView:(id)view item:(id)item matchesSearchText:(id)text
{
  textCopy = text;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];

  v11 = [WeakRetained tabWithUUID:uUID];

  if (v11)
  {
    v12 = [(TabCollectionViewManager *)self tabItem:v11 matchesSearchText:textCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tabBar:(id)bar toggleMediaStateMutedForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUID = [itemCopy UUID];

  v8 = [WeakRetained tabDocumentWithUUID:uUID];

  [v8 toggleMediaStateMuted];
}

- (void)tabBarManager:(id)manager didCreateTabBar:(id)bar
{
  barCopy = bar;
  [barCopy setDelegate:self];
  tabHoverPreviewController = [barCopy tabHoverPreviewController];

  [tabHoverPreviewController setDelegate:self];
}

- (id)_iconForTabWithUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabController = [WeakRetained tabController];
  v7 = [tabController iconForTabUUID:dCopy];

  return v7;
}

- (id)_extensionIconForTabWithURL:(id)l UUID:(id)d
{
  dCopy = d;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  uUIDString = [dCopy UUIDString];

  v10 = [WeakRetained tabGroupRelatedToTabWithUUID:uUIDString];

  v11 = objc_loadWeakRetained(&self->_browserController);
  tabGroupManager = [v11 tabGroupManager];
  profileIdentifier = [v10 profileIdentifier];
  v14 = [tabGroupManager profileWithIdentifier:profileIdentifier];

  v15 = +[Application sharedApplication];
  identifierForExtensions = [v14 identifierForExtensions];
  v17 = [v15 webExtensionsControllerForProfileServerID:identifierForExtensions];

  host = [lCopy host];

  v19 = [v17 webExtensionForBaseURIHost:host];
  icon = [v19 icon];

  return icon;
}

- (id)_urlForTabWithUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabWithUUID:dCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
  }

  else
  {
    uUIDString = [dCopy UUIDString];
    v10 = [WeakRetained wbTabWithUUID:uUIDString];
    v8 = [v10 url];
  }

  return v8;
}

- (void)setSnapshotsEnabled:(BOOL)enabled
{
  if (self->_snapshotsEnabled == !enabled)
  {
    self->_snapshotsEnabled = enabled;
    if (enabled)
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

- (void)setShouldDeferSnapshotRequest:(BOOL)request
{
  if (self->_shouldDeferSnapshotRequest != request)
  {
    self->_shouldDeferSnapshotRequest = request;
    if (!request)
    {
      v4 = +[TabSnapshotCache defaultSnapshotCache];
      [v4 requestNextSnapshotIfNecessary];
    }
  }
}

- (void)requestSnapshotForTabDocument:(id)document completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    rootViewController = [WeakRetained rootViewController];
    view = [rootViewController view];
    [view bounds];
    v12 = v11;
    v14 = v13;

    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    v17 = snapshotSizeForSuggestedSize(tabThumbnailCollectionView, v12, v14);
    v18 = v16;
    if (v17 == 1.79769313e308 && v16 == 1.79769313e308)
    {
      completionCopy[2](completionCopy, 0, 1);
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_dataSource);
      activeNonLibraryTab = [v20 activeNonLibraryTab];

      v22 = +[TabSnapshotCache defaultSnapshotCache];
      uuid = [documentCopy uuid];
      uuid2 = [activeNonLibraryTab uuid];
      v25 = [v22 isIdentifier:uuid memberOfSameGroupAsIdentifier:uuid2];

      if (v25)
      {
        v26 = activeNonLibraryTab;

        documentCopy = v26;
      }

      if ([tabThumbnailCollectionView prefersTransparentBorderPadding])
      {
        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      [v8 snapshotTabDocument:documentCopy size:v27 options:completionCopy completion:{v17, v18}];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 2);
  }
}

- (id)cachedContentImageForTabWithUUID:(id)d allowScaledImage:(BOOL)image
{
  v6 = [(TabSnapshotCache *)self->_snapshotCache snapshotWithIdentifier:d];
  cGImage = [v6 CGImage];

  if (cGImage)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    rootViewController = [WeakRetained rootViewController];
    view = [rootViewController view];
    [view bounds];
    v12 = v11;
    v14 = v13;

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v17 = v16;

    if (image || CGImageGetWidth(cGImage) / (v12 * v17) >= 0.5 && CGImageGetHeight(cGImage) / (v14 * v17) >= 0.5)
    {
      Width = CGImageGetWidth(cGImage);
      v22.size.height = CGImageGetHeight(cGImage);
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = Width;
      v23 = CGRectInset(v22, 1.0, 1.0);
      v23.origin.y = v23.origin.y + 200.0;
      v23.size.height = v23.size.height + -200.0;
      v19 = CGImageCreateWithImageInRect(cGImage, v23);
      cGImage = [MEMORY[0x277D755B8] imageWithCGImage:v19];
      CGImageRelease(v19);
    }

    else
    {
      cGImage = 0;
    }
  }

  return cGImage;
}

- (void)_updateSnapshotCacheStateWithCapacity:(unint64_t)capacity
{
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState])
  {

LABEL_6:
    _shouldUpdateSnapshotsForTabHoverPreview = 1;
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  shouldSnapshotActiveTab = [WeakRetained shouldSnapshotActiveTab];

  if ((shouldSnapshotActiveTab & 1) != 0 || self->_flushPendingSnapshots || self->_shouldUpdateSnapshotsTemporarily)
  {
    goto LABEL_6;
  }

  _shouldUpdateSnapshotsForTabHoverPreview = [(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview];
LABEL_7:
  [(TabSnapshotCache *)self->_snapshotCache setUpdating:self->_snapshotsEnabled && _shouldUpdateSnapshotsForTabHoverPreview forDelegate:self];
  snapshotCache = self->_snapshotCache;

  [(TabSnapshotCache *)snapshotCache setCapacity:capacity forDelegate:self];
}

- (id)_blankSnapshotGroupIdentifierForTabGroup:(id)group
{
  groupCopy = group;
  settings = [MEMORY[0x277D28F08] settings];
  if ([groupCopy isSyncable])
  {
    uuid = [groupCopy uuid];
  }

  else
  {
    uuid = 0;
  }

  isPrivateBrowsing = [groupCopy isPrivateBrowsing];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];

  uUID2 = [settings blankSnapshotGroupIdentifierForPrivateBrowsing:isPrivateBrowsing syncableTabGroupUUID:uuid forWindowWithUUID:uUID];
  if (!uUID2)
  {
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    [settings setBlankSnapshotGroupIdentifier:uUID2 forPrivateBrowsing:isPrivateBrowsing syncableTabGroupUUID:uuid forWindowWithUUID:uUID];
  }

  return uUID2;
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

- (void)_enumerateTabsOrderedByVisibility:(id)visibility
{
  visibilityCopy = visibility;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState])
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__TabCollectionViewManager__enumerateTabsOrderedByVisibility___block_invoke;
    v30[3] = &unk_2781D9068;
    v32 = visibilityCopy;
    v31 = WeakRetained;
    v7 = visibilityCopy;
    [tabThumbnailCollectionView enumerateItemsOrderedByVisibility:v30];

    activeNonLibraryTab = v32;
  }

  else
  {
    currentTabs = [WeakRetained currentTabs];
    activeNonLibraryTab = [WeakRetained activeNonLibraryTab];
    v10 = [currentTabs indexOfObject:activeNonLibraryTab];
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if ([currentTabs count] >= 2)
    {
      lastObject = [currentTabs lastObject];

      if (activeNonLibraryTab == lastObject)
      {
        v11 = 0;
      }

      else
      {
        firstObject = [currentTabs firstObject];

        if (activeNonLibraryTab == firstObject)
        {
          v11 = [currentTabs count] - 1;
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
    v27 = visibilityCopy;
    v28 = v11;
    v29 = v12;
    v7 = currentTabs;
    v26 = v7;
    v15 = visibilityCopy;
    v16 = _Block_copy(&v22);
    if ([(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview:v22])
    {
      v17 = objc_loadWeakRetained(&self->_tabBar);
      v18 = objc_loadWeakRetained(&self->_tabBarManager);
      effectiveTabBar = [v18 effectiveTabBar];

      v20 = effectiveTabBar;
      if ((effectiveTabBar || (v20 = v17, v21 = v12, v17)) && (v21 = [v20 indexOfCenterItem], v21 == 0x7FFFFFFFFFFFFFFFLL) || v21 >= objc_msgSend(v7, "count"))
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

- (void)updateStartPageSnapshotIfNeededForTabDocument:(id)document currentSnapshotSize:(CGSize)size
{
  documentCopy = document;
  if ([documentCopy isShowingSystemStartPage])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained windowSize];
    v8 = v7;
    v10 = v9;

    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    snapshotSizeForSuggestedSize(tabThumbnailCollectionView, v8, v10);
    _SFScreenScale();
    if ((_SFEqualWithEpsilon() & 1) == 0)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __94__TabCollectionViewManager_updateStartPageSnapshotIfNeededForTabDocument_currentSnapshotSize___block_invoke;
      v12[3] = &unk_2781D4C88;
      v12[4] = self;
      v13 = documentCopy;
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

- (void)_temporarilyUpdateSnapshotsForTabDocument:(id)document
{
  documentCopy = document;
  tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
  if ([tabThumbnailCollectionView presentationState])
  {
  }

  else
  {
    contentIsReadyForSnapshot = [documentCopy contentIsReadyForSnapshot];

    if (contentIsReadyForSnapshot)
    {
      self->_shouldUpdateSnapshotsTemporarily = 1;
      snapshotCache = self->_snapshotCache;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __70__TabCollectionViewManager__temporarilyUpdateSnapshotsForTabDocument___block_invoke;
      v8[3] = &unk_2781D4C88;
      v8[4] = self;
      v9 = documentCopy;
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

- (id)_contentForSnapshotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(TabSnapshotCache *)self->_snapshotCache snapshotWithIdentifier:identifierCopy];
  v6 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:identifierCopy];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    activeTabDocument = [WeakRetained activeTabDocument];
    uuid = [activeTabDocument uuid];
    v10 = [identifierCopy isEqual:uuid];

    v11 = 0.0;
    if (v10)
    {
      v12 = objc_loadWeakRetained(&self->_browserController);
      rootViewController = [v12 rootViewController];
      [rootViewController bannerHeightIncludedInSnapshot];
      v11 = v14;
    }

    v15 = objc_alloc(MEMORY[0x277D28DA0]);
    v16 = [(TabSnapshotCache *)self->_snapshotCache hasValidSnapshotWithIdentifier:identifierCopy];
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
  orderedSet = [MEMORY[0x277CBEB70] orderedSet];
  [(TabSnapshotCache *)snapshotCache setIdentifiersToCache:orderedSet forDelegate:self];

  v5 = self->_snapshotCache;
  self->_snapshotCache = 0;
}

- (void)invalidateSnapshotForTab:(id)tab
{
  tabCopy = tab;
  v5 = tabCopy;
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
    v13 = tabCopy;
    v17 = v13;
    selfCopy = self;
    [(TabSnapshotCache *)snapshotCache performBatchUpdatesWithBlock:v16];
    snapshotPool = self->_snapshotPool;
    uuid = [v13 uuid];
    [(SFTabSnapshotPool *)snapshotPool contentDidChangeForSnapshotsWithIdentifier:uuid];
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

- (void)removeSnapshotForTabWithUUID:(id)d
{
  [(TabSnapshotCache *)self->_snapshotCache removeSnapshotWithIdentifier:d];

  [(TabCollectionViewManager *)self _updateTabSnapshotsAnimated:1];
}

- (void)_updateTabSnapshotsWithIdentifier:(id)identifier animated:(BOOL)animated
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  normalAndPrivateTabs = [WeakRetained normalAndPrivateTabs];
  v8 = normalAndPrivateTabs;
  v25 = WeakRetained;
  v26 = identifierCopy;
  v24 = normalAndPrivateTabs;
  if (identifierCopy)
  {
    v9 = [WeakRetained tabWithUUID:identifierCopy];
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
    v10 = normalAndPrivateTabs;
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
        uuid = [v16 uuid];
        v18 = [(TabCollectionViewManager *)self cachedContentImageForTabWithUUID:uuid allowScaledImage:1];

        if (v18)
        {
          uuid2 = [v16 uuid];
          uuid3 = [(CollectionViewTab *)self->_tabShowingPreview uuid];
          if ([uuid2 isEqual:uuid3])
          {
            isActive = [v16 isActive];

            if (isActive)
            {
              goto LABEL_18;
            }

            uuid4 = [v16 uuid];
            uuid2 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:uuid4];

            v23 = objc_loadWeakRetained(&self->_browserController);
            uuid3 = [v23 tabHoverPreview];

            [uuid3 setSnapshotImage:v18 metadata:uuid2];
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

- (void)flushPendingSnapshotsWithCompletion:(id)completion
{
  v13[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!self->_flushPendingSnapshots)
  {
    self->_flushPendingSnapshots = 1;
    [(TabCollectionViewManager *)self updateSnapshotCacheState];
  }

  if (completionCopy)
  {
    snapshotCache = self->_snapshotCache;
    if (snapshotCache && ![(TabSnapshotCache *)snapshotCache isFinishedUpdating])
    {
      flushPendingSnapshotsCompletions = self->_flushPendingSnapshotsCompletions;
      p_flushPendingSnapshotsCompletions = &self->_flushPendingSnapshotsCompletions;
      v8 = _Block_copy(completionCopy);
      v9 = [(NSArray *)flushPendingSnapshotsCompletions arrayByAddingObject:v8];
      if (v9)
      {
        objc_storeStrong(p_flushPendingSnapshotsCompletions, v9);
      }

      else
      {
        v10 = _Block_copy(completionCopy);
        v13[0] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        v12 = *p_flushPendingSnapshotsCompletions;
        *p_flushPendingSnapshotsCompletions = v11;
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }
}

- (void)tabSnapshotCache:(id)cache requestSnapshotWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = [(TabCollectionViewManager *)self snapshottableTabDocumentForIdentifier:identifier];
  if ([v7 inElementFullscreen])
  {
    v8 = completionCopy[2];
  }

  else
  {
    if (v7)
    {
      [(TabCollectionViewManager *)self requestSnapshotForTabDocument:v7 completion:completionCopy];
      goto LABEL_7;
    }

    v8 = completionCopy[2];
  }

  v8();
LABEL_7:
}

- (id)snapshottableTabDocumentForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabDocumentWithUUID:identifierCopy];
  if (!v6)
  {
LABEL_6:
    v9 = +[(WBReusableTabManager *)ReusableTabManager];
    v10 = [v9 reusableTabDocumentWithUUID:identifierCopy];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_browserController);
      tabGroupManager = [v11 tabGroupManager];

      uuidString = [v10 uuidString];
      v14 = [tabGroupManager tabWithUUID:uuidString];

      if (v14)
      {
        tabGroupUUID = [v14 tabGroupUUID];
        v16 = [tabGroupManager tabGroupWithUUID:tabGroupUUID];
      }

      else
      {
        v16 = 0;
      }

      uuid = [v10 uuid];
      uUIDString = [uuid UUIDString];
      v19 = [v16 tabWithUUID:uUIDString];

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

  currentTabs = [WeakRetained currentTabs];
  if (([currentTabs containsObject:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  isClosed = [v6 isClosed];

  if (isClosed)
  {
    goto LABEL_6;
  }

LABEL_15:

  return v6;
}

- (BOOL)tabSnapshotCache:(id)cache canAcceptRequestForIdentifier:(id)identifier
{
  v4 = [(TabCollectionViewManager *)self snapshottableTabDocumentForIdentifier:identifier];
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

- (void)tabSnapshotCacheDidFinishUpdating:(id)updating
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

- (unint64_t)_snapshotCacheCapacityWithSnapshotsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  viewControllerToPresentFrom = [WeakRetained viewControllerToPresentFrom];
  viewIfLoaded = [viewControllerToPresentFrom viewIfLoaded];

  if (viewIfLoaded)
  {
    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    [viewIfLoaded bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    traitCollection = [viewIfLoaded traitCollection];
    v18 = [tabThumbnailCollectionView estimatedSnapshotsPerPageForBounds:traitCollection withTraitCollection:{v10, v12, v14, v16}];

    if ([tabThumbnailCollectionView presentationState])
    {
      if (enabledCopy)
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

    else if (enabledCopy)
    {
      v19 = objc_loadWeakRetained(&self->_tabBar);
      _shouldUpdateSnapshotsForTabHoverPreview = [(TabCollectionViewManager *)self _shouldUpdateSnapshotsForTabHoverPreview];
      v21 = _shouldUpdateSnapshotsForTabHoverPreview;
      if (v19 && _shouldUpdateSnapshotsForTabHoverPreview)
      {
        v18 += [v19 maxNumberOfVisibleTabs];
      }

      else
      {
        v22 = objc_loadWeakRetained(&self->_tabBarManager);
        effectiveTabBar = [v22 effectiveTabBar];

        if (effectiveTabBar != 0 && v21)
        {
          v18 += [effectiveTabBar maximumNumberOfVisibleItems];
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
    tabThumbnailCollectionView = [(TabCollectionViewManager *)self tabThumbnailCollectionView];
    presentationState = [tabThumbnailCollectionView presentationState];

    if (!presentationState)
    {

      [(TabCollectionViewManager *)self updateSnapshotIdentifiers];
    }
  }
}

- (void)dismissTabHoverPreview
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  tabHoverPreviewController = [WeakRetained tabHoverPreviewController];
  [tabHoverPreviewController dismiss];

  v5 = objc_loadWeakRetained(&self->_tabBarManager);
  effectiveTabBar = [v5 effectiveTabBar];
  tabHoverPreviewController2 = [effectiveTabBar tabHoverPreviewController];
  [tabHoverPreviewController2 dismiss];

  tabHoverPreviewController3 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
  [tabHoverPreviewController3 dismiss];
}

- (void)tabHoverPreviewController:(id)controller showPreviewForItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v8 = objc_loadWeakRetained(&self->_tabBarManager);
  effectiveTabBar = [v8 effectiveTabBar];

  tabHoverPreviewController = [WeakRetained tabHoverPreviewController];
  if (tabHoverPreviewController == controllerCopy)
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [WeakRetained viewForItem:itemCopy];
      goto LABEL_9;
    }
  }

  else
  {
  }

  tabHoverPreviewController2 = [effectiveTabBar tabHoverPreviewController];

  if (tabHoverPreviewController2 == controllerCopy)
  {
    v12 = [effectiveTabBar viewForBarItem:itemCopy];
  }

  else
  {
    tabHoverPreviewController3 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];

    if (tabHoverPreviewController3 != controllerCopy)
    {
      goto LABEL_21;
    }

    v12 = [(LibraryContentController *)self->_libraryController viewForTabHoverPreviewItem:itemCopy];
  }

LABEL_9:
  v15 = v12;
  if (v12)
  {
    v16 = objc_loadWeakRetained(&self->_browserController);
    tabHoverPreview = [v16 tabHoverPreview];

    if (tabHoverPreview)
    {
      v18 = objc_loadWeakRetained(&self->_dataSource);
      uUID = [itemCopy UUID];
      v31 = v18;
      v20 = [v18 tabWithUUID:uUID];

      objc_storeStrong(&self->_tabShowingPreview, v20);
      if ([v20 isActive])
      {
        [tabHoverPreview setSnapshotImage:0 metadata:0];
      }

      else
      {
        uUID2 = [itemCopy UUID];
        v22 = [(TabCollectionViewManager *)self cachedContentImageForTabWithUUID:uUID2 allowScaledImage:1];

        uUID3 = [itemCopy UUID];
        v24 = [(TabCollectionViewManager *)self cachedSnapshotMetadataForTabWithUUID:uUID3];

        [tabHoverPreview setSnapshotImage:v22 metadata:v24];
      }

      title = [itemCopy title];
      [tabHoverPreview setTitleText:title];

      v26 = [v20 url];
      if ([v26 safari_isSafariWebExtensionURL])
      {
        safari_userVisibleHostOrExtensionDisplayName = [v26 safari_userVisibleHostOrExtensionDisplayName];
        titleText = [tabHoverPreview titleText];
        if ([titleText isEqualToString:safari_userVisibleHostOrExtensionDisplayName])
        {
          safari_stringByRemovingWwwDotPrefix = &stru_2827BF158;
        }

        else
        {
          safari_stringByRemovingWwwDotPrefix = safari_userVisibleHostOrExtensionDisplayName;
        }
      }

      else
      {
        safari_userVisibleHostOrExtensionDisplayName = [v26 host];
        safari_stringByRemovingWwwDotPrefix = [(__CFString *)safari_userVisibleHostOrExtensionDisplayName safari_stringByRemovingWwwDotPrefix];
        titleText = safari_stringByRemovingWwwDotPrefix;
      }

      [tabHoverPreview setSecondaryTitleText:safari_stringByRemovingWwwDotPrefix];

      tabHoverPreviewController4 = [(LibraryContentController *)self->_libraryController tabHoverPreviewController];
      [tabHoverPreview showPreviewForItemView:v15 forVerticalTabs:tabHoverPreviewController4 == controllerCopy];
    }
  }

LABEL_21:
}

- (void)tabHoverPreviewControllerDismissPreview:(id)preview
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabHoverPreview = [WeakRetained tabHoverPreview];

  [tabHoverPreview dismissPreview];
  tabShowingPreview = self->_tabShowingPreview;
  self->_tabShowingPreview = 0;
}

- (id)tabWithUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained tabWithUUID:dCopy];

  return v6;
}

- (unint64_t)_indexToInsertPlaceholderAtTabItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    currentTabs = [WeakRetained currentTabs];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__TabCollectionViewManager__indexToInsertPlaceholderAtTabItem___block_invoke;
    v9[3] = &unk_2781D90E0;
    v10 = itemCopy;
    v7 = [currentTabs indexOfObjectPassingTest:v9];
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

- (id)insertPlaceholderAfterTabItem:(id)item
{
  self->_placeholderItemIsPrivate = self->_privateBrowsingEnabled;
  itemCopy = item;
  v5 = [(TabCollectionViewManager *)self _indexToInsertPlaceholderAtTabItem:itemCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  self->_placeholderItemIndex = v6;
  placeholderItem = [objc_opt_class() placeholderItem];
  placeholderItem = self->_placeholderItem;
  self->_placeholderItem = placeholderItem;

  isPinned = [itemCopy isPinned];
  [(TabCollectionItem *)self->_placeholderItem setPinned:isPinned];
  [(TabCollectionViewManager *)self updateTabOverviewItems];
  [(TabCollectionViewManager *)self updateTabBarAnimated:1 keepingTabVisible:0];
  v10 = self->_placeholderItem;

  return v10;
}

- (void)movePlaceholderToEndOfPinnedTabs:(id)tabs
{
  tabsCopy = tabs;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  currentTabs = [WeakRetained currentTabs];

  v6 = [currentTabs indexOfObjectPassingTest:&__block_literal_global_65];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [currentTabs count];
  }

  [(TabCollectionViewManager *)self _movePlaceholder:tabsCopy toIndex:v6];
}

- (void)movePlaceholder:(id)placeholder overTabItem:(id)item
{
  placeholderCopy = placeholder;
  itemCopy = item;
  if (([itemCopy isPlaceholder] & 1) == 0)
  {
    v7 = [(TabCollectionViewManager *)self _indexToInsertPlaceholderAtTabItem:itemCopy];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      currentTabs = [WeakRetained currentTabs];
      v10 = [currentTabs count];
    }

    else if (v7 < self->_placeholderItemIndex)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7 + 1;
    }

    [(TabCollectionViewManager *)self _movePlaceholder:placeholderCopy toIndex:v10];
  }
}

- (void)_movePlaceholder:(id)placeholder toIndex:(unint64_t)index
{
  placeholderCopy = placeholder;
  if ([(TabCollectionViewManager *)self isPlaceholderItemValid:?])
  {
    self->_placeholderItemIndex = index;
    [(TabCollectionViewManager *)self updateTabOverviewItems];
    [(TabCollectionViewManager *)self _updateTabBarAnimated:1 keepingTabVisibleForItem:placeholderCopy];
  }
}

- (void)removePlaceholderItem:(id)item
{
  itemCopy = item;
  v5 = [(TabCollectionViewManager *)self isPlaceholderItemValid:itemCopy];
  placeholderItem = self->_placeholderItem;

  if (placeholderItem == itemCopy)
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

- (id)replacePlaceholderItem:(id)item withTabsForDropSession:(id)session dragItems:(id)items
{
  itemCopy = item;
  sessionCopy = session;
  itemsCopy = items;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  currentTabs = [WeakRetained currentTabs];
  v13 = [currentTabs count];

  if ([(TabCollectionViewManager *)self isPlaceholderItemValid:itemCopy]&& (placeholderItemIndex = self->_placeholderItemIndex, placeholderItemIndex <= v13))
  {
    v16 = [WeakRetained dropTabsAtIndex:placeholderItemIndex pinned:-[TabCollectionItem isPinned](self->_placeholderItem dropSession:"isPinned") dragItems:{sessionCopy, itemsCopy}];
    [(TabCollectionViewManager *)self removePlaceholderItem:itemCopy];
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

- (id)dragItemForTab:(id)tab tabItem:(id)item
{
  v6 = MEMORY[0x277D75470];
  itemCopy = item;
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [v6 safari_itemWithTab:tabCopy tabItem:itemCopy browserController:WeakRetained];

  return v10;
}

- (void)_setTabsForDragItems:(id)items hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v43 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = itemsCopy;
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
        safari_localBrowserController = [v12 safari_localBrowserController];
        v14 = [strongToStrongObjectsMapTable objectForKey:safari_localBrowserController];
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

        safari_localWBTab = [v12 safari_localWBTab];

        if (safari_localWBTab)
        {
          safari_localWBTab2 = [v12 safari_localWBTab];
          v20 = [v17 setByAddingObject:safari_localWBTab2];

          v17 = v20;
        }

        [strongToStrongObjectsMapTable setObject:v17 forKey:safari_localBrowserController];
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
  keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
  v22 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        v27 = [strongToStrongObjectsMapTable objectForKey:v26];
        v28 = [v27 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_70];

        tabController = [v26 tabController];
        tabCollectionViewManager = [(TabController *)tabController tabCollectionViewManager];

        v31 = tabCollectionViewManager[8];
        if (hiddenCopy)
        {
          [v31 unionSet:v28];
        }

        else
        {
          [v31 minusSet:v28];
        }

        [tabCollectionViewManager updateTabOverviewItems];
        [tabCollectionViewManager updateTabBarAnimated:1 keepingTabVisible:0];
      }

      v23 = [keyEnumerator countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (void)willBeginDragSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocumentWillBeginDragSession:sessionCopy];
}

- (void)willEndDragSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained tabDocumentWillEndDragSession:sessionCopy];
}

- (void)didBeginTrackingSession:(id)session
{
  sessionCopy = session;
  [(TabCollectionViewManager *)self dismissTabHoverPreview];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained beginTrackingDropSessionForTabBarVisibility:sessionCopy];
}

- (void)didEndTrackingSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained endTrackingDropSessionForTabBarVisibility:sessionCopy];
}

- (TabMenuProviderDataSource)tabMenuProviderDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  tabMenuProviderDataSource = [WeakRetained tabMenuProviderDataSource];

  return tabMenuProviderDataSource;
}

- (void)performBatchUpdatesWithBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained performBatchUpdatesWithBlock:blockCopy];
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

- (void)webViewDidFirstMeaningfulPaintForTabDocument:(id)document
{
  documentCopy = document;
  if (([documentCopy isActive] & 1) == 0)
  {
    [(TabCollectionViewManager *)self _temporarilyUpdateSnapshotsForTabDocument:documentCopy];
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