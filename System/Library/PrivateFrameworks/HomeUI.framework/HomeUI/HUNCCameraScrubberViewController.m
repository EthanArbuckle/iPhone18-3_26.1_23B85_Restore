@interface HUNCCameraScrubberViewController
- (HFCameraPlaybackEngine)playbackEngine;
- (HUNCCameraScrubberViewController)initWithPlaybackEngine:(id)a3 currentClip:(id)a4 startDate:(id)a5;
- (UIButton)playPauseButton;
- (UIProgressView)progressSlider;
- (UIView)panTrackingView;
- (UIView)playPauseBackgroundView;
- (double)_playbackLength;
- (double)currentScrubberResolution;
- (void)_createAndStartDisplayLink;
- (void)_displayLinkUpdated:(id)a3;
- (void)_loopPlaybackIfNeeded;
- (void)_removeDisplayLink;
- (void)_seekToCurrentScrubberValue;
- (void)_updateScrubberDisplayLinkState;
- (void)_updateSliderPosition;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)playPauseButtonPressed:(id)a3;
- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4;
- (void)showClipScrubber;
- (void)toggleLive;
- (void)userDidPan:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUNCCameraScrubberViewController

- (HUNCCameraScrubberViewController)initWithPlaybackEngine:(id)a3 currentClip:(id)a4 startDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HUNCCameraScrubberViewController;
  v11 = [(HUNCCameraScrubberViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_playbackEngine, v8);
    objc_storeStrong(&v12->_currentClip, a4);
    v13 = v10;
    if (!v10)
    {
      v13 = [(HMCameraClip *)v12->_currentClip dateOfOccurrence];
    }

    objc_storeStrong(&v12->_clipStartDate, v13);
    if (!v10)
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
  v3 = [(HUNCCameraScrubberViewController *)self view];
  v4 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  [v3 addSubview:v4];

  v5 = [(HUNCCameraScrubberViewController *)self view];
  v6 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  [v5 addSubview:v6];

  v7 = [(HUNCCameraScrubberViewController *)self view];
  v8 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v7 addSubview:v8];

  v9 = [(HUNCCameraScrubberViewController *)self view];
  v10 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  [v9 addSubview:v10];

  v57 = MEMORY[0x277CCAAD0];
  v83 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v81 = [v83 leftAnchor];
  v82 = [(HUNCCameraScrubberViewController *)self view];
  v80 = [v82 leftAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v85[0] = v79;
  v78 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v77 = [v78 widthAnchor];
  v76 = [v77 constraintEqualToConstant:45.0];
  v85[1] = v76;
  v75 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v74 = [v75 heightAnchor];
  v73 = [v74 constraintEqualToConstant:44.0];
  v85[2] = v73;
  v72 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v70 = [v72 centerYAnchor];
  v71 = [(HUNCCameraScrubberViewController *)self view];
  v69 = [v71 centerYAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v85[3] = v68;
  v67 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  v65 = [v67 leftAnchor];
  v66 = [(HUNCCameraScrubberViewController *)self view];
  v64 = [v66 leftAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v85[4] = v63;
  v62 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  v61 = [v62 widthAnchor];
  v60 = [v61 constraintEqualToConstant:45.0];
  v85[5] = v60;
  v59 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  v58 = [v59 heightAnchor];
  v56 = [v58 constraintEqualToConstant:44.0];
  v85[6] = v56;
  v55 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  v53 = [v55 centerYAnchor];
  v54 = [(HUNCCameraScrubberViewController *)self view];
  v52 = [v54 centerYAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v85[7] = v51;
  v50 = [(HUNCCameraScrubberViewController *)self progressSlider];
  v48 = [v50 leftAnchor];
  v49 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v47 = [v49 rightAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:12.0];
  v85[8] = v46;
  v45 = [(HUNCCameraScrubberViewController *)self progressSlider];
  v43 = [v45 rightAnchor];
  v44 = [(HUNCCameraScrubberViewController *)self view];
  v42 = [v44 rightAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:-12.0];
  v85[9] = v41;
  v40 = [(HUNCCameraScrubberViewController *)self progressSlider];
  v38 = [v40 centerYAnchor];
  v39 = [(HUNCCameraScrubberViewController *)self view];
  v37 = [v39 centerYAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v85[10] = v36;
  v35 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  v33 = [v35 leftAnchor];
  v34 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  v32 = [v34 rightAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:12.0];
  v85[11] = v31;
  v30 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  v29 = [v30 rightAnchor];
  v11 = [(HUNCCameraScrubberViewController *)self view];
  v12 = [v11 rightAnchor];
  v13 = [v29 constraintEqualToAnchor:v12 constant:-12.0];
  v85[12] = v13;
  v14 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  v15 = [v14 heightAnchor];
  v16 = [(HUNCCameraScrubberViewController *)self view];
  v17 = [v16 heightAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v85[13] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:14];
  [v57 activateConstraints:v19];

  v20 = [(HUNCCameraScrubberViewController *)self currentClip];

  if (v20)
  {
    v21 = MEMORY[0x277D144D0];
    v22 = [(HUNCCameraScrubberViewController *)self clipStartDate];
    v23 = [v21 clipPositionWithDate:v22];
    v24 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v24 setPlaybackPosition:v23];

    v25 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v25 pause];

    v26 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v27 = [MEMORY[0x277D144C8] defaultOptions];
    [v26 addObserver:self withOptions:v27];

    v28 = [(HUNCCameraScrubberViewController *)self currentClip];
    LOBYTE(v27) = [v28 isComplete];

    if ((v27 & 1) == 0)
    {
      [(HUNCCameraScrubberViewController *)self toggleLive];
    }
  }

  [(HUNCCameraScrubberViewController *)self setIsVisible:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v5 viewWillAppear:a3];
  v4 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [v4 play];

  [(HUNCCameraScrubberViewController *)self setIsVisible:1];
  [(HUNCCameraScrubberViewController *)self _createAndStartDisplayLink];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v8 viewDidDisappear:a3];
  [(HUNCCameraScrubberViewController *)self setIsVisible:0];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  [(HUNCCameraScrubberViewController *)self _removeDisplayLink];
  v7 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [v7 removeObserver:self];

  [(HUNCCameraScrubberViewController *)self setPlaybackEngine:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUNCCameraScrubberViewController;
  [(HUNCCameraScrubberViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v4 invalidate];
}

- (void)_createAndStartDisplayLink
{
  v3 = [(HUNCCameraScrubberViewController *)self displayLink];

  if (v3)
  {
    v4 = [(HUNCCameraScrubberViewController *)self displayLink];
    [v4 invalidate];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkUpdated_];
  [(HUNCCameraScrubberViewController *)self setDisplayLink:v5];

  v6 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v6 setPaused:1];

  v7 = [(HUNCCameraScrubberViewController *)self displayLink];
  v8 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];

  [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
}

- (void)_removeDisplayLink
{
  v2 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v2 invalidate];
}

- (void)playPauseButtonPressed:(id)a3
{
  v4 = a3;
  [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];

  v5 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v6 = [v5 playbackPosition];
  v7 = [v6 contentType];

  if (v7)
  {
    v8 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v9 = [v8 timeControlStatus];

    if ((v9 - 1) >= 2)
    {
      if (v9)
      {
        return;
      }

      v10 = [(HUNCCameraScrubberViewController *)self playbackEngine];
      [v10 play];
    }

    else
    {
      v10 = [(HUNCCameraScrubberViewController *)self playbackEngine];
      [v10 pause];
    }

    [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
  }

  else
  {

    [(HUNCCameraScrubberViewController *)self toggleLive];
  }
}

- (void)userDidPan:(id)a3
{
  v22 = a3;
  v4 = [v22 state];
  if ((v4 - 3) < 2)
  {
    [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
    v6 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v6 endScrubbing];

    [(HUNCCameraScrubberViewController *)self setIsScrubbing:0];
LABEL_6:
    [(HUNCCameraScrubberViewController *)self _updateScrubberDisplayLinkState];
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_10;
    }

    [(HUNCCameraScrubberViewController *)self setIsScrubbing:1];
    v5 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v5 beginScrubbing];

    goto LABEL_6;
  }

  v7 = [(HUNCCameraScrubberViewController *)self panTrackingView];
  [v22 locationInView:v7];
  v9 = v8;
  v10 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v10 frame];
  v12 = v11;

  v13 = 1.0;
  if (v12 >= 1.0)
  {
    v13 = v12;
  }

  v14 = v9 / v13;
  v15 = [(HUNCCameraScrubberViewController *)self progressSlider];
  *&v16 = v14;
  [v15 setProgress:v16];

  v17 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v17 progress];
  v19 = v18;

  v20 = [(HUNCCameraScrubberViewController *)self progressSlider];
  LODWORD(v21) = fminf(fmaxf(v19, 0.0), 100.0);
  [v20 setProgress:v21];

  [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
LABEL_10:
}

