@interface CKBrowserSwitcherViewController
- (BOOL)_currentPluginIsJellyfish;
- (BOOL)_hasLandscapeGutters;
- (BOOL)_pluginHasLiveBrowserViewInSwitcher:(id)switcher;
- (BOOL)_shouldLimitExpandGestureToGrabber;
- (BOOL)_switchToVisiblePluginWithIdentifier:(id)identifier;
- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)success;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isBrowserSwitcherFirstLaunch;
- (BOOL)shouldAlwaysShowAppTitle;
- (CGRect)cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:(id)coordinator;
- (CGRect)restingGrabberFrame;
- (CGSize)_browserSize;
- (CGSize)browserTransitionCoordinator:(id)coordinator preferredSizeForBrowser:(id)browser;
- (CKAppGrabberView)grabberView;
- (CKBrowserSwitcherViewController)initWithConversation:(id)conversation sendDelegate:(id)delegate presentingViewController:(id)controller;
- (CKBrowserSwitcherViewControllerDelegate)delegate;
- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)result maxOffset:(double)offset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside;
- (double)browserTransitionCoordinatorCollapsedContentHeight:(id)height;
- (double)restingContainerViewOriginY;
- (id)activeBrowserView;
- (id)appIconOverride;
- (id)appTitleOverride;
- (id)traitCollection;
- (id)transitionsPresentationViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleRemoteViewControllerConnectionInterrupted:(id)interrupted;
- (void)_handleVisibleSwitcherPluginsChanged:(id)changed;
- (void)_insertCurrentBrowserAndRemoveOldBrowsersIfNeeded;
- (void)_loadBrowserForBalloonPlugin:(id)plugin datasource:(id)datasource;
- (void)_performAfterFirstLayout:(id)layout;
- (void)_removeBrowserFromViewHierarchy:(id)hierarchy;
- (void)_removeBrowserWithPluginIdentifierFromViewHierarchy:(id)hierarchy;
- (void)_snapshotCurrentViewController;
- (void)_transitionSnapshotViewToBrowserView;
- (void)_transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay:(id)display;
- (void)_updateActiveBrowserAlphaStateOnInsertForCurrentController:(id)controller currentView:(id)view;
- (void)_updateActiveBrowserTimestampForCurrentBalloonPlugin;
- (void)_updateBrowserViewPositionForPluginAndInsertIfNecessary:(id)necessary;
- (void)_updateCurrentBrowserSnapshotIfPossible;
- (void)_updateVisibleBrowserView;
- (void)animateInCompactWithCompletion:(id)completion;
- (void)animateOutCompactWithCompletion:(id)completion;
- (void)appGrabberViewCloseButtonTapped:(id)tapped;
- (void)browserTransitionCoordinator:(id)coordinator didSwitchToPlugin:(id)plugin;
- (void)browserTransitionCoordinator:(id)coordinator didTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation;
- (void)browserTransitionCoordinator:(id)coordinator expandedStateDidChange:(BOOL)change withReason:(int64_t)reason;
- (void)browserTransitionCoordinator:(id)coordinator hasUpdatedLastTouchDate:(id)date;
- (void)browserTransitionCoordinator:(id)coordinator willPresentBrowserModally:(id)modally;
- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorWantsPresentationOfAppManager:(id)manager;
- (void)browserTransitionCoordinatorWantsPresentationOfAppStore:(id)store;
- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason;
- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason;
- (void)cleanupExpandAnimatorState;
- (void)dealloc;
- (void)dragManagerDidEndDragging:(id)dragging;
- (void)dragManagerDidStartDrag:(id)drag;
- (void)dragManagerWillStartDrag:(id)drag;
- (void)expandGestureTouchMoved:(id)moved;
- (void)handleExpandButton:(id)button;
- (void)layoutMarginsDidChange;
- (void)loadView;
- (void)reinsertAppGrabberViewForBrowserTransitionCoordinator:(id)coordinator;
- (void)reverseAndCleanupExpandAnimator;
- (void)saveSnapshotForCurrentBrowserViewControllerIfPossible;
- (void)setBalloonPlugin:(id)plugin;
- (void)setBrowserViewReadyForUserInteraction:(BOOL)interaction;
- (void)setCurrentViewController:(id)controller;
- (void)setCurrentVisiblePlugin:(id)plugin;
- (void)setupPausedExpandAnimatorIfNeeded;
- (void)showBrowserFullscreenModalForPlugin:(id)plugin datasource:(id)datasource preferredContentSize:(CGSize)size;
- (void)showBrowserInSwitcherForPlugin:(id)plugin datasource:(id)datasource reloadData:(BOOL)data;
- (void)stopExpandAnimatorAndCleanupState;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadRemoteViewControllers;
- (void)updateGrabberTitleAndIconForPlugin:(id)plugin;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKBrowserSwitcherViewController

- (void)dealloc
{
  [(CKBrowserSwitcherViewController *)self unloadRemoteViewControllers];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  [transitionCoordinator setDelegate:0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:0];

  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator stopAnimation:1];
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v6 dealloc];
}

- (CKBrowserSwitcherViewController)initWithConversation:(id)conversation sendDelegate:(id)delegate presentingViewController:(id)controller
{
  conversationCopy = conversation;
  delegateCopy = delegate;
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = CKBrowserSwitcherViewController;
  v11 = [(CKBrowserSwitcherViewController *)&v22 init];
  if (v11)
  {
    v12 = objc_alloc_init(CKBrowserTransitionCoordinator);
    [(CKBrowserTransitionCoordinator *)v12 setConversation:conversationCopy];
    [(CKBrowserTransitionCoordinator *)v12 setSendDelegate:delegateCopy];
    [(CKBrowserTransitionCoordinator *)v12 setPresentingViewController:controllerCopy];
    [(CKBrowserSwitcherViewController *)v11 setTransitionCoordinator:v12];
    [(CKBrowserTransitionCoordinator *)v12 setDelegate:v11];
    [(CKBrowserSwitcherViewController *)v11 setBrowserViewReadyForUserInteraction:0];
    [(CKBrowserSwitcherViewController *)v11 setAllowFooterLabelUpdates:0];
    if (!v11->_livePluginIdentifierToTimestampMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      livePluginIdentifierToTimestampMap = v11->_livePluginIdentifierToTimestampMap;
      v11->_livePluginIdentifierToTimestampMap = Mutable;
    }

    [(CKBrowserSwitcherViewController *)v11 setTransitioningFromSnapshotToLiveView:0];
    [(CKBrowserSwitcherViewController *)v11 setAllowPluginLaunchNotifications:1];
    objc_initWeak(&location, v11);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__CKBrowserSwitcherViewController_initWithConversation_sendDelegate_presentingViewController___block_invoke;
    v19[3] = &unk_1E72F3B70;
    objc_copyWeak(&v20, &location);
    v17 = [defaultCenter addObserverForName:@"com.apple.messages.CKScreenTimeDidEnterCurrentAppRestrictionNotification" object:0 queue:mainQueue usingBlock:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __94__CKBrowserSwitcherViewController_initWithConversation_sendDelegate_presentingViewController___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained balloonPlugin];
  v6 = [v5 appBundle];
  v7 = [v6 bundleIdentifier];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Downtime will show blocking shield notification received. Tearing down currently displayed MessageApp with bundleID: %@", &v9, 0xCu);
    }
  }

  [WeakRetained appGrabberViewCloseButtonTapped:0];
}

- (void)loadView
{
  v40.receiver = self;
  v40.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v40 loadView];
  v3 = [_CKBrowserSwitcherView alloc];
  view = [(CKBrowserSwitcherViewController *)self view];
  [view frame];
  v5 = [(_CKBrowserSwitcherView *)v3 initWithFrame:?];

  view2 = [(CKBrowserSwitcherViewController *)self view];
  -[_CKBrowserSwitcherView setAutoresizingMask:](v5, "setAutoresizingMask:", [view2 autoresizingMask]);

  [(CKBrowserSwitcherViewController *)self setView:v5];
  [(_CKBrowserSwitcherView *)v5 bounds];
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
  [(CKBrowserSwitcherViewController *)self setContentView:v11];
  view3 = [(CKBrowserSwitcherViewController *)self view];
  [view3 addSubview:v11];

  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CKBrowserSwitcherViewController *)self restingContainerViewOriginY];
  v20 = v19;
  v21 = v18 - v19;
  v22 = +[CKUIBehavior sharedBehaviors];
  [v22 browserSwitcherExpandThreshold];
  v24 = v21 + v23;

  v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v14, v20, v16, v24}];
  v26 = +[CKUIBehavior sharedBehaviors];
  theme = [v26 theme];
  browserSwitcherGutterColor = [theme browserSwitcherGutterColor];
  [v25 setBackgroundColor:browserSwitcherGutterColor];

  [v25 setAccessibilityIdentifier:@"appBrowserSwitcherIdentifier"];
  [v25 setSemanticContentAttribute:3];
  [(CKBrowserSwitcherViewController *)self setBrowserContainer:v25];
  [v11 addSubview:v25];
  grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
  [v11 addSubview:grabberView];

  v30 = [[CKImmediatePanGestureRecognizer alloc] initWithTarget:self action:sel_expandGestureTouchMoved_];
  expandGestureTracker = self->_expandGestureTracker;
  self->_expandGestureTracker = v30;

  [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker setDelegate:self];
  [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker setDelaysTouchesEnded:0];
  [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker setCancelsTouchesInView:0];
  [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker setDelaysTouchesBegan:0];
  [(_CKBrowserSwitcherView *)v5 addGestureRecognizer:self->_expandGestureTracker];
  v32 = objc_alloc_init(MEMORY[0x1E69DCC48]);
  [v32 setMinimumPressDuration:0.0];
  [v32 setCancelsTouchesInView:0];
  [v32 setDelaysTouchesBegan:0];
  [v32 setDelaysTouchesEnded:0];
  [v32 setDelegate:self];
  [v25 addGestureRecognizer:v32];
  [(CKBrowserSwitcherViewController *)self setTouchTracker:v32];
  if (IMIsRunningIniMessageAppsViewService())
  {
    v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(CKBrowserSwitcherViewController *)self setShadowView:v33];

    shadowView = [(CKBrowserSwitcherViewController *)self shadowView];
    layer = [shadowView layer];
    [layer setShadowRadius:4.0];

    shadowView2 = [(CKBrowserSwitcherViewController *)self shadowView];
    layer2 = [shadowView2 layer];
    [layer2 setShadowOffset:{0.0, -6.0}];

    view4 = [(CKBrowserSwitcherViewController *)self view];
    shadowView3 = [(CKBrowserSwitcherViewController *)self shadowView];
    [view4 insertSubview:shadowView3 atIndex:0];
  }
}

