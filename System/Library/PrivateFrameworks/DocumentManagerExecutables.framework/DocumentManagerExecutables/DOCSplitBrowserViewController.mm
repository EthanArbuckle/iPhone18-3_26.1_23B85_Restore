@interface DOCSplitBrowserViewController
+ (BOOL)disableWorkaroundFor124376396;
- (BOOL)_contextAllowsPersistingColumnVisibilityChanges;
- (BOOL)_shouldOverlayTabBar;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isBrowserCurrentLocation:(id)location;
- (BOOL)isCollapsed;
- (BOOL)isShowingCollapsedSidebarViewController;
- (BOOL)sidebarViewControllerWithIsCollapsed:(id)collapsed;
- (DOCSplitBrowserViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer;
- (DOCSplitViewControllerDelegate)splitViewDelegate;
- (id)_activeTransitionCoordinator;
- (id)_hostingNavigationBar;
- (id)_swipeToCloseSidebarGestureRecognizer;
- (id)_tapToCloseSidebarGestureRecognizer;
- (id)_viewControllerForOverlayTabBar;
- (id)pickerOperationTitleFor:(id)for useShortTitle:(BOOL)title;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)_customPreferredSplitBehavior_EmbeddedScreen;
- (int64_t)displayMode;
- (int64_t)pickerOperationFor:(id)for;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)_arrangeSidebarForCollapsedPresentationForced:(BOOL)forced;
- (void)_saveUserPrefersTiledSidebarForChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode;
- (void)_splitViewController:(id)controller animateTransitionToStateRequest:(id)request detailSize:(CGSize)size duration:(double)duration;
- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode;
- (void)_splitViewController:(id)controller didFinishExpandToDisplayMode:(int64_t)mode;
- (void)clearSplitViewStateTransitionStateIfNecessary;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)dealloc;
- (void)didConfirmPickIn:(id)in;
- (void)didIndicateCancelPicker;
- (void)didSelectItem:(id)item atParentLocation:(id)location wasAlreadySelected:(BOOL)selected onlyRevealIfColumn:(BOOL)column;
- (void)didSelectLocation:(id)location atParentLocation:(id)parentLocation;
- (void)didToggleEditStateWithEditing:(BOOL)editing in:(id)in;
- (void)dismissSidebarViewControllerIfNeeded;
- (void)forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary;
- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)thumbnails;
- (void)hideSidebar;
- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareSnapshotForSplitStateChangingFromState:(id)state toState:(id)toState alongside:(id)alongside;
- (void)saveUserPrefersSidebarHidden:(BOOL)hidden;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items;
- (void)setIncludeSidebarInCollapsedNavStack:(BOOL)stack;
- (void)setPickerContext:(id)context;
- (void)setSceneIdentifier:(id)identifier;
- (void)setShortDebugID:(id)d;
- (void)showSidebarAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)sidebarViewController:(id)controller didSelect:(id)select;
- (void)sidebarViewController:(id)controller wantsToReveal:(id)reveal;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)swift_commonInit;
- (void)toggleSidebarShown;
- (void)updateContentEditingOverlaysForState:(id)state;
- (void)updateDisplayModeButtonVisibility;
- (void)updatePreferredDisplayModeFromPersistentStore;
- (void)updatePreferredSplitBehavior;
- (void)updateTraitCollectionTabBarSetting;
- (void)updateUIPHorizontalInsetsIfNecessary;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCSplitBrowserViewController

- (DOCSplitBrowserViewController)initWithConfiguration:(id)configuration sourceObserver:(id)observer
{
  v84[6] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  observerCopy = observer;
  v81.receiver = self;
  v81.super_class = DOCSplitBrowserViewController;
  v9 = [(DOCSplitBrowserViewController *)&v81 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    v74 = observerCopy;
    [(DOCSplitBrowserViewController *)v9 setDelegate:v9];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [uUIDString substringToIndex:6];
    shortDebugID = v10->_shortDebugID;
    v10->_shortDebugID = v13;

    objc_storeStrong(&v10->_sourceObserver, observer);
    objc_storeStrong(&v10->_configuration, configuration);
    if ([configurationCopy isInUIPDocumentLanding])
    {
      [(DOCSplitBrowserViewController *)v10 configureUIPDocumentLandingStyleIfNecessary];
    }

    v10->_includeSidebarInCollapsedNavStack = 1;
    v15 = [configurationCopy copy];
    [v15 setNeverCreateBookmarkForOpenInPlace:1];
    [v15 setRestoreLastVisitedLocation:1];
    [v15 setSaveLastVisitedLocation:1];
    [v15 setSupportsColumnView:1];
    v16 = *MEMORY[0x277D05D78];
    v84[0] = *MEMORY[0x277D060F8];
    v84[1] = v16;
    v17 = *MEMORY[0x277D05DA0];
    v84[2] = *MEMORY[0x277D05DC8];
    v84[3] = v17;
    v18 = *MEMORY[0x277D05DB8];
    v84[4] = *MEMORY[0x277D05DC0];
    v84[5] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:6];
    [v15 setHiddenSourcesIdentifiers:v19];

    if ([v15 isPickerUI])
    {
      hiddenSourcesIdentifiers = [v15 hiddenSourcesIdentifiers];
      v21 = [hiddenSourcesIdentifiers arrayByAddingObject:*MEMORY[0x277D05DD0]];
      [v15 setHiddenSourcesIdentifiers:v21];

      forbiddenActionIdentifiers = [v15 forbiddenActionIdentifiers];
      v23 = *MEMORY[0x277D05F90];
      v83[0] = *MEMORY[0x277D05FE0];
      v83[1] = v23;
      v24 = *MEMORY[0x277D06028];
      v83[2] = *MEMORY[0x277D06060];
      v83[3] = v24;
      v83[4] = *MEMORY[0x277D05FF8];
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:5];
      v26 = [forbiddenActionIdentifiers arrayByAddingObjectsFromArray:v25];
      [v15 setForbiddenActionIdentifiers:v26];
    }

    v27 = [[DOCFullDocumentManagerViewController alloc] initWithConfiguration:v15 sourceObserver:v10->_sourceObserver];
    fullDocumentManagerViewController = v10->_fullDocumentManagerViewController;
    v10->_fullDocumentManagerViewController = v27;

    [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController setShortDebugID:v10->_shortDebugID];
    [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController setFullDocumentManagerDelegate:v10];
    v73 = v15;
    v29 = [v15 copy];
    [v29 setUseExpandedSourceList:1];
    v30 = [[DOCSidebarViewController alloc] initWithConfiguration:v29 sourceObserver:v10->_sourceObserver];
    sidebarViewController = v10->_sidebarViewController;
    v10->_sidebarViewController = v30;

    [(DOCSplitBrowserViewController *)v10 setMinimumPrimaryColumnWidth:320.0];
    v32 = MEMORY[0x277D759F0];
    recentDocumentsLocation = [MEMORY[0x277D05EA8] recentDocumentsLocation];
    itemCollectionViewPool = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController itemCollectionViewPool];
    documentManager = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController documentManager];
    actionManager = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController actionManager];
    v72 = v29;
    v37 = [v32 docSearchControllerForSearchingIn:recentDocumentsLocation configuration:v29 collectionViewPool:itemCollectionViewPool documentManager:documentManager actionManager:actionManager];

    v38 = v37;
    [v37 setPresentationDelegate:v10->_fullDocumentManagerViewController];
    resultCollectionViewController = [v37 resultCollectionViewController];
    [resultCollectionViewController setActionReporting:v10];

    [(DOCSidebarViewController *)v10->_sidebarViewController setSearchController:v38];
    navigationItem = [(DOCSidebarViewController *)v10->_sidebarViewController navigationItem];
    [navigationItem setHidesSearchBarWhenScrolling:0];

    [(DOCSidebarViewController *)v10->_sidebarViewController setDefinesPresentationContext:1];
    v41 = objc_alloc_init(_TtC26DocumentManagerExecutables34DOCSidebarPaneNavigationController);
    sidebarNavigationController = v10->_sidebarNavigationController;
    v10->_sidebarNavigationController = v41;

    navigationBar = [(DOCSidebarPaneNavigationController *)v10->_sidebarNavigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    [(DOCSidebarPaneNavigationController *)v10->_sidebarNavigationController setToolbarHidden:1];
    [(DOCSplitBrowserViewController *)v10 updatePreferredDisplayModeFromPersistentStore];
    urls = [(DOCConfiguration *)v10->_configuration urls];
    v45 = [urls count];

    if (v45)
    {
      if ([(DOCConfiguration *)v10->_configuration interactionMode]== 3)
      {
        v70 = v38;
        v71 = configurationCopy;
        array = [MEMORY[0x277CBEB18] array];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = [(DOCConfiguration *)v10->_configuration urls];
        v47 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v78;
          while (2)
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v78 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v51 = *(*(&v77 + 1) + 8 * i);
              defaultManager = [MEMORY[0x277CC6408] defaultManager];
              v53 = [v51 url];
              v76 = 0;
              v54 = [defaultManager itemForURL:v53 error:&v76];
              v55 = v76;

              if (!v54)
              {
                v58 = MEMORY[0x277D06310];
                v59 = *MEMORY[0x277D06310];
                if (!*MEMORY[0x277D06310])
                {
                  DOCInitLogging();
                  v59 = *v58;
                }

                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  [(DOCSplitBrowserViewController *)v51 initWithConfiguration:v55 sourceObserver:v59];
                }

                goto LABEL_23;
              }

              [array addObject:v54];
            }

            v48 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:

        v60 = [array count];
        urls2 = [(DOCConfiguration *)v10->_configuration urls];
        v62 = [urls2 count];

        v63 = [DOCPickerContext alloc];
        v64 = v63;
        if (v60 == v62)
        {
          urls3 = [(DOCPickerContext *)v63 initWithNodes:array];
          [(DOCSplitBrowserViewController *)v10 setPickerContext:urls3];
        }

        else
        {
          urls3 = [(DOCConfiguration *)v10->_configuration urls];
          v65 = [(DOCPickerContext *)v64 initWithFPURLs:urls3];
          [(DOCSplitBrowserViewController *)v10 setPickerContext:v65];
        }

        v38 = v70;
        configurationCopy = v71;
      }

      else
      {
        v56 = [DOCPickerContext alloc];
        array = [(DOCConfiguration *)v10->_configuration urls];
        urls3 = [(DOCPickerContext *)v56 initWithFPURLs:array];
        [(DOCSplitBrowserViewController *)v10 setPickerContext:urls3];
      }
    }

    if ([(DOCSplitBrowserViewController *)v10 isViewLoaded])
    {
      v66 = MEMORY[0x277D062B8];
      v67 = *MEMORY[0x277D062B8];
      if (!*MEMORY[0x277D062B8])
      {
        DOCInitLogging();
        v67 = *v66;
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        [DOCSplitBrowserViewController initWithConfiguration:v67 sourceObserver:?];
      }
    }

    [(DOCSplitBrowserViewController *)v10 swift_commonInit];
    v68 = v10;

    observerCopy = v74;
  }

  return v10;
}

- (void)setShortDebugID:(id)d
{
  objc_storeStrong(&self->_shortDebugID, d);
  dCopy = d;
  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController setShortDebugID:dCopy];
}

