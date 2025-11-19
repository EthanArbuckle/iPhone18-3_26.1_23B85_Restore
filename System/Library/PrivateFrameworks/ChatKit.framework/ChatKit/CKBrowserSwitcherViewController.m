@interface CKBrowserSwitcherViewController
- (BOOL)_currentPluginIsJellyfish;
- (BOOL)_hasLandscapeGutters;
- (BOOL)_pluginHasLiveBrowserViewInSwitcher:(id)a3;
- (BOOL)_shouldLimitExpandGestureToGrabber;
- (BOOL)_switchToVisiblePluginWithIdentifier:(id)a3;
- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isBrowserSwitcherFirstLaunch;
- (BOOL)shouldAlwaysShowAppTitle;
- (CGRect)cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:(id)a3;
- (CGRect)restingGrabberFrame;
- (CGSize)_browserSize;
- (CGSize)browserTransitionCoordinator:(id)a3 preferredSizeForBrowser:(id)a4;
- (CKAppGrabberView)grabberView;
- (CKBrowserSwitcherViewController)initWithConversation:(id)a3 sendDelegate:(id)a4 presentingViewController:(id)a5;
- (CKBrowserSwitcherViewControllerDelegate)delegate;
- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)result maxOffset:(double)a4 minOffset:(double)a5 range:(double)a6 outside:(BOOL *)a7;
- (double)browserTransitionCoordinatorCollapsedContentHeight:(id)a3;
- (double)restingContainerViewOriginY;
- (id)activeBrowserView;
- (id)appIconOverride;
- (id)appTitleOverride;
- (id)traitCollection;
- (id)transitionsPresentationViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleRemoteViewControllerConnectionInterrupted:(id)a3;
- (void)_handleVisibleSwitcherPluginsChanged:(id)a3;
- (void)_insertCurrentBrowserAndRemoveOldBrowsersIfNeeded;
- (void)_loadBrowserForBalloonPlugin:(id)a3 datasource:(id)a4;
- (void)_performAfterFirstLayout:(id)a3;
- (void)_removeBrowserFromViewHierarchy:(id)a3;
- (void)_removeBrowserWithPluginIdentifierFromViewHierarchy:(id)a3;
- (void)_snapshotCurrentViewController;
- (void)_transitionSnapshotViewToBrowserView;
- (void)_transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay:(id)a3;
- (void)_updateActiveBrowserAlphaStateOnInsertForCurrentController:(id)a3 currentView:(id)a4;
- (void)_updateActiveBrowserTimestampForCurrentBalloonPlugin;
- (void)_updateBrowserViewPositionForPluginAndInsertIfNecessary:(id)a3;
- (void)_updateCurrentBrowserSnapshotIfPossible;
- (void)_updateVisibleBrowserView;
- (void)animateInCompactWithCompletion:(id)a3;
- (void)animateOutCompactWithCompletion:(id)a3;
- (void)appGrabberViewCloseButtonTapped:(id)a3;
- (void)browserTransitionCoordinator:(id)a3 didSwitchToPlugin:(id)a4;
- (void)browserTransitionCoordinator:(id)a3 didTransitionFromOrientation:(int64_t)a4 toOrientation:(int64_t)a5;
- (void)browserTransitionCoordinator:(id)a3 expandedStateDidChange:(BOOL)a4 withReason:(int64_t)a5;
- (void)browserTransitionCoordinator:(id)a3 hasUpdatedLastTouchDate:(id)a4;
- (void)browserTransitionCoordinator:(id)a3 willPresentBrowserModally:(id)a4;
- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorWantsPresentationOfAppManager:(id)a3;
- (void)browserTransitionCoordinatorWantsPresentationOfAppStore:(id)a3;
- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)a3 withReason:(int64_t)a4;
- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4;
- (void)cleanupExpandAnimatorState;
- (void)dealloc;
- (void)dragManagerDidEndDragging:(id)a3;
- (void)dragManagerDidStartDrag:(id)a3;
- (void)dragManagerWillStartDrag:(id)a3;
- (void)expandGestureTouchMoved:(id)a3;
- (void)handleExpandButton:(id)a3;
- (void)layoutMarginsDidChange;
- (void)loadView;
- (void)reinsertAppGrabberViewForBrowserTransitionCoordinator:(id)a3;
- (void)reverseAndCleanupExpandAnimator;
- (void)saveSnapshotForCurrentBrowserViewControllerIfPossible;
- (void)setBalloonPlugin:(id)a3;
- (void)setBrowserViewReadyForUserInteraction:(BOOL)a3;
- (void)setCurrentViewController:(id)a3;
- (void)setCurrentVisiblePlugin:(id)a3;
- (void)setupPausedExpandAnimatorIfNeeded;
- (void)showBrowserFullscreenModalForPlugin:(id)a3 datasource:(id)a4 preferredContentSize:(CGSize)a5;
- (void)showBrowserInSwitcherForPlugin:(id)a3 datasource:(id)a4 reloadData:(BOOL)a5;
- (void)stopExpandAnimatorAndCleanupState;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadRemoteViewControllers;
- (void)updateGrabberTitleAndIconForPlugin:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKBrowserSwitcherViewController

- (void)dealloc
{
  [(CKBrowserSwitcherViewController *)self unloadRemoteViewControllers];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  [v4 setDelegate:0];

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 setIdleTimerDisabled:0];

  [(UIViewPropertyAnimator *)self->_expandPropertyAnimator stopAnimation:1];
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v6 dealloc];
}

