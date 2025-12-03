@interface NANowPlayingViewController
- (CGSize)artworkSizeForViewWidth:(double)width;
- (NANowPlayingViewController)initWithBackground:(id)background;
- (NANowPlayingViewControllerDelegate)delegate;
- (UIButton)ellipsisButton;
- (double)nextTrackAndRewindButtonPointSize;
- (double)playPausePointSize;
- (double)publisherLogoBottomMargin;
- (double)publisherLogoHeight;
- (double)titleLabelFontSize;
- (id)nowPlayingBottomControlsProvidePlaybackRateMenu:(id)menu;
- (void)applicationWillEnterForeground;
- (void)artworkTapped:(id)tapped;
- (void)dismissButtonTapped:(id)tapped;
- (void)nowPlayingPlaybackControlsDidTapNextTrack:(id)track;
- (void)nowPlayingPlaybackControlsDidTapPause:(id)pause;
- (void)nowPlayingPlaybackControlsDidTapPlay:(id)play;
- (void)nowPlayingPlaybackControlsDidTapRewind:(id)rewind;
- (void)nowPlayingPlaybackControlsDidTapSkipForward:(id)forward;
- (void)nowPlayingTitleViewDidTapEllipsis:(id)ellipsis;
- (void)seekToPosition:(double)position;
- (void)setArtwork:(id)artwork animated:(BOOL)animated;
- (void)setCurrentTime:(double)time duration:(double)duration rate:(double)rate isWaiting:(BOOL)waiting animated:(BOOL)animated;
- (void)setIsPlaying:(BOOL)playing waiting:(BOOL)waiting;
- (void)setNextTrackButtonEnabled:(BOOL)enabled;
- (void)setPublisherImage:(id)image fallbackName:(id)name;
- (void)setRate:(double)rate;
- (void)setSkipForwardButtonEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
- (void)titleViewTapped:(id)tapped;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation NANowPlayingViewController

- (NANowPlayingViewController)initWithBackground:(id)background
{
  backgroundCopy = background;
  v53.receiver = self;
  v53.super_class = NANowPlayingViewController;
  v5 = [(NANowPlayingViewController *)&v53 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(NANowPlayingViewController *)v5 setView:backgroundCopy];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke;
    v51[3] = &unk_1E84EA330;
    v7 = v6;
    v52 = v7;
    v8 = __49__NANowPlayingViewController_initWithBackground___block_invoke(v51);
    contentView = v7->_contentView;
    v7->_contentView = v8;

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_2;
    v49[3] = &unk_1E84EA358;
    v10 = v7;
    v50 = v10;
    v11 = __49__NANowPlayingViewController_initWithBackground___block_invoke_2(v49);
    titleView = v10->_titleView;
    v10->_titleView = v11;

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_3;
    v47[3] = &unk_1E84EA3A8;
    v13 = v10;
    v48 = v13;
    v14 = __49__NANowPlayingViewController_initWithBackground___block_invoke_3(v47);
    timeControl = v13->_timeControl;
    v13->_timeControl = v14;

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_5;
    v45[3] = &unk_1E84EA3D0;
    v16 = v13;
    v46 = v16;
    v17 = __49__NANowPlayingViewController_initWithBackground___block_invoke_5(v45);
    playbackControls = v16->_playbackControls;
    v16->_playbackControls = v17;

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_6;
    v43[3] = &unk_1E84EA3F8;
    v19 = v16;
    v44 = v19;
    v20 = __49__NANowPlayingViewController_initWithBackground___block_invoke_6(v43);
    volumeControl = v19->_volumeControl;
    v19->_volumeControl = v20;

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_7;
    v41[3] = &unk_1E84EA420;
    v22 = v19;
    v42 = v22;
    v23 = __49__NANowPlayingViewController_initWithBackground___block_invoke_7(v41);
    bottomControls = v22->_bottomControls;
    v22->_bottomControls = v23;

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_8;
    v39[3] = &unk_1E84EA448;
    v25 = v22;
    v40 = v25;
    v26 = __49__NANowPlayingViewController_initWithBackground___block_invoke_8(v39);
    artworkView = v25->_artworkView;
    v25->_artworkView = v26;

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_9;
    v37[3] = &unk_1E84EA470;
    v28 = v25;
    v38 = v28;
    v29 = __49__NANowPlayingViewController_initWithBackground___block_invoke_9(v37);
    grabberView = v28->_grabberView;
    v28->_grabberView = v29;

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_10;
    v35[3] = &unk_1E84EA498;
    v31 = v28;
    v36 = v31;
    v32 = __49__NANowPlayingViewController_initWithBackground___block_invoke_10(v35);
    v33 = v31[132];
    v31[132] = v32;
  }

  return v6;
}

