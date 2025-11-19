@interface MRPlatterViewController
+ (MRPlatterViewController)coverSheetPlatterViewController;
- (BOOL)_canToggleRoutingPicker;
- (BOOL)_shouldUseViewServiceToPresentTVRemote;
- (BOOL)lockScreenPresentsOverrideRoutePicker;
- (BOOL)shouldDisplayPlatter;
- (BOOL)shouldEnableSyncingForSlider:(id)a3;
- (BOOL)shouldShowTVRemoteButton;
- (BOOL)slider:(id)a3 shouldCancelSnapWithTouch:(id)a4;
- (BOOL)slider:(id)a3 syncStateWillChangeFromState:(int64_t)a4 toState:(int64_t)a5;
- (CGSize)lastKnownSize;
- (MRPlatterViewController)initWithActiveRouteType:(int64_t)a3;
- (MRPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MRPlatterViewController)initWithRouteUID:(id)a3;
- (MRPlatterViewController)initWithStyle:(int64_t)a3;
- (MRPlatterViewControllerDelegate)delegate;
- (MediaControlsLanguageOptionsViewController)languageOptionsViewController;
- (NSString)description;
- (NSString)routeName;
- (SFShareAudioViewController)shareAudioViewController;
- (UIEdgeInsets)contentInsetsForRoutingViewController:(id)a3;
- (UIView)effectiveFooterView;
- (UIView)effectiveHeaderView;
- (id)_route;
- (id)_stateDumpObject;
- (id)_tvAirplayIdentifier;
- (id)_tvMediaRemoteIdentifier;
- (int64_t)lockScreenInternalRoutePickerOverrideWithDefaultStyle:(int64_t)a3;
- (uint64_t)_showShareAudioViewController;
- (void)_dismissShareAudioViewController;
- (void)_platterViewControllerReceivedInteraction:(id)a3;
- (void)_presentRoutingViewControllerFromCoverSheet;
- (void)_prewarmTVRemoteIfNeeded;
- (void)_routingCornerViewReceivedTap:(id)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setRoutingPickerVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_showPlaceholderArtwork;
- (void)_showShareAudioViewController;
- (void)_updateConfiguration;
- (void)_updateControlCenterMetadata:(id)a3 sectionMetadata:(id)a4;
- (void)_updateHeaderUI;
- (void)_updateOnScreenForStyle:(int64_t)a3;
- (void)_updatePlaceholderArtwork;
- (void)_updateRouteNameLabel;
- (void)_updateRoutingCornerView;
- (void)_updateRoutingIndicators;
- (void)_updateSecondaryStringFormat;
- (void)_updateStyle;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)endpointController:(id)a3 didLoadNewResponse:(id)a4;
- (void)endpointControllerDidUpdateRoutingAvailability:(id)a3;
- (void)endpointControllerRouteDidUpdate:(id)a3;
- (void)footerViewButtonPressed:(id)a3;
- (void)headerViewButtonPressed:(id)a3;
- (void)headerViewLaunchNowPlayingAppButtonPressed:(id)a3;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
- (void)loadView;
- (void)presentRatingActionSheet:(id)a3 sourceView:(id)a4;
- (void)presentTVRemote;
- (void)routingViewController:(id)a3 didPickRoute:(id)a4;
- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4;
- (void)routingViewController:(id)a3 willDisplayCell:(id)a4;
- (void)routingViewController:(id)a3 willDisplayHeaderView:(id)a4;
- (void)setAllowsNowPlayingAppLaunch:(BOOL)a3;
- (void)setArtworkCatalog:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setDisplayElements:(id)a3;
- (void)setEndpointController:(id)a3;
- (void)setLabel:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setPlaceholderString:(id)a3;
- (void)setRoutingCornerViewTappedBlock:(id)a3;
- (void)setRoutingViewController:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setStyle:(int64_t)a3;
- (void)setSupportedModes:(unint64_t)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToSize:(CGSize)a3 withCoordinator:(id)a4;
@end

@implementation MRPlatterViewController

- (MRPlatterViewController)initWithStyle:(int64_t)a3
{
  v51.receiver = self;
  v51.super_class = MRPlatterViewController;
  v4 = [(MRPlatterViewController *)&v51 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v6, v9, v8}];
    contentView = v4->_contentView;
    v4->_contentView = v10;

    v12 = [[MediaControlsRoutingCornerView alloc] initWithFrame:v7, v6, v9, v8];
    routingCornerView = v4->_routingCornerView;
    v4->_routingCornerView = v12;

    v14 = [[MediaControlsParentContainerView alloc] initWithFrame:v7, v6, v9, v8];
    parentContainerView = v4->_parentContainerView;
    v4->_parentContainerView = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    secondaryStringComponents = v4->_secondaryStringComponents;
    v4->_secondaryStringComponents = v16;

    v18 = objc_alloc_init(MediaControlsTransitioningDelegate);
    transitioningDelegate = v4->_transitioningDelegate;
    v4->_transitioningDelegate = v18;

    v4->_style = a3;
    explicitString = v4->_explicitString;
    v4->_explicitString = &stru_1F1445548;

    if (a3 == 3)
    {
      v21 = [[MediaControlsVolumeSlider alloc] initWithFrame:0 style:v7, v6, v9, v8];
    }

    else
    {
      v21 = [[MediaControlsMasterVolumeSlider alloc] initWithFrame:v7, v6, v9, v8];
      [(MediaControlsMasterVolumeSlider *)v21 setDelegate:v4];
    }

    v22 = [objc_alloc(MEMORY[0x1E6970A30]) initWithMasterVolumeSlider:v21 individualVolumeSliders:0];
    groupSliderCoordinator = v4->_groupSliderCoordinator;
    v4->_groupSliderCoordinator = v22;

    style = v4->_style;
    if (style >= 5)
    {
      if (style != 5)
      {
        goto LABEL_8;
      }

      v44 = [[MRMediaControlsVideoPickerFooterView alloc] initWithFrame:v7, v6, v9, v8];
      videoPickerFooterView = v4->_videoPickerFooterView;
      v4->_videoPickerFooterView = v44;

      v27 = [[MRMediaControlsVideoPickerHeaderView alloc] initWithFrame:v7, v6, v9, v8];
      v28 = &OBJC_IVAR___MRPlatterViewController__videoPickerHeaderView;
    }

    else
    {
      v25 = [[MediaControlsHeaderView alloc] initWithFrame:v7, v6, v9, v8];
      nowPlayingHeaderView = v4->_nowPlayingHeaderView;
      v4->_nowPlayingHeaderView = v25;

      v27 = [[MediaControlsVolumeContainerView alloc] initWithFrame:v21 slider:v7, v6, v9, v8];
      v28 = &OBJC_IVAR___MRPlatterViewController__volumeContainerView;
    }

    v29 = *v28;
    v30 = *(&v4->super.super.super.isa + v29);
    *(&v4->super.super.super.isa + v29) = v27;

LABEL_8:
    v31 = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView routingButton];
    [v31 addTarget:v4 action:sel_headerViewButtonPressed_ forControlEvents:64];

    v32 = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView launchNowPlayingAppButton];
    [v32 addTarget:v4 action:sel_headerViewLaunchNowPlayingAppButtonPressed_ forControlEvents:64];

    [(MRMediaControlsVideoPickerFooterView *)v4->_videoPickerFooterView addTarget:v4 action:sel_footerViewButtonPressed_ forControlEvents:64];
    v33 = v4->_style == 3;
    v34 = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView routingButton];
    [v34 setUserInterfaceStyleSwitchingEnabled:v33];

    v35 = [(MRPlatterViewController *)v4 parentContainerView];
    v36 = [v35 transportStackView];
    [v36 setActionsDelegate:v4];

    v37 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v38 = [v37 localizedStringForKey:@"MEDIA_CONTROLS_PLATTER_PLACEHOLDER" value:&stru_1F1445548 table:@"MediaControls"];
    [(MRPlatterViewController *)v4 setPlaceholderString:v38];

    v39 = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v4);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __41__MRPlatterViewController_initWithStyle___block_invoke;
    v48[3] = &unk_1E7665A98;
    objc_copyWeak(&v49, &location);
    [v39 setTransitionHandler:v48];
    v40 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v39];
    displayMonitor = v4->_displayMonitor;
    v4->_displayMonitor = v40;

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), v4];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __41__MRPlatterViewController_initWithStyle___block_invoke_2;
    v46[3] = &unk_1E7664C30;
    objc_copyWeak(&v47, &location);
    v4->_stateHandle = MCLogAddStateHandlerWithName(v42, v46);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __41__MRPlatterViewController_initWithStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitor:v6 didUpdateDisplayLayout:v5 withContext:0];
}

id __41__MRPlatterViewController_initWithStyle___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _stateDumpObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MRPlatterViewController)coverSheetPlatterViewController
{
  v2 = objc_alloc_init(MRUCoverSheetViewController);

  return v2;
}

- (MRPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v4 = [(MRPlatterViewController *)self initWithStyle:0, a4];
  v5 = v4;
  if (v4)
  {
    [(MRPlatterViewController *)v4 setAllowsNowPlayingAppLaunch:1];
    CCUIExpandedModuleContinuousCornerRadius();
    [(MRPlatterViewController *)v5 _setContinuousCornerRadius:?];
  }

  return v5;
}

- (MRPlatterViewController)initWithRouteUID:(id)a3
{
  v4 = a3;
  v5 = [(MRPlatterViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MediaControlsStandaloneEndpointController alloc] initWithRouteUID:v4];
    [(MRPlatterViewController *)v5 setEndpointController:v6];

    v7 = [(MRPlatterViewController *)v5 endpointController];
    [v7 setAllowsAutomaticResponseLoading:1];
  }

  return v5;
}

- (MRPlatterViewController)initWithActiveRouteType:(int64_t)a3
{
  v4 = [(MRPlatterViewController *)self initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[MediaControlsActiveEndpointController alloc] initWithActiveEndpointType:a3 == 1];
    [(MRPlatterViewController *)v4 setEndpointController:v5];

    v6 = [(MRPlatterViewController *)v4 endpointController];
    [v6 setAllowsAutomaticResponseLoading:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(MRPlatterViewController *)self endpointController];
  v4 = [v3 proxyDelegate];
  [v4 endObserving];

  v5 = [(MRPlatterViewController *)self displayMonitor];
  [v5 invalidate];

  v6.receiver = self;
  v6.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRPlatterViewController *)self endpointController];
  v6 = [v5 route];
  v7 = [v3 stringWithFormat:@"<%@: %p route: %@", v4, self, v6];

  return v7;
}

