@interface MRURouteRecommendationPlatterViewController
- (MRURouteRecommendationPlatterViewController)initWithRouteIdentifier:(id)identifier;
- (id)_timelinesForDateInterval:(id)interval;
- (id)backlightSceneEnvironment;
- (void)_acceptRecommendation;
- (void)handleActionButtonTap:(id)tap;
- (void)invalidateAllTimelinesForReason:(id)reason;
- (void)loadView;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
- (void)schedulePendingTraitCollectionUpdates;
- (void)setOnScreen:(BOOL)screen;
- (void)traitCollectionDidChange:(id)change;
- (void)updateActionType;
- (void)updateDimmed;
- (void)updateMarqueeAnimation;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MRURouteRecommendationPlatterViewController

- (MRURouteRecommendationPlatterViewController)initWithRouteIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = MRURouteRecommendationPlatterViewController;
  v5 = [(MRURouteRecommendationPlatterViewController *)&v15 init];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, ">>+ MRURPVC got %@ (self = %p)", buf, 0x16u);
    }

    if ([identifierCopy length])
    {
      v7 = [[MRUEndpointController alloc] initWithRouteUID:identifierCopy client:0 player:0];
    }

    else
    {
      v7 = +[MRUEndpointController proactiveRecommendedEndpointController];
    }

    v8 = v7;
    v9 = [[MRUNowPlayingController alloc] initWithEndpointController:v7];
    nowPlayingController = v5->_nowPlayingController;
    v5->_nowPlayingController = v9;

    v11 = objc_alloc_init(MRURouteTextFormatter);
    routeTextFormatter = v5->_routeTextFormatter;
    v5->_routeTextFormatter = v11;

    configuration = [(MRURouteTextFormatter *)v5->_routeTextFormatter configuration];
    [configuration setOmitGroupLeaderName:1];
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(MRURouteRecommendationPlatterView);
  [(MRURouteRecommendationPlatterViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MRURouteRecommendationPlatterViewController;
  [(MRURouteRecommendationPlatterViewController *)&v7 viewDidLoad];
  view = [(MRURouteRecommendationPlatterViewController *)self view];
  [view addTarget:self action:sel_handleTap_ forControlEvents:64];

  view2 = [(MRURouteRecommendationPlatterViewController *)self view];
  actionButton = [view2 actionButton];
  [actionButton addTarget:self action:sel_handleActionButtonTap_ forControlEvents:64];

  nowPlayingController = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  [nowPlayingController addObserver:self];

  [(MRURouteRecommendationPlatterViewController *)self updateActionType];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRURouteRecommendationPlatterViewController;
  [(MRURouteRecommendationPlatterViewController *)&v4 viewWillAppear:appear];
  [(MRURouteRecommendationPlatterViewController *)self setOnScreen:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MRURouteRecommendationPlatterViewController *)self setOnScreen:0];
  v5.receiver = self;
  v5.super_class = MRURouteRecommendationPlatterViewController;
  [(MRURouteRecommendationPlatterViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    nowPlayingController = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
    [nowPlayingController updateAutomaticResponseLoading];
  }

  [(MRURouteRecommendationPlatterViewController *)self updateMarqueeAnimation];
}

- (void)handleActionButtonTap:(id)tap
{
  tvRemoteController = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  showTVRemote = [tvRemoteController showTVRemote];

  if (showTVRemote)
  {
    tvRemoteController2 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
    [tvRemoteController2 presentTVRemoteUsingApp:0];
  }

  else
  {

    [(MRURouteRecommendationPlatterViewController *)self _acceptRecommendation];
  }
}

- (void)_acceptRecommendation
{
  nowPlayingController = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  endpointController = [nowPlayingController endpointController];
  route = [endpointController route];
  endpointObject = [route endpointObject];
  outputDeviceUIDs = [endpointObject outputDeviceUIDs];
  firstObject = [outputDeviceUIDs firstObject];

  v7 = [objc_alloc(MEMORY[0x1E69B0B20]) initWithOutputDeviceUID:firstObject reason:@"Recommendation accepted"];
  [v7 perform:MEMORY[0x1E69E96A0] completion:&__block_literal_global_11];
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  routeCopy = route;
  v7 = +[MRUAssetManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__MRURouteRecommendationPlatterViewController_nowPlayingController_endpointController_didChangeRoute___block_invoke;
  v11[3] = &unk_1E7664290;
  v11[4] = self;
  [v7 imageForEndpointRoute:routeCopy completion:v11];

  v8 = [(MRURouteTextFormatter *)self->_routeTextFormatter textForRoute:routeCopy];

  view = [(MRURouteRecommendationPlatterViewController *)self view];
  labelView = [view labelView];
  [labelView setTitle:v8];

  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"now playing route changed"];
}

uint64_t __102__MRURouteRecommendationPlatterViewController_nowPlayingController_endpointController_didChangeRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  v6 = [v5 activityRouteView];
  v7 = [v6 deviceIconView];
  [v7 frame];
  v10 = [v4 mru_imageFittingSize:{v8, v9}];

  v11 = [*(a1 + 32) view];
  v12 = [v11 activityRouteView];
  v13 = [v12 deviceIconView];
  [v13 setImage:v10];

  v14 = *(a1 + 32);

  return [v14 invalidateAllTimelinesForReason:@"now playing route image changed"];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork
{
  artworkCopy = artwork;
  view = [(MRURouteRecommendationPlatterViewController *)self view];
  activityRouteView = [view activityRouteView];
  artworkView = [activityRouteView artworkView];
  [artworkView setArtwork:artworkCopy];

  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"now playing artwork changed"];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  infoCopy = info;
  view = [(MRURouteRecommendationPlatterViewController *)self view];
  v7 = [infoCopy stringForComponents:3];
  labelView = [view labelView];
  [labelView setSubtitle:v7];

  LODWORD(v7) = [infoCopy isPlaying];
  activityRouteView = [view activityRouteView];
  artworkView = [activityRouteView artworkView];
  [artworkView setHidden:v7 ^ 1];

  isPlaying = [infoCopy isPlaying];
  activityRouteView2 = [view activityRouteView];
  artworkView2 = [activityRouteView2 artworkView];
  [artworkView2 setPlaying:isPlaying];

  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"now playing info changed"];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = MRURouteRecommendationPlatterViewController;
  changeCopy = change;
  [(MRURouteRecommendationPlatterViewController *)&v9 traitCollectionDidChange:changeCopy];
  mr_shouldDim = [changeCopy mr_shouldDim];

  traitCollection = [(MRURouteRecommendationPlatterViewController *)self traitCollection];
  mr_shouldDim2 = [traitCollection mr_shouldDim];

  if (mr_shouldDim != mr_shouldDim2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:mr_shouldDim2];
    [(MRURouteRecommendationPlatterViewController *)self setPendingDimmed:v8];

    [(MRURouteRecommendationPlatterViewController *)self schedulePendingTraitCollectionUpdates];
  }
}