- (CKBrowserSwitcherViewController)initWithConversation:(id)a3 sendDelegate:(id)a4 presentingViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = CKBrowserSwitcherViewController;
  v11 = [(CKBrowserSwitcherViewController *)&v22 init];
  if (v11)
  {
    v12 = objc_alloc_init(CKBrowserTransitionCoordinator);
    [(CKBrowserTransitionCoordinator *)v12 setConversation:v8];
    [(CKBrowserTransitionCoordinator *)v12 setSendDelegate:v9];
    [(CKBrowserTransitionCoordinator *)v12 setPresentingViewController:v10];
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
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__CKBrowserSwitcherViewController_initWithConversation_sendDelegate_presentingViewController___block_invoke;
    v19[3] = &unk_1E72F3B70;
    objc_copyWeak(&v20, &location);
    v17 = [v15 addObserverForName:@"com.apple.messages.CKScreenTimeDidEnterCurrentAppRestrictionNotification" object:0 queue:v16 usingBlock:v19];

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
  v4 = [(CKBrowserSwitcherViewController *)self view];
  [v4 frame];
  v5 = [(_CKBrowserSwitcherView *)v3 initWithFrame:?];

  v6 = [(CKBrowserSwitcherViewController *)self view];
  -[_CKBrowserSwitcherView setAutoresizingMask:](v5, "setAutoresizingMask:", [v6 autoresizingMask]);

  [(CKBrowserSwitcherViewController *)self setView:v5];
  [(_CKBrowserSwitcherView *)v5 bounds];
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v8, v9, v10}];
  [(CKBrowserSwitcherViewController *)self setContentView:v11];
  v12 = [(CKBrowserSwitcherViewController *)self view];
  [v12 addSubview:v11];

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
  v27 = [v26 theme];
  v28 = [v27 browserSwitcherGutterColor];
  [v25 setBackgroundColor:v28];

  [v25 setAccessibilityIdentifier:@"appBrowserSwitcherIdentifier"];
  [v25 setSemanticContentAttribute:3];
  [(CKBrowserSwitcherViewController *)self setBrowserContainer:v25];
  [v11 addSubview:v25];
  v29 = [(CKBrowserSwitcherViewController *)self grabberView];
  [v11 addSubview:v29];

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

    v34 = [(CKBrowserSwitcherViewController *)self shadowView];
    v35 = [v34 layer];
    [v35 setShadowRadius:4.0];

    v36 = [(CKBrowserSwitcherViewController *)self shadowView];
    v37 = [v36 layer];
    [v37 setShadowOffset:{0.0, -6.0}];

    v38 = [(CKBrowserSwitcherViewController *)self view];
    v39 = [(CKBrowserSwitcherViewController *)self shadowView];
    [v38 insertSubview:v39 atIndex:0];
  }
}

- (id)activeBrowserView
{
  v2 = [(CKBrowserSwitcherViewController *)self currentViewController];
  v3 = [v2 view];

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v99.receiver = self;
  v99.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v99 viewDidLayoutSubviews];
  v3 = [(CKBrowserSwitcherViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;

  v8 = [(CKBrowserSwitcherViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v7 + v5;
  if ([(CKBrowserSwitcherViewController *)self _hasLandscapeGutters])
  {
    v14 = [(CKBrowserSwitcherViewController *)self view];
    [v14 setBackgroundColor:0];
  }

  v15 = v5 + v10;
  v16 = v12 - v13;
  v17 = [(CKBrowserSwitcherViewController *)self grabberView];
  v18 = [(CKBrowserSwitcherViewController *)self contentView];
  v19 = [v17 isDescendantOfView:v18];

  if (v19)
  {
    [(CKBrowserSwitcherViewController *)self restingGrabberFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(CKBrowserSwitcherViewController *)self grabberView];
    [v28 setFrame:{v21, v23, v25, v27}];

    v29 = [(CKBrowserSwitcherViewController *)self grabberView];
    [v29 frame];
    v31 = v30;
    v32 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [v32 frame];
    v34 = v31 + v33;

    v35 = [(CKBrowserSwitcherViewController *)self grabberView];
    [v35 frame];
    v37 = v36;
    v39 = v38;
    v40 = [(CKBrowserSwitcherViewController *)self grabberView];
    [v40 frame];
    v42 = v41;
    v43 = [(CKBrowserSwitcherViewController *)self shadowView];
    [v43 setFrame:{v37, v39, v42, v34}];

    v44 = MEMORY[0x1E69DC728];
    v45 = [(CKBrowserSwitcherViewController *)self shadowView];
    [v45 frame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = UIRectCornersAtEdges();
    [(CKAppGrabberView *)self->_grabberView _cornerRadius];
    v56 = v55;
    [(CKAppGrabberView *)self->_grabberView _cornerRadius];
    v58 = [v44 bezierPathWithRoundedRect:v54 byRoundingCorners:v47 cornerRadii:{v49, v51, v53, v56, v57}];
    v59 = [v58 CGPath];
    v60 = [(CKBrowserSwitcherViewController *)self shadowView];
    v61 = [v60 layer];
    [v61 setShadowPath:v59];
  }

  else
  {
    v45 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [(CKBrowserSwitcherViewController *)self cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:v45];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v58 = [(CKBrowserSwitcherViewController *)self shadowView];
    [v58 setFrame:{v63, v65, v67, v69}];
  }

  +[CKAppGrabberView compactRoundedCornerRadius];
  v71 = v70 <= 0.0;
  v72 = 0.06;
  if (v71)
  {
    v72 = 0.0;
  }

  v73 = v72;
  v74 = [(CKBrowserSwitcherViewController *)self shadowView];
  v75 = [v74 layer];
  *&v76 = v73;
  [v75 setShadowOpacity:v76];

  v77 = [(CKBrowserSwitcherViewController *)self contentView];
  v78 = [(CKBrowserSwitcherViewController *)self view];
  [v78 bounds];
  [v77 setFrame:?];

  v79 = [(CKBrowserSwitcherViewController *)self contentView];
  [v79 bounds];
  v81 = v80;

  [(CKBrowserSwitcherViewController *)self restingContainerViewOriginY];
  v83 = v82;
  v84 = v81 - v82;
  v85 = +[CKUIBehavior sharedBehaviors];
  [v85 browserSwitcherExpandThreshold];
  v87 = v84 + v86;

  v88 = [(CKBrowserSwitcherViewController *)self browserContainer];
  [v88 setFrame:{v15, v83, v16, v87}];

  v89 = [(CKBrowserSwitcherViewController *)self cell];
  v90 = [(CKBrowserSwitcherViewController *)self browserContainer];
  [v90 bounds];
  [v89 setFrame:?];

  v91 = [(CKBrowserSwitcherViewController *)self currentViewController];
  if (v91)
  {
    v92 = v91;
    v93 = [(CKBrowserSwitcherViewController *)self activeBrowserView];
    [v93 frame];
    v94 = CGRectEqualToRect(v100, *MEMORY[0x1E695F058]);

    if (v94)
    {
      v95 = [(CKBrowserSwitcherViewController *)self currentViewController];
      v96 = [v95 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self _updateBrowserViewPositionForPluginAndInsertIfNecessary:v96];
    }
  }

  [(CKBrowserSwitcherViewController *)self setViewHasLaidOutSubviews:1];
  v97 = [(CKBrowserSwitcherViewController *)self performAfterFirstLayoutBlock];

  if (v97)
  {
    v98 = [(CKBrowserSwitcherViewController *)self performAfterFirstLayoutBlock];
    v98[2]();

    [(CKBrowserSwitcherViewController *)self setPerformAfterFirstLayoutBlock:0];
  }
}

- (BOOL)isBrowserSwitcherFirstLaunch
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BrowserSwitcherFirstLaunch"];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 setBool:1 forKey:@"BrowserSwitcherFirstLaunch"];
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

  v4 = [(CKBrowserSwitcherViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_dragManagerWillStartDrag_ name:@"CKBrowserDragManagerWillStartDraggingNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_dragManagerDidStartDrag_ name:@"CKBrowserDragManagerDidStartDraggingNotification" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_dragManagerDidEndDragging_ name:@"CKBrowserDragManagerDidEndDraggingNotification" object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay_ name:@"CKMessageExtensionBrowserViewControllerDidPrepareForDisplay" object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__handleRemoteViewControllerConnectionInterrupted_ name:*MEMORY[0x1E69A6F28] object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__handleRemoteViewControllerConnectionInterrupted_ name:@"CKRemoteViewFailedInstantiationNotification" object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel_saveSnapshotForCurrentBrowserViewControllerIfPossible name:*MEMORY[0x1E69DDBC8] object:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__handleVisibleSwitcherPluginsChanged_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v7 viewWillAppear:a3];
  v4 = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBrowserSwitcherViewController *)self delegate];
    [v6 switcherViewControllerWillAppear:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v10 viewWillDisappear:a3];
  v4 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([v4 currentConsumer] == 1)
  {
    v5 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v6 = [v5 isPresentingFullScreenModal];

    if ((v6 & 1) == 0)
    {
      [(CKBrowserSwitcherViewController *)self _updateCurrentBrowserSnapshotIfPossible];
    }
  }

  else
  {
  }

  v7 = [(CKBrowserSwitcherViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CKBrowserSwitcherViewController *)self delegate];
    [v9 switcherViewControllerWillDisappear:self];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v10 viewDidAppear:a3];
  v4 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([v4 currentConsumer] != 1)
  {
    goto LABEL_4;
  }

  v5 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  if ([v5 isPresentingFullScreenModal])
  {

LABEL_4:
    goto LABEL_5;
  }

  v7 = [(CKBrowserSwitcherViewController *)self currentViewController];
  v8 = [v7 isLoaded];

  if (v8)
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
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 postNotificationName:@"PPTDidShowBrowserSwitcherViewController" object:self userInfo:0];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherViewController;
  [(CKBrowserSwitcherViewController *)&v4 viewDidDisappear:a3];
  [(CKBrowserSwitcherViewController *)self setAllowFooterLabelUpdates:0];
  [(CKBrowserSwitcherViewController *)self stopExpandAnimatorAndCleanupState];
}

- (CGSize)browserTransitionCoordinator:(id)a3 preferredSizeForBrowser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  if ([(CKBrowserSwitcherViewController *)self viewHasLaidOutSubviews]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(CKBrowserSwitcherViewController *)self delegate];
    v11 = v8;
    v12 = v9;
    if (objc_opt_respondsToSelector())
    {
      [v10 browserTransitionCoordinator:v6 preferredSizeForBrowser:v7];
      v12 = v13;
      v11 = v14;
    }

    v15 = v12 == v9 && v11 == v8;
    if (v15 && [(CKBrowserSwitcherViewController *)self browserIsLoadingCompact])
    {
      v16 = [(CKBrowserSwitcherViewController *)self browserContainer];
      [v16 bounds];
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

- (void)browserTransitionCoordinator:(id)a3 willPresentBrowserModally:(id)a4
{
  v8 = a4;
  v5 = [(CKBrowserSwitcherViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKBrowserSwitcherViewController *)self delegate];
    [v7 switcherViewController:self willPresentBrowserModally:v8];
  }
}

- (void)browserTransitionCoordinator:(id)a3 didTransitionFromOrientation:(int64_t)a4 toOrientation:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  v7 = [v6 allKeys];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          [v14 didTransitionFromOrientation:a4 toOrientation:a5];
        }

        v15 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
        v16 = [v15 identifier];
        v17 = [v16 isEqualToString:v12];

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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(CKBrowserSwitcherViewController *)self currentViewController];
  [v8 viewWillTransitionToSize:v7 withTransitionCoordinator:{width, height}];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CKBrowserSwitcherViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E72EC3E8;
  v9[4] = self;
  [v7 animateAlongsideTransition:v9 completion:0];
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