- (void)updatePreferredDisplayModeFromPersistentStore
{
  if (![(DOCSplitBrowserViewController *)self _sidebarVisibilityPinnedToWindowSizingOnly])
  {
    if (([(DOCConfiguration *)self->_configuration isPickerUI]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      mEMORY[0x277D05F20] = [MEMORY[0x277D05F20] sharedStore];
      configuration = [(DOCSplitBrowserViewController *)self configuration];
      v6 = [mEMORY[0x277D05F20] interfaceStateForConfiguration:configuration];

      userPrefersTiledSidebarHidden = [v6 userPrefersTiledSidebarHidden];
      LODWORD(configuration) = [userPrefersTiledSidebarHidden BOOLValue];

      v3 = configuration;
    }

    if ([(DOCSplitBrowserViewController *)self preferredDisplayMode]!= v3)
    {
      [(DOCSplitBrowserViewController *)self setPreferredDisplayMode:v3];
    }

    [(DOCSplitBrowserViewController *)self updatePreferredSplitBehavior];

    [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
  }
}

- (void)updatePreferredSplitBehavior
{
  viewIfLoaded = [(DOCSplitBrowserViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  screen = [window screen];

  v5 = screen;
  if (screen)
  {
    if ([screen _isEmbeddedScreen])
    {
      _customPreferredSplitBehavior_EmbeddedScreen = [(DOCSplitBrowserViewController *)self _customPreferredSplitBehavior_EmbeddedScreen];
    }

    else
    {
      _customPreferredSplitBehavior_EmbeddedScreen = [(DOCSplitBrowserViewController *)self _customPreferredSplitBehavior_ExternalScreen];
    }

    [(DOCSplitBrowserViewController *)self setPreferredSplitBehavior:_customPreferredSplitBehavior_EmbeddedScreen];
    v5 = screen;
  }
}

- (int64_t)_customPreferredSplitBehavior_EmbeddedScreen
{
  doc_deprecated_interfaceOrientation = [(DOCSplitBrowserViewController *)self doc_deprecated_interfaceOrientation];
  _rotatingToInterfaceOrientation = [(DOCSplitBrowserViewController *)self _rotatingToInterfaceOrientation];
  if (_rotatingToInterfaceOrientation)
  {
    doc_deprecated_interfaceOrientation = _rotatingToInterfaceOrientation;
  }

  if ([(DOCConfiguration *)self->_configuration isPickerUI])
  {
    return 0;
  }

  else
  {
    return 2 * ((doc_deprecated_interfaceOrientation - 1) < 2);
  }
}

- (void)_saveUserPrefersTiledSidebarForChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode
{
  if ([(DOCSplitBrowserViewController *)self _contextAllowsPersistingColumnVisibilityChanges]&& (mode == 2 || displayMode == 2))
  {

    [(DOCSplitBrowserViewController *)self saveUserPrefersSidebarHidden:displayMode != 2];
  }
}

- (void)saveUserPrefersSidebarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  configuration = [(DOCSplitBrowserViewController *)self configuration];
  mEMORY[0x277D05F20] = [MEMORY[0x277D05F20] sharedStore];
  v6 = [mEMORY[0x277D05F20] interfaceStateForConfiguration:configuration];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:hiddenCopy];
    [v6 setUserPrefersTiledSidebarHidden:v7];

    [mEMORY[0x277D05F20] updateInterfaceState:v6 forConfiguration:configuration];
    [(DOCSplitBrowserViewController *)self updatePreferredDisplayModeFromPersistentStore];
  }
}

- (void)setPickerContext:(id)context
{
  contextCopy = context;
  if (self->_pickerContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_pickerContext, context);
    [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController setPickerContext:v6];
    [(DOCSidebarViewController *)self->_sidebarViewController setPickerContext:v6];
    contextCopy = v6;
  }
}

- (void)configureUIPDocumentLandingStyleIfNecessary
{
  [(DOCSplitBrowserViewController *)self _setIgnoresSheetContext:1];
  v7.receiver = self;
  v7.super_class = DOCSplitBrowserViewController;
  configuration = [(DOCSplitBrowserViewController *)&v7 configuration];
  v4 = [configuration copy];

  _splitViewBorderColor = [MEMORY[0x277D75348] _splitViewBorderColor];
  [v4 setBorderColor:_splitViewBorderColor];

  v6.receiver = self;
  v6.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v6 setConfiguration:v4];
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v19 viewDidLoad];
  configuration = [(DOCSplitBrowserViewController *)self configuration];
  isPickerUI = [configuration isPickerUI];

  view = [(DOCSplitBrowserViewController *)self view];
  v6 = view;
  if (isPickerUI)
  {
    v7 = @"Browse View (Picker)";
  }

  else
  {
    v7 = @"Browse View";
  }

  [view setAccessibilityIdentifier:v7];

  [(DOCSidebarViewController *)self->_sidebarViewController setSidebarDelegate:self];
  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v20[0] = sidebarViewController;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:v9];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController ensureInternalNavigationControllerIsInstalled];
  [(DOCSplitBrowserViewController *)self setViewController:self->_sidebarNavigationController forColumn:0];
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [(DOCSplitBrowserViewController *)self setViewController:fullDocumentManagerViewController forColumn:2];

  fullDocumentManagerViewController2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [(DOCSplitBrowserViewController *)self setViewController:fullDocumentManagerViewController2 forColumn:3];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController addObserver:self forKeyPath:@"editing" options:1 context:DOCSplitBrowserViewControllerContext];
  [(DOCSidebarViewController *)self->_sidebarViewController addObserver:self forKeyPath:@"editing" options:1 context:DOCSplitBrowserViewControllerContext];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [[DOCContentDimmingOverlay alloc] initForCovering:self->_sidebarNavigationController];
    sourcesOverlay = self->_sourcesOverlay;
    self->_sourcesOverlay = v12;

    [(DOCContentDimmingOverlay *)self->_sourcesOverlay setAutohideWhenPossibleDropTarget:1];
    navigationController = [(DOCSidebarViewController *)self->_sidebarViewController navigationController];
    view2 = [navigationController view];
    [view2 addSubview:self->_sourcesOverlay];
  }

  v16 = [[DOCContentDimmingOverlay alloc] initForCovering:self->_fullDocumentManagerViewController];
  browserOverlay = self->_browserOverlay;
  self->_browserOverlay = v16;

  view3 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController view];
  [view3 addSubview:self->_browserOverlay];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController updateRelatedViewControllersWithCurrentHierarchy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v6 viewWillDisappear:disappear];
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [fullDocumentManagerViewController setEditing:0];

  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [sidebarViewController setEditing:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v8 viewDidAppear:appear];
  view = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController view];
  [view setAutoresizingMask:18];

  itemToFocusDuringAppearance = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];

  if (itemToFocusDuringAppearance)
  {
    v6 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
    itemToFocusDuringAppearance2 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];
    [v6 requestFocusUpdateToEnvironment:itemToFocusDuringAppearance2];

    [v6 updateFocusIfNeeded];
    [(DOCSplitBrowserViewController *)self setItemToFocusDuringAppearance:0];
  }

  [(DOCSplitBrowserViewController *)self forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(DOCSplitBrowserViewController *)self updatePreferredSplitBehavior];
  [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
}

