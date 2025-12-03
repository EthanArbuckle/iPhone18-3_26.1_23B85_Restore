@interface BrowserRootViewController
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (BOOL)_interfaceFillsScreen;
- (BOOL)_isShowingFindOnPage;
- (BOOL)_isTrackingDropSession;
- (BOOL)_navigationBarIsExpandedOnTop;
- (BOOL)_shouldHideUnifiedBar;
- (BOOL)_shouldInterceptBottomGesture;
- (BOOL)_shouldOverridePocketColorOnStartPageDueToWallpaperStyle:(int64_t)style;
- (BOOL)_shouldPositionBottomToolbarAboveKeyboard;
- (BOOL)_shouldShowThemeColorInTopBar;
- (BOOL)_showsTopBackdrop;
- (BOOL)_usesWebpageStatusBar;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)capsuleNavigationBarViewController:(id)controller shouldUnminimizeOnScrollForScrollView:(id)view;
- (BOOL)capsuleNavigationBarViewControllerAllowsMinimizationGesture:(id)gesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)inElementFullscreenForTabDocumentView:(id)view;
- (BOOL)isShowingDefaultBrowserSheet;
- (BOOL)isShowingLockedPrivateBrowsingView;
- (BOOL)isShowingPrivateBrowsingExplanationSheet;
- (BOOL)isUsingBottomCapsule;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)safari_wantsTransparentApplicationBackground;
- (BOOL)shouldFreezeWebViewUpdatesForTabDocumentView:(id)view;
- (BOOL)viewControllerIsKindOfSKStoreProductViewControllerClass:(id)class;
- (BrowserController)browserController;
- (BrowserRootViewController)initWithBrowserController:(id)controller;
- (BrowserRootViewControllerDelegate)delegate;
- (CGPoint)_convertDocumentCoordinateSpacePoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)_convertDocumentCoordinateSpaceRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CGRect)_convertRect:(CGRect)rect fromViewInDocumentContainer:(id)container toCoordinateSpace:(id)space;
- (CGRect)_frameForBottomToolbarForceHidden:(BOOL)hidden;
- (CGRect)_frameForCatalogView;
- (CGRect)_frameForContentContainerView;
- (CGRect)_frameForNavigationBar;
- (CGRect)_frameForSidebarWhenShowing:(BOOL)showing;
- (CGRect)_sidebarDimmedContentFrameIncludingSidebarOnlyIfEmbedded:(BOOL)embedded;
- (CGRect)bottomToolbarFrameInCoordinateSpace:(id)space includeKeyboard:(BOOL)keyboard;
- (CGRect)contentFrameInPageView;
- (CGRect)navigationBarFrameInCoordinateSpace:(id)space;
- (CGSize)_webViewMinimumLayoutSizeWithBarVisibilitiesIgnored:(BOOL)ignored;
- (CGSize)contentSizeForSnapshotGenerator:(id)generator;
- (CGSize)webViewMaximumUnobscuredLayoutSize;
- (CGSize)webViewMinimumLayoutSize;
- (CGSize)webViewMinimumUnobscuredLayoutSize;
- (NSNumber)capsuleCollectionViewLayout;
- (SFBarAnimating)currentBarAnimator;
- (SFScrollIndicatorInsets)scrollIndicatorInsetsForTabDocumentView:(SEL)view;
- (SidebarUIProxyDelegate)sidebarUIProxyDelegate;
- (TabThumbnailCollectionView)tabThumbnailCollectionView;
- (UIBarButtonItem)leadingSidebarButtonItem;
- (UIEdgeInsets)_avoidanceInsets;
- (UIEdgeInsets)_baseInsetsForHorizontalScrollIndicator;
- (UIEdgeInsets)_baseInsetsForVerticalScrollIndicator;
- (UIEdgeInsets)_loweredBarMaximumObscuredInsets;
- (UIEdgeInsets)_loweredBarMinimumObscuredInsets;
- (UIEdgeInsets)_loweredBarObscuredInsets;
- (UIEdgeInsets)_loweredBarObscuredInsetsIgnoringKeyboard;
- (UIEdgeInsets)_webViewSafeAreaInsets;
- (UIEdgeInsets)maximumObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space ignoreBarsMinimized:(BOOL)minimized;
- (UIEdgeInsets)minimumObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space;
- (UIEdgeInsets)obscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space;
- (UIEdgeInsets)obscuredInsetsWithComponents:(unint64_t)components forRect:(CGRect)rect inCoordinateSpace:(id)space;
- (UIEdgeInsets)obscuredScrollViewInsetsConsideringTargetState:(BOOL)state insetsDueToSafeArea:(UIEdgeInsets *)area;
- (UIEdgeInsets)obscuredScrollViewInsetsForTabDocumentView:(id)view unobscuredSafeAreaInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)scrollViewContentInsetAdjustmentsForTabDocumentView:(id)view;
- (UIEdgeInsets)sidebarObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space;
- (UIEdgeInsets)webViewEffectiveSafeAreaInsets;
- (UIView)clipperView;
- (ViewWithCustomNextResponder)contentContainerView;
- (_SFNavigationBarCommon)primaryNavigationBar;
- (_SFNavigationBarCommon)topBar;
- (double)_bottomBarOffset;
- (double)_topAuxiliaryBarsHeight;
- (double)_totalAdditionalContentHeightForBanners;
- (double)bannerHeightIncludedInSnapshot;
- (double)horizontalMarginForCatalogViewInPopover;
- (double)keyboardInsetInCoordinateSpace:(id)space;
- (double)maximumHeightObscuredByBottomToolbar;
- (double)navigationBarDesiredHeight;
- (double)navigationBarSquishedHeight;
- (double)offsetForDynamicBarAnimator;
- (double)topBarsHeightForSnapshotGenerator:(id)generator;
- (id)_activeTabDocumentView;
- (id)_continuousReadingViewController;
- (id)_makeTurnOnLockedPrivateBrowsingViewController;
- (id)_makeWhatsNewInPrivateBrowsingViewController;
- (id)_multitaskingDragExclusionRects;
- (id)_unifiedField;
- (id)_viewForConvertingToCoordinateSpace:(id)space;
- (id)barManagerForCapsuleNavigationBarViewController:(id)controller;
- (id)borrowCapsuleViewForTab:(id)tab;
- (id)childViewControllerForStatusBarStyle;
- (id)createToolbarForCapsuleNavigationBarViewController:(id)controller;
- (id)managedTopBanners;
- (id)preferredFocusEnvironments;
- (id)setUpTabSwitcherViewController;
- (id)showTabGroupPicker:(id)picker;
- (id)snapshotContentProviderForTab:(id)tab;
- (int64_t)bookmarksPresentationStyle;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_edgesSafeAreaShouldAffectObscuredInsets;
- (unint64_t)_findInsertionIndexForBannersInScrollView:(id)view;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)tabDocumentView:(id)view contentOffsetAdjustmentEdgeWithPreviousContentInset:(UIEdgeInsets)inset;
- (void)_applyStatusBarBackdropTheme;
- (void)_applyTopBackdropTheme;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_contentScrollViewReceivedTouchDown:(id)down;
- (void)_createBottomToolbarIfNeeded;
- (void)_createSidebarContentDimmingViewIfNeeded;
- (void)_destroySidebarContentDimmingViewIfNeeded;
- (void)_dismissPrivateBrowsingExplanationSheet;
- (void)_dismissWebSearchTipPopoverIfNeeded;
- (void)_enterYttriumStateGestureRecognized:(id)recognized;
- (void)_exitYttriumStateGestureRecognized:(id)recognized;
- (void)_hideNavigationBarGestureRecognized:(id)recognized;
- (void)_installAddedBookmarkToastViewController;
- (void)_installTabSwitcherViewController;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_layOutBottomToolbar;
- (void)_layOutFloatingSidebarButtonForSidebarShowing:(BOOL)showing;
- (void)_layOutScrollToTopView;
- (void)_layOutSidebar;
- (void)_layOutSidebarContentDimmingView;
- (void)_layOutTabView;
- (void)_layOutTopBackdrop;
- (void)_layOutTopBanners;
- (void)_layOutWebpageStatusBarView;
- (void)_logCurrentLayoutState;
- (void)_prepareBarsForTransitionFromPreviousToolbarPlacement:(int64_t)placement;
- (void)_prepareToShowSidebarViewControllerIfNeeded;
- (void)_pushTurnOnLockedPrivateBrowsingPromptIfNeeded;
- (void)_receivedTouchDown:(id)down;
- (void)_receivedTouchUp:(id)up;
- (void)_refreshControlFired:(id)fired;
- (void)_registerLayoutStateUpdateHandler;
- (void)_setShowingFloatingSidebarButton:(BOOL)button;
- (void)_setToolbarPlacement:(int64_t)placement;
- (void)_setTopBackdropTheme:(id)theme animated:(BOOL)animated;
- (void)_setTopBackdropUsesPlainTheme:(BOOL)theme;
- (void)_setUpFloatingSidebarButton;
- (void)_setUpRefreshControlIfNeeded;
- (void)_setUpTabGroupButton;
- (void)_setUpWebpageStatusBarIfNeeded;
- (void)_showBarsFromBottomBarTap:(id)tap;
- (void)_showPrivateBrowsingExplanationSheetWithViewController:(id)controller;
- (void)_showWelcomeBrowsingExplanationSheet;
- (void)_sidebarTrailingButtonWasTapped;
- (void)_statusBarHover:(id)hover;
- (void)_tabSwitcherVisibilityDidChange:(BOOL)change;
- (void)_transitionFromBanner:(id)banner toBanner:(id)toBanner animated:(BOOL)animated;
- (void)_turnOnLockedPrivateBrowsingFromSheet;
- (void)_uninstallAddedBookmarkToastViewController;
- (void)_uninstallTabSwitcherViewController;
- (void)_updateAddedBookmarkToastLayout;
- (void)_updateAllowsHidingHomeIndicatorMinimized:(BOOL)minimized;
- (void)_updateBannerTheme;
- (void)_updateBottomBarHeightAboveKeyboard;
- (void)_updateCapsuleTopSeparatorColor;
- (void)_updateRefreshControl;
- (void)_updateRefreshControlStyle;
- (void)_updateScrollPocketForCapsuleView;
- (void)_updateScrollPocketForTopBackdrop;
- (void)_updateScrollPocketForUnifiedBar;
- (void)_updateScrollPocketsAreHidden;
- (void)_updateScrollPocketsAreHiddenForCapsuleViewState:(int64_t)state;
- (void)_updateScrollToTopOverride;
- (void)_updateSidebarStyle;
- (void)_updateTabSwitcherSidebarToggle;
- (void)_updateThemeForBanner:(id)banner animated:(BOOL)animated;
- (void)_updateToolbarForToolbarPlacementAllowingRemoval:(BOOL)removal;
- (void)_updateToolbarPlacementIfNeeded;
- (void)_updateTopBarAllowingRemoval:(BOOL)removal;
- (void)_updateTopBarStylesAnimated:(BOOL)animated;
- (void)_updateTopScrollEdgeEffectStyle;
- (void)addChildViewController:(id)controller;
- (void)addToastViewController:(id)controller;
- (void)bannerController:(id)controller didSetAppBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetCrashBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetPrivateBrowsingPrivacyProtectionsBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetRemotelyEnabledExtensionBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetTabGroupBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetWebExtensionBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)bannerController:(id)controller didSetWebExtensionPermissionGrantedBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated;
- (void)browserControllerDidChangeFavoritesState;
- (void)capsuleCollectionView:(id)view selectionGestureDidChangeFromAxis:(unint64_t)axis;
- (void)capsuleCollectionView:(id)view willEndSelectionGestureWithCoordinator:(id)coordinator;
- (void)capsuleCollectionViewDidUpdateMinimizationGesture:(id)gesture;
- (void)capsuleLayoutStyleChanged;
- (void)capsuleNavigationBarViewController:(id)controller didCreateNavigationBar:(id)bar;
- (void)capsuleNavigationBarViewController:(id)controller selectedItemWillChangeToState:(int64_t)state options:(int64_t)options coordinator:(id)coordinator;
- (void)capsuleNavigationBarViewControllerDidChangeCapsuleFocus:(id)focus options:(int64_t)options;
- (void)capsuleNavigationBarViewControllerDidTapVoiceSearch:(id)search;
- (void)capsuleNavigationBarViewControllerWillHideKeyboard:(id)keyboard;
- (void)capsuleNavigationController:(id)controller obscuredInsetsDidChangeWithCoordinator:(id)coordinator;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dismissDefaultBrowserSheet;
- (void)dismissDefaultBrowserSheetForOtherWindows;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)displayHostedScreenTimeView;
- (void)dynamicBarAnimatorOutputsDidChange:(id)change;
- (void)hideLockedPrivateBrowsingView;
- (void)layOutCatalogView;
- (void)layOutTopBars;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentToastForAddedBookmark:(id)bookmark suggestedFolders:(id)folders;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)relinquishBorrowedCapsuleView:(id)view;
- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move;
- (void)removeToastViewController:(id)controller;
- (void)setBarStateAllowsHidingHomeIndicator:(BOOL)indicator;
- (void)setBookmarksBar:(id)bar;
- (void)setCatalogViewController:(id)controller;
- (void)setConfiguration:(id)configuration;
- (void)setDelegate:(id)delegate;
- (void)setDocumentSafeAreaInsetsFrozen:(BOOL)frozen;
- (void)setInYttriumMode:(BOOL)mode;
- (void)setInYttriumState:(BOOL)state;
- (void)setNeedsPreferredStatusBarUpdateAfterCommitAnimated:(BOOL)animated;
- (void)setNeedsScrollToTopView:(BOOL)view;
- (void)setShowingSidebar:(BOOL)sidebar completion:(id)completion;
- (void)setShowingTabBar:(BOOL)bar;
- (void)setTabBar:(id)bar;
- (void)setTabThumbnailCollectionView:(id)view;
- (void)setUsesFaintTopSeparator:(BOOL)separator;
- (void)setWebView:(id)view;
- (void)showDefaultBrowserSheetWithDisplayHandler:(id)handler;
- (void)showLockedPrivateBrowsingView;
- (void)showTurnOnLockedPrivateBrowsingSheet;
- (void)showWhatsNewInPrivateBrowsingSheet;
- (void)stopRefreshing;
- (void)tabBarDropExpansionView:(id)view didBeginTrackingDropSession:(id)session;
- (void)tabBarDropExpansionView:(id)view didEndTrackingDropSession:(id)session;
- (void)tabCollectionViewDidCancelDismissal:(id)dismissal;
- (void)tabCollectionViewDidDismiss:(id)dismiss;
- (void)tabCollectionViewWillDismiss:(id)dismiss;
- (void)tabCollectionViewWillPresent:(id)present;
- (void)tabOverviewVisibilityDidChange:(BOOL)change;
- (void)takeOwnershipOfStepperContainer:(id)container;
- (void)tearDownTabSwitcherViewController;
- (void)toggleSidebar;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccessibilityIdentifier;
- (void)updateCapsuleLayoutStyle;
- (void)updateCapsuleMinimizationStyle;
- (void)updateOrderedSubviewsForOrderedContainerView:(id)view;
- (void)updateSuppressesStandaloneTabBar;
- (void)updateTabHoverPreview;
- (void)updateTabViewPinchRecognizer;
- (void)updateThemeColorIfNeededAnimated:(BOOL)animated;
- (void)updateUnifiedBarChromelessScrollDistance;
- (void)updateUnifiedBarVisibility;
- (void)updateUsesLockdownStatusBar;
- (void)updateUsesWebpageStatusBar;
- (void)updateViewForTabDocument:(id)document;
- (void)updateViewsAfterContentContainerViewBoundsChange;
- (void)updateWebViewSizeAttributes;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)webSearchTipDidBecomeUnavailable;
@end

@implementation BrowserRootViewController

- (void)updateSuppressesStandaloneTabBar
{
  if (self->_unifiedBar && ![(BrowserRootViewController *)self isPerformingSizeTransition]&& ![(BrowserRootViewController *)self usingUnifiedBar])
  {
    return;
  }

  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  showRectangularTabsInSeparateBar = [mEMORY[0x277D28C70] showRectangularTabsInSeparateBar];

  if ((showRectangularTabsInSeparateBar & 1) == 0)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v7 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29098]];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v10 = v9;
    v12 = v11;
    if ([MEMORY[0x277CDB7B8] isTabBarAvailableForScreenSize:{v9, v11}])
    {
      v13 = fmin(v10, v12) > 414.0;
      v14 = v10 > v12 || v13;

      if (v7 & v14)
      {
        v5 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v5 = _SFDeviceIsPad() ^ 1;
    goto LABEL_14;
  }

  v5 = 1;
LABEL_14:
  tabBarManager = self->_tabBarManager;

  [(TabBarManager *)tabBarManager setSuppressesStandaloneTabBar:v5];
}

- (BOOL)_navigationBarIsExpandedOnTop
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v3 = capsuleCollectionView;
  v4 = capsuleCollectionView && [capsuleCollectionView layoutStyle] == 2 && objc_msgSend(v3, "selectedItemState") != 1;

  return v4;
}

- (BOOL)_showsTopBackdrop
{
  capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
  v3 = capsuleCollectionViewLayout != 0;

  return v3;
}

- (NSNumber)capsuleCollectionViewLayout
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v3 = capsuleCollectionView;
  if (capsuleCollectionView)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(capsuleCollectionView, "layoutStyle")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldShowThemeColorInTopBar
{
  if (([MEMORY[0x277D4A888] isLockdownModeEnabledForSafari] & 1) == 0)
  {
    if (self->_inYttriumState)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if ([(BrowserRootViewController *)self usingUnifiedBar])
    {
      if (_SFDeviceIsPad())
      {
        if ([WeakRetained isShowingFavorites])
        {
          v3 = [WeakRetained usesNarrowLayout] ^ 1;
        }

        else
        {
          LOBYTE(v3) = 1;
        }
      }

      else
      {
        LOBYTE(v3) = 0;
      }

      goto LABEL_21;
    }

    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    selectedItemNavigationBar = [(CapsuleNavigationBarViewController *)self->_capsuleViewController selectedItemNavigationBar];
    v7 = selectedItemNavigationBar;
    if (capsuleCollectionView)
    {
      v8 = selectedItemNavigationBar == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_14;
    }

    if (![MEMORY[0x277D49A08] isSolariumEnabled])
    {
      LOBYTE(v3) = ([v7 isMinimized] & 1) != 0 || objc_msgSend(capsuleCollectionView, "layoutStyle") != 2;
      goto LABEL_15;
    }

    if (![capsuleCollectionView selectedItemIsMinimized])
    {
LABEL_14:
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = [capsuleCollectionView layoutStyle] == 2;
    }

LABEL_15:

LABEL_21:
    return v3;
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (void)_applyStatusBarBackdropTheme
{
  if (self->_topBackdrop)
  {
    topBackdropTheme = self->_topBackdropTheme;
    statusBarBackdrop = self->_statusBarBackdrop;

    [(SFThemeColorEffectView *)statusBarBackdrop setTheme:topBackdropTheme];
  }

  else
  {
    barTheme = [(SFUnifiedBar *)self->_unifiedBar barTheme];
    [(SFThemeColorEffectView *)self->_statusBarBackdrop setTheme:barTheme];
  }
}

- (void)_updateBannerTheme
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  barTintStyle = [(_SFBrowserConfiguration *)self->_configuration barTintStyle];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    _sampledTopFixedPositionContentColor = [(_SFWebView *)self->_webView _sampledTopFixedPositionContentColor];
    bannerTheme = _sampledTopFixedPositionContentColor;
    if (_sampledTopFixedPositionContentColor)
    {
      underPageBackgroundColor = _sampledTopFixedPositionContentColor;
      bannerTheme = underPageBackgroundColor;
    }

    else
    {
      underPageBackgroundColor = [(_SFWebView *)self->_webView underPageBackgroundColor];
    }

    v10 = underPageBackgroundColor;
    goto LABEL_11;
  }

  if (![(BrowserRootViewController *)self usingUnifiedBar]&& ![(BrowserRootViewController *)self usingLoweredBar])
  {
    v24 = [MEMORY[0x277D28BD0] themeWithBarTintStyle:barTintStyle];
    bannerTheme = self->_bannerTheme;
    self->_bannerTheme = v24;
    v14 = 1;
    activeTabDocument2 = WeakRetained;
    goto LABEL_14;
  }

  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  bannerTheme = [activeTabDocument themeColor];

  if (-[BrowserRootViewController usingUnifiedBar](self, "usingUnifiedBar") && ([MEMORY[0x277D4A868] shouldIgnoreThemeColorForContrastWithActiveTab:bannerTheme privateBrowsingEnabled:_SFIsPrivateTintStyle()] & 1) != 0)
  {
    v10 = 0;
LABEL_11:

    bannerTheme = v10;
  }

  v11 = [MEMORY[0x277D28BD0] themeWithBarTintStyle:barTintStyle preferredBarTintColor:bannerTheme controlsTintColor:0];
  v12 = self->_bannerTheme;
  self->_bannerTheme = v11;

  if (bannerTheme)
  {
    barTintStyle = [WeakRetained tabController];
    activeTabDocument2 = [barTintStyle activeTabDocument];
    v14 = 0;
LABEL_14:

    goto LABEL_16;
  }

  v14 = 1;
  activeTabDocument2 = WeakRetained;
LABEL_16:
  v15 = _SFBackdropGroupNameForOwner();
  [(SFBannerTheme *)self->_bannerTheme setBackdropGroupName:v15];

  if ((v14 & 1) == 0)
  {
  }

  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    barTheme = [(SFUnifiedBar *)self->_unifiedBar barTheme];
    -[SFBannerTheme setAppliesDarkeningOverlay:](self->_bannerTheme, "setAppliesDarkeningOverlay:", [barTheme appliesDarkeningOverlay]);
    overrideBackdropEffect = [barTheme overrideBackdropEffect];
    [(SFBannerTheme *)self->_bannerTheme setOverrideBackdropEffect:overrideBackdropEffect];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  managedTopBanners = [(BrowserRootViewController *)self managedTopBanners];
  v19 = [managedTopBanners countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(managedTopBanners);
        }

        [(BrowserRootViewController *)self _updateThemeForBanner:*(*(&v25 + 1) + 8 * i) animated:1];
      }

      v20 = [managedTopBanners countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v23 browserViewController:self didUpdateBannerTheme:self->_bannerTheme];
  }
}

- (id)managedTopBanners
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  bannerController = [WeakRetained bannerController];
  delegate = [bannerController delegate];

  if (delegate == self)
  {
    bannerController2 = [WeakRetained bannerController];
    topBanners = [bannerController2 topBanners];
  }

  else
  {
    topBanners = MEMORY[0x277CBEBF8];
  }

  return topBanners;
}

- (void)_registerLayoutStateUpdateHandler
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D499F8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__BrowserRootViewController__registerLayoutStateUpdateHandler__block_invoke;
  v6[3] = &unk_2781D7760;
  objc_copyWeak(&v7, &location);
  v4 = [v3 registeredStateCollectorWithLogLabel:@"MobileSafari Layout State" payloadProvider:v6];
  stateCollector = self->_stateCollector;
  self->_stateCollector = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_logCurrentLayoutState
{
  v10 = *MEMORY[0x277D85DE8];
  IsPad = _SFDeviceIsPad();
  v3 = WBS_LOG_CHANNEL_PREFIXLayout();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (IsPad)
  {
    if (!v4)
    {
      return;
    }

    v5 = v3;
    v6 = stringForCurrentTabBarLayoutPreference();
    v8 = 138543362;
    v9 = v6;
    v7 = "Current Tab Bar Layout: %{public}@";
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v5 = v3;
    v6 = stringForCurrentCapsuleLayoutPreference();
    v8 = 138543362;
    v9 = v6;
    v7 = "Current Capsule Layout: %{public}@";
  }

  _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
}

- (void)_updateRefreshControlStyle
{
  refreshControl = [(BrowserRootViewController *)self refreshControl];
  if (refreshControl)
  {
    v7 = refreshControl;
    underPageBackgroundColor = [(_SFWebView *)self->_webView underPageBackgroundColor];
    if ([underPageBackgroundColor sf_isDarkColor])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v5];
    [v7 _setLocalOverrideTraitCollection:v6];

    refreshControl = v7;
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D28D08]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v28 = [v3 initWithFrame:?];

  [(BrowserRootViewController *)self setView:v28];
  [v28 setDelegate:self];
  [v28 setClipsToBounds:1];
  if (objc_opt_respondsToSelector())
  {
    [v28 _addBoundingPathChangeObserver:self];
  }

  v5 = objc_alloc_init(MEMORY[0x277D75D28]);
  contentContainerViewController = self->_contentContainerViewController;
  self->_contentContainerViewController = v5;

  v7 = objc_alloc_init(ViewWithCustomNextResponder);
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v7;

  [(UIViewController *)self->_contentContainerViewController setView:self->_contentContainerView];
  [(ViewWithCustomNextResponder *)self->_contentContainerView setClipsToBounds:0];
  [(BrowserRootViewController *)self addChildViewController:self->_contentContainerViewController];
  [v28 addSubview:self->_contentContainerView];
  [(UIViewController *)self->_contentContainerViewController didMoveToParentViewController:self];
  v9 = objc_alloc_init(MEMORY[0x277D75D28]);
  documentAndTopBarsContainerViewController = self->_documentAndTopBarsContainerViewController;
  self->_documentAndTopBarsContainerViewController = v9;

  v11 = objc_alloc(MEMORY[0x277D28D08]);
  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  v12 = [v11 initWithFrame:?];
  documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
  self->_documentAndTopBarsContainerView = v12;

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView setDelegate:self];
  [(UIViewController *)self->_documentAndTopBarsContainerViewController setView:self->_documentAndTopBarsContainerView];
  [(UIViewController *)self->_contentContainerViewController addChildViewController:self->_documentAndTopBarsContainerViewController];
  [(ViewWithCustomNextResponder *)self->_contentContainerView addSubview:self->_documentAndTopBarsContainerView];
  [(UIViewController *)self->_documentAndTopBarsContainerViewController didMoveToParentViewController:self->_contentContainerViewController];
  v14 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__hideNavigationBarGestureRecognized_];
  hideNavigationBarGestureRecognizer = self->_hideNavigationBarGestureRecognizer;
  self->_hideNavigationBarGestureRecognizer = v14;

  [(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer _setCanPanHorizontally:0];
  [(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer setDelegate:self];
  [v28 addGestureRecognizer:self->_hideNavigationBarGestureRecognizer];
  v16 = objc_alloc_init(BarContainerView);
  topAuxiliaryBarsContainerView = self->_topAuxiliaryBarsContainerView;
  self->_topAuxiliaryBarsContainerView = v16;

  layer = [(BarContainerView *)self->_topAuxiliaryBarsContainerView layer];
  [layer setAllowsGroupOpacity:0];
  [layer setAllowsGroupBlending:0];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_topAuxiliaryBarsContainerView];
  v19 = objc_alloc_init(TabBarDropExpansionView);
  tabBarDropExpansionView = self->_tabBarDropExpansionView;
  self->_tabBarDropExpansionView = v19;

  [(TabBarDropExpansionView *)self->_tabBarDropExpansionView setDelegate:self];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_tabBarDropExpansionView];
  v21 = [objc_alloc(MEMORY[0x277D28E50]) initWithTarget:self action:sel__receivedTouchDown_];
  touchDownGestureRecognizer = self->_touchDownGestureRecognizer;
  self->_touchDownGestureRecognizer = v21;

  [(SFTouchDownGestureRecognizer *)self->_touchDownGestureRecognizer setDelegate:self];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addGestureRecognizer:self->_touchDownGestureRecognizer];
  v23 = [objc_alloc(MEMORY[0x277D28E58]) initWithTarget:self action:sel__receivedTouchUp_];
  touchUpGestureRecognizer = self->_touchUpGestureRecognizer;
  self->_touchUpGestureRecognizer = v23;

  [(SFTouchUpGestureRecognizer *)self->_touchUpGestureRecognizer setDelegate:self];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addGestureRecognizer:self->_touchUpGestureRecognizer];
  v25 = objc_alloc_init(MEMORY[0x277CDB7B0]);
  dynamicBarAnimator = self->_dynamicBarAnimator;
  self->_dynamicBarAnimator = v25;

  [(BrowserRootViewController *)self _updateToolbarPlacementIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained updateDynamicBarGeometry];

  [(BrowserRootViewController *)self _setUpFloatingSidebarButton];
  [(BrowserRootViewController *)self _setUpTabGroupButton];
  self->_pullToRefreshIsEnabled = 1;
  [(BrowserRootViewController *)self _setUpWebpageStatusBarIfNeeded];
}

- (void)_updateToolbarPlacementIfNeeded
{
  view = [(BrowserRootViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  p_sizeForToolbarPlacement = &self->_sizeForToolbarPlacement;
  if (self->_sizeForToolbarPlacement.width != v5 || self->_sizeForToolbarPlacement.height != v7)
  {
    p_sizeForToolbarPlacement->width = v5;
    self->_sizeForToolbarPlacement.height = v7;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained browserViewController:self toolbarPlacementForViewSize:{p_sizeForToolbarPlacement->width, self->_sizeForToolbarPlacement.height}];

    [(BrowserRootViewController *)self _setToolbarPlacement:v11];
  }
}

- (_SFNavigationBarCommon)topBar
{
  unifiedBar = self->_unifiedBar;
  if (!unifiedBar)
  {
    unifiedBar = self->_navigationBar;
  }

  v3 = unifiedBar;

  return v3;
}

- (void)_createBottomToolbarIfNeeded
{
  v42[1] = *MEMORY[0x277D85DE8];
  if (!self->_bottomToolbar && !self->_capsuleViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v4 = objc_alloc_init(CapsuleNavigationBarViewController);
    capsuleViewController = self->_capsuleViewController;
    self->_capsuleViewController = v4;

    [(CapsuleNavigationBarViewController *)self->_capsuleViewController setNextResponder:WeakRetained parentFocusEnvironment:WeakRetained];
    [(CapsuleNavigationBarViewController *)self->_capsuleViewController setDelegate:self];
    view = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
    [view setAccessibilityIdentifier:@"CapsuleViewController"];

    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    v8 = [MEMORY[0x277D28EF8] themeWithBarTintStyle:{-[_SFBrowserConfiguration barTintStyle](self->_configuration, "barTintStyle")}];
    [capsuleCollectionView setTheme:v8];

    [(BrowserRootViewController *)self updateCapsuleLayoutStyle];
    [(BrowserRootViewController *)self updateCapsuleMinimizationStyle];
    objc_initWeak(&location, self);
    v9 = self->_capsuleViewController;
    v42[0] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __57__BrowserRootViewController__createBottomToolbarIfNeeded__block_invoke;
    v37 = &unk_2781D7828;
    objc_copyWeak(&v38, &location);
    v11 = [(CapsuleNavigationBarViewController *)v9 registerForTraitChanges:v10 withHandler:&v34];

    [(CapsuleNavigationBarViewController *)self->_capsuleViewController setLinkedPageView:self->_tabSwitcherViewController, v34, v35, v36, v37];
    tabOverviewIsVisible = [(TabSwitcherViewController *)self->_tabSwitcherViewController tabOverviewIsVisible];
    v13 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"not visible";
      if (tabOverviewIsVisible)
      {
        v14 = @"visible";
      }

      *buf = 138412290;
      v41 = v14;
      _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_DEFAULT, "Setting up capsule view while tab overview is %@", buf, 0xCu);
    }

    [capsuleCollectionView setShouldDismissContent:tabOverviewIsVisible];
    [capsuleCollectionView setUserInteractionEnabled:tabOverviewIsVisible ^ 1];
    [capsuleCollectionView addGestureObserver:self];
    tabController = [WeakRetained tabController];
    [(CapsuleNavigationBarViewController *)self->_capsuleViewController setTabController:tabController];

    [(BrowserRootViewController *)self addChildViewController:self->_capsuleViewController];
    view2 = [(BrowserRootViewController *)self view];
    view3 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
    [view2 addSubview:view3];

    [(CapsuleNavigationBarViewController *)self->_capsuleViewController didMoveToParentViewController:self];
    if (self->_keepBarsMinimized)
    {
      [(CapsuleNavigationBarViewController *)self->_capsuleViewController transitionToState:1 animated:0 completionHandler:0];
    }

    if (self->_inYttriumMode)
    {
      inYttriumState = self->_inYttriumState;
      capsuleCollectionView2 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [capsuleCollectionView2 setForceHidden:inYttriumState];

      [(CapsuleNavigationBarViewController *)self->_capsuleViewController transitionToState:self->_inYttriumState animated:0 completionHandler:0];
    }

    v20 = [objc_alloc(MEMORY[0x277D28E38]) initWithEffect:0];
    topBackdrop = self->_topBackdrop;
    self->_topBackdrop = v20;

    [(SFThemeColorEffectView *)self->_topBackdrop setThemeColorVisibility:1.0];
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_topBackdrop];
    [(BrowserRootViewController *)self _updateScrollPocketForCapsuleView];
    [(BrowserRootViewController *)self _updateScrollPocketForTopBackdrop];
    if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      v22 = objc_alloc(MEMORY[0x277D75D18]);
      contentView = [(SFThemeColorEffectView *)self->_topBackdrop contentView];
      [contentView bounds];
      Height = CGRectGetHeight(v43);
      _SFOnePixel();
      v26 = v25;
      contentView2 = [(SFThemeColorEffectView *)self->_topBackdrop contentView];
      [contentView2 bounds];
      Width = CGRectGetWidth(v44);
      _SFOnePixel();
      v30 = [v22 initWithFrame:{0.0, Height - v26, Width, v29}];
      topSeparator = self->_topSeparator;
      self->_topSeparator = v30;

      [(UIView *)self->_topSeparator setAutoresizingMask:10];
      [(BrowserRootViewController *)self _updateCapsuleTopSeparatorColor];
      contentView3 = [(SFThemeColorEffectView *)self->_topBackdrop contentView];
      [contentView3 addSubview:self->_topSeparator];
    }

    [(BrowserRootViewController *)self _applyTopBackdropTheme];
    [(BrowserRootViewController *)self _applyStatusBarBackdropTheme];
    capsuleCollectionView3 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [(CatalogViewController *)self->_catalogViewController setStartPageScrollObserver:capsuleCollectionView3];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }
}

- (void)updateCapsuleMinimizationStyle
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v8 = capsuleCollectionView;
  if (self->_inYttriumMode)
  {
    [capsuleCollectionView setMinimizationStyle:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    activeTabDocument = [tabController activeTabDocument];
    if ([activeTabDocument isShowingReader])
    {
      [v8 setMinimizationStyle:1];
    }

    else
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v8 setMinimizationStyle:{objc_msgSend(standardUserDefaults, "integerForKey:", @"DebugBarCollapsingBehavior"}];
    }
  }
}