- (NSString)routeName
{
  v3 = [(MRPlatterViewController *)self nowPlayingHeaderView];

  if (v3)
  {
    v4 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    v5 = [v4 routeLabel];
    v6 = [v5 text];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAllowsNowPlayingAppLaunch:(BOOL)a3
{
  if (self->_allowsNowPlayingAppLaunch != a3)
  {
    self->_allowsNowPlayingAppLaunch = a3;
    [(MRPlatterViewController *)self _updateStyle];
  }
}

- (BOOL)shouldDisplayPlatter
{
  v2 = [(MRPlatterViewController *)self endpointController];
  v3 = [v2 route];
  v4 = v3 != 0;

  return v4;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(MRPlatterViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v20 viewDidLoad];
  v3 = [(MRPlatterViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  [v3 setTintColor:v4];

  v5 = [(MRPlatterViewController *)self view];
  [v5 setAutoresizingMask:0];

  v6 = [(MRPlatterViewController *)self backgroundView];

  if (v6)
  {
    v7 = [(MRPlatterViewController *)self view];
    [v7 addSubview:self->_backgroundView];
  }

  v8 = [(MRPlatterViewController *)self view];
  [v8 addSubview:self->_contentView];

  [(UIView *)self->_contentView addSubview:self->_parentContainerView];
  contentView = self->_contentView;
  v10 = [(MRPlatterViewController *)self effectiveFooterView];
  [(UIView *)contentView addSubview:v10];

  v11 = self->_contentView;
  v12 = [(MRPlatterViewController *)self effectiveHeaderView];
  [(UIView *)v11 addSubview:v12];

  [(UIView *)self->_contentView addSubview:self->_routingCornerView];
  v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__routingCornerViewReceivedTap_];
  [v13 setCancelsTouchesInView:0];
  v14 = [(MRPlatterViewController *)self routingCornerView];
  [v14 addGestureRecognizer:v13];

  if ([(MRPlatterViewController *)self style]== 3)
  {
    v15 = [[MediaControlsInteractionRecognizer alloc] initWithTarget:self action:sel__platterViewControllerReceivedInteraction_];
    [(MediaControlsInteractionRecognizer *)v15 setCancelsTouchesInView:0];
    v16 = [(MRPlatterViewController *)self view];
    [v16 addGestureRecognizer:v15];

    [(MediaControlsInteractionRecognizer *)v15 setDelegate:self];
  }

  [(MRPlatterViewController *)self _updateStyle];
  routingViewController = self->_routingViewController;
  if (routingViewController)
  {
    v18 = [(MPAVRoutingViewController *)routingViewController view];
    v19 = [(MRPlatterViewController *)self parentContainerView];
    [v19 setRoutingView:v18];
  }
}

- (void)viewDidLayoutSubviews
{
  v117.receiver = self;
  v117.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v117 viewDidLayoutSubviews];
  v3 = [(MRPlatterViewController *)self traitCollection];
  [v3 displayScale];

  v4 = [(MRPlatterViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIView *)self->_backgroundView setFrame:v6, v8, v10, v12];
  [(UIView *)self->_contentView setFrame:v6, v8, v10, v12];
  v13 = [(SFShareAudioViewController *)self->_shareAudioViewController view];
  [v13 setFrame:{v6, v8, v10, v12}];

  UIRoundToScale();
  UIRoundToScale();
  v112 = v14;
  UIRectInset();
  UIRectInset();
  UIRectIntegralWithScale();
  v15 = [(MRPlatterViewController *)self view];
  [v15 bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(MRPlatterViewController *)self routingCornerView];
  [v24 setFrame:{v17, v19, v21, v23}];

  v25 = [MEMORY[0x1E69DC668] sharedApplication];
  v26 = [v25 userInterfaceLayoutDirection];

  if (v26 == 1)
  {
    CGAffineTransformMakeScale(&v116, -1.0, 1.0);
    v27 = [(MRPlatterViewController *)self routingCornerView];
    v28 = v27;
    v113 = *&v116.a;
    v114 = *&v116.c;
    v29 = *&v116.tx;
  }

  else
  {
    v27 = [(MRPlatterViewController *)self routingCornerView];
    v28 = v27;
    v30 = *(MEMORY[0x1E695EFD0] + 16);
    v113 = *MEMORY[0x1E695EFD0];
    v114 = v30;
    v29 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v115 = v29;
  [v27 setTransform:&v113];

  style = self->_style;
  if (style > 2)
  {
    if ((style - 3) >= 3)
    {
      goto LABEL_18;
    }

LABEL_10:
    UIRectInset();
    v52 = v51;
    v54 = v53;
    if (self->_style == 3)
    {
      UIRectInset();
      v52 = v55;
      v54 = v56;
    }

    v57 = [(MRPlatterViewController *)self effectiveHeaderView];
    [v57 sizeThatFits:{v52, v54}];

    UIRectIntegralWithScale();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = [(MRPlatterViewController *)self effectiveHeaderView];
    [v66 setFrame:{v59, v61, v63, v65}];

    v67 = self->_style;
    if (v67 != 3 && v67 != 5)
    {
      [(MRPlatterViewController *)self supportedModes];
    }

    UIRectInset();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = [(MRPlatterViewController *)self effectiveFooterView];
    [v76 sizeThatFits:{v73, v75}];

    v120.origin.x = v69;
    v120.origin.y = v71;
    v120.size.width = v73;
    v120.size.height = v75;
    CGRectGetMinX(v120);
    v121.origin.x = v69;
    v121.origin.y = v71;
    v121.size.width = v73;
    v121.size.height = v75;
    CGRectGetMaxY(v121);
    v122.origin.x = v69;
    v122.origin.y = v71;
    v122.size.width = v73;
    v122.size.height = v75;
    CGRectGetWidth(v122);
    UIRectInset();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = [(MRPlatterViewController *)self effectiveFooterView];
    [v85 setFrame:{v78, v80, v82, v84}];

    UIRectInset();
    UIRectIntegralWithScale();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v45 = [(MRPlatterViewController *)self parentContainerView];
    v46 = v45;
    v47 = v87;
    v48 = v89;
    v49 = v91;
    v50 = v93;
    goto LABEL_16;
  }

  switch(style)
  {
    case 0:
      goto LABEL_10;
    case 1:
      v95 = (v12 + v112 * -2.0) / 3.0;
      v96 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDCF8]];
      v97 = [(MRPlatterViewController *)self traitCollection];
      [v96 scaledValueForValue:v97 compatibleWithTraitCollection:20.0];
      v99 = v98 * -0.5;

      v100 = [(MRPlatterViewController *)self effectiveHeaderView];
      [v100 sizeThatFits:{v10, v12}];
      v102 = v101;

      v103 = [(MRPlatterViewController *)self effectiveHeaderView];
      [v103 setFrame:{0.0, v95 + 25.0 + v99, v10, v102}];

      v104 = [(MRPlatterViewController *)self parentContainerView];
      [v104 setFrame:{0.0, v112 + v95 * 2.0, v10, 50.0}];

      v123.origin.x = v6;
      v123.origin.y = v8;
      v123.size.width = v10;
      v123.size.height = v12;
      v124 = CGRectInset(v123, 13.0, 0.0);
      width = v124.size.width;
      height = v124.size.height;
      v107 = [(MRPlatterViewController *)self effectiveFooterView:v124.origin.x];
      [v107 sizeThatFits:{width, height}];
      v109 = v108;

      v46 = [(MRPlatterViewController *)self view];
      [v46 bounds];
      v110 = CGRectGetMaxY(v125) - v109;
      v111 = [(MRPlatterViewController *)self effectiveFooterView];
      [v111 setFrame:{0.0, v110, width, v109}];

      goto LABEL_17;
    case 2:
      v32 = [(MRPlatterViewController *)self effectiveHeaderView];
      [v32 sizeThatFits:{v10, v12}];

      UIRectCenteredIntegralRect();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = [(MRPlatterViewController *)self effectiveHeaderView];
      [v41 setFrame:{v34, v36, v38, v40}];

      v118.origin.x = v6;
      v118.origin.y = v8;
      v118.size.width = v10;
      v118.size.height = v12;
      MidY = CGRectGetMidY(v118);
      v43 = [(MRPlatterViewController *)self parentContainerView];
      [v43 setFrame:{v6, MidY, v10, 50.0}];

      v119.origin.y = v8 + 0.0;
      v119.origin.x = v6 + 24.0;
      v119.size.width = v10 - (24.0 + 24.0);
      v119.size.height = v12;
      MaxY = CGRectGetMaxY(v119);
      v45 = [(MRPlatterViewController *)self effectiveFooterView];
      v46 = v45;
      v47 = v6 + 24.0;
      v48 = MaxY;
      v49 = v10 - (24.0 + 24.0);
      v50 = 50.0;
LABEL_16:
      [v45 setFrame:{v47, v48, v49, v50}];
LABEL_17:

      break;
  }

LABEL_18:
  v94 = [(MRPlatterViewController *)self view];
  [v94 sendSubviewToBack:self->_backgroundView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v5 viewWillAppear:?];
  [(MRPlatterViewController *)self setOnScreen:1];
  [(MPAVRoutingViewController *)self->_routingViewController beginAppearanceTransition:1 animated:v3];
  [(MRPlatterViewController *)self _updateHeaderUI];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v4 viewDidAppear:a3];
  [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v5 didMoveToParentViewController:?];
  [(MRPlatterViewController *)self _updateHeaderUI];
  if (!a3)
  {
    [(MRPlatterViewController *)self setOnScreen:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v6 viewWillDisappear:?];
  [(MPAVRoutingViewController *)self->_routingViewController beginAppearanceTransition:0 animated:v3];
  v5 = [(MRPlatterViewController *)self languageOptionsViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v4 viewDidDisappear:a3];
  [(MRPlatterViewController *)self setOnScreen:0];
  [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v13 = v5;
    v7 = backgroundView;
    objc_storeStrong(&self->_backgroundView, a3);
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->__continuousCornerRadius];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(UIView *)self->_backgroundView visualStylingProviderForCategory:1];
      [(MRPlatterViewController *)self setVisualStylingProvider:v8 forCategory:1];
    }

    if ([(MRPlatterViewController *)self isViewLoaded])
    {
      if (v13)
      {
        v9 = [(MRPlatterViewController *)self view];
        [v9 insertSubview:v13 atIndex:0];

        v10 = [(MRPlatterViewController *)self view];
        [v10 setNeedsLayout];
      }

      else
      {
        v11 = [(UIView *)v7 superview];
        v12 = [(MRPlatterViewController *)self view];

        if (v11 == v12)
        {
          [(UIView *)v7 removeFromSuperview];
        }
      }
    }

    v5 = v13;
  }
}

