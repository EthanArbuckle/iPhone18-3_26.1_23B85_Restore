@interface MRULockscreenViewController
- (BOOL)isShowingMediaSuggestions;
- (MRUArtworkView)artworkView;
- (MRULockscreenViewControllerDelegate)delegate;
- (MRUNowPlayingController)nowPlayingController;
- (NSArray)restrictedRects;
- (id)_stateDumpObject;
- (id)_timelinesForDateInterval:(id)a3;
- (id)backlightSceneEnvironment;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)createHapticViewController;
- (void)createNowPlayingController;
- (void)createSuggestionsViewController;
- (void)createWaveformViewController;
- (void)dealloc;
- (void)didSelectArtworkView:(id)a3;
- (void)didSelectLabelView:(id)a3;
- (void)invalidateAllTimelinesForReason:(id)a3;
- (void)loadView;
- (void)mediaSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4 completion:(id)a5;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeTimeControls:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeTransportControls:(id)a5;
- (void)nowPlayingController:(id)a3 tvRemoteController:(id)a4 didChangeShowTVRemote:(BOOL)a5;
- (void)registerHapticObserver;
- (void)setOnScreen:(BOOL)a3;
- (void)setShowArtworkView:(BOOL)a3 completion:(id)a4;
- (void)transportControlsView:(id)a3 didSelectRoutingButton:(id)a4;
- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4;
- (void)updateArtwork;
- (void)updateDimmed;
- (void)updateEverything;
- (void)updateLayoutDependantPropertiesWithCompletion:(id)a3;
- (void)updateLayoutWithAnimations:(id)a3 completion:(id)a4;
- (void)updateNowPlayingInfo;
- (void)updatePreferredContentSize;
- (void)updateRestrictedRects;
- (void)updateRouteLabel;
- (void)updateRoutingButtonAnimated:(BOOL)a3;
- (void)updateSuggestions;
- (void)updateTimeControlsForPresentationInterval:(id)a3;
- (void)updateTransportControls;
- (void)updateVisibility;
- (void)updateVolumeControls;
- (void)updateWaveformVisibility;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MRULockscreenViewController

- (void)loadView
{
  v3 = objc_alloc_init(MRULockscreenView);
  [(MRULockscreenViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v25[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v23 viewDidLoad];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42__MRULockscreenViewController_viewDidLoad__block_invoke;
  v22[3] = &unk_1E7664C58;
  v22[4] = self;
  self->_stateHandle = __42__MRULockscreenViewController_viewDidLoad__block_invoke(v22);
  v3 = [(MRULockscreenViewController *)self view];
  [v3 setContentEdgeInsets:{14.0, 14.0, 14.0, 14.0}];

  self->_showArtworkView = 1;
  v4 = [(MRULockscreenViewController *)self view];
  v5 = [v4 artworkView];
  [v5 addObserver:self];

  v6 = [(MRULockscreenViewController *)self view];
  v7 = [v6 artworkView];
  [v7 addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  v8 = [(MRULockscreenViewController *)self view];
  v9 = [v8 headerView];
  v10 = [v9 labelView];
  [v10 addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  v11 = [(MRULockscreenViewController *)self view];
  v12 = [v11 transportControlsView];
  [v12 setDelegate:self];

  v13 = [(MRULockscreenViewController *)self view];
  v14 = [v13 volumeControlsView];
  [v14 setDelegate:self];

  v25[0] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v16 = [(MRULockscreenViewController *)self registerForTraitChanges:v15 withAction:sel_updateDimmed];

  v24 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v18 = [(MRULockscreenViewController *)self registerForTraitChanges:v17 withAction:sel_updatePreferredContentSize];

  v19 = +[MRUCallMonitor sharedMonitor];
  [v19 addObserver:self];

  v20 = +[MRUVisualStylingProvider stylingProviderForLockScreenPlatters];
  v21 = [(MRULockscreenViewController *)self view];
  [v21 setStylingProvider:v20];

  [(MRULockscreenViewController *)self createNowPlayingController];
  [(MRULockscreenViewController *)self createWaveformViewController];
  [(MRULockscreenViewController *)self createHapticViewController];
  [(MRULockscreenViewController *)self registerHapticObserver];
  [(MRULockscreenViewController *)self updateEverything];
}

uint64_t __42__MRULockscreenViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MRULockscreenViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __42__MRULockscreenViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2)
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v4 viewWillAppear:a3];
  [(MRULockscreenViewController *)self setOnScreen:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v4 viewWillDisappear:a3];
  [(MRULockscreenViewController *)self setOnScreen:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  v7 = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 lockscreenViewController:self viewWillTransitionToSize:{width, height}];
  }
}

