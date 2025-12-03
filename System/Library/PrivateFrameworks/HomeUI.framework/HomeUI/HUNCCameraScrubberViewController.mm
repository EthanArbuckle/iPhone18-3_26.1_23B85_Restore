@interface HUNCCameraScrubberViewController
- (HFCameraPlaybackEngine)playbackEngine;
- (HUNCCameraScrubberViewController)initWithPlaybackEngine:(id)engine currentClip:(id)clip startDate:(id)date;
- (UIButton)playPauseButton;
- (UIProgressView)progressSlider;
- (UIView)panTrackingView;
- (UIView)playPauseBackgroundView;
- (double)_playbackLength;
- (double)currentScrubberResolution;
- (void)_createAndStartDisplayLink;
- (void)_displayLinkUpdated:(id)updated;
- (void)_loopPlaybackIfNeeded;
- (void)_removeDisplayLink;
- (void)_seekToCurrentScrubberValue;
- (void)_updateScrubberDisplayLinkState;
- (void)_updateSliderPosition;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)playPauseButtonPressed:(id)pressed;
- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status;
- (void)showClipScrubber;
- (void)toggleLive;
- (void)userDidPan:(id)pan;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUNCCameraScrubberViewController

- (HUNCCameraScrubberViewController)initWithPlaybackEngine:(id)engine currentClip:(id)clip startDate:(id)date
{
  engineCopy = engine;
  clipCopy = clip;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = HUNCCameraScrubberViewController;
  v11 = [(HUNCCameraScrubberViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_playbackEngine, engineCopy);
    objc_storeStrong(&v12->_currentClip, clip);
    dateOfOccurrence = dateCopy;
    if (!dateCopy)
    {
      dateOfOccurrence = [(HMCameraClip *)v12->_currentClip dateOfOccurrence];
    }

    objc_storeStrong(&v12->_clipStartDate, dateOfOccurrence);
    if (!dateCopy)
    {
    }

    v14 = [MEMORY[0x277D144D0] clipPositionWithDate:v12->_clipStartDate];
    WeakRetained = objc_loadWeakRetained(&v12->_playbackEngine);
    [WeakRetained setPlaybackPosition:v14];
  }

  return v12;
}

