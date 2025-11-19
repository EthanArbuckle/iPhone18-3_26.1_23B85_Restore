@interface MRUAmbientNowPlayingViewController
- (MRUAmbientNowPlayingViewController)initWithNowPlayingController:(id)a3;
- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4;
- (void)embedBackdropViewController;
- (void)launchNowPlayingApp;
- (void)loadView;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5;
- (void)presentRoutingControlsFromSourceView:(id)a3;
- (void)removeBackdropViewController;
- (void)setArtworkTransitionDirection:(int64_t)a3;
- (void)setBackdropViewController:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)transportButtonTap:(id)a3;
- (void)updateArtwork;
- (void)updateEverything;
- (void)updateNowPlayingInfo;
- (void)updateRoute;
- (void)updateRoutingButton;
- (void)updateTimeControls;
- (void)updateTransportControls;
- (void)updateVolumeControls;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MRUAmbientNowPlayingViewController

- (MRUAmbientNowPlayingViewController)initWithNowPlayingController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUAmbientNowPlayingViewController;
  v6 = [(MRUAmbientNowPlayingViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
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
  v3 = [(MRUAmbientNowPlayingViewController *)self view];
  [v3 setOverrideUserInterfaceStyle:2];

  [(MRUNowPlayingController *)self->_controller addObserver:self];
  v4 = [(MRUAmbientNowPlayingViewController *)self view];
  v5 = [v4 artworkView];
  [v5 addObserver:self];

  v6 = [(MRUAmbientNowPlayingViewController *)self view];
  v7 = [v6 routingButton];
  [v7 addTarget:self action:sel_didSelectRoutingButton_ forControlEvents:64];

  v8 = [(MRUAmbientNowPlayingViewController *)self view];
  v9 = [v8 leftButton];
  [v9 addTarget:self action:sel_transportButtonTap_ forControlEvents:64];

  v10 = [(MRUAmbientNowPlayingViewController *)self view];
  v11 = [v10 rightButton];
  [v11 addTarget:self action:sel_transportButtonTap_ forControlEvents:64];

  v12 = [(MRUAmbientNowPlayingViewController *)self view];
  v13 = [v12 labelView];
  [v13 addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  [(MRUAmbientNowPlayingViewController *)self updateEverything];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MRUAmbientNowPlayingViewController;
  [(MRUAmbientNowPlayingViewController *)&v7 viewWillAppear:a3];
  v4 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:101 andCategory:1];
  v5 = [[MRUVisualStylingProvider alloc] initWithVisualStylingProvider:v4];
  v6 = [(MRUAmbientNowPlayingViewController *)self view];
  [v6 setStylingProvider:v5];

  [(MRUAmbientNowPlayingViewController *)self updateEverything];
  [(MRUAmbientNowPlayingViewController *)self setOnScreen:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUAmbientNowPlayingViewController;
  [(MRUAmbientNowPlayingViewController *)&v4 viewDidDisappear:a3];
  [(MRUAmbientNowPlayingViewController *)self setOnScreen:0];
  [(MRUAmbientNowPlayingViewController *)self removeBackdropViewController];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v4 = a3;
    self->_onScreen = a3;
    v6 = [(MRUAmbientNowPlayingViewController *)self view];
    [v6 setOnScreen:v4];

    controller = self->_controller;

    [(MRUNowPlayingController *)controller updateAutomaticResponseLoading];
  }
}

- (void)setBackdropViewController:(id)a3
{
  v5 = a3;
  if (self->_backdropViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backdropViewController, a3);
    [(MRUAmbientNowPlayingViewController *)self embedBackdropViewController];
    v5 = v6;
  }
}

- (void)setArtworkTransitionDirection:(int64_t)a3
{
  self->_artworkTransitionDirection = a3;
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

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MRUFlippingArtworkTransitionDirectionDescription([(MRUAmbientNowPlayingViewController *)self artworkTransitionDirection]);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ updateArtwork direction:%@", &v8, 0x16u);
  }

  [(MRUAmbientNowPlayingViewController *)self updateArtwork];
  [(MRUAmbientNowPlayingViewController *)self setArtworkTransitionDirection:0];
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  [(MRUAmbientNowPlayingViewController *)self updateRoute:a3];
  [(MRUAmbientNowPlayingViewController *)self updateVolumeControls];

  [(MRUAmbientNowPlayingViewController *)self updateRoutingButton];
}

- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4
{
  v5 = a4;
  v6 = [(MRUAmbientNowPlayingViewController *)self backdropViewController];
  [v6 updateImage:v5 animated:1];
}

