@interface MRUActivityNowPlayingViewController
- (MRUActivityNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSURL)launchURL;
- (SBUISystemApertureAccessoryView)detachedMinimalView;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (double)preferredHeightForBottomSafeArea;
- (int64_t)artworkTransitionDirection;
- (unint64_t)presentationBehaviors;
- (void)createHapticViewController;
- (void)createWaveformViewController;
- (void)didSelectArtworkView:(id)view;
- (void)didSelectLabelView:(id)view;
- (void)didSelectLaunchNowPlaying:(id)playing;
- (void)didTapTransportButton:(id)button;
- (void)loadView;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d;
- (void)registerHapticObserver;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)transportControlsView:(id)view didSelectRoutingButton:(id)button;
- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button;
- (void)updateArtwork;
- (void)updateBundleID;
- (void)updateEverything;
- (void)updateLayout;
- (void)updateLayoutModesPreferringImmediateTransition:(BOOL)transition deferInCustomLayout:(BOOL)layout reason:(id)reason;
- (void)updateNowPlayingInfo;
- (void)updateRouteLabel;
- (void)updateRoutingButton;
- (void)updateSylingProvider;
- (void)updateTimeControls;
- (void)updateTransportControls;
- (void)updateVolumeControls;
- (void)updateWaveformVisibility;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MRUActivityNowPlayingViewController

