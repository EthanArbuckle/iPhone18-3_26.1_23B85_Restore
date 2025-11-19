@interface NANowPlayingPlaybackControls
- (CGSize)sizeThatFits:(CGSize)a3;
- (NANowPlayingPlaybackControls)initWithFrame:(CGRect)a3 inset:(double)a4 layoutSpecProvider:(id)a5;
- (NANowPlayingPlaybackControlsDelegate)delegate;
- (NANowPlayingPlaybackControlsLayoutSpecProvider)layoutSpecProvider;
- (void)layoutSubviews;
- (void)nextTrackButtonTapped:(id)a3;
- (void)pauseButtonTapped:(id)a3;
- (void)playButtonTapped:(id)a3;
- (void)rewindButtonTapped:(id)a3;
- (void)setIsPlaying:(BOOL)a3;
- (void)skipForwardButtonTapped:(id)a3;
- (void)updateForwardButton;
@end

@implementation NANowPlayingPlaybackControls

- (NANowPlayingPlaybackControls)initWithFrame:(CGRect)a3 inset:(double)a4 layoutSpecProvider:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v38.receiver = self;
  v38.super_class = NANowPlayingPlaybackControls;
  v12 = [(NANowPlayingPlaybackControls *)&v38 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __71__NANowPlayingPlaybackControls_initWithFrame_inset_layoutSpecProvider___block_invoke;
    v36[3] = &unk_1E84EA330;
    v14 = v12;
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

    objc_storeWeak(v23 + 58, v11);
    *(v23 + 57) = a4;
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
  v3 = [(NANowPlayingPlaybackControls *)self rewindButton];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gobackward.15"];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [v6 nextTrackAndRewindButtonPointSize];
  v7 = [v5 configurationWithPointSize:4 weight:2 scale:?];
  v8 = [v4 imageWithConfiguration:v7];
  [v3 setBackgroundImage:v8 forState:0];

  v9 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [v9 sizeToFit];

  v10 = [(NANowPlayingPlaybackControls *)self playPauseButton];
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
  v14 = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [v14 playPausePointSize];
  v15 = [v13 configurationWithPointSize:8 weight:2 scale:?];
  v16 = [v12 imageWithConfiguration:v15];
  [v10 setBackgroundImage:v16 forState:0];

  v17 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v17 sizeToFit];

  [(NANowPlayingPlaybackControls *)self updateForwardButton];
  v18 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v18 sizeToFit];

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
  v33 = [(NANowPlayingPlaybackControls *)self contentView];
  [v33 setFrame:{x, y, width, height}];

  v34 = [(NANowPlayingPlaybackControls *)self contentView];
  [v34 bounds];
  v35 = CGRectGetHeight(v64);
  v36 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [v36 bounds];
  v37 = (v35 - CGRectGetHeight(v65)) * 0.5;
  v38 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [v38 bounds];
  v39 = CGRectGetWidth(v66);
  v40 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [v40 bounds];
  v41 = CGRectGetHeight(v67);
  v42 = [(NANowPlayingPlaybackControls *)self rewindButton];
  [v42 setFrame:{0.0, v37, v39, v41}];

  v43 = [(NANowPlayingPlaybackControls *)self contentView];
  [v43 bounds];
  MidX = CGRectGetMidX(v68);
  v45 = [(NANowPlayingPlaybackControls *)self contentView];
  [v45 bounds];
  MidY = CGRectGetMidY(v69);
  v47 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v47 setCenter:{MidX, MidY}];

  v48 = [(NANowPlayingPlaybackControls *)self contentView];
  [v48 bounds];
  v49 = CGRectGetWidth(v70);
  v50 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v50 bounds];
  v51 = v49 - CGRectGetWidth(v71);
  v52 = [(NANowPlayingPlaybackControls *)self contentView];
  [v52 bounds];
  v53 = CGRectGetHeight(v72);
  v54 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v54 bounds];
  v55 = (v53 - CGRectGetHeight(v73)) * 0.5;
  v56 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v56 bounds];
  v57 = CGRectGetWidth(v74);
  v58 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v58 bounds];
  v59 = CGRectGetHeight(v75);
  v60 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v60 setFrame:{v51, v55, v57, v59}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(NANowPlayingPlaybackControls *)self rewindButton:a3.width];
  [v5 bounds];
  v7 = v6;

  v8 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v8 bounds];
  v10 = v9;

  v11 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v11 bounds];
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

