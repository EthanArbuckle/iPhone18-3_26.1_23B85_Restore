@interface MRPlatterViewController
+ (MRPlatterViewController)coverSheetPlatterViewController;
- (BOOL)_canToggleRoutingPicker;
- (BOOL)_shouldUseViewServiceToPresentTVRemote;
- (BOOL)lockScreenPresentsOverrideRoutePicker;
- (BOOL)shouldDisplayPlatter;
- (BOOL)shouldEnableSyncingForSlider:(id)slider;
- (BOOL)shouldShowTVRemoteButton;
- (BOOL)slider:(id)slider shouldCancelSnapWithTouch:(id)touch;
- (BOOL)slider:(id)slider syncStateWillChangeFromState:(int64_t)state toState:(int64_t)toState;
- (CGSize)lastKnownSize;
- (MRPlatterViewController)initWithActiveRouteType:(int64_t)type;
- (MRPlatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MRPlatterViewController)initWithRouteUID:(id)d;
- (MRPlatterViewController)initWithStyle:(int64_t)style;
- (MRPlatterViewControllerDelegate)delegate;
- (MediaControlsLanguageOptionsViewController)languageOptionsViewController;
- (NSString)description;
- (NSString)routeName;
- (SFShareAudioViewController)shareAudioViewController;
- (UIEdgeInsets)contentInsetsForRoutingViewController:(id)controller;
- (UIView)effectiveFooterView;
- (UIView)effectiveHeaderView;
- (id)_route;
- (id)_stateDumpObject;
- (id)_tvAirplayIdentifier;
- (id)_tvMediaRemoteIdentifier;
- (int64_t)lockScreenInternalRoutePickerOverrideWithDefaultStyle:(int64_t)style;
- (uint64_t)_showShareAudioViewController;
- (void)_dismissShareAudioViewController;
- (void)_platterViewControllerReceivedInteraction:(id)interaction;
- (void)_presentRoutingViewControllerFromCoverSheet;
- (void)_prewarmTVRemoteIfNeeded;
- (void)_routingCornerViewReceivedTap:(id)tap;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setRoutingPickerVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_showPlaceholderArtwork;
- (void)_showShareAudioViewController;
- (void)_updateConfiguration;
- (void)_updateControlCenterMetadata:(id)metadata sectionMetadata:(id)sectionMetadata;
- (void)_updateHeaderUI;
- (void)_updateOnScreenForStyle:(int64_t)style;
- (void)_updatePlaceholderArtwork;
- (void)_updateRouteNameLabel;
- (void)_updateRoutingCornerView;
- (void)_updateRoutingIndicators;
- (void)_updateSecondaryStringFormat;
- (void)_updateStyle;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)endpointController:(id)controller didLoadNewResponse:(id)response;
- (void)endpointControllerDidUpdateRoutingAvailability:(id)availability;
- (void)endpointControllerRouteDidUpdate:(id)update;
- (void)footerViewButtonPressed:(id)pressed;
- (void)headerViewButtonPressed:(id)pressed;
- (void)headerViewLaunchNowPlayingAppButtonPressed:(id)pressed;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)loadView;
- (void)presentRatingActionSheet:(id)sheet sourceView:(id)view;
- (void)presentTVRemote;
- (void)routingViewController:(id)controller didPickRoute:(id)route;
- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item;
- (void)routingViewController:(id)controller willDisplayCell:(id)cell;
- (void)routingViewController:(id)controller willDisplayHeaderView:(id)view;
- (void)setAllowsNowPlayingAppLaunch:(BOOL)launch;
- (void)setArtworkCatalog:(id)catalog;
- (void)setBackgroundView:(id)view;
- (void)setDisplayElements:(id)elements;
- (void)setEndpointController:(id)controller;
- (void)setLabel:(id)label;
- (void)setOnScreen:(BOOL)screen;
- (void)setPlaceholderString:(id)string;
- (void)setRoutingCornerViewTappedBlock:(id)block;
- (void)setRoutingViewController:(id)controller;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedMode:(int64_t)mode animated:(BOOL)animated;
- (void)setStyle:(int64_t)style;
- (void)setSupportedModes:(unint64_t)modes;
- (void)setTransitioning:(BOOL)transitioning;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToSize:(CGSize)size withCoordinator:(id)coordinator;
@end

@implementation MRPlatterViewController

- (MRPlatterViewController)initWithStyle:(int64_t)style
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

    v4->_style = style;
    explicitString = v4->_explicitString;
    v4->_explicitString = &stru_1F1445548;

    if (style == 3)
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
    routingButton = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView routingButton];
    [routingButton addTarget:v4 action:sel_headerViewButtonPressed_ forControlEvents:64];

    launchNowPlayingAppButton = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView launchNowPlayingAppButton];
    [launchNowPlayingAppButton addTarget:v4 action:sel_headerViewLaunchNowPlayingAppButtonPressed_ forControlEvents:64];

    [(MRMediaControlsVideoPickerFooterView *)v4->_videoPickerFooterView addTarget:v4 action:sel_footerViewButtonPressed_ forControlEvents:64];
    v33 = v4->_style == 3;
    routingButton2 = [(MediaControlsHeaderView *)v4->_nowPlayingHeaderView routingButton];
    [routingButton2 setUserInterfaceStyleSwitchingEnabled:v33];

    parentContainerView = [(MRPlatterViewController *)v4 parentContainerView];
    transportStackView = [parentContainerView transportStackView];
    [transportStackView setActionsDelegate:v4];

    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v38 = [mediaControlsBundle localizedStringForKey:@"MEDIA_CONTROLS_PLATTER_PLACEHOLDER" value:&stru_1F1445548 table:@"MediaControls"];
    [(MRPlatterViewController *)v4 setPlaceholderString:v38];

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x1E699FAF8] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v4);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __41__MRPlatterViewController_initWithStyle___block_invoke;
    v48[3] = &unk_1E7665A98;
    objc_copyWeak(&v49, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v48];
    v40 = [MEMORY[0x1E699FAE0] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
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

- (MRPlatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundle = [(MRPlatterViewController *)self initWithStyle:0, bundle];
  v5 = bundle;
  if (bundle)
  {
    [(MRPlatterViewController *)bundle setAllowsNowPlayingAppLaunch:1];
    CCUIExpandedModuleContinuousCornerRadius();
    [(MRPlatterViewController *)v5 _setContinuousCornerRadius:?];
  }

  return v5;
}

- (MRPlatterViewController)initWithRouteUID:(id)d
{
  dCopy = d;
  v5 = [(MRPlatterViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MediaControlsStandaloneEndpointController alloc] initWithRouteUID:dCopy];
    [(MRPlatterViewController *)v5 setEndpointController:v6];

    endpointController = [(MRPlatterViewController *)v5 endpointController];
    [endpointController setAllowsAutomaticResponseLoading:1];
  }

  return v5;
}

- (MRPlatterViewController)initWithActiveRouteType:(int64_t)type
{
  v4 = [(MRPlatterViewController *)self initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [[MediaControlsActiveEndpointController alloc] initWithActiveEndpointType:type == 1];
    [(MRPlatterViewController *)v4 setEndpointController:v5];

    endpointController = [(MRPlatterViewController *)v4 endpointController];
    [endpointController setAllowsAutomaticResponseLoading:1];
  }

  return v4;
}

- (void)dealloc
{
  endpointController = [(MRPlatterViewController *)self endpointController];
  proxyDelegate = [endpointController proxyDelegate];
  [proxyDelegate endObserving];

  displayMonitor = [(MRPlatterViewController *)self displayMonitor];
  [displayMonitor invalidate];

  v6.receiver = self;
  v6.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  endpointController = [(MRPlatterViewController *)self endpointController];
  route = [endpointController route];
  v7 = [v3 stringWithFormat:@"<%@: %p route: %@", v4, self, route];

  return v7;
}

