@interface MRULockscreenViewController
- (BOOL)isShowingMediaSuggestions;
- (MRUArtworkView)artworkView;
- (MRULockscreenViewControllerDelegate)delegate;
- (MRUNowPlayingController)nowPlayingController;
- (NSArray)restrictedRects;
- (id)_stateDumpObject;
- (id)_timelinesForDateInterval:(id)interval;
- (id)backlightSceneEnvironment;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)createHapticViewController;
- (void)createNowPlayingController;
- (void)createSuggestionsViewController;
- (void)createWaveformViewController;
- (void)dealloc;
- (void)didSelectArtworkView:(id)view;
- (void)didSelectLabelView:(id)view;
- (void)invalidateAllTimelinesForReason:(id)reason;
- (void)loadView;
- (void)mediaSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion completion:(id)completion;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeTimeControls:(id)controls;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeTransportControls:(id)controls;
- (void)nowPlayingController:(id)controller tvRemoteController:(id)remoteController didChangeShowTVRemote:(BOOL)remote;
- (void)registerHapticObserver;
- (void)setOnScreen:(BOOL)screen;
- (void)setShowArtworkView:(BOOL)view completion:(id)completion;
- (void)transportControlsView:(id)view didSelectRoutingButton:(id)button;
- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button;
- (void)updateArtwork;
- (void)updateDimmed;
- (void)updateEverything;
- (void)updateLayoutDependantPropertiesWithCompletion:(id)completion;
- (void)updateLayoutWithAnimations:(id)animations completion:(id)completion;
- (void)updateNowPlayingInfo;
- (void)updatePreferredContentSize;
- (void)updateRestrictedRects;
- (void)updateRouteLabel;
- (void)updateRoutingButtonAnimated:(BOOL)animated;
- (void)updateSuggestions;
- (void)updateTimeControlsForPresentationInterval:(id)interval;
- (void)updateTransportControls;
- (void)updateVisibility;
- (void)updateVolumeControls;
- (void)updateWaveformVisibility;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  view = [(MRULockscreenViewController *)self view];
  [view setContentEdgeInsets:{14.0, 14.0, 14.0, 14.0}];

  self->_showArtworkView = 1;
  view2 = [(MRULockscreenViewController *)self view];
  artworkView = [view2 artworkView];
  [artworkView addObserver:self];

  view3 = [(MRULockscreenViewController *)self view];
  artworkView2 = [view3 artworkView];
  [artworkView2 addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  view4 = [(MRULockscreenViewController *)self view];
  headerView = [view4 headerView];
  labelView = [headerView labelView];
  [labelView addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  view5 = [(MRULockscreenViewController *)self view];
  transportControlsView = [view5 transportControlsView];
  [transportControlsView setDelegate:self];

  view6 = [(MRULockscreenViewController *)self view];
  volumeControlsView = [view6 volumeControlsView];
  [volumeControlsView setDelegate:self];

  v25[0] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v16 = [(MRULockscreenViewController *)self registerForTraitChanges:v15 withAction:sel_updateDimmed];

  v24 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v18 = [(MRULockscreenViewController *)self registerForTraitChanges:v17 withAction:sel_updatePreferredContentSize];

  v19 = +[MRUCallMonitor sharedMonitor];
  [v19 addObserver:self];

  v20 = +[MRUVisualStylingProvider stylingProviderForLockScreenPlatters];
  view7 = [(MRULockscreenViewController *)self view];
  [view7 setStylingProvider:v20];

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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v4 viewWillAppear:appear];
  [(MRULockscreenViewController *)self setOnScreen:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v4 viewWillDisappear:disappear];
  [(MRULockscreenViewController *)self setOnScreen:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = MRULockscreenViewController;
  [(MRULockscreenViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  delegate = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate lockscreenViewController:self viewWillTransitionToSize:{width, height}];
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

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    nowPlayingController = [(MRULockscreenViewController *)self nowPlayingController];
    [nowPlayingController updateAutomaticResponseLoading];

    nowPlayingController2 = [(MRULockscreenViewController *)self nowPlayingController];
    mediaSuggestionsController = [nowPlayingController2 mediaSuggestionsController];
    [mediaSuggestionsController refreshMediaSuggestions];

    view = [(MRULockscreenViewController *)self view];
    [view setOnScreen:screenCopy];

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
  view = [(MRULockscreenViewController *)self view];
  artworkView = [view artworkView];

  return artworkView;
}

- (BOOL)isShowingMediaSuggestions
{
  view = [(MRULockscreenViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  return showSuggestionsView;
}

- (void)setShowArtworkView:(BOOL)view completion:(id)completion
{
  if (self->_showArtworkView != view)
  {
    self->_showArtworkView = view;
    completionCopy = completion;
    [(MRULockscreenViewController *)self updateArtwork];
    [(MRULockscreenViewController *)self updateLayoutDependantPropertiesWithCompletion:completionCopy];
  }
}

- (NSArray)restrictedRects
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  view = [(MRULockscreenViewController *)self view];
  if ([view showSuggestionsView])
  {
    view2 = [(MRULockscreenViewController *)self view];
    suggestionsView = [view2 suggestionsView];

    if (!suggestionsView)
    {
      goto LABEL_5;
    }

    view3 = [(MRULockscreenViewController *)self view];
    suggestionsView2 = [view3 suggestionsView];
    [suggestionsView2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    view = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
    [v3 addObject:view];
  }

LABEL_5:
  view4 = [(MRULockscreenViewController *)self view];
  showArtworkView = [view4 showArtworkView];

  if (showArtworkView)
  {
    view5 = [(MRULockscreenViewController *)self view];
    artworkView = [view5 artworkView];
    [artworkView frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [MEMORY[0x1E696B098] valueWithRect:{v22, v24, v26, v28}];
    [v3 addObject:v29];
  }

  view6 = [(MRULockscreenViewController *)self view];
  headerView = [view6 headerView];
  [headerView frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [MEMORY[0x1E696B098] valueWithRect:{v33, v35, v37, v39}];
  [v3 addObject:v40];

  view7 = [(MRULockscreenViewController *)self view];
  timeControlsView = [view7 timeControlsView];
  [timeControlsView frame];

  UIRectInset();
  v43 = [MEMORY[0x1E696B098] valueWithRect:?];
  [v3 addObject:v43];

  view8 = [(MRULockscreenViewController *)self view];
  transportControlsView = [view8 transportControlsView];
  [transportControlsView frame];

  UIRectInset();
  v46 = [MEMORY[0x1E696B098] valueWithRect:?];
  [v3 addObject:v46];

  view9 = [(MRULockscreenViewController *)self view];
  LODWORD(transportControlsView) = [view9 showVolumeControlsView];

  if (transportControlsView)
  {
    view10 = [(MRULockscreenViewController *)self view];
    volumeControlsView = [view10 volumeControlsView];
    [volumeControlsView frame];

    UIRectInset();
    v50 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v50];
  }

  v51 = [v3 copy];

  return v51;
}

- (void)didSelectArtworkView:(id)view
{
  viewCopy = view;
  delegate = [(MRULockscreenViewController *)self delegate];
  v6 = [delegate lockscreenViewController:self didSelectArtworkView:viewCopy];

  if ((v6 & 1) == 0)
  {
    endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    [endpointController launchNowPlayingApp];
  }
}

- (void)didSelectLabelView:(id)view
{
  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  [endpointController launchNowPlayingApp];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d
{
  [(MRULockscreenViewController *)self updateRoutingButton:controller];

  [(MRULockscreenViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  [(MRULockscreenViewController *)self updateRouteLabel:controller];
  [(MRULockscreenViewController *)self updateVolumeControls];
  [(MRULockscreenViewController *)self updateWaveformVisibility];
  [(MRULockscreenViewController *)self updateRoutingButtonAnimated:1];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"route changed"];
}

- (void)nowPlayingController:(id)controller tvRemoteController:(id)remoteController didChangeShowTVRemote:(BOOL)remote
{
  showTVRemote = [remoteController showTVRemote];
  view = [(MRULockscreenViewController *)self view];
  transportControlsView = [view transportControlsView];
  [transportControlsView setShowTVRemoteButton:showTVRemote];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  [(MRULockscreenViewController *)self updateNowPlayingInfo:controller];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"now playing info changed"];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeTimeControls:(id)controls
{
  [(MRULockscreenViewController *)self updateTimeControls:controller];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"time controls changed"];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeTransportControls:(id)controls
{
  [(MRULockscreenViewController *)self updateTransportControls:controller];

  [(MRULockscreenViewController *)self invalidateAllTimelinesForReason:@"transport controls changed"];
}

- (void)mediaSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion completion:(id)completion
{
  completionCopy = completion;
  nowPlayingController = self->_nowPlayingController;
  suggestionCopy = suggestion;
  mediaSuggestionsController = [(MRUNowPlayingController *)nowPlayingController mediaSuggestionsController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__MRULockscreenViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke;
  v12[3] = &unk_1E76661F8;
  v13 = completionCopy;
  v11 = completionCopy;
  [mediaSuggestionsController playSuggestion:suggestionCopy completion:v12];
}

- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button
{
  v4 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController:view];
  [v4 presentTVRemoteUsingApp:0];
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

    endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    routeUID = [endpointController routeUID];
    [v8 setRouteUID:routeUID];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleHapticEnabledStatusChangedNotification_ name:*MEMORY[0x1E696F718] object:0];
}

- (id)_timelinesForDateInterval:(id)interval
{
  v15[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(MRULockscreenViewController *)self traitCollection];
  if ([traitCollection mr_shouldDim])
  {
    metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    nowPlayingInfo = [metadataController nowPlayingInfo];
    isPlaying = [nowPlayingInfo isPlaying];

    if (isPlaying)
    {
      currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
      [currentSettings flipBookUpdateInterval];
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

- (void)_updateWithFrameSpecifier:(id)specifier
{
  presentationInterval = [specifier presentationInterval];
  [(MRULockscreenViewController *)self updateTimeControlsForPresentationInterval:presentationInterval];
}

- (id)backlightSceneEnvironment
{
  view = [(MRULockscreenViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];

  return _backlightSceneEnvironment;
}

- (void)invalidateAllTimelinesForReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  traitCollection = [(MRULockscreenViewController *)self traitCollection];
  mr_shouldDim = [traitCollection mr_shouldDim];

  if (mr_shouldDim)
  {
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = reasonCopy;
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

  tvRemoteController = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  [tvRemoteController setContext:2];

  v6 = *MEMORY[0x1E69B0978];
  mediaSuggestionsController = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  [mediaSuggestionsController setContext:v6];

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
  view = [(MRUWaveformViewController *)self->_waveformViewController view];
  view2 = [(MRULockscreenViewController *)self view];
  headerView = [view2 headerView];
  [headerView setWaveformView:view];

  v10 = self->_waveformViewController;

  [(MRUWaveformViewController *)v10 didMoveToParentViewController:self];
}

- (void)createHapticViewController
{
  v3 = [[MRUHapticViewController alloc] initWithContext:1 nowPlayingController:self->_nowPlayingController];
  hapticViewController = self->_hapticViewController;
  self->_hapticViewController = v3;

  [(MRULockscreenViewController *)self addChildViewController:self->_hapticViewController];
  view = [(MRUHapticViewController *)self->_hapticViewController view];
  view2 = [(MRULockscreenViewController *)self view];
  headerView = [view2 headerView];
  [headerView setHapticView:view];

  waveformViewController = self->_waveformViewController;

  [(MRUWaveformViewController *)waveformViewController didMoveToParentViewController:self];
}

- (void)createSuggestionsViewController
{
  mediaSuggestionsController = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  mediaSuggestions = [mediaSuggestionsController mediaSuggestions];

  v4 = [[MRUMediaSuggestionsViewController alloc] initWithMediaSuggestions:mediaSuggestions];
  suggestionsViewController = self->_suggestionsViewController;
  self->_suggestionsViewController = v4;

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setDelegate:self];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setLayout:1];
  view = [(MRULockscreenViewController *)self view];
  stylingProvider = [view stylingProvider];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setStylingProvider:stylingProvider];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setContentEdgeInsets:14.0, 14.0, 14.0, 14.0];
  [(MRULockscreenViewController *)self addChildViewController:self->_suggestionsViewController];
  view2 = [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController view];
  view3 = [(MRULockscreenViewController *)self view];
  [view3 setSuggestionsView:view2];

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
    metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    artwork = [metadataController artwork];

    view = [(MRULockscreenViewController *)self view];
    artworkView = [view artworkView];

    [artworkView setArtwork:artwork];
  }
}

- (void)updateRouteLabel
{
  view = [(MRULockscreenViewController *)self view];
  headerView = [view headerView];
  labelView = [headerView labelView];

  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  route = [endpointController route];

  [labelView setRoute:route];
  [(MRULockscreenViewController *)self updateLayoutDependantProperties];
}

- (void)updateNowPlayingInfo
{
  metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];

  view = [(MRULockscreenViewController *)self view];
  headerView = [view headerView];
  labelView = [headerView labelView];

  v8 = [nowPlayingInfo stringForComponents:1];
  v9 = [nowPlayingInfo stringForComponents:122];
  if (v8 | v9)
  {
    [labelView setTitle:v8];
    v10 = v9;
  }

  else
  {
    metadataController2 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    bundleName = [metadataController2 bundleName];
    [labelView setTitle:bundleName];

    v10 = 0;
  }

  [labelView setSubtitle:v10];
  placeholder = [nowPlayingInfo placeholder];
  [labelView setPlaceholder:placeholder];

  showPlaceholder = [nowPlayingInfo showPlaceholder];
  if (showPlaceholder != [labelView showPlaceholder])
  {
    v15 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__MRULockscreenViewController_updateNowPlayingInfo__block_invoke;
    v17[3] = &unk_1E7663DF8;
    v20 = showPlaceholder;
    v18 = labelView;
    selfCopy = self;
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

- (void)updateTimeControlsForPresentationInterval:(id)interval
{
  nowPlayingController = self->_nowPlayingController;
  intervalCopy = interval;
  metadataController = [(MRUNowPlayingController *)nowPlayingController metadataController];
  timeControls = [metadataController timeControls];

  view = [(MRULockscreenViewController *)self view];
  timeControlsView = [view timeControlsView];

  [timeControlsView setTimeControls:timeControls forPresentationInterval:intervalCopy];
}

- (void)updateTransportControls
{
  metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  transportControls = [metadataController transportControls];

  view = [(MRULockscreenViewController *)self view];
  transportControlsView = [view transportControlsView];

  [transportControlsView setTransportControls:transportControls];
  tvRemoteController = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  [transportControlsView setShowTVRemoteButton:{objc_msgSend(tvRemoteController, "showTVRemote")}];
}

- (void)updateVolumeControls
{
  v40[3] = *MEMORY[0x1E69E9840];
  view = [(MRULockscreenViewController *)self view];
  volumeControlsView = [view volumeControlsView];

  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  route = [endpointController route];

  volumeController = [volumeControlsView volumeController];
  dataSource = [volumeController dataSource];

  volumeController2 = [volumeControlsView volumeController];

  if (volumeController2)
  {
    groupRoute = [dataSource groupRoute];
    v11 = [groupRoute isEqual:route];

    if (v11)
    {
      goto LABEL_6;
    }

    v12 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    [volumeControlsView setDataSource:v12];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    v13 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v12];
    [volumeControlsView setVolumeController:v13];
  }

  dataSource = v12;
LABEL_6:
  endpointController2 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([endpointController2 isDeviceSystemRoute])
  {
    endpointController3 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    if ([endpointController3 isAirPlaying])
    {
      alwaysShowVolumeControls = 1;
    }

    else
    {
      currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
      alwaysShowVolumeControls = [currentSettings alwaysShowVolumeControls];
    }
  }

  else
  {
    alwaysShowVolumeControls = 1;
  }

  v18 = self->_onScreen & alwaysShowVolumeControls;
  v19 = +[MRUCallMonitor sharedMonitor];
  isOnCall = [v19 isOnCall];

  volumeControlCapabilities = [dataSource volumeControlCapabilities];
  view2 = [(MRULockscreenViewController *)self view];
  volumeControlsView2 = [view2 volumeControlsView];
  [volumeControlsView2 setOnScreen:v18 & 1];

  if ((v18 & 1) != 0 && (isOnCall & 1) == 0 && ([route isDeviceRoute] & 1) == 0 && (volumeControlCapabilities & 3) != 0)
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
      *(v40 + 6) = route;
      _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ taking hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | control: %{BOOL}u | route: %{public}@", &v31, 0x2Eu);
    }

    v25 = +[MRUHardwareVolumeController sharedInstance];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v25 requestControlsForVolumeDataSource:dataSource reason:v27];
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
      v36 = alwaysShowVolumeControls;
      v37 = 1024;
      v38 = isOnCall;
      v39 = 2114;
      v40[0] = route;
      _os_log_impl(&dword_1A20FC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ removing hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | route: %{public}@", &v31, 0x28u);
    }

    v25 = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = 0;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)updateRoutingButtonAnimated:(BOOL)animated
{
  view = [(MRULockscreenViewController *)self view];
  transportControlsView = [view transportControlsView];

  routingButton = [transportControlsView routingButton];
  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  route = [endpointController route];
  canModifyGroupMembership = [route canModifyGroupMembership];

  [transportControlsView setShowRoutingButton:canModifyGroupMembership];
  nowPlayingController = self->_nowPlayingController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__MRULockscreenViewController_updateRoutingButtonAnimated___block_invoke;
  v13[3] = &unk_1E76656F0;
  v14 = routingButton;
  selfCopy = self;
  animatedCopy = animated;
  v12 = routingButton;
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
  view = [(MRULockscreenViewController *)self view];
  headerView = [view headerView];

  routeSupportsWaveform = [(MRUWaveformController *)self->_waveformController routeSupportsWaveform];
  mEMORY[0x1E696F728] = [MEMORY[0x1E696F728] sharedManager];
  if ([mEMORY[0x1E696F728] musicHapticsEnabled])
  {
    metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
    appSupportsHaptics = [metadataController appSupportsHaptics];
  }

  else
  {
    appSupportsHaptics = 0;
  }

  if (routeSupportsWaveform)
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:self->_onScreen & ~appSupportsHaptics & 1];
    v8 = self->_onScreen & appSupportsHaptics;
  }

  else
  {
    [(MRUWaveformViewController *)self->_waveformViewController setOnScreen:0];
    appSupportsHaptics = 0;
    v8 = 0;
  }

  [(MRUHapticViewController *)self->_hapticViewController setOnScreen:v8 & 1];
  [headerView setShowWaveform:routeSupportsWaveform];
  [headerView setShowHaptic:appSupportsHaptics];
}

- (void)updateVisibility
{
  onScreen = self->_onScreen;
  view = [(MRULockscreenViewController *)self view];
  [view setOnScreen:onScreen];
}

- (void)updateSuggestions
{
  mediaSuggestionsController = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  mediaSuggestions = [mediaSuggestionsController mediaSuggestions];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setMediaSuggestions:mediaSuggestions];

  [(MRULockscreenViewController *)self updateLayoutDependantProperties];
}

