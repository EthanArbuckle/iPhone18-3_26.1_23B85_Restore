@interface DOCTabbedBrowserViewController
+ (id)globalMapTable;
+ (id)globalTabbedBrowserControllerForIdentifier:(id)a3;
+ (void)setGlobalTabbedBrowserController:(id)a3 forIdentifier:(id)a4;
- (BOOL)_shouldForwardSelectorToDelegate:(SEL)a3;
- (BOOL)canHaveTabs;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)documentBrowser:(id)a3 shouldHandleLocation:(id)a4;
- (BOOL)documentBrowser:(id)a3 shouldShowActivityViewControllerForDocumentURLs:(id)a4 barButtonItem:(id)a5 popoverTracker:(id)a6;
- (BOOL)isShowingMovePanel;
- (BOOL)shouldDeferBrowserStateChanges;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (DOCFullDocumentManagerViewController)effectiveFullBrowser;
- (DOCTabbedBrowserViewController)initWithCoder:(id)a3;
- (DOCTabbedBrowserViewController)initWithConfiguration:(id)a3;
- (DOCTabbedBrowserViewControllerDelegate)tabbedBrowserViewControllerDelegate;
- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController;
- (id)_multitaskingDragExclusionRects;
- (id)_referenceViewControllerForDirectTabChildViewController:(id)a3;
- (id)documentBrowser:(id)a3 applicationActivitiesForDocumentURLs:(id)a4;
- (id)effectiveFullBrowserForTab:(unint64_t)a3;
- (id)forceBrowseTabDefaultsValue;
- (id)fullBrowserHierarchyController;
- (id)initForOpeningContentTypes:(id)a3;
- (id)newViewControllerFor:(id)a3;
- (id)newViewControllersSharing:(id)a3 tabBarItems:(id)a4;
- (id)preferredFocusEnvironments;
- (id)selectedTabReferenceViewController;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)transitionControllerForDocumentAtURL:(id)a3;
- (id)viewControllerFor:(id)a3;
- (int64_t)tabSwitcherStyleForCompactPresentation;
- (unint64_t)_mostRecentBrowsedPathEffectiveTab;
- (unint64_t)browserContentStrategy;
- (unint64_t)defaultInitialBrowsedPathEffectiveTab;
- (unint64_t)effectiveTabSwitcherTab;
- (unint64_t)fetchLastUsedTab;
- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (unint64_t)tabBarCurrentRawTab;
- (unint64_t)tabControllerIndexForTab:(unint64_t)a3;
- (unint64_t)tabControllerIndexForTab:(unint64_t)a3 inViewControllers:(id)a4;
- (void)_applyBrowserStateChange:(id)a3 force:(BOOL)a4;
- (void)_beginSystemTabBarAllowed;
- (void)_beginSystemTabBarAlwaysDisallowed;
- (void)_beginSystemTabBarDisallowed;
- (void)_beginSystemTabBarHidden;
- (void)_loadFullHierarchy;
- (void)_loadMinimalHierarchy;
- (void)_performWhilePreventingHierarchyControllerLoading:(id)a3;
- (void)_setLocationsInBrowseTab:(id)a3;
- (void)_setShowSystemTabBar:(BOOL)a3 isEditing:(BOOL)a4;
- (void)_stopSearchingSources;
- (void)_updateColumnViewAvailablityFromTraitCollection:(id)a3 andSize:(CGSize)a4;
- (void)_updateTabButtonsVisibilityForTraits;
- (void)_viewController:(id)a3 wantsToShowSystemTabBar:(BOOL)a4 isEditing:(BOOL)a5;
- (void)actionController:(id)a3 presentError:(id)a4 completion:(id)a5;
- (void)actionControllerDidFinishAction:(id)a3 error:(id)a4;
- (void)actionControllerDidFinishAction:(id)a3 userInfo:(id)a4 error:(id)a5;
- (void)applyBrowserStateChange:(id)a3;
- (void)configureTabBarForUIPIfNecessary;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)dataSource:(id)a3 didUpdateTabs:(id)a4;
- (void)dataSource:(id)a3 wantsToPresentConnectToServer:(id)a4;
- (void)dataSource:(id)a3 wantsToReveal:(id)a4;
- (void)dealloc;
- (void)dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4;
- (void)doc_commonInit;
- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5;
- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4;
- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5;
- (void)documentBrowser:(id)a3 willPresentActivityViewController:(id)a4;
- (void)enumerateAllFullBrowserViewControllers:(id)a3;
- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)a3;
- (void)fullDocumentManagerViewController:(id)a3 didUpdateHierarchy:(id)a4 displayedRootLocation:(id)a5;
- (void)importDocumentAtURL:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5;
- (void)importDocumentAtURL:(id)a3 nextToDocumentAtURL:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6;
- (void)itemCollectionViewControllerDidLoad;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performBrowserStateChange:(id)a3;
- (void)performConnectToServer:(id)a3;
- (void)performDeselectAll:(id)a3;
- (void)performGoToEnclosingFolder:(id)a3;
- (void)performGoToOnMyDevice:(id)a3;
- (void)performGoToShared:(id)a3;
- (void)performScanDocuments:(id)a3;
- (void)presentBrowseTabFromFullBrowser;
- (void)presentConnectToServer:(id)a3;
- (void)presentConnectToServer:(id)a3 askPermission:(BOOL)a4;
- (void)presentGoToLocation;
- (void)presentRecentsTabFromFullBrowse;
- (void)presentSharedTabFromFullBrowser;
- (void)presentTab:(unint64_t)a3 rawTabSwitchOnly:(BOOL)a4;
- (void)revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 openDocument:(BOOL)a5 revealContents:(BOOL)a6 updateLastUsedDate:(BOOL)a7 completion:(id)a8;
- (void)saveSelectedTabState;
- (void)selectAll:(id)a3;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3;
- (void)setAllowsDocumentCreation:(BOOL)a3;
- (void)setAllowsPickingMultipleItems:(BOOL)a3;
- (void)setCustomActions:(id)a3;
- (void)setIsShowingSearchResults:(BOOL)a3;
- (void)setIsSystemTabBarAllowedByTraits:(BOOL)a3;
- (void)setSafeAreaUpdatesDisabledDuringTransitions:(BOOL)a3;
- (void)showConnectToServer:(id)a3;
- (void)splitViewController:(id)a3 didChangeFromState:(id)a4 toState:(id)a5 isUserDisplayModeChange:(BOOL)a6;
- (void)splitViewController:(id)a3 wantsToShowTabBar:(BOOL)a4;
- (void)startSearchingSourcesWithConfiguration:(id)a3;
- (void)switchToLocation:(id)a3;
- (void)switchToTab:(unint64_t)a3;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4;
- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4;
- (void)tabbedBrowserView:(id)a3 willMoveToWindow:(id)a4;
- (void)updateDeferredBrowserStateChangesWith:(id)a3;
- (void)updateForChangedHorizontalSizeClass;
- (void)updateLocationTitleFromCurrentState;
- (void)updateNavigationBarButtonItemsForViewController:(id)a3;
- (void)updateTabBarVisibility;
- (void)updateTraitCollectionTabBarSetting;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCTabbedBrowserViewController

+ (id)globalMapTable
{
  if (globalMapTable_onceToken != -1)
  {
    +[DOCTabbedBrowserViewController globalMapTable];
  }

  v3 = globalMapTable_mapTable;

  return v3;
}

void __48__DOCTabbedBrowserViewController_globalMapTable__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = globalMapTable_mapTable;
  globalMapTable_mapTable = v0;
}

+ (id)globalTabbedBrowserControllerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = +[DOCTabbedBrowserViewController globalMapTable];
    v7 = [v6 objectForKey:v4];
  }

  else
  {
    v8 = MEMORY[0x277D06310];
    v9 = *MEMORY[0x277D06310];
    if (!*MEMORY[0x277D06310])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:v9];
    }

    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

+ (void)setGlobalTabbedBrowserController:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  objc_sync_enter(v8);
  if (v7)
  {
    if (v6)
    {
      v9 = +[DOCTabbedBrowserViewController globalMapTable];
      [v9 setObject:v6 forKey:v7];
    }

    else
    {
      v12 = +[DOCTabbedBrowserViewController globalMapTable];
      [v12 removeObjectForKey:v7];

      v13 = MEMORY[0x277D06310];
      v14 = *MEMORY[0x277D06310];
      if (!*MEMORY[0x277D06310])
      {
        DOCInitLogging();
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:v7 forIdentifier:v14];
      }
    }
  }

  else
  {
    v10 = MEMORY[0x277D06310];
    v11 = *MEMORY[0x277D06310];
    if (!*MEMORY[0x277D06310])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:v11];
    }
  }

  objc_sync_exit(v8);
}

- (id)initForOpeningContentTypes:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initForOpeningContentTypes:a3];
  v4 = v3;
  if (v3)
  {
    [v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (DOCTabbedBrowserViewController)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initWithConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCTabbedBrowserViewController *)v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (DOCTabbedBrowserViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCTabbedBrowserViewController *)v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  if ([(DOCTabbedBrowserViewController *)self isViewLoaded])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    v4 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [v4 removeObserver:self forKeyPath:@"editing"];

    v5 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [v5 removeObserver:self forKeyPath:@"editing"];
  }

  v6 = [(UIDocumentBrowserViewController *)self configuration];
  v7 = [v6 sceneIdentifier];
  [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:0 forIdentifier:v7];

  v8 = [(UIDocumentBrowserViewController *)self configuration];
  v9 = [v8 sceneIdentifier];
  [_TtC26DocumentManagerExecutables21DOCInteractionManager clearSharedControllerFor:v9];

  [(DOCTabbedBrowserViewController *)self _stopSearchingSources];
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v10 dealloc];
}

- (void)setIsSystemTabBarAllowedByTraits:(BOOL)a3
{
  if (self->_isSystemTabBarAllowedByTraits == a3)
  {
    [(DOCAutoBarHidingTabBarController *)self->_tabBarController updateBarVisibilityIfNecessary];
  }

  else
  {
    self->_isSystemTabBarAllowedByTraits = a3;
    if (a3)
    {
      [(DOCTabbedBrowserViewController *)self _beginSystemTabBarAllowed];
    }

    else
    {
      [(DOCTabbedBrowserViewController *)self _beginSystemTabBarDisallowed];
    }
  }
}

- (void)_beginSystemTabBarDisallowed
{
  if ([(DOCTabbedBrowserViewController *)self canHaveTabs])
  {

    [(DOCTabbedBrowserViewController *)self _beginSystemTabBarHidden];
  }

  else
  {

    [(DOCTabbedBrowserViewController *)self _beginSystemTabBarAlwaysDisallowed];
  }
}

- (void)_beginSystemTabBarHidden
{
  v3 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([v3 isEditing])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    v4 = [v5 isEditing];
  }

  [(DOCTabbedBrowserViewController *)self _setShowSystemTabBar:0 isEditing:v4];
}