- (NSString)routeName
{
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];

  if (nowPlayingHeaderView)
  {
    nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    routeLabel = [nowPlayingHeaderView2 routeLabel];
    text = [routeLabel text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (void)setAllowsNowPlayingAppLaunch:(BOOL)launch
{
  if (self->_allowsNowPlayingAppLaunch != launch)
  {
    self->_allowsNowPlayingAppLaunch = launch;
    [(MRPlatterViewController *)self _updateStyle];
  }
}

- (BOOL)shouldDisplayPlatter
{
  endpointController = [(MRPlatterViewController *)self endpointController];
  route = [endpointController route];
  v4 = route != 0;

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
  view = [(MRPlatterViewController *)self view];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [view setTintColor:labelColor];

  view2 = [(MRPlatterViewController *)self view];
  [view2 setAutoresizingMask:0];

  backgroundView = [(MRPlatterViewController *)self backgroundView];

  if (backgroundView)
  {
    view3 = [(MRPlatterViewController *)self view];
    [view3 addSubview:self->_backgroundView];
  }

  view4 = [(MRPlatterViewController *)self view];
  [view4 addSubview:self->_contentView];

  [(UIView *)self->_contentView addSubview:self->_parentContainerView];
  contentView = self->_contentView;
  effectiveFooterView = [(MRPlatterViewController *)self effectiveFooterView];
  [(UIView *)contentView addSubview:effectiveFooterView];

  v11 = self->_contentView;
  effectiveHeaderView = [(MRPlatterViewController *)self effectiveHeaderView];
  [(UIView *)v11 addSubview:effectiveHeaderView];

  [(UIView *)self->_contentView addSubview:self->_routingCornerView];
  v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__routingCornerViewReceivedTap_];
  [v13 setCancelsTouchesInView:0];
  routingCornerView = [(MRPlatterViewController *)self routingCornerView];
  [routingCornerView addGestureRecognizer:v13];

  if ([(MRPlatterViewController *)self style]== 3)
  {
    v15 = [[MediaControlsInteractionRecognizer alloc] initWithTarget:self action:sel__platterViewControllerReceivedInteraction_];
    [(MediaControlsInteractionRecognizer *)v15 setCancelsTouchesInView:0];
    view5 = [(MRPlatterViewController *)self view];
    [view5 addGestureRecognizer:v15];

    [(MediaControlsInteractionRecognizer *)v15 setDelegate:self];
  }

  [(MRPlatterViewController *)self _updateStyle];
  routingViewController = self->_routingViewController;
  if (routingViewController)
  {
    view6 = [(MPAVRoutingViewController *)routingViewController view];
    parentContainerView = [(MRPlatterViewController *)self parentContainerView];
    [parentContainerView setRoutingView:view6];
  }
}

- (void)viewDidLayoutSubviews
{
  v117.receiver = self;
  v117.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v117 viewDidLayoutSubviews];
  traitCollection = [(MRPlatterViewController *)self traitCollection];
  [traitCollection displayScale];

  view = [(MRPlatterViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIView *)self->_backgroundView setFrame:v6, v8, v10, v12];
  [(UIView *)self->_contentView setFrame:v6, v8, v10, v12];
  view2 = [(SFShareAudioViewController *)self->_shareAudioViewController view];
  [view2 setFrame:{v6, v8, v10, v12}];

  UIRoundToScale();
  UIRoundToScale();
  v112 = v14;
  UIRectInset();
  UIRectInset();
  UIRectIntegralWithScale();
  view3 = [(MRPlatterViewController *)self view];
  [view3 bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  routingCornerView = [(MRPlatterViewController *)self routingCornerView];
  [routingCornerView setFrame:{v17, v19, v21, v23}];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    CGAffineTransformMakeScale(&v116, -1.0, 1.0);
    routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
    v28 = routingCornerView2;
    v113 = *&v116.a;
    v114 = *&v116.c;
    v29 = *&v116.tx;
  }

  else
  {
    routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
    v28 = routingCornerView2;
    v30 = *(MEMORY[0x1E695EFD0] + 16);
    v113 = *MEMORY[0x1E695EFD0];
    v114 = v30;
    v29 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v115 = v29;
  [routingCornerView2 setTransform:&v113];

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

    effectiveHeaderView = [(MRPlatterViewController *)self effectiveHeaderView];
    [effectiveHeaderView sizeThatFits:{v52, v54}];

    UIRectIntegralWithScale();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    effectiveHeaderView2 = [(MRPlatterViewController *)self effectiveHeaderView];
    [effectiveHeaderView2 setFrame:{v59, v61, v63, v65}];

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
    effectiveFooterView = [(MRPlatterViewController *)self effectiveFooterView];
    [effectiveFooterView sizeThatFits:{v73, v75}];

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
    effectiveFooterView2 = [(MRPlatterViewController *)self effectiveFooterView];
    [effectiveFooterView2 setFrame:{v78, v80, v82, v84}];

    UIRectInset();
    UIRectIntegralWithScale();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    parentContainerView = [(MRPlatterViewController *)self parentContainerView];
    view4 = parentContainerView;
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
      traitCollection2 = [(MRPlatterViewController *)self traitCollection];
      [v96 scaledValueForValue:traitCollection2 compatibleWithTraitCollection:20.0];
      v99 = v98 * -0.5;

      effectiveHeaderView3 = [(MRPlatterViewController *)self effectiveHeaderView];
      [effectiveHeaderView3 sizeThatFits:{v10, v12}];
      v102 = v101;

      effectiveHeaderView4 = [(MRPlatterViewController *)self effectiveHeaderView];
      [effectiveHeaderView4 setFrame:{0.0, v95 + 25.0 + v99, v10, v102}];

      parentContainerView2 = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView2 setFrame:{0.0, v112 + v95 * 2.0, v10, 50.0}];

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

      view4 = [(MRPlatterViewController *)self view];
      [view4 bounds];
      v110 = CGRectGetMaxY(v125) - v109;
      effectiveFooterView3 = [(MRPlatterViewController *)self effectiveFooterView];
      [effectiveFooterView3 setFrame:{0.0, v110, width, v109}];

      goto LABEL_17;
    case 2:
      effectiveHeaderView5 = [(MRPlatterViewController *)self effectiveHeaderView];
      [effectiveHeaderView5 sizeThatFits:{v10, v12}];

      UIRectCenteredIntegralRect();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      effectiveHeaderView6 = [(MRPlatterViewController *)self effectiveHeaderView];
      [effectiveHeaderView6 setFrame:{v34, v36, v38, v40}];

      v118.origin.x = v6;
      v118.origin.y = v8;
      v118.size.width = v10;
      v118.size.height = v12;
      MidY = CGRectGetMidY(v118);
      parentContainerView3 = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView3 setFrame:{v6, MidY, v10, 50.0}];

      v119.origin.y = v8 + 0.0;
      v119.origin.x = v6 + 24.0;
      v119.size.width = v10 - (24.0 + 24.0);
      v119.size.height = v12;
      MaxY = CGRectGetMaxY(v119);
      parentContainerView = [(MRPlatterViewController *)self effectiveFooterView];
      view4 = parentContainerView;
      v47 = v6 + 24.0;
      v48 = MaxY;
      v49 = v10 - (24.0 + 24.0);
      v50 = 50.0;
LABEL_16:
      [parentContainerView setFrame:{v47, v48, v49, v50}];
LABEL_17:

      break;
  }

LABEL_18:
  view5 = [(MRPlatterViewController *)self view];
  [view5 sendSubviewToBack:self->_backgroundView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v5 viewWillAppear:?];
  [(MRPlatterViewController *)self setOnScreen:1];
  [(MPAVRoutingViewController *)self->_routingViewController beginAppearanceTransition:1 animated:appearCopy];
  [(MRPlatterViewController *)self _updateHeaderUI];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v4 viewDidAppear:appear];
  [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v5 didMoveToParentViewController:?];
  [(MRPlatterViewController *)self _updateHeaderUI];
  if (!controller)
  {
    [(MRPlatterViewController *)self setOnScreen:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v6 viewWillDisappear:?];
  [(MPAVRoutingViewController *)self->_routingViewController beginAppearanceTransition:0 animated:disappearCopy];
  languageOptionsViewController = [(MRPlatterViewController *)self languageOptionsViewController];
  [languageOptionsViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRPlatterViewController;
  [(MRPlatterViewController *)&v4 viewDidDisappear:disappear];
  [(MRPlatterViewController *)self setOnScreen:0];
  [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v13 = viewCopy;
    v7 = backgroundView;
    objc_storeStrong(&self->_backgroundView, view);
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
        view = [(MRPlatterViewController *)self view];
        [view insertSubview:v13 atIndex:0];

        view2 = [(MRPlatterViewController *)self view];
        [view2 setNeedsLayout];
      }

      else
      {
        superview = [(UIView *)v7 superview];
        view3 = [(MRPlatterViewController *)self view];

        if (superview == view3)
        {
          [(UIView *)v7 removeFromSuperview];
        }
      }
    }

    viewCopy = v13;
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if (self->__continuousCornerRadius != radius)
  {
    self->__continuousCornerRadius = radius;
    backgroundView = [(MRPlatterViewController *)self backgroundView];
    [backgroundView _setContinuousCornerRadius:self->__continuousCornerRadius];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
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

- (void)setEndpointController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegate = [(MediaControlsEndpointController *)self->_endpointController delegate];

  if (delegate == self)
  {
    [(MediaControlsEndpointController *)self->_endpointController setDelegate:0];
  }

  [(MediaControlsEndpointController *)controllerCopy setDelegate:self];
  label = [(MRPlatterViewController *)self label];
  [(MediaControlsEndpointController *)controllerCopy setLabel:label];

  v8 = MCLogCategoryRouting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = controllerCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ changing to endpoint controller: %{public}@", &v15, 0x16u);
  }

  if (self->_endpointController != controllerCopy)
  {
    objc_storeStrong(&self->_endpointController, controller);
    volumeContainerView = [(MRPlatterViewController *)self volumeContainerView];
    volumeSlider = [volumeContainerView volumeSlider];

    if (volumeSlider)
    {
      route = [(MediaControlsEndpointController *)controllerCopy route];

      if (route)
      {
        route2 = [(MediaControlsEndpointController *)controllerCopy route];
        volumeContainerView2 = [(MRPlatterViewController *)self volumeContainerView];
        volumeSlider2 = [volumeContainerView2 volumeSlider];
        [volumeSlider2 setGroupRoute:route2];
      }

      else
      {
        route2 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:0 outputDeviceRoute:0];
        volumeContainerView2 = [(MRPlatterViewController *)self volumeContainerView];
        volumeSlider2 = [volumeContainerView2 volumeSlider];
        [volumeSlider2 setVolumeDataSource:route2];
      }
    }

    [(MRPlatterViewController *)self _updateHeaderUI];
  }
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  if (([(NSString *)self->_label isEqual:?]& 1) == 0)
  {
    v4 = [labelCopy copy];
    label = self->_label;
    self->_label = v4;

    [(MediaControlsEndpointController *)self->_endpointController setLabel:labelCopy];
  }
}

