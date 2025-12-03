@interface NANowPlayingPlaybackControls
- (CGSize)sizeThatFits:(CGSize)fits;
- (NANowPlayingPlaybackControls)initWithFrame:(CGRect)frame inset:(double)inset layoutSpecProvider:(id)provider;
- (NANowPlayingPlaybackControlsDelegate)delegate;
- (NANowPlayingPlaybackControlsLayoutSpecProvider)layoutSpecProvider;
- (void)layoutSubviews;
- (void)nextTrackButtonTapped:(id)tapped;
- (void)pauseButtonTapped:(id)tapped;
- (void)playButtonTapped:(id)tapped;
- (void)rewindButtonTapped:(id)tapped;
- (void)setIsPlaying:(BOOL)playing;
- (void)skipForwardButtonTapped:(id)tapped;
- (void)updateForwardButton;
@end

@implementation NANowPlayingPlaybackControls

- (NANowPlayingPlaybackControls)initWithFrame:(CGRect)frame inset:(double)inset layoutSpecProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v38.receiver = self;
  v38.super_class = NANowPlayingPlaybackControls;
  height = [(NANowPlayingPlaybackControls *)&v38 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke;
    v36[3] = &unk_1E84EA330;
    v14 = height;
    v37 = v14;
    v15 = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke(v36);
    contentView = v14->_contentView;
    v14->_contentView = v15;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_2;
    v34[3] = &unk_1E84EA498;
    v17 = v14;
    v35 = v17;
    v18 = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_2(v34);
    rewindButton = v17->_rewindButton;
    v17->_rewindButton = v18;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_3;
    v32[3] = &unk_1E84EA238;
    v20 = v17;
    v33 = v20;
    v21 = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_3(v32);
    playPauseButton = v20->_playPauseButton;
    v20->_playPauseButton = v21;

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_4;
    v30 = &unk_1E84EA498;
    v23 = v20;
    v31 = v23;
    v24 = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_4(&v27);
    v25 = v23[56];
    v23[56] = v24;

    objc_storeWeak(v23 + 58, providerCopy);
    *(v23 + 57) = inset;
    [v23 setIsPlaying:{0, v27, v28, v29, v30}];
  }

  return v13;
}

id __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAutoresizingMask:16];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

id __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = [*(a1 + 32) buttonColor];
  [v2 setTintColor:v3];

  [v2 addTarget:*(a1 + 32) action:sel_rewindButtonTapped_ forControlEvents:64];
  v4 = NABundle();
  v5 = [v4 localizedStringForKey:@"rewind value:15 seconds" table:{&stru_1F52B5BC8, 0}];
  [v2 setAccessibilityLabel:v5];

  v6 = [*(a1 + 32) contentView];
  [v6 addSubview:v2];

  return v2;
}