- (void)_beginSystemTabBarAlwaysDisallowed
{
  v3 = [(DOCTabbedBrowserViewController *)self tabBarCurrentRawTab];
  if (v3 <= 1 && (v4 = v3, -[DOCTabbedBrowserViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = &OBJC_IVAR___DOCTabbedBrowserViewController__fullSharedViewController;
    if (!v4)
    {
      v7 = &OBJC_IVAR___DOCTabbedBrowserViewController__fullRecentsViewController;
    }

    v8 = *(&self->super.super.super.super.isa + *v7);
    v9 = [v8 hierarchyController];
    v10 = [v9 locations];
  }

  else
  {
    v10 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__DOCTabbedBrowserViewController__beginSystemTabBarAlwaysDisallowed__block_invoke;
  v11[3] = &unk_278FA1C30;
  v11[4] = self;
  [(DOCTabbedBrowserViewController *)self _performWhilePreventingHierarchyControllerLoading:v11];
  if (v10)
  {
    [(DOCTabbedBrowserViewController *)self _setLocationsInBrowseTab:v10];
  }
}

uint64_t __68__DOCTabbedBrowserViewController__beginSystemTabBarAlwaysDisallowed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentTab:2 rawTabSwitchOnly:1];
  v2 = *(a1 + 32);

  return [v2 _beginSystemTabBarHidden];
}

- (void)_performWhilePreventingHierarchyControllerLoading:(id)a3
{
  v4 = a3;
  v5 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
  v6 = [v5 hierarchyController];
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__DOCTabbedBrowserViewController__performWhilePreventingHierarchyControllerLoading___block_invoke;
    v7[3] = &unk_278FA1EA8;
    v8 = v4;
    [v6 performWhilePreventingLoading:v7];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_beginSystemTabBarAllowed
{
  v3 = [(DOCTabbedBrowserViewController *)self effectiveTabSwitcherTab];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__DOCTabbedBrowserViewController__beginSystemTabBarAllowed__block_invoke;
  v4[3] = &unk_278FA2128;
  v4[4] = self;
  v4[5] = v3;
  [(DOCTabbedBrowserViewController *)self _performWhilePreventingHierarchyControllerLoading:v4];
}

uint64_t __59__DOCTabbedBrowserViewController__beginSystemTabBarAllowed__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1212];
  v4 = [v2 fullRecentsViewController];
  [v2 _setShowSystemTabBar:v3 isEditing:{objc_msgSend(v4, "isEditing")}];

  v5 = *(a1 + 40);
  result = [*(a1 + 32) effectiveTabSwitcherTab];
  if (v5 != result)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v7 presentTab:v8];
  }

  return result;
}

- (void)_setLocationsInBrowseTab:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(DOCTabbedBrowserViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(DOCTabbedBrowserViewController *)self presentedViewController];
      v8 = [v7 sidebarViewController];
      v9 = [v7 fullDocumentManagerViewController];
    }

    else
    {
      v8 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController sidebarViewController];
      v9 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    }

    v10 = [v4 lastObject];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__DOCTabbedBrowserViewController__setLocationsInBrowseTab___block_invoke;
    v14[3] = &unk_278FA2150;
    v15 = v10;
    v16 = v9;
    v17 = v8;
    v18 = v4;
    v11 = v8;
    v12 = v9;
    v13 = v10;
    [v12 showLocation:v13 fromRootAnimated:0 withCompletionBlock:v14];
  }
}

void __59__DOCTabbedBrowserViewController__setLocationsInBrowseTab___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayedRootLocation];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 48);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __59__DOCTabbedBrowserViewController__setLocationsInBrowseTab___block_invoke_2;
    v5[3] = &unk_278FA1E80;
    v6 = v4;
    v7 = *(a1 + 56);
    [v6 withLocationChangePacingDisabled:v5];
  }
}

void __59__DOCTabbedBrowserViewController__setLocationsInBrowseTab___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 updateSelectionToMatchBrowsedLocation:v2 scrollToVisible:1];
}

- (void)_updateTabButtonsVisibilityForTraits
{
  v3 = [MEMORY[0x277D06208] tabSidebar];
  v4 = [v3 isEnabled];

  if ((v4 & 1) == 0)
  {
    [(DOCTabbedBrowserViewController *)self updateTraitCollectionTabBarSetting];
    v5 = [(DOCTabbedBrowserViewController *)self enclosingTabSwitcherStyle]!= 0;
    v6 = [(DOCTabbedBrowserViewController *)self traitCollection];
    v7 = [v6 contextPrefersVariableBlurBottomTabBar];
    v8 = [(DOCTabbedBrowserViewController *)self tabBarController];
    [v8 setUsingVariableBlurBottomBar:v7];

    [(DOCTabbedBrowserViewController *)self setIsSystemTabBarAllowedByTraits:v5];
  }
}

- (void)_viewController:(id)a3 wantsToShowSystemTabBar:(BOOL)a4 isEditing:(BOOL)a5
{
  v5 = a4;
  v8 = a3;
  self->_isSystemTabBarPreferred = v5;
  v7 = v5 && [(DOCTabbedBrowserViewController *)self isSystemTabBarAllowedByTraits];
  if (self->_isSystemTabBarVisible != v7)
  {
    [DOCTabbedBrowserViewController _setShowSystemTabBar:"_setShowSystemTabBar:isEditing:" isEditing:?];
  }
}

- (void)_setShowSystemTabBar:(BOOL)a3 isEditing:(BOOL)a4
{
  self->_isSystemTabBarVisible = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__DOCTabbedBrowserViewController__setShowSystemTabBar_isEditing___block_invoke;
  aBlock[3] = &unk_278FA2178;
  aBlock[4] = self;
  v12 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  if (![v6 prefersAnimatedTabVibilityChanges])
  {

    goto LABEL_5;
  }

  v7 = [(DOCTabbedBrowserViewController *)self doc_hasAppeared];

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__DOCTabbedBrowserViewController__setShowSystemTabBar_isEditing___block_invoke_2;
    v9[3] = &unk_278FA1EA8;
    v10 = v5;
    [v8 performWithoutAnimation:v9];

    goto LABEL_6;
  }

  v5[2](v5);
LABEL_6:
}

void __65__DOCTabbedBrowserViewController__setShowSystemTabBar_isEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) canHaveTabs];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 tabBarController];
    [v4 setSoleValidIndex:0];
  }

  else
  {
    v5 = [v3 tabControllerIndexForTab:2];
    v4 = [*(a1 + 32) tabBarController];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    [v4 setSoleValidIndex:v6];
  }

  v7 = [*(a1 + 32) tabBarController];
  [v7 setNeverAllowShowingSystemTabs:(*(a1 + 40) & 1) == 0];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) navigationController];
  [v9 setToolbarHidden:v8];
}

- (void)startSearchingSourcesWithConfiguration:(id)a3
{
  v3 = [(DOCTabbedBrowserViewController *)self sourceObserver];
  [v3 startObservingSources];
}

- (void)_stopSearchingSources
{
  v2 = [(DOCTabbedBrowserViewController *)self sourceObserver];
  [v2 stopObservingSources];
}

- (void)doc_commonInit
{
  v41[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  didLoadStateByTab = self->_didLoadStateByTab;
  self->_didLoadStateByTab = v3;

  v5 = [(UIDocumentBrowserViewController *)self configuration];
  v6 = [v5 isFilesApp];

  if ((v6 & 1) == 0)
  {
    v7 = [(UIDocumentBrowserViewController *)self configuration];
    v8 = [v7 hostIdentifier];
    [MEMORY[0x277D04700] setCurrentHostAppIdentifier:v8];
  }

  v9 = [(UIDocumentBrowserViewController *)self configuration];
  v10 = [v9 hostIdentifier];
  v11 = [MEMORY[0x277D061E0] sharedManager];
  [v11 setHostIdentifier:v10];

  v12 = [(UIDocumentBrowserViewController *)self configuration];
  v13 = [v12 hostIdentifier];
  v14 = [MEMORY[0x277D06218] defaultPermission];
  [v14 setHostIdentifier:v13];

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v15 registerDefaults:&unk_285CE9FD0];

  [(DOCTabbedBrowserViewController *)self setCustomActions:MEMORY[0x277CBEBF8]];
  v16 = [(UIDocumentBrowserViewController *)self configuration];
  if ([v16 forPickingDocuments])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = [DOCSourceObserver alloc];
  v19 = [(UIDocumentBrowserViewController *)self configuration];
  v20 = [v19 hostIdentifier];
  v21 = [(DOCSourceObserver *)v18 initWithUserAction:v17 hostIdentifier:v20];
  sourceObserver = self->_sourceObserver;
  self->_sourceObserver = v21;

  self->_isSystemTabBarAllowedByTraits = 1;
  self->_isSystemTabBarPreferred = 1;
  self->_isSystemTabBarVisible = 1;
  self->_isAppLaunchOptimizationsActive = 1;
  v23 = [MEMORY[0x277D06208] tabSidebar];
  v24 = [v23 isEnabled];

  if (v24)
  {
    v25 = [(UIDocumentBrowserViewController *)self configuration];
    v26 = [v25 copy];

    [v26 setNeverCreateBookmarkForOpenInPlace:1];
    [v26 setRestoreLastVisitedLocation:1];
    [v26 setSaveLastVisitedLocation:1];
    [v26 setSupportsColumnView:1];
    v27 = *MEMORY[0x277D05D78];
    v41[0] = *MEMORY[0x277D060F8];
    v41[1] = v27;
    v28 = *MEMORY[0x277D05DA0];
    v41[2] = *MEMORY[0x277D05DC8];
    v41[3] = v28;
    v29 = *MEMORY[0x277D05DB8];
    v41[4] = *MEMORY[0x277D05DC0];
    v41[5] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
    [v26 setHiddenSourcesIdentifiers:v30];

    if ([v26 isPickerUI])
    {
      v31 = [v26 hiddenSourcesIdentifiers];
      v32 = [v31 arrayByAddingObject:*MEMORY[0x277D05DD0]];
      [v26 setHiddenSourcesIdentifiers:v32];
    }

    v33 = [[_TtC26DocumentManagerExecutables23DOCTabSidebarController alloc] initWithConfiguration:v26 sourceObserver:self->_sourceObserver dataSourceDelegate:self];
    [(DOCTabbedBrowserViewController *)self setTabSidebarController:v33];

    v34 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    [v34 setDelegate:self];

    v35 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v36 = [v35 sidebar];
    [v36 setDelegate:self];
  }

  v37 = objc_opt_new();
  [(DOCTabbedBrowserViewController *)self setTabBarController:v37];

  v38 = [(DOCTabbedBrowserViewController *)self tabBarController];
  [v38 setDelegate:self];

  v39 = [(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2;
  v40 = [(DOCTabbedBrowserViewController *)self tabBarController];
  [v40 setUsingSharedSplitBrowserStrategy:v39];

  [(DOCTabbedBrowserViewController *)self configureTabBarForUIPIfNecessary];
  objc_storeWeak(&gDOCGlobalTabbedBrowserViewController, self);
}

- (void)loadView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [(DOCTabbedBrowserViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v4 viewDidLoad];
  [(DOCTabbedBrowserViewController *)self _loadMinimalHierarchy];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_itemCollectionViewControllerDidLoad name:@"DOCItemCollectionViewDidLoadContents" object:0];
}

- (void)itemCollectionViewControllerDidLoad
{
  v3 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  [v3 establishFirstResponderIfNeeded];

  [(DOCTabbedBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (id)_multitaskingDragExclusionRects
{
  v2 = self;
  v89 = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = DOCTabbedBrowserViewController;
  v3 = [(DOCTabbedBrowserViewController *)&v82 _multitaskingDragExclusionRects];
  v4 = [v3 mutableCopy];

  if ([(DOCTabbedBrowserViewController *)v2 isShowingMovePanel])
  {
    [(DOCTabbedBrowserViewController *)v2 presentedViewController];
  }

  else
  {
    [(DOCTabbedBrowserViewController *)v2 splitBrowserViewController];
  }
  v5 = ;
  v6 = [v5 fullDocumentManagerViewController];
  v7 = [v6 effectiveBrowserViewController];
  v72 = [v7 contentViewController];

  v73 = v2;
  if (v5 && [v5 displayMode] == 2)
  {
    v69 = v4;
    v8 = [v5 sidebarViewController];
    v9 = [v8 _multitaskingDragExclusionRects];

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v79;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v79 != v13)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v78 + 1) + 8 * i) CGRectValue];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = [(DOCTabbedBrowserViewController *)v2 view];
          v24 = [v23 coordinateSpace];
          [v5 sidebarViewController];
          v26 = v25 = v5;
          v27 = [v26 view];
          v28 = [v27 coordinateSpace];
          [v24 convertRect:v28 fromCoordinateSpace:{v16, v18, v20, v22}];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v5 = v25;
          v2 = v73;
          v37 = [MEMORY[0x277CCAE60] valueWithCGRect:{v30, v32, v34, v36}];
          [v10 addObject:v37];
        }

        v12 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v12);
    }

    v4 = v69;
    [v69 addObjectsFromArray:v10];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v72 displayMode])
  {
    v70 = v4;
    v38 = [v72 _multitaskingDragExclusionRects];
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v38, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v75;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v75 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [*(*(&v74 + 1) + 8 * j) CGRectValue];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v53 = [(DOCTabbedBrowserViewController *)v2 view];
          v54 = [v53 coordinateSpace];
          v55 = [v72 view];
          v56 = [v55 coordinateSpace];
          [v54 convertRect:v56 fromCoordinateSpace:{v46, v48, v50, v52}];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;

          v2 = v73;
          v65 = [MEMORY[0x277CCAE60] valueWithCGRect:{v58, v60, v62, v64}];
          [v39 addObject:v65];
        }

        v42 = [v40 countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v42);
    }

    v4 = v70;
    [v70 addObjectsFromArray:v39];
  }

  v66 = MEMORY[0x277D062B8];
  v67 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v67 = *v66;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v84 = "[DOCTabbedBrowserViewController _multitaskingDragExclusionRects]";
    v85 = 2112;
    v86 = v4;
    _os_log_impl(&dword_2493AC000, v67, OS_LOG_TYPE_INFO, "%s setting multitasking system gesture exclusion rects: %@", buf, 0x16u);
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewDidAppear:a3];
  self->_isAppLaunchOptimizationsActive = 0;
  v4 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v5 = [v4 establishFirstResponder];

  if ((v5 & 1) == 0)
  {
    v6 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    [v6 setNeedsFirstResponder:1];
  }
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
  {
    v3 = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];
    v10[0] = v3;
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
LABEL_5:
    v6 = [v4 arrayWithObjects:v5 count:1];

    goto LABEL_7;
  }

  if ([(DOCTabbedBrowserViewController *)self tabBarCurrentRawTab]== 2)
  {
    v3 = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
    v9 = v3;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v9;
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = DOCTabbedBrowserViewController;
  v6 = [(UIDocumentBrowserViewController *)&v8 preferredFocusEnvironments];
LABEL_7:

  return v6;
}