- (void)_setContinuousCornerRadius:(double)a3
{
  if (self->__continuousCornerRadius != a3)
  {
    self->__continuousCornerRadius = a3;
    v4 = [(MRPlatterViewController *)self backgroundView];
    [v4 _setContinuousCornerRadius:self->__continuousCornerRadius];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(MRPlatterViewController *)self _updateSecondaryStringFormat];
    [(MRPlatterViewController *)self _updateStyle];
    if (self->_style)
    {
      if (([(MRPlatterViewController *)self supportedModes]& 2) != 0 && ([(MRPlatterViewController *)self supportedModes]& 1) != 0)
      {

        [(MRPlatterViewController *)self _setRoutingPickerVisible:0 animated:0];
      }
    }
  }
}

- (void)setEndpointController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MediaControlsEndpointController *)self->_endpointController delegate];

  if (v6 == self)
  {
    [(MediaControlsEndpointController *)self->_endpointController setDelegate:0];
  }

  [(MediaControlsEndpointController *)v5 setDelegate:self];
  v7 = [(MRPlatterViewController *)self label];
  [(MediaControlsEndpointController *)v5 setLabel:v7];

  v8 = MCLogCategoryRouting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ changing to endpoint controller: %{public}@", &v15, 0x16u);
  }

  if (self->_endpointController != v5)
  {
    objc_storeStrong(&self->_endpointController, a3);
    v9 = [(MRPlatterViewController *)self volumeContainerView];
    v10 = [v9 volumeSlider];

    if (v10)
    {
      v11 = [(MediaControlsEndpointController *)v5 route];

      if (v11)
      {
        v12 = [(MediaControlsEndpointController *)v5 route];
        v13 = [(MRPlatterViewController *)self volumeContainerView];
        v14 = [v13 volumeSlider];
        [v14 setGroupRoute:v12];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:0 outputDeviceRoute:0];
        v13 = [(MRPlatterViewController *)self volumeContainerView];
        v14 = [v13 volumeSlider];
        [v14 setVolumeDataSource:v12];
      }
    }

    [(MRPlatterViewController *)self _updateHeaderUI];
  }
}

- (void)setLabel:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_label isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    label = self->_label;
    self->_label = v4;

    [(MediaControlsEndpointController *)self->_endpointController setLabel:v6];
  }
}

- (void)setPlaceholderString:(id)a3
{
  v5 = a3;
  if (self->_placeholderString != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_placeholderString, a3);
    v6 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    [v6 setPlaceholderString:v7];

    v5 = v7;
  }
}

- (UIView)effectiveFooterView
{
  style = self->_style;
  if (style >= 5)
  {
    if (style == 5)
    {
      v3 = [(MRPlatterViewController *)self videoPickerFooterView];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(MRPlatterViewController *)self volumeContainerView];
  }

  return v3;
}

- (UIView)effectiveHeaderView
{
  style = self->_style;
  if (style >= 5)
  {
    if (style == 5)
    {
      v3 = [(MRPlatterViewController *)self videoPickerHeaderView];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  }

  return v3;
}

- (id)_route
{
  v2 = [(MRPlatterViewController *)self endpointController];
  v3 = [v2 route];

  return v3;
}

- (void)_updateStyle
{
  style = self->_style;
  v4 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v4 setStyle:style];

  v5 = self->_style;
  v6 = [(MRPlatterViewController *)self parentContainerView];
  [v6 setStyle:v5];

  v7 = self->_style;
  v8 = [(MRPlatterViewController *)self volumeContainerView];
  [v8 setStyle:v7];

  if ((self->_style - 1) >= 2)
  {
    v9 = [(MRPlatterViewController *)self allowsNowPlayingAppLaunch]^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v11 = [v10 launchNowPlayingAppButton];
  [v11 setHidden:v9];

  v12 = self->_style;
  if (v12 > 2)
  {
    if ((v12 - 3) >= 2)
    {
      if (v12 != 5)
      {
        goto LABEL_21;
      }

      v25 = [(MRPlatterViewController *)self routingCornerView];
      [v25 setAlpha:0.0];

      v26 = [(MRPlatterViewController *)self parentContainerView];
      v14 = 1.0;
      [v26 setAlpha:1.0];

      v27 = [(MRPlatterViewController *)self effectiveFooterView];
      [v27 setAlpha:1.0];

      v22 = [(MRPlatterViewController *)self parentContainerView];
      v23 = [v22 topDividerView];
      v24 = v23;
      v28 = 1.0;
      goto LABEL_19;
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      v29 = [(MRPlatterViewController *)self routingCornerView];
      [v29 setAlpha:1.0];

      v30 = [(MRPlatterViewController *)self parentContainerView];
      [v30 setAlpha:1.0];

      v16 = [(MRPlatterViewController *)self effectiveFooterView];
      v17 = v16;
      v14 = 0.0;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_21;
      }

      v13 = [(MRPlatterViewController *)self routingCornerView];
      v14 = 0.0;
      [v13 setAlpha:0.0];

      v15 = [(MRPlatterViewController *)self parentContainerView];
      [v15 setAlpha:0.0];

      v16 = [(MRPlatterViewController *)self effectiveFooterView];
      v17 = v16;
    }

    [v16 setAlpha:0.0];

    v22 = [(MRPlatterViewController *)self parentContainerView];
    v23 = [v22 topDividerView];
    v24 = v23;
    v28 = 0.0;
    goto LABEL_19;
  }

  v18 = [(MRPlatterViewController *)self routingCornerView];
  v14 = 0.0;
  [v18 setAlpha:0.0];

  v19 = [(MRPlatterViewController *)self parentContainerView];
  [v19 setAlpha:1.0];

  v20 = [(MRPlatterViewController *)self effectiveFooterView];
  [v20 setAlpha:1.0];

  v21 = [(MRPlatterViewController *)self _canToggleRoutingPicker];
  v22 = [(MRPlatterViewController *)self parentContainerView];
  v23 = [v22 topDividerView];
  v24 = v23;
  if (v21)
  {
    [v23 setAlpha:1.0];

    if ([(MRPlatterViewController *)self selectedMode]== 1)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    goto LABEL_20;
  }

  v28 = 0.0;
LABEL_19:
  [v23 setAlpha:v28];

LABEL_20:
  v31 = [(MRPlatterViewController *)self parentContainerView];
  v32 = [v31 bottomDividerView];
  [v32 setAlpha:v14];

LABEL_21:
  [(MRPlatterViewController *)self _updateOnScreenForStyle:self->_style];
  if ((self->_style - 1) <= 1)
  {
    [(MRPlatterViewController *)self _dismissShareAudioViewController];
  }

  v33 = [(MRPlatterViewController *)self view];
  [v33 setNeedsLayout];
}

- (id)_tvMediaRemoteIdentifier
{
  v2 = [(MRPlatterViewController *)self _route];
  if ((([v2 isAppleTVRoute] & 1) != 0 || objc_msgSend(v2, "containsDeviceWithSubtype:", 18)) && (objc_msgSend(v2, "endpoint"), MRAVEndpointGetExternalDevice()))
  {
    v3 = MRExternalDeviceCopyUniqueIdentifier();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_tvAirplayIdentifier
{
  v2 = [(MRPlatterViewController *)self _route];
  v3 = [v2 endpointWrapper];
  [v3 unwrappedValue];
  v4 = MRAVEndpointCopyOutputDevices();

  [v4 firstObject];
  if (([v2 isAppleTVRoute] & 1) != 0 || objc_msgSend(v2, "isTVRoute") && MRAVOutputDeviceIsAddedToHomeKit())
  {
    v5 = [v2 groupLeaderAirplayIdentifier];
LABEL_3:
    v6 = v5;
    goto LABEL_11;
  }

  if ([v2 isDeviceRoute] && objc_msgSend(v2, "isAirPlayingToDevice"))
  {
    v7 = [v4 count];
    if (MRAVOutputDeviceGetSubtype() == 13)
    {
      v8 = MRAVOutputDeviceSupportsRapport();
    }

    else
    {
      v8 = 0;
    }

    if (MRAVOutputDeviceGetSubtype() == 11)
    {
      IsAddedToHomeKit = MRAVOutputDeviceIsAddedToHomeKit();
    }

    else
    {
      IsAddedToHomeKit = 0;
    }

    v6 = 0;
    if (v7 != 1 || ((v8 | IsAddedToHomeKit) & 1) == 0)
    {
      goto LABEL_11;
    }

    v5 = MRAVOutputDeviceCopyUniqueIdentifier();
    goto LABEL_3;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)_prewarmTVRemoteIfNeeded
{
  if ([(MRPlatterViewController *)self shouldShowTVRemoteButton]&& [(MRPlatterViewController *)self _shouldUseViewServiceToPresentTVRemote])
  {
    v3 = [MEMORY[0x1E69D6100] sharedInstance];
    [v3 prewarm];
  }
}

- (BOOL)_shouldUseViewServiceToPresentTVRemote
{
  v3 = [(MRPlatterViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 shouldPresentUsingViewServicePlatterViewController:self] & 1) == 0)
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = CCUIIsPortrait() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  if (self->_visualStylingProvider != v6)
  {
    v17 = v6;
    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(MediaControlsHeaderView *)self->_nowPlayingHeaderView setVisualStylingProvider:self->_visualStylingProvider];
    visualStylingProvider = self->_visualStylingProvider;
    v8 = [(MediaControlsParentContainerView *)self->_parentContainerView timeControl];
    [v8 setVisualStylingProvider:visualStylingProvider];

    v9 = self->_visualStylingProvider;
    v10 = [(MediaControlsParentContainerView *)self->_parentContainerView transportStackView];
    [v10 setVisualStylingProvider:v9];

    v11 = self->_visualStylingProvider;
    v12 = [(MediaControlsParentContainerView *)self->_parentContainerView topDividerView];
    [v12 setVisualStylingProvider:v11];

    v13 = self->_visualStylingProvider;
    v14 = [(MediaControlsParentContainerView *)self->_parentContainerView bottomDividerView];
    [v14 setVisualStylingProvider:v13];

    [(MediaControlsVolumeContainerView *)self->_volumeContainerView setVisualStylingProvider:self->_visualStylingProvider];
    [(MRMediaControlsVideoPickerHeaderView *)self->_videoPickerHeaderView setVisualStylingProvider:self->_visualStylingProvider];
    [(MRMediaControlsVideoPickerFooterView *)self->_videoPickerFooterView setVisualStylingProvider:self->_visualStylingProvider];
    v15 = [(MRPlatterViewController *)self routingViewController];
    v16 = [v15 _tableView];
    [v16 reloadData];

    v6 = v17;
  }
}

- (SFShareAudioViewController)shareAudioViewController
{
  shareAudioViewController = self->_shareAudioViewController;
  if (!shareAudioViewController)
  {
    v4 = [MEMORY[0x1E69CDFD0] instantiateViewController];
    [v4 setFlags:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MRPlatterViewController_shareAudioViewController__block_invoke;
    v8[3] = &unk_1E7663DA8;
    v8[4] = self;
    [v4 setCompletion:v8];
    v5 = self->_shareAudioViewController;
    self->_shareAudioViewController = v4;
    v6 = v4;

    shareAudioViewController = self->_shareAudioViewController;
  }

  return shareAudioViewController;
}

void __51__MRPlatterViewController_shareAudioViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v5 mediaRouteIdentifier];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "ShareAudio dismissed: RouteID %@, Error %@", &v9, 0x16u);
  }

  [*(a1 + 32) _dismissShareAudioViewController];
}