- (void)reinsertAppGrabberViewForBrowserTransitionCoordinator:(id)a3
{
  v9 = [(CKBrowserSwitcherViewController *)self grabberView];
  v4 = [(CKBrowserSwitcherViewController *)self contentView];
  v5 = [v9 isDescendantOfView:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKBrowserSwitcherViewController *)self contentView];
    [v6 addSubview:v9];

    [v9 setDelegate:self];
    v7 = [(CKBrowserSwitcherViewController *)self view];
    [v7 setNeedsLayout];

    v8 = [(CKBrowserSwitcherViewController *)self view];
    [v8 layoutIfNeeded];
  }
}

- (CGRect)cachedCompactFrameInWindowCoordsForBrowserTransitionCoordinator:(id)a3
{
  v4 = [(CKBrowserSwitcherViewController *)self browserContainer];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKBrowserSwitcherViewController *)self restingContainerViewOriginY];
  v12 = v11;
  v13 = [v4 superview];
  [v13 convertRect:0 toView:{v6, v12, v8, v10}];
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
  v3 = [(CKBrowserSwitcherViewController *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(CKBrowserSwitcherViewController *)self view];
  [v8 safeAreaInsets];
  v10 = v9;
  v12 = v11;

  v13 = +[CKUIBehavior sharedBehaviors];
  v14 = [v13 isAppStripInKeyboard];

  v15 = 0.0;
  if (v14)
  {
    [MEMORY[0x1E69DCBB8] __ck_appStripVerticalPadding];
    v15 = v16;
  }

  v17 = [(CKBrowserSwitcherViewController *)self delegate];
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
  v7 = [v6 isAppStripInKeyboard];

  result = v3 + v5;
  if (!v7)
  {
    return v5;
  }

  return result;
}

