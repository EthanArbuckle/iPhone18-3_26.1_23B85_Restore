@interface HUCardViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (HUCardViewController)init;
- (HUCardViewController)initWithControlItems:(id)a3;
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
- (id)hu_prepareForDismissalAnimated:(BOOL)a3;
- (id)keyCommands;
- (id)requestDismissal;
- (void)_actuateTapticFeedback;
- (void)_checkHubAvailability;
- (void)_closeButtonPressed:(id)a3;
- (void)_endUsingTapticFeedback;
- (void)_escapeKeyPressed;
- (void)_handlePanGesture:(id)a3;
- (void)_nudgeScrollViewToPoint:(CGPoint)a3;
- (void)_prepareForTapticFeedback;
- (void)_scrollToSettings;
- (void)_unlockSettings;
- (void)_updateCloseButtonVibrancyEffect;
- (void)_updateControlStatusTextWithPrimaryText:(id)a3 secondaryText:(id)a4;
- (void)_updateIconDescriptorAnimated:(BOOL)a3;
- (void)_updateMaterials;
- (void)_updateReachabilityState;
- (void)_updateScrollViewAndSpinnerView;
- (void)dealloc;
- (void)dismissCardAnimated:(BOOL)a3;
- (void)externalAnimationsBegan;
- (void)externalAnimationsEnded;
- (void)forceUnlockSettings;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollToDetailsViewAnimated:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setHideControls:(BOOL)a3;
- (void)setHideSettings:(BOOL)a3;
- (void)setIsUnavailableHub:(BOOL)a3;
- (void)setUpConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithQuickControlViewController:(id)a3 settingsViewController:(id)a4 presentationContext:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

    v10 = [(HUCardViewController *)v3 view];
    [v10 addLayoutGuide:v3->_quickControlLayoutGuide];
  }

  return v3;
}

- (HUCardViewController)initWithControlItems:(id)a3
{
  v5 = a3;
  v6 = [(HUCardViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controlItems, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HUCardViewController *)self sourceItem];
  v7 = [v3 stringWithFormat:@"<%@: %p, sourceItem: %@>", v5, self, v6];

  return v7;
}

- (NAFuture)viewControllerReadyFuture
{
  v2 = [(HUCardViewController *)self viewControllerReadyPromise];
  v3 = [v2 future];

  return v3;
}

