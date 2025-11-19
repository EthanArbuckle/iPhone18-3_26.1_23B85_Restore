@interface MRUActivityNowPlayingViewController
- (MRUActivityNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (void)didSelectArtworkView:(id)a3;
- (void)didSelectLabelView:(id)a3;
- (void)didSelectLaunchNowPlaying:(id)a3;
- (void)didTapTransportButton:(id)a3;
- (void)loadView;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5;
- (void)registerHapticObserver;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)transportControlsView:(id)a3 didSelectRoutingButton:(id)a4;
- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4;
- (void)updateArtwork;
- (void)updateBundleID;
- (void)updateEverything;
- (void)updateLayout;
- (void)updateLayoutModesPreferringImmediateTransition:(BOOL)a3 deferInCustomLayout:(BOOL)a4 reason:(id)a5;
- (void)updateNowPlayingInfo;
- (void)updateRouteLabel;
- (void)updateRoutingButton;
- (void)updateSylingProvider;
- (void)updateTimeControls;
- (void)updateTransportControls;
- (void)updateVolumeControls;
- (void)updateWaveformVisibility;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MRUActivityNowPlayingViewController

- (MRUActivityNowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = MRUActivityNowPlayingViewController;
  v4 = [(MRUActivityNowPlayingViewController *)&v11 initWithNibName:a3 bundle:a4];
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

    v9 = [(MRUNowPlayingController *)v5->_controller tvRemoteController];
    [v9 setContext:7];

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
  v3 = [(MRUActivityNowPlayingViewController *)self view];
  v4 = [v3 artworkViews];
  v5 = [v4 firstObject];
  [v5 addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  v6 = [(MRUActivityNowPlayingViewController *)self view];
  v7 = [v6 headerView];
  v8 = [v7 labelView];
  [v8 addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  v9 = [(MRUActivityNowPlayingViewController *)self view];
  v10 = [v9 transportControlsView];
  [v10 setDelegate:self];

  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didSelectLaunchNowPlaying_];
  [(MRUActivityNowPlayingViewController *)self setLaunchNowPlayingGestureRecognizer:v11];

  v12 = [(MRUActivityNowPlayingViewController *)self view];
  v13 = [(MRUActivityNowPlayingViewController *)self launchNowPlayingGestureRecognizer];
  [v12 addGestureRecognizer:v13];

  [(MRUActivityNowPlayingViewController *)self createWaveformViewController];
  [(MRUActivityNowPlayingViewController *)self createHapticViewController];
  [(MRUActivityNowPlayingViewController *)self updateEverything];
  [(MRUActivityNowPlayingViewController *)self registerHapticObserver];
  [(MRUActivityNowPlayingViewController *)self updateSylingProvider];
  v14 = [(MRUActivityNowPlayingViewController *)self view];
  v15 = [v14 transportControlsView];
  v16 = [v15 leftButton];
  [v16 addTarget:self action:sel_didTapTransportButton_ forControlEvents:64];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MRUActivityNowPlayingViewController;
  v7 = a4;
  [(MRUActivityNowPlayingViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__MRUActivityNowPlayingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E76645E8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&__block_literal_global_36];
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

- (void)didSelectArtworkView:(id)a3
{
  v3 = [(MRUNowPlayingController *)self->_controller endpointController];
  [v3 launchNowPlayingApp];
}

- (void)didSelectLabelView:(id)a3
{
  v3 = [(MRUNowPlayingController *)self->_controller endpointController];
  [v3 launchNowPlayingApp];
}

- (void)didSelectLaunchNowPlaying:(id)a3
{
  v3 = [(MRUNowPlayingController *)self->_controller endpointController];
  [v3 launchNowPlayingApp];
}

- (void)didTapTransportButton:(id)a3
{
  v4 = a3;
  v5 = [(MRUActivityNowPlayingViewController *)self view];
  v6 = [v5 transportControlsView];
  v7 = [v6 leftButton];

  if (v7 == v4)
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

- (void)updateLayoutModesPreferringImmediateTransition:(BOOL)a3 deferInCustomLayout:(BOOL)a4 reason:(id)a5
{
  v43 = a4;
  v5 = a3;
  v52 = *MEMORY[0x1E69E9840];
  v44 = a5;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v49 = v44;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "[MRUActivityVC] updateLayoutModes for %@", buf, 0xCu);
  }

  v8 = [(MRUNowPlayingController *)self->_controller metadataController];
  v9 = [v8 nowPlayingInfo];
  v10 = [v9 isPlaying];

  v11 = [(MRUNowPlayingController *)self->_controller metadataController];
  v45 = [v11 bundleID];

  if (v45)
  {
    v12 = [(MRUNowPlayingController *)self->_controller metadataController];
    v13 = [v12 nowPlayingInfo];
    v14 = [v13 identifier];
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  preferredLayoutMode = self->_preferredLayoutMode;
  v17 = v10 & v15;
  if ((v10 & v15) != 0)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v19 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
  if (v19)
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

      v22 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
      [v22 invalidate];

      [(MRUActivityNowPlayingViewController *)self setInactiveTransitionTimer:0];
    }
  }

  v23 = 1;
  if (self->_wasPlayingDuringLastPreferredLayoutUpdate && (v10 & 1) == 0)
  {
    v23 = self->_activeLayoutMode != 1;
  }

  self->_wasPlayingDuringLastPreferredLayoutUpdate = v10;
  if (preferredLayoutMode != v18 || v5)
  {
    if (v15 & ~v17 & (!v5 && v23))
    {
      if (!v43 || self->_activeLayoutMode != 4)
      {
        v30 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
        v31 = v30 == 0;

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
          v34 = [MEMORY[0x1E69B0B08] currentSettings];
          [v34 quickControlsInactiveTimeout];
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

    v25 = [(MRUActivityNowPlayingViewController *)self inactiveTransitionTimer];
    [v25 invalidate];

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
    if (v5)
    {
      if (v43 && self->_activeLayoutMode == 4)
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

    v41 = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
    [v41 requestTransitionToPreferredLayoutMode];
  }

LABEL_19:
}

void __113__MRUActivityNowPlayingViewController_updateLayoutModesPreferringImmediateTransition_deferInCustomLayout_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:1 reason:@"inactiveTransitionTimer"];
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_activeLayoutMode != a3)
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

    self->_activeLayoutMode = a3;
    [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:0 deferInCustomLayout:1 reason:@"setActiveLayoutMode"];
    v8 = [(MRUActivityNowPlayingViewController *)self controller];
    [v8 updateAutomaticResponseLoading];

    [(MRUActivityNowPlayingViewController *)self updateEverything];
  }
}