- (id)_tapToCloseSidebarGestureRecognizer
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _primaryDimmingView = [(DOCSplitBrowserViewController *)self _primaryDimmingView];
  gestureRecognizers = [_primaryDimmingView gestureRecognizers];

  v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_swipeToCloseSidebarGestureRecognizer
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _primaryDimmingView = [(DOCSplitBrowserViewController *)self _primaryDimmingView];
  gestureRecognizers = [_primaryDimmingView gestureRecognizers];

  v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (DOCSplitBrowserViewControllerContext == context)
  {
    if ([pathCopy isEqualToString:@"editing"])
    {
      prefersTabBarHidden = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController prefersTabBarHidden];
      if ([(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController isEditing])
      {
        prefersTabBarHidden |= [(DOCSplitBrowserViewController *)self enclosingTabSwitcherStyle]== 2;
      }

      isEditing = [(DOCSidebarViewController *)self->_sidebarViewController isEditing];
      if ([MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating])
      {
        traitCollection = [(DOCSplitBrowserViewController *)self traitCollection];
        v16 = [traitCollection horizontalSizeClass] == 2;
      }

      else
      {
        v16 = 0;
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __80__DOCSplitBrowserViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v23[3] = &unk_278FA2710;
      v23[4] = self;
      v24 = v16;
      v25 = prefersTabBarHidden & 1;
      v26 = isEditing;
      [MEMORY[0x277D75D18] doc_performAllowingAnimations:v16 block:v23];
      [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
      if (![(DOCSplitBrowserViewController *)self isCollapsed])
      {
        _swipeToCloseSidebarGestureRecognizer = [(DOCSplitBrowserViewController *)self _swipeToCloseSidebarGestureRecognizer];
        [_swipeToCloseSidebarGestureRecognizer setEnabled:!isEditing];

        _tapToCloseSidebarGestureRecognizer = [(DOCSplitBrowserViewController *)self _tapToCloseSidebarGestureRecognizer];
        [_tapToCloseSidebarGestureRecognizer setEnabled:!isEditing];

        if (self->_sidebarViewController == objectCopy && isEditing)
        {
          fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
          [fullDocumentManagerViewController dismissSearch];

          fullDocumentManagerViewController2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
          [fullDocumentManagerViewController2 setEditing:0 animated:1];
        }

        doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
        [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:doc_splitViewState];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"DOCSplitBrowserViewController.m" lineNumber:431 description:{@"Unhandled keyPath: %@", pathCopy}];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = DOCSplitBrowserViewController;
    [(DOCSplitBrowserViewController *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }
}

uint64_t __80__DOCSplitBrowserViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPrefersAnimatedTabVibilityChanges:*(a1 + 40)];
  v2 = [*(a1 + 32) isShowingCollapsedSidebarViewController];
  v3 = [*(a1 + 32) splitViewDelegate];
  v4 = v3;
  if (v2)
  {
    v5 = 1;
  }

  else if (*(a1 + 41))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 42) ^ 1;
  }

  [v3 splitViewController:*(a1 + 32) wantsToShowTabBar:v5 & 1];

  v6 = *(a1 + 32);

  return [v6 setPrefersAnimatedTabVibilityChanges:0];
}

- (void)updateDisplayModeButtonVisibility
{
  if (![(DOCSplitBrowserViewController *)self _sidebarVisibilityPinnedToWindowSizingOnly])
  {
    doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
    isCollapsed = [doc_splitViewState isCollapsed];
    isInUserTriggeredSelectionMode = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController isInUserTriggeredSelectionMode];
    v5 = isInUserTriggeredSelectionMode & isCollapsed ^ 1;
    v6 = !isInUserTriggeredSelectionMode;
    if ([(DOCConfiguration *)self->_configuration isPickerUI])
    {
      traitCollection = [(DOCSplitBrowserViewController *)self traitCollection];
      v8 = DOCUsePadIdiomForTraits();

      if (v8)
      {
        v6 = 0;
        v5 = [(DOCSplitBrowserViewController *)self displayMode]== 1;
      }
    }

    enclosingTabSwitcherCanBeFloating = [MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating];
    v10 = 2;
    if (!(!v6 & v5))
    {
      v10 = 0;
    }

    if (enclosingTabSwitcherCanBeFloating)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [(DOCSplitBrowserViewController *)self setDisplayModeButtonVisibility:v11];
    [(DOCSplitBrowserViewController *)self setPresentsWithGesture:v6];
  }
}

- (void)updateContentEditingOverlaysForState:(id)state
{
  stateCopy = state;
  if ([(DOCSplitBrowserViewController *)self isCollapsed])
  {
    isEditing = 0;
    isInUserTriggeredSelectionMode = 0;
  }

  else
  {
    effectiveBrowserViewController = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController effectiveBrowserViewController];
    contentViewController = [effectiveBrowserViewController contentViewController];

    if ([stateCopy isSidebarShownInOverlay])
    {
      isInUserTriggeredSelectionMode = 0;
    }

    else
    {
      isInUserTriggeredSelectionMode = [contentViewController isInUserTriggeredSelectionMode];
    }

    isEditing = [(DOCSidebarViewController *)self->_sidebarViewController isEditing];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(DOCContentDimmingOverlay *)self->_sourcesOverlay setActive:isInUserTriggeredSelectionMode];
    superview = [(DOCContentDimmingOverlay *)self->_sourcesOverlay superview];

    if (superview)
    {
      superview2 = [(DOCContentDimmingOverlay *)self->_sourcesOverlay superview];
      [superview2 bringSubviewToFront:self->_sourcesOverlay];
    }
  }

  [(DOCContentDimmingOverlay *)self->_browserOverlay setActive:isEditing];
  superview3 = [(DOCContentDimmingOverlay *)self->_browserOverlay superview];

  if (superview3)
  {
    superview4 = [(DOCContentDimmingOverlay *)self->_browserOverlay superview];
    [superview4 bringSubviewToFront:self->_browserOverlay];
  }

  [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
}

- (void)dealloc
{
  if ([(DOCSplitBrowserViewController *)self isViewLoaded])
  {
    fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    [fullDocumentManagerViewController removeObserver:self forKeyPath:@"editing"];

    sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
    [sidebarViewController removeObserver:self forKeyPath:@"editing"];
  }

  v5.receiver = self;
  v5.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v5 dealloc];
}