- (void)updateWithQuickControlViewController:(id)a3 settingsViewController:(id)a4 presentationContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HUCardViewController *)self setQuickControlViewController:a3];
  [(HUCardViewController *)self setSettingsViewController:v9];

  v10 = [v8 item];
  v11 = [v10 copy];
  [(HUCardViewController *)self setSourceItem:v11];

  v12 = [v8 home];
  [(HUCardViewController *)self setHome:v12];

  v13 = [HUQuickControlViewControllerCoordinator alloc];
  v14 = [v8 item];
  v15 = [v14 copy];
  v16 = [v8 controlItems];
  v17 = [v8 home];
  v18 = [(HUQuickControlViewControllerCoordinator *)v13 initWithItem:v15 controlItems:v16 home:v17 delegate:self];
  [(HUCardViewController *)self setViewControllerCoordinator:v18];

  v19 = [v8 shouldIncludeRoomNameInHeaderTitle];
  v20 = [(HUCardViewController *)self viewControllerCoordinator];
  [v20 setShouldIncludeRoomNameInHeaderTitle:v19];

  v21 = [(HUCardViewController *)self quickControlLayoutGuide];
  v22 = [(HUCardViewController *)self quickControlViewController];
  [v22 setAvailableContentLayoutGuide:v21];

  if ([(HUCardViewController *)self isViewLoaded])
  {
    [(HUCardViewController *)self _updateScrollViewAndSpinnerView];
    v23 = [(HUCardViewController *)self viewControllerCoordinator];
    v24 = [v23 primaryStatusText];
    v25 = [(HUCardViewController *)self viewControllerCoordinator];
    v26 = [v25 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:v24 secondaryText:v26];

    [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v17.receiver = self;
  v17.super_class = HUCardViewController;
  [(HUCardViewController *)&v17 traitCollectionDidChange:a3];
  v4 = [(HUCardViewController *)self view];
  v5 = [v4 traitCollection];
  v6 = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [v5 userInterfaceStyle]);

  v7 = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] & 1) != 0 || v7)
  {
    v14 = [MEMORY[0x277D75348] clearColor];
    v15 = [(HUCardViewController *)self view];
    [v15 setBackgroundColor:v14];

    v12 = [MEMORY[0x277D75348] clearColor];
    v16 = [(HUCardViewController *)self scrollView];
    [v16 setBackgroundColor:v12];

LABEL_12:
    goto LABEL_13;
  }

  v8 = [(HUCardViewController *)self hideControls];
  v9 = v6;
  if (v8)
  {
    v9 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  v10 = [(HUCardViewController *)self view];
  [v10 setBackgroundColor:v9];

  if (v8)
  {
  }

  v11 = [(HUCardViewController *)self hideControls];
  v12 = v6;
  if (v11)
  {
    v12 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  v13 = [(HUCardViewController *)self scrollView];
  [v13 setBackgroundColor:v12];

  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  [(HUCardViewController *)self _updateMaterials];
  [(HUCardViewController *)self _updateCloseButtonVibrancyEffect];
}

- (void)_updateScrollViewAndSpinnerView
{
  v3 = [(HUCardViewController *)self viewControllerReadyPromise];
  v4 = [v3 future];
  v5 = [v4 isFinished];

  if (v5)
  {
    return;
  }

  v6 = [(HUCardViewController *)self quickControlViewController];
  if (v6)
  {

LABEL_5:
    v8 = [(HUCardViewController *)self spinnerView];
    [v8 stopAnimating];

    v9 = [(HUCardViewController *)self scrollView];
    [v9 setHidden:0];

    v10 = [(HUCardViewController *)self quickControlViewController];

    if (v10)
    {
      v11 = [(HUCardViewController *)self quickControlViewController];
      v12 = [(HUCardViewController *)self scrollView];
      [(HUCardViewController *)self naui_addChildViewWithViewController:v11 toView:v12];

      v13 = [(HUCardViewController *)self quickControlViewController];
      v14 = [v13 childViewControllers];

      objc_opt_class();
      v15 = [v14 firstObject];
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if ([v14 count] == 1 && v17)
      {
        v18 = [v17 childViewControllers];
        v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_242];

        v20 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        v21 = [v19 collectionView];
        v22 = [v20 containsObject:v21];

        if (v22)
        {
          v23 = [v19 collectionView];
          [v23 removeObserver:self forKeyPath:@"contentSize"];
        }

        v24 = [v19 collectionView];
        [v24 addObserver:self forKeyPath:@"contentSize" options:0 context:0];

        v25 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        v26 = [v19 collectionView];
        [v25 addObject:v26];
      }
    }

    v27 = [(HUCardViewController *)self settingsViewController];

    if (v27)
    {
      v28 = [(HUCardViewController *)self settingsViewController];
      v29 = [(HUCardViewController *)self scrollView];
      [(HUCardViewController *)self naui_addChildViewWithViewController:v28 toView:v29];

      objc_opt_class();
      v30 = [(HUCardViewController *)self settingsViewController];
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v32)
      {
        v33 = [v32 tableView];
        [v33 _setFirstResponderKeyboardAvoidanceEnabled:0];

        v34 = [v32 tableView];
        [v34 setScrollEnabled:0];

        v35 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        v36 = [v32 tableView];
        v37 = [v35 containsObject:v36];

        if (v37)
        {
          v38 = [v32 tableView];
          [v38 removeObserver:self forKeyPath:@"contentSize"];
        }

        v39 = [v32 tableView];
        [v39 addObserver:self forKeyPath:@"contentSize" options:0 context:0];

        v40 = [(HUCardViewController *)self contentSizeKeyPathObservees];
        v41 = [v32 tableView];
        [v40 addObject:v41];
      }
    }

    v42 = [(HUCardViewController *)self scrollView];
    v43 = [(HUCardViewController *)self panGestureRecognizer];
    [v42 removeGestureRecognizer:v43];

    if (!-[HUCardViewController hideControls](self, "hideControls") && !-[HUCardViewController hideSettings](self, "hideSettings") && ([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
    {
      v44 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handlePanGesture_];
      [(HUCardViewController *)self setPanGestureRecognizer:v44];

      v45 = [(HUCardViewController *)self panGestureRecognizer];
      [v45 setDelegate:self];

      v46 = [(HUCardViewController *)self scrollView];
      v47 = [(HUCardViewController *)self panGestureRecognizer];
      [v46 addGestureRecognizer:v47];
    }

    v48 = [(HUCardViewController *)self view];
    [v48 setNeedsLayout];
    goto LABEL_29;
  }

  v7 = [(HUCardViewController *)self settingsViewController];

  if (v7)
  {
    goto LABEL_5;
  }

  v48 = [(HUCardViewController *)self spinnerView];
  [v48 startAnimating];
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
    v5 = [(HUCardViewController *)self navigationBarTitleView];
    v6 = [(HUQuickControlProxHandOffSummaryViewUpdater *)v4 initWithNavigationBarTitleView:v5];
    [(HUCardViewController *)self setProxHandOffSummaryViewUpdater:v6];
  }

  v7 = objc_alloc(MEMORY[0x277D759D8]);
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], v9, v10, v11}];
  [(HUCardViewController *)self setScrollView:v12];

  v13 = [(HUCardViewController *)self scrollView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HUCardViewController *)self scrollView];
  [v14 setShowsHorizontalScrollIndicator:0];

  v15 = [(HUCardViewController *)self scrollView];
  [v15 setShowsVerticalScrollIndicator:1];

  v16 = [(HUCardViewController *)self scrollView];
  [v16 setDelaysContentTouches:1];

  v17 = [(HUCardViewController *)self scrollView];
  [v17 setTracksImmediatelyWhileDecelerating:0];

  v18 = [(HUCardViewController *)self scrollView];
  [v18 setDelegate:self];

  v19 = [(HUCardViewController *)self scrollView];
  [v19 setAlwaysBounceVertical:1];

  v20 = [(HUCardViewController *)self scrollView];
  [v20 setContentInsetAdjustmentBehavior:2];

  v21 = [(HUCardViewController *)self scrollView];
  [v21 _setIndicatorInsetAdjustmentBehavior:2];

  v22 = [(HUCardViewController *)self scrollView];
  [v22 setHidden:1];

  v23 = [(HUCardViewController *)self view];
  v24 = [(HUCardViewController *)self scrollView];
  [v23 addSubview:v24];

  v25 = [MEMORY[0x277D14990] sharedInstance];
  LOBYTE(v24) = [v25 useSAConfig];

  if ((v24 & 1) == 0)
  {
    v26 = [MEMORY[0x277D75220] buttonWithType:7];
    [(HUCardViewController *)self setCloseButton:v26];

    v27 = [(HUCardViewController *)self closeButton];
    [v27 addTarget:self action:sel__closeButtonPressed_ forControlEvents:64];

    v28 = [HUVisualEffectContainerView alloc];
    v29 = [(HUCardViewController *)self closeButton];
    v30 = [(HUVisualEffectContainerView *)v28 initWithInnerContentView:v29];
    [(HUCardViewController *)self setCloseButtonEffectView:v30];

    [(HUCardViewController *)self _updateCloseButtonVibrancyEffect];
  }

  v31 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v31 setHidesWhenStopped:1];
  v32 = [(HUCardViewController *)self view];
  [v32 addSubview:v31];

  [(HUCardViewController *)self setSpinnerView:v31];
  v33 = [(HUCardViewController *)self spinnerView];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [[HUHubUnavailableView alloc] initWithFrame:v8, v9, v10, v11];
  [(HUCardViewController *)self setHubUnavailableView:v34];

  [(HUCardViewController *)self _updateScrollViewAndSpinnerView];
}