id __49__NANowPlayingViewController_initWithBackground___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAutoresizingMask:16];
  v4 = [*(a1 + 32) view];
  [v4 addSubview:v3];

  return v3;
}

NANowPlayingTitleView *__49__NANowPlayingViewController_initWithBackground___block_invoke_2(uint64_t a1)
{
  v2 = [NANowPlayingTitleView alloc];
  v3 = [(NANowPlayingTitleView *)v2 initWithFrame:*(a1 + 32) layoutSpecProvider:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingTitleView *)v3 setAutoresizingMask:2];
  [(NANowPlayingTitleView *)v3 setMarqueeRunning:1];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:*(a1 + 32) action:sel_titleViewTapped_];
  [(NANowPlayingTitleView *)v3 addGestureRecognizer:v4];

  [(NANowPlayingTitleView *)v3 setDelegate:*(a1 + 32)];
  v5 = [*(a1 + 32) contentView];
  [v5 addSubview:v3];

  return v3;
}

NANowPlayingTimeControl *__49__NANowPlayingViewController_initWithBackground___block_invoke_3(uint64_t a1)
{
  v2 = [NANowPlayingTimeControl alloc];
  v3 = [(NANowPlayingTimeControl *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingTimeControl *)v3 setAutoresizingMask:2];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NANowPlayingViewController_initWithBackground___block_invoke_4;
  v8[3] = &unk_1E84EA380;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 32);
  [(NANowPlayingTimeControl *)v3 setTimeDidChangeHandler:v8];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [(NANowPlayingTimeControl *)v3 setTintColor:v4];

  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(NANowPlayingTimeControl *)v3 setTimeLabelTextColor:v5];

  v6 = [*(a1 + 32) contentView];
  [v6 addSubview:v3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

void __49__NANowPlayingViewController_initWithBackground___block_invoke_4(uint64_t a1, char a2, double a3)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained delegate];
    [v6 nowPlayingViewController:*(a1 + 32) seekToPosition:a3];
  }
}

NANowPlayingPlaybackControls *__49__NANowPlayingViewController_initWithBackground___block_invoke_5(uint64_t a1)
{
  v2 = [NANowPlayingPlaybackControls alloc];
  v3 = [*(a1 + 32) view];
  v4 = [v3 window];
  [NANowPlayingLayoutSpec playbackControlsHorizontalInsetInView:v4];
  v6 = [(NANowPlayingPlaybackControls *)v2 initWithFrame:*(a1 + 32) inset:*MEMORY[0x1E695F058] layoutSpecProvider:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v5];

  [(NANowPlayingPlaybackControls *)v6 setAutoresizingMask:2];
  [(NANowPlayingPlaybackControls *)v6 setDelegate:*(a1 + 32)];
  v7 = [*(a1 + 32) contentView];
  [v7 addSubview:v6];

  return v6;
}

NANowPlayingVolumeSlider *__49__NANowPlayingViewController_initWithBackground___block_invoke_6(uint64_t a1)
{
  v2 = [NANowPlayingVolumeSlider alloc];
  v3 = [(NANowPlayingVolumeSlider *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingVolumeSlider *)v3 setAutoresizingMask:2];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [(NANowPlayingVolumeSlider *)v3 setTintColor:v4];

  v5 = [*(a1 + 32) contentView];
  [v5 addSubview:v3];

  return v3;
}

NANowPlayingBottomControls *__49__NANowPlayingViewController_initWithBackground___block_invoke_7(uint64_t a1)
{
  v2 = [NANowPlayingBottomControls alloc];
  v3 = [(NANowPlayingBottomControls *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingBottomControls *)v3 setAutoresizingMask:2];
  [(NANowPlayingBottomControls *)v3 setDelegate:*(a1 + 32)];
  [(NANowPlayingBottomControls *)v3 startAirplayStatusUpdates];
  v4 = [*(a1 + 32) contentView];
  [v4 addSubview:v3];

  return v3;
}