- (void)setPlaceholderString:(id)string
{
  stringCopy = string;
  if (self->_placeholderString != stringCopy)
  {
    v7 = stringCopy;
    objc_storeStrong(&self->_placeholderString, string);
    nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
    [nowPlayingHeaderView setPlaceholderString:v7];

    stringCopy = v7;
  }
}

- (UIView)effectiveFooterView
{
  style = self->_style;
  if (style >= 5)
  {
    if (style == 5)
    {
      videoPickerFooterView = [(MRPlatterViewController *)self videoPickerFooterView];
    }

    else
    {
      videoPickerFooterView = 0;
    }
  }

  else
  {
    videoPickerFooterView = [(MRPlatterViewController *)self volumeContainerView];
  }

  return videoPickerFooterView;
}

- (UIView)effectiveHeaderView
{
  style = self->_style;
  if (style >= 5)
  {
    if (style == 5)
    {
      videoPickerHeaderView = [(MRPlatterViewController *)self videoPickerHeaderView];
    }

    else
    {
      videoPickerHeaderView = 0;
    }
  }

  else
  {
    videoPickerHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  }

  return videoPickerHeaderView;
}

- (id)_route
{
  endpointController = [(MRPlatterViewController *)self endpointController];
  route = [endpointController route];

  return route;
}

- (void)_updateStyle
{
  style = self->_style;
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setStyle:style];

  v5 = self->_style;
  parentContainerView = [(MRPlatterViewController *)self parentContainerView];
  [parentContainerView setStyle:v5];

  v7 = self->_style;
  volumeContainerView = [(MRPlatterViewController *)self volumeContainerView];
  [volumeContainerView setStyle:v7];

  if ((self->_style - 1) >= 2)
  {
    v9 = [(MRPlatterViewController *)self allowsNowPlayingAppLaunch]^ 1;
  }

  else
  {
    v9 = 1;
  }

  nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  launchNowPlayingAppButton = [nowPlayingHeaderView2 launchNowPlayingAppButton];
  [launchNowPlayingAppButton setHidden:v9];

  v12 = self->_style;
  if (v12 > 2)
  {
    if ((v12 - 3) >= 2)
    {
      if (v12 != 5)
      {
        goto LABEL_21;
      }

      routingCornerView = [(MRPlatterViewController *)self routingCornerView];
      [routingCornerView setAlpha:0.0];

      parentContainerView2 = [(MRPlatterViewController *)self parentContainerView];
      v14 = 1.0;
      [parentContainerView2 setAlpha:1.0];

      effectiveFooterView = [(MRPlatterViewController *)self effectiveFooterView];
      [effectiveFooterView setAlpha:1.0];

      parentContainerView3 = [(MRPlatterViewController *)self parentContainerView];
      topDividerView = [parentContainerView3 topDividerView];
      v24 = topDividerView;
      v28 = 1.0;
      goto LABEL_19;
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
      [routingCornerView2 setAlpha:1.0];

      parentContainerView4 = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView4 setAlpha:1.0];

      effectiveFooterView2 = [(MRPlatterViewController *)self effectiveFooterView];
      v17 = effectiveFooterView2;
      v14 = 0.0;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_21;
      }

      routingCornerView3 = [(MRPlatterViewController *)self routingCornerView];
      v14 = 0.0;
      [routingCornerView3 setAlpha:0.0];

      parentContainerView5 = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView5 setAlpha:0.0];

      effectiveFooterView2 = [(MRPlatterViewController *)self effectiveFooterView];
      v17 = effectiveFooterView2;
    }

    [effectiveFooterView2 setAlpha:0.0];

    parentContainerView3 = [(MRPlatterViewController *)self parentContainerView];
    topDividerView = [parentContainerView3 topDividerView];
    v24 = topDividerView;
    v28 = 0.0;
    goto LABEL_19;
  }

  routingCornerView4 = [(MRPlatterViewController *)self routingCornerView];
  v14 = 0.0;
  [routingCornerView4 setAlpha:0.0];

  parentContainerView6 = [(MRPlatterViewController *)self parentContainerView];
  [parentContainerView6 setAlpha:1.0];

  effectiveFooterView3 = [(MRPlatterViewController *)self effectiveFooterView];
  [effectiveFooterView3 setAlpha:1.0];

  _canToggleRoutingPicker = [(MRPlatterViewController *)self _canToggleRoutingPicker];
  parentContainerView3 = [(MRPlatterViewController *)self parentContainerView];
  topDividerView = [parentContainerView3 topDividerView];
  v24 = topDividerView;
  if (_canToggleRoutingPicker)
  {
    [topDividerView setAlpha:1.0];

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
  [topDividerView setAlpha:v28];

LABEL_20:
  parentContainerView7 = [(MRPlatterViewController *)self parentContainerView];
  bottomDividerView = [parentContainerView7 bottomDividerView];
  [bottomDividerView setAlpha:v14];

LABEL_21:
  [(MRPlatterViewController *)self _updateOnScreenForStyle:self->_style];
  if ((self->_style - 1) <= 1)
  {
    [(MRPlatterViewController *)self _dismissShareAudioViewController];
  }

  view = [(MRPlatterViewController *)self view];
  [view setNeedsLayout];
}

- (id)_tvMediaRemoteIdentifier
{
  _route = [(MRPlatterViewController *)self _route];
  if ((([_route isAppleTVRoute] & 1) != 0 || objc_msgSend(_route, "containsDeviceWithSubtype:", 18)) && (objc_msgSend(_route, "endpoint"), MRAVEndpointGetExternalDevice()))
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
  _route = [(MRPlatterViewController *)self _route];
  endpointWrapper = [_route endpointWrapper];
  [endpointWrapper unwrappedValue];
  v4 = MRAVEndpointCopyOutputDevices();

  [v4 firstObject];
  if (([_route isAppleTVRoute] & 1) != 0 || objc_msgSend(_route, "isTVRoute") && MRAVOutputDeviceIsAddedToHomeKit())
  {
    groupLeaderAirplayIdentifier = [_route groupLeaderAirplayIdentifier];
LABEL_3:
    v6 = groupLeaderAirplayIdentifier;
    goto LABEL_11;
  }

  if ([_route isDeviceRoute] && objc_msgSend(_route, "isAirPlayingToDevice"))
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

    groupLeaderAirplayIdentifier = MRAVOutputDeviceCopyUniqueIdentifier();
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
    mEMORY[0x1E69D6100] = [MEMORY[0x1E69D6100] sharedInstance];
    [mEMORY[0x1E69D6100] prewarm];
  }
}