- (double)_rubberBandOffsetWithoutDecorationForOffset:(double)result maxOffset:(double)a4 minOffset:(double)a5 range:(double)a6 outside:(BOOL *)a7
{
  if (a5 >= a4)
  {
    a4 = a5;
  }

  if (fabs(a6) >= 2.22044605e-16)
  {
    if (a4 < result)
    {
      result = a4 + (1.0 - 1.0 / ((result - a4) / a6 * 0.55 + 1.0)) * a6;
      if (!a7)
      {
        return result;
      }

LABEL_9:
      *a7 = 1;
      return result;
    }

    if (result < a5)
    {
      result = a5 - (1.0 - 1.0 / ((a5 - result) / a6 * 0.55 + 1.0)) * a6;
      if (a7)
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

    v6 = [(CKBrowserSwitcherViewController *)self grabberView];
    v7 = [(CKBrowserSwitcherViewController *)self browserContainer];
    v8 = [v6 roundsTopCorners];
    v9 = objc_alloc(MEMORY[0x1E69DD278]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__CKBrowserSwitcherViewController_setupPausedExpandAnimatorIfNeeded__block_invoke;
    v24[3] = &unk_1E72F0388;
    v10 = v6;
    v28 = v5;
    v25 = v10;
    v26 = self;
    v11 = v7;
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
    v22 = v8;
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

- (void)expandGestureTouchMoved:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  switch(v5)
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
        v17 = [(CKBrowserSwitcherViewController *)self view];
        [(CKImmediatePanGestureRecognizer *)expandGestureTracker translationInView:v17];
        v41 = v18;
        v20 = v19;

        v21 = +[CKUIBehavior sharedBehaviors];
        [v21 browserSwitcherExpandThreshold];
        v23 = v22;

        v24 = [(CKBrowserSwitcherViewController *)self contentView];
        [v24 bounds];
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
        v6 = [(CKBrowserSwitcherViewController *)self grabberView];
        [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker locationInView:v6];
        v8 = v7;
        v10 = v9;
        [v6 bounds];
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

- (void)setBrowserViewReadyForUserInteraction:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_browserViewReadyForUserInteraction != a3)
  {
    v3 = a3;
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

        if (v3)
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

    self->_browserViewReadyForUserInteraction = v3;
    v8 = [(CKBrowserSwitcherViewController *)self currentViewController];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [v10 endDisablingUserInteraction];
    }
  }
}

- (void)browserTransitionCoordinator:(id)a3 expandedStateDidChange:(BOOL)a4 withReason:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  [(CKBrowserSwitcherViewController *)self setInteractiveExpandStarted:0];
  if (a5 != 1 || v6)
  {
    v16 = IMOSLoggingEnabled();
    if (v6)
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
    v9 = [v8 requestOwnershipOfBrowserForConsumer:1];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 balloonPlugin];
      v12 = +[CKBalloonPluginManager sharedInstance];
      v13 = [v12 visibleSwitcherPlugins];
      v14 = [v13 indexOfObject:v11];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v8 releaseOwnershipOfBrowserForConsumer:1];
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

    v19 = [(CKBrowserSwitcherViewController *)self delegate];
    [v19 switcherViewControllerDidCollapse:self];
  }
}

- (void)browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4
{
  v9 = a3;
  v6 = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserSwitcherViewController *)self delegate];
    [v8 browserTransitionCoordinatorWillTransitionOrPresentToFullscreen:v9 withReason:a4];
  }
}

- (void)browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:(id)a3 withReason:(int64_t)a4
{
  v9 = a3;
  v6 = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserSwitcherViewController *)self delegate];
    [v8 browserTransitionCoordinatorDidTransitionOrPresentToFullscreen:v9 withReason:a4];
  }
}

- (void)browserTransitionCoordinatorWillCollapseOrDismiss:(id)a3 withReason:(int64_t)a4
{
  v9 = a3;
  [(CKBrowserSwitcherViewController *)self setBrowserIsCollapsingFromFullscreen:1];
  if (a4 == 1)
  {
    [(CKBrowserSwitcherViewController *)self setInsertedViaCollapse:1];
  }

  v6 = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserSwitcherViewController *)self delegate];
    [v8 browserTransitionCoordinatorWillCollapseOrDismiss:v9 withReason:a4];
  }
}

- (void)browserTransitionCoordinatorDidCollapseOrDismiss:(id)a3 withReason:(int64_t)a4
{
  v9 = a3;
  v6 = [(CKBrowserSwitcherViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKBrowserSwitcherViewController *)self delegate];
    [v8 browserTransitionCoordinatorDidCollapseOrDismiss:v9 withReason:a4];
  }

  [(CKBrowserSwitcherViewController *)self setBrowserIsCollapsingFromFullscreen:0];
}

- (void)browserTransitionCoordinatorWantsPresentationOfAppStore:(id)a3
{
  v4 = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBrowserSwitcherViewController *)self delegate];
    [v6 switcherViewControllerDidSelectAppStore:self shouldRestoreAppSwitcher:0];
  }
}

- (void)browserTransitionCoordinatorWantsPresentationOfAppManager:(id)a3
{
  v4 = [(CKBrowserSwitcherViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBrowserSwitcherViewController *)self delegate];
    [v6 switcherViewControllerDidSelectAppManager:self shouldRestoreAppSwitcher:0];
  }
}

- (void)browserTransitionCoordinator:(id)a3 didSwitchToPlugin:(id)a4
{
  v5 = a4;
  [(CKBrowserSwitcherViewController *)self setBalloonPlugin:v5];
  [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:v5];

  [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
}

- (void)browserTransitionCoordinator:(id)a3 hasUpdatedLastTouchDate:(id)a4
{
  v8 = a4;
  v5 = [(CKBrowserSwitcherViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CKBrowserSwitcherViewController *)self delegate];
    [v7 switcherViewController:self hasUpdatedLastTouchDate:v8];
  }
}

- (double)browserTransitionCoordinatorCollapsedContentHeight:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 browserTransitionCoordinatorCollapsedContentHeight:v4];
    v7 = v6;
  }

  else
  {
    +[CKInputView defaultContentSize];
    v7 = v8;
  }

  return v7;
}