- (void)_updateScrollPocketForCapsuleView
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  selectionGestureAxis = [capsuleCollectionView selectionGestureAxis];

  if (selectionGestureAxis == 1)
  {
    capsuleCollectionView2 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [capsuleCollectionView2 setBottomScrollPocketInteraction:0];

    capsuleCollectionView3 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [capsuleCollectionView3 setTopScrollPocketInteraction:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    isShowingFavorites = [WeakRetained isShowingFavorites];

    if (isShowingFavorites)
    {
      capsuleCollectionView3 = [objc_alloc(MEMORY[0x277D76218]) initWithEdge:4];
      scrollPocketCollector = [(CatalogViewController *)self->_catalogViewController scrollPocketCollector];
      [capsuleCollectionView3 _setCollectorInteraction:scrollPocketCollector];

      capsuleCollectionView4 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [capsuleCollectionView4 setBottomScrollPocketInteraction:capsuleCollectionView3];

      v10 = [objc_alloc(MEMORY[0x277D76218]) initWithEdge:1];
      scrollPocketCollector2 = [(TabSwitcherViewController *)self->_tabSwitcherViewController scrollPocketCollector];
      [v10 _setCollectorInteraction:scrollPocketCollector2];

      capsuleCollectionView5 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [capsuleCollectionView5 setTopScrollPocketInteraction:v10];
    }

    else
    {
      if (!self->_scrollView)
      {
        return;
      }

      v13 = [objc_alloc(MEMORY[0x277D76218]) initWithScrollView:self->_scrollView edge:4];
      capsuleCollectionView6 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [capsuleCollectionView6 setBottomScrollPocketInteraction:v13];

      capsuleCollectionView3 = [objc_alloc(MEMORY[0x277D76218]) initWithScrollView:self->_scrollView edge:1];
      capsuleCollectionView7 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [capsuleCollectionView7 setTopScrollPocketInteraction:capsuleCollectionView3];
    }
  }
}

- (void)_updateScrollPocketForTopBackdrop
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  favoritesAreEmbedded = [WeakRetained favoritesAreEmbedded];

  if (favoritesAreEmbedded)
  {
    v12 = [objc_alloc(MEMORY[0x277D76220]) initWithStyle:4];
    scrollPocketCollector = [(CatalogViewController *)self->_catalogViewController scrollPocketCollector];
    [v12 _setCollectorInteraction:scrollPocketCollector];

    topBackdrop = self->_topBackdrop;
    v7 = v12;
LABEL_9:
    [(SFThemeColorEffectView *)topBackdrop setScrollPocketInteraction:v7];

    return;
  }

  scrollView = self->_scrollView;
  if (scrollView)
  {
    topEdgeEffect = [(UIScrollView *)scrollView topEdgeEffect];
    isHidden = [topEdgeEffect isHidden];

    if ((isHidden & 1) == 0)
    {
      v7 = [objc_alloc(MEMORY[0x277D76220]) initWithScrollView:self->_scrollView edge:1 style:4];
      v12 = v7;
      topBackdrop = self->_topBackdrop;
      goto LABEL_9;
    }
  }

  v11 = self->_topBackdrop;

  [(SFThemeColorEffectView *)v11 setScrollPocketInteraction:0];
}

- (void)_applyTopBackdropTheme
{
  [(SFThemeColorEffectView *)self->_topBackdrop setOverrideUserInterfaceStyle:[(SFUnifiedBarTheme *)self->_topBackdropTheme userInterfaceStyle]];
  topBackdropTheme = self->_topBackdropTheme;
  topBackdrop = self->_topBackdrop;

  [(SFThemeColorEffectView *)topBackdrop setTheme:topBackdropTheme];
}

- (void)updateUsesLockdownStatusBar
{
  isLockdownModeEnabledForSafari = [MEMORY[0x277D4A888] isLockdownModeEnabledForSafari];
  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    [(TabBarManager *)self->_tabBarManager setShowingLockdownStatusBar:isLockdownModeEnabledForSafari];
  }

  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [capsuleCollectionView setShowingLockdownStatusBar:isLockdownModeEnabledForSafari];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  navigationBarItem = [activeTabDocument navigationBarItem];
  lockdownStatusBar = [(TabBarManager *)self->_tabBarManager lockdownStatusBar];
  [lockdownStatusBar setNavigationBarItem:navigationBarItem];
}

- (void)_setUpFloatingSidebarButton
{
  v16 = +[FeatureManager sharedFeatureManager];
  if ([v16 isFloatingSidebarButtonEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    makeSidebarButton = [WeakRetained makeSidebarButton];
    sidebarButtonEmbeddedInSidebar = self->_sidebarButtonEmbeddedInSidebar;
    self->_sidebarButtonEmbeddedInSidebar = makeSidebarButton;

    [(UIButton *)self->_sidebarButtonEmbeddedInSidebar setTranslatesAutoresizingMaskIntoConstraints:0];
    sf_bookmarkMenu = [MEMORY[0x277D75710] sf_bookmarkMenu];
    [(UIButton *)self->_sidebarButtonEmbeddedInSidebar setMenu:sf_bookmarkMenu];

    [(UIButton *)self->_sidebarButtonEmbeddedInSidebar intrinsicContentSize];
    v8 = fmax(44.0 - v7, 0.0) * -0.5;
    v10 = fmax(44.0 - v9, 0.0) * -0.5;
    [(UIButton *)self->_sidebarButtonEmbeddedInSidebar _setTouchInsets:v8, v10, v8, v10];
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_sidebarButtonEmbeddedInSidebar];
    sidebarButtonItem = self->_sidebarButtonItem;
    self->_sidebarButtonItem = v11;

    v13 = _SFAccessibilityIdentifierForBarItem();
    [(UIBarButtonItem *)self->_sidebarButtonItem setAccessibilityIdentifier:v13];

    makeSidebarButton2 = [WeakRetained makeSidebarButton];
    floatingSidebarButton = self->_floatingSidebarButton;
    self->_floatingSidebarButton = makeSidebarButton2;

    [(UIButton *)self->_floatingSidebarButton setHidden:1];
    [(UIButton *)self->_floatingSidebarButton sf_applyContentSizeCategoryLimitsForToolbarButton];
    [(ViewWithCustomNextResponder *)self->_contentContainerView addSubview:self->_floatingSidebarButton];
  }
}

- (void)_setUpTabGroupButton
{
  v3 = +[FeatureManager sharedFeatureManager];
  if ([v3 isTabGroupButtonEnabled] && objc_msgSend(v3, "isCustomTabGroupsEnabled"))
  {
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    clearColor = [MEMORY[0x277D75348] clearColor];
    background = [plainButtonConfiguration background];
    [background setBackgroundColor:clearColor];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    v7 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    sidebarTrailingButton = self->_sidebarTrailingButton;
    self->_sidebarTrailingButton = v7;

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.square.on.square"];
    [(UIButton *)self->_sidebarTrailingButton setImage:v9 forState:0];
    [(UIButton *)self->_sidebarTrailingButton addTarget:self action:sel__sidebarTrailingButtonWasTapped forControlEvents:64];
    [(UIButton *)self->_sidebarButtonEmbeddedInSidebar _touchInsets];
    [(UIButton *)self->_sidebarTrailingButton _setTouchInsets:?];
    [(UIButton *)self->_sidebarTrailingButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_sidebarTrailingButton setShowsMenuAsPrimaryAction:1];
    [(UIButton *)self->_sidebarTrailingButton setAccessibilityIdentifier:@"NewTabGroupButton"];
    [(UIButton *)self->_sidebarTrailingButton sf_configureLargeContentViewerForBarItem:2];
    [(UIButton *)self->_sidebarTrailingButton setLargeContentImage:v9];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__BrowserRootViewController__setUpTabGroupButton__block_invoke;
    v15[3] = &unk_2781D7878;
    objc_copyWeak(&v17, &location);
    v12 = tabController;
    v16 = v12;
    [(UIButton *)self->_sidebarTrailingButton _setMenuProvider:v15];
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:self->_sidebarTrailingButton];
    sidebarTrailingButtonItem = self->_sidebarTrailingButtonItem;
    self->_sidebarTrailingButtonItem = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)_setUpWebpageStatusBarIfNeeded
{
  if ([(BrowserRootViewController *)self _usesWebpageStatusBar]&& !self->_statusBarView)
  {
    view = [(BrowserRootViewController *)self view];
    v3 = objc_alloc(MEMORY[0x277D28EF0]);
    view2 = [(BrowserRootViewController *)self view];
    [view2 bounds];
    v5 = [v3 initWithFrame:?];
    statusBarView = self->_statusBarView;
    self->_statusBarView = v5;

    [view addSubview:self->_statusBarView];
    v7 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__statusBarHover_];
    statusBarHoverGestureRecognizer = self->_statusBarHoverGestureRecognizer;
    self->_statusBarHoverGestureRecognizer = v7;

    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addGestureRecognizer:self->_statusBarHoverGestureRecognizer];
    [view setNeedsLayout];
  }
}

- (BOOL)_usesWebpageStatusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    v4 = +[Application sharedApplication];
    isPrivateBrowsingLocked = [v4 isPrivateBrowsingLocked];

    if (isPrivateBrowsingLocked)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (![MEMORY[0x277D28C70] supportsWebpageStatusBar])
  {
LABEL_8:
    LOBYTE(v7) = 0;
    return v7;
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:*MEMORY[0x277D290A0]])
  {
    v7 = ![(BrowserRootViewController *)self usingLoweredBar];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v6 viewDidLoad];
  [(BrowserRootViewController *)self _updateTopBarStyles];
  v3 = +[LaunchStateController sharedController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__BrowserRootViewController_viewDidLoad__block_invoke;
  v5[3] = &unk_2781D4D40;
  v5[4] = self;
  [v3 doAfterUIBecomesActive:v5];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C08] object:0];
  [defaultCenter addObserver:self selector:sel__updateTopBarStyles name:*MEMORY[0x277D4A960] object:0];
  [defaultCenter postNotificationName:*MEMORY[0x277D28FB8] object:0];
}

- (ViewWithCustomNextResponder)contentContainerView
{
  [(BrowserRootViewController *)self loadViewIfNeeded];
  contentContainerView = self->_contentContainerView;

  return contentContainerView;
}

- (void)updateTabViewPinchRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isPrivateBrowsingEnabled])
  {
    v3 = +[Application sharedApplication];
    v4 = [v3 isPrivateBrowsingLocked] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  scrollView = [(_SFWebView *)self->_webView scrollView];
  [scrollView zoomScale];
  v7 = v6;
  scrollView2 = [(_SFWebView *)self->_webView scrollView];
  [scrollView2 minimumZoomScale];
  v10 = v7 / v9;

  if (v10 >= 1.0001)
  {
    scrollView = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
    if ([scrollView presentationState] == 1)
    {
    }

    else
    {
      presentationState = [scrollView presentationState];

      if (presentationState != 2 && ![WeakRetained favoritesAreEmbedded])
      {
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }
  }

  activeLibraryType = [WeakRetained activeLibraryType];
  if (activeLibraryType)
  {
    v13 = 0;
  }

  else
  {
    capsuleViewController = [(BrowserRootViewController *)self capsuleViewController];
    if ([capsuleViewController capsuleIsFocused])
    {
      v13 = 0;
    }

    else
    {
      v13 = !self->_inYttriumMode & v4;
    }
  }

  if (v10 >= 1.0001)
  {
    goto LABEL_16;
  }

LABEL_17:
  pinchGestureRecognizer = [(TabSwitcherViewController *)self->_tabSwitcherViewController pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:v13 & 1];
}

- (id)setUpTabSwitcherViewController
{
  v3 = [TabSwitcherViewController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  v6 = [(TabSwitcherViewController *)v3 initWithTabController:tabController];
  tabSwitcherViewController = self->_tabSwitcherViewController;
  self->_tabSwitcherViewController = v6;

  [(TabSwitcherViewController *)self->_tabSwitcherViewController setContainer:self];
  [(CapsuleNavigationBarViewController *)self->_capsuleViewController setLinkedPageView:self->_tabSwitcherViewController];
  contentContainerView = self->_contentContainerView;
  pinchGestureRecognizer = [(TabSwitcherViewController *)self->_tabSwitcherViewController pinchGestureRecognizer];
  [(ViewWithCustomNextResponder *)contentContainerView addGestureRecognizer:pinchGestureRecognizer];

  v10 = self->_contentContainerView;
  panGestureRecognizerForTrackingPinchTranslationVelocity = [(TabSwitcherViewController *)self->_tabSwitcherViewController panGestureRecognizerForTrackingPinchTranslationVelocity];
  [(ViewWithCustomNextResponder *)v10 addGestureRecognizer:panGestureRecognizerForTrackingPinchTranslationVelocity];

  [(BrowserRootViewController *)self _layOutTabView];
  view = [(TabSwitcherViewController *)self->_tabSwitcherViewController view];
  [view layoutIfNeeded];

  [(BrowserRootViewController *)self _updateTabSwitcherSidebarToggle];
  v13 = self->_tabSwitcherViewController;

  return v13;
}

- (void)_layOutTabView
{
  if (self->_tabSwitcherViewController)
  {
    [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
    if (!CGRectEqualToRect(v56, *MEMORY[0x277CBF3A0]))
    {
      [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [(BrowserRootViewController *)self obscuredInsetsWithComponents:8 forRect:self->_contentContainerView inCoordinateSpace:?];
      v12 = v4 + v11;
      v14 = v6 + v13;
      v16 = v8 - (v11 + v15);
      v18 = v10 - (v13 + v17);
      view = [(TabSwitcherViewController *)self->_tabSwitcherViewController view];
      [view setFrame:{v12, v14, v16, v18}];

      [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
      [(BrowserRootViewController *)self maximumObscuredInsetsForRect:self->_contentContainerView inCoordinateSpace:1 ignoreBarsMinimized:?];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      if ([MEMORY[0x277D49A08] isSolariumEnabled] && _SFDeviceIsPad())
      {
        [(ViewWithCustomNextResponder *)self->_contentContainerView safeAreaInsets];
        UIEdgeInsetsMax();
        v21 = v28;
        v23 = v29;
        v25 = v30;
        v27 = v31;
      }

      [(TabSwitcherViewController *)self->_tabSwitcherViewController setBrowserContentInsets:v21, v23, v25, v27];
      tabSwitcherViewController = self->_tabSwitcherViewController;
      [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
      v34 = v33;
      v36 = v35;
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
      [(BrowserRootViewController *)self obscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [(BrowserRootViewController *)self bannerHeightIncludedInSnapshot];
      v46 = v38 + v45;
      if ([MEMORY[0x277D49A08] isSolariumEnabled] && _SFDeviceIsPad())
      {
        [(ViewWithCustomNextResponder *)self->_contentContainerView safeAreaInsets];
        UIEdgeInsetsMax();
        v46 = v47;
        v40 = v48;
        v42 = v49;
        v44 = v50;
      }

      [(TabSwitcherViewController *)tabSwitcherViewController setBorrowedContentSize:v34 obscuredInsets:v36, v46, v40, v42, v44];
      capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];

      if (capsuleCollectionViewLayout)
      {
        capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
        [capsuleCollectionView capsuleFrame];
        [(TabSwitcherViewController *)self->_tabSwitcherViewController setCapsuleReferenceFrame:?];

        capsuleCollectionView2 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
        [capsuleCollectionView2 pageWidth];
        [(TabSwitcherViewController *)self->_tabSwitcherViewController setLinkedPanGesturePageWidth:?];
      }

      else
      {
        [(TabSwitcherViewController *)self->_tabSwitcherViewController setCapsuleReferenceFrame:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
        v53 = self->_tabSwitcherViewController;

        [(TabSwitcherViewController *)v53 setLinkedPanGesturePageWidth:0.0];
      }
    }
  }
}

- (void)_updateTabSwitcherSidebarToggle
{
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    floatingSidebarButton = self->_floatingSidebarButton;
    if (floatingSidebarButton)
    {
      isHidden = [(UIButton *)floatingSidebarButton isHidden];
    }

    else
    {
      isHidden = 1.0;
    }

    if ([(BrowserRootViewController *)self _isShowingEmbeddedSidebar])
    {
      IsPad = 0;
    }

    else
    {
      IsPad = _SFDeviceIsPad();
    }

    [(TabSwitcherViewController *)self->_tabSwitcherViewController setShowsSidebarToggle:IsPad];
    sidebarToggleBarButtonItem = [(TabSwitcherViewController *)self->_tabSwitcherViewController sidebarToggleBarButtonItem];
    view = [sidebarToggleBarButtonItem view];
    [view setAlpha:isHidden];
  }
}

- (void)updateViewsAfterContentContainerViewBoundsChange
{
  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:self->_contentContainerView inCoordinateSpace:?];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  _activeTabDocumentView = [(BrowserRootViewController *)self _activeTabDocumentView];
  [_activeTabDocumentView setFrame:{v12, v14, v16, v18}];

  [(BrowserRootViewController *)self updateWebViewSizeAttributes];
  [(BrowserRootViewController *)self layOutCatalogView];
  _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
  [_continuousReadingViewController updateContinuousPreviewViewSizeAttributes];
}

- (id)_activeTabDocumentView
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  view = [activeTabDocument view];

  return view;
}

- (void)updateAccessibilityIdentifier
{
  v27[6] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v26[0] = @"UUID";
  uUID = [WeakRetained UUID];
  uUIDString = [uUID UUIDString];
  v6 = uUIDString;
  v7 = &stru_2827BF158;
  if (uUIDString)
  {
    v7 = uUIDString;
  }

  v27[0] = v7;
  v26[1] = @"View";
  usesNarrowLayout = [WeakRetained usesNarrowLayout];
  v9 = @"Regular";
  if (usesNarrowLayout)
  {
    v9 = @"Narrow";
  }

  if (self->_keepBarsMinimized)
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  v27[1] = v9;
  v27[2] = v10;
  v26[2] = @"BarsKeptMinimized";
  v26[3] = @"UsingLoweredBar";
  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  v27[3] = v11;
  v26[4] = @"IsTabBarAvailable";
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v14 = v13;
  v16 = v15;
  v17 = [MEMORY[0x277CDB7B8] isTabBarAvailableForScreenSize:{v13, v15}];
  v18 = @"false";
  if (v17)
  {
    if (fmin(v14, v16) <= 414.0 && v14 <= v16)
    {
      v18 = @"false";
    }

    else
    {
      v18 = @"true";
    }
  }

  v27[4] = v18;
  v26[5] = @"IsSecure";
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  if ([activeTabDocument isSecure])
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  v27[5] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v24 = WBSMakeAccessibilityIdentifier();
  view = [(BrowserRootViewController *)self view];
  [view setAccessibilityIdentifier:v24];
}

- (void)updateWebViewSizeAttributes
{
  if ([(_SFWebView *)self->_webView _isInFullscreen])
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    webView = self->_webView;
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);

    [(_SFWebView *)webView setHitTestInsets:v3, v4, v6, v7];
  }

  else
  {
    [(BrowserRootViewController *)self contentFrameInPageView];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    contentContainerView = [(BrowserRootViewController *)self contentContainerView];
    [contentContainerView bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:v18, v20, v22, v24];
    v52 = v9;
    recta = v18 + v25;
    v51 = v20 + v26;
    v28 = v22 - (v25 + v27);
    v30 = v24 - (v26 + v29);
    v56.origin.x = v9;
    v56.origin.y = v11;
    v56.size.width = v13;
    v56.size.height = v15;
    MinY = CGRectGetMinY(v56);
    v57.origin.x = recta;
    v57.origin.y = v51;
    v57.size.width = v28;
    v57.size.height = v30;
    self->_contentInsetForContentFrame.top = MinY - CGRectGetMinY(v57);
    v58.origin.x = v9;
    v58.origin.y = v11;
    v58.size.width = v13;
    v58.size.height = v15;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = recta;
    v59.origin.y = v51;
    v59.size.width = v28;
    v59.size.height = v30;
    self->_contentInsetForContentFrame.left = MinX - CGRectGetMinX(v59);
    v60.origin.x = recta;
    v60.origin.y = v51;
    v60.size.width = v28;
    v60.size.height = v30;
    MaxY = CGRectGetMaxY(v60);
    v61.origin.x = v52;
    v61.origin.y = v11;
    v61.size.width = v13;
    v61.size.height = v15;
    self->_contentInsetForContentFrame.bottom = MaxY - CGRectGetMaxY(v61);
    v62.origin.x = recta;
    v62.origin.y = v51;
    v62.size.width = v28;
    v62.size.height = v30;
    MaxX = CGRectGetMaxX(v62);
    v63.origin.x = v52;
    v63.origin.y = v11;
    v63.size.width = v13;
    v63.size.height = v15;
    self->_contentInsetForContentFrame.right = MaxX - CGRectGetMaxX(v63);
    [(BrowserRootViewController *)self _totalAdditionalContentHeightForBanners];
    self->_contentInsetForContentFrame.top = v35 + self->_contentInsetForContentFrame.top;
    _SFRoundEdgeInsetsToPixels();
    self->_contentInsetForContentFrame.top = v36;
    self->_contentInsetForContentFrame.left = v37;
    self->_contentInsetForContentFrame.bottom = v38;
    self->_contentInsetForContentFrame.right = v39;
    view = [(BrowserRootViewController *)self view];
    _sf_isFullScreenWidth = [view _sf_isFullScreenWidth];

    rect = objc_loadWeakRetained(&self->_browserController);
    tabController = [rect tabController];
    activeTabDocument = [tabController activeTabDocument];

    isShowingInOneThirdMode = [rect isShowingInOneThirdMode];
    reloadOptionsController = [activeTabDocument reloadOptionsController];
    [reloadOptionsController setTryUsingMobileIfPossible:isShowingInOneThirdMode];

    [(BrowserRootViewController *)self _updateBottomBarHeightAboveKeyboard];
    [(_SFWebView *)self->_webView _setAllowsViewportShrinkToFit:_sf_isFullScreenWidth ^ 1u];
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    [(BrowserRootViewController *)self minimumObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
    v47 = v46;
    bottom = 0.0;
    if (v47 <= 0.0)
    {
      bottom = self->_contentInsetForContentFrame.bottom;
    }

    [(_SFWebView *)self->_webView setHitTestInsets:0.0, 0.0, bottom, 0.0];
    scene = [rect scene];
    -[_SFWebView _setInterfaceOrientationOverride:](self->_webView, "_setInterfaceOrientationOverride:", [scene interfaceOrientation]);

    view2 = [activeTabDocument view];
    [view2 setWebViewGeometryNeedsUpdate];
  }
}

- (CGRect)contentFrameInPageView
{
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self maximumObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:0 ignoreBarsMinimized:?];
  [(BrowserRootViewController *)self webViewEffectiveSafeAreaInsets];
  UIEdgeInsetsMax();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)_loweredBarMaximumObscuredInsets
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView obscuredInsetsForState:0 ignoringKeyboard:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [capsuleCollectionView obscuredInsetsForState:1 ignoringKeyboard:1];
  if (v4 + v8 <= v11 + v13)
  {
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (BOOL)_interfaceFillsScreen
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained browserViewControllerInterfaceFillsScreen:selfCopy];

  return selfCopy;
}

- (UIEdgeInsets)webViewEffectiveSafeAreaInsets
{
  [(BrowserRootViewController *)self _webViewSafeAreaInsets];
  [(BrowserRootViewController *)self _edgesSafeAreaShouldAffectObscuredInsets];

  UIEdgeInsetsMax();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)_webViewSafeAreaInsets
{
  view = [(BrowserRootViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (unint64_t)_edgesSafeAreaShouldAffectObscuredInsets
{
  if (([(_SFWebView *)self->_webView _safeAreaShouldAffectObscuredInsets]& 1) != 0)
  {
    return 11;
  }

  if (_SFDeviceIsPad())
  {
    return 10;
  }

  return 0;
}

- (double)_totalAdditionalContentHeightForBanners
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  managedTopBanners = [(BrowserRootViewController *)self managedTopBanners];
  v4 = [managedTopBanners countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(managedTopBanners);
        }

        [*(*(&v13 + 1) + 8 * i) bounds];
        v7 = v7 + CGRectGetHeight(v19);
      }

      v5 = [managedTopBanners countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewControllerAdditionalContentHeightForBanners:self];
  v11 = v10;

  return v7 + v11;
}

- (void)_updateBottomBarHeightAboveKeyboard
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView minimizedCapsuleHeightAboveKeyboard];
  [(_SFWebView *)self->_webView setBottomBarHeightAboveKeyboard:?];
}

- (UIEdgeInsets)_loweredBarMinimumObscuredInsets
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView obscuredInsetsForState:0 ignoringKeyboard:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [capsuleCollectionView obscuredInsetsForState:1 ignoringKeyboard:1];
  if (v4 + v8 >= v11 + v13)
  {
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)layOutCatalogView
{
  view = [(CatalogViewController *)self->_catalogViewController view];
  [(BrowserRootViewController *)self _frameForCatalogView];
  [view setFrame:?];
  [view bounds];
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:27 forRect:view inCoordinateSpace:?];
  [(CatalogViewController *)self->_catalogViewController setObscuredInsets:?];
}

- (CGRect)_frameForCatalogView
{
  [(ViewWithCustomNextResponder *)self->_contentContainerView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  Height = v12;

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  _shouldUseNarrowLayout = [WeakRetained _shouldUseNarrowLayout];

  if (_shouldUseNarrowLayout)
  {
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Width = CGRectGetWidth(v24);
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    Height = CGRectGetHeight(v25);
    v17 = 0.0;
  }

  else
  {
    v18 = 0.0;
    if ([(CatalogViewController *)self->_catalogViewController usesPopoverStyleForFavorites])
    {
      [(BrowserRootViewController *)self horizontalMarginForCatalogViewInPopover];
      v18 = v19;
    }

    v17 = v18 * 0.5;
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    Width = CGRectGetWidth(v26) - v18;
  }

  v20 = v17;
  v21 = 0.0;
  v22 = Width;
  v23 = Height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (UIEdgeInsets)_loweredBarObscuredInsetsIgnoringKeyboard
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView obscuredInsetsIgnoringKeyboard];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)_continuousReadingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained continuousReadingViewControllerForBrowserViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isShowingPrivateBrowsingExplanationSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_privateBrowsingExplanationSheet);
  view = [WeakRetained view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (BOOL)isShowingDefaultBrowserSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultBrowserSheet);
  view = [WeakRetained view];
  window = [view window];
  v5 = window != 0;

  return v5;
}

- (BOOL)isUsingBottomCapsule
{
  capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
  v3 = capsuleCollectionViewLayout;
  if (capsuleCollectionViewLayout)
  {
    v4 = [capsuleCollectionViewLayout integerValue] == 3 || objc_msgSend(v3, "integerValue") == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateUnifiedBarChromelessScrollDistance
{
  if (self->_unifiedBar)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if ([WeakRetained isShowingFavorites] && (objc_msgSend(WeakRetained, "favoritesAreShowingInPopover") & 1) == 0)
    {
      [(CatalogViewController *)self->_catalogViewController chromelessScrollDistance];
      v7 = v8;
    }

    else
    {
      tabController = [WeakRetained tabController];
      activeTabDocument = [tabController activeTabDocument];
      view = [activeTabDocument view];
      [view scrollDistance];
      v7 = v6;
    }

    [(SFUnifiedBar *)self->_unifiedBar setChromelessScrollDistance:v7];
  }
}

- (double)horizontalMarginForCatalogViewInPopover
{
  view = [(BrowserRootViewController *)self view];
  [view frame];

  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  CGRectGetWidth(v6);

  _SFRoundFloatToPixels();
  return result;
}

- (void)browserControllerDidChangeFavoritesState
{
  [(BrowserRootViewController *)self _updateScrollPocketForCapsuleView];
  [(BrowserRootViewController *)self _updateScrollPocketForTopBackdrop];

  [(BrowserRootViewController *)self _updateScrollPocketForUnifiedBar];
}

- (void)_updateScrollPocketForUnifiedBar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  favoritesAreEmbedded = [WeakRetained favoritesAreEmbedded];

  if (favoritesAreEmbedded)
  {
    v6 = [objc_alloc(MEMORY[0x277D76218]) initWithEdge:1];
    scrollPocketCollector = [(CatalogViewController *)self->_catalogViewController scrollPocketCollector];
    [v6 _setCollectorInteraction:scrollPocketCollector];
  }

  else
  {
    if (!self->_scrollView)
    {
      return;
    }

    v6 = [objc_alloc(MEMORY[0x277D76218]) initWithScrollView:self->_scrollView edge:1];
  }

  [(SFUnifiedBar *)self->_unifiedBar setScrollPocketInteraction:v6];
}

- (id)childViewControllerForStatusBarStyle
{
  if (_SFDeviceIsPad())
  {
    goto LABEL_7;
  }

  capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
  v4 = WBSIsEqual();

  if (v4)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  presentationState = [WeakRetained presentationState];

  if (presentationState == 3)
  {
    v10 = objc_loadWeakRetained(&self->_browserController);
    tabController = [v10 tabController];
    activeTabDocument = [tabController activeTabDocument];
    if ([activeTabDocument isShowingSystemStartPage])
    {
      catalogViewController = self->_catalogViewController;
    }

    else
    {
      catalogViewController = 0;
    }

    v8 = catalogViewController;

    goto LABEL_8;
  }

  if (presentationState)
  {
LABEL_7:
    v8 = 0;
  }

  else
  {
    if (self->_willDismissCatalogViewController)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_catalogViewController;
    }

    v8 = v7;
  }

LABEL_8:

  return v8;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([v3 presentationState] == 1)
  {
  }

  else
  {
    presentationState = [v3 presentationState];

    if (presentationState != 2 && ![(BrowserRootViewController *)self _shouldInterceptBottomGesture])
    {
      return self->_barStateAllowsHidingHomeIndicator;
    }
  }

  return 0;
}

- (BOOL)_shouldInterceptBottomGesture
{
  if (!self->_inYttriumState || (_SFDeviceIsPad() & 1) != 0 || (_SFDeviceHasHomeButton() & 1) != 0)
  {
    return 0;
  }

  capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
  v3 = capsuleCollectionViewLayout != 0;

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  webView = [activeTabDocument webView];

  _sf_usesLeftToRightLayout = [webView _sf_usesLeftToRightLayout];
  showingSidebar = self->_showingSidebar;
  canGoBack = [webView canGoBack];
  canGoForward = [webView canGoForward];
  if (self->_showingSidebar)
  {
    contentViewController = [(SidebarViewController *)self->_sidebarViewController contentViewController];
    preferredScreenEdgesDeferringSystemGestures = [contentViewController preferredScreenEdgesDeferringSystemGestures];
  }

  else
  {
    preferredScreenEdgesDeferringSystemGestures = 0;
  }

  v13 = 8;
  if (_sf_usesLeftToRightLayout)
  {
    v14 = 2;
  }

  else
  {
    v14 = 8;
  }

  if (!_sf_usesLeftToRightLayout)
  {
    v13 = 2;
  }

  if (canGoBack)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (canGoForward)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15;
  if (showingSidebar)
  {
    v18 = v13;
  }

  else
  {
    v18 = 10;
  }

  _shouldInterceptBottomGesture = [(BrowserRootViewController *)self _shouldInterceptBottomGesture];
  v20 = 4;
  if (!_shouldInterceptBottomGesture)
  {
    v20 = 0;
  }

  v21 = v17 & v18;
  v22 = preferredScreenEdgesDeferringSystemGestures | v20;

  return v22 | v21;
}

- (void)_dismissWebSearchTipPopoverIfNeeded
{
  presentingViewController = [(UIViewController *)self->_webSearchTipViewController presentingViewController];
  v3 = presentingViewController;
  if (presentingViewController)
  {
    v4 = MEMORY[0x277D75D28];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__BrowserRootViewController__dismissWebSearchTipPopoverIfNeeded__block_invoke;
    v5[3] = &unk_2781D4D40;
    v6 = presentingViewController;
    [v4 _performWithoutDeferringTransitions:v5];
  }
}

- (void)_updateSidebarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_showingSidebar && (objc_opt_respondsToSelector() & 1) != 0)
  {
    sidebarStyle = self->_sidebarStyle;
    view = [(BrowserRootViewController *)self view];
    [view frame];
    self->_sidebarStyle = [WeakRetained browserViewController:self sidebarStyleForViewSize:{v6, v7}];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__BrowserRootViewController__updateSidebarStyle__block_invoke;
    v8[3] = &unk_2781D4D40;
    v8[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v8];
    if (sidebarStyle != self->_sidebarStyle)
    {
      [(BrowserRootViewController *)self _setShowingFloatingSidebarButton:0];
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained browserViewController:self didChangeSidebarStyle:self->_sidebarStyle];
      }
    }
  }
}

- (void)_updateAddedBookmarkToastLayout
{
  view = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [(BrowserRootViewController *)self obscuredInsetsForRect:view2 inCoordinateSpace:v5, v7, v9, v11];
  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController setToastObscuredEdgeInsets:?];

  v13 = +[Application sharedApplication];
  -[AddedBookmarkToastViewController setToastPlacement:](self->_addedBookmarkToastViewController, "setToastPlacement:", [v13 usesLoweredSearchBar]);
}

- (void)_destroySidebarContentDimmingViewIfNeeded
{
  if (self->_sidebarContentDimmingView && ![(BrowserRootViewController *)self _shouldShowSidebarContentDimmingView])
  {
    [(SidebarContentDimmingView *)self->_sidebarContentDimmingView removeFromSuperview];
    sidebarContentDimmingView = self->_sidebarContentDimmingView;
    self->_sidebarContentDimmingView = 0;
  }
}

