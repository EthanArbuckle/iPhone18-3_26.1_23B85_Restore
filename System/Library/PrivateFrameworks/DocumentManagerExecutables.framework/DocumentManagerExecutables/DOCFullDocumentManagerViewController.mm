@interface DOCFullDocumentManagerViewController
- (BOOL)_canNavigateBack;
- (BOOL)_canPopViewController;
- (BOOL)_defaultLocationIsRecentsTab;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)canGoToEnclosingFolder;
- (BOOL)canLoadAdditionalParents;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformGoToEnclosingFolder;
- (BOOL)canResetHierarchyController;
- (BOOL)establishFirstResponder;
- (BOOL)establishFirstResponderIfNeeded;
- (BOOL)infoPanelPreviewingMultipleItems;
- (BOOL)isBrowserCurrentLocation:(id)location;
- (BOOL)isInUserTriggeredSelectionMode;
- (BOOL)prefersTabBarHidden;
- (BOOL)presentationContextShowsProvidersAsBrowserRoot;
- (DOCConcreteLocation)displayedRootLocation;
- (DOCFullDocumentManagerViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer;
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
- (id)_navigationControllerDimmingColorForParallaxTransition:(id)transition;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)currentItemCollectionViewController;
- (id)currentViewController;
- (id)pickerOperationTitleFor:(id)for useShortTitle:(BOOL)title;
- (id)provideColumnViewControllerWithContains:(id)contains;
- (id)provideContainerControllerAt:(id)at from:(id)from isUserInteraction:(BOOL)interaction isBrowsingTrash:(BOOL)trash;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)pickerOperationFor:(id)for;
- (unint64_t)effectiveTabSwitcherTab;
- (void)_navigateBack;
- (void)activateContainerViewControllersIfNeeded;
- (void)beginForcedNavigationTransitionChromeIfNeeded:(id)needed appearingViewController:(id)controller animated:(BOOL)animated;
- (void)beginLoadingAdditionalParents:(id)parents;
- (void)beginRenameOf:(id)of;
- (void)clearDroppedLocationsAfterSwitchingViewStyle;
- (void)columnViewController:(id)controller didShowItemControllers:(id)controllers;
- (void)configureColumnViewController:(id)controller;
- (void)createNewFolderIn:(id)in moving:(id)moving;
- (void)dataSource:(id)source didUpdate:(id)update animated:(BOOL)animated;
- (void)dataSource:(id)source willSwitchFrom:(int64_t)from to:(int64_t)to;
- (void)dealloc;
- (void)didChangeEnvironmentSupportsColumnView;
- (void)didCommitPreviewOf:(id)of;
- (void)didConfirmPickIn:(id)in;
- (void)didDismissSearchController:(id)controller;
- (void)didDismissSearchResultsController:(id)controller;
- (void)didFinishGatheringItemsAndThumbnailsWithSender:(id)sender;
- (void)didIndicateCancelPicker;
- (void)didPresentSearchController:(id)controller;
- (void)didPresentSearchResultsController:(id)controller;
- (void)didSelectItem:(id)item atParentLocation:(id)location wasAlreadySelected:(BOOL)selected onlyRevealIfColumn:(BOOL)column;
- (void)didSelectLocation:(id)location atParentLocation:(id)parentLocation;
- (void)didTapLocationOf:(id)of;
- (void)didTapOnUnselectableItem:(id)item;
- (void)didToggleEditStateWithEditing:(BOOL)editing in:(id)in;
- (void)dismissSearchAlongsideCoordinator:(id)coordinator;
- (void)doc_commonInitWithSourceObserver:(id)observer;
- (void)doc_updateBarButtonTrackingViewsIfNecessary;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)effectiveBrowserViewController;
- (void)effectiveSearchController;
- (void)endForcedNavigationTransitionChrome:(id)chrome appearingViewController:(id)controller;
- (void)ensureInternalNavigationControllerIsInstalled;
- (void)fullDocumentManagerViewControllerDidFinishLoading:(id)loading;
- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location;
- (void)installDebugMenuGesture;
- (void)invokeDebugGathering;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performConnectToServer:(id)server;
- (void)performCreateDocument;
- (void)performCreateDocumentOrOpenNewWindow:(id)window;
- (void)performDismiss:(id)dismiss;
- (void)performEjectMedium:(id)medium;
- (void)performFind:(id)find;
- (void)performGoBackInHistory:(id)history;
- (void)performGoForwardInHistory:(id)history;
- (void)performGoToLocation:(id)location;
- (void)performGroupByDate:(id)date;
- (void)performGroupByKind:(id)kind;
- (void)performGroupByNone:(id)none;
- (void)performGroupBySharedBy:(id)by;
- (void)performGroupBySize:(id)size;
- (void)performShowDebugMenu:(id)menu;
- (void)performSortByDateAdded:(id)added;
- (void)performSortByDateCreated:(id)created;
- (void)performSortByDateLastOpened:(id)opened;
- (void)performSortByDateModified:(id)modified;
- (void)performSortByKind:(id)kind;
- (void)performSortByName:(id)name;
- (void)performSortBySharedBy:(id)by;
- (void)performSortBySize:(id)size;
- (void)performSortByTags:(id)tags;
- (void)performViewAsColumns:(id)columns;
- (void)performViewAsIcons:(id)icons;
- (void)performViewAsList:(id)list;
- (void)performViewAsUserSizeLarger:(id)larger;
- (void)performViewAsUserSizeSmaller:(id)smaller;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)preloadLaunchServiceDatabase;
- (void)presentDebugMenuForLongPress:(id)press;
- (void)presentDebugMenuForMultipleTaps:(id)taps;
- (void)resetNavigationStepwise;
- (void)revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed updateLastUsedDate:(BOOL)date completion:(id)completion;
- (void)revealLocation:(id)location animated:(BOOL)animated completion:(id)completion;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items;
- (void)setAllowsPickingMultipleItems:(BOOL)items;
- (void)setCustomActions:(id)actions;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEnvironmentSupportsColumnView:(BOOL)view;
- (void)setPickerContext:(id)context;
- (void)setRootViewController:(id)controller;
- (void)setShortDebugID:(id)d;
- (void)showLocation:(id)location animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)showLocation:(id)location fromRootAnimated:(BOOL)animated withCompletionBlock:(id)block;
- (void)splitViewWillChangeFrom:(int64_t)from to:(int64_t)to alongsideCoordinator:(id)coordinator;
- (void)splitViewWillDidExpand;
- (void)swift_commonInitWith:(id)with;
- (void)swift_navigationController:(id)controller didShow:(id)show animated:(BOOL)animated;
- (void)swift_navigationController:(id)controller willShow:(id)show animated:(BOOL)animated;
- (void)swift_viewDidLoad;
- (void)updateAvailableDisplayModesWithAnimated:(BOOL)animated;
- (void)updateCustomActions;
- (void)updateNavigationBarPrefersLargeTitles;
- (void)updateRelatedViewControllersWithCurrentHierarchy;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
- (void)willDismissSearchResultsController:(id)controller;
- (void)willPresentSearchController:(id)controller;
- (void)willPresentSearchResultsController:(id)controller;
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

- (DOCFullDocumentManagerViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer
{
  observerCopy = observer;
  v10.receiver = self;
  v10.super_class = DOCFullDocumentManagerViewController;
  v7 = [(UIDocumentBrowserViewController *)&v10 initWithConfiguration:configuration];
  v8 = v7;
  if (v7)
  {
    [(DOCFullDocumentManagerViewController *)v7 doc_commonInitWithSourceObserver:observerCopy];
  }

  return v8;
}

- (void)doc_commonInitWithSourceObserver:(id)observer
{
  observerCopy = observer;
  [(DOCFullDocumentManagerViewController *)self preloadLaunchServiceDatabase];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [uUIDString substringToIndex:6];
  shortDebugID = self->_shortDebugID;
  self->_shortDebugID = v7;

  v9 = objc_alloc_init(_TtC26DocumentManagerExecutables27DOCDisplayModeChangeHandler);
  displayModeHandler = self->_displayModeHandler;
  self->_displayModeHandler = v9;

  objc_storeWeak(&self->_sourceObserver, observerCopy);
  v11 = [_TtC26DocumentManagerExecutables25DOCItemCollectionViewPool alloc];
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  v13 = [(DOCItemCollectionViewPool *)v11 initWithConfiguration:configuration];
  itemCollectionViewPool = self->_itemCollectionViewPool;
  self->_itemCollectionViewPool = v13;

  v15 = [_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController alloc];
  configuration2 = [(UIDocumentBrowserViewController *)self configuration];
  v17 = [(DOCFullDocumentManagerNavigationController *)v15 initWithConfiguration:configuration2];
  internalNavigationController = self->_internalNavigationController;
  self->_internalNavigationController = v17;

  v19 = [_TtC26DocumentManagerExecutables22DOCHierarchyController alloc];
  configuration3 = [(UIDocumentBrowserViewController *)self configuration];
  v21 = [(DOCHierarchyController *)v19 initWithConfiguration:configuration3 sourceObserver:observerCopy minParentLocations:100];
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
  configuration4 = [(UIDocumentBrowserViewController *)self configuration];
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v27 = [(DOCDocumentManager *)v24 initWithConfiguration:configuration4 sourceObserver:observerCopy hierarchyController:hierarchyController];
  [(DOCFullDocumentManagerViewController *)self setDocumentManager:v27];

  v28 = [_TtC26DocumentManagerExecutables22DOCLocationChangePacer alloc];
  hierarchyController2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v30 = [(DOCLocationChangePacer *)v28 initWithHierarchyController:hierarchyController2];
  locationChangePacer = self->_locationChangePacer;
  self->_locationChangePacer = v30;

  v32 = [_TtC26DocumentManagerExecutables30DOCBrowserNavigationDataSource alloc];
  configuration5 = [(UIDocumentBrowserViewController *)self configuration];
  sourceObserver = [(DOCFullDocumentManagerViewController *)self sourceObserver];
  v35 = [(DOCBrowserNavigationDataSource *)v32 initWithConfiguration:configuration5 sourceObserver:sourceObserver];
  dataSource = self->_dataSource;
  self->_dataSource = v35;

  dataSource = [(DOCFullDocumentManagerViewController *)self dataSource];
  [dataSource setItemProvider:self];

  dataSource2 = [(DOCFullDocumentManagerViewController *)self dataSource];
  [dataSource2 setUpdateObserver:self];

  dataSource3 = [(DOCFullDocumentManagerViewController *)self dataSource];
  hierarchyController3 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [hierarchyController3 setDelegate:dataSource3];

  [(UINavigationController *)self->_internalNavigationController setDelegate:self];
  documentManager = [(DOCFullDocumentManagerViewController *)self documentManager];
  [documentManager setDocumentBrowser:self];

  WeakRetained = objc_loadWeakRetained(&self->_sourceObserver);
  [(DOCFullDocumentManagerViewController *)self swift_commonInitWith:WeakRetained];

  [(DOCFullDocumentManagerViewController *)self setCustomActions:MEMORY[0x277CBEBF8]];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_fullDocumentManagerViewControllerDidFinishLoading_ name:@"DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_itemCollectionViewControllerDidLoad name:@"DOCItemCollectionViewDidLoadContents" object:0];

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

- (void)setShortDebugID:(id)d
{
  objc_storeStrong(&self->_shortDebugID, d);
  dCopy = d;
  [(DOCBrowserNavigationDataSource *)self->_dataSource setShortDebugID:dCopy];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"DOCFullDocumentManagerViewControllerDidFinishLoadingNotificationName" object:0];

  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"lastLocation"];
  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"effectiveRootLocation"];
  [(DOCHierarchyController *)self->_hierarchyController removeObserver:self forKeyPath:@"locations"];
  if ([(DOCFullDocumentManagerViewController *)self isViewLoaded])
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v12 = pathCopy;
  if (DOCFullDocumentManagerViewControllerContext == context)
  {
    if (([pathCopy isEqualToString:@"locations"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"lastLocation") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"effectiveRootLocation"))
    {
      [(DOCFullDocumentManagerViewController *)self updateRelatedViewControllersWithCurrentHierarchy];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"DOCFullDocumentManagerViewController.m" lineNumber:208 description:{@"Unhandled keyPath: %@", v12}];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DOCFullDocumentManagerViewController;
    [(DOCFullDocumentManagerViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (BOOL)_defaultLocationIsRecentsTab
{
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  defaultLocation = [configuration defaultLocation];
  sourceIdentifier = [defaultLocation sourceIdentifier];
  v5 = *MEMORY[0x277D060F8];

  if (sourceIdentifier != v5)
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
    hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    [hierarchyController resetWithDefaultLocationWithAnimated:0];
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
    navigationBar = [(UINavigationController *)self->_internalNavigationController navigationBar];
    [navigationBar addGestureRecognizer:self->_multiTapDebugGestureRecognizer];
  }

  [(DOCFullDocumentManagerViewController *)self swift_viewDidLoad];
  [(DOCFullDocumentManagerViewController *)self installDebugMenuGesture];
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = DOCFullDocumentManagerViewController;
  delegateCopy = delegate;
  [(UIDocumentBrowserViewController *)&v6 setDelegate:delegateCopy];
  v5 = [(DOCFullDocumentManagerViewController *)self documentManager:v6.receiver];
  [v5 setUiBrowserDelegate:delegateCopy];
}

- (BOOL)_canNavigateBack
{
  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  viewControllers = [internalNavigationController viewControllers];
  v4 = [viewControllers count] > 1;

  return v4;
}

- (void)_navigateBack
{
  if ([(DOCFullDocumentManagerViewController *)self _canPopViewController]&& [(DOCFullDocumentManagerViewController *)self _canNavigateBack])
  {
    [(DOCFullDocumentManagerViewController *)self setEditing:0];
    internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    v3 = [internalNavigationController popViewControllerAnimated:1];
  }
}

- (void)setAllowsPickingMultipleItems:(BOOL)items
{
  itemsCopy = items;
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v16 setAllowsPickingMultipleItems:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  viewControllers = [internalNavigationController viewControllers];

  v7 = [viewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setAllowsPickingMultipleItems:itemsCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  [(DOCFullDocumentManagerViewController *)self updateCustomActions];
}

- (BOOL)canResetHierarchyController
{
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  isResetBeingPerformed = [hierarchyController isResetBeingPerformed];

  return isResetBeingPerformed ^ 1;
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_rootViewController != controllerCopy)
  {
    v20 = controllerCopy;
    [(UIViewController *)controllerCopy doc_removeFromParentWithRemoveSubviewBlock:0];
    v6 = self->_rootViewController;
    objc_storeStrong(&self->_rootViewController, controller);
    internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    viewControllers = [internalNavigationController viewControllers];
    v9 = [viewControllers mutableCopy];

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
      dataSource = [(DOCFullDocumentManagerViewController *)self dataSource];
      v10 = [dataSource currentViewStyle] != 3 || objc_msgSend(v9, "count") == 0;
    }

    hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    lastLocation = [hierarchyController lastLocation];

    if (lastLocation)
    {
      sourceIdentifier = [lastLocation sourceIdentifier];
      if (sourceIdentifier == *MEMORY[0x277D05D98])
      {
        v16 = 0;
      }

      else
      {
        sourceIdentifier2 = [lastLocation sourceIdentifier];
        v16 = sourceIdentifier2 != *MEMORY[0x277D05DB0];
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

      internalNavigationController2 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
      [internalNavigationController2 setViewControllers:v9];
    }

    else
    {
      internalNavigationController3 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
      [internalNavigationController3 setViewControllers:MEMORY[0x277CBEBF8]];

      if (![(DOCFullDocumentManagerViewController *)self canResetHierarchyController])
      {
LABEL_27:

        controllerCopy = v20;
        goto LABEL_28;
      }

      internalNavigationController2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [internalNavigationController2 resetWithDefaultLocationWithAnimated:0];
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  rootViewController = [(DOCFullDocumentManagerViewController *)self rootViewController];

  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  internalNavigationController2 = internalNavigationController;
  if (rootViewController)
  {
    viewControllers = [internalNavigationController viewControllers];
    rootViewController2 = [(DOCFullDocumentManagerViewController *)self rootViewController];
    v9 = [viewControllers containsObject:rootViewController2];

    if (!v9)
    {
      return;
    }

    internalNavigationController2 = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    rootViewController3 = [(DOCFullDocumentManagerViewController *)self rootViewController];
    v11 = [internalNavigationController2 popToViewController:rootViewController3 animated:animatedCopy];
  }

  else
  {
    v12 = [internalNavigationController popToRootViewControllerAnimated:animatedCopy];
  }
}

- (id)currentViewController
{
  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  topViewController = [internalNavigationController topViewController];

  return topViewController;
}

- (id)currentItemCollectionViewController
{
  effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)self effectiveBrowserViewController];
  contentViewController = [effectiveBrowserViewController contentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = contentViewController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)showLocation:(id)location animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  locationCopy = location;
  blockCopy = block;
  v10 = MEMORY[0x277D06310];
  v11 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DOCFullDocumentManagerViewController showLocation:locationCopy animated:v11 withCompletionBlock:?];
  }

  self->_viewDidLoadResetLocationDisabled = locationCopy != 0;
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v13 = hierarchyController;
  if (locationCopy)
  {
    [hierarchyController resetWith:locationCopy animated:animatedCopy completionHandler:blockCopy];
  }

  else
  {
    emptyLocation = [MEMORY[0x277D05EA8] emptyLocation];
    [v13 resetWith:emptyLocation animated:animatedCopy completionHandler:blockCopy];
  }
}

