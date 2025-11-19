@interface HUCameraLiveStreamViewController
- (HFCameraLiveStreamControllerDelegate)liveStreamControllerDelegate;
- (HUCameraLiveStreamViewController)initWithCameraProfile:(id)a3;
- (HUCameraView)cameraView;
- (void)setShouldRespectAspectRatio:(BOOL)a3;
- (void)streamControllerStateDidUpdate:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUCameraLiveStreamViewController

- (HUCameraLiveStreamViewController)initWithCameraProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HUCameraLiveStreamViewController;
  v5 = [(HUCameraLiveStreamViewController *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D144B0]);
    v7 = [v4 accessory];
    v8 = [v7 home];
    v9 = [v6 initWithHome:v8 cameraProfile:v4];
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
  v3 = [(HUCameraLiveStreamViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(HUCameraLiveStreamViewController *)self view];
  v5 = [(HUCameraLiveStreamViewController *)self cameraView];
  [v4 addSubview:v5];

  v6 = [(HUCameraLiveStreamViewController *)self shouldRespectAspectRatio];
  v7 = [(HUCameraLiveStreamViewController *)self cameraView];
  [v7 setShouldRespectAspectRatio:v6];

  v8 = MEMORY[0x277CCAAD0];
  v9 = [(HUCameraLiveStreamViewController *)self cameraView];
  v10 = [(HUCameraLiveStreamViewController *)self view];
  v11 = [v8 hu_constraintsSizingAnchorProvider:v9 toAnchorProvider:v10];
  [v8 activateConstraints:v11];

  v12 = [(HUCameraLiveStreamViewController *)self liveStreamController];
  [v12 startStreaming];

  v13 = [(HUCameraLiveStreamViewController *)self liveStreamController];
  v14 = [v13 streamState];

  if (v14 == 2)
  {
    v15 = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];
    v16 = [(HUCameraLiveStreamViewController *)self liveStreamController];
    [v15 streamControllerStateDidUpdate:v16];
  }
}

- (void)setShouldRespectAspectRatio:(BOOL)a3
{
  if (self->_shouldRespectAspectRatio != a3)
  {
    self->_shouldRespectAspectRatio = a3;
    [(HUCameraView *)self->_cameraView setShouldRespectAspectRatio:?];
  }
}

- (void)streamControllerStateDidUpdate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ did update: %@", &v11, 0x16u);
  }

  v6 = [(HUCameraLiveStreamViewController *)self liveStreamController];
  v7 = [v6 liveCameraSource];
  v8 = [(HUCameraLiveStreamViewController *)self cameraView];
  [v8 setCameraSource:v7];

  v9 = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];

  if (v9)
  {
    v10 = [(HUCameraLiveStreamViewController *)self liveStreamControllerDelegate];
    [v10 streamControllerStateDidUpdate:v4];
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
    v5 = [(HUCameraLiveStreamViewController *)self liveStreamController];
    v6 = [v5 liveCameraSource];
    [(HUCameraView *)v4 setCameraSource:v6];

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