- (id)activeBrowserView
{
  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  view = [currentViewController view];

  return view;
}

- (void)viewDidLayoutSubviews
{
  v99.receiver = self;
  v99.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v99 viewDidLayoutSubviews];
  view = [(CKBrowserSwitcherViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;
  v7 = v6;

  view2 = [(CKBrowserSwitcherViewController *)self view];
  [view2 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v7 + v5;
  if ([(CKBrowserSwitcherViewController *)self _hasLandscapeGutters])
  {
    view3 = [(CKBrowserSwitcherViewController *)self view];
    [view3 setBackgroundColor:0];
  }

  v15 = v5 + v10;
  v16 = v12 - v13;
  grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
  contentView = [(CKBrowserSwitcherViewController *)self contentView];
  v19 = [grabberView isDescendantOfView:contentView];

  if (v19)
  {
    [(CKBrowserSwitcherViewController *)self restingGrabberFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    grabberView2 = [(CKBrowserSwitcherViewController *)self grabberView];
    [grabberView2 setFrame:{v21, v23, v25, v27}];

    grabberView3 = [(CKBrowserSwitcherViewController *)self grabberView];
    [grabberView3 frame];
    v31 = v30;
    browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
    [browserContainer frame];
    v34 = v31 + v33;

    grabberView4 = [(CKBrowserSwitcherViewController *)self grabberView];
    [grabberView4 frame];
    v37 = v36;
    v39 = v38;
    grabberView5 = [(CKBrowserSwitcherViewController *)self grabberView];
    [grabberView5 frame];
    v42 = v41;
    shadowView = [(CKBrowserSwitcherViewController *)self shadowView];
    [shadowView setFrame:{v37, v39, v42, v34}];

    v44 = MEMORY[0x1E69DC728];
    shadowView2 = [(CKBrowserSwitcherViewController *)self shadowView];
    [shadowView2 frame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = UIRectCornersAtEdges();
    [(CKAppGrabberView *)self->_grabberView _cornerRadius];
    v56 = v55;
    [(CKAppGrabberView *)self->_grabberView _cornerRadius];
    shadowView4 = [v44 bezierPathWithRoundedRect:v54 byRoundingCorners:v47 cornerRadii:{v49, v51, v53, v56, v57}];
    cGPath = [shadowView4 CGPath];
    shadowView3 = [(CKBrowserSwitcherViewController *)self shadowView];
    layer = [shadowView3 layer];
    [layer setShadowPath:cGPath];
  }

  else
  {
    shadowView2 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [(CKBrowserSwitcherViewController *)self cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:shadowView2];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    shadowView4 = [(CKBrowserSwitcherViewController *)self shadowView];
    [shadowView4 setFrame:{v63, v65, v67, v69}];
  }

  +[CKAppGrabberView compactRoundedCornerRadius];
  v71 = v70 <= 0.0;
  v72 = 0.06;
  if (v71)
  {
    v72 = 0.0;
  }

  v73 = v72;
  shadowView5 = [(CKBrowserSwitcherViewController *)self shadowView];
  layer2 = [shadowView5 layer];
  *&v76 = v73;
  [layer2 setShadowOpacity:v76];

  contentView2 = [(CKBrowserSwitcherViewController *)self contentView];
  view4 = [(CKBrowserSwitcherViewController *)self view];
  [view4 bounds];
  [contentView2 setFrame:?];

  contentView3 = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView3 bounds];
  v81 = v80;

  [(CKBrowserSwitcherViewController *)self restingContainerViewOriginY];
  v83 = v82;
  v84 = v81 - v82;
  v85 = +[CKUIBehavior sharedBehaviors];
  [v85 browserSwitcherExpandThreshold];
  v87 = v84 + v86;

  browserContainer2 = [(CKBrowserSwitcherViewController *)self browserContainer];
  [browserContainer2 setFrame:{v15, v83, v16, v87}];

  cell = [(CKBrowserSwitcherViewController *)self cell];
  browserContainer3 = [(CKBrowserSwitcherViewController *)self browserContainer];
  [browserContainer3 bounds];
  [cell setFrame:?];

  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  if (currentViewController)
  {
    v92 = currentViewController;
    activeBrowserView = [(CKBrowserSwitcherViewController *)self activeBrowserView];
    [activeBrowserView frame];
    v94 = CGRectEqualToRect(v100, *MEMORY[0x1E695F058]);

    if (v94)
    {
      currentViewController2 = [(CKBrowserSwitcherViewController *)self currentViewController];
      balloonPlugin = [currentViewController2 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self _updateBrowserViewPositionForPluginAndInsertIfNecessary:balloonPlugin];
    }
  }

  [(CKBrowserSwitcherViewController *)self setViewHasLaidOutSubviews:1];
  performAfterFirstLayoutBlock = [(CKBrowserSwitcherViewController *)self performAfterFirstLayoutBlock];

  if (performAfterFirstLayoutBlock)
  {
    performAfterFirstLayoutBlock2 = [(CKBrowserSwitcherViewController *)self performAfterFirstLayoutBlock];
    performAfterFirstLayoutBlock2[2]();

    [(CKBrowserSwitcherViewController *)self setPerformAfterFirstLayoutBlock:0];
  }
}

- (BOOL)isBrowserSwitcherFirstLaunch
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"BrowserSwitcherFirstLaunch"];

  if ((v3 & 1) == 0)
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setBool:1 forKey:@"BrowserSwitcherFirstLaunch"];
  }

  return v3 ^ 1;
}

- (void)layoutMarginsDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Layout margins changed, calling setNeedsLayout", v5, 2u);
    }
  }

  view = [(CKBrowserSwitcherViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v11 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_dragManagerWillStartDrag_ name:@"CKBrowserDragManagerWillStartDraggingNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_dragManagerDidStartDrag_ name:@"CKBrowserDragManagerDidStartDraggingNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_dragManagerDidEndDragging_ name:@"CKBrowserDragManagerDidEndDraggingNotification" object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay_ name:@"CKMessageExtensionBrowserViewControllerDidPrepareForDisplay" object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__handleRemoteViewControllerConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel__handleRemoteViewControllerConnectionInterrupted_ name:@"CKRemoteViewFailedInstantiationNotification" object:0];

  defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter7 addObserver:self selector:sel_saveSnapshotForCurrentBrowserViewControllerIfPossible name:*MEMORY[0x1E69DDBC8] object:0];

  defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter8 addObserver:self selector:sel__handleVisibleSwitcherPluginsChanged_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v7 viewWillAppear:appear];
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewControllerWillAppear:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v10 viewWillDisappear:disappear];
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([transitionCoordinator currentConsumer] == 1)
  {
    transitionCoordinator2 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    isPresentingFullScreenModal = [transitionCoordinator2 isPresentingFullScreenModal];

    if ((isPresentingFullScreenModal & 1) == 0)
    {
      [(CKBrowserSwitcherViewController *)self _updateCurrentBrowserSnapshotIfPossible];
    }
  }

  else
  {
  }

  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewControllerWillDisappear:self];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v10 viewDidAppear:appear];
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([transitionCoordinator currentConsumer] != 1)
  {
    goto LABEL_4;
  }

  transitionCoordinator2 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([transitionCoordinator2 isPresentingFullScreenModal])
  {

LABEL_4:
    goto LABEL_5;
  }

  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  isLoaded = [currentViewController isLoaded];

  if (isLoaded)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CKBrowserSwitcherViewController_viewDidAppear___block_invoke;
    v9[3] = &unk_1E72EBA18;
    v9[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v9];
  }

LABEL_5:
  [(CKBrowserSwitcherViewController *)self setInsertedViaCollapse:0];
  if (__CurrentTestName)
  {
    if (objc_opt_respondsToSelector())
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"PPTDidShowBrowserSwitcherViewController" object:self userInfo:0];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v4 viewDidDisappear:disappear];
  [(CKBrowserSwitcherViewController *)self setAllowFooterLabelUpdates:0];
  [(CKBrowserSwitcherViewController *)self stopExpandAnimatorAndCleanupState];
}