id __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_3(uint64_t a1)
{
  v2 = [NATouchInsetsButton buttonWithType:1];
  v3 = [*(a1 + 32) buttonColor];
  [v2 setTintColor:v3];

  [v2 setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
  v4 = NABundle();
  v5 = [v4 localizedStringForKey:@"pause" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v5];

  v6 = [*(a1 + 32) contentView];
  [v6 addSubview:v2];

  return v2;
}

id __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v3 = [*(a1 + 32) buttonColor];
  [v2 setTintColor:v3];

  [v2 addTarget:*(a1 + 32) action:sel_nextTrackButtonTapped_ forControlEvents:64];
  v4 = NABundle();
  v5 = [v4 localizedStringForKey:@"next track" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v5];

  v6 = [*(a1 + 32) contentView];
  [v6 addSubview:v2];

  return v2;
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = NANowPlayingPlaybackControls;
  [(NANowPlayingPlaybackControls *)&v61 layoutSubviews];
  rewindButton = [(NANowPlayingPlaybackControls *)self rewindButton];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gobackward.15"];
  v5 = MEMORY[0x1E69DCAD8];
  layoutSpecProvider = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [layoutSpecProvider nextTrackAndRewindButtonPointSize];
  v7 = [v5 configurationWithPointSize:4 weight:2 scale:?];
  v8 = [v4 imageWithConfiguration:v7];
  [rewindButton setBackgroundImage:v8 forState:0];

  rewindButton2 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [rewindButton2 sizeToFit];

  playPauseButton = [(NANowPlayingPlaybackControls *)self playPauseButton];
  if ([(NANowPlayingPlaybackControls *)self isPlaying])
  {
    v11 = @"pause.fill";
  }

  else
  {
    v11 = @"play.fill";
  }

  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
  v13 = MEMORY[0x1E69DCAD8];
  layoutSpecProvider2 = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [layoutSpecProvider2 playPausePointSize];
  v15 = [v13 configurationWithPointSize:8 weight:2 scale:?];
  v16 = [v12 imageWithConfiguration:v15];
  [playPauseButton setBackgroundImage:v16 forState:0];

  playPauseButton2 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton2 sizeToFit];

  [(NANowPlayingPlaybackControls *)self updateForwardButton];
  forwardButton = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton sizeToFit];

  [(NANowPlayingPlaybackControls *)self bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(NANowPlayingPlaybackControls *)self inset];
  v28 = v27;
  v62.origin.x = v20;
  v62.origin.y = v22;
  v62.size.width = v24;
  v62.size.height = v26;
  v63 = CGRectInset(v62, v28, 0.0);
  x = v63.origin.x;
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  contentView = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView setFrame:{x, y, width, height}];

  contentView2 = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView2 bounds];
  v35 = CGRectGetHeight(v64);
  rewindButton3 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [rewindButton3 bounds];
  v37 = (v35 - CGRectGetHeight(v65)) * 0.5;
  rewindButton4 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [rewindButton4 bounds];
  v39 = CGRectGetWidth(v66);
  rewindButton5 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [rewindButton5 bounds];
  v41 = CGRectGetHeight(v67);
  rewindButton6 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [rewindButton6 setFrame:{0.0, v37, v39, v41}];

  contentView3 = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView3 bounds];
  MidX = CGRectGetMidX(v68);
  contentView4 = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView4 bounds];
  MidY = CGRectGetMidY(v69);
  playPauseButton3 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton3 setCenter:{MidX, MidY}];

  contentView5 = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView5 bounds];
  v49 = CGRectGetWidth(v70);
  forwardButton2 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton2 bounds];
  v51 = v49 - CGRectGetWidth(v71);
  contentView6 = [(NANowPlayingPlaybackControls *)self contentView];
  [contentView6 bounds];
  v53 = CGRectGetHeight(v72);
  forwardButton3 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton3 bounds];
  v55 = (v53 - CGRectGetHeight(v73)) * 0.5;
  forwardButton4 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton4 bounds];
  v57 = CGRectGetWidth(v74);
  forwardButton5 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton5 bounds];
  v59 = CGRectGetHeight(v75);
  forwardButton6 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton6 setFrame:{v51, v55, v57, v59}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(NANowPlayingPlaybackControls *)self rewindButton:fits.width];
  [v5 bounds];
  v7 = v6;

  playPauseButton = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton bounds];
  v10 = v9;

  forwardButton = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton bounds];
  v13 = v12;

  if (v10 >= v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v7 >= v14)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)setIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  self->_isPlaying = playing;
  playPauseButton = [(NANowPlayingPlaybackControls *)self playPauseButton];
  if (playingCopy)
  {
    v6 = @"pause.fill";
  }

  else
  {
    v6 = @"play.fill";
  }

  if (playingCopy)
  {
    v7 = &selRef_pauseButtonTapped_;
  }

  else
  {
    v7 = &selRef_playButtonTapped_;
  }

  if (playingCopy)
  {
    v8 = @"pause";
  }

  else
  {
    v8 = @"play";
  }

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
  v10 = MEMORY[0x1E69DCAD8];
  layoutSpecProvider = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [layoutSpecProvider playPausePointSize];
  v12 = [v10 configurationWithPointSize:8 weight:2 scale:?];
  v13 = [v9 imageWithConfiguration:v12];
  [playPauseButton setBackgroundImage:v13 forState:0];

  playPauseButton2 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton2 removeTarget:self action:0 forControlEvents:64];

  playPauseButton3 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton3 addTarget:self action:*v7 forControlEvents:64];

  v18 = NABundle();
  v16 = [v18 localizedStringForKey:v8 value:&stru_1F52B5BC8 table:0];
  playPauseButton4 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [playPauseButton4 setAccessibilityLabel:v16];
}

