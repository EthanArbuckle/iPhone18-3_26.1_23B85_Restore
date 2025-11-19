@interface DOCFullDocumentManagerViewController
- (BOOL)_canNavigateBack;
- (BOOL)_canPopViewController;
- (BOOL)_defaultLocationIsRecentsTab;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)canGoToEnclosingFolder;
- (BOOL)canLoadAdditionalParents;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPerformGoToEnclosingFolder;
- (BOOL)canResetHierarchyController;
- (BOOL)establishFirstResponder;
- (BOOL)establishFirstResponderIfNeeded;
- (BOOL)infoPanelPreviewingMultipleItems;
- (BOOL)isBrowserCurrentLocation:(id)a3;
- (BOOL)isInUserTriggeredSelectionMode;
- (BOOL)prefersTabBarHidden;
- (BOOL)presentationContextShowsProvidersAsBrowserRoot;
- (DOCConcreteLocation)displayedRootLocation;
- (DOCFullDocumentManagerViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4;
- (DOCFullDocumentManagerViewControllerDelegate)fullDocumentManagerDelegate;
- (DOCSourceObserver)sourceObserver;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (UIScrollView)primaryContentScrollView;
- (UITraitCollection)traitCollectionExpectedForSearchPresentation;
- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator;
- (_TtC26DocumentManagerExecutables19DOCSearchController)effectiveSearchController;
- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController;
- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget;
- (id)_navigationControllerDimmingColorForParallaxTransition:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)currentItemCollectionViewController;
- (id)currentViewController;
- (id)pickerOperationTitleFor:(id)a3 useShortTitle:(BOOL)a4;
- (id)provideColumnViewControllerWithContains:(id)a3;
- (id)provideContainerControllerAt:(id)a3 from:(id)a4 isUserInteraction:(BOOL)a5 isBrowsingTrash:(BOOL)a6;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)pickerOperationFor:(id)a3;
- (unint64_t)effectiveTabSwitcherTab;
- (void)_navigateBack;
- (void)activateContainerViewControllersIfNeeded;
- (void)beginForcedNavigationTransitionChromeIfNeeded:(id)a3 appearingViewController:(id)a4 animated:(BOOL)a5;
- (void)beginLoadingAdditionalParents:(id)a3;
- (void)beginRenameOf:(id)a3;
- (void)clearDroppedLocationsAfterSwitchingViewStyle;
- (void)columnViewController:(id)a3 didShowItemControllers:(id)a4;
- (void)configureColumnViewController:(id)a3;
- (void)createNewFolderIn:(id)a3 moving:(id)a4;
- (void)dataSource:(id)a3 didUpdate:(id)a4 animated:(BOOL)a5;
- (void)dataSource:(id)a3 willSwitchFrom:(int64_t)a4 to:(int64_t)a5;
- (void)dealloc;
- (void)didChangeEnvironmentSupportsColumnView;
- (void)didCommitPreviewOf:(id)a3;
- (void)didConfirmPickIn:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)didDismissSearchResultsController:(id)a3;
- (void)didFinishGatheringItemsAndThumbnailsWithSender:(id)a3;
- (void)didIndicateCancelPicker;
- (void)didPresentSearchController:(id)a3;
- (void)didPresentSearchResultsController:(id)a3;
- (void)didSelectItem:(id)a3 atParentLocation:(id)a4 wasAlreadySelected:(BOOL)a5 onlyRevealIfColumn:(BOOL)a6;
- (void)didSelectLocation:(id)a3 atParentLocation:(id)a4;
- (void)didTapLocationOf:(id)a3;
- (void)didTapOnUnselectableItem:(id)a3;
- (void)didToggleEditStateWithEditing:(BOOL)a3 in:(id)a4;
- (void)dismissSearchAlongsideCoordinator:(id)a3;
- (void)doc_commonInitWithSourceObserver:(id)a3;
- (void)doc_updateBarButtonTrackingViewsIfNecessary;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)effectiveBrowserViewController;
- (void)effectiveSearchController;
- (void)endForcedNavigationTransitionChrome:(id)a3 appearingViewController:(id)a4;
- (void)ensureInternalNavigationControllerIsInstalled;
- (void)fullDocumentManagerViewControllerDidFinishLoading:(id)a3;
- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5;
- (void)installDebugMenuGesture;
- (void)invokeDebugGathering;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performConnectToServer:(id)a3;
- (void)performCreateDocument;
- (void)performCreateDocumentOrOpenNewWindow:(id)a3;
- (void)performDismiss:(id)a3;
- (void)performEjectMedium:(id)a3;
- (void)performFind:(id)a3;
- (void)performGoBackInHistory:(id)a3;
- (void)performGoForwardInHistory:(id)a3;
- (void)performGoToLocation:(id)a3;
- (void)performGroupByDate:(id)a3;
- (void)performGroupByKind:(id)a3;
- (void)performGroupByNone:(id)a3;
- (void)performGroupBySharedBy:(id)a3;
- (void)performGroupBySize:(id)a3;
- (void)performShowDebugMenu:(id)a3;
- (void)performSortByDateAdded:(id)a3;
- (void)performSortByDateCreated:(id)a3;
- (void)performSortByDateLastOpened:(id)a3;
- (void)performSortByDateModified:(id)a3;
- (void)performSortByKind:(id)a3;
- (void)performSortByName:(id)a3;
- (void)performSortBySharedBy:(id)a3;
- (void)performSortBySize:(id)a3;
- (void)performSortByTags:(id)a3;
- (void)performViewAsColumns:(id)a3;
- (void)performViewAsIcons:(id)a3;
- (void)performViewAsList:(id)a3;
- (void)performViewAsUserSizeLarger:(id)a3;
- (void)performViewAsUserSizeSmaller:(id)a3;
- (void)popToRootViewControllerAnimated:(BOOL)a3;
- (void)preloadLaunchServiceDatabase;
- (void)presentDebugMenuForLongPress:(id)a3;
- (void)presentDebugMenuForMultipleTaps:(id)a3;
- (void)resetNavigationStepwise;
- (void)revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 updateLastUsedDate:(BOOL)a5 completion:(id)a6;
- (void)revealLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3;
- (void)setAllowsPickingMultipleItems:(BOOL)a3;
- (void)setCustomActions:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setEnvironmentSupportsColumnView:(BOOL)a3;
- (void)setPickerContext:(id)a3;
- (void)setRootViewController:(id)a3;
- (void)setShortDebugID:(id)a3;
- (void)showLocation:(id)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)showLocation:(id)a3 fromRootAnimated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)splitViewWillChangeFrom:(int64_t)a3 to:(int64_t)a4 alongsideCoordinator:(id)a5;
- (void)splitViewWillDidExpand;
- (void)swift_commonInitWith:(id)a3;
- (void)swift_navigationController:(id)a3 didShow:(id)a4 animated:(BOOL)a5;
- (void)swift_navigationController:(id)a3 willShow:(id)a4 animated:(BOOL)a5;
- (void)swift_viewDidLoad;
- (void)updateAvailableDisplayModesWithAnimated:(BOOL)a3;
- (void)updateCustomActions;
- (void)updateNavigationBarPrefersLargeTitles;
- (void)updateRelatedViewControllersWithCurrentHierarchy;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willDismissSearchResultsController:(id)a3;
- (void)willPresentSearchController:(id)a3;
- (void)willPresentSearchResultsController:(id)a3;
@end