- (void)dealloc
{
  os_state_remove_handler();
  [(MRUNowPlayingController *)self->_nowPlayingController updateAutomaticResponseLoading];
  v3.receiver = self;
  v3.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v3 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v3 viewDidLayoutSubviews];
  [(MRULockscreenViewController *)self updateRestrictedRects];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    v6 = [(MRULockscreenViewController *)self nowPlayingController];
    [v6 updateAutomaticResponseLoading];

    v7 = [(MRULockscreenViewController *)self nowPlayingController];
    v8 = [v7 mediaSuggestionsController];
    [v8 refreshMediaSuggestions];

    v9 = [(MRULockscreenViewController *)self view];
    [v9 setOnScreen:v4];

    [(MRULockscreenViewController *)self updateEverything];
  }
}

- (MRUNowPlayingController)nowPlayingController
{
  nowPlayingController = self->_nowPlayingController;
  if (!nowPlayingController)
  {
    [(MRULockscreenViewController *)self createNowPlayingController];
    nowPlayingController = self->_nowPlayingController;
  }

  return nowPlayingController;
}

- (MRUArtworkView)artworkView
{
  v2 = [(MRULockscreenViewController *)self view];
  v3 = [v2 artworkView];

  return v3;
}

- (BOOL)isShowingMediaSuggestions
{
  v2 = [(MRULockscreenViewController *)self view];
  v3 = [v2 showSuggestionsView];

  return v3;
}

- (void)setShowArtworkView:(BOOL)a3 completion:(id)a4
{
  if (self->_showArtworkView != a3)
  {
    self->_showArtworkView = a3;
    v6 = a4;
    [(MRULockscreenViewController *)self updateArtwork];
    [(MRULockscreenViewController *)self updateLayoutDependantPropertiesWithCompletion:v6];
  }
}

- (NSArray)restrictedRects
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v4 = [(MRULockscreenViewController *)self view];
  if ([v4 showSuggestionsView])
  {
    v5 = [(MRULockscreenViewController *)self view];
    v6 = [v5 suggestionsView];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [(MRULockscreenViewController *)self view];
    v8 = [v7 suggestionsView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v4 = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
    [v3 addObject:v4];
  }

LABEL_5:
  v17 = [(MRULockscreenViewController *)self view];
  v18 = [v17 showArtworkView];

  if (v18)
  {
    v19 = [(MRULockscreenViewController *)self view];
    v20 = [v19 artworkView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [MEMORY[0x1E696B098] valueWithRect:{v22, v24, v26, v28}];
    [v3 addObject:v29];
  }

  v30 = [(MRULockscreenViewController *)self view];
  v31 = [v30 headerView];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [MEMORY[0x1E696B098] valueWithRect:{v33, v35, v37, v39}];
  [v3 addObject:v40];

  v41 = [(MRULockscreenViewController *)self view];
  v42 = [v41 timeControlsView];
  [v42 frame];

  UIRectInset();
  v43 = [MEMORY[0x1E696B098] valueWithRect:?];
  [v3 addObject:v43];

  v44 = [(MRULockscreenViewController *)self view];
  v45 = [v44 transportControlsView];
  [v45 frame];

  UIRectInset();
  v46 = [MEMORY[0x1E696B098] valueWithRect:?];
  [v3 addObject:v46];

  v47 = [(MRULockscreenViewController *)self view];
  LODWORD(v45) = [v47 showVolumeControlsView];

  if (v45)
  {
    v48 = [(MRULockscreenViewController *)self view];
    v49 = [v48 volumeControlsView];
    [v49 frame];

    UIRectInset();
    v50 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v50];
  }

  v51 = [v3 copy];

  return v51;
}

- (void)didSelectArtworkView:(id)a3
{
  v4 = a3;
  v5 = [(MRULockscreenViewController *)self delegate];
  v6 = [v5 lockscreenViewController:self didSelectArtworkView:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    [v7 launchNowPlayingApp];
  }
}