- (MRUActivityNowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = MRUActivityNowPlayingViewController;
  v4 = [(MRUActivityNowPlayingViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_wasPlayingDuringLastPreferredLayoutUpdate = 0;
    v4->_preferredLayoutMode = 1;
    v4->_maximumLayoutMode = 1;
    v6 = +[MRUEndpointController proactiveUserSelectedEndpointController];
    v7 = [[MRUNowPlayingController alloc] initWithEndpointController:v6];
    controller = v5->_controller;
    v5->_controller = v7;

    tvRemoteController = [(MRUNowPlayingController *)v5->_controller tvRemoteController];
    [tvRemoteController setContext:7];

    [(MRUNowPlayingController *)v5->_controller addObserver:v5];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(MRUActivityNowPlayingView);
  [(MRUActivityNowPlayingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MRUActivityNowPlayingViewController;
  [(MRUActivityNowPlayingViewController *)&v17 viewDidLoad];
  view = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view artworkViews];
  firstObject = [artworkViews firstObject];
  [firstObject addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  view2 = [(MRUActivityNowPlayingViewController *)self view];
  headerView = [view2 headerView];
  labelView = [headerView labelView];
  [labelView addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  view3 = [(MRUActivityNowPlayingViewController *)self view];
  transportControlsView = [view3 transportControlsView];
  [transportControlsView setDelegate:self];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didSelectLaunchNowPlaying_];
  [(MRUActivityNowPlayingViewController *)self setLaunchNowPlayingGestureRecognizer:v11];

  view4 = [(MRUActivityNowPlayingViewController *)self view];
  launchNowPlayingGestureRecognizer = [(MRUActivityNowPlayingViewController *)self launchNowPlayingGestureRecognizer];
  [view4 addGestureRecognizer:launchNowPlayingGestureRecognizer];

  [(MRUActivityNowPlayingViewController *)self createWaveformViewController];
  [(MRUActivityNowPlayingViewController *)self createHapticViewController];
  [(MRUActivityNowPlayingViewController *)self updateEverything];
  [(MRUActivityNowPlayingViewController *)self registerHapticObserver];
  [(MRUActivityNowPlayingViewController *)self updateSylingProvider];
  view5 = [(MRUActivityNowPlayingViewController *)self view];
  transportControlsView2 = [view5 transportControlsView];
  leftButton = [transportControlsView2 leftButton];
  [leftButton addTarget:self action:sel_didTapTransportButton_ forControlEvents:64];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MRUActivityNowPlayingViewController;
  coordinatorCopy = coordinator;
  [(MRUActivityNowPlayingViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__MRUActivityNowPlayingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76645E8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&__block_literal_global_36];
}

void __90__MRUActivityNowPlayingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateLayout];
  [*(a1 + 32) updateSylingProvider];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)didSelectArtworkView:(id)view
{
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  [endpointController launchNowPlayingApp];
}

- (void)didSelectLabelView:(id)view
{
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  [endpointController launchNowPlayingApp];
}

- (void)didSelectLaunchNowPlaying:(id)playing
{
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  [endpointController launchNowPlayingApp];
}

- (void)didTapTransportButton:(id)button
{
  buttonCopy = button;
  view = [(MRUActivityNowPlayingViewController *)self view];
  transportControlsView = [view transportControlsView];
  leftButton = [transportControlsView leftButton];

  if (leftButton == buttonCopy)
  {
    v8 = [MEMORY[0x1E695DF00] now];
    [(MRUActivityNowPlayingViewController *)self setLastLeftButtonTapDate:v8];
  }
}

- (NSURL)launchURL
{
  if ([MEMORY[0x1E696AAE8] mru_isMusicBundleIdentifier:self->_associatedAppBundleIdentifier])
  {
    v3 = @"music://show-now-playing";
LABEL_5:
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    goto LABEL_7;
  }

  if ([MEMORY[0x1E696AAE8] mru_isPodcastsBundleIdentifier:self->_associatedAppBundleIdentifier])
  {
    v3 = @"podcasts://nowPlaying";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (void)updateLayoutModesPreferringImmediateTransition:(BOOL)transition deferInCustomLayout:(BOOL)layout reason:(id)reason
{
  layoutCopy = layout;
  transitionCopy = transition;
  v52 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v49 = reasonCopy;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] updateLayoutModes for %@", buf, 0xCu);
  }

  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];
  isPlaying = [nowPlayingInfo isPlaying];

  metadataController2 = [(MRUNowPlayingController *)self->_controller metadataController];
  bundleID = [metadataController2 bundleID];

  if (bundleID)
  {
    metadataController3 = [(MRUNowPlayingController *)self->_controller metadataController];
    nowPlayingInfo2 = [metadataController3 nowPlayingInfo];
    identifier = [nowPlayingInfo2 identifier];
    v15 = identifier != 0;
  }

  else
  {
    v15 = 0;
  }

  preferredLayoutMode = self->_preferredLayoutMode;
  v17 = isPlaying & v15;
  if ((isPlaying & v15) != 0)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  inactiveTransitionTimer = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
  if (inactiveTransitionTimer)
  {
    v20 = self->_activeLayoutMode == 4;

    if ((v20 | v17))
    {
      v21 = MCLogCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] Cancel transition timer.", buf, 2u);
      }

      inactiveTransitionTimer2 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
      [inactiveTransitionTimer2 invalidate];

      [(MRUActivityNowPlayingViewController *)self setInactiveTransitionTimer:0];
    }
  }

  v23 = 1;
  if (self->_wasPlayingDuringLastPreferredLayoutUpdate && (isPlaying & 1) == 0)
  {
    v23 = self->_activeLayoutMode != 1;
  }

  self->_wasPlayingDuringLastPreferredLayoutUpdate = isPlaying;
  if (preferredLayoutMode != v18 || transitionCopy)
  {
    if (v15 & ~v17 & (!transitionCopy && v23))
    {
      if (!layoutCopy || self->_activeLayoutMode != 4)
      {
        inactiveTransitionTimer3 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
        v31 = inactiveTransitionTimer3 == 0;

        if (v31)
        {
          v32 = MCLogCategoryDefault();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v32, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] Defer update layouts.", buf, 2u);
          }

          objc_initWeak(buf, self);
          v33 = MEMORY[0x1E69B14D8];
          currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
          [currentSettings quickControlsInactiveTimeout];
          v36 = v35;
          v37 = MEMORY[0x1E69E96A0];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __113__MRUActivityNowPlayingViewController_updateLayoutModesPreferringImmediateTransition_deferInCustomLayout_reason___block_invoke;
          v46[3] = &unk_1E7663AE8;
          objc_copyWeak(&v47, buf);
          v38 = [v33 timerWithInterval:0 repeats:MEMORY[0x1E69E96A0] queue:v46 block:v36];
          [(MRUActivityNowPlayingViewController *)self setInactiveTransitionTimer:v38];

          objc_destroyWeak(&v47);
          objc_destroyWeak(buf);
        }

        goto LABEL_19;
      }

      v24 = MCLogCategoryDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] Skip update for custom layout.", buf, 2u);
      }