@implementation DOCFullDocumentManagerViewController

- (void)preloadLaunchServiceDatabase
{
  if (preloadLaunchServiceDatabase_onceToken != -1)
  {
    [DOCFullDocumentManagerViewController preloadLaunchServiceDatabase];
  }
}

void __68__DOCFullDocumentManagerViewController_preloadLaunchServiceDatabase__block_invoke()
{
  v0 = dispatch_get_global_queue(25, 0);
  dispatch_async(v0, &__block_literal_global_15);
}

void __68__DOCFullDocumentManagerViewController_preloadLaunchServiceDatabase__block_invoke_2()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
}

- (DOCFullDocumentManagerViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = DOCFullDocumentManagerViewController;
  v7 = [(UIDocumentBrowserViewController *)&v10 initWithConfiguration:a3];
  v8 = v7;
  if (v7)
  {
    [(DOCFullDocumentManagerViewController *)v7 doc_commonInitWithSourceObserver:v6];
  }

  return v8;
}

- (void)doc_commonInitWithSourceObserver:(id)a3
{
  v4 = a3;
  [(DOCFullDocumentManagerViewController *)self preloadLaunchServiceDatabase];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [v6 substringToIndex:6];
  shortDebugID = self->_shortDebugID;
  self->_shortDebugID = v7;

  v9 = objc_alloc_init(_TtC26DocumentManagerExecutables27DOCDisplayModeChangeHandler);
  displayModeHandler = self->_displayModeHandler;
  self->_displayModeHandler = v9;

  objc_storeWeak(&self->_sourceObserver, v4);
  v11 = [_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool alloc];
  v12 = [(UIDocumentBrowserViewController *)self configuration];
  v13 = [(DOCItemCollectionViewPool *)v11 initWithConfiguration:v12];
  itemCollectionViewPool = self->_itemCollectionViewPool;
  self->_itemCollectionViewPool = v13;

  v15 = [_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController alloc];
  v16 = [(UIDocumentBrowserViewController *)self configuration];
  v17 = [(DOCFullDocumentManagerNavigationController *)v15 initWithConfiguration:v16];
  internalNavigationController = self->_internalNavigationController;
  self->_internalNavigationController = v17;

  v19 = [_TtC26DocumentManagerExecutables22DOCHierarchyController alloc];
  v20 = [(UIDocumentBrowserViewController *)self configuration];
  v21 = [(DOCHierarchyController *)v19 initWithConfiguration:v20 sourceObserver:v4 minParentLocations:100];
  [(DOCFullDocumentManagerViewController *)self setHierarchyController:v21];

  [(DOCHierarchyController *)self->_hierarchyController addObserver:self forKeyPath:@"lastLocation" options:1 context:DOCFullDocumentManagerViewControllerContext];
  [(DOCHierarchyController *)self->_hierarchyController addObserver:self forKeyPath:@"effectiveRootLocation" options:1 context:DOCFullDocumentManagerViewControllerContext];
  [(DOCHierarchyController *)self->_hierarchyController addObserver:self forKeyPath:@"locations" options:1 context:DOCFullDocumentManagerViewControllerContext];
  v22 = MEMORY[0x277D06310];
  v23 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v23 = *v22;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [(DOCFullDocumentManagerViewController *)self doc_commonInitWithSourceObserver:v23];
  }

  v24 = [_TtC26DocumentManagerExecutables18DOCDocumentManager alloc];
  v25 = [(UIDocumentBrowserViewController *)self configuration];
  v26 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v27 = [(DOCDocumentManager *)v24 initWithConfiguration:v25 sourceObserver:v4 hierarchyController:v26];
  [(DOCFullDocumentManagerViewController *)self setDocumentManager:v27];

  v28 = [_TtC26DocumentManagerExecutables22DOCLocationChangePacer alloc];
  v29 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v30 = [(DOCLocationChangePacer *)v28 initWithHierarchyController:v29];
  locationChangePacer = self->_locationChangePacer;
  self->_locationChangePacer = v30;

  v32 = [_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource alloc];
  v33 = [(UIDocumentBrowserViewController *)self configuration];
  v34 = [(DOCFullDocumentManagerViewController *)self sourceObserver];
  v35 = [(DOCBrowserNavigationDataSource *)v32 initWithConfiguration:v33 sourceObserver:v34];
  dataSource = self->_dataSource;
  self->_dataSource = v35;

  v37 = [(DOCFullDocumentManagerViewController *)self dataSource];
  [v37 setItemProvider:self];

  v38 = [(DOCFullDocumentManagerViewController *)self dataSource];
  [v38 setUpdateObserver:self];

  v39 = [(DOCFullDocumentManagerViewController *)self dataSource];
  v40 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [v40 setDelegate:v39];

  [(UINavigationController *)self->_internalNavigationController setDelegate:self];
  v41 = [(DOCFullDocumentManagerViewController *)self documentManager];
  [v41 setDocumentBrowser:self];

  WeakRetained = objc_loadWeakRetained(&self->_sourceObserver);
  [(DOCFullDocumentManagerViewController *)self swift_commonInitWith:WeakRetained];

  [(DOCFullDocumentManagerViewController *)self setCustomActions:MEMORY[0x277CBEBF8]];
  v43 = [MEMORY[0x277CCAB98] defaultCenter];
  [v43 addObserver:self selector:sel_fullDocumentManagerViewControllerDidFinishLoading_ name:@"DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName" object:0];

  v44 = [MEMORY[0x277CCAB98] defaultCenter];
  [v44 addObserver:self selector:sel_itemCollectionViewControllerDidLoad name:@"DOCItemCollectionViewDidLoadContents" object:0];

  self->_userChangedDefaultSaveLocationToken = 0;
  objc_initWeak(&location, self);
  v45 = *MEMORY[0x277D05E80];
  v46 = MEMORY[0x277D85CD0];
  v47 = MEMORY[0x277D85CD0];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __73__DOCFullDocumentManagerViewController_doc_commonInitWithSourceObserver___block_invoke;
  v48[3] = &unk_278FA1DC0;
  objc_copyWeak(&v49, &location);
  notify_register_dispatch(v45, &self->_userChangedDefaultSaveLocationToken, v46, v48);

  objc_destroyWeak(&v49);
  objc_destroyWeak(&location);
}

void __73__DOCFullDocumentManagerViewController_doc_commonInitWithSourceObserver___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);

  if (v1)
  {
    v2 = objc_loadWeakRetained(&to);
    v3 = [v2 _defaultLocationIsRecentsTab];

    if ((v3 & 1) == 0)
    {
      v4 = objc_loadWeakRetained(&to);
      v5 = [v4 hierarchyController];
      [v5 reset];

      v6 = objc_loadWeakRetained(&to);
      v7 = [v6 hierarchyController];
      [v7 resetWithDefaultLocationWithAnimated:0];
    }
  }

  objc_destroyWeak(&to);
}