- (void)didSelectLabelView:(id)a3
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  [v3 launchNowPlayingApp];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5
{
  [(MRULockscreenViewController *)self updateRoutingButton:a3];

  [(MRULockscreenViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  [(MRULockscreenViewController *)self updateRouteLabel:a3];
  [(MRULockscreenViewController *)self updateVolumeControls];
  [(MRULockscreenViewController *)self updateWaveformVisibility];
  [(MRULockscreenViewController *)self updateRoutingButtonAnimated:1];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"route changed"];
}

- (void)nowPlayingController:(id)a3 tvRemoteController:(id)a4 didChangeShowTVRemote:(BOOL)a5
{
  v6 = [a4 showTVRemote];
  v8 = [(MRULockscreenViewController *)self view];
  v7 = [v8 transportControlsView];
  [v7 setShowTVRemoteButton:v6];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  [(MRULockscreenViewController *)self updateNowPlayingInfo:a3];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"now playing info changed"];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeTimeControls:(id)a5
{
  [(MRULockscreenViewController *)self updateTimeControls:a3];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"time controls changed"];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeTransportControls:(id)a5
{
  [(MRULockscreenViewController *)self updateTransportControls:a3];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"transport controls changed"];
}

- (void)mediaSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4 completion:(id)a5
{
  v7 = a5;
  nowPlayingController = self->_nowPlayingController;
  v9 = a4;
  v10 = [(MRUNowPlayingController *)nowPlayingController mediaSuggestionsController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__MRULockscreenViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke;
  v12[3] = &unk_1E76661F8;
  v13 = v7;
  v11 = v7;
  [v10 playSuggestion:v9 completion:v12];
}

- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4
{
  v4 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController:a3];
  [v4 presentTVRemoteUsingApp:0];
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

    v11 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    v12 = [v11 routeUID];
    [v8 setRouteUID:v12];
  }

  [v8 setSurface:2];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v13 = MRAVOutputContextCopyUniqueIdentifier();
    [v8 setRoutingContextUID:v13];
  }

  [v8 setStyle:2];
  objc_initWeak(&location, self);
  v14 = [objc_alloc(MEMORY[0x1E69705B0]) initWithConfiguration:v8 shouldObserveRoutingContextUIDChanges:0];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v14;

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__MRULockscreenViewController_transportControlsView_didSelectRoutingButton___block_invoke;
  v19 = &unk_1E7663AE8;
  objc_copyWeak(&v20, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:&v16];
  [(MPMediaControls *)self->_mediaControls present:v16];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __76__MRULockscreenViewController_transportControlsView_didSelectRoutingButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

- (void)registerHapticObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_handleHapticEnabledStatusChangedNotification_ name:*MEMORY[0x1E696F718] object:0];
}

- (id)_timelinesForDateInterval:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [(MRULockscreenViewController *)self traitCollection];
  if ([v4 mr_shouldDim])
  {
    v5 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    v6 = [v5 nowPlayingInfo];
    v7 = [v6 isPlaying];

    if (v7)
    {
      v8 = [MEMORY[0x1E69B0B28] currentSettings];
      [v8 flipBookUpdateInterval];
      v10 = (60.0 / v9);

      v11 = [MEMORY[0x1E698E508] timelineWithPerMinuteUpdateFrequency:v10 identifier:@"aod-on" configure:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [MEMORY[0x1E698E508] emptyTimelineWithIdentifier:@"aod-off"];
LABEL_6:
  v12 = v11;
  v15[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v4 = [a3 presentationInterval];
  [(MRULockscreenViewController *)self updateTimeControlsForPresentationInterval:v4];
}

- (id)backlightSceneEnvironment
{
  v2 = [(MRULockscreenViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _backlightSceneEnvironment];

  return v5;
}

- (void)invalidateAllTimelinesForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRULockscreenViewController *)self traitCollection];
  v6 = [v5 mr_shouldDim];

  if (v6)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[AOD] Enqueueing timeline invalidation because %@", buf, 0xCu);
    }

    if (![(MRULockscreenViewController *)self pendingTimelineInvalidation])
    {
      [(MRULockscreenViewController *)self setPendingTimelineInvalidation:1];
      v8 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__MRULockscreenViewController_invalidateAllTimelinesForReason___block_invoke;
      block[3] = &unk_1E7663898;
      block[4] = self;
      dispatch_after(v8, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __63__MRULockscreenViewController_invalidateAllTimelinesForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPendingTimelineInvalidation:0];
  v2 = MCLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "[AOD] Invalidating all timelines", v4, 2u);
  }

  v3 = [*(a1 + 32) backlightSceneEnvironment];
  [v3 invalidateAllTimelinesForReason:@"now playing state changed"];
}

