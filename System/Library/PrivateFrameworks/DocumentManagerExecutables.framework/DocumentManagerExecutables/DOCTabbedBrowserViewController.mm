@interface DOCTabbedBrowserViewController
+ (id)globalMapTable;
+ (id)globalTabbedBrowserControllerForIdentifier:(id)identifier;
+ (void)setGlobalTabbedBrowserController:(id)controller forIdentifier:(id)identifier;
- (BOOL)_shouldForwardSelectorToDelegate:(SEL)delegate;
- (BOOL)canHaveTabs;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)documentBrowser:(id)browser shouldHandleLocation:(id)location;
- (BOOL)documentBrowser:(id)browser shouldShowActivityViewControllerForDocumentURLs:(id)ls barButtonItem:(id)item popoverTracker:(id)tracker;
- (BOOL)isShowingMovePanel;
- (BOOL)shouldDeferBrowserStateChanges;
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (DOCFullDocumentManagerViewController)effectiveFullBrowser;
- (DOCTabbedBrowserViewController)initWithCoder:(id)coder;
- (DOCTabbedBrowserViewController)initWithConfiguration:(id)configuration;
- (DOCTabbedBrowserViewControllerDelegate)tabbedBrowserViewControllerDelegate;
- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController;
- (id)_multitaskingDragExclusionRects;
- (id)_referenceViewControllerForDirectTabChildViewController:(id)controller;
- (id)documentBrowser:(id)browser applicationActivitiesForDocumentURLs:(id)ls;
- (id)effectiveFullBrowserForTab:(unint64_t)tab;
- (id)forceBrowseTabDefaultsValue;
- (id)fullBrowserHierarchyController;
- (id)initForOpeningContentTypes:(id)types;
- (id)newViewControllerFor:(id)for;
- (id)newViewControllersSharing:(id)sharing tabBarItems:(id)items;
- (id)preferredFocusEnvironments;
- (id)selectedTabReferenceViewController;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)transitionControllerForDocumentAtURL:(id)l;
- (id)viewControllerFor:(id)for;
- (int64_t)tabSwitcherStyleForCompactPresentation;
- (unint64_t)_mostRecentBrowsedPathEffectiveTab;
- (unint64_t)browserContentStrategy;
- (unint64_t)defaultInitialBrowsedPathEffectiveTab;
- (unint64_t)effectiveTabSwitcherTab;
- (unint64_t)fetchLastUsedTab;
- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (unint64_t)tabBarCurrentRawTab;
- (unint64_t)tabControllerIndexForTab:(unint64_t)tab;
- (unint64_t)tabControllerIndexForTab:(unint64_t)tab inViewControllers:(id)controllers;
- (void)_applyBrowserStateChange:(id)change force:(BOOL)force;
- (void)_beginSystemTabBarAllowed;
- (void)_beginSystemTabBarAlwaysDisallowed;
- (void)_beginSystemTabBarDisallowed;
- (void)_beginSystemTabBarHidden;
- (void)_loadFullHierarchy;
- (void)_loadMinimalHierarchy;
- (void)_performWhilePreventingHierarchyControllerLoading:(id)loading;
- (void)_setLocationsInBrowseTab:(id)tab;
- (void)_setShowSystemTabBar:(BOOL)bar isEditing:(BOOL)editing;
- (void)_stopSearchingSources;
- (void)_updateColumnViewAvailablityFromTraitCollection:(id)collection andSize:(CGSize)size;
- (void)_updateTabButtonsVisibilityForTraits;
- (void)_viewController:(id)controller wantsToShowSystemTabBar:(BOOL)bar isEditing:(BOOL)editing;
- (void)actionController:(id)controller presentError:(id)error completion:(id)completion;
- (void)actionControllerDidFinishAction:(id)action error:(id)error;
- (void)actionControllerDidFinishAction:(id)action userInfo:(id)info error:(id)error;
- (void)applyBrowserStateChange:(id)change;
- (void)configureTabBarForUIPIfNecessary;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)dataSource:(id)source didUpdateTabs:(id)tabs;
- (void)dataSource:(id)source wantsToPresentConnectToServer:(id)server;
- (void)dataSource:(id)source wantsToReveal:(id)reveal;
- (void)dealloc;
- (void)dismissAllPresentedViewControllers:(BOOL)controllers completion:(id)completion;
- (void)doc_commonInit;
- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls;
- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler;
- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error;
- (void)documentBrowser:(id)browser willPresentActivityViewController:(id)controller;
- (void)enumerateAllFullBrowserViewControllers:(id)controllers;
- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)thumbnails;
- (void)fullDocumentManagerViewController:(id)controller didUpdateHierarchy:(id)hierarchy displayedRootLocation:(id)location;
- (void)importDocumentAtURL:(id)l mode:(unint64_t)mode toCurrentBrowserLocationWithCompletion:(id)completion;
- (void)importDocumentAtURL:(id)l nextToDocumentAtURL:(id)rL mode:(unint64_t)mode completionHandler:(id)handler;
- (void)itemCollectionViewControllerDidLoad;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performBrowserStateChange:(id)change;
- (void)performConnectToServer:(id)server;
- (void)performDeselectAll:(id)all;
- (void)performGoToEnclosingFolder:(id)folder;
- (void)performGoToOnMyDevice:(id)device;
- (void)performGoToShared:(id)shared;
- (void)performScanDocuments:(id)documents;
- (void)presentBrowseTabFromFullBrowser;
- (void)presentConnectToServer:(id)server;
- (void)presentConnectToServer:(id)server askPermission:(BOOL)permission;
- (void)presentGoToLocation;
- (void)presentRecentsTabFromFullBrowse;
- (void)presentSharedTabFromFullBrowser;
- (void)presentTab:(unint64_t)tab rawTabSwitchOnly:(BOOL)only;
- (void)revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed openDocument:(BOOL)document revealContents:(BOOL)contents updateLastUsedDate:(BOOL)date completion:(id)completion;
- (void)saveSelectedTabState;
- (void)selectAll:(id)all;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items;
- (void)setAllowsDocumentCreation:(BOOL)creation;
- (void)setAllowsPickingMultipleItems:(BOOL)items;
- (void)setCustomActions:(id)actions;
- (void)setIsShowingSearchResults:(BOOL)results;
- (void)setIsSystemTabBarAllowedByTraits:(BOOL)traits;
- (void)setSafeAreaUpdatesDisabledDuringTransitions:(BOOL)transitions;
- (void)showConnectToServer:(id)server;
- (void)splitViewController:(id)controller didChangeFromState:(id)state toState:(id)toState isUserDisplayModeChange:(BOOL)change;
- (void)splitViewController:(id)controller wantsToShowTabBar:(BOOL)bar;
- (void)startSearchingSourcesWithConfiguration:(id)configuration;
- (void)switchToLocation:(id)location;
- (void)switchToTab:(unint64_t)tab;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group;
- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs;
- (void)tabbedBrowserView:(id)view willMoveToWindow:(id)window;
- (void)updateDeferredBrowserStateChangesWith:(id)with;
- (void)updateForChangedHorizontalSizeClass;
- (void)updateLocationTitleFromCurrentState;
- (void)updateNavigationBarButtonItemsForViewController:(id)controller;
- (void)updateTabBarVisibility;
- (void)updateTraitCollectionTabBarSetting;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

+ (id)globalTabbedBrowserControllerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy)
  {
    v6 = +[DOCTabbedBrowserViewController globalMapTable];
    v7 = [v6 objectForKey:identifierCopy];
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

  objc_sync_exit(selfCopy);

  return v7;
}

+ (void)setGlobalTabbedBrowserController:(id)controller forIdentifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy)
  {
    if (controllerCopy)
    {
      v9 = +[DOCTabbedBrowserViewController globalMapTable];
      [v9 setObject:controllerCopy forKey:identifierCopy];
    }

    else
    {
      v12 = +[DOCTabbedBrowserViewController globalMapTable];
      [v12 removeObjectForKey:identifierCopy];

      v13 = MEMORY[0x277D06310];
      v14 = *MEMORY[0x277D06310];
      if (!*MEMORY[0x277D06310])
      {
        DOCInitLogging();
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:identifierCopy forIdentifier:v14];
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

  objc_sync_exit(selfCopy);
}

- (id)initForOpeningContentTypes:(id)types
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initForOpeningContentTypes:types];
  v4 = v3;
  if (v3)
  {
    [v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (DOCTabbedBrowserViewController)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(DOCTabbedBrowserViewController *)v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (DOCTabbedBrowserViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v7 initWithCoder:coder];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [fullRecentsViewController removeObserver:self forKeyPath:@"editing"];

    fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [fullSharedViewController removeObserver:self forKeyPath:@"editing"];
  }

  configuration = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier = [configuration sceneIdentifier];
  [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:0 forIdentifier:sceneIdentifier];

  configuration2 = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier2 = [configuration2 sceneIdentifier];
  [_TtC26DocumentManagerExecutables21DOCInteractionManager clearSharedControllerFor:sceneIdentifier2];

  [(DOCTabbedBrowserViewController *)self _stopSearchingSources];
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v10 dealloc];
}