- (void)setUpConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUCardViewController *)self constraints];
  [v3 deactivateConstraints:v4];

  v92 = objc_opt_new();
  v5 = [(HUCardViewController *)self backgroundVisualEffectView];

  if (v5)
  {
    v6 = [(HUCardViewController *)self backgroundVisualEffectView];
    v7 = [v6 topAnchor];
    v8 = [(HUCardViewController *)self view];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v92 addObject:v10];

    v11 = [(HUCardViewController *)self backgroundVisualEffectView];
    v12 = [v11 bottomAnchor];
    v13 = [(HUCardViewController *)self view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v92 addObject:v15];

    v16 = [(HUCardViewController *)self backgroundVisualEffectView];
    v17 = [v16 leadingAnchor];
    v18 = [(HUCardViewController *)self view];
    v19 = [v18 leadingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v92 addObject:v20];

    v21 = [(HUCardViewController *)self backgroundVisualEffectView];
    v22 = [v21 trailingAnchor];
    v23 = [(HUCardViewController *)self view];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v92 addObject:v25];
  }

  v26 = [(HUCardViewController *)self scrollView];
  v27 = [v26 topAnchor];
  v28 = [(HUCardViewController *)self view];
  v29 = [v28 safeAreaLayoutGuide];
  v30 = [v29 topAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];
  [v92 addObject:v31];

  v32 = [(HUCardViewController *)self scrollView];
  v33 = [v32 bottomAnchor];
  v34 = [(HUCardViewController *)self view];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v92 addObject:v36];

  v37 = [(HUCardViewController *)self scrollView];
  v38 = [v37 leadingAnchor];
  v39 = [(HUCardViewController *)self view];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v92 addObject:v41];

  v42 = [(HUCardViewController *)self scrollView];
  v43 = [v42 trailingAnchor];
  v44 = [(HUCardViewController *)self view];
  v45 = [v44 trailingAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v92 addObject:v46];

  v47 = [(HUCardViewController *)self quickControlLayoutGuide];
  v48 = [v47 topAnchor];
  v49 = [(HUCardViewController *)self view];
  v50 = [v49 layoutMarginsGuide];
  v51 = [v50 topAnchor];
  v52 = [v48 constraintEqualToAnchor:v51];
  [v92 addObject:v52];

  v53 = [(HUCardViewController *)self quickControlLayoutGuide];
  v54 = [v53 bottomAnchor];
  v55 = [(HUCardViewController *)self view];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56];
  [v92 addObject:v57];

  v58 = [(HUCardViewController *)self quickControlLayoutGuide];
  v59 = [v58 leadingAnchor];
  v60 = [(HUCardViewController *)self view];
  v61 = [v60 layoutMarginsGuide];
  v62 = [v61 leadingAnchor];
  v63 = [v59 constraintEqualToAnchor:v62];
  [v92 addObject:v63];

  v64 = [(HUCardViewController *)self quickControlLayoutGuide];
  v65 = [v64 trailingAnchor];
  v66 = [(HUCardViewController *)self view];
  v67 = [v66 layoutMarginsGuide];
  v68 = [v67 trailingAnchor];
  v69 = [v65 constraintEqualToAnchor:v68];
  [v92 addObject:v69];

  v70 = [(HUCardViewController *)self spinnerView];
  v71 = [v70 centerXAnchor];
  v72 = [(HUCardViewController *)self view];
  v73 = [v72 centerXAnchor];
  v74 = [v71 constraintEqualToAnchor:v73];
  [v92 addObject:v74];

  v75 = [(HUCardViewController *)self spinnerView];
  v76 = [v75 centerYAnchor];
  v77 = [(HUCardViewController *)self view];
  v78 = [v77 centerYAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];
  [v92 addObject:v79];

  v80 = [(HUCardViewController *)self spinnerView];
  v81 = [v80 topAnchor];
  v82 = [(HUCardViewController *)self view];
  v83 = [v82 topAnchor];
  v84 = [v81 constraintGreaterThanOrEqualToAnchor:v83];
  [v92 addObject:v84];

  v85 = [(HUCardViewController *)self spinnerView];
  v86 = [v85 bottomAnchor];
  v87 = [(HUCardViewController *)self view];
  v88 = [v87 bottomAnchor];
  v89 = [v86 constraintLessThanOrEqualToAnchor:v88];
  [v92 addObject:v89];

  [(HUCardViewController *)self setConstraints:v92];
  v90 = MEMORY[0x277CCAAD0];
  v91 = [(HUCardViewController *)self constraints];
  [v90 activateConstraints:v91];
}