- (double)preferredHeightForBottomSafeArea
{
  v2 = [(MRUActivityNowPlayingViewController *)self view];
  [v2 preferredHeightForBottomSafeArea];
  v4 = v3;

  return v4;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  v2 = [(MRUActivityNowPlayingViewController *)self view];
  v3 = [v2 leadingView];

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  v2 = [(MRUActivityNowPlayingViewController *)self view];
  v3 = [v2 trailingView];

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  v2 = [(MRUActivityNowPlayingViewController *)self view];
  v3 = [v2 leadingView];

  return v3;
}

- (SBUISystemApertureAccessoryView)detachedMinimalView
{
  v2 = [(MRUActivityNowPlayingViewController *)self view];
  v3 = [v2 detachedMinimalView];

  return v3;
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

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  [(MRUActivityNowPlayingViewController *)self updateBundleID:a3];
  [(MRUActivityNowPlayingViewController *)self updateRouteLabel];
  [(MRUActivityNowPlayingViewController *)self updateRoutingButton];
  [(MRUActivityNowPlayingViewController *)self updateVolumeControls];

  [(MRUActivityNowPlayingViewController *)self updateWaveformVisibility];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5
{
  [(MRUActivityNowPlayingViewController *)self updateBundleID:a3];
  [(MRUActivityNowPlayingViewController *)self updateRoutingButton];

  [(MRUActivityNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4
{
  v5 = [(MRUNowPlayingController *)self->_controller tvRemoteController:a3];
  [v5 presentTVRemoteUsingApp:1];

  [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:1 deferInCustomLayout:0 reason:@"didSelectTVRemoteButton"];
}

- (void)transportControlsView:(id)a3 didSelectRoutingButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69705B8]);
  if (!+[MRUFeatureFlagProvider isCayenneEnabled])
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v10 = [v9 bundleIdentifier];
    [v8 setPresentingAppBundleID:v10];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_handleHapticEnabledStatusChangedNotification_ name:*MEMORY[0x1E696F718] object:0];
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
  v7 = [(MRUActivityNowPlayingViewController *)self view];
  v8 = [v7 artworkViews];
  v9 = [v8 firstObject];
  [v9 addObserver:self->_waveformController];

  [(MRUActivityNowPlayingViewController *)self addChildViewController:self->_waveformViewController];
  v10 = [(MRUWaveformViewController *)self->_waveformViewController view];
  v11 = [(MRUActivityNowPlayingViewController *)self view];
  v12 = [v11 trailingView];
  [v12 setWaveformView:v10];

  v13 = self->_waveformViewController;

  [(MRUWaveformViewController *)v13 didMoveToParentViewController:self];
}