- (void)setIsSystemTabBarAllowedByTraits:(BOOL)traits
{
  if (self->_isSystemTabBarAllowedByTraits == traits)
  {
    [(DOCAutoBarHidingTabBarController *)self->_tabBarController updateBarVisibilityIfNecessary];
  }

  else
  {
    self->_isSystemTabBarAllowedByTraits = traits;
    if (traits)
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
  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([fullRecentsViewController isEditing])
  {
    isEditing = 1;
  }

  else
  {
    fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    isEditing = [fullSharedViewController isEditing];
  }

  [(DOCTabbedBrowserViewController *)self _setShowSystemTabBar:0 isEditing:isEditing];
}

- (void)_beginSystemTabBarAlwaysDisallowed
{
  tabBarCurrentRawTab = [(DOCTabbedBrowserViewController *)self tabBarCurrentRawTab];
  if (tabBarCurrentRawTab <= 1 && (v4 = tabBarCurrentRawTab, -[DOCTabbedBrowserViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = &OBJC_IVAR___DOCTabbedBrowserViewController__fullSharedViewController;
    if (!v4)
    {
      v7 = &OBJC_IVAR___DOCTabbedBrowserViewController__fullRecentsViewController;
    }

    v8 = *(&self->super.super.super.super.isa + *v7);
    hierarchyController = [v8 hierarchyController];
    locations = [hierarchyController locations];
  }

  else
  {
    locations = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__DOCTabbedBrowserViewController__beginSystemTabBarAlwaysDisallowed__block_invoke;
  v11[3] = &unk_278FA1C30;
  v11[4] = self;
  [(DOCTabbedBrowserViewController *)self _performWhilePreventingHierarchyControllerLoading:v11];
  if (locations)
  {
    [(DOCTabbedBrowserViewController *)self _setLocationsInBrowseTab:locations];
  }
}

uint64_t __68__DOCTabbedBrowserViewController__beginSystemTabBarAlwaysDisallowed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentTab:2 rawTabSwitchOnly:1];
  v2 = *(a1 + 32);

  return [v2 _beginSystemTabBarHidden];
}

- (void)_performWhilePreventingHierarchyControllerLoading:(id)loading
{
  loadingCopy = loading;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
  hierarchyController = [fullDocumentManagerViewController hierarchyController];
  if (hierarchyController)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__DOCTabbedBrowserViewController__performWhilePreventingHierarchyControllerLoading___block_invoke;
    v7[3] = &unk_278FA1EA8;
    v8 = loadingCopy;
    [hierarchyController performWhilePreventingLoading:v7];
  }

  else
  {
    loadingCopy[2](loadingCopy);
  }
}

- (void)_beginSystemTabBarAllowed
{
  effectiveTabSwitcherTab = [(DOCTabbedBrowserViewController *)self effectiveTabSwitcherTab];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__DOCTabbedBrowserViewController__beginSystemTabBarAllowed__block_invoke;
  v4[3] = &unk_278FA2128;
  v4[4] = self;
  v4[5] = effectiveTabSwitcherTab;
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

- (void)_setLocationsInBrowseTab:(id)tab
{
  tabCopy = tab;
  if ([tabCopy count])
  {
    presentedViewController = [(DOCTabbedBrowserViewController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController2 = [(DOCTabbedBrowserViewController *)self presentedViewController];
      sidebarViewController = [presentedViewController2 sidebarViewController];
      fullDocumentManagerViewController = [presentedViewController2 fullDocumentManagerViewController];
    }

    else
    {
      sidebarViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController sidebarViewController];
      fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    }

    lastObject = [tabCopy lastObject];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__DOCTabbedBrowserViewController__setLocationsInBrowseTab___block_invoke;
    v14[3] = &unk_278FA2150;
    v15 = lastObject;
    v16 = fullDocumentManagerViewController;
    v17 = sidebarViewController;
    v18 = tabCopy;
    v11 = sidebarViewController;
    v12 = fullDocumentManagerViewController;
    v13 = lastObject;
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
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if ((isEnabled & 1) == 0)
  {
    [(DOCTabbedBrowserViewController *)self updateTraitCollectionTabBarSetting];
    v5 = [(DOCTabbedBrowserViewController *)self enclosingTabSwitcherStyle]!= 0;
    traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
    contextPrefersVariableBlurBottomTabBar = [traitCollection contextPrefersVariableBlurBottomTabBar];
    tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
    [tabBarController setUsingVariableBlurBottomBar:contextPrefersVariableBlurBottomTabBar];

    [(DOCTabbedBrowserViewController *)self setIsSystemTabBarAllowedByTraits:v5];
  }
}

- (void)_viewController:(id)controller wantsToShowSystemTabBar:(BOOL)bar isEditing:(BOOL)editing
{
  barCopy = bar;
  controllerCopy = controller;
  self->_isSystemTabBarPreferred = barCopy;
  v7 = barCopy && [(DOCTabbedBrowserViewController *)self isSystemTabBarAllowedByTraits];
  if (self->_isSystemTabBarVisible != v7)
  {
    [DOCTabbedBrowserViewController _setShowSystemTabBar:"_setShowSystemTabBar:isEditing:" isEditing:?];
  }
}

- (void)_setShowSystemTabBar:(BOOL)bar isEditing:(BOOL)editing
{
  self->_isSystemTabBarVisible = bar;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__DOCTabbedBrowserViewController__setShowSystemTabBar_isEditing___block_invoke;
  aBlock[3] = &unk_278FA2178;
  aBlock[4] = self;
  barCopy = bar;
  v5 = _Block_copy(aBlock);
  splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  if (![splitBrowserViewController prefersAnimatedTabVibilityChanges])
  {

    goto LABEL_5;
  }

  doc_hasAppeared = [(DOCTabbedBrowserViewController *)self doc_hasAppeared];

  if ((doc_hasAppeared & 1) == 0)
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

- (void)startSearchingSourcesWithConfiguration:(id)configuration
{
  sourceObserver = [(DOCTabbedBrowserViewController *)self sourceObserver];
  [sourceObserver startObservingSources];
}

- (void)_stopSearchingSources
{
  sourceObserver = [(DOCTabbedBrowserViewController *)self sourceObserver];
  [sourceObserver stopObservingSources];
}

- (void)doc_commonInit
{
  v41[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  didLoadStateByTab = self->_didLoadStateByTab;
  self->_didLoadStateByTab = v3;

  configuration = [(UIDocumentBrowserViewController *)self configuration];
  isFilesApp = [configuration isFilesApp];

  if ((isFilesApp & 1) == 0)
  {
    configuration2 = [(UIDocumentBrowserViewController *)self configuration];
    hostIdentifier = [configuration2 hostIdentifier];
    [MEMORY[0x277D04700] setCurrentHostAppIdentifier:hostIdentifier];
  }

  configuration3 = [(UIDocumentBrowserViewController *)self configuration];
  hostIdentifier2 = [configuration3 hostIdentifier];
  mEMORY[0x277D061E0] = [MEMORY[0x277D061E0] sharedManager];
  [mEMORY[0x277D061E0] setHostIdentifier:hostIdentifier2];

  configuration4 = [(UIDocumentBrowserViewController *)self configuration];
  hostIdentifier3 = [configuration4 hostIdentifier];
  defaultPermission = [MEMORY[0x277D06218] defaultPermission];
  [defaultPermission setHostIdentifier:hostIdentifier3];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults registerDefaults:&unk_285CE9FD0];

  [(DOCTabbedBrowserViewController *)self setCustomActions:MEMORY[0x277CBEBF8]];
  configuration5 = [(UIDocumentBrowserViewController *)self configuration];
  if ([configuration5 forPickingDocuments])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v18 = [DOCSourceObserver alloc];
  configuration6 = [(UIDocumentBrowserViewController *)self configuration];
  hostIdentifier4 = [configuration6 hostIdentifier];
  v21 = [(DOCSourceObserver *)v18 initWithUserAction:v17 hostIdentifier:hostIdentifier4];
  sourceObserver = self->_sourceObserver;
  self->_sourceObserver = v21;

  self->_isSystemTabBarAllowedByTraits = 1;
  self->_isSystemTabBarPreferred = 1;
  self->_isSystemTabBarVisible = 1;
  self->_isAppLaunchOptimizationsActive = 1;
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if (isEnabled)
  {
    configuration7 = [(UIDocumentBrowserViewController *)self configuration];
    v26 = [configuration7 copy];

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
      hiddenSourcesIdentifiers = [v26 hiddenSourcesIdentifiers];
      v32 = [hiddenSourcesIdentifiers arrayByAddingObject:*MEMORY[0x277D05DD0]];
      [v26 setHiddenSourcesIdentifiers:v32];
    }

    v33 = [[_TtC26DocumentManagerExecutables23DOCTabSidebarController alloc] initWithConfiguration:v26 sourceObserver:self->_sourceObserver dataSourceDelegate:self];
    [(DOCTabbedBrowserViewController *)self setTabSidebarController:v33];

    tabSidebarController = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    [tabSidebarController setDelegate:self];

    tabSidebarController2 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    sidebar = [tabSidebarController2 sidebar];
    [sidebar setDelegate:self];
  }

  v37 = objc_opt_new();
  [(DOCTabbedBrowserViewController *)self setTabBarController:v37];

  tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
  [tabBarController setDelegate:self];

  v39 = [(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2;
  tabBarController2 = [(DOCTabbedBrowserViewController *)self tabBarController];
  [tabBarController2 setUsingSharedSplitBrowserStrategy:v39];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_itemCollectionViewControllerDidLoad name:@"DOCItemCollectionViewDidLoadContents" object:0];
}

- (void)itemCollectionViewControllerDidLoad
{
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  [effectiveFullBrowser establishFirstResponderIfNeeded];

  [(DOCTabbedBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (id)_multitaskingDragExclusionRects
{
  selfCopy = self;
  v89 = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = DOCTabbedBrowserViewController;
  _multitaskingDragExclusionRects = [(DOCTabbedBrowserViewController *)&v82 _multitaskingDragExclusionRects];
  v4 = [_multitaskingDragExclusionRects mutableCopy];

  if ([(DOCTabbedBrowserViewController *)selfCopy isShowingMovePanel])
  {
    [(DOCTabbedBrowserViewController *)selfCopy presentedViewController];
  }

  else
  {
    [(DOCTabbedBrowserViewController *)selfCopy splitBrowserViewController];
  }
  v5 = ;
  fullDocumentManagerViewController = [v5 fullDocumentManagerViewController];
  effectiveBrowserViewController = [fullDocumentManagerViewController effectiveBrowserViewController];
  contentViewController = [effectiveBrowserViewController contentViewController];

  v73 = selfCopy;
  if (v5 && [v5 displayMode] == 2)
  {
    v69 = v4;
    sidebarViewController = [v5 sidebarViewController];
    _multitaskingDragExclusionRects2 = [sidebarViewController _multitaskingDragExclusionRects];

    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_multitaskingDragExclusionRects2, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = _multitaskingDragExclusionRects2;
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
          view = [(DOCTabbedBrowserViewController *)selfCopy view];
          coordinateSpace = [view coordinateSpace];
          [v5 sidebarViewController];
          v26 = v25 = v5;
          view2 = [v26 view];
          coordinateSpace2 = [view2 coordinateSpace];
          [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:{v16, v18, v20, v22}];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v5 = v25;
          selfCopy = v73;
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![contentViewController displayMode])
  {
    v70 = v4;
    _multitaskingDragExclusionRects3 = [contentViewController _multitaskingDragExclusionRects];
    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(_multitaskingDragExclusionRects3, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v40 = _multitaskingDragExclusionRects3;
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
          view3 = [(DOCTabbedBrowserViewController *)selfCopy view];
          coordinateSpace3 = [view3 coordinateSpace];
          view4 = [contentViewController view];
          coordinateSpace4 = [view4 coordinateSpace];
          [coordinateSpace3 convertRect:coordinateSpace4 fromCoordinateSpace:{v46, v48, v50, v52}];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;

          selfCopy = v73;
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

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewDidAppear:appear];
  self->_isAppLaunchOptimizationsActive = 0;
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  establishFirstResponder = [effectiveFullBrowser establishFirstResponder];

  if ((establishFirstResponder & 1) == 0)
  {
    effectiveFullBrowser2 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    [effectiveFullBrowser2 setNeedsFirstResponder:1];
  }
}

- (id)preferredFocusEnvironments
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
  {
    selectedTabDirectChildViewController = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];
    v10[0] = selectedTabDirectChildViewController;
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
LABEL_5:
    preferredFocusEnvironments = [v4 arrayWithObjects:v5 count:1];

    goto LABEL_7;
  }

  if ([(DOCTabbedBrowserViewController *)self tabBarCurrentRawTab]== 2)
  {
    selectedTabDirectChildViewController = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
    v9 = selectedTabDirectChildViewController;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v9;
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = DOCTabbedBrowserViewController;
  preferredFocusEnvironments = [(UIDocumentBrowserViewController *)&v8 preferredFocusEnvironments];
LABEL_7:

  return preferredFocusEnvironments;
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
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  neverAllowsAnyTypeOfTabs = [configuration neverAllowsAnyTypeOfTabs];

  return (neverAllowsAnyTypeOfTabs & 1) == 0 && [(DOCTabbedBrowserViewController *)self browserContentStrategy]!= 1;
}

- (void)_loadMinimalHierarchy
{
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  view = [(DOCTabbedBrowserViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (isEnabled)
  {
    tabSidebarController = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    view2 = [tabSidebarController view];
    [view2 setFrame:{v7, v9, v11, v13}];

    tabSidebarController2 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    view3 = [tabSidebarController2 view];
    [view3 setAutoresizingMask:18];

    browsingModeTabBar = [MEMORY[0x277D061D8] browsingModeTabBar];
    tabSidebarController3 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    tabBar = [tabSidebarController3 tabBar];
    [tabBar setAccessibilityIdentifier:browsingModeTabBar];

    tabSidebarController4 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    navigationOverflowMenu = [tabSidebarController4 navigationOverflowMenu];
    tabSidebarController5 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    sidebar = [tabSidebarController5 sidebar];
    [sidebar setNavigationOverflowItems:navigationOverflowMenu];

    tabSidebarController6 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    [(DOCTabbedBrowserViewController *)self addChildViewController:tabSidebarController6];

    view4 = [(DOCTabbedBrowserViewController *)self view];
    tabSidebarController7 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
    view5 = [tabSidebarController7 view];
    [view4 addSubview:view5];

    [(DOCTabbedBrowserViewController *)self tabSidebarController];
  }

  else
  {
    tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
    view6 = [tabBarController view];
    [view6 setFrame:{v7, v9, v11, v13}];

    tabBarController2 = [(DOCTabbedBrowserViewController *)self tabBarController];
    view7 = [tabBarController2 view];
    [view7 setAutoresizingMask:18];

    browsingModeTabBar2 = [MEMORY[0x277D061D8] browsingModeTabBar];
    tabBarController3 = [(DOCTabbedBrowserViewController *)self tabBarController];
    tabBar2 = [tabBarController3 tabBar];
    [tabBar2 setAccessibilityIdentifier:browsingModeTabBar2];

    tabBarController4 = [(DOCTabbedBrowserViewController *)self tabBarController];
    [(DOCTabbedBrowserViewController *)self addChildViewController:tabBarController4];

    view8 = [(DOCTabbedBrowserViewController *)self view];
    tabBarController5 = [(DOCTabbedBrowserViewController *)self tabBarController];
    view9 = [tabBarController5 view];
    [view8 addSubview:view9];

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
      configuration = [(UIDocumentBrowserViewController *)self configuration];
      v4 = [configuration copy];

      [v4 configureContextForDisplayingTab:0];
      [v4 setPreferLastUsedDate:1];
      [v4 setRestoreLastVisitedLocation:0];
      recentDocumentsLocation = [MEMORY[0x277D05EA8] recentDocumentsLocation];
      [v4 setDefaultLocation:recentDocumentsLocation];

      v6 = [[DOCFullDocumentManagerViewController alloc] initWithConfiguration:v4 sourceObserver:self->_sourceObserver];
      [(DOCTabbedBrowserViewController *)self setFullRecentsViewController:v6];

      fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [fullRecentsViewController setShortDebugID:@"recents"];

      fullRecentsViewController2 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [fullRecentsViewController2 setFullDocumentManagerDelegate:self];

      configuration2 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [configuration2 copy];

      [v10 configureContextForDisplayingTab:1];
      [v10 setPreferLastUsedDate:1];
      [v10 setRestoreLastVisitedLocation:1];
      [v10 setSaveLastVisitedLocation:1];
      v11 = [[DOCFullDocumentManagerViewController alloc] initWithConfiguration:v10 sourceObserver:self->_sourceObserver];
      [(DOCTabbedBrowserViewController *)self setFullSharedViewController:v11];

      fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
      [fullSharedViewController setShortDebugID:@"shared"];

      fullSharedViewController2 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
      [fullSharedViewController2 setFullDocumentManagerDelegate:self];
    }

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy])
    {
      defaultInitialBrowsedPathEffectiveTab = [(DOCTabbedBrowserViewController *)self defaultInitialBrowsedPathEffectiveTab];
    }

    else
    {
      defaultInitialBrowsedPathEffectiveTab = 2;
    }

    configuration3 = [(UIDocumentBrowserViewController *)self configuration];
    v16 = [configuration3 copy];

    [v16 configureContextForDisplayingTab:defaultInitialBrowsedPathEffectiveTab];
    v17 = [[DOCSplitBrowserViewController alloc] initWithConfiguration:v16 sourceObserver:self->_sourceObserver];
    [(DOCTabbedBrowserViewController *)self setSplitBrowserViewController:v17];

    splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [splitBrowserViewController setShortDebugID:@"browser"];

    splitBrowserViewController2 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    fullDocumentManagerViewController = [splitBrowserViewController2 fullDocumentManagerViewController];
    hierarchyController = [fullDocumentManagerViewController hierarchyController];
    [hierarchyController setDefaultTab:defaultInitialBrowsedPathEffectiveTab];

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
    {
      splitBrowserViewController3 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      fullDocumentManagerViewController2 = [splitBrowserViewController3 fullDocumentManagerViewController];
      [fullDocumentManagerViewController2 setViewDidLoadResetLocationDisabled:1];
    }

    traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
    viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
    [viewIfLoaded frame];
    [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:traitCollection andSize:v26, v27];

    splitBrowserViewController4 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [splitBrowserViewController4 setSplitViewDelegate:self];

    [(DOCTabbedBrowserViewController *)self setAllowsDocumentCreation:[(UIDocumentBrowserViewController *)self allowsDocumentCreation]];
    v29 = [DOCDefaultSourceUIManager alloc];
    configuration4 = [(UIDocumentBrowserViewController *)self configuration];
    v31 = [(DOCDefaultSourceUIManager *)v29 initWithConfiguration:configuration4 sourceObserver:self->_sourceObserver presentAlertsOn:self];
    [(DOCTabbedBrowserViewController *)self setDefaultSourceUIManager:v31];

    v32 = [DOCNamedLocationResolver alloc];
    configuration5 = [(UIDocumentBrowserViewController *)self configuration];
    defaultSourceUIManager = [(DOCTabbedBrowserViewController *)self defaultSourceUIManager];
    v35 = [(DOCNamedLocationResolver *)v32 initWithConfiguration:configuration5 defaultSourceUIManager:defaultSourceUIManager];
    [(DOCTabbedBrowserViewController *)self setNamedLocationResolver:v35];

    fullRecentsViewController3 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [fullRecentsViewController3 setDelegate:self];

    fullSharedViewController3 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [fullSharedViewController3 setDelegate:self];

    v38 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:0];
    fullRecentsViewController4 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [fullRecentsViewController4 setTabBarItem:v38];

    fullRecentsViewController5 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    hierarchyController2 = [fullRecentsViewController5 hierarchyController];
    [hierarchyController2 setDefaultTab:0];

    v42 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:1];
    fullSharedViewController4 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [fullSharedViewController4 setTabBarItem:v42];

    fullSharedViewController5 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    hierarchyController3 = [fullSharedViewController5 hierarchyController];
    [hierarchyController3 setDefaultTab:1];

    v46 = [_TtC26DocumentManagerExecutables13DOCTabBarItem itemWithTab:2];
    splitBrowserViewController5 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    fullDocumentManagerViewController3 = [splitBrowserViewController5 fullDocumentManagerViewController];
    [fullDocumentManagerViewController3 setDelegate:self];

    splitBrowserViewController6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    [splitBrowserViewController6 setTabBarItem:v46];

    splitBrowserViewController7 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    fullDocumentManagerViewController4 = [splitBrowserViewController7 fullDocumentManagerViewController];
    hierarchyController4 = [fullDocumentManagerViewController4 hierarchyController];
    [hierarchyController4 setDefaultTab:2];

    if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 1)
    {
      tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
      v84[0] = self->_splitBrowserViewController;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];
      [tabBarController loadViewControllers:v54 initialIndex:0];

      mEMORY[0x277D05F20] = [MEMORY[0x277D05F20] sharedStore];
      configuration6 = [(UIDocumentBrowserViewController *)self configuration];
      v57 = [mEMORY[0x277D05F20] interfaceStateForConfiguration:configuration6];

      mostRecentlyVisitedBrowsedState_FullBrowser = [v57 mostRecentlyVisitedBrowsedState_FullBrowser];
      if (mostRecentlyVisitedBrowsedState_FullBrowser || ([(DOCTabbedBrowserViewController *)self forceBrowseTabDefaultsValue], (mostRecentlyVisitedBrowsedState_FullBrowser = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        configuration7 = [(UIDocumentBrowserViewController *)self configuration];
        recentDocumentsLocation2 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
        v77 = [configuration7 allowsDisplaying:recentDocumentsLocation2];

        if (v77)
        {
          [(DOCTabbedBrowserViewController *)self presentRecentsTabFromFullBrowse];
        }
      }
    }

    else
    {
      fetchLastUsedTab = [(DOCTabbedBrowserViewController *)self fetchLastUsedTab];
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
      {
        v83[0] = v38;
        v83[1] = v42;
        v83[2] = v46;
        v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
        splitBrowserViewController8 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
        v57 = [(DOCTabbedBrowserViewController *)self newViewControllersSharing:splitBrowserViewController8 tabBarItems:v60];
      }

      else
      {
        fullSharedViewController = self->_fullSharedViewController;
        v82[0] = self->_fullRecentsViewController;
        v82[1] = fullSharedViewController;
        v82[2] = self->_splitBrowserViewController;
        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
      }

      v63 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:fetchLastUsedTab inViewControllers:v57];
      tabBarController2 = [(DOCTabbedBrowserViewController *)self tabBarController];
      v65 = tabBarController2;
      if (v63 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v66 = 0;
      }

      else
      {
        v66 = v63;
      }

      [tabBarController2 loadViewControllers:v57 initialIndex:v66];

      [(DOCTabbedBrowserViewController *)self presentTab:fetchLastUsedTab];
    }

    if ([(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding])
    {
      [(DOCTabbedBrowserViewController *)self configureUIPDocumentLandingStyleIfNecessary];
    }

    [(DOCTabbedBrowserViewController *)self setDeferredBrowserStateChanges:0];
    effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    [effectiveFullBrowser activateContainerViewControllersIfNeeded];

    fullRecentsViewController6 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
    [fullRecentsViewController6 addObserver:self forKeyPath:@"editing" options:1 context:DOCTabbedBrowserViewControllerContext];

    fullSharedViewController6 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    [fullSharedViewController6 addObserver:self forKeyPath:@"editing" options:1 context:DOCTabbedBrowserViewControllerContext];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v71 = +[DOCColumnViewController DOCColumnViewControllerUpdatedNavigationItem];
    [defaultCenter addObserver:self selector:sel_columnViewControllerDidUpdate_ name:v71 object:0];

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
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  [configuration setIsInUIPDocumentLanding:1];

  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(DOCTabbedBrowserViewController *)self view];
  [view setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
  view2 = [tabBarController view];
  [view2 setBackgroundColor:clearColor2];

  clearColor3 = [MEMORY[0x277D75348] clearColor];
  splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  view3 = [splitBrowserViewController view];
  [view3 setBackgroundColor:clearColor3];

  splitBrowserViewController2 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  [splitBrowserViewController2 configureUIPDocumentLandingStyleIfNecessary];

  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:&__block_literal_global_89];
}

void __77__DOCTabbedBrowserViewController_configureUIPDocumentLandingStyleIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 documentManager];
  [v2 configureUIPDocumentLandingStyleIfNecessary];
}

- (void)viewWillLayoutSubviews
{
  traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
  viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:traitCollection andSize:v5, v6];

  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
  viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:traitCollection andSize:v5, v6];

  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v7 viewDidLayoutSubviews];
}