- (CGSize)browserTransitionCoordinator:(id)coordinator preferredSizeForBrowser:(id)browser
{
  coordinatorCopy = coordinator;
  browserCopy = browser;
  v9 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  if ([(CKBrowserSwitcherViewController *)self viewHasLaidOutSubviews]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = [(CKBrowserSwitcherViewController *)self delegate];
    v11 = v8;
    v12 = v9;
    if (objc_opt_respondsToSelector())
    {
      [delegate browserTransitionCoordinator:coordinatorCopy preferredSizeForBrowser:browserCopy];
      v12 = v13;
      v11 = v14;
    }

    v15 = v12 == v9 && v11 == v8;
    if (v15 && [(CKBrowserSwitcherViewController *)self browserIsLoadingCompact])
    {
      browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
      [browserContainer bounds];
      v12 = v17;
      v11 = v18;
    }

    v8 = v11;
    v9 = v12;
  }

  v19 = v9;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)browserTransitionCoordinator:(id)coordinator willPresentBrowserModally:(id)modally
{
  modallyCopy = modally;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewController:self willPresentBrowserModally:modallyCopy];
  }
}

- (void)browserTransitionCoordinator:(id)coordinator didTransitionFromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  allKeys = [livePluginIdentifierToTimestampMap allKeys];

  obj = allKeys;
  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = +[CKBalloonPluginManager sharedInstance];
        v14 = [v13 existingViewControllerForPluginIdentifier:v12];

        if (objc_opt_respondsToSelector())
        {
          [v14 didTransitionFromOrientation:orientation toOrientation:toOrientation];
        }

        balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
        identifier = [balloonPlugin identifier];
        v17 = [identifier isEqualToString:v12];

        if ((v17 & 1) == 0)
        {
          [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  [currentViewController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CKBrowserSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E72EC3E8;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

void __86__CKBrowserSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) childViewControllers];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__CKBrowserSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v3[3] = &unk_1E72F6C68;
  v3[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __86__CKBrowserSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_1F05AEEC8])
  {
    v3 = [v4 balloonPlugin];
    [*(a1 + 32) _updateBrowserViewPositionForPluginAndInsertIfNecessary:v3];
  }
}

- (void)reinsertAppGrabberViewForBrowserTransitionCoordinator:(id)coordinator
{
  grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
  contentView = [(CKBrowserSwitcherViewController *)self contentView];
  v5 = [grabberView isDescendantOfView:contentView];

  if ((v5 & 1) == 0)
  {
    contentView2 = [(CKBrowserSwitcherViewController *)self contentView];
    [contentView2 addSubview:grabberView];

    [grabberView setDelegate:self];
    view = [(CKBrowserSwitcherViewController *)self view];
    [view setNeedsLayout];

    view2 = [(CKBrowserSwitcherViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (CGRect)cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:(id)coordinator
{
  browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
  [browserContainer frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKBrowserSwitcherViewController *)self restingContainerViewOriginY];
  v12 = v11;
  superview = [browserContainer superview];
  [superview convertRect:0 toView:{v6, v12, v8, v10}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)restingGrabberFrame
{
  contentView = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  view = [(CKBrowserSwitcherViewController *)self view];
  [view safeAreaInsets];
  v10 = v9;
  v12 = v11;

  v13 = +[CKUIBehavior sharedBehaviors];
  isAppStripInKeyboard = [v13 isAppStripInKeyboard];

  v15 = 0.0;
  if (isAppStripInKeyboard)
  {
    [MEMORY[0x1E69DCBB8] __ck_appStripVerticalPadding];
    v15 = v16;
  }

  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18 & 1) != 0 && (-[CKBrowserSwitcherViewController delegate](self, "delegate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 switcherViewControllerShouldShowIconAndTitleWhenCompact:self], v19, (v20))
  {
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 browserSwitcherExpandedGrabberHeaderHeight];
  }

  else
  {
    v21 = +[CKUIBehavior sharedBehaviors];
    [v21 browserSwitcherCollapsedGrabberHeaderHeight];
  }

  v23 = v22;

  v24 = v5 + v10;
  v25 = v7 - (v10 + v12);
  v26 = v15;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v26;
  result.origin.x = v24;
  return result;
}

- (double)restingContainerViewOriginY
{
  [(CKBrowserSwitcherViewController *)self restingGrabberFrame];
  v3 = v2;
  v5 = v4;
  v6 = +[CKUIBehavior sharedBehaviors];
  isAppStripInKeyboard = [v6 isAppStripInKeyboard];

  result = v3 + v5;
  if (!isAppStripInKeyboard)
  {
    return v5;
  }

  return result;
}

- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)result maxOffset:(double)offset minOffset:(double)minOffset range:(double)range outside:(BOOL *)outside
{
  if (minOffset >= offset)
  {
    offset = minOffset;
  }

  if (fabs(range) >= 2.22044605e-16)
  {
    if (offset < result)
    {
      result = offset + (1.0 - 1.0 / ((result - offset) / range * 0.55 + 1.0)) * range;
      if (!outside)
      {
        return result;
      }

LABEL_9:
      *outside = 1;
      return result;
    }

    if (result < minOffset)
    {
      result = minOffset - (1.0 - 1.0 / ((minOffset - result) / range * 0.55 + 1.0)) * range;
      if (outside)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

- (void)setupPausedExpandAnimatorIfNeeded
{
  if (!self->_expandPropertyAnimator)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 browserSwitcherExpandThreshold];
    v5 = -v4;

    grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
    browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
    roundsTopCorners = [grabberView roundsTopCorners];
    v9 = objc_alloc(MEMORY[0x1E69DD278]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__CKBrowserSwitcherViewController_setupPausedExpandAnimatorIfNeeded__block_invoke;
    v24[3] = &unk_1E72F0388;
    v10 = grabberView;
    v28 = v5;
    v25 = v10;
    selfCopy = self;
    v11 = browserContainer;
    v27 = v11;
    v12 = [v9 initWithDuration:v24 dampingRatio:0.25 animations:1.0];
    expandPropertyAnimator = self->_expandPropertyAnimator;
    self->_expandPropertyAnimator = v12;

    objc_initWeak(&location, self);
    v14 = self->_expandPropertyAnimator;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __68__CKBrowserSwitcherViewController_setupPausedExpandAnimatorIfNeeded__block_invoke_2;
    v19 = &unk_1E72F6C90;
    objc_copyWeak(&v21, &location);
    v15 = v10;
    v20 = v15;
    v22 = roundsTopCorners;
    [(UIViewPropertyAnimator *)v14 addCompletion:&v16];
    [(UIViewPropertyAnimator *)self->_expandPropertyAnimator pauseAnimation:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

uint64_t __68__CKBrowserSwitcherViewController_setupPausedExpandAnimatorIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  [*(a1 + 32) visualOriginYInView:*(a1 + 32)];
  [*(a1 + 32) setFrame:{v3, *(a1 + 56) - v8, v5, v7}];
  [*(*(a1 + 40) + 1128) frame];
  v10 = v9;
  [*(a1 + 32) frame];
  [*(*(a1 + 40) + 1128) setFrame:v10];
  [*(a1 + 32) setRoundsTopCorners:1];
  [*(a1 + 48) frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [*(a1 + 32) frame];
  MaxY = CGRectGetMaxY(v21);
  v18 = *(a1 + 48);

  return [v18 setFrame:{v12, MaxY, v14, v16}];
}

void __68__CKBrowserSwitcherViewController_setupPausedExpandAnimatorIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[125];
    WeakRetained[125] = 0;

    WeakRetained = v6;
  }

  if (a2 == 1)
  {
    [*(a1 + 32) setRoundsTopCorners:*(a1 + 48)];
    WeakRetained = v6;
  }
}

- (void)stopExpandAnimatorAndCleanupState
{
  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator stopAnimation:1];

  [(CKBrowserSwitcherViewController *)self cleanupExpandAnimatorState];
}

- (void)cleanupExpandAnimatorState
{
  expandPropertyAnimator = self->_expandPropertyAnimator;
  self->_expandPropertyAnimator = 0;

  self->_isDoingExpandInteraction = 0;
}

- (void)reverseAndCleanupExpandAnimator
{
  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator setReversed:1];
  expandPropertyAnimator = self->_expandPropertyAnimator;

  [(UIViewPropertyAnimator *)expandPropertyAnimator startAnimation];
}

- (void)expandGestureTouchMoved:(id)moved
{
  movedCopy = moved;
  state = [movedCopy state];
  switch(state)
  {
    case 3:
      self->_isDoingExpandInteraction = 0;
      if (self->_expandGestureStartedOnGrabber && !self->_expandInteractionDidMove || ([(UIViewPropertyAnimator *)self->_expandPropertyAnimator fractionComplete], v40 >= 1.0))
      {
        [(CKBrowserSwitcherViewController *)self stopExpandAnimatorAndCleanupState];
        [(CKBrowserSwitcherViewController *)self handleExpandButton:0];
      }

      else
      {
        [(CKBrowserSwitcherViewController *)self reverseAndCleanupExpandAnimator];
      }

      self->_expandInteractionDidMove = 0;
      break;
    case 2:
      if (![(CKBrowserSwitcherViewController *)self isDragging]&& ![(CKBrowserSwitcherViewController *)self isInDragAndDrop])
      {
        expandGestureTracker = self->_expandGestureTracker;
        view = [(CKBrowserSwitcherViewController *)self view];
        [(CKImmediatePanGestureRecognizer *)expandGestureTracker translationInView:view];
        v41 = v18;
        v20 = v19;

        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 browserSwitcherExpandThreshold];
        v23 = v22;

        contentView = [(CKBrowserSwitcherViewController *)self contentView];
        [contentView bounds];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = v20 + self->_expandGestureTranslationOffset;
        v47.origin.x = v26;
        v47.origin.y = v28;
        v47.size.width = v30;
        v47.size.height = v32;
        MaxY = CGRectGetMaxY(v47);
        v48.origin.x = v26;
        v48.origin.y = v28;
        v48.size.width = v30;
        v48.size.height = v32;
        [(CKBrowserSwitcherViewController *)self _rubberBandOffsetWithoutDecorationForOffset:0 maxOffset:v33 minOffset:MaxY range:-24.0 outside:CGRectGetHeight(v48)];
        if (v35 > 0.0)
        {
          v35 = 0.0;
        }

        v36 = v35 / v23;
        if (v36 < 0.0)
        {
          v36 = -v36;
        }

        [(UIViewPropertyAnimator *)self->_expandPropertyAnimator setFractionComplete:v36];
        [(UIViewPropertyAnimator *)self->_expandPropertyAnimator fractionComplete];
        if (v37 > 0.0 && !self->_isDoingExpandInteraction)
        {
          self->_isDoingExpandInteraction = 1;
          objc_initWeak(&location, self);
          expandPropertyAnimator = self->_expandPropertyAnimator;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __59__CKBrowserSwitcherViewController_expandGestureTouchMoved___block_invoke;
          v42[3] = &unk_1E72EC988;
          objc_copyWeak(&v43, &location);
          [(UIViewPropertyAnimator *)expandPropertyAnimator addCompletion:v42];
          objc_destroyWeak(&v43);
          objc_destroyWeak(&location);
        }

        if (v20 > 2.0 || v41 > 2.0)
        {
          self->_expandInteractionDidMove = 1;
        }

        [(UIViewPropertyAnimator *)self->_expandPropertyAnimator fractionComplete];
        if (v39 >= 1.0)
        {
          [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker finishCurrentInteraction];
        }
      }

      break;
    case 1:
      if (![(CKBrowserSwitcherViewController *)self isDragging]&& ![(CKBrowserSwitcherViewController *)self isInDragAndDrop])
      {
        self->_expandInteractionDidMove = 0;
        self->_expandGestureStartedOnGrabber = 0;
        grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
        [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker locationInView:grabberView];
        v8 = v7;
        v10 = v9;
        [grabberView bounds];
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
        v45.x = v8;
        v45.y = v10;
        if (CGRectContainsPoint(v46, v45))
        {
          self->_expandGestureStartedOnGrabber = 1;
          v15 = 0.0;
        }

        else
        {
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v15 = v10 - CGRectGetMaxY(v49);
        }

        self->_expandGestureTranslationOffset = v15;
        [(CKBrowserSwitcherViewController *)self setupPausedExpandAnimatorIfNeeded];
      }

      break;
    default:
      self->_expandInteractionDidMove = 0;
      if (self->_isDoingExpandInteraction)
      {
        self->_isDoingExpandInteraction = 0;
        [(CKBrowserSwitcherViewController *)self reverseAndCleanupExpandAnimator];
      }

      break;
  }
}

void __59__CKBrowserSwitcherViewController_expandGestureTouchMoved___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanupExpandAnimatorState];
}

- (void)setBrowserViewReadyForUserInteraction:(BOOL)interaction
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_browserViewReadyForUserInteraction != interaction)
  {
    interactionCopy = interaction;
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (self->_browserViewReadyForUserInteraction)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        if (interactionCopy)
        {
          v6 = @"YES";
        }

        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "_browserViewReadyForUserInteraction changing from %@ to %@", &v11, 0x16u);
      }
    }

    self->_browserViewReadyForUserInteraction = interactionCopy;
    currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      currentViewController2 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [currentViewController2 endDisablingUserInteraction];
    }
  }
}