- (BOOL)browserTransitionCoordinatorShouldDismissOnDragSuccess:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 browserTransitionCoordinatorShouldDismissOnDragSuccess:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldAlwaysShowAppTitle
{
  v2 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldAlwaysShowAppTitle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)transitionsPresentationViewController
{
  v2 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 transitionsPresentationViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appTitleOverride
{
  v2 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 appTitleOverride];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)appIconOverride
{
  v2 = [(CKBrowserSwitcherViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 appIconOverride];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_performAfterFirstLayout:(id)a3
{
  v4 = a3;
  if ([(CKBrowserSwitcherViewController *)self viewHasLaidOutSubviews])
  {
    v4[2]();
  }

  else
  {
    [(CKBrowserSwitcherViewController *)self setPerformAfterFirstLayoutBlock:v4];
  }
}

- (void)unloadRemoteViewControllers
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserSwitcherViewController *)self currentViewController];
  [(CKBrowserSwitcherViewController *)self _removeBrowserFromViewHierarchy:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setBalloonPlugin:(id)a3
{
  v21 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self view];
  v6 = v21;
  if (self->_balloonPlugin != v21)
  {
    objc_storeStrong(&self->_balloonPlugin, a3);
    v7 = [(CKBrowserSwitcherViewController *)self cell];

    if (v7)
    {
      v8 = [(CKBrowserSwitcherViewController *)self cell];
      [v8 removeFromSuperview];
    }

    v9 = [CKBrowserSwitcherCell alloc];
    v10 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [v10 bounds];
    v11 = [(CKBrowserSwitcherCell *)v9 initWithFrame:?];

    v12 = [(IMBalloonPlugin *)v21 identifier];
    v13 = [(CKBrowserSwitcherViewController *)self browserContainer];
    v14 = [v13 traitCollection];
    v15 = [v14 userInterfaceStyle];
    v16 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [v16 frame];
    v17 = [CKSnapshotCacheKey keyWithIdentifier:v12 interfaceStyle:v15 bounds:?];

    [(CKBrowserSwitcherCell *)v11 setPlugin:v21 withSnapshotCacheKey:v17];
    v18 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [v18 addSubview:v11];

    [(CKBrowserSwitcherViewController *)self setCell:v11];
    v19 = [(CKBrowserSwitcherViewController *)self view];
    [v19 setNeedsLayout];

    v20 = [(CKBrowserSwitcherViewController *)self view];
    [v20 layoutIfNeeded];

    [(CKBrowserSwitcherViewController *)self _updateVisibleBrowserView];
    v6 = v21;
  }
}

- (void)showBrowserInSwitcherForPlugin:(id)a3 datasource:(id)a4 reloadData:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "In showBrowserInSwitcherForPlugin:datasource:reloadData:", buf, 2u);
    }
  }

  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__CKBrowserSwitcherViewController_showBrowserInSwitcherForPlugin_datasource_reloadData___block_invoke;
    v11[3] = &unk_1E72EB880;
    v11[4] = self;
    v12 = v7;
    v13 = v8;
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

- (void)showBrowserFullscreenModalForPlugin:(id)a3 datasource:(id)a4 preferredContentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = a3;
  v11 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  [v11 presentPluginFullScreenModal:v10 datasource:v9 preferredContentSize:1 animated:0 completion:{width, height}];
}

- (void)animateInCompactWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self contentView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CKBrowserSwitcherViewController *)self contentView];
  [v14 bounds];
  MaxY = CGRectGetMaxY(v28);

  v16 = [(CKBrowserSwitcherViewController *)self contentView];
  [v16 setFrame:{v7, MaxY, v11, v13}];

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
  v26 = v4;
  v18 = v4;
  [v17 _animateUsingSpringWithDuration:0 delay:v27 options:v25 mass:0.5 stiffness:0.0 damping:1.0 initialVelocity:410.0 animations:32.0 completion:0.0];
  v19 = [(CKBrowserSwitcherViewController *)self view];
  [v19 safeAreaInsets];
  v21 = v20;
  v23 = v22;

  if (v21 == 0.0 && v23 == 0.0)
  {
    v24 = [(CKBrowserSwitcherViewController *)self view];
    [v24 setBackgroundColor:0];
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

- (void)animateOutCompactWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self contentView];
  [v5 frame];
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
    v15 = [(CKBrowserSwitcherViewController *)self view];
    [v15 setBackgroundColor:0];
  }

  v16 = v9 + Height;
  v17 = [MEMORY[0x1E6979318] animation];
  [v17 setKeyPath:@"position.y"];
  v18 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v17 setTimingFunction:v18];

  [v17 setBeginTime:CACurrentMediaTime()];
  [v17 setDuration:0.200000003];
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
  [v17 setFromValue:v20];

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
  [v17 setToValue:v22];

  [v17 setFillMode:*MEMORY[0x1E69797E0]];
  [v17 setRemovedOnCompletion:0];
  v23 = [(CKBrowserSwitcherViewController *)self contentView];
  v24 = [v23 layer];
  [v24 addAnimation:v17 forKey:@"SlideOutPresentation"];

  v25 = dispatch_time(0, 200000002);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__CKBrowserSwitcherViewController_animateOutCompactWithCompletion___block_invoke;
  v27[3] = &unk_1E72ED1C8;
  v27[4] = self;
  v28 = v4;
  v26 = v4;
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
  v2 = [(CKBrowserSwitcherViewController *)self view];
  [v2 safeAreaInsets];
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
    v7 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    -[CKAppGrabberView setShowsAppTitle:](v6, "setShowsAppTitle:", [v7 shouldAlwaysShowAppTitle]);

    grabberView = self->_grabberView;
  }

  return grabberView;
}