- (void)viewWillAppear:(BOOL)a3
{
  v38.receiver = self;
  v38.super_class = HUCardViewController;
  [(HUCardViewController *)&v38 viewWillAppear:a3];
  v4 = [(HUCardViewController *)self navigationController];
  if ([v4 isBeingPresented])
  {
  }

  else
  {
    v5 = [(HUCardViewController *)self navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 count];

    if (v7 != 1)
    {
      goto LABEL_12;
    }
  }

  v8 = [(HUCardViewController *)self closeButtonEffectView];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D751E0]);
    v10 = [(HUCardViewController *)self closeButtonEffectView];
    v11 = [v9 initWithCustomView:v10];
    v12 = [(HUCardViewController *)self navigationItem];
    [v12 setRightBarButtonItem:v11];
  }

  v13 = [(HUCardViewController *)self navigationBarTitleView];
  v14 = [(HUCardViewController *)self navigationItem];
  [v14 setTitleView:v13];

  v15 = [(HUCardViewController *)self navigationController];
  v16 = [v15 navigationBar];
  [v16 _setHidesShadow:1];

  v17 = objc_alloc_init(MEMORY[0x277D751D8]);
  [v17 configureWithTransparentBackground];
  v18 = [objc_alloc(MEMORY[0x277D75788]) initWithBarAppearance:v17];
  v19 = [(HUCardViewController *)self navigationController];
  v20 = [v19 navigationBar];
  [v20 setScrollEdgeAppearance:v18];

  if ([(HUCardViewController *)self hideControls])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(HUCardViewController *)self navigationItem];
  [v22 _setManualScrollEdgeAppearanceProgress:v21];

  v23 = [(HUCardViewController *)self navigationItem];
  [v23 _setManualScrollEdgeAppearanceEnabled:1];

  [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  v24 = [(HUCardViewController *)self viewControllerCoordinator];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 primaryStatusText];
    v27 = [v25 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:v26 secondaryText:v27];
  }

LABEL_12:
  v28 = 0x277D14000;
  v29 = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v30 = MEMORY[0x277D75348];
LABEL_16:
    v33 = [v30 clearColor];
    v28 = [(HUCardViewController *)self scrollView];
    [v28 setBackgroundColor:v33];
LABEL_17:

    goto LABEL_18;
  }

  if (v29)
  {
    v31 = [MEMORY[0x277D75348] clearColor];
    v32 = [(HUCardViewController *)self view];
    [v32 setBackgroundColor:v31];

    v30 = MEMORY[0x277D75348];
    goto LABEL_16;
  }

  v34 = [(HUCardViewController *)self hideControls];
  v35 = v34;
  if (v34)
  {
    v36 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    v33 = v36;
  }

  else
  {
    v33 = [(HUCardViewController *)self view];
    v28 = [v33 traitCollection];
    v36 = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [v28 userInterfaceStyle]);
  }

  v37 = [(HUCardViewController *)self scrollView];
  [v37 setBackgroundColor:v36];

  if (!v35)
  {

    goto LABEL_17;
  }

LABEL_18:

  [(HUCardViewController *)self setUpConstraints];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HUCardViewController;
  [(HUCardViewController *)&v8 viewDidDisappear:a3];
  v4 = [(HUCardViewController *)self navigationController];
  v5 = [v4 topViewController];
  if ([v5 isEqual:self])
  {
    v6 = [(HUCardViewController *)self hasRequestedDismissal];

    if (!v6)
    {
      v7 = [(HUCardViewController *)self requestDismissal];
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
  v3 = [(HUCardViewController *)self scrollView];
  v4 = [v3 isHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [(HUCardViewController *)self view];
    [v5 frame];
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
      v13 = [(HUCardViewController *)self settingsViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        objc_opt_class();
        v15 = [(HUCardViewController *)self settingsViewController];
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![(HUCardViewController *)self hideControls])
        {
          v18 = [v17 tableView];
          [v18 sizeToFit];
        }

        v19 = [v17 tableView];
        [v19 contentSize];
        v21 = v20;
        v22 = [(HUCardViewController *)self view];
        [v22 safeAreaInsets];
        v10 = v21 + v23;

        if (v10 < v9)
        {
          v10 = v9;
        }
      }

      else
      {
        v24 = [(HUCardViewController *)self settingsViewController];
        [v24 preferredContentSize];
        v26 = v25;
        v27 = [(HUCardViewController *)self view];
        [v27 safeAreaInsets];
        v10 = v26 + v28;

        if (v10 < v9)
        {
          v10 = v9;
        }
      }
    }

    v29 = [(HUCardViewController *)self quickControlViewController];
    v30 = [v29 view];
    [v30 setFrame:{0.0, 0.0, v7, v11}];

    v31 = [(HUCardViewController *)self settingsViewController];
    v32 = [v31 view];
    [v32 setFrame:{0.0, v11, v7, v10}];

    v33 = [(HUCardViewController *)self hubUnavailableView];
    [v33 setFrame:{0.0, 0.0, v7, v9}];

    LODWORD(v32) = [(HUCardViewController *)self isUnavailableHub];
    v34 = [(HUCardViewController *)self hubUnavailableView];
    v35 = v34;
    if (v32)
    {
      v36 = [(HUCardViewController *)self sourceItem];
      v37 = [v36 latestResults];
      v38 = [v37 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      [v35 setAccessoryName:v38];

      v35 = [(HUCardViewController *)self scrollView];
      v39 = [(HUCardViewController *)self hubUnavailableView];
      [v35 addSubview:v39];
    }

    else
    {
      [v34 removeFromSuperview];
    }

    v40 = [(HUCardViewController *)self scrollView];
    [v40 setContentSize:{v7, v11 + v10}];

    v41 = [(HUCardViewController *)self view];
    [v41 safeAreaInsets];
    v43 = v42;
    v44 = [(HUCardViewController *)self scrollView];
    [v44 setScrollIndicatorInsets:{0.0, 0.0, v43, 0.0}];

    v45 = [(HUCardViewController *)self scrollView];
    [v45 contentSize];
    v47 = v46 > v9;
    v48 = [(HUCardViewController *)self scrollView];
    [v48 setScrollEnabled:v47];

    v49 = [(HUCardViewController *)self transitionBlurView];

    if (v49)
    {
      v50 = [(HUCardViewController *)self view];
      [v50 bounds];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v59 = [(HUCardViewController *)self transitionBlurView];
      [v59 setFrame:{v52, v54, v56, v58}];
    }

    v60 = [(HUCardViewController *)self viewControllerReadyPromise];
    v61 = [v60 future];
    v62 = [v61 isFinished];

    if ((v62 & 1) == 0)
    {
      v63 = [(HUCardViewController *)self viewControllerReadyPromise];
      [v63 finishWithNoResult];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"contentSize", a4, a5, a6}])
  {
    [(HUCardViewController *)self _checkHubAvailability];
    v7 = [(HUCardViewController *)self view];
    [v7 setNeedsLayout];
  }
}