- (void)updateDimmed
{
  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"backlight luminance changed"];
  [(MRULockscreenViewController *)self updateTimeControls];

  [(MRULockscreenViewController *)self updateWaveformVisibility];
}

- (void)createNowPlayingController
{
  v8 = +[MRUEndpointController proactiveUserSelectedEndpointController];
  v3 = [[MRUNowPlayingController alloc] initWithEndpointController:v8];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = v3;

  v5 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  [v5 setContext:2];

  v6 = *MEMORY[0x1E69B0978];
  v7 = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  [v7 setContext:v6];

  [(MRUNowPlayingController *)self->_nowPlayingController addObserver:self];
}

- (void)createWaveformViewController
{
  v3 = objc_alloc_init(MRUWaveformController);
  waveformController = self->_waveformController;
  self->_waveformController = v3;

  v5 = [[MRUWaveformViewController alloc] initWithContext:1 waveformController:self->_waveformController];
  waveformViewController = self->_waveformViewController;
  self->_waveformViewController = v5;

  [(MRUWaveformController *)self->_waveformController setNowPlayingController:self->_nowPlayingController];
  [(MRULockscreenViewController *)self addChildViewController:self->_waveformViewController];
  v7 = [(MRUWaveformViewController *)self->_waveformViewController view];
  v8 = [(MRULockscreenViewController *)self view];
  v9 = [v8 headerView];
  [v9 setWaveformView:v7];

  v10 = self->_waveformViewController;

  [(MRUWaveformViewController *)v10 didMoveToParentViewController:self];
}

- (void)createHapticViewController
{
  v3 = [[MRUHapticViewController alloc] initWithContext:1 nowPlayingController:self->_nowPlayingController];
  hapticViewController = self->_hapticViewController;
  self->_hapticViewController = v3;

  [(MRULockscreenViewController *)self addChildViewController:self->_hapticViewController];
  v5 = [(MRUHapticViewController *)self->_hapticViewController view];
  v6 = [(MRULockscreenViewController *)self view];
  v7 = [v6 headerView];
  [v7 setHapticView:v5];

  waveformViewController = self->_waveformViewController;

  [(MRUWaveformViewController *)waveformViewController didMoveToParentViewController:self];
}

- (void)createSuggestionsViewController
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  v10 = [v3 mediaSuggestions];

  v4 = [[MRUMediaSuggestionsViewController alloc] initWithMediaSuggestions:v10];
  suggestionsViewController = self->_suggestionsViewController;
  self->_suggestionsViewController = v4;

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setDelegate:self];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setLayout:1];
  v6 = [(MRULockscreenViewController *)self view];
  v7 = [v6 stylingProvider];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setStylingProvider:v7];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setContentEdgeInsets:14.0, 14.0, 14.0, 14.0];
  [(MRULockscreenViewController *)self addChildViewController:self->_suggestionsViewController];
  v8 = [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController view];
  v9 = [(MRULockscreenViewController *)self view];
  [v9 setSuggestionsView:v8];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController didMoveToParentViewController:self];
}

- (void)updateEverything
{
  [(MRULockscreenViewController *)self updateRouteLabel];
  [(MRULockscreenViewController *)self updateRoutingButton];
  [(MRULockscreenViewController *)self updateArtwork];
  [(MRULockscreenViewController *)self updateNowPlayingInfo];
  [(MRULockscreenViewController *)self updateTimeControls];
  [(MRULockscreenViewController *)self updateTransportControls];
  [(MRULockscreenViewController *)self updateSuggestions];
  [(MRULockscreenViewController *)self updateVolumeControls];
  [(MRULockscreenViewController *)self updateWaveformVisibility];
  [(MRULockscreenViewController *)self updateVisibility];
  [(MRULockscreenViewController *)self updatePreferredContentSize];

  [(MRULockscreenViewController *)self updateRestrictedRects];
}

- (void)updateArtwork
{
  if ([(MRULockscreenViewController *)self showArtworkView])
  {
    v3 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    v6 = [v3 artwork];

    v4 = [(MRULockscreenViewController *)self view];
    v5 = [v4 artworkView];

    [v5 setArtwork:v6];
  }
}

- (void)updateRouteLabel
{
  v3 = [(MRULockscreenViewController *)self view];
  v4 = [v3 headerView];
  v7 = [v4 labelView];

  v5 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  v6 = [v5 route];

  [v7 setRoute:v6];
  [(MRULockscreenViewController *)self updateLayoutDependantProperties];
}