- (BOOL)_shouldUseViewServiceToPresentTVRemote
{
  delegate = [(MRPlatterViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate shouldPresentUsingViewServicePlatterViewController:self] & 1) == 0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (self->_visualStylingProvider != providerCopy)
  {
    v17 = providerCopy;
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MediaControlsHeaderView *)self->_nowPlayingHeaderView setVisualStylingProvider:self->_visualStylingProvider];
    visualStylingProvider = self->_visualStylingProvider;
    timeControl = [(MediaControlsParentContainerView *)self->_parentContainerView timeControl];
    [timeControl setVisualStylingProvider:visualStylingProvider];

    v9 = self->_visualStylingProvider;
    transportStackView = [(MediaControlsParentContainerView *)self->_parentContainerView transportStackView];
    [transportStackView setVisualStylingProvider:v9];

    v11 = self->_visualStylingProvider;
    topDividerView = [(MediaControlsParentContainerView *)self->_parentContainerView topDividerView];
    [topDividerView setVisualStylingProvider:v11];

    v13 = self->_visualStylingProvider;
    bottomDividerView = [(MediaControlsParentContainerView *)self->_parentContainerView bottomDividerView];
    [bottomDividerView setVisualStylingProvider:v13];

    [(MediaControlsVolumeContainerView *)self->_volumeContainerView setVisualStylingProvider:self->_visualStylingProvider];
    [(MRMediaControlsVideoPickerHeaderView *)self->_videoPickerHeaderView setVisualStylingProvider:self->_visualStylingProvider];
    [(MRMediaControlsVideoPickerFooterView *)self->_videoPickerFooterView setVisualStylingProvider:self->_visualStylingProvider];
    routingViewController = [(MRPlatterViewController *)self routingViewController];
    _tableView = [routingViewController _tableView];
    [_tableView reloadData];

    providerCopy = v17;
  }
}

- (SFShareAudioViewController)shareAudioViewController
{
  shareAudioViewController = self->_shareAudioViewController;
  if (!shareAudioViewController)
  {
    instantiateViewController = [MEMORY[0x1E69CDFD0] instantiateViewController];
    [instantiateViewController setFlags:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MRPlatterViewController_shareAudioViewController__block_invoke;
    v8[3] = &unk_1E7663DA8;
    v8[4] = self;
    [instantiateViewController setCompletion:v8];
    v5 = self->_shareAudioViewController;
    self->_shareAudioViewController = instantiateViewController;
    v6 = instantiateViewController;

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
    _showShareAudioViewController = [MRPlatterViewController _showShareAudioViewController];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(_showShareAudioViewController);
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
    selfCopy = self;
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

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning == transitioning)
  {
    return;
  }

  transitioningCopy = transitioning;
  self->_transitioning = transitioning;
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setTransitioning:transitioningCopy];

  style = self->_style;
  if (style == 2)
  {
    v9 = !self->_transitioning;
    routingCornerView = [(MRPlatterViewController *)self routingCornerView];
    [routingCornerView setHidden:v9];

    v11 = !self->_transitioning;
    parentContainerView = [(MRPlatterViewController *)self parentContainerView];
    [parentContainerView setHidden:v11];
  }

  else
  {
    if (style != 1)
    {
      v14 = !self->_transitioning;
      routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
      [routingCornerView2 setHidden:v14];

      parentContainerView2 = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView2 setHidden:0];

      v13 = 0;
      goto LABEL_8;
    }

    routingCornerView3 = [(MRPlatterViewController *)self routingCornerView];
    [routingCornerView3 setHidden:0];

    parentContainerView3 = [(MRPlatterViewController *)self parentContainerView];
    [parentContainerView3 setHidden:0];
  }

  v13 = !self->_transitioning;
LABEL_8:
  effectiveFooterView = [(MRPlatterViewController *)self effectiveFooterView];
  [effectiveFooterView setHidden:v13];
}

- (void)setDisplayElements:(id)elements
{
  elementsCopy = elements;
  if (![(NSArray *)self->_displayElements isEqualToArray:?])
  {
    v4 = [elementsCopy copy];
    displayElements = self->_displayElements;
    self->_displayElements = v4;

    isDeviceUnlocked = [(MRPlatterViewController *)self isDeviceUnlocked];
    endpointController = [(MRPlatterViewController *)self endpointController];
    [endpointController setDeviceUnlocked:isDeviceUnlocked];
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    endpointController = [(MRPlatterViewController *)self endpointController];
    [endpointController setOnScreen:screenCopy];

    endpointController2 = [(MRPlatterViewController *)self endpointController];
    proxyDelegate = [endpointController2 proxyDelegate];

    if (screenCopy)
    {
      [proxyDelegate beginObserving];
    }

    else
    {
      [proxyDelegate endObserving];
    }

    [(MRPlatterViewController *)self _updateOnScreenForStyle:self->_style];
  }
}

- (void)_updateOnScreenForStyle:(int64_t)style
{
  v4 = (style < 5) & (0x19u >> style);
  isOnScreen = [(MRPlatterViewController *)self isOnScreen];
  volumeContainerView = [(MRPlatterViewController *)self volumeContainerView];
  [volumeContainerView setOnScreen:v4 & isOnScreen];

  isOnScreen2 = [(MRPlatterViewController *)self isOnScreen];
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setMarqueeEnabled:isOnScreen2];
}

- (void)setSupportedModes:(unint64_t)modes
{
  if (self->_supportedModes != modes)
  {
    self->_supportedModes = modes;
    supportedModes = [(MRPlatterViewController *)self supportedModes];
    v6 = supportedModes & (1 << [(MRPlatterViewController *)self selectedMode]);
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

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
  }
}

- (void)setSelectedMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  if (((1 << mode) & ~[(MRPlatterViewController *)self supportedModes]) == 0)
  {
    parentContainerView = [(MRPlatterViewController *)self parentContainerView];
    [parentContainerView setSelectedMode:mode animated:animatedCopy];

    if (self->_selectedMode != mode)
    {
      self->_selectedMode = mode;
      [(MRPlatterViewController *)self _updateConfiguration];
      view = [(MRPlatterViewController *)self view];
      [view setNeedsLayout];
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

  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setButtonType:v3];
}

- (void)endpointController:(id)controller didLoadNewResponse:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  controllerCopy = controller;
  v8 = MCLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    tracklist = [responseCopy tracklist];
    playingItem = [tracklist playingItem];
    v19 = 138412546;
    v20 = responseCopy;
    v21 = 2112;
    v22 = playingItem;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRPlatterViewController] didLoadNewResponse %@. PlayingItem: %@.", &v19, 0x16u);
  }

  representedBundleID = [controllerCopy representedBundleID];

  _routingController = [(MPAVRoutingViewController *)self->_routingViewController _routingController];
  [_routingController setRepresentedBundleID:representedBundleID];

  endpointController = [(MRPlatterViewController *)self endpointController];
  response = [endpointController response];
  tracklist2 = [response tracklist];
  playingItem2 = [tracklist2 playingItem];
  languageOptionGroups = [playingItem2 languageOptionGroups];

  if ([languageOptionGroups count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_languageOptionsViewController);
    [WeakRetained setLanguageOptionGroups:languageOptionGroups];
  }

  [(MRPlatterViewController *)self _updateHeaderUI];
}

- (void)endpointControllerDidUpdateRoutingAvailability:(id)availability
{
  [(MRPlatterViewController *)self _updateRoutingCornerView];
  [(MRPlatterViewController *)self _updateRoutingIndicators];

  [(MRPlatterViewController *)self _updateRouteNameLabel];
}

- (void)endpointControllerRouteDidUpdate:(id)update
{
  updateCopy = update;
  volumeContainerView = [(MRPlatterViewController *)self volumeContainerView];
  volumeSlider = [volumeContainerView volumeSlider];

  if (volumeSlider)
  {
    route = [updateCopy route];
    volumeContainerView2 = [(MRPlatterViewController *)self volumeContainerView];
    volumeSlider2 = [volumeContainerView2 volumeSlider];
    [volumeSlider2 setGroupRoute:route];
  }

  [(MRPlatterViewController *)self _updateRouteNameLabel];
  parentContainerView = [(MRPlatterViewController *)self parentContainerView];
  transportStackView = [parentContainerView transportStackView];
  [transportStackView updateOnRouteChange];

  [(MRPlatterViewController *)self _prewarmTVRemoteIfNeeded];
  delegate = [(MRPlatterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate platterViewController:self shouldDisplayPlatterDidChange:{-[MRPlatterViewController shouldDisplayPlatter](self, "shouldDisplayPlatter")}];
  }
}

