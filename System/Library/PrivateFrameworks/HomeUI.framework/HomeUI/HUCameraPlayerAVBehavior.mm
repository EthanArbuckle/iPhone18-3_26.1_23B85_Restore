@interface HUCameraPlayerAVBehavior
- (HUCameraPlayerAVBehavior)init;
- (HUCameraPlayerAVBehavior)initWithDelegate:(id)delegate;
- (HUCameraPlayerAVBehaviorDelegate)delegate;
- (void)beginScrubbing;
- (void)endScrubbingWithTargetTime:(double)time;
- (void)pictureInPictureActionButtonTapped;
- (void)playbackControlsDidChangePlayerVolume:(float)volume;
- (void)playbackControlsDidToggleMuted:(BOOL)muted;
- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator;
- (void)scrubToTime:(double)time;
@end

@implementation HUCameraPlayerAVBehavior

- (HUCameraPlayerAVBehavior)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDelegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraPlayerAVBehavior.m" lineNumber:15 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPlayerAVBehavior init]", v5}];

  return 0;
}

- (HUCameraPlayerAVBehavior)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  v5 = [(HUCameraPlayerAVBehavior *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)playbackControlsDidToggleMuted:(BOOL)muted
{
  mutedCopy = muted;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidToggleMuted:?];
  delegate = [(HUCameraPlayerAVBehavior *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HUCameraPlayerAVBehavior *)self delegate];
    [delegate2 playbackControlsDidToggleMuted:mutedCopy];
  }
}

- (void)playbackControlsDidUpdateVisibilityOfLoadingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidUpdateVisibilityOfLoadingIndicator:?];
  delegate = [(HUCameraPlayerAVBehavior *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HUCameraPlayerAVBehavior *)self delegate];
    [delegate2 playbackControlsDidUpdateVisibilityOfLoadingIndicator:indicatorCopy];
  }
}

- (void)pictureInPictureActionButtonTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@ pictureInPictureActionButtonTapped.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v7 pictureInPictureActionButtonTapped];
  delegate = [(HUCameraPlayerAVBehavior *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HUCameraPlayerAVBehavior *)self delegate];
    [delegate2 pictureInPictureDidToggleMicrophone];
  }
}

- (void)playbackControlsDidChangePlayerVolume:(float)volume
{
  v8.receiver = self;
  v8.super_class = HUCameraPlayerAVBehavior;
  [(AVHomeIPCameraBehavior *)&v8 playbackControlsDidChangePlayerVolume:?];
  delegate = [(HUCameraPlayerAVBehavior *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    isAMac = [MEMORY[0x277D14CE8] isAMac];

    if (!isAMac)
    {
      return;
    }

    delegate = [(HUCameraPlayerAVBehavior *)self delegate];
    *&v7 = volume;
    [delegate playbackControlsDidChangePlayerVolume:v7];
  }
}

- (void)beginScrubbing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEBUG, "%@ beginScrubbing", &v5, 0xCu);
  }

  behaviorContext = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [behaviorContext beginScrubbing];
}

- (void)endScrubbingWithTargetTime:(double)time
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2048;
    timeCopy = time;
    _os_log_debug_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEBUG, "%@ endScrubbingWithTargetTime: %.3f", &v8, 0x16u);
  }

  behaviorContext = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [behaviorContext scrubToTime:time resolution:0.0];

  behaviorContext2 = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [behaviorContext2 endScrubbing];
}

- (void)scrubToTime:(double)time
{
  v16 = *MEMORY[0x277D85DE8];
  delegate = [(HUCameraPlayerAVBehavior *)self delegate];
  [delegate currentScrubberResolutionForBehavior:self];
  v7 = v6;

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2048;
    timeCopy = time;
    v14 = 2048;
    v15 = v7;
    _os_log_debug_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEBUG, "%@ scrubToTime: %.3f (resolution: %f)", &v10, 0x20u);
  }

  behaviorContext = [(AVHomeIPCameraBehavior *)self behaviorContext];
  [behaviorContext scrubToTime:time resolution:v7];
}

- (HUCameraPlayerAVBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end