- (void)viewDidLoad
{
  v85[14] = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v84 viewDidLoad];
  view = [(HUNCCameraScrubberViewController *)self view];
  playPauseBackgroundView = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  [view addSubview:playPauseBackgroundView];

  view2 = [(HUNCCameraScrubberViewController *)self view];
  playPauseButton = [(HUNCCameraScrubberViewController *)self playPauseButton];
  [view2 addSubview:playPauseButton];

  view3 = [(HUNCCameraScrubberViewController *)self view];
  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [view3 addSubview:progressSlider];

  view4 = [(HUNCCameraScrubberViewController *)self view];
  panTrackingView = [(HUNCCameraScrubberViewController *)self panTrackingView];
  [view4 addSubview:panTrackingView];

  v57 = MEMORY[0x277CCAAD0];
  playPauseBackgroundView2 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  leftAnchor = [playPauseBackgroundView2 leftAnchor];
  view5 = [(HUNCCameraScrubberViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v79 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v85[0] = v79;
  playPauseBackgroundView3 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  widthAnchor = [playPauseBackgroundView3 widthAnchor];
  v76 = [widthAnchor constraintEqualToConstant:45.0];
  v85[1] = v76;
  playPauseBackgroundView4 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  heightAnchor = [playPauseBackgroundView4 heightAnchor];
  v73 = [heightAnchor constraintEqualToConstant:44.0];
  v85[2] = v73;
  playPauseBackgroundView5 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  centerYAnchor = [playPauseBackgroundView5 centerYAnchor];
  view6 = [(HUNCCameraScrubberViewController *)self view];
  centerYAnchor2 = [view6 centerYAnchor];
  v68 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v85[3] = v68;
  playPauseButton2 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  leftAnchor3 = [playPauseButton2 leftAnchor];
  view7 = [(HUNCCameraScrubberViewController *)self view];
  leftAnchor4 = [view7 leftAnchor];
  v63 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v85[4] = v63;
  playPauseButton3 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  widthAnchor2 = [playPauseButton3 widthAnchor];
  v60 = [widthAnchor2 constraintEqualToConstant:45.0];
  v85[5] = v60;
  playPauseButton4 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  heightAnchor2 = [playPauseButton4 heightAnchor];
  v56 = [heightAnchor2 constraintEqualToConstant:44.0];
  v85[6] = v56;
  playPauseButton5 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  centerYAnchor3 = [playPauseButton5 centerYAnchor];
  view8 = [(HUNCCameraScrubberViewController *)self view];
  centerYAnchor4 = [view8 centerYAnchor];
  v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v85[7] = v51;
  progressSlider2 = [(HUNCCameraScrubberViewController *)self progressSlider];
  leftAnchor5 = [progressSlider2 leftAnchor];
  playPauseBackgroundView6 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  rightAnchor = [playPauseBackgroundView6 rightAnchor];
  v46 = [leftAnchor5 constraintEqualToAnchor:rightAnchor constant:12.0];
  v85[8] = v46;
  progressSlider3 = [(HUNCCameraScrubberViewController *)self progressSlider];
  rightAnchor2 = [progressSlider3 rightAnchor];
  view9 = [(HUNCCameraScrubberViewController *)self view];
  rightAnchor3 = [view9 rightAnchor];
  v41 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3 constant:-12.0];
  v85[9] = v41;
  progressSlider4 = [(HUNCCameraScrubberViewController *)self progressSlider];
  centerYAnchor5 = [progressSlider4 centerYAnchor];
  view10 = [(HUNCCameraScrubberViewController *)self view];
  centerYAnchor6 = [view10 centerYAnchor];
  v36 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v85[10] = v36;
  panTrackingView2 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  leftAnchor6 = [panTrackingView2 leftAnchor];
  playPauseBackgroundView7 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  rightAnchor4 = [playPauseBackgroundView7 rightAnchor];
  v31 = [leftAnchor6 constraintEqualToAnchor:rightAnchor4 constant:12.0];
  v85[11] = v31;
  panTrackingView3 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  rightAnchor5 = [panTrackingView3 rightAnchor];
  view11 = [(HUNCCameraScrubberViewController *)self view];
  rightAnchor6 = [view11 rightAnchor];
  v13 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:-12.0];
  v85[12] = v13;
  panTrackingView4 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  heightAnchor3 = [panTrackingView4 heightAnchor];
  view12 = [(HUNCCameraScrubberViewController *)self view];
  heightAnchor4 = [view12 heightAnchor];
  v18 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v85[13] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:14];
  [v57 activateConstraints:v19];

  currentClip = [(HUNCCameraScrubberViewController *)self currentClip];

  if (currentClip)
  {
    v21 = MEMORY[0x277D144D0];
    clipStartDate = [(HUNCCameraScrubberViewController *)self clipStartDate];
    v23 = [v21 clipPositionWithDate:clipStartDate];
    playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine setPlaybackPosition:v23];

    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine2 pause];

    playbackEngine3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    defaultOptions = [MEMORY[0x277D144C8] defaultOptions];
    [playbackEngine3 addObserver:self withOptions:defaultOptions];

    currentClip2 = [(HUNCCameraScrubberViewController *)self currentClip];
    LOBYTE(defaultOptions) = [currentClip2 isComplete];

    if ((defaultOptions & 1) == 0)
    {
      [(HUNCCameraScrubberViewController *)self toggleLive];
    }
  }

  [(HUNCCameraScrubberViewController *)self setIsVisible:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v5 viewWillAppear:appear];
  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [playbackEngine play];

  [(HUNCCameraScrubberViewController *)self setIsVisible:1];
  [(HUNCCameraScrubberViewController *)self _createAndStartDisplayLink];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v8 viewDidDisappear:disappear];
  [(HUNCCameraScrubberViewController *)self setIsVisible:0];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  [(HUNCCameraScrubberViewController *)self _removeDisplayLink];
  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [playbackEngine removeObserver:self];

  [(HUNCCameraScrubberViewController *)self setPlaybackEngine:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v5 viewWillDisappear:disappear];
  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink invalidate];
}

- (void)_createAndStartDisplayLink
{
  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];

  if (displayLink)
  {
    displayLink2 = [(HUNCCameraScrubberViewController *)self displayLink];
    [displayLink2 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkUpdated_];
  [(HUNCCameraScrubberViewController *)self setDisplayLink:v5];

  displayLink3 = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink3 setPaused:1];

  displayLink4 = [(HUNCCameraScrubberViewController *)self displayLink];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [displayLink4 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
}

- (void)_removeDisplayLink
{
  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink invalidate];
}

- (void)playPauseButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  [pressedCopy setSelected:{objc_msgSend(pressedCopy, "isSelected") ^ 1}];

  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  contentType = [playbackPosition contentType];

  if (contentType)
  {
    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    timeControlStatus = [playbackEngine2 timeControlStatus];

    if ((timeControlStatus - 1) >= 2)
    {
      if (timeControlStatus)
      {
        return;
      }

      playbackEngine3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
      [playbackEngine3 play];
    }

    else
    {
      playbackEngine3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
      [playbackEngine3 pause];
    }

    [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
  }

  else
  {

    [(HUNCCameraScrubberViewController *)self toggleLive];
  }
}