- (void)setIncludeSidebarInCollapsedNavStack:(BOOL)stack
{
  if ([(DOCSplitBrowserViewController *)self includeSidebarInCollapsedNavStack]!= stack)
  {
    self->_includeSidebarInCollapsedNavStack = stack;

    [(DOCSplitBrowserViewController *)self _arrangeSidebarForCollapsedPresentationForced:0];
  }
}

- (void)showSidebarAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(DOCSplitBrowserViewController *)self isCollapsed])
  {
    fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    [fullDocumentManagerViewController popToRootViewControllerAnimated:animatedCopy];

    fullDocumentManagerViewController2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    transitionCoordinator = [fullDocumentManagerViewController2 transitionCoordinator];

    if (!transitionCoordinator)
    {
LABEL_6:
      transitionCoordinator = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
    }
  }

  else
  {
    doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
    isSidebarShown = [doc_splitViewState isSidebarShown];

    if (isSidebarShown)
    {
      goto LABEL_6;
    }

    [(DOCSplitBrowserViewController *)self toggleSidebarShown];
    transitionCoordinator = [(DOCSplitBrowserViewController *)self transitionCoordinator];
    if (!transitionCoordinator)
    {
      goto LABEL_6;
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DOCSplitBrowserViewController_showSidebarAnimated_withCompletion___block_invoke_2;
  v13[3] = &unk_278FA2758;
  v14 = completionCopy;
  v12 = completionCopy;
  [transitionCoordinator animateAlongsideTransition:&__block_literal_global_9 completion:v13];
}

uint64_t __68__DOCSplitBrowserViewController_showSidebarAnimated_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hideSidebar
{
  doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  isSidebarShown = [doc_splitViewState isSidebarShown];

  if (isSidebarShown)
  {

    [(DOCSplitBrowserViewController *)self toggleSidebarShown];
  }
}

- (void)toggleSidebarShown
{
  doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  isSidebarShown = [doc_splitViewState isSidebarShown];

  if (isSidebarShown)
  {

    [(DOCSplitBrowserViewController *)self hideColumn:0];
  }

  else
  {

    [(DOCSplitBrowserViewController *)self showColumn:0];
  }
}

- (BOOL)isShowingCollapsedSidebarViewController
{
  if (![(DOCSplitBrowserViewController *)self isCollapsed])
  {
    return 0;
  }

  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  currentViewController = [fullDocumentManagerViewController currentViewController];
  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v6 = currentViewController == sidebarViewController;

  return v6;
}

- (id)preferredFocusEnvironments
{
  v12[1] = *MEMORY[0x277D85DE8];
  itemToFocusDuringAppearance = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];

  if (itemToFocusDuringAppearance)
  {
    itemToFocusDuringAppearance2 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];
    v12[0] = itemToFocusDuringAppearance2;
    v5 = v12;
  }

  else
  {
    sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
    sidebarHasActiveFocus = [sidebarViewController sidebarHasActiveFocus];

    if (sidebarHasActiveFocus)
    {
      itemToFocusDuringAppearance2 = [(DOCSplitBrowserViewController *)self sidebarViewController];
      v11 = itemToFocusDuringAppearance2;
      v5 = &v11;
    }

    else
    {
      itemToFocusDuringAppearance2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
      v10 = itemToFocusDuringAppearance2;
      v5 = &v10;
    }
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:{1, v10, v11, v12[0]}];

  return v8;
}

- (void)_splitViewController:(id)controller animateTransitionToStateRequest:(id)request detailSize:(CGSize)size duration:(double)duration
{
  controllerCopy = controller;
  requestCopy = request;
  traitCollection = [(DOCSplitBrowserViewController *)self traitCollection];
  preferredNavigationBarStyle_objc = [traitCollection preferredNavigationBarStyle_objc];
  hasHistoryButtons = [preferredNavigationBarStyle_objc hasHistoryButtons];

  if ((hasHistoryButtons & 1) == 0)
  {
    [requestCopy leadingWidth];
    if (v14 < 0.5)
    {
      displayModeButtonItem = [controllerCopy displayModeButtonItem];
      v16 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __106__DOCSplitBrowserViewController__splitViewController_animateTransitionToStateRequest_detailSize_duration___block_invoke;
      v18[3] = &unk_278FA1E80;
      v19 = displayModeButtonItem;
      selfCopy = self;
      v17 = displayModeButtonItem;
      [v16 animateWithDuration:v18 animations:duration];
    }
  }
}

uint64_t __106__DOCSplitBrowserViewController__splitViewController_animateTransitionToStateRequest_detailSize_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setImage:0];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _displayModeButtonItemTitle];
  [v2 setTitle:v3];

  v4 = *(a1 + 32);

  return [v4 _setShowsBackButtonIndicator:1];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionStart:doc_splitViewState];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:0];
  v9 = doc_splitViewState;
  v10 = [v9 withIsCollapsed:{objc_msgSend(collectionCopy, "horizontalSizeClass") == 1}];

  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:v10];
  v12.receiver = self;
  v12.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v12 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__DOCSplitBrowserViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_278FA23F8;
  v11[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v11];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(DOCSplitBrowserViewController *)self updatePreferredSplitBehavior];
  _definiteTransitionCoordinator = coordinatorCopy;
  if (!coordinatorCopy)
  {
    _definiteTransitionCoordinator = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
  }

  objc_storeStrong(&self->_sizeTransitionCoordinator, _definiteTransitionCoordinator);
  if (!coordinatorCopy)
  {
  }

  v12.receiver = self;
  v12.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  sizeTransitionCoordinator = self->_sizeTransitionCoordinator;
  v10[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__DOCSplitBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_278FA23F8;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__DOCSplitBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v10[3] = &unk_278FA23F8;
  [(UIViewControllerTransitionCoordinator *)sizeTransitionCoordinator animateAlongsideTransition:v11 completion:v10];
}

uint64_t __84__DOCSplitBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateUIPHorizontalInsetsIfNecessary];
  v2 = *(a1 + 32);

  return [v2 updateTraitCollectionTabBarSetting];
}

uint64_t __84__DOCSplitBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1024);
  *(v2 + 1024) = 0;

  [*(a1 + 32) clearSplitViewStateTransitionStateIfNecessary];
  v4 = *(a1 + 32);

  return [v4 updatePreferredSplitBehavior];
}