NANowPlayingArtworkView *__49__NANowPlayingViewController_initWithBackground___block_invoke_8(uint64_t a1)
{
  v2 = [NANowPlayingArtworkView alloc];
  v3 = [(NANowPlayingArtworkView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingArtworkView *)v3 setAutoresizingMask:2];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:*(a1 + 32) action:sel_artworkTapped_];
  [(NANowPlayingArtworkView *)v3 addGestureRecognizer:v4];

  v5 = [*(a1 + 32) view];
  [v5 addSubview:v3];

  return v3;
}

id __49__NANowPlayingViewController_initWithBackground___block_invoke_9(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD4F8]);
  [v2 setOverrideUserInterfaceStyle:2];
  [v2 sizeToFit];
  v3 = [*(a1 + 32) view];
  [v3 addSubview:v2];

  return v2;
}

id __49__NANowPlayingViewController_initWithBackground___block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v2 addTarget:*(a1 + 32) action:sel_dismissButtonTapped_ forControlEvents:64];
  v3 = [*(a1 + 32) view];
  [v3 addSubview:v2];

  v4 = NABundle();
  v5 = [v4 localizedStringForKey:@"Collapse to mini-player" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v5];

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillLayoutSubviews
{
  v105.receiver = self;
  v105.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v105 viewWillLayoutSubviews];
  view = [(NANowPlayingViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  v6 = fmax(v5, 12.0);
  view2 = [(NANowPlayingViewController *)self view];
  [view2 bounds];
  Width = CGRectGetWidth(v106);
  grabberView = [(NANowPlayingViewController *)self grabberView];
  [grabberView bounds];
  v10 = (Width - CGRectGetWidth(v107)) * 0.5;
  grabberView2 = [(NANowPlayingViewController *)self grabberView];
  [grabberView2 bounds];
  v12 = CGRectGetWidth(v108);
  grabberView3 = [(NANowPlayingViewController *)self grabberView];
  [grabberView3 bounds];
  Height = CGRectGetHeight(v109);
  grabberView4 = [(NANowPlayingViewController *)self grabberView];
  [grabberView4 setFrame:{v10, v6 + 7.0, v12, Height}];

  view3 = [(NANowPlayingViewController *)self view];
  [view3 bounds];
  v17 = CGRectGetWidth(v110);
  dismissButton = [(NANowPlayingViewController *)self dismissButton];
  [dismissButton setFrame:{0.0, 0.0, v17, v6 + 32.0}];

  view4 = [(NANowPlayingViewController *)self view];
  [view4 bounds];
  [(NANowPlayingViewController *)self artworkSizeForViewWidth:CGRectGetWidth(v111)];
  v21 = v20;
  v23 = v22;

  artworkView = [(NANowPlayingViewController *)self artworkView];
  [artworkView setFrame:{24.0, v6 + 44.0, v21, v23}];

  view5 = [(NANowPlayingViewController *)self view];
  [view5 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  artworkView2 = [(NANowPlayingViewController *)self artworkView];
  [artworkView2 frame];
  MaxY = CGRectGetMaxY(v112);
  view6 = [(NANowPlayingViewController *)self view];
  window = [view6 window];
  [NANowPlayingLayoutSpec artworkBottomMarginInView:window];
  v39 = MaxY + v38;
  view7 = [(NANowPlayingViewController *)self view];
  [view7 safeAreaInsets];
  v42 = v33 - (v39 + v41 + 15.0);
  contentView = [(NANowPlayingViewController *)self contentView];
  [contentView setFrame:{v27 + 32.0, v29 + v39, v31 + -64.0, v42}];

  titleView = [(NANowPlayingViewController *)self titleView];
  [titleView sizeToFit];

  titleView2 = [(NANowPlayingViewController *)self titleView];
  [titleView2 bounds];
  v46 = CGRectGetWidth(v113);
  titleView3 = [(NANowPlayingViewController *)self titleView];
  [titleView3 bounds];
  v48 = CGRectGetHeight(v114);
  titleView4 = [(NANowPlayingViewController *)self titleView];
  [titleView4 setFrame:{0.0, 0.0, v46, v48}];

  timeControl = [(NANowPlayingViewController *)self timeControl];
  contentView2 = [(NANowPlayingViewController *)self contentView];
  [contentView2 bounds];
  [timeControl systemLayoutSizeFittingSize:{v52, v53}];
  v55 = v54;
  v57 = v56;

  titleView5 = [(NANowPlayingViewController *)self titleView];
  [titleView5 frame];
  v59 = CGRectGetMaxY(v115);
  view8 = [(NANowPlayingViewController *)self view];
  window2 = [view8 window];
  [NANowPlayingLayoutSpec titleViewBottomMarginInView:window2];
  v63 = v59 + v62;
  timeControl2 = [(NANowPlayingViewController *)self timeControl];
  [timeControl2 setFrame:{0.0, v63, v55, v57}];

  bottomControls = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls sizeToFit];

  bottomControls2 = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls2 bounds];
  v67 = CGRectGetHeight(v116) + -44.0;

  view9 = [(NANowPlayingViewController *)self view];
  [view9 bounds];
  v69 = CGRectGetHeight(v117);
  contentView3 = [(NANowPlayingViewController *)self contentView];
  [contentView3 frame];
  v71 = CGRectGetMaxY(v118);

  contentView4 = [(NANowPlayingViewController *)self contentView];
  [contentView4 bounds];
  v73 = CGRectGetHeight(v119) - (fmax(v67 + v71 - v69, 0.0) + 44.0);
  bottomControls3 = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls3 bounds];
  v75 = CGRectGetWidth(v120);
  bottomControls4 = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls4 bounds];
  v77 = CGRectGetHeight(v121);
  bottomControls5 = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls5 setFrame:{0.0, v73, v75, v77}];

  volumeControl = [(NANowPlayingViewController *)self volumeControl];
  contentView5 = [(NANowPlayingViewController *)self contentView];
  [contentView5 bounds];
  [volumeControl systemLayoutSizeFittingSize:{v81, v82}];
  v84 = v83;
  v86 = v85;

  bottomControls6 = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls6 frame];
  MinY = CGRectGetMinY(v122);
  view10 = [(NANowPlayingViewController *)self view];
  window3 = [view10 window];
  [NANowPlayingLayoutSpec bottomControlsTopMarginInView:window3];
  v92 = MinY - v91;
  volumeControl2 = [(NANowPlayingViewController *)self volumeControl];
  [volumeControl2 bounds];
  v94 = v92 - CGRectGetHeight(v123);
  volumeControl3 = [(NANowPlayingViewController *)self volumeControl];
  [volumeControl3 setFrame:{0.0, v94, v84, v86}];

  timeControl3 = [(NANowPlayingViewController *)self timeControl];
  [timeControl3 frame];
  v97 = CGRectGetMaxY(v124) + 2.0;
  playbackControls = [(NANowPlayingViewController *)self playbackControls];
  [playbackControls bounds];
  v99 = CGRectGetWidth(v125);
  volumeControl4 = [(NANowPlayingViewController *)self volumeControl];
  [volumeControl4 frame];
  v101 = CGRectGetMinY(v126);
  timeControl4 = [(NANowPlayingViewController *)self timeControl];
  [timeControl4 frame];
  v103 = v101 - CGRectGetMaxY(v127);
  playbackControls2 = [(NANowPlayingViewController *)self playbackControls];
  [playbackControls2 setFrame:{0.0, v97, v99, v103}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v6 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"NANowPlayingViewControllerWillDisappearNotification" object:self];

  bottomControls = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls dismissAirplayPicker];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v5 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"NANowPlayingViewControllerDidDisappearNotification" object:self];
}