- (void)_showShareAudioViewController
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRPlatterViewController__showShareAudioViewController__block_invoke;
  v5[3] = &unk_1E7665AE8;
  v5[4] = self;
  v2 = v5;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getSBSRequestPasscodeUnlockAlertUISymbolLoc_ptr;
  v10 = getSBSRequestPasscodeUnlockAlertUISymbolLoc_ptr;
  if (!getSBSRequestPasscodeUnlockAlertUISymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSBSRequestPasscodeUnlockAlertUISymbolLoc_block_invoke;
    v6[3] = &unk_1E7665BF0;
    v6[4] = &v7;
    __getSBSRequestPasscodeUnlockAlertUISymbolLoc_block_invoke(v6);
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    v4 = [MRPlatterViewController _showShareAudioViewController];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v4);
  }

  v3(v2);
}

void __56__MRPlatterViewController__showShareAudioViewController__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) shareAudioViewController];
    v4 = [*(a1 + 32) view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v3 view];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [v3 view];
    [v14 setAlpha:0.0];

    v15 = *(*(a1 + 32) + 1064);
    v16 = [v3 view];
    [v16 _setContinuousCornerRadius:v15];

    v17 = [v3 view];
    [v17 setClipsToBounds:1];

    [*(a1 + 32) addChildViewController:v3];
    v18 = [*(a1 + 32) view];
    v19 = [v3 view];
    [v18 addSubview:v19];

    [v3 beginAppearanceTransition:1 animated:1];
    v20 = MEMORY[0x1E69DD250];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__MRPlatterViewController__showShareAudioViewController__block_invoke_2;
    v27[3] = &unk_1E76639D0;
    v21 = v3;
    v22 = *(a1 + 32);
    v28 = v21;
    v29 = v22;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56__MRPlatterViewController__showShareAudioViewController__block_invoke_3;
    v24[3] = &unk_1E7665AC0;
    v25 = v21;
    v26 = v22;
    v23 = v21;
    [v20 animateWithDuration:v27 animations:v24 completion:0.25];
  }
}

uint64_t __56__MRPlatterViewController__showShareAudioViewController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = *(*(a1 + 40) + 1016);

  return [v3 setAlpha:0.0];
}

uint64_t __56__MRPlatterViewController__showShareAudioViewController__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) endAppearanceTransition];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 didMoveToParentViewController:v3];
}

- (void)_dismissShareAudioViewController
{
  shareAudioViewController = self->_shareAudioViewController;
  if (shareAudioViewController)
  {
    v4 = shareAudioViewController;
    v5 = self->_shareAudioViewController;
    self->_shareAudioViewController = 0;

    [(SFShareAudioViewController *)v4 willMoveToParentViewController:0];
    [(SFShareAudioViewController *)v4 beginAppearanceTransition:0 animated:1];
    v6 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__MRPlatterViewController__dismissShareAudioViewController__block_invoke;
    v10[3] = &unk_1E76639D0;
    v11 = v4;
    v12 = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MRPlatterViewController__dismissShareAudioViewController__block_invoke_2;
    v8[3] = &unk_1E7664FE8;
    v9 = v11;
    v7 = v11;
    [v6 animateWithDuration:v10 animations:v8 completion:0.25];
  }
}

uint64_t __59__MRPlatterViewController__dismissShareAudioViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(*(a1 + 40) + 1016);

  return [v3 setAlpha:1.0];
}

uint64_t __59__MRPlatterViewController__dismissShareAudioViewController__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endAppearanceTransition];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 removeFromParentViewController];
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning == a3)
  {
    return;
  }

  v3 = a3;
  self->_transitioning = a3;
  v5 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v5 setTransitioning:v3];

  style = self->_style;
  if (style == 2)
  {
    v9 = !self->_transitioning;
    v10 = [(MRPlatterViewController *)self routingCornerView];
    [v10 setHidden:v9];

    v11 = !self->_transitioning;
    v12 = [(MRPlatterViewController *)self parentContainerView];
    [v12 setHidden:v11];
  }

  else
  {
    if (style != 1)
    {
      v14 = !self->_transitioning;
      v15 = [(MRPlatterViewController *)self routingCornerView];
      [v15 setHidden:v14];

      v16 = [(MRPlatterViewController *)self parentContainerView];
      [v16 setHidden:0];

      v13 = 0;
      goto LABEL_8;
    }

    v7 = [(MRPlatterViewController *)self routingCornerView];
    [v7 setHidden:0];

    v8 = [(MRPlatterViewController *)self parentContainerView];
    [v8 setHidden:0];
  }

  v13 = !self->_transitioning;
LABEL_8:
  v17 = [(MRPlatterViewController *)self effectiveFooterView];
  [v17 setHidden:v13];
}

- (void)setDisplayElements:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_displayElements isEqualToArray:?])
  {
    v4 = [v8 copy];
    displayElements = self->_displayElements;
    self->_displayElements = v4;

    v6 = [(MRPlatterViewController *)self isDeviceUnlocked];
    v7 = [(MRPlatterViewController *)self endpointController];
    [v7 setDeviceUnlocked:v6];
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    v6 = [(MRPlatterViewController *)self endpointController];
    [v6 setOnScreen:v4];

    v7 = [(MRPlatterViewController *)self endpointController];
    v8 = [v7 proxyDelegate];

    if (v4)
    {
      [v8 beginObserving];
    }

    else
    {
      [v8 endObserving];
    }

    [(MRPlatterViewController *)self _updateOnScreenForStyle:self->_style];
  }
}

- (void)_updateOnScreenForStyle:(int64_t)a3
{
  v4 = (a3 < 5) & (0x19u >> a3);
  v5 = [(MRPlatterViewController *)self isOnScreen];
  v6 = [(MRPlatterViewController *)self volumeContainerView];
  [v6 setOnScreen:v4 & v5];

  v7 = [(MRPlatterViewController *)self isOnScreen];
  v8 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v8 setMarqueeEnabled:v7];
}

- (void)setSupportedModes:(unint64_t)a3
{
  if (self->_supportedModes != a3)
  {
    self->_supportedModes = a3;
    v5 = [(MRPlatterViewController *)self supportedModes];
    v6 = v5 & (1 << [(MRPlatterViewController *)self selectedMode]);
    if (v6 != 1 << [(MRPlatterViewController *)self selectedMode])
    {
      v7 = 0;
      v8 = 1;
      while (1)
      {
        v9 = v8;
        if (([(MRPlatterViewController *)self supportedModes]& (1 << v7)) != 0)
        {
          break;
        }

        v8 = 0;
        v7 = 1;
        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      [(MRPlatterViewController *)self setSelectedMode:v7];
    }

LABEL_8:

    [(MRPlatterViewController *)self _updateConfiguration];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
  }
}

- (void)setSelectedMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (((1 << a3) & ~[(MRPlatterViewController *)self supportedModes]) == 0)
  {
    v7 = [(MRPlatterViewController *)self parentContainerView];
    [v7 setSelectedMode:a3 animated:v4];

    if (self->_selectedMode != a3)
    {
      self->_selectedMode = a3;
      [(MRPlatterViewController *)self _updateConfiguration];
      v8 = [(MRPlatterViewController *)self view];
      [v8 setNeedsLayout];
    }
  }
}

- (void)_updateConfiguration
{
  if (([(MRPlatterViewController *)self supportedModes]& 2) != 0 && ([(MRPlatterViewController *)self supportedModes]& 1) != 0)
  {
    selectedMode = self->_selectedMode;
    if (selectedMode == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (selectedMode == 0);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v5 setButtonType:v3];
}

- (void)endpointController:(id)a3 didLoadNewResponse:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MCLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 tracklist];
    v10 = [v9 playingItem];
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRPlatterViewController] didLoadNewResponse %@. PlayingItem: %@.", &v19, 0x16u);
  }

  v11 = [v7 representedBundleID];

  v12 = [(MPAVRoutingViewController *)self->_routingViewController _routingController];
  [v12 setRepresentedBundleID:v11];

  v13 = [(MRPlatterViewController *)self endpointController];
  v14 = [v13 response];
  v15 = [v14 tracklist];
  v16 = [v15 playingItem];
  v17 = [v16 languageOptionGroups];

  if ([v17 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_languageOptionsViewController);
    [WeakRetained setLanguageOptionGroups:v17];
  }

  [(MRPlatterViewController *)self _updateHeaderUI];
}

- (void)endpointControllerDidUpdateRoutingAvailability:(id)a3
{
  [(MRPlatterViewController *)self _updateRoutingCornerView];
  [(MRPlatterViewController *)self _updateRoutingIndicators];

  [(MRPlatterViewController *)self _updateRouteNameLabel];
}