- (void)updateForwardButton
{
  forwardButton = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton removeTarget:self action:0 forControlEvents:64];

  skipForwardButtonEnabled = [(NANowPlayingPlaybackControls *)self skipForwardButtonEnabled];
  forwardButton2 = [(NANowPlayingPlaybackControls *)self forwardButton];
  v6 = !skipForwardButtonEnabled;
  if (skipForwardButtonEnabled)
  {
    v7 = @"goforward.15";
  }

  else
  {
    v7 = @"forward.fill";
  }

  if (skipForwardButtonEnabled)
  {
    v8 = @"skip forward";
  }

  else
  {
    v8 = @"next track";
  }

  if (v6)
  {
    v9 = &selRef_nextTrackButtonTapped_;
  }

  else
  {
    v9 = &selRef_skipForwardButtonTapped_;
  }

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v11 = MEMORY[0x1E69DCAD8];
  layoutSpecProvider = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [layoutSpecProvider nextTrackAndRewindButtonPointSize];
  v13 = [v11 configurationWithPointSize:4 weight:2 scale:?];
  v14 = [v10 imageWithConfiguration:v13];
  [forwardButton2 setBackgroundImage:v14 forState:0];

  forwardButton3 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton3 addTarget:self action:*v9 forControlEvents:64];

  v16 = NABundle();
  v17 = [v16 localizedStringForKey:v8 value:&stru_1F52B5BC8 table:0];
  forwardButton4 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton4 setAccessibilityLabel:v17];

  if ([(NANowPlayingPlaybackControls *)self nextTrackButtonEnabled])
  {
    forwardButton5 = [(NANowPlayingPlaybackControls *)self forwardButton];
    [forwardButton5 setEnabled:1];

LABEL_13:
    buttonColor = [(NANowPlayingPlaybackControls *)self buttonColor];
    goto LABEL_15;
  }

  skipForwardButtonEnabled2 = [(NANowPlayingPlaybackControls *)self skipForwardButtonEnabled];
  forwardButton6 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton6 setEnabled:skipForwardButtonEnabled2];

  if (skipForwardButtonEnabled2)
  {
    goto LABEL_13;
  }

  buttonColor = [(NANowPlayingPlaybackControls *)self disabledButtonColor];
LABEL_15:
  v24 = buttonColor;
  forwardButton7 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [forwardButton7 setTintColor:v24];
}

- (void)rewindButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Rewind tapped", v6, 2u);
  }

  delegate = [(NANowPlayingPlaybackControls *)self delegate];
  [delegate nowPlayingPlaybackControlsDidTapRewind:self];
}

- (void)skipForwardButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Skip forward tapped", v6, 2u);
  }

  delegate = [(NANowPlayingPlaybackControls *)self delegate];
  [delegate nowPlayingPlaybackControlsDidTapSkipForward:self];
}

- (void)pauseButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Pause button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingPlaybackControls *)self delegate];
  [delegate nowPlayingPlaybackControlsDidTapPause:self];
}

- (void)playButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Play button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingPlaybackControls *)self delegate];
  [delegate nowPlayingPlaybackControlsDidTapPlay:self];
}

- (void)nextTrackButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Next track button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingPlaybackControls *)self delegate];
  [delegate nowPlayingPlaybackControlsDidTapNextTrack:self];
}

- (NANowPlayingPlaybackControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NANowPlayingPlaybackControlsLayoutSpecProvider)layoutSpecProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutSpecProvider);

  return WeakRetained;
}

@end