LABEL_25:

      goto LABEL_19;
    }

    inactiveTransitionTimer4 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
    [inactiveTransitionTimer4 invalidate];

    [(MRUActivityNowPlayingViewController *)self setInactiveTransitionTimer:0];
    v26 = MCLogCategoryDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = SBUISystemApertureLayoutModeDescription();
      v28 = SBUISystemApertureLayoutModeDescription();
      *buf = 138412546;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_impl(&dword_1A20FC000, v26, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] Updating preferred layout from %@ to %@.", buf, 0x16u);
    }

    self->_preferredLayoutMode = v18;
    v29 = 4;
    if ((v17 & 1) == 0)
    {
      v29 = 1;
    }

    self->_maximumLayoutMode = v29;
    if (transitionCopy)
    {
      if (layoutCopy && self->_activeLayoutMode == 4)
      {
        v24 = MCLogCategoryDefault();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] Defer immediate transition for custom layout.", buf, 2u);
        }

        goto LABEL_25;
      }

      v39 = MCLogCategoryDefault();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v42 = SBUISystemApertureLayoutModeDescription();
        *buf = 138412290;
        v49 = v42;
        _os_log_impl(&dword_1A20FC000, v39, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] requestTransitionToPreferredLayoutMode %@", buf, 0xCu);
      }
    }

    else
    {
      if (self->_activeLayoutMode == 4)
      {
        goto LABEL_19;
      }

      v39 = MCLogCategoryDefault();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = SBUISystemApertureLayoutModeDescription();
        *buf = 138412290;
        v49 = v40;
        _os_log_impl(&dword_1A20FC000, v39, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] requestTransitionToPreferredLayoutMode %@", buf, 0xCu);
      }
    }

    systemApertureElementContext = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
    [systemApertureElementContext requestTransitionToPreferredLayoutMode];
  }

LABEL_19:
}

void __113__MRUActivityNowPlayingViewController_updateLayoutModesPreferringImmediateTransition_deferInCustomLayout_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:1 reason:@"inactiveTransitionTimer"];
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_activeLayoutMode != mode)
  {
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = SBUISystemApertureLayoutModeDescription();
      v7 = SBUISystemApertureLayoutModeDescription();
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] setActiveLayoutMode from %@ to %@", &v9, 0x16u);
    }

    self->_activeLayoutMode = mode;
    [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:0 deferInCustomLayout:1 reason:@"setActiveLayoutMode"];
    controller = [(MRUActivityNowPlayingViewController *)self controller];
    [controller updateAutomaticResponseLoading];

    [(MRUActivityNowPlayingViewController *)self updateEverything];
  }
}

- (double)preferredHeightForBottomSafeArea
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  [view preferredHeightForBottomSafeArea];
  v4 = v3;

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  leadingView = [view leadingView];

  return leadingView;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  trailingView = [view trailingView];

  return trailingView;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  leadingView = [view leadingView];

  return leadingView;
}

- (SBUISystemApertureAccessoryView)detachedMinimalView
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  detachedMinimalView = [view detachedMinimalView];

  return detachedMinimalView;
}

