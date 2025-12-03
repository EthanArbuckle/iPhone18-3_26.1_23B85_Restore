@interface HUCameraLiveStreamViewController
- (HFCameraLiveStreamControllerDelegate)liveStreamControllerDelegate;
- (HUCameraLiveStreamViewController)initWithCameraProfile:(id)profile;
- (HUCameraView)cameraView;
- (void)setShouldRespectAspectRatio:(BOOL)ratio;
- (void)streamControllerStateDidUpdate:(id)update;
- (void)viewDidLoad;
@end

@implementation HUCameraLiveStreamViewController

- (HUCameraLiveStreamViewController)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HUCameraLiveStreamViewController;
  v5 = [(HUCameraLiveStreamViewController *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D144B0]);
    accessory = [profileCopy accessory];
    home = [accessory home];
    v9 = [v6 initWithHome:home cameraProfile:profileCopy];
    liveStreamController = v5->_liveStreamController;
    v5->_liveStreamController = v9;

    [(HFCameraLiveStreamController *)v5->_liveStreamController setDelegate:v5];
  }

  return v5;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = HUCameraLiveStreamViewController;
  [(HUCameraLiveStreamViewController *)&v17 viewDidLoad];
  view = [(HUCameraLiveStreamViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(HUCameraLiveStreamViewController *)self view];
  cameraView = [(HUCameraLiveStreamViewController *)self cameraView];
  [view2 addSubview:cameraView];

  shouldRespectAspectRatio = [(HUCameraLiveStreamViewController *)self shouldRespectAspectRatio];
  cameraView2 = [(HUCameraLiveStreamViewController *)self cameraView];
  [cameraView2 setShouldRespectAspectRatio:shouldRespectAspectRatio];

  v8 = MEMORY[0x277CCAAD0];
  cameraView3 = [(HUCameraLiveStreamViewController *)self cameraView];
  view3 = [(HUCameraLiveStreamViewController *)self view];
  v11 = [v8 hu_constraintsSizingAnchorProvider:cameraView3 toAnchorProvider:view3];
  [v8 activateConstraints:v11];

  liveStreamController = [(HUCameraLiveStreamViewController *)self liveStreamController];
  [liveStreamController startStreaming];

  liveStreamController2 = [(HUCameraLiveStreamViewController *)self liveStreamController];
  streamState = [liveStreamController2 streamState];

  if (streamState == 2)
  {
    liveStreamControllerDelegate = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];
    liveStreamController3 = [(HUCameraLiveStreamViewController *)self liveStreamController];
    [liveStreamControllerDelegate streamControllerStateDidUpdate:liveStreamController3];
  }
}

- (void)setShouldRespectAspectRatio:(BOOL)ratio
{
  if (self->_shouldRespectAspectRatio != ratio)
  {
    self->_shouldRespectAspectRatio = ratio;
    [(HUCameraView *)self->_cameraView setShouldRespectAspectRatio:?];
  }
}

- (void)streamControllerStateDidUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = updateCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ did update: %@", &v11, 0x16u);
  }

  liveStreamController = [(HUCameraLiveStreamViewController *)self liveStreamController];
  liveCameraSource = [liveStreamController liveCameraSource];
  cameraView = [(HUCameraLiveStreamViewController *)self cameraView];
  [cameraView setCameraSource:liveCameraSource];

  liveStreamControllerDelegate = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];

  if (liveStreamControllerDelegate)
  {
    liveStreamControllerDelegate2 = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];
    [liveStreamControllerDelegate2 streamControllerStateDidUpdate:updateCopy];
  }
}

- (HUCameraView)cameraView
{
  cameraView = self->_cameraView;
  if (!cameraView)
  {
    v4 = [[HUCameraView alloc] initWithBadgeView:0];
    [(HUCameraView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUCameraView *)v4 setShouldRespectAspectRatio:[(HUCameraLiveStreamViewController *)self shouldRespectAspectRatio]];
    liveStreamController = [(HUCameraLiveStreamViewController *)self liveStreamController];
    liveCameraSource = [liveStreamController liveCameraSource];
    [(HUCameraView *)v4 setCameraSource:liveCameraSource];

    v7 = self->_cameraView;
    self->_cameraView = v4;

    cameraView = self->_cameraView;
  }

  return cameraView;
}

- (HFCameraLiveStreamControllerDelegate)liveStreamControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_liveStreamControllerDelegate);

  return WeakRetained;
}

@end