- (void)layOutTopBars
{
  [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:self->_contentContainerView];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BrowserRootViewController *)self navigationBarDesiredHeight];
  v12 = v11;
  view = [(BrowserRootViewController *)self view];
  [view safeAreaInsets];
  v15 = v14;

  navigationBar = self->_navigationBar;
  __x = v12;
  if (navigationBar)
  {
    [(_SFNavigationBar *)navigationBar setMaximumHeight:v12];
    [(NavigationBar *)self->_navigationBar setFrame:v4, v6, v8, v10];
    [(_SFNavigationBar *)self->_navigationBar setContentUnderStatusBarHeight:v15];
    if (self->_scrollToTopView)
    {
      view2 = [(BrowserRootViewController *)self view];
      [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:view2];
      [(NavigationBar *)self->_navigationBar setHidden:CGRectGetMaxY(v88) <= 0.0];
    }

    else
    {
      [(NavigationBar *)self->_navigationBar setHidden:0];
    }

    [(_SFNavigationBar *)self->_navigationBar defaultHeight];
    v18 = v19;
  }

  else
  {
    v18 = 0.0;
  }

  rect = v10;
  if (self->_unifiedBar)
  {
    if ([(BrowserRootViewController *)self usingUnifiedBar])
    {
      Height = v10;
      v21 = v6;
    }

    else
    {
      [(BrowserRootViewController *)self _frameForNavigationBar];
      v23 = v22;
      v25 = v24;
      v82 = v15;
      v26 = v4;
      v28 = v27;
      v29 = v8;
      v31 = v30;
      v89.origin.x = v26;
      v89.origin.y = v6;
      v89.size.width = v29;
      v89.size.height = rect;
      MaxY = CGRectGetMaxY(v89);
      v90.origin.x = v23;
      v90.origin.y = v25;
      v90.size.width = v28;
      v90.size.height = v31;
      v21 = MaxY - CGRectGetHeight(v90);
      v91.origin.x = v23;
      v91.origin.y = v25;
      v91.size.width = v28;
      v4 = v26;
      v91.size.height = v31;
      v8 = v29;
      v15 = v82;
      v10 = rect;
      Height = CGRectGetHeight(v91);
    }

    [(UnifiedBar *)self->_unifiedBar setFrame:v4, v21, v8, Height];
    [(SFUnifiedBar *)self->_unifiedBar setContentUnderStatusBarHeight:v15];
    if ([MEMORY[0x277D49A08] isSolariumEnabled] && (WeakRetained = objc_loadWeakRetained(&self->_browserController), objc_msgSend(WeakRetained, "sidebarUIProxy"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isShowingSidebar"), v34, WeakRetained, v35))
    {
      view3 = [(BrowserRootViewController *)self view];
      _sf_usesLeftToRightLayout = [view3 _sf_usesLeftToRightLayout];
      view4 = [(BrowserRootViewController *)self view];
      [view4 safeAreaInsets];
      if (_sf_usesLeftToRightLayout)
      {
        v41 = v39;
      }

      else
      {
        v41 = v40;
      }

      [(SFUnifiedBar *)self->_unifiedBar setContentUnderSidebarWidth:v41];
    }

    else
    {
      [(SFUnifiedBar *)self->_unifiedBar setContentUnderSidebarWidth:0.0];
    }

    _shouldHideUnifiedBar = [(BrowserRootViewController *)self _shouldHideUnifiedBar];
    if (_shouldHideUnifiedBar || !self->_scrollToTopView)
    {
      [(UnifiedBar *)self->_unifiedBar setHidden:_shouldHideUnifiedBar];
    }

    else
    {
      view5 = [(BrowserRootViewController *)self view];
      [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:view5];
      [(UnifiedBar *)self->_unifiedBar setHidden:CGRectGetMaxY(v92) <= 0.0];
    }

    [(BrowserRootViewController *)self _topAuxiliaryBarsHeight];
    [(SFUnifiedBar *)self->_unifiedBar setExtendedBottomHeight:?];
    [(SFUnifiedBar *)self->_unifiedBar expandedHeight];
    v18 = v44;
  }

  v93.origin.x = v4;
  v93.origin.y = v6;
  v93.size.width = v8;
  v93.size.height = v10;
  v45 = fmax(CGRectGetHeight(v93) - v18, 0.0);
  v94.origin.x = v4;
  v94.origin.y = v6;
  v94.size.width = v8;
  v94.size.height = v10;
  MinX = CGRectGetMinX(v94);
  v95.origin.x = v4;
  v95.origin.y = v6;
  v95.size.width = v8;
  v95.size.height = v10;
  v47 = v4;
  v48 = CGRectGetMaxY(v95) - v45;
  v96.origin.x = v47;
  v96.origin.y = v6;
  v96.size.width = v8;
  v96.size.height = v10;
  Width = CGRectGetWidth(v96);
  [(BarContainerView *)self->_topAuxiliaryBarsContainerView setFrame:MinX, v48, Width, v45];
  v83 = v47;
  v97.origin.x = v47;
  v97.origin.y = v6;
  v97.size.width = v8;
  v97.size.height = v10;
  [(BarContainerView *)self->_topAuxiliaryBarsContainerView setClipsToBounds:CGRectGetHeight(v97) < __x];
  [(_SFNavigationBar *)self->_navigationBar _controlsAlpha];
  __xa = v50;
  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    [(SFUnifiedBar *)self->_unifiedBar squishTransformFactor];
    SFBarContentAlphaForSquishTransformFactor();
    __xa = v51;
  }

  if (self->_tabBar)
  {
    v81 = v6;
    v52 = 0.0;
    if (self->_showingTabBar)
    {
      +[TabBar defaultHeight];
      v52 = v53;
    }

    v98.origin.x = MinX;
    v98.origin.y = v48;
    v98.size.width = Width;
    v98.size.height = v45;
    [(UIView *)self->_tabBarClipperView setFrame:*MEMORY[0x277CBF3A0], CGRectGetHeight(v98) - (v52 + 3.0), Width, v52 + 3.0];
    superview = [(TabBar *)self->_tabBar superview];
    [superview bounds];
    v55 = CGRectGetMaxY(v99) - v52;
    v100.origin.x = MinX;
    v100.origin.y = v48;
    v100.size.width = Width;
    v100.size.height = v45;
    v56 = CGRectGetWidth(v100);
    +[TabBar defaultHeight];
    [(TabBar *)self->_tabBar setFrame:0.0, v55, v56, v57];

    [(TabBar *)self->_tabBar setAlpha:__xa];
    v6 = v81;
    v10 = rect;
  }

  [(BrowserRootViewController *)self _layOutTopBanners];
  if (self->_tabBar)
  {
    showingTabBar = self->_showingTabBar;
  }

  else
  {
    showingTabBar = 1;
  }

  [(TabBarDropExpansionView *)self->_tabBarDropExpansionView setHidden:showingTabBar];
  v101.origin.x = MinX;
  v101.origin.y = v48;
  v101.size.width = Width;
  v101.size.height = v45;
  v59 = CGRectGetMaxY(v101);
  v102.origin.x = v83;
  v60 = v6;
  v102.origin.y = v6;
  v102.size.width = v8;
  v102.size.height = v10;
  v61 = CGRectGetWidth(v102);
  +[TabBar defaultHeight];
  [(TabBarDropExpansionView *)self->_tabBarDropExpansionView setFrame:0.0, v59, v61, v62];
  bookmarksBar = self->_bookmarksBar;
  if (bookmarksBar)
  {
    superview2 = [(BookmarksBarView *)bookmarksBar superview];
    topAuxiliaryBarsContainerView = self->_topAuxiliaryBarsContainerView;

    if (superview2 == topAuxiliaryBarsContainerView)
    {
      if (self->_tabBar && self->_showingTabBar)
      {
        superview3 = [(BookmarksBarView *)self->_bookmarksBar superview];
        [(TabBar *)self->_tabBar bounds];
        [superview3 convertRect:self->_tabBar fromView:?];
        v68 = v67;
        v70 = v69;
        v71 = v10;
        v72 = v8;
        v74 = v73;
        v76 = v75;

        v103.origin.x = v68;
        v103.origin.y = v70;
        v103.size.width = v74;
        v8 = v72;
        v10 = v71;
        v103.size.height = v76;
        MinY = CGRectGetMinY(v103);
      }

      else
      {
        superview4 = [(BookmarksBarView *)self->_bookmarksBar superview];
        [superview4 bounds];
        MinY = CGRectGetMaxY(v104);
      }

      v105.origin.x = v83;
      v105.origin.y = v60;
      v105.size.width = v8;
      v105.size.height = v10;
      [(BookmarksBarView *)self->_bookmarksBar setFrame:0.0, MinY + -23.0 + -3.0, CGRectGetWidth(v105), 23.0];
      v79 = pow(__xa, 5.0);
      v80 = self->_bookmarksBar;

      [(BookmarksBarView *)v80 setAlpha:v79];
    }
  }
}

- (double)navigationBarDesiredHeight
{
  unifiedBar = self->_unifiedBar;
  if (unifiedBar)
  {
    [(SFUnifiedBar *)unifiedBar expandedHeight];
  }

  else
  {
    [(_SFNavigationBar *)self->_navigationBar defaultHeight];
  }

  v5 = v4;
  [(BrowserRootViewController *)self _topAuxiliaryBarsHeight];
  return v5 + v6;
}

- (double)_topAuxiliaryBarsHeight
{
  bookmarksBar = self->_bookmarksBar;
  if (bookmarksBar)
  {
    superview = [(BookmarksBarView *)bookmarksBar superview];
    topAuxiliaryBarsContainerView = self->_topAuxiliaryBarsContainerView;

    if (superview == topAuxiliaryBarsContainerView)
    {
      v6 = 23.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  if (self->_showingTabBar && self->_tabBar)
  {
    +[TabBar defaultHeight];
    return v6 + v7;
  }

  return v6;
}

- (void)_layOutTopBanners
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewControllerAdditionalContentHeightForBanners:self];
  v5 = v4;

  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_loadWeakRetained(&self->_browserController);
  bannerController = [v14 bannerController];
  indexOfFirstBannerSeparableFromStatusBar = [bannerController indexOfFirstBannerSeparableFromStatusBar];

  managedTopBanners = [(BrowserRootViewController *)self managedTopBanners];
  bannerController2 = [v14 bannerController];
  bannerBackdrop = [bannerController2 bannerBackdrop];

  themeColor = [(SFBannerTheme *)self->_bannerTheme themeColor];
  [bannerBackdrop setBackgroundColor:themeColor];

  if ([managedTopBanners count])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = [(BrowserRootViewController *)self _findInsertionIndexForBannersInScrollView:self->_scrollView];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__BrowserRootViewController__layOutTopBanners__block_invoke;
    aBlock[3] = &unk_2781D77B0;
    aBlock[4] = self;
    aBlock[5] = &v34;
    v21 = _Block_copy(aBlock);
    v21[2](v21, bannerBackdrop);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __46__BrowserRootViewController__layOutTopBanners__block_invoke_2;
    v42[3] = &unk_2781D77D8;
    v42[4] = self;
    v44 = indexOfFirstBannerSeparableFromStatusBar;
    v22 = v21;
    v43 = v22;
    v45 = v7;
    v46 = v9;
    v47 = v11;
    v48 = v13;
    [managedTopBanners enumerateObjectsWithOptions:2 usingBlock:v42];

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    [bannerBackdrop removeFromSuperview];
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  [(BrowserRootViewController *)self _totalAdditionalContentHeightForBanners];
  *&v41[3] = -v23;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:self->_scrollView];
  v40[3] = CGRectGetMaxY(v50);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__BrowserRootViewController__layOutTopBanners__block_invoke_187;
  v29[3] = &unk_2781D7800;
  *&v29[9] = v7;
  *&v29[10] = v9;
  *&v29[11] = v11;
  *&v29[12] = v13;
  v29[13] = indexOfFirstBannerSeparableFromStatusBar;
  v29[4] = self;
  v29[5] = v41;
  v29[14] = v5;
  v29[6] = v40;
  v29[7] = &v30;
  v29[8] = &v34;
  [managedTopBanners enumerateObjectsUsingBlock:v29];
  if (*(v31 + 24))
  {
    v24 = v40;
  }

  else
  {
    v24 = v41;
  }

  v25 = *(v24[1] + 24);
  v51.origin.x = v7;
  v51.origin.y = v9;
  v51.size.width = v11;
  v51.size.height = v13;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = v7;
  v52.origin.y = v9;
  v52.size.width = v11;
  v52.size.height = v13;
  [bannerBackdrop setFrame:{MinX, 0.0, CGRectGetWidth(v52), fmax(v25, 0.0)}];
  v27 = v35[5];
  if (v27)
  {
    shouldUsePlainTheme = [v27 shouldUsePlainTheme];
  }

  else
  {
    shouldUsePlainTheme = 0;
  }

  [(BrowserRootViewController *)self _setTopBackdropUsesPlainTheme:shouldUsePlainTheme];
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
}

- (void)_updateScrollToTopOverride
{
  if (self->_inYttriumState)
  {
    if (_SFDeviceIsPad() & 1) != 0 || (_SFDeviceHasHomeButton())
    {
      v3 = 1;
    }

    else
    {
      v3 = [(BrowserRootViewController *)self isUsingBottomCapsule]^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
  [_continuousReadingViewController setInterceptsScrollToTopTap:v3];
}

- (void)updateUsesWebpageStatusBar
{
  if ([(BrowserRootViewController *)self _usesWebpageStatusBar])
  {

    [(BrowserRootViewController *)self _setUpWebpageStatusBarIfNeeded];
  }

  else
  {
    [(SFWebpageStatusBarView *)self->_statusBarView removeFromSuperview];
    statusBarView = self->_statusBarView;
    self->_statusBarView = 0;

    if (self->_statusBarHoverGestureRecognizer)
    {
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView removeGestureRecognizer:?];
      statusBarHoverGestureRecognizer = self->_statusBarHoverGestureRecognizer;
      self->_statusBarHoverGestureRecognizer = 0;
    }
  }
}

- (BOOL)becomeFirstResponder
{
  if (![(BrowserRootViewController *)self canBecomeFirstResponder])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained becomeFirstResponder])
  {
    becomeFirstResponder = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BrowserRootViewController;
    becomeFirstResponder = [(BrowserRootViewController *)&v6 becomeFirstResponder];
  }

  return becomeFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  if (!self->_canBecomeFirstResponder)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained canBecomeFirstResponder])
  {
    presentedViewController = [(BrowserRootViewController *)self presentedViewController];
    v5 = presentedViewController == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v29 viewWillLayoutSubviews];
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    view = [(BrowserRootViewController *)self view];
    [view bounds];
    CGRectGetWidth(v30);
    v4 = _SFSizeClassForWidth();
    traitOverrides = [(BrowserRootViewController *)self traitOverrides];
    [traitOverrides setHorizontalSizeClass:v4];
  }

  if (_SFDeviceIsPad() && [MEMORY[0x277D49A08] isSolariumEnabled])
  {
    view2 = [(BrowserRootViewController *)self view];
    [view2 bounds];
    CGRectGetWidth(v31);
    if (SFWidthIsNarrow())
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    traitOverrides2 = [(TabSwitcherViewController *)self->_tabSwitcherViewController traitOverrides];
    [traitOverrides2 setHorizontalSizeClass:v7];
  }

  [(BrowserRootViewController *)self _frameForContentContainerView];
  [(ViewWithCustomNextResponder *)self->_contentContainerView setFrame:?];
  [(ViewWithCustomNextResponder *)self->_contentContainerView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view3 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
  [view3 setFrame:{v10, v12, v14, v16}];

  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView setFrame:?];
  [(BrowserRootViewController *)self _layOutTabView];
  [(BrowserRootViewController *)self layOutTopBars];
  [(BrowserRootViewController *)self _layOutScrollToTopView];
  [(BrowserRootViewController *)self _updateToolbarPlacementIfNeeded];
  [(BrowserRootViewController *)self _layOutBottomToolbar];
  [(BrowserRootViewController *)self _layOutSidebar];
  [(BrowserRootViewController *)self _layOutSidebarContentDimmingView];
  [(BrowserRootViewController *)self _layOutWebpageStatusBarView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewControllerDidLayOutSubviews:self];
  v27 = *&self->_obscuredInsets.bottom;
  v28 = *&self->_obscuredInsets.top;
  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  [(BrowserRootViewController *)self obscuredInsetsForRect:self->_contentContainerView inCoordinateSpace:?];
  self->_obscuredInsets.top = v19.f64[0];
  self->_obscuredInsets.left = v20;
  self->_obscuredInsets.bottom = v21.f64[0];
  self->_obscuredInsets.right = v22;
  v19.f64[1] = v20;
  v21.f64[1] = v22;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, v28), vceqq_f64(v21, v27)))) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [WeakRetained browserViewControllerDidChangeBarInsets:self];
  }

  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    [(BrowserRootViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(SFStepperContainer *)self->_stepperContainer setFrame:?];
  underPageBackgroundColor = [(_SFWebView *)self->_webView underPageBackgroundColor];
  systemBackgroundColor = underPageBackgroundColor;
  if (!underPageBackgroundColor)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
  view4 = [_continuousReadingViewController view];
  [view4 setBackgroundColor:systemBackgroundColor];

  if (!underPageBackgroundColor)
  {
  }
}

- (CGRect)_frameForContentContainerView
{
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)maximumHeightObscuredByBottomToolbar
{
  result = 0.0;
  if (self->_toolbarPlacement == 1)
  {
    [(BrowserRootViewController *)self _loweredBarMaximumObscuredInsets:0.0];
    return v5;
  }

  return result;
}

- (double)bannerHeightIncludedInSnapshot
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (!SFEnhancedTabOverviewEnabled() || ([WeakRetained tabController], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "activeTabDocument"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isShowingSystemStartPage"), v5, v4, v7 = 0.0, (v6 & 1) == 0))
  {
    [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:self->_documentAndTopBarsContainerView];
    MaxY = CGRectGetMaxY(v25);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    bannerController = [WeakRetained bannerController];
    topBannersAnchoredToStatusBar = [bannerController topBannersAnchoredToStatusBar];

    v11 = [topBannersAnchoredToStatusBar countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      v14 = MaxY;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(topBannersAnchoredToStatusBar);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
          [v16 bounds];
          [(SFOrderedContainerView *)documentAndTopBarsContainerView convertRect:v16 fromView:?];
          v14 = fmax(v14, CGRectGetMaxY(v26));
        }

        v12 = [topBannersAnchoredToStatusBar countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = MaxY;
    }

    v7 = v14 - MaxY;
  }

  return v7;
}

- (void)_layOutScrollToTopView
{
  if (self->_scrollToTopView)
  {
    v3 = 5.0;
    if ([(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state]!= 1)
    {
      [(ScrollToTopView *)self->_scrollToTopView defaultHeight];
      v3 = v4;
    }

    view = [(BrowserRootViewController *)self view];
    [view bounds];
    [(ScrollToTopView *)self->_scrollToTopView setFrame:0.0, 0.0, CGRectGetWidth(v8), v3];

    WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
    -[ScrollToTopView setHidden:](self->_scrollToTopView, "setHidden:", [WeakRetained presentationState] != 0);
  }
}

- (void)_layOutSidebar
{
  [(BrowserRootViewController *)self _frameForSidebarWhenShowing:self->_showingSidebar];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(SidebarViewController *)self->_sidebarViewController view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (void)_layOutBottomToolbar
{
  if (self->_bottomToolbar)
  {
    [(BrowserRootViewController *)self _frameForBottomToolbarForceHidden:0];
    [(BrowserToolbar *)self->_bottomToolbar setFrame:?];
    bottomToolbar = self->_bottomToolbar;

    [(BrowserToolbar *)bottomToolbar setNeedsLayout];
  }
}

- (void)_layOutSidebarContentDimmingView
{
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(SidebarContentDimmingView *)self->_sidebarContentDimmingView setFrame:?];
  sidebarContentDimmingView = self->_sidebarContentDimmingView;
  [(BrowserRootViewController *)self _sidebarDimmedContentFrameIncludingSidebarOnlyIfEmbedded:0];
  [(SidebarContentDimmingView *)sidebarContentDimmingView setDimmedContentFrame:?];
  v4 = self->_sidebarContentDimmingView;
  v5 = [(BrowserRootViewController *)self _shouldShowSidebarContentDimmingView]^ 1;

  [(SidebarContentDimmingView *)v4 setTransparent:v5];
}

- (void)_layOutWebpageStatusBarView
{
  webView = self->_webView;
  [(_SFWebView *)webView frame];
  [(_SFWebView *)webView convertRect:self->_documentAndTopBarsContainerView toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v13;
  v29.origin.y = v15;
  v29.size.width = v17;
  v29.size.height = v19;
  Height = CGRectGetHeight(v29);
  statusBarView = self->_statusBarView;

  [(SFWebpageStatusBarView *)statusBarView setFrame:MinX, MinY, Width, Height];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v7 viewDidLayoutSubviews];
  [(BrowserRootViewController *)self _layOutTopBackdrop];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  view = [activeTabDocument view];
  [view ensureContentOffsetWithinContentInsets];
}

- (void)_layOutTopBackdrop
{
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_topSeparator setHidden:[(BrowserRootViewController *)self isUsingBottomCapsule]];
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  Width = CGRectGetWidth(v38);
  v12 = 0.0;
  if ([(BrowserRootViewController *)self _showsTopBackdrop])
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [capsuleCollectionView obscuredInsets];
    v12 = fmax(v14 + -13.0, 0.0);
  }

  [(SFThemeColorEffectView *)self->_topBackdrop setFrame:0.0, 0.0, Width, v12];
  if (-[BrowserRootViewController _interfaceFillsScreen](self, "_interfaceFillsScreen") && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    if (!self->_statusBarBackdrop)
    {
      v17 = [objc_alloc(MEMORY[0x277D28E38]) initWithEffect:0];
      statusBarBackdrop = self->_statusBarBackdrop;
      self->_statusBarBackdrop = v17;

      [(BrowserRootViewController *)self _applyStatusBarBackdropTheme];
    }
  }

  else
  {
    v15 = self->_statusBarBackdrop;
    if (v15)
    {
      [(SFThemeColorEffectView *)v15 removeFromSuperview];
      v16 = self->_statusBarBackdrop;
      self->_statusBarBackdrop = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  -[SFThemeColorEffectView setAlpha:](self->_statusBarBackdrop, "setAlpha:", ([WeakRetained isShowingFavorites] ^ 1));

  v20 = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([v20 presentationState])
  {
    v21 = self->_documentAndTopBarsContainerView;
  }

  else
  {
    capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
    documentAndTopBarsContainerView = view;
    if (!capsuleCollectionViewLayout)
    {
      documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
    }

    v21 = documentAndTopBarsContainerView;
  }

  v24 = self->_statusBarBackdrop;
  if (v24)
  {
    superview = [(SFThemeColorEffectView *)v24 superview];

    if (superview != v21)
    {
      [(SFOrderedContainerView *)v21 addSubview:self->_statusBarBackdrop];
    }
  }

  [(SFOrderedContainerView *)v21 bounds];
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:8 forRect:v21 inCoordinateSpace:?];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v34 = CGRectGetWidth(v39);
  [view safeAreaInsets];
  [(SFThemeColorEffectView *)self->_statusBarBackdrop setFrame:v29 + 0.0, v27 + 0.0, v34 - (v29 + v33), v35 - (v27 + v31)];
}

void __40__BrowserRootViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v39 = [*(a1 + 32) view];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1680));
  v3 = [WeakRetained siriLinkCoordinator];

  v4 = [v3 createNewBookmarkInteraction];
  [v39 _sf_addInteractionUnlessNil:v4];

  v5 = [v3 createReadingListItemInteraction];
  [v39 _sf_addInteractionUnlessNil:v5];

  v6 = [v3 openBookmarkInteraction];
  [v39 _sf_addInteractionUnlessNil:v6];

  v7 = [v3 openBookmarkInTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v7];

  v8 = [v3 openReadingListItemInteraction];
  [v39 _sf_addInteractionUnlessNil:v8];

  v9 = [v3 changeReaderModeInteraction];
  [v39 _sf_addInteractionUnlessNil:v9];

  v10 = [v3 createNewTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v10];

  v11 = [v3 createNewTabInteractionForAssistantIntent];
  [v39 _sf_addInteractionUnlessNil:v11];

  v12 = [v3 openTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v12];

  v13 = [v3 closeTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v13];

  v14 = [v3 createNewPrivateTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v14];

  v15 = [v3 createNewTabGroupInteraction];
  [v39 _sf_addInteractionUnlessNil:v15];

  v16 = [v3 openTabGroupInteraction];
  [v39 _sf_addInteractionUnlessNil:v16];

  v17 = [v3 closeViewInteraction];
  [v39 _sf_addInteractionUnlessNil:v17];

  v18 = [v3 openViewInteraction];
  [v39 _sf_addInteractionUnlessNil:v18];

  v19 = [v3 webSearchInteraction];
  [v39 _sf_addInteractionUnlessNil:v19];

  v20 = [v3 navigateContinuousReadingListInteraction];
  [v39 _sf_addInteractionUnlessNil:v20];

  v21 = [v3 openClearHistoryInteraction];
  [v39 _sf_addInteractionUnlessNil:v21];

  v22 = [v3 listenToPageSiriReaderInteraction];
  [v39 _sf_addInteractionUnlessNil:v22];

  v23 = [v3 closeTabsInteraction];
  [v39 _sf_addInteractionUnlessNil:v23];

  v24 = [v3 loadURLInTabInteraction];
  [v39 _sf_addInteractionUnlessNil:v24];

  v25 = [v3 searchTabsInteraction];
  [v39 _sf_addInteractionUnlessNil:v25];

  v26 = [v3 findOnPageInteraction];
  [v39 _sf_addInteractionUnlessNil:v26];

  v27 = [v3 searchWebAssistantIntentInteraction];
  [v39 _sf_addInteractionUnlessNil:v27];

  v28 = *(*(a1 + 32) + 1720);
  if (v28)
  {
    (*(v28 + 16))();
    v29 = *(a1 + 32);
    v30 = *(v29 + 1720);
    *(v29 + 1720) = 0;
  }

  v31 = objc_alloc_init(MEMORY[0x277D28E40]);
  v32 = *(a1 + 32);
  v33 = *(v32 + 1728);
  *(v32 + 1728) = v31;

  [*(*(a1 + 32) + 1728) setObserver:?];
  [*(*(a1 + 32) + 1728) startObserving];
  v34 = [objc_alloc(MEMORY[0x277D28E50]) initWithTarget:*(a1 + 32) action:sel__contentScrollViewReceivedTouchDown_];
  v35 = *(a1 + 32);
  v36 = *(v35 + 1000);
  *(v35 + 1000) = v34;

  [*(*(a1 + 32) + 1000) setDelegate:?];
  v37 = [*(a1 + 32) _continuousReadingViewController];
  v38 = [v37 view];
  [v38 addGestureRecognizer:*(*(a1 + 32) + 1000)];
}

- (void)_setUpRefreshControlIfNeeded
{
  refreshControl = [(BrowserRootViewController *)self refreshControl];
  if (!refreshControl)
  {
    if (!self->_pullToRefreshIsEnabled)
    {
      return;
    }

    v4 = objc_alloc_init(MEMORY[0x277D75918]);
    [v4 addTarget:self action:sel__refreshControlFired_ forControlEvents:4096];
    [(UIScrollView *)self->_scrollView setRefreshControl:v4];
    [(BrowserRootViewController *)self _updateRefreshControlStyle];
    refreshControl = v4;
  }
}

- (UIEdgeInsets)_baseInsetsForVerticalScrollIndicator
{
  p_verticalScrollIndicatorBaseInsets = &self->_verticalScrollIndicatorBaseInsets;
  v3 = *&self->_verticalScrollIndicatorBaseInsets.top;
  v4 = *&self->_verticalScrollIndicatorBaseInsets.bottom;
  v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v4, v5))))))
  {
    left = self->_verticalScrollIndicatorBaseInsets.left;
    right = self->_verticalScrollIndicatorBaseInsets.right;
  }

  else
  {
    v8 = MEMORY[0x277D759D8];
    view = [(BrowserRootViewController *)self view];
    [v8 _sf_baseInsetsForVerticalScrollIndicatorInScrollViewContainerView:view];
    p_verticalScrollIndicatorBaseInsets->top = v10;
    p_verticalScrollIndicatorBaseInsets->left = v11;
    p_verticalScrollIndicatorBaseInsets->bottom = v12;
    p_verticalScrollIndicatorBaseInsets->right = v13;

    v3.f64[0] = p_verticalScrollIndicatorBaseInsets->top;
    left = p_verticalScrollIndicatorBaseInsets->left;
    v4.f64[0] = p_verticalScrollIndicatorBaseInsets->bottom;
    right = p_verticalScrollIndicatorBaseInsets->right;
  }

  result.bottom = v4.f64[0];
  result.top = v3.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (UIEdgeInsets)_baseInsetsForHorizontalScrollIndicator
{
  p_horizontalScrollIndicatorBaseInsets = &self->_horizontalScrollIndicatorBaseInsets;
  v3 = *&self->_horizontalScrollIndicatorBaseInsets.top;
  v4 = *&self->_horizontalScrollIndicatorBaseInsets.bottom;
  v5 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v4, v5))))))
  {
    left = self->_horizontalScrollIndicatorBaseInsets.left;
    right = self->_horizontalScrollIndicatorBaseInsets.right;
  }

  else
  {
    v8 = MEMORY[0x277D759D8];
    view = [(BrowserRootViewController *)self view];
    [v8 _sf_baseInsetsForHorizontalScrollIndicatorInScrollViewContainerView:view];
    p_horizontalScrollIndicatorBaseInsets->top = v10;
    p_horizontalScrollIndicatorBaseInsets->left = v11;
    p_horizontalScrollIndicatorBaseInsets->bottom = v12;
    p_horizontalScrollIndicatorBaseInsets->right = v13;

    v3.f64[0] = p_horizontalScrollIndicatorBaseInsets->top;
    left = p_horizontalScrollIndicatorBaseInsets->left;
    v4.f64[0] = p_horizontalScrollIndicatorBaseInsets->bottom;
    right = p_horizontalScrollIndicatorBaseInsets->right;
  }

  result.bottom = v4.f64[0];
  result.top = v3.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (CGSize)webViewMinimumLayoutSize
{
  [(BrowserRootViewController *)self _webViewMinimumLayoutSizeWithBarVisibilitiesIgnored:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)webViewMinimumUnobscuredLayoutSize
{
  [(BrowserRootViewController *)self _webViewMinimumLayoutSizeWithBarVisibilitiesIgnored:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)webViewMaximumUnobscuredLayoutSize
{
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BrowserRootViewController *)self minimumObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
  [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:v4, v6, v8, v10];
  UIEdgeInsetsReplace();
  [(BrowserRootViewController *)self webViewEffectiveSafeAreaInsets];
  UIEdgeInsetsMax();
  v13 = v8 - (v11 + v12);
  v16 = v10 - (v14 + v15);
  v17 = v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (double)_bottomBarOffset
{
  [(BrowserRootViewController *)self maximumHeightObscuredByBottomToolbar];
  v4 = v3;
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(BrowserRootViewController *)self view];
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:2 forRect:view2 inCoordinateSpace:v7, v9, v11, v13];
  v16 = v4 - v15;

  return v16;
}

- (SFBarAnimating)currentBarAnimator
{
  capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];

  if (capsuleCollectionViewLayout)
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  }

  else
  {
    capsuleCollectionView = self->_dynamicBarAnimator;
  }

  return capsuleCollectionView;
}

- (BOOL)safari_wantsTransparentApplicationBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if (SFEnhancedTabOverviewEnabled())
  {
    if ([WeakRetained presentationState])
    {
      isPerformingReducedMotionTransition = 1;
    }

    else
    {
      isPerformingReducedMotionTransition = [(TabSwitcherViewController *)self->_tabSwitcherViewController isPerformingReducedMotionTransition];
    }
  }

  else
  {
    view = [WeakRetained view];
    superview = [view superview];
    isPerformingReducedMotionTransition = superview != 0;
  }

  return isPerformingReducedMotionTransition;
}

- (void)updateUnifiedBarVisibility
{
  [(UnifiedBar *)self->_unifiedBar setHidden:[(BrowserRootViewController *)self _shouldHideUnifiedBar]];
  [(BrowserRootViewController *)self _setShowingFloatingSidebarButton:0];
  view = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([view presentationState] == 1)
  {
  }

  else
  {
    presentationState = [view presentationState];

    if (presentationState == 2)
    {
      goto LABEL_6;
    }

    view = [(BrowserRootViewController *)self view];
    [view setNeedsLayout];
    [view layoutIfNeeded];
  }

LABEL_6:
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained reloadSidebarAnimated:0];
  [WeakRetained updateTabViewPinchRecognizer];
  tabController = [WeakRetained tabController];
  [tabController updateLocalTabGroupTitle];
}

- (BOOL)_shouldHideUnifiedBar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  isShowingLibraryDocument = [tabController isShowingLibraryDocument];

  return isShowingLibraryDocument;
}

- (BOOL)_isTrackingDropSession
{
  startPageController = [(CatalogViewController *)self->_catalogViewController startPageController];
  viewController = [startPageController viewController];
  isTrackingDropSession = [viewController isTrackingDropSession];

  return isTrackingDropSession;
}

- (BOOL)_isShowingFindOnPage
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  isShowingFindOnPage = [activeTabDocument isShowingFindOnPage];

  return isShowingFindOnPage;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"showingSidebar"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___BrowserRootViewController;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (BrowserRootViewController)initWithBrowserController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = BrowserRootViewController;
  v5 = [(BrowserRootViewController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserController, controllerCopy);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    app = v6->_app;
    v6->_app = mEMORY[0x277D75128];

    *&v6->_horizontalScrollIndicatorBaseInsets.top = *invalidScrollViewInsets;
    *&v6->_horizontalScrollIndicatorBaseInsets.bottom = *&invalidScrollViewInsets[16];
    *&v6->_verticalScrollIndicatorBaseInsets.top = *invalidScrollViewInsets;
    *&v6->_verticalScrollIndicatorBaseInsets.bottom = *&invalidScrollViewInsets[16];
    v9 = objc_alloc_init(TabBarManager);
    tabBarManager = v6->_tabBarManager;
    v6->_tabBarManager = v9;

    [(BrowserRootViewController *)v6 updateSuppressesStandaloneTabBar];
    [(BrowserRootViewController *)v6 _registerLayoutStateUpdateHandler];
    [(BrowserRootViewController *)v6 _logCurrentLayoutState];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addObserver:v6 forKeyPath:@"DebugBarCollapsingBehavior" options:0 context:kvoContext_0];

    v12 = v6;
  }

  return v6;
}