- (unint64_t)presentationBehaviors
{
  if (MRUseInternalUI())
  {
    return 24;
  }

  else
  {
    return 9;
  }
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  [(MRUActivityNowPlayingViewController *)self updateBundleID:controller];
  [(MRUActivityNowPlayingViewController *)self updateRouteLabel];
  [(MRUActivityNowPlayingViewController *)self updateRoutingButton];
  [(MRUActivityNowPlayingViewController *)self updateVolumeControls];

  [(MRUActivityNowPlayingViewController *)self updateWaveformVisibility];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d
{
  [(MRUActivityNowPlayingViewController *)self updateBundleID:controller];
  [(MRUActivityNowPlayingViewController *)self updateRoutingButton];

  [(MRUActivityNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button
{
  v5 = [(MRUNowPlayingController *)self->_controller tvRemoteController:view];
  [v5 presentTVRemoteUsingApp:1];

  [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:0 reason:@"didSelectTVRemoteButton"];
}

- (void)transportControlsView:(id)view didSelectRoutingButton:(id)button
{
  viewCopy = view;
  buttonCopy = button;
  v8 = objc_alloc_init(MEMORY[0x1E69705B8]);
  if (!+[MRUFeatureFlagProvider isCayenneEnabled])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v8 setPresentingAppBundleID:bundleIdentifier];
  }

  [v8 setSurface:3];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v11 = MRAVOutputContextCopyUniqueIdentifier();
    [v8 setRoutingContextUID:v11];
  }

  objc_initWeak(&location, self);
  v12 = [objc_alloc(MEMORY[0x1E69705B0]) initWithConfiguration:v8 shouldObserveRoutingContextUIDChanges:0];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v12;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__MRUActivityNowPlayingViewController_transportControlsView_didSelectRoutingButton___block_invoke;
  v16[3] = &unk_1E7663AE8;
  objc_copyWeak(&v17, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:v16];
  v14 = MCLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] will present RoutePicker", v15, 2u);
  }

  [(MPMediaControls *)self->_mediaControls present];
  [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:0 reason:@"didSelectRoutingButton"];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __84__MRUActivityNowPlayingViewController_transportControlsView_didSelectRoutingButton___block_invoke(uint64_t a1)
{
  v2 = MCLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "[MRUActivityVC] will dismiss RoutePicker", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

- (void)registerHapticObserver
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleHapticEnabledStatusChangedNotification_ name:*MEMORY[0x1E696F718] object:0];
}

- (void)createWaveformViewController
{
  v3 = objc_alloc_init(MRUWaveformController);
  waveformController = self->_waveformController;
  self->_waveformController = v3;

  v5 = [[MRUWaveformViewController alloc] initWithContext:0 waveformController:self->_waveformController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = v5;

  [(MRUWaveformController *)self->_waveformController setNowPlayingController:self->_controller];
  view = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view artworkViews];
  firstObject = [artworkViews firstObject];
  [firstObject addObserver:self->_waveformController];

  [(MRUActivityNowPlayingViewController *)self addChildViewController:self->_waveformViewController];
  view2 = [(MRUWaveformViewController *)self->_waveformViewController view];
  view3 = [(MRUActivityNowPlayingViewController *)self view];
  trailingView = [view3 trailingView];
  [trailingView setWaveformView:view2];

  v13 = self->_waveformViewController;

  [(MRUWaveformViewController *)v13 didMoveToParentViewController:self];
}

- (void)createHapticViewController
{
  v3 = [[MRUHapticViewController alloc] initWithContext:0 nowPlayingController:self->_controller];
  hapticViewController = self->_hapticViewController;
  self->_hapticViewController = v3;

  view = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view artworkViews];
  firstObject = [artworkViews firstObject];
  [firstObject addObserver:self->_hapticViewController];

  [(MRUActivityNowPlayingViewController *)self addChildViewController:self->_hapticViewController];
  view2 = [(MRUHapticViewController *)self->_hapticViewController view];
  view3 = [(MRUActivityNowPlayingViewController *)self view];
  trailingView = [view3 trailingView];
  [trailingView setHapticView:view2];

  waveformViewController = self->_waveformViewController;

  [(MRUWaveformViewController *)waveformViewController didMoveToParentViewController:self];
}