- (void)endpointControllerRouteDidUpdate:(id)a3
{
  v12 = a3;
  v4 = [(MRPlatterViewController *)self volumeContainerView];
  v5 = [v4 volumeSlider];

  if (v5)
  {
    v6 = [v12 route];
    v7 = [(MRPlatterViewController *)self volumeContainerView];
    v8 = [v7 volumeSlider];
    [v8 setGroupRoute:v6];
  }

  [(MRPlatterViewController *)self _updateRouteNameLabel];
  v9 = [(MRPlatterViewController *)self parentContainerView];
  v10 = [v9 transportStackView];
  [v10 updateOnRouteChange];

  [(MRPlatterViewController *)self _prewarmTVRemoteIfNeeded];
  v11 = [(MRPlatterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 platterViewController:self shouldDisplayPlatterDidChange:{-[MRPlatterViewController shouldDisplayPlatter](self, "shouldDisplayPlatter")}];
  }
}

- (void)_updateHeaderUI
{
  if (![(MRPlatterViewController *)self isOnScreen])
  {
    return;
  }

  v3 = [(MRPlatterViewController *)self endpointController];
  v51 = [v3 response];

  v4 = [(MRPlatterViewController *)self parentContainerView];
  v5 = [v4 containerView];
  [v5 setResponse:v51];

  if (!v51)
  {
    goto LABEL_13;
  }

  v6 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute];
  v7 = [v51 tracklist];
  v8 = [v7 playingItemIndexPath];

  if (!v6 || v8 != 0)
  {
    if (v8)
    {
      v10 = [v51 tracklist];
      v11 = [v10 items];
      v12 = [v11 firstSection];
      v13 = [v12 metadataObject];

      v14 = [v51 tracklist];
      v15 = [v14 items];
      v16 = [v51 tracklist];
      v17 = [v16 playingItemIndexPath];
      v18 = [v15 itemAtIndexPath:v17];

      v19 = [v18 explicitBadge];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = @"🅴";
      }

      v22 = [@" " stringByAppendingString:v21];
      [(MRPlatterViewController *)self setExplicitString:v22];

      v23 = [v18 metadataObject];
      [(MRPlatterViewController *)self _updateControlCenterMetadata:v23 sectionMetadata:v13];

      goto LABEL_39;
    }

LABEL_13:
    v24 = [(MRPlatterViewController *)self endpointController];
    v25 = [v24 configuration];

    v26 = [(MRPlatterViewController *)self endpointController];
    v27 = [v26 state];

    if ((v27 - 1) >= 2)
    {
      if (v27 == -1)
      {
        if (!v25 || self->_style == 3)
        {
          v13 = &stru_1F1445548;
LABEL_29:
          v41 = [(MRPlatterViewController *)self endpointController];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v43 = [(MRPlatterViewController *)self endpointController];
            v44 = [v43 isEndpointDiscovered] ^ 1;
          }

          else
          {
            v44 = 0;
          }

          v45 = [(MRPlatterViewController *)self nowPlayingHeaderView];
          [v45 setPrimaryString:v13];

          if (v44)
          {
            v45 = [(MRPlatterViewController *)self placeholderString];
            v46 = v45 != 0;
          }

          else
          {
            v46 = 0;
          }

          v47 = [(MRPlatterViewController *)self nowPlayingHeaderView];
          [v47 setShowPlaceholderString:v46];

          if (v44)
          {
          }

          v38 = [(MRPlatterViewController *)self nowPlayingHeaderView];
          v39 = v38;
          goto LABEL_38;
        }

        v28 = @"ROUTE_NOT_CONNECTED_TITLE";
      }

      else
      {
        v28 = @"MEDIA_CONTROLS_EMPTY_STATE_TITLE";
      }
    }

    else
    {
      v28 = @"ROUTE_CONNECTING_TITLE";
    }

    v40 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v13 = [v40 localizedStringForKey:v28 value:&stru_1F1445548 table:@"MediaControls"];

    goto LABEL_29;
  }

  v29 = [(MRPlatterViewController *)self endpointController];
  v30 = [v29 representedBundleID];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  }

  v13 = v32;

  v33 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v13];
  v34 = [v33 localizedName];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = &stru_1F1445548;
  }

  v37 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v37 setPrimaryString:v36];

  v38 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v39 = v38;
LABEL_38:
  [v38 setSecondaryString:&stru_1F1445548];

  v48 = [(MRPlatterViewController *)self secondaryStringComponents];
  [v48 removeAllObjects];

  [(MRPlatterViewController *)self _updateSecondaryStringFormat];
  [(MRPlatterViewController *)self setArtworkCatalog:0];
  v49 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v50 = [v49 artworkView];
  [v50 clearArtworkCatalogs];

  [(MRPlatterViewController *)self _updatePlaceholderArtwork];
LABEL_39:

  [(MRPlatterViewController *)self _updateRouteNameLabel];
  [(MRPlatterViewController *)self _updateRoutingCornerView];
  [(MRPlatterViewController *)self _updateRoutingIndicators];
}

- (void)_updateControlCenterMetadata:(id)a3 sectionMetadata:(id)a4
{
  v36 = a4;
  v8 = [a3 song];
  if ([v36 type] == 13)
  {
    v9 = [v36 radioStation];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 isExplicitSong];
  v11 = [v8 title];
  if (v10)
  {
    v10 = [(MRPlatterViewController *)self explicitString];
    v4 = [v11 stringByAppendingString:v10];

    v11 = v4;
  }

  v12 = v11;
  if (!v11)
  {
    v13 = MEMORY[0x1E69635E0];
    v10 = [(MRPlatterViewController *)self endpointController];
    v4 = [v10 bundleID];
    v5 = [v13 applicationProxyForIdentifier:v4];
    v12 = [v5 localizedName];
  }

  v14 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v14 setPrimaryString:v12];

  if (!v11)
  {
  }

  v15 = [(MRPlatterViewController *)self secondaryStringComponents];
  [v15 removeAllObjects];

  if ([v8 shouldShowComposer])
  {
    v16 = [v8 composer];
    v17 = [v16 name];

    if ([v17 length])
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v20 = [v19 localizedStringForKey:@"COMPOSED_BY_TITLE_%@" value:&stru_1F1445548 table:@"MediaControls"];
      v21 = [v18 initWithFormat:v20, v17];

      v22 = [(MRPlatterViewController *)self secondaryStringComponents];
      [v22 addObject:v21];
    }
  }

  v23 = [v8 artist];
  v24 = [v23 name];

  if ([v24 length])
  {
    v25 = [(MRPlatterViewController *)self secondaryStringComponents];
    [v25 addObject:v24];
  }

  v26 = [v8 album];
  v27 = [v26 title];

  if ([v27 length])
  {
    v28 = [(MRPlatterViewController *)self secondaryStringComponents];
    [v28 addObject:v27];
  }

  v29 = [v9 attributionLabel];
  if ([v29 length])
  {
    v30 = [(MRPlatterViewController *)self secondaryStringComponents];
    [v30 addObject:v29];
  }

  v31 = [(MRPlatterViewController *)self secondaryStringComponents];
  v32 = [v31 componentsJoinedByString:@" — "];
  v33 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v33 setSecondaryString:v32];

  v34 = [v8 artworkCatalog];
  [(MRPlatterViewController *)self setArtworkCatalog:v34];

  [(MRPlatterViewController *)self _updateSecondaryStringFormat];
  v35 = [(MRPlatterViewController *)self view];
  [v35 setNeedsLayout];
}

- (void)_updateRouteNameLabel
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(MediaControlsEndpointController *)self->_endpointController route];
  v4 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v5 = [v4 routeLabel];
  [v5 setRoute:v3];

  v6 = [(MRPlatterViewController *)self endpointController];
  v7 = [v6 response];
  v8 = [v7 playerPath];
  v9 = [v8 bundleID];
  if ([v9 isEqualToString:@"com.apple.duetexpertd"])
  {
    v10 = 1;
  }

  else
  {
    v11 = [(MRPlatterViewController *)self endpointController];
    v12 = [v11 response];
    v13 = [v12 playerPath];
    v14 = [v13 bundleID];
    v10 = [v14 isEqualToString:@"duetexpertd"];
  }

  v15 = [(MRPlatterViewController *)self endpointController];
  v16 = [v15 response];
  v17 = [v16 playerPath];
  v18 = [v17 playerID];
  v19 = [v18 isEqualToString:@"MagicalMomentsPlayer"];

  if (v19)
  {
    v20 = MCLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(MRPlatterViewController *)self endpointController];
      v22 = [v21 response];
      v23 = [v22 playerPath];
      v24 = [v23 bundleID];
      v28 = 138412290;
      v29 = v24;
      _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "MRPlatterViewController displaying MagicalMomentsPlayer suggestion for bundleID=%@", &v28, 0xCu);
    }
  }

  v25 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v26 = [v25 routeLabel];
  [v26 setDisplayAsSiriSuggestion:v10 & v19];

  v27 = [(MRPlatterViewController *)self view];
  [v27 setNeedsLayout];
}