- (void)updateForChangedHorizontalSizeClass
{
  traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
  viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:traitCollection andSize:v5, v6];

  [(DOCTabbedBrowserViewController *)self _updateTabButtonsVisibilityForTraits];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  v10 = v9;

  if (v10 != width)
  {
    [(DOCTabbedBrowserViewController *)self _updateTabButtonsVisibilityForTraits];
    traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
    [(DOCTabbedBrowserViewController *)self _updateColumnViewAvailablityFromTraitCollection:traitCollection andSize:width, height];
  }

  v12.receiver = self;
  v12.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_updateColumnViewAvailablityFromTraitCollection:(id)collection andSize:(CGSize)size
{
  v5 = [DOCColumnViewController supportsDisplayInTraitCollection:collection availableArea:size.width, size.height];
  splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
  [fullDocumentManagerViewController setEnvironmentSupportsColumnView:v5];

  fullBrowserViewController = [(DOCTabbedBrowserViewController *)self fullBrowserViewController];
  [fullBrowserViewController setEnvironmentSupportsColumnView:v5];
}

- (void)tabbedBrowserView:(id)view willMoveToWindow:(id)window
{
  viewCopy = view;
  windowCopy = window;
  if (windowCopy)
  {
    configuration = [(UIDocumentBrowserViewController *)self configuration];
    sceneIdentifier = [configuration sceneIdentifier];

    if (!sceneIdentifier)
    {
      configuration2 = [(UIDocumentBrowserViewController *)self configuration];
      [configuration2 updateStateAndSceneIdentifiersWithWindow:windowCopy];

      [windowCopy frame];
      if (!CGRectIsEmpty(v14))
      {
        [viewCopy frame];
        if (CGRectIsEmpty(v15))
        {
          [windowCopy bounds];
          [viewCopy setFrame:?];
        }
      }
    }
  }

  [(DOCTabbedBrowserViewController *)self _loadFullHierarchy];
  configuration3 = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier2 = [configuration3 sceneIdentifier];
  [DOCTabbedBrowserViewController setGlobalTabbedBrowserController:self forIdentifier:sceneIdentifier2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(DOCTabbedBrowserViewController *)&v10 viewWillDisappear:disappear];
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier = [configuration sceneIdentifier];
  v6 = [_TtC26DocumentManagerExecutables21DOCInteractionManager sharedManagerFor:sceneIdentifier];
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

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v5 setAdditionalLeadingNavigationBarButtonItems:items];
  selectedTabReferenceViewController = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:selectedTabReferenceViewController];
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v5 setAdditionalTrailingNavigationBarButtonItems:items];
  selectedTabReferenceViewController = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:selectedTabReferenceViewController];
}