- (void)setCurrentTime:(double)time duration:(double)duration rate:(double)rate isWaiting:(BOOL)waiting animated:(BOOL)animated
{
  animatedCopy = animated;
  waitingCopy = waiting;
  timeControl = [(NANowPlayingViewController *)self timeControl];
  [timeControl setCurrentTime:waitingCopy duration:animatedCopy rate:time isWaiting:duration animated:rate];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleView = [(NANowPlayingViewController *)self titleView];
  [titleView setTitle:titleCopy];

  artworkView = [(NANowPlayingViewController *)self artworkView];
  [artworkView setAccessibilityLabel:titleCopy];
}

- (void)setPublisherImage:(id)image fallbackName:(id)name
{
  nameCopy = name;
  imageCopy = image;
  titleView = [(NANowPlayingViewController *)self titleView];
  [titleView setPublisherImage:imageCopy fallbackName:nameCopy];
}

- (void)setArtwork:(id)artwork animated:(BOOL)animated
{
  animatedCopy = animated;
  artworkCopy = artwork;
  artworkView = [(NANowPlayingViewController *)self artworkView];
  [artworkView setTrackImage:artworkCopy animated:animatedCopy];

  artworkView2 = [(NANowPlayingViewController *)self artworkView];
  [artworkView2 sizeToFit];
}