- (id)_activeTransitionCoordinator
{
  transitionCoordinator = [(DOCSplitBrowserViewController *)self transitionCoordinator];
  sizeTransitionCoordinator = transitionCoordinator;
  if (!transitionCoordinator)
  {
    sizeTransitionCoordinator = self->_sizeTransitionCoordinator;
  }

  v5 = sizeTransitionCoordinator;

  return sizeTransitionCoordinator;
}

- (void)clearSplitViewStateTransitionStateIfNecessary
{
  if (!self->_sizeTransitionCoordinator)
  {
    doc_splitViewStateTransitionStart = [(UISplitViewController *)self doc_splitViewStateTransitionStart];

    if (doc_splitViewStateTransitionStart)
    {
      [(UISplitViewController *)self setDoc_splitViewStateTransitionStart:0];
      [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:0];

      [(DOCSplitBrowserViewController *)self updateTraitCollectionTabBarSetting];
    }
  }
}

- (BOOL)isCollapsed
{
  if (([objc_opt_class() disableWorkaroundFor124376396] & 1) != 0 || (-[UISplitViewController doc_splitViewStateTransitionEnd](self, "doc_splitViewStateTransitionEnd"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([MEMORY[0x277D06208] _UIPTabInfrastructureEnabled] && (-[DOCSplitBrowserViewController traitCollection](self, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "horizontalSizeClass"), v7, v8 == 1))
    {
      return 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = DOCSplitBrowserViewController;
      return [(DOCSplitBrowserViewController *)&v9 isCollapsed];
    }
  }

  else
  {
    v4 = v3;
    isCollapsed = [v3 isCollapsed];

    return isCollapsed;
  }
}

- (int64_t)displayMode
{
  if (([objc_opt_class() disableWorkaroundFor124376396] & 1) != 0 || (-[UISplitViewController doc_splitViewStateTransitionEnd](self, "doc_splitViewStateTransitionEnd"), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7.receiver = self;
    v7.super_class = DOCSplitBrowserViewController;
    return [(DOCSplitBrowserViewController *)&v7 displayMode];
  }

  else
  {
    v4 = v3;
    displayMode = [v3 displayMode];

    return displayMode;
  }
}

- (void)_splitViewController:(id)controller didFinishExpandToDisplayMode:(int64_t)mode
{
  v4 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController:controller];
  [v4 splitViewWillDidExpand];
}

- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode
{
  [(DOCSplitBrowserViewController *)self clearSplitViewStateTransitionStateIfNecessary:controller];
  [(DOCSplitBrowserViewController *)self updateTraitCollectionTabBarSetting];

  [(DOCSplitBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  if ([(DOCSplitBrowserViewController *)self doc_hasAppeared])
  {
    transitionCoordinator = [(DOCSplitBrowserViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v28 = self->_sizeTransitionCoordinator == 0;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  displayMode = [controllerCopy displayMode];
  _activeTransitionCoordinator = [(DOCSplitBrowserViewController *)self _activeTransitionCoordinator];
  v26 = _activeTransitionCoordinator != 0;
  if (!_activeTransitionCoordinator)
  {
    _activeTransitionCoordinator = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
  }

  doc_splitViewStateTransitionStart = [(UISplitViewController *)self doc_splitViewStateTransitionStart];
  v10 = doc_splitViewStateTransitionStart;
  if (doc_splitViewStateTransitionStart)
  {
    doc_splitViewState = doc_splitViewStateTransitionStart;
  }

  else
  {
    doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  }

  v12 = doc_splitViewState;

  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:0];
  v13 = [v12 withDisplayMode:mode];
  v14 = [v13 withIsCollapsed:{objc_msgSend(controllerCopy, "isCollapsed")}];

  [(UISplitViewController *)self setDoc_splitViewStateTransitionStart:v12];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:v14];
  v15 = [DOCSplitViewState isShowOverlayTransitionFromState:v12 toState:v14];
  if (_activeTransitionCoordinator)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16 | [DOCSplitViewState isHideOverlayTransitionFromState:v12 toState:v14];
  if (self->_sizeTransitionCoordinator)
  {
    v18 = 0;
  }

  else
  {
    isSidebarShown = [v12 isSidebarShown];
    v18 = isSidebarShown ^ [v14 isSidebarShown];
  }

  [(DOCSplitBrowserViewController *)self setPrefersAnimatedTabVibilityChanges:v18];
  if (v16)
  {
    [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v14];
  }

  [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
  [(DOCSplitBrowserViewController *)self prepareSnapshotForSplitStateChangingFromState:v12 toState:v14 alongside:_activeTransitionCoordinator];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke;
  v36[3] = &unk_278FA2780;
  v36[4] = self;
  v37 = v12;
  v40 = displayMode;
  modeCopy = mode;
  v38 = v14;
  v39 = _activeTransitionCoordinator;
  v42 = (v17 & 1) == 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke_2;
  v29[3] = &unk_278FA27A8;
  v29[4] = self;
  v30 = v38;
  v34 = v28;
  v32 = v37;
  v33 = displayMode;
  v35 = v26;
  v31 = controllerCopy;
  v20 = v37;
  v21 = controllerCopy;
  v22 = v38;
  v23 = _activeTransitionCoordinator;
  [v23 animateAlongsideTransition:v36 completion:v29];
  doc_inWindowPerformingSnapshotting = [(DOCSplitBrowserViewController *)self doc_inWindowPerformingSnapshotting];
  if (mode == 1 && (doc_inWindowPerformingSnapshotting & 1) == 0)
  {
    sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
    if ([sidebarViewController isEditing])
    {
      [sidebarViewController setEditing:0];
    }
  }
}

void __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateTraitCollectionTabBarSetting];
  [*(a1 + 32) updateDisplayModeButtonVisibility];
  [*(a1 + 32) updateUIPHorizontalInsetsIfNecessary];
  v2 = [*(a1 + 32) splitViewDelegate];
  [v2 splitViewController:*(a1 + 32) willChangeFromState:*(a1 + 40) toState:*(a1 + 48)];

  v3 = [*(a1 + 32) fullDocumentManagerViewController];
  [v3 splitViewWillChangeFrom:*(a1 + 64) to:*(a1 + 72) alongsideCoordinator:*(a1 + 56)];

  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    [v4 updateContentEditingOverlaysForState:v5];
  }
}

void __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) updateContentEditingOverlaysForState:*(a1 + 40)];
  [*(a1 + 32) updateDisplayModeButtonVisibility];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) _saveUserPrefersTiledSidebarForChangeFromDisplayMode:*(a1 + 64) toDisplayMode:{objc_msgSend(*(a1 + 48), "displayMode")}];
  }

  if (([v4 isCancelled] & 1) != 0 || (*(a1 + 73) & 1) == 0 && objc_msgSend(*(a1 + 32), "doc_isAppearing"))
  {
    [*(a1 + 32) clearSplitViewStateTransitionStateIfNecessary];
  }

  v3 = [*(a1 + 32) splitViewDelegate];
  [v3 splitViewController:*(a1 + 32) didChangeFromState:*(a1 + 56) toState:*(a1 + 40) isUserDisplayModeChange:*(a1 + 72)];

  [*(a1 + 32) setPrefersAnimatedTabVibilityChanges:0];
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  [(DOCSplitBrowserViewController *)self _arrangeSidebarForCollapsedPresentationForced:1, column];
  doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  v6 = [doc_splitViewState withIsCollapsed:1];
  [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v6];

  v7 = [(DOCSplitBrowserViewController *)self viewControllerForColumn:0];
  v8 = objc_opt_self();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  if (v6)
  {
    [v7 setNavigationBarHidden:1];
  }

  return 3;
}