- (void)forceUnlockSettings
{
  [(HUCardViewController *)self setSettingsUnlocked:1];
  v3 = [(HUCardViewController *)self quickControlViewController];
  v4 = [v3 controlContainerView];
  [v4 setShouldShowDetailsButton:0];

  v6 = [(HUCardViewController *)self scrollView];
  v5 = [(HUCardViewController *)self panGestureRecognizer];
  [v6 removeGestureRecognizer:v5];
}

- (void)setHideControls:(BOOL)a3
{
  if (self->_hideControls != a3)
  {
    self->_hideControls = a3;
    if ([(HUCardViewController *)self hideControls])
    {
      [(HUCardViewController *)self _unlockSettings];
      [(HUCardViewController *)self _endUsingTapticFeedback];
    }

    if (![(HUCardViewController *)self hideSettings])
    {
      v4 = [(HUCardViewController *)self settingsViewController];
      v5 = [v4 view];
      [v5 layoutIfNeeded];
    }

    v6 = [(HUCardViewController *)self view];
    v7 = [v6 window];

    if (v7)
    {
      v8 = [(HUCardViewController *)self view];
      [v8 layoutIfNeeded];
    }
  }
}

- (void)setHideSettings:(BOOL)a3
{
  if (self->_hideSettings != a3)
  {
    self->_hideSettings = a3;
    if ([(HUCardViewController *)self hideSettings])
    {
      [(HUCardViewController *)self _unlockSettings];

      [(HUCardViewController *)self _endUsingTapticFeedback];
    }

    else
    {
      v4 = [(HUCardViewController *)self view];
      v5 = [v4 window];

      if (v5)
      {
        v6 = [(HUCardViewController *)self settingsViewController];
        v7 = [v6 view];
        [v7 layoutIfNeeded];

        v8 = [(HUCardViewController *)self view];
        [v8 layoutIfNeeded];
      }
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(HUCardViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(HUCardViewController *)self scrollView];
  [v6 setBackgroundColor:v4];
}

- (void)setIsUnavailableHub:(BOOL)a3
{
  if (self->_isUnavailableHub != a3)
  {
    self->_isUnavailableHub = a3;
    v5 = [(HUCardViewController *)self isUnavailableHub];
    [(HUCardViewController *)self setHideControls:v5];
    [(HUCardViewController *)self setHideSettings:v5];
    v6 = [(HUCardViewController *)self quickControlViewController];
    v7 = [v6 view];
    [v7 setHidden:v5];

    v8 = [(HUCardViewController *)self view];
    [v8 layoutIfNeeded];
  }
}

- (void)externalAnimationsBegan
{
  v2 = [(HUCardViewController *)self quickControlViewController];
  [v2 externalAnimationsBegan];
}

- (void)externalAnimationsEnded
{
  v2 = [(HUCardViewController *)self quickControlViewController];
  [v2 externalAnimationsEnded];
}

- (void)dismissCardAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HUCardViewController_dismissCardAnimated___block_invoke;
  v3[3] = &unk_277DB8488;
  v3[4] = self;
  [(HUCardViewController *)self dismissViewControllerAnimated:a3 completion:v3];
}

void __44__HUCardViewController_dismissCardAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) quickControlViewController];
  v1 = [v2 dismissControlAnimated:0];
}

- (void)scrollToDetailsViewAnimated:(BOOL)a3
{
  [(HUCardViewController *)self _prepareForTapticFeedback];
  [(HUCardViewController *)self _actuateTapticFeedback];
  [(HUCardViewController *)self _unlockSettings];

  [(HUCardViewController *)self _endUsingTapticFeedback];
}