- (void)showLocation:(id)location fromRootAnimated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  locationCopy = location;
  blockCopy = block;
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

  self->_viewDidLoadResetLocationDisabled = locationCopy != 0;
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  v13 = hierarchyController;
  if (locationCopy)
  {
    [hierarchyController resetFromRootWith:locationCopy animated:animatedCopy completionHandler:blockCopy];
  }

  else
  {
    emptyLocation = [MEMORY[0x277D05EA8] emptyLocation];
    [v13 resetFromRootWith:emptyLocation animated:animatedCopy completionHandler:blockCopy];
  }
}

- (void)revealLocation:(id)location animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  locationCopy = location;
  completionCopy = completion;
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

  self->_viewDidLoadResetLocationDisabled = locationCopy != 0;
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  emptyLocation = locationCopy;
  if (!locationCopy)
  {
    emptyLocation = [MEMORY[0x277D05EA8] emptyLocation];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__DOCFullDocumentManagerViewController_revealLocation_animated_completion___block_invoke;
  v15[3] = &unk_278FA1EA8;
  v16 = completionCopy;
  v14 = completionCopy;
  [hierarchyController revealLocation:emptyLocation animated:animatedCopy completion:v15];
  if (!locationCopy)
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

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v20 setAdditionalTrailingNavigationBarButtonItems:items];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  viewControllers = [internalNavigationController viewControllers];

  v6 = [viewControllers countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (v11 = v10, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v11, (isKindOfClass))
        {
          v13 = objc_alloc(MEMORY[0x277CBEA60]);
          additionalTrailingNavigationBarButtonItems = [(UIDocumentBrowserViewController *)self additionalTrailingNavigationBarButtonItems];
          v15 = [v13 initWithArray:additionalTrailingNavigationBarButtonItems copyItems:1];
          [v10 setAdditionalTrailingNavigationBarButtonItems:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v18 setAdditionalLeadingNavigationBarButtonItems:items];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
  viewControllers = [internalNavigationController viewControllers];

  v6 = [viewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_alloc(MEMORY[0x277CBEA60]);
          additionalLeadingNavigationBarButtonItems = [(UIDocumentBrowserViewController *)self additionalLeadingNavigationBarButtonItems];
          v13 = [v11 initWithArray:additionalLeadingNavigationBarButtonItems copyItems:1];
          [v10 setAdditionalLeadingNavigationBarButtonItems:v13];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(DOCFullDocumentManagerViewController *)self isEditing]!= editing)
  {
    v10.receiver = self;
    v10.super_class = DOCFullDocumentManagerViewController;
    [(UIDocumentBrowserViewController *)&v10 setEditing:editingCopy animated:animatedCopy];
    [(DOCFullDocumentManagerViewController *)self willChangeValueForKey:@"editing"];
    internalNavigationController = [(DOCFullDocumentManagerViewController *)self internalNavigationController];
    topViewController = [internalNavigationController topViewController];

    v9 = topViewController;
    objc_opt_class();
    LOBYTE(topViewController) = objc_opt_isKindOfClass();

    if ((topViewController & 1) == 0)
    {
      [v9 setEditing:editingCopy animated:animatedCopy];
    }

    [(DOCFullDocumentManagerViewController *)self didChangeValueForKey:@"editing"];
  }
}