- (void)setShortDebugID:(id)a3
{
  objc_storeStrong(&self->_shortDebugID, a3);
  v5 = a3;
  [(DOCBrowserNavigationDataSource *)self->_dataSource setShortDebugID:v5];
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDebugID = self->_shortDebugID;
  v7.receiver = self;
  v7.super_class = DOCFullDocumentManagerViewController;
  v4 = [(DOCFullDocumentManagerViewController *)&v7 description];
  v5 = [v2 stringWithFormat:@"%@: %@", shortDebugID, v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName" object:0];

  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"lastLocation"];
  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"effectiveRootLocation"];
  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"locations"];
  if ([(DOCFullDocumentManagerViewController *)self isViewLoaded])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];
  }

  userChangedDefaultSaveLocationToken = self->_userChangedDefaultSaveLocationToken;
  if (userChangedDefaultSaveLocationToken)
  {
    notify_cancel(userChangedDefaultSaveLocationToken);
    self->_userChangedDefaultSaveLocationToken = 0;
  }

  v6.receiver = self;
  v6.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = v11;
  if (DOCFullDocumentManagerViewControllerContext == a6)
  {
    if (([v11 isEqualToString:@"locations"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"lastLocation") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"effectiveRootLocation"))
    {
      [(DOCFullDocumentManagerViewController *)self updateRelatedViewControllersWithCurrentHierarchy];
    }

    else
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"DOCFullDocumentManagerViewController.m" lineNumber:208 description:{@"Unhandled keyPath: %@", v12}];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DOCFullDocumentManagerViewController;
    [(DOCFullDocumentManagerViewController *)&v14 observeValueForKeyPath:v11 ofObject:a4 change:a5 context:a6];
  }
}

- (BOOL)_defaultLocationIsRecentsTab
{
  v2 = [(UIDocumentBrowserViewController *)self configuration];
  v3 = [v2 defaultLocation];
  v4 = [v3 sourceIdentifier];
  v5 = *MEMORY[0x277D060F8];

  if (v4 != v5)
  {
    return 0;
  }

  return DOCUsePhoneIdiomForTraits();
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v8 viewDidLoad];
  [(DOCFullDocumentManagerViewController *)self ensureInternalNavigationControllerIsInstalled];
  [(DOCFullDocumentManagerViewController *)self updateNavigationBarPrefersLargeTitles];
  if (!self->_viewDidLoadResetLocationDisabled)
  {
    v3 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    [v3 resetWithDefaultLocationWithAnimated:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sourceObserver);
  [WeakRetained startObservingSources];

  if (os_variant_has_internal_diagnostics())
  {
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_invokeDebugGathering];
    multiTapDebugGestureRecognizer = self->_multiTapDebugGestureRecognizer;
    self->_multiTapDebugGestureRecognizer = v5;

    [(UITapGestureRecognizer *)self->_multiTapDebugGestureRecognizer setNumberOfTapsRequired:4];
    [(UITapGestureRecognizer *)self->_multiTapDebugGestureRecognizer setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)self->_multiTapDebugGestureRecognizer setDelegate:self];
    v7 = [(UINavigationController *)self->_internalNavigationController navigationBar];
    [v7 addGestureRecognizer:self->_multiTapDebugGestureRecognizer];
  }

  [(DOCFullDocumentManagerViewController *)self swift_viewDidLoad];
  [(DOCFullDocumentManagerViewController *)self installDebugMenuGesture];
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCFullDocumentManagerViewController;
  v4 = a3;
  [(UIDocumentBrowserViewController *)&v6 setDelegate:v4];
  v5 = [(DOCFullDocumentManagerViewController *)self documentManager:v6.receiver];
  [v5 setUiBrowserDelegate:v4];
}

- (BOOL)_canNavigateBack
{
  v2 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)_navigateBack
{
  if ([(DOCFullDocumentManagerViewController *)self _canPopViewController]&& [(DOCFullDocumentManagerViewController *)self _canNavigateBack])
  {
    [(DOCFullDocumentManagerViewController *)self setEditing:0];
    v4 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    v3 = [v4 popViewControllerAnimated:1];
  }
}

- (void)setAllowsPickingMultipleItems:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v16 setAllowsPickingMultipleItems:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v6 = [v5 viewControllers];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setAllowsPickingMultipleItems:v3];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  [(DOCFullDocumentManagerViewController *)self updateCustomActions];
}

- (BOOL)canResetHierarchyController
{
  v2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v3 = [v2 isResetBeingPerformed];

  return v3 ^ 1;
}

- (void)setRootViewController:(id)a3
{
  v5 = a3;
  if (self->_rootViewController != v5)
  {
    v20 = v5;
    [(UIViewController *)v5 doc_removeFromParentWithRemoveSubviewBlock:0];
    v6 = self->_rootViewController;
    objc_storeStrong(&self->_rootViewController, a3);
    v7 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 mutableCopy];

    if (v6)
    {
      [v9 removeObject:v6];
    }

    if (v20)
    {
      v10 = 1;
    }

    else
    {
      v11 = [(DOCFullDocumentManagerViewController *)self dataSource];
      v10 = [v11 currentViewStyle] != 3 || objc_msgSend(v9, "count") == 0;
    }

    v12 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    v13 = [v12 lastLocation];

    if (v13)
    {
      v14 = [v13 sourceIdentifier];
      if (v14 == *MEMORY[0x277D05D98])
      {
        v16 = 0;
      }

      else
      {
        v15 = [v13 sourceIdentifier];
        v16 = v15 != *MEMORY[0x277D05DB0];
      }
    }

    else
    {
      v16 = 0;
    }

    if ((v10 || v16) && ((v17 = [v9 count], v20) || v17))
    {
      if (v20)
      {
        if ([v9 containsObject:v20])
        {
          DOCLogAssertionFailure();
          [v9 removeObject:v20];
        }

        [v9 insertObject:v20 atIndex:0];
      }

      v19 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
      [v19 setViewControllers:v9];
    }

    else
    {
      v18 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
      [v18 setViewControllers:MEMORY[0x277CBEBF8]];

      if (![(DOCFullDocumentManagerViewController *)self canResetHierarchyController])
      {
LABEL_27:

        v5 = v20;
        goto LABEL_28;
      }

      v19 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [v19 resetWithDefaultLocationWithAnimated:0];
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(DOCFullDocumentManagerViewController *)self rootViewController];

  v6 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v13 = v6;
  if (v5)
  {
    v7 = [v6 viewControllers];
    v8 = [(DOCFullDocumentManagerViewController *)self rootViewController];
    v9 = [v7 containsObject:v8];

    if (!v9)
    {
      return;
    }

    v13 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    v10 = [(DOCFullDocumentManagerViewController *)self rootViewController];
    v11 = [v13 popToViewController:v10 animated:v3];
  }

  else
  {
    v12 = [v6 popToRootViewControllerAnimated:v3];
  }
}

- (id)currentViewController
{
  v2 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v3 = [v2 topViewController];

  return v3;
}

- (id)currentItemCollectionViewController
{
  v2 = [(DOCFullDocumentManagerViewController *)self effectiveBrowserViewController];
  v3 = [v2 contentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showLocation:(id)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D06310];
  v11 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCFullDocumentManagerViewController showLocation:v8 animated:v11 withCompletionBlock:?];
  }

  self->_viewDidLoadResetLocationDisabled = v8 != 0;
  v12 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v13 = v12;
  if (v8)
  {
    [v12 resetWith:v8 animated:v6 completionHandler:v9];
  }

  else
  {
    v14 = [MEMORY[0x277D05EA8] emptyLocation];
    [v13 resetWith:v14 animated:v6 completionHandler:v9];
  }
}