- (unint64_t)browserContentStrategy
{
  if (DOCDeviceIsPhone())
  {
    return 0;
  }

  if ([MEMORY[0x277D06208] _UIPTabInfrastructureEnabled])
  {
    return 2;
  }

  return 1;
}

- (BOOL)canHaveTabs
{
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 neverAllowsAnyTypeOfTabs];

  return (v4 & 1) == 0 && [(DOCTabbedBrowserViewController *)self browserContentStrategy]!= 1;
}

- (void)_loadMinimalHierarchy
{
  v3 = [MEMORY[0x277D06208] tabSidebar];
  v4 = [v3 isEnabled];

  v5 = [(DOCTabbedBrowserViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v4)
  {
    v14 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v15 = [v14 view];
    [v15 setFrame:{v7, v9, v11, v13}];

    v16 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v17 = [v16 view];
    [v17 setAutoresizingMask:18];

    v18 = [MEMORY[0x277D061D8] browsingModeTabBar];
    v19 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v20 = [v19 tabBar];
    [v20 setAccessibilityIdentifier:v18];

    v21 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v22 = [v21 navigationOverflowMenu];
    v23 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v24 = [v23 sidebar];
    [v24 setNavigationOverflowItems:v22];

    v25 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    [(DOCTabbedBrowserViewController *)self addChildViewController:v25];

    v26 = [(DOCTabbedBrowserViewController *)self view];
    v27 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    v28 = [v27 view];
    [v26 addSubview:v28];

    [(DOCTabbedBrowserViewController *)self tabSidebarController];
  }

  else
  {
    v29 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v30 = [v29 view];
    [v30 setFrame:{v7, v9, v11, v13}];

    v31 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v32 = [v31 view];
    [v32 setAutoresizingMask:18];

    v33 = [MEMORY[0x277D061D8] browsingModeTabBar];
    v34 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v35 = [v34 tabBar];
    [v35 setAccessibilityIdentifier:v33];

    v36 = [(DOCTabbedBrowserViewController *)self tabBarController];
    [(DOCTabbedBrowserViewController *)self addChildViewController:v36];

    v37 = [(DOCTabbedBrowserViewController *)self view];
    v38 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v39 = [v38 view];
    [v37 addSubview:v39];

    [(DOCTabbedBrowserViewController *)self tabBarController];
  }
  v40 = ;
  [v40 didMoveToParentViewController:self];
}

- (void)_loadFullHierarchy
{
  v84[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  if (*&self->_fullRecentsViewController == 0 && !self->_splitBrowserViewController)
  {
    if (![(DOCTabbedBrowserViewController *)self browserContentStrategy])
    {
      v3 = [(UIDocumentBrowserViewController *)self configuration];
      v4 = [v3 copy];

      [v4 configureContextForDisplayingTab:0];
      [v4 setPreferLastUsedDate:1];
      [v4 setRestoreLastVisitedLocation:0];
      v5 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
      [v4 setDefaultLocation:v5];

      v6 = [[DOCFullDocumentManagerViewController alloc] initWithConfiguration:v4 sourceObserver:self->_sourceObserver];
      [(DOCTabbedBrowserViewController *)self setFullRecentsViewController:v6];

      v7 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [v7 setShortDebugID:@"recents"];

      v8 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [v8 setFullDocumentManagerDelegate:self];

      v9 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [v9 copy];

      [v10 configureContextForDisplayingTab:1];
      [v10 setPreferLastUsedDate:1];
      [v10 setRestoreLastVisitedLocation:1];
      [v10 setSaveLastVisitedLocation:1];
      v11 = [[DOCFullDocumentManagerViewController alloc] initWithConfiguration:v10 sourceObserver:self->_sourceObserver];
      [(DOCTabbedBrowserViewController *)self setFullSharedViewController:v11];

      v12 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
      [v12 setShortDebugID:@"shared"];

      v13 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
      [v13 setFullDocumentManagerDelegate:self];
    }

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy])
    {
      v14 = [(DOCTabbedBrowserViewController *)self defaultInitialBrowsedPathEffectiveTab];
    }

    else
    {
      v14 = 2;
    }

    v15 = [(UIDocumentBrowserViewController *)self configuration];
    v16 = [v15 copy];

    [v16 configureContextForDisplayingTab:v14];
    v17 = [[DOCSplitBrowserViewController alloc] initWithConfiguration:v16 sourceObserver:self->_sourceObserver];
    [(DOCTabbedBrowserViewController *)self setSplitBrowserViewController:v17];

    v18 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [v18 setShortDebugID:@"browser"];

    v19 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    v20 = [v19 fullDocumentManagerViewController];
    v21 = [v20 hierarchyController];
    [v21 setDefaultTab:v14];

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
    {
      v22 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v23 = [v22 fullDocumentManagerViewController];
      [v23 setViewDidLoadResetLocationDisabled:1];
    }

    v24 = [(DOCTabbedBrowserViewController *)self traitCollection];
    v25 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
    [v25 frame];
    [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:v24 andSize:v26, v27];

    v28 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [v28 setSplitViewDelegate:self];

    [(DOCTabbedBrowserViewController *)self setAllowsDocumentCreation:[(UIDocumentBrowserViewController *)self allowsDocumentCreation]];
    v29 = [DOCDefaultSourceUIManager alloc];
    v30 = [(UIDocumentBrowserViewController *)self configuration];
    v31 = [(DOCDefaultSourceUIManager *)v29 initWithConfiguration:v30 sourceObserver:self->_sourceObserver presentAlertsOn:self];
    [(DOCTabbedBrowserViewController *)self setDefaultSourceUIManager:v31];

    v32 = [DOCNamedLocationResolver alloc];
    v33 = [(UIDocumentBrowserViewController *)self configuration];
    v34 = [(DOCTabbedBrowserViewController *)self defaultSourceUIManager];
    v35 = [(DOCNamedLocationResolver *)v32 initWithConfiguration:v33 defaultSourceUIManager:v34];
    [(DOCTabbedBrowserViewController *)self setNamedLocationResolver:v35];

    v36 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [v36 setDelegate:self];

    v37 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [v37 setDelegate:self];

    v38 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:0];
    v39 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [v39 setTabBarItem:v38];

    v40 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    v41 = [v40 hierarchyController];
    [v41 setDefaultTab:0];

    v42 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:1];
    v43 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [v43 setTabBarItem:v42];

    v44 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    v45 = [v44 hierarchyController];
    [v45 setDefaultTab:1];

    v46 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:2];
    v47 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    v48 = [v47 fullDocumentManagerViewController];
    [v48 setDelegate:self];

    v49 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [v49 setTabBarItem:v46];

    v50 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    v51 = [v50 fullDocumentManagerViewController];
    v52 = [v51 hierarchyController];
    [v52 setDefaultTab:2];

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 1)
    {
      v53 = [(DOCTabbedBrowserViewController *)self tabBarController];
      v84[0] = self->_splitBrowserViewController;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
      [v53 loadViewControllers:v54 initialIndex:0];

      v55 = [MEMORY[0x277D05F20] sharedStore];
      v56 = [(UIDocumentBrowserViewController *)self configuration];
      v57 = [v55 interfaceStateForConfiguration:v56];

      v58 = [v57 mostRecentlyVisitedBrowsedState_FullBrowser];
      if (v58 || ([(DOCTabbedBrowserViewController *)self forceBrowseTabDefaultsValue], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v75 = [(UIDocumentBrowserViewController *)self configuration];
        v76 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
        v77 = [v75 allowsDisplaying:v76];

        if (v77)
        {
          [(DOCTabbedBrowserViewController *)self presentRecentsTabFromFullBrowse];
        }
      }
    }

    else
    {
      v59 = [(DOCTabbedBrowserViewController *)self fetchLastUsedTab];
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
      {
        v83[0] = v38;
        v83[1] = v42;
        v83[2] = v46;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
        v61 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
        v57 = [(DOCTabbedBrowserViewController *)self newViewControllersSharing:v61 tabBarItems:v60];
      }

      else
      {
        fullSharedViewController = self->_fullSharedViewController;
        v82[0] = self->_fullRecentsViewController;
        v82[1] = fullSharedViewController;
        v82[2] = self->_splitBrowserViewController;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
      }

      v63 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:v59 inViewControllers:v57];
      v64 = [(DOCTabbedBrowserViewController *)self tabBarController];
      v65 = v64;
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v66 = 0;
      }

      else
      {
        v66 = v63;
      }

      [v64 loadViewControllers:v57 initialIndex:v66];

      [(DOCTabbedBrowserViewController *)self presentTab:v59];
    }

    if ([(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding])
    {
      [(DOCTabbedBrowserViewController *)self configureUIPDocumentLandingStyleIfNecessary];
    }

    [(DOCTabbedBrowserViewController *)self setDeferredBrowserStateChanges:0];
    v67 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    [v67 activateContainerViewControllersIfNeeded];

    v68 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [v68 addObserver:self forKeyPath:@"editing" options:1 context:DOCTabbedBrowserViewControllerContext];

    v69 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [v69 addObserver:self forKeyPath:@"editing" options:1 context:DOCTabbedBrowserViewControllerContext];

    v70 = [MEMORY[0x277CCAB98] defaultCenter];
    v71 = +[DOCColumnViewController DOCColumnViewControllerUpdatedNavigationItem];
    [v70 addObserver:self selector:sel_columnViewControllerDidUpdate_ name:v71 object:0];

    [(DOCTabbedBrowserViewController *)self updateForChangedHorizontalSizeClass];
    v72 = objc_opt_self();
    v81 = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
    v74 = [(DOCTabbedBrowserViewController *)self registerForTraitChanges:v73 withAction:sel_updateForChangedHorizontalSizeClass];

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __52__DOCTabbedBrowserViewController__loadFullHierarchy__block_invoke;
    v78[3] = &unk_278FA1C80;
    objc_copyWeak(&v79, &location);
    [(DOCTabbedBrowserViewController *)self registerForTabSwitcherTraitChangesWithHandler:v78];
    objc_destroyWeak(&v79);
  }

  objc_destroyWeak(&location);
}