- (_TtC26DocumentManagerExecutables29DOCBrowserContainerController)effectiveBrowserViewController
{
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  locations = [hierarchyController locations];

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

  lastObject = [locations lastObject];
  fileProviderItem = [lastObject fileProviderItem];

  if (!fileProviderItem || ([fileProviderItem isFolder] & 1) != 0)
  {
    dataSource = [(DOCFullDocumentManagerViewController *)self dataSource];
    currentContainers = [dataSource currentContainers];
    v11 = currentContainers;
LABEL_8:
    lastObject2 = [currentContainers lastObject];
    goto LABEL_9;
  }

  dataSource2 = [(DOCFullDocumentManagerViewController *)self dataSource];
  currentContainers2 = [dataSource2 currentContainers];
  v17 = [currentContainers2 count] - 2;

  dataSource = [(DOCFullDocumentManagerViewController *)self dataSource];
  currentContainers = [dataSource currentContainers];
  v11 = currentContainers;
  if (v17 < 0)
  {
    goto LABEL_8;
  }

  lastObject2 = [currentContainers objectAtIndexedSubscript:v17];
LABEL_9:
  v13 = lastObject2;

  return v13;
}

- (_TtC26DocumentManagerExecutables19DOCSearchController)effectiveSearchController
{
  dataSource = [(DOCFullDocumentManagerViewController *)self dataSource];
  currentViewControllers = [dataSource currentViewControllers];
  lastObject = [currentViewControllers lastObject];
  navigationItem = [lastObject navigationItem];
  searchController = [navigationItem searchController];

  if (searchController || (-[DOCFullDocumentManagerViewController currentViewController](self, "currentViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 navigationItem], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "searchController"), searchController = objc_claimAutoreleasedReturnValue(), v9, v8, searchController))
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

  return searchController;
}

- (BOOL)_canPopViewController
{
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  isFetchingLocations = [hierarchyController isFetchingLocations];

  return isFetchingLocations ^ 1;
}

- (BOOL)canGoToEnclosingFolder
{
  lastLocation = [(DOCHierarchyController *)self->_hierarchyController lastLocation];
  if ([lastLocation isRoot])
  {
    v4 = 0;
  }

  else
  {
    lastLocation2 = [(DOCHierarchyController *)self->_hierarchyController lastLocation];
    fileProviderItem = [lastLocation2 fileProviderItem];
    v4 = fileProviderItem != 0;
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

- (void)setCustomActions:(id)actions
{
  v4.receiver = self;
  v4.super_class = DOCFullDocumentManagerViewController;
  [(UIDocumentBrowserViewController *)&v4 setCustomActions:actions];
  [(DOCFullDocumentManagerViewController *)self updateCustomActions];
}

- (void)dismissSearchAlongsideCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  effectiveSearchController = [(DOCFullDocumentManagerViewController *)self effectiveSearchController];
  if ([effectiveSearchController isActive])
  {
    [effectiveSearchController deactivateAlongsideContainingTransitionCoordinator:coordinatorCopy];
  }
}

- (void)beginForcedNavigationTransitionChromeIfNeeded:(id)needed appearingViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  neededCopy = needed;
  controllerCopy = controller;
  lastOperation = [neededCopy lastOperation];
  v10 = _itemCollectionViewControllerIn(controllerCopy);
  v11 = v10;
  if (animatedCopy && lastOperation == 2 && [v10 needsForcedUnderNavBarAppearanceOnAppear])
  {
    navigationBar = [neededCopy navigationBar];
    standardAppearance = [navigationBar standardAppearance];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setScrollEdgeAppearance:standardAppearance];

    self->_resetNavBarScrollEdgeAfterPop = 1;
  }
}

- (void)endForcedNavigationTransitionChrome:(id)chrome appearingViewController:(id)controller
{
  if (self->_resetNavBarScrollEdgeAfterPop)
  {
    navigationItem = [controller navigationItem];
    [navigationItem setScrollEdgeAppearance:0];

    self->_resetNavBarScrollEdgeAfterPop = 0;
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController)
  {
    [(DOCFullDocumentManagerViewController *)self swift_navigationController:controller willShow:viewController animated:animated];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v48 = a2;
  v64 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(DOCFullDocumentManagerViewController *)self endForcedNavigationTransitionChrome:controllerCopy appearingViewController:viewControllerCopy];
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [hierarchyController invalidateAllAssertions];

  hierarchyController2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  locations = [hierarchyController2 locations];

  v53 = locations;
  v13 = [locations count];
  viewControllers = [controllerCopy viewControllers];
  v15 = [viewControllers count];
  objc_opt_class();
  v52 = viewControllers;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v49 = v13;
    v50 = animatedCopy;
    v16 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = controllerCopy;
    viewControllers2 = [controllerCopy viewControllers];
    v18 = [viewControllers2 countByEnumeratingWithState:&v58 objects:v63 count:16];
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
            objc_enumerationMutation(viewControllers2);
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

        v19 = [viewControllers2 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v19);
    }

    v23 = v49;
    if (!v49)
    {
      [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
    }

    objc_opt_class();
    controllerCopy = v51;
    if (objc_opt_isKindOfClass())
    {
      hierarchyController3 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      effectiveRootLocation = [hierarchyController3 effectiveRootLocation];

      if (effectiveRootLocation)
      {
        hierarchyController4 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
        effectiveLocations = [hierarchyController4 effectiveLocations];
        v23 = [effectiveLocations count];
      }
    }

    if (v23 > [v16 count] && -[DOCFullDocumentManagerViewController updateLocationsAfterPopTransition](self, "updateLocationsAfterPopTransition"))
    {
      childViewControllers = [v51 childViewControllers];
      firstObject = [childViewControllers firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      childViewControllers2 = [v51 childViewControllers];
      v32 = [childViewControllers2 count] - (isKindOfClass & 1);

      if (v32 <= 0)
      {
        [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
      }

      if ((v23 - v32) <= 0)
      {
        [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
      }

      hierarchyController5 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [hierarchyController5 removeTrailingLocationCount:v23 - v32 animated:0];

      controllerCopy = v51;
    }

    animatedCopy = v50;
  }

  else if (v15)
  {
    if (v15 != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v48 object:self file:@"DOCFullDocumentManagerViewController.m" lineNumber:631 description:{@"If we are transitioning to a view controller that is not the browser view controller, it should be the only one in the view hierarchy"}];
    }

    v42 = viewControllerCopy;
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if ((v43 & 1) == 0 && v13 >= 2)
    {
      [DOCFullDocumentManagerViewController navigationController:didShowViewController:animated:];
    }

    if ([(DOCFullDocumentManagerViewController *)self canResetHierarchyController])
    {
      hierarchyController6 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      hasPendingLocationChange = [hierarchyController6 hasPendingLocationChange];

      if ((hasPendingLocationChange & 1) == 0)
      {
        hierarchyController7 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
        [hierarchyController7 reset];
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
    containerControllers = [viewControllerCopy containerControllers];
    v35 = [containerControllers countByEnumeratingWithState:&v54 objects:v62 count:16];
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
            objc_enumerationMutation(containerControllers);
          }

          [*(*(&v54 + 1) + 8 * j) setPreventAppearanceForwarding:{0, v48}];
        }

        v36 = [containerControllers countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v36);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewControllerCopy setPreventAppearanceForwarding:0];
    }
  }

  [(DOCFullDocumentManagerViewController *)self setUpdateLocationsAfterPopTransition:0, v48];
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier = [configuration sceneIdentifier];
  v41 = [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:sceneIdentifier];
  [v41 updateLocationTitleFromCurrentState];

  [(DOCFullDocumentManagerViewController *)self swift_navigationController:controllerCopy didShow:viewControllerCopy animated:animatedCopy];
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  if ([hierarchyController isFetchingLocations])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(DOCFullDocumentManagerViewController *)self isEditing]^ 1;
  }

  return v5;
}