- (void)setAllowsDocumentCreation:(BOOL)creation
{
  v7.receiver = self;
  v7.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v7 setAllowsDocumentCreation:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__DOCTabbedBrowserViewController_setAllowsDocumentCreation___block_invoke;
  v5[3] = &__block_descriptor_33_e46_v16__0__DOCFullDocumentManagerViewController_8l;
  creationCopy = creation;
  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:v5];
}

- (void)setCustomActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v9 setCustomActions:actionsCopy];
  sidebarViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController sidebarViewController];
  [sidebarViewController setCustomActions:actionsCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__DOCTabbedBrowserViewController_setCustomActions___block_invoke;
  v7[3] = &unk_278FA21E0;
  v8 = actionsCopy;
  v6 = actionsCopy;
  [(DOCTabbedBrowserViewController *)self enumerateAllFullBrowserViewControllers:v7];
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController
{
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  effectiveBrowserViewController = [effectiveFullBrowser effectiveBrowserViewController];

  return effectiveBrowserViewController;
}

- (id)selectedTabReferenceViewController
{
  selectedTabDirectChildViewController = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];
  v4 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:selectedTabDirectChildViewController];

  return v4;
}

- (id)_referenceViewControllerForDirectTabChildViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actualViewController = [controllerCopy actualViewController];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      actualViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
    }

    else
    {
      actualViewController = controllerCopy;
    }
  }

  v6 = actualViewController;

  return v6;
}

- (void)enumerateAllFullBrowserViewControllers:(id)controllers
{
  controllersCopy = controllers;
  array = [MEMORY[0x277CBEB18] array];
  v6 = array;
  if (self->_fullRecentsViewController)
  {
    [array addObject:?];
  }

  if (self->_fullSharedViewController)
  {
    [v6 addObject:?];
  }

  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];

  if (fullDocumentManagerViewController)
  {
    fullDocumentManagerViewController2 = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    [v6 addObject:fullDocumentManagerViewController2];
  }

  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  if ([tabSidebar isEnabled])
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
  v13 = controllersCopy;
  v11 = controllersCopy;
  [v6 enumerateObjectsUsingBlock:v12];
}

- (DOCFullDocumentManagerViewController)effectiveFullBrowser
{
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if (!isEnabled)
  {
    tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
    v10 = -[DOCTabbedBrowserViewController effectiveFullBrowserForTab:](self, "effectiveFullBrowserForTab:", [tabBarController selectedOrInflightSelectedTab]);
    goto LABEL_5;
  }

  tabSidebarController = [(DOCTabbedBrowserViewController *)self tabSidebarController];
  selectedTab = [tabSidebarController selectedTab];
  parent = [selectedTab parent];
  v7Parent = [parent parent];
  tabBarController = [v7Parent viewController];

  if (tabBarController)
  {
    v10 = tabBarController;
    tabBarController = v10;
LABEL_5:
    viewController = v10;
    goto LABEL_6;
  }

  tabSidebarController2 = [(DOCTabbedBrowserViewController *)self tabSidebarController];
  selectedTab2 = [tabSidebarController2 selectedTab];
  viewController = [selectedTab2 viewController];

LABEL_6:

  return viewController;
}

- (id)effectiveFullBrowserForTab:(unint64_t)tab
{
  browserContentStrategy = [(DOCTabbedBrowserViewController *)self browserContentStrategy];
  if (browserContentStrategy - 1 < 2)
  {
LABEL_2:
    tabSidebar = [MEMORY[0x277D06208] tabSidebar];
    if ([tabSidebar isEnabled])
    {
      fullDocumentManagerViewController = self->_fullBrowserViewController;
    }

    else
    {
      fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
    }

    v3 = fullDocumentManagerViewController;

    goto LABEL_11;
  }

  if (!browserContentStrategy)
  {
    if (tab == 2)
    {
      goto LABEL_2;
    }

    if (tab == 1)
    {
      v9 = 1224;
    }

    else
    {
      if (tab)
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
  presentedViewController = [(DOCTabbedBrowserViewController *)self presentedViewController];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)tabControllerIndexForTab:(unint64_t)tab
{
  tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
  viewControllers = [tabBarController viewControllers];

  v7 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:tab inViewControllers:viewControllers];
  return v7;
}

- (unint64_t)tabControllerIndexForTab:(unint64_t)tab inViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [controllersCopy objectAtIndexedSubscript:v8];
      dOCTabBarItem = [v9 DOCTabBarItem];
      v11 = [dOCTabBarItem tab];

      if (v11 == tab)
      {
        break;
      }

      if (++v8 >= [controllersCopy count])
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
      [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:tab inViewControllers:v13];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:972 description:{@"%@ Couldn't find DOCTab (%lu) index", self, tab}];

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (unint64_t)tabBarCurrentRawTab
{
  selectedTabReferenceViewController = [(DOCTabbedBrowserViewController *)self selectedTabReferenceViewController];
  dOCTabBarItem = [selectedTabReferenceViewController DOCTabBarItem];
  v4 = [dOCTabBarItem tab];

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
    effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    hierarchyController = [effectiveFullBrowser hierarchyController];
    effectiveTabSwitcherTab = [hierarchyController effectiveTabSwitcherTab];

    return effectiveTabSwitcherTab;
  }

  return result;
}