void __52__DOCTabbedBrowserViewController__loadFullHierarchy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTabButtonsVisibilityForTraits];
}

- (void)configureUIPDocumentLandingStyleIfNecessary
{
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  [v3 setIsInUIPDocumentLanding:1];

  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(DOCTabbedBrowserViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x277D75348] clearColor];
  v7 = [(DOCTabbedBrowserViewController *)self tabBarController];
  v8 = [v7 view];
  [v8 setBackgroundColor:v6];

  v9 = [MEMORY[0x277D75348] clearColor];
  v10 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  v11 = [v10 view];
  [v11 setBackgroundColor:v9];

  v12 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  [v12 configureUIPDocumentLandingStyleIfNecessary];

  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:&__block_literal_global_89];
}

void __77__DOCTabbedBrowserViewController_configureUIPDocumentLandingStyleIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 documentManager];
  [v2 configureUIPDocumentLandingStyleIfNecessary];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(DOCTabbedBrowserViewController *)self traitCollection];
  v4 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [v4 frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:v3 andSize:v5, v6];

  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(DOCTabbedBrowserViewController *)self traitCollection];
  v4 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [v4 frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:v3 andSize:v5, v6];

  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewDidLayoutSubviews];
}

- (void)updateForChangedHorizontalSizeClass
{
  v3 = [(DOCTabbedBrowserViewController *)self traitCollection];
  v4 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [v4 frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:v3 andSize:v5, v6];

  [(DOCTabbedBrowserViewController *)self _updateTabButtonsVisibilityForTraits];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [v8 frame];
  v10 = v9;

  if (v10 != width)
  {
    [(DOCTabbedBrowserViewController *)self _updateTabButtonsVisibilityForTraits];
    v11 = [(DOCTabbedBrowserViewController *)self traitCollection];
    [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:v11 andSize:width, height];
  }

  v12.receiver = self;
  v12.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)_updateColumnViewAvailablityFromTraitCollection:(id)a3 andSize:(CGSize)a4
{
  v5 = [DOCColumnViewController supportsDisplayInTraitCollection:a3 availableArea:a4.width, a4.height];
  v6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  v7 = [v6 fullDocumentManagerViewController];
  [v7 setEnvironmentSupportsColumnView:v5];

  v8 = [(DOCTabbedBrowserViewController *)self fullBrowserViewController];
  [v8 setEnvironmentSupportsColumnView:v5];
}

- (void)tabbedBrowserView:(id)a3 willMoveToWindow:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(UIDocumentBrowserViewController *)self configuration];
    v8 = [v7 sceneIdentifier];

    if (!v8)
    {
      v9 = [(UIDocumentBrowserViewController *)self configuration];
      [v9 updateStateAndSceneIdentifiersWithWindow:v6];

      [v6 frame];
      if (!CGRectIsEmpty(v14))
      {
        [v12 frame];
        if (CGRectIsEmpty(v15))
        {
          [v6 bounds];
          [v12 setFrame:?];
        }
      }
    }
  }

  [(DOCTabbedBrowserViewController *)self _loadFullHierarchy];
  v10 = [(UIDocumentBrowserViewController *)self configuration];
  v11 = [v10 sceneIdentifier];
  [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:self forIdentifier:v11];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v10 viewWillDisappear:a3];
  v4 = [(UIDocumentBrowserViewController *)self configuration];
  v5 = [v4 sceneIdentifier];
  v6 = [_TtC26DocumentManagerExecutables21DOCInteractionManager sharedManagerFor:v5];
  [v6 setLastOpenedNode:0];

  v7 = MEMORY[0x277D062B8];
  v8 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_2493AC000, v8, OS_LOG_TYPE_INFO, "[Interaction] Clearing lastOpenedNode in DOCTabbedBrowserVC viewWillDisappear", v9, 2u);
  }
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v5 setAdditionalLeadingNavigationBarButtonItems:a3];
  v4 = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v4];
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v5 setAdditionalTrailingNavigationBarButtonItems:a3];
  v4 = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v4];
}

- (void)setAllowsDocumentCreation:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v7 setAllowsDocumentCreation:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__DOCTabbedBrowserViewController_setAllowsDocumentCreation___block_invoke;
  v5[3] = &__block_descriptor_33_e46_v16__0__DOCFullDocumentManagerViewController_8l;
  v6 = a3;
  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:v5];
}

- (void)setCustomActions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v9 setCustomActions:v4];
  v5 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController sidebarViewController];
  [v5 setCustomActions:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DOCTabbedBrowserViewController_setCustomActions___block_invoke;
  v7[3] = &unk_278FA21E0;
  v8 = v4;
  v6 = v4;
  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:v7];
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController
{
  v2 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v3 = [v2 effectiveBrowserViewController];

  return v3;
}

- (id)selectedTabReferenceViewController
{
  v3 = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];
  v4 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:v3];

  return v4;
}

- (id)_referenceViewControllerForDirectTabChildViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 actualViewController];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    }

    else
    {
      v5 = v4;
    }
  }

  v6 = v5;

  return v6;
}

- (void)enumerateAllFullBrowserViewControllers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (self->_fullRecentsViewController)
  {
    [v5 addObject:?];
  }

  if (self->_fullSharedViewController)
  {
    [v6 addObject:?];
  }

  v7 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];

  if (v7)
  {
    v8 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    [v6 addObject:v8];
  }

  v9 = [MEMORY[0x277D06208] tabSidebar];
  if ([v9 isEnabled])
  {
    fullBrowserViewController = self->_fullBrowserViewController;

    if (fullBrowserViewController)
    {
      [v6 addObject:self->_fullBrowserViewController];
    }
  }

  else
  {
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DOCTabbedBrowserViewController_enumerateAllFullBrowserViewControllers___block_invoke;
  v12[3] = &unk_278FA2208;
  v13 = v4;
  v11 = v4;
  [v6 enumerateObjectsUsingBlock:v12];
}

- (DOCFullDocumentManagerViewController)effectiveFullBrowser
{
  v3 = [MEMORY[0x277D06208] tabSidebar];
  v4 = [v3 isEnabled];

  if (!v4)
  {
    v9 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v10 = -[DOCTabbedBrowserViewController effectiveFullBrowserForTab:](self, "effectiveFullBrowserForTab:", [v9 selectedOrInflightSelectedTab]);
    goto LABEL_5;
  }

  v5 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
  v6 = [v5 selectedTab];
  v7 = [v6 parent];
  v8 = [v7 parent];
  v9 = [v8 viewController];

  if (v9)
  {
    v10 = v9;
    v9 = v10;
LABEL_5:
    v11 = v10;
    goto LABEL_6;
  }

  v13 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
  v14 = [v13 selectedTab];
  v11 = [v14 viewController];

LABEL_6:

  return v11;
}

- (id)effectiveFullBrowserForTab:(unint64_t)a3
{
  v6 = [(DOCTabbedBrowserViewController *)self browserContentStrategy];
  if (v6 - 1 < 2)
  {
LABEL_2:
    v7 = [MEMORY[0x277D06208] tabSidebar];
    if ([v7 isEnabled])
    {
      v8 = self->_fullBrowserViewController;
    }

    else
    {
      v8 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    }

    v3 = v8;

    goto LABEL_11;
  }

  if (!v6)
  {
    if (a3 == 2)
    {
      goto LABEL_2;
    }

    if (a3 == 1)
    {
      v9 = 1224;
    }

    else
    {
      if (a3)
      {
        goto LABEL_11;
      }

      v9 = 1216;
    }

    v3 = *(&self->super.super.super.super.isa + v9);
  }

LABEL_11:

  return v3;
}

- (BOOL)isShowingMovePanel
{
  v2 = [(DOCTabbedBrowserViewController *)self presentedViewController];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)tabControllerIndexForTab:(unint64_t)a3
{
  v5 = [(DOCTabbedBrowserViewController *)self tabBarController];
  v6 = [v5 viewControllers];

  v7 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:a3 inViewControllers:v6];
  return v7;
}

- (unint64_t)tabControllerIndexForTab:(unint64_t)a3 inViewControllers:(id)a4
{
  v7 = a4;
  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v10 = [v9 DOCTabBarItem];
      v11 = [v10 tab];

      if (v11 == a3)
      {
        break;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = MEMORY[0x277D062B8];
    v13 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:a3 inViewControllers:v13];
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:972 description:{@"%@ Couldn't find DOCTab (%lu) index", self, a3}];

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (unint64_t)tabBarCurrentRawTab
{
  v2 = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  v3 = [v2 DOCTabBarItem];
  v4 = [v3 tab];

  return v4;
}

