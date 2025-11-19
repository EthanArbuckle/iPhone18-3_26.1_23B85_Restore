@interface MRURouteRecommendationPlatterViewController
- (MRURouteRecommendationPlatterViewController)initWithRouteIdentifier:(id)a3;
- (id)_timelinesForDateInterval:(id)a3;
- (id)backlightSceneEnvironment;
- (void)_acceptRecommendation;
- (void)handleActionButtonTap:(id)a3;
- (void)invalidateAllTimelinesForReason:(id)a3;
- (void)loadView;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)schedulePendingTraitCollectionUpdates;
- (void)setOnScreen:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateActionType;
- (void)updateDimmed;
- (void)updateMarqueeAnimation;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MRURouteRecommendationPlatterViewController

- (MRURouteRecommendationPlatterViewController)initWithRouteIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MRURouteRecommendationPlatterViewController;
  v5 = [(MRURouteRecommendationPlatterViewController *)&v15 init];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2048;
      v19 = v5;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, ">>+ MRURPVC got %@ (self = %p)", buf, 0x16u);
    }

    if ([v4 length])
    {
      v7 = [[MRUEndpointController alloc] initWithRouteUID:v4 client:0 player:0];
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

    v13 = [(MRURouteTextFormatter *)v5->_routeTextFormatter configuration];
    [v13 setOmitGroupLeaderName:1];
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
  v3 = [(MRURouteRecommendationPlatterViewController *)self view];
  [v3 addTarget:self action:sel_handleTap_ forControlEvents:64];

  v4 = [(MRURouteRecommendationPlatterViewController *)self view];
  v5 = [v4 actionButton];
  [v5 addTarget:self action:sel_handleActionButtonTap_ forControlEvents:64];

  v6 = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  [v6 addObserver:self];

  [(MRURouteRecommendationPlatterViewController *)self updateActionType];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRURouteRecommendationPlatterViewController;
  [(MRURouteRecommendationPlatterViewController *)&v4 viewWillAppear:a3];
  [(MRURouteRecommendationPlatterViewController *)self setOnScreen:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(MRURouteRecommendationPlatterViewController *)self setOnScreen:0];
  v5.receiver = self;
  v5.super_class = MRURouteRecommendationPlatterViewController;
  [(MRURouteRecommendationPlatterViewController *)&v5 viewDidDisappear:v3];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    v4 = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
    [v4 updateAutomaticResponseLoading];
  }

  [(MRURouteRecommendationPlatterViewController *)self updateMarqueeAnimation];
}

- (void)handleActionButtonTap:(id)a3
{
  v4 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
  v5 = [v4 showTVRemote];

  if (v5)
  {
    v6 = [(MRUNowPlayingController *)self->_nowPlayingController tvRemoteController];
    [v6 presentTVRemoteUsingApp:0];
  }

  else
  {

    [(MRURouteRecommendationPlatterViewController *)self _acceptRecommendation];
  }
}

- (void)_acceptRecommendation
{
  v2 = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  v3 = [v2 endpointController];
  v4 = [v3 route];
  v5 = [v4 endpointObject];
  v6 = [v5 outputDeviceUIDs];
  v8 = [v6 firstObject];

  v7 = [objc_alloc(MEMORY[0x1E69B0B20]) initWithOutputDeviceUID:v8 reason:@"Recommendation accepted"];
  [v7 perform:MEMORY[0x1E69E96A0] completion:&__block_literal_global_11];
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  v6 = a5;
  v7 = +[MRUAssetManager sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__MRURouteRecommendationPlatterViewController_nowPlayingController_endpointController_didChangeRoute___block_invoke;
  v11[3] = &unk_1E7664290;
  v11[4] = self;
  [v7 imageForEndpointRoute:v6 completion:v11];

  v8 = [(MRURouteTextFormatter *)self->_routeTextFormatter textForRoute:v6];

  v9 = [(MRURouteRecommendationPlatterViewController *)self view];
  v10 = [v9 labelView];
  [v10 setTitle:v8];

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

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5
{
  v6 = a5;
  v7 = [(MRURouteRecommendationPlatterViewController *)self view];
  v8 = [v7 activityRouteView];
  v9 = [v8 artworkView];
  [v9 setArtwork:v6];

  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"now playing artwork changed"];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  v6 = a5;
  v14 = [(MRURouteRecommendationPlatterViewController *)self view];
  v7 = [v6 stringForComponents:3];
  v8 = [v14 labelView];
  [v8 setSubtitle:v7];

  LODWORD(v7) = [v6 isPlaying];
  v9 = [v14 activityRouteView];
  v10 = [v9 artworkView];
  [v10 setHidden:v7 ^ 1];

  v11 = [v6 isPlaying];
  v12 = [v14 activityRouteView];
  v13 = [v12 artworkView];
  [v13 setPlaying:v11];

  [(MRURouteRecommendationPlatterViewController *)self invalidateAllTimelinesForReason:@"now playing info changed"];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = MRURouteRecommendationPlatterViewController;
  v4 = a3;
  [(MRURouteRecommendationPlatterViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 mr_shouldDim];

  v6 = [(MRURouteRecommendationPlatterViewController *)self traitCollection];
  v7 = [v6 mr_shouldDim];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
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
  v3 = [(MRURouteRecommendationPlatterViewController *)self nowPlayingController];
  v4 = [v3 tvRemoteController];
  v5 = [v4 showTVRemote];

  v6 = [(MRURouteRecommendationPlatterViewController *)self view];
  [v6 setActionType:v5];
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
  v3 = [(MRURouteRecommendationPlatterViewController *)self isDimmed];
  v5 = [(MRURouteRecommendationPlatterViewController *)self view];
  v4 = [v5 labelView];
  [v4 setMarqueeEnabled:!v3];
}

- (id)backlightSceneEnvironment
{
  v2 = [(MRURouteRecommendationPlatterViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _backlightSceneEnvironment];

  return v5;
}

- (id)_timelinesForDateInterval:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E508] emptyTimelineWithIdentifier:@"route recommendation platter"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)invalidateAllTimelinesForReason:(id)a3
{
  v5 = a3;
  if ([(MRURouteRecommendationPlatterViewController *)self isDimmed])
  {
    v4 = [(MRURouteRecommendationPlatterViewController *)self backlightSceneEnvironment];
    [v4 invalidateAllTimelinesForReason:v5];
  }
}

@end