- (void)userDidPan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if ((state - 3) < 2)
  {
    [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
    playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine endScrubbing];

    [(HUNCCameraScrubberViewController *)self setIsScrubbing:0];
LABEL_6:
    [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
    goto LABEL_10;
  }

  if (state != 2)
  {
    if (state != 1)
    {
      goto LABEL_10;
    }

    [(HUNCCameraScrubberViewController *)self setIsScrubbing:1];
    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine2 beginScrubbing];

    goto LABEL_6;
  }

  panTrackingView = [(HUNCCameraScrubberViewController *)self panTrackingView];
  [panCopy locationInView:panTrackingView];
  v9 = v8;
  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider frame];
  v12 = v11;

  v13 = 1.0;
  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  v14 = v9 / v13;
  progressSlider2 = [(HUNCCameraScrubberViewController *)self progressSlider];
  *&v16 = v14;
  [progressSlider2 setProgress:v16];

  progressSlider3 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider3 progress];
  v19 = v18;

  progressSlider4 = [(HUNCCameraScrubberViewController *)self progressSlider];
  LODWORD(v21) = fminf(fmaxf(v19, 0.0), 100.0);
  [progressSlider4 setProgress:v21];

  [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
LABEL_10:
}

- (void)toggleLive
{
  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  contentType = [playbackPosition contentType];

  if (contentType)
  {
    playPauseButton = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [playPauseButton setSelected:0];

    displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
    [displayLink setPaused:1];

    livePosition = [MEMORY[0x277D144D0] livePosition];
    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine2 setPlaybackPosition:livePosition];

    playbackEngine3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [playbackEngine3 play];

    playPauseButton2 = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [playPauseButton2 setHidden:1];

    playPauseBackgroundView = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
    [playPauseBackgroundView setHidden:1];

    progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
    [progressSlider setHidden:1];
  }

  else
  {

    [(HUNCCameraScrubberViewController *)self showClipScrubber];
  }
}

- (void)_seekToCurrentScrubberValue
{
  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider progress];
  v5 = v4;
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v7 = v6 * v5;

  clipStartDate = [(HUNCCameraScrubberViewController *)self clipStartDate];
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v10 = [clipStartDate dateByAddingTimeInterval:v9 + -0.1];

  clipStartDate2 = [(HUNCCameraScrubberViewController *)self clipStartDate];
  v12 = [clipStartDate2 dateByAddingTimeInterval:v7];

  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HUNCCameraScrubberViewController__seekToCurrentScrubberValue__block_invoke;
  v16[3] = &unk_277DB8810;
  v16[4] = self;
  v17 = v10;
  v18 = v12;
  v14 = v12;
  v15 = v10;
  [playbackEngine modifyPlaybackFromSender:self usingBlock:v16];
}

void __63__HUNCCameraScrubberViewController__seekToCurrentScrubberValue__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D144D0];
  v5 = [*(a1 + 40) earlierDate:*(a1 + 48)];
  v3 = [v2 clipPositionWithDate:v5];
  v4 = [*(a1 + 32) playbackEngine];
  [v4 setPlaybackPosition:v3];
}

- (void)_updateSliderPosition
{
  if (![(HUNCCameraScrubberViewController *)self isScrubbing])
  {
    playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v4 = [playbackEngine timeControlStatus] == 2;
    playPauseButton = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [playPauseButton setSelected:v4];

    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    playbackPosition = [playbackEngine2 playbackPosition];

    clipPlaybackDate = [playbackPosition clipPlaybackDate];
    clipStartDate = [(HUNCCameraScrubberViewController *)self clipStartDate];
    [clipPlaybackDate timeIntervalSinceDate:clipStartDate];
    v10 = v9;
    [(HUNCCameraScrubberViewController *)self _playbackLength];
    *&v10 = v10 / v11;
    progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
    LODWORD(v13) = LODWORD(v10);
    [progressSlider setProgress:v13];
  }
}

- (void)_loopPlaybackIfNeeded
{
  clipStartDate = [(HUNCCameraScrubberViewController *)self clipStartDate];
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v14 = [clipStartDate dateByAddingTimeInterval:v4 + -0.1];

  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  clipPlaybackDate = [playbackPosition clipPlaybackDate];
  v8 = [clipPlaybackDate earlierDate:v14];
  if ([v8 isEqualToDate:v14])
  {
  }

  else
  {
    playbackEngine2 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    playbackPosition2 = [playbackEngine2 playbackPosition];
    clipPlaybackDate2 = [playbackPosition2 clipPlaybackDate];
    v12 = [clipPlaybackDate2 isEqualToDate:v14];

    if ((v12 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider setProgress:0.0];

  [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
LABEL_5:
}

- (double)_playbackLength
{
  currentClip = [(HUNCCameraScrubberViewController *)self currentClip];
  [currentClip hf_duration];
  v4 = v3;

  result = 300.0;
  if (v4 <= 300.0)
  {
    return v4;
  }

  return result;
}

- (void)_updateScrubberDisplayLinkState
{
  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v3 = [playbackEngine timeControlStatus] != 2 || !-[HUNCCameraScrubberViewController isVisible](self, "isVisible") || -[HUNCCameraScrubberViewController isScrubbing](self, "isScrubbing");
  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink setPaused:v3];
}

- (void)_displayLinkUpdated:(id)updated
{
  [(HUNCCameraScrubberViewController *)self _loopPlaybackIfNeeded];

  [(HUNCCameraScrubberViewController *)self _updateSliderPosition];
}

- (double)currentScrubberResolution
{
  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider bounds];
  v5 = v4;
  progressSlider2 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider2 contentScaleFactor];
  v8 = v5 * v7;

  return v8;
}