- (void)dealloc
{
  view = [(BrowserRootViewController *)self view];
  if (objc_opt_respondsToSelector())
  {
    [view _removeBoundingPathChangeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (kvoContext_0 == context)
  {
    if ([pathCopy isEqualToString:@"DebugBarCollapsingBehavior"])
    {
      [(BrowserRootViewController *)self updateCapsuleMinimizationStyle];
    }

    else if ([v11 isEqualToString:@"isHidden"])
    {
      [(BrowserRootViewController *)self _updateScrollPocketForTopBackdrop];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BrowserRootViewController;
    [(BrowserRootViewController *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
  }
}

- (void)didReceiveMemoryWarning
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Sidebar is unparented, but is still in the view hierarchy with parent view %{public}@, removing the sidebar from the view hierarchy before discarding.", &v2, 0xCu);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    isViewLoaded = [(BrowserRootViewController *)self isViewLoaded];
    v5 = obj;
    if (isViewLoaded)
    {
      self->_sizeForToolbarPlacement = *MEMORY[0x277CBF3A8];
      [(BrowserRootViewController *)self _updateToolbarPlacementIfNeeded];
      v5 = obj;
    }
  }
}

- (void)setWebView:(id)view
{
  viewCopy = view;
  webView = self->_webView;
  if (webView != viewCopy)
  {
    v13 = viewCopy;
    v7 = webView;
    scrollView = [(_SFWebView *)v7 scrollView];
    [scrollView setRefreshControl:0];
    objc_storeStrong(&self->_webView, view);
    scrollView2 = [(_SFWebView *)v13 scrollView];
    scrollView = self->_scrollView;
    self->_scrollView = scrollView2;

    [(BrowserRootViewController *)self _setUpRefreshControlIfNeeded];
    [(BrowserRootViewController *)self _updateTopScrollEdgeEffectStyle];
    [(BrowserRootViewController *)self _updateScrollPocketsAreHidden];
    [(BrowserRootViewController *)self _updateScrollPocketForCapsuleView];
    [(BrowserRootViewController *)self _updateScrollPocketForTopBackdrop];
    [(BrowserRootViewController *)self _updateScrollPocketForUnifiedBar];
    topEdgeEffect = [scrollView topEdgeEffect];
    [topEdgeEffect removeObserver:self forKeyPath:@"isHidden" context:kvoContext_0];

    topEdgeEffect2 = [(UIScrollView *)self->_scrollView topEdgeEffect];
    [topEdgeEffect2 addObserver:self forKeyPath:@"isHidden" options:0 context:kvoContext_0];

    viewCopy = v13;
  }
}

- (void)setBookmarksBar:(id)bar
{
  barCopy = bar;
  if (self->_bookmarksBar != barCopy)
  {
    v11 = barCopy;
    view = [(BrowserRootViewController *)self view];
    [view setNeedsLayout];

    mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
    showRectangularTabsInSeparateBar = [mEMORY[0x277D28C70] showRectangularTabsInSeparateBar];

    if (showRectangularTabsInSeparateBar)
    {
      if (self->_bookmarksBar)
      {
        [(BarContainerView *)self->_topAuxiliaryBarsContainerView unregisterBarView:?];
        bookmarksBar = self->_bookmarksBar;
      }

      else
      {
        bookmarksBar = 0;
      }

      [(BookmarksBarView *)bookmarksBar removeFromSuperview];
      objc_storeStrong(&self->_bookmarksBar, bar);
      barCopy = v11;
      if (!self->_bookmarksBar)
      {
        goto LABEL_10;
      }

      [(BarContainerView *)self->_topAuxiliaryBarsContainerView registerBarView:?];
      [(BarContainerView *)self->_topAuxiliaryBarsContainerView addSubview:self->_bookmarksBar];
      [(BrowserRootViewController *)self _updateTopBarStyles];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained updateDynamicBarGeometry];
    }

    else
    {
      objc_storeStrong(&self->_bookmarksBar, bar);
      [(TabBarManager *)self->_tabBarManager setBookmarksBar:v11];
      [(BrowserRootViewController *)self _updateTopBarStyles];
    }

    barCopy = v11;
  }

LABEL_10:
}

- (void)setTabBar:(id)bar
{
  barCopy = bar;
  if (self->_tabBar != barCopy)
  {
    v13 = barCopy;
    view = [(BrowserRootViewController *)self view];
    [view setNeedsLayout];

    if (self->_tabBar)
    {
      [(BarContainerView *)self->_topAuxiliaryBarsContainerView unregisterBarView:?];
      tabBar = self->_tabBar;
    }

    else
    {
      tabBar = 0;
    }

    [(TabBar *)tabBar removeFromSuperview];
    objc_storeStrong(&self->_tabBar, bar);
    v8 = self->_tabBar;
    tabBarClipperView = self->_tabBarClipperView;
    if (v8)
    {
      if (!tabBarClipperView)
      {
        v11 = objc_alloc_init(MEMORY[0x277D75D18]);
        v12 = self->_tabBarClipperView;
        self->_tabBarClipperView = v11;

        [(UIView *)self->_tabBarClipperView setClipsToBounds:1];
        [(BarContainerView *)self->_topAuxiliaryBarsContainerView addSubview:self->_tabBarClipperView];
        v8 = self->_tabBar;
      }

      [(BarContainerView *)self->_topAuxiliaryBarsContainerView registerBarView:v8];
      [(UIView *)self->_tabBarClipperView addSubview:self->_tabBar];
      [(BrowserRootViewController *)self updateTabHoverPreview];
      [(BrowserRootViewController *)self _updateTopBarStyles];
    }

    else
    {
      [(UIView *)tabBarClipperView removeFromSuperview];
      v10 = self->_tabBarClipperView;
      self->_tabBarClipperView = 0;
    }

    barCopy = v13;
  }
}

- (void)setTabThumbnailCollectionView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if (WeakRetained != obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = WeakRetained;
      [v5 willMoveToParentViewController:0];
      [v5 removeFromParentViewController];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contentContainerViewController = self->_contentContainerViewController;
      v7 = obj;
      [(UIViewController *)contentContainerViewController addChildViewController:v7];
      [v7 didMoveToParentViewController:self->_contentContainerViewController];
    }

    [(CapsuleNavigationBarViewController *)self->_capsuleViewController willTransitionFromTabView:WeakRetained toTabView:obj];
    objc_storeWeak(&self->_tabThumbnailCollectionView, obj);
    [(BrowserRootViewController *)self _layOutTabView];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = self->_configuration;
  if (configuration != configurationCopy)
  {
    v8 = configurationCopy;
    v7 = [(_SFBrowserConfiguration *)configuration isEqual:configurationCopy];
    configurationCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_configuration, configuration);
      [(BrowserRootViewController *)self _updateTopBarStyles];
      configurationCopy = v8;
    }
  }
}

- (void)setShowingTabBar:(BOOL)bar
{
  if (self->_showingTabBar != bar)
  {
    barCopy = bar;
    self->_showingTabBar = bar;
    standaloneTabBar = [(TabBarManager *)self->_tabBarManager standaloneTabBar];
    [standaloneTabBar setContentHidden:!barCopy];

    [(UnifiedBar *)self->_unifiedBar setNeedsLayout];
    view = [(BrowserRootViewController *)self view];
    [view setNeedsLayout];
  }
}

- (_SFNavigationBarCommon)primaryNavigationBar
{
  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    selectedItemNavigationBar = [(CapsuleNavigationBarViewController *)self->_capsuleViewController selectedItemNavigationBar];
  }

  else
  {
    unifiedBar = self->_unifiedBar;
    if (!unifiedBar)
    {
      unifiedBar = self->_navigationBar;
    }

    selectedItemNavigationBar = unifiedBar;
  }

  return selectedItemNavigationBar;
}

- (void)_setTopBackdropTheme:(id)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  themeCopy = theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_topBackdropTheme, theme);
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__BrowserRootViewController__setTopBackdropTheme_animated___block_invoke;
      v8[3] = &unk_2781D4D40;
      v8[4] = self;
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:50331650 animations:v8 completion:0];
    }

    else
    {
      [(BrowserRootViewController *)self _applyTopBackdropTheme];
      [(BrowserRootViewController *)self _applyStatusBarBackdropTheme];
    }
  }
}

uint64_t __59__BrowserRootViewController__setTopBackdropTheme_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _applyTopBackdropTheme];
  v2 = *(a1 + 32);

  return [v2 _applyStatusBarBackdropTheme];
}

- (void)_setTopBackdropUsesPlainTheme:(BOOL)theme
{
  if (self->_topBackdropUsesPlainTheme != theme)
  {
    v18 = v6;
    v19 = v5;
    v20 = v3;
    v21 = v4;
    self->_topBackdropUsesPlainTheme = theme;
    v8 = [(SFThemeColorEffectView *)self->_topBackdrop snapshotViewAfterScreenUpdates:0];
    [(SFThemeColorEffectView *)self->_topBackdrop addSubview:v8];
    v9 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__BrowserRootViewController__setTopBackdropUsesPlainTheme___block_invoke;
    v16[3] = &unk_2781D4D40;
    v17 = v8;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __59__BrowserRootViewController__setTopBackdropUsesPlainTheme___block_invoke_2;
    v14 = &unk_2781D4B18;
    v15 = v17;
    v10 = v17;
    [v9 animateWithDuration:50331648 delay:v16 options:&v11 animations:0.2 completion:0.0];
    [(BrowserRootViewController *)self _updateTopBarStylesAnimated:0, v11, v12, v13, v14];
  }
}

- (int64_t)bookmarksPresentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  v7 = [WeakRetained bookmarksPresentationStyleForViewOfSize:{v5, v6}];

  return v7;
}

- (void)setShowingSidebar:(BOOL)sidebar completion:(id)completion
{
  sidebarCopy = sidebar;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_showingSidebar == sidebarCopy)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    view = [(BrowserRootViewController *)self view];
    [view layoutIfNeeded];

    [(BrowserRootViewController *)self willChangeValueForKey:@"showingSidebar"];
    self->_showingSidebar = sidebarCopy;
    [(BrowserRootViewController *)self didChangeValueForKey:@"showingSidebar"];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained browserViewController:self didChangeShowingSidebar:self->_showingSidebar];
    }

    [(BrowserRootViewController *)self _updateSidebarStyle];
    if (!self->_sidebarViewController && self->_showingSidebar)
    {
      v10 = objc_alloc_init(SidebarViewController);
      sidebarViewController = self->_sidebarViewController;
      self->_sidebarViewController = v10;

      view2 = [(SidebarViewController *)self->_sidebarViewController view];
      _sf_usesLeftToRightLayout = [view2 _sf_usesLeftToRightLayout];

      view3 = [(BrowserRootViewController *)self view];
      [view3 safeAreaInsets];
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if (_sf_usesLeftToRightLayout)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0.0;
      }

      if (_sf_usesLeftToRightLayout)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20;
      }

      [(SidebarViewController *)self->_sidebarViewController setAdditionalSafeAreaInsets:v16, v21, 0.0, v22];
      v23 = objc_loadWeakRetained(&self->_sidebarUIProxyDelegate);
      if (objc_opt_respondsToSelector())
      {
        v24 = [v23 sidebarContentViewControllerForSidebarUIProxy:self];
        [(SidebarViewController *)self->_sidebarViewController setContentViewController:v24];
      }
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke;
    v50[3] = &unk_2781D4D40;
    v50[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v50];
    [(BrowserRootViewController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    view4 = [(CatalogViewController *)self->_catalogViewController view];
    [view4 layoutIfNeeded];

    [(BrowserRootViewController *)self _layOutFloatingSidebarButtonForSidebarShowing:!sidebarCopy];
    if (self->_sidebarStyle == 1)
    {
      [(UnifiedBar *)self->_unifiedBar layoutIfNeeded];
    }

    v26 = dispatch_group_create();
    ++self->_sidebarControllerActiveAnimationCount;
    areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
    [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:areAnimationsEnabled];
    view5 = [(BrowserRootViewController *)self view];
    [view5 setNeedsLayout];

    view6 = [(SidebarViewController *)self->_sidebarViewController view];
    v37 = WeakRetained;
    if ([(BrowserRootViewController *)self isPerformingSizeTransition])
    {
      v30 = 0;
    }

    else
    {
      window = [(_SFWebView *)self->_webView window];
      v30 = window != 0;
    }

    dispatch_group_enter(v26);
    v32 = MEMORY[0x277D75D18];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_2;
    v48[3] = &unk_2781D51B8;
    v48[4] = self;
    v49 = v30;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_4;
    v46[3] = &unk_2781D76C0;
    v46[4] = self;
    v33 = v26;
    v47 = v33;
    [v32 sf_animate:areAnimationsEnabled usingDefaultMotionWithOptions:4 animations:v48 completion:v46];
    dispatch_group_enter(v33);
    v34 = MEMORY[0x277D75D18];
    v43 = v33;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_5;
    v44[3] = &unk_2781D51B8;
    v44[4] = self;
    v45 = sidebarCopy;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_6;
    v42[3] = &unk_2781D4B18;
    v35 = v33;
    [v34 sf_animate:areAnimationsEnabled usingDefaultMotionWithOptions:6 animations:v44 completion:v42];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_7;
    block[3] = &unk_2781D76E8;
    v41 = v30;
    block[4] = self;
    v39 = view6;
    v40 = v7;
    v36 = view6;
    dispatch_group_notify(v35, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1704) beginAnimatedSizeTransition];
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v3 = v2[208];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_3;
    v6[3] = &unk_2781D4D40;
    v6[4] = v2;
    [v3 _beginAnimatedResizeWithUpdates:v6];
  }

  else
  {
    v4 = [v2 view];
    [v4 layoutIfNeeded];
  }

  return [Application postTestNotificationName:@"SidebarWillPresentNotification" object:*(a1 + 32)];
}

void __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1688) ignorePreviousLayoutSize];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1704) endAnimatedSizeTransition];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __58__BrowserRootViewController_setShowingSidebar_completion___block_invoke_7(uint64_t a1)
{
  --*(*(a1 + 32) + 1360);
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 1664) _endAnimatedResize];
  }

  [*(a1 + 32) _destroySidebarContentDimmingViewIfNeeded];
  [Application postTestNotificationName:@"SidebarDidPresentNotification" object:*(a1 + 32)];
  v2 = *(a1 + 32);
  if (!v2[170])
  {
    [v2 _setShowingFloatingSidebarButton:0];
    v3 = *(a1 + 32);
    if (!*(v3 + 1360) && (*(v3 + 1456) & 1) == 0)
    {
      [*(v3 + 1480) willMoveToParentViewController:0];
      [*(a1 + 40) removeFromSuperview];
      [*(*(a1 + 32) + 1480) removeFromParentViewController];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (UIBarButtonItem)leadingSidebarButtonItem
{
  if ([(BrowserRootViewController *)self sidebarStyle])
  {
    sidebarButtonItem = 0;
  }

  else
  {
    sidebarButtonItem = [(BrowserRootViewController *)self sidebarButtonItem];
  }

  return sidebarButtonItem;
}

- (void)setNeedsScrollToTopView:(BOOL)view
{
  if (self->_needsScrollToTopView != view)
  {
    self->_needsScrollToTopView = view;
    if (view)
    {
      objc_initWeak(&location, self);
      v4 = [ScrollToTopView alloc];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__BrowserRootViewController_setNeedsScrollToTopView___block_invoke;
      v12[3] = &unk_2781D7710;
      objc_copyWeak(&v13, &location);
      v5 = [(ScrollToTopView *)v4 initWithTargetBlock:v12];
      scrollToTopView = self->_scrollToTopView;
      self->_scrollToTopView = v5;

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __53__BrowserRootViewController_setNeedsScrollToTopView___block_invoke_2;
      v10[3] = &unk_2781D5598;
      objc_copyWeak(&v11, &location);
      [(ScrollToTopView *)self->_scrollToTopView setShowBarsBlock:v10];
      view = [(BrowserRootViewController *)self view];
      [view addSubview:self->_scrollToTopView];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      [(ScrollToTopView *)self->_scrollToTopView removeFromSuperview];
      v8 = self->_scrollToTopView;
      self->_scrollToTopView = 0;
    }

    view2 = [(BrowserRootViewController *)self view];
    [view2 setNeedsLayout];
  }
}

id __53__BrowserRootViewController_setNeedsScrollToTopView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _continuousReadingViewController];
    v4 = [v3 interceptsScrollToTopTap];

    if (v4)
    {
      v5 = [v2 _continuousReadingViewController];
      v6 = [v5 view];
    }

    else
    {
      v6 = [v2 scrollView];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __53__BrowserRootViewController_setNeedsScrollToTopView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained dynamicBarAnimator];
    v3 = [v2 state];

    WeakRetained = v5;
    if (!v3)
    {
      v4 = [v5 browserController];
      [v4 showBars];

      WeakRetained = v5;
    }
  }
}

- (void)_prepareToShowSidebarViewControllerIfNeeded
{
  if (self->_showingSidebar)
  {
    parentViewController = [(SidebarViewController *)self->_sidebarViewController parentViewController];

    if (!parentViewController)
    {
      view = [(SidebarViewController *)self->_sidebarViewController view];
      [(UIViewController *)self->_contentContainerViewController addChildViewController:self->_sidebarViewController];
      v4 = +[FeatureManager sharedFeatureManager];
      isFloatingSidebarButtonEnabled = [v4 isFloatingSidebarButtonEnabled];

      contentContainerView = self->_contentContainerView;
      if (isFloatingSidebarButtonEnabled)
      {
        [(ViewWithCustomNextResponder *)contentContainerView insertSubview:view belowSubview:self->_floatingSidebarButton];
      }

      else
      {
        [(ViewWithCustomNextResponder *)contentContainerView addSubview:view];
      }

      [(SidebarViewController *)self->_sidebarViewController didMoveToParentViewController:self->_contentContainerViewController];
      [(BrowserRootViewController *)self _frameForSidebarWhenShowing:0];
      [view setFrame:?];
      [view layoutIfNeeded];
      [(SidebarContentDimmingView *)self->_sidebarContentDimmingView setPassthroughView:view];
    }
  }
}

- (void)setDocumentSafeAreaInsetsFrozen:(BOOL)frozen
{
  if (self->_documentSafeAreaInsetsFrozen != frozen)
  {
    frozenCopy = frozen;
    self->_documentSafeAreaInsetsFrozen = frozen;
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView _setSafeAreaInsetsFrozen:?];

    setSafeAreaInsetsFrozenRecursively(self, frozenCopy);
  }
}

- (void)addChildViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = BrowserRootViewController;
  controllerCopy = controller;
  [(BrowserRootViewController *)&v5 addChildViewController:controllerCopy];
  [controllerCopy _setIgnoresWrapperViewForContentOverlayInsets:{self->_documentSafeAreaInsetsFrozen, v5.receiver, v5.super_class}];
}

- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move
{
  moveCopy = move;
  v6.receiver = self;
  v6.super_class = BrowserRootViewController;
  controllerCopy = controller;
  [(BrowserRootViewController *)&v6 removeChildViewController:controllerCopy notifyDidMove:moveCopy];
  [controllerCopy _setIgnoresWrapperViewForContentOverlayInsets:{0, v6.receiver, v6.super_class}];
}

- (id)_multitaskingDragExclusionRects
{
  v48[1] = *MEMORY[0x277D85DE8];
  if (![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state])
  {
    goto LABEL_5;
  }

  v3 = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([v3 presentationState] == 1)
  {

LABEL_5:
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  presentationState = [v3 presentationState];

  if (presentationState == 2)
  {
    goto LABEL_5;
  }

  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    unifiedBar = self->_unifiedBar;
    [(UnifiedBar *)unifiedBar bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view = [(BrowserRootViewController *)self view];
    [(UnifiedBar *)unifiedBar convertRect:view toView:v9, v11, v13, v15];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v47[0] = v18;
    v47[1] = v20;
    v47[2] = v22;
    v47[3] = v24;
    v25 = [MEMORY[0x277CCAE60] valueWithBytes:v47 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v48[0] = v25;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = __60__BrowserRootViewController__multitaskingDragExclusionRects__block_invoke;
    v40 = &unk_2781D7738;
    v42 = &v43;
    v27 = array;
    v41 = v27;
    v28 = _Block_copy(&v37);
    v29 = [(BrowserRootViewController *)self view:v37];
    tabBar = self->_tabBar;
    if (tabBar && self->_showingTabBar)
    {
      [(TabBar *)self->_tabBar bounds];
      [(TabBar *)tabBar convertRect:v29 toView:?];
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v44[3] = CGRectGetMinY(v50);
      v28[2](v28, x, y, width, height);
    }

    [(_SFNavigationBar *)self->_navigationBar urlOutlineFrameRelativeToView:v29];
    (v28[2])(v28);
    if (!self->_toolbarPlacement && (![(_SFNavigationBar *)self->_navigationBar isExpanded]|| ![(_SFNavigationBar *)self->_navigationBar usesNarrowLayout]))
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      barManager = [WeakRetained barManager];

      [barManager frameForBarItem:3 inCoordinateSpace:v29];
      (v28[2])(v28);
      [barManager frameForBarItem:7 inCoordinateSpace:v29];
      (v28[2])(v28);
    }

    v5 = [v27 copy];

    _Block_object_dispose(&v43, 8);
  }

LABEL_6:

  return v5;
}

void __60__BrowserRootViewController__multitaskingDragExclusionRects__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MaxY = CGRectGetMaxY(*&a2);
  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (MaxY < v11)
  {
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    a5 = v11 - CGRectGetMinY(v15);
  }

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CCAE60] valueWithCGRect:{a2, a3, a4, a5}];
  [v12 addObject:v13];
}

- (CGSize)_webViewMinimumLayoutSizeWithBarVisibilitiesIgnored:(BOOL)ignored
{
  ignoredCopy = ignored;
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self maximumObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:ignoredCopy ignoreBarsMinimized:?];
  [(BrowserRootViewController *)self _totalAdditionalContentHeightForBanners];
  [(BrowserRootViewController *)self webViewEffectiveSafeAreaInsets];
  UIEdgeInsetsMax();
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
  UIEdgeInsetsMax();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v14 = v13 - (v8 + v12);
  v16 = v15 - (v6 + v10);
  result.height = v16;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = BrowserRootViewController;
  changeCopy = change;
  [(BrowserRootViewController *)&v8 traitCollectionDidChange:changeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewController:self traitCollectionDidChange:{changeCopy, v8.receiver, v8.super_class}];

  traitCollection = [(BrowserRootViewController *)self traitCollection];
  v7 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v7)
  {
    [(BrowserRootViewController *)self safari_updateApplicationBackgroundStyle];
  }
}

- (void)setNeedsPreferredStatusBarUpdateAfterCommitAnimated:(BOOL)animated
{
  if (!self->_statusBarStyleUpdateQueued)
  {
    self->_statusBarStyleUpdateQueued = 1;
    v3 = *MEMORY[0x277D76620];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __81__BrowserRootViewController_setNeedsPreferredStatusBarUpdateAfterCommitAnimated___block_invoke;
    v4[3] = &unk_2781D51B8;
    v4[4] = self;
    animatedCopy = animated;
    [v3 _performBlockAfterCATransactionCommits:v4];
  }
}

void __81__BrowserRootViewController_setNeedsPreferredStatusBarUpdateAfterCommitAnimated___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1208) = 0;
  v1 = *(a1 + 40);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __81__BrowserRootViewController_setNeedsPreferredStatusBarUpdateAfterCommitAnimated___block_invoke_2;
  v2[3] = &unk_2781D4D40;
  v2[4] = *(a1 + 32);
  [(UIView *)0.25 safari_animate:v1 withDuration:v2 animations:?];
}

- (int64_t)preferredStatusBarStyle
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v4 = capsuleCollectionView;
  if (capsuleCollectionView)
  {
    v5 = [capsuleCollectionView selectionGestureAxis] != 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([v6 presentationState] != 1)
  {
    v5 &= [v6 presentationState] == 2;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  if ([activeTabDocument isShowingSystemStartPage])
  {
  }

  else
  {
    _shouldShowThemeColorInTopBar = [(BrowserRootViewController *)self _shouldShowThemeColorInTopBar];

    if (!_shouldShowThemeColorInTopBar)
    {
      goto LABEL_7;
    }
  }

  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    barTheme = [(SFUnifiedBar *)self->_unifiedBar barTheme];
    [barTheme userInterfaceStyle];
    v7 = SFContrastingStatusBarStyleForInterfaceStyle();

    goto LABEL_15;
  }

  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    [(SFUnifiedBarTheme *)self->_topBackdropTheme userInterfaceStyle];
    v7 = SFContrastingStatusBarStyleForInterfaceStyle();
    goto LABEL_15;
  }

LABEL_7:
  v7 = 0;
LABEL_15:

  return v7;
}

- (UIEdgeInsets)_avoidanceInsets
{
  view = [(BrowserRootViewController *)self view];
  v4 = MEMORY[0x277D768C8];
  topBar = [(BrowserRootViewController *)self topBar];
  v6 = topBar;
  if (topBar)
  {
    [topBar frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    view2 = [(BrowserRootViewController *)self view];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:view2 toCoordinateSpace:v8, v10, v12, v14];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v53.origin.x = v17;
    v53.origin.y = v19;
    v53.size.width = v21;
    v53.size.height = v23;
    MaxY = CGRectGetMaxY(v53);
  }

  else
  {
    MaxY = *v4;
  }

  v25 = v4[1];
  v26 = v4[3];
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView obscuredInsetsForState:0];
  v29 = v28;

  superview = [(BrowserToolbar *)self->_bottomToolbar superview];

  if (superview)
  {
    [(BrowserToolbar *)self->_bottomToolbar frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    superview2 = [(BrowserToolbar *)self->_bottomToolbar superview];
    [view convertRect:superview2 fromView:{v32, v34, v36, v38}];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    [view bounds];
    v48 = CGRectGetMaxY(v54);
    v55.origin.x = v41;
    v55.origin.y = v43;
    v55.size.width = v45;
    v55.size.height = v47;
    v29 = fmax(v48 - CGRectGetMinY(v55), 0.0);
  }

  v49 = MaxY;
  v50 = v25;
  v51 = v29;
  v52 = v26;
  result.right = v52;
  result.bottom = v51;
  result.left = v50;
  result.top = v49;
  return result;
}

- (void)_updateAllowsHidingHomeIndicatorMinimized:(BOOL)minimized
{
  minimizedCopy = minimized;
  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    layoutStyle = [capsuleCollectionView layoutStyle];

    v8 = layoutStyle == 2 && minimizedCopy && [(BrowserRootViewController *)self _interfaceFillsScreen];

    [(BrowserRootViewController *)self setBarStateAllowsHidingHomeIndicator:v8];
  }
}

- (void)setBarStateAllowsHidingHomeIndicator:(BOOL)indicator
{
  if (self->_barStateAllowsHidingHomeIndicator != indicator)
  {
    self->_barStateAllowsHidingHomeIndicator = indicator;
    [(BrowserRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  }
}

- (void)updateThemeColorIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(BrowserRootViewController *)self usingUnifiedBar]|| [(BrowserRootViewController *)self usingLoweredBar])
  {

    [(BrowserRootViewController *)self _updateTopBarStylesAnimated:animatedCopy];
  }
}

- (void)setInYttriumState:(BOOL)state
{
  stateCopy = state;
  if ([MEMORY[0x277D49A08] isWAPEnabled] && self->_inYttriumState != stateCopy)
  {
    self->_inYttriumState = stateCopy;
    _activeTabDocumentView = [(BrowserRootViewController *)self _activeTabDocumentView];
    [_activeTabDocumentView setInteractionHintPresented:stateCopy ^ 1 animated:1];

    if ([(BrowserRootViewController *)self _shouldInterceptBottomGesture])
    {
      _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
      view = [_continuousReadingViewController view];

      [view bounds];
      Height = CGRectGetHeight(v13);
      [view bounds];
      v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, Height + -44.0, CGRectGetWidth(v14), 44.0}];
      bottomContentGestureBlocker = self->_bottomContentGestureBlocker;
      self->_bottomContentGestureBlocker = v9;

      [(UIView *)self->_bottomContentGestureBlocker setAutoresizingMask:8];
      [view addSubview:self->_bottomContentGestureBlocker];
    }

    else
    {
      [(UIView *)self->_bottomContentGestureBlocker removeFromSuperview];
      view = self->_bottomContentGestureBlocker;
      self->_bottomContentGestureBlocker = 0;
    }

    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    [capsuleCollectionView setForceHidden:stateCopy];

    [(CapsuleNavigationBarViewController *)self->_capsuleViewController transitionToState:stateCopy animated:1 completionHandler:0];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:stateCopy ^ 1 animated:1];
    [(BrowserRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    [(BrowserRootViewController *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(BrowserRootViewController *)self _updateTopBarStyles];

    [(BrowserRootViewController *)self _updateScrollToTopOverride];
  }
}

- (void)setInYttriumMode:(BOOL)mode
{
  modeCopy = mode;
  if ([MEMORY[0x277D49A08] isWAPEnabled] && self->_inYttriumMode != modeCopy)
  {
    self->_inYttriumMode = modeCopy;
    [(UITapGestureRecognizer *)self->_showBarsFromBottomBarRecognizer setEnabled:modeCopy ^ 1];
    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator setIgnoresDragging:modeCopy];
    _activeTabDocumentView = [(BrowserRootViewController *)self _activeTabDocumentView];
    [_activeTabDocumentView setShowsInteractionHint:modeCopy];

    if (!modeCopy)
    {
      _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
      view = [_continuousReadingViewController view];
      [view removeGestureRecognizer:self->_enterYttriumStateRecognizer];

      enterYttriumStateRecognizer = self->_enterYttriumStateRecognizer;
      self->_enterYttriumStateRecognizer = 0;

      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView removeGestureRecognizer:self->_exitYttriumStateRecognizer];
      exitYttriumStateRecognizer = self->_exitYttriumStateRecognizer;
      self->_exitYttriumStateRecognizer = 0;

      [(BrowserRootViewController *)self setInYttriumState:0];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277D28E50]) initWithTarget:self action:sel__enterYttriumStateGestureRecognized_];
      v7 = self->_enterYttriumStateRecognizer;
      self->_enterYttriumStateRecognizer = v6;

      [(SFTouchDownGestureRecognizer *)self->_enterYttriumStateRecognizer setDelegate:self];
      _continuousReadingViewController2 = [(BrowserRootViewController *)self _continuousReadingViewController];
      view2 = [_continuousReadingViewController2 view];
      [view2 addGestureRecognizer:self->_enterYttriumStateRecognizer];

      v10 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__exitYttriumStateGestureRecognized_];
      v11 = self->_exitYttriumStateRecognizer;
      self->_exitYttriumStateRecognizer = v10;

      [(UIPanGestureRecognizer *)self->_exitYttriumStateRecognizer _setCanPanHorizontally:0];
      [(UIPanGestureRecognizer *)self->_exitYttriumStateRecognizer setDelegate:self];
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addGestureRecognizer:self->_exitYttriumStateRecognizer];
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [(BrowserRootViewController *)self updateCapsuleMinimizationStyle];
    [(BrowserRootViewController *)self updateTabViewPinchRecognizer];
    [WeakRetained updatePullToRefreshIsEnabled];
    [WeakRetained updateDynamicBarGeometry];
    mEMORY[0x277D28BF0] = [MEMORY[0x277D28BF0] sharedProvider];
    [mEMORY[0x277D28BF0] clearCachedMenuForPersona:0];
  }
}