- (void)toggleLive
{
  v3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  v5 = [v4 contentType];

  if (v5)
  {
    v6 = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [v6 setSelected:0];

    v7 = [(HUNCCameraScrubberViewController *)self displayLink];
    [v7 setPaused:1];

    v8 = [MEMORY[0x277D144D0] livePosition];
    v9 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v9 setPlaybackPosition:v8];

    v10 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    [v10 play];

    v11 = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [v11 setHidden:1];

    v12 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
    [v12 setHidden:1];

    v13 = [(HUNCCameraScrubberViewController *)self progressSlider];
    [v13 setHidden:1];
  }

  else
  {

    [(HUNCCameraScrubberViewController *)self showClipScrubber];
  }
}

- (void)_seekToCurrentScrubberValue
{
  v3 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v3 progress];
  v5 = v4;
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v7 = v6 * v5;

  v8 = [(HUNCCameraScrubberViewController *)self clipStartDate];
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v10 = [v8 dateByAddingTimeInterval:v9 + -0.1];

  v11 = [(HUNCCameraScrubberViewController *)self clipStartDate];
  v12 = [v11 dateByAddingTimeInterval:v7];

  v13 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HUNCCameraScrubberViewController__seekToCurrentScrubberValue__block_invoke;
  v16[3] = &unk_277DB8810;
  v16[4] = self;
  v17 = v10;
  v18 = v12;
  v14 = v12;
  v15 = v10;
  [v13 modifyPlaybackFromSender:self usingBlock:v16];
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
    v3 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v4 = [v3 timeControlStatus] == 2;
    v5 = [(HUNCCameraScrubberViewController *)self playPauseButton];
    [v5 setSelected:v4];

    v6 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v14 = [v6 playbackPosition];

    v7 = [v14 clipPlaybackDate];
    v8 = [(HUNCCameraScrubberViewController *)self clipStartDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;
    [(HUNCCameraScrubberViewController *)self _playbackLength];
    *&v10 = v10 / v11;
    v12 = [(HUNCCameraScrubberViewController *)self progressSlider];
    LODWORD(v13) = LODWORD(v10);
    [v12 setProgress:v13];
  }
}