- (void)_updateHeaderUI
{
  if (![(MRPlatterViewController *)self isOnScreen])
  {
    return;
  }

  endpointController = [(MRPlatterViewController *)self endpointController];
  response = [endpointController response];

  parentContainerView = [(MRPlatterViewController *)self parentContainerView];
  containerView = [parentContainerView containerView];
  [containerView setResponse:response];

  if (!response)
  {
    goto LABEL_13;
  }

  isDeviceSystemRoute = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute];
  tracklist = [response tracklist];
  playingItemIndexPath = [tracklist playingItemIndexPath];

  if (!isDeviceSystemRoute || playingItemIndexPath != 0)
  {
    if (playingItemIndexPath)
    {
      tracklist2 = [response tracklist];
      items = [tracklist2 items];
      firstSection = [items firstSection];
      metadataObject = [firstSection metadataObject];

      tracklist3 = [response tracklist];
      items2 = [tracklist3 items];
      tracklist4 = [response tracklist];
      playingItemIndexPath2 = [tracklist4 playingItemIndexPath];
      v18 = [items2 itemAtIndexPath:playingItemIndexPath2];

      explicitBadge = [v18 explicitBadge];
      v20 = explicitBadge;
      if (explicitBadge)
      {
        v21 = explicitBadge;
      }

      else
      {
        v21 = @"🅴";
      }

      v22 = [@" " stringByAppendingString:v21];
      [(MRPlatterViewController *)self setExplicitString:v22];

      metadataObject2 = [v18 metadataObject];
      [(MRPlatterViewController *)self _updateControlCenterMetadata:metadataObject2 sectionMetadata:metadataObject];

      goto LABEL_39;
    }

LABEL_13:
    endpointController2 = [(MRPlatterViewController *)self endpointController];
    configuration = [endpointController2 configuration];

    endpointController3 = [(MRPlatterViewController *)self endpointController];
    state = [endpointController3 state];

    if ((state - 1) >= 2)
    {
      if (state == -1)
      {
        if (!configuration || self->_style == 3)
        {
          metadataObject = &stru_1F1445548;
LABEL_29:
          endpointController4 = [(MRPlatterViewController *)self endpointController];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            endpointController5 = [(MRPlatterViewController *)self endpointController];
            v44 = [endpointController5 isEndpointDiscovered] ^ 1;
          }

          else
          {
            v44 = 0;
          }

          nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
          [nowPlayingHeaderView setPrimaryString:metadataObject];

          if (v44)
          {
            nowPlayingHeaderView = [(MRPlatterViewController *)self placeholderString];
            v46 = nowPlayingHeaderView != 0;
          }

          else
          {
            v46 = 0;
          }

          nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
          [nowPlayingHeaderView2 setShowPlaceholderString:v46];

          if (v44)
          {
          }

          nowPlayingHeaderView3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
          v39 = nowPlayingHeaderView3;
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

    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    metadataObject = [mediaControlsBundle localizedStringForKey:v28 value:&stru_1F1445548 table:@"MediaControls"];

    goto LABEL_29;
  }

  endpointController6 = [(MRPlatterViewController *)self endpointController];
  representedBundleID = [endpointController6 representedBundleID];
  v31 = representedBundleID;
  if (representedBundleID)
  {
    v32 = representedBundleID;
  }

  else
  {
    v32 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  }

  metadataObject = v32;

  v33 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:metadataObject];
  localizedName = [v33 localizedName];
  v35 = localizedName;
  if (localizedName)
  {
    v36 = localizedName;
  }

  else
  {
    v36 = &stru_1F1445548;
  }

  nowPlayingHeaderView4 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView4 setPrimaryString:v36];

  nowPlayingHeaderView3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  v39 = nowPlayingHeaderView3;
LABEL_38:
  [nowPlayingHeaderView3 setSecondaryString:&stru_1F1445548];

  secondaryStringComponents = [(MRPlatterViewController *)self secondaryStringComponents];
  [secondaryStringComponents removeAllObjects];

  [(MRPlatterViewController *)self _updateSecondaryStringFormat];
  [(MRPlatterViewController *)self setArtworkCatalog:0];
  nowPlayingHeaderView5 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  artworkView = [nowPlayingHeaderView5 artworkView];
  [artworkView clearArtworkCatalogs];

  [(MRPlatterViewController *)self _updatePlaceholderArtwork];
LABEL_39:

  [(MRPlatterViewController *)self _updateRouteNameLabel];
  [(MRPlatterViewController *)self _updateRoutingCornerView];
  [(MRPlatterViewController *)self _updateRoutingIndicators];
}

- (void)_updateControlCenterMetadata:(id)metadata sectionMetadata:(id)sectionMetadata
{
  sectionMetadataCopy = sectionMetadata;
  song = [metadata song];
  if ([sectionMetadataCopy type] == 13)
  {
    radioStation = [sectionMetadataCopy radioStation];
  }

  else
  {
    radioStation = 0;
  }

  isExplicitSong = [song isExplicitSong];
  title = [song title];
  if (isExplicitSong)
  {
    isExplicitSong = [(MRPlatterViewController *)self explicitString];
    bundleID = [title stringByAppendingString:isExplicitSong];

    title = bundleID;
  }

  localizedName = title;
  if (!title)
  {
    v13 = MEMORY[0x1E69635E0];
    isExplicitSong = [(MRPlatterViewController *)self endpointController];
    bundleID = [isExplicitSong bundleID];
    v5 = [v13 applicationProxyForIdentifier:bundleID];
    localizedName = [v5 localizedName];
  }

  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setPrimaryString:localizedName];

  if (!title)
  {
  }

  secondaryStringComponents = [(MRPlatterViewController *)self secondaryStringComponents];
  [secondaryStringComponents removeAllObjects];

  if ([song shouldShowComposer])
  {
    composer = [song composer];
    name = [composer name];

    if ([name length])
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v20 = [mediaControlsBundle localizedStringForKey:@"COMPOSED_BY_TITLE_%@" value:&stru_1F1445548 table:@"MediaControls"];
      v21 = [v18 initWithFormat:v20, name];

      secondaryStringComponents2 = [(MRPlatterViewController *)self secondaryStringComponents];
      [secondaryStringComponents2 addObject:v21];
    }
  }

  artist = [song artist];
  name2 = [artist name];

  if ([name2 length])
  {
    secondaryStringComponents3 = [(MRPlatterViewController *)self secondaryStringComponents];
    [secondaryStringComponents3 addObject:name2];
  }

  album = [song album];
  title2 = [album title];

  if ([title2 length])
  {
    secondaryStringComponents4 = [(MRPlatterViewController *)self secondaryStringComponents];
    [secondaryStringComponents4 addObject:title2];
  }

  attributionLabel = [radioStation attributionLabel];
  if ([attributionLabel length])
  {
    secondaryStringComponents5 = [(MRPlatterViewController *)self secondaryStringComponents];
    [secondaryStringComponents5 addObject:attributionLabel];
  }

  secondaryStringComponents6 = [(MRPlatterViewController *)self secondaryStringComponents];
  v32 = [secondaryStringComponents6 componentsJoinedByString:@" — "];
  nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView2 setSecondaryString:v32];

  artworkCatalog = [song artworkCatalog];
  [(MRPlatterViewController *)self setArtworkCatalog:artworkCatalog];

  [(MRPlatterViewController *)self _updateSecondaryStringFormat];
  view = [(MRPlatterViewController *)self view];
  [view setNeedsLayout];
}

- (void)_updateRouteNameLabel
{
  v30 = *MEMORY[0x1E69E9840];
  route = [(MediaControlsEndpointController *)self->_endpointController route];
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  routeLabel = [nowPlayingHeaderView routeLabel];
  [routeLabel setRoute:route];

  endpointController = [(MRPlatterViewController *)self endpointController];
  response = [endpointController response];
  playerPath = [response playerPath];
  bundleID = [playerPath bundleID];
  if ([bundleID isEqualToString:@"com.apple.duetexpertd"])
  {
    v10 = 1;
  }

  else
  {
    endpointController2 = [(MRPlatterViewController *)self endpointController];
    response2 = [endpointController2 response];
    playerPath2 = [response2 playerPath];
    bundleID2 = [playerPath2 bundleID];
    v10 = [bundleID2 isEqualToString:@"duetexpertd"];
  }

  endpointController3 = [(MRPlatterViewController *)self endpointController];
  response3 = [endpointController3 response];
  playerPath3 = [response3 playerPath];
  playerID = [playerPath3 playerID];
  v19 = [playerID isEqualToString:@"MagicalMomentsPlayer"];

  if (v19)
  {
    v20 = MCLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      endpointController4 = [(MRPlatterViewController *)self endpointController];
      response4 = [endpointController4 response];
      playerPath4 = [response4 playerPath];
      bundleID3 = [playerPath4 bundleID];
      v28 = 138412290;
      v29 = bundleID3;
      _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "MRPlatterViewController displaying MagicalMomentsPlayer suggestion for bundleID=%@", &v28, 0xCu);
    }
  }

  nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  routeLabel2 = [nowPlayingHeaderView2 routeLabel];
  [routeLabel2 setDisplayAsSiriSuggestion:v10 & v19];

  view = [(MRPlatterViewController *)self view];
  [view setNeedsLayout];
}