- (void)_updateTopBarStylesAnimated:(BOOL)animated
{
  if (self->_updatingTopBarStyles)
  {
    return;
  }

  animatedCopy = animated;
  self->_updatingTopBarStyles = 1;
  v4 = objc_alloc_init(MEMORY[0x277D49B60]);
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __57__BrowserRootViewController__updateTopBarStylesAnimated___block_invoke;
  v80[3] = &unk_2781D4D40;
  v80[4] = self;
  [v4 setHandler:v80];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  [activeTabDocument updateThemeColorAndUnderPageBackground:{-[BrowserRootViewController _navigationBarIsExpandedOnTop](self, "_navigationBarIsExpandedOnTop") ^ 1}];
  v76 = activeTabDocument;
  themeColor = [activeTabDocument themeColor];
  traitOverrides = [(BrowserRootViewController *)self traitOverrides];
  [traitOverrides setObject:themeColor forTrait:objc_opt_class()];

  _sampledTopFixedPositionContentColor = [(_SFWebView *)self->_webView _sampledTopFixedPositionContentColor];
  v11 = _sampledTopFixedPositionContentColor;
  if (_sampledTopFixedPositionContentColor)
  {
    underPageBackgroundColor = _sampledTopFixedPositionContentColor;
  }

  else
  {
    underPageBackgroundColor = [(_SFWebView *)self->_webView underPageBackgroundColor];
  }

  v13 = underPageBackgroundColor;

  if (self->_unifiedBar)
  {
    v14 = MEMORY[0x277D28EF8];
    traitCollection = [(BrowserRootViewController *)self traitCollection];
    v16 = [v14 shouldDisableBackgroundColorInBar:v13 traitCollection:traitCollection];
  }

  else
  {
    v16 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [(_SFWebView *)self->_webView _setShouldSuppressTopColorExtensionView:v16];
  }

  v78 = WeakRetained;
  v74 = v13;
  if (v16)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    traitCollection2 = [(BrowserRootViewController *)self traitCollection];
    v19 = [systemBackgroundColor resolvedColorWithTraitCollection:traitCollection2];
  }

  else
  {
    v19 = 0;
  }

  [(UIScrollView *)self->_scrollView _setPocketColor:v19 forEdge:1];
  v20 = [MEMORY[0x277D28EF8] themeWithBarTintStyle:{-[_SFBrowserConfiguration barTintStyle](self->_configuration, "barTintStyle")}];
  [(_SFNavigationBar *)self->_navigationBar setTheme:v20];
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v77 = v20;
  [capsuleCollectionView setTheme:v20];
  if (self->_topBackdropUsesPlainTheme && [capsuleCollectionView layoutStyle] == 2)
  {
    isLockdownModeEnabledForSafari = 1;
  }

  else
  {
    isLockdownModeEnabledForSafari = [MEMORY[0x277D4A888] isLockdownModeEnabledForSafari];
  }

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v24 = [safari_browserDefaults BOOLForKey:*MEMORY[0x277D29000]];

  underPageBackgroundColor3 = 0;
  if ((v24 & 1) == 0 && (isLockdownModeEnabledForSafari & 1) == 0)
  {
    if ([capsuleCollectionView layoutStyle] == 2)
    {
      underPageBackgroundColor3 = themeColor;
    }

    else
    {
      underPageBackgroundColor2 = [(_SFWebView *)self->_webView underPageBackgroundColor];
      [(_SFWebView *)self->_webView setUnderPageBackgroundColor:0];
      underPageBackgroundColor3 = [(_SFWebView *)self->_webView underPageBackgroundColor];
      if ((WBSIsEqual() & 1) == 0)
      {
        [(_SFWebView *)self->_webView setUnderPageBackgroundColor:underPageBackgroundColor2];
      }
    }
  }

  v73 = v19;
  v75 = themeColor;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [capsuleCollectionView setMinimizedTheme:v77];
  }

  else
  {
    v26 = [MEMORY[0x277D28E98] themeWithBarTintStyle:-[_SFBrowserConfiguration barTintStyle](self->_configuration preferredBarTintColor:"barTintStyle") controlsTintColor:{underPageBackgroundColor3, 0}];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Safari.BackgroundColorBackdrop.%p", self];
    [v26 setBackdropGroupName:v27];

    [capsuleCollectionView setMinimizedTheme:v26];
  }

  if (-[BrowserRootViewController _showsTopBackdrop](self, "_showsTopBackdrop") && ([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    if ([(BrowserRootViewController *)self _shouldShowThemeColorInTopBar])
    {
      v28 = themeColor;
      if (self->_topBackdropUsesPlainTheme)
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v30 = 0;
    }

    else
    {
      v30 = [MEMORY[0x277D28E98] themeWithBarTintStyle:-[_SFBrowserConfiguration barTintStyle](self->_configuration preferredBarTintColor:"barTintStyle") controlsTintColor:{v29, 0}];
    }

    if (self->_topBackdropUsesPlainTheme)
    {
      _plainTopBackdropGroupName = [(BrowserRootViewController *)self _plainTopBackdropGroupName];
    }

    else
    {
      v32 = MEMORY[0x277CCACA8];
      v33 = WBSIsEqual();
      v34 = @"Theme";
      if (v33)
      {
        v34 = @"Background";
      }

      _plainTopBackdropGroupName = [v32 stringWithFormat:@"Safari.Top%@ColorBackdrop.%p", v34, self];
    }

    v35 = _plainTopBackdropGroupName;
    [v30 setBackdropGroupName:_plainTopBackdropGroupName];

    if ([(BrowserRootViewController *)self _navigationBarIsExpandedOnTop])
    {
      v36 = [MEMORY[0x277D75210] effectWithStyle:10];
      [v30 setOverrideBackdropEffect:v36];
    }

    userInterfaceStyle = [v30 userInterfaceStyle];
    if (userInterfaceStyle != [(SFUnifiedBarTheme *)self->_topBackdropTheme userInterfaceStyle])
    {
      [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:animatedCopy];
    }

    [(BrowserRootViewController *)self _setTopBackdropTheme:v30 animated:animatedCopy];
    [capsuleCollectionView obscuredInsets];
    v39 = v38;
    [(SFThemeColorEffectView *)self->_topBackdrop frame];
    if (v39 != v40)
    {
      [(BrowserRootViewController *)self _layOutTopBackdrop];
    }
  }

  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    barTintStyle = [(_SFBrowserConfiguration *)self->_configuration barTintStyle];
    if ([(BrowserRootViewController *)self _shouldShowThemeColorInTopBar])
    {
      tabController2 = [v78 tabController];
      activeTabDocument2 = [tabController2 activeTabDocument];
      themeColor2 = [activeTabDocument2 themeColor];
    }

    else
    {
      themeColor2 = 0;
    }

    overrideBarTintStyleForUnifiedBar = [v78 overrideBarTintStyleForUnifiedBar];
    v71 = capsuleCollectionView;
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      if ([v76 isShowingSystemStartPage])
      {
        if ([(BrowserRootViewController *)self _shouldOverridePocketColorOnStartPageDueToWallpaperStyle:overrideBarTintStyleForUnifiedBar])
        {
          systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
        }

        else
        {
          systemBackgroundColor2 = 0;
          if (overrideBarTintStyleForUnifiedBar)
          {
            barTintStyle = overrideBarTintStyleForUnifiedBar;
          }
        }

        if (enableUnifiedBarUserInterfaceStyleOverride_onceToken != -1)
        {
          [BrowserRootViewController _updateTopBarStylesAnimated:];
        }

        if (enableUnifiedBarUserInterfaceStyleOverride_enableUnifiedBarUserInterfaceStyleOverride == 1)
        {
          systemBackgroundColor3 = [MEMORY[0x277D75348] systemBackgroundColor];
          v55 = MEMORY[0x277D75C80];
          if (_SFIsDarkTintStyle())
          {
            v56 = 2;
          }

          else
          {
            v56 = 1;
          }

          v57 = [v55 traitCollectionWithUserInterfaceStyle:v56];
          v48 = [systemBackgroundColor3 resolvedColorWithTraitCollection:v57];

          goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (enableUnifiedBarUserInterfaceStyleOverride_onceToken != -1)
      {
        [BrowserRootViewController _updateTopBarStylesAnimated:];
      }

      if (enableUnifiedBarUserInterfaceStyleOverride_enableUnifiedBarUserInterfaceStyleOverride == 1)
      {
        v49 = v74;
        if (v19)
        {
          v49 = v19;
        }

        v48 = v49;

LABEL_70:
        systemBackgroundColor2 = 0;
LABEL_89:
        v50 = 0;
        v51 = 0;
        overrideBarTintStyleForUnifiedBar = barTintStyle;
        goto LABEL_90;
      }
    }

    else
    {
      v48 = themeColor2;
      if (overrideBarTintStyleForUnifiedBar)
      {
        if (_SFIsDarkTintStyle())
        {
          [MEMORY[0x277D75348] whiteColor];
        }

        else
        {
          [MEMORY[0x277D75348] blackColor];
        }
        v50 = ;
        v52 = MEMORY[0x277D75210];
        if (_SFIsDarkTintStyle())
        {
          v53 = 17;
        }

        else
        {
          v53 = 12;
        }

        v51 = [v52 effectWithStyle:v53];
        systemBackgroundColor2 = 0;
LABEL_90:
        v58 = v48;
        v59 = [MEMORY[0x277D28E98] themeWithBarTintStyle:overrideBarTintStyleForUnifiedBar preferredBarTintColor:v48 controlsTintColor:v50];
        if ((_SFIsDarkTintStyle() & 1) != 0 || [(TabBarManager *)self->_tabBarManager displayMode]!= 2)
        {
          v60 = v4;
          [v59 setAppliesDarkeningOverlay:0];
        }

        else
        {
          v60 = v4;
          mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
          [v59 setAppliesDarkeningOverlay:{objc_msgSend(mEMORY[0x277D28C70], "showRectangularTabsInSeparateBar") ^ 1}];
        }

        v62 = _SFBackdropGroupNameForOwner();
        [v59 setBackdropGroupName:v62];

        [v59 setOverrideBackdropEffect:v51];
        userInterfaceStyle2 = [v59 userInterfaceStyle];
        barTheme = [(SFUnifiedBar *)self->_unifiedBar barTheme];
        userInterfaceStyle3 = [barTheme userInterfaceStyle];

        if (userInterfaceStyle2 != userInterfaceStyle3)
        {
          [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:animatedCopy];
        }

        [(SFUnifiedBar *)self->_unifiedBar setBarTheme:v59 animated:animatedCopy];
        [(BrowserRootViewController *)self _applyStatusBarBackdropTheme];

        v4 = v60;
        v46 = v78;
        capsuleCollectionView = v71;
        goto LABEL_97;
      }

      if (![MEMORY[0x277D4A868] shouldIgnoreThemeColorForContrastWithActiveTab:themeColor2 privateBrowsingEnabled:_SFIsPrivateTintStyle()])
      {
        goto LABEL_70;
      }

      if (_SFIsPrivateTintStyle())
      {
        overrideBarTintStyleForUnifiedBar = _SFDarkTintStyleForStyle();
        systemBackgroundColor2 = 0;
        v48 = 0;
        v50 = 0;
        v51 = 0;
        goto LABEL_90;
      }
    }

    systemBackgroundColor2 = 0;
LABEL_88:
    v48 = 0;
    goto LABEL_89;
  }

  systemBackgroundColor2 = 0;
  v46 = v78;
LABEL_97:
  [(CatalogViewController *)self->_catalogViewController setTopScrollEdgeEffectColor:systemBackgroundColor2];
  [(BrowserRootViewController *)self _updateBannerTheme];
  if (self->_tabBar)
  {
    [(TabBar *)self->_tabBar setTintStyle:[(_SFBrowserConfiguration *)self->_configuration barTintStyle]];
  }

  if (self->_bookmarksBar)
  {
    barTheme2 = [(SFUnifiedBar *)self->_unifiedBar barTheme];
    preferredBarTintColor = [barTheme2 preferredBarTintColor];
    [(BookmarksBarView *)self->_bookmarksBar setThemeColor:preferredBarTintColor];

    barTheme3 = [(SFUnifiedBar *)self->_unifiedBar barTheme];
    titleTheme = [barTheme3 titleTheme];
    primaryTextColor = [titleTheme primaryTextColor];
    [(BookmarksBarView *)self->_bookmarksBar setTintColor:primaryTextColor];
  }

  [(BrowserRootViewController *)self _updateRefreshControlStyle];
}

- (BOOL)_shouldOverridePocketColorOnStartPageDueToWallpaperStyle:(int64_t)style
{
  v3 = 0;
  if (style && self->_unifiedBar)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    if ([safari_browserDefaults BOOLForKey:*MEMORY[0x277D29000]])
    {
LABEL_10:
      v3 = 1;
LABEL_12:

      return v3;
    }

    traitCollection = [(BrowserRootViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v8 = _SFIsDarkTintStyle();
    if (userInterfaceStyle != 2 || (v8 & 1) != 0)
    {
      if (((userInterfaceStyle != 2) & v8) != 1)
      {
        goto LABEL_11;
      }

      v9 = MEMORY[0x277D29008];
    }

    else
    {
      v9 = MEMORY[0x277D29010];
    }

    if ([safari_browserDefaults BOOLForKey:*v9])
    {
      goto LABEL_10;
    }

LABEL_11:
    v3 = 0;
    goto LABEL_12;
  }

  return v3;
}

- (void)_updateThemeForBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  if ([bannerCopy shouldUsePlainTheme])
  {
    v6 = [MEMORY[0x277D28BD0] themeWithBarTintStyle:{-[_SFBrowserConfiguration barTintStyle](self->_configuration, "barTintStyle")}];
    _plainTopBackdropGroupName = [(BrowserRootViewController *)self _plainTopBackdropGroupName];
    [(SFBannerTheme *)v6 setBackdropGroupName:_plainTopBackdropGroupName];
  }

  else
  {
    v6 = self->_bannerTheme;
  }

  [bannerCopy setTheme:v6 animated:animatedCopy];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(BrowserRootViewController *)self updateCapsuleLayoutStyle];
}

- (UIEdgeInsets)obscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space
{
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:27 forRect:space inCoordinateSpace:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)obscuredInsetsWithComponents:(unint64_t)components forRect:(CGRect)rect inCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  componentsCopy = components;
  spaceCopy = space;
  if (componentsCopy)
  {
    [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:spaceCopy];
    MaxY = CGRectGetMaxY(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    fmax(MaxY - CGRectGetMinY(v54), 0.0);
    if ([(BrowserRootViewController *)self _interfaceFillsScreen])
    {
      view = [(BrowserRootViewController *)self view];
      [view safeAreaInsets];
      [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v14];
    }
  }

  if ((componentsCopy & 2) != 0 && self->_toolbarPlacement == 1)
  {
    [(BrowserRootViewController *)self bottomToolbarFrameInCoordinateSpace:spaceCopy includeKeyboard:0];
    v15 = height;
    v17 = v16;
    recta = v19;
    v52 = v18;
    v21 = v20;
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = v15;
    CGRectGetMaxY(v55);
    v56.origin.x = v17;
    height = v15;
    v56.size.width = recta;
    v56.origin.y = v52;
    v56.size.height = v21;
    CGRectGetMinY(v56);
  }

  if (self->_showingSidebar && ((componentsCopy & 4) != 0 || (componentsCopy & 0xC) == 8 && !self->_sidebarStyle))
  {
    rect = height;
    v22 = [(BrowserRootViewController *)self _viewForConvertingToCoordinateSpace:spaceCopy, *&y, *&width];
    [(BrowserRootViewController *)self _frameForSidebarWhenShowing:self->_showingSidebar];
    [v22 convertRect:spaceCopy toCoordinateSpace:?];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    view2 = [(BrowserRootViewController *)self view];
    LODWORD(v22) = [view2 _sf_usesLeftToRightLayout];

    if (v22)
    {
      v57.origin.x = v24;
      v57.origin.y = v26;
      v57.size.width = v28;
      v57.size.height = v30;
      CGRectGetMaxX(v57);
      v32 = x;
      v33 = v48;
      v34 = v49;
      rectCopy = rect;
    }

    else
    {
      v58.origin.x = x;
      v58.origin.y = v48;
      v58.size.width = v49;
      v58.size.height = rect;
      CGRectGetMaxX(v58);
      v32 = v24;
      v33 = v26;
      v34 = v28;
      rectCopy = v30;
    }

    CGRectGetMinX(*&v32);
  }

  _SFRoundEdgeInsetsToPixels();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = v37;
  v45 = v39;
  v46 = v41;
  v47 = v43;
  result.right = v47;
  result.bottom = v46;
  result.left = v45;
  result.top = v44;
  return result;
}

- (UIEdgeInsets)_loweredBarObscuredInsets
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView obscuredInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)maximumObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space ignoreBarsMinimized:(BOOL)minimized
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  if ([(BrowserRootViewController *)self isInteractivelyMinimizingBars])
  {
    [(BrowserRootViewController *)self obscuredInsetsForRect:spaceCopy inCoordinateSpace:x, y, width, height];
LABEL_3:
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    goto LABEL_22;
  }

  if (!minimized && self->_keepBarsMinimized)
  {
    [(BrowserRootViewController *)self minimumObscuredInsetsForRect:spaceCopy inCoordinateSpace:x, y, width, height];
    goto LABEL_3;
  }

  if (self->_toolbarPlacement == 1)
  {
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    if (!CGRectIsEmpty(v43))
    {
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
      MaxY = CGRectGetMaxY(v44);
      [(BrowserRootViewController *)self maximumHeightObscuredByBottomToolbar];
      [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, MaxY - v21];
      v23 = v22;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      fmax(CGRectGetMaxY(v45) - v23, 0.0);
    }
  }

  inYttriumState = self->_inYttriumState;
  usingLoweredBar = [(BrowserRootViewController *)self usingLoweredBar];
  if (!inYttriumState)
  {
    if (usingLoweredBar)
    {
      [(BrowserRootViewController *)self _loweredBarMaximumObscuredInsets];
      goto LABEL_15;
    }

    view = [(BrowserRootViewController *)self view];
    [view safeAreaInsets];
    v31 = v30;
    [(BrowserRootViewController *)self navigationBarDesiredHeight];
    v27 = v31 + v32;
LABEL_18:

    goto LABEL_19;
  }

  if (!usingLoweredBar)
  {
    view = [(BrowserRootViewController *)self view];
    [view safeAreaInsets];
    v27 = v29;
    goto LABEL_18;
  }

  [(BrowserRootViewController *)self _loweredBarMinimumObscuredInsets];
LABEL_15:
  v27 = v26;
LABEL_19:
  [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v27];
  if ([(BrowserRootViewController *)self _interfaceFillsScreen])
  {
    view2 = [(BrowserRootViewController *)self view];
    [view2 safeAreaInsets];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v34];
  }

  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  CGRectGetMinY(v46);
  [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:spaceCopy inCoordinateSpace:x, y, width, height];
  UIEdgeInsetsAdd();
  v16 = v35;
  v17 = v36;
  v19 = v37;
  v18 = fmax(v38, 0.0);
LABEL_22:

  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  result.right = v42;
  result.bottom = v41;
  result.left = v40;
  result.top = v39;
  return result;
}

- (UIEdgeInsets)minimumObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  rect = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v9 = MEMORY[0x277D768C8];
  [(BrowserRootViewController *)self _loweredBarMinimumObscuredInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v49 = height;
  if (![(BrowserRootViewController *)self usingLoweredBar]|| v15 == 0.0)
  {
    v32 = 0.0;
    if (![(BrowserRootViewController *)self usingLoweredBar])
    {
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView safeAreaInsets];
      v32 = v33;
    }

    [(BrowserRootViewController *)self navigationBarSquishedHeight];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v32 + v34];
  }

  else
  {
    view = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
    [view bounds];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:v13 + v19, v11 + v20, v21 - (v13 + v17), v22 - (v11 + v15)];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v51.origin.x = x;
    v51.origin.y = rect;
    v51.size.width = width;
    v51.size.height = height;
    MaxY = CGRectGetMaxY(v51);
    v52.origin.x = v24;
    v52.origin.y = v26;
    v52.size.width = v28;
    v52.size.height = v30;
    fmax(MaxY - CGRectGetMaxY(v52), 0.0);
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v11];
  }

  if ([(BrowserRootViewController *)self _interfaceFillsScreen])
  {
    view2 = [(BrowserRootViewController *)self view];
    [view2 safeAreaInsets];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpacePoint:spaceCopy toCoordinateSpace:0.0, v36];
  }

  v53.origin.x = x;
  v53.origin.y = rect;
  v53.size.width = width;
  v53.size.height = v49;
  CGRectGetMinY(v53);
  [(BrowserRootViewController *)self sidebarObscuredInsetsForRect:spaceCopy inCoordinateSpace:x, rect, width, v49];
  UIEdgeInsetsAdd();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = v38;
  v46 = v40;
  v47 = v42;
  v48 = v44;
  result.right = v48;
  result.bottom = v47;
  result.left = v46;
  result.top = v45;
  return result;
}

- (UIEdgeInsets)sidebarObscuredInsetsForRect:(CGRect)rect inCoordinateSpace:(id)space
{
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:8 forRect:space inCoordinateSpace:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (double)keyboardInsetInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(BrowserRootViewController *)self view];
  [view bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v10 = CGRectGetHeight(v30) - self->_bottomBarKeyboardOffset;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  [spaceCopy convertRect:view fromCoordinateSpace:{0.0, v10, CGRectGetWidth(v31), self->_bottomBarKeyboardOffset}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [spaceCopy bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v32.origin.x = v20;
  v32.origin.y = v22;
  v32.size.width = v24;
  v32.size.height = v26;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v12;
  v33.origin.y = v14;
  v33.size.width = v16;
  v33.size.height = v18;
  v28 = fmax(MaxY - CGRectGetMinY(v33), 0.0);

  return v28;
}

id __62__BrowserRootViewController__registerLayoutStateUpdateHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    if (_SFDeviceIsPad())
    {
      v3 = stringForCurrentTabBarLayoutPreference();
      v4 = @"Tab Bar Layout";
    }

    else
    {
      v3 = stringForCurrentCapsuleLayoutPreference();
      v4 = @"Capsule Layout";
    }

    [v2 setObject:v3 forKeyedSubscript:v4];

    v5 = [v2 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)showDefaultBrowserSheetWithDisplayHandler:(id)handler
{
  handlerCopy = handler;
  if (-[BrowserRootViewController isShowingDefaultBrowserSheet](self, "isShowingDefaultBrowserSheet") || (-[BrowserRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CDB6E8]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__BrowserRootViewController_showDefaultBrowserSheetWithDisplayHandler___block_invoke;
    v11[3] = &unk_2781D54A8;
    v11[4] = self;
    v12 = handlerCopy;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__BrowserRootViewController_showDefaultBrowserSheetWithDisplayHandler___block_invoke_2;
    v10[3] = &unk_2781D7788;
    v10[4] = self;
    v8 = [v7 initWithViewDidBecomeReady:v11 completion:v10];
    defaultBrowserViewController = self->_defaultBrowserViewController;
    self->_defaultBrowserViewController = v8;
  }
}

uint64_t __71__BrowserRootViewController_showDefaultBrowserSheetWithDisplayHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 _showWelcomeBrowsingExplanationSheet];
  }

  else
  {
    [v3 dismissDefaultBrowserSheet];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __71__BrowserRootViewController_showDefaultBrowserSheetWithDisplayHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) dismissDefaultBrowserSheetForOtherWindows];
  if ((a2 - 1) <= 1)
  {
    v5 = *(a1 + 32);

    return [v5 dismissDefaultBrowserSheet];
  }

  return result;
}

- (void)dismissDefaultBrowserSheetForOtherWindows
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  browserWindowController = [WeakRetained browserWindowController];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  browserControllers = [browserWindowController browserControllers];
  v6 = [browserControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(browserControllers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        rootViewController = [v10 rootViewController];

        if (rootViewController != self)
        {
          rootViewController2 = [v10 rootViewController];
          [rootViewController2 dismissDefaultBrowserSheet];
        }
      }

      v7 = [browserControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)dismissDefaultBrowserSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultBrowserSheet);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  objc_storeWeak(&self->_defaultBrowserSheet, 0);
  defaultBrowserViewController = self->_defaultBrowserViewController;
  self->_defaultBrowserViewController = 0;
}

- (void)showLockedPrivateBrowsingView
{
  if (![(BrowserRootViewController *)self isShowingLockedPrivateBrowsingView])
  {
    v3 = self->_tabSwitcherViewController;
    if ([(TabSwitcherViewController *)v3 presentationState]== 1)
    {
    }

    else
    {
      presentationState = [(TabSwitcherViewController *)v3 presentationState];

      if (presentationState != 2)
      {
        [(TabSwitcherViewController *)self->_tabSwitcherViewController setDismissesOnUnlock:1];
      }
    }

    tabSwitcherViewController = self->_tabSwitcherViewController;

    [(TabSwitcherViewController *)tabSwitcherViewController presentAnimated:0];
  }
}

- (void)hideLockedPrivateBrowsingView
{
  if ([(BrowserRootViewController *)self isShowingLockedPrivateBrowsingView])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    if (-[TabSwitcherViewController dismissesOnUnlock](self->_tabSwitcherViewController, "dismissesOnUnlock") && [WeakRetained isPrivateBrowsingEnabled])
    {
      tabSwitcherViewController = self->_tabSwitcherViewController;
      scene = [WeakRetained scene];
      -[TabSwitcherViewController dismissForUnlockingAnimated:](tabSwitcherViewController, "dismissForUnlockingAnimated:", [scene activationState] < 2);
    }
  }
}

- (BOOL)isShowingLockedPrivateBrowsingView
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabCollectionViewProvider = [WeakRetained tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  v5 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  return v5;
}

- (void)showWhatsNewInPrivateBrowsingSheet
{
  if (![(BrowserRootViewController *)self isShowingPrivateBrowsingExplanationSheet])
  {
    view = [(BrowserRootViewController *)self view];
    window = [view window];

    if (window)
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      [safari_browserDefaults setInteger:1 forKey:*MEMORY[0x277D4A340]];

      _makeWhatsNewInPrivateBrowsingViewController = [(BrowserRootViewController *)self _makeWhatsNewInPrivateBrowsingViewController];
      [(BrowserRootViewController *)self _showPrivateBrowsingExplanationSheetWithViewController:_makeWhatsNewInPrivateBrowsingViewController];
    }
  }
}

- (id)_makeWhatsNewInPrivateBrowsingViewController
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(getOBWelcomeControllerClass());
  v3 = _WBSLocalizedString();
  v4 = [v2 initWithTitle:v3 detailText:0 icon:0];

  v5 = MEMORY[0x277D4A7D8];
  defaultConfiguration = [MEMORY[0x277D4A7D0] defaultConfiguration];
  v7 = [v5 itemsForConfiguration:defaultConfiguration];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        title = [v13 title];
        message = [v13 message];
        image = [v13 image];
        labelColor = [MEMORY[0x277D75348] labelColor];
        [v4 addBulletedListItemWithTitle:title description:message image:image tintColor:labelColor];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  boldButton = [getOBBoldTrayButtonClass() boldButton];
  [boldButton addTarget:self action:sel__pushTurnOnLockedPrivateBrowsingPromptIfNeeded];
  v19 = _WBSLocalizedString();
  [boldButton setTitle:v19 forState:0];

  buttonTray = [v4 buttonTray];
  [buttonTray addButton:boldButton];

  return v4;
}

- (void)showTurnOnLockedPrivateBrowsingSheet
{
  if (![(BrowserRootViewController *)self isShowingPrivateBrowsingExplanationSheet])
  {
    view = [(BrowserRootViewController *)self view];
    window = [view window];

    if (window)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setBool:1 forKey:*MEMORY[0x277D4A1B8]];

      _makeTurnOnLockedPrivateBrowsingViewController = [(BrowserRootViewController *)self _makeTurnOnLockedPrivateBrowsingViewController];
      [(BrowserRootViewController *)self _showPrivateBrowsingExplanationSheetWithViewController:_makeTurnOnLockedPrivateBrowsingViewController];
    }
  }
}

- (void)_pushTurnOnLockedPrivateBrowsingPromptIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  shouldShowTurnOnLockedPrivateBrowsingSheet = [WeakRetained shouldShowTurnOnLockedPrivateBrowsingSheet];

  if (shouldShowTurnOnLockedPrivateBrowsingSheet)
  {
    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [safari_browserDefaults setBool:1 forKey:*MEMORY[0x277D4A1B8]];

    v7 = objc_loadWeakRetained(&self->_privateBrowsingExplanationSheet);
    _makeTurnOnLockedPrivateBrowsingViewController = [(BrowserRootViewController *)self _makeTurnOnLockedPrivateBrowsingViewController];
    [v7 pushViewController:_makeTurnOnLockedPrivateBrowsingViewController animated:1];
  }

  else
  {

    [(BrowserRootViewController *)self _dismissPrivateBrowsingExplanationSheet];
  }
}

- (id)_makeTurnOnLockedPrivateBrowsingViewController
{
  v3 = MEMORY[0x277D4A7D8];
  defaultConfiguration = [MEMORY[0x277D4A7D0] defaultConfiguration];
  v5 = [v3 lockedPrivateBrowsingPromptForConfiguration:defaultConfiguration];

  v6 = objc_alloc(getOBWelcomeControllerClass());
  title = [v5 title];
  message = [v5 message];
  image = [v5 image];
  v10 = [v6 initWithTitle:title detailText:message icon:image];

  labelColor = [MEMORY[0x277D75348] labelColor];
  headerView = [v10 headerView];
  [headerView setTintColor:labelColor];

  boldButton = [getOBBoldTrayButtonClass() boldButton];
  [boldButton addTarget:self action:sel__turnOnLockedPrivateBrowsingFromSheet forControlEvents:0x2000];
  v14 = _WBSLocalizedString();
  [boldButton setTitle:v14 forState:0];

  buttonTray = [v10 buttonTray];
  [buttonTray addButton:boldButton];

  [boldButton setAccessibilityIdentifier:@"TurnOnButton"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v16 = getOBLinkTrayButtonClass_softClass;
  v28 = getOBLinkTrayButtonClass_softClass;
  if (!getOBLinkTrayButtonClass_softClass)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __getOBLinkTrayButtonClass_block_invoke;
    v24[3] = &unk_2781D4BD8;
    v24[4] = &v25;
    __getOBLinkTrayButtonClass_block_invoke(v24);
    v16 = v26[3];
  }

  v17 = v16;
  _Block_object_dispose(&v25, 8);
  linkButton = [v16 linkButton];
  [linkButton addTarget:self action:sel__dismissPrivateBrowsingExplanationSheet forControlEvents:0x2000];
  v19 = _WBSLocalizedString();
  [linkButton setTitle:v19 forState:0];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [linkButton setTintColor:labelColor2];

  buttonTray2 = [v10 buttonTray];
  [buttonTray2 addButton:linkButton];

  [linkButton setAccessibilityIdentifier:@"NotNowButton"];
  view = [v10 view];
  [view setAccessibilityIdentifier:@"TurnOnLockedPrivateBrowsingView"];

  return v10;
}

- (void)_turnOnLockedPrivateBrowsingFromSheet
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  [safari_browserDefaults setBool:1 forKey:*MEMORY[0x277D4A348]];

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_privateBrowsingExplanationSheet);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__BrowserRootViewController__turnOnLockedPrivateBrowsingFromSheet__block_invoke;
  v5[3] = &unk_2781D5598;
  objc_copyWeak(&v6, &location);
  [WeakRetained dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__BrowserRootViewController__turnOnLockedPrivateBrowsingFromSheet__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 210);
    [v2 authenticateToUnlockPrivateBrowsing];

    WeakRetained = v3;
  }
}

- (void)_dismissPrivateBrowsingExplanationSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_privateBrowsingExplanationSheet);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)_showWelcomeBrowsingExplanationSheet
{
  if (self->_defaultBrowserViewController)
  {
    v3 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_defaultBrowserViewController];
    [v3 setModalPresentationStyle:_SFDeviceIsPad()];
    [v3 setNavigationBarHidden:1];
    [v3 setModalInPresentation:1];
    [v3 setDelegate:self->_defaultBrowserViewController];
    objc_storeWeak(&self->_defaultBrowserSheet, v3);
    v4 = MEMORY[0x277D75D28];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__BrowserRootViewController__showWelcomeBrowsingExplanationSheet__block_invoke;
    v6[3] = &unk_2781D4C88;
    v6[4] = self;
    v7 = v3;
    v5 = v3;
    [v4 _performWithoutDeferringTransitions:v6];
  }
}

- (void)_showPrivateBrowsingExplanationSheetWithViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [v6 setModalPresentationStyle:2];
  [v6 setNavigationBarHidden:1];
  [v6 setOverrideUserInterfaceStyle:2];
  sheetPresentationController = [v6 sheetPresentationController];
  [sheetPresentationController setDelegate:self];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__BrowserRootViewController__showPrivateBrowsingExplanationSheetWithViewController___block_invoke;
  v8[3] = &unk_2781D4D40;
  v8[4] = self;
  [(BrowserRootViewController *)self presentViewController:v6 animated:1 completion:v8];
  objc_storeWeak(&self->_privateBrowsingExplanationSheet, v6);
}

void __84__BrowserRootViewController__showPrivateBrowsingExplanationSheetWithViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1680));
  [WeakRetained resetWhatsNewInPrivateBrowsingStartPageModule];
}

- (unint64_t)_findInsertionIndexForBannersInScrollView:(id)view
{
  subviews = [view subviews];
  v4 = 0;
  if ([subviews count])
  {
    v5 = 0;
    do
    {
      v6 = [subviews objectAtIndexedSubscript:v5];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      if ([v8 isEqualToString:@"WKContentView"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"WKColorExtensionView"))
      {
        v4 = ++v5;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < [subviews count]);
  }

  return v4;
}

void __46__BrowserRootViewController__layOutTopBanners__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(*(a1 + 32) + 1672) subviews];
  v4 = [v3 indexOfObject:v9];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 < v6)
  {
    v8 = *(*(a1 + 32) + 1672);
    *(v5 + 24) = v6 + 1;
    [v8 insertSubview:v9 atIndex:?];
  }
}

void __46__BrowserRootViewController__layOutTopBanners__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) view];
  [v5 layoutMargins];
  [v9 setLayoutMargins:?];

  v6 = *(a1 + 48);
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) != 0 || v6 <= a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(*(a1 + 32) + 1240) addSubview:v9];
  }

  Width = CGRectGetWidth(*(a1 + 56));
  [v9 sizeThatFits:{Width, 0.0}];
  [v9 setBounds:{0.0, 0.0, Width, v8}];
}