- (void)showLocation:(id)a3 fromRootAnimated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D06310];
  v11 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCFullDocumentManagerViewController showLocation:fromRootAnimated:withCompletionBlock:];
  }

  self->_viewDidLoadResetLocationDisabled = v8 != 0;
  v12 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v13 = v12;
  if (v8)
  {
    [v12 resetFromRootWith:v8 animated:v6 completionHandler:v9];
  }

  else
  {
    v14 = [MEMORY[0x277D05EA8] emptyLocation];
    [v13 resetFromRootWith:v14 animated:v6 completionHandler:v9];
  }
}

- (void)revealLocation:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D06310];
  v11 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCFullDocumentManagerViewController revealLocation:animated:completion:];
  }

  self->_viewDidLoadResetLocationDisabled = v8 != 0;
  v12 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x277D05EA8] emptyLocation];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__DOCFullDocumentManagerViewController_revealLocation_animated_completion___block_invoke;
  v15[3] = &unk_278FA1EA8;
  v16 = v9;
  v14 = v9;
  [v12 revealLocation:v13 animated:v6 completion:v15];
  if (!v8)
  {
  }
}

uint64_t __75__DOCFullDocumentManagerViewController_revealLocation_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v20 setAdditionalTrailingNavigationBarButtonItems:a3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v5 = [v4 viewControllers];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (v11 = v10, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
        {
          v13 = objc_alloc(MEMORY[0x277CBEA60]);
          v14 = [(UIDocumentBrowserViewController *)self additionalTrailingNavigationBarButtonItems];
          v15 = [v13 initWithArray:v14 copyItems:1];
          [v10 setAdditionalTrailingNavigationBarButtonItems:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v18 setAdditionalLeadingNavigationBarButtonItems:a3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  v5 = [v4 viewControllers];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_alloc(MEMORY[0x277CBEA60]);
          v12 = [(UIDocumentBrowserViewController *)self additionalLeadingNavigationBarButtonItems];
          v13 = [v11 initWithArray:v12 copyItems:1];
          [v10 setAdditionalLeadingNavigationBarButtonItems:v13];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(DOCFullDocumentManagerViewController *)self isEditing]!= a3)
  {
    v10.receiver = self;
    v10.super_class = DOCFullDocumentManagerViewController;
    [(UIDocumentBrowserViewController *)&v10 setEditing:v5 animated:v4];
    [(DOCFullDocumentManagerViewController *)self willChangeValueForKey:@"editing"];
    v7 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    v8 = [v7 topViewController];

    v9 = v8;
    objc_opt_class();
    LOBYTE(v8) = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      [v9 setEditing:v5 animated:v4];
    }

    [(DOCFullDocumentManagerViewController *)self didChangeValueForKey:@"editing"];
  }
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController
{
  v3 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v4 = [v3 locations];

  v5 = MEMORY[0x277D06310];
  v6 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DOCFullDocumentManagerViewController *)v6 effectiveBrowserViewController];
  }

  v7 = [v4 lastObject];
  v8 = [v7 fileProviderItem];

  if (!v8 || ([v8 isFolder] & 1) != 0)
  {
    v9 = [(DOCFullDocumentManagerViewController *)self dataSource];
    v10 = [v9 currentContainers];
    v11 = v10;
LABEL_8:
    v12 = [v10 lastObject];
    goto LABEL_9;
  }

  v15 = [(DOCFullDocumentManagerViewController *)self dataSource];
  v16 = [v15 currentContainers];
  v17 = [v16 count] - 2;

  v9 = [(DOCFullDocumentManagerViewController *)self dataSource];
  v10 = [v9 currentContainers];
  v11 = v10;
  if (v17 < 0)
  {
    goto LABEL_8;
  }

  v12 = [v10 objectAtIndexedSubscript:v17];
LABEL_9:
  v13 = v12;

  return v13;
}

- (_TtC26DocumentManagerExecutables19DOCSearchController)effectiveSearchController
{
  v3 = [(DOCFullDocumentManagerViewController *)self dataSource];
  v4 = [v3 currentViewControllers];
  v5 = [v4 lastObject];
  v6 = [v5 navigationItem];
  v7 = [v6 searchController];

  if (v7 || (-[DOCFullDocumentManagerViewController currentViewController](self, "currentViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 navigationItem], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "searchController"), v7 = objc_claimAutoreleasedReturnValue(), v9, v8, v7))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [DOCFullDocumentManagerViewController effectiveSearchController];
      }
    }
  }

  return v7;
}

- (BOOL)_canPopViewController
{
  v2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v3 = [v2 isFetchingLocations];

  return v3 ^ 1;
}

- (BOOL)canGoToEnclosingFolder
{
  v3 = [(DOCHierarchyController *)self->_hierarchyController lastLocation];
  if ([v3 isRoot])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(DOCHierarchyController *)self->_hierarchyController lastLocation];
    v6 = [v5 fileProviderItem];
    v4 = v6 != 0;
  }

  return v4;
}

- (BOOL)prefersTabBarHidden
{
  if ([(DOCFullDocumentManagerViewController *)self enclosingTabSwitcherStyle]== 2)
  {
    return 0;
  }

  if (![(UINavigationController *)self->_internalNavigationController isToolbarHidden])
  {
    return 1;
  }

  return [(DOCFullDocumentManagerViewController *)self isInUserTriggeredSelectionMode];
}

- (void)setCustomActions:(id)a3
{
  v4.receiver = self;
  v4.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v4 setCustomActions:a3];
  [(DOCFullDocumentManagerViewController *)self updateCustomActions];
}

- (void)dismissSearchAlongsideCoordinator:(id)a3
{
  v5 = a3;
  v4 = [(DOCFullDocumentManagerViewController *)self effectiveSearchController];
  if ([v4 isActive])
  {
    [v4 deactivateAlongsideContainingTransitionCoordinator:v5];
  }
}

- (void)beginForcedNavigationTransitionChromeIfNeeded:(id)a3 appearingViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  v9 = [v15 lastOperation];
  v10 = _itemCollectionViewControllerIn(v8);
  v11 = v10;
  if (v5 && v9 == 2 && [v10 needsForcedUnderNavBarAppearanceOnAppear])
  {
    v12 = [v15 navigationBar];
    v13 = [v12 standardAppearance];
    v14 = [v8 navigationItem];
    [v14 setScrollEdgeAppearance:v13];

    self->_resetNavBarScrollEdgeAfterPop = 1;
  }
}

