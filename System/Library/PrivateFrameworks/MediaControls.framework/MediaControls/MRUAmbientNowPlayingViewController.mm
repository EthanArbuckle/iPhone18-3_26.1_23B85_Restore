@interface MRUAmbientNowPlayingViewController
- (MRUAmbientNowPlayingViewController)initWithNowPlayingController:(id)controller;
- (void)artworkView:(id)view didChangeArtworkImage:(id)image;
- (void)embedBackdropViewController;
- (void)launchNowPlayingApp;
- (void)loadView;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork;
- (void)presentRoutingControlsFromSourceView:(id)view;
- (void)removeBackdropViewController;
- (void)setArtworkTransitionDirection:(int64_t)direction;
- (void)setBackdropViewController:(id)controller;
- (void)setOnScreen:(BOOL)screen;
- (void)transportButtonTap:(id)tap;
- (void)updateArtwork;
- (void)updateEverything;
- (void)updateNowPlayingInfo;
- (void)updateRoute;
- (void)updateRoutingButton;
- (void)updateTimeControls;
- (void)updateTransportControls;
- (void)updateVolumeControls;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MRUAmbientNowPlayingViewController

- (MRUAmbientNowPlayingViewController)initWithNowPlayingController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUAmbientNowPlayingViewController;
  v6 = [(MRUAmbientNowPlayingViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(MRUAmbientNowPlayingView);
  [(MRUAmbientNowPlayingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = MRUAmbientNowPlayingViewController;
  [(MRUAmbientNowPlayingViewController *)&v14 viewDidLoad];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  [view setOverrideUserInterfaceStyle:2];

  [(MRUNowPlayingController *)self->_controller addObserver:self];
  view2 = [(MRUAmbientNowPlayingViewController *)self view];
  artworkView = [view2 artworkView];
  [artworkView addObserver:self];

  view3 = [(MRUAmbientNowPlayingViewController *)self view];
  routingButton = [view3 routingButton];
  [routingButton addTarget:self action:sel_didSelectRoutingButton_ forControlEvents:64];

  view4 = [(MRUAmbientNowPlayingViewController *)self view];
  leftButton = [view4 leftButton];
  [leftButton addTarget:self action:sel_transportButtonTap_ forControlEvents:64];

  view5 = [(MRUAmbientNowPlayingViewController *)self view];
  rightButton = [view5 rightButton];
  [rightButton addTarget:self action:sel_transportButtonTap_ forControlEvents:64];

  view6 = [(MRUAmbientNowPlayingViewController *)self view];
  labelView = [view6 labelView];
  [labelView addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  [(MRUAmbientNowPlayingViewController *)self updateEverything];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MRUAmbientNowPlayingViewController;
  [(MRUAmbientNowPlayingViewController *)&v7 viewWillAppear:appear];
  v4 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:101 andCategory:1];
  v5 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v4];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  [view setStylingProvider:v5];

  [(MRUAmbientNowPlayingViewController *)self updateEverything];
  [(MRUAmbientNowPlayingViewController *)self setOnScreen:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRUAmbientNowPlayingViewController;
  [(MRUAmbientNowPlayingViewController *)&v4 viewDidDisappear:disappear];
  [(MRUAmbientNowPlayingViewController *)self setOnScreen:0];
  [(MRUAmbientNowPlayingViewController *)self removeBackdropViewController];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    view = [(MRUAmbientNowPlayingViewController *)self view];
    [view setOnScreen:screenCopy];

    controller = self->_controller;

    [(MRUNowPlayingController *)controller updateAutomaticResponseLoading];
  }
}

- (void)setBackdropViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_backdropViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_backdropViewController, controller);
    [(MRUAmbientNowPlayingViewController *)self embedBackdropViewController];
    controllerCopy = v6;
  }
}

- (void)setArtworkTransitionDirection:(int64_t)direction
{
  self->_artworkTransitionDirection = direction;
  [(MSVTimer *)self->_artworkTransitionDirectionTimer invalidate];
  if (self->_artworkTransitionDirection == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__MRUAmbientNowPlayingViewController_setArtworkTransitionDirection___block_invoke;
    v6[3] = &unk_1E7663898;
    v6[4] = self;
    v4 = [MEMORY[0x1E69B14D8] timerWithInterval:0 repeats:v6 block:3.0];
    artworkTransitionDirectionTimer = self->_artworkTransitionDirectionTimer;
    self->_artworkTransitionDirectionTimer = v4;
  }
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MRUFlippingArtworkTransitionDirectionDescription([(MRUAmbientNowPlayingViewController *)self artworkTransitionDirection]);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ updateArtwork direction:%@", &v8, 0x16u);
  }

  [(MRUAmbientNowPlayingViewController *)self updateArtwork];
  [(MRUAmbientNowPlayingViewController *)self setArtworkTransitionDirection:0];
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  [(MRUAmbientNowPlayingViewController *)self updateRoute:controller];
  [(MRUAmbientNowPlayingViewController *)self updateVolumeControls];

  [(MRUAmbientNowPlayingViewController *)self updateRoutingButton];
}

- (void)artworkView:(id)view didChangeArtworkImage:(id)image
{
  imageCopy = image;
  backdropViewController = [(MRUAmbientNowPlayingViewController *)self backdropViewController];
  [backdropViewController updateImage:imageCopy animated:1];
}

- (void)transportButtonTap:(id)tap
{
  tapCopy = tap;
  view = [(MRUAmbientNowPlayingViewController *)self view];
  leftButton = [view leftButton];

  [(MRUAmbientNowPlayingViewController *)self setArtworkTransitionDirection:leftButton == tapCopy];
}