- (void)switchToTab:(unint64_t)tab
{
  switch(tab)
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

- (void)switchToLocation:(id)location
{
  v9[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  effectiveTabSwitcherTab = [locationCopy effectiveTabSwitcherTab];
  isSystemTabBarAllowedByTraits = [(DOCTabbedBrowserViewController *)self isSystemTabBarAllowedByTraits];
  if (effectiveTabSwitcherTab)
  {
    v7 = 0;
  }

  else
  {
    v7 = isSystemTabBarAllowedByTraits;
  }

  if (isSystemTabBarAllowedByTraits)
  {
    [(DOCTabbedBrowserViewController *)self switchToTab:effectiveTabSwitcherTab];
  }

  if (!v7)
  {
    v9[0] = locationCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(DOCTabbedBrowserViewController *)self _setLocationsInBrowseTab:v8];
  }
}

- (BOOL)shouldDeferBrowserStateChanges
{
  tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
  viewControllers = [tabBarController viewControllers];
  v4 = [viewControllers count] == 0;

  return v4;
}

- (void)presentTab:(unint64_t)tab rawTabSwitchOnly:(BOOL)only
{
  browserContentStrategy = [(DOCTabbedBrowserViewController *)self browserContentStrategy];
  if (browserContentStrategy)
  {
    onlyCopy = only;
  }

  else
  {
    onlyCopy = 1;
  }

  if (tab >= 3)
  {
    [DOCTabbedBrowserViewController presentTab:a2 rawTabSwitchOnly:self];
  }

  if ([(DOCTabbedBrowserViewController *)self shouldDeferBrowserStateChanges])
  {
    v29 = objc_alloc_init(MEMORY[0x277D06270]);
    [v29 setTab:tab];
    [(DOCTabbedBrowserViewController *)self updateDeferredBrowserStateChangesWith:v29];
    goto LABEL_28;
  }

  mEMORY[0x277D06380] = [MEMORY[0x277D06380] shared];
  [mEMORY[0x277D06380] hideMenu];

  splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
  [fullDocumentManagerViewController setEditing:0];

  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  [fullRecentsViewController setEditing:0];

  fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
  [fullSharedViewController setEditing:0];

  if (browserContentStrategy == 1)
  {
    tabCopy = 2;
  }

  else
  {
    tabCopy = tab;
  }

  tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
  selectedOrInflightSelectedTab = [tabBarController selectedOrInflightSelectedTab];

  if (selectedOrInflightSelectedTab != tabCopy)
  {
    v18 = [(DOCTabbedBrowserViewController *)self tabControllerIndexForTab:tabCopy];
    tabBarController2 = [(DOCTabbedBrowserViewController *)self tabBarController];
    selectedIndex = [tabBarController2 selectedIndex];

    if (selectedIndex != v18)
    {
      tabBarController3 = [(DOCTabbedBrowserViewController *)self tabBarController];
      [tabBarController3 setSelectedIndex:v18];
    }
  }

  v22 = [(DOCTabbedBrowserViewController *)self effectiveFullBrowserForTab:tab];
  v23 = v22;
  v29 = v22;
  if (!onlyCopy)
  {
    hierarchyController = [v22 hierarchyController];
    locationForDeterminingCurrentEffectiveTab = [hierarchyController locationForDeterminingCurrentEffectiveTab];

    if (locationForDeterminingCurrentEffectiveTab)
    {
      effectiveTabSwitcherTab = [hierarchyController effectiveTabSwitcherTab];

      v23 = v29;
      if (effectiveTabSwitcherTab == tab)
      {
        goto LABEL_26;
      }
    }

    else
    {
      effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
      isViewLoaded = [effectiveFullBrowser isViewLoaded];

      v23 = v29;
      if ((isViewLoaded & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (tab == 2)
    {
      [(DOCTabbedBrowserViewController *)self presentBrowseTabFromFullBrowser];
    }

    else if (tab == 1)
    {
      [(DOCTabbedBrowserViewController *)self presentSharedTabFromFullBrowser];
    }

    else
    {
      if (tab)
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
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  if ([tabSidebar isEnabled])
  {
    fullDocumentManagerViewController = self->_fullBrowserViewController;
  }

  else
  {
    fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];
  }

  v5 = fullDocumentManagerViewController;

  hierarchyController = [(DOCFullDocumentManagerViewController *)v5 hierarchyController];

  return hierarchyController;
}

- (void)presentRecentsTabFromFullBrowse
{
  fullBrowserHierarchyController = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [fullBrowserHierarchyController restoreLastBrowsedStateForTab:0];
}

- (void)presentSharedTabFromFullBrowser
{
  fullBrowserHierarchyController = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [fullBrowserHierarchyController restoreLastBrowsedStateForTab:1];
}

- (void)presentBrowseTabFromFullBrowser
{
  fullBrowserHierarchyController = [(DOCTabbedBrowserViewController *)self fullBrowserHierarchyController];
  [fullBrowserHierarchyController restoreLastBrowsedStateForTab:2];
}

- (void)showConnectToServer:(id)server
{
  serverCopy = server;
  [(DOCTabbedBrowserViewController *)self presentTab:2];
  [(DOCTabbedBrowserViewController *)self presentConnectToServer:serverCopy];
}

- (void)setSafeAreaUpdatesDisabledDuringTransitions:(BOOL)transitions
{
  if (self->_safeAreaUpdatesDisabledDuringTransitions != transitions)
  {
    transitionsCopy = transitions;
    self->_safeAreaUpdatesDisabledDuringTransitions = transitions;
    tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
    [tabBarController setSafeAreaUpdatesDisabledDuringTransitions:transitionsCopy];
  }
}

- (void)setIsShowingSearchResults:(BOOL)results
{
  if (self->_isShowingSearchResults != results)
  {
    self->_isShowingSearchResults = results;
    if (results)
    {
      tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
      [tabBarController hideBar];
    }

    else
    {
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy])
      {
        presentedViewController = [(DOCTabbedBrowserViewController *)self presentedViewController];
        v6 = [presentedViewController conformsToProtocol:&unk_285D4FB38];

        if (v6)
        {
          presentedViewController2 = [(DOCTabbedBrowserViewController *)self presentedViewController];
          [presentedViewController2 dismissViewControllerAnimated:1 completion:0];
        }
      }

      tabBarController = [(DOCTabbedBrowserViewController *)self tabBarController];
      [tabBarController showBarIfAllowed];
    }
  }
}

- (void)splitViewController:(id)controller wantsToShowTabBar:(BOOL)bar
{
  barCopy = bar;
  controllerCopy = controller;
  fullDocumentManagerViewController = [controllerCopy fullDocumentManagerViewController];
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];

  if (fullDocumentManagerViewController == effectiveFullBrowser)
  {
    fullDocumentManagerViewController2 = [controllerCopy fullDocumentManagerViewController];
    -[DOCTabbedBrowserViewController _viewController:wantsToShowSystemTabBar:isEditing:](self, "_viewController:wantsToShowSystemTabBar:isEditing:", controllerCopy, barCopy, [fullDocumentManagerViewController2 isEditing]);
  }
}

- (void)splitViewController:(id)controller didChangeFromState:(id)state toState:(id)toState isUserDisplayModeChange:(BOOL)change
{
  changeCopy = change;
  stateCopy = state;
  toStateCopy = toState;
  if (-[UIDocumentBrowserViewController enclosedInUIPDocumentLanding](self, "enclosedInUIPDocumentLanding") && ([stateCopy isSidebarShown] & 1) == 0 && objc_msgSend(toStateCopy, "isSidebarShown"))
  {
    v10 = objc_alloc_init(MEMORY[0x277D06270]);
    [v10 setDocumentLandingMode:0];
    if (changeCopy)
    {
      [(DOCTabbedBrowserViewController *)self performBrowserStateChange:v10];
    }
  }

  [(DOCTabbedBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (void)revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed openDocument:(BOOL)document revealContents:(BOOL)contents updateLastUsedDate:(BOOL)date completion:(id)completion
{
  dateCopy = date;
  documentCopy = document;
  neededCopy = needed;
  v51[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v14 = *MEMORY[0x277CBE868];
  v15 = *MEMORY[0x277CBE890];
  v51[0] = *MEMORY[0x277CBE868];
  v51[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v46 = 0;
  v17 = [lCopy promisedItemResourceValuesForKeys:v16 error:&v46];
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
      v48 = lCopy;
      v49 = 2112;
      v50 = v18;
      _os_log_impl(&dword_2493AC000, v19, OS_LOG_TYPE_DEFAULT, "Unable to get promised item resource values for url: %@ error: %@", buf, 0x16u);
    }
  }

  v20 = [v17 objectForKeyedSubscript:v14];
  bOOLValue = [v20 BOOLValue];

  v22 = [v17 objectForKeyedSubscript:v15];
  bOOLValue2 = [v22 BOOLValue];

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
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
  v25 = bOOLValue & (bOOLValue2 ^ 1);
  if ((v25 & 1) != 0 || !documentCopy)
  {
    [(DOCTabbedBrowserViewController *)self switchToBrowse];
    tabSidebar = [MEMORY[0x277D06208] tabSidebar];
    if ([tabSidebar isEnabled])
    {
      fullDocumentManagerViewController = self->_fullBrowserViewController;
    }

    else
    {
      fullDocumentManagerViewController = [v24 fullDocumentManagerViewController];
    }

    v30 = fullDocumentManagerViewController;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke;
    v37[3] = &unk_278FA2320;
    v38 = lCopy;
    v43 = neededCopy;
    v42 = completionCopy;
    selfCopy = self;
    v40 = v24;
    v41 = v30;
    contentsCopy = contents;
    v45 = v25;
    v27 = v30;
    [(DOCFullDocumentManagerViewController *)v27 revealDocumentAtURL:v38 importIfNeeded:0 updateLastUsedDate:dateCopy completion:v37];
  }

  else
  {
    [(DOCTabbedBrowserViewController *)self switchToRecents];
    effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __127__DOCTabbedBrowserViewController_revealDocumentAtURL_importIfNeeded_openDocument_revealContents_updateLastUsedDate_completion___block_invoke_132;
    v35[3] = &unk_278FA2060;
    v36 = completionCopy;
    [effectiveFullBrowser revealDocumentAtURL:lCopy importIfNeeded:neededCopy updateLastUsedDate:dateCopy completion:v35];

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

- (id)transitionControllerForDocumentAtURL:(id)l
{
  v5.receiver = self;
  v5.super_class = DOCTabbedBrowserViewController;
  v3 = [(UIDocumentBrowserViewController *)&v5 transitionControllerForDocumentAtURL:l];

  return v3;
}

- (BOOL)documentBrowser:(id)browser shouldShowActivityViewControllerForDocumentURLs:(id)ls barButtonItem:(id)item popoverTracker:(id)tracker
{
  lsCopy = ls;
  itemCopy = item;
  trackerCopy = tracker;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    v14 = [delegate documentBrowser:self shouldShowActivityViewControllerForDocumentURLs:lsCopy barButtonItem:itemCopy popoverTracker:trackerCopy];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)documentBrowser:(id)browser shouldHandleLocation:(id)location
{
  locationCopy = location;
  browserCopy = browser;
  [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

  if (fullRecentsViewController == browserCopy)
  {
    fileProviderItem = [locationCopy fileProviderItem];
    v11 = fileProviderItem;
    if (fileProviderItem && [fileProviderItem isFolder])
    {
      splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__DOCTabbedBrowserViewController_documentBrowser_shouldHandleLocation___block_invoke;
      v15[3] = &unk_278FA1C30;
      v15[4] = self;
      [fullDocumentManagerViewController revealLocation:locationCopy animated:0 completion:v15];

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

- (void)documentBrowser:(id)browser didPickDocumentsAtURLs:(id)ls
{
  lsCopy = ls;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:self didPickDocumentsAtURLs:lsCopy];
  }

  else
  {
    if (![(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:sel_documentBrowser_didPickDocumentURLs_])
    {
      goto LABEL_6;
    }

    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:self didPickDocumentURLs:lsCopy];
  }

LABEL_6:
}

- (void)documentBrowser:(id)browser didRequestDocumentCreationWithHandler:(id)handler
{
  handlerCopy = handler;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:self didRequestDocumentCreationWithHandler:handlerCopy];
  }
}

- (void)documentBrowser:(id)browser didImportDocumentAtURL:(id)l toDestinationURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:self didImportDocumentAtURL:lCopy toDestinationURL:rLCopy];
  }
}

- (void)documentBrowser:(id)browser failedToImportDocumentAtURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:self failedToImportDocumentAtURL:lCopy error:errorCopy];
  }
}

- (id)documentBrowser:(id)browser applicationActivitiesForDocumentURLs:(id)ls
{
  lsCopy = ls;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    v8 = [delegate documentBrowser:self applicationActivitiesForDocumentURLs:lsCopy];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)documentBrowser:(id)browser willPresentActivityViewController:(id)controller
{
  browserCopy = browser;
  controllerCopy = controller;
  if ([(DOCTabbedBrowserViewController *)self _shouldForwardSelectorToDelegate:a2])
  {
    delegate = [(UIDocumentBrowserViewController *)self delegate];
    [delegate documentBrowser:browserCopy willPresentActivityViewController:controllerCopy];
  }
}

- (void)setAllowsPickingMultipleItems:(BOOL)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = DOCTabbedBrowserViewController;
  [(UIDocumentBrowserViewController *)&v10 setAllowsPickingMultipleItems:?];
  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  [fullRecentsViewController setAllowsPickingMultipleItems:itemsCopy];

  fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
  [fullSharedViewController setAllowsPickingMultipleItems:itemsCopy];

  splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
  fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
  [fullDocumentManagerViewController setAllowsPickingMultipleItems:itemsCopy];

  fullBrowserViewController = [(DOCTabbedBrowserViewController *)self fullBrowserViewController];
  [fullBrowserViewController setAllowsPickingMultipleItems:itemsCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if (DOCTabbedBrowserViewControllerContext == context)
  {
    if ([path isEqualToString:@"editing"])
    {
      fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      v12 = fullRecentsViewController;
      if (fullRecentsViewController == objectCopy)
      {
      }

      else
      {
        fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

        if (fullSharedViewController != objectCopy)
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
    [(DOCTabbedBrowserViewController *)&v15 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }

LABEL_9:
}

- (void)updateTabBarVisibility
{
  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([fullRecentsViewController isEditing])
  {
    isEditing = 1;
  }

  else
  {
    fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    if ([fullSharedViewController isEditing])
    {
      isEditing = 1;
    }

    else
    {
      splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
      isEditing = [fullDocumentManagerViewController isEditing];
    }
  }

  fullRecentsViewController2 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
  if ([fullRecentsViewController2 prefersTabBarHidden])
  {
    v9 = 0;
  }

  else
  {
    fullSharedViewController2 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
    if ([fullSharedViewController2 prefersTabBarHidden])
    {
      v9 = 0;
    }

    else
    {
      splitBrowserViewController2 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      fullDocumentManagerViewController2 = [splitBrowserViewController2 fullDocumentManagerViewController];
      v9 = [fullDocumentManagerViewController2 prefersTabBarHidden] ^ 1;
    }
  }

  [(DOCTabbedBrowserViewController *)self _viewController:0 wantsToShowSystemTabBar:v9 isEditing:isEditing];
}

- (void)updateLocationTitleFromCurrentState
{
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  currentViewController = [effectiveFullBrowser currentViewController];
  navigationItem = [currentViewController navigationItem];
  title = [navigationItem title];

  [(DOCTabbedBrowserViewController *)self setCurrentLocationTitle:title];
}

- (BOOL)_shouldForwardSelectorToDelegate:(SEL)delegate
{
  delegate = [(UIDocumentBrowserViewController *)self delegate];
  if (delegate == self)
  {
    v6 = 0;
  }

  else
  {
    delegate2 = [(UIDocumentBrowserViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)updateNavigationBarButtonItemsForViewController:(id)controller
{
  v9 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:controller];
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self->_splitBrowserViewController fullDocumentManagerViewController];

  v5 = v9;
  if (v9 == fullDocumentManagerViewController)
  {
    v5 = self->_splitBrowserViewController;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    additionalLeadingNavigationBarButtonItems = [(UIDocumentBrowserViewController *)self additionalLeadingNavigationBarButtonItems];
    [(DOCSplitBrowserViewController *)v6 setAdditionalLeadingNavigationBarButtonItems:additionalLeadingNavigationBarButtonItems];

    additionalTrailingNavigationBarButtonItems = [(UIDocumentBrowserViewController *)self additionalTrailingNavigationBarButtonItems];
    [(DOCSplitBrowserViewController *)v6 setAdditionalTrailingNavigationBarButtonItems:additionalTrailingNavigationBarButtonItems];
  }
}

- (id)newViewControllerFor:(id)for
{
  v38[6] = *MEMORY[0x277D85DE8];
  identifier = [for identifier];
  if (![identifier isEqualToString:@"recents"])
  {
    if ([identifier isEqualToString:@"shared"])
    {
      fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

      if (fullSharedViewController)
      {
        fullSharedViewController2 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
        goto LABEL_11;
      }

      configuration = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [configuration copy];

      [v10 configureContextForDisplayingTab:1];
      [v10 setPreferLastUsedDate:1];
      [v10 setRestoreLastVisitedLocation:1];
      [v10 setSaveLastVisitedLocation:1];
      v35 = [DOCFullDocumentManagerViewController alloc];
      sourceObserver = [(DOCTabbedBrowserViewController *)self sourceObserver];
      v22 = [(DOCFullDocumentManagerViewController *)v35 initWithConfiguration:v10 sourceObserver:sourceObserver];

      [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"shared"];
      [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
      [(DOCTabbedBrowserViewController *)self setFullSharedViewController:v22];
    }

    else
    {
      if (![identifier isEqualToString:@"browse"])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:1620 description:{@"Unsupported UITab identifier: %@", identifier}];

        fullSharedViewController2 = objc_alloc_init(MEMORY[0x277D75D28]);
        goto LABEL_11;
      }

      configuration2 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [configuration2 copy];

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

      traitCollection = [(DOCTabbedBrowserViewController *)self traitCollection];
      viewIfLoaded = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
      [viewIfLoaded frame];
      v19 = [DOCColumnViewController supportsDisplayInTraitCollection:traitCollection availableArea:v17, v18];

      v20 = [DOCFullDocumentManagerViewController alloc];
      sourceObserver2 = [(DOCTabbedBrowserViewController *)self sourceObserver];
      v22 = [(DOCFullDocumentManagerViewController *)v20 initWithConfiguration:v10 sourceObserver:sourceObserver2];

      [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"browser"];
      [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
      [(DOCFullDocumentManagerViewController *)v22 setEnvironmentSupportsColumnView:v19];
      customActions = [(UIDocumentBrowserViewController *)self customActions];
      [(DOCFullDocumentManagerViewController *)v22 setCustomActions:customActions];

      [(DOCTabbedBrowserViewController *)self setFullBrowserViewController:v22];
    }

LABEL_13:

    goto LABEL_14;
  }

  fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

  if (!fullRecentsViewController)
  {
    configuration3 = [(UIDocumentBrowserViewController *)self configuration];
    v10 = [configuration3 copy];

    [v10 configureContextForDisplayingTab:0];
    [v10 setSupportsColumnView:1];
    [v10 setPreferLastUsedDate:1];
    [v10 setRestoreLastVisitedLocation:0];
    recentDocumentsLocation = [MEMORY[0x277D05EA8] recentDocumentsLocation];
    [v10 setDefaultLocation:recentDocumentsLocation];

    v26 = [DOCFullDocumentManagerViewController alloc];
    sourceObserver3 = [(DOCTabbedBrowserViewController *)self sourceObserver];
    v22 = [(DOCFullDocumentManagerViewController *)v26 initWithConfiguration:v10 sourceObserver:sourceObserver3];

    [(DOCFullDocumentManagerViewController *)v22 setShortDebugID:@"recents"];
    [(DOCFullDocumentManagerViewController *)v22 setFullDocumentManagerDelegate:self];
    traitCollection2 = [(DOCTabbedBrowserViewController *)self traitCollection];
    viewIfLoaded2 = [(DOCTabbedBrowserViewController *)self viewIfLoaded];
    [viewIfLoaded2 frame];
    v32 = [DOCColumnViewController supportsDisplayInTraitCollection:traitCollection2 availableArea:v30, v31];

    [(DOCFullDocumentManagerViewController *)v22 setEnvironmentSupportsColumnView:v32];
    [(DOCTabbedBrowserViewController *)self setFullRecentsViewController:v22];
    goto LABEL_13;
  }

  fullSharedViewController2 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
LABEL_11:
  v22 = fullSharedViewController2;
LABEL_14:

  return v22;
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if ((isEnabled & 1) == 0)
  {
    selectedTabDirectChildViewController = [(DOCTabbedBrowserViewController *)self selectedTabDirectChildViewController];

    if (selectedTabDirectChildViewController == viewControllerCopy)
    {
      v11 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:viewControllerCopy];

      splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      v13 = splitBrowserViewController;
      if (v11 != splitBrowserViewController)
      {
        fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

        if (v11 == fullRecentsViewController)
        {
          fullRecentsViewController2 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
        }

        else
        {
          fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

          if (v11 != fullSharedViewController)
          {
LABEL_19:

            v9 = 0;
            viewControllerCopy = v11;
            goto LABEL_4;
          }

          fullRecentsViewController2 = [(DOCTabbedBrowserViewController *)self fullSharedViewController];
        }

        fullDocumentManagerViewController = fullRecentsViewController2;
        [fullRecentsViewController2 resetNavigationStepwise];
LABEL_18:

        goto LABEL_19;
      }

      fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];
      if (![MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating] || !objc_msgSend(fullDocumentManagerViewController, "_canNavigateBack"))
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

      [fullDocumentManagerViewController popToRootViewControllerAnimated:1];
      goto LABEL_18;
    }
  }

  v9 = 1;
LABEL_4:

  return v9;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if (isEnabled)
  {
    v8 = viewControllerCopy;
  }

  else
  {
    v14 = [(DOCTabbedBrowserViewController *)self _referenceViewControllerForDirectTabChildViewController:viewControllerCopy];

    fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

    if (v14 != fullRecentsViewController)
    {
      fullRecentsViewController2 = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];
      [fullRecentsViewController2 dismissSearch];
    }

    splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];

    if (v14 != splitBrowserViewController)
    {
      splitBrowserViewController2 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
      fullDocumentManagerViewController = [splitBrowserViewController2 fullDocumentManagerViewController];
      [fullDocumentManagerViewController dismissSearch];
    }

    [(DOCTabbedBrowserViewController *)self saveSelectedTabState];
    [(DOCTabbedBrowserViewController *)self updateNavigationBarButtonItemsForViewController:v14];
    [(DOCTabbedBrowserViewController *)self updateLocationTitleFromCurrentState];
    v8 = v14;
  }
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  tabCopy = tab;
  identifier = [tabCopy identifier];
  v7 = [identifier isEqualToString:@"recents"];

  if (!v7)
  {
    identifier2 = [tabCopy identifier];
    v10 = [identifier2 isEqualToString:@"shared"];

    if (v10)
    {
      mEMORY[0x277D05EA8] = [MEMORY[0x277D05EA8] sharedItemsLocation];
      goto LABEL_5;
    }

    identifier3 = [tabCopy identifier];
    if ([identifier3 hasPrefix:@"location."])
    {
    }

    else
    {
      identifier4 = [tabCopy identifier];
      v14 = [identifier4 hasPrefix:@"server."];

      if (!v14)
      {
        identifier5 = [tabCopy identifier];
        v26 = [identifier5 hasPrefix:@"tag."];

        if (v26)
        {
          userInfo = [tabCopy userInfo];
          v11 = [objc_alloc(MEMORY[0x277D05EA8]) initWithTaggedItemsSourceRepresentedTag:userInfo];
          goto LABEL_11;
        }

        identifier6 = [tabCopy identifier];
        v28 = [identifier6 hasPrefix:@"favorite."];

        if (!v28)
        {
          v11 = 0;
          goto LABEL_12;
        }

        userInfo = [tabCopy userInfo];
        if (!userInfo)
        {
          v11 = 0;
          goto LABEL_11;
        }

        v29 = objc_alloc(MEMORY[0x277D05EA8]);
        providerDomainID = [userInfo providerDomainID];
        v18 = v29;
        v19 = providerDomainID;
        v20 = userInfo;
LABEL_10:
        v11 = [v18 initWithSourceIdentifier:v19 node:v20];

LABEL_11:
        goto LABEL_12;
      }
    }

    userInfo = [tabCopy userInfo];
    v16 = objc_alloc(MEMORY[0x277D05EA8]);
    providerDomainID = [userInfo identifier];
    v18 = v16;
    v19 = providerDomainID;
    v20 = 0;
    goto LABEL_10;
  }

  mEMORY[0x277D05EA8] = [MEMORY[0x277D05EA8] recentDocumentsLocation];
LABEL_5:
  v11 = mEMORY[0x277D05EA8];
LABEL_12:
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  v22 = effectiveFullBrowser;
  if (v11)
  {
    hierarchyController = [effectiveFullBrowser hierarchyController];
    isResetBeingPerformed = [hierarchyController isResetBeingPerformed];

    if ((isResetBeingPerformed & 1) == 0)
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
  _mostRecentBrowsedPathEffectiveTab = [(DOCTabbedBrowserViewController *)self _mostRecentBrowsedPathEffectiveTab];
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  v5 = [configuration canPresentContentForTab:_mostRecentBrowsedPathEffectiveTab];

  if (v5)
  {
    return _mostRecentBrowsedPathEffectiveTab;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)_mostRecentBrowsedPathEffectiveTab
{
  forceBrowseTabDefaultsValue = [(DOCTabbedBrowserViewController *)self forceBrowseTabDefaultsValue];
  v4 = forceBrowseTabDefaultsValue;
  if (forceBrowseTabDefaultsValue)
  {
    if ([forceBrowseTabDefaultsValue BOOLValue])
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
    deferredBrowserStateChanges = [(DOCTabbedBrowserViewController *)self deferredBrowserStateChanges];
    v7 = deferredBrowserStateChanges;
    if (deferredBrowserStateChanges && [deferredBrowserStateChanges tabIsSpecified])
    {
      v5 = [v7 tab];
    }

    else
    {
      mEMORY[0x277D05F20] = [MEMORY[0x277D05F20] sharedStore];
      configuration = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [mEMORY[0x277D05F20] interfaceStateForConfiguration:configuration];

      [(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding];
      v5 = [v10 mostRecentlyVisitedBrowseSourceWithFallback:0];
    }
  }

  return v5;
}

- (void)saveSelectedTabState
{
  mEMORY[0x277D05F20] = [MEMORY[0x277D05F20] sharedStore];
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  v7 = [mEMORY[0x277D05F20] interfaceStateForConfiguration:configuration];

  [v7 updateMostRecentlyVisitedBrowseSourceToTab:{-[DOCTabbedBrowserViewController effectiveTabSwitcherTab](self, "effectiveTabSwitcherTab")}];
  mEMORY[0x277D05F20]2 = [MEMORY[0x277D05F20] sharedStore];
  configuration2 = [(UIDocumentBrowserViewController *)self configuration];
  [mEMORY[0x277D05F20]2 updateInterfaceState:v7 forConfiguration:configuration2];
}

- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)thumbnails
{
  thumbnailsCopy = thumbnails;
  tabSidebar = [MEMORY[0x277D06208] tabSidebar];
  isEnabled = [tabSidebar isEnabled];

  if ((isEnabled & 1) == 0)
  {
    fullRecentsViewController = [(DOCTabbedBrowserViewController *)self fullRecentsViewController];

    if (fullRecentsViewController == thumbnailsCopy)
    {
      effectiveTabSwitcherTab = 0;
    }

    else
    {
      fullSharedViewController = [(DOCTabbedBrowserViewController *)self fullSharedViewController];

      if (fullSharedViewController == thumbnailsCopy)
      {
        effectiveTabSwitcherTab = 1;
      }

      else
      {
        splitBrowserViewController = [(DOCTabbedBrowserViewController *)self splitBrowserViewController];
        fullDocumentManagerViewController = [splitBrowserViewController fullDocumentManagerViewController];

        if (fullDocumentManagerViewController != thumbnailsCopy)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTabbedBrowserViewController.m" lineNumber:1826 description:@"Unexpected didFinishGatheringItemsAndThumbnails callback"];
LABEL_13:

          goto LABEL_14;
        }

        effectiveTabSwitcherTab = [(DOCTabbedBrowserViewController *)self effectiveTabSwitcherTab];
      }
    }

    didLoadStateByTab = self->_didLoadStateByTab;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:effectiveTabSwitcherTab];
    v15 = [(NSMutableDictionary *)didLoadStateByTab objectForKeyedSubscript:v14];
    bOOLValue = [v15 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v17 = self->_didLoadStateByTab;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:effectiveTabSwitcherTab];
      [(NSMutableDictionary *)v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v18];
    }

    tabbedBrowserViewControllerDelegate = [(DOCTabbedBrowserViewController *)self tabbedBrowserViewControllerDelegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      currentHandler = [(DOCTabbedBrowserViewController *)self tabbedBrowserViewControllerDelegate];
      [currentHandler tabbedBrowserViewController:self didFinishInitialLoad:bOOLValue ^ 1u ofTab:effectiveTabSwitcherTab];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)fullDocumentManagerViewController:(id)controller didUpdateHierarchy:(id)hierarchy displayedRootLocation:(id)location
{
  hierarchyCopy = hierarchy;
  parentViewController = [controller parentViewController];

  if (location)
  {
    if (parentViewController)
    {
      if ([(DOCTabbedBrowserViewController *)self browserContentStrategy]== 2)
      {
        tabSidebar = [MEMORY[0x277D06208] tabSidebar];
        isEnabled = [tabSidebar isEnabled];

        if ((isEnabled & 1) == 0)
        {
          effectiveTabSwitcherTab = [hierarchyCopy effectiveTabSwitcherTab];
          if (effectiveTabSwitcherTab != [(DOCAutoBarHidingTabBarController *)self->_tabBarController selectedOrInflightSelectedTab])
          {
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __109__DOCTabbedBrowserViewController_fullDocumentManagerViewController_didUpdateHierarchy_displayedRootLocation___block_invoke;
            v13[3] = &unk_278FA2128;
            v13[4] = self;
            v13[5] = effectiveTabSwitcherTab;
            [MEMORY[0x277D75D28] doc_performWithDeferredTransitionsAndAnimationsDisabled:v13];
          }
        }
      }
    }
  }
}

- (void)dismissAllPresentedViewControllers:(BOOL)controllers completion:(id)completion
{
  controllersCopy = controllers;
  completionCopy = completion;
  presentedViewController = [(DOCTabbedBrowserViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(DOCTabbedBrowserViewController *)self presentedViewController];
    [presentedViewController2 dismissViewControllerAnimated:controllersCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2]();
  }
}

- (void)importDocumentAtURL:(id)l nextToDocumentAtURL:(id)rL mode:(unint64_t)mode completionHandler:(id)handler
{
  handlerCopy = handler;
  rLCopy = rL;
  lCopy = l;
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  documentManager = [effectiveFullBrowser documentManager];
  [documentManager importDocumentAt:lCopy nextTo:rLCopy mode:mode completionHandler:handlerCopy];
}

- (void)importDocumentAtURL:(id)l mode:(unint64_t)mode toCurrentBrowserLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)self effectiveFullBrowser];
  documentManager = [effectiveFullBrowser documentManager];
  [documentManager importDocumentAt:lCopy mode:mode toCurrentBrowserLocationWithCompletion:completionCopy];
}