- (void)updateNowPlayingInfo
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  v4 = [v3 nowPlayingInfo];

  v5 = [(MRULockscreenViewController *)self view];
  v6 = [v5 headerView];
  v7 = [v6 labelView];

  v8 = [v4 stringForComponents:1];
  v9 = [v4 stringForComponents:122];
  if (v8 | v9)
  {
    [v7 setTitle:v8];
    v10 = v9;
  }

  else
  {
    v11 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    v12 = [v11 bundleName];
    [v7 setTitle:v12];

    v10 = 0;
  }

  [v7 setSubtitle:v10];
  v13 = [v4 placeholder];
  [v7 setPlaceholder:v13];

  v14 = [v4 showPlaceholder];
  if (v14 != [v7 showPlaceholder])
  {
    v15 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__MRULockscreenViewController_updateNowPlayingInfo__block_invoke;
    v17[3] = &unk_1E7663DF8;
    v20 = v14;
    v18 = v7;
    v19 = self;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__MRULockscreenViewController_updateNowPlayingInfo__block_invoke_2;
    v16[3] = &unk_1E7664FE8;
    v16[4] = self;
    [v15 mru_animateUsingType:0 animations:v17 completion:v16];
  }
}

void __51__MRULockscreenViewController_updateNowPlayingInfo__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowPlaceholder:*(a1 + 48)];
  v2 = [*(a1 + 40) view];
  [v2 layoutIfNeeded];
}

- (void)updateTimeControlsForPresentationInterval:(id)a3
{
  nowPlayingController = self->_nowPlayingController;
  v5 = a3;
  v6 = [(MRUNowPlayingController *)nowPlayingController metadataController];
  v9 = [v6 timeControls];

  v7 = [(MRULockscreenViewController *)self view];
  v8 = [v7 timeControlsView];

  [v8 setTimeControls:v9 forPresentationInterval:v5];
}

- (void)updateTransportControls
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  v7 = [v3 transportControls];

  v4 = [(MRULockscreenViewController *)self view];
  v5 = [v4 transportControlsView];

  [v5 setTransportControls:v7];
  v6 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  [v5 setShowTVRemoteButton:{objc_msgSend(v6, "showTVRemote")}];
}

- (void)updateVolumeControls
{
  v40[3] = *MEMORY[0x1E69E9840];
  v3 = [(MRULockscreenViewController *)self view];
  v4 = [v3 volumeControlsView];

  v5 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  v6 = [v5 route];

  v7 = [v4 volumeController];
  v8 = [v7 dataSource];

  v9 = [v4 volumeController];

  if (v9)
  {
    v10 = [v8 groupRoute];
    v11 = [v10 isEqual:v6];

    if (v11)
    {
      goto LABEL_6;
    }

    v12 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v6 outputDeviceRoute:0];

    [v4 setDataSource:v12];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v6 outputDeviceRoute:0];

    v13 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v12];
    [v4 setVolumeController:v13];
  }

  v8 = v12;