- (unint64_t)effectiveTabSwitcherTab
{
  result = [(DOCTabbedBrowserViewController *)self browserContentStrategy];
  if (result - 1 >= 2)
  {
    if (!result)
    {

      return [(DOCTabbedBrowserViewController *)self tabBarCurrentRawTab];
    }
  }

  else
  {
    v4 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    v5 = [v4 hierarchyController];
    v6 = [v5 effectiveTabSwitcherTab];

    return v6;
  }

  return result;
}

- (void)switchToTab:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      [(DOCTabbedBrowserViewController *)self switchToBrowse];
      break;
    case 1uLL:
      [(DOCTabbedBrowserViewController *)self switchToShared];
      break;
    case 0uLL:
      [(DOCTabbedBrowserViewController *)self switchToRecents];
      break;
  }
}

- (void)switchToLocation:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 effectiveTabSwitcherTab];
  v6 = [(DOCTabbedBrowserViewController *)self isSystemTabBarAllowedByTraits];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    [(DOCTabbedBrowserViewController *)self switchToTab:v5];
  }

  if (!v7)
  {
    v9[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(DOCTabbedBrowserViewController *)self _setLocationsInBrowseTab:v8];
  }
}

- (BOOL)shouldDeferBrowserStateChanges
{
  v2 = [(DOCTabbedBrowserViewController *)self tabBarController];
  v3 = [v2 viewControllers];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)presentTab:(unint64_t)a3 rawTabSwitchOnly:(BOOL)a4
{
  v8 = [(DOCTabbedBrowserViewController *)self browserContentStrategy];
  if (v8)
  {
    v9 = a4;
  }

  else
  {
    v9 = 1;
  }

  if (a3 >= 3)
  {
    [DOCTabbedBrowserViewController presentTab:a2 rawTabSwitchOnly:self];
  }

  if ([(DOCTabbedBrowserViewController *)self shouldDeferBrowserStateChanges])
  {
    v29 = objc_alloc_init(MEMORY[0x277D06270]);
    [v29 setTab:a3];
    [(DOCTabbedBrowserViewController *)self updateDeferredBrowserStateChangesWith:v29];
    goto LABEL_28;
  }

  v10 = [MEMORY[0x277D06380] shared];
  [v10 hideMenu];

  v11 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  v12 = [v11 fullDocumentManagerViewController];
  [v12 setEditing:0];

  v13 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  [v13 setEditing:0];

  v14 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
  [v14 setEditing:0];

  if (v8 == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = a3;
  }

  v16 = [(DOCTabbedBrowserViewController *)self tabBarController];
  v17 = [v16 selectedOrInflightSelectedTab];

  if (v17 != v15)
  {
    v18 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:v15];
    v19 = [(DOCTabbedBrowserViewController *)self tabBarController];
    v20 = [v19 selectedIndex];

    if (v20 != v18)
    {
      v21 = [(DOCTabbedBrowserViewController *)self tabBarController];
      [v21 setSelectedIndex:v18];
    }
  }

  v22 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowserForTab:a3];
  v23 = v22;
  v29 = v22;
  if (!v9)
  {
    v24 = [v22 hierarchyController];
    v25 = [v24 locationForDeterminingCurrentEffectiveTab];

    if (v25)
    {
      v26 = [v24 effectiveTabSwitcherTab];

      v23 = v29;
      if (v26 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v27 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
      v28 = [v27 isViewLoaded];

      v23 = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (a3 == 2)
    {
      [(DOCTabbedBrowserViewController *)self presentBrowseTabFromFullBrowser];
    }

    else if (a3 == 1)
    {
      [(DOCTabbedBrowserViewController *)self presentSharedTabFromFullBrowser];
    }

    else
    {
      if (a3)
      {
        goto LABEL_26;
      }

      [(DOCTabbedBrowserViewController *)self presentRecentsTabFromFullBrowse];
    }

    v23 = v29;
  }

LABEL_26:
  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v23];
  [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
  if (!self->_isAppLaunchOptimizationsActive)
  {
    [(DOCTabbedBrowserViewController *)self saveSelectedTabState];
  }

LABEL_28:
}

- (id)fullBrowserHierarchyController
{
  v3 = [MEMORY[0x277D06208] tabSidebar];
  if ([v3 isEnabled])
  {
    v4 = self->_fullBrowserViewController;
  }

  else
  {
    v4 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
  }

  v5 = v4;

  v6 = [(DOCFullDocumentManagerViewController *)v5 hierarchyController];

  return v6;
}

- (void)presentRecentsTabFromFullBrowse
{
  v2 = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [v2 restoreLastBrowsedStateForTab:0];
}

- (void)presentSharedTabFromFullBrowser
{
  v2 = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [v2 restoreLastBrowsedStateForTab:1];
}

- (void)presentBrowseTabFromFullBrowser
{
  v2 = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [v2 restoreLastBrowsedStateForTab:2];
}

- (void)showConnectToServer:(id)a3
{
  v4 = a3;
  [(DOCTabbedBrowserViewController *)self presentTab:2];
  [(DOCTabbedBrowserViewController *)self presentConnectToServer:v4];
}

- (void)setSafeAreaUpdatesDisabledDuringTransitions:(BOOL)a3
{
  if (self->_safeAreaUpdatesDisabledDuringTransitions != a3)
  {
    v4 = a3;
    self->_safeAreaUpdatesDisabledDuringTransitions = a3;
    v5 = [(DOCTabbedBrowserViewController *)self tabBarController];
    [v5 setSafeAreaUpdatesDisabledDuringTransitions:v4];
  }
}

- (void)setIsShowingSearchResults:(BOOL)a3
{
  if (self->_isShowingSearchResults != a3)
  {
    self->_isShowingSearchResults = a3;
    if (a3)
    {
      v8 = [(DOCTabbedBrowserViewController *)self tabBarController];
      [v8 hideBar];
    }

    else
    {
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy])
      {
        v5 = [(DOCTabbedBrowserViewController *)self presentedViewController];
        v6 = [v5 conformsToProtocol:&unk_285D4FB38];

        if (v6)
        {
          v7 = [(DOCTabbedBrowserViewController *)self presentedViewController];
          [v7 dismissViewControllerAnimated:1 completion:0];
        }
      }

      v8 = [(DOCTabbedBrowserViewController *)self tabBarController];
      [v8 showBarIfAllowed];
    }
  }
}

- (void)splitViewController:(id)a3 wantsToShowTabBar:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [v9 fullDocumentManagerViewController];
  v7 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];

  if (v6 == v7)
  {
    v8 = [v9 fullDocumentManagerViewController];
    -[DOCTabbedBrowserViewController _viewController:wantsToShowSystemTabBar:isEditing:](self, "_viewController:wantsToShowSystemTabBar:isEditing:", v9, v4, [v8 isEditing]);
  }
}

- (void)splitViewController:(id)a3 didChangeFromState:(id)a4 toState:(id)a5 isUserDisplayModeChange:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v9 = a5;
  if (-[UIDocumentBrowserViewController enclosedInUIPDocumentLanding](self, "enclosedInUIPDocumentLanding") && ([v11 isSidebarShown] & 1) == 0 && objc_msgSend(v9, "isSidebarShown"))
  {
    v10 = objc_alloc_init(MEMORY[0x277D06270]);
    [v10 setDocumentLandingMode:0];
    if (v6)
    {
      [(DOCTabbedBrowserViewController *)self performBrowserStateChange:v10];
    }
  }

  [(DOCTabbedBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (void)revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 openDocument:(BOOL)a5 revealContents:(BOOL)a6 updateLastUsedDate:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v33 = a5;
  v34 = a4;
  v51[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a8;
  v13 = [v11 startAccessingSecurityScopedResource];
  v14 = *MEMORY[0x277CBE868];
  v15 = *MEMORY[0x277CBE890];
  v51[0] = *MEMORY[0x277CBE868];
  v51[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v46 = 0;
  v17 = [v11 promisedItemResourceValuesForKeys:v16 error:&v46];
  v18 = v46;

  if (v18)
  {
    v19 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      v31 = MEMORY[0x277D062B8];
      DOCInitLogging();
      v19 = *v31;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = v11;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_2493AC000, v19, OS_LOG_TYPE_DEFAULT, "Unable to get promised item resource values for url: %@ error: %@", buf, 0x16u);
    }
  }

  v20 = [v17 objectForKeyedSubscript:v14];
  v21 = [v20 BOOLValue];

  v22 = [v17 objectForKeyedSubscript:v15];
  v23 = [v22 BOOLValue];

  if (v13)
  {
    [v11 stopAccessingSecurityScopedResource];
  }

  if ([(DOCTabbedBrowserViewController *)self isShowingMovePanel])
  {
    [(DOCTabbedBrowserViewController *)self presentedViewController];
  }

  else
  {
    [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  }
  v24 = ;
  v25 = v21 & (v23 ^ 1);
  if ((v25 & 1) != 0 || !v33)
  {
    [(DOCTabbedBrowserViewController *)self switchToBrowse];
    v28 = [MEMORY[0x277D06208] tabSidebar];
    if ([v28 isEnabled])
    {
      v29 = self->_fullBrowserViewController;
    }

    else
    {
      v29 = [v24 fullDocumentManagerViewController];
    }

    v30 = v29;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke;
    v37[3] = &unk_278FA2320;
    v38 = v11;
    v43 = v34;
    v42 = v12;
    v39 = self;
    v40 = v24;
    v41 = v30;
    v44 = a6;
    v45 = v25;
    v27 = v30;
    [(DOCFullDocumentManagerViewController *)v27 revealDocumentAtURL:v38 importIfNeeded:0 updateLastUsedDate:v9 completion:v37];
  }

  else
  {
    [(DOCTabbedBrowserViewController *)self switchToRecents];
    v26 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_132;
    v35[3] = &unk_278FA2060;
    v36 = v12;
    [v26 revealDocumentAtURL:v11 importIfNeeded:v34 updateLastUsedDate:v9 completion:v35];

    v27 = v36;
  }
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = MEMORY[0x277D062B8];
    v15 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 72);
      *buf = 138412802;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_2493AC000, v15, OS_LOG_TYPE_DEFAULT, "Unable to reveal the url: %@ importIfNeeded:%d error: %@", buf, 0x1Cu);
    }

    v18 = *(a1 + 64);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 40) configuration];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_123;
    v19[3] = &unk_278FA22F8;
    v20 = v5;
    v23 = *(a1 + 72);
    v9 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 40);
    *(&v12 + 1) = v9;
    v24 = *(a1 + 73);
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v21 = v13;
    v22 = v12;
    [v20 fetchItemWithBumpLastOpenDate:0 configuration:v8 completionHandler:v19];
  }
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_123(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_2;
  aBlock[3] = &unk_278FA22A8;
  v7 = v6;
  v24 = v7;
  v8 = v5;
  v25 = v8;
  v26 = *(a1 + 32);
  v29 = *(a1 + 72);
  v28 = *(a1 + 64);
  v27 = *(a1 + 40);
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 48) effectiveBrowserViewController];
  v11 = [v10 contentViewController];

  if (*(a1 + 73) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && [v11 displayMode] == 3 || *(a1 + 74) == 1 && (objc_msgSend(*(a1 + 56), "configuration"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isPickerUI"), v13, v14))
  {
    v12 = [v8 node];
    v9[2](v9, v12, 0);
  }

  else
  {
    v15 = [v8 node];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_128;
    v16[3] = &unk_278FA22D0;
    v17 = *(a1 + 32);
    v22 = *(a1 + 72);
    v20 = *(a1 + 64);
    v18 = v7;
    v21 = v9;
    v19 = v8;
    [v15 fetchParents:v16];

    v12 = v17;
  }
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = a1[4];
  v10 = a1[5];
  v11 = v5;
  v12 = a1[6];
  v14 = a1[8];
  v13 = a1[7];
  v7 = v6;
  v8 = v5;
  DOCRunInMainThread();
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [v8 node];
      if (v9)
      {
        v10 = *(a1 + 48);

        if (v10)
        {
          v11 = objc_alloc(MEMORY[0x277D05EA8]);
          v12 = [*(a1 + 48) providerDomainID];
          v13 = [v11 initWithSourceIdentifier:v12 node:*(a1 + 48)];

          v14 = *(a1 + 64);
          if (v14)
          {
            if (([v14 isTrashed] & 1) == 0)
            {
LABEL_15:
              v16 = [*(a1 + 72) fullDocumentManagerViewController];
              v20[0] = MEMORY[0x277D85DD0];
              v20[1] = 3221225472;
              v20[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_124;
              v20[3] = &unk_278FA2258;
              v24 = *(a1 + 80);
              v21 = *(a1 + 64);
              v22 = *(a1 + 56);
              v23 = v16;
              v17 = v16;
              [v17 revealLocation:v13 animated:0 completion:v20];

              return;
            }
          }

          else
          {
            v18 = [*(a1 + 48) itemIdentifier];
            v19 = [v18 isEqualToString:*MEMORY[0x277CC6358]];

            if (!v19)
            {
              goto LABEL_15;
            }
          }

          v15 = [MEMORY[0x277D05EA8] trashedItemsLocation];

          v13 = v15;
          goto LABEL_15;
        }
      }
    }
  }

  v2 = MEMORY[0x277D062B8];
  v3 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 88);
    v6 = *(a1 + 32);
    *buf = 138412802;
    v26 = v4;
    v27 = 1024;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_2493AC000, v3, OS_LOG_TYPE_DEFAULT, "Error fetching the item for the revealed URL: %@ importIfNeeded: %d error: %@", buf, 0x1Cu);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, *(a1 + 32));
  }
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_124(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  if (v2 && !a1[4])
  {
    v2[2](v2, a1[5], 0);
  }

  if (a1[4])
  {
    v3 = MEMORY[0x277D062B8];
    v4 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      *buf = 136315394;
      v18 = "[DOCTabbedBrowserViewController revealDocumentAtURL:importIfNeeded:openDocument:revealContents:updateLastUsedDate:completion:]_block_invoke";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2493AC000, v4, OS_LOG_TYPE_DEFAULT, "%s 1. Starting reveal of item: %@ expecting to get completion handler to continue", buf, 0x16u);
    }

    v6 = [a1[6] effectiveBrowserViewController];
    if (v6)
    {
      v7 = [a1[6] effectiveBrowserViewController];
      v16 = a1[4];
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_125;
      v12[3] = &unk_278FA2230;
      v13 = a1[4];
      v15 = a1[7];
      v14 = a1[5];
      [v7 revealWithNodes:v8 selectEvenIfVisible:1 completionBlock:v12];
    }

    else
    {
      v9 = *v3;
      if (!*v3)
      {
        DOCInitLogging();
        v9 = *v3;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = a1[5];
        *buf = 136315394;
        v18 = "[DOCTabbedBrowserViewController revealDocumentAtURL:importIfNeeded:openDocument:revealContents:updateLastUsedDate:completion:]_block_invoke";
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_2493AC000, v9, OS_LOG_TYPE_DEFAULT, "%s 3. Can not reveal of item: %@ effectiveBrowserViewController is nil. Calling completion handler", buf, 0x16u);
      }

      v11 = a1[7];
      if (v11)
      {
        v11[2](v11, a1[5], 0);
      }
    }
  }
}