- (id)blurEffectForProxHandOff
{
  v2 = [(HUCardViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
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
  v2 = [(HUCardViewController *)self blurEffectForProxHandOff];
  v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v2];

  return v3;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(HUCardViewController *)self contentSizeKeyPathObservees];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = HFLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v14;
          v21 = self;
          v22 = 2112;
          v23 = v9;
          _os_log_debug_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEBUG, "Removing self [%@] as observer for HUContentSizeKeyPath: receiverObject = [%@]", buf, 0x16u);
        }

        [v9 removeObserver:self forKeyPath:@"contentSize"];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v11 = [(HUCardViewController *)self contentSizeKeyPathObservees];
  [v11 removeAllObjects];

  contentSizeKeyPathObservees = self->_contentSizeKeyPathObservees;
  self->_contentSizeKeyPathObservees = 0;

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v13 = [MEMORY[0x277D14990] sharedInstance];
    [v13 invalidateProxClient];
  }

  v15.receiver = self;
  v15.super_class = HUCardViewController;
  [(HUCardViewController *)&v15 dealloc];
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  [(HUCardViewController *)self _hostViewHeight];
  v6 = v5;
  v7 = [(HUCardViewController *)self quickControlViewController];
  v8 = [v7 view];
  [v4 translationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = -v12 / v6;
  v14 = fminf(fmaxf(v13, 0.0), 1.0);
  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v16 = v15;
  v17 = [v4 state];

  if ((v17 - 3) >= 3)
  {
    if (v17 == 2)
    {
      if (v14 >= 0.25)
      {
        v24 = [(HUCardViewController *)self scrollView];
        [v24 contentOffset];
        if (v21 >= v16)
        {
          v22 = [(HUCardViewController *)self disablePullToUnlockSettings];

          if (!v22)
          {
            [(HUCardViewController *)self _actuateTapticFeedback];
            v23 = [(HUCardViewController *)self scrollView];
            [v23 setScrollEnabled:0];

            [(HUCardViewController *)self _unlockSettings];

            [(HUCardViewController *)self _endUsingTapticFeedback];
          }
        }

        else
        {
        }
      }
    }

    else if (v17 == 1)
    {

      [(HUCardViewController *)self _prepareForTapticFeedback];
    }
  }

  else if (v14 < 0.25)
  {
    v18 = [(HUCardViewController *)self scrollView];
    [v18 contentOffset];
    v20 = v19;

    if (v20 >= v16)
    {

      [(HUCardViewController *)self _nudgeScrollViewToPoint:v10, v16];
    }
  }
}

- (void)_prepareForTapticFeedback
{
  v3 = [(HUCardViewController *)self traitCollection];
  v4 = [v3 forceTouchCapability];

  if (v4 == 2)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v7 _tapticEngine];
    [v5 prepareUsingFeedback:1];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
    [(HUCardViewController *)self setImpactFeedbackGenerator:v6];

    v7 = [(HUCardViewController *)self impactFeedbackGenerator];
    [v7 prepare];
  }
}

- (void)_actuateTapticFeedback
{
  v3 = [(HUCardViewController *)self traitCollection];
  v4 = [v3 forceTouchCapability];

  if (v4 == 2)
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v7 _tapticEngine];
    [v5 actuateFeedback:1];
  }

  else
  {
    v6 = [(HUCardViewController *)self impactFeedbackGenerator];
    [v6 impactOccurred];

    v7 = [(HUCardViewController *)self impactFeedbackGenerator];
    [v7 prepare];
  }
}

- (void)_endUsingTapticFeedback
{
  v3 = [(HUCardViewController *)self traitCollection];
  v4 = [v3 forceTouchCapability];

  if (v4 == 2)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v6 _tapticEngine];
    [v5 endUsingFeedback:1];
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
    v3 = [MEMORY[0x277D75348] clearColor];
    v4 = [(HUCardViewController *)self view];
    [v4 setBackgroundColor:v3];

    v5 = [MEMORY[0x277D75348] clearColor];
    v6 = [(HUCardViewController *)self scrollView];
    [v6 setBackgroundColor:v5];
  }

  v7 = [(HUCardViewController *)self transitionBlurView];
  if (v7)
  {
  }

  else if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v8 = [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
    [(HUCardViewController *)self setTransitionBlurView:v8];

    v9 = [(HUCardViewController *)self transitionBlurView];
    [v9 setAutoresizingMask:18];

    v10 = [(HUCardViewController *)self view];
    v11 = [(HUCardViewController *)self transitionBlurView];
    [v10 insertSubview:v11 atIndex:0];

    goto LABEL_10;
  }

  v12 = [(HUCardViewController *)self transitionBlurView];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];

    if ((v14 & 1) == 0)
    {
      v15 = [(HUCardViewController *)self transitionBlurView];
      [v15 removeFromSuperview];

      [(HUCardViewController *)self setTransitionBlurView:0];
    }
  }

LABEL_10:
  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v16 = [(HUCardViewController *)self backgroundVisualEffectView];

    if (v16)
    {
      v17 = [(HUCardViewController *)self backgroundVisualEffectView];
      v18 = [(HUCardViewController *)self blurEffectForProxHandOff];
      [v17 setEffect:v18];
    }

    else
    {
      v19 = [(HUCardViewController *)self backgroundVisualEffectViewForProxHandOff];
      [(HUCardViewController *)self setBackgroundVisualEffectView:v19];

      v20 = [(HUCardViewController *)self backgroundVisualEffectView];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

      v17 = [(HUCardViewController *)self view];
      v18 = [(HUCardViewController *)self backgroundVisualEffectView];
      [v17 insertSubview:v18 atIndex:0];
    }

    v21 = [(HUCardViewController *)self transitionBlurView];
    [v21 removeFromSuperview];

    [(HUCardViewController *)self setTransitionBlurView:0];
  }
}