- (void)endForcedNavigationTransitionChrome:(id)a3 appearingViewController:(id)a4
{
  if (self->_resetNavBarScrollEdgeAfterPop)
  {
    v5 = [a4 navigationItem];
    [v5 setScrollEdgeAppearance:0];

    self->_resetNavBarScrollEdgeAfterPop = 0;
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  if (a4)
  {
    [(DOCFullDocumentManagerViewController *)self swift_navigationController:a3 willShow:a4 animated:a5];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v48 = a2;
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(DOCFullDocumentManagerViewController *)self endForcedNavigationTransitionChrome:v8 appearingViewController:v9];
  v10 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [v10 invalidateAllAssertions];

  v11 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v12 = [v11 locations];

  v53 = v12;
  v13 = [v12 count];
  v14 = [v8 viewControllers];
  v15 = [v14 count];
  objc_opt_class();
  v52 = v14;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v49 = v13;
    v50 = v5;
    v16 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v8;
    v17 = [v8 viewControllers];
    v18 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v59;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v59 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v58 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          [v16 addObject:{v22, v48}];
        }

        v19 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v19);
    }

    v23 = v49;
    if (!v49)
    {
      [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
    }

    objc_opt_class();
    v8 = v51;
    if (objc_opt_isKindOfClass())
    {
      v24 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      v25 = [v24 effectiveRootLocation];

      if (v25)
      {
        v26 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
        v27 = [v26 effectiveLocations];
        v23 = [v27 count];
      }
    }

    if (v23 > [v16 count] && -[DOCFullDocumentManagerViewController updateLocationsAfterPopTransition](self, "updateLocationsAfterPopTransition"))
    {
      v28 = [v51 childViewControllers];
      v29 = [v28 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v31 = [v51 childViewControllers];
      v32 = [v31 count] - (isKindOfClass & 1);

      if (v32 <= 0)
      {
        [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
      }

      if ((v23 - v32) <= 0)
      {
        [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
      }

      v33 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [v33 removeTrailingLocationCount:v23 - v32 animated:0];

      v8 = v51;
    }

    v5 = v50;
  }

  else if (v15)
  {
    if (v15 != 1)
    {
      v47 = [MEMORY[0x277CCA890] currentHandler];
      [v47 handleFailureInMethod:v48 object:self file:@"DOCFullDocumentManagerViewController.m" lineNumber:631 description:{@"If we are transitioning to a view controller that is not the browser view controller, it should be the only one in the view hierarchy"}];
    }

    v42 = v9;
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if ((v43 & 1) == 0 && v13 >= 2)
    {
      [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
    }

    if ([(DOCFullDocumentManagerViewController *)self canResetHierarchyController])
    {
      v44 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      v45 = [v44 hasPendingLocationChange];

      if ((v45 & 1) == 0)
      {
        v46 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
        [v46 reset];
      }
    }
  }

  else if (v13)
  {
    [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v34 = [v9 containerControllers];
    v35 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v55;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v55 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v54 + 1) + 8 * j) setPreventAppearanceForwarding:{0, v48}];
        }

        v36 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v36);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setPreventAppearanceForwarding:0];
    }
  }

  [(DOCFullDocumentManagerViewController *)self setUpdateLocationsAfterPopTransition:0, v48];
  v39 = [(UIDocumentBrowserViewController *)self configuration];
  v40 = [v39 sceneIdentifier];
  v41 = [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:v40];
  [v41 updateLocationTitleFromCurrentState];

  [(DOCFullDocumentManagerViewController *)self swift_navigationController:v8 didShow:v9 animated:v5];
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v4 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  if ([v4 isFetchingLocations])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(DOCFullDocumentManagerViewController *)self isEditing]^ 1;
  }

  return v5;
}

- (id)_navigationControllerDimmingColorForParallaxTransition:(id)a3
{
  v3 = [(DOCFullDocumentManagerViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x277D75348] blackColor];
    v6 = [v5 colorWithAlphaComponent:0.03];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)columnViewController:(id)a3 didShowItemControllers:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [v7 invalidateAllAssertions];

  v8 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v9 = [v8 locations];

  v10 = [v9 count];
  if (a3)
  {
    v11 = v10;
    v12 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    if (!v11)
    {
      [DOCFullDocumentManagerViewController columnViewController:didShowItemControllers:];
    }

    v13 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    v14 = [v13 effectiveRootLocation];

    if (v14)
    {
      v15 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      v16 = [v15 effectiveLocations];
      v11 = [v16 count];
    }

    if (v11 > [v12 count] && -[DOCFullDocumentManagerViewController updateLocationsAfterPopTransition](self, "updateLocationsAfterPopTransition"))
    {
      if (v11 <= 1)
      {
        [DOCFullDocumentManagerViewController columnViewController:didShowItemControllers:];
      }

      v17 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [v17 removeTrailingLocationCount:1 animated:0];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v26 + 1) + 8 * v22++) setPreventAppearanceForwarding:{0, v26}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  [(DOCFullDocumentManagerViewController *)self setUpdateLocationsAfterPopTransition:0];
  v23 = [(UIDocumentBrowserViewController *)self configuration];
  v24 = [v23 sceneIdentifier];
  v25 = [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:v24];
  [v25 updateLocationTitleFromCurrentState];
}

- (void)revealDocumentAtURL:(id)a3 importIfNeeded:(BOOL)a4 updateLastUsedDate:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  [(DOCFullDocumentManagerViewController *)self dismissSearch];
  [(DOCFullDocumentManagerViewController *)self setEditing:0 animated:1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke;
  aBlock[3] = &unk_278FA2060;
  v12 = v11;
  v35 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(UIDocumentBrowserViewController *)self configuration];
  v15 = [v14 sceneIdentifier];
  v16 = [_TtC26DocumentManagerExecutables21DOCInteractionManager sharedManagerFor:v15];
  [v16 setLastSelectedNode:0];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_3;
  v29[3] = &unk_278FA20B0;
  v17 = v13;
  v32 = v17;
  v18 = v10;
  v33 = a4;
  v30 = v18;
  v31 = self;
  v19 = _Block_copy(v29);
  v20 = v19;
  if (v7)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_6;
    v27[3] = &unk_278FA20D8;
    v21 = &v28;
    v28 = v19;
    v22 = v19;
    [v18 bumpLastOpenDateWithCompletionHandler:v27];
  }

  else
  {
    v23 = [MEMORY[0x277CC6408] defaultManager];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_7;
    v25[3] = &unk_278FA2100;
    v21 = &v26;
    v26 = v20;
    v24 = v20;
    [v23 fetchItemForURL:v18 completionHandler:v25];
  }
}

void __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v10 = v7;
    v8 = v5;
    v9 = v6;
    DOCRunInMainThread();
  }
}

void __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);
LABEL_7:
    v4();
    goto LABEL_8;
  }

  if (!*(a1 + 32) || *(a1 + 56) != 1)
  {
    v4 = *(*(a1 + 48) + 16);
    goto LABEL_7;
  }

  v5 = [*(a1 + 40) documentManager];
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_4;
  v7[3] = &unk_278FA2060;
  v8 = *(a1 + 48);
  [v5 importDocumentAt:v6 mode:1 toCurrentBrowserLocationWithCompletion:v7];

LABEL_8:
}