LABEL_6:
  v14 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([v14 isDeviceSystemRoute])
  {
    v15 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    if ([v15 isAirPlaying])
    {
      v16 = 1;
    }

    else
    {
      v17 = [MEMORY[0x1E69B0B28] currentSettings];
      v16 = [v17 alwaysShowVolumeControls];
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = self->_onScreen & v16;
  v19 = +[MRUCallMonitor sharedMonitor];
  v20 = [v19 isOnCall];

  v21 = [v8 volumeControlCapabilities];
  v22 = [(MRULockscreenViewController *)self view];
  v23 = [v22 volumeControlsView];
  [v23 setOnScreen:v18 & 1];

  if ((v18 & 1) != 0 && (v20 & 1) == 0 && ([v6 isDeviceRoute] & 1) == 0 && (v21 & 3) != 0)
  {
    v24 = MCLogCategoryVolume();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138544642;
      v32 = objc_opt_class();
      v33 = 1024;
      v34 = 1;
      v35 = 1024;
      v36 = 1;
      v37 = 1024;
      v38 = 0;
      v39 = 1024;
      LODWORD(v40[0]) = 1;
      WORD2(v40[0]) = 2114;
      *(v40 + 6) = v6;
      _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ taking hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | control: %{BOOL}u | route: %{public}@", &v31, 0x2Eu);
    }

    v25 = +[MRUHardwareVolumeController sharedInstance];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v25 requestControlsForVolumeDataSource:v8 reason:v27];
    hardwareVolumeControlAssertion = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = v28;

LABEL_23:
    goto LABEL_24;
  }

  if (self->_hardwareVolumeControlAssertion)
  {
    v30 = MCLogCategoryVolume();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138544386;
      v32 = objc_opt_class();
      v33 = 1024;
      v34 = v18 & 1;
      v35 = 1024;
      v36 = v16;
      v37 = 1024;
      v38 = v20;
      v39 = 2114;
      v40[0] = v6;
      _os_log_impl(&dword_1A20FC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ removing hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | route: %{public}@", &v31, 0x28u);
    }

    v25 = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = 0;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)updateRoutingButtonAnimated:(BOOL)a3
{
  v5 = [(MRULockscreenViewController *)self view];
  v6 = [v5 transportControlsView];

  v7 = [v6 routingButton];
  v8 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  v9 = [v8 route];
  v10 = [v9 canModifyGroupMembership];

  [v6 setShowRoutingButton:v10];
  nowPlayingController = self->_nowPlayingController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MRULockscreenViewController_updateRoutingButtonAnimated___block_invoke;
  v13[3] = &unk_1E76656F0;
  v14 = v7;
  v15 = self;
  v16 = a3;
  v12 = v7;
  [(MRUNowPlayingController *)nowPlayingController routingDeviceImage:v13];
}

void __59__MRULockscreenViewController_updateRoutingButtonAnimated___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MRUAsset image:a2];
  v3 = *(a1 + 32);
  if ([*(a1 + 40) isOnScreen])
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = 0;
  }

  [v3 setAsset:v5 animated:v4 & 1];
}

- (void)updateWaveformVisibility
{
  v3 = [(MRULockscreenViewController *)self view];
  v9 = [v3 headerView];

  v4 = [(MRUWaveformController *)self->_waveformController routeSupportsWaveform];
  v5 = [MEMORY[0x1E696F728] sharedManager];
  if ([v5 musicHapticsEnabled])
  {
    v6 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    v7 = [v6 appSupportsHaptics];
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:self->_onScreen & ~v7 & 1];
    v8 = self->_onScreen & v7;
  }

  else
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:0];
    v7 = 0;
    v8 = 0;
  }

  [(MRUHapticViewController *)self->_hapticViewController setOnScreen:v8 & 1];
  [v9 setShowWaveform:v4];
  [v9 setShowHaptic:v7];
}

- (void)updateVisibility
{
  onScreen = self->_onScreen;
  v3 = [(MRULockscreenViewController *)self view];
  [v3 setOnScreen:onScreen];
}

- (void)updateSuggestions
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  v4 = [v3 mediaSuggestions];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setMediaSuggestions:v4];

  [(MRULockscreenViewController *)self updateLayoutDependantProperties];
}

- (void)updateLayoutDependantPropertiesWithCompletion:(id)a3
{
  v26 = a3;
  showArtworkView = self->_showArtworkView;
  v4 = [(MRULockscreenViewController *)self view];
  v5 = [v4 showArtworkView];
  v6 = self->_showArtworkView;

  v7 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([v7 isDeviceSystemRoute])
  {
    v8 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    v9 = [v8 isAirPlaying];
  }

  else
  {
    v9 = 1;
  }

  v10 = [(MRULockscreenViewController *)self view];
  v11 = [v10 headerView];
  v12 = [v11 labelView];
  v13 = v9 ^ [v12 showRoute];

  v14 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([v14 isDeviceSystemRoute])
  {
    v15 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    if ([v15 isAirPlaying])
    {
      v16 = 1;
    }

    else
    {
      v17 = [MEMORY[0x1E69B0B28] currentSettings];
      v16 = [v17 alwaysShowVolumeControls];
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = v6 != v5;

  v19 = [(MRULockscreenViewController *)self view];
  v20 = [v19 showVolumeControlsView];

  v21 = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  v22 = [v21 mediaSuggestions];

  v23 = [(MRULockscreenViewController *)self view];
  v24 = (v22 != 0) ^ [v23 showSuggestionsView];

  if (((v18 | v13) & 1) != 0 || ((v16 ^ v20) & 1) != 0 || v24)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke;
    v30[3] = &unk_1E7666220;
    v30[4] = self;
    v31 = showArtworkView;
    v32 = v9;
    v33 = v16;
    v34 = v22 != 0;
    v35 = v24;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke_2;
    v27[3] = &unk_1E7666248;
    v27[4] = self;
    v29 = v22 != 0;
    v28 = v26;
    [(MRULockscreenViewController *)self updateLayoutWithAnimations:v30 completion:v27];
  }
}

uint64_t __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  [v3 setShowArtworkView:v2];

  v4 = *(a1 + 41);
  v5 = [*(a1 + 32) view];
  v6 = [v5 headerView];
  v7 = [v6 labelView];
  [v7 setShowRoute:v4];

  v8 = *(a1 + 42);
  v9 = [*(a1 + 32) view];
  [v9 setShowVolumeControlsView:v8];

  if (*(a1 + 43) == 1 && *(a1 + 44) == 1)
  {
    [*(a1 + 32) createSuggestionsViewController];
  }

  v10 = [*(a1 + 32) suggestionsViewController];
  [v10 beginAppearanceTransition:*(a1 + 43) animated:0];

  v11 = *(a1 + 43);
  v12 = [*(a1 + 32) view];
  [v12 setShowSuggestionsView:v11];

  v13 = [*(a1 + 32) view];
  [v13 layoutIfNeeded];

  v14 = *(a1 + 32);

  return [v14 updatePreferredContentSize];
}