- (void)createHapticViewController
{
  v3 = [[MRUHapticViewController alloc] initWithContext:0 nowPlayingController:self->_controller];
  hapticViewController = self->_hapticViewController;
  self->_hapticViewController = v3;

  v5 = [(MRUActivityNowPlayingViewController *)self view];
  v6 = [v5 artworkViews];
  v7 = [v6 firstObject];
  [v7 addObserver:self->_hapticViewController];

  [(MRUActivityNowPlayingViewController *)self addChildViewController:self->_hapticViewController];
  v8 = [(MRUHapticViewController *)self->_hapticViewController view];
  v9 = [(MRUActivityNowPlayingViewController *)self view];
  v10 = [v9 trailingView];
  [v10 setHapticView:v8];

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
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  obj = [v3 bundleID];

  if (MRMediaRemoteApplicationIsSystemMediaApplication())
  {
    v4 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
LABEL_5:
    v5 = obj;
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
    v5 = [(MRUNowPlayingController *)self->_controller endpointController];
    if ([v5 isDeviceSystemRoute])
    {
      goto LABEL_6;
    }

    v10 = [(MRUNowPlayingController *)self->_controller endpointController];
    v11 = [v10 isAirPlaying];

    if ((v11 & 1) == 0)
    {
      v5 = obj;
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
      v9 = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
      [v9 setElementNeedsUpdate];

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
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v4 = [v3 artwork];

  v5 = [(MRUActivityNowPlayingViewController *)self artworkTransitionDirection];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(MRUActivityNowPlayingViewController *)self view];
  v7 = [v6 artworkViews];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setArtwork:v4 transitionDirection:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(MRUActivityNowPlayingViewController *)self setLastLeftButtonTapDate:0];
}

- (void)updateNowPlayingInfo
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v4 = [v3 nowPlayingInfo];

  v5 = [(MRUActivityNowPlayingViewController *)self view];
  v6 = [v5 headerView];
  v7 = [v6 labelView];

  v8 = [(MRUActivityNowPlayingViewController *)self view];
  v9 = [v8 artworkViews];

  v10 = [(MRUActivityNowPlayingViewController *)self view];
  v11 = [v10 leadingView];

  v12 = [(MRUNowPlayingController *)self->_controller endpointController];
  v13 = [v12 route];
  [v7 setRoute:v13];

  v14 = [v4 stringForComponents:1];
  v15 = [v4 stringForComponents:122];
  if (v14 | v15)
  {
    [v7 setTitle:{v14, v14}];
    v16 = v15;
  }

  else
  {
    v17 = [(MRUNowPlayingController *)self->_controller metadataController];
    v18 = [v17 bundleName];
    [v7 setTitle:v18];

    v16 = 0;
  }

  [v7 setSubtitle:v16];
  v19 = [v4 placeholder];
  [v7 setPlaceholder:v19];

  [v7 setShowPlaceholder:{objc_msgSend(v4, "showPlaceholder")}];
  v20 = [v4 stringForComponents:59];
  v29 = v11;
  [v11 setAccessibilityLabel:v20];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v9;
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
        [v26 setPlaying:{objc_msgSend(v4, "isPlaying")}];
        v27 = [v4 identifier];
        [v26 setItemIdentifier:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v23);
  }

  [(MRUActivityNowPlayingViewController *)self updateLayoutModesPreferringImmediateTransition:0 deferInCustomLayout:1 reason:@"updateNowPlayingInfo"];
}

- (void)updateTimeControls
{
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v6 = [v3 timeControls];

  v4 = [(MRUActivityNowPlayingViewController *)self view];
  v5 = [v4 timeControlsView];

  [v5 setTimeControls:v6];
}

- (void)updateTransportControls
{
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v7 = [v3 transportControls];

  v4 = [(MRUActivityNowPlayingViewController *)self view];
  v5 = [v4 transportControlsView];

  [v5 setTransportControls:v7];
  v6 = [(MRUNowPlayingController *)self->_controller tvRemoteController];
  [v5 setShowTVRemoteButton:{objc_msgSend(v6, "showTVRemote")}];
}

- (void)updateRouteLabel
{
  v3 = [(MRUActivityNowPlayingViewController *)self view];
  v4 = [v3 headerView];
  v14 = [v4 labelView];

  v5 = [(MRUNowPlayingController *)self->_controller endpointController];
  v6 = [v5 route];
  v7 = [(MRUActivityNowPlayingViewController *)self view];
  v8 = [v7 headerView];
  v9 = [v8 labelView];
  [v9 setRoute:v6];

  v10 = [(MRUNowPlayingController *)self->_controller endpointController];
  if ([v10 isDeviceSystemRoute])
  {
    v11 = [(MRUNowPlayingController *)self->_controller endpointController];
    v12 = [v11 isAirPlaying];
  }

  else
  {
    v12 = 1;
  }

  if (v12 != [v14 showRoute])
  {
    [v14 setShowRoute:v12];
    v13 = [(MRUActivityNowPlayingViewController *)self systemApertureElementContext];
    [v13 setElementNeedsUpdate];
  }
}

