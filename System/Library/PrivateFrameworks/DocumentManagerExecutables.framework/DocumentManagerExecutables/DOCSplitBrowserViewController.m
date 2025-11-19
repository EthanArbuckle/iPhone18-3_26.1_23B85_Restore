@interface DOCSplitBrowserViewController
+ (BOOL)disableWorkaroundFor124376396;
- (BOOL)_contextAllowsPersistingColumnVisibilityChanges;
- (BOOL)_shouldOverlayTabBar;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isBrowserCurrentLocation:(id)a3;
- (BOOL)isCollapsed;
- (BOOL)isShowingCollapsedSidebarViewController;
- (BOOL)sidebarViewControllerWithIsCollapsed:(id)a3;
- (DOCSplitBrowserViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4;
- (DOCSplitViewControllerDelegate)splitViewDelegate;
- (id)_activeTransitionCoordinator;
- (id)_hostingNavigationBar;
- (id)_swipeToCloseSidebarGestureRecognizer;
- (id)_tapToCloseSidebarGestureRecognizer;
- (id)_viewControllerForOverlayTabBar;
- (id)pickerOperationTitleFor:(id)a3 useShortTitle:(BOOL)a4;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)_customPreferredSplitBehavior_EmbeddedScreen;
- (int64_t)displayMode;
- (int64_t)pickerOperationFor:(id)a3;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)_arrangeSidebarForCollapsedPresentationForced:(BOOL)a3;
- (void)_saveUserPrefersTiledSidebarForChangeFromDisplayMode:(int64_t)a3 toDisplayMode:(int64_t)a4;
- (void)_splitViewController:(id)a3 animateTransitionToStateRequest:(id)a4 detailSize:(CGSize)a5 duration:(double)a6;
- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5;
- (void)_splitViewController:(id)a3 didFinishExpandToDisplayMode:(int64_t)a4;
- (void)clearSplitViewStateTransitionStateIfNecessary;
- (void)configureUIPDocumentLandingStyleIfNecessary;
- (void)dealloc;
- (void)didConfirmPickIn:(id)a3;
- (void)didIndicateCancelPicker;
- (void)didSelectItem:(id)a3 atParentLocation:(id)a4 wasAlreadySelected:(BOOL)a5 onlyRevealIfColumn:(BOOL)a6;
- (void)didSelectLocation:(id)a3 atParentLocation:(id)a4;
- (void)didToggleEditStateWithEditing:(BOOL)a3 in:(id)a4;
- (void)dismissSidebarViewControllerIfNeeded;
- (void)forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary;
- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)a3;
- (void)hideSidebar;
- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareSnapshotForSplitStateChangingFromState:(id)a3 toState:(id)a4 alongside:(id)a5;
- (void)saveUserPrefersSidebarHidden:(BOOL)a3;
- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3;
- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3;
- (void)setIncludeSidebarInCollapsedNavStack:(BOOL)a3;
- (void)setPickerContext:(id)a3;
- (void)setSceneIdentifier:(id)a3;
- (void)setShortDebugID:(id)a3;
- (void)showSidebarAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)sidebarViewController:(id)a3 didSelect:(id)a4;
- (void)sidebarViewController:(id)a3 wantsToReveal:(id)a4;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)swift_commonInit;
- (void)toggleSidebarShown;
- (void)updateContentEditingOverlaysForState:(id)a3;
- (void)updateDisplayModeButtonVisibility;
- (void)updatePreferredDisplayModeFromPersistentStore;
- (void)updatePreferredSplitBehavior;
- (void)updateTraitCollectionTabBarSetting;
- (void)updateUIPHorizontalInsetsIfNecessary;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCSplitBrowserViewController

- (DOCSplitBrowserViewController)initWithConfiguration:(id)a3 sourceObserver:(id)a4
{
  v84[6] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v81.receiver = self;
  v81.super_class = DOCSplitBrowserViewController;
  v9 = [(DOCSplitBrowserViewController *)&v81 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    v74 = v8;
    [(DOCSplitBrowserViewController *)v9 setDelegate:v9];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v12 substringToIndex:6];
    shortDebugID = v10->_shortDebugID;
    v10->_shortDebugID = v13;

    objc_storeStrong(&v10->_sourceObserver, a4);
    objc_storeStrong(&v10->_configuration, a3);
    if ([v7 isInUIPDocumentLanding])
    {
      [(DOCSplitBrowserViewController *)v10 configureUIPDocumentLandingStyleIfNecessary];
    }

    v10->_includeSidebarInCollapsedNavStack = 1;
    v15 = [v7 copy];
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
      v20 = [v15 hiddenSourcesIdentifiers];
      v21 = [v20 arrayByAddingObject:*MEMORY[0x277D05DD0]];
      [v15 setHiddenSourcesIdentifiers:v21];

      v22 = [v15 forbiddenActionIdentifiers];
      v23 = *MEMORY[0x277D05F90];
      v83[0] = *MEMORY[0x277D05FE0];
      v83[1] = v23;
      v24 = *MEMORY[0x277D06028];
      v83[2] = *MEMORY[0x277D06060];
      v83[3] = v24;
      v83[4] = *MEMORY[0x277D05FF8];
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:5];
      v26 = [v22 arrayByAddingObjectsFromArray:v25];
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
    v33 = [MEMORY[0x277D05EA8] recentDocumentsLocation];
    v34 = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController itemCollectionViewPool];
    v35 = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController documentManager];
    v36 = [(DOCFullDocumentManagerViewController *)v10->_fullDocumentManagerViewController actionManager];
    v72 = v29;
    v37 = [v32 docSearchControllerForSearchingIn:v33 configuration:v29 collectionViewPool:v34 documentManager:v35 actionManager:v36];

    v38 = v37;
    [v37 setPresentationDelegate:v10->_fullDocumentManagerViewController];
    v39 = [v37 resultCollectionViewController];
    [v39 setActionReporting:v10];

    [(DOCSidebarViewController *)v10->_sidebarViewController setSearchController:v38];
    v40 = [(DOCSidebarViewController *)v10->_sidebarViewController navigationItem];
    [v40 setHidesSearchBarWhenScrolling:0];

    [(DOCSidebarViewController *)v10->_sidebarViewController setDefinesPresentationContext:1];
    v41 = objc_alloc_init(_TtC26DocumentManagerExecutables34DOCSidebarPaneNavigationController);
    sidebarNavigationController = v10->_sidebarNavigationController;
    v10->_sidebarNavigationController = v41;

    v43 = [(DOCSidebarPaneNavigationController *)v10->_sidebarNavigationController navigationBar];
    [v43 setPrefersLargeTitles:1];

    [(DOCSidebarPaneNavigationController *)v10->_sidebarNavigationController setToolbarHidden:1];
    [(DOCSplitBrowserViewController *)v10 updatePreferredDisplayModeFromPersistentStore];
    v44 = [(DOCConfiguration *)v10->_configuration urls];
    v45 = [v44 count];

    if (v45)
    {
      if ([(DOCConfiguration *)v10->_configuration interactionMode]== 3)
      {
        v70 = v38;
        v71 = v7;
        v46 = [MEMORY[0x277CBEB18] array];
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
              v52 = [MEMORY[0x277CC6408] defaultManager];
              v53 = [v51 url];
              v76 = 0;
              v54 = [v52 itemForURL:v53 error:&v76];
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

              [v46 addObject:v54];
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

        v60 = [v46 count];
        v61 = [(DOCConfiguration *)v10->_configuration urls];
        v62 = [v61 count];

        v63 = [DOCPickerContext alloc];
        v64 = v63;
        if (v60 == v62)
        {
          v57 = [(DOCPickerContext *)v63 initWithNodes:v46];
          [(DOCSplitBrowserViewController *)v10 setPickerContext:v57];
        }

        else
        {
          v57 = [(DOCConfiguration *)v10->_configuration urls];
          v65 = [(DOCPickerContext *)v64 initWithFPURLs:v57];
          [(DOCSplitBrowserViewController *)v10 setPickerContext:v65];
        }

        v38 = v70;
        v7 = v71;
      }

      else
      {
        v56 = [DOCPickerContext alloc];
        v46 = [(DOCConfiguration *)v10->_configuration urls];
        v57 = [(DOCPickerContext *)v56 initWithFPURLs:v46];
        [(DOCSplitBrowserViewController *)v10 setPickerContext:v57];
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

    v8 = v74;
  }

  return v10;
}

- (void)setShortDebugID:(id)a3
{
  objc_storeStrong(&self->_shortDebugID, a3);
  v5 = a3;
  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController setShortDebugID:v5];
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
      v4 = [MEMORY[0x277D05F20] sharedStore];
      v5 = [(DOCSplitBrowserViewController *)self configuration];
      v6 = [v4 interfaceStateForConfiguration:v5];

      v7 = [v6 userPrefersTiledSidebarHidden];
      LODWORD(v5) = [v7 BOOLValue];

      v3 = v5;
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
  v3 = [(DOCSplitBrowserViewController *)self viewIfLoaded];
  v4 = [v3 window];
  v7 = [v4 screen];

  v5 = v7;
  if (v7)
  {
    if ([v7 _isEmbeddedScreen])
    {
      v6 = [(DOCSplitBrowserViewController *)self _customPreferredSplitBehavior_EmbeddedScreen];
    }

    else
    {
      v6 = [(DOCSplitBrowserViewController *)self _customPreferredSplitBehavior_ExternalScreen];
    }

    [(DOCSplitBrowserViewController *)self setPreferredSplitBehavior:v6];
    v5 = v7;
  }
}

