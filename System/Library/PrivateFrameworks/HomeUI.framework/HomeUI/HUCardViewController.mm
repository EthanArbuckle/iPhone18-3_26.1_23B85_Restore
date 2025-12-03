@interface HUCardViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (HUCardViewController)init;
- (HUCardViewController)initWithControlItems:(id)items;
- (HUCardViewControllerDelegate)delegate;
- (NAFuture)viewControllerReadyFuture;
- (NSString)description;
- (UIActivityIndicatorView)spinnerView;
- (double)_hostViewHeight;
- (double)_quickControlScrollOffsetBoundary;
- (double)_quickControlSectionHeight;
- (id)_springAnimationSettings;
- (id)backgroundVisualEffectViewForProxHandOff;
- (id)blurEffectForProxHandOff;
- (id)hu_preloadContent;
- (id)hu_prepareForDismissalAnimated:(BOOL)animated;
- (id)keyCommands;
- (id)requestDismissal;
- (void)_actuateTapticFeedback;
- (void)_checkHubAvailability;
- (void)_closeButtonPressed:(id)pressed;
- (void)_endUsingTapticFeedback;
- (void)_escapeKeyPressed;
- (void)_handlePanGesture:(id)gesture;
- (void)_nudgeScrollViewToPoint:(CGPoint)point;
- (void)_prepareForTapticFeedback;
- (void)_scrollToSettings;
- (void)_unlockSettings;
- (void)_updateCloseButtonVibrancyEffect;
- (void)_updateControlStatusTextWithPrimaryText:(id)text secondaryText:(id)secondaryText;
- (void)_updateIconDescriptorAnimated:(BOOL)animated;
- (void)_updateMaterials;
- (void)_updateReachabilityState;
- (void)_updateScrollViewAndSpinnerView;
- (void)dealloc;
- (void)dismissCardAnimated:(BOOL)animated;
- (void)externalAnimationsBegan;
- (void)externalAnimationsEnded;
- (void)forceUnlockSettings;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollToDetailsViewAnimated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBackgroundColor:(id)color;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setHideControls:(BOOL)controls;
- (void)setHideSettings:(BOOL)settings;
- (void)setIsUnavailableHub:(BOOL)hub;
- (void)setUpConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithQuickControlViewController:(id)controller settingsViewController:(id)viewController presentationContext:(id)context;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUCardViewController

- (HUCardViewController)init
{
  v12.receiver = self;
  v12.super_class = HUCardViewController;
  v2 = [(HUCardViewController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_reachable = 1;
    v2->_hideControls = 0;
    v2->_hideSettings = 0;
    v2->_disablePullToUnlockSettings = 0;
    v2->_settingsUnlocked = 0;
    v2->_isUnavailableHub = 0;
    v4 = objc_alloc_init(MEMORY[0x277D2C918]);
    viewControllerReadyPromise = v3->_viewControllerReadyPromise;
    v3->_viewControllerReadyPromise = v4;

    v6 = objc_alloc_init(MEMORY[0x277D756D0]);
    quickControlLayoutGuide = v3->_quickControlLayoutGuide;
    v3->_quickControlLayoutGuide = v6;

    [(UILayoutGuide *)v3->_quickControlLayoutGuide setIdentifier:@"HUCardViewControllerQuickControlLayoutGuide"];
    v8 = objc_opt_new();
    contentSizeKeyPathObservees = v3->_contentSizeKeyPathObservees;
    v3->_contentSizeKeyPathObservees = v8;

    view = [(HUCardViewController *)v3 view];
    [view addLayoutGuide:v3->_quickControlLayoutGuide];
  }

  return v3;
}

- (HUCardViewController)initWithControlItems:(id)items
{
  itemsCopy = items;
  v6 = [(HUCardViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controlItems, items);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sourceItem = [(HUCardViewController *)self sourceItem];
  v7 = [v3 stringWithFormat:@"<%@: %p, sourceItem: %@>", v5, self, sourceItem];

  return v7;
}

- (NAFuture)viewControllerReadyFuture
{
  viewControllerReadyPromise = [(HUCardViewController *)self viewControllerReadyPromise];
  future = [viewControllerReadyPromise future];

  return future;
}

- (void)updateWithQuickControlViewController:(id)controller settingsViewController:(id)viewController presentationContext:(id)context
{
  contextCopy = context;
  viewControllerCopy = viewController;
  [(HUCardViewController *)self setQuickControlViewController:controller];
  [(HUCardViewController *)self setSettingsViewController:viewControllerCopy];

  item = [contextCopy item];
  v11 = [item copy];
  [(HUCardViewController *)self setSourceItem:v11];

  home = [contextCopy home];
  [(HUCardViewController *)self setHome:home];

  v13 = [HUQuickControlViewControllerCoordinator alloc];
  item2 = [contextCopy item];
  v15 = [item2 copy];
  controlItems = [contextCopy controlItems];
  home2 = [contextCopy home];
  v18 = [(HUQuickControlViewControllerCoordinator *)v13 initWithItem:v15 controlItems:controlItems home:home2 delegate:self];
  [(HUCardViewController *)self setViewControllerCoordinator:v18];

  shouldIncludeRoomNameInHeaderTitle = [contextCopy shouldIncludeRoomNameInHeaderTitle];
  viewControllerCoordinator = [(HUCardViewController *)self viewControllerCoordinator];
  [viewControllerCoordinator setShouldIncludeRoomNameInHeaderTitle:shouldIncludeRoomNameInHeaderTitle];

  quickControlLayoutGuide = [(HUCardViewController *)self quickControlLayoutGuide];
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  [quickControlViewController setAvailableContentLayoutGuide:quickControlLayoutGuide];

  if ([(HUCardViewController *)self isViewLoaded])
  {
    [(HUCardViewController *)self _updateScrollViewAndSpinnerView];
    viewControllerCoordinator2 = [(HUCardViewController *)self viewControllerCoordinator];
    primaryStatusText = [viewControllerCoordinator2 primaryStatusText];
    viewControllerCoordinator3 = [(HUCardViewController *)self viewControllerCoordinator];
    secondaryStatusText = [viewControllerCoordinator3 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:primaryStatusText secondaryText:secondaryStatusText];

    [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v17.receiver = self;
  v17.super_class = HUCardViewController;
  [(HUCardViewController *)&v17 traitCollectionDidChange:change];
  view = [(HUCardViewController *)self view];
  traitCollection = [view traitCollection];
  v6 = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  shouldUseProxHandOffMaterials = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) != 0 || shouldUseProxHandOffMaterials)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view2 = [(HUCardViewController *)self view];
    [view2 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    scrollView = [(HUCardViewController *)self scrollView];
    [scrollView setBackgroundColor:clearColor2];

LABEL_12:
    goto LABEL_13;
  }

  hideControls = [(HUCardViewController *)self hideControls];
  systemGroupedBackgroundColor = v6;
  if (hideControls)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  view3 = [(HUCardViewController *)self view];
  [view3 setBackgroundColor:systemGroupedBackgroundColor];

  if (hideControls)
  {
  }

  hideControls2 = [(HUCardViewController *)self hideControls];
  clearColor2 = v6;
  if (hideControls2)
  {
    clearColor2 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  scrollView2 = [(HUCardViewController *)self scrollView];
  [scrollView2 setBackgroundColor:clearColor2];

  if (hideControls2)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(HUCardViewController *)self _updateMaterials];
  [(HUCardViewController *)self _updateCloseButtonVibrancyEffect];
}

- (void)_updateScrollViewAndSpinnerView
{
  viewControllerReadyPromise = [(HUCardViewController *)self viewControllerReadyPromise];
  future = [viewControllerReadyPromise future];
  isFinished = [future isFinished];

  if (isFinished)
  {
    return;
  }

  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  if (quickControlViewController)
  {

LABEL_5:
    spinnerView = [(HUCardViewController *)self spinnerView];
    [spinnerView stopAnimating];

    scrollView = [(HUCardViewController *)self scrollView];
    [scrollView setHidden:0];

    quickControlViewController2 = [(HUCardViewController *)self quickControlViewController];

    if (quickControlViewController2)
    {
      quickControlViewController3 = [(HUCardViewController *)self quickControlViewController];
      scrollView2 = [(HUCardViewController *)self scrollView];
      [(HUCardViewController *)self naui_addChildViewWithViewController:quickControlViewController3 toView:scrollView2];

      quickControlViewController4 = [(HUCardViewController *)self quickControlViewController];
      childViewControllers = [quickControlViewController4 childViewControllers];

      objc_opt_class();
      firstObject = [childViewControllers firstObject];
      if (objc_opt_isKindOfClass())
      {
        v16 = firstObject;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if ([childViewControllers count] == 1 && v17)
      {
        childViewControllers2 = [v17 childViewControllers];
        v19 = [childViewControllers2 na_firstObjectPassingTest:&__block_literal_global_242];

        contentSizeKeyPathObservees = [(HUCardViewController *)self contentSizeKeyPathObservees];
        collectionView = [v19 collectionView];
        v22 = [contentSizeKeyPathObservees containsObject:collectionView];

        if (v22)
        {
          collectionView2 = [v19 collectionView];
          [collectionView2 removeObserver:self forKeyPath:@"contentSize"];
        }

        collectionView3 = [v19 collectionView];
        [collectionView3 addObserver:self forKeyPath:@"contentSize" options:0 context:0];

        contentSizeKeyPathObservees2 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        collectionView4 = [v19 collectionView];
        [contentSizeKeyPathObservees2 addObject:collectionView4];
      }
    }

    settingsViewController = [(HUCardViewController *)self settingsViewController];

    if (settingsViewController)
    {
      settingsViewController2 = [(HUCardViewController *)self settingsViewController];
      scrollView3 = [(HUCardViewController *)self scrollView];
      [(HUCardViewController *)self naui_addChildViewWithViewController:settingsViewController2 toView:scrollView3];

      objc_opt_class();
      settingsViewController3 = [(HUCardViewController *)self settingsViewController];
      if (objc_opt_isKindOfClass())
      {
        v31 = settingsViewController3;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v32)
      {
        tableView = [v32 tableView];
        [tableView _setFirstResponderKeyboardAvoidanceEnabled:0];

        tableView2 = [v32 tableView];
        [tableView2 setScrollEnabled:0];

        contentSizeKeyPathObservees3 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        tableView3 = [v32 tableView];
        v37 = [contentSizeKeyPathObservees3 containsObject:tableView3];

        if (v37)
        {
          tableView4 = [v32 tableView];
          [tableView4 removeObserver:self forKeyPath:@"contentSize"];
        }

        tableView5 = [v32 tableView];
        [tableView5 addObserver:self forKeyPath:@"contentSize" options:0 context:0];

        contentSizeKeyPathObservees4 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        tableView6 = [v32 tableView];
        [contentSizeKeyPathObservees4 addObject:tableView6];
      }
    }

    scrollView4 = [(HUCardViewController *)self scrollView];
    panGestureRecognizer = [(HUCardViewController *)self panGestureRecognizer];
    [scrollView4 removeGestureRecognizer:panGestureRecognizer];

    if (!-[HUCardViewController hideControls](self, "hideControls") && !-[HUCardViewController hideSettings](self, "hideSettings") && ([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
    {
      v44 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handlePanGesture_];
      [(HUCardViewController *)self setPanGestureRecognizer:v44];

      panGestureRecognizer2 = [(HUCardViewController *)self panGestureRecognizer];
      [panGestureRecognizer2 setDelegate:self];

      scrollView5 = [(HUCardViewController *)self scrollView];
      panGestureRecognizer3 = [(HUCardViewController *)self panGestureRecognizer];
      [scrollView5 addGestureRecognizer:panGestureRecognizer3];
    }

    view = [(HUCardViewController *)self view];
    [view setNeedsLayout];
    goto LABEL_29;
  }

  settingsViewController4 = [(HUCardViewController *)self settingsViewController];

  if (settingsViewController4)
  {
    goto LABEL_5;
  }

  view = [(HUCardViewController *)self spinnerView];
  [view startAnimating];
LABEL_29:
}

uint64_t __55__HUCardViewController__updateScrollViewAndSpinnerView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = HUCardViewController;
  [(HUCardViewController *)&v35 viewDidLoad];
  [(HUCardViewController *)self _updateMaterials];
  v3 = objc_alloc_init(HUQuickControlSummaryNavigationBarTitleView);
  [(HUCardViewController *)self setNavigationBarTitleView:v3];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v4 = [HUQuickControlProxHandOffSummaryViewUpdater alloc];
    navigationBarTitleView = [(HUCardViewController *)self navigationBarTitleView];
    v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)v4 initWithNavigationBarTitleView:navigationBarTitleView];
    [(HUCardViewController *)self setProxHandOffSummaryViewUpdater:v6];
  }

  v7 = objc_alloc(MEMORY[0x277D759D8]);
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], v9, v10, v11}];
  [(HUCardViewController *)self setScrollView:v12];

  scrollView = [(HUCardViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(HUCardViewController *)self scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:0];

  scrollView3 = [(HUCardViewController *)self scrollView];
  [scrollView3 setShowsVerticalScrollIndicator:1];

  scrollView4 = [(HUCardViewController *)self scrollView];
  [scrollView4 setDelaysContentTouches:1];

  scrollView5 = [(HUCardViewController *)self scrollView];
  [scrollView5 setTracksImmediatelyWhileDecelerating:0];

  scrollView6 = [(HUCardViewController *)self scrollView];
  [scrollView6 setDelegate:self];

  scrollView7 = [(HUCardViewController *)self scrollView];
  [scrollView7 setAlwaysBounceVertical:1];

  scrollView8 = [(HUCardViewController *)self scrollView];
  [scrollView8 setContentInsetAdjustmentBehavior:2];

  scrollView9 = [(HUCardViewController *)self scrollView];
  [scrollView9 _setIndicatorInsetAdjustmentBehavior:2];

  scrollView10 = [(HUCardViewController *)self scrollView];
  [scrollView10 setHidden:1];

  view = [(HUCardViewController *)self view];
  scrollView11 = [(HUCardViewController *)self scrollView];
  [view addSubview:scrollView11];

  mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
  LOBYTE(scrollView11) = [mEMORY[0x277D14990] useSAConfig];

  if ((scrollView11 & 1) == 0)
  {
    v26 = [MEMORY[0x277D75220] buttonWithType:7];
    [(HUCardViewController *)self setCloseButton:v26];

    closeButton = [(HUCardViewController *)self closeButton];
    [closeButton addTarget:self action:sel__closeButtonPressed_ forControlEvents:64];

    v28 = [HUVisualEffectContainerView alloc];
    closeButton2 = [(HUCardViewController *)self closeButton];
    v30 = [(HUVisualEffectContainerView *)v28 initWithInnerContentView:closeButton2];
    [(HUCardViewController *)self setCloseButtonEffectView:v30];

    [(HUCardViewController *)self _updateCloseButtonVibrancyEffect];
  }

  v31 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v31 setHidesWhenStopped:1];
  view2 = [(HUCardViewController *)self view];
  [view2 addSubview:v31];

  [(HUCardViewController *)self setSpinnerView:v31];
  spinnerView = [(HUCardViewController *)self spinnerView];
  [spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [[HUHubUnavailableView alloc] initWithFrame:v8, v9, v10, v11];
  [(HUCardViewController *)self setHubUnavailableView:v34];

  [(HUCardViewController *)self _updateScrollViewAndSpinnerView];
}