uint64_t __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_125(void *a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D062B8];
  v5 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v8 = 136315650;
    v9 = "[DOCTabbedBrowserViewController revealDocumentAtURL:importIfNeeded:openDocument:revealContents:updateLastUsedDate:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2493AC000, v5, OS_LOG_TYPE_DEFAULT, "%s 2. Finished reveal of item: %@ completion handler success: %d", &v8, 0x1Cu);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[5], 0);
  }

  return result;
}

void __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = v6;
  if (v5 || !v6)
  {
    v10 = MEMORY[0x277D062B8];
    v11 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 72);
      v15 = 138412802;
      v16 = v12;
      v17 = 1024;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2493AC000, v11, OS_LOG_TYPE_DEFAULT, "Error fetching the parent item for the revealed URL: %@ importIfNeeded: %d error: %@", &v15, 0x1Cu);
    }

    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, *(a1 + 40));
    }
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = [*(a1 + 48) node];
    (*(v8 + 16))(v8, v7, v9);
  }
}

uint64_t __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_132(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)transitionControllerForDocumentAtURL:(id)a3
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v5 transitionControllerForDocumentAtURL:a3];

  return v3;
}

- (BOOL)documentBrowser:(id)a3 shouldShowActivityViewControllerForDocumentURLs:(id)a4 barButtonItem:(id)a5 popoverTracker:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v13 = [(UIDocumentBrowserViewController *)self delegate];
    v14 = [v13 documentBrowser:self shouldShowActivityViewControllerForDocumentURLs:v10 barButtonItem:v11 popoverTracker:v12];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)documentBrowser:(id)a3 shouldHandleLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
  v8 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

  if (v8 == v7)
  {
    v10 = [v6 fileProviderItem];
    v11 = v10;
    if (v10 && [v10 isFolder])
    {
      v12 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v13 = [v12 fullDocumentManagerViewController];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__DOCTabbedBrowserViewController_documentBrowser_shouldHandleLocation___block_invoke;
      v15[3] = &unk_278FA1C30;
      v15[4] = self;
      [v13 revealLocation:v6 animated:0 completion:v15];

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void __71__DOCTabbedBrowserViewController_documentBrowser_shouldHandleLocation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) switchToBrowse];
  v2 = [*(a1 + 32) fullRecentsViewController];
  [v2 dismissSearch];
}

- (void)documentBrowser:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v7 = a4;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v6 = [(UIDocumentBrowserViewController *)self delegate];
    [v6 documentBrowser:self didPickDocumentsAtURLs:v7];
  }

  else
  {
    if (![(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:sel_documentBrowser_didPickDocumentURLs_])
    {
      goto LABEL_6;
    }

    v6 = [(UIDocumentBrowserViewController *)self delegate];
    [v6 documentBrowser:self didPickDocumentURLs:v7];
  }

LABEL_6:
}

- (void)documentBrowser:(id)a3 didRequestDocumentCreationWithHandler:(id)a4
{
  v7 = a4;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v6 = [(UIDocumentBrowserViewController *)self delegate];
    [v6 documentBrowser:self didRequestDocumentCreationWithHandler:v7];
  }
}

- (void)documentBrowser:(id)a3 didImportDocumentAtURL:(id)a4 toDestinationURL:(id)a5
{
  v10 = a4;
  v8 = a5;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v9 = [(UIDocumentBrowserViewController *)self delegate];
    [v9 documentBrowser:self didImportDocumentAtURL:v10 toDestinationURL:v8];
  }
}

- (void)documentBrowser:(id)a3 failedToImportDocumentAtURL:(id)a4 error:(id)a5
{
  v10 = a4;
  v8 = a5;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v9 = [(UIDocumentBrowserViewController *)self delegate];
    [v9 documentBrowser:self failedToImportDocumentAtURL:v10 error:v8];
  }
}

- (id)documentBrowser:(id)a3 applicationActivitiesForDocumentURLs:(id)a4
{
  v6 = a4;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v7 = [(UIDocumentBrowserViewController *)self delegate];
    v8 = [v7 documentBrowser:self applicationActivitiesForDocumentURLs:v6];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)documentBrowser:(id)a3 willPresentActivityViewController:(id)a4
{
  v9 = a3;
  v7 = a4;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    v8 = [(UIDocumentBrowserViewController *)self delegate];
    [v8 documentBrowser:v9 willPresentActivityViewController:v7];
  }
}

- (void)setAllowsPickingMultipleItems:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v10 setAllowsPickingMultipleItems:?];
  v5 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  [v5 setAllowsPickingMultipleItems:v3];

  v6 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
  [v6 setAllowsPickingMultipleItems:v3];

  v7 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  v8 = [v7 fullDocumentManagerViewController];
  [v8 setAllowsPickingMultipleItems:v3];

  v9 = [(DOCTabbedBrowserViewController *)self fullBrowserViewController];
  [v9 setAllowsPickingMultipleItems:v3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (DOCTabbedBrowserViewControllerContext == a6)
  {
    if ([a3 isEqualToString:@"editing"])
    {
      v11 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      v12 = v11;
      if (v11 == v10)
      {
      }

      else
      {
        v13 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

        if (v13 != v10)
        {
          goto LABEL_9;
        }
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__DOCTabbedBrowserViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v14[3] = &unk_278FA1C30;
      v14[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v14];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DOCTabbedBrowserViewController;
    [(DOCTabbedBrowserViewController *)&v15 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }

LABEL_9:
}

- (void)updateTabBarVisibility
{
  v3 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([v3 isEditing])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    if ([v5 isEditing])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v7 = [v6 fullDocumentManagerViewController];
      v4 = [v7 isEditing];
    }
  }

  v8 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([v8 prefersTabBarHidden])
  {
    v9 = 0;
  }

  else
  {
    v10 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    if ([v10 prefersTabBarHidden])
    {
      v9 = 0;
    }

    else
    {
      v11 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v12 = [v11 fullDocumentManagerViewController];
      v9 = [v12 prefersTabBarHidden] ^ 1;
    }
  }

  [(DOCTabbedBrowserViewController *)self _viewController:0 wantsToShowSystemTabBar:v9 isEditing:v4];
}

- (void)updateLocationTitleFromCurrentState
{
  v6 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v3 = [v6 currentViewController];
  v4 = [v3 navigationItem];
  v5 = [v4 title];

  [(DOCTabbedBrowserViewController *)self setCurrentLocationTitle:v5];
}

- (BOOL)_shouldForwardSelectorToDelegate:(SEL)a3
{
  v4 = [(UIDocumentBrowserViewController *)self delegate];
  if (v4 == self)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(UIDocumentBrowserViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)updateNavigationBarButtonItemsForViewController:(id)a3
{
  v9 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:a3];
  v4 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];

  v5 = v9;
  if (v9 == v4)
  {
    v5 = self->_splitBrowserViewController;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [(UIDocumentBrowserViewController *)self additionalLeadingNavigationBarButtonItems];
    [(DOCSplitBrowserViewController *)v6 setAdditionalLeadingNavigationBarButtonItems:v7];

    v8 = [(UIDocumentBrowserViewController *)self additionalTrailingNavigationBarButtonItems];
    [(DOCSplitBrowserViewController *)v6 setAdditionalTrailingNavigationBarButtonItems:v8];
  }
}