- (int64_t)_customPreferredSplitBehavior_EmbeddedScreen
{
  v3 = [(DOCSplitBrowserViewController *)self doc_deprecated_interfaceOrientation];
  v4 = [(DOCSplitBrowserViewController *)self _rotatingToInterfaceOrientation];
  if (v4)
  {
    v3 = v4;
  }

  if ([(DOCConfiguration *)self->_configuration isPickerUI])
  {
    return 0;
  }

  else
  {
    return 2 * ((v3 - 1) < 2);
  }
}

- (void)_saveUserPrefersTiledSidebarForChangeFromDisplayMode:(int64_t)a3 toDisplayMode:(int64_t)a4
{
  if ([(DOCSplitBrowserViewController *)self _contextAllowsPersistingColumnVisibilityChanges]&& (a3 == 2 || a4 == 2))
  {

    [(DOCSplitBrowserViewController *)self saveUserPrefersSidebarHidden:a4 != 2];
  }
}

- (void)saveUserPrefersSidebarHidden:(BOOL)a3
{
  v3 = a3;
  v8 = [(DOCSplitBrowserViewController *)self configuration];
  v5 = [MEMORY[0x277D05F20] sharedStore];
  v6 = [v5 interfaceStateForConfiguration:v8];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [v6 setUserPrefersTiledSidebarHidden:v7];

    [v5 updateInterfaceState:v6 forConfiguration:v8];
    [(DOCSplitBrowserViewController *)self updatePreferredDisplayModeFromPersistentStore];
  }
}

- (void)setPickerContext:(id)a3
{
  v5 = a3;
  if (self->_pickerContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pickerContext, a3);
    [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController setPickerContext:v6];
    [(DOCSidebarViewController *)self->_sidebarViewController setPickerContext:v6];
    v5 = v6;
  }
}