- (void)setArtworkCatalog:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  artworkCatalog = self->_artworkCatalog;
  if (!v5)
  {
    self->_artworkCatalog = 0;

    v10 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    v11 = [v10 artworkView];
    [v11 setImage:0];

    [(MRPlatterViewController *)self _updatePlaceholderArtwork];
    v12 = [(MRPlatterViewController *)self effectiveHeaderView];
    [v12 setNeedsLayout];

    goto LABEL_11;
  }

  if (![(MPArtworkCatalog *)artworkCatalog isArtworkVisuallyIdenticalToCatalog:v5])
  {
    self->_failedArtworkRetryCount = 0;
LABEL_10:
    self->_failedToLoadArtwork = 0;
    objc_storeStrong(&self->_artworkCatalog, a3);
    [(MPArtworkCatalog *)self->_artworkCatalog setFittingSize:60.0, 60.0];
    v13 = [(MRPlatterViewController *)self traitCollection];
    [v13 displayScale];
    [(MPArtworkCatalog *)self->_artworkCatalog setDestinationScale:?];

    objc_initWeak(buf, self);
    v14 = MEMORY[0x1E69B14D8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__MRPlatterViewController_setArtworkCatalog___block_invoke;
    v24[3] = &unk_1E7663AE8;
    objc_copyWeak(&v25, buf);
    v15 = [v14 timerWithInterval:0 repeats:v24 block:1.0];
    artworkTimer = self->_artworkTimer;
    self->_artworkTimer = v15;

    [(MPArtworkCatalog *)self->_artworkCatalog setCacheIdentifier:@"MediaControlsHeaderView" forRequestingContext:self];
    v17 = self->_artworkCatalog;
    v18 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    v19 = [v18 artworkView];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__MRPlatterViewController_setArtworkCatalog___block_invoke_133;
    v22[3] = &unk_1E7665B10;
    objc_copyWeak(&v23, buf);
    [(MPArtworkCatalog *)v17 setDestination:v19 configurationBlock:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
    goto LABEL_11;
  }

  if (!self->_failedToLoadArtwork)
  {
    goto LABEL_11;
  }

  failedArtworkRetryCount = self->_failedArtworkRetryCount;
  if (failedArtworkRetryCount < 3)
  {
    self->_failedArtworkRetryCount = failedArtworkRetryCount + 1;
    v20 = MCLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_failedArtworkRetryCount;
      *buf = 134217984;
      v27 = v21;
      _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_ERROR, "MRPlatterViewController _failedToLoadArtwork=YES retryAttempt=%ld, retrying", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v8 = MCLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = self->_failedArtworkRetryCount;
    *buf = 134217984;
    v27 = v9;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_ERROR, "MRPlatterViewController _failedToLoadArtwork=YES retryAttemptsExhausted=%ld, leaving failed", buf, 0xCu);
  }

LABEL_11:
}

void __45__MRPlatterViewController_setArtworkCatalog___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MCLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [WeakRetained artworkCatalog];
    v4 = 134218240;
    v5 = WeakRetained;
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEBUG, "MRPlatterViewController: %p timeout while waiting for artworkCatalog=%p", &v4, 0x16u);
  }

  [WeakRetained _showPlaceholderArtwork];
}

void __45__MRPlatterViewController_setArtworkCatalog___block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setArtworkTimer:0];
  if (v6 && ([WeakRetained artworkCatalog], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [WeakRetained nowPlayingHeaderView];
    v10 = [v9 placeholderArtworkView];
    [v10 setImage:0];

    [v5 setImage:v6];
    v11 = [WeakRetained effectiveHeaderView];
    [v11 setNeedsLayout];
  }

  else
  {
    v12 = MCLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [WeakRetained artworkCatalog];
      v14 = 134218240;
      v15 = v6;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_ERROR, "MRPlatterViewController _failedToLoadArtwork image=%p artworkCatalog=%p", &v14, 0x16u);
    }

    [WeakRetained setFailedToLoadArtwork:1];
    [WeakRetained _showPlaceholderArtwork];
  }

  [WeakRetained _updateStyle];
}

- (void)_showPlaceholderArtwork
{
  v3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v4 = [v3 artworkView];
  [v4 setImage:0];

  [(MRPlatterViewController *)self _updatePlaceholderArtwork];
}

- (void)_updatePlaceholderArtwork
{
  v3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v4 = [v3 artworkView];
  v5 = [v4 image];

  if (v5)
  {
    return;
  }

  v6 = [(MRPlatterViewController *)self endpointController];
  v7 = [v6 representedBundleID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  }

  v35 = v9;

  v10 = [(MRPlatterViewController *)self endpointController];
  v11 = [v10 playerPath];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [(MRPlatterViewController *)self _route];
  if (!v13)
  {

LABEL_12:
LABEL_13:
    v23 = [(MRPlatterViewController *)self _route];

    v24 = [(MRPlatterViewController *)self placeholderDeviceIdentifier];

    v25 = MEMORY[0x1E6970490];
    if (!v24 || v23)
    {
      v26 = [(MRPlatterViewController *)self _route];
      v27 = [v25 _iconImageForRoute:v26];
    }

    else
    {
      v26 = [(MRPlatterViewController *)self placeholderDeviceIdentifier];
      v27 = [v25 _iconImageForIdentifier:v26];
    }

    v28 = v27;

    goto LABEL_18;
  }

  v14 = v13;
  v15 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v35];
  v17 = [v16 localizedName];

  if (v17)
  {
    v18 = [(MRPlatterViewController *)self traitCollection];
    [v18 displayScale];
    if (v19 == 0.0)
    {
      v20 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v20 scale];
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    v28 = [MEMORY[0x1E69DCAB8] _applicationIconImageForBundleIdentifier:v35 format:0 scale:v22];
    v29 = 0;
    goto LABEL_19;
  }

  v28 = [MEMORY[0x1E6970490] _currentDeviceRoutingIconImage];
LABEL_18:
  v29 = 1;
LABEL_19:
  v30 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v31 = [v30 placeholderArtworkView];
  [v31 setImage:v28];

  v32 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v32 setScalePlaceholderImage:v29];

  v33 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v33 updateArtworkStyle];

  v34 = [(MRPlatterViewController *)self effectiveHeaderView];
  [v34 setNeedsLayout];
}

- (void)_updateSecondaryStringFormat
{
  style = self->_style;
  v4 = [(MRPlatterViewController *)self secondaryStringComponents];
  v7 = v4;
  if (style == 1)
  {
    [v4 firstObject];
  }

  else
  {
    [v4 componentsJoinedByString:@" — "];
  }
  v5 = ;
  v6 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v6 setSecondaryString:v5];
}

- (void)footerViewButtonPressed:(id)a3
{
  v4 = [(MRPlatterViewController *)self delegate];
  v5 = v4;
  if (self->_style == 5)
  {
    v8 = v4;
    v6 = objc_opt_respondsToSelector();
    v5 = v8;
    if (v6)
    {
      v7 = [(MPAVRoutingViewController *)self->_routingViewController _routingController];
      [v7 unpickTVRoutes];

      [v8 dismissPlatterViewController:self completion:0];
      v5 = v8;
    }
  }
}

- (void)headerViewButtonPressed:(id)a3
{
  if ([(MRPlatterViewController *)self selectedMode]!= 1 || ([(MRPlatterViewController *)self supportedModes]& 1) != 0)
  {
    if ([(MRPlatterViewController *)self style]== 3)
    {

      [(MRPlatterViewController *)self _presentRoutingViewControllerFromCoverSheet];
    }

    else if ([(MRPlatterViewController *)self _canToggleRoutingPicker])
    {
      v4 = [(MRPlatterViewController *)self selectedMode]== 0;

      [(MRPlatterViewController *)self _setRoutingPickerVisible:v4 animated:1];
    }
  }

  else
  {
    v5 = [(MRPlatterViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 dismissPlatterViewController:self completion:0];
    }
  }
}

- (BOOL)_canToggleRoutingPicker
{
  if (self->_style == 3)
  {
    return 0;
  }

  if (([(MRPlatterViewController *)self supportedModes]& 2) != 0)
  {
    return [(MRPlatterViewController *)self supportedModes]& 1;
  }

  return 0;
}

- (void)_setRoutingPickerVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(MRPlatterViewController *)self delegate];
  v8 = 0.0;
  if (v4)
  {
    v8 = 0.25;
    if (objc_opt_respondsToSelector())
    {
      [v7 platterViewController:self willToggleRoutingPicker:{-[MRPlatterViewController selectedMode](self, "selectedMode") != 1}];
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__MRPlatterViewController__setRoutingPickerVisible_animated___block_invoke;
  v9[3] = &unk_1E76656C8;
  v10 = a3;
  v9[4] = self;
  v11 = v4;
  [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8];
  if (objc_opt_respondsToSelector())
  {
    [v7 platterViewController:self didToggleRoutingPicker:{-[MRPlatterViewController selectedMode](self, "selectedMode") == 1}];
  }
}

uint64_t __61__MRPlatterViewController__setRoutingPickerVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 41);
  if (v2 == 1)
  {
    [v3 setSelectedMode:1 animated:v4];
    [MediaControlsAnalytics postAnalyticKind:5];
  }

  else
  {
    [v3 setSelectedMode:0 animated:v4];
  }

  v5 = *(a1 + 32);

  return [v5 _updateStyle];
}

- (void)_presentRoutingViewControllerFromCoverSheet
{
  v3 = objc_alloc_init(MEMORY[0x1E69705B8]);
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  [v3 setPresentingAppBundleID:v5];

  [v3 setSurface:2];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v6 = MRAVOutputContextCopyUniqueIdentifier();
  }

  else
  {
    v6 = 0;
  }

  [v3 setRoutingContextUID:v6];
  if (MSVDeviceOSIsInternalInstall() && [(MRPlatterViewController *)self lockScreenPresentsOverrideRoutePicker])
  {
    v7 = [(MRPlatterViewController *)self lockScreenInternalRoutePickerOverrideWithDefaultStyle:2];
  }

  else
  {
    v7 = 2;
  }

  [v3 setStyle:v7];
  [v3 setShouldPreventAutorotation:1];
  [v3 setAllowsNowPlayingApplicationLaunch:1];
  v8 = [objc_alloc(MEMORY[0x1E69705B0]) initWithConfiguration:v3];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v8;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__MRPlatterViewController__presentRoutingViewControllerFromCoverSheet__block_invoke;
  v10[3] = &unk_1E7663898;
  v10[4] = self;
  [(MPMediaControls *)self->_mediaControls setDismissHandler:v10];
  [(MPMediaControls *)self->_mediaControls present];
}

void __70__MRPlatterViewController__presentRoutingViewControllerFromCoverSheet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1176);
  *(v1 + 1176) = 0;
}

- (void)headerViewLaunchNowPlayingAppButtonPressed:(id)a3
{
  v4 = [(MRPlatterViewController *)self delegate];
  v5 = [(MRPlatterViewController *)self endpointController];
  v6 = [v5 configuration];
  if ([v6 allowsNowPlayingApplicationLaunch])
  {

LABEL_4:
    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __70__MRPlatterViewController_headerViewLaunchNowPlayingAppButtonPressed___block_invoke;
      v11[3] = &unk_1E7663898;
      v11[4] = self;
      v8 = v11;
      v9 = v4;
      v10 = self;
LABEL_9:
      [v9 dismissPlatterViewController:v10 completion:v8];
      goto LABEL_10;
    }

    [(MediaControlsEndpointController *)self->_endpointController launchNowPlayingApp];
    goto LABEL_10;
  }

  v7 = [(MRPlatterViewController *)self allowsNowPlayingAppLaunch];

  if (v7)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = v4;
    v10 = self;
    v8 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)willTransitionToSize:(CGSize)a3 withCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  style = self->_style;
  if (style <= 4 && style != 3 && (self->_lastKnownSize.width != width || self->_lastKnownSize.height != height))
  {
    self->_lastKnownSize.width = width;
    self->_lastKnownSize.height = height;
    v11 = [(MRPlatterViewController *)self view];
    [v11 setClipsToBounds:1];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__MRPlatterViewController_willTransitionToSize_withCoordinator___block_invoke;
    v13[3] = &unk_1E7665B38;
    *&v13[5] = width;
    *&v13[6] = height;
    v13[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__MRPlatterViewController_willTransitionToSize_withCoordinator___block_invoke_2;
    v12[3] = &unk_1E7663898;
    v12[4] = self;
    [v7 animateAlongsideTransition:v13 completion:v12];
  }
}