- (void)updateEverything
{
  [(MRUActivityNowPlayingViewController *)self updateBundleID];
  [(MRUActivityNowPlayingViewController *)self updateArtwork];
  [(MRUActivityNowPlayingViewController *)self updateNowPlayingInfo];
  [(MRUActivityNowPlayingViewController *)self updateTimeControls];
  [(MRUActivityNowPlayingViewController *)self updateTransportControls];
  [(MRUActivityNowPlayingViewController *)self updateRouteLabel];
  [(MRUActivityNowPlayingViewController *)self updateRoutingButton];
  [(MRUActivityNowPlayingViewController *)self updateLayout];
  [(MRUActivityNowPlayingViewController *)self updateWaveformVisibility];

  [(MRUActivityNowPlayingViewController *)self updateVolumeControls];
}

- (void)updateBundleID
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  obj = [metadataController bundleID];

  if (MRMediaRemoteApplicationIsSystemMediaApplication())
  {
    v4 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
LABEL_5:
    endpointController = obj;
    obj = v4;
LABEL_6:

    goto LABEL_7;
  }

  if (MRMediaRemoteApplicationIsSystemPodcastApplication())
  {
    v4 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    goto LABEL_5;
  }

  if (obj)
  {
    endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
    if ([endpointController isDeviceSystemRoute])
    {
      goto LABEL_6;
    }

    endpointController2 = [(MRUNowPlayingController *)self->_controller endpointController];
    isAirPlaying = [endpointController2 isAirPlaying];

    if ((isAirPlaying & 1) == 0)
    {
      endpointController = obj;
      obj = &stru_1F1445548;
      goto LABEL_6;
    }
  }

  else
  {
    obj = 0;
  }

LABEL_7:
  v6 = self->_associatedAppBundleIdentifier;
  v7 = v6;
  if (v6 == obj)
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:obj];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_associatedAppBundleIdentifier, obj);
      systemApertureElementContext = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
      [systemApertureElementContext setElementNeedsUpdate];

      [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:1 reason:@"updateBundleID"];
    }
  }
}

- (int64_t)artworkTransitionDirection
{
  if (!self->_lastLeftButtonTapDate)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSinceDate:self->_lastLeftButtonTapDate];
  v5 = v4 < 3.0;

  return v5;
}

- (void)updateArtwork
{
  v17 = *MEMORY[0x1E69E9840];
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  artwork = [metadataController artwork];

  artworkTransitionDirection = [(MRUActivityNowPlayingViewController *)self artworkTransitionDirection];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  view = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view artworkViews];

  v8 = [artworkViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(artworkViews);
        }

        [*(*(&v12 + 1) + 8 * v11++) setArtwork:artwork transitionDirection:artworkTransitionDirection];
      }

      while (v9 != v11);
      v9 = [artworkViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(MRUActivityNowPlayingViewController *)self setLastLeftButtonTapDate:0];
}

- (void)updateNowPlayingInfo
{
  v35 = *MEMORY[0x1E69E9840];
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];

  view = [(MRUActivityNowPlayingViewController *)self view];
  headerView = [view headerView];
  labelView = [headerView labelView];

  view2 = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view2 artworkViews];

  view3 = [(MRUActivityNowPlayingViewController *)self view];
  leadingView = [view3 leadingView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];
  [labelView setRoute:route];

  v14 = [nowPlayingInfo stringForComponents:1];
  v15 = [nowPlayingInfo stringForComponents:122];
  if (v14 | v15)
  {
    [labelView setTitle:{v14, v14}];
    v16 = v15;
  }

  else
  {
    metadataController2 = [(MRUNowPlayingController *)self->_controller metadataController];
    bundleName = [metadataController2 bundleName];
    [labelView setTitle:bundleName];

    v16 = 0;
  }

  [labelView setSubtitle:v16];
  placeholder = [nowPlayingInfo placeholder];
  [labelView setPlaceholder:placeholder];

  [labelView setShowPlaceholder:{objc_msgSend(nowPlayingInfo, "showPlaceholder")}];
  v20 = [nowPlayingInfo stringForComponents:59];
  v29 = leadingView;
  [leadingView setAccessibilityLabel:v20];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = artworkViews;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * i);
        [v26 setPlaying:{objc_msgSend(nowPlayingInfo, "isPlaying")}];
        identifier = [nowPlayingInfo identifier];
        [v26 setItemIdentifier:identifier];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v23);
  }

  [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:0 deferInCustomLayout:1 reason:@"updateNowPlayingInfo"];
}