- (void)configureUIPDocumentLandingStyleIfNecessary
{
  [(DOCSplitBrowserViewController *)self _setIgnoresSheetContext:1];
  v7.receiver = self;
  v7.super_class = DOCSplitBrowserViewController;
  v3 = [(DOCSplitBrowserViewController *)&v7 configuration];
  v4 = [v3 copy];

  v5 = [MEMORY[0x277D75348] _splitViewBorderColor];
  [v4 setBorderColor:v5];

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
  v3 = [(DOCSplitBrowserViewController *)self configuration];
  v4 = [v3 isPickerUI];

  v5 = [(DOCSplitBrowserViewController *)self view];
  v6 = v5;
  if (v4)
  {
    v7 = @"Browse View (Picker)";
  }

  else
  {
    v7 = @"Browse View";
  }

  [v5 setAccessibilityIdentifier:v7];

  [(DOCSidebarViewController *)self->_sidebarViewController setSidebarDelegate:self];
  v8 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:v9];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController ensureInternalNavigationControllerIsInstalled];
  [(DOCSplitBrowserViewController *)self setViewController:self->_sidebarNavigationController forColumn:0];
  v10 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [(DOCSplitBrowserViewController *)self setViewController:v10 forColumn:2];

  v11 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [(DOCSplitBrowserViewController *)self setViewController:v11 forColumn:3];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController addObserver:self forKeyPath:@"editing" options:1 context:DOCSplitBrowserViewControllerContext];
  [(DOCSidebarViewController *)self->_sidebarViewController addObserver:self forKeyPath:@"editing" options:1 context:DOCSplitBrowserViewControllerContext];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [[DOCContentDimmingOverlay alloc] initForCovering:self->_sidebarNavigationController];
    sourcesOverlay = self->_sourcesOverlay;
    self->_sourcesOverlay = v12;

    [(DOCContentDimmingOverlay *)self->_sourcesOverlay setAutohideWhenPossibleDropTarget:1];
    v14 = [(DOCSidebarViewController *)self->_sidebarViewController navigationController];
    v15 = [v14 view];
    [v15 addSubview:self->_sourcesOverlay];
  }

  v16 = [[DOCContentDimmingOverlay alloc] initForCovering:self->_fullDocumentManagerViewController];
  browserOverlay = self->_browserOverlay;
  self->_browserOverlay = v16;

  v18 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController view];
  [v18 addSubview:self->_browserOverlay];

  [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController updateRelatedViewControllersWithCurrentHierarchy];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v6 viewWillDisappear:a3];
  v4 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [v4 setEditing:0];

  v5 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [v5 setEditing:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v8 viewDidAppear:a3];
  v4 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController view];
  [v4 setAutoresizingMask:18];

  v5 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];

  if (v5)
  {
    v6 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
    v7 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];
    [v6 requestFocusUpdateToEnvironment:v7];

    [v6 updateFocusIfNeeded];
    [(DOCSplitBrowserViewController *)self setItemToFocusDuringAppearance:0];
  }

  [(DOCSplitBrowserViewController *)self forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
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
  v2 = [(DOCSplitBrowserViewController *)self _primaryDimmingView];
  v3 = [v2 gestureRecognizers];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(DOCSplitBrowserViewController *)self _primaryDimmingView];
  v3 = [v2 gestureRecognizers];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  if (DOCSplitBrowserViewControllerContext == a6)
  {
    if ([v11 isEqualToString:@"editing"])
    {
      v13 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController prefersTabBarHidden];
      if ([(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController isEditing])
      {
        v13 |= [(DOCSplitBrowserViewController *)self enclosingTabSwitcherStyle]== 2;
      }

      v14 = [(DOCSidebarViewController *)self->_sidebarViewController isEditing];
      if ([MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating])
      {
        v15 = [(DOCSplitBrowserViewController *)self traitCollection];
        v16 = [v15 horizontalSizeClass] == 2;
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
      v25 = v13 & 1;
      v26 = v14;
      [MEMORY[0x277D75D18] doc_performAllowingAnimations:v16 block:v23];
      [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
      if (![(DOCSplitBrowserViewController *)self isCollapsed])
      {
        v18 = [(DOCSplitBrowserViewController *)self _swipeToCloseSidebarGestureRecognizer];
        [v18 setEnabled:!v14];

        v19 = [(DOCSplitBrowserViewController *)self _tapToCloseSidebarGestureRecognizer];
        [v19 setEnabled:!v14];

        if (self->_sidebarViewController == v12 && v14)
        {
          v20 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
          [v20 dismissSearch];

          v21 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
          [v21 setEditing:0 animated:1];
        }

        v22 = [(UISplitViewController *)self doc_splitViewState];
        [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v22];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"DOCSplitBrowserViewController.m" lineNumber:431 description:{@"Unhandled keyPath: %@", v11}];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = DOCSplitBrowserViewController;
    [(DOCSplitBrowserViewController *)&v27 observeValueForKeyPath:v11 ofObject:v12 change:a5 context:a6];
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
    v12 = [(UISplitViewController *)self doc_splitViewState];
    v3 = [v12 isCollapsed];
    v4 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController isInUserTriggeredSelectionMode];
    v5 = v4 & v3 ^ 1;
    v6 = !v4;
    if ([(DOCConfiguration *)self->_configuration isPickerUI])
    {
      v7 = [(DOCSplitBrowserViewController *)self traitCollection];
      v8 = DOCUsePadIdiomForTraits();

      if (v8)
      {
        v6 = 0;
        v5 = [(DOCSplitBrowserViewController *)self displayMode]== 1;
      }
    }

    v9 = [MEMORY[0x277D75C80] enclosingTabSwitcherCanBeFloating];
    v10 = 2;
    if (!(!v6 & v5))
    {
      v10 = 0;
    }

    if (v9)
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

- (void)updateContentEditingOverlaysForState:(id)a3
{
  v12 = a3;
  if ([(DOCSplitBrowserViewController *)self isCollapsed])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [(DOCFullDocumentManagerViewController *)self->_fullDocumentManagerViewController effectiveBrowserViewController];
    v7 = [v6 contentViewController];

    if ([v12 isSidebarShownInOverlay])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v7 isInUserTriggeredSelectionMode];
    }

    v4 = [(DOCSidebarViewController *)self->_sidebarViewController isEditing];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(DOCContentDimmingOverlay *)self->_sourcesOverlay setActive:v5];
    v8 = [(DOCContentDimmingOverlay *)self->_sourcesOverlay superview];

    if (v8)
    {
      v9 = [(DOCContentDimmingOverlay *)self->_sourcesOverlay superview];
      [v9 bringSubviewToFront:self->_sourcesOverlay];
    }
  }

  [(DOCContentDimmingOverlay *)self->_browserOverlay setActive:v4];
  v10 = [(DOCContentDimmingOverlay *)self->_browserOverlay superview];

  if (v10)
  {
    v11 = [(DOCContentDimmingOverlay *)self->_browserOverlay superview];
    [v11 bringSubviewToFront:self->_browserOverlay];
  }

  [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
}