void __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_5;
    v4[3] = &unk_278FA2088;
    v6 = *(a1 + 32);
    v5 = v3;
    [v5 bumpLastOpenDateWithCompletionHandler:v4];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)resetNavigationStepwise
{
  if (-[DOCFullDocumentManagerViewController _canPopViewController](self, "_canPopViewController") && (-[DOCFullDocumentManagerViewController internalNavigationController](self, "internalNavigationController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewControllers], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5 >= 2))
  {

    [(DOCFullDocumentManagerViewController *)self _navigateBack];
  }

  else
  {
    v6 = [(DOCFullDocumentManagerViewController *)self primaryContentScrollView];
    [v6 _scrollToTopIfPossible:1];
  }
}

- (void)setEnvironmentSupportsColumnView:(BOOL)a3
{
  if (self->_environmentSupportsColumnView != a3)
  {
    self->_environmentSupportsColumnView = a3;
    [(DOCFullDocumentManagerViewController *)self didChangeEnvironmentSupportsColumnView];
  }
}

- (void)setPickerContext:(id)a3
{
  v5 = a3;
  if (self->_pickerContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pickerContext, a3);
    [(DOCPickerFilenameView *)self->_pickerFilenameView setPickerContext:self->_pickerContext];
    [(DOCHierarchyController *)self->_hierarchyController setPickerContext:self->_pickerContext];
    v5 = v6;
  }
}

- (DOCFullDocumentManagerViewControllerDelegate)fullDocumentManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fullDocumentManagerDelegate);

  return WeakRetained;
}

- (DOCSourceObserver)sourceObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceObserver);

  return WeakRetained;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = 0;
  v5 = objc_allocWithZone(type metadata accessor for DOCModalBlurViewControllerTransition());
  v6 = DOCModalBlurViewControllerTransition.init(direction:)(&v8);

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v6 = 1;
  v3 = objc_allocWithZone(type metadata accessor for DOCModalBlurViewControllerTransition());
  v4 = DOCModalBlurViewControllerTransition.init(direction:)(&v6);

  return v4;
}

- (void)invokeDebugGathering
{
  v2 = self;
  DOCFullDocumentManagerViewController.invokeDebugGathering()();
}

- (void)installDebugMenuGesture
{
  v2 = self;
  DOCFullDocumentManagerViewController.installDebugMenuGesture()();
}

- (void)presentDebugMenuForLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 1)
  {
    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

- (void)presentDebugMenuForMultipleTaps:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3)
  {
    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

- (void)performShowDebugMenu:(id)a3
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

  DOCFullDocumentManagerViewController.presentDebugMenu()();

  outlined destroy of Any?(v6);
}

- (void)didTapOnUnselectableItem:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.didTapOn(unselectableItem:)(v4);
}

- (void)didConfirmPickIn:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DOCFullDocumentManagerViewController.didConfirmPick(in:)(a3);
  swift_unknownObjectRelease();
}

- (id)pickerOperationTitleFor:(id)a3 useShortTitle:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(a3, a4);
  v10 = v9;
  swift_unknownObjectRelease();

  v11 = MEMORY[0x24C1FAD20](v8, v10);

  return v11;
}

- (int64_t)pickerOperationFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = DOCFullDocumentManagerViewController._pickerOperation(for:)(a3);
  if (_UISolariumEnabled())
  {
    v7 = [(DOCFullDocumentManagerViewController *)v5 pickerOperationTitleFor:a3 useShortTitle:0];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [(DOCFullDocumentManagerViewController *)v5 pickerFilenameView];
    if (v11)
    {
      v12 = v11;
      (*((*MEMORY[0x277D85000] & *v11) + 0x128))(v8, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v6;
}

- (_TtP26DocumentManagerExecutables27DOCScannedDocumentReceiving_)doc_documentScannerReceivingTarget
{
  v2 = self;
  v3 = DOCFullDocumentManagerViewController.doc_documentScannerReceivingTarget.getter();

  return v3;
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(DOCFullDocumentManagerViewController *)v8 effectiveBrowserViewController];
  if (v5)
  {
    v6 = v5;
    v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();

    if (v7)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {

        [(DOCFullDocumentManagerViewController *)v4 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {

        v4 = v8;
        v8 = v7;
      }
    }
  }
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = self;
  v8 = [(DOCFullDocumentManagerViewController *)v7 effectiveBrowserViewController];
  if (v8 && (v9 = v8, v10 = (*((*MEMORY[0x277D85000] & *v8) + 0xE8))(), v9, v10))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v15;
      v14 = v15;
      v10 = v10;
      specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(v6, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v13);
    }

    else
    {
    }

    v7 = v10;
  }

  else
  {
  }
}

- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 internalNavigationController];
  v4 = [(UINavigationController *)v3 transitionCoordinator];

  return v4;
}

- (void)dataSource:(id)a3 willSwitchFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  specialized DOCFullDocumentManagerViewController.dataSource(_:willSwitchFrom:to:)(a5);
}

- (void)dataSource:(id)a3 didUpdate:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)(v9, v8, v5);
}

- (void)clearDroppedLocationsAfterSwitchingViewStyle
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v4 = self;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(DOCFullDocumentManagerViewController *)v4 setDroppedLocationsAfterSwitchingDisplayMode:isa];
}

- (BOOL)presentationContextShowsProvidersAsBrowserRoot
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 traitCollection];
  v4 = [v3 sourceOutlineStyle];

  return v4 == 1;
}

- (id)provideContainerControllerAt:(id)a3 from:(id)a4 isUserInteraction:(BOOL)a5 isBrowsingTrash:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  v13 = DOCFullDocumentManagerViewController.provideContainerController(at:from:isUserInteraction:isBrowsingTrash:)(v10, a4, a5, a6);

  return v13;
}

- (id)provideColumnViewControllerWithContains:(id)a3
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = [(UIDocumentBrowserViewController *)v5 configuration];
  v7 = objc_allocWithZone(type metadata accessor for DOCColumnViewController(0));
  v8 = specialized DOCColumnViewController.init(configuration:)(v6);

  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(v4);
  [(DOCFullDocumentManagerViewController *)v5 configureColumnViewController:v8];

  return v8;
}

- (void)configureColumnViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCFullDocumentManagerViewController.configureColumnViewController(_:)(v4);
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = DOCFullDocumentManagerViewController.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)performFind:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCFullDocumentManagerViewController.performFind(_:)();
}

- (BOOL)canPerformGoToEnclosingFolder
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 dataSource];
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x188))();

  if (v4 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(DOCFullDocumentManagerViewController *)v2 _canNavigateBack];
  }

  return v5;
}

- (void)performGoBackInHistory:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCFullDocumentManagerViewController.performGoBackInHistory(_:)(closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getterpartial apply, 0);
}

- (void)performGoForwardInHistory:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCFullDocumentManagerViewController.performGoBackInHistory(_:)(closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getterpartial apply, 1);
}

- (void)performViewAsIcons:(id)a3
{
  v3 = self;
  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(0);
}

- (void)performViewAsList:(id)a3
{
  v4 = objc_opt_self();
  v7 = self;
  v5 = [v4 outlineView];
  LODWORD(v4) = [v5 isEnabled];

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(v6);
}

- (void)performViewAsColumns:(id)a3
{
  v3 = self;
  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(3);
}

- (void)performViewAsUserSizeSmaller:(id)a3
{
  v4 = 1;
  v3 = self;
  DOCFullDocumentManagerViewController.changeUserSizeSetting(direction:)(&v4);
}

- (void)performViewAsUserSizeLarger:(id)a3
{
  v4 = 0;
  v3 = self;
  DOCFullDocumentManagerViewController.changeUserSizeSetting(direction:)(&v4);
}