- (void)updateTimeControls
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  timeControls = [metadataController timeControls];

  view = [(MRUActivityNowPlayingViewController *)self view];
  timeControlsView = [view timeControlsView];

  [timeControlsView setTimeControls:timeControls];
}

- (void)updateTransportControls
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  transportControls = [metadataController transportControls];

  view = [(MRUActivityNowPlayingViewController *)self view];
  transportControlsView = [view transportControlsView];

  [transportControlsView setTransportControls:transportControls];
  tvRemoteController = [(MRUNowPlayingController *)self->_controller tvRemoteController];
  [transportControlsView setShowTVRemoteButton:{objc_msgSend(tvRemoteController, "showTVRemote")}];
}

- (void)updateRouteLabel
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  headerView = [view headerView];
  labelView = [headerView labelView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];
  view2 = [(MRUActivityNowPlayingViewController *)self view];
  headerView2 = [view2 headerView];
  labelView2 = [headerView2 labelView];
  [labelView2 setRoute:route];

  endpointController2 = [(MRUNowPlayingController *)self->_controller endpointController];
  if ([endpointController2 isDeviceSystemRoute])
  {
    endpointController3 = [(MRUNowPlayingController *)self->_controller endpointController];
    isAirPlaying = [endpointController3 isAirPlaying];
  }

  else
  {
    isAirPlaying = 1;
  }

  if (isAirPlaying != [labelView showRoute])
  {
    [labelView setShowRoute:isAirPlaying];
    systemApertureElementContext = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
    [systemApertureElementContext setElementNeedsUpdate];
  }
}

- (void)updateRoutingButton
{
  view = [(MRUActivityNowPlayingViewController *)self view];
  transportControlsView = [view transportControlsView];

  view2 = [(MRUActivityNowPlayingViewController *)self view];
  trailingView = [view2 trailingView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];
  canModifyGroupMembership = [route canModifyGroupMembership];

  [transportControlsView setShowRoutingButton:canModifyGroupMembership];
  controller = self->_controller;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MRUActivityNowPlayingViewController_updateRoutingButton__block_invoke;
  v13[3] = &unk_1E76646D8;
  v14 = trailingView;
  v15 = transportControlsView;
  selfCopy = self;
  v11 = transportControlsView;
  v12 = trailingView;
  [(MRUNowPlayingController *)controller routingDeviceImage:v13];
}

void __58__MRUActivityNowPlayingViewController_updateRoutingButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setRouteImage:v4];
  v6 = [MRUAsset image:v4];

  v5 = [*(a1 + 40) routingButton];
  [v5 setAsset:v6 animated:{objc_msgSend(*(a1 + 48), "isOnScreen")}];
}

- (void)updateVolumeControls
{
  *&v33[13] = *MEMORY[0x1E69E9840];
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];

  dataSource = [(MPVolumeController *)self->_volumeController dataSource];
  v6 = dataSource;
  if (!self->_volumeController)
  {
    v9 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    v10 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v9];
    volumeController = self->_volumeController;
    self->_volumeController = v10;

    [(MPVolumeController *)self->_volumeController setDelegate:self];
    goto LABEL_5;
  }

  groupRoute = [dataSource groupRoute];
  v8 = [groupRoute isEqual:route];

  if ((v8 & 1) == 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    [(MPVolumeController *)self->_volumeController setDataSource:v9];
LABEL_5:
    v6 = v9;
  }

  volumeControlCapabilities = [v6 volumeControlCapabilities];
  if (-[MRUActivityNowPlayingViewController isExpanded](self, "isExpanded") && ([route isDeviceRoute] & 1) == 0 && (volumeControlCapabilities & 3) != 0)
  {
    v13 = MCLogCategoryVolume();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      isOnScreen = [(MRUActivityNowPlayingViewController *)self isOnScreen];
      v16 = MRUNowPlayingContextDescription(7);
      v26 = 138544386;
      v27 = v14;
      v28 = 1024;
      v29 = isOnScreen;
      v30 = 2114;
      v31 = v16;
      v32 = 1024;
      *v33 = 1;
      v33[2] = 2114;
      *&v33[3] = route;
      _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ taking hardware assertion: on screen: %{BOOL}u | context: %{public}@ | control: %{BOOL}u  | route: %{public}@", &v26, 0x2Cu);
    }

    v17 = +[MRUHardwareVolumeController sharedInstance];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 requestControlsForVolumeDataSource:v6 reason:v19];
    hardwareVolumeControlAssertion = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = v20;