- (void)_arrangeSidebarForCollapsedPresentationForced:(BOOL)forced
{
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  if (forced || [(DOCSplitBrowserViewController *)self isCollapsed])
  {
    if ([(DOCSplitBrowserViewController *)self includeSidebarInCollapsedNavStack])
    {
      rootViewController = [fullDocumentManagerViewController rootViewController];

      if (rootViewController != sidebarViewController)
      {
        [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:MEMORY[0x277CBEBF8]];
        sidebarViewController2 = [(DOCSplitBrowserViewController *)self sidebarViewController];
        [fullDocumentManagerViewController setRootViewController:sidebarViewController2];

        if ([sidebarViewController isEditing])
        {
          internalNavigationController = [fullDocumentManagerViewController internalNavigationController];
          v9 = [internalNavigationController popToViewController:sidebarViewController animated:0];
        }
      }
    }

    else
    {
      [fullDocumentManagerViewController setRootViewController:0];
    }
  }
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  v29[1] = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"DOCSidebarDisabled"];

  if (v7)
  {
    return 1;
  }

  v8 = [(DOCSplitBrowserViewController *)self viewControllerForColumn:0];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v8 setNavigationBarHidden:0];
  }

  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  isEditing = [sidebarViewController isEditing];

  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  effectiveBrowserViewController = [fullDocumentManagerViewController effectiveBrowserViewController];
  isEditing2 = [effectiveBrowserViewController isEditing];

  fullDocumentManagerViewController2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  hierarchyController = [fullDocumentManagerViewController2 hierarchyController];
  [hierarchyController invalidateAllAssertions];

  fullDocumentManagerViewController3 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  hierarchyController2 = [fullDocumentManagerViewController3 hierarchyController];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__DOCSplitBrowserViewController_splitViewController_displayModeForExpandingToProposedDisplayMode___block_invoke;
  v28[3] = &unk_278FA1C30;
  v28[4] = self;
  [hierarchyController2 performWhileForcingChangeInPreparationQueue:v28];

  sidebarViewController2 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [sidebarViewController2 doc_removeFromParentWithRemoveSubviewBlock:0];

  sidebarViewController3 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v29[0] = sidebarViewController3;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:v22];

  sidebarViewController4 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [sidebarViewController4 setEditing:isEditing];

  fullDocumentManagerViewController4 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [fullDocumentManagerViewController4 setEditing:isEditing2];

  doc_splitViewState = [(UISplitViewController *)self doc_splitViewState];
  v26 = [doc_splitViewState withIsCollapsed:0];
  [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v26];

  return mode;
}

void __98__DOCSplitBrowserViewController_splitViewController_displayModeForExpandingToProposedDisplayMode___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) fullDocumentManagerViewController];
  [v1 setRootViewController:0];
}

