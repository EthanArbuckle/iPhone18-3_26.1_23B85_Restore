@interface MRUAmbientCompactNowPlayingViewController
- (MRUAmbientCompactNowPlayingViewController)init;
- (MRUAmbientCompactNowPlayingViewController)initWithNowPlayingController:(id)controller;
- (void)loadView;
- (void)setOnScreen:(BOOL)screen;
- (void)updateArtwork;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MRUAmbientCompactNowPlayingViewController

- (MRUAmbientCompactNowPlayingViewController)init
{
  v3 = +[MRUEndpointController proactiveUserSelectedEndpointController];
  v4 = [[MRUNowPlayingController alloc] initWithEndpointController:v3];
  v5 = [(MRUAmbientCompactNowPlayingViewController *)self initWithNowPlayingController:v4];

  return v5;
}

- (MRUAmbientCompactNowPlayingViewController)initWithNowPlayingController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MRUAmbientCompactNowPlayingViewController;
  v6 = [(MRUAmbientCompactNowPlayingViewController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nowPlayingController, controller);
    [(MRUNowPlayingController *)v7->_nowPlayingController addObserver:v7];
    v8 = objc_alloc_init(MRUWaveformController);
    waveformController = v7->_waveformController;
    v7->_waveformController = v8;

    [(MRUWaveformController *)v7->_waveformController setNowPlayingController:v7->_nowPlayingController];
    v10 = [MRUWaveformViewController alloc];
    v11 = v7->_waveformController;
    v12 = +[MRUWaveformSettings ambientSettings];
    v13 = [(MRUWaveformViewController *)v10 initWithContext:2 waveformController:v11 settings:v12];
    waveformViewController = v7->_waveformViewController;
    v7->_waveformViewController = v13;

    [(MRUWaveformViewController *)v7->_waveformViewController setOnScreen:1];
    [(MRUWaveformViewController *)v7->_waveformViewController willMoveToParentViewController:v7];
    [(MRUAmbientCompactNowPlayingViewController *)v7 addChildViewController:v7->_waveformViewController];
  }

  return v7;
}

- (void)loadView
{
  v3 = [MRUAmbientCompactNowPlayingView alloc];
  waveformViewController = [(MRUAmbientCompactNowPlayingViewController *)self waveformViewController];
  view = [waveformViewController view];
  v6 = [(MRUAmbientCompactNowPlayingView *)v3 initWithWaveformView:view];
  [(MRUAmbientCompactNowPlayingViewController *)self setView:v6];

  waveformViewController2 = [(MRUAmbientCompactNowPlayingViewController *)self waveformViewController];
  [waveformViewController2 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MRUAmbientCompactNowPlayingViewController;
  [(MRUAmbientCompactNowPlayingViewController *)&v3 viewDidLoad];
  [(MRUAmbientCompactNowPlayingViewController *)self updateArtwork];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRUAmbientCompactNowPlayingViewController;
  [(MRUAmbientCompactNowPlayingViewController *)&v4 viewWillAppear:appear];
  [(MRUAmbientCompactNowPlayingViewController *)self setOnScreen:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRUAmbientCompactNowPlayingViewController;
  [(MRUAmbientCompactNowPlayingViewController *)&v4 viewDidDisappear:disappear];
  [(MRUAmbientCompactNowPlayingViewController *)self setOnScreen:0];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    nowPlayingController = [(MRUAmbientCompactNowPlayingViewController *)self nowPlayingController];
    [nowPlayingController updateAutomaticResponseLoading];
  }
}

- (void)updateArtwork
{
  metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  artwork = [metadataController artwork];
  catalog = [artwork catalog];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MRUAmbientCompactNowPlayingViewController_updateArtwork__block_invoke;
  v6[3] = &unk_1E76647F0;
  v6[4] = self;
  [catalog requestImageWithCompletion:v6];
}

void __58__MRUAmbientCompactNowPlayingViewController_updateArtwork__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 waveformController];
  [v4 setArtworkImage:v3];
}

@end