void __46__BrowserRootViewController__layOutTopBanners__block_invoke_187(uint64_t a1, void *a2, unint64_t a3)
{
  v46 = a2;
  [v46 bounds];
  v7 = v6;
  v9 = v8;
  MinX = CGRectGetMinX(*(a1 + 72));
  [*(a1 + 32) obscuredInsetsWithComponents:8 forRect:*(*(a1 + 32) + 1672) inCoordinateSpace:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v13 = v11 + v12;
  v16 = v14 + v15;
  if (*(a1 + 104) == a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 112) + *(*(*(a1 + 40) + 8) + 24);
  }

  v17 = MinX + v11;
  v18 = v7 - v13;
  v19 = v9 - v16;
  v20 = [v46 isPinnedToTop];
  v21 = *(*(*(a1 + 48) + 8) + 24);
  if (v20)
  {
    v22 = [v46 pinnedOffset];

    if (v22)
    {
      v23 = *(*(*(a1 + 40) + 8) + 24);
      v24 = *(*(*(a1 + 48) + 8) + 24);
      [*(*(a1 + 32) + 1672) contentOffset];
      v26 = v25;
      v27 = [v46 pinnedOffset];
      [v27 floatValue];
      v21 = fmax(v23, v24 - fmax(v26 - v28, 0.0));

      v29 = MEMORY[0x277CCABB0];
      [*(*(a1 + 32) + 1672) contentOffset];
      v31 = v30;
      v32 = [v46 pinnedOffset];
      [v32 floatValue];
      v34 = [v29 numberWithDouble:{fmin(v31, v33)}];
      [v46 setPinnedOffset:v34];
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v35 = v46;
  }

  else
  {
    v35 = v46;
    if (v21 >= *(*(*(a1 + 40) + 8) + 24) || *(a1 + 112) != 0.0 && *(a1 + 104) <= a3)
    {
      v21 = *(*(*(a1 + 40) + 8) + 24);
    }
  }

  v36 = [v35 superview];
  [v36 convertRect:*(*(a1 + 32) + 1672) fromView:{v17, v21, v18, v19}];
  [v46 setFrame:?];

  v48.origin.x = v17;
  v48.origin.y = v21;
  v48.size.width = v18;
  v48.size.height = v19;
  *(*(*(a1 + 48) + 8) + 24) = fmax(*(*(*(a1 + 48) + 8) + 24), CGRectGetMaxY(v48));
  v49.origin.x = v17;
  v49.origin.y = v21;
  v49.size.width = v18;
  v49.size.height = v19;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetHeight(v49) + *(*(*(a1 + 40) + 8) + 24);
  v50.origin.x = v17;
  v50.origin.y = v21;
  v50.size.width = v18;
  v50.size.height = v19;
  MaxY = CGRectGetMaxY(v50);
  [*(*(a1 + 32) + 1672) contentOffset];
  v39 = v38;
  [*(a1 + 32) _loweredBarMinimumObscuredInsets];
  v41 = v40;
  [*(*(a1 + 32) + 1672) safeAreaInsets];
  if (MaxY > v39 + fmax(v41, v42))
  {
    v43 = *(*(a1 + 64) + 8);
    v45 = *(v43 + 40);
    v44 = (v43 + 40);
    if (!v45)
    {
      objc_storeStrong(v44, a2);
    }
  }
}

- (CGRect)navigationBarFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  if ([(BrowserRootViewController *)self usingLoweredBar])
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    if ([capsuleCollectionView minimizationStyle] == 1)
    {
      [capsuleCollectionView obscuredInsetsForState:0];
      v7 = v6;
      [capsuleCollectionView obscuredInsets];
      v9 = v8 - v7;
      view = [(BrowserRootViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v29);
    }

    else
    {
      view = [(BrowserRootViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v30);
      [capsuleCollectionView obscuredInsets];
      v7 = v20;
      v9 = 0.0;
    }

    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:0.0, v9, Width, v7];
    v13 = v21;
    v15 = v22;
    v17 = v23;
    v19 = v24;
  }

  else
  {
    [(BrowserRootViewController *)self _frameForNavigationBar];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  v25 = v13;
  v26 = v15;
  v27 = v17;
  v28 = v19;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_convertRect:(CGRect)rect fromViewInDocumentContainer:(id)container toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
  containerCopy = container;
  superview = [(SFOrderedContainerView *)documentAndTopBarsContainerView superview];
  contentContainerView = self->_contentContainerView;

  if (superview == contentContainerView)
  {
    [containerCopy convertRect:spaceCopy toCoordinateSpace:{x, y, width, height}];
    v25 = v32;
    v27 = v33;
    v29 = v34;
    v31 = v35;
  }

  else
  {
    [containerCopy convertRect:self->_documentAndTopBarsContainerView toView:{x, y, width, height}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:v17, v19, v21, v23];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  v36 = v25;
  v37 = v27;
  v38 = v29;
  v39 = v31;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGRect)_convertDocumentCoordinateSpaceRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  v10 = [(BrowserRootViewController *)self _viewForConvertingToCoordinateSpace:spaceCopy];
  [v10 convertRect:spaceCopy toCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)_convertDocumentCoordinateSpacePoint:(CGPoint)point toCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  v8 = [(BrowserRootViewController *)self _viewForConvertingToCoordinateSpace:spaceCopy];
  [v8 convertPoint:spaceCopy toCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_viewForConvertingToCoordinateSpace:(id)space
{
  spaceCopy = space;
  p_documentAndTopBarsContainerView = &self->_documentAndTopBarsContainerView;
  superview = [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView superview];
  p_contentContainerView = &self->_contentContainerView;
  v8 = *p_contentContainerView;

  if (superview != v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([spaceCopy isDescendantOfView:*p_documentAndTopBarsContainerView])
      {
        p_contentContainerView = p_documentAndTopBarsContainerView;
      }
    }
  }

  v9 = *p_contentContainerView;
  v10 = v9;

  return v9;
}

- (CGRect)bottomToolbarFrameInCoordinateSpace:(id)space includeKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  spaceCopy = space;
  usingLoweredBar = [(BrowserRootViewController *)self usingLoweredBar];
  capsuleViewController = self->_capsuleViewController;
  if (usingLoweredBar)
  {
    view = [(CapsuleNavigationBarViewController *)capsuleViewController view];
    [view bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    if (keyboardCopy)
    {
      [(BrowserRootViewController *)self _loweredBarObscuredInsets];
    }

    else
    {
      [(BrowserRootViewController *)self _loweredBarObscuredInsetsIgnoringKeyboard];
    }

    v30 = v18;
    v57.origin.x = v11;
    v57.origin.y = v13;
    v57.size.width = v15;
    v57.size.height = v17;
    v31 = CGRectGetHeight(v57) - v30;
    v58.origin.x = v11;
    v58.origin.y = v13;
    v58.size.width = v15;
    v58.size.height = v17;
    Width = CGRectGetWidth(v58);
    v33 = 0.0;
    selfCopy2 = self;
    v35 = v31;
    v36 = v30;
    goto LABEL_16;
  }

  if (!capsuleViewController)
  {
LABEL_17:
    [(BrowserRootViewController *)self _frameForBottomToolbarForceHidden:0];
    [(BrowserRootViewController *)self _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:?];
    v42 = v49;
    v44 = v50;
    v46 = v51;
    v48 = v52;
    goto LABEL_18;
  }

  view = [(CapsuleNavigationBarViewController *)capsuleViewController capsuleCollectionView];
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  selectedItemState = [capsuleCollectionView selectedItemState];

  if (selectedItemState < 2)
  {
    [view bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    if (keyboardCopy)
    {
      [view obscuredInsets];
    }

    else
    {
      [view obscuredInsetsIgnoringKeyboard];
    }

    v40 = v29;
    v59.origin.x = v22;
    v59.origin.y = v24;
    v59.size.width = v26;
    v59.size.height = v28;
    v38 = CGRectGetHeight(v59) - v40;
    [view bounds];
    Width = CGRectGetWidth(v60);
    v33 = 0.0;
    goto LABEL_15;
  }

  if (selectedItemState != 2)
  {

    goto LABEL_17;
  }

  [view capsuleFrame];
  v38 = v37;
  v40 = v39;
LABEL_15:
  selfCopy2 = self;
  v35 = v38;
  v36 = v40;
LABEL_16:
  [(BrowserRootViewController *)selfCopy2 _convertDocumentCoordinateSpaceRect:spaceCopy toCoordinateSpace:v33, v35, Width, v36];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

LABEL_18:
  v53 = v42;
  v54 = v44;
  v55 = v46;
  v56 = v48;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (double)navigationBarSquishedHeight
{
  _interfaceFillsScreen = [(BrowserRootViewController *)self _interfaceFillsScreen];
  result = 0.0;
  if (!_interfaceFillsScreen)
  {
    if ([(BrowserRootViewController *)self usingUnifiedBar])
    {
      unifiedBar = self->_unifiedBar;

      [(SFUnifiedBar *)unifiedBar squishedHeight];
    }

    else if ([(BrowserRootViewController *)self usingLoweredBar])
    {
      [(BrowserRootViewController *)self _loweredBarMinimumObscuredInsets];
    }

    else
    {
      navigationBar = self->_navigationBar;

      [(_SFNavigationBar *)navigationBar minimumHeight];
    }
  }

  return result;
}

- (CGRect)_frameForNavigationBar
{
  if ([(BrowserRootViewController *)self _shouldHideUnifiedBar])
  {
    MaxX = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    Width = CGRectGetWidth(v24);
    v8 = 0.0;
    if (self->_showingSidebar)
    {
      MaxX = 0.0;
      if (!self->_sidebarStyle)
      {
        [(BrowserRootViewController *)self _frameForSidebarWhenShowing:1];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        if ([(SFOrderedContainerView *)self->_documentAndTopBarsContainerView _sf_usesLeftToRightLayout])
        {
          v25.origin.x = v10;
          v25.origin.y = v12;
          v25.size.width = v14;
          v25.size.height = v16;
          MaxX = CGRectGetMaxX(v25);
        }

        v26.origin.x = v10;
        v26.origin.y = v12;
        v26.size.width = v14;
        v26.size.height = v16;
        v8 = CGRectGetWidth(v26);
      }
    }

    else
    {
      MaxX = 0.0;
    }

    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator topBarHeight];
    v6 = v17;
    view = [(BrowserRootViewController *)self view];
    [view safeAreaInsets];
    v4 = v19;

    if ([(BrowserRootViewController *)self usingLoweredBar])
    {
      v4 = -v6;
    }

    if ([(BrowserRootViewController *)self _interfaceFillsScreen])
    {
      [(BrowserRootViewController *)self navigationBarDesiredHeight];
      v4 = v4 + v6 - v20;
      v6 = v20;
    }

    v5 = Width - v8;
  }

  v21 = MaxX;
  v22 = v4;
  v23 = v6;
  result.size.height = v23;
  result.size.width = v5;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_updateTopBarAllowingRemoval:(BOOL)removal
{
  removalCopy = removal;
  if ([(BrowserRootViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v6 = objc_loadWeakRetained(&self->_delegate);
    if ([(BrowserRootViewController *)self usingUnifiedBar])
    {
      if (!self->_unifiedBar)
      {
        v7 = objc_alloc_init(UnifiedBar);
        unifiedBar = self->_unifiedBar;
        self->_unifiedBar = v7;

        [(UnifiedBar *)self->_unifiedBar setDelegate:WeakRetained];
        objc_initWeak(&location, self);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __58__BrowserRootViewController__updateTopBarAllowingRemoval___block_invoke;
        v28[3] = &unk_2781D5B30;
        objc_copyWeak(&v29, &location);
        [(UnifiedBar *)self->_unifiedBar setBookmarkLinkAnimationDestination:v28];
        oneStepBookmarkingController = [WeakRetained oneStepBookmarkingController];
        [(UnifiedBar *)self->_unifiedBar setOneStepBookmarkingController:oneStepBookmarkingController];

        [(UnifiedBar *)self->_unifiedBar setAccessibilityIdentifier:@"Toolbar"];
        [(TabBarManager *)self->_tabBarManager setUnifiedBar:self->_unifiedBar];
        -[TabBarManager setDisplayMode:](self->_tabBarManager, "setDisplayMode:", [WeakRetained tabBarDisplayMode]);
        [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_unifiedBar];
        [v6 browserViewController:self didCreateUnifiedBar:self->_unifiedBar];
        v10 = [(UnifiedBar *)self->_unifiedBar viewForBarItem:3];
        sidebarButtonEmbeddedInUnifiedBar = self->_sidebarButtonEmbeddedInUnifiedBar;
        self->_sidebarButtonEmbeddedInUnifiedBar = v10;

        [(BrowserRootViewController *)self _updateScrollPocketForUnifiedBar];
        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
LABEL_8:
        if (!removalCopy)
        {
LABEL_13:
          v18 = [(BrowserRootViewController *)self topBar:v22];
          if (v18)
          {
            v19 = MEMORY[0x277CDB750];
            dynamicBarAnimator = self->_dynamicBarAnimator;
            view = [(BrowserRootViewController *)self view];
            [v19 attachToBar:v18 withAnimator:dynamicBarAnimator inContainerView:view];

            if (self->_inYttriumMode)
            {
              [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:!self->_inYttriumState animated:0];
            }
          }

          [(BrowserRootViewController *)self _updateTopBarStyles];

          goto LABEL_17;
        }

        [(NavigationBar *)self->_navigationBar removeFromSuperview];
        navigationBar = self->_navigationBar;
        self->_navigationBar = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      if (removalCopy)
      {
        [(TabBarManager *)self->_tabBarManager setDisplayMode:0];
        [(TabBarManager *)self->_tabBarManager setUnifiedBar:0];
        [(UnifiedBar *)self->_unifiedBar removeFromSuperview];
        v12 = self->_unifiedBar;
        self->_unifiedBar = 0;
      }

      if ([(BrowserRootViewController *)self usingLoweredBar])
      {
        goto LABEL_8;
      }

      if (!self->_navigationBar)
      {
        v14 = [(_SFNavigationBar *)[NavigationBar alloc] initWithFrame:0.0, 0.0, 0.0, 44.0];
        v15 = self->_navigationBar;
        self->_navigationBar = v14;

        [(_SFNavigationBar *)self->_navigationBar setDelegate:WeakRetained];
        v16 = _SFBackdropGroupNameForOwner();
        [(_SFNavigationBar *)self->_navigationBar setBackdropGroupName:v16];

        [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_navigationBar];
        [v6 browserViewController:self didCreateNavigationBar:self->_navigationBar];
        [(CatalogViewController *)self->_catalogViewController setNavigationBar:self->_navigationBar];
        v17 = MEMORY[0x277D75D18];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __58__BrowserRootViewController__updateTopBarAllowingRemoval___block_invoke_2;
        v25 = &unk_2781D4C88;
        selfCopy = self;
        v27 = WeakRetained;
        [v17 performWithoutAnimation:&v22];
        navigationBar = v27;
        goto LABEL_12;
      }
    }

LABEL_17:
  }
}

id __58__BrowserRootViewController__updateTopBarAllowingRemoval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[206];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __58__BrowserRootViewController__updateTopBarAllowingRemoval___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1576) setUsesNarrowLayout:{objc_msgSend(*(a1 + 40), "usesNarrowLayout")}];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1576);
  v4 = [v2 favoritesFieldShouldBeExpanded];

  return [v3 setExpanded:v4 completionHandler:0];
}

- (void)updateViewForTabDocument:(id)document
{
  documentCopy = document;
  _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
  view = [_continuousReadingViewController view];
  view2 = [documentCopy view];

  [view addSubview:view2];
}

- (void)updateTabHoverPreview
{
  tabBar = self->_tabBar;
  if (tabBar)
  {
    effectiveTabBar = tabBar;
  }

  else
  {
    effectiveTabBar = [(TabBarManager *)self->_tabBarManager effectiveTabBar];
  }

  v12 = effectiveTabBar;
  tabBar = [(TabHoverPreview *)self->_tabHoverPreview tabBar];

  v6 = v12;
  if (tabBar != v12)
  {
    [(TabHoverPreview *)self->_tabHoverPreview removeFromSuperview];
    tabHoverPreview = self->_tabHoverPreview;
    self->_tabHoverPreview = 0;

    v6 = v12;
    if (v12)
    {
      v8 = [[TabHoverPreview alloc] initWithTabBar:v12];
      v9 = self->_tabHoverPreview;
      self->_tabHoverPreview = v8;

      [(TabHoverPreview *)self->_tabHoverPreview setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TabHoverPreview *)self->_tabHoverPreview setInsetsPreviewFromTabBarEdge:v12 == self->_tabBar];
      unifiedBar = self->_unifiedBar;
      if (unifiedBar)
      {
        [(UnifiedBar *)unifiedBar layoutMargins];
        [(TabHoverPreview *)self->_tabHoverPreview setTopInset:v11];
      }

      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addSubview:self->_tabHoverPreview];
      v6 = v12;
    }
  }
}

- (void)setUsesFaintTopSeparator:(BOOL)separator
{
  if (self->_usesFaintTopSeparator != separator)
  {
    separatorCopy = separator;
    self->_usesFaintTopSeparator = separator;
    navigationBar = [(BrowserRootViewController *)self navigationBar];
    [navigationBar setUsesFaintSeparator:separatorCopy];

    tabBarManager = [(BrowserRootViewController *)self tabBarManager];
    unifiedBar = [tabBarManager unifiedBar];
    [unifiedBar setUsesFaintSeparator:separatorCopy];

    [(BrowserRootViewController *)self _updateCapsuleTopSeparatorColor];
  }
}

- (void)_updateCapsuleTopSeparatorColor
{
  if (self->_usesFaintTopSeparator)
  {
    [MEMORY[0x277D75348] sf_secondaryBarHairlineOutlineColor];
  }

  else
  {
    [MEMORY[0x277D75348] sf_barHairlineShadowColor];
  }
  v3 = ;
  [(UIView *)self->_topSeparator setBackgroundColor:v3];
}

- (CGRect)_frameForBottomToolbarForceHidden:(BOOL)hidden
{
  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_SFToolbar *)self->_bottomToolbar sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v14 = v13;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  Height = CGRectGetHeight(v25);
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  Width = CGRectGetWidth(v26);
  if (self->_toolbarPlacement == 1 && !hidden)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained browserViewControllerShouldTemporarilyHideBottomToolbar:self];

    if ((v18 & 1) == 0)
    {
      [(BrowserRootViewController *)self _sf_bottomUnsafeAreaFrameForToolbar];
      v19 = CGRectGetHeight(v27);
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator bottomBarOffset];
      Height = Height - (v14 + v19 - v20);
      if ([(BrowserRootViewController *)self _shouldPositionBottomToolbarAboveKeyboard])
      {
        Height = Height - fmax(self->_bottomBarKeyboardOffset - v19, 0.0);
      }
    }
  }

  v21 = 0.0;
  v22 = Height;
  v23 = Width;
  v24 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)_shouldPositionBottomToolbarAboveKeyboard
{
  view = [(BrowserRootViewController *)self view];
  _sf_isFullScreenWidth = [view _sf_isFullScreenWidth];

  return _sf_isFullScreenWidth ^ 1;
}

- (void)_setToolbarPlacement:(int64_t)placement
{
  toolbarPlacement = self->_toolbarPlacement;
  if (self->_bottomToolbar)
  {
    if (toolbarPlacement == placement)
    {
      return;
    }
  }

  else if (toolbarPlacement == placement && (self->_capsuleViewController || [(_SFNavigationBar *)self->_navigationBar hasToolbar]))
  {
    return;
  }

  self->_toolbarPlacement = placement;
  view = [(BrowserRootViewController *)self view];
  [view setNeedsLayout];

  [(BrowserRootViewController *)self _updateToolbarForToolbarPlacementAllowingRemoval:[(BrowserRootViewController *)self isPerformingSizeTransition]^ 1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewControllerDidChangeToolbarPlacement:self];
}

- (void)_updateToolbarForToolbarPlacementAllowingRemoval:(BOOL)removal
{
  removalCopy = removal;
  [(BrowserRootViewController *)self _updateTopBarAllowingRemoval:?];
  if (self->_toolbarPlacement == 1)
  {
    [(BrowserRootViewController *)self _createBottomToolbarIfNeeded];
    if (!self->_showBarsFromBottomBarRecognizer)
    {
      v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__showBarsFromBottomBarTap_];
      showBarsFromBottomBarRecognizer = self->_showBarsFromBottomBarRecognizer;
      self->_showBarsFromBottomBarRecognizer = v5;

      [(UITapGestureRecognizer *)self->_showBarsFromBottomBarRecognizer setDelegate:self];
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView addGestureRecognizer:self->_showBarsFromBottomBarRecognizer];
    }
  }

  else
  {
    [(_SFNavigationBar *)self->_navigationBar setHasToolbar:1];
    capsuleViewController = self->_capsuleViewController;
    if (capsuleViewController)
    {
      v8 = !removalCopy;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      [(CapsuleNavigationBarViewController *)capsuleViewController willMoveToParentViewController:0];
      view = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
      [view removeFromSuperview];

      capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      minimizedProgressView = [capsuleCollectionView minimizedProgressView];
      [minimizedProgressView removeFromSuperview];

      [(CapsuleNavigationBarViewController *)self->_capsuleViewController removeFromParentViewController];
      v12 = self->_capsuleViewController;
      self->_capsuleViewController = 0;

      [(SFThemeColorEffectView *)self->_topBackdrop removeFromSuperview];
      topBackdrop = self->_topBackdrop;
      self->_topBackdrop = 0;
    }

    bottomToolbar = self->_bottomToolbar;
    if (bottomToolbar)
    {
      v15 = !removalCopy;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      [(BrowserToolbar *)bottomToolbar removeFromSuperview];
      v16 = self->_bottomToolbar;
      self->_bottomToolbar = 0;
    }

    if (self->_showBarsFromBottomBarRecognizer)
    {
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView removeGestureRecognizer:?];
      v17 = self->_showBarsFromBottomBarRecognizer;
      self->_showBarsFromBottomBarRecognizer = 0;
    }
  }

  [(BrowserRootViewController *)self updateUsesLockdownStatusBar];
  [(CatalogViewController *)self->_catalogViewController updateStartPageTopSpacing];
  [(BrowserRootViewController *)self _updateTopScrollEdgeEffectStyle];

  [(BrowserRootViewController *)self _updateScrollPocketsAreHidden];
}

void __57__BrowserRootViewController__createBottomToolbarIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCapsuleLayoutStyle];
}

- (void)capsuleLayoutStyleChanged
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  preferredCapsuleLayoutStyle = [mEMORY[0x277D28C70] preferredCapsuleLayoutStyle];
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [mEMORY[0x277D499B8] _sf_reportCapsuleLayoutStyle:preferredCapsuleLayoutStyle previousSetting:{objc_msgSend(capsuleCollectionView, "layoutStyle")}];

  [(BrowserRootViewController *)self updateCapsuleLayoutStyle];
}

- (void)updateCapsuleLayoutStyle
{
  mEMORY[0x277D28C70] = [MEMORY[0x277D28C70] sharedFeatureManager];
  preferredCapsuleLayoutStyle = [mEMORY[0x277D28C70] preferredCapsuleLayoutStyle];

  if (preferredCapsuleLayoutStyle == 3)
  {
    traitCollection = [(CapsuleNavigationBarViewController *)self->_capsuleViewController traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    view = [(BrowserRootViewController *)self view];
    v8 = SFCapsuleCollectionViewMaximumContentSizeCategoryForMinibar();
    v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, v8);

    if (v9 == NSOrderedDescending)
    {
      preferredCapsuleLayoutStyle = 1;
    }

    else
    {
      preferredCapsuleLayoutStyle = 3;
    }
  }

  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView setLayoutStyle:preferredCapsuleLayoutStyle];

  [(CatalogViewController *)self->_catalogViewController reloadNavigationItemAnimated:0];
  [(BrowserRootViewController *)self _updateTopBarStyles];
  [(BrowserRootViewController *)self _updateScrollPocketsAreHidden];
  window = [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView window];

  if (window)
  {
    [(BrowserRootViewController *)self updateOrderedSubviewsForOrderedContainerView:self->_documentAndTopBarsContainerView];
  }

  view2 = [(BrowserRootViewController *)self view];
  [view2 setNeedsLayout];
}

- (CGRect)_frameForSidebarWhenShowing:(BOOL)showing
{
  showingCopy = showing;
  view = [(BrowserRootViewController *)self view];
  [view safeAreaInsets];
  v7 = v6;

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v8 = v7 + CGRectGetHeight(v35);
  if (self->_toolbarPlacement == 1)
  {
    bottomToolbar = self->_bottomToolbar;
    if (bottomToolbar)
    {
      documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
      [(BrowserToolbar *)bottomToolbar bounds];
      [(SFOrderedContainerView *)documentAndTopBarsContainerView convertRect:self->_bottomToolbar fromView:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
      MaxY = CGRectGetMaxY(v36);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v18;
      v20 = MaxY - CGRectGetMinY(v37);
      if (v20 >= 0.0)
      {
        v38.origin.x = v12;
        v38.origin.y = v14;
        v38.size.width = v16;
        v38.size.height = v18;
        Height = CGRectGetHeight(v38);
        [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView safeAreaInsets];
        if (v20 <= Height + v22)
        {
          v8 = v8 - v20;
        }
      }
    }
  }

  v23 = -v7;
  [(SidebarViewController *)self->_sidebarViewController separatorWidth];
  v25 = v24;
  if ([(SFOrderedContainerView *)self->_documentAndTopBarsContainerView _sf_usesLeftToRightLayout])
  {
    v26 = 0.0;
    if (!showingCopy)
    {
      v27 = 0x4074000000000000;
      v28 = v23;
      v29 = v8;
      v26 = -CGRectGetWidth(*&v26) - v25;
    }
  }

  else
  {
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    Width = CGRectGetWidth(v39);
    v31 = Width;
    if (showingCopy)
    {
      v40.size.width = 320.0;
      v40.origin.x = 0.0;
      v40.origin.y = v23;
      v40.size.height = v8;
      v26 = v31 - CGRectGetWidth(v40);
    }

    else
    {
      v26 = v25 + Width;
    }
  }

  v32 = 320.0;
  v33 = v23;
  v34 = v8;
  result.size.height = v34;
  result.size.width = v32;
  result.origin.y = v33;
  result.origin.x = v26;
  return result;
}

- (void)_layOutFloatingSidebarButtonForSidebarShowing:(BOOL)showing
{
  showingCopy = showing;
  v5 = +[FeatureManager sharedFeatureManager];
  isFloatingSidebarButtonEnabled = [v5 isFloatingSidebarButtonEnabled];

  if (isFloatingSidebarButtonEnabled)
  {
    if ([(_SFDynamicBarAnimator *)self->_dynamicBarAnimator state]== 1)
    {
      v7 = [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator isTrackingDrag]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    v8 = (self->_sidebarStyle == 0) & v7;
    [(BrowserRootViewController *)self _setShowingFloatingSidebarButton:(self->_sidebarStyle == 0) & v7];
    if (v8 == 1)
    {
      *&rect.origin.y = MEMORY[0x277D85DD0];
      *&rect.size.width = 3221225472;
      *&rect.size.height = __75__BrowserRootViewController__layOutFloatingSidebarButtonForSidebarShowing___block_invoke;
      v42 = &unk_2781D7850;
      selfCopy = self;
      v9 = _Block_copy(&rect.origin.y);
      WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
      if (showingCopy)
      {
        sidebarButtonEmbeddedInSidebar = self->_sidebarButtonEmbeddedInSidebar;
        [(UIButton *)sidebarButtonEmbeddedInSidebar bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        view = [(SidebarViewController *)self->_sidebarViewController view];
        [(UIButton *)sidebarButtonEmbeddedInSidebar convertRect:view toView:v13, v15, v17, v19];
        rect.origin.x = v21;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [(BrowserRootViewController *)self _frameForSidebarWhenShowing:1];
        x = v44.origin.x;
        y = v44.origin.y;
        width = v44.size.width;
        height = v44.size.height;
        MinX = CGRectGetMinX(v44);
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        MinY = CGRectGetMinY(v45);
        v46.origin.x = rect.origin.x;
        v46.origin.y = v23;
        v46.size.width = v25;
        v46.size.height = v27;
        v47 = CGRectOffset(v46, MinX, MinY);
        [(UIButton *)self->_floatingSidebarButton setFrame:v47.origin.x, v47.origin.y, v47.size.width, v47.size.height];
        [(UIButton *)self->_floatingSidebarButton setTintColor:0];
LABEL_20:
        [(UIButton *)self->_floatingSidebarButton layoutIfNeeded];

        return;
      }

      if (SFEnhancedTabOverviewEnabled())
      {
        v34 = WeakRetained;
        if ([v34 presentationState] == 1)
        {

LABEL_12:
          sidebarToggleBarButtonItem = [(TabSwitcherViewController *)self->_tabSwitcherViewController sidebarToggleBarButtonItem];
          view2 = [sidebarToggleBarButtonItem view];

          subviews = [view2 subviews];
          firstObject = [subviews firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _imageView = [firstObject _imageView];
            (*(v9 + 2))(v9, _imageView);
          }

          else
          {
            (*(v9 + 2))(v9, view2);
          }

          goto LABEL_19;
        }

        presentationState = [v34 presentationState];

        if (presentationState == 2)
        {
          goto LABEL_12;
        }
      }

      if (![(BrowserRootViewController *)self _shouldHideUnifiedBar])
      {
        (*(v9 + 2))(v9, self->_sidebarButtonEmbeddedInUnifiedBar);
        goto LABEL_20;
      }

      view2 = [(CatalogViewController *)self->_catalogViewController sidebarButton];
      (*(v9 + 2))(v9, view2);
LABEL_19:

      goto LABEL_20;
    }
  }
}

void __75__BrowserRootViewController__layOutFloatingSidebarButtonForSidebarShowing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bounds];
  [v3 convertRect:*(*(a1 + 32) + 1048) toView:?];
  [*(*(a1 + 32) + 1648) setFrame:?];
  v6 = [v3 tintColor];
  v4 = [v3 traitCollection];

  v5 = [v6 resolvedColorWithTraitCollection:v4];
  [*(*(a1 + 32) + 1648) setTintColor:v5];
}

- (void)_statusBarHover:(id)hover
{
  [hover locationInView:self->_statusBarView];
  v5 = v4;
  v7 = v6;
  [(SFWebpageStatusBarView *)self->_statusBarView setHoverPoint:?];
  v8 = v7 == *(MEMORY[0x277CBF348] + 8) && v5 == *MEMORY[0x277CBF348];
  statusBarView = self->_statusBarView;

  [(SFWebpageStatusBarView *)statusBarView setSuppressShowingStatusBar:v8];
}

id __49__BrowserRootViewController__setUpTabGroupButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    v4 = objc_loadWeakRetained(WeakRetained + 210);
    [v3 reportIOSToolbarButtonUsage:6 withLayout:{objc_msgSend(v4, "analyticsLayoutProvenance")}];

    v5 = [*(a1 + 32) newTabGroupMenu];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sidebarTrailingButtonWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained sidebarTrailingButtonWasTapped];
}

- (void)_setShowingFloatingSidebarButton:(BOOL)button
{
  buttonCopy = button;
  v5 = !button;
  [(UIButton *)self->_floatingSidebarButton setHidden:v5];
  [(UIView *)self->_sidebarButtonEmbeddedInUnifiedBar setHidden:buttonCopy];
  [(UIButton *)self->_sidebarButtonEmbeddedInSidebar setAlpha:v5];
  [(UIButton *)self->_sidebarButtonEmbeddedInSidebar setEnabled:v5];
  LOBYTE(v5) = buttonCopy | [(BrowserRootViewController *)self _isShowingEmbeddedSidebar];
  sidebarButton = [(CatalogViewController *)self->_catalogViewController sidebarButton];
  [sidebarButton setHidden:v5];

  [(BrowserRootViewController *)self _updateTabSwitcherSidebarToggle];
}

- (void)_createSidebarContentDimmingViewIfNeeded
{
  if (!self->_sidebarContentDimmingView && [(BrowserRootViewController *)self _shouldShowSidebarContentDimmingView])
  {
    v3 = [SidebarContentDimmingView alloc];
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(BrowserRootViewController *)self _sidebarDimmedContentFrameIncludingSidebarOnlyIfEmbedded:1];
    v16 = [(SidebarContentDimmingView *)v3 initWithFrame:v5 dimmedContentFrame:v7, v9, v11, v12, v13, v14, v15];
    sidebarContentDimmingView = self->_sidebarContentDimmingView;
    self->_sidebarContentDimmingView = v16;

    [(SidebarContentDimmingView *)self->_sidebarContentDimmingView setTransparent:1];
    view = [(SidebarViewController *)self->_sidebarViewController view];
    [(SidebarContentDimmingView *)self->_sidebarContentDimmingView setPassthroughView:view];

    [(SidebarContentDimmingView *)self->_sidebarContentDimmingView setDelegate:self];
    contentContainerView = self->_contentContainerView;
    v20 = self->_sidebarContentDimmingView;
    documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;

    [(ViewWithCustomNextResponder *)contentContainerView insertSubview:v20 aboveSubview:documentAndTopBarsContainerView];
  }
}

- (CGRect)_sidebarDimmedContentFrameIncludingSidebarOnlyIfEmbedded:(BOOL)embedded
{
  if (embedded)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:v4 forRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(BrowserRootViewController *)self view];
  [view safeAreaInsets];
  v15 = v6 - v14;

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v17 = v8 + v16;
  v19 = v15 + v18;
  v21 = v20 - (v8 + v12);
  v23 = v22 - (v10 + v15);
  result.size.height = v23;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v17;
  return result;
}

- (void)_transitionFromBanner:(id)banner toBanner:(id)toBanner animated:(BOOL)animated
{
  v51 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  toBannerCopy = toBanner;
  view = [(BrowserRootViewController *)self view];
  [view setNeedsLayout];

  separableFromStatusBar = [toBannerCopy separableFromStatusBar];
  v12 = &OBJC_IVAR___BrowserRootViewController__documentAndTopBarsContainerView;
  if (separableFromStatusBar)
  {
    v12 = &OBJC_IVAR___BrowserRootViewController__scrollView;
  }

  v13 = *(&self->super.super.super.isa + *v12);
  if (toBannerCopy)
  {
    [(BrowserRootViewController *)self _updateThemeForBanner:toBannerCopy animated:0];
    [toBannerCopy setShowsTopSeparator:0];
    view2 = [(BrowserRootViewController *)self view];
    [view2 layoutMargins];
    [toBannerCopy setLayoutMargins:?];

    if ([toBannerCopy separableFromStatusBar])
    {
      subviews = [(UIScrollView *)self->_scrollView subviews];
      v16 = [subviews indexOfObject:bannerCopy];
      if (v16 <= [(BrowserRootViewController *)self _findInsertionIndexForBannersInScrollView:self->_scrollView])
      {
        v18 = [(BrowserRootViewController *)self _findInsertionIndexForBannersInScrollView:self->_scrollView];
      }

      else
      {
        subviews2 = [(UIScrollView *)self->_scrollView subviews];
        v18 = [subviews2 indexOfObject:bannerCopy];
      }

      [(UIScrollView *)self->_scrollView insertSubview:toBannerCopy atIndex:v18];
    }

    else
    {
      [v13 addSubview:toBannerCopy];
    }
  }

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [toBannerCopy sizeThatFits:{CGRectGetWidth(v52), 0.0}];
  v20 = v19;
  [v13 bounds];
  [toBannerCopy setFrame:{0.0, 0.0, CGRectGetWidth(v53), v20}];
  [(UIScrollView *)self->_scrollView contentOffset];
  v22 = v21;
  v24 = v23;
  if (toBannerCopy && ([toBannerCopy isInitiallyBehindNavigationBar] & 1) == 0)
  {
    [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:self->_documentAndTopBarsContainerView];
    v25 = -CGRectGetMaxY(v54);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    managedTopBanners = [(BrowserRootViewController *)self managedTopBanners];
    v27 = [managedTopBanners countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v47;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(managedTopBanners);
          }

          [*(*(&v46 + 1) + 8 * i) bounds];
          v25 = v25 - CGRectGetHeight(v55);
        }

        v28 = [managedTopBanners countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v28);
    }

    [(UIScrollView *)self->_scrollView contentOffset];
    if (v31 - v25 <= v20 && v31 - v25 > 0.0)
    {
      v24 = v25;
    }
  }

  if (animated)
  {
    v33 = MEMORY[0x277D75D18];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __69__BrowserRootViewController__transitionFromBanner_toBanner_animated___block_invoke;
    v41[3] = &unk_2781D5AA0;
    v42 = toBannerCopy;
    selfCopy = self;
    v45 = v20;
    v44 = v13;
    [v33 performWithoutAnimation:v41];
    v34 = MEMORY[0x277D75D18];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __69__BrowserRootViewController__transitionFromBanner_toBanner_animated___block_invoke_2;
    v37[3] = &unk_2781D78A0;
    v37[4] = self;
    v39 = v22;
    v40 = v24;
    v38 = bannerCopy;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __69__BrowserRootViewController__transitionFromBanner_toBanner_animated___block_invoke_3;
    v35[3] = &unk_2781D4B18;
    v36 = v38;
    [v34 _animateUsingDefaultTimingWithOptions:2 animations:v37 completion:v35];
  }

  else
  {
    [(UIScrollView *)self->_scrollView setContentOffset:v22, v24];
    [bannerCopy removeFromSuperview];
  }
}

uint64_t __69__BrowserRootViewController__transitionFromBanner_toBanner_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 1672);
  [v2 contentOffset];
  v4 = v3 - *(a1 + 56);
  [*(*(a1 + 40) + 1240) bounds];
  [v2 convertRect:*(a1 + 48) toView:{0.0, v4, CGRectGetWidth(v8), *(a1 + 56)}];
  [*(a1 + 32) setFrame:?];
  v5 = *(a1 + 32);

  return [v5 layoutIfNeeded];
}

uint64_t __69__BrowserRootViewController__transitionFromBanner_toBanner_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1672) setContentOffset:{*(a1 + 48), *(a1 + 56)}];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  [*(a1 + 40) bounds];
  v3 = -CGRectGetHeight(v8);
  [*(*(a1 + 32) + 1240) bounds];
  Width = CGRectGetWidth(v9);
  [*(a1 + 40) bounds];
  [*(a1 + 40) setFrame:{0.0, v3, Width, CGRectGetHeight(v10)}];
  v5 = *(a1 + 40);

  return [v5 setAlpha:0.0];
}

- (void)bannerController:(id)controller didSetAppBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  if (banner != previousBanner)
  {
    [(BrowserRootViewController *)self _transitionFromBanner:previousBanner toBanner:banner animated:animated];
  }
}