- (void)browserTransitionCoordinator:(id)coordinator expandedStateDidChange:(BOOL)change withReason:(int64_t)reason
{
  changeCopy = change;
  coordinatorCopy = coordinator;
  [(CKBrowserSwitcherViewController *)self setInteractiveExpandStarted:0];
  if (reason != 1 || changeCopy)
  {
    v16 = IMOSLoggingEnabled();
    if (changeCopy)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Browser went expanded, nil out the currentViewController.", v20, 2u);
        }
      }

      [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
    }

    else if (v16)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Browser went compact with keyboard launch context, but is currently owned by someone else!", v20, 2u);
      }
    }
  }

  else
  {
    v9 = [coordinatorCopy requestOwnershipOfBrowserForConsumer:1];
    v10 = v9;
    if (v9)
    {
      balloonPlugin = [v9 balloonPlugin];
      v12 = +[CKBalloonPluginManager sharedInstance];
      visibleSwitcherPlugins = [v12 visibleSwitcherPlugins];
      v14 = [visibleSwitcherPlugins indexOfObject:balloonPlugin];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [coordinatorCopy releaseOwnershipOfBrowserForConsumer:1];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *v20 = 0;
            _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Attempted browser re-insert after collapse, but browser is not in visiblePlugins!", v20, 2u);
          }
        }
      }

      else
      {
        [(CKBrowserSwitcherViewController *)self setCurrentViewController:v10];
        if ([v10 isLoaded])
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __98__CKBrowserSwitcherViewController_browserTransitionCoordinator_expandedStateDidChange_withReason___block_invoke;
          v21[3] = &unk_1E72EBA18;
          v21[4] = self;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v21];
        }
      }
    }

    delegate = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate switcherViewControllerDidCollapse:self];
  }
}

- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason
{
  fullscreenCopy = fullscreen;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:fullscreenCopy withReason:reason];
  }
}

- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)fullscreen withReason:(int64_t)reason
{
  fullscreenCopy = fullscreen;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:fullscreenCopy withReason:reason];
  }
}

- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason
{
  dismissCopy = dismiss;
  [(CKBrowserSwitcherViewController *)self setBrowserIsCollapsingFromFullscreen:1];
  if (reason == 1)
  {
    [(CKBrowserSwitcherViewController *)self setInsertedViaCollapse:1];
  }

  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 browserTransitionCoordinatorWillCollapseOrDismiss:dismissCopy withReason:reason];
  }
}

- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)dismiss withReason:(int64_t)reason
{
  dismissCopy = dismiss;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 browserTransitionCoordinatorDidCollapseOrDismiss:dismissCopy withReason:reason];
  }

  [(CKBrowserSwitcherViewController *)self setBrowserIsCollapsingFromFullscreen:0];
}

- (void)browserTransitionCoordinatorWantsPresentationOfAppStore:(id)store
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewControllerDidSelectAppStore:self shouldRestoreAppSwitcher:0];
  }
}

- (void)browserTransitionCoordinatorWantsPresentationOfAppManager:(id)manager
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewControllerDidSelectAppManager:self shouldRestoreAppSwitcher:0];
  }
}

- (void)browserTransitionCoordinator:(id)coordinator didSwitchToPlugin:(id)plugin
{
  pluginCopy = plugin;
  [(CKBrowserSwitcherViewController *)self setBalloonPlugin:pluginCopy];
  [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:pluginCopy];

  [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
}

- (void)browserTransitionCoordinator:(id)coordinator hasUpdatedLastTouchDate:(id)date
{
  dateCopy = date;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate2 switcherViewController:self hasUpdatedLastTouchDate:dateCopy];
  }
}

- (double)browserTransitionCoordinatorCollapsedContentHeight:(id)height
{
  heightCopy = height;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate browserTransitionCoordinatorCollapsedContentHeight:heightCopy];
    v7 = v6;
  }

  else
  {
    +[CKInputView defaultContentSize];
    v7 = v8;
  }

  return v7;
}

- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)success
{
  successCopy = success;
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate browserTransitionCoordinatorShouldDismissOnDragSuccess:successCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldAlwaysShowAppTitle
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    shouldAlwaysShowAppTitle = [delegate shouldAlwaysShowAppTitle];
  }

  else
  {
    shouldAlwaysShowAppTitle = 0;
  }

  return shouldAlwaysShowAppTitle;
}

- (id)transitionsPresentationViewController
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    transitionsPresentationViewController = [delegate transitionsPresentationViewController];
  }

  else
  {
    transitionsPresentationViewController = 0;
  }

  return transitionsPresentationViewController;
}

- (id)appTitleOverride
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    appTitleOverride = [delegate appTitleOverride];
  }

  else
  {
    appTitleOverride = 0;
  }

  return appTitleOverride;
}

- (id)appIconOverride
{
  delegate = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    appIconOverride = [delegate appIconOverride];
  }

  else
  {
    appIconOverride = 0;
  }

  return appIconOverride;
}

- (void)_performAfterFirstLayout:(id)layout
{
  layoutCopy = layout;
  if ([(CKBrowserSwitcherViewController *)self viewHasLaidOutSubviews])
  {
    layoutCopy[2]();
  }

  else
  {
    [(CKBrowserSwitcherViewController *)self setPerformAfterFirstLayoutBlock:layoutCopy];
  }
}