- (void)setUpConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  constraints = [(HUCardViewController *)self constraints];
  [v3 deactivateConstraints:constraints];

  v92 = objc_opt_new();
  backgroundVisualEffectView = [(HUCardViewController *)self backgroundVisualEffectView];

  if (backgroundVisualEffectView)
  {
    backgroundVisualEffectView2 = [(HUCardViewController *)self backgroundVisualEffectView];
    topAnchor = [backgroundVisualEffectView2 topAnchor];
    view = [(HUCardViewController *)self view];
    topAnchor2 = [view topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v92 addObject:v10];

    backgroundVisualEffectView3 = [(HUCardViewController *)self backgroundVisualEffectView];
    bottomAnchor = [backgroundVisualEffectView3 bottomAnchor];
    view2 = [(HUCardViewController *)self view];
    bottomAnchor2 = [view2 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v92 addObject:v15];

    backgroundVisualEffectView4 = [(HUCardViewController *)self backgroundVisualEffectView];
    leadingAnchor = [backgroundVisualEffectView4 leadingAnchor];
    view3 = [(HUCardViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v92 addObject:v20];

    backgroundVisualEffectView5 = [(HUCardViewController *)self backgroundVisualEffectView];
    trailingAnchor = [backgroundVisualEffectView5 trailingAnchor];
    view4 = [(HUCardViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v92 addObject:v25];
  }

  scrollView = [(HUCardViewController *)self scrollView];
  topAnchor3 = [scrollView topAnchor];
  view5 = [(HUCardViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v92 addObject:v31];

  scrollView2 = [(HUCardViewController *)self scrollView];
  bottomAnchor3 = [scrollView2 bottomAnchor];
  view6 = [(HUCardViewController *)self view];
  bottomAnchor4 = [view6 bottomAnchor];
  v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v92 addObject:v36];

  scrollView3 = [(HUCardViewController *)self scrollView];
  leadingAnchor3 = [scrollView3 leadingAnchor];
  view7 = [(HUCardViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v92 addObject:v41];

  scrollView4 = [(HUCardViewController *)self scrollView];
  trailingAnchor3 = [scrollView4 trailingAnchor];
  view8 = [(HUCardViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v46 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v92 addObject:v46];

  quickControlLayoutGuide = [(HUCardViewController *)self quickControlLayoutGuide];
  topAnchor5 = [quickControlLayoutGuide topAnchor];
  view9 = [(HUCardViewController *)self view];
  layoutMarginsGuide = [view9 layoutMarginsGuide];
  topAnchor6 = [layoutMarginsGuide topAnchor];
  v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v92 addObject:v52];

  quickControlLayoutGuide2 = [(HUCardViewController *)self quickControlLayoutGuide];
  bottomAnchor5 = [quickControlLayoutGuide2 bottomAnchor];
  view10 = [(HUCardViewController *)self view];
  bottomAnchor6 = [view10 bottomAnchor];
  v57 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v92 addObject:v57];

  quickControlLayoutGuide3 = [(HUCardViewController *)self quickControlLayoutGuide];
  leadingAnchor5 = [quickControlLayoutGuide3 leadingAnchor];
  view11 = [(HUCardViewController *)self view];
  layoutMarginsGuide2 = [view11 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide2 leadingAnchor];
  v63 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v92 addObject:v63];

  quickControlLayoutGuide4 = [(HUCardViewController *)self quickControlLayoutGuide];
  trailingAnchor5 = [quickControlLayoutGuide4 trailingAnchor];
  view12 = [(HUCardViewController *)self view];
  layoutMarginsGuide3 = [view12 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide3 trailingAnchor];
  v69 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v92 addObject:v69];

  spinnerView = [(HUCardViewController *)self spinnerView];
  centerXAnchor = [spinnerView centerXAnchor];
  view13 = [(HUCardViewController *)self view];
  centerXAnchor2 = [view13 centerXAnchor];
  v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v92 addObject:v74];

  spinnerView2 = [(HUCardViewController *)self spinnerView];
  centerYAnchor = [spinnerView2 centerYAnchor];
  view14 = [(HUCardViewController *)self view];
  centerYAnchor2 = [view14 centerYAnchor];
  v79 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v92 addObject:v79];

  spinnerView3 = [(HUCardViewController *)self spinnerView];
  topAnchor7 = [spinnerView3 topAnchor];
  view15 = [(HUCardViewController *)self view];
  topAnchor8 = [view15 topAnchor];
  v84 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8];
  [v92 addObject:v84];

  spinnerView4 = [(HUCardViewController *)self spinnerView];
  bottomAnchor7 = [spinnerView4 bottomAnchor];
  view16 = [(HUCardViewController *)self view];
  bottomAnchor8 = [view16 bottomAnchor];
  v89 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
  [v92 addObject:v89];

  [(HUCardViewController *)self setConstraints:v92];
  v90 = MEMORY[0x277CCAAD0];
  constraints2 = [(HUCardViewController *)self constraints];
  [v90 activateConstraints:constraints2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v38.receiver = self;
  v38.super_class = HUCardViewController;
  [(HUCardViewController *)&v38 viewWillAppear:appear];
  navigationController = [(HUCardViewController *)self navigationController];
  if ([navigationController isBeingPresented])
  {
  }

  else
  {
    navigationController2 = [(HUCardViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    v7 = [viewControllers count];

    if (v7 != 1)
    {
      goto LABEL_12;
    }
  }

  closeButtonEffectView = [(HUCardViewController *)self closeButtonEffectView];

  if (closeButtonEffectView)
  {
    v9 = objc_alloc(MEMORY[0x277D751E0]);
    closeButtonEffectView2 = [(HUCardViewController *)self closeButtonEffectView];
    v11 = [v9 initWithCustomView:closeButtonEffectView2];
    navigationItem = [(HUCardViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v11];
  }

  navigationBarTitleView = [(HUCardViewController *)self navigationBarTitleView];
  navigationItem2 = [(HUCardViewController *)self navigationItem];
  [navigationItem2 setTitleView:navigationBarTitleView];

  navigationController3 = [(HUCardViewController *)self navigationController];
  navigationBar = [navigationController3 navigationBar];
  [navigationBar _setHidesShadow:1];

  v17 = objc_alloc_init(MEMORY[0x277D751D8]);
  [v17 configureWithTransparentBackground];
  v18 = [objc_alloc(MEMORY[0x277D75788]) initWithBarAppearance:v17];
  navigationController4 = [(HUCardViewController *)self navigationController];
  navigationBar2 = [navigationController4 navigationBar];
  [navigationBar2 setScrollEdgeAppearance:v18];

  if ([(HUCardViewController *)self hideControls])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  navigationItem3 = [(HUCardViewController *)self navigationItem];
  [navigationItem3 _setManualScrollEdgeAppearanceProgress:v21];

  navigationItem4 = [(HUCardViewController *)self navigationItem];
  [navigationItem4 _setManualScrollEdgeAppearanceEnabled:1];

  [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  viewControllerCoordinator = [(HUCardViewController *)self viewControllerCoordinator];
  v25 = viewControllerCoordinator;
  if (viewControllerCoordinator)
  {
    primaryStatusText = [viewControllerCoordinator primaryStatusText];
    secondaryStatusText = [v25 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:primaryStatusText secondaryText:secondaryStatusText];
  }

LABEL_12:
  scrollView = 0x277D14000;
  shouldUseProxHandOffMaterials = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v30 = MEMORY[0x277D75348];
LABEL_16:
    clearColor = [v30 clearColor];
    scrollView = [(HUCardViewController *)self scrollView];
    [scrollView setBackgroundColor:clearColor];
LABEL_17:

    goto LABEL_18;
  }

  if (shouldUseProxHandOffMaterials)
  {
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    view = [(HUCardViewController *)self view];
    [view setBackgroundColor:clearColor2];

    v30 = MEMORY[0x277D75348];
    goto LABEL_16;
  }

  hideControls = [(HUCardViewController *)self hideControls];
  v35 = hideControls;
  if (hideControls)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    clearColor = systemGroupedBackgroundColor;
  }

  else
  {
    clearColor = [(HUCardViewController *)self view];
    scrollView = [clearColor traitCollection];
    systemGroupedBackgroundColor = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [scrollView userInterfaceStyle]);
  }

  scrollView2 = [(HUCardViewController *)self scrollView];
  [scrollView2 setBackgroundColor:systemGroupedBackgroundColor];

  if (!v35)
  {

    goto LABEL_17;
  }

LABEL_18:

  [(HUCardViewController *)self setUpConstraints];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = HUCardViewController;
  [(HUCardViewController *)&v8 viewDidDisappear:disappear];
  navigationController = [(HUCardViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  if ([topViewController isEqual:self])
  {
    hasRequestedDismissal = [(HUCardViewController *)self hasRequestedDismissal];

    if (!hasRequestedDismissal)
    {
      requestDismissal = [(HUCardViewController *)self requestDismissal];
    }
  }

  else
  {
  }
}

- (void)viewDidLayoutSubviews
{
  v64.receiver = self;
  v64.super_class = HUCardViewController;
  [(HUCardViewController *)&v64 viewDidLayoutSubviews];
  scrollView = [(HUCardViewController *)self scrollView];
  isHidden = [scrollView isHidden];

  if ((isHidden & 1) == 0)
  {
    view = [(HUCardViewController *)self view];
    [view frame];
    v7 = v6;

    [(HUCardViewController *)self _hostViewHeight];
    v9 = v8;
    v10 = 0.0;
    v11 = 0.0;
    if (![(HUCardViewController *)self hideControls])
    {
      [(HUCardViewController *)self _quickControlSectionHeight];
      v11 = v12;
    }

    if (![(HUCardViewController *)self hideSettings])
    {
      settingsViewController = [(HUCardViewController *)self settingsViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        objc_opt_class();
        settingsViewController2 = [(HUCardViewController *)self settingsViewController];
        if (objc_opt_isKindOfClass())
        {
          v16 = settingsViewController2;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![(HUCardViewController *)self hideControls])
        {
          tableView = [v17 tableView];
          [tableView sizeToFit];
        }

        tableView2 = [v17 tableView];
        [tableView2 contentSize];
        v21 = v20;
        view2 = [(HUCardViewController *)self view];
        [view2 safeAreaInsets];
        v10 = v21 + v23;

        if (v10 < v9)
        {
          v10 = v9;
        }
      }

      else
      {
        settingsViewController3 = [(HUCardViewController *)self settingsViewController];
        [settingsViewController3 preferredContentSize];
        v26 = v25;
        view3 = [(HUCardViewController *)self view];
        [view3 safeAreaInsets];
        v10 = v26 + v28;

        if (v10 < v9)
        {
          v10 = v9;
        }
      }
    }

    quickControlViewController = [(HUCardViewController *)self quickControlViewController];
    view4 = [quickControlViewController view];
    [view4 setFrame:{0.0, 0.0, v7, v11}];

    settingsViewController4 = [(HUCardViewController *)self settingsViewController];
    view5 = [settingsViewController4 view];
    [view5 setFrame:{0.0, v11, v7, v10}];

    hubUnavailableView = [(HUCardViewController *)self hubUnavailableView];
    [hubUnavailableView setFrame:{0.0, 0.0, v7, v9}];

    LODWORD(view5) = [(HUCardViewController *)self isUnavailableHub];
    hubUnavailableView2 = [(HUCardViewController *)self hubUnavailableView];
    scrollView2 = hubUnavailableView2;
    if (view5)
    {
      sourceItem = [(HUCardViewController *)self sourceItem];
      latestResults = [sourceItem latestResults];
      v38 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [scrollView2 setAccessoryName:v38];

      scrollView2 = [(HUCardViewController *)self scrollView];
      hubUnavailableView3 = [(HUCardViewController *)self hubUnavailableView];
      [scrollView2 addSubview:hubUnavailableView3];
    }

    else
    {
      [hubUnavailableView2 removeFromSuperview];
    }

    scrollView3 = [(HUCardViewController *)self scrollView];
    [scrollView3 setContentSize:{v7, v11 + v10}];

    view6 = [(HUCardViewController *)self view];
    [view6 safeAreaInsets];
    v43 = v42;
    scrollView4 = [(HUCardViewController *)self scrollView];
    [scrollView4 setScrollIndicatorInsets:{0.0, 0.0, v43, 0.0}];

    scrollView5 = [(HUCardViewController *)self scrollView];
    [scrollView5 contentSize];
    v47 = v46 > v9;
    scrollView6 = [(HUCardViewController *)self scrollView];
    [scrollView6 setScrollEnabled:v47];

    transitionBlurView = [(HUCardViewController *)self transitionBlurView];

    if (transitionBlurView)
    {
      view7 = [(HUCardViewController *)self view];
      [view7 bounds];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      transitionBlurView2 = [(HUCardViewController *)self transitionBlurView];
      [transitionBlurView2 setFrame:{v52, v54, v56, v58}];
    }

    viewControllerReadyPromise = [(HUCardViewController *)self viewControllerReadyPromise];
    future = [viewControllerReadyPromise future];
    isFinished = [future isFinished];

    if ((isFinished & 1) == 0)
    {
      viewControllerReadyPromise2 = [(HUCardViewController *)self viewControllerReadyPromise];
      [viewControllerReadyPromise2 finishWithNoResult];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"contentSize", object, change, context}])
  {
    [(HUCardViewController *)self _checkHubAvailability];
    view = [(HUCardViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)forceUnlockSettings
{
  [(HUCardViewController *)self setSettingsUnlocked:1];
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  controlContainerView = [quickControlViewController controlContainerView];
  [controlContainerView setShouldShowDetailsButton:0];

  scrollView = [(HUCardViewController *)self scrollView];
  panGestureRecognizer = [(HUCardViewController *)self panGestureRecognizer];
  [scrollView removeGestureRecognizer:panGestureRecognizer];
}

- (void)setHideControls:(BOOL)controls
{
  if (self->_hideControls != controls)
  {
    self->_hideControls = controls;
    if ([(HUCardViewController *)self hideControls])
    {
      [(HUCardViewController *)self _unlockSettings];
      [(HUCardViewController *)self _endUsingTapticFeedback];
    }

    if (![(HUCardViewController *)self hideSettings])
    {
      settingsViewController = [(HUCardViewController *)self settingsViewController];
      view = [settingsViewController view];
      [view layoutIfNeeded];
    }

    view2 = [(HUCardViewController *)self view];
    window = [view2 window];

    if (window)
    {
      view3 = [(HUCardViewController *)self view];
      [view3 layoutIfNeeded];
    }
  }
}

- (void)setHideSettings:(BOOL)settings
{
  if (self->_hideSettings != settings)
  {
    self->_hideSettings = settings;
    if ([(HUCardViewController *)self hideSettings])
    {
      [(HUCardViewController *)self _unlockSettings];

      [(HUCardViewController *)self _endUsingTapticFeedback];
    }

    else
    {
      view = [(HUCardViewController *)self view];
      window = [view window];

      if (window)
      {
        settingsViewController = [(HUCardViewController *)self settingsViewController];
        view2 = [settingsViewController view];
        [view2 layoutIfNeeded];

        view3 = [(HUCardViewController *)self view];
        [view3 layoutIfNeeded];
      }
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  view = [(HUCardViewController *)self view];
  [view setBackgroundColor:colorCopy];

  scrollView = [(HUCardViewController *)self scrollView];
  [scrollView setBackgroundColor:colorCopy];
}

- (void)setIsUnavailableHub:(BOOL)hub
{
  if (self->_isUnavailableHub != hub)
  {
    self->_isUnavailableHub = hub;
    isUnavailableHub = [(HUCardViewController *)self isUnavailableHub];
    [(HUCardViewController *)self setHideControls:isUnavailableHub];
    [(HUCardViewController *)self setHideSettings:isUnavailableHub];
    quickControlViewController = [(HUCardViewController *)self quickControlViewController];
    view = [quickControlViewController view];
    [view setHidden:isUnavailableHub];

    view2 = [(HUCardViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (void)externalAnimationsBegan
{
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  [quickControlViewController externalAnimationsBegan];
}

- (void)externalAnimationsEnded
{
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  [quickControlViewController externalAnimationsEnded];
}

- (void)dismissCardAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HUCardViewController_dismissCardAnimated___block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  [(HUCardViewController *)self dismissViewControllerAnimated:animated completion:v3];
}

void __44__HUCardViewController_dismissCardAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) quickControlViewController];
  v1 = [v2 dismissControlAnimated:0];
}

- (void)scrollToDetailsViewAnimated:(BOOL)animated
{
  [(HUCardViewController *)self _prepareForTapticFeedback];
  [(HUCardViewController *)self _actuateTapticFeedback];
  [(HUCardViewController *)self _unlockSettings];

  [(HUCardViewController *)self _endUsingTapticFeedback];
}

- (id)blurEffectForProxHandOff
{
  traitCollection = [(HUCardViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v4 = 19;
  }

  else
  {
    v4 = 14;
  }

  v5 = MEMORY[0x277D75210];

  return [v5 effectWithStyle:v4];
}

- (id)backgroundVisualEffectViewForProxHandOff
{
  blurEffectForProxHandOff = [(HUCardViewController *)self blurEffectForProxHandOff];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:blurEffectForProxHandOff];

  return v3;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentSizeKeyPathObservees = [(HUCardViewController *)self contentSizeKeyPathObservees];
  v4 = [contentSizeKeyPathObservees countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412546;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(contentSizeKeyPathObservees);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = HFLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          selfCopy = self;
          v22 = 2112;
          v23 = v9;
          _os_log_debug_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEBUG, "Removing self [%@] as observer for HUContentSizeKeyPath: receiverObject = [%@]", buf, 0x16u);
        }

        [v9 removeObserver:self forKeyPath:@"contentSize"];
        ++v8;
      }

      while (v6 != v8);
      v6 = [contentSizeKeyPathObservees countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  contentSizeKeyPathObservees2 = [(HUCardViewController *)self contentSizeKeyPathObservees];
  [contentSizeKeyPathObservees2 removeAllObjects];

  contentSizeKeyPathObservees = self->_contentSizeKeyPathObservees;
  self->_contentSizeKeyPathObservees = 0;

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
    [mEMORY[0x277D14990] invalidateProxClient];
  }

  v15.receiver = self;
  v15.super_class = HUCardViewController;
  [(HUCardViewController *)&v15 dealloc];
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  [(HUCardViewController *)self _hostViewHeight];
  v6 = v5;
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  view = [quickControlViewController view];
  [gestureCopy translationInView:view];
  v10 = v9;
  v12 = v11;

  v13 = -v12 / v6;
  v14 = fminf(fmaxf(v13, 0.0), 1.0);
  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v16 = v15;
  state = [gestureCopy state];

  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      if (v14 >= 0.25)
      {
        scrollView = [(HUCardViewController *)self scrollView];
        [scrollView contentOffset];
        if (v21 >= v16)
        {
          disablePullToUnlockSettings = [(HUCardViewController *)self disablePullToUnlockSettings];

          if (!disablePullToUnlockSettings)
          {
            [(HUCardViewController *)self _actuateTapticFeedback];
            scrollView2 = [(HUCardViewController *)self scrollView];
            [scrollView2 setScrollEnabled:0];

            [(HUCardViewController *)self _unlockSettings];

            [(HUCardViewController *)self _endUsingTapticFeedback];
          }
        }

        else
        {
        }
      }
    }

    else if (state == 1)
    {

      [(HUCardViewController *)self _prepareForTapticFeedback];
    }
  }

  else if (v14 < 0.25)
  {
    scrollView3 = [(HUCardViewController *)self scrollView];
    [scrollView3 contentOffset];
    v20 = v19;

    if (v20 >= v16)
    {

      [(HUCardViewController *)self _nudgeScrollViewToPoint:v10, v16];
    }
  }
}

- (void)_prepareForTapticFeedback
{
  traitCollection = [(HUCardViewController *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    _tapticEngine = [currentDevice _tapticEngine];
    [_tapticEngine prepareUsingFeedback:1];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
    [(HUCardViewController *)self setImpactFeedbackGenerator:v6];

    currentDevice = [(HUCardViewController *)self impactFeedbackGenerator];
    [currentDevice prepare];
  }
}

- (void)_actuateTapticFeedback
{
  traitCollection = [(HUCardViewController *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    _tapticEngine = [currentDevice _tapticEngine];
    [_tapticEngine actuateFeedback:1];
  }

  else
  {
    impactFeedbackGenerator = [(HUCardViewController *)self impactFeedbackGenerator];
    [impactFeedbackGenerator impactOccurred];

    currentDevice = [(HUCardViewController *)self impactFeedbackGenerator];
    [currentDevice prepare];
  }
}

- (void)_endUsingTapticFeedback
{
  traitCollection = [(HUCardViewController *)self traitCollection];
  forceTouchCapability = [traitCollection forceTouchCapability];

  if (forceTouchCapability == 2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    _tapticEngine = [currentDevice _tapticEngine];
    [_tapticEngine endUsingFeedback:1];
  }

  else
  {

    [(HUCardViewController *)self setImpactFeedbackGenerator:0];
  }
}

- (void)_updateMaterials
{
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    view = [(HUCardViewController *)self view];
    [view setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    scrollView = [(HUCardViewController *)self scrollView];
    [scrollView setBackgroundColor:clearColor2];
  }

  transitionBlurView = [(HUCardViewController *)self transitionBlurView];
  if (transitionBlurView)
  {
  }

  else if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    controlCenterModuleBackgroundMaterial = [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
    [(HUCardViewController *)self setTransitionBlurView:controlCenterModuleBackgroundMaterial];

    transitionBlurView2 = [(HUCardViewController *)self transitionBlurView];
    [transitionBlurView2 setAutoresizingMask:18];

    view2 = [(HUCardViewController *)self view];
    transitionBlurView3 = [(HUCardViewController *)self transitionBlurView];
    [view2 insertSubview:transitionBlurView3 atIndex:0];

    goto LABEL_10;
  }

  transitionBlurView4 = [(HUCardViewController *)self transitionBlurView];
  if (transitionBlurView4)
  {
    v13 = transitionBlurView4;
    shouldUseControlCenterMaterials = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];

    if ((shouldUseControlCenterMaterials & 1) == 0)
    {
      transitionBlurView5 = [(HUCardViewController *)self transitionBlurView];
      [transitionBlurView5 removeFromSuperview];

      [(HUCardViewController *)self setTransitionBlurView:0];
    }
  }

LABEL_10:
  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    backgroundVisualEffectView = [(HUCardViewController *)self backgroundVisualEffectView];

    if (backgroundVisualEffectView)
    {
      backgroundVisualEffectView2 = [(HUCardViewController *)self backgroundVisualEffectView];
      blurEffectForProxHandOff = [(HUCardViewController *)self blurEffectForProxHandOff];
      [backgroundVisualEffectView2 setEffect:blurEffectForProxHandOff];
    }

    else
    {
      backgroundVisualEffectViewForProxHandOff = [(HUCardViewController *)self backgroundVisualEffectViewForProxHandOff];
      [(HUCardViewController *)self setBackgroundVisualEffectView:backgroundVisualEffectViewForProxHandOff];

      backgroundVisualEffectView3 = [(HUCardViewController *)self backgroundVisualEffectView];
      [backgroundVisualEffectView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      backgroundVisualEffectView2 = [(HUCardViewController *)self view];
      blurEffectForProxHandOff = [(HUCardViewController *)self backgroundVisualEffectView];
      [backgroundVisualEffectView2 insertSubview:blurEffectForProxHandOff atIndex:0];
    }

    transitionBlurView6 = [(HUCardViewController *)self transitionBlurView];
    [transitionBlurView6 removeFromSuperview];

    [(HUCardViewController *)self setTransitionBlurView:0];
  }
}

- (double)_hostViewHeight
{
  view = [(HUCardViewController *)self view];
  [view frame];
  v5 = v4;
  navigationBarTitleView = [(HUCardViewController *)self navigationBarTitleView];
  [navigationBarTitleView height];
  v8 = v5 - v7;

  return v8;
}

- (double)_quickControlSectionHeight
{
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  controlContainerView = [quickControlViewController controlContainerView];
  [controlContainerView frame];
  v6 = v5;

  [(HUCardViewController *)self _hostViewHeight];
  if (v6 >= result)
  {
    return v6;
  }

  return result;
}

- (double)_quickControlScrollOffsetBoundary
{
  [(HUCardViewController *)self _quickControlSectionHeight];
  v4 = v3;
  scrollView = [(HUCardViewController *)self scrollView];
  [scrollView bounds];
  v7 = v4 - v6;

  return v7;
}

- (void)_updateReachabilityState
{
  viewControllerCoordinator = [(HUCardViewController *)self viewControllerCoordinator];
  -[HUCardViewController setReachable:](self, "setReachable:", [viewControllerCoordinator isReachable]);

  viewControllerCoordinator2 = [(HUCardViewController *)self viewControllerCoordinator];
  primaryStatusText = [viewControllerCoordinator2 primaryStatusText];
  viewControllerCoordinator3 = [(HUCardViewController *)self viewControllerCoordinator];
  secondaryStatusText = [viewControllerCoordinator3 secondaryStatusText];
  [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:primaryStatusText secondaryText:secondaryStatusText];

  [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  view = [(HUCardViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(HUCardViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (void)_updateControlStatusTextWithPrimaryText:(id)text secondaryText:(id)secondaryText
{
  textCopy = text;
  secondaryTextCopy = secondaryText;
  navigationBarTitleView = [(HUCardViewController *)self navigationBarTitleView];
  summaryView = [navigationBarTitleView summaryView];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    if ([(HUCardViewController *)self isConfiguredForNonHomeUser])
    {
      controlItems = [(HUCardViewController *)self controlItems];
      v10 = [controlItems na_firstObjectPassingTest:&__block_literal_global_149_0];

      deviceName = [v10 deviceName];
      [summaryView setPrimaryText:deviceName];
    }
  }

  else
  {
    [summaryView setPrimaryText:textCopy];
    [summaryView setSecondaryText:secondaryTextCopy];
  }
}

uint64_t __78__HUCardViewController__updateControlStatusTextWithPrimaryText_secondaryText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateIconDescriptorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCoordinator = [(HUCardViewController *)self viewControllerCoordinator];
  iconDescriptor = [viewControllerCoordinator iconDescriptor];

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    viewControllerCoordinator2 = [(HUCardViewController *)self viewControllerCoordinator];
    showIconOffState = [viewControllerCoordinator2 showIconOffState];

    if (showIconOffState)
    {
      if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 1;
    }

    navigationBarTitleView = [(HUCardViewController *)self navigationBarTitleView];
    summaryView = [navigationBarTitleView summaryView];
    iconView = [summaryView iconView];

    [iconView updateWithIconDescriptor:iconDescriptor displayStyle:v8 animated:animatedCopy];
  }

  else
  {
    navigationBarTitleView2 = [(HUCardViewController *)self navigationBarTitleView];
    summaryView2 = [navigationBarTitleView2 summaryView];
    baseIconView = [summaryView2 baseIconView];
    iconView = [baseIconView configuration];

    if (iconView)
    {
      v13 = [iconView copyWithIconDescriptor:iconDescriptor];
      navigationBarTitleView3 = [(HUCardViewController *)self navigationBarTitleView];
      summaryView3 = [navigationBarTitleView3 summaryView];
      baseIconView2 = [summaryView3 baseIconView];
      [baseIconView2 setConfiguration:v13];
    }
  }
}

- (void)_closeButtonPressed:(id)pressed
{
  v12 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = pressedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User pressed close button: %@", &v8, 0x16u);
  }

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    mEMORY[0x277D14990] = [MEMORY[0x277D14990] sharedInstance];
    [mEMORY[0x277D14990] userTappedCloseButton];
  }

  requestDismissal = [(HUCardViewController *)self requestDismissal];
}

- (id)requestDismissal
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing card view controller: %@", &v17, 0xCu);
  }

  [(HUCardViewController *)self setHasRequestedDismissal:1];
  objc_opt_class();
  settingsViewController = [(HUCardViewController *)self settingsViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = settingsViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 viewWillDismiss];
  quickControlViewController = [(HUCardViewController *)self quickControlViewController];
  childViewControllers = [quickControlViewController childViewControllers];

  objc_opt_class();
  firstObject = [childViewControllers firstObject];
  if (objc_opt_isKindOfClass())
  {
    v10 = firstObject;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ([childViewControllers count] == 1 && v11)
  {
    childViewControllers2 = [v11 childViewControllers];
    v13 = [childViewControllers2 na_firstObjectPassingTest:&__block_literal_global_152_1];

    [v13 viewWillDismiss];
  }

  delegate = [(HUCardViewController *)self delegate];
  v15 = [delegate cardViewControllerRequestingDismissal:self];

  return v15;
}

uint64_t __40__HUCardViewController_requestDismissal__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_unlockSettings
{
  if (![(HUCardViewController *)self settingsUnlocked])
  {
    [(HUCardViewController *)self setSettingsUnlocked:1];
    quickControlViewController = [(HUCardViewController *)self quickControlViewController];
    controlContainerView = [quickControlViewController controlContainerView];
    [controlContainerView setShouldShowDetailsButton:0];

    [(HUCardViewController *)self _scrollToSettings];
    scrollView = [(HUCardViewController *)self scrollView];
    panGestureRecognizer = [(HUCardViewController *)self panGestureRecognizer];
    [scrollView removeGestureRecognizer:panGestureRecognizer];
  }
}

- (void)_scrollToSettings
{
  if (![(HUCardViewController *)self hideControls])
  {
    settingsViewController = [(HUCardViewController *)self settingsViewController];
    view = [settingsViewController view];
    [view frame];
    v6 = v5;

    [(HUCardViewController *)self setContentOffset:1 animated:0.0, v6];
  }
}

- (void)_nudgeScrollViewToPoint:(CGPoint)point
{
  y = point.y;
  scrollView = [(HUCardViewController *)self scrollView];
  [scrollView setScrollEnabled:0];

  [(HUCardViewController *)self setContentOffset:1 animated:0.0, y];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  y = offset.y;
  x = offset.x;
  _springAnimationSettings = [(HUCardViewController *)self _springAnimationSettings];
  v8 = [HUAnimationApplier staticApplierWithAnimationSettings:_springAnimationSettings];
  [(HUCardViewController *)self setAnimationApplier:v8];

  objc_initWeak(&location, self);
  animationApplier = [(HUCardViewController *)self animationApplier];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __50__HUCardViewController_setContentOffset_animated___block_invoke;
  v14 = &unk_277DC2DC8;
  objc_copyWeak(v15, &location);
  v15[1] = *&x;
  v15[2] = *&y;
  [animationApplier addApplierBlock:&v11];

  v10 = [(HUCardViewController *)self animationApplier:v11];
  [v10 start];

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __50__HUCardViewController_setContentOffset_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scrollView];
  [v2 setContentOffset:0 animated:{*(a1 + 40), *(a1 + 48)}];

  v3 = [WeakRetained scrollView];
  [v3 _flashScrollIndicatorsPersistingPreviousFlashes];

  v4 = [WeakRetained scrollView];
  [v4 setScrollEnabled:1];
}

- (id)_springAnimationSettings
{
  v2 = objc_alloc_init(HUSpringAnimationSettings);
  [(HUSpringAnimationSettings *)v2 setMass:5.0];
  [(HUSpringAnimationSettings *)v2 setStiffness:500.0];
  [(HUSpringAnimationSettings *)v2 setDamping:1000.0];
  [(HUSpringAnimationSettings *)v2 setInitialVelocity:0.0];
  LODWORD(v3) = 1044401829;
  LODWORD(v4) = 991345561;
  LODWORD(v5) = 1057634019;
  LODWORD(v6) = 1064730781;
  v7 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v3 :v4 :v5 :v6];
  [(HUSpringAnimationSettings *)v2 setTimingFunction:v7];

  return v2;
}

- (void)_updateCloseButtonVibrancyEffect
{
  shouldUseProxHandOffMaterials = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    controlCenterSecondaryVibrancyEffect = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
  }

  else
  {
    controlCenterSecondaryVibrancyEffect = 0;
  }

  v12 = controlCenterSecondaryVibrancyEffect;
  if (shouldUseProxHandOffMaterials)
  {
    traitCollection = [(HUCardViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v7 = 19;
    }

    else
    {
      v7 = 14;
    }

    v8 = MEMORY[0x277D75D00];
    v9 = [MEMORY[0x277D75210] effectWithStyle:v7];
    v10 = [v8 effectForBlurEffect:v9];

    v12 = v10;
  }

  closeButtonEffectView = [(HUCardViewController *)self closeButtonEffectView];
  [closeButtonEffectView setEffect:v12];
}

- (void)_checkHubAvailability
{
  home = [(HUCardViewController *)self home];
  hf_shouldBlockCurrentUserFromHome = [home hf_shouldBlockCurrentUserFromHome];

  if (hf_shouldBlockCurrentUserFromHome)
  {
    objc_opt_class();
    sourceItem = [(HUCardViewController *)self sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v6 = sourceItem;
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;

    if (v13)
    {
      accessories = [v13 accessories];
      allObjects = [accessories allObjects];
      v9 = [allObjects na_all:&__block_literal_global_161_1];

      accessories2 = [v13 accessories];
      allObjects2 = [accessories2 allObjects];
      v12 = [allObjects2 na_any:&__block_literal_global_163_0];

      [(HUCardViewController *)self setIsUnavailableHub:v12 & v9];
    }
  }
}

uint64_t __45__HUCardViewController__checkHubAvailability__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hf_isAppleTV];
  }

  return v3;
}

