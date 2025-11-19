@interface HUCameraPlayerAVBehavior
- (HUCameraPlayerAVBehavior)init;
- (HUCameraPlayerAVBehavior)initWithDelegate:(id)a3;
- (HUCameraPlayerAVBehaviorDelegate)delegate;
- (void)beginScrubbing;
- (void)endScrubbingWithTargetTime:(double)a3;
- (void)pictureInPictureActionButtonTapped;
- (void)playbackControlsDidChangePlayerVolume:(float)a3;
- (void)playbackControlsDidToggleMuted:(BOOL)a3;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3;
- (void)scrubToTime:(double)a3;
@end

@implementation HUCameraPlayerAVBehavior

- (HUCameraPlayerAVBehavior)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDelegate_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCameraPlayerAVBehavior.m" lineNumber:15 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPlayerAVBehavior init]", v5}];

  return 0;
}

- (HUCameraPlayerAVBehavior)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  v5 = [(HUCameraPlayerAVBehavior *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)playbackControlsDidToggleMuted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidToggleMuted:?];
  v5 = [(HUCameraPlayerAVBehavior *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HUCameraPlayerAVBehavior *)self delegate];
    [v7 playbackControlsDidToggleMuted:v3];
  }
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidUpdateVisibilityOfLoadingIndicator:?];
  v5 = [(HUCameraPlayerAVBehavior *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HUCameraPlayerAVBehavior *)self delegate];
    [v7 playbackControlsDidUpdateVisibilityOfLoadingIndicator:v3];
  }
}

- (void)pictureInPictureActionButtonTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ pictureInPictureActionButtonTapped.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v7 pictureInPictureActionButtonTapped];
  v4 = [(HUCameraPlayerAVBehavior *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HUCameraPlayerAVBehavior *)self delegate];
    [v6 pictureInPictureDidToggleMicrophone];
  }
}

- (void)playbackControlsDidChangePlayerVolume:(float)a3
{
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidChangePlayerVolume:?];
  v5 = [(HUCameraPlayerAVBehavior *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x277D14CE8] isAMac];

    if (!v6)
    {
      return;
    }

    v5 = [(HUCameraPlayerAVBehavior *)self delegate];
    *&v7 = a3;
    [v5 playbackControlsDidChangePlayerVolume:v7];
  }
}

- (void)beginScrubbing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "%@ beginScrubbing", &v5, 0xCu);
  }

  v4 = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [v4 beginScrubbing];
}

- (void)endScrubbingWithTargetTime:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2048;
    v11 = a3;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "%@ endScrubbingWithTargetTime: %.3f", &v8, 0x16u);
  }

  v6 = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [v6 scrubToTime:a3 resolution:0.0];

  v7 = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [v7 endScrubbing];
}

- (void)scrubToTime:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HUCameraPlayerAVBehavior *)self delegate];
  [v5 currentScrubberResolutionForBehavior:self];
  v7 = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = self;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = v7;
    _os_log_debug_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEBUG, "%@ scrubToTime: %.3f (resolution: %f)", &v10, 0x20u);
  }

  v9 = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [v9 scrubToTime:a3 resolution:v7];
}

- (HUCameraPlayerAVBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end