- (void)unloadRemoteViewControllers
{
  v15 = *MEMORY[0x1E69E9840];
  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  [(CKBrowserSwitcherViewController *)self _removeBrowserFromViewHierarchy:currentViewController];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  allKeys = [livePluginIdentifierToTimestampMap allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setBalloonPlugin:(id)plugin
{
  pluginCopy = plugin;
  view = [(CKBrowserSwitcherViewController *)self view];
  v6 = pluginCopy;
  if (self->_balloonPlugin != pluginCopy)
  {
    objc_storeStrong(&self->_balloonPlugin, plugin);
    cell = [(CKBrowserSwitcherViewController *)self cell];

    if (cell)
    {
      cell2 = [(CKBrowserSwitcherViewController *)self cell];
      [cell2 removeFromSuperview];
    }

    v9 = [CKBrowserSwitcherCell alloc];
    browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
    [browserContainer bounds];
    v11 = [(CKBrowserSwitcherCell *)v9 initWithFrame:?];

    identifier = [(IMBalloonPlugin *)pluginCopy identifier];
    browserContainer2 = [(CKBrowserSwitcherViewController *)self browserContainer];
    traitCollection = [browserContainer2 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    browserContainer3 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [browserContainer3 frame];
    v17 = [CKSnapshotCacheKey keyWithIdentifier:identifier interfaceStyle:userInterfaceStyle bounds:?];

    [(CKBrowserSwitcherCell *)v11 setPlugin:pluginCopy withSnapshotCacheKey:v17];
    browserContainer4 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [browserContainer4 addSubview:v11];

    [(CKBrowserSwitcherViewController *)self setCell:v11];
    view2 = [(CKBrowserSwitcherViewController *)self view];
    [view2 setNeedsLayout];

    view3 = [(CKBrowserSwitcherViewController *)self view];
    [view3 layoutIfNeeded];

    [(CKBrowserSwitcherViewController *)self _updateVisibleBrowserView];
    v6 = pluginCopy;
  }
}

- (void)showBrowserInSwitcherForPlugin:(id)plugin datasource:(id)datasource reloadData:(BOOL)data
{
  pluginCopy = plugin;
  datasourceCopy = datasource;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "In showBrowserInSwitcherForPlugin:datasource:reloadData:", buf, 2u);
    }
  }

  if (pluginCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__CKBrowserSwitcherViewController_showBrowserInSwitcherForPlugin_datasource_reloadData___block_invoke;
    v11[3] = &unk_1E72EB880;
    v11[4] = self;
    v12 = pluginCopy;
    v13 = datasourceCopy;
    [(CKBrowserSwitcherViewController *)self _performAfterFirstLayout:v11];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Asking to show browser for nil plugin", buf, 2u);
    }
  }
}

uint64_t __88__CKBrowserSwitcherViewController_showBrowserInSwitcherForPlugin_datasource_reloadData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBalloonPlugin:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _loadBrowserForBalloonPlugin:v3 datasource:v4];
}

- (void)showBrowserFullscreenModalForPlugin:(id)plugin datasource:(id)datasource preferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  datasourceCopy = datasource;
  pluginCopy = plugin;
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  [transitionCoordinator presentPluginFullScreenModal:pluginCopy datasource:datasourceCopy preferredContentSize:1 animated:0 completion:{width, height}];
}

- (void)animateInCompactWithCompletion:(id)completion
{
  completionCopy = completion;
  contentView = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  contentView2 = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView2 bounds];
  MaxY = CGRectGetMaxY(v28);

  contentView3 = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView3 setFrame:{v7, MaxY, v11, v13}];

  v17 = MEMORY[0x1E69DD250];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__CKBrowserSwitcherViewController_animateInCompactWithCompletion___block_invoke;
  v27[3] = &unk_1E72EC7B0;
  v27[4] = self;
  *&v27[5] = v7;
  v27[6] = v9;
  *&v27[7] = v11;
  *&v27[8] = v13;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__CKBrowserSwitcherViewController_animateInCompactWithCompletion___block_invoke_2;
  v25[3] = &unk_1E72ED638;
  v25[4] = self;
  v26 = completionCopy;
  v18 = completionCopy;
  [v17 _animateUsingSpringWithDuration:0 delay:v27 options:v25 mass:0.5 stiffness:0.0 damping:1.0 initialVelocity:410.0 animations:32.0 completion:0.0];
  view = [(CKBrowserSwitcherViewController *)self view];
  [view safeAreaInsets];
  v21 = v20;
  v23 = v22;

  if (v21 == 0.0 && v23 == 0.0)
  {
    view2 = [(CKBrowserSwitcherViewController *)self view];
    [view2 setBackgroundColor:0];
  }
}

void __66__CKBrowserSwitcherViewController_animateInCompactWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) contentView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