- (void)_loopPlaybackIfNeeded
{
  v3 = [(HUNCCameraScrubberViewController *)self clipStartDate];
  [(HUNCCameraScrubberViewController *)self _playbackLength];
  v14 = [v3 dateByAddingTimeInterval:v4 + -0.1];

  v5 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v6 = [v5 playbackPosition];
  v7 = [v6 clipPlaybackDate];
  v8 = [v7 earlierDate:v14];
  if ([v8 isEqualToDate:v14])
  {
  }

  else
  {
    v9 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v10 = [v9 playbackPosition];
    v11 = [v10 clipPlaybackDate];
    v12 = [v11 isEqualToDate:v14];

    if ((v12 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v13 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v13 setProgress:0.0];

  [(HUNCCameraScrubberViewController *)self _seekToCurrentScrubberValue];
LABEL_5:
}

- (double)_playbackLength
{
  v2 = [(HUNCCameraScrubberViewController *)self currentClip];
  [v2 hf_duration];
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
  v5 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  v3 = [v5 timeControlStatus] != 2 || !-[HUNCCameraScrubberViewController isVisible](self, "isVisible") || -[HUNCCameraScrubberViewController isScrubbing](self, "isScrubbing");
  v4 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v4 setPaused:v3];
}

- (void)_displayLinkUpdated:(id)a3
{
  [(HUNCCameraScrubberViewController *)self _loopPlaybackIfNeeded];

  [(HUNCCameraScrubberViewController *)self _updateSliderPosition];
}

- (double)currentScrubberResolution
{
  v3 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v3 bounds];
  v5 = v4;
  v6 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v6 contentScaleFactor];
  v8 = v5 * v7;

  return v8;
}

- (void)playbackEngine:(id)a3 didUpdateTimeControlStatus:(unint64_t)a4
{
  if (![(HUNCCameraScrubberViewController *)self isScrubbing:a3])
  {
    v5 = [(HUNCCameraScrubberViewController *)self playbackEngine];
    v6 = [v5 playbackPosition];
    v7 = [v6 contentType];

    if (v7)
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
  v3 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v3 setPaused:0];

  v4 = MEMORY[0x277D144D0];
  v5 = [(HUNCCameraScrubberViewController *)self clipStartDate];
  v6 = [v4 clipPositionWithDate:v5];
  v7 = [(HUNCCameraScrubberViewController *)self playbackEngine];
  [v7 setPlaybackPosition:v6];

  v8 = [(HUNCCameraScrubberViewController *)self playPauseButton];
  [v8 setHidden:0];

  v9 = [(HUNCCameraScrubberViewController *)self playPauseBackgroundView];
  [v9 setHidden:0];

  v10 = [(HUNCCameraScrubberViewController *)self progressSlider];
  [v10 setHidden:0];
}

- (void)didMoveToParentViewController:(id)a3
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
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  if (!a3)
  {
    v8 = [(HUNCCameraScrubberViewController *)self displayLink];
    [v8 invalidate];

    [(HUNCCameraScrubberViewController *)self setDisplayLink:0];
  }
}

- (UIProgressView)progressSlider
{
  progressSlider = self->_progressSlider;
  if (!progressSlider)
  {
    v4 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    v5 = [MEMORY[0x277D75348] systemOrangeColor];
    [(UIProgressView *)v4 setProgressTintColor:v5];

    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIProgressView *)v4 setTrackTintColor:v6];

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
    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIButton *)v4 setBackgroundColor:v5];

    v6 = HUImageNamed(@"Play");
    v7 = [v6 imageWithRenderingMode:2];

    v8 = HUImageNamed(@"Pause");
    v9 = [v8 imageWithRenderingMode:2];

    [(UIButton *)v4 setImage:v7 forState:0];
    [(UIButton *)v4 setImage:v9 forState:4];
    v10 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:v10];

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
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  v6 = [(HUNCCameraScrubberViewController *)self displayLink];
  [v6 invalidate];

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