- (void)performSortByName:(id)a3
{
  v4 = 2;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateModified:(id)a3
{
  v4 = 0;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateCreated:(id)a3
{
  v4 = 7;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateLastOpened:(id)a3
{
  v4 = 1;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateAdded:(id)a3
{
  v4 = 8;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortBySize:(id)a3
{
  v4 = 4;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByKind:(id)a3
{
  v4 = 5;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByTags:(id)a3
{
  v4 = 3;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortBySharedBy:(id)a3
{
  v4 = 6;
  v3 = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performGroupByNone:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCFullDocumentManagerViewController.performGroupByNone(_:)();
}

- (void)performGroupByKind:(id)a3
{
  v4 = 4;
  v3 = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupByDate:(id)a3
{
  v4 = 0;
  v3 = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupBySize:(id)a3
{
  v4 = 3;
  v3 = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupBySharedBy:(id)a3
{
  v4 = 5;
  v3 = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performCreateDocumentOrOpenNewWindow:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.performCreateDocumentOrOpenNewWindow(_:)(v4);
}

- (void)performCreateDocument
{
  v3 = self;
  v2 = [(DOCFullDocumentManagerViewController *)v3 documentManager];
  (*((*MEMORY[0x277D85000] & *v2) + 0x110))(0);
}

- (void)performEjectMedium:(id)a3
{
  v9 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v9 effectiveBrowserViewController];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v6)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = (*((*v5 & *v7) + 0xA68))();
        (*((*v5 & v8->super.super.super.super.isa) + 0x288))(v9);
      }

      else
      {
        v8 = v9;
        v9 = v6;
      }
    }
  }
}

- (void)performGoToLocation:(id)a3
{
  v3 = self;
  DOCFullDocumentManagerViewController.presentGoToLocation()();
}

- (void)performConnectToServer:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v10 = self;
  v7 = [(UIDocumentBrowserViewController *)v10 configuration];
  v8 = [(DOCConfiguration *)v7 sceneIdentifier];

  v9 = [v5 globalTabbedBrowserControllerForIdentifier_];
  [v9 performConnectToServer_];
}

- (void)performDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.performDismiss(_:)(v4);
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.validate(_:)(v4);
}

- (BOOL)isInUserTriggeredSelectionMode
{
  v2 = self;
  if ([(DOCFullDocumentManagerViewController *)v2 isEditing]&& (v3 = [(DOCFullDocumentManagerViewController *)v2 effectiveBrowserViewController]) != 0 && (v4 = MEMORY[0x277D85000], v5 = v3, v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(), v5, v6))
  {
    v7 = (*((*v4 & *v6) + 0x160))();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)didSelectItem:(id)a3 atParentLocation:(id)a4 wasAlreadySelected:(BOOL)a5 onlyRevealIfColumn:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = self;
  DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(v10, a4, v7, a6);
}

- (void)didSelectLocation:(id)a3 atParentLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  DOCFullDocumentManagerViewController.didSelect(_:at:)(v6, a4);
}

- (void)didCommitPreviewOf:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  v8 = [v5 defaultManager];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v13[4] = closure #1 in DOCFullDocumentManagerViewController.didCommitPreview(of:)partial apply;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_149_0;
  v10 = _Block_copy(v13);
  v11 = v6;
  v12 = v7;

  [v8 fetchURLForItem:v11 completionHandler:v10];

  _Block_release(v10);
}

- (void)didTapLocationOf:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.didTapLocation(of:)(v4);
}

- (void)didIndicateCancelPicker
{
  v2 = self;
  DOCFullDocumentManagerViewController.didIndicateCancelPicker()();
}

- (void)didToggleEditStateWithEditing:(BOOL)a3 in:(id)a4
{
  v5 = a4;
  v6 = self;
  specialized DOCFullDocumentManagerViewController.didToggleEditState(editing:in:)();
}

- (void)didFinishGatheringItemsAndThumbnailsWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  DOCFullDocumentManagerViewController.didFinishGatheringItemsAndThumbnails(sender:)(a3);
}

- (BOOL)canLoadAdditionalParents
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 hierarchyController];
  IsHidingParent = DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter();

  return IsHidingParent & 1;
}

- (void)beginLoadingAdditionalParents:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v8 = self;
  v6 = [(DOCFullDocumentManagerViewController *)v8 hierarchyController];
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  *(v7 + 24) = v5;

  DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(closure #1 in DOCFullDocumentManagerViewController.beginLoadingAdditionalParents(_:)partial apply, v7);
}

- (BOOL)isBrowserCurrentLocation:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = DOCFullDocumentManagerViewController.isBrowserCurrentLocation(_:)();
  swift_unknownObjectRelease();

  return v5 & 1;
}

- (BOOL)infoPanelPreviewingMultipleItems
{
  v2 = self;
  v3 = DOCFullDocumentManagerViewController.infoPanelPreviewingMultipleItems()();

  return v3;
}

- (void)beginRenameOf:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.beginRename(of:)(v4);
}

- (void)createNewFolderIn:(id)a3 moving:(id)a4
{
  v4 = a4;
  if (a4)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  DOCFullDocumentManagerViewController.createNewFolder(in:moving:)(v7, v4);
}

- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = self;
  DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(v12, v13, a5);

  (*(v9 + 8))(v12, v8);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v6 = self;
  if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
  {
    v3 = [(DOCFullDocumentManagerViewController *)v6 pickerPresentingController];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 removeSaveActionBlockerForFiles];
      }
    }
  }

  [(DOCFullDocumentManagerViewController *)v6 setPickerPresentingController:0];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v6 = self;
  v4 = [(DOCFullDocumentManagerViewController *)v6 pickerPresentingController];
  if (v4)
  {
    v5 = v4;
    [(UIViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  }

  [(DOCFullDocumentManagerViewController *)v6 setPickerPresentingController:0];
}

- (BOOL)establishFirstResponderIfNeeded
{
  v2 = self;
  if ([(DOCFullDocumentManagerViewController *)v2 needsFirstResponder]&& [(DOCFullDocumentManagerViewController *)v2 establishFirstResponder])
  {
    [(DOCFullDocumentManagerViewController *)v2 setNeedsFirstResponder:0];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)establishFirstResponder
{
  v2 = self;
  v3 = DOCFullDocumentManagerViewController.establishFirstResponder()();

  return v3;
}

- (unint64_t)effectiveTabSwitcherTab
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 hierarchyController];
  v4 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 effectiveTabSwitcherTab];

    return v6;
  }

  else
  {

    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v9 = *(v3 + v8);

    return v9;
  }
}

- (void)swift_commonInitWith:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.swift_commonInit(with:)(v4);
}

- (void)fullDocumentManagerViewControllerDidFinishLoading:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  DOCFullDocumentManagerViewController.fullDocumentManagerViewControllerDidFinishLoading(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)activateContainerViewControllersIfNeeded
{
  v2 = self;
  DOCFullDocumentManagerViewController.activateContainerViewControllersIfNeeded()();
}

- (DOCConcreteLocation)displayedRootLocation
{
  v2 = self;
  v3 = DOCFullDocumentManagerViewController.displayedRootLocation.getter();

  return v3;
}