- (void)updateLayoutDependantPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  showArtworkView = self->_showArtworkView;
  view = [(MRULockscreenViewController *)self view];
  showArtworkView = [view showArtworkView];
  v6 = self->_showArtworkView;

  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([endpointController isDeviceSystemRoute])
  {
    endpointController2 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    isAirPlaying = [endpointController2 isAirPlaying];
  }

  else
  {
    isAirPlaying = 1;
  }

  view2 = [(MRULockscreenViewController *)self view];
  headerView = [view2 headerView];
  labelView = [headerView labelView];
  v13 = isAirPlaying ^ [labelView showRoute];

  endpointController3 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  if ([endpointController3 isDeviceSystemRoute])
  {
    endpointController4 = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
    if ([endpointController4 isAirPlaying])
    {
      alwaysShowVolumeControls = 1;
    }

    else
    {
      currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
      alwaysShowVolumeControls = [currentSettings alwaysShowVolumeControls];
    }
  }

  else
  {
    alwaysShowVolumeControls = 1;
  }

  v18 = v6 != showArtworkView;

  view3 = [(MRULockscreenViewController *)self view];
  showVolumeControlsView = [view3 showVolumeControlsView];

  mediaSuggestionsController = [(MRUNowPlayingController *)self->_nowPlayingController mediaSuggestionsController];
  mediaSuggestions = [mediaSuggestionsController mediaSuggestions];

  view4 = [(MRULockscreenViewController *)self view];
  v24 = (mediaSuggestions != 0) ^ [view4 showSuggestionsView];

  if (((v18 | v13) & 1) != 0 || ((alwaysShowVolumeControls ^ showVolumeControlsView) & 1) != 0 || v24)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke;
    v30[3] = &unk_1E7666220;
    v30[4] = self;
    v31 = showArtworkView;
    v32 = isAirPlaying;
    v33 = alwaysShowVolumeControls;
    v34 = mediaSuggestions != 0;
    v35 = v24;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __77__MRULockscreenViewController_updateLayoutDependantPropertiesWithCompletion___block_invoke_2;
    v27[3] = &unk_1E7666248;
    v27[4] = self;
    v29 = mediaSuggestions != 0;
    v28 = completionCopy;
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