LABEL_16:
    goto LABEL_17;
  }

  if (self->_hardwareVolumeControlAssertion)
  {
    v22 = MCLogCategoryVolume();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      isOnScreen2 = [(MRUActivityNowPlayingViewController *)self isOnScreen];
      v25 = MRUNowPlayingContextDescription(7);
      v26 = 138544130;
      v27 = v23;
      v28 = 1024;
      v29 = isOnScreen2;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      *v33 = route;
      _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ removing hardware assertion: on screen: %{BOOL}u | context: %{public}@ | route: %{public}@", &v26, 0x26u);
    }

    v17 = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)updateLayout
{
  if (self->_activeLayoutMode == 4)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  view = [(MRUActivityNowPlayingViewController *)self view];
  artworkViews = [view artworkViews];
  firstObject = [artworkViews firstObject];
  [firstObject setStyle:v3];

  v7 = self->_activeLayoutMode == 4;
  view2 = [(MRUActivityNowPlayingViewController *)self view];
  headerView = [view2 headerView];
  labelView = [headerView labelView];
  [labelView setMarqueeEnabled:v7];

  v11 = self->_activeLayoutMode == 4;
  view3 = [(MRUActivityNowPlayingViewController *)self view];
  timeControlsView = [view3 timeControlsView];
  [timeControlsView setOnScreen:v11];
}

- (void)updateWaveformVisibility
{
  routeSupportsWaveform = [(MRUWaveformController *)self->_waveformController routeSupportsWaveform];
  activeLayoutMode = self->_activeLayoutMode;
  mEMORY[0x1E696F728] = [MEMORY[0x1E696F728] sharedManager];
  if ([mEMORY[0x1E696F728] musicHapticsEnabled])
  {
    metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
    appSupportsHaptics = [metadataController appSupportsHaptics];
  }

  else
  {
    appSupportsHaptics = 0;
  }

  if (routeSupportsWaveform)
  {
    v8 = activeLayoutMode > 2;
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:v8 & (appSupportsHaptics ^ 1)];
    v9 = v8 & appSupportsHaptics;
  }

  else
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:0];
    appSupportsHaptics = 0;
    v9 = 0;
  }

  [(MRUHapticViewController *)self->_hapticViewController setOnScreen:v9];
  view = [(MRUActivityNowPlayingViewController *)self view];
  trailingView = [view trailingView];
  [trailingView setShowWaveform:routeSupportsWaveform];

  view2 = [(MRUActivityNowPlayingViewController *)self view];
  trailingView2 = [view2 trailingView];
  [trailingView2 setShowHaptic:appSupportsHaptics];

  view3 = [(MRUActivityNowPlayingViewController *)self view];
  [view3 setShowTrailingAccessoryWhenExpanded:routeSupportsWaveform];
}

- (void)updateSylingProvider
{
  v5 = objc_alloc_init(MRUVisualStylingProvider);
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(MRUVisualStylingProvider *)v5 setPrimaryColor:systemWhiteColor];

  view = [(MRUActivityNowPlayingViewController *)self view];
  [view setStylingProvider:v5];
}

@end