- (id)keyCommands
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel__escapeKeyPressed];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)_escapeKeyPressed
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: User pressed Esc key", &v5, 0xCu);
  }

  requestDismissal = [(HUCardViewController *)self requestDismissal];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  shouldUseProxHandOffMaterials = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([(HUCardViewController *)self hideControls]|| [(HUCardViewController *)self hideSettings])
  {
    goto LABEL_19;
  }

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] | shouldUseProxHandOffMaterials))
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    scrollView = [(HUCardViewController *)self scrollView];
    [scrollView setBackgroundColor:clearColor];
    goto LABEL_10;
  }

  traitCollection = [(HUCardViewController *)self traitCollection];
  clearColor = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  [scrollCopy frame];
  v9 = v8;
  [scrollCopy contentSize];
  v11 = v10;
  [scrollCopy contentOffset];
  v13 = v12;
  if (v13 <= 0.0 || [(HUCardViewController *)self disablePullToUnlockSettings])
  {
    systemGroupedBackgroundColor = clearColor;
  }

  else
  {
    v36 = v9;
    v37 = v11;
    if ((v36 + v13) < v37)
    {
      scrollView = 0;
      goto LABEL_9;
    }

    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  scrollView = systemGroupedBackgroundColor;
LABEL_9:
  scrollView2 = [(HUCardViewController *)self scrollView];
  [scrollView2 setBackgroundColor:scrollView];

LABEL_10:
  [scrollCopy contentOffset];
  v17 = v16 / 25.0;
  v18 = fmax(fmin(v17, 1.0), 0.0);
  v19 = v18;
  navigationItem = [(HUCardViewController *)self navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceProgress:v19];

  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v22 = v21 + 80.0;
  panGestureRecognizer = [(HUCardViewController *)self panGestureRecognizer];
  if ([panGestureRecognizer state] == 1)
  {
    v24 = 1;
  }

  else
  {
    panGestureRecognizer2 = [(HUCardViewController *)self panGestureRecognizer];
    v24 = [panGestureRecognizer2 state] == 2;
  }

  isAMac = [MEMORY[0x277D14CE8] isAMac];
  [scrollCopy contentOffset];
  if (v27 < v22 || (-[HUCardViewController quickControlViewController](self, "quickControlViewController"), v28 = objc_claimAutoreleasedReturnValue(), [v28 controlContainerView], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "shouldShowDetailsButton"), v29, v28, (v24 || (v30 & 1) == 0) | isAMac & 1))
  {
    if (isAMac)
    {
      [scrollCopy contentOffset];
      v32 = v31;
      [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
      if (v32 > v33)
      {
        quickControlViewController = [(HUCardViewController *)self quickControlViewController];
        controlContainerView = [quickControlViewController controlContainerView];
        [controlContainerView setShouldShowDetailsButton:0];
      }
    }
  }

  else
  {
    [scrollCopy contentOffset];
    [(HUCardViewController *)self _nudgeScrollViewToPoint:?];
  }

LABEL_19:
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v5 = v4;
  [deceleratingCopy contentOffset];
  if (v6 >= v5)
  {
    quickControlViewController = [(HUCardViewController *)self quickControlViewController];
    controlContainerView = [quickControlViewController controlContainerView];
    if ([controlContainerView shouldShowDetailsButton])
    {
      isAMac = [MEMORY[0x277D14CE8] isAMac];

      if ((isAMac & 1) == 0)
      {
        [deceleratingCopy contentOffset];
        [(HUCardViewController *)self _nudgeScrollViewToPoint:?];
      }
    }

    else
    {
    }
  }
}