- (void)setArtworkCatalog:(id)catalog
{
  v28 = *MEMORY[0x1E69E9840];
  catalogCopy = catalog;
  artworkCatalog = self->_artworkCatalog;
  if (!catalogCopy)
  {
    self->_artworkCatalog = 0;

    nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
    artworkView = [nowPlayingHeaderView artworkView];
    [artworkView setImage:0];

    [(MRPlatterViewController *)self _updatePlaceholderArtwork];
    effectiveHeaderView = [(MRPlatterViewController *)self effectiveHeaderView];
    [effectiveHeaderView setNeedsLayout];

    goto LABEL_11;
  }

  if (![(MPArtworkCatalog *)artworkCatalog isArtworkVisuallyIdenticalToCatalog:catalogCopy])
  {
    self->_failedArtworkRetryCount = 0;
LABEL_10:
    self->_failedToLoadArtwork = 0;
    objc_storeStrong(&self->_artworkCatalog, catalog);
    [(MPArtworkCatalog *)self->_artworkCatalog setFittingSize:60.0, 60.0];
    traitCollection = [(MRPlatterViewController *)self traitCollection];
    [traitCollection displayScale];
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
    nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
    artworkView2 = [nowPlayingHeaderView2 artworkView];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__MRPlatterViewController_setArtworkCatalog___block_invoke_133;
    v22[3] = &unk_1E7665B10;
    objc_copyWeak(&v23, buf);
    [(MPArtworkCatalog *)v17 setDestination:artworkView2 configurationBlock:v22];

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
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  artworkView = [nowPlayingHeaderView artworkView];
  [artworkView setImage:0];

  [(MRPlatterViewController *)self _updatePlaceholderArtwork];
}

- (void)_updatePlaceholderArtwork
{
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  artworkView = [nowPlayingHeaderView artworkView];
  image = [artworkView image];

  if (image)
  {
    return;
  }

  endpointController = [(MRPlatterViewController *)self endpointController];
  representedBundleID = [endpointController representedBundleID];
  v8 = representedBundleID;
  if (representedBundleID)
  {
    v9 = representedBundleID;
  }

  else
  {
    v9 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  }

  v35 = v9;

  endpointController2 = [(MRPlatterViewController *)self endpointController];
  playerPath = [endpointController2 playerPath];
  if (!playerPath)
  {
    goto LABEL_12;
  }

  v12 = playerPath;
  _route = [(MRPlatterViewController *)self _route];
  if (!_route)
  {

LABEL_12:
LABEL_13:
    _route2 = [(MRPlatterViewController *)self _route];

    placeholderDeviceIdentifier = [(MRPlatterViewController *)self placeholderDeviceIdentifier];

    v25 = MEMORY[0x1E6970490];
    if (!placeholderDeviceIdentifier || _route2)
    {
      _route3 = [(MRPlatterViewController *)self _route];
      v27 = [v25 _iconImageForRoute:_route3];
    }

    else
    {
      _route3 = [(MRPlatterViewController *)self placeholderDeviceIdentifier];
      v27 = [v25 _iconImageForIdentifier:_route3];
    }

    _currentDeviceRoutingIconImage = v27;

    goto LABEL_18;
  }

  v14 = _route;
  isDeviceSystemRoute = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute];

  if (!isDeviceSystemRoute)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v35];
  localizedName = [v16 localizedName];

  if (localizedName)
  {
    traitCollection = [(MRPlatterViewController *)self traitCollection];
    [traitCollection displayScale];
    if (v19 == 0.0)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    _currentDeviceRoutingIconImage = [MEMORY[0x1E69DCAB8] _applicationIconImageForBundleIdentifier:v35 format:0 scale:v22];
    v29 = 0;
    goto LABEL_19;
  }

  _currentDeviceRoutingIconImage = [MEMORY[0x1E6970490] _currentDeviceRoutingIconImage];
LABEL_18:
  v29 = 1;
LABEL_19:
  nowPlayingHeaderView2 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  placeholderArtworkView = [nowPlayingHeaderView2 placeholderArtworkView];
  [placeholderArtworkView setImage:_currentDeviceRoutingIconImage];

  nowPlayingHeaderView3 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView3 setScalePlaceholderImage:v29];

  nowPlayingHeaderView4 = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView4 updateArtworkStyle];

  effectiveHeaderView = [(MRPlatterViewController *)self effectiveHeaderView];
  [effectiveHeaderView setNeedsLayout];
}

- (void)_updateSecondaryStringFormat
{
  style = self->_style;
  secondaryStringComponents = [(MRPlatterViewController *)self secondaryStringComponents];
  v7 = secondaryStringComponents;
  if (style == 1)
  {
    [secondaryStringComponents firstObject];
  }

  else
  {
    [secondaryStringComponents componentsJoinedByString:@" — "];
  }
  v5 = ;
  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setSecondaryString:v5];
}

- (void)footerViewButtonPressed:(id)pressed
{
  delegate = [(MRPlatterViewController *)self delegate];
  v5 = delegate;
  if (self->_style == 5)
  {
    v8 = delegate;
    v6 = objc_opt_respondsToSelector();
    v5 = v8;
    if (v6)
    {
      _routingController = [(MPAVRoutingViewController *)self->_routingViewController _routingController];
      [_routingController unpickTVRoutes];

      [v8 dismissPlatterViewController:self completion:0];
      v5 = v8;
    }
  }
}