- (double)_hostViewHeight
{
  v3 = [(HUCardViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(HUCardViewController *)self navigationBarTitleView];
  [v6 height];
  v8 = v5 - v7;

  return v8;
}

- (double)_quickControlSectionHeight
{
  v3 = [(HUCardViewController *)self quickControlViewController];
  v4 = [v3 controlContainerView];
  [v4 frame];
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
  v5 = [(HUCardViewController *)self scrollView];
  [v5 bounds];
  v7 = v4 - v6;

  return v7;
}

- (void)_updateReachabilityState
{
  v3 = [(HUCardViewController *)self viewControllerCoordinator];
  -[HUCardViewController setReachable:](self, "setReachable:", [v3 isReachable]);

  v4 = [(HUCardViewController *)self viewControllerCoordinator];
  v5 = [v4 primaryStatusText];
  v6 = [(HUCardViewController *)self viewControllerCoordinator];
  v7 = [v6 secondaryStatusText];
  [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:v5 secondaryText:v7];

  [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
  v8 = [(HUCardViewController *)self view];
  v9 = [v8 window];

  if (v9)
  {
    v10 = [(HUCardViewController *)self view];
    [v10 layoutIfNeeded];
  }
}

- (void)_updateControlStatusTextWithPrimaryText:(id)a3 secondaryText:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(HUCardViewController *)self navigationBarTitleView];
  v8 = [v7 summaryView];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    if ([(HUCardViewController *)self isConfiguredForNonHomeUser])
    {
      v9 = [(HUCardViewController *)self controlItems];
      v10 = [v9 na_firstObjectPassingTest:&__block_literal_global_149_0];

      v11 = [v10 deviceName];
      [v8 setPrimaryText:v11];
    }
  }

  else
  {
    [v8 setPrimaryText:v12];
    [v8 setSecondaryText:v6];
  }
}

uint64_t __78__HUCardViewController__updateControlStatusTextWithPrimaryText_secondaryText___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_updateIconDescriptorAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUCardViewController *)self viewControllerCoordinator];
  v19 = [v5 iconDescriptor];

  if ([MEMORY[0x277D14CE8] shouldUseLegacyQuickControlPresentation])
  {
    v6 = [(HUCardViewController *)self viewControllerCoordinator];
    v7 = [v6 showIconOffState];

    if (v7)
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

    v17 = [(HUCardViewController *)self navigationBarTitleView];
    v18 = [v17 summaryView];
    v12 = [v18 iconView];

    [v12 updateWithIconDescriptor:v19 displayStyle:v8 animated:v3];
  }

  else
  {
    v9 = [(HUCardViewController *)self navigationBarTitleView];
    v10 = [v9 summaryView];
    v11 = [v10 baseIconView];
    v12 = [v11 configuration];

    if (v12)
    {
      v13 = [v12 copyWithIconDescriptor:v19];
      v14 = [(HUCardViewController *)self navigationBarTitleView];
      v15 = [v14 summaryView];
      v16 = [v15 baseIconView];
      [v16 setConfiguration:v13];
    }
  }
}

- (void)_closeButtonPressed:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: User pressed close button: %@", &v8, 0x16u);
  }

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v6 = [MEMORY[0x277D14990] sharedInstance];
    [v6 userTappedCloseButton];
  }

  v7 = [(HUCardViewController *)self requestDismissal];
}

- (id)requestDismissal
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing card view controller: %@", &v17, 0xCu);
  }

  [(HUCardViewController *)self setHasRequestedDismissal:1];
  objc_opt_class();
  v4 = [(HUCardViewController *)self settingsViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 viewWillDismiss];
  v7 = [(HUCardViewController *)self quickControlViewController];
  v8 = [v7 childViewControllers];

  objc_opt_class();
  v9 = [v8 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ([v8 count] == 1 && v11)
  {
    v12 = [v11 childViewControllers];
    v13 = [v12 na_firstObjectPassingTest:&__block_literal_global_152_1];

    [v13 viewWillDismiss];
  }

  v14 = [(HUCardViewController *)self delegate];
  v15 = [v14 cardViewControllerRequestingDismissal:self];

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
    v3 = [(HUCardViewController *)self quickControlViewController];
    v4 = [v3 controlContainerView];
    [v4 setShouldShowDetailsButton:0];

    [(HUCardViewController *)self _scrollToSettings];
    v6 = [(HUCardViewController *)self scrollView];
    v5 = [(HUCardViewController *)self panGestureRecognizer];
    [v6 removeGestureRecognizer:v5];
  }
}

- (void)_scrollToSettings
{
  if (![(HUCardViewController *)self hideControls])
  {
    v3 = [(HUCardViewController *)self settingsViewController];
    v4 = [v3 view];
    [v4 frame];
    v6 = v5;

    [(HUCardViewController *)self setContentOffset:1 animated:0.0, v6];
  }
}