- (DOCTabbedBrowserViewControllerDelegate)tabbedBrowserViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tabbedBrowserViewControllerDelegate);

  return WeakRetained;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCTabbedBrowserViewController.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8 & 1;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  DOCTabbedBrowserViewController.target(forAction:withSender:)(action, v16, v17);

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

- (void)presentConnectToServer:(id)server askPermission:(BOOL)permission
{
  permissionCopy = permission;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (permissionCopy)
  {
    DOCTabbedBrowserViewController.showConnectToServerAlert(_:)(v10);
  }

  else
  {
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    [(DOCTabbedBrowserViewController *)selfCopy presentConnectToServer:v13];

    selfCopy = v14;
  }

  (*(v7 + 8))(v10, v6);
}

- (void)presentConnectToServer:(id)server
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  if (server)
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

  selfCopy = self;
  DOCTabbedBrowserViewController.presentConnectToServer(_:)(v8);

  outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd);
}

- (void)presentGoToLocation
{
  selfCopy = self;
  effectiveFullBrowser = [(DOCTabbedBrowserViewController *)selfCopy effectiveFullBrowser];
  DOCFullDocumentManagerViewController.presentGoToLocation()();
}

- (void)actionControllerDidFinishAction:(id)action userInfo:(id)info error:(id)error
{
  if (info)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  actionCopy = action;
  errorCopy = error;
  selfCopy = self;
  DOCTabbedBrowserViewController.actionControllerDidFinishAction(_:userInfo:error:)(actionCopy, v8, error);
}