- (void)playbackEngine:(id)engine didUpdateTimeControlStatus:(unint64_t)status
{
  if (![(HUNCCameraScrubberViewController *)self isScrubbing:engine])
  {
    playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
    playbackPosition = [playbackEngine playbackPosition];
    contentType = [playbackPosition contentType];

    if (contentType)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__HUNCCameraScrubberViewController_playbackEngine_didUpdateTimeControlStatus___block_invoke;
      block[3] = &unk_277DB8488;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __78__HUNCCameraScrubberViewController_playbackEngine_didUpdateTimeControlStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];
  v3 = [v2 timeControlStatus] == 2;
  v4 = [*(a1 + 32) playPauseButton];
  [v4 setSelected:v3];

  v5 = *(a1 + 32);

  return [v5 _updateScrubberDisplayLinkState];
}

- (void)showClipScrubber
{
  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink setPaused:0];

  v4 = MEMORY[0x277D144D0];
  clipStartDate = [(HUNCCameraScrubberViewController *)self clipStartDate];
  v6 = [v4 clipPositionWithDate:clipStartDate];
  playbackEngine = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [playbackEngine setPlaybackPosition:v6];

  playPauseButton = [(HUNCCameraScrubberViewController *)self playPauseButton];
  [playPauseButton setHidden:0];

  playPauseBackgroundView = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  [playPauseBackgroundView setHidden:0];

  progressSlider = [(HUNCCameraScrubberViewController *)self progressSlider];
  [progressSlider setHidden:0];
}

- (void)didMoveToParentViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v9 didMoveToParentViewController:?];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  if (!controller)
  {
    displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
    [displayLink invalidate];

    [(HUNCCameraScrubberViewController *)self setDisplayLink:0];
  }
}

- (UIProgressView)progressSlider
{
  progressSlider = self->_progressSlider;
  if (!progressSlider)
  {
    v4 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIProgressView *)v4 setProgressTintColor:systemOrangeColor];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIProgressView *)v4 setTrackTintColor:systemGrayColor];

    [(UIProgressView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = self->_progressSlider;
    self->_progressSlider = v4;

    progressSlider = self->_progressSlider;
  }

  return progressSlider;
}

- (UIView)panTrackingView
{
  panTrackingView = self->_panTrackingView;
  if (!panTrackingView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_userDidPan_];
    [(UIView *)v5 addGestureRecognizer:v6];
    v7 = self->_panTrackingView;
    self->_panTrackingView = v5;

    panTrackingView = self->_panTrackingView;
  }

  return panTrackingView;
}

- (UIButton)playPauseButton
{
  playPauseButton = self->_playPauseButton;
  if (!playPauseButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:0];
    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIButton *)v4 setBackgroundColor:clearColor];

    v6 = HUImageNamed(@"Play");
    v7 = [v6 imageWithRenderingMode:2];

    v8 = HUImageNamed(@"Pause");
    v9 = [v8 imageWithRenderingMode:2];

    [(UIButton *)v4 setImage:v7 forState:0];
    [(UIButton *)v4 setImage:v9 forState:4];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:systemWhiteColor];

    [(UIButton *)v4 addTarget:self action:sel_playPauseButtonPressed_ forControlEvents:64];
    v11 = self->_playPauseButton;
    self->_playPauseButton = v4;

    playPauseButton = self->_playPauseButton;
  }

  return playPauseButton;
}

- (UIView)playPauseBackgroundView
{
  playPauseBackgroundView = self->_playPauseBackgroundView;
  if (!playPauseBackgroundView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8590]);
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 _setContinuousCornerRadius:16.0];
    v5 = self->_playPauseBackgroundView;
    self->_playPauseBackgroundView = v4;

    playPauseBackgroundView = self->_playPauseBackgroundView;
  }

  return playPauseBackgroundView;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  displayLink = [(HUNCCameraScrubberViewController *)self displayLink];
  [displayLink invalidate];

  v7.receiver = self;
  v7.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v7 dealloc];
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end