- (id)newViewControllerFor:(id)a3
{
  v38[6] = *MEMORY[0x277D85DE8];
  v5 = [a3 identifier];
  if (![v5 isEqualToString:@"recents"])
  {
    if ([v5 isEqualToString:@"shared"])
    {
      v8 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

      if (v8)
      {
        v7 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
        goto LABEL_11;
      }

      v34 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [v34 copy];

      [v10 configureContextForDisplayingTab:1];
      [v10 setPreferLastUsedDate:1];
      [v10 setRestoreLastVisitedLocation:1];
      [v10 setSaveLastVisitedLocation:1];
      v35 = [DOCFullDocumentManagerViewController alloc];
      v36 = [(DOCTabbedBrowserViewController *)self sourceObserver];
      v22 = [(DOCFullDocumentManagerViewController *)v35 initWithConfiguration:v10 sourceObserver:v36];

      [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"shared"];
      [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
      [(DOCTabbedBrowserViewController *)self setFullSharedViewController:v22];
    }

    else
    {
      if (![v5 isEqualToString:@"browse"])
      {
        v33 = [MEMORY[0x277CCA890] currentHandler];
        [v33 handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:1620 description:{@"Unsupported UITab identifier: %@", v5}];

        v7 = objc_alloc_init(MEMORY[0x277D75D28]);
        goto LABEL_11;
      }

      v9 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [v9 copy];

      [v10 configureContextForDisplayingTab:2];
      [v10 setPreferLastUsedDate:1];
      [v10 setRestoreLastVisitedLocation:1];
      [v10 setSaveLastVisitedLocation:1];
      [v10 setSupportsColumnView:1];
      v11 = *MEMORY[0x277D05D78];
      v38[0] = *MEMORY[0x277D060F8];
      v38[1] = v11;
      v12 = *MEMORY[0x277D05DA0];
      v38[2] = *MEMORY[0x277D05DC8];
      v38[3] = v12;
      v13 = *MEMORY[0x277D05DB8];
      v38[4] = *MEMORY[0x277D05DC0];
      v38[5] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:6];
      [v10 setHiddenSourcesIdentifiers:v14];

      v15 = [(DOCTabbedBrowserViewController *)self traitCollection];
      v16 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
      [v16 frame];
      v19 = [DOCColumnViewController supportsDisplayInTraitCollection:v15 availableArea:v17, v18];

      v20 = [DOCFullDocumentManagerViewController alloc];
      v21 = [(DOCTabbedBrowserViewController *)self sourceObserver];
      v22 = [(DOCFullDocumentManagerViewController *)v20 initWithConfiguration:v10 sourceObserver:v21];

      [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"browser"];
      [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
      [(DOCFullDocumentManagerViewController *)v22 setEnvironmentSupportsColumnView:v19];
      v23 = [(UIDocumentBrowserViewController *)self customActions];
      [(DOCFullDocumentManagerViewController *)v22 setCustomActions:v23];

      [(DOCTabbedBrowserViewController *)self setFullBrowserViewController:v22];
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

  if (!v6)
  {
    v24 = [(UIDocumentBrowserViewController *)self configuration];
    v10 = [v24 copy];

    [v10 configureContextForDisplayingTab:0];
    [v10 setSupportsColumnView:1];
    [v10 setPreferLastUsedDate:1];
    [v10 setRestoreLastVisitedLocation:0];
    v25 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
    [v10 setDefaultLocation:v25];

    v26 = [DOCFullDocumentManagerViewController alloc];
    v27 = [(DOCTabbedBrowserViewController *)self sourceObserver];
    v22 = [(DOCFullDocumentManagerViewController *)v26 initWithConfiguration:v10 sourceObserver:v27];

    [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"recents"];
    [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
    v28 = [(DOCTabbedBrowserViewController *)self traitCollection];
    v29 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
    [v29 frame];
    v32 = [DOCColumnViewController supportsDisplayInTraitCollection:v28 availableArea:v30, v31];

    [(DOCFullDocumentManagerViewController *)v22 setEnvironmentSupportsColumnView:v32];
    [(DOCTabbedBrowserViewController *)self setFullRecentsViewController:v22];
    goto LABEL_13;
  }

  v7 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
LABEL_11:
  v22 = v7;
LABEL_14:

  return v22;
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D06208] tabSidebar];
  v7 = [v6 isEnabled];

  if ((v7 & 1) == 0)
  {
    v8 = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];

    if (v8 == v5)
    {
      v11 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:v5];

      v12 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v13 = v12;
      if (v11 != v12)
      {
        v14 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

        if (v11 == v14)
        {
          v16 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
        }

        else
        {
          v15 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

          if (v11 != v15)
          {
LABEL_19:

            v9 = 0;
            v5 = v11;
            goto LABEL_4;
          }

          v16 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
        }

        v17 = v16;
        [v16 resetNavigationStepwise];
LABEL_18:

        goto LABEL_19;
      }

      v17 = [v12 fullDocumentManagerViewController];
      if (![MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating] || !objc_msgSend(v17, "_canNavigateBack"))
      {
        if ([v13 displayMode] == 1)
        {
          [v13 showSidebar];
          goto LABEL_18;
        }

        if ([v13 displayMode] == 3)
        {
          [v13 hideSidebar];
          goto LABEL_18;
        }
      }

      [v17 popToRootViewControllerAnimated:1];
      goto LABEL_18;
    }
  }

  v9 = 1;
LABEL_4:

  return v9;
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277D06208] tabSidebar];
  v7 = [v6 isEnabled];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v14 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:v5];

    v9 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

    if (v14 != v9)
    {
      v10 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [v10 dismissSearch];
    }

    v11 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];

    if (v14 != v11)
    {
      v12 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v13 = [v12 fullDocumentManagerViewController];
      [v13 dismissSearch];
    }

    [(DOCTabbedBrowserViewController *)self saveSelectedTabState];
    [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v14];
    [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
    v8 = v14;
  }
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v30 = a4;
  v6 = [v30 identifier];
  v7 = [v6 isEqualToString:@"recents"];

  if (!v7)
  {
    v9 = [v30 identifier];
    v10 = [v9 isEqualToString:@"shared"];

    if (v10)
    {
      v8 = [MEMORY[0x277D05EA8] sharedItemsLocation];
      goto LABEL_5;
    }

    v12 = [v30 identifier];
    if ([v12 hasPrefix:@"location."])
    {
    }

    else
    {
      v13 = [v30 identifier];
      v14 = [v13 hasPrefix:@"server."];

      if (!v14)
      {
        v25 = [v30 identifier];
        v26 = [v25 hasPrefix:@"tag."];

        if (v26)
        {
          v15 = [v30 userInfo];
          v11 = [objc_alloc(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag:v15];
          goto LABEL_11;
        }

        v27 = [v30 identifier];
        v28 = [v27 hasPrefix:@"favorite."];

        if (!v28)
        {
          v11 = 0;
          goto LABEL_12;
        }

        v15 = [v30 userInfo];
        if (!v15)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v29 = objc_alloc(MEMORY[0x277D05EA8]);
        v17 = [v15 providerDomainID];
        v18 = v29;
        v19 = v17;
        v20 = v15;
LABEL_10:
        v11 = [v18 initWithSourceIdentifier:v19 node:v20];

LABEL_11:
        goto LABEL_12;
      }
    }

    v15 = [v30 userInfo];
    v16 = objc_alloc(MEMORY[0x277D05EA8]);
    v17 = [v15 identifier];
    v18 = v16;
    v19 = v17;
    v20 = 0;
    goto LABEL_10;
  }

  v8 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
LABEL_5:
  v11 = v8;
LABEL_12:
  v21 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v22 = v21;
  if (v11)
  {
    v23 = [v21 hierarchyController];
    v24 = [v23 isResetBeingPerformed];

    if ((v24 & 1) == 0)
    {
      +[_TtC26DocumentManagerExecutables31DOCItemCollectionViewController resetRestorableSettingsCache];
      [v22 showLocation:v11 animated:0 withCompletionBlock:&__block_literal_global_162];
    }
  }

  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v22];
  [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
  [(DOCTabbedBrowserViewController *)self saveSelectedTabState];
}

- (id)forceBrowseTabDefaultsValue
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__DOCTabbedBrowserViewController_forceBrowseTabDefaultsValue__block_invoke;
  v3[3] = &unk_278FA2128;
  v3[4] = self;
  v3[5] = a2;
  if (forceBrowseTabDefaultsValue_onceToken != -1)
  {
    dispatch_once(&forceBrowseTabDefaultsValue_onceToken, v3);
  }

  return forceBrowseTabDefaultsValue_testBrowseTabSelectedNumber;
}

void __61__DOCTabbedBrowserViewController_forceBrowseTabDefaultsValue__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v2 initWithSuiteName:*MEMORY[0x277D060B0]];
  v3 = [v5 objectForKey:*MEMORY[0x277D05DE0]];
  v4 = forceBrowseTabDefaultsValue_testBrowseTabSelectedNumber;
  forceBrowseTabDefaultsValue_testBrowseTabSelectedNumber = v3;

  if (forceBrowseTabDefaultsValue_testBrowseTabSelectedNumber)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __61__DOCTabbedBrowserViewController_forceBrowseTabDefaultsValue__block_invoke_cold_1(a1);
    }
  }
}

- (unint64_t)fetchLastUsedTab
{
  if (![(DOCTabbedBrowserViewController *)self canHaveTabs])
  {
    return 2;
  }

  return [(DOCTabbedBrowserViewController *)self _mostRecentBrowsedPathEffectiveTab];
}

- (unint64_t)defaultInitialBrowsedPathEffectiveTab
{
  v3 = [(DOCTabbedBrowserViewController *)self _mostRecentBrowsedPathEffectiveTab];
  v4 = [(UIDocumentBrowserViewController *)self configuration];
  v5 = [v4 canPresentContentForTab:v3];

  if (v5)
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)_mostRecentBrowsedPathEffectiveTab
{
  v3 = [(DOCTabbedBrowserViewController *)self forceBrowseTabDefaultsValue];
  v4 = v3;
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = [(DOCTabbedBrowserViewController *)self deferredBrowserStateChanges];
    v7 = v6;
    if (v6 && [v6 tabIsSpecified])
    {
      v5 = [v7 tab];
    }

    else
    {
      v8 = [MEMORY[0x277D05F20] sharedStore];
      v9 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [v8 interfaceStateForConfiguration:v9];

      [(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding];
      v5 = [v10 mostRecentlyVisitedBrowseSourceWithFallback:0];
    }
  }

  return v5;
}

- (void)saveSelectedTabState
{
  v3 = [MEMORY[0x277D05F20] sharedStore];
  v4 = [(UIDocumentBrowserViewController *)self configuration];
  v7 = [v3 interfaceStateForConfiguration:v4];

  [v7 updateMostRecentlyVisitedBrowseSourceToTab:{-[DOCTabbedBrowserViewController effectiveTabSwitcherTab](self, "effectiveTabSwitcherTab")}];
  v5 = [MEMORY[0x277D05F20] sharedStore];
  v6 = [(UIDocumentBrowserViewController *)self configuration];
  [v5 updateInterfaceState:v7 forConfiguration:v6];
}

- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)a3
{
  v21 = a3;
  v5 = [MEMORY[0x277D06208] tabSidebar];
  v6 = [v5 isEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

    if (v7 == v21)
    {
      v12 = 0;
    }

    else
    {
      v8 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

      if (v8 == v21)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
        v10 = [v9 fullDocumentManagerViewController];

        if (v10 != v21)
        {
          v11 = [MEMORY[0x277CCA890] currentHandler];
          [v11 handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:1826 description:@"Unexpected didFinishGatheringItemsAndThumbnails callback"];
LABEL_13:

          goto LABEL_14;
        }

        v12 = [(DOCTabbedBrowserViewController *)self effectiveTabSwitcherTab];
      }
    }

    didLoadStateByTab = self->_didLoadStateByTab;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v15 = [(NSMutableDictionary *)didLoadStateByTab objectForKeyedSubscript:v14];
    v16 = [v15 BOOLValue];

    if ((v16 & 1) == 0)
    {
      v17 = self->_didLoadStateByTab;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      [(NSMutableDictionary *)v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v18];
    }

    v19 = [(DOCTabbedBrowserViewController *)self tabbedBrowserViewControllerDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v11 = [(DOCTabbedBrowserViewController *)self tabbedBrowserViewControllerDelegate];
      [v11 tabbedBrowserViewController:self didFinishInitialLoad:v16 ^ 1u ofTab:v12];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)fullDocumentManagerViewController:(id)a3 didUpdateHierarchy:(id)a4 displayedRootLocation:(id)a5
{
  v8 = a4;
  v9 = [a3 parentViewController];

  if (a5)
  {
    if (v9)
    {
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
      {
        v10 = [MEMORY[0x277D06208] tabSidebar];
        v11 = [v10 isEnabled];

        if ((v11 & 1) == 0)
        {
          v12 = [v8 effectiveTabSwitcherTab];
          if (v12 != [(DOCAutoBarHidingTabBarController *)self->_tabBarController selectedOrInflightSelectedTab])
          {
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __109__DOCTabbedBrowserViewController_fullDocumentManagerViewController_didUpdateHierarchy_displayedRootLocation___block_invoke;
            v13[3] = &unk_278FA2128;
            v13[4] = self;
            v13[5] = v12;
            [MEMORY[0x277D75D28] doc_performWithDeferredTransitionsAndAnimationsDisabled:v13];
          }
        }
      }
    }
  }
}

- (void)dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(DOCTabbedBrowserViewController *)self presentedViewController];

  if (v6)
  {
    v7 = [(DOCTabbedBrowserViewController *)self presentedViewController];
    [v7 dismissViewControllerAnimated:v4 completion:v8];
  }

  else
  {
    v8[2]();
  }
}

- (void)importDocumentAtURL:(id)a3 nextToDocumentAtURL:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v13 = [v14 documentManager];
  [v13 importDocumentAt:v12 nextTo:v11 mode:a5 completionHandler:v10];
}

- (void)importDocumentAtURL:(id)a3 mode:(unint64_t)a4 toCurrentBrowserLocationWithCompletion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v10 = [v11 documentManager];
  [v10 importDocumentAt:v9 mode:a4 toCurrentBrowserLocationWithCompletion:v8];
}

- (DOCTabbedBrowserViewControllerDelegate)tabbedBrowserViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tabbedBrowserViewControllerDelegate);

  return WeakRetained;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCTabbedBrowserViewController.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  DOCTabbedBrowserViewController.target(forAction:withSender:)(a3, v16, v17);

  outlined destroy of CharacterSet?(v16, &_sypSgMd);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)presentConnectToServer:(id)a3 askPermission:(BOOL)a4
{
  v4 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  if (v4)
  {
    DOCTabbedBrowserViewController.showConnectToServerAlert(_:)(v10);
  }

  else
  {
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    [(DOCTabbedBrowserViewController *)v12 presentConnectToServer:v13];

    v12 = v14;
  }

  (*(v7 + 8))(v10, v6);
}

- (void)presentConnectToServer:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  DOCTabbedBrowserViewController.presentConnectToServer(_:)(v8);

  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
}

- (void)presentGoToLocation
{
  v3 = self;
  v2 = [(DOCTabbedBrowserViewController *)v3 effectiveFullBrowser];
  DOCFullDocumentManagerViewController.presentGoToLocation()();
}

- (void)actionControllerDidFinishAction:(id)a3 userInfo:(id)a4 error:(id)a5
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  DOCTabbedBrowserViewController.actionControllerDidFinishAction(_:userInfo:error:)(v9, v8, a5);
}

- (void)actionControllerDidFinishAction:(id)a3 error:(id)a4
{
  v6 = a3;
  v9 = self;
  if (a4)
  {
    v7 = a4;
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  [(DOCTabbedBrowserViewController *)v9 actionControllerDidFinishAction:v6 userInfo:0 error:v8];
}

- (void)actionController:(id)a3 presentError:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v7 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

- (void)configureTabBarForUIPIfNecessary
{
  v2 = self;
  DOCTabbedBrowserViewController.configureTabBarForUIPIfNecessary()();
}

- (void)updateTraitCollectionTabBarSetting
{
  v2 = self;
  DOCTabbedBrowserViewController.updateTraitCollectionTabBarSetting()();
}

- (int64_t)tabSwitcherStyleForCompactPresentation
{
  v2 = self;
  DOCTabbedBrowserViewController.tabSwitcherStyleForCompactPresentation.getter();
  v4 = v3;

  return v4;
}

- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4
{
  v5 = a4;
  v13 = self;
  v6 = [(DOCTabbedBrowserViewController *)v13 tabSidebarController];
  v7 = (*((*MEMORY[0x277D85000] & v6->super.super.super.super.isa) + 0x70))(v5);
  v9 = v8;

  if (v7)
  {
    ObjectType = swift_getObjectType();
    v11 = [v5 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 72))(v12, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  v11 = specialized DOCTabbedBrowserViewController.tabBarController(_:tab:operationForAcceptingItemsFrom:)(v9, a5);

  swift_unknownObjectRelease();
  return v11;
}

- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  v7 = a4;
  swift_unknownObjectRetain();
  v15 = self;
  v8 = [v7 parent];
  if (v8)
  {
    v9 = v8;
    v10 = [(DOCTabbedBrowserViewController *)v15 tabSidebarController];
    v11 = (*((*MEMORY[0x277D85000] & v10->super.super.super.super.isa) + 0x70))(v9);
    v13 = v12;

    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 88))(a5, v7, v15, DOCGridLayout.specIconWidth.modify, 0, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized DOCTabbedBrowserViewController.tabBarController(_:visibilityDidChangeFor:)(v6);
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = specialized DOCTabbedBrowserViewController.tabBarController(_:sidebar:itemFor:)(v10);

  return v12;
}

- (void)dataSource:(id)a3 wantsToReveal:(id)a4
{
  v5 = a4;
  v9 = self;
  v6 = [v5 node];
  if (v6)
  {
    v7 = v6;
    v8 = [(DOCTabbedBrowserViewController *)v9 fullBrowserViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v7, 1, DOCGridLayout.specIconWidth.modify, 0, v8);
    swift_unknownObjectRelease();
  }
}

- (void)dataSource:(id)a3 wantsToPresentConnectToServer:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  outlined init with copy of URL?(v13, v9);
  type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v18 = self;
  v19 = 0;
  if (v16 != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v19 = v20;
    (*(v15 + 8))(v9, v14);
  }

  [(DOCTabbedBrowserViewController *)v18 presentConnectToServer:v19];

  outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
}

- (void)dataSource:(id)a3 didUpdateTabs:(id)a4
{
  v5 = a4;
  v7 = self;
  v6 = [(DOCTabbedBrowserViewController *)v7 tabSidebarController];
  [(DOCTabSidebarController *)v6 setTabs:v5];
}

- (id)viewControllerFor:(id)a3
{
  v3 = [(DOCTabbedBrowserViewController *)self newViewControllerFor:a3];

  return v3;
}

- (id)newViewControllersSharing:(id)a3 tabBarItems:(id)a4
{
  type metadata accessor for DOCTabBarItem();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  DOCTabbedBrowserViewController.newViewControllersSharing(_:tabBarItems:)(v7, v6);

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v5 = self;
  }

  v6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController:v8];
  v7 = [(DOCSplitBrowserViewController *)v6 fullDocumentManagerViewController];

  DOCFullDocumentManagerViewController.performSelectAll(_:enteringEditMode:)(&v8, 0);
  outlined destroy of CharacterSet?(&v8, &_sypSgMd);
}

- (void)performDeselectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  DOCTabbedBrowserViewController.performDeselectAll(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)performGoToEnclosingFolder:(id)a3
{
  v4 = self;
  v3 = [(DOCTabbedBrowserViewController *)v4 splitBrowserViewController];
  [(DOCSplitBrowserViewController *)v3 showSidebar];
}

- (void)performConnectToServer:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCTabbedBrowserViewController.performConnectToServer(_:)();
}

- (void)performGoToOnMyDevice:(id)a3
{
  v4 = *MEMORY[0x277D060F0];
  v5 = objc_allocWithZone(MEMORY[0x277D05EA8]);
  v7 = self;
  v6 = [v5 initWithSourceIdentifier:v4 node:0];
  [(DOCTabbedBrowserViewController *)v7 switchToLocation:v6];
}

- (void)performGoToShared:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 sharedItemsLocation];
  [(DOCTabbedBrowserViewController *)v6 switchToLocation:v5];
}

- (void)performScanDocuments:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCTabbedBrowserViewController.performScanDocuments(_:)();
}

- (void)applyBrowserStateChange:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = a3;
  v8 = self;
  v7 = v6;
  DOCRunInMainThread(_:)();
}

- (void)performBrowserStateChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCTabbedBrowserViewController.performBrowserStateChange(_:)(v4);
}

- (void)_applyBrowserStateChange:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DOCTabbedBrowserViewController._applyBrowserStateChange(_:force:)(v6, a4);
}

- (void)updateDeferredBrowserStateChangesWith:(id)a3
{
  v5 = type metadata accessor for DOCUIPBrowserState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  static DOCUIPBrowserState._unconditionallyBridgeFromObjectiveC(_:)();

  DOCTabbedBrowserViewController.updateDeferredBrowserStateChanges(with:)(v9);
  (*(v6 + 8))(v9, v5);
}

+ (void)setGlobalTabbedBrowserController:(uint64_t)a1 forIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2493AC000, a2, OS_LOG_TYPE_DEBUG, "Cleaning tabbed browser from map table for identifier: %@", &v2, 0xCu);
}

- (void)tabControllerIndexForTab:(os_log_t)log inViewControllers:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_2493AC000, log, OS_LOG_TYPE_FAULT, "%@ Couldn't find DOCTab (%lu) index", &v3, 0x16u);
}

- (void)presentTab:(uint64_t)a1 rawTabSwitchOnly:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCTabbedBrowserViewController.m" lineNumber:1069 description:@"Illegal tab"];
}

void __61__DOCTabbedBrowserViewController_forceBrowseTabDefaultsValue__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"DOCTabbedBrowserViewController.m" lineNumber:1747 description:{@"bad class for object %@", forceBrowseTabDefaultsValue_testBrowseTabSelectedNumber}];
}

@end