- (id)hu_preloadContent
{
  objc_opt_class();
  settingsViewController = [(HUCardViewController *)self settingsViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = settingsViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [v5 hu_preloadContent];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v6 = ;

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  view = [gestureRecognizerCopy view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 1;
  }

  else
  {
    scrollView = [(HUCardViewController *)self scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];
    v8 = panGestureRecognizer == gestureRecognizerCopy;
  }

  return v8;
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  itemCopy = item;
  sourceItem = [(HUCardViewController *)self sourceItem];

  if (sourceItem == itemCopy)
  {
    [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
    viewControllerCoordinator = [(HUCardViewController *)self viewControllerCoordinator];
    primaryStatusText = [viewControllerCoordinator primaryStatusText];
    viewControllerCoordinator2 = [(HUCardViewController *)self viewControllerCoordinator];
    secondaryStatusText = [viewControllerCoordinator2 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:primaryStatusText secondaryText:secondaryStatusText];
  }

  else
  {
    viewControllerCoordinator = [MEMORY[0x277CCA890] currentHandler];
    [viewControllerCoordinator handleFailureInMethod:a2 object:self file:@"HUCardViewController.m" lineNumber:1117 description:{@"Unknown source item %@", itemCopy}];
  }
}

- (id)hu_prepareForDismissalAnimated:(BOOL)animated
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  requestDismissal = [(HUCardViewController *)self requestDismissal];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HUCardViewController_hu_prepareForDismissalAnimated___block_invoke;
  v15[3] = &unk_277DBA338;
  v6 = v4;
  v16 = v6;
  v7 = [requestDismissal addSuccessBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HUCardViewController_hu_prepareForDismissalAnimated___block_invoke_180;
  v13[3] = &unk_277DB8C00;
  v8 = v6;
  v14 = v8;
  v9 = [requestDismissal addFailureBlock:v13];
  v10 = v14;
  v11 = v8;

  return v8;
}

- (HUCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIActivityIndicatorView)spinnerView
{
  WeakRetained = objc_loadWeakRetained(&self->_spinnerView);

  return WeakRetained;
}

@end