- (void)actionControllerDidFinishAction:(id)action error:(id)error
{
  actionCopy = action;
  selfCopy = self;
  if (error)
  {
    errorCopy = error;
    v8 = _convertErrorToNSError(_:)();
  }

  else
  {
    v8 = 0;
  }

  [(DOCTabbedBrowserViewController *)selfCopy actionControllerDidFinishAction:actionCopy userInfo:0 error:v8];
}

- (void)actionController:(id)controller presentError:(id)error completion:(id)completion
{
  controllerCopy = controller;
  errorCopy = error;
  v7 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

- (void)configureTabBarForUIPIfNecessary
{
  selfCopy = self;
  DOCTabbedBrowserViewController.configureTabBarForUIPIfNecessary()();
}

- (void)updateTraitCollectionTabBarSetting
{
  selfCopy = self;
  DOCTabbedBrowserViewController.updateTraitCollectionTabBarSetting()();
}

- (int64_t)tabSwitcherStyleForCompactPresentation
{
  selfCopy = self;
  DOCTabbedBrowserViewController.tabSwitcherStyleForCompactPresentation.getter();
  v4 = v3;

  return v4;
}

- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  tabSidebarController = [(DOCTabbedBrowserViewController *)selfCopy tabSidebarController];
  v7 = (*((*MEMORY[0x277D85000] & tabSidebarController->super.super.super.super.isa) + 0x70))(groupCopy);
  v9 = v8;

  if (v7)
  {
    ObjectType = swift_getObjectType();
    children = [groupCopy children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 72))(v12, ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = specialized DOCTabbedBrowserViewController.tabBarController(_:tab:operationForAcceptingItemsFrom:)(tabCopy, session);

  swift_unknownObjectRelease();
  return v11;
}

- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  tabCopy = tab;
  swift_unknownObjectRetain();
  selfCopy = self;
  parent = [tabCopy parent];
  if (parent)
  {
    v9 = parent;
    tabSidebarController = [(DOCTabbedBrowserViewController *)selfCopy tabSidebarController];
    v11 = (*((*MEMORY[0x277D85000] & tabSidebarController->super.super.super.super.isa) + 0x70))(v9);
    v13 = v12;

    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 88))(session, tabCopy, selfCopy, DOCGridLayout.specIconWidth.modify, 0, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)controller visibilityDidChangeForTabs:(id)tabs
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCTabbedBrowserViewController.tabBarController(_:visibilityDidChangeFor:)(v6);
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  requestCopy = request;
  selfCopy = self;
  v12 = specialized DOCTabbedBrowserViewController.tabBarController(_:sidebar:itemFor:)(requestCopy);

  return v12;
}