- (void)updateRoutingButton
{
  v3 = [(MRUActivityNowPlayingViewController *)self view];
  v4 = [v3 transportControlsView];

  v5 = [(MRUActivityNowPlayingViewController *)self view];
  v6 = [v5 trailingView];

  v7 = [(MRUNowPlayingController *)self->_controller endpointController];
  v8 = [v7 route];
  v9 = [v8 canModifyGroupMembership];

  [v4 setShowRoutingButton:v9];
  controller = self->_controller;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MRUActivityNowPlayingViewController_updateRoutingButton__block_invoke;
  v13[3] = &unk_1E76646D8;
  v14 = v6;
  v15 = v4;
  v16 = self;
  v11 = v4;
  v12 = v6;
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
  v3 = [(MRUNowPlayingController *)self->_controller endpointController];
  v4 = [v3 route];

  v5 = [(MPVolumeController *)self->_volumeController dataSource];
  v6 = v5;
  if (!self->_volumeController)
  {
    v9 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v4 outputDeviceRoute:0];

    v10 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v9];
    volumeController = self->_volumeController;
    self->_volumeController = v10;

    [(MPVolumeController *)self->_volumeController setDelegate:self];
    goto LABEL_5;
  }

  v7 = [v5 groupRoute];
  v8 = [v7 isEqual:v4];

  if ((v8 & 1) == 0)
  {
    v9 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v4 outputDeviceRoute:0];

    [(MPVolumeController *)self->_volumeController setDataSource:v9];
LABEL_5:
    v6 = v9;
  }

  v12 = [v6 volumeControlCapabilities];
  if (-[MRUActivityNowPlayingViewController isExpanded](self, "isExpanded") && ([v4 isDeviceRoute] & 1) == 0 && (v12 & 3) != 0)
  {
    v13 = MCLogCategoryVolume();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = [(MRUActivityNowPlayingViewController *)self isOnScreen];
      v16 = MRUNowPlayingContextDescription(7);
      v26 = 138544386;
      v27 = v14;
      v28 = 1024;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      v32 = 1024;
      *v33 = 1;
      v33[2] = 2114;
      *&v33[3] = v4;
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
      v24 = [(MRUActivityNowPlayingViewController *)self isOnScreen];
      v25 = MRUNowPlayingContextDescription(7);
      v26 = 138544130;
      v27 = v23;
      v28 = 1024;
      v29 = v24;
      v30 = 2114;
      v31 = v25;
      v32 = 2114;
      *v33 = v4;
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

  v4 = [(MRUActivityNowPlayingViewController *)self view];
  v5 = [v4 artworkViews];
  v6 = [v5 firstObject];
  [v6 setStyle:v3];

  v7 = self->_activeLayoutMode == 4;
  v8 = [(MRUActivityNowPlayingViewController *)self view];
  v9 = [v8 headerView];
  v10 = [v9 labelView];
  [v10 setMarqueeEnabled:v7];

  v11 = self->_activeLayoutMode == 4;
  v13 = [(MRUActivityNowPlayingViewController *)self view];
  v12 = [v13 timeControlsView];
  [v12 setOnScreen:v11];
}

- (void)updateWaveformVisibility
{
  v3 = [(MRUWaveformController *)self->_waveformController routeSupportsWaveform];
  activeLayoutMode = self->_activeLayoutMode;
  v5 = [MEMORY[0x1E696F728] sharedManager];
  if ([v5 musicHapticsEnabled])
  {
    v6 = [(MRUNowPlayingController *)self->_controller metadataController];
    v7 = [v6 appSupportsHaptics];
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = activeLayoutMode > 2;
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:v8 & (v7 ^ 1)];
    v9 = v8 & v7;
  }

  else
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:0];
    v7 = 0;
    v9 = 0;
  }

  [(MRUHapticViewController *)self->_hapticViewController setOnScreen:v9];
  v10 = [(MRUActivityNowPlayingViewController *)self view];
  v11 = [v10 trailingView];
  [v11 setShowWaveform:v3];

  v12 = [(MRUActivityNowPlayingViewController *)self view];
  v13 = [v12 trailingView];
  [v13 setShowHaptic:v7];

  v14 = [(MRUActivityNowPlayingViewController *)self view];
  [v14 setShowTrailingAccessoryWhenExpanded:v3];
}

- (void)updateSylingProvider
{
  v5 = objc_alloc_init(MRUVisualStylingProvider);
  v3 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(MRUVisualStylingProvider *)v5 setPrimaryColor:v3];

  v4 = [(MRUActivityNowPlayingViewController *)self view];
  [v4 setStylingProvider:v5];
}

@end