- (void)updateLayoutWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  view = [(MRULockscreenViewController *)self view];
  [view bounds];
  if (v8 == 0.0)
  {
  }

  else
  {
    view2 = [(MRULockscreenViewController *)self view];
    [view2 bounds];
    v11 = v10;

    if (v11 != 0.0)
    {
      [MEMORY[0x1E69DD250] mru_animateUsingType:0 animations:animationsCopy completion:completionCopy];
      goto LABEL_6;
    }
  }

  [MEMORY[0x1E69DD250] performWithoutAnimation:animationsCopy];
  completionCopy[2](completionCopy, 1);
LABEL_6:
}

- (void)updatePreferredContentSize
{
  v24 = *MEMORY[0x1E69E9840];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  Width = CGRectGetWidth(v27);

  view = [(MRULockscreenViewController *)self view];
  [view sizeThatFits:{Width, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  v10 = MCLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v25.width = v7;
    v25.height = v9;
    v12 = NSStringFromCGSize(v25);
    view2 = [(MRULockscreenViewController *)self view];
    [view2 frame];
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

  delegate = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate lockscreenViewController:self didUpdatePreferredContentSize:{v7, v9}];
  }
}

- (void)updateRestrictedRects
{
  delegate = [(MRULockscreenViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    restrictedRects = [(MRULockscreenViewController *)self restrictedRects];
    [delegate lockscreenViewController:self didUpdateRestrictedRects:restrictedRects];
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
  endpointController = [(MRUNowPlayingController *)self->_nowPlayingController endpointController];
  v7 = endpointController;
  if (endpointController)
  {
    v8 = endpointController;
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
  view = [(MRULockscreenViewController *)self view];
  window = [view window];
  v13 = window;
  if (window)
  {
    v14 = window;
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