- (void)updateVolumeControls
{
  view = [(MRUAmbientNowPlayingViewController *)self view];
  volumeControlsView = [view volumeControlsView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];

  dataSource = [volumeControlsView dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource2 = [volumeControlsView dataSource];
  }

  else
  {
    dataSource2 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MRUAmbientNowPlayingViewController_updateVolumeControls__block_invoke;
  aBlock[3] = &unk_1E7665D30;
  v9 = route;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  volumeController = [volumeControlsView volumeController];

  if (!volumeController)
  {
    v15 = [MRUVolumeController alloc];
    v14 = v10[2](v10);
    v16 = [(MPVolumeController *)v15 initWithDataSource:v14];
    [volumeControlsView setVolumeController:v16];

    goto LABEL_8;
  }

  groupRoute = [dataSource2 groupRoute];
  v13 = [groupRoute isEqual:v9];

  if ((v13 & 1) == 0)
  {
    v14 = v10[2](v10);
    [volumeControlsView setDataSource:v14];
LABEL_8:
  }
}

id __58__MRUAmbientNowPlayingViewController_updateVolumeControls__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:*(a1 + 32) outputDeviceRoute:0];

  return v1;
}

- (void)updateRoute
{
  view = [(MRUAmbientNowPlayingViewController *)self view];
  artworkView = [view artworkView];

  deviceSymbolName = [(MRUNowPlayingController *)self->_controller deviceSymbolName];
  [artworkView setPlaceholderSymbolName:deviceSymbolName];
}

- (void)updateRoutingButton
{
  controller = [(MRUAmbientNowPlayingViewController *)self controller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__MRUAmbientNowPlayingViewController_updateRoutingButton__block_invoke;
  v4[3] = &unk_1E7664290;
  v4[4] = self;
  [controller routingDeviceImage:v4];
}

void __57__MRUAmbientNowPlayingViewController_updateRoutingButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 view];
  [v4 setRoutingButtonImage:v3];
}

- (void)updateNowPlayingInfo
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  [view setNowPlayingInfo:nowPlayingInfo];
}

- (void)updateArtwork
{
  view = [(MRUAmbientNowPlayingViewController *)self view];
  artworkView = [view artworkView];
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  artwork = [metadataController artwork];
  [artworkView setArtwork:artwork transitionDirection:{-[MRUAmbientNowPlayingViewController artworkTransitionDirection](self, "artworkTransitionDirection")}];
}

- (void)updateTimeControls
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  timeControls = [metadataController timeControls];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  timeControlsView = [view timeControlsView];
  [timeControlsView setTimeControls:timeControls];
}

- (void)updateTransportControls
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  transportControls = [metadataController transportControls];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  [view setTransportControls:transportControls];
}

- (void)updateEverything
{
  [(MRUAmbientNowPlayingViewController *)self updateRoute];
  [(MRUAmbientNowPlayingViewController *)self updateVolumeControls];
  [(MRUAmbientNowPlayingViewController *)self updateRoutingButton];
  [(MRUAmbientNowPlayingViewController *)self updateNowPlayingInfo];
  [(MRUAmbientNowPlayingViewController *)self updateArtwork];
  [(MRUAmbientNowPlayingViewController *)self updateTimeControls];

  [(MRUAmbientNowPlayingViewController *)self updateTransportControls];
}

- (void)presentRoutingControlsFromSourceView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(MEMORY[0x1E69705B8]);
  if (!+[MRUFeatureFlagProvider isCayenneEnabled])
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v5 setPresentingAppBundleID:bundleIdentifier];
  }

  [v5 setSurface:8];
  [v5 setStyle:2];
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v8 = MRAVOutputContextCopyUniqueIdentifier();
    [v5 setRoutingContextUID:v8];
  }

  objc_initWeak(&location, self);
  v9 = [objc_alloc(MEMORY[0x1E69705B0]) initWithConfiguration:v5 shouldObserveRoutingContextUIDChanges:0];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v9;

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__MRUAmbientNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke;
  v14 = &unk_1E7663AE8;
  objc_copyWeak(&v15, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:&v11];
  [(MPMediaControls *)self->_mediaControls present:v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__MRUAmbientNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

- (void)embedBackdropViewController
{
  [(MRUAmbientNowPlayingViewController *)self addChildViewController:self->_backdropViewController];
  backdropViewController = self->_backdropViewController;
  view = [(MRUAmbientNowPlayingViewController *)self view];
  artworkView = [view artworkView];
  artworkImage = [artworkView artworkImage];
  [(MRUBackdropControllerProtocol *)backdropViewController updateImage:artworkImage animated:0];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController beginAppearanceTransition:1 animated:self->_onScreen];
  view2 = [(MRUBackdropControllerProtocol *)self->_backdropViewController view];
  view3 = [(MRUAmbientNowPlayingViewController *)self view];
  [view3 setBackgroundView:view2];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController didMoveToParentViewController:self];
  v9 = self->_backdropViewController;

  [(MRUBackdropControllerProtocol *)v9 endAppearanceTransition];
}

- (void)removeBackdropViewController
{
  [(MRUBackdropControllerProtocol *)self->_backdropViewController willMoveToParentViewController:0];
  [(MRUBackdropControllerProtocol *)self->_backdropViewController beginAppearanceTransition:0 animated:self->_onScreen];
  view = [(MRUAmbientNowPlayingViewController *)self view];
  [view setBackgroundView:0];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController removeFromParentViewController];
  backdropViewController = self->_backdropViewController;

  [(MRUBackdropControllerProtocol *)backdropViewController endAppearanceTransition];
}

- (void)launchNowPlayingApp
{
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  [endpointController launchNowPlayingApp];
}

@end