- (void)transportButtonTap:(id)a3
{
  v4 = a3;
  v6 = [(MRUAmbientNowPlayingViewController *)self view];
  v5 = [v6 leftButton];

  [(MRUAmbientNowPlayingViewController *)self setArtworkTransitionDirection:v5 == v4];
}

- (void)updateVolumeControls
{
  v3 = [(MRUAmbientNowPlayingViewController *)self view];
  v4 = [v3 volumeControlsView];

  v5 = [(MRUNowPlayingController *)self->_controller endpointController];
  v6 = [v5 route];

  v7 = [v4 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 dataSource];
  }

  else
  {
    v8 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MRUAmbientNowPlayingViewController_updateVolumeControls__block_invoke;
  aBlock[3] = &unk_1E7665D30;
  v9 = v6;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [v4 volumeController];

  if (!v11)
  {
    v15 = [MRUVolumeController alloc];
    v14 = v10[2](v10);
    v16 = [(MPVolumeController *)v15 initWithDataSource:v14];
    [v4 setVolumeController:v16];

    goto LABEL_8;
  }

  v12 = [v8 groupRoute];
  v13 = [v12 isEqual:v9];

  if ((v13 & 1) == 0)
  {
    v14 = v10[2](v10);
    [v4 setDataSource:v14];
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
  v3 = [(MRUAmbientNowPlayingViewController *)self view];
  v5 = [v3 artworkView];

  v4 = [(MRUNowPlayingController *)self->_controller deviceSymbolName];
  [v5 setPlaceholderSymbolName:v4];
}

- (void)updateRoutingButton
{
  v3 = [(MRUAmbientNowPlayingViewController *)self controller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__MRUAmbientNowPlayingViewController_updateRoutingButton__block_invoke;
  v4[3] = &unk_1E7664290;
  v4[4] = self;
  [v3 routingDeviceImage:v4];
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
  v5 = [(MRUNowPlayingController *)self->_controller metadataController];
  v3 = [v5 nowPlayingInfo];
  v4 = [(MRUAmbientNowPlayingViewController *)self view];
  [v4 setNowPlayingInfo:v3];
}

- (void)updateArtwork
{
  v6 = [(MRUAmbientNowPlayingViewController *)self view];
  v3 = [v6 artworkView];
  v4 = [(MRUNowPlayingController *)self->_controller metadataController];
  v5 = [v4 artwork];
  [v3 setArtwork:v5 transitionDirection:{-[MRUAmbientNowPlayingViewController artworkTransitionDirection](self, "artworkTransitionDirection")}];
}

- (void)updateTimeControls
{
  v6 = [(MRUNowPlayingController *)self->_controller metadataController];
  v3 = [v6 timeControls];
  v4 = [(MRUAmbientNowPlayingViewController *)self view];
  v5 = [v4 timeControlsView];
  [v5 setTimeControls:v3];
}

- (void)updateTransportControls
{
  v5 = [(MRUNowPlayingController *)self->_controller metadataController];
  v3 = [v5 transportControls];
  v4 = [(MRUAmbientNowPlayingViewController *)self view];
  [v4 setTransportControls:v3];
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

- (void)presentRoutingControlsFromSourceView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69705B8]);
  if (!+[MRUFeatureFlagProvider isCayenneEnabled])
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];
    [v5 setPresentingAppBundleID:v7];
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
  v4 = [(MRUAmbientNowPlayingViewController *)self view];
  v5 = [v4 artworkView];
  v6 = [v5 artworkImage];
  [(MRUBackdropControllerProtocol *)backdropViewController updateImage:v6 animated:0];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController beginAppearanceTransition:1 animated:self->_onScreen];
  v7 = [(MRUBackdropControllerProtocol *)self->_backdropViewController view];
  v8 = [(MRUAmbientNowPlayingViewController *)self view];
  [v8 setBackgroundView:v7];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController didMoveToParentViewController:self];
  v9 = self->_backdropViewController;

  [(MRUBackdropControllerProtocol *)v9 endAppearanceTransition];
}

- (void)removeBackdropViewController
{
  [(MRUBackdropControllerProtocol *)self->_backdropViewController willMoveToParentViewController:0];
  [(MRUBackdropControllerProtocol *)self->_backdropViewController beginAppearanceTransition:0 animated:self->_onScreen];
  v3 = [(MRUAmbientNowPlayingViewController *)self view];
  [v3 setBackgroundView:0];

  [(MRUBackdropControllerProtocol *)self->_backdropViewController removeFromParentViewController];
  backdropViewController = self->_backdropViewController;

  [(MRUBackdropControllerProtocol *)backdropViewController endAppearanceTransition];
}

- (void)launchNowPlayingApp
{
  v2 = [(MRUNowPlayingController *)self->_controller endpointController];
  [v2 launchNowPlayingApp];
}

@end