- (void)updateDimmed
{
  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"backlight luminance changed"];

  [(MRURouteRecommendationPlatterViewController *)self updateMarqueeAnimation];
}

- (void)updateActionType
{
  nowPlayingController = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  tvRemoteController = [nowPlayingController tvRemoteController];
  showTVRemote = [tvRemoteController showTVRemote];

  view = [(MRURouteRecommendationPlatterViewController *)self view];
  [view setActionType:showTVRemote];
}

- (void)schedulePendingTraitCollectionUpdates
{
  if (![(MRURouteRecommendationPlatterViewController *)self hasPendingTraitCollectionUpdates])
  {
    [(MRURouteRecommendationPlatterViewController *)self setHasPendingTraitCollectionUpdates:1];
    v3 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__MRURouteRecommendationPlatterViewController_schedulePendingTraitCollectionUpdates__block_invoke;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __84__MRURouteRecommendationPlatterViewController_schedulePendingTraitCollectionUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingDimmed];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingDimmed];
    [*(a1 + 32) setDimmed:{objc_msgSend(v3, "BOOLValue")}];

    [*(a1 + 32) updateDimmed];
    [*(a1 + 32) setPendingDimmed:0];
  }

  v4 = *(a1 + 32);

  return [v4 setHasPendingTraitCollectionUpdates:0];
}

- (void)updateMarqueeAnimation
{
  isDimmed = [(MRURouteRecommendationPlatterViewController *)self isDimmed];
  view = [(MRURouteRecommendationPlatterViewController *)self view];
  labelView = [view labelView];
  [labelView setMarqueeEnabled:!isDimmed];
}

- (id)backlightSceneEnvironment
{
  view = [(MRURouteRecommendationPlatterViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];

  return _backlightSceneEnvironment;
}

- (id)_timelinesForDateInterval:(id)interval
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E508] emptyTimelineWithIdentifier:@"route recommendation platter"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)invalidateAllTimelinesForReason:(id)reason
{
  reasonCopy = reason;
  if ([(MRURouteRecommendationPlatterViewController *)self isDimmed])
  {
    backlightSceneEnvironment = [(MRURouteRecommendationPlatterViewController *)self backlightSceneEnvironment];
    [backlightSceneEnvironment invalidateAllTimelinesForReason:reasonCopy];
  }
}

@end