- (BOOL)_contextAllowsPersistingColumnVisibilityChanges
{
  if ([(DOCSplitBrowserViewController *)self _sidebarVisibilityPinnedToWindowSizingOnly])
  {
    return 0;
  }

  view = [(DOCSplitBrowserViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v3 = [windowScene activationState] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dismissSidebarViewControllerIfNeeded
{
  viewControllers = [(DOCSplitBrowserViewController *)self viewControllers];
  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v5 = [viewControllers containsObject:sidebarViewController];

  if ((v5 & 1) == 0)
  {
    sidebarViewController = self->_sidebarViewController;

    [(DOCSidebarViewController *)sidebarViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)thumbnails
{
  traitCollection = [(DOCSplitBrowserViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v6 = dispatch_time(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__DOCSplitBrowserViewController_fullDocumentManagerDidFinishGatheringItemsAndThumbnails___block_invoke;
    block[3] = &unk_278FA1C30;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

- (void)setSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [sidebarViewController setSceneIdentifier:identifierCopy];

  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  configuration = [fullDocumentManagerViewController configuration];
  [configuration setSceneIdentifier:identifierCopy];
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)items
{
  itemsCopy = items;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [fullDocumentManagerViewController setAdditionalTrailingNavigationBarButtonItems:itemsCopy];

  sidebarViewController = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [sidebarViewController setAdditionalTrailingNavigationBarButtonItems:itemsCopy];
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)items
{
  itemsCopy = items;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [fullDocumentManagerViewController setAdditionalLeadingNavigationBarButtonItems:itemsCopy];
}

- (id)_viewControllerForOverlayTabBar
{
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  internalNavigationController = [fullDocumentManagerViewController internalNavigationController];

  return internalNavigationController;
}

- (BOOL)_shouldOverlayTabBar
{
  _viewControllerForOverlayTabBar = [(DOCSplitBrowserViewController *)self _viewControllerForOverlayTabBar];
  _shouldOverlayTabBar = [_viewControllerForOverlayTabBar _shouldOverlayTabBar];

  return _shouldOverlayTabBar;
}

- (id)_hostingNavigationBar
{
  _viewControllerForOverlayTabBar = [(DOCSplitBrowserViewController *)self _viewControllerForOverlayTabBar];
  _hostingNavigationBar = [_viewControllerForOverlayTabBar _hostingNavigationBar];

  return _hostingNavigationBar;
}

+ (BOOL)disableWorkaroundFor124376396
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DisableWorkaroundFor124376396"];

  return v3;
}

- (DOCSplitViewControllerDelegate)splitViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewDelegate);

  return WeakRetained;
}

- (void)updateTraitCollectionTabBarSetting
{
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  v3 = objc_opt_self();
  configuration = [(UIDocumentBrowserViewController *)fullDocumentManagerViewController configuration];
  sceneIdentifier = [(DOCConfiguration *)configuration sceneIdentifier];

  globalTabbedBrowserControllerForIdentifier_ = [v3 globalTabbedBrowserControllerForIdentifier_];
  [globalTabbedBrowserControllerForIdentifier_ updateTraitCollectionTabBarSetting];
}

- (void)swift_commonInit
{
  selfCopy = self;
  sidebarViewController = [(DOCSplitBrowserViewController *)selfCopy sidebarViewController];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *sidebarViewController) + 0x508))();

  if (v4)
  {
    (*((*v3 & *v4) + 0x268))([(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController], &protocol witness table for DOCFullDocumentManagerViewController);
  }
}

- (void)prepareSnapshotForSplitStateChangingFromState:(id)state toState:(id)toState alongside:(id)alongside
{
  stateCopy = state;
  toStateCopy = toState;
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCSplitBrowserViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(stateCopy, toStateCopy, alongside);

  swift_unknownObjectRelease();
}

- (void)forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary
{
  selfCopy = self;
  if ([(DOCSplitBrowserViewController *)selfCopy enclosedInUIPDocumentLanding]&& [(DOCSplitBrowserViewController *)selfCopy displayMode]== 1)
  {
    [(DOCSplitBrowserViewController *)selfCopy saveUserPrefersSidebarHidden:1];
  }
}

- (void)updateUIPHorizontalInsetsIfNecessary
{
  selfCopy = self;
  DOCSplitBrowserViewController.updateUIPHorizontalInsetsIfNecessary()();
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

  DOCSplitBrowserViewController.target(forAction:withSender:)(action, v16, v17);

  outlined destroy of Any?(v16);
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

  v8 = DOCSplitBrowserViewController.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of Any?(v10);
  return v8;
}

- (void)sidebarViewController:(id)controller didSelect:(id)select
{
  selectCopy = select;
  selfCopy = self;
  doc_splitViewState = [(UISplitViewController *)selfCopy doc_splitViewState];
  isSidebarShownInOverlay = [(DOCSplitViewState *)doc_splitViewState isSidebarShownInOverlay];

  if (isSidebarShownInOverlay)
  {
    [(DOCSplitBrowserViewController *)selfCopy toggleSidebarShown];
  }

  DOCSplitBrowserViewController.updateLocation(_:)(selectCopy);
}

- (void)sidebarViewController:(id)controller wantsToReveal:(id)reveal
{
  revealCopy = reveal;
  selfCopy = self;
  node = [revealCopy node];
  if (node)
  {
    v7 = node;
    fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v7, 1, DOCGridLayout.specIconWidth.modify, 0, fullDocumentManagerViewController);
    swift_unknownObjectRelease();
  }
}

- (BOOL)sidebarViewControllerWithIsCollapsed:(id)collapsed
{
  selfCopy = self;
  doc_splitViewState = [(UISplitViewController *)selfCopy doc_splitViewState];
  isCollapsed = [(DOCSplitViewState *)doc_splitViewState isCollapsed];

  return isCollapsed;
}

- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location
{
  locationCopy = location;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController importScannedDocumentAt:v17 presentingController:controllerCopy importToCurrentLocation:locationCopy];

  (*(v9 + 8))(v12, v8);
}

- (void)didSelectItem:(id)item atParentLocation:(id)location wasAlreadySelected:(BOOL)selected onlyRevealIfColumn:(BOOL)column
{
  columnCopy = column;
  selectedCopy = selected;
  itemCopy = item;
  locationCopy = location;
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController didSelectItem:itemCopy atParentLocation:locationCopy wasAlreadySelected:selectedCopy onlyRevealIfColumn:columnCopy];
}

- (void)didConfirmPickIn:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController didConfirmPickIn:in];

  swift_unknownObjectRelease();
}

- (int64_t)pickerOperationFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  v7 = [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController pickerOperationFor:for];
  swift_unknownObjectRelease();

  return v7;
}

- (id)pickerOperationTitleFor:(id)for useShortTitle:(BOOL)title
{
  titleCopy = title;
  swift_unknownObjectRetain();
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  v9 = [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController pickerOperationTitleFor:for useShortTitle:titleCopy];
  swift_unknownObjectRelease();

  return v9;
}

- (void)didSelectLocation:(id)location atParentLocation:(id)parentLocation
{
  locationCopy = location;
  selfCopy = self;
  DOCSplitBrowserViewController.updateLocation(_:)(locationCopy);
}

- (void)didIndicateCancelPicker
{
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController didIndicateCancelPicker];
}

- (void)didToggleEditStateWithEditing:(BOOL)editing in:(id)in
{
  editingCopy = editing;
  inCopy = in;
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController didToggleEditStateWithEditing:editingCopy in:inCopy];

  [(DOCSplitBrowserViewController *)selfCopy updateTraitCollectionTabBarSetting];
}

- (BOOL)isBrowserCurrentLocation:(id)location
{
  swift_unknownObjectRetain();
  selfCopy = self;
  fullDocumentManagerViewController = [(DOCSplitBrowserViewController *)selfCopy fullDocumentManagerViewController];
  v7 = [(DOCFullDocumentManagerViewController *)fullDocumentManagerViewController isBrowserCurrentLocation:location];
  swift_unknownObjectRelease();

  return v7;
}

- (void)initWithConfiguration:(os_log_t)log sourceObserver:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2493AC000, log, OS_LOG_TYPE_ERROR, "Error getting item from URL: %@ error: %@", &v3, 0x16u);
}

- (void)initWithConfiguration:(void *)a1 sourceObserver:.cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_2493AC000, v1, OS_LOG_TYPE_FAULT, "ERROR(performance): %@'s view was loaded during init", &v4, 0xCu);
}

@end