- (void)headerViewButtonPressed:(id)pressed
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
    delegate = [(MRPlatterViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate dismissPlatterViewController:self completion:0];
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

- (void)_setRoutingPickerVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(MRPlatterViewController *)self delegate];
  v8 = 0.0;
  if (animatedCopy)
  {
    v8 = 0.25;
    if (objc_opt_respondsToSelector())
    {
      [delegate platterViewController:self willToggleRoutingPicker:{-[MRPlatterViewController selectedMode](self, "selectedMode") != 1}];
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__MRPlatterViewController__setRoutingPickerVisible_animated___block_invoke;
  v9[3] = &unk_1E76656C8;
  visibleCopy = visible;
  v9[4] = self;
  v11 = animatedCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8];
  if (objc_opt_respondsToSelector())
  {
    [delegate platterViewController:self didToggleRoutingPicker:{-[MRPlatterViewController selectedMode](self, "selectedMode") == 1}];
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v3 setPresentingAppBundleID:bundleIdentifier];

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

- (void)headerViewLaunchNowPlayingAppButtonPressed:(id)pressed
{
  delegate = [(MRPlatterViewController *)self delegate];
  endpointController = [(MRPlatterViewController *)self endpointController];
  configuration = [endpointController configuration];
  if ([configuration allowsNowPlayingApplicationLaunch])
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
      v9 = delegate;
      selfCopy2 = self;
LABEL_9:
      [v9 dismissPlatterViewController:selfCopy2 completion:v8];
      goto LABEL_10;
    }

    [(MediaControlsEndpointController *)self->_endpointController launchNowPlayingApp];
    goto LABEL_10;
  }

  allowsNowPlayingAppLaunch = [(MRPlatterViewController *)self allowsNowPlayingAppLaunch];

  if (allowsNowPlayingAppLaunch)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = delegate;
    selfCopy2 = self;
    v8 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)willTransitionToSize:(CGSize)size withCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  style = self->_style;
  if (style <= 4 && style != 3 && (self->_lastKnownSize.width != width || self->_lastKnownSize.height != height))
  {
    self->_lastKnownSize.width = width;
    self->_lastKnownSize.height = height;
    view = [(MRPlatterViewController *)self view];
    [view setClipsToBounds:1];

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
    [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
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

- (void)presentRatingActionSheet:(id)sheet sourceView:(id)view
{
  v92 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  viewCopy = view;
  likeCommand = [sheetCopy likeCommand];
  value = [likeCommand value];

  dislikeCommand = [sheetCopy dislikeCommand];
  value2 = [dislikeCommand value];

  wishlistCommand = [sheetCopy wishlistCommand];
  value3 = [wishlistCommand value];

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v13 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_34];
  view = [v12 view];
  [view setTintColor:v13];

  likeCommand2 = [sheetCopy likeCommand];

  if (likeCommand2)
  {
    v73 = value2;
    v16 = viewCopy;
    likeCommand3 = [sheetCopy likeCommand];
    localizedTitle = [likeCommand3 localizedTitle];
    v19 = localizedTitle;
    if (localizedTitle)
    {
      v20 = localizedTitle;
    }

    else
    {
      mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v20 = [mediaControlsBundle localizedStringForKey:@"LIKE_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
    }

    v22 = MEMORY[0x1E69DCAB8];
    mediaControlsBundle2 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v24 = [v22 imageNamed:@"CC-Action-Star" inBundle:mediaControlsBundle2];

    v25 = MEMORY[0x1E69DC648];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_2;
    v88[3] = &unk_1E7665B80;
    v89 = sheetCopy;
    v90 = value;
    v26 = [v25 _actionWithTitle:v20 image:v24 style:0 handler:v88 shouldDismissHandler:&__block_literal_global_160];
    [v26 _setChecked:value];
    [v12 addAction:v26];

    viewCopy = v16;
    value2 = v73;
  }

  dislikeCommand2 = [sheetCopy dislikeCommand];

  if (dislikeCommand2)
  {
    dislikeCommand3 = [sheetCopy dislikeCommand];
    localizedTitle2 = [dislikeCommand3 localizedTitle];
    v30 = localizedTitle2;
    if (localizedTitle2)
    {
      v31 = localizedTitle2;
    }

    else
    {
      mediaControlsBundle3 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
      v31 = [mediaControlsBundle3 localizedStringForKey:@"DISLIKE_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
    }

    v33 = MEMORY[0x1E69DCAB8];
    mediaControlsBundle4 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v35 = [v33 imageNamed:@"CC-Action-X" inBundle:mediaControlsBundle4];

    v36 = MEMORY[0x1E69DC648];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_4;
    v85[3] = &unk_1E7665B80;
    v86 = sheetCopy;
    v87 = value2;
    v37 = [v36 _actionWithTitle:v31 image:v35 style:0 handler:v85 shouldDismissHandler:&__block_literal_global_168];
    [v37 _setChecked:value2];
    [v12 addAction:v37];
  }

  wishlistCommand2 = [sheetCopy wishlistCommand];

  if (wishlistCommand2)
  {
    likeCommand4 = [sheetCopy likeCommand];
    if (likeCommand4)
    {
    }

    else
    {
      dislikeCommand4 = [sheetCopy dislikeCommand];

      if (!dislikeCommand4)
      {
LABEL_16:
        wishlistCommand3 = [sheetCopy wishlistCommand];
        localizedTitle3 = [wishlistCommand3 localizedTitle];
        v43 = localizedTitle3;
        if (localizedTitle3)
        {
          v44 = localizedTitle3;
        }

        else
        {
          mediaControlsBundle5 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
          v44 = [mediaControlsBundle5 localizedStringForKey:@"BOOKMARK_TRACK_DEFAULT_TITLE" value:&stru_1F1445548 table:@"MediaControls"];
        }

        v46 = MEMORY[0x1E69DCAB8];
        mediaControlsBundle6 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
        v48 = [v46 imageNamed:@"CC-Action-Plus" inBundle:mediaControlsBundle6];

        v49 = MEMORY[0x1E69DC648];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_6;
        v82[3] = &unk_1E7665B80;
        v83 = sheetCopy;
        v84 = value3;
        v50 = [v49 _actionWithTitle:v44 image:v48 style:0 handler:v82 shouldDismissHandler:&__block_literal_global_176];
        [v50 _setChecked:value3];
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
  actions = [v12 actions];
  v52 = [actions countByEnumeratingWithState:&v78 objects:v91 count:16];
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
          objc_enumerationMutation(actions);
        }

        v56 = *(*(&v78 + 1) + 8 * i);
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [v56 _setTitleTextColor:labelColor];

        [v56 _setTitleTextAlignment:4];
      }

      v53 = [actions countByEnumeratingWithState:&v78 objects:v91 count:16];
    }

    while (v53);
  }

  v58 = MEMORY[0x1E69DC648];
  mediaControlsBundle7 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
  v60 = [mediaControlsBundle7 localizedStringForKey:@"CANCEL" value:&stru_1F1445548 table:@"MediaControls"];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __63__MRPlatterViewController_presentRatingActionSheet_sourceView___block_invoke_8;
  v76[3] = &unk_1E7665BC8;
  v77 = v12;
  v61 = v12;
  v62 = [v58 actionWithTitle:v60 style:1 handler:v76];

  [v61 addAction:v62];
  popoverPresentationController = [v61 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [viewCopy bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  popoverPresentationController2 = [v61 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v65, v67, v69, v71}];

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
  _tvMediaRemoteIdentifier = [(MRPlatterViewController *)self _tvMediaRemoteIdentifier];
  if (_tvMediaRemoteIdentifier)
  {
    v4 = 1;
  }

  else
  {
    _tvAirplayIdentifier = [(MRPlatterViewController *)self _tvAirplayIdentifier];
    v4 = _tvAirplayIdentifier != 0;
  }

  return v4;
}

- (void)presentTVRemote
{
  _tvMediaRemoteIdentifier = [(MRPlatterViewController *)self _tvMediaRemoteIdentifier];
  if (_tvMediaRemoteIdentifier)
  {
    v3 = 0;
  }

  else
  {
    _tvMediaRemoteIdentifier = [(MRPlatterViewController *)self _tvAirplayIdentifier];
    v3 = 1;
  }

  _route = [(MRPlatterViewController *)self _route];
  isTVRoute = [_route isTVRoute];

  if (isTVRoute)
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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    lowercaseString = [bundleIdentifier lowercaseString];
    v11 = [lowercaseString isEqualToString:@"com.apple.siri"];

    if (v11)
    {
      v7 = 7;
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      lowercaseString2 = [bundleIdentifier2 lowercaseString];
      v15 = [lowercaseString2 isEqualToString:@"com.apple.home"];

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

  if (_tvMediaRemoteIdentifier)
  {
    if ([(MRPlatterViewController *)self _shouldUseViewServiceToPresentTVRemote])
    {
      WeakRetained = [objc_alloc(MEMORY[0x1E69D60F8]) initWithDeviceIdentifier:_tvMediaRemoteIdentifier identifierType:v3 deviceType:v6 launchContext:v7 launchMethod:0];
      mEMORY[0x1E69D6100] = [MEMORY[0x1E69D6100] sharedInstance];
      [mEMORY[0x1E69D6100] presentWithContext:WeakRetained];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      mEMORY[0x1E69D6100] = objc_alloc_init(MEMORY[0x1E69D60F0]);
      [mEMORY[0x1E69D6100] configureWithDeviceIdentifier:_tvMediaRemoteIdentifier identifierType:v3 deviceType:v6 launchContext:5];
      view = [mEMORY[0x1E69D6100] view];
      [view setClipsToBounds:1];

      [mEMORY[0x1E69D6100] setModalPresentationStyle:4];
      [mEMORY[0x1E69D6100] setTransitioningDelegate:self->_transitioningDelegate];
      presentationController = [mEMORY[0x1E69D6100] presentationController];
      if (objc_opt_respondsToSelector())
      {
        v20 = [WeakRetained platterViewController:self presentingViewForPresentedViewController:mEMORY[0x1E69D6100]];
        [presentationController setPresentingView:v20];
      }

      view2 = [(MRPlatterViewController *)self view];
      superview = [view2 superview];
      view3 = [(MRPlatterViewController *)self view];
      [view3 center];
      v25 = v24;
      v27 = v26;
      view4 = [(MRPlatterViewController *)self view];
      window = [view4 window];
      [superview convertPoint:window toView:{v25, v27}];
      [presentationController setSourcePoint:?];

      traitCollection = [(MRPlatterViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        CCUIExpandedModuleEdgeInsets();
        [presentationController setEdgeInsets:?];
        CCUIExpandedModuleContinuousCornerRadius();
        v33 = v32;
        view5 = [mEMORY[0x1E69D6100] view];
        [view5 _setContinuousCornerRadius:v33];
      }

      [(MRPlatterViewController *)self presentViewController:mEMORY[0x1E69D6100] animated:1 completion:0];
    }
  }
}

- (void)_platterViewControllerReceivedInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(MRPlatterViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate platterViewController:self didReceiveInteractionEvent:interactionCopy];
  }

  selfCopy = self;
  delegate2 = [(MRPlatterViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate2 mediaControlsPanelViewController:selfCopy didReceiveInteractionEvent:interactionCopy];
  }
}

- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item
{
  actionIdentifier = [item actionIdentifier];
  v6 = [actionIdentifier isEqualToString:*MEMORY[0x1E696F8A8]];

  if (v6)
  {

    [(MRPlatterViewController *)self _showShareAudioViewController];
  }
}

- (void)routingViewController:(id)controller didPickRoute:(id)route
{
  routeCopy = route;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained platterViewController:self didPickRoute:routeCopy];
  }
}

- (UIEdgeInsets)contentInsetsForRoutingViewController:(id)controller
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

- (void)routingViewController:(id)controller willDisplayCell:(id)cell
{
  visualStylingProvider = self->_visualStylingProvider;
  cellCopy = cell;
  v19 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
  v7 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:1];
  v8 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:3];
  v9 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:5];
  isEnabled = [cellCopy isEnabled];
  titleView = [cellCopy titleView];
  v12 = isEnabled == 0;
  if (isEnabled)
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

  [titleView mt_replaceVisualStyling:v13];

  subtitleView = [cellCopy subtitleView];
  [subtitleView mt_replaceVisualStyling:v14];

  iconView = [cellCopy iconView];
  [iconView mt_replaceVisualStyling:v13];

  separatorView = [cellCopy separatorView];
  [separatorView mt_replaceVisualStyling:v9];

  volumeSlider = [cellCopy volumeSlider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [volumeSlider setMinimumTrackVisualProvider:self->_visualStylingProvider];
    [volumeSlider setMaximumTrackVisualProvider:self->_visualStylingProvider];
  }
}