- (void)dealloc
{
  if ([(DOCSplitBrowserViewController *)self isViewLoaded])
  {
    v3 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    [v3 removeObserver:self forKeyPath:@"editing"];

    v4 = [(DOCSplitBrowserViewController *)self sidebarViewController];
    [v4 removeObserver:self forKeyPath:@"editing"];
  }

  v5.receiver = self;
  v5.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v5 dealloc];
}

- (void)setIncludeSidebarInCollapsedNavStack:(BOOL)a3
{
  if ([(DOCSplitBrowserViewController *)self includeSidebarInCollapsedNavStack]!= a3)
  {
    self->_includeSidebarInCollapsedNavStack = a3;

    [(DOCSplitBrowserViewController *)self _arrangeSidebarForCollapsedPresentationForced:0];
  }
}

- (void)showSidebarAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(DOCSplitBrowserViewController *)self isCollapsed])
  {
    v7 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    [v7 popToRootViewControllerAnimated:v4];

    v8 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
    v9 = [v8 transitionCoordinator];

    if (!v9)
    {
LABEL_6:
      v9 = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
    }
  }

  else
  {
    v10 = [(UISplitViewController *)self doc_splitViewState];
    v11 = [v10 isSidebarShown];

    if (v11)
    {
      goto LABEL_6;
    }

    [(DOCSplitBrowserViewController *)self toggleSidebarShown];
    v9 = [(DOCSplitBrowserViewController *)self transitionCoordinator];
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DOCSplitBrowserViewController_showSidebarAnimated_withCompletion___block_invoke_2;
  v13[3] = &unk_278FA2758;
  v14 = v6;
  v12 = v6;
  [v9 animateAlongsideTransition:&__block_literal_global_9 completion:v13];
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
  v3 = [(UISplitViewController *)self doc_splitViewState];
  v4 = [v3 isSidebarShown];

  if (v4)
  {

    [(DOCSplitBrowserViewController *)self toggleSidebarShown];
  }
}

- (void)toggleSidebarShown
{
  v3 = [(UISplitViewController *)self doc_splitViewState];
  v4 = [v3 isSidebarShown];

  if (v4)
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

  v3 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v4 = [v3 currentViewController];
  v5 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v6 = v4 == v5;

  return v6;
}

- (id)preferredFocusEnvironments
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];

  if (v3)
  {
    v4 = [(DOCSplitBrowserViewController *)self itemToFocusDuringAppearance];
    v12[0] = v4;
    v5 = v12;
  }

  else
  {
    v6 = [(DOCSplitBrowserViewController *)self sidebarViewController];
    v7 = [v6 sidebarHasActiveFocus];

    if (v7)
    {
      v4 = [(DOCSplitBrowserViewController *)self sidebarViewController];
      v11 = v4;
      v5 = &v11;
    }

    else
    {
      v4 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
      v10 = v4;
      v5 = &v10;
    }
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:{1, v10, v11, v12[0]}];

  return v8;
}

- (void)_splitViewController:(id)a3 animateTransitionToStateRequest:(id)a4 detailSize:(CGSize)a5 duration:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(DOCSplitBrowserViewController *)self traitCollection];
  v12 = [v11 preferredNavigationBarStyle_objc];
  v13 = [v12 hasHistoryButtons];

  if ((v13 & 1) == 0)
  {
    [v10 leadingWidth];
    if (v14 < 0.5)
    {
      v15 = [v9 displayModeButtonItem];
      v16 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __106__DOCSplitBrowserViewController__splitViewController_animateTransitionToStateRequest_detailSize_duration___block_invoke;
      v18[3] = &unk_278FA1E80;
      v19 = v15;
      v20 = self;
      v17 = v15;
      [v16 animateWithDuration:v18 animations:a6];
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UISplitViewController *)self doc_splitViewState];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionStart:v8];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:0];
  v9 = v8;
  v10 = [v9 withIsCollapsed:{objc_msgSend(v7, "horizontalSizeClass") == 1}];

  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:v10];
  v12.receiver = self;
  v12.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v12 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__DOCSplitBrowserViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_278FA23F8;
  v11[4] = self;
  [v6 animateAlongsideTransition:0 completion:v11];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(DOCSplitBrowserViewController *)self updatePreferredSplitBehavior];
  v8 = v7;
  if (!v7)
  {
    v8 = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
  }

  objc_storeStrong(&self->_sizeTransitionCoordinator, v8);
  if (!v7)
  {
  }

  v12.receiver = self;
  v12.super_class = DOCSplitBrowserViewController;
  [(DOCSplitBrowserViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v3 = [(DOCSplitBrowserViewController *)self transitionCoordinator];
  sizeTransitionCoordinator = v3;
  if (!v3)
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
    v3 = [(UISplitViewController *)self doc_splitViewStateTransitionStart];

    if (v3)
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
    v5 = [v3 isCollapsed];

    return v5;
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
    v5 = [v3 displayMode];

    return v5;
  }
}