- (void)setIsPlaying:(BOOL)a3
{
  v3 = a3;
  self->_isPlaying = a3;
  v5 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  if (v3)
  {
    v6 = @"pause.fill";
  }

  else
  {
    v6 = @"play.fill";
  }

  if (v3)
  {
    v7 = &selRef_pauseButtonTapped_;
  }

  else
  {
    v7 = &selRef_playButtonTapped_;
  }

  if (v3)
  {
    v8 = @"pause";
  }

  else
  {
    v8 = @"play";
  }

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
  v10 = MEMORY[0x1E69DCAD8];
  v11 = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [v11 playPausePointSize];
  v12 = [v10 configurationWithPointSize:8 weight:2 scale:?];
  v13 = [v9 imageWithConfiguration:v12];
  [v5 setBackgroundImage:v13 forState:0];

  v14 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v14 removeTarget:self action:0 forControlEvents:64];

  v15 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v15 addTarget:self action:*v7 forControlEvents:64];

  v18 = NABundle();
  v16 = [v18 localizedStringForKey:v8 value:&stru_1F52B5BC8 table:0];
  v17 = [(NANowPlayingPlaybackControls *)self playPauseButton];
  [v17 setAccessibilityLabel:v16];
}

- (void)updateForwardButton
{
  v3 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v3 removeTarget:self action:0 forControlEvents:64];

  v4 = [(NANowPlayingPlaybackControls *)self skipForwardButtonEnabled];
  v5 = [(NANowPlayingPlaybackControls *)self forwardButton];
  v6 = !v4;
  if (v4)
  {
    v7 = @"goforward.15";
  }

  else
  {
    v7 = @"forward.fill";
  }

  if (v4)
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
  v12 = [(NANowPlayingPlaybackControls *)self layoutSpecProvider];
  [v12 nextTrackAndRewindButtonPointSize];
  v13 = [v11 configurationWithPointSize:4 weight:2 scale:?];
  v14 = [v10 imageWithConfiguration:v13];
  [v5 setBackgroundImage:v14 forState:0];

  v15 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v15 addTarget:self action:*v9 forControlEvents:64];

  v16 = NABundle();
  v17 = [v16 localizedStringForKey:v8 value:&stru_1F52B5BC8 table:0];
  v18 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v18 setAccessibilityLabel:v17];

  if ([(NANowPlayingPlaybackControls *)self nextTrackButtonEnabled])
  {
    v19 = [(NANowPlayingPlaybackControls *)self forwardButton];
    [v19 setEnabled:1];

LABEL_13:
    v22 = [(NANowPlayingPlaybackControls *)self buttonColor];
    goto LABEL_15;
  }

  v20 = [(NANowPlayingPlaybackControls *)self skipForwardButtonEnabled];
  v21 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v21 setEnabled:v20];

  if (v20)
  {
    goto LABEL_13;
  }

  v22 = [(NANowPlayingPlaybackControls *)self disabledButtonColor];
LABEL_15:
  v24 = v22;
  v23 = [(NANowPlayingPlaybackControls *)self forwardButton];
  [v23 setTintColor:v24];
}

- (void)rewindButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Rewind tapped", v6, 2u);
  }

  v5 = [(NANowPlayingPlaybackControls *)self delegate];
  [v5 nowPlayingPlaybackControlsDidTapRewind:self];
}

- (void)skipForwardButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Skip forward tapped", v6, 2u);
  }

  v5 = [(NANowPlayingPlaybackControls *)self delegate];
  [v5 nowPlayingPlaybackControlsDidTapSkipForward:self];
}

- (void)pauseButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Pause button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingPlaybackControls *)self delegate];
  [v5 nowPlayingPlaybackControlsDidTapPause:self];
}

- (void)playButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Play button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingPlaybackControls *)self delegate];
  [v5 nowPlayingPlaybackControlsDidTapPlay:self];
}

- (void)nextTrackButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Next track button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingPlaybackControls *)self delegate];
  [v5 nowPlayingPlaybackControlsDidTapNextTrack:self];
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