- (void)dataSource:(id)source wantsToReveal:(id)reveal
{
  revealCopy = reveal;
  selfCopy = self;
  node = [revealCopy node];
  if (node)
  {
    v7 = node;
    fullBrowserViewController = [(DOCTabbedBrowserViewController *)selfCopy fullBrowserViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v7, 1, DOCGridLayout.specIconWidth.modify, 0, fullBrowserViewController);
    swift_unknownObjectRelease();
  }
}

- (void)dataSource:(id)source wantsToPresentConnectToServer:(id)server
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  if (server)
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
  selfCopy = self;
  v19 = 0;
  if (v16 != 1)
  {
    URL._bridgeToObjectiveC()(v17);
    v19 = v20;
    (*(v15 + 8))(v9, v14);
  }

  [(DOCTabbedBrowserViewController *)selfCopy presentConnectToServer:v19];

  outlined destroy of CharacterSet?(v13, &_s10Foundation3URLVSgMd);
}

- (void)dataSource:(id)source didUpdateTabs:(id)tabs
{
  tabsCopy = tabs;
  selfCopy = self;
  tabSidebarController = [(DOCTabbedBrowserViewController *)selfCopy tabSidebarController];
  [(DOCTabSidebarController *)tabSidebarController setTabs:tabsCopy];
}

- (id)viewControllerFor:(id)for
{
  v3 = [(DOCTabbedBrowserViewController *)self newViewControllerFor:for];

  return v3;
}

- (id)newViewControllersSharing:(id)sharing tabBarItems:(id)items
{
  type metadata accessor for DOCTabBarItem();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sharingCopy = sharing;
  selfCopy = self;
  DOCTabbedBrowserViewController.newViewControllersSharing(_:tabBarItems:)(sharingCopy, v6);

  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)selectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    selfCopy2 = self;
  }

  v6 = [(DOCTabbedBrowserViewController *)self splitBrowserViewController:v8];
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)v6 fullDocumentManagerViewController];

  DOCFullDocumentManagerViewController.performSelectAll(_:enteringEditMode:)(&v8, 0);
  outlined destroy of CharacterSet?(&v8, &_sypSgMd);
}

- (void)performDeselectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCTabbedBrowserViewController.performDeselectAll(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)performGoToEnclosingFolder:(id)folder
{
  selfCopy = self;
  splitBrowserViewController = [(DOCTabbedBrowserViewController *)selfCopy splitBrowserViewController];
  [(DOCSplitBrowserViewController *)splitBrowserViewController showSidebar];
}

- (void)performConnectToServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  specialized DOCTabbedBrowserViewController.performConnectToServer(_:)();
}

- (void)performGoToOnMyDevice:(id)device
{
  v4 = *MEMORY[0x277D060F0];
  v5 = objc_allocWithZone(MEMORY[0x277D05EA8]);
  selfCopy = self;
  v6 = [v5 initWithSourceIdentifier:v4 node:0];
  [(DOCTabbedBrowserViewController *)selfCopy switchToLocation:v6];
}

- (void)performGoToShared:(id)shared
{
  v4 = objc_opt_self();
  selfCopy = self;
  sharedItemsLocation = [v4 sharedItemsLocation];
  [(DOCTabbedBrowserViewController *)selfCopy switchToLocation:sharedItemsLocation];
}

- (void)performScanDocuments:(id)documents
{
  documentsCopy = documents;
  selfCopy = self;
  specialized DOCTabbedBrowserViewController.performScanDocuments(_:)();
}

- (void)applyBrowserStateChange:(id)change
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = change;
  changeCopy = change;
  selfCopy = self;
  v7 = changeCopy;
  DOCRunInMainThread(_:)();
}

- (void)performBrowserStateChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCTabbedBrowserViewController.performBrowserStateChange(_:)(changeCopy);
}

- (void)_applyBrowserStateChange:(id)change force:(BOOL)force
{
  changeCopy = change;
  selfCopy = self;
  DOCTabbedBrowserViewController._applyBrowserStateChange(_:force:)(changeCopy, force);
}

- (void)updateDeferredBrowserStateChangesWith:(id)with
{
  v5 = type metadata accessor for DOCUIPBrowserState();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  withCopy = with;
  selfCopy = self;
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