- (id)_navigationControllerDimmingColorForParallaxTransition:(id)transition
{
  traitCollection = [(DOCFullDocumentManagerViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    v6 = [blackColor colorWithAlphaComponent:0.03];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)columnViewController:(id)controller didShowItemControllers:(id)controllers
{
  v31 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  hierarchyController = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  [hierarchyController invalidateAllAssertions];

  hierarchyController2 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
  locations = [hierarchyController2 locations];

  v10 = [locations count];
  if (controller)
  {
    v11 = v10;
    v12 = [MEMORY[0x277CBEB18] arrayWithArray:controllersCopy];
    if (!v11)
    {
      [DOCFullDocumentManagerViewController columnViewController:didShowItemControllers:];
    }

    hierarchyController3 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
    effectiveRootLocation = [hierarchyController3 effectiveRootLocation];

    if (effectiveRootLocation)
    {
      hierarchyController4 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      effectiveLocations = [hierarchyController4 effectiveLocations];
      v11 = [effectiveLocations count];
    }

    if (v11 > [v12 count] && -[DOCFullDocumentManagerViewController updateLocationsAfterPopTransition](self, "updateLocationsAfterPopTransition"))
    {
      if (v11 <= 1)
      {
        [DOCFullDocumentManagerViewController columnViewController:didShowItemControllers:];
      }

      hierarchyController5 = [(DOCFullDocumentManagerViewController *)self hierarchyController];
      [hierarchyController5 removeTrailingLocationCount:1 animated:0];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = controllersCopy;
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
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier = [configuration sceneIdentifier];
  v25 = [DOCTabbedBrowserViewController globalTabbedBrowserControllerForIdentifier:sceneIdentifier];
  [v25 updateLocationTitleFromCurrentState];
}

- (void)revealDocumentAtURL:(id)l importIfNeeded:(BOOL)needed updateLastUsedDate:(BOOL)date completion:(id)completion
{
  dateCopy = date;
  lCopy = l;
  completionCopy = completion;
  [(DOCFullDocumentManagerViewController *)self dismissSearch];
  [(DOCFullDocumentManagerViewController *)self setEditing:0 animated:1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke;
  aBlock[3] = &unk_278FA2060;
  v12 = completionCopy;
  v35 = v12;
  v13 = _Block_copy(aBlock);
  configuration = [(UIDocumentBrowserViewController *)self configuration];
  sceneIdentifier = [configuration sceneIdentifier];
  v16 = [_TtC26DocumentManagerExecutables21DOCInteractionManager sharedManagerFor:sceneIdentifier];
  [v16 setLastSelectedNode:0];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_3;
  v29[3] = &unk_278FA20B0;
  v17 = v13;
  v32 = v17;
  v18 = lCopy;
  neededCopy = needed;
  v30 = v18;
  selfCopy = self;
  v19 = _Block_copy(v29);
  v20 = v19;
  if (dateCopy)
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
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __105__DOCFullDocumentManagerViewController_revealDocumentAtURL_importIfNeeded_updateLastUsedDate_completion___block_invoke_7;
    v25[3] = &unk_278FA2100;
    v21 = &v26;
    v26 = v20;
    v24 = v20;
    [defaultManager fetchItemForURL:v18 completionHandler:v25];
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
    primaryContentScrollView = [(DOCFullDocumentManagerViewController *)self primaryContentScrollView];
    [primaryContentScrollView _scrollToTopIfPossible:1];
  }
}

- (void)setEnvironmentSupportsColumnView:(BOOL)view
{
  if (self->_environmentSupportsColumnView != view)
  {
    self->_environmentSupportsColumnView = view;
    [(DOCFullDocumentManagerViewController *)self didChangeEnvironmentSupportsColumnView];
  }
}

- (void)setPickerContext:(id)context
{
  contextCopy = context;
  if (self->_pickerContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_pickerContext, context);
    [(DOCPickerFilenameView *)self->_pickerFilenameView setPickerContext:self->_pickerContext];
    [(DOCHierarchyController *)self->_hierarchyController setPickerContext:self->_pickerContext];
    contextCopy = v6;
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

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v8 = 0;
  v5 = objc_allocWithZone(type metadata accessor for DOCModalBlurViewControllerTransition());
  v6 = DOCModalBlurViewControllerTransition.init(direction:)(&v8);

  return v6;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v6 = 1;
  v3 = objc_allocWithZone(type metadata accessor for DOCModalBlurViewControllerTransition());
  v4 = DOCModalBlurViewControllerTransition.init(direction:)(&v6);

  return v4;
}

- (void)invokeDebugGathering
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.invokeDebugGathering()();
}

- (void)installDebugMenuGesture
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.installDebugMenuGesture()();
}

- (void)presentDebugMenuForLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  if ([pressCopy state] == 1)
  {
    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

- (void)presentDebugMenuForMultipleTaps:(id)taps
{
  tapsCopy = taps;
  selfCopy = self;
  if ([tapsCopy state] == 3)
  {
    DOCFullDocumentManagerViewController.presentDebugMenu()();
  }
}

- (void)performShowDebugMenu:(id)menu
{
  if (menu)
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

  DOCFullDocumentManagerViewController.presentDebugMenu()();

  outlined destroy of Any?(v6);
}

- (void)didTapOnUnselectableItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didTapOn(unselectableItem:)(itemCopy);
}

- (void)didConfirmPickIn:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCFullDocumentManagerViewController.didConfirmPick(in:)(in);
  swift_unknownObjectRelease();
}

- (id)pickerOperationTitleFor:(id)for useShortTitle:(BOOL)title
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = DOCFullDocumentManagerViewController.pickerOperationTitle(for:useShortTitle:)(for, title);
  v10 = v9;
  swift_unknownObjectRelease();

  v11 = MEMORY[0x24C1FAD20](v8, v10);

  return v11;
}