- (void)_nudgeScrollViewToPoint:(CGPoint)a3
{
  y = a3.y;
  v5 = [(HUCardViewController *)self scrollView];
  [v5 setScrollEnabled:0];

  [(HUCardViewController *)self setContentOffset:1 animated:0.0, y];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(HUCardViewController *)self _springAnimationSettings];
  v8 = [HUAnimationApplier staticApplierWithAnimationSettings:v7];
  [(HUCardViewController *)self setAnimationApplier:v8];

  objc_initWeak(&location, self);
  v9 = [(HUCardViewController *)self animationApplier];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __50__HUCardViewController_setContentOffset_animated___block_invoke;
  v14 = &unk_277DC2DC8;
  objc_copyWeak(v15, &location);
  v15[1] = *&x;
  v15[2] = *&y;
  [v9 addApplierBlock:&v11];

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
  v3 = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v4 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
  }

  else
  {
    v4 = 0;
  }

  v12 = v4;
  if (v3)
  {
    v5 = [(HUCardViewController *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6 == 2)
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

  v11 = [(HUCardViewController *)self closeButtonEffectView];
  [v11 setEffect:v12];
}

- (void)_checkHubAvailability
{
  v3 = [(HUCardViewController *)self home];
  v4 = [v3 hf_shouldBlockCurrentUserFromHome];

  if (v4)
  {
    objc_opt_class();
    v5 = [(HUCardViewController *)self sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;

    if (v13)
    {
      v7 = [v13 accessories];
      v8 = [v7 allObjects];
      v9 = [v8 na_all:&__block_literal_global_161_1];

      v10 = [v13 accessories];
      v11 = [v10 allObjects];
      v12 = [v11 na_any:&__block_literal_global_163_0];

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
    v6 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@: User pressed Esc key", &v5, 0xCu);
  }

  v4 = [(HUCardViewController *)self requestDismissal];
}

- (void)scrollViewDidScroll:(id)a3
{
  v38 = a3;
  v4 = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  if ([(HUCardViewController *)self hideControls]|| [(HUCardViewController *)self hideSettings])
  {
    goto LABEL_19;
  }

  if (([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials] | v4))
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    v6 = [(HUCardViewController *)self scrollView];
    [v6 setBackgroundColor:v5];
    goto LABEL_10;
  }

  v7 = [(HUCardViewController *)self traitCollection];
  v5 = +[HUQuickControlUtilities backgroundColorForUserInterfaceStyle:](HUQuickControlUtilities, "backgroundColorForUserInterfaceStyle:", [v7 userInterfaceStyle]);

  [v38 frame];
  v9 = v8;
  [v38 contentSize];
  v11 = v10;
  [v38 contentOffset];
  v13 = v12;
  if (v13 <= 0.0 || [(HUCardViewController *)self disablePullToUnlockSettings])
  {
    v14 = v5;
  }

  else
  {
    v36 = v9;
    v37 = v11;
    if ((v36 + v13) < v37)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v14 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  v6 = v14;
LABEL_9:
  v15 = [(HUCardViewController *)self scrollView];
  [v15 setBackgroundColor:v6];

LABEL_10:
  [v38 contentOffset];
  v17 = v16 / 25.0;
  v18 = fmax(fmin(v17, 1.0), 0.0);
  v19 = v18;
  v20 = [(HUCardViewController *)self navigationItem];
  [v20 _setManualScrollEdgeAppearanceProgress:v19];

  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v22 = v21 + 80.0;
  v23 = [(HUCardViewController *)self panGestureRecognizer];
  if ([v23 state] == 1)
  {
    v24 = 1;
  }

  else
  {
    v25 = [(HUCardViewController *)self panGestureRecognizer];
    v24 = [v25 state] == 2;
  }

  v26 = [MEMORY[0x277D14CE8] isAMac];
  [v38 contentOffset];
  if (v27 < v22 || (-[HUCardViewController quickControlViewController](self, "quickControlViewController"), v28 = objc_claimAutoreleasedReturnValue(), [v28 controlContainerView], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "shouldShowDetailsButton"), v29, v28, (v24 || (v30 & 1) == 0) | v26 & 1))
  {
    if (v26)
    {
      [v38 contentOffset];
      v32 = v31;
      [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
      if (v32 > v33)
      {
        v34 = [(HUCardViewController *)self quickControlViewController];
        v35 = [v34 controlContainerView];
        [v35 setShouldShowDetailsButton:0];
      }
    }
  }

  else
  {
    [v38 contentOffset];
    [(HUCardViewController *)self _nudgeScrollViewToPoint:?];
  }

LABEL_19:
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v10 = a3;
  [(HUCardViewController *)self _quickControlScrollOffsetBoundary];
  v5 = v4;
  [v10 contentOffset];
  if (v6 >= v5)
  {
    v7 = [(HUCardViewController *)self quickControlViewController];
    v8 = [v7 controlContainerView];
    if ([v8 shouldShowDetailsButton])
    {
      v9 = [MEMORY[0x277D14CE8] isAMac];

      if ((v9 & 1) == 0)
      {
        [v10 contentOffset];
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
  v3 = [(HUCardViewController *)self settingsViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [v5 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(HUCardViewController *)self scrollView];
    v10 = [v9 panGestureRecognizer];
    v8 = v10 == v5;
  }

  return v8;
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v11 = a4;
  v6 = [(HUCardViewController *)self sourceItem];

  if (v6 == v11)
  {
    [(HUCardViewController *)self _updateIconDescriptorAnimated:1];
    v7 = [(HUCardViewController *)self viewControllerCoordinator];
    v8 = [v7 primaryStatusText];
    v9 = [(HUCardViewController *)self viewControllerCoordinator];
    v10 = [v9 secondaryStatusText];
    [(HUCardViewController *)self _updateControlStatusTextWithPrimaryText:v8 secondaryText:v10];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUCardViewController.m" lineNumber:1117 description:{@"Unknown source item %@", v11}];
  }
}

- (id)hu_prepareForDismissalAnimated:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = [(HUCardViewController *)self requestDismissal];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__HUCardViewController_hu_prepareForDismissalAnimated___block_invoke;
  v15[3] = &unk_277DBA338;
  v6 = v4;
  v16 = v6;
  v7 = [v5 addSuccessBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HUCardViewController_hu_prepareForDismissalAnimated___block_invoke_180;
  v13[3] = &unk_277DB8C00;
  v8 = v6;
  v14 = v8;
  v9 = [v5 addFailureBlock:v13];
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