- (void)bannerController:(id)controller didSetCrashBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  if (banner != previousBanner)
  {
    animatedCopy = animated;
    previousBannerCopy = previousBanner;
    bannerCopy = banner;
    [bannerCopy setPinnedToTop:1];
    v11 = MEMORY[0x277CCABB0];
    [(UIScrollView *)self->_scrollView contentOffset];
    v13 = [v11 numberWithDouble:v12];
    [bannerCopy setPinnedOffset:v13];

    [(BrowserRootViewController *)self _transitionFromBanner:previousBannerCopy toBanner:bannerCopy animated:animatedCopy];
  }
}

- (void)bannerController:(id)controller didSetWebExtensionBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  if (bannerCopy != previousBanner)
  {
    [previousBanner removeFromSuperview];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__BrowserRootViewController_bannerController_didSetWebExtensionBanner_previousBanner_animated___block_invoke;
    aBlock[3] = &unk_2781D4D40;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    if (bannerCopy)
    {
      [(BrowserRootViewController *)self _updateThemeForBanner:bannerCopy animated:animatedCopy];
      capsuleViewController = self->_capsuleViewController;
      if (capsuleViewController)
      {
        capsuleIsFocused = [(CapsuleNavigationBarViewController *)capsuleViewController capsuleIsFocused];
      }

      else
      {
        capsuleIsFocused = 0;
      }

      [bannerCopy setHidden:capsuleIsFocused];
      [bannerCopy setPinnedToTop:1];
      [(UIScrollView *)self->_scrollView addSubview:bannerCopy];
    }

    v10[2](v10);
  }
}

void __95__BrowserRootViewController_bannerController_didSetWebExtensionBanner_previousBanner_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

- (void)bannerController:(id)controller didSetRemotelyEnabledExtensionBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  if (bannerCopy != previousBanner)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__BrowserRootViewController_bannerController_didSetRemotelyEnabledExtensionBanner_previousBanner_animated___block_invoke;
    aBlock[3] = &unk_2781D4D40;
    aBlock[4] = self;
    previousBannerCopy = previousBanner;
    v11 = _Block_copy(aBlock);
    [previousBannerCopy removeFromSuperview];

    if (bannerCopy)
    {
      [(BrowserRootViewController *)self _updateThemeForBanner:bannerCopy animated:animatedCopy];
      capsuleViewController = self->_capsuleViewController;
      if (capsuleViewController)
      {
        capsuleIsFocused = [(CapsuleNavigationBarViewController *)capsuleViewController capsuleIsFocused];
      }

      else
      {
        capsuleIsFocused = 0;
      }

      [bannerCopy setHidden:capsuleIsFocused];
      [bannerCopy setPinnedToTop:1];
      [(UIScrollView *)self->_scrollView addSubview:bannerCopy];
    }

    v11[2](v11);
  }
}

void __107__BrowserRootViewController_bannerController_didSetRemotelyEnabledExtensionBanner_previousBanner_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

- (void)bannerController:(id)controller didSetWebExtensionPermissionGrantedBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  if (bannerCopy != previousBanner)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__BrowserRootViewController_bannerController_didSetWebExtensionPermissionGrantedBanner_previousBanner_animated___block_invoke;
    aBlock[3] = &unk_2781D4D40;
    aBlock[4] = self;
    previousBannerCopy = previousBanner;
    v11 = _Block_copy(aBlock);
    [previousBannerCopy removeFromSuperview];

    if (bannerCopy)
    {
      [(BrowserRootViewController *)self _updateThemeForBanner:bannerCopy animated:animatedCopy];
      capsuleViewController = self->_capsuleViewController;
      if (capsuleViewController)
      {
        capsuleIsFocused = [(CapsuleNavigationBarViewController *)capsuleViewController capsuleIsFocused];
      }

      else
      {
        capsuleIsFocused = 0;
      }

      [bannerCopy setHidden:capsuleIsFocused];
      [bannerCopy setPinnedToTop:1];
      [(UIScrollView *)self->_scrollView addSubview:bannerCopy];
    }

    v11[2](v11);
  }
}

void __112__BrowserRootViewController_bannerController_didSetWebExtensionPermissionGrantedBanner_previousBanner_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

- (void)bannerController:(id)controller didSetPrivateBrowsingPrivacyProtectionsBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  if (banner != previousBanner)
  {
    animatedCopy = animated;
    previousBannerCopy = previousBanner;
    bannerCopy = banner;
    [bannerCopy setPinnedToTop:1];
    v11 = MEMORY[0x277CCABB0];
    [(UIScrollView *)self->_scrollView contentOffset];
    v13 = [v11 numberWithDouble:v12];
    [bannerCopy setPinnedOffset:v13];

    [(BrowserRootViewController *)self _transitionFromBanner:previousBannerCopy toBanner:bannerCopy animated:animatedCopy];
  }
}

- (void)bannerController:(id)controller didSetTabGroupBanner:(id)banner previousBanner:(id)previousBanner animated:(BOOL)animated
{
  if (banner != previousBanner)
  {
    [(BrowserRootViewController *)self _transitionFromBanner:previousBanner toBanner:banner animated:animated];
  }
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  v5 = areAnimationsEnabled;
  if (self->_capsuleViewController)
  {
    v6 = 1;
  }

  else
  {
    v6 = areAnimationsEnabled == 0;
  }

  if (!v6)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__BrowserRootViewController__keyboardWillChangeFrame___block_invoke;
    v30[3] = &unk_2781D4D40;
    v30[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v30];
  }

  view = [(BrowserRootViewController *)self view];
  keyboardSceneDelegate = [view keyboardSceneDelegate];

  activeKeyboardSceneDelegate = [MEMORY[0x277D756A8] activeKeyboardSceneDelegate];

  if (keyboardSceneDelegate == activeKeyboardSceneDelegate)
  {
    [keyboardSceneDelegate visibleFrameInView:0];
  }

  else
  {
    [keyboardSceneDelegate visibleInputViewFrameInView:0];
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  contentContainerView = self->_contentContainerView;
  window = [(ViewWithCustomNextResponder *)contentContainerView window];
  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];
  [(ViewWithCustomNextResponder *)contentContainerView convertRect:coordinateSpace fromCoordinateSpace:v14, v15, v16, v17];
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
  v33.origin.x = 0.0;
  v33.origin.y = v23;
  v33.size.width = v25;
  v33.size.height = v27;
  v32 = CGRectIntersection(v31, v33);
  self->_bottomBarKeyboardOffset = CGRectGetHeight(v32);
  if (!self->_capsuleViewController)
  {
    view2 = [(BrowserRootViewController *)self view];
    [view2 setNeedsLayout];

    if (v5)
    {
      view3 = [(BrowserRootViewController *)self view];
      [view3 layoutIfNeeded];
    }
  }
}

void __54__BrowserRootViewController__keyboardWillChangeFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)addToastViewController:(id)controller
{
  controllerCopy = controller;
  [(BrowserRootViewController *)self loadViewIfNeeded];
  [(UIViewController *)self->_documentAndTopBarsContainerViewController addChildViewController:controllerCopy];
  currentlyPresentedToastViewController = self->_currentlyPresentedToastViewController;
  self->_currentlyPresentedToastViewController = controllerCopy;
  v8 = controllerCopy;

  documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
  view = [(SFToastViewController *)v8 view];
  [(SFOrderedContainerView *)documentAndTopBarsContainerView addSubview:view];

  [(SFToastViewController *)v8 didMoveToParentViewController:self->_documentAndTopBarsContainerViewController];
}

- (void)removeToastViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [view removeFromSuperview];

  [(UIViewController *)self->_documentAndTopBarsContainerViewController removeChildViewController:controllerCopy];
  currentlyPresentedToastViewController = self->_currentlyPresentedToastViewController;
  self->_currentlyPresentedToastViewController = 0;
}

- (void)dynamicBarAnimatorOutputsDidChange:(id)change
{
  if (![(BrowserRootViewController *)self usingLoweredBar])
  {
    targetState = [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator targetState];
    [(_SFNavigationBar *)self->_navigationBar setUnifiedFieldShowsProgressView:targetState != 0];
    view = [(BrowserRootViewController *)self view];
    [view setNeedsLayout];

    [(BrowserRootViewController *)self _setAvoidanceInsetsNeedsUpdate];
    if (targetState)
    {
      _interfaceFillsScreen = 0;
    }

    else
    {
      _interfaceFillsScreen = [(BrowserRootViewController *)self _interfaceFillsScreen];
    }

    [(BrowserRootViewController *)self setBarStateAllowsHidingHomeIndicator:_interfaceFillsScreen];
  }
}

- (double)offsetForDynamicBarAnimator
{
  if ([(UIPanGestureRecognizer *)self->_hideNavigationBarGestureRecognizer state]== 2)
  {
    hideNavigationBarGestureRecognizer = self->_hideNavigationBarGestureRecognizer;
    view = [(BrowserRootViewController *)self view];
    [(UIPanGestureRecognizer *)hideNavigationBarGestureRecognizer translationInView:view];
    v6 = -v5;
  }

  else
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    return v7;
  }

  return v6;
}

- (void)_hideNavigationBarGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  view = [(BrowserRootViewController *)self view];
  [recognizedCopy translationInView:view];
  v6 = v5;

  state = [recognizedCopy state];
  if ((state - 3) >= 3)
  {
    v11 = -v6;
    if (state == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      [WeakRetained updateDynamicBarGeometry];

      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator updateDraggingWithOffset:v11];
    }

    else if (state == 1)
    {
      [(_SFWebView *)self->_webView _beginInteractiveObscuredInsetsChange];
      [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator beginDraggingWithOffset:v11];
    }
  }

  else
  {
    [(_SFWebView *)self->_webView _endInteractiveObscuredInsetsChange];
    view2 = [(BrowserRootViewController *)self view];
    [recognizedCopy velocityInView:view2];
    v10 = v9;

    [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator endDraggingWithTargetOffset:(v10 / log(*MEMORY[0x277D76EC0]) - v6) velocity:v10 * -1000.0];
    if (![(_SFDynamicBarAnimator *)self->_dynamicBarAnimator targetState])
    {
      self->_keepBarsMinimized = 1;
    }
  }
}

- (void)_showBarsFromBottomBarTap:(id)tap
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView setSelectedItemState:0 animated:1];
}

- (void)_receivedTouchDown:(id)down
{
  downCopy = down;
  if ([downCopy state] == 3)
  {
    stepperContainer = self->_stepperContainer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__BrowserRootViewController__receivedTouchDown___block_invoke;
    v14[3] = &unk_2781D4D40;
    v14[4] = self;
    [(SFStepperContainer *)stepperContainer hideStepperWithCompletion:v14];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    tabController = [WeakRetained tabController];
    activeTabDocument = [tabController activeTabDocument];
    isBlank = [activeTabDocument isBlank];

    if ((isBlank & 1) == 0)
    {
      [downCopy locationInView:self->_documentAndTopBarsContainerView];
      v11 = v10;
      v13 = v12;
      [(BrowserRootViewController *)self navigationBarFrameInCoordinateSpace:self->_documentAndTopBarsContainerView];
      v15.x = v11;
      v15.y = v13;
      if (!CGRectContainsPoint(v16, v15))
      {
        [(SFWebpageStatusBarView *)self->_statusBarView setSuppressShowingStatusBar:1];
        [(SFWebpageStatusBarView *)self->_statusBarView clearStatus];
        [WeakRetained setOverridesUndoManagerForClosedTabs:0];
      }
    }
  }
}

void __48__BrowserRootViewController__receivedTouchDown___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1008);
  *(v2 + 1008) = 0;
}

- (void)_contentScrollViewReceivedTouchDown:(id)down
{
  if ([down state] == 3)
  {
    addedBookmarkToastViewController = self->_addedBookmarkToastViewController;

    [(AddedBookmarkToastViewController *)addedBookmarkToastViewController dismissToast];
  }
}

- (void)_enterYttriumStateGestureRecognized:(id)recognized
{
  if ([recognized state] == 3)
  {

    [(BrowserRootViewController *)self setInYttriumState:1];
  }
}

- (void)_exitYttriumStateGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if ([recognizedCopy state] >= 3)
  {
    [recognizedCopy velocityInView:self->_documentAndTopBarsContainerView];
    v5 = v4;
    [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
    MaxY = CGRectGetMaxY(v10);
    [recognizedCopy locationInView:self->_documentAndTopBarsContainerView];
    if (MaxY - v7 > 200.0 || v5 < -150.0)
    {
      [(BrowserRootViewController *)self setInYttriumState:0];
    }
  }
}

- (void)_receivedTouchUp:(id)up
{
  if ([up state] == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    [WeakRetained unhideCapsuleFromPageMenuIfNeeded];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_showBarsFromBottomBarRecognizer == recognizerCopy)
  {
    if (self->_keepBarsMinimized || (-[CatalogViewController view](self->_catalogViewController, "view"), v18 = objc_claimAutoreleasedReturnValue(), [v18 window], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
    {
      LOBYTE(self) = 0;
    }

    else
    {
      [(ViewWithCustomNextResponder *)self->_contentContainerView bounds];
      v26 = v25;
      [touchCopy locationInView:self->_contentContainerView];
      v28 = v26 - v27;
      [(BrowserRootViewController *)self maximumHeightObscuredByBottomToolbar];
      LOBYTE(self) = v28 < v29;
    }
  }

  else
  {
    topBar = [(BrowserRootViewController *)self topBar];
    v9 = topBar;
    if (self->_hideNavigationBarGestureRecognizer == recognizerCopy)
    {
      if (topBar)
      {
        [touchCopy locationInView:topBar];
        v21 = v20;
        [v9 bounds];
        LOBYTE(self) = v21 < CGRectGetMaxY(v31);
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }

    else
    {
      view = [(BrowserRootViewController *)self view];
      [view safeAreaInsets];
      v12 = v11;

      view2 = [(BrowserRootViewController *)self view];
      [view2 bounds];
      MaxY = CGRectGetMaxY(v30);
      view3 = [(BrowserRootViewController *)self view];
      [touchCopy locationInView:view3];
      v17 = MaxY - v16;

      if (self->_enterYttriumStateRecognizer == recognizerCopy)
      {
        LODWORD(self) = (v17 >= v12) & ~[(BrowserRootViewController *)self isInYttriumState];
      }

      else if (self->_exitYttriumStateRecognizer == recognizerCopy)
      {
        _shouldInterceptBottomGesture = [(BrowserRootViewController *)self _shouldInterceptBottomGesture];
        v23 = v17 <= fmax(v12, 34.0);
        LOBYTE(self) = _shouldInterceptBottomGesture && v23;
      }

      else
      {
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  hideNavigationBarGestureRecognizer = self->_hideNavigationBarGestureRecognizer;
  if (hideNavigationBarGestureRecognizer == begin)
  {
    view = [(BrowserRootViewController *)self view];
    [(UIPanGestureRecognizer *)hideNavigationBarGestureRecognizer translationInView:view];
    v8 = v7;

    if (v8 <= 0.0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      tabController = [WeakRetained tabController];
      activeTabDocument = [tabController activeTabDocument];
      if ([activeTabDocument canHideToolbar])
      {
        v4 = ![(BrowserRootViewController *)self _interfaceFillsScreen];
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_enterYttriumStateRecognizer == recognizerCopy || self->_exitYttriumStateRecognizer == recognizerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_updateRefreshControl
{
  if (self->_pullToRefreshIsEnabled)
  {
    [(BrowserRootViewController *)self _setUpRefreshControlIfNeeded];
  }

  else
  {
    [(UIScrollView *)self->_scrollView setRefreshControl:0];
  }
}

- (void)stopRefreshing
{
  refreshControl = [(BrowserRootViewController *)self refreshControl];
  if ([refreshControl isRefreshing])
  {
    [refreshControl endRefreshing];
  }
}

- (void)_refreshControlFired:(id)fired
{
  firedCopy = fired;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  [activeTabDocument reloadUserInitiated];

  v8 = dispatch_time(0, 2500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__BrowserRootViewController__refreshControlFired___block_invoke;
  block[3] = &unk_2781D4D40;
  v11 = firedCopy;
  v9 = firedCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

uint64_t __50__BrowserRootViewController__refreshControlFired___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRefreshing];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 endRefreshing];
  }

  return result;
}

- (void)updateOrderedSubviewsForOrderedContainerView:(id)view
{
  v54 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  view = [(BrowserRootViewController *)self view];

  if (view == viewCopy)
  {
    contentContainerView = self->_contentContainerView;
    view2 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController view];
    stepperContainer = self->_stepperContainer;
    view3 = view2;
    view4 = stepperContainer;
    statusBarBackdrop = self->_statusBarBackdrop;
    statusBarView = self->_statusBarView;
    v40 = statusBarBackdrop;
    scrollToTopView = self->_scrollToTopView;
    WeakRetained = objc_loadWeakRetained(&self->_clipperView);

    [viewCopy updateOrderedSubviews:&contentContainerView count:7];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_browserController);
    capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
    v8 = WBSIsEqual();

    isUsingBottomCapsule = [(BrowserRootViewController *)self isUsingBottomCapsule];
    _continuousReadingViewController = [(BrowserRootViewController *)self _continuousReadingViewController];
    contentContainerView = [_continuousReadingViewController view];
    view3 = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
    view4 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
    bannerController = [v6 bannerController];
    statusBarView = [bannerController tabGroupBanner];
    v35 = viewCopy;
    if (isUsingBottomCapsule)
    {
      view5 = 0;
    }

    else
    {
      view5 = [(SFToastViewController *)self->_currentlyPresentedToastViewController view];
    }

    v40 = view5;
    v32 = view5;
    if (v8)
    {
      view6 = [(CatalogViewController *)self->_catalogViewController view];
    }

    else
    {
      view6 = 0;
    }

    topBackdrop = self->_topBackdrop;
    scrollToTopView = view6;
    WeakRetained = topBackdrop;
    v31 = view6;
    if (isUsingBottomCapsule)
    {
      view7 = [(SFToastViewController *)self->_currentlyPresentedToastViewController view];
    }

    else
    {
      view7 = 0;
    }

    v43 = view7;
    v29 = view7;
    if (v8)
    {
      v17 = 0;
    }

    else
    {
      v17 = [(CatalogViewController *)self->_catalogViewController view:view7];
    }

    v18 = self->_statusBarBackdrop;
    v44 = v17;
    v45 = v18;
    v19 = v6;
    tabController = [v6 tabController];
    activeTabDocument = [tabController activeTabDocument];
    sfScribbleControllerIfLoaded = [activeTabDocument sfScribbleControllerIfLoaded];
    overlay = [sfScribbleControllerIfLoaded overlay];
    unifiedBar = self->_unifiedBar;
    v46 = overlay;
    v47 = unifiedBar;
    topAuxiliaryBarsContainerView = self->_topAuxiliaryBarsContainerView;
    navigationBar = self->_navigationBar;
    v49 = topAuxiliaryBarsContainerView;
    tabHoverPreview = self->_tabHoverPreview;
    tabBarDropExpansionView = self->_tabBarDropExpansionView;
    v51 = tabHoverPreview;
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    lockdownStatusBar = [capsuleCollectionView lockdownStatusBar];
    capsuleCollectionView2 = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    minimizedProgressView = [capsuleCollectionView2 minimizedProgressView];

    if ((v8 & 1) == 0)
    {
    }

    if (isUsingBottomCapsule)
    {
    }

    viewCopy = v35;
    if (v8)
    {
    }

    if (!isUsingBottomCapsule)
    {
    }

    [v35 updateOrderedSubviews:&contentContainerView count:18];
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  if (!only)
  {
    self->_verticalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
    self->_horizontalScrollIndicatorBaseInsets = *invalidScrollViewInsets;
  }
}

- (id)preferredFocusEnvironments
{
  array = [MEMORY[0x277CBEB18] array];
  view = [(BrowserRootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  focusedItem = [focusSystem focusedItem];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = focusedItem;
  }

  else
  {
    v9 = 0;
  }

  sidebarViewController = self->_sidebarViewController;
  v11 = v9;
  view2 = [(SidebarViewController *)sidebarViewController view];
  v13 = [v11 isDescendantOfView:view2];

  _unifiedField = [(BrowserRootViewController *)self _unifiedField];
  [array safari_addObjectUnlessNil:_unifiedField];

  if (v13)
  {
    [array safari_addObjectUnlessNil:self->_sidebarViewController];
  }

  [array safari_addObjectUnlessNil:self->_webView];
  [array safari_addObjectUnlessNil:self->_catalogViewController];
  inlineTabBar = [(TabBarManager *)self->_tabBarManager inlineTabBar];
  [array safari_addObjectUnlessNil:inlineTabBar];

  standaloneTabBar = [(TabBarManager *)self->_tabBarManager standaloneTabBar];
  [array safari_addObjectUnlessNil:standaloneTabBar];

  if ((v13 & 1) == 0)
  {
    [array safari_addObjectUnlessNil:self->_sidebarViewController];
  }

  return array;
}

- (void)_prepareBarsForTransitionFromPreviousToolbarPlacement:(int64_t)placement
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__BrowserRootViewController__prepareBarsForTransitionFromPreviousToolbarPlacement___block_invoke;
  v3[3] = &unk_2781D78C8;
  v3[4] = self;
  v3[5] = placement;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __83__BrowserRootViewController__prepareBarsForTransitionFromPreviousToolbarPlacement___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    goto LABEL_5;
  }

  result = [*(a1 + 32) usingUnifiedBar];
  if (result)
  {
    *(*(a1 + 32) + 1344) = 1;
    [*(a1 + 32) layOutTopBars];
    [*(*(a1 + 32) + 1600) layoutIfNeeded];
    result = [*(*(a1 + 32) + 1600) setAlpha:0.0];
    *(*(a1 + 32) + 1344) = 0;
    return result;
  }

  if (*(a1 + 40) != 1)
  {
LABEL_5:
    result = [*(a1 + 32) usingLoweredBar];
    if (result)
    {
      [*(*(a1 + 32) + 1616) beginHidingCapsuleAnimated:0 reason:@"toolbar placement transition"];
      v3 = [*(*(a1 + 32) + 1616) view];
      [v3 layoutIfNeeded];

      [*(a1 + 32) _layOutTopBackdrop];
      v4 = *(*(a1 + 32) + 1616);

      return [v4 endHidingCapsuleAnimated:0 reason:@"toolbar placement transition"];
    }
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v19.receiver = self;
  v19.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (![(BrowserRootViewController *)self isPerformingSizeTransition]|| (width == self->_sizeForCurrentViewSizeTransition.width ? (v8 = height == self->_sizeForCurrentViewSizeTransition.height) : (v8 = 0), !v8))
  {
    v8 = self->_toolbarPlacement == 0;
    ++self->_sizeTransitionCount;
    v9 = !v8;
    self->_sizeForCurrentViewSizeTransition.width = width;
    self->_sizeForCurrentViewSizeTransition.height = height;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    -[BrowserRootViewController _setToolbarPlacement:](self, "_setToolbarPlacement:", [WeakRetained browserViewController:self toolbarPlacementForViewSize:{width, height}]);

    [(BrowserRootViewController *)self _updateToolbarForToolbarPlacementAllowingRemoval:0];
    view = [(BrowserRootViewController *)self view];
    [view bounds];
    v13 = v12;
    v15 = v14;

    v16 = objc_loadWeakRetained(&self->_browserController);
    [v16 rootViewControllerViewWillTransitionToSize:{width, height}];

    [(BrowserRootViewController *)self _prepareBarsForTransitionFromPreviousToolbarPlacement:v9];
    [(BrowserRootViewController *)self _dismissWebSearchTipPopoverIfNeeded];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__BrowserRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v18[3] = &unk_2781D78F0;
    v18[4] = self;
    *&v18[5] = width;
    *&v18[6] = height;
    v18[7] = v13;
    v18[8] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__BrowserRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v17[3] = &unk_2781D7918;
    v17[4] = self;
    v17[5] = v13;
    v17[6] = v15;
    [coordinatorCopy animateAlongsideTransition:v18 completion:v17];
  }
}

void __80__BrowserRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 usingLoweredBar];
  v6 = *(*(a1 + 32) + 1600);
  if (v5)
  {
    [v6 setAlpha:0.0];
  }

  else
  {
    [v6 setAlpha:1.0];
    [*(*(a1 + 32) + 1616) beginHidingCapsuleAnimated:0 reason:@"view size transition"];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1680));
  v7 = objc_loadWeakRetained((*(a1 + 32) + 1696));
  v8 = [v7 view];

  v9 = [*(a1 + 32) view];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = [*(a1 + 32) view];
  [v16 setFrame:{v11, v13, v14, v15}];

  [*(a1 + 32) _setShowingFloatingSidebarButton:0];
  [WeakRetained updateTabGroupButtonsVisibility];
  [WeakRetained rootViewControllerViewTransitionFromSize:1 includingSidebar:objc_msgSend(v4 animated:{"isAnimated"), *(a1 + 56), *(a1 + 64)}];
  v17 = *(*(a1 + 32) + 1688);
  v18 = [v4 isAnimated];

  [v17 reloadNavigationItemAnimated:v18];
  [*(a1 + 32) _updateSidebarStyle];
  [*(*(a1 + 32) + 1352) setTransparent:{objc_msgSend(*(a1 + 32), "_shouldShowSidebarContentDimmingView") ^ 1}];
  v19 = [v8 superview];

  if (v19)
  {
    [v8 layoutIfNeeded];
  }

  [*(a1 + 32) _updateAddedBookmarkToastLayout];
  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 postNotificationName:@"BrowserRootViewControllerDidTransitionSizeNotification" object:*(a1 + 32)];
}

void __80__BrowserRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 1680));
  [*(a1 + 32) _updateToolbarForToolbarPlacementAllowingRemoval:1];
  [*(a1 + 32) _destroySidebarContentDimmingViewIfNeeded];
  --*(*(a1 + 32) + 1184);
  [*(a1 + 32) updateSuppressesStandaloneTabBar];
  v5 = [v4 isAnimated];

  [WeakRetained rootViewControllerViewDidTransitionFromSize:v5 animated:{*(a1 + 40), *(a1 + 48)}];
  [WeakRetained updatePopoverPositionAfterSizeTransition];
  [*(a1 + 32) _setAvoidanceInsetsNeedsUpdate];
  v6 = *(a1 + 32);
  v7 = [v6[202] capsuleCollectionView];
  [v6 _updateAllowsHidingHomeIndicatorMinimized:{objc_msgSend(v7, "selectedItemIsMinimized")}];

  [*(a1 + 32) setNeedsUpdateOfHomeIndicatorAutoHidden];
  [*(a1 + 32) updateAccessibilityIdentifier];
  [*(a1 + 32) _setNeedsUpdateOfMultitaskingDragExclusionRects];
  [*(a1 + 32) _updateTopBarStyles];
  [*(a1 + 32) _updateScrollToTopOverride];
  [*(a1 + 32) setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  [*(a1 + 32) updateUsesWebpageStatusBar];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = BrowserRootViewController;
  [(BrowserRootViewController *)&v8 viewDidAppear:appear];
  self->_canBecomeFirstResponder = 1;
  [(BrowserRootViewController *)self updateAccessibilityIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);
  if ([v5 presentationState] == 1)
  {
  }

  else
  {
    presentationState = [v5 presentationState];

    if (presentationState != 2)
    {
      [WeakRetained updateFirstResponderOrFocus];
    }
  }

  v7 = +[LaunchStateController sharedController];
  [v7 applicationUIDidBecomeActive];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentingViewController = [controllerCopy presentingViewController];

  if (presentingViewController)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BrowserRootViewController presentViewController:controllerCopy animated:v11 completion:?];
    }
  }

  v12 = _Block_copy(completionCopy);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![controllerCopy modalPresentationStyle])
  {
    [controllerCopy setModalPresentationStyle:5];
  }

  if ([(CatalogViewController *)self->_catalogViewController popoverIsShowing]&& (getSKStoreProductViewControllerClass(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__BrowserRootViewController_presentViewController_animated_completion___block_invoke;
    v13[3] = &unk_2781D76E8;
    v14 = controllerCopy;
    selfCopy = self;
    v17 = animatedCopy;
    v16 = v12;
    [(BrowserRootViewController *)self dismissViewControllerAnimated:1 completion:v13];
  }

  else
  {
    [(BrowserRootViewController *)self _sf_presentViewControllerOnTopOfPresentedViewController:controllerCopy animated:animatedCopy completion:v12];
  }
}

id __71__BrowserRootViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1680));
    [WeakRetained cancelFavorites];
  }

  v4 = [*v2 presentingViewController];

  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__BrowserRootViewController_presentViewController_animated_completion___block_invoke_cold_1(v2, a1, v5);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v10.receiver = *(a1 + 40);
  v10.super_class = BrowserRootViewController;
  return objc_msgSendSuper2(&v10, sel_presentViewController_animated_completion_, v6, v7, v8);
}

- (BOOL)viewControllerIsKindOfSKStoreProductViewControllerClass:(id)class
{
  classCopy = class;
  getSKStoreProductViewControllerClass();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = _Block_copy(completionCopy);
  presentedViewController = [(BrowserRootViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    usesPopoverStyleForFavorites = [(CatalogViewController *)self->_catalogViewController usesPopoverStyleForFavorites];

    if (usesPopoverStyleForFavorites)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__BrowserRootViewController_dismissViewControllerAnimated_completion___block_invoke;
      aBlock[3] = &unk_2781D56B0;
      aBlock[4] = self;
      v16 = completionCopy;
      v10 = _Block_copy(aBlock);

      v7 = v10;
    }
  }

  else
  {
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__BrowserRootViewController_dismissViewControllerAnimated_completion___block_invoke_2;
  v13[3] = &unk_2781D5D28;
  v13[4] = self;
  v14 = v7;
  v12.receiver = self;
  v12.super_class = BrowserRootViewController;
  v11 = v7;
  [(BrowserRootViewController *)&v12 dismissViewControllerAnimated:animatedCopy completion:v13];
}

uint64_t __70__BrowserRootViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1688) displayPopover];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __70__BrowserRootViewController_dismissViewControllerAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1680));
  [WeakRetained updateFirstResponderOrFocus];
}

- (void)capsuleNavigationController:(id)controller obscuredInsetsDidChangeWithCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  view = [(BrowserRootViewController *)self view];
  [view setNeedsLayout];

  _activeTabDocumentView = [(BrowserRootViewController *)self _activeTabDocumentView];
  [_activeTabDocumentView beginInteractiveGeometryChanges];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __96__BrowserRootViewController_capsuleNavigationController_obscuredInsetsDidChangeWithCoordinator___block_invoke;
  v14[3] = &unk_2781D7940;
  v14[4] = self;
  v15 = controllerCopy;
  v10 = controllerCopy;
  [coordinatorCopy addAnimations:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__BrowserRootViewController_capsuleNavigationController_obscuredInsetsDidChangeWithCoordinator___block_invoke_2;
  v12[3] = &unk_2781D4D40;
  v13 = _activeTabDocumentView;
  v11 = _activeTabDocumentView;
  [coordinatorCopy addCompletion:v12];
}

void __96__BrowserRootViewController_capsuleNavigationController_obscuredInsetsDidChangeWithCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layOutTopBackdrop];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1512));
  [WeakRetained browserViewControllerDidChangeBarInsets:*(a1 + 32)];

  v3 = *(a1 + 32);
  if (v3[1460] == 1)
  {
    v4 = [*(a1 + 40) capsuleCollectionView];
    v5 = [v4 selectedItemIsMinimized];

    v3 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
      v3[1460] = 0;
      v3 = *(a1 + 32);
    }
  }

  v6 = [v3 view];
  [v6 layoutIfNeeded];
}

- (void)capsuleNavigationBarViewController:(id)controller didCreateNavigationBar:(id)bar
{
  barCopy = bar;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  barManager = [WeakRetained barManager];
  v7 = [[CapsuleNavigationBarRegistration alloc] initWithBar:barCopy barManager:barManager];
  [barManager registerBar:barCopy withToken:v7];
  [barCopy setDelegate:WeakRetained];
}

- (void)capsuleNavigationBarViewControllerDidChangeCapsuleFocus:(id)focus options:(int64_t)options
{
  focusCopy = focus;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__BrowserRootViewController_capsuleNavigationBarViewControllerDidChangeCapsuleFocus_options___block_invoke;
  aBlock[3] = &unk_2781D7968;
  v8 = focusCopy;
  v16 = v8;
  v9 = WeakRetained;
  selfCopy = self;
  optionsCopy = options;
  v20 = (options & 2) == 0;
  v17 = v9;
  v10 = _Block_copy(aBlock);
  [v9 updateTabViewPinchRecognizer];
  tabController = [v9 tabController];
  activeTabDocument = [tabController activeTabDocument];
  isShowingSystemStartPage = [activeTabDocument isShowingSystemStartPage];

  if (isShowingSystemStartPage)
  {
    v10[2](v10);
    if (options)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:v10];
    if (options)
    {
      goto LABEL_7;
    }
  }

  if ([v9 isFavoritesFieldFocused])
  {
    unifiedField = [v8 unifiedField];
    [(CatalogViewController *)self->_catalogViewController setTextField:unifiedField];
    [unifiedField becomeFirstResponder];
  }

LABEL_7:
}

uint64_t __93__BrowserRootViewController_capsuleNavigationBarViewControllerDidChangeCapsuleFocus_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleIsFocused];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 56) & 1;

    return [v3 setFavoritesFieldFocused:1 forVoiceSearch:v5 animated:v4 completionHandler:0];
  }

  else
  {
    [v3 cancelFavoritesAnimated:*(a1 + 64)];
    v7 = *(*(a1 + 48) + 1688);

    return [v7 setTextField:0];
  }
}