- (int64_t)pickerOperationFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = DOCFullDocumentManagerViewController._pickerOperation(for:)(for);
  if (_UISolariumEnabled())
  {
    v7 = [(DOCFullDocumentManagerViewController *)selfCopy pickerOperationTitleFor:for useShortTitle:0];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    pickerFilenameView = [(DOCFullDocumentManagerViewController *)selfCopy pickerFilenameView];
    if (pickerFilenameView)
    {
      v12 = pickerFilenameView;
      (*((*MEMORY[0x277D85000] & *pickerFilenameView) + 0x128))(v8, v10);
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
  selfCopy = self;
  v3 = DOCFullDocumentManagerViewController.doc_documentScannerReceivingTarget.getter();

  return v3;
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)selfCopy effectiveBrowserViewController];
  if (effectiveBrowserViewController)
  {
    v6 = effectiveBrowserViewController;
    v7 = (*((*MEMORY[0x277D85000] & *effectiveBrowserViewController) + 0xE8))();

    if (v7)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      if (swift_dynamicCastClass())
      {

        [(DOCFullDocumentManagerViewController *)cancelCopy dismissViewControllerAnimated:1 completion:0];
      }

      else
      {

        cancelCopy = selfCopy;
        selfCopy = v7;
      }
    }
  }
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)selfCopy effectiveBrowserViewController];
  if (effectiveBrowserViewController && (v9 = effectiveBrowserViewController, v10 = (*((*MEMORY[0x277D85000] & *effectiveBrowserViewController) + 0xE8))(), v9, v10))
  {
    type metadata accessor for DOCItemCollectionViewController(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = controllerCopy;
      v14 = controllerCopy;
      v10 = v10;
      specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(scanCopy, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v13);
    }

    else
    {
    }

    selfCopy = v10;
  }

  else
  {
  }
}

- (UIViewControllerTransitionCoordinator)hierarchyChangeTransitionCoordinator
{
  selfCopy = self;
  internalNavigationController = [(DOCFullDocumentManagerViewController *)selfCopy internalNavigationController];
  transitionCoordinator = [(UINavigationController *)internalNavigationController transitionCoordinator];

  return transitionCoordinator;
}

- (void)dataSource:(id)source willSwitchFrom:(int64_t)from to:(int64_t)to
{
  sourceCopy = source;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.dataSource(_:willSwitchFrom:to:)(to);
}

- (void)dataSource:(id)source didUpdate:(id)update animated:(BOOL)animated
{
  animatedCopy = animated;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sourceCopy = source;
  selfCopy = self;
  DOCFullDocumentManagerViewController.dataSource(_:didUpdate:animated:)(sourceCopy, v8, animatedCopy);
}

- (void)clearDroppedLocationsAfterSwitchingViewStyle
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  selfCopy = self;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [(DOCFullDocumentManagerViewController *)selfCopy setDroppedLocationsAfterSwitchingDisplayMode:isa];
}

- (BOOL)presentationContextShowsProvidersAsBrowserRoot
{
  selfCopy = self;
  traitCollection = [(DOCFullDocumentManagerViewController *)selfCopy traitCollection];
  sourceOutlineStyle = [traitCollection sourceOutlineStyle];

  return sourceOutlineStyle == 1;
}

- (id)provideContainerControllerAt:(id)at from:(id)from isUserInteraction:(BOOL)interaction isBrowsingTrash:(BOOL)trash
{
  atCopy = at;
  fromCopy = from;
  selfCopy = self;
  v13 = DOCFullDocumentManagerViewController.provideContainerController(at:from:isUserInteraction:isBrowsingTrash:)(atCopy, from, interaction, trash);

  return v13;
}

- (id)provideColumnViewControllerWithContains:(id)contains
{
  type metadata accessor for DOCBrowserContainerController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  configuration = [(UIDocumentBrowserViewController *)selfCopy configuration];
  v7 = objc_allocWithZone(type metadata accessor for DOCColumnViewController(0));
  v8 = specialized DOCColumnViewController.init(configuration:)(configuration);

  (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(v4);
  [(DOCFullDocumentManagerViewController *)selfCopy configureColumnViewController:v8];

  return v8;
}

- (void)configureColumnViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.configureColumnViewController(_:)(controllerCopy);
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (void)performFind:(id)find
{
  findCopy = find;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.performFind(_:)();
}

- (BOOL)canPerformGoToEnclosingFolder
{
  selfCopy = self;
  dataSource = [(DOCFullDocumentManagerViewController *)selfCopy dataSource];
  v4 = (*((*MEMORY[0x277D85000] & *dataSource) + 0x188))();

  if (v4 == 3)
  {
    _canNavigateBack = 0;
  }

  else
  {
    _canNavigateBack = [(DOCFullDocumentManagerViewController *)selfCopy _canNavigateBack];
  }

  return _canNavigateBack;
}

- (void)performGoBackInHistory:(id)history
{
  historyCopy = history;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.performGoBackInHistory(_:)(closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getterpartial apply, 0);
}

- (void)performGoForwardInHistory:(id)history
{
  historyCopy = history;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.performGoBackInHistory(_:)(closure #1 in DOCFullDocumentManagerViewController.browserHistoryController.getterpartial apply, 1);
}

- (void)performViewAsIcons:(id)icons
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(0);
}

- (void)performViewAsList:(id)list
{
  v4 = objc_opt_self();
  selfCopy = self;
  outlineView = [v4 outlineView];
  LODWORD(v4) = [outlineView isEnabled];

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

- (void)performViewAsColumns:(id)columns
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.changeDisplayModeAndNotify(_:)(3);
}

- (void)performViewAsUserSizeSmaller:(id)smaller
{
  v4 = 1;
  selfCopy = self;
  DOCFullDocumentManagerViewController.changeUserSizeSetting(direction:)(&v4);
}

- (void)performViewAsUserSizeLarger:(id)larger
{
  v4 = 0;
  selfCopy = self;
  DOCFullDocumentManagerViewController.changeUserSizeSetting(direction:)(&v4);
}

- (void)performSortByName:(id)name
{
  v4 = 2;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateModified:(id)modified
{
  v4 = 0;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateCreated:(id)created
{
  v4 = 7;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateLastOpened:(id)opened
{
  v4 = 1;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByDateAdded:(id)added
{
  v4 = 8;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortBySize:(id)size
{
  v4 = 4;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByKind:(id)kind
{
  v4 = 5;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortByTags:(id)tags
{
  v4 = 3;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performSortBySharedBy:(id)by
{
  v4 = 6;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performSortBy(_:)(&v4);
}

- (void)performGroupByNone:(id)none
{
  noneCopy = none;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.performGroupByNone(_:)();
}

- (void)performGroupByKind:(id)kind
{
  v4 = 4;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupByDate:(id)date
{
  v4 = 0;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupBySize:(id)size
{
  v4 = 3;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performGroupBySharedBy:(id)by
{
  v4 = 5;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performGroupBy(_:)(&v4);
}

- (void)performCreateDocumentOrOpenNewWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performCreateDocumentOrOpenNewWindow(_:)(windowCopy);
}

- (void)performCreateDocument
{
  selfCopy = self;
  documentManager = [(DOCFullDocumentManagerViewController *)selfCopy documentManager];
  (*((*MEMORY[0x277D85000] & *documentManager) + 0x110))(0);
}

- (void)performEjectMedium:(id)medium
{
  selfCopy = self;
  effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)selfCopy effectiveBrowserViewController];
  if (effectiveBrowserViewController)
  {
    v4 = effectiveBrowserViewController;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *effectiveBrowserViewController) + 0xE8))();

    if (v6)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = (*((*v5 & *v7) + 0xA68))();
        (*((*v5 & v8->super.super.super.super.isa) + 0x288))(selfCopy);
      }

      else
      {
        v8 = selfCopy;
        selfCopy = v6;
      }
    }
  }
}

- (void)performGoToLocation:(id)location
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.presentGoToLocation()();
}

- (void)performConnectToServer:(id)server
{
  v5 = objc_opt_self();
  serverCopy = server;
  selfCopy = self;
  configuration = [(UIDocumentBrowserViewController *)selfCopy configuration];
  sceneIdentifier = [(DOCConfiguration *)configuration sceneIdentifier];

  globalTabbedBrowserControllerForIdentifier_ = [v5 globalTabbedBrowserControllerForIdentifier_];
  [globalTabbedBrowserControllerForIdentifier_ performConnectToServer_];
}

- (void)performDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  DOCFullDocumentManagerViewController.performDismiss(_:)(dismissCopy);
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  DOCFullDocumentManagerViewController.validate(_:)(commandCopy);
}

- (BOOL)isInUserTriggeredSelectionMode
{
  selfCopy = self;
  if ([(DOCFullDocumentManagerViewController *)selfCopy isEditing]&& (v3 = [(DOCFullDocumentManagerViewController *)selfCopy effectiveBrowserViewController]) != 0 && (v4 = MEMORY[0x277D85000], v5 = v3, v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))(), v5, v6))
  {
    v7 = (*((*v4 & *v6) + 0x160))();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)didSelectItem:(id)item atParentLocation:(id)location wasAlreadySelected:(BOOL)selected onlyRevealIfColumn:(BOOL)column
{
  selectedCopy = selected;
  itemCopy = item;
  locationCopy = location;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didSelect(_:at:wasAlreadySelected:onlyRevealIfColumnMode:)(itemCopy, location, selectedCopy, column);
}

- (void)didSelectLocation:(id)location atParentLocation:(id)parentLocation
{
  locationCopy = location;
  parentLocationCopy = parentLocation;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didSelect(_:at:)(locationCopy, parentLocation);
}

- (void)didCommitPreviewOf:(id)of
{
  v5 = objc_opt_self();
  ofCopy = of;
  selfCopy = self;
  defaultManager = [v5 defaultManager];
  v9 = swift_allocObject();
  *(v9 + 16) = ofCopy;
  *(v9 + 24) = selfCopy;
  v13[4] = closure #1 in DOCFullDocumentManagerViewController.didCommitPreview(of:)partial apply;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_149_0;
  v10 = _Block_copy(v13);
  v11 = ofCopy;
  v12 = selfCopy;

  [defaultManager fetchURLForItem:v11 completionHandler:v10];

  _Block_release(v10);
}

- (void)didTapLocationOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didTapLocation(of:)(ofCopy);
}