uint64_t __66__CKBrowserSwitcherViewController_animateInCompactWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateVisibleBrowserView];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)animateOutCompactWithCompletion:(id)completion
{
  completionCopy = completion;
  contentView = [(CKBrowserSwitcherViewController *)self contentView];
  [contentView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  Height = CGRectGetHeight(v29);
  if (![(CKBrowserSwitcherViewController *)self _hasLandscapeGutters])
  {
    view = [(CKBrowserSwitcherViewController *)self view];
    [view setBackgroundColor:0];
  }

  v16 = v9 + Height;
  animation = [MEMORY[0x1E6979318] animation];
  [animation setKeyPath:@"position.y"];
  v18 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [animation setTimingFunction:v18];

  [animation setBeginTime:CACurrentMediaTime()];
  [animation setDuration:0.200000003];
  v19 = MEMORY[0x1E696AD98];
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  CGRectGetMidX(v30);
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v20 = [v19 numberWithDouble:CGRectGetMidY(v31)];
  [animation setFromValue:v20];

  v21 = MEMORY[0x1E696AD98];
  v32.origin.x = v7;
  v32.origin.y = v16;
  v32.size.width = v11;
  v32.size.height = v13;
  CGRectGetMidX(v32);
  v33.origin.x = v7;
  v33.origin.y = v16;
  v33.size.width = v11;
  v33.size.height = v13;
  v22 = [v21 numberWithDouble:CGRectGetMidY(v33)];
  [animation setToValue:v22];

  [animation setFillMode:*MEMORY[0x1E69797E0]];
  [animation setRemovedOnCompletion:0];
  contentView2 = [(CKBrowserSwitcherViewController *)self contentView];
  layer = [contentView2 layer];
  [layer addAnimation:animation forKey:@"SlideOutPresentation"];

  v25 = dispatch_time(0, 200000002);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CKBrowserSwitcherViewController_animateOutCompactWithCompletion___block_invoke;
  v27[3] = &unk_1E72ED1C8;
  v27[4] = self;
  v28 = completionCopy;
  v26 = completionCopy;
  dispatch_after(v25, MEMORY[0x1E69E96A0], v27);
}

uint64_t __67__CKBrowserSwitcherViewController_animateOutCompactWithCompletion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _hasLandscapeGutters] & 1) == 0)
  {
    v2 = [*(a1 + 32) contentView];
    [v2 setBackgroundColor:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_hasLandscapeGutters
{
  view = [(CKBrowserSwitcherViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;
  v6 = v5;

  return v6 != 0.0 || v4 != 0.0;
}

- (CKAppGrabberView)grabberView
{
  grabberView = self->_grabberView;
  if (!grabberView)
  {
    v4 = objc_alloc_init(CKAppGrabberView);
    v5 = self->_grabberView;
    self->_grabberView = v4;

    [(CKAppGrabberView *)self->_grabberView setDelegate:self];
    [(CKAppGrabberView *)self->_grabberView setAutoresizingMask:34];
    v6 = self->_grabberView;
    transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    -[CKAppGrabberView setShowsAppTitle:](v6, "setShowsAppTitle:", [transitionCoordinator shouldAlwaysShowAppTitle]);

    grabberView = self->_grabberView;
  }

  return grabberView;
}

- (void)saveSnapshotForCurrentBrowserViewControllerIfPossible
{
  if ([(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
  {
    transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    if ([transitionCoordinator currentConsumer] == 1)
    {
      currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
      v4 = objc_opt_respondsToSelector();

      if ((v4 & 1) == 0)
      {
        return;
      }

      transitionCoordinator = [(CKBrowserSwitcherViewController *)self currentViewController];
      [transitionCoordinator saveSnapshotForBrowserViewController];
    }
  }
}

- (void)_handleVisibleSwitcherPluginsChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  currentConsumer = [transitionCoordinator currentConsumer];

  if (currentConsumer != 2)
  {
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKey:@"CKBrowserSelectionControllerUninstalledPluginsKey"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    allKeys = [livePluginIdentifierToTimestampMap allKeys];

    v11 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v8 containsObject:v15])
          {
            [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v15];
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    identifier = [balloonPlugin identifier];
    v18 = [(CKBrowserSwitcherViewController *)self _switchToVisiblePluginWithIdentifier:identifier];

    if (!v18)
    {
      [(CKBrowserSwitcherViewController *)self setAllowPluginLaunchNotifications:0];
      v19 = +[CKBalloonPluginManager sharedInstance];
      visibleSwitcherPlugins = [v19 visibleSwitcherPlugins];
      firstObject = [visibleSwitcherPlugins firstObject];

      [(CKBrowserSwitcherViewController *)self showBrowserInSwitcherForPlugin:firstObject datasource:0 reloadData:0];
      [(CKBrowserSwitcherViewController *)self setAllowPluginLaunchNotifications:1];
    }
  }
}

- (void)_updateCurrentBrowserSnapshotIfPossible
{
  currentViewController = self->_currentViewController;
  if (currentViewController)
  {
    view = [(CKBrowserViewControllerProtocol *)currentViewController view];
    [view alpha];
    v6 = v5;

    viewIfLoaded = [(CKBrowserViewControllerProtocol *)self->_currentViewController viewIfLoaded];
    window = [viewIfLoaded window];

    if ([(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
    {
      if (v6 > 0.0 && window != 0)
      {
        [(CKBrowserSwitcherViewController *)self _snapshotCurrentViewController];

        [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
      }
    }
  }
}

- (BOOL)_pluginHasLiveBrowserViewInSwitcher:(id)switcher
{
  switcherCopy = switcher;
  v5 = +[CKBalloonPluginManager sharedInstance];
  identifier = [switcherCopy identifier];

  v7 = [v5 existingViewControllerForPluginIdentifier:identifier];

  parentViewController = [v7 parentViewController];
  LOBYTE(self) = parentViewController == self;

  return self;
}

- (BOOL)_shouldLimitExpandGestureToGrabber
{
  balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  if (balloonPlugin)
  {
    v3 = IMBalloonExtensionIDWithSuffix();
    identifier = [balloonPlugin identifier];
    v5 = [identifier isEqualToString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if (self->_expandGestureTracker != recognizer)
  {
    goto LABEL_8;
  }

  if (![(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
  {
    goto LABEL_8;
  }

  grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
  showsAppTitle = [grabberView showsAppTitle];

  if (showsAppTitle)
  {
    grabberView2 = [(CKBrowserSwitcherViewController *)self grabberView];
    closeButton = [grabberView2 closeButton];

    [touchCopy locationInView:closeButton];
    LOBYTE(grabberView2) = [closeButton pointInside:0 withEvent:?];

    if (grabberView2)
    {
      goto LABEL_8;
    }
  }

  if (![(CKBrowserSwitcherViewController *)self _shouldLimitExpandGestureToGrabber])
  {
    v13 = 1;
    goto LABEL_9;
  }

  view = [touchCopy view];

  if (view)
  {
    view2 = [touchCopy view];
    v13 = [view2 isDescendantOfView:self->_grabberView];
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  touchTracker = [(CKBrowserSwitcherViewController *)self touchTracker];
  if (touchTracker == beginCopy)
  {
    currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
    balloonPlugin = [currentViewController balloonPlugin];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      date = [MEMORY[0x1E695DF00] date];
      delegate = [(CKBrowserSwitcherViewController *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if ((v25 & 1) == 0)
      {
        v20 = 1;
        goto LABEL_13;
      }

      delegate2 = [(CKBrowserSwitcherViewController *)self delegate];
      [delegate2 switcherViewController:self hasUpdatedLastTouchDate:date];
      v20 = 1;
      goto LABEL_11;
    }
  }

  else if (self->_expandGestureTracker == beginCopy)
  {
    date = [(CKBrowserSwitcherViewController *)self currentViewController];
    if (objc_opt_respondsToSelector())
    {
      [date horizontalSwipeExclusionRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      view = [date view];
      [(CKImmediatePanGestureRecognizer *)beginCopy locationInView:view];
      v17 = v16;
      v19 = v18;

      v34.origin.x = v8;
      v34.origin.y = v10;
      v34.size.width = v12;
      v34.size.height = v14;
      v32.x = v17;
      v32.y = v19;
      if (CGRectContainsPoint(v34, v32))
      {
        v20 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    delegate2 = [(CKBrowserSwitcherViewController *)self view];
    [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker locationInView:delegate2];
    v28 = v27;
    v30 = v29;
    [delegate2 bounds];
    v33.x = v28;
    v33.y = v30;
    v20 = CGRectContainsPoint(v35, v33);
LABEL_11:

    goto LABEL_13;
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (void)setCurrentVisiblePlugin:(id)plugin
{
  pluginCopy = plugin;
  if (self->_currentVisiblePlugin != pluginCopy)
  {
    objc_storeStrong(&self->_currentVisiblePlugin, plugin);
    [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
    [(CKBrowserSwitcherViewController *)self updateGrabberTitleAndIconForPlugin:self->_currentVisiblePlugin];
    if (CKIsRunningInMessages())
    {
      _currentPluginIsJellyfish = [(CKBrowserSwitcherViewController *)self _currentPluginIsJellyfish];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] setIdleTimerDisabled:_currentPluginIsJellyfish];
    }
  }
}

- (void)updateGrabberTitleAndIconForPlugin:(id)plugin
{
  pluginCopy = plugin;
  if ([pluginCopy showInBrowser])
  {
    browserDisplayName = [pluginCopy browserDisplayName];
    traitCollection = [(CKBrowserSwitcherViewController *)self traitCollection];
    [pluginCopy __ck_browserImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  }

  else
  {
    transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    browserDisplayName = [transitionCoordinator appTitleOverride];

    traitCollection = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [traitCollection appIconOverride];
  }
  v7 = ;

  grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
  identifier = [pluginCopy identifier];
  [grabberView updateAppTitle:browserDisplayName icon:v7 appIdentifier:identifier];
}

- (id)traitCollection
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKBrowserSwitcherViewController;
  traitCollection = [(CKBrowserSwitcherViewController *)&v8 traitCollection];
  if (CKIsRunningInCameraAppsClient())
  {
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v4 = MEMORY[0x1E69DD1B8];
    v9[0] = traitCollection;
    v9[1] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [v4 traitCollectionWithTraitsFromCollections:v5];

    traitCollection = v6;
  }

  return traitCollection;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CKBrowserSwitcherViewController;
  changeCopy = change;
  [(CKBrowserSwitcherViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CKBrowserSwitcherViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CKBrowserSwitcherViewController *)self updateGrabberTitleAndIconForPlugin:self->_currentVisiblePlugin];
  }
}

- (void)_snapshotCurrentViewController
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "In cancel touches and snapshot", &v10, 2u);
    }
  }

  if (self->_currentViewController)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        balloonPlugin = [(CKBrowserViewControllerProtocol *)self->_currentViewController balloonPlugin];
        identifier = [balloonPlugin identifier];
        v10 = 138412290;
        v11 = identifier;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "===> snapshotting current view controller (%@) since we're moving away", &v10, 0xCu);
      }
    }

    v7 = +[CKBalloonPluginManager sharedInstance];
    currentViewController = self->_currentViewController;
    browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
    [browserContainer frame];
    [v7 updateSnapshotForBrowserViewController:currentViewController currentBounds:?];
  }
}

- (void)_updateVisibleBrowserView
{
  v17 = *MEMORY[0x1E69E9840];
  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  balloonPlugin = [currentViewController balloonPlugin];

  balloonPlugin2 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  if (-[CKBrowserSwitcherViewController _pluginHasLiveBrowserViewInSwitcher:](self, "_pluginHasLiveBrowserViewInSwitcher:", balloonPlugin) && [balloonPlugin isEqual:balloonPlugin2])
  {
    [(CKBrowserSwitcherViewController *)self _updateActiveBrowserTimestampForCurrentBalloonPlugin];
    [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        identifier = [balloonPlugin2 identifier];
        v15 = 138412290;
        v16 = identifier;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Requesting load of browser VC for %@", &v15, 0xCu);
      }
    }

    transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [transitionCoordinator releaseOwnershipOfBrowserForConsumer:1];

    transitionCoordinator2 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v10 = [transitionCoordinator2 updateBrowserSessionForPlugin:balloonPlugin2 datasource:0];

    if (v10)
    {
      transitionCoordinator3 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
      v12 = [transitionCoordinator3 requestOwnershipOfBrowserForConsumer:1];

      if (v12)
      {
        [(CKBrowserSwitcherViewController *)self setCurrentViewController:v12];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          identifier2 = [balloonPlugin2 identifier];
          v15 = 138412290;
          v16 = identifier2;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Transition coordinator failed to update browser session for %@", &v15, 0xCu);
        }
      }

      [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
      [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
    }
  }
}

- (void)_transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay:(id)display
{
  v30 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = displayCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "===> _transitionSnapshotViewToBrowserViewAfterRemoteViewDidLoad: called with notification: %@", buf, 0xCu);
    }
  }

  userInfo = [displayCopy userInfo];
  v7 = [userInfo objectForKey:@"CKRemoteViewPluginKey"];

  identifier = [v7 identifier];
  currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
  balloonPlugin = [currentViewController balloonPlugin];
  identifier2 = [balloonPlugin identifier];
  v12 = [identifier isEqualToString:identifier2];

  if (v12)
  {
    [(CKBrowserSwitcherViewController *)self _transitionSnapshotViewToBrowserView];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v14 = [livePluginIdentifierToTimestampMap countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = *v24;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(livePluginIdentifierToTimestampMap);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          identifier3 = [v7 identifier];
          v19 = [identifier3 isEqualToString:v17];

          if (v19)
          {
            v20 = +[CKBalloonPluginManager sharedInstance];
            v21 = [v20 existingViewControllerForPluginIdentifier:v17];
            view = [v21 view];
            [view setAlpha:1.0];

            goto LABEL_17;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [livePluginIdentifierToTimestampMap countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_17:
}

- (void)_handleRemoteViewControllerConnectionInterrupted:(id)interrupted
{
  userInfo = [interrupted userInfo];
  v12 = [userInfo objectForKey:*MEMORY[0x1E69A6F20]];

  balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  if ([identifier isEqualToString:v12])
  {
    isBrowserReadyForUserInteraction = [(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction];

    if (!isBrowserReadyForUserInteraction)
    {
      goto LABEL_5;
    }

    balloonPlugin2 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    balloonPlugin = [balloonPlugin2 browserDisplayName];

    [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
    [(CKBrowserSwitcherViewController *)self setBalloonPlugin:0];
    [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:0];
    activeBrowserView = [(CKBrowserSwitcherViewController *)self activeBrowserView];
    [activeBrowserView removeFromSuperview];

    currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
    [currentViewController removeFromParentViewController];

    [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
    cell = [(CKBrowserSwitcherViewController *)self cell];
    [cell showExtensionInterruptedViewWithDisplayName:balloonPlugin];

    identifier = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    [identifier removeObjectForKey:v12];
  }

LABEL_5:
}

- (void)_transitionSnapshotViewToBrowserView
{
  if (![(CKBrowserSwitcherViewController *)self isTransitioningFromSnapshotToLiveView])
  {
    [(CKBrowserSwitcherViewController *)self setTransitioningFromSnapshotToLiveView:1];
    currentVisiblePlugin = [(CKBrowserSwitcherViewController *)self currentVisiblePlugin];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__CKBrowserSwitcherViewController__transitionSnapshotViewToBrowserView__block_invoke;
    aBlock[3] = &unk_1E72ECCA8;
    aBlock[4] = self;
    v4 = currentVisiblePlugin;
    v12 = v4;
    v5 = _Block_copy(aBlock);
    cell = [(CKBrowserSwitcherViewController *)self cell];
    isUsingFallbackSnapshot = [cell isUsingFallbackSnapshot];

    if (isUsingFallbackSnapshot)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__CKBrowserSwitcherViewController__transitionSnapshotViewToBrowserView__block_invoke_420;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      v8 = _Block_copy(v10);
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v8 options:v5 animations:0.5 completion:0.0];
    }

    else
    {
      activeBrowserView = [(CKBrowserSwitcherViewController *)self activeBrowserView];
      [activeBrowserView setAlpha:1.0];

      v5[2](v5, 1);
    }
  }
}

uint64_t __71__CKBrowserSwitcherViewController__transitionSnapshotViewToBrowserView__block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "====> set the browser view's alpha to 1.0", v9, 2u);
    }
  }

  v3 = [*(a1 + 32) currentViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) currentViewController];
    [v5 saveSnapshotForBrowserViewController];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) currentVisiblePlugin];

  if (v6 == v7)
  {
    [*(a1 + 32) setBrowserViewReadyForUserInteraction:1];
  }

  return [*(a1 + 32) setTransitioningFromSnapshotToLiveView:0];
}

void __71__CKBrowserSwitcherViewController__transitionSnapshotViewToBrowserView__block_invoke_420(uint64_t a1)
{
  v1 = [*(a1 + 32) activeBrowserView];
  [v1 setAlpha:1.0];
}

- (unint64_t)supportedInterfaceOrientations
{
  balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E69A6988]])
  {

    supportedInterfaceOrientations = 2;
LABEL_9:

    return supportedInterfaceOrientations;
  }

  balloonPlugin2 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  identifier2 = [balloonPlugin2 identifier];
  v8 = [identifier2 isEqualToString:*MEMORY[0x1E69A69A8]];

  if ((v8 & 1) == 0)
  {
    currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];

    if (currentViewController)
    {
      [(CKBrowserSwitcherViewController *)self currentViewController];
    }

    else
    {
      +[CKUIBehavior sharedBehaviors];
    }
    balloonPlugin = ;
    supportedInterfaceOrientations = [balloonPlugin supportedInterfaceOrientations];
    goto LABEL_9;
  }

  return 2;
}

- (BOOL)_currentPluginIsJellyfish
{
  currentVisiblePlugin = [(CKBrowserSwitcherViewController *)self currentVisiblePlugin];
  identifier = [currentVisiblePlugin identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [identifier isEqualToString:v4];

  return v5;
}

- (void)_insertCurrentBrowserAndRemoveOldBrowsersIfNeeded
{
  v57 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  allKeys = [livePluginIdentifierToTimestampMap allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v5)
  {
    v6 = *v50;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = +[CKBalloonPluginManager sharedInstance];
        v10 = [v9 existingViewControllerForPluginIdentifier:v8];

        if (v10)
        {
          currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];
          v12 = v10 == currentViewController;

          if (!v12 && ([v10 mayBeKeptInViewHierarchy] & 1) == 0)
          {
            [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v8];
          }
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v5);
  }

  v44 = 0;
  *&v13 = 138412290;
  v43 = v13;
  while (1)
  {
    livePluginIdentifierToTimestampMap2 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v15 = [livePluginIdentifierToTimestampMap2 count];
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = v15 > [v16 maxNumLiveBrowserViewsToKeepInViewHierarchy];

    if (!v17)
    {
      break;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    livePluginIdentifierToTimestampMap3 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v19 = [livePluginIdentifierToTimestampMap3 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = *v46;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(livePluginIdentifierToTimestampMap3);
          }

          v24 = *(*(&v45 + 1) + 8 * j);
          livePluginIdentifierToTimestampMap4 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
          v26 = [livePluginIdentifierToTimestampMap4 objectForKey:v24];

          if (!v20 || [v26 compare:v20] == -1)
          {
            v27 = v26;

            v28 = v24;
            v20 = v27;
            v21 = v28;
          }
        }

        v19 = [livePluginIdentifierToTimestampMap3 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v19);

      if (v21)
      {
        [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v21];
      }
    }

    else
    {

      v21 = 0;
      v20 = 0;
    }

    if (++v44 >= 2 && IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = v43;
        v54 = v21;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "CKBrowserSwitcherViewController: unexpectedly removing live browser for plugin %@", buf, 0xCu);
      }
    }
  }

  currentViewController2 = [(CKBrowserSwitcherViewController *)self currentViewController];
  if (currentViewController2)
  {
    childViewControllers = [(CKBrowserSwitcherViewController *)self childViewControllers];
    currentViewController3 = [(CKBrowserSwitcherViewController *)self currentViewController];
    v33 = [childViewControllers containsObject:currentViewController3];

    if ((v33 & 1) == 0)
    {
      currentViewController4 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [(CKBrowserSwitcherViewController *)self addChildViewController:currentViewController4];

      currentViewController5 = [(CKBrowserSwitcherViewController *)self currentViewController];
      balloonPlugin = [currentViewController5 balloonPlugin];
      identifier = [balloonPlugin identifier];

      if (([identifier isEqualToString:*MEMORY[0x1E69A69A8]] & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", *MEMORY[0x1E69A6988]) & 1) == 0)
      {
        currentViewController6 = [(CKBrowserSwitcherViewController *)self currentViewController];
        activeBrowserView = [(CKBrowserSwitcherViewController *)self activeBrowserView];
        [(CKBrowserSwitcherViewController *)self _updateActiveBrowserAlphaStateOnInsertForCurrentController:currentViewController6 currentView:activeBrowserView];
      }

      currentViewController7 = [(CKBrowserSwitcherViewController *)self currentViewController];
      balloonPlugin2 = [currentViewController7 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self _updateBrowserViewPositionForPluginAndInsertIfNecessary:balloonPlugin2];

      currentViewController8 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [currentViewController8 didMoveToParentViewController:self];
    }
  }
}

- (void)_updateActiveBrowserAlphaStateOnInsertForCurrentController:(id)controller currentView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([controllerCopy isLoaded] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "====> set the browser view's alpha to 0.0!", v8, 2u);
      }
    }

    [viewCopy setAlpha:0.0];
  }
}