- (void)saveSnapshotForCurrentBrowserViewControllerIfPossible
{
  if ([(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
  {
    v5 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    if ([v5 currentConsumer] == 1)
    {
      v3 = [(CKBrowserSwitcherViewController *)self currentViewController];
      v4 = objc_opt_respondsToSelector();

      if ((v4 & 1) == 0)
      {
        return;
      }

      v5 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [v5 saveSnapshotForBrowserViewController];
    }
  }
}

- (void)_handleVisibleSwitcherPluginsChanged:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  v6 = [v5 currentConsumer];

  if (v6 != 2)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:@"CKBrowserSelectionControllerUninstalledPluginsKey"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v10 = [v9 allKeys];

    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v8 containsObject:v15])
          {
            [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v16 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    v17 = [v16 identifier];
    v18 = [(CKBrowserSwitcherViewController *)self _switchToVisiblePluginWithIdentifier:v17];

    if (!v18)
    {
      [(CKBrowserSwitcherViewController *)self setAllowPluginLaunchNotifications:0];
      v19 = +[CKBalloonPluginManager sharedInstance];
      v20 = [v19 visibleSwitcherPlugins];
      v21 = [v20 firstObject];

      [(CKBrowserSwitcherViewController *)self showBrowserInSwitcherForPlugin:v21 datasource:0 reloadData:0];
      [(CKBrowserSwitcherViewController *)self setAllowPluginLaunchNotifications:1];
    }
  }
}

- (void)_updateCurrentBrowserSnapshotIfPossible
{
  currentViewController = self->_currentViewController;
  if (currentViewController)
  {
    v4 = [(CKBrowserViewControllerProtocol *)currentViewController view];
    [v4 alpha];
    v6 = v5;

    v7 = [(CKBrowserViewControllerProtocol *)self->_currentViewController viewIfLoaded];
    v8 = [v7 window];

    if ([(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
    {
      if (v6 > 0.0 && v8 != 0)
      {
        [(CKBrowserSwitcherViewController *)self _snapshotCurrentViewController];

        [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
      }
    }
  }
}

- (BOOL)_pluginHasLiveBrowserViewInSwitcher:(id)a3
{
  v4 = a3;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v4 identifier];

  v7 = [v5 existingViewControllerForPluginIdentifier:v6];

  v8 = [v7 parentViewController];
  LOBYTE(self) = v8 == self;

  return self;
}

- (BOOL)_shouldLimitExpandGestureToGrabber
{
  v2 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  if (v2)
  {
    v3 = IMBalloonExtensionIDWithSuffix();
    v4 = [v2 identifier];
    v5 = [v4 isEqualToString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  if (self->_expandGestureTracker != a3)
  {
    goto LABEL_8;
  }

  if (![(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction])
  {
    goto LABEL_8;
  }

  v7 = [(CKBrowserSwitcherViewController *)self grabberView];
  v8 = [v7 showsAppTitle];

  if (v8)
  {
    v9 = [(CKBrowserSwitcherViewController *)self grabberView];
    v10 = [v9 closeButton];

    [v6 locationInView:v10];
    LOBYTE(v9) = [v10 pointInside:0 withEvent:?];

    if (v9)
    {
      goto LABEL_8;
    }
  }

  if (![(CKBrowserSwitcherViewController *)self _shouldLimitExpandGestureToGrabber])
  {
    v13 = 1;
    goto LABEL_9;
  }

  v11 = [v6 view];

  if (v11)
  {
    v12 = [v6 view];
    v13 = [v12 isDescendantOfView:self->_grabberView];
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherViewController *)self touchTracker];
  if (v5 == v4)
  {
    v21 = [(CKBrowserSwitcherViewController *)self currentViewController];
    v22 = [v21 balloonPlugin];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [MEMORY[0x1E695DF00] date];
      v24 = [(CKBrowserSwitcherViewController *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if ((v25 & 1) == 0)
      {
        v20 = 1;
        goto LABEL_13;
      }

      v26 = [(CKBrowserSwitcherViewController *)self delegate];
      [v26 switcherViewController:self hasUpdatedLastTouchDate:v6];
      v20 = 1;
      goto LABEL_11;
    }
  }

  else if (self->_expandGestureTracker == v4)
  {
    v6 = [(CKBrowserSwitcherViewController *)self currentViewController];
    if (objc_opt_respondsToSelector())
    {
      [v6 horizontalSwipeExclusionRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [v6 view];
      [(CKImmediatePanGestureRecognizer *)v4 locationInView:v15];
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

    v26 = [(CKBrowserSwitcherViewController *)self view];
    [(CKImmediatePanGestureRecognizer *)self->_expandGestureTracker locationInView:v26];
    v28 = v27;
    v30 = v29;
    [v26 bounds];
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

- (void)setCurrentVisiblePlugin:(id)a3
{
  v7 = a3;
  if (self->_currentVisiblePlugin != v7)
  {
    objc_storeStrong(&self->_currentVisiblePlugin, a3);
    [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
    [(CKBrowserSwitcherViewController *)self updateGrabberTitleAndIconForPlugin:self->_currentVisiblePlugin];
    if (CKIsRunningInMessages())
    {
      v5 = [(CKBrowserSwitcherViewController *)self _currentPluginIsJellyfish];
      v6 = [MEMORY[0x1E69DC668] sharedApplication];
      [v6 setIdleTimerDisabled:v5];
    }
  }
}

- (void)updateGrabberTitleAndIconForPlugin:(id)a3
{
  v10 = a3;
  if ([v10 showInBrowser])
  {
    v4 = [v10 browserDisplayName];
    v5 = [(CKBrowserSwitcherViewController *)self traitCollection];
    [v10 __ck_browserImageForInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
  }

  else
  {
    v6 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v4 = [v6 appTitleOverride];

    v5 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [v5 appIconOverride];
  }
  v7 = ;

  v8 = [(CKBrowserSwitcherViewController *)self grabberView];
  v9 = [v10 identifier];
  [v8 updateAppTitle:v4 icon:v7 appIdentifier:v9];
}

- (id)traitCollection
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKBrowserSwitcherViewController;
  v2 = [(CKBrowserSwitcherViewController *)&v8 traitCollection];
  if (CKIsRunningInCameraAppsClient())
  {
    v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v4 = MEMORY[0x1E69DD1B8];
    v9[0] = v2;
    v9[1] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [v4 traitCollectionWithTraitsFromCollections:v5];

    v2 = v6;
  }

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKBrowserSwitcherViewController;
  v4 = a3;
  [(CKBrowserSwitcherViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(CKBrowserSwitcherViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
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
        v5 = [(CKBrowserViewControllerProtocol *)self->_currentViewController balloonPlugin];
        v6 = [v5 identifier];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "===> snapshotting current view controller (%@) since we're moving away", &v10, 0xCu);
      }
    }

    v7 = +[CKBalloonPluginManager sharedInstance];
    currentViewController = self->_currentViewController;
    v9 = [(CKBrowserSwitcherViewController *)self browserContainer];
    [v9 frame];
    [v7 updateSnapshotForBrowserViewController:currentViewController currentBounds:?];
  }
}

- (void)_updateVisibleBrowserView
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserSwitcherViewController *)self currentViewController];
  v4 = [v3 balloonPlugin];

  v5 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  if (-[CKBrowserSwitcherViewController _pluginHasLiveBrowserViewInSwitcher:](self, "_pluginHasLiveBrowserViewInSwitcher:", v4) && [v4 isEqual:v5])
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
        v7 = [v5 identifier];
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Requesting load of browser VC for %@", &v15, 0xCu);
      }
    }

    v8 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    [v8 releaseOwnershipOfBrowserForConsumer:1];

    v9 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v10 = [v9 updateBrowserSessionForPlugin:v5 datasource:0];

    if (v10)
    {
      v11 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
      v12 = [v11 requestOwnershipOfBrowserForConsumer:1];

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
          v14 = [v5 identifier];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Transition coordinator failed to update browser session for %@", &v15, 0xCu);
        }
      }

      [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
      [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
    }
  }
}

- (void)_transitionSnapshotViewToBrowserViewAfterViewDidPrepareForDisplay:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "===> _transitionSnapshotViewToBrowserViewAfterRemoteViewDidLoad: called with notification: %@", buf, 0xCu);
    }
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"CKRemoteViewPluginKey"];

  v8 = [v7 identifier];
  v9 = [(CKBrowserSwitcherViewController *)self currentViewController];
  v10 = [v9 balloonPlugin];
  v11 = [v10 identifier];
  v12 = [v8 isEqualToString:v11];

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
    v13 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          v18 = [v7 identifier];
          v19 = [v18 isEqualToString:v17];

          if (v19)
          {
            v20 = +[CKBalloonPluginManager sharedInstance];
            v21 = [v20 existingViewControllerForPluginIdentifier:v17];
            v22 = [v21 view];
            [v22 setAlpha:1.0];

            goto LABEL_17;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)_handleRemoteViewControllerConnectionInterrupted:(id)a3
{
  v4 = [a3 userInfo];
  v12 = [v4 objectForKey:*MEMORY[0x1E69A6F20]];

  v5 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  v6 = [v5 identifier];
  if ([v6 isEqualToString:v12])
  {
    v7 = [(CKBrowserSwitcherViewController *)self isBrowserReadyForUserInteraction];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    v5 = [v8 browserDisplayName];

    [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:0];
    [(CKBrowserSwitcherViewController *)self setBalloonPlugin:0];
    [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:0];
    v9 = [(CKBrowserSwitcherViewController *)self activeBrowserView];
    [v9 removeFromSuperview];

    v10 = [(CKBrowserSwitcherViewController *)self currentViewController];
    [v10 removeFromParentViewController];

    [(CKBrowserSwitcherViewController *)self setCurrentViewController:0];
    v11 = [(CKBrowserSwitcherViewController *)self cell];
    [v11 showExtensionInterruptedViewWithDisplayName:v5];

    v6 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    [v6 removeObjectForKey:v12];
  }

LABEL_5:
}

- (void)_transitionSnapshotViewToBrowserView
{
  if (![(CKBrowserSwitcherViewController *)self isTransitioningFromSnapshotToLiveView])
  {
    [(CKBrowserSwitcherViewController *)self setTransitioningFromSnapshotToLiveView:1];
    v3 = [(CKBrowserSwitcherViewController *)self currentVisiblePlugin];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__CKBrowserSwitcherViewController__transitionSnapshotViewToBrowserView__block_invoke;
    aBlock[3] = &unk_1E72ECCA8;
    aBlock[4] = self;
    v4 = v3;
    v12 = v4;
    v5 = _Block_copy(aBlock);
    v6 = [(CKBrowserSwitcherViewController *)self cell];
    v7 = [v6 isUsingFallbackSnapshot];

    if (v7)
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
      v9 = [(CKBrowserSwitcherViewController *)self activeBrowserView];
      [v9 setAlpha:1.0];

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
  v3 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*MEMORY[0x1E69A6988]])
  {

    v5 = 2;
LABEL_9:

    return v5;
  }

  v6 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69A69A8]];

  if ((v8 & 1) == 0)
  {
    v9 = [(CKBrowserSwitcherViewController *)self currentViewController];

    if (v9)
    {
      [(CKBrowserSwitcherViewController *)self currentViewController];
    }

    else
    {
      +[CKUIBehavior sharedBehaviors];
    }
    v3 = ;
    v5 = [v3 supportedInterfaceOrientations];
    goto LABEL_9;
  }

  return 2;
}