- (void)_splitViewController:(id)a3 didFinishExpandToDisplayMode:(int64_t)a4
{
  v4 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController:a3];
  [v4 splitViewWillDidExpand];
}

- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5
{
  [(DOCSplitBrowserViewController *)self clearSplitViewStateTransitionStateIfNecessary:a3];
  [(DOCSplitBrowserViewController *)self updateTraitCollectionTabBarSetting];

  [(DOCSplitBrowserViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  if ([(DOCSplitBrowserViewController *)self doc_hasAppeared])
  {
    v7 = [(DOCSplitBrowserViewController *)self transitionCoordinator];
    if (v7)
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

  v27 = [v6 displayMode];
  v8 = [(DOCSplitBrowserViewController *)self _activeTransitionCoordinator];
  v26 = v8 != 0;
  if (!v8)
  {
    v8 = [(DOCSplitBrowserViewController *)self _definiteTransitionCoordinator];
  }

  v9 = [(UISplitViewController *)self doc_splitViewStateTransitionStart];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(UISplitViewController *)self doc_splitViewState];
  }

  v12 = v11;

  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:0];
  v13 = [v12 withDisplayMode:a4];
  v14 = [v13 withIsCollapsed:{objc_msgSend(v6, "isCollapsed")}];

  [(UISplitViewController *)self setDoc_splitViewStateTransitionStart:v12];
  [(UISplitViewController *)self setDoc_splitViewStateTransitionEnd:v14];
  v15 = [DOCSplitViewState isShowOverlayTransitionFromState:v12 toState:v14];
  if (v8)
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
    v19 = [v12 isSidebarShown];
    v18 = v19 ^ [v14 isSidebarShown];
  }

  [(DOCSplitBrowserViewController *)self setPrefersAnimatedTabVibilityChanges:v18];
  if (v16)
  {
    [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v14];
  }

  [(DOCSplitBrowserViewController *)self updateDisplayModeButtonVisibility];
  [(DOCSplitBrowserViewController *)self prepareSnapshotForSplitStateChangingFromState:v12 toState:v14 alongside:v8];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke;
  v36[3] = &unk_278FA2780;
  v36[4] = self;
  v37 = v12;
  v40 = v27;
  v41 = a4;
  v38 = v14;
  v39 = v8;
  v42 = (v17 & 1) == 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__DOCSplitBrowserViewController_splitViewController_willChangeToDisplayMode___block_invoke_2;
  v29[3] = &unk_278FA27A8;
  v29[4] = self;
  v30 = v38;
  v34 = v28;
  v32 = v37;
  v33 = v27;
  v35 = v26;
  v31 = v6;
  v20 = v37;
  v21 = v6;
  v22 = v38;
  v23 = v8;
  [v23 animateAlongsideTransition:v36 completion:v29];
  v24 = [(DOCSplitBrowserViewController *)self doc_inWindowPerformingSnapshotting];
  if (a4 == 1 && (v24 & 1) == 0)
  {
    v25 = [(DOCSplitBrowserViewController *)self sidebarViewController];
    if ([v25 isEditing])
    {
      [v25 setEditing:0];
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

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  [(DOCSplitBrowserViewController *)self _arrangeSidebarForCollapsedPresentationForced:1, a4];
  v5 = [(UISplitViewController *)self doc_splitViewState];
  v6 = [v5 withIsCollapsed:1];
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

- (void)_arrangeSidebarForCollapsedPresentationForced:(BOOL)a3
{
  v10 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v5 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  if (a3 || [(DOCSplitBrowserViewController *)self isCollapsed])
  {
    if ([(DOCSplitBrowserViewController *)self includeSidebarInCollapsedNavStack])
    {
      v6 = [v10 rootViewController];

      if (v6 != v5)
      {
        [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:MEMORY[0x277CBEBF8]];
        v7 = [(DOCSplitBrowserViewController *)self sidebarViewController];
        [v10 setRootViewController:v7];

        if ([v5 isEditing])
        {
          v8 = [v10 internalNavigationController];
          v9 = [v8 popToViewController:v5 animated:0];
        }
      }
    }

    else
    {
      [v10 setRootViewController:0];
    }
  }
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"DOCSidebarDisabled"];

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

  v11 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v12 = [v11 isEditing];

  v13 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v14 = [v13 effectiveBrowserViewController];
  v15 = [v14 isEditing];

  v16 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v17 = [v16 hierarchyController];
  [v17 invalidateAllAssertions];

  v18 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v19 = [v18 hierarchyController];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__DOCSplitBrowserViewController_splitViewController_displayModeForExpandingToProposedDisplayMode___block_invoke;
  v28[3] = &unk_278FA1C30;
  v28[4] = self;
  [v19 performWhileForcingChangeInPreparationQueue:v28];

  v20 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [v20 doc_removeFromParentWithRemoveSubviewBlock:0];

  v21 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v29[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [(DOCSidebarPaneNavigationController *)self->_sidebarNavigationController setViewControllers:v22];

  v23 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [v23 setEditing:v12];

  v24 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [v24 setEditing:v15];

  v25 = [(UISplitViewController *)self doc_splitViewState];
  v26 = [v25 withIsCollapsed:0];
  [(DOCSplitBrowserViewController *)self updateContentEditingOverlaysForState:v26];

  return a4;
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

  v4 = [(DOCSplitBrowserViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    v3 = [v6 activationState] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dismissSidebarViewControllerIfNeeded
{
  v3 = [(DOCSplitBrowserViewController *)self viewControllers];
  v4 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    sidebarViewController = self->_sidebarViewController;

    [(DOCSidebarViewController *)sidebarViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)fullDocumentManagerDidFinishGatheringItemsAndThumbnails:(id)a3
{
  v4 = [(DOCSplitBrowserViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
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

- (void)setSceneIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [v5 setSceneIdentifier:v4];

  v7 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v6 = [v7 configuration];
  [v6 setSceneIdentifier:v4];
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(id)a3
{
  v4 = a3;
  v5 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [v5 setAdditionalTrailingNavigationBarButtonItems:v4];

  v6 = [(DOCSplitBrowserViewController *)self sidebarViewController];
  [v6 setAdditionalTrailingNavigationBarButtonItems:v4];
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(id)a3
{
  v4 = a3;
  v5 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  [v5 setAdditionalLeadingNavigationBarButtonItems:v4];
}

- (id)_viewControllerForOverlayTabBar
{
  v2 = [(DOCSplitBrowserViewController *)self fullDocumentManagerViewController];
  v3 = [v2 internalNavigationController];

  return v3;
}

- (BOOL)_shouldOverlayTabBar
{
  v2 = [(DOCSplitBrowserViewController *)self _viewControllerForOverlayTabBar];
  v3 = [v2 _shouldOverlayTabBar];

  return v3;
}

- (id)_hostingNavigationBar
{
  v2 = [(DOCSplitBrowserViewController *)self _viewControllerForOverlayTabBar];
  v3 = [v2 _hostingNavigationBar];

  return v3;
}

+ (BOOL)disableWorkaroundFor124376396
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableWorkaroundFor124376396"];

  return v3;
}

- (DOCSplitViewControllerDelegate)splitViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewDelegate);

  return WeakRetained;
}

- (void)updateTraitCollectionTabBarSetting
{
  v7 = self;
  v2 = [(DOCSplitBrowserViewController *)v7 fullDocumentManagerViewController];
  v3 = objc_opt_self();
  v4 = [(UIDocumentBrowserViewController *)v2 configuration];
  v5 = [(DOCConfiguration *)v4 sceneIdentifier];

  v6 = [v3 globalTabbedBrowserControllerForIdentifier_];
  [v6 updateTraitCollectionTabBarSetting];
}

- (void)swift_commonInit
{
  v5 = self;
  v2 = [(DOCSplitBrowserViewController *)v5 sidebarViewController];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x508))();

  if (v4)
  {
    (*((*v3 & *v4) + 0x268))([(DOCSplitBrowserViewController *)v5 fullDocumentManagerViewController], &protocol witness table for DOCFullDocumentManagerViewController);
  }
}

- (void)prepareSnapshotForSplitStateChangingFromState:(id)a3 toState:(id)a4 alongside:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  DOCSplitBrowserViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)forceSidebarHiddenByDefaultForUIPDocLandingIfNecessary
{
  v2 = self;
  if ([(DOCSplitBrowserViewController *)v2 enclosedInUIPDocumentLanding]&& [(DOCSplitBrowserViewController *)v2 displayMode]== 1)
  {
    [(DOCSplitBrowserViewController *)v2 saveUserPrefersSidebarHidden:1];
  }
}

- (void)updateUIPHorizontalInsetsIfNecessary
{
  v2 = self;
  DOCSplitBrowserViewController.updateUIPHorizontalInsetsIfNecessary()();
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

  DOCSplitBrowserViewController.target(forAction:withSender:)(a3, v16, v17);

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

  v8 = DOCSplitBrowserViewController.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of Any?(v10);
  return v8;
}

- (void)sidebarViewController:(id)a3 didSelect:(id)a4
{
  v5 = a4;
  v8 = self;
  v6 = [(UISplitViewController *)v8 doc_splitViewState];
  v7 = [(DOCSplitViewState *)v6 isSidebarShownInOverlay];

  if (v7)
  {
    [(DOCSplitBrowserViewController *)v8 toggleSidebarShown];
  }

  DOCSplitBrowserViewController.updateLocation(_:)(v5);
}

- (void)sidebarViewController:(id)a3 wantsToReveal:(id)a4
{
  v5 = a4;
  v9 = self;
  v6 = [v5 node];
  if (v6)
  {
    v7 = v6;
    v8 = [(DOCSplitBrowserViewController *)v9 fullDocumentManagerViewController];
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(v7, 1, DOCGridLayout.specIconWidth.modify, 0, v8);
    swift_unknownObjectRelease();
  }
}

- (BOOL)sidebarViewControllerWithIsCollapsed:(id)a3
{
  v3 = self;
  v4 = [(UISplitViewController *)v3 doc_splitViewState];
  v5 = [(DOCSplitViewState *)v4 isCollapsed];

  return v5;
}

- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5
{
  v5 = a5;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a4;
  v14 = self;
  v15 = [(DOCSplitBrowserViewController *)v14 fullDocumentManagerViewController];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  [(DOCFullDocumentManagerViewController *)v15 importScannedDocumentAt:v17 presentingController:v13 importToCurrentLocation:v5];

  (*(v9 + 8))(v12, v8);
}

- (void)didSelectItem:(id)a3 atParentLocation:(id)a4 wasAlreadySelected:(BOOL)a5 onlyRevealIfColumn:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v13 = self;
  v12 = [(DOCSplitBrowserViewController *)v13 fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)v12 didSelectItem:v10 atParentLocation:v11 wasAlreadySelected:v7 onlyRevealIfColumn:v6];
}

- (void)didConfirmPickIn:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = [(DOCSplitBrowserViewController *)v6 fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)v5 didConfirmPickIn:a3];

  swift_unknownObjectRelease();
}