void __64__MRPlatterViewController_willTransitionToSize_withCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) <= 200.0)
  {
    v3 = *(a1 + 32);
    v4 = 1;
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    if (v2 <= 108.0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  [v3 setStyle:v4];
  [*(a1 + 32) setTransitioning:1];
  v5 = [*(a1 + 32) view];
  [v5 setNeedsLayout];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

void __64__MRPlatterViewController_willTransitionToSize_withCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransitioning:0];
  v2 = [*(a1 + 32) nowPlayingHeaderView];
  [v2 clearOverrideSize];

  v3 = [*(a1 + 32) view];
  [v3 setClipsToBounds:0];
}

- (void)presentRatingActionSheet:(id)a3 sourceView:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 likeCommand];
  v8 = [v7 value];

  v9 = [v5 dislikeCommand];
  v10 = [v9 value];

  v11 = [v5 wishlistCommand];
  v74 = [v11 value];

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v13 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_34];
  v14 = [v12 view];
  [v14 setTintColor:v13];

  v15 = [v5 likeCommand];

  if (v15)
  {
    v73 = v10;
    v16 = v6;
    v17 = [v5 likeCommand];
    v18 = [v17 localizedTitle];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v21 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v20 = [v21 localizedStringForKey:@"LIKE_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
    }

    v22 = MEMORY[0x1E69DCAB8];
    v23 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v24 = [v22 imageNamed:@"CC-Action-Star" inBundle:v23];

    v25 = MEMORY[0x1E69DC648];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_2;
    v88[3] = &unk_1E7665B80;
    v89 = v5;
    v90 = v8;
    v26 = [v25 _actionWithTitle:v20 image:v24 style:0 handler:v88 shouldDismissHandler:&__block_literal_global_160];
    [v26 _setChecked:v8];
    [v12 addAction:v26];

    v6 = v16;
    v10 = v73;
  }

  v27 = [v5 dislikeCommand];

  if (v27)
  {
    v28 = [v5 dislikeCommand];
    v29 = [v28 localizedTitle];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v32 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v31 = [v32 localizedStringForKey:@"DISLIKE_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
    }

    v33 = MEMORY[0x1E69DCAB8];
    v34 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v35 = [v33 imageNamed:@"CC-Action-X" inBundle:v34];

    v36 = MEMORY[0x1E69DC648];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_4;
    v85[3] = &unk_1E7665B80;
    v86 = v5;
    v87 = v10;
    v37 = [v36 _actionWithTitle:v31 image:v35 style:0 handler:v85 shouldDismissHandler:&__block_literal_global_168];
    [v37 _setChecked:v10];
    [v12 addAction:v37];
  }

  v38 = [v5 wishlistCommand];

  if (v38)
  {
    v39 = [v5 likeCommand];
    if (v39)
    {
    }

    else
    {
      v40 = [v5 dislikeCommand];

      if (!v40)
      {
LABEL_16:
        v41 = [v5 wishlistCommand];
        v42 = [v41 localizedTitle];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v45 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
          v44 = [v45 localizedStringForKey:@"BOOKMARK_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
        }

        v46 = MEMORY[0x1E69DCAB8];
        v47 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
        v48 = [v46 imageNamed:@"CC-Action-Plus" inBundle:v47];

        v49 = MEMORY[0x1E69DC648];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_6;
        v82[3] = &unk_1E7665B80;
        v83 = v5;
        v84 = v74;
        v50 = [v49 _actionWithTitle:v44 image:v48 style:0 handler:v82 shouldDismissHandler:&__block_literal_global_176];
        [v50 _setChecked:v74];
        [v12 addAction:v50];

        goto LABEL_20;
      }
    }

    [v12 _addSectionDelimiter];
    goto LABEL_16;
  }

LABEL_20:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v51 = [v12 actions];
  v52 = [v51 countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v79;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v79 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v78 + 1) + 8 * i);
        v57 = [MEMORY[0x1E69DC888] labelColor];
        [v56 _setTitleTextColor:v57];

        [v56 _setTitleTextAlignment:4];
      }

      v53 = [v51 countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v53);
  }

  v58 = MEMORY[0x1E69DC648];
  v59 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
  v60 = [v59 localizedStringForKey:@"CANCEL" value:&stru_1F1445548 table:@"MediaControls"];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_8;
  v76[3] = &unk_1E7665BC8;
  v77 = v12;
  v61 = v12;
  v62 = [v58 actionWithTitle:v60 style:1 handler:v76];

  [v61 addAction:v62];
  v63 = [v61 popoverPresentationController];
  [v63 setSourceView:v6];

  [v6 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = [v61 popoverPresentationController];
  [v72 setSourceRect:{v65, v67, v69, v71}];

  [(MRPlatterViewController *)self presentViewController:v61 animated:1 completion:0];
}

id __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userInterfaceStyle];
  v4 = [v2 accessibilityContrast];

  if (v3 == 2)
  {
    v5 = 0.980392157;
    if (v4 == 1)
    {
      v6 = 0.345098039;
      v7 = 0.415686275;
    }

    else
    {
      v6 = 0.176470588;
      v7 = 0.282352941;
    }
  }

  else if (v4 == 1)
  {
    v5 = 0.839215686;
    v7 = 0.0901960784;
    v6 = 0.0;
  }

  else
  {
    v5 = 0.980392157;
    v6 = 0.137254902;
    v7 = 0.231372549;
  }

  v8 = [MEMORY[0x1E69DC888] colorWithRed:v5 green:v6 blue:v7 alpha:1.0];

  return v8;
}

void __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4 = [*(a1 + 32) likeCommand];
  v3 = [v4 changeValue:(*(a1 + 40) & 1) == 0];
  [v2 performRequest:v3 completion:0];
}

void __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4 = [*(a1 + 32) dislikeCommand];
  v3 = [v4 changeValue:(*(a1 + 40) & 1) == 0];
  [v2 performRequest:v3 completion:0];
}

void __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x1E69B0848];
  v4 = [*(a1 + 32) wishlistCommand];
  v3 = [v4 changeValue:(*(a1 + 40) & 1) == 0];
  [v2 performRequest:v3 completion:0];
}

- (BOOL)shouldShowTVRemoteButton
{
  v3 = [(MRPlatterViewController *)self _tvMediaRemoteIdentifier];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MRPlatterViewController *)self _tvAirplayIdentifier];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)presentTVRemote
{
  v35 = [(MRPlatterViewController *)self _tvMediaRemoteIdentifier];
  if (v35)
  {
    v3 = 0;
  }

  else
  {
    v35 = [(MRPlatterViewController *)self _tvAirplayIdentifier];
    v3 = 1;
  }

  v4 = [(MRPlatterViewController *)self _route];
  v5 = [v4 isTVRoute];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ([(MRPlatterViewController *)self style]== 3)
  {
    v7 = 6;
  }

  else
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 lowercaseString];
    v11 = [v10 isEqualToString:@"com.apple.siri"];

    if (v11)
    {
      v7 = 7;
    }

    else
    {
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [v13 lowercaseString];
      v15 = [v14 isEqualToString:@"com.apple.home"];

      if (v15)
      {
        v7 = 3;
      }

      else
      {
        v7 = 8;
      }
    }
  }

  if (v35)
  {
    if ([(MRPlatterViewController *)self _shouldUseViewServiceToPresentTVRemote])
    {
      WeakRetained = [objc_alloc(MEMORY[0x1E69D60F8]) initWithDeviceIdentifier:v35 identifierType:v3 deviceType:v6 launchContext:v7 launchMethod:0];
      v17 = [MEMORY[0x1E69D6100] sharedInstance];
      [v17 presentWithContext:WeakRetained];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_alloc_init(MEMORY[0x1E69D60F0]);
      [v17 configureWithDeviceIdentifier:v35 identifierType:v3 deviceType:v6 launchContext:5];
      v18 = [v17 view];
      [v18 setClipsToBounds:1];

      [v17 setModalPresentationStyle:4];
      [v17 setTransitioningDelegate:self->_transitioningDelegate];
      v19 = [v17 presentationController];
      if (objc_opt_respondsToSelector())
      {
        v20 = [WeakRetained platterViewController:self presentingViewForPresentedViewController:v17];
        [v19 setPresentingView:v20];
      }

      v21 = [(MRPlatterViewController *)self view];
      v22 = [v21 superview];
      v23 = [(MRPlatterViewController *)self view];
      [v23 center];
      v25 = v24;
      v27 = v26;
      v28 = [(MRPlatterViewController *)self view];
      v29 = [v28 window];
      [v22 convertPoint:v29 toView:{v25, v27}];
      [v19 setSourcePoint:?];

      v30 = [(MRPlatterViewController *)self traitCollection];
      v31 = [v30 userInterfaceIdiom];

      if (v31 == 1)
      {
        CCUIExpandedModuleEdgeInsets();
        [v19 setEdgeInsets:?];
        CCUIExpandedModuleContinuousCornerRadius();
        v33 = v32;
        v34 = [v17 view];
        [v34 _setContinuousCornerRadius:v33];
      }

      [(MRPlatterViewController *)self presentViewController:v17 animated:1 completion:0];
    }
  }
}

- (void)_platterViewControllerReceivedInteraction:(id)a3
{
  v7 = a3;
  v4 = [(MRPlatterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 platterViewController:self didReceiveInteractionEvent:v7];
  }

  v5 = self;
  v6 = [(MRPlatterViewController *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 mediaControlsPanelViewController:v5 didReceiveInteractionEvent:v7];
  }
}

- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4
{
  v5 = [a4 actionIdentifier];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696F8A8]];

  if (v6)
  {

    [(MRPlatterViewController *)self _showShareAudioViewController];
  }
}

- (void)routingViewController:(id)a3 didPickRoute:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained platterViewController:self didPickRoute:v6];
  }
}

- (UIEdgeInsets)contentInsetsForRoutingViewController:(id)a3
{
  v3 = 10.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)routingViewController:(id)a3 willDisplayCell:(id)a4
{
  visualStylingProvider = self->_visualStylingProvider;
  v6 = a4;
  v19 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
  v7 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:1];
  v8 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:3];
  v9 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:5];
  v10 = [v6 isEnabled];
  v11 = [v6 titleView];
  v12 = v10 == 0;
  if (v10)
  {
    v13 = v19;
  }

  else
  {
    v13 = v8;
  }

  if (v12)
  {
    v14 = v8;
  }

  else
  {
    v14 = v7;
  }

  [v11 mt_replaceVisualStyling:v13];

  v15 = [v6 subtitleView];
  [v15 mt_replaceVisualStyling:v14];

  v16 = [v6 iconView];
  [v16 mt_replaceVisualStyling:v13];

  v17 = [v6 separatorView];
  [v17 mt_replaceVisualStyling:v9];

  v18 = [v6 volumeSlider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 setMinimumTrackVisualProvider:self->_visualStylingProvider];
    [v18 setMaximumTrackVisualProvider:self->_visualStylingProvider];
  }
}

- (void)routingViewController:(id)a3 willDisplayHeaderView:(id)a4
{
  visualStylingProvider = self->_visualStylingProvider;
  v5 = a4;
  v7 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
  v6 = [v5 textLabel];

  [v6 mt_replaceVisualStyling:v7];
}

- (void)setRoutingViewController:(id)a3
{
  v5 = a3;
  routingViewController = self->_routingViewController;
  if (routingViewController != v5)
  {
    v10 = v5;
    v7 = routingViewController;
    objc_storeStrong(&self->_routingViewController, a3);
    [(MPAVRoutingViewController *)self->_routingViewController setDelegate:self];
    [(MPAVRoutingViewController *)self->_routingViewController setThemeDelegate:self];
    [(MPAVRoutingViewController *)self->_routingViewController setGroupSliderCoordinator:self->_groupSliderCoordinator];
    if ([(MRPlatterViewController *)self isViewLoaded])
    {
      if ([(MRPlatterViewController *)self isOnScreen])
      {
        [(MPAVRoutingViewController *)self->_routingViewController beginAppearanceTransition:1 animated:0];
      }

      [(MPAVRoutingViewController *)v7 beginAppearanceTransition:0 animated:0];
      v8 = [(MPAVRoutingViewController *)self->_routingViewController view];
      v9 = [(MRPlatterViewController *)self parentContainerView];
      [v9 setRoutingView:v8];

      if ([(MRPlatterViewController *)self isOnScreen])
      {
        [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
      }

      [(MPAVRoutingViewController *)v7 endAppearanceTransition];
    }

    v5 = v10;
  }
}

- (BOOL)shouldEnableSyncingForSlider:(id)a3
{
  v4 = [(MPVolumeGroupSliderCoordinator *)self->_groupSliderCoordinator individualVolumeSliders];
  v5 = [v4 count] >= 2 && -[MRPlatterViewController selectedMode](self, "selectedMode") == 1;

  return v5;
}

- (BOOL)slider:(id)a3 syncStateWillChangeFromState:(int64_t)a4 toState:(int64_t)a5
{
  v8 = a3;
  if (a5 == 4)
  {
    if (a4 == 2)
    {
      groupSliderCoordinator = self->_groupSliderCoordinator;
      LOBYTE(self) = 1;
      [(MPVolumeGroupSliderCoordinator *)groupSliderCoordinator syncSliders:1];
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(self) = 1;
    goto LABEL_7;
  }

  if (a5 != 1)
  {
    goto LABEL_6;
  }

  LODWORD(self) = [(MPVolumeGroupSliderCoordinator *)self->_groupSliderCoordinator synced]^ 1;
LABEL_7:

  return self;
}

- (BOOL)slider:(id)a3 shouldCancelSnapWithTouch:(id)a4
{
  v5 = a4;
  v6 = [(MRPlatterViewController *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(MRPlatterViewController *)self view];
  LOBYTE(v5) = [v11 pointInside:0 withEvent:{v8, v10}];

  return v5 ^ 1;
}

- (void)_updateRoutingCornerView
{
  if ([(MediaControlsEndpointController *)self->_endpointController isRoutingToWireless])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute]^ 1;
  }

  v4 = [(MRPlatterViewController *)self routingCornerView];
  [v4 setRouting:v3];

  if ([(MediaControlsEndpointController *)self->_endpointController isRoutingToWireless])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute]^ 1;
  }

  v6 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [v6 setRouting:v5];

  if ([(MediaControlsEndpointController *)self->_endpointController hasAvailableRoutes])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute]^ 1;
  }

  v8 = [(MRPlatterViewController *)self routingCornerView];
  [v8 setRoutesAvailable:v7];
}

- (void)setRoutingCornerViewTappedBlock:(id)a3
{
  if (self->_expandModuleBlock != a3)
  {
    v4 = _Block_copy(a3);
    expandModuleBlock = self->_expandModuleBlock;
    self->_expandModuleBlock = v4;

    MEMORY[0x1EEE66BB8](v4, expandModuleBlock);
  }
}

- (void)_updateRoutingIndicators
{
  v3 = [(MRPlatterViewController *)self endpointController];
  v4 = [v3 bundleID];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(MRPlatterViewController *)self endpointController];
    v7 = [v6 representedBundleID];
    v5 = v7 != 0;
  }

  v8 = [(MRPlatterViewController *)self endpointController];
  v9 = [v8 route];

  if (([v9 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v9, "isTVRoute") & 1) != 0 || objc_msgSend(v9, "containsDeviceWithSubtype:", 18))
  {
    v10 = [(MRPlatterViewController *)self routingCornerView];
    [v10 setDeviceType:2];

    v11 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    v12 = [v11 routingButton];
    v13 = v12;
    v14 = 2;
  }

  else
  {
    if (v5)
    {
      v15 = [(MRPlatterViewController *)self endpointController];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__MRPlatterViewController__updateRoutingIndicators__block_invoke;
      v17[3] = &unk_1E7664FE8;
      v17[4] = self;
      [v15 representsLongFormVideoContentWithCompletion:v17];

      goto LABEL_9;
    }

    v16 = [(MRPlatterViewController *)self routingCornerView];
    [v16 setDeviceType:1];

    v11 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    v12 = [v11 routingButton];
    v13 = v12;
    v14 = 1;
  }

  [v12 setDeviceType:v14];

LABEL_9:
}

void __51__MRPlatterViewController__updateRoutingIndicators__block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) routingCornerView];
  v5 = v4;
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v4 setDeviceType:v6];

  v8 = [*(a1 + 32) nowPlayingHeaderView];
  v7 = [v8 routingButton];
  [v7 setDeviceType:v6];
}

- (void)_routingCornerViewReceivedTap:(id)a3
{
  expandModuleBlock = self->_expandModuleBlock;
  if (expandModuleBlock)
  {
    expandModuleBlock[2](expandModuleBlock, a2, a3);
    v5 = dispatch_time(0, 480000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRPlatterViewController__routingCornerViewReceivedTap___block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __57__MRPlatterViewController__routingCornerViewReceivedTap___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) style];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _setRoutingPickerVisible:1 animated:1];
  }

  return result;
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MRPlatterViewController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_1E76639D0;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __76__MRPlatterViewController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) elements];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) elements];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) identifier];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) setDisplayElements:v4];
}

- (BOOL)lockScreenPresentsOverrideRoutePicker
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Music"];
  v3 = [v2 stringForKey:@"LockScreenRoutingStyleOverride"];
  v4 = [v3 isEqualToString:@"Default"];

  return v4 ^ 1;
}

- (int64_t)lockScreenInternalRoutePickerOverrideWithDefaultStyle:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Music"];
  v5 = [v4 stringForKey:@"LockScreenRoutingStyleOverride"];
  if (([v5 isEqualToString:@"Default"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"ControlCenter"])
    {
      a3 = 0;
    }

    else if ([v5 isEqualToString:@"SingleSelect"])
    {
      a3 = 1;
    }

    else if ([v5 isEqualToString:@"MultiSelect"])
    {
      a3 = 2;
    }

    else if ([v5 isEqualToString:@"SharedQueue"])
    {
      a3 = 3;
    }

    else if ([v5 isEqualToString:@"VideoPicker"])
    {
      a3 = 4;
    }

    else if ([v5 isEqualToString:@"LocalTransportControls"])
    {
      a3 = 5;
    }

    else if ([v5 isEqualToString:@"AirPlayBluePill"])
    {
      a3 = 6;
    }

    else if ([v5 isEqualToString:@"MediumConfidenceVideoPicker"])
    {
      a3 = 7;
    }

    else if ([v5 isEqualToString:@"UpNextControls"])
    {
      a3 = 8;
    }
  }

  return a3;
}

- (id)_stateDumpObject
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v20[0] = v3;
  v19[1] = @"onScreen";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRPlatterViewController isOnScreen](self, "isOnScreen")}];
  v20[1] = v4;
  v19[2] = @"route";
  v5 = [(MRPlatterViewController *)self route];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"<NONE>";
  }

  v20[2] = v7;
  v19[3] = @"name";
  v8 = [(MRPlatterViewController *)self routeName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<NONE>";
  }

  v20[3] = v10;
  v19[4] = @"routingViewController";
  v11 = [(MRPlatterViewController *)self routingViewController];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"<NONE>";
  }

  v20[4] = v13;
  v19[5] = @"endpointController";
  v14 = [(MRPlatterViewController *)self endpointController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"<NONE>";
  }

  v20[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];

  return v17;
}

- (MRPlatterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)lastKnownSize
{
  width = self->_lastKnownSize.width;
  height = self->_lastKnownSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MediaControlsLanguageOptionsViewController)languageOptionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_languageOptionsViewController);

  return WeakRetained;
}

- (uint64_t)_showShareAudioViewController
{
  dlerror();
  v0 = abort_report_np();
  return +[(MRUHardwareVolumeController *)v0];
}

@end