- (BOOL)_currentPluginIsJellyfish
{
  v2 = [(CKBrowserSwitcherViewController *)self currentVisiblePlugin];
  v3 = [v2 identifier];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_insertCurrentBrowserAndRemoveOldBrowsersIfNeeded
{
  v57 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v3 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v5)
  {
    v6 = *v50;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v50 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = +[CKBalloonPluginManager sharedInstance];
        v10 = [v9 existingViewControllerForPluginIdentifier:v8];

        if (v10)
        {
          v11 = [(CKBrowserSwitcherViewController *)self currentViewController];
          v12 = v10 == v11;

          if (!v12 && ([v10 mayBeKeptInViewHierarchy] & 1) == 0)
          {
            [(CKBrowserSwitcherViewController *)self _removeBrowserWithPluginIdentifierFromViewHierarchy:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v5);
  }

  v44 = 0;
  *&v13 = 138412290;
  v43 = v13;
  while (1)
  {
    v14 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v15 = [v14 count];
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
    v18 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v45 + 1) + 8 * j);
          v25 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
          v26 = [v25 objectForKey:v24];

          if (!v20 || [v26 compare:v20] == -1)
          {
            v27 = v26;

            v28 = v24;
            v20 = v27;
            v21 = v28;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v45 objects:v55 count:16];
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

  v30 = [(CKBrowserSwitcherViewController *)self currentViewController];
  if (v30)
  {
    v31 = [(CKBrowserSwitcherViewController *)self childViewControllers];
    v32 = [(CKBrowserSwitcherViewController *)self currentViewController];
    v33 = [v31 containsObject:v32];

    if ((v33 & 1) == 0)
    {
      v34 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [(CKBrowserSwitcherViewController *)self addChildViewController:v34];

      v35 = [(CKBrowserSwitcherViewController *)self currentViewController];
      v36 = [v35 balloonPlugin];
      v37 = [v36 identifier];

      if (([v37 isEqualToString:*MEMORY[0x1E69A69A8]] & 1) == 0 && (objc_msgSend(v37, "isEqualToString:", *MEMORY[0x1E69A6988]) & 1) == 0)
      {
        v38 = [(CKBrowserSwitcherViewController *)self currentViewController];
        v39 = [(CKBrowserSwitcherViewController *)self activeBrowserView];
        [(CKBrowserSwitcherViewController *)self _updateActiveBrowserAlphaStateOnInsertForCurrentController:v38 currentView:v39];
      }

      v40 = [(CKBrowserSwitcherViewController *)self currentViewController];
      v41 = [v40 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self _updateBrowserViewPositionForPluginAndInsertIfNecessary:v41];

      v42 = [(CKBrowserSwitcherViewController *)self currentViewController];
      [v42 didMoveToParentViewController:self];
    }
  }
}

- (void)_updateActiveBrowserAlphaStateOnInsertForCurrentController:(id)a3 currentView:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 isLoaded] & 1) == 0)
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

    [v6 setAlpha:0.0];
  }
}