- (void)didIndicateCancelPicker
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.didIndicateCancelPicker()();
}

- (void)didToggleEditStateWithEditing:(BOOL)editing in:(id)in
{
  inCopy = in;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.didToggleEditState(editing:in:)();
}

- (void)didFinishGatheringItemsAndThumbnailsWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didFinishGatheringItemsAndThumbnails(sender:)(sender);
}

- (BOOL)canLoadAdditionalParents
{
  selfCopy = self;
  hierarchyController = [(DOCFullDocumentManagerViewController *)selfCopy hierarchyController];
  IsHidingParent = DOCHierarchyController.effectiveRootLocationIsHidingParentLocations.getter();

  return IsHidingParent & 1;
}

- (void)beginLoadingAdditionalParents:(id)parents
{
  v4 = _Block_copy(parents);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  hierarchyController = [(DOCFullDocumentManagerViewController *)selfCopy hierarchyController];
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  *(v7 + 24) = v5;

  DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(closure #1 in DOCFullDocumentManagerViewController.beginLoadingAdditionalParents(_:)partial apply, v7);
}

- (BOOL)isBrowserCurrentLocation:(id)location
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = DOCFullDocumentManagerViewController.isBrowserCurrentLocation(_:)();
  swift_unknownObjectRelease();

  return v5 & 1;
}

- (BOOL)infoPanelPreviewingMultipleItems
{
  selfCopy = self;
  v3 = DOCFullDocumentManagerViewController.infoPanelPreviewingMultipleItems()();

  return v3;
}

- (void)beginRenameOf:(id)of
{
  ofCopy = of;
  selfCopy = self;
  DOCFullDocumentManagerViewController.beginRename(of:)(ofCopy);
}

- (void)createNewFolderIn:(id)in moving:(id)moving
{
  movingCopy = moving;
  if (moving)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    movingCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  inCopy = in;
  selfCopy = self;
  DOCFullDocumentManagerViewController.createNewFolder(in:moving:)(inCopy, movingCopy);
}

- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.importScannedDocument(at:presentingController:importToCurrentLocation:)(v12, controllerCopy, location);

  (*(v9 + 8))(v12, v8);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  selfCopy = self;
  if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
  {
    pickerPresentingController = [(DOCFullDocumentManagerViewController *)selfCopy pickerPresentingController];
    if (pickerPresentingController)
    {
      v4 = pickerPresentingController;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        [v5 removeSaveActionBlockerForFiles];
      }
    }
  }

  [(DOCFullDocumentManagerViewController *)selfCopy setPickerPresentingController:0];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  selfCopy = self;
  pickerPresentingController = [(DOCFullDocumentManagerViewController *)selfCopy pickerPresentingController];
  if (pickerPresentingController)
  {
    v5 = pickerPresentingController;
    [(UIViewController *)pickerPresentingController dismissViewControllerAnimated:1 completion:0];
  }

  [(DOCFullDocumentManagerViewController *)selfCopy setPickerPresentingController:0];
}

- (BOOL)establishFirstResponderIfNeeded
{
  selfCopy = self;
  if ([(DOCFullDocumentManagerViewController *)selfCopy needsFirstResponder]&& [(DOCFullDocumentManagerViewController *)selfCopy establishFirstResponder])
  {
    [(DOCFullDocumentManagerViewController *)selfCopy setNeedsFirstResponder:0];
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
  selfCopy = self;
  v3 = DOCFullDocumentManagerViewController.establishFirstResponder()();

  return v3;
}

- (unint64_t)effectiveTabSwitcherTab
{
  selfCopy = self;
  hierarchyController = [(DOCFullDocumentManagerViewController *)selfCopy hierarchyController];
  v4 = DOCHierarchyController.locationForDeterminingCurrentEffectiveTab.getter();
  if (v4)
  {
    v5 = v4;
    effectiveTabSwitcherTab = [v4 effectiveTabSwitcherTab];

    return effectiveTabSwitcherTab;
  }

  else
  {

    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v9 = *(hierarchyController + v8);

    return v9;
  }
}

- (void)swift_commonInitWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  DOCFullDocumentManagerViewController.swift_commonInit(with:)(withCopy);
}

- (void)fullDocumentManagerViewControllerDidFinishLoading:(id)loading
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCFullDocumentManagerViewController.fullDocumentManagerViewControllerDidFinishLoading(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)activateContainerViewControllersIfNeeded
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.activateContainerViewControllersIfNeeded()();
}