- (void)updateRelatedViewControllersWithCurrentHierarchy
{
  v2 = self;
  DOCFullDocumentManagerViewController.updateRelatedViewControllersWithCurrentHierarchy()();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  DOCFullDocumentManagerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  v8 = DOCFullDocumentManagerViewController.canPerformAction(_:withSender:)(a3, v10);

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

  DOCFullDocumentManagerViewController.target(forAction:withSender:)(a3, v16, v17);

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

- (void)ensureInternalNavigationControllerIsInstalled
{
  v2 = self;
  DOCFullDocumentManagerViewController.ensureInternalNavigationControllerIsInstalled()();
}

- (void)swift_viewDidLoad
{
  v2 = self;
  DOCFullDocumentManagerViewController.swift_viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = DOCFullDocumentManagerViewController;
  v6 = self;
  v7 = a3;
  [(UIDocumentBrowserViewController *)&v8 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  if (v7)
  {
    [(DOCFullDocumentManagerViewController *)v6 updateAvailableDisplayModesWithAnimated:1, v8.receiver, v8.super_class];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  DOCFullDocumentManagerViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = DOCFullDocumentManagerViewController;
  [(DOCFullDocumentManagerViewController *)&v3 viewDidDisappear:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = DOCFullDocumentManagerViewController;
  v4 = self;
  [(UIDocumentBrowserViewController *)&v5 viewWillAppear:v3];
  DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
  [(DOCFullDocumentManagerViewController *)v4 updateAvailableDisplayModesWithAnimated:0, v5.receiver, v5.super_class];
  DOCFullDocumentManagerViewController.clearLastOpenedItem()();
  DOCFullDocumentManagerViewController.setupPickerFilenameViewIfNeeded()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = DOCFullDocumentManagerViewController;
  v4 = self;
  [(DOCFullDocumentManagerViewController *)&v5 viewDidAppear:v3];
  [(DOCFullDocumentManagerViewController *)v4 updateCustomActions:v5.receiver];
}

- (void)didChangeEnvironmentSupportsColumnView
{
  v4 = self;
  v2 = [(DOCFullDocumentManagerViewController *)v4 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    [(DOCFullDocumentManagerViewController *)v4 updateAvailableDisplayModesWithAnimated:1];
  }
}

- (void)updateAvailableDisplayModesWithAnimated:(BOOL)a3
{
  v4 = self;
  DOCFullDocumentManagerViewController.updateAvailableDisplayModes(animated:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  DOCFullDocumentManagerViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)splitViewWillDidExpand
{
  v2 = self;
  DOCFullDocumentManagerViewController.splitViewWillDidExpand()();
}

- (void)splitViewWillChangeFrom:(int64_t)a3 to:(int64_t)a4 alongsideCoordinator:(id)a5
{
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCFullDocumentManagerViewController.splitViewWillChange(from:to:alongsideCoordinator:)(a5);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCFullDocumentManagerViewController.viewDidLayoutSubviews()();
}

- (void)updateNavigationBarPrefersLargeTitles
{
  v2 = self;
  DOCFullDocumentManagerViewController.updateNavigationBarPrefersLargeTitles()();
}

- (UIScrollView)primaryContentScrollView
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 internalNavigationController];
  v4 = [(UINavigationController *)v3 topViewController];

  if (v4)
  {
    v5 = [(UIViewController *)v4 contentScrollViewForEdge:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)swift_navigationController:(id)a3 willShow:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  DOCFullDocumentManagerViewController.swift_navigationController(_:willShow:animated:)(v8, v9, a5);
}

- (void)swift_navigationController:(id)a3 didShow:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized DOCFullDocumentManagerViewController.swift_navigationController(_:didShow:animated:)(v8);
}

- (UITraitCollection)traitCollectionExpectedForSearchPresentation
{
  v2 = self;
  v3 = [(DOCFullDocumentManagerViewController *)v2 effectiveBrowserViewController];
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();

    if (v5)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = [v6 traitCollection];

        v2 = v5;
        goto LABEL_7;
      }
    }
  }

  v7 = [(DOCFullDocumentManagerViewController *)v2 traitCollection];
LABEL_7:

  return v7;
}

- (void)willPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.willPresentSearchController(_:)(v4);
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(v4, [v4 showsSearchResultsController]);
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.willDismissSearchController(_:)(v4);
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.didDismissSearchController(_:)(v4);
}

- (void)willPresentSearchResultsController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.willPresentSearchResultsController(_:)(v4);
}

- (void)didPresentSearchResultsController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(v4, 1);
}

- (void)willDismissSearchResultsController:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v10 = self;
  v7 = [(UIDocumentBrowserViewController *)v10 configuration];
  v8 = [(DOCConfiguration *)v7 sceneIdentifier];

  v9 = [v5 globalTabbedBrowserControllerForIdentifier_];
  if (v9)
  {
    [v9 willDismissSearchResultsController_];
  }

  (*((*MEMORY[0x277D85000] & **&v6[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController]) + 0x1308))();
}

- (void)didDismissSearchResultsController:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(v4, 0);
}

- (void)updateCustomActions
{
  v4 = self;
  v2 = [(DOCFullDocumentManagerViewController *)v4 actionManager];
  isa = [(UIDocumentBrowserViewController *)v4 customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(DOCActionManager *)v2 setActions:isa];
}

- (void)doc_updateBarButtonTrackingViewsIfNecessary
{
  v2 = self;
  DOCFullDocumentManagerViewController.doc_updateBarButtonTrackingViewsIfNecessary()();
}

- (void)doc_commonInitWithSourceObserver:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 hierarchyController];
  v5 = a1[161];
  v6 = 138412802;
  v7 = a1;
  v8 = 2048;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  _os_log_debug_impl(&dword_2493AC000, v3, OS_LOG_TYPE_DEBUG, "Initializing the %@ with hierarchy controller %p and data source %p", &v6, 0x20u);
}

- (void)showLocation:(uint64_t)a1 animated:(NSObject *)a2 withCompletionBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = @"YES";
  if (a1)
  {
    v2 = @"NO";
  }

  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&dword_2493AC000, a2, OS_LOG_TYPE_DEBUG, "Will show location %@, or empty location, if nil (%@)", &v3, 0x16u);
}

- (void)effectiveBrowserViewController
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 lastObject];
  v5 = [a2 lastObject];
  v6 = [v5 fileProviderItem];
  v7 = [a2 lastObject];
  v8 = [v7 sourceIdentifier];
  v9 = [a2 lastObject];
  v10 = 138413058;
  v11 = v4;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v8;
  v16 = 1024;
  v17 = [v9 isFPV2];
  _os_log_debug_impl(&dword_2493AC000, v3, OS_LOG_TYPE_DEBUG, "Last location is %@: item %@, source identifier %@, isFPV2 %d", &v10, 0x26u);
}

- (void)effectiveSearchController
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)navigationController:didShowViewController:animated:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)navigationController:didShowViewController:animated:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)navigationController:didShowViewController:animated:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)navigationController:didShowViewController:animated:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)navigationController:didShowViewController:animated:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)columnViewController:didShowItemControllers:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)columnViewController:didShowItemControllers:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end