- (void)capsuleNavigationBarViewController:(id)controller selectedItemWillChangeToState:(int64_t)state options:(int64_t)options coordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  [(BrowserRootViewController *)self _updateAllowsHidingHomeIndicatorMinimized:state == 1];
  capsuleIsFocused = [controllerCopy capsuleIsFocused];
  if (state != 2)
  {
    if (capsuleIsFocused)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      tabController = [WeakRetained tabController];
      activeTabDocument = [tabController activeTabDocument];
      isShowingSystemStartPage = [activeTabDocument isShowingSystemStartPage];

      if ((isShowingSystemStartPage & 1) == 0)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke;
        v28[3] = &unk_2781D5C60;
        v28[4] = self;
        [coordinatorCopy addAnimations:v28];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke_2;
        v27[3] = &unk_2781D4D40;
        v27[4] = self;
        [coordinatorCopy addCompletion:v27];
      }
    }
  }

  if ([(SFTipsCoordinator *)self->_tipsCoordinator webSearchTipAvailable])
  {
    capsuleIsFocused2 = [controllerCopy capsuleIsFocused];
    if (state == 2 && (capsuleIsFocused2 & 1) == 0)
    {
      if ([(BrowserRootViewController *)self isUsingBottomCapsule])
      {
        webSearchTipViewController = [(SFTipsCoordinator *)self->_tipsCoordinator webSearchTipViewController];
        webSearchTipViewController = self->_webSearchTipViewController;
        self->_webSearchTipViewController = webSearchTipViewController;

        popoverPresentationController = [(UIViewController *)self->_webSearchTipViewController popoverPresentationController];
        [popoverPresentationController _setIgnoresKeyboardNotifications:1];
        [popoverPresentationController setPermittedArrowDirections:2];
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke_3;
        v22[3] = &unk_2781D6060;
        objc_copyWeak(&v25, &location);
        v23 = controllerCopy;
        v20 = popoverPresentationController;
        v24 = v20;
        [coordinatorCopy addCompletion:v22];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      goto LABEL_11;
    }
  }

  if (state == 2)
  {
LABEL_11:
    [(TabSwitcherViewController *)self->_tabSwitcherViewController detachCapsuleForActiveTab];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke_289;
  v21[3] = &unk_2781D7990;
  v21[4] = self;
  v21[5] = state;
  [coordinatorCopy addAnimations:v21];
  [(BrowserRootViewController *)self _updateBottomBarHeightAboveKeyboard];
}

void __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] capsuleCollectionView];
    v4 = [v3 viewForItemAtIndex:{objc_msgSend(v3, "selectedItemIndex")}];
    if (v4)
    {
      [a1[5] setSourceItem:v4];
      [WeakRetained presentViewController:WeakRetained[178] animated:1 completion:0];
    }

    else
    {
      v5 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __114__BrowserRootViewController_capsuleNavigationBarViewController_selectedItemWillChangeToState_options_coordinator___block_invoke_3_cold_1();
      }
    }
  }
}

- (BOOL)capsuleNavigationBarViewControllerAllowsMinimizationGesture:(id)gesture
{
  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if ([WeakRetained isShowingAppInfoOverlay] & 1) != 0 || objc_msgSend(MEMORY[0x277D49A08], "isSolariumEnabled") && (objc_msgSend(WeakRetained, "tabController"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "activeTabDocument"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasEnteredScribbleMode"), v7, v6, (v8) || -[BrowserRootViewController _isShowingFindOnPage](self, "_isShowingFindOnPage"))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    [(UIScrollView *)self->_scrollView zoomScale];
    v12 = v11;
    [(_SFWebView *)self->_webView _initialScaleFactor];
    LOBYTE(v9) = 0;
    v14 = v12 / v13;
    if (v12 / v13 != 0.0)
    {
      capsuleCollectionView = [gestureCopy capsuleCollectionView];
      [capsuleCollectionView obscuredInsetsForState:{objc_msgSend(capsuleCollectionView, "selectedItemState")}];
      v17 = v16;
      v19 = v18;
      [capsuleCollectionView obscuredInsetsForState:1];
      v22 = v17 + v19 - v20 - v21;
      [(UIScrollView *)self->_scrollView contentInset];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(UIScrollView *)self->_scrollView contentSize];
      v32 = round(v31 / v14) - v22;
      [(UIScrollView *)self->_scrollView frame];
      v39.origin.x = v26 + v33;
      v39.origin.y = v24 + v34;
      v39.size.width = v35 - (v26 + v30);
      v39.size.height = v36 - (v24 + v28);
      if (v32 <= round(CGRectGetHeight(v39)) || self->_keepBarsMinimized)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        tabController = [WeakRetained tabController];
        activeTabDocument = [tabController activeTabDocument];
        v9 = [activeTabDocument isBlank] ^ 1;
      }
    }
  }

  return v9;
}

- (void)capsuleNavigationBarViewControllerWillHideKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (!-[BrowserRootViewController _isTrackingDropSession](self, "_isTrackingDropSession") && !-[CatalogViewController completionDetailIsPresented](self->_catalogViewController, "completionDetailIsPresented") && !-[BrowserRootViewController _isShowingFindOnPage](self, "_isShowingFindOnPage") && ([MEMORY[0x277D75658] isInHardwareKeyboardMode] & 1) == 0 && !-[BrowserRootViewController isPerformingSizeTransition](self, "isPerformingSizeTransition"))
  {
    view = [(BrowserRootViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _isKeyWindowScene = [windowScene _isKeyWindowScene];

    if (_isKeyWindowScene)
    {
      if (([keyboardCopy focusingForScribble] & 1) == 0)
      {
        _unifiedField = [(BrowserRootViewController *)self _unifiedField];
        voiceSearchState = [_unifiedField voiceSearchState];

        if (voiceSearchState != 1 && ![(CatalogViewController *)self->_catalogViewController isShowingUniversalSearchPrivacyDetails])
        {
          completionList = [(CatalogViewController *)self->_catalogViewController completionList];
          isPresentingItemDeletionAlert = [completionList isPresentingItemDeletionAlert];

          if ((isPresentingItemDeletionAlert & 1) == 0)
          {
            WeakRetained = objc_loadWeakRetained(&self->_browserController);
            if (([WeakRetained isSuspendedOrSuspending] & 1) == 0)
            {
              rootViewController = [WeakRetained rootViewController];
              presentedViewController = [rootViewController presentedViewController];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [WeakRetained setShouldKeepKeyboardFocused:{objc_msgSend(WeakRetained, "usesNarrowLayout") ^ 1}];
                  [WeakRetained cancelFavorites];
                  [WeakRetained setShouldKeepKeyboardFocused:0];
                }
              }
            }
          }
        }
      }
    }
  }
}

- (id)createToolbarForCapsuleNavigationBarViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    v5 = objc_alloc(MEMORY[0x277CDB6C0]);
    v6 = [MEMORY[0x277D28EF8] themeWithBarTintStyle:{-[_SFBrowserConfiguration barTintStyle](self->_configuration, "barTintStyle")}];
    v7 = [v5 initWithTheme:v6 preferredTraitCollection:0];

    [v7 setHidesBackground:1];
    v8 = [objc_alloc(MEMORY[0x277CDB6B8]) initWithConfiguration:v7];
    v9 = SFCapsuleCollectionViewMaximumContentSizeCategoryForToolbarButtons();
    [(BrowserToolbar *)v8 setMaximumContentSizeCategory:v9];

    [WeakRetained browserViewController:self didCreateToolbar:v8];
  }

  else
  {
    v8 = [[BrowserToolbar alloc] initWithPlacement:1 hideBackground:1];
    [(BrowserToolbar *)v8 setDelegate:self];
    [WeakRetained browserViewController:self didCreateToolbar:v8];
  }

  return v8;
}

- (void)capsuleNavigationBarViewControllerDidTapVoiceSearch:(id)search
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained toggleVoiceSearch];
}

- (BOOL)capsuleNavigationBarViewController:(id)controller shouldUnminimizeOnScrollForScrollView:(id)view
{
  if (self->_keepBarsMinimized)
  {
    return 0;
  }

  else
  {
    return ![(BrowserRootViewController *)self _isShowingFindOnPage:controller];
  }
}

- (id)barManagerForCapsuleNavigationBarViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  barManager = [WeakRetained barManager];

  return barManager;
}

- (void)capsuleCollectionView:(id)view willEndSelectionGestureWithCoordinator:(id)coordinator
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__BrowserRootViewController_capsuleCollectionView_willEndSelectionGestureWithCoordinator___block_invoke;
  v7[3] = &unk_2781D5C60;
  v7[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy addAnimations:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__BrowserRootViewController_capsuleCollectionView_willEndSelectionGestureWithCoordinator___block_invoke_2;
  v6[3] = &unk_2781D4D40;
  v6[4] = self;
  [coordinatorCopy addCompletion:v6];
}

void __90__BrowserRootViewController_capsuleCollectionView_willEndSelectionGestureWithCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1680));
  v1 = [WeakRetained barManager];
  [v1 performCoalescedUpdatesNowAnimated:1];
}

- (void)capsuleCollectionViewDidUpdateMinimizationGesture:(id)gesture
{
  [(BrowserRootViewController *)self _layOutTopBackdrop];
  [(BrowserRootViewController *)self layOutTopBars];
  [(BrowserRootViewController *)self updateWebViewSizeAttributes];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewControllerDidChangeBarInsets:self];
}

- (void)capsuleCollectionView:(id)view selectionGestureDidChangeFromAxis:(unint64_t)axis
{
  [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:1, axis];

  [(BrowserRootViewController *)self _updateScrollPocketForCapsuleView];
}

- (void)setCatalogViewController:(id)controller
{
  controllerCopy = controller;
  catalogViewController = self->_catalogViewController;
  if (catalogViewController != controllerCopy)
  {
    v8 = controllerCopy;
    if (catalogViewController)
    {
      [(CatalogViewController *)catalogViewController setStartPageScrollObserver:0];
      [(CatalogViewController *)self->_catalogViewController willMoveToParentViewController:0];
      [(CatalogViewController *)self->_catalogViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_catalogViewController, controller);
    self->_willDismissCatalogViewController = 0;
    if (self->_catalogViewController)
    {
      [(UIViewController *)self->_documentAndTopBarsContainerViewController addChildViewController:?];
      [(CatalogViewController *)self->_catalogViewController didMoveToParentViewController:self->_documentAndTopBarsContainerViewController];
      capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
      [(CatalogViewController *)self->_catalogViewController setStartPageScrollObserver:capsuleCollectionView];

      [(CatalogViewController *)self->_catalogViewController reloadNavigationItemAnimated:0];
      [(BrowserRootViewController *)self _updateTopScrollEdgeEffectStyle];
    }

    -[BrowserRootViewController setNeedsPreferredStatusBarUpdateAfterCommitAnimated:](self, "setNeedsPreferredStatusBarUpdateAfterCommitAnimated:", [MEMORY[0x277D75D18] areAnimationsEnabled]);
    controllerCopy = v8;
  }
}

- (id)_unifiedField
{
  browserController = [(BrowserRootViewController *)self browserController];
  unifiedField = [browserController unifiedField];

  return unifiedField;
}

- (void)tabCollectionViewWillPresent:(id)present
{
  if (self->_tabSwitcherViewController == present)
  {
    [(BrowserRootViewController *)self _tabSwitcherVisibilityDidChange:1];
  }

  [(BrowserRootViewController *)self safari_updateApplicationBackgroundStyle];
  [(BrowserRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:1];
  [(BrowserRootViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
  view = [(BrowserRootViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)tabCollectionViewWillDismiss:(id)dismiss
{
  view = [(BrowserRootViewController *)self view];
  [view setNeedsLayout];

  [(BrowserRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];

  [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:1];
}

- (void)tabCollectionViewDidCancelDismissal:(id)dismissal
{
  view = [(BrowserRootViewController *)self view];
  [view setNeedsLayout];

  [(BrowserRootViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];

  [(BrowserRootViewController *)self setNeedsPreferredStatusBarUpdateAfterCommitAnimated:1];
}

- (void)tabCollectionViewDidDismiss:(id)dismiss
{
  documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
  dismissCopy = dismiss;
  [(SFOrderedContainerView *)documentAndTopBarsContainerView setHidden:0];
  view = [(BrowserRootViewController *)self view];
  [view setClipsToBounds:1];
  tabSwitcherViewController = self->_tabSwitcherViewController;

  if (tabSwitcherViewController == dismissCopy)
  {
    [(BrowserRootViewController *)self _tabSwitcherVisibilityDidChange:0];
  }

  [(BrowserRootViewController *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:1];

  if ([MEMORY[0x277D75D18] _isInAnimationBlock])
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__BrowserRootViewController_tabCollectionViewDidDismiss___block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(BrowserRootViewController *)self safari_updateApplicationBackgroundStyle];
  }
}

- (void)tabBarDropExpansionView:(id)view didBeginTrackingDropSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained beginTrackingDropSessionForTabBarVisibility:sessionCopy];
}

- (void)tabBarDropExpansionView:(id)view didEndTrackingDropSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained endTrackingDropSessionForTabBarVisibility:sessionCopy];
}

- (void)displayHostedScreenTimeView
{
  parentViewController = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController parentViewController];
  documentAndTopBarsContainerViewController = self->_documentAndTopBarsContainerViewController;

  if (parentViewController == documentAndTopBarsContainerViewController)
  {
    documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
    view = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
    [(SFOrderedContainerView *)documentAndTopBarsContainerView _sf_addEdgeMatchedSubview:view];
  }

  else
  {
    [(UIViewController *)self->_documentAndTopBarsContainerViewController addChildViewController:self->_screenTimeOverlayViewController];
    v5 = self->_documentAndTopBarsContainerView;
    view2 = [(SFScreenTimeOverlayViewController *)self->_screenTimeOverlayViewController view];
    [(SFOrderedContainerView *)v5 _sf_addEdgeMatchedSubview:view2];

    screenTimeOverlayViewController = self->_screenTimeOverlayViewController;
    v8 = self->_documentAndTopBarsContainerViewController;

    [(SFScreenTimeOverlayViewController *)screenTimeOverlayViewController didMoveToParentViewController:v8];
  }
}

- (SFScrollIndicatorInsets)scrollIndicatorInsetsForTabDocumentView:(SEL)view
{
  [(_SFWebView *)self->_webView bounds];
  [(BrowserRootViewController *)self obscuredInsetsForRect:self->_webView inCoordinateSpace:?];
  v7 = v6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewController:self adjustedTopObscuredInsetForBanners:v7];

  [MEMORY[0x277D49A08] isSolariumEnabled];
  view = [(BrowserRootViewController *)self view];
  [(BrowserRootViewController *)self keyboardInsetInCoordinateSpace:view];

  [(BrowserRootViewController *)self _baseInsetsForVerticalScrollIndicator];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(BrowserRootViewController *)self _baseInsetsForHorizontalScrollIndicator];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ([MEMORY[0x277D759D8] _sf_baseVerticalScrollIndicatorInsetsExtendFullHeight:{v11, v13, v15, v17}] && objc_msgSend(MEMORY[0x277D759D8], "_sf_baseHorizontalScrollIndicatorInsetsExtendFullWidth:", v19, v21, v23, v25))
  {
    [(BrowserRootViewController *)self _webViewSafeAreaInsets];
    result = UIEdgeInsetsMax();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
  }

  else
  {
    UIEdgeInsetsMax();
    v59 = v36;
    v60 = v35;
    v57 = v38;
    v58 = v37;
    view2 = [(BrowserRootViewController *)self view];
    [view2 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    view3 = [(BrowserRootViewController *)self view];
    [(BrowserRootViewController *)self obscuredInsetsWithComponents:2 forRect:view3 inCoordinateSpace:v41, v43, v45, v47];
    v50 = v49;

    isSolariumEnabled = [MEMORY[0x277D49A08] isSolariumEnabled];
    v52 = 0.0;
    if (!isSolariumEnabled)
    {
      v52 = v50;
    }

    v53 = fmax(v52, v23);
    view4 = [(BrowserRootViewController *)self view];
    [view4 safeAreaInsets];
    v56 = v55;

    if (v53 >= v56)
    {
      UIEdgeInsetsReplace();
    }

    result = UIEdgeInsetsMax();
    v32 = v59;
    v31 = v60;
    v34 = v57;
    v33 = v58;
  }

  retstr->var0.top = v27;
  retstr->var0.left = v28;
  retstr->var0.bottom = v29;
  retstr->var0.right = v30;
  retstr->var1.top = v31;
  retstr->var1.left = v32;
  retstr->var1.bottom = v33;
  retstr->var1.right = v34;
  return result;
}

- (UIEdgeInsets)obscuredScrollViewInsetsConsideringTargetState:(BOOL)state insetsDueToSafeArea:(UIEdgeInsets *)area
{
  toolbarPlacement = self->_toolbarPlacement;
  targetState = [(_SFDynamicBarAnimator *)self->_dynamicBarAnimator targetState];
  if (toolbarPlacement == 1 || !state)
  {
    [(_SFWebView *)self->_webView bounds];
    [(BrowserRootViewController *)self obscuredInsetsForRect:self->_webView inCoordinateSpace:?];
  }

  else
  {
    v9 = targetState;
    [(_SFWebView *)self->_webView bounds];
    webView = self->_webView;
    if (v9)
    {
      [(BrowserRootViewController *)self maximumObscuredInsetsForRect:webView inCoordinateSpace:0 ignoreBarsMinimized:?];
    }

    else
    {
      [(BrowserRootViewController *)self minimumObscuredInsetsForRect:webView inCoordinateSpace:?];
    }
  }

  v13 = v11;
  v14 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewController:self adjustedTopObscuredInsetForBanners:v13];
  [WeakRetained browserViewController:self adjustedBottomObscuredInset:v14];
  if (area)
  {
    [(BrowserRootViewController *)self _webViewSafeAreaInsets];
    [(BrowserRootViewController *)self _edgesSafeAreaShouldAffectObscuredInsets];
    UIEdgeInsetsMax();
    UIEdgeInsetsSubtract();
    area->top = v16;
    area->left = v17;
    area->bottom = v18;
    area->right = v19;
  }

  [(BrowserRootViewController *)self webViewEffectiveSafeAreaInsets];
  UIEdgeInsetsMax();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.right = v31;
  result.bottom = v30;
  result.left = v29;
  result.top = v28;
  return result;
}

- (BOOL)shouldFreezeWebViewUpdatesForTabDocumentView:(id)view
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained browserViewControllerShouldFreezeWebViewUpdatesForSizeTransition:selfCopy];

  return selfCopy;
}

- (BOOL)inElementFullscreenForTabDocumentView:(id)view
{
  webView = [view webView];
  v4 = [TabDocument tabDocumentForWKWebView:webView];

  LOBYTE(webView) = [v4 inElementFullscreen];
  return webView;
}

- (UIEdgeInsets)obscuredScrollViewInsetsForTabDocumentView:(id)view unobscuredSafeAreaInsets:(UIEdgeInsets *)insets
{
  [(BrowserRootViewController *)self obscuredScrollViewInsetsConsideringTargetState:0 insetsDueToSafeArea:insets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)scrollViewContentInsetAdjustmentsForTabDocumentView:(id)view
{
  top = self->_contentInsetForContentFrame.top;
  left = self->_contentInsetForContentFrame.left;
  bottom = self->_contentInsetForContentFrame.bottom;
  right = self->_contentInsetForContentFrame.right;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browserViewController:self adjustedBottomContentInset:bottom];
  v10 = v9;

  if (self->_toolbarPlacement == 1 && !self->_keepBarsMinimized)
  {
    [(BrowserRootViewController *)self _bottomBarOffset];
    v10 = v10 - v11;
  }

  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self obscuredInsetsWithComponents:16 forRect:self->_documentAndTopBarsContainerView inCoordinateSpace:?];
  v13 = fmax(v10, 0.0) - v12;
  v14 = top;
  v15 = left;
  v16 = right;
  result.right = v16;
  result.bottom = v13;
  result.left = v15;
  result.top = v14;
  return result;
}

- (unint64_t)tabDocumentView:(id)view contentOffsetAdjustmentEdgeWithPreviousContentInset:(UIEdgeInsets)inset
{
  top = inset.top;
  viewCopy = view;
  if ([(UIScrollView *)self->_scrollView isDragging])
  {
    v7 = 0;
  }

  else if ([(CapsuleNavigationBarViewController *)self->_capsuleViewController performingWebViewTapTransition])
  {
    [viewCopy scrollDistance];
    v7 = v8 < 0.0;
  }

  else if ([(CapsuleNavigationBarViewController *)self->_capsuleViewController transitioningToNormalStateForKeyboardDismissal])
  {
    v7 = 4;
  }

  else
  {
    capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
    if (capsuleCollectionView)
    {
      if ([viewCopy isShowingReader])
      {
        [viewCopy readerWebView];
      }

      else
      {
        [viewCopy webView];
      }
      v10 = ;
      scrollView = [v10 scrollView];

      if (([scrollView isTracking] & 1) != 0 || (objc_msgSend(scrollView, "contentOffset"), v12 != -top))
      {
        if ([capsuleCollectionView isTransitioningToNormalStateForTapInBottomRegion])
        {
          v7 = 4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = [(_SFNavigationBar *)self->_navigationBar isSendingBarMetricsChangeNotification]|| self->_togglingTabBar;
    }
  }

  return v7;
}

- (id)snapshotContentProviderForTab:(id)tab
{
  tabCopy = tab;
  if ([(BrowserRootViewController *)self isPerformingSizeTransition])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BrowserRootViewController snapshotContentProviderForTab:];
    }

LABEL_4:
    v6 = 0;
    goto LABEL_27;
  }

  if (([tabCopy isBlank] & 1) == 0)
  {
    if ([tabCopy isHibernated])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BrowserRootViewController snapshotContentProviderForTab:];
      }

      goto LABEL_4;
    }

    if (([tabCopy contentIsReadyForSnapshot] & 1) == 0)
    {
      v27 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [BrowserRootViewController snapshotContentProviderForTab:];
      }

      goto LABEL_4;
    }
  }

  screenTimeOverlayViewController = [(BrowserRootViewController *)self screenTimeOverlayViewController];
  if (![tabCopy shouldObscureForDigitalHealth] || !screenTimeOverlayViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    catalogViewController = [(BrowserRootViewController *)self catalogViewController];
    if (![tabCopy isShowingSystemStartPage] || (objc_msgSend(tabCopy, "isPreparingForNewUserActivity") & 1) != 0)
    {
      frontWebView = [tabCopy frontWebView];
      if (frontWebView)
      {
        if (([tabCopy isActive] & 1) == 0)
        {
          tabController = [WeakRetained tabController];
          activeTabDocument = [tabController activeTabDocument];
          webView = [activeTabDocument webView];
          [webView bounds];
          [frontWebView setBounds:?];
        }

        [frontWebView bounds];
        [(BrowserRootViewController *)self maximumObscuredInsetsForRect:frontWebView inCoordinateSpace:0 ignoreBarsMinimized:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [frontWebView bounds];
        v6 = [[WebViewSnapshotContentProvider alloc] initWithWebView:frontWebView contentFrame:v18 + v23, v16 + v24, v25 - (v18 + v22), v26 - (v16 + v20)];
      }

      else
      {
        v28 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [BrowserRootViewController snapshotContentProviderForTab:];
        }

        v6 = 0;
      }

      goto LABEL_25;
    }

    if ([WeakRetained favoritesAreEmbedded])
    {
      tabGroupTab = [tabCopy tabGroupTab];
      tabGroupUUID = [tabGroupTab tabGroupUUID];
      tabController2 = [WeakRetained tabController];
      activeTabGroupUUID = [tabController2 activeTabGroupUUID];
      v34 = WBSIsEqual();

      if (v34)
      {
        v6 = catalogViewController;
LABEL_25:

        goto LABEL_26;
      }

      v36 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [BrowserRootViewController snapshotContentProviderForTab:];
      }
    }

    else
    {
      v35 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [BrowserRootViewController snapshotContentProviderForTab:];
      }
    }

    v6 = 0;
    goto LABEL_25;
  }

  v6 = screenTimeOverlayViewController;
LABEL_26:

LABEL_27:

  return v6;
}

- (void)_updateScrollPocketsAreHidden
{
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  -[BrowserRootViewController _updateScrollPocketsAreHiddenForCapsuleViewState:](self, "_updateScrollPocketsAreHiddenForCapsuleViewState:", [capsuleCollectionView selectedItemState]);
}

- (void)_updateScrollPocketsAreHiddenForCapsuleViewState:(int64_t)state
{
  v4 = state == 1 && [(CapsuleNavigationBarViewController *)self->_capsuleViewController shouldHideBottomScrollPocketWhenMinimized];
  bottomEdgeEffect = [(UIScrollView *)self->_scrollView bottomEdgeEffect];
  [bottomEdgeEffect setHidden:v4];
}

- (void)_updateTopScrollEdgeEffectStyle
{
  if ([(BrowserRootViewController *)self usingUnifiedBar])
  {
    [MEMORY[0x277D759B8] hardStyle];
  }

  else
  {
    [MEMORY[0x277D759B8] softStyle];
  }
  v4 = ;
  [(CatalogViewController *)self->_catalogViewController setTopScrollEdgeEffectStyle:v4];
  topEdgeEffect = [(UIScrollView *)self->_scrollView topEdgeEffect];
  [topEdgeEffect setStyle:v4];
}

- (CGSize)contentSizeForSnapshotGenerator:(id)generator
{
  documentAndTopBarsContainerView = [(BrowserRootViewController *)self documentAndTopBarsContainerView];
  [documentAndTopBarsContainerView bounds];
  [(BrowserRootViewController *)self maximumObscuredInsetsForRect:documentAndTopBarsContainerView inCoordinateSpace:0 ignoreBarsMinimized:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [documentAndTopBarsContainerView bounds];
  v14 = v13 - (v8 + v12);
  v16 = v15 - (v6 + v10);

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (double)topBarsHeightForSnapshotGenerator:(id)generator
{
  [(BrowserRootViewController *)self contentFrameInPageView];

  return CGRectGetMinY(*&v3);
}

- (int64_t)preferredLeadingStatusBarStyle
{
  if (!self->_showingSidebar)
  {
    return 4;
  }

  [(_SFBrowserConfiguration *)self->_configuration barTintStyle:v2];
  if (_SFIsDarkTintStyle())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)webSearchTipDidBecomeUnavailable
{
  [(BrowserRootViewController *)self _dismissWebSearchTipPopoverIfNeeded];
  catalogViewController = self->_catalogViewController;

  [(CatalogViewController *)catalogViewController dismissWebSearchTipIfNeeded];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  WeakRetained = objc_loadWeakRetained(&self->_privateBrowsingExplanationSheet);
  if (presentedViewController == WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_browserController);
    shouldShowTurnOnLockedPrivateBrowsingSheet = [v5 shouldShowTurnOnLockedPrivateBrowsingSheet];

    if (!shouldShowTurnOnLockedPrivateBrowsingSheet)
    {
      return;
    }

    presentedViewController = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [presentedViewController setBool:1 forKey:*MEMORY[0x277D4A1B8]];
  }

  else
  {
  }
}

- (void)tearDownTabSwitcherViewController
{
  [(BrowserRootViewController *)self _uninstallTabSwitcherViewController];
  contentContainerView = self->_contentContainerView;
  pinchGestureRecognizer = [(TabSwitcherViewController *)self->_tabSwitcherViewController pinchGestureRecognizer];
  [(ViewWithCustomNextResponder *)contentContainerView removeGestureRecognizer:pinchGestureRecognizer];

  v5 = self->_contentContainerView;
  panGestureRecognizerForTrackingPinchTranslationVelocity = [(TabSwitcherViewController *)self->_tabSwitcherViewController panGestureRecognizerForTrackingPinchTranslationVelocity];
  [(ViewWithCustomNextResponder *)v5 removeGestureRecognizer:panGestureRecognizerForTrackingPinchTranslationVelocity];

  tabSwitcherViewController = self->_tabSwitcherViewController;
  self->_tabSwitcherViewController = 0;
}

- (void)_installTabSwitcherViewController
{
  [(UIViewController *)self->_contentContainerViewController addChildViewController:self->_tabSwitcherViewController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__BrowserRootViewController__installTabSwitcherViewController__block_invoke;
  v3[3] = &unk_2781D4D40;
  v3[4] = self;
  [MEMORY[0x277D75D18] safari_performWithoutRetargetingAnimations:v3];
  [(TabSwitcherViewController *)self->_tabSwitcherViewController didMoveToParentViewController:self->_contentContainerViewController];
}

void __62__BrowserRootViewController__installTabSwitcherViewController__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  v4 = [*(v2 + 1704) view];
  [v3 insertSubview:v4 belowSubview:*(*(a1 + 32) + 1240)];
}

- (void)_uninstallTabSwitcherViewController
{
  [(TabSwitcherViewController *)self->_tabSwitcherViewController willMoveToParentViewController:0];
  view = [(TabSwitcherViewController *)self->_tabSwitcherViewController view];
  [view removeFromSuperview];

  tabSwitcherViewController = self->_tabSwitcherViewController;

  [(TabSwitcherViewController *)tabSwitcherViewController removeFromParentViewController];
}

- (void)_tabSwitcherVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView setHidden:?];
  if (changeCopy)
  {

    [(BrowserRootViewController *)self _installTabSwitcherViewController];
  }

  else
  {
    [(BrowserRootViewController *)self _uninstallTabSwitcherViewController];
    if ([(TabSwitcherViewController *)self->_tabSwitcherViewController tabOverviewIsVisible])
    {
      v5 = WBS_LOG_CHANNEL_PREFIXTabView();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [BrowserRootViewController _tabSwitcherVisibilityDidChange:];
      }
    }
  }
}

- (id)borrowCapsuleViewForTab:(id)tab
{
  tabCopy = tab;
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  v6 = capsuleCollectionView;
  if (!capsuleCollectionView || [capsuleCollectionView selectedItemState] || objc_msgSend(v6, "layoutStyle") == 1 && !objc_msgSend(v6, "selectionGestureState") || (v9 = -[CapsuleNavigationBarViewController collectionViewIndexOfTab:](self->_capsuleViewController, "collectionViewIndexOfTab:", tabCopy), v9 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = 0;
  }

  else
  {
    v10 = [v6 detachViewForItemAtIndex:v9];
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277D28BE8]);
      [v6 capsuleFrame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      view = [(BrowserRootViewController *)self view];
      [view bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      capsuleCollectionViewLayout = [(BrowserRootViewController *)self capsuleCollectionViewLayout];
      v7 = [v11 initWithView:v10 capsuleReferenceFrame:WBSIsEqual() referenceBounds:v13 shouldClipView:{v15, v17, v19, v22, v24, v26, v28}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)relinquishBorrowedCapsuleView:(id)view
{
  capsuleViewController = self->_capsuleViewController;
  viewCopy = view;
  capsuleCollectionView = [(CapsuleNavigationBarViewController *)capsuleViewController capsuleCollectionView];
  [capsuleCollectionView reattachView:viewCopy];
}

- (void)tabOverviewVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  v12 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXTabView();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"not visible";
    if (changeCopy)
    {
      v6 = @"visible";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_DEFAULT, "Tab overview changed to %@", &v10, 0xCu);
  }

  if (changeCopy)
  {
    v7 = 0.0;
    if (![(TabSwitcherViewController *)self->_tabSwitcherViewController presentationState])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXTabView();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BrowserRootViewController tabOverviewVisibilityDidChange:];
      }
    }
  }

  else
  {
    v7 = 0.1;
  }

  capsuleCollectionView = [(CapsuleNavigationBarViewController *)self->_capsuleViewController capsuleCollectionView];
  [capsuleCollectionView setUserInteractionEnabled:changeCopy ^ 1];
  [capsuleCollectionView setShouldDismissContent:changeCopy withDelay:v7];
}

- (void)toggleSidebar
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained toggleBookmarksPresentation];
}

- (id)showTabGroupPicker:(id)picker
{
  pickerCopy = picker;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained showTabGroupPicker:pickerCopy];

  return v6;
}

- (void)takeOwnershipOfStepperContainer:(id)container
{
  containerCopy = container;
  if (!self->_stepperContainer)
  {
    v8 = containerCopy;
    objc_storeStrong(&self->_stepperContainer, container);
    view = [(BrowserRootViewController *)self view];
    [v8 bounds];
    [view convertRect:v8 fromView:?];
    [v8 setFrame:?];

    view2 = [(BrowserRootViewController *)self view];
    [view2 addSubview:v8];

    containerCopy = v8;
  }
}

- (void)presentToastForAddedBookmark:(id)bookmark suggestedFolders:(id)folders
{
  bookmarkCopy = bookmark;
  foldersCopy = folders;
  [(BrowserRootViewController *)self _uninstallAddedBookmarkToastViewController];
  objc_initWeak(&location, self);
  v8 = [AddedBookmarkToastViewController alloc];
  mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __75__BrowserRootViewController_presentToastForAddedBookmark_suggestedFolders___block_invoke;
  v17 = &unk_2781D5598;
  objc_copyWeak(&v18, &location);
  v10 = [(AddedBookmarkToastViewController *)v8 initWithBookmark:bookmarkCopy bookmarkCollection:mainBookmarkCollection dismissCompletionHandler:&v14];
  addedBookmarkToastViewController = self->_addedBookmarkToastViewController;
  self->_addedBookmarkToastViewController = v10;

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabGroupProvider = [WeakRetained tabGroupProvider];
  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController setTabGroupProvider:tabGroupProvider];

  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController setSuggestedFolders:foldersCopy];
  [(BrowserRootViewController *)self _installAddedBookmarkToastViewController];
  [(BrowserRootViewController *)self _updateAddedBookmarkToastLayout];
  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController presentToast];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __75__BrowserRootViewController_presentToastForAddedBookmark_suggestedFolders___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _uninstallAddedBookmarkToastViewController];
}

- (void)_installAddedBookmarkToastViewController
{
  [(UIViewController *)self->_documentAndTopBarsContainerViewController addChildViewController:self->_addedBookmarkToastViewController];
  [(SFOrderedContainerView *)self->_documentAndTopBarsContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  view2 = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [view2 setAutoresizingMask:18];

  documentAndTopBarsContainerView = self->_documentAndTopBarsContainerView;
  view3 = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [(SFOrderedContainerView *)documentAndTopBarsContainerView addSubview:view3];

  addedBookmarkToastViewController = self->_addedBookmarkToastViewController;

  [(AddedBookmarkToastViewController *)addedBookmarkToastViewController didMoveToParentViewController:self];
}

- (void)_uninstallAddedBookmarkToastViewController
{
  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController willMoveToParentViewController:0];
  view = [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController view];
  [view removeFromSuperview];

  [(AddedBookmarkToastViewController *)self->_addedBookmarkToastViewController removeFromParentViewController];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  barManager = [WeakRetained barManager];
  [barManager visibleBarItemsNeedUpdate];
}

- (SidebarUIProxyDelegate)sidebarUIProxyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sidebarUIProxyDelegate);

  return WeakRetained;
}

- (BrowserRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)clipperView
{
  WeakRetained = objc_loadWeakRetained(&self->_clipperView);

  return WeakRetained;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (TabThumbnailCollectionView)tabThumbnailCollectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_tabThumbnailCollectionView);

  return WeakRetained;
}

- (void)presentViewController:(void *)a1 animated:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12 = [a1 presentingViewController];
  OUTLINED_FUNCTION_2_3(&dword_215819000, v6, v7, "Trying to present %{public}@ from %{public}@ (pre-dismiss) when it is already presented by: %{public}@", v8, v9, v10, v11, 2u);
}

void __71__BrowserRootViewController_presentViewController_animated_completion___block_invoke_cold_1(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v13 = [*a1 presentingViewController];
  OUTLINED_FUNCTION_2_3(&dword_215819000, v7, v8, "Trying to present %{public}@ from %{public}@ (post-dismiss) when it is already presented by: %{public}@", v9, v10, v11, v12, 2u);
}

@end