- (DOCConcreteLocation)displayedRootLocation
{
  selfCopy = self;
  v3 = DOCFullDocumentManagerViewController.displayedRootLocation.getter();

  return v3;
}

- (void)updateRelatedViewControllersWithCurrentHierarchy
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateRelatedViewControllersWithCurrentHierarchy()();
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  v8 = DOCFullDocumentManagerViewController.canPerformAction(_:withSender:)(action, v10);

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

  DOCFullDocumentManagerViewController.target(forAction:withSender:)(action, v16, v17);

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
  selfCopy = self;
  DOCFullDocumentManagerViewController.ensureInternalNavigationControllerIsInstalled()();
}

- (void)swift_viewDidLoad
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.swift_viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = DOCFullDocumentManagerViewController;
  selfCopy = self;
  windowCopy = window;
  [(UIDocumentBrowserViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [(DOCFullDocumentManagerViewController *)selfCopy updateAvailableDisplayModesWithAnimated:1, v8.receiver, v8.super_class];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = DOCFullDocumentManagerViewController;
  [(DOCFullDocumentManagerViewController *)&v3 viewDidDisappear:disappear];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = DOCFullDocumentManagerViewController;
  selfCopy = self;
  [(UIDocumentBrowserViewController *)&v5 viewWillAppear:appearCopy];
  DOCFullDocumentManagerViewController.updateBrowserLayoutConfigurationTraits()();
  [(DOCFullDocumentManagerViewController *)selfCopy updateAvailableDisplayModesWithAnimated:0, v5.receiver, v5.super_class];
  DOCFullDocumentManagerViewController.clearLastOpenedItem()();
  DOCFullDocumentManagerViewController.setupPickerFilenameViewIfNeeded()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = DOCFullDocumentManagerViewController;
  selfCopy = self;
  [(DOCFullDocumentManagerViewController *)&v5 viewDidAppear:appearCopy];
  [(DOCFullDocumentManagerViewController *)selfCopy updateCustomActions:v5.receiver];
}

- (void)didChangeEnvironmentSupportsColumnView
{
  selfCopy = self;
  viewIfLoaded = [(DOCFullDocumentManagerViewController *)selfCopy viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {

    [(DOCFullDocumentManagerViewController *)selfCopy updateAvailableDisplayModesWithAnimated:1];
  }
}

- (void)updateAvailableDisplayModesWithAnimated:(BOOL)animated
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateAvailableDisplayModes(animated:)(animated);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCFullDocumentManagerViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)splitViewWillDidExpand
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.splitViewWillDidExpand()();
}

- (void)splitViewWillChangeFrom:(int64_t)from to:(int64_t)to alongsideCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.splitViewWillChange(from:to:alongsideCoordinator:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.viewDidLayoutSubviews()();
}

- (void)updateNavigationBarPrefersLargeTitles
{
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateNavigationBarPrefersLargeTitles()();
}

- (UIScrollView)primaryContentScrollView
{
  selfCopy = self;
  internalNavigationController = [(DOCFullDocumentManagerViewController *)selfCopy internalNavigationController];
  topViewController = [(UINavigationController *)internalNavigationController topViewController];

  if (topViewController)
  {
    v5 = [(UIViewController *)topViewController contentScrollViewForEdge:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)swift_navigationController:(id)controller willShow:(id)show animated:(BOOL)animated
{
  controllerCopy = controller;
  showCopy = show;
  selfCopy = self;
  DOCFullDocumentManagerViewController.swift_navigationController(_:willShow:animated:)(controllerCopy, showCopy, animated);
}

- (void)swift_navigationController:(id)controller didShow:(id)show animated:(BOOL)animated
{
  controllerCopy = controller;
  showCopy = show;
  selfCopy = self;
  specialized DOCFullDocumentManagerViewController.swift_navigationController(_:didShow:animated:)(showCopy);
}

- (UITraitCollection)traitCollectionExpectedForSearchPresentation
{
  selfCopy = self;
  effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)selfCopy effectiveBrowserViewController];
  if (effectiveBrowserViewController)
  {
    v4 = effectiveBrowserViewController;
    v5 = (*((*MEMORY[0x277D85000] & *effectiveBrowserViewController) + 0xE8))();

    if (v5)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        traitCollection = [v6 traitCollection];

        selfCopy = v5;
        goto LABEL_7;
      }
    }
  }

  traitCollection = [(DOCFullDocumentManagerViewController *)selfCopy traitCollection];
LABEL_7:

  return traitCollection;
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.willPresentSearchController(_:)(controllerCopy);
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(controllerCopy, [controllerCopy showsSearchResultsController]);
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.willDismissSearchController(_:)(controllerCopy);
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.didDismissSearchController(_:)(controllerCopy);
}

- (void)willPresentSearchResultsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.willPresentSearchResultsController(_:)(controllerCopy);
}

- (void)didPresentSearchResultsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(controllerCopy, 1);
}

- (void)willDismissSearchResultsController:(id)controller
{
  v5 = objc_opt_self();
  controllerCopy = controller;
  selfCopy = self;
  configuration = [(UIDocumentBrowserViewController *)selfCopy configuration];
  sceneIdentifier = [(DOCConfiguration *)configuration sceneIdentifier];

  globalTabbedBrowserControllerForIdentifier_ = [v5 globalTabbedBrowserControllerForIdentifier_];
  if (globalTabbedBrowserControllerForIdentifier_)
  {
    [globalTabbedBrowserControllerForIdentifier_ willDismissSearchResultsController_];
  }

  (*((*MEMORY[0x277D85000] & **&controllerCopy[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController]) + 0x1308))();
}

- (void)didDismissSearchResultsController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFullDocumentManagerViewController.updateSearchPresentationState(for:to:)(controllerCopy, 0);
}

- (void)updateCustomActions
{
  selfCopy = self;
  actionManager = [(DOCFullDocumentManagerViewController *)selfCopy actionManager];
  isa = [(UIDocumentBrowserViewController *)selfCopy customActions];
  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [(DOCActionManager *)actionManager setActions:isa];
}

- (void)doc_updateBarButtonTrackingViewsIfNecessary
{
  selfCopy = self;
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
  selfCopy = self;
  lastObject = [a2 lastObject];
  lastObject2 = [a2 lastObject];
  fileProviderItem = [lastObject2 fileProviderItem];
  lastObject3 = [a2 lastObject];
  sourceIdentifier = [lastObject3 sourceIdentifier];
  lastObject4 = [a2 lastObject];
  v10 = 138413058;
  v11 = lastObject;
  v12 = 2112;
  v13 = fileProviderItem;
  v14 = 2112;
  v15 = sourceIdentifier;
  v16 = 1024;
  isFPV2 = [lastObject4 isFPV2];
  _os_log_debug_impl(&dword_2493AC000, selfCopy, OS_LOG_TYPE_DEBUG, "Last location is %@: item %@, source identifier %@, isFPV2 %d", &v10, 0x26u);
}

- (void)effectiveSearchController
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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