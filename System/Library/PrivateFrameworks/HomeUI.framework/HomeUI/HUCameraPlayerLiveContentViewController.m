@interface HUCameraPlayerLiveContentViewController
- (HFCameraPlaybackEngine)playbackEngine;
- (HUCameraMicrophoneControl)microphoneControl;
- (HUCameraPlayerLiveContentViewController)initWithCoder:(id)a3;
- (HUCameraPlayerLiveContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HUCameraPlayerLiveContentViewController)initWithPlaybackEngine:(id)a3;
- (void)_updateCameraCornerRadius;
- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerLiveContentViewController

- (HUCameraPlayerLiveContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithPlaybackEngine_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUCameraPlayerLiveContentViewController.m" lineNumber:27 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPlayerLiveContentViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HUCameraPlayerLiveContentViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithPlaybackEngine_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraPlayerLiveContentViewController.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPlayerLiveContentViewController initWithCoder:]", v6}];

  return 0;
}

- (HUCameraPlayerLiveContentViewController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUCameraPlayerLiveContentViewController;
  v5 = [(HUCameraPlayerLiveContentViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playbackEngine, v4);
    v8 = [MEMORY[0x277D144C8] defaultOptions];
    [v4 addObserver:v6 withOptions:v8];
  }

  return v6;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = HUCameraPlayerLiveContentViewController;
  [(HUCameraPlayerLiveContentViewController *)&v17 viewDidLoad];
  v3 = [(HUCameraPlayerLiveContentViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [[HUCameraBadgeView alloc] initWithSize:1];
  v5 = [[HUCameraView alloc] initWithBadgeView:v4];
  [(HUCameraPlayerLiveContentViewController *)self setCameraView:v5];

  v6 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v6 setContentMode:1];

  v7 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v7 setBadgeHidden:1];

  v8 = [(HUCameraPlayerLiveContentViewController *)self playbackEngine];
  v9 = [v8 liveCameraSource];
  v10 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v10 setCameraSource:v9];

  v11 = [(HUCameraPlayerLiveContentViewController *)self view];
  v12 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v11 naui_addAutoLayoutSubview:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  v15 = [(HUCameraPlayerLiveContentViewController *)self view];
  v16 = [v13 hu_constraintsSizingAnchorProvider:v14 toAnchorProvider:v15];
  [v13 activateConstraints:v16];

  [(HUCameraPlayerLiveContentViewController *)self _updateCameraCornerRadius];
}

- (void)playbackEngine:(id)a3 didUpdateLiveCameraSource:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Updating %@ to source:%@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HUCameraPlayerLiveContentViewController_playbackEngine_didUpdateLiveCameraSource___block_invoke;
  v8[3] = &unk_277DB7558;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __84__HUCameraPlayerLiveContentViewController_playbackEngine_didUpdateLiveCameraSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  v3 = v2 != 0;

  v4 = [*(a1 + 32) cameraView];
  [v4 setCameraSource:*(a1 + 40) animated:v3];
}

- (void)_updateCameraCornerRadius
{
  [(HUCameraPlayerLiveContentViewController *)self cornerRadius];
  v4 = v3;
  v5 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v5 _setContinuousCornerRadius:v4];

  v6 = [(HUCameraPlayerLiveContentViewController *)self cameraView];
  [v6 setMaskedCameraCorners:-1];
}

- (HUCameraMicrophoneControl)microphoneControl
{
  microphoneControl = self->_microphoneControl;
  if (!microphoneControl)
  {
    v4 = [[HUCameraMicrophoneControl alloc] initWithFrame:0.0, 0.0, 45.0, 44.0];
    [(HUCameraMicrophoneControl *)v4 setAutoresizingMask:12];
    [(HUCameraMicrophoneControl *)v4 setHidden:0];
    v5 = self->_microphoneControl;
    self->_microphoneControl = v4;

    microphoneControl = self->_microphoneControl;
  }

  return microphoneControl;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end