uint64_t __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) suggestionsViewController];
  [v4 endAppearanceTransition];

  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = [*(a1 + 32) suggestionsViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [*(a1 + 32) view];
    [v6 setSuggestionsView:0];

    v7 = [*(a1 + 32) suggestionsViewController];
    [v7 removeFromParentViewController];

    [*(a1 + 32) setSuggestionsViewController:0];
  }

  [*(a1 + 32) updateRestrictedRects];
  result = [*(a1 + 32) updatePreferredContentSize];
  if (a2)
  {
    result = *(a1 + 40);
    if (result)
    {
      v9 = *(result + 16);

      return v9();
    }
  }

  return result;
}

- (void)updateLayoutWithAnimations:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(MRULockscreenViewController *)self view];
  [v7 bounds];
  if (v8 == 0.0)
  {
  }

  else
  {
    v9 = [(MRULockscreenViewController *)self view];
    [v9 bounds];
    v11 = v10;

    if (v11 != 0.0)
    {
      [MEMORY[0x1E69DD250] mru_animateUsingType:0 animations:v12 completion:v6];
      goto LABEL_6;
    }
  }

  [MEMORY[0x1E69DD250] performWithoutAnimation:v12];
  v6[2](v6, 1);
LABEL_6:
}

- (void)updatePreferredContentSize
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  Width = CGRectGetWidth(v27);

  v5 = [(MRULockscreenViewController *)self view];
  [v5 sizeThatFits:{Width, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = MCLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v25.width = v7;
    v25.height = v9;
    v12 = NSStringFromCGSize(v25);
    v13 = [(MRULockscreenViewController *)self view];
    [v13 frame];
    v26.width = v14;
    v26.height = v15;
    v16 = NSStringFromCGSize(v26);
    v18 = 138543874;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ preferred content size: %{public}@ | current: %{public}@", &v18, 0x20u);
  }

  v17 = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 lockscreenViewController:self didUpdatePreferredContentSize:{v7, v9}];
  }
}

- (void)updateRestrictedRects
{
  v4 = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MRULockscreenViewController *)self restrictedRects];
    [v4 lockscreenViewController:self didUpdateRestrictedRects:v3];
  }
}

- (id)_stateDumpObject
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = @"hardwareVolumeControlAssertion";
  v3 = [(BSInvalidatable *)self->_hardwareVolumeControlAssertion description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v18[0] = v5;
  v17[1] = @"endpointController";
  v6 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"<NONE>";
  }

  nowPlayingController = self->_nowPlayingController;
  if (!nowPlayingController)
  {
    nowPlayingController = @"<NONE>";
  }

  v18[1] = v8;
  v18[2] = nowPlayingController;
  v17[2] = @"dataController";
  v17[3] = @"mediaControls";
  mediaControls = self->_mediaControls;
  if (!mediaControls)
  {
    mediaControls = @"<NONE>";
  }

  v18[3] = mediaControls;
  v17[4] = @"window";
  v11 = [(MRULockscreenViewController *)self view];
  v12 = [v11 window];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v18[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v15;
}

- (MRULockscreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end