- (void)routingViewController:(id)controller willDisplayHeaderView:(id)view
{
  visualStylingProvider = self->_visualStylingProvider;
  viewCopy = view;
  v7 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
  textLabel = [viewCopy textLabel];

  [textLabel mt_replaceVisualStyling:v7];
}

- (void)setRoutingViewController:(id)controller
{
  controllerCopy = controller;
  routingViewController = self->_routingViewController;
  if (routingViewController != controllerCopy)
  {
    v10 = controllerCopy;
    v7 = routingViewController;
    objc_storeStrong(&self->_routingViewController, controller);
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
      view = [(MPAVRoutingViewController *)self->_routingViewController view];
      parentContainerView = [(MRPlatterViewController *)self parentContainerView];
      [parentContainerView setRoutingView:view];

      if ([(MRPlatterViewController *)self isOnScreen])
      {
        [(MPAVRoutingViewController *)self->_routingViewController endAppearanceTransition];
      }

      [(MPAVRoutingViewController *)v7 endAppearanceTransition];
    }

    controllerCopy = v10;
  }
}

- (BOOL)shouldEnableSyncingForSlider:(id)slider
{
  individualVolumeSliders = [(MPVolumeGroupSliderCoordinator *)self->_groupSliderCoordinator individualVolumeSliders];
  v5 = [individualVolumeSliders count] >= 2 && -[MRPlatterViewController selectedMode](self, "selectedMode") == 1;

  return v5;
}

- (BOOL)slider:(id)slider syncStateWillChangeFromState:(int64_t)state toState:(int64_t)toState
{
  sliderCopy = slider;
  if (toState == 4)
  {
    if (state == 2)
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

  if (toState != 1)
  {
    goto LABEL_6;
  }

  LODWORD(self) = [(MPVolumeGroupSliderCoordinator *)self->_groupSliderCoordinator synced]^ 1;
LABEL_7:

  return self;
}

- (BOOL)slider:(id)slider shouldCancelSnapWithTouch:(id)touch
{
  touchCopy = touch;
  view = [(MRPlatterViewController *)self view];
  [touchCopy locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(MRPlatterViewController *)self view];
  LOBYTE(touchCopy) = [view2 pointInside:0 withEvent:{v8, v10}];

  return touchCopy ^ 1;
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

  routingCornerView = [(MRPlatterViewController *)self routingCornerView];
  [routingCornerView setRouting:v3];

  if ([(MediaControlsEndpointController *)self->_endpointController isRoutingToWireless])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute]^ 1;
  }

  nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
  [nowPlayingHeaderView setRouting:v5];

  if ([(MediaControlsEndpointController *)self->_endpointController hasAvailableRoutes])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(MediaControlsEndpointController *)self->_endpointController isDeviceSystemRoute]^ 1;
  }

  routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
  [routingCornerView2 setRoutesAvailable:v7];
}

- (void)setRoutingCornerViewTappedBlock:(id)block
{
  if (self->_expandModuleBlock != block)
  {
    v4 = _Block_copy(block);
    expandModuleBlock = self->_expandModuleBlock;
    self->_expandModuleBlock = v4;

    MEMORY[0x1EEE66BB8](v4, expandModuleBlock);
  }
}

- (void)_updateRoutingIndicators
{
  endpointController = [(MRPlatterViewController *)self endpointController];
  bundleID = [endpointController bundleID];
  if (bundleID)
  {
    v5 = 1;
  }

  else
  {
    endpointController2 = [(MRPlatterViewController *)self endpointController];
    representedBundleID = [endpointController2 representedBundleID];
    v5 = representedBundleID != 0;
  }

  endpointController3 = [(MRPlatterViewController *)self endpointController];
  route = [endpointController3 route];

  if (([route isAppleTVRoute] & 1) != 0 || (objc_msgSend(route, "isTVRoute") & 1) != 0 || objc_msgSend(route, "containsDeviceWithSubtype:", 18))
  {
    routingCornerView = [(MRPlatterViewController *)self routingCornerView];
    [routingCornerView setDeviceType:2];

    nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
    routingButton = [nowPlayingHeaderView routingButton];
    v13 = routingButton;
    v14 = 2;
  }

  else
  {
    if (v5)
    {
      endpointController4 = [(MRPlatterViewController *)self endpointController];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__MRPlatterViewController__updateRoutingIndicators__block_invoke;
      v17[3] = &unk_1E7664FE8;
      v17[4] = self;
      [endpointController4 representsLongFormVideoContentWithCompletion:v17];

      goto LABEL_9;
    }

    routingCornerView2 = [(MRPlatterViewController *)self routingCornerView];
    [routingCornerView2 setDeviceType:1];

    nowPlayingHeaderView = [(MRPlatterViewController *)self nowPlayingHeaderView];
    routingButton = [nowPlayingHeaderView routingButton];
    v13 = routingButton;
    v14 = 1;
  }

  [routingButton setDeviceType:v14];

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

- (void)_routingCornerViewReceivedTap:(id)tap
{
  expandModuleBlock = self->_expandModuleBlock;
  if (expandModuleBlock)
  {
    expandModuleBlock[2](expandModuleBlock, a2, tap);
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

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__MRPlatterViewController_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_1E76639D0;
  v9 = layoutCopy;
  selfCopy = self;
  v7 = layoutCopy;
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

- (int64_t)lockScreenInternalRoutePickerOverrideWithDefaultStyle:(int64_t)style
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Music"];
  v5 = [v4 stringForKey:@"LockScreenRoutingStyleOverride"];
  if (([v5 isEqualToString:@"Default"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"ControlCenter"])
    {
      style = 0;
    }

    else if ([v5 isEqualToString:@"SingleSelect"])
    {
      style = 1;
    }

    else if ([v5 isEqualToString:@"MultiSelect"])
    {
      style = 2;
    }

    else if ([v5 isEqualToString:@"SharedQueue"])
    {
      style = 3;
    }

    else if ([v5 isEqualToString:@"VideoPicker"])
    {
      style = 4;
    }

    else if ([v5 isEqualToString:@"LocalTransportControls"])
    {
      style = 5;
    }

    else if ([v5 isEqualToString:@"AirPlayBluePill"])
    {
      style = 6;
    }

    else if ([v5 isEqualToString:@"MediumConfidenceVideoPicker"])
    {
      style = 7;
    }

    else if ([v5 isEqualToString:@"UpNextControls"])
    {
      style = 8;
    }
  }

  return style;
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
  route = [(MRPlatterViewController *)self route];
  v6 = route;
  if (route)
  {
    v7 = route;
  }

  else
  {
    v7 = @"<NONE>";
  }

  v20[2] = v7;
  v19[3] = @"name";
  routeName = [(MRPlatterViewController *)self routeName];
  v9 = routeName;
  if (routeName)
  {
    v10 = routeName;
  }

  else
  {
    v10 = @"<NONE>";
  }

  v20[3] = v10;
  v19[4] = @"routingViewController";
  routingViewController = [(MRPlatterViewController *)self routingViewController];
  v12 = routingViewController;
  if (routingViewController)
  {
    v13 = routingViewController;
  }

  else
  {
    v13 = @"<NONE>";
  }

  v20[4] = v13;
  v19[5] = @"endpointController";
  endpointController = [(MRPlatterViewController *)self endpointController];
  v15 = endpointController;
  if (endpointController)
  {
    v16 = endpointController;
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