- (void)_updateBrowserViewPositionForPluginAndInsertIfNecessary:(id)a3
{
  v4 = a3;
  if (![(CKBrowserSwitcherViewController *)self isTransitioningExpandedState]|| [(CKBrowserSwitcherViewController *)self browserIsCollapsingFromFullscreen])
  {
    v5 = +[CKBalloonPluginManager sharedInstance];
    v6 = [v5 visibleSwitcherPlugins];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__CKBrowserSwitcherViewController__updateBrowserViewPositionForPluginAndInsertIfNecessary___block_invoke;
    v7[3] = &unk_1E72F6CB8;
    v8 = v4;
    v9 = self;
    [v6 enumerateObjectsUsingBlock:v7];
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

- (void)_removeBrowserWithPluginIdentifierFromViewHierarchy:(id)a3
{
  v7 = a3;
  v4 = +[CKBalloonPluginManager sharedInstance];
  v5 = [v4 existingViewControllerForPluginIdentifier:v7];

  if (v5)
  {
    [(CKBrowserSwitcherViewController *)self _removeBrowserFromViewHierarchy:v5];
  }

  v6 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
  [v6 removeObjectForKey:v7];
}

- (void)_removeBrowserFromViewHierarchy:(id)a3
{
  v4 = a3;
  v5 = [v4 parentViewController];
  v6 = v5;
  if (v5 == self)
  {
  }

  else
  {
    v7 = [v4 parentViewController];

    if (v7)
    {
      goto LABEL_14;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 deferredForceTearDownRemoteView];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 forceTearDownRemoteView];
  }

  [v4 willMoveToParentViewController:0];
  v8 = [v4 view];
  [v8 removeFromSuperview];

  [v4 removeFromParentViewController];
  [(CKBrowserSwitcherViewController *)self removeChildViewController:v4];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "====> set the browser view's alpha to 1.0 when removing from hierarchy", v11, 2u);
    }
  }

  v10 = [v4 view];
  [v10 setAlpha:1.0];

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

  v5 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
  v6 = [v5 identifier];

  if (v6)
  {
    v10 = [(CKBrowserSwitcherViewController *)self livePluginIdentifierToTimestampMap];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [(CKBrowserSwitcherViewController *)self balloonPlugin];
    v9 = [v8 identifier];
    [v10 setObject:v7 forKey:v9];
  }
}

- (void)setCurrentViewController:(id)a3
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "In setCurrentViewController", buf, 2u);
    }
  }

  if (self->_currentViewController != v5)
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

    objc_storeStrong(&self->_currentViewController, a3);
    if (v5)
    {
      [(CKBrowserSwitcherViewController *)self _updateActiveBrowserTimestampForCurrentBalloonPlugin];
      [(CKBrowserSwitcherViewController *)self _insertCurrentBrowserAndRemoveOldBrowsersIfNeeded];
      if (objc_opt_respondsToSelector())
      {
        if ([(CKBrowserViewControllerProtocol *)v5 isLoaded])
        {
          [(CKBrowserSwitcherViewController *)self setBrowserViewReadyForUserInteraction:1];
        }
      }
    }

    v8 = [(CKBrowserViewControllerProtocol *)v5 balloonPlugin];
    if (v8)
    {
      v9 = +[CKBalloonPluginManager sharedInstance];
      [v9 updateLaunchStatus:1 forPlugin:v8 withNotification:0];
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

    v11 = [(CKBrowserSwitcherViewController *)self delegate];
    [v11 switcherViewControllerDidFinishSwitching:self toViewController:self->_currentViewController];

    v12 = [(CKBrowserSwitcherViewController *)self contentView];
    v13 = [(CKBrowserSwitcherViewController *)self grabberView];
    [v12 bringSubviewToFront:v13];
  }

  v14 = [(CKBrowserViewControllerProtocol *)v5 balloonPlugin];
  v15 = [v14 identifier];
  v16 = [v15 isEqualToString:@"com.apple.messages.browser.RecentPlugin"];

  if (v16)
  {
    currentViewController = self->_currentViewController;
    v18 = [(CKBrowserSwitcherViewController *)self contentView];
    [(CKBrowserViewControllerProtocol *)currentViewController setDragTargetView:v18];
  }

  else
  {
    v19 = [(CKBrowserViewControllerProtocol *)v5 balloonPlugin];
    v20 = [v19 identifier];
    v21 = [v20 isEqualToString:@"com.apple.appstore.MessagesProvider"];

    if (v21)
    {
      [(CKBrowserViewControllerProtocol *)v5 setAdditionalSafeAreaInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }
  }

  v22 = [(CKBrowserSwitcherViewController *)self childViewControllers];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__CKBrowserSwitcherViewController_setCurrentViewController___block_invoke;
  v23[3] = &unk_1E72F6C68;
  v23[4] = self;
  [v22 enumerateObjectsUsingBlock:v23];
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

- (void)handleExpandButton:(id)a3
{
  v4 = a3;
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

- (void)_loadBrowserForBalloonPlugin:(id)a3 datasource:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 identifier];
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Loading browser for plugin: %@", buf, 0xCu);
    }
  }

  v10 = +[CKBalloonPluginManager sharedInstance];
  v11 = [v10 visibleSwitcherPlugins];
  v12 = [v11 indexOfObject:v6];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v6 identifier];
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Browser was not found for plugin: %@", buf, 0xCu);
      }

LABEL_9:
    }
  }

  else
  {
    v15 = [(CKBrowserSwitcherViewController *)self currentViewController];

    if (v15)
    {
      v16 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
      [v16 releaseOwnershipOfBrowserForConsumer:1];
    }

    [(CKBrowserSwitcherViewController *)self setBrowserIsLoadingCompact:1];
    v17 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v18 = [v17 updateBrowserSessionForPlugin:v6 datasource:v7];

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

    v19 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v20 = [v19 wasCurrentBrowserExpanded];

    v21 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
    v22 = [v21 requestOwnershipOfBrowserForConsumer:1];

    [(CKBrowserSwitcherViewController *)self setBrowserIsLoadingCompact:0];
    if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v22 viewWillTransitionToCompactPresentation];
    }

    if (v22)
    {
      v23 = [v6 identifier];
      [(CKBrowserSwitcherViewController *)self _switchToVisiblePluginWithIdentifier:v23];

      [(CKBrowserSwitcherViewController *)self setCurrentViewController:v22];
      v24 = [v22 balloonPlugin];
      [(CKBrowserSwitcherViewController *)self setCurrentVisiblePlugin:v24];

      if (v20)
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

- (BOOL)_switchToVisiblePluginWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = +[CKBalloonPluginManager sharedInstance];
  v6 = [v5 visibleSwitcherPlugins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CKBrowserSwitcherViewController__switchToVisiblePluginWithIdentifier___block_invoke;
  v9[3] = &unk_1E72F6CE0;
  v7 = v4;
  v10 = v7;
  v11 = self;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v9];

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

- (void)dragManagerWillStartDrag:(id)a3
{
  v4 = a3;
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

- (void)dragManagerDidStartDrag:(id)a3
{
  v4 = a3;
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

- (void)dragManagerDidEndDragging:(id)a3
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
  v3 = [(CKBrowserSwitcherViewController *)self browserContainer];
  if (v3)
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

- (void)appGrabberViewCloseButtonTapped:(id)a3
{
  v4 = [(CKBrowserSwitcherViewController *)self transitionCoordinator];
  v3 = [v4 sendDelegate];
  [v3 dismissAndReloadInputViews:0];
}

- (CKBrowserSwitcherViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end