- (void)setIsPlaying:(BOOL)playing waiting:(BOOL)waiting
{
  playingCopy = playing;
  v5 = [(NANowPlayingViewController *)self playbackControls:playing];
  [v5 setIsPlaying:playingCopy];
}

- (void)setRate:(double)rate
{
  bottomControls = [(NANowPlayingViewController *)self bottomControls];
  [bottomControls setRate:rate];
}

- (UIButton)ellipsisButton
{
  titleView = [(NANowPlayingViewController *)self titleView];
  ellipsisButton = [titleView ellipsisButton];

  return ellipsisButton;
}

- (void)setSkipForwardButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  playbackControls = [(NANowPlayingViewController *)self playbackControls];
  [playbackControls setSkipForwardButtonEnabled:enabledCopy];
}

- (void)setNextTrackButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  playbackControls = [(NANowPlayingViewController *)self playbackControls];
  [playbackControls setNextTrackButtonEnabled:enabledCopy];
}

- (double)publisherLogoHeight
{
  titleView = [(NANowPlayingViewController *)self titleView];
  [titleView publisherLogoHeight];
  v4 = v3;

  return v4;
}

- (CGSize)artworkSizeForViewWidth:(double)width
{
  artworkView = [(NANowPlayingViewController *)self artworkView];
  [artworkView artworkSizeForTitleViewWidth:width + -48.0];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)dismissButtonTapped:(id)tapped
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapDismissButton:self];
}

- (void)artworkTapped:(id)tapped
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidRequestNavigateToArticle:self];
}

- (void)titleViewTapped:(id)tapped
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidRequestNavigateToArticle:self];
}

- (void)nowPlayingTitleViewDidTapEllipsis:(id)ellipsis
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapEllipsis:self];
}

- (void)nowPlayingPlaybackControlsDidTapRewind:(id)rewind
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapRewind:self];
}

- (void)nowPlayingPlaybackControlsDidTapSkipForward:(id)forward
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapSkipForward:self];
}

- (void)nowPlayingPlaybackControlsDidTapPause:(id)pause
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapPause:self];
}

- (void)nowPlayingPlaybackControlsDidTapPlay:(id)play
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapPlay:self];
}

- (void)nowPlayingPlaybackControlsDidTapNextTrack:(id)track
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewControllerDidTapNextTrack:self];
}

- (void)seekToPosition:(double)position
{
  delegate = [(NANowPlayingViewController *)self delegate];
  [delegate nowPlayingViewController:self seekToPosition:position];
}

- (id)nowPlayingBottomControlsProvidePlaybackRateMenu:(id)menu
{
  delegate = [(NANowPlayingViewController *)self delegate];
  v5 = [delegate nowPlayingViewControllerProvidePlaybackRateMenu:self];

  return v5;
}

- (void)applicationWillEnterForeground
{
  titleView = [(NANowPlayingViewController *)self titleView];
  [titleView setMarqueeRunning:1];
}

- (NANowPlayingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)playPausePointSize
{
  view = [(NANowPlayingViewController *)self view];
  window = [view window];
  [NANowPlayingLayoutSpec playPausePointSizeInView:window];
  v5 = v4;

  return v5;
}

- (double)nextTrackAndRewindButtonPointSize
{
  view = [(NANowPlayingViewController *)self view];
  window = [view window];
  [NANowPlayingLayoutSpec nextTrackAndRewindButtonPointSizeInView:window];
  v5 = v4;

  return v5;
}

- (double)titleLabelFontSize
{
  view = [(NANowPlayingViewController *)self view];
  window = [view window];
  [NANowPlayingLayoutSpec titleLabelFontSizeInView:window];
  v5 = v4;

  return v5;
}

- (double)publisherLogoBottomMargin
{
  view = [(NANowPlayingViewController *)self view];
  window = [view window];
  [NANowPlayingLayoutSpec publisherLogoBottomMarginInView:window];
  v5 = v4;

  return v5;
}

@end