- (int64_t)pickerOperationFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [(DOCSplitBrowserViewController *)v5 fullDocumentManagerViewController];
  v7 = [(DOCFullDocumentManagerViewController *)v6 pickerOperationFor:a3];
  swift_unknownObjectRelease();

  return v7;
}

- (id)pickerOperationTitleFor:(id)a3 useShortTitle:(BOOL)a4
{
  v4 = a4;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = [(DOCSplitBrowserViewController *)v7 fullDocumentManagerViewController];
  v9 = [(DOCFullDocumentManagerViewController *)v8 pickerOperationTitleFor:a3 useShortTitle:v4];
  swift_unknownObjectRelease();

  return v9;
}

- (void)didSelectLocation:(id)a3 atParentLocation:(id)a4
{
  v5 = a3;
  v6 = self;
  DOCSplitBrowserViewController.updateLocation(_:)(v5);
}

- (void)didIndicateCancelPicker
{
  v3 = self;
  v2 = [(DOCSplitBrowserViewController *)v3 fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)v2 didIndicateCancelPicker];
}

- (void)didToggleEditStateWithEditing:(BOOL)a3 in:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = self;
  v7 = [(DOCSplitBrowserViewController *)v8 fullDocumentManagerViewController];
  [(DOCFullDocumentManagerViewController *)v7 didToggleEditStateWithEditing:v4 in:v6];

  [(DOCSplitBrowserViewController *)v8 updateTraitCollectionTabBarSetting];
}

- (BOOL)isBrowserCurrentLocation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [(DOCSplitBrowserViewController *)v5 fullDocumentManagerViewController];
  v7 = [(DOCFullDocumentManagerViewController *)v6 isBrowserCurrentLocation:a3];
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