- (void)_updateBrowserViewPositionForPluginAndInsertIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (![(CKBrowserSwitcherViewController *)self isTransitioningExpandedState]|| [(CKBrowserSwitcherViewController *)self browserIsCollapsingFromFullscreen])
  {
    v5 = +[CKBalloonPluginManager sharedInstance];
    visibleSwitcherPlugins = [v5 visibleSwitcherPlugins];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__CKBrowserSwitcherViewController__updateBrowserViewPositionForPluginAndInsertIfNecessary___block_invoke;
    v7[3] = &unk_1E72F6CB8;
    v8 = necessaryCopy;
    selfCopy = self;
    [visibleSwitcherPlugins enumerateObjectsUsingBlock:v7];
  }
}

void __91__CKBrowserSwitcherViewController__updateBrowserViewPositionForPluginAndInsertIfNecessary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = a2;
  v6 = [v21 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) _browserSize];
    v10 = v9;
    v12 = v11;
    v13 = +[CKBalloonPluginManager sharedInstance];
    v14 = [v21 identifier];
    v15 = [v13 existingViewControllerForPluginIdentifier:v14];

    if (v15)
    {
      v16 = [v15 view];
      [v16 setAutoresizingMask:18];
      [v16 setFrame:{0.0, 0.0, v10, v12}];
      v17 = [v16 superview];
      v18 = [*(a1 + 40) browserContainer];

      if (v17 != v18)
      {
        v19 = [*(a1 + 40) browserContainer];
        [v19 addSubview:v16];

        v20 = [*(a1 + 40) browserContainer];
        [v20 bringSubviewToFront:v16];
      }
    }

    *a4 = 1;
  }
}

- (void)_removeBrowserWithPluginIdentifierFromViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = [v4 existingViewControllerForPluginIdentifier:hierarchyCopy];

  if (v5)
  {
    [(CKBrowserSwitcherViewController *)self _removeBrowserFromViewHierarchy:v5];
  }

  livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  [livePluginIdentifierToTimestampMap removeObjectForKey:hierarchyCopy];
}

- (void)_removeBrowserFromViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  parentViewController = [hierarchyCopy parentViewController];
  v6 = parentViewController;
  if (parentViewController == self)
  {
  }

  else
  {
    parentViewController2 = [hierarchyCopy parentViewController];

    if (parentViewController2)
    {
      goto LABEL_14;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [hierarchyCopy deferredForceTearDownRemoteView];
  }

  else if (objc_opt_respondsToSelector())
  {
    [hierarchyCopy forceTearDownRemoteView];
  }

  [hierarchyCopy willMoveToParentViewController:0];
  view = [hierarchyCopy view];
  [view removeFromSuperview];

  [hierarchyCopy removeFromParentViewController];
  [(CKBrowserSwitcherViewController *)self removeChildViewController:hierarchyCopy];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "====> set the browser view's alpha to 1.0 when removing from hierarchy", v11, 2u);
    }
  }

  view2 = [hierarchyCopy view];
  [view2 setAlpha:1.0];

LABEL_14:
}

- (void)_updateActiveBrowserTimestampForCurrentBalloonPlugin
{
  if (!self->_livePluginIdentifierToTimestampMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    livePluginIdentifierToTimestampMap = self->_livePluginIdentifierToTimestampMap;
    self->_livePluginIdentifierToTimestampMap = Mutable;
  }

  balloonPlugin = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  identifier = [balloonPlugin identifier];

  if (identifier)
  {
    livePluginIdentifierToTimestampMap = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    date = [MEMORY[0x1E695DF00] date];
    balloonPlugin2 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    identifier2 = [balloonPlugin2 identifier];
    [livePluginIdentifierToTimestampMap setObject:date forKey:identifier2];
  }
}

- (void)setCurrentViewController:(id)controller
{
  controllerCopy = controller;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "In setCurrentViewController", buf, 2u);
    }
  }

  if (self->_currentViewController != controllerCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "===> setCurrentViewController called, switching view controllers", buf, 2u);
      }
    }

    objc_storeStrong(&self->_currentViewController, controller);
    if (controllerCopy)
    {
      [(CKBrowserSwitcherViewController *)self _updateActiveBrowserTimestampForCurrentBalloonPlugin];
      [(CKBrowserSwitcherViewController *)self _insertCurrentBrowserAndRemoveOldBrowsersIfNeeded];
      if (objc_opt_respondsToSelector())
      {
        if ([(CKBrowserViewControllerProtocol *)controllerCopy isLoaded])
        {
          [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
        }
      }
    }

    balloonPlugin = [(CKBrowserViewControllerProtocol *)controllerCopy balloonPlugin];
    if (balloonPlugin)
    {
      v9 = +[CKBalloonPluginManager sharedInstance];
      [v9 updateLaunchStatus:1 forPlugin:balloonPlugin withNotification:0];
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_17;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "===>  plugin is nil, not updating launch identifier, launch status or page control", buf, 2u);
      }
    }

LABEL_17:
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "===>  informing delegate that we finished switching", buf, 2u);
      }
    }

    delegate = [(CKBrowserSwitcherViewController *)self delegate];
    [delegate switcherViewControllerDidFinishSwitching:self toViewController:self->_currentViewController];

    contentView = [(CKBrowserSwitcherViewController *)self contentView];
    grabberView = [(CKBrowserSwitcherViewController *)self grabberView];
    [contentView bringSubviewToFront:grabberView];
  }

  balloonPlugin2 = [(CKBrowserViewControllerProtocol *)controllerCopy balloonPlugin];
  identifier = [balloonPlugin2 identifier];
  v16 = [identifier isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v16)
  {
    currentViewController = self->_currentViewController;
    contentView2 = [(CKBrowserSwitcherViewController *)self contentView];
    [(CKBrowserViewControllerProtocol *)currentViewController setDragTargetView:contentView2];
  }

  else
  {
    balloonPlugin3 = [(CKBrowserViewControllerProtocol *)controllerCopy balloonPlugin];
    identifier2 = [balloonPlugin3 identifier];
    v21 = [identifier2 isEqualToString:@"com.apple.appstore.MessagesProvider"];

    if (v21)
    {
      [(CKBrowserViewControllerProtocol *)controllerCopy setAdditionalSafeAreaInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }
  }

  childViewControllers = [(CKBrowserSwitcherViewController *)self childViewControllers];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__CKBrowserSwitcherViewController_setCurrentViewController___block_invoke;
  v23[3] = &unk_1E72F6C68;
  v23[4] = self;
  [childViewControllers enumerateObjectsUsingBlock:v23];
}

void __60__CKBrowserSwitcherViewController_setCurrentViewController___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 conformsToProtocol:&unk_1F05AEEC8];
  v4 = v9;
  if (v3)
  {
    v5 = v9;
    v6 = [*(a1 + 32) currentViewController];
    v7 = v6;
    if (v6 == v5)
    {
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        [v5 browserScrolledOnScreen];
      }
    }

    else
    {
    }

    v4 = v9;
  }
}

- (void)handleExpandButton:(id)button
{
  buttonCopy = button;
  if (![(CKBrowserSwitcherViewController *)self isDragging]&& [(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction]&& IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "handleExpandButton: is a no-op. Bailing.", v6, 2u);
    }
  }
}

- (void)_loadBrowserForBalloonPlugin:(id)plugin datasource:(id)datasource
{
  v29 = *MEMORY[0x1E69E9840];
  pluginCopy = plugin;
  datasourceCopy = datasource;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [pluginCopy identifier];
      *buf = 138412290;
      v28 = identifier;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Loading browser for plugin: %@", buf, 0xCu);
    }
  }

  v10 = +[CKBalloonPluginManager sharedInstance];
  visibleSwitcherPlugins = [v10 visibleSwitcherPlugins];
  v12 = [visibleSwitcherPlugins indexOfObject:pluginCopy];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        identifier2 = [pluginCopy identifier];
        *buf = 138412290;
        v28 = identifier2;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Browser was not found for plugin: %@", buf, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    currentViewController = [(CKBrowserSwitcherViewController *)self currentViewController];

    if (currentViewController)
    {
      transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
      [transitionCoordinator releaseOwnershipOfBrowserForConsumer:1];
    }

    [(CKBrowserSwitcherViewController *)self setBrowserIsLoadingCompact:1];
    transitionCoordinator2 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v18 = [transitionCoordinator2 updateBrowserSessionForPlugin:pluginCopy datasource:datasourceCopy];

    if (!v18)
    {
      [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_30;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "_loadBrowserForBalloonPlugin failed to update browser session", buf, 2u);
      }

      goto LABEL_9;
    }

    transitionCoordinator3 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    wasCurrentBrowserExpanded = [transitionCoordinator3 wasCurrentBrowserExpanded];

    transitionCoordinator4 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v22 = [transitionCoordinator4 requestOwnershipOfBrowserForConsumer:1];

    [(CKBrowserSwitcherViewController *)self setBrowserIsLoadingCompact:0];
    if (wasCurrentBrowserExpanded && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v22 viewWillTransitionToCompactPresentation];
    }

    if (v22)
    {
      identifier3 = [pluginCopy identifier];
      [(CKBrowserSwitcherViewController *)self _switchToVisiblePluginWithIdentifier:identifier3];

      [(CKBrowserSwitcherViewController *)self setCurrentViewController:v22];
      balloonPlugin = [v22 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:balloonPlugin];

      if (wasCurrentBrowserExpanded)
      {
        if (objc_opt_respondsToSelector())
        {
          [v22 viewDidTransitionToCompactPresentation];
          if ([v22 isLoaded])
          {
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __75__CKBrowserSwitcherViewController__loadBrowserForBalloonPlugin_datasource___block_invoke;
            v26[3] = &unk_1E72EBA18;
            v26[4] = self;
            [MEMORY[0x1E69DD250] performWithoutAnimation:v26];
          }
        }
      }
    }

    else
    {
      [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "_loadBrowserForBalloonPlugin failed to acquire browser after load", buf, 2u);
        }
      }
    }
  }

LABEL_30:
}

- (BOOL)_switchToVisiblePluginWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = +[CKBalloonPluginManager sharedInstance];
  visibleSwitcherPlugins = [v5 visibleSwitcherPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CKBrowserSwitcherViewController__switchToVisiblePluginWithIdentifier___block_invoke;
  v9[3] = &unk_1E72F6CE0;
  v7 = identifierCopy;
  v10 = v7;
  selfCopy = self;
  v12 = &v13;
  [visibleSwitcherPlugins enumerateObjectsUsingBlock:v9];

  LOBYTE(self) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return self;
}

void __72__CKBrowserSwitcherViewController__switchToVisiblePluginWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 identifier];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    [*(a1 + 40) setBalloonPlugin:v9];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)dragManagerWillStartDrag:(id)drag
{
  dragCopy = drag;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Switcher heard dragManagerWillStartDrag", v7, 2u);
    }
  }

  [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker setEnabled:0];
  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator stopAnimation:1];
  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator finishAnimationAtPosition:2];
  expandPropertyAnimator = self->_expandPropertyAnimator;
  self->_expandPropertyAnimator = 0;
}

- (void)dragManagerDidStartDrag:(id)drag
{
  dragCopy = drag;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Switcher heard dragManagerDidStartDrag", v6, 2u);
    }
  }

  [(CKBrowserSwitcherViewController *)self setInDragAndDrop:1];
}

- (void)dragManagerDidEndDragging:(id)dragging
{
  v4 = dispatch_time(0, 400000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CKBrowserSwitcherViewController_dragManagerDidEndDragging___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

uint64_t __61__CKBrowserSwitcherViewController_dragManagerDidEndDragging___block_invoke(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Switcher heard dragManagerDidEndDragging", v4, 2u);
    }
  }

  [*(a1 + 32) setInDragAndDrop:0];
  return [*(*(a1 + 32) + 992) setEnabled:1];
}

- (CGSize)_browserSize
{
  browserContainer = [(CKBrowserSwitcherViewController *)self browserContainer];
  if (browserContainer)
  {
    [(CKBrowserSwitcherViewController *)self browserContainer];
  }

  else
  {
    [(CKBrowserSwitcherViewController *)self contentView];
  }
  v4 = ;
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)appGrabberViewCloseButtonTapped:(id)tapped
{
  transitionCoordinator = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  sendDelegate = [transitionCoordinator sendDelegate];
  [sendDelegate dismissAndReloadInputViews:0];
}

- (CKBrowserSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end