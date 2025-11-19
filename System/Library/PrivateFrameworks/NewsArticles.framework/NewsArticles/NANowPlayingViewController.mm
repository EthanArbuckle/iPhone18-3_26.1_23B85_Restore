@interface NANowPlayingViewController
- (CGSize)artworkSizeForViewWidth:(double)a3;
- (NANowPlayingViewController)initWithBackground:(id)a3;
- (NANowPlayingViewControllerDelegate)delegate;
- (UIButton)ellipsisButton;
- (double)nextTrackAndRewindButtonPointSize;
- (double)playPausePointSize;
- (double)publisherLogoBottomMargin;
- (double)publisherLogoHeight;
- (double)titleLabelFontSize;
- (id)nowPlayingBottomControlsProvidePlaybackRateMenu:(id)a3;
- (void)applicationWillEnterForeground;
- (void)artworkTapped:(id)a3;
- (void)dismissButtonTapped:(id)a3;
- (void)nowPlayingPlaybackControlsDidTapNextTrack:(id)a3;
- (void)nowPlayingPlaybackControlsDidTapPause:(id)a3;
- (void)nowPlayingPlaybackControlsDidTapPlay:(id)a3;
- (void)nowPlayingPlaybackControlsDidTapRewind:(id)a3;
- (void)nowPlayingPlaybackControlsDidTapSkipForward:(id)a3;
- (void)nowPlayingTitleViewDidTapEllipsis:(id)a3;
- (void)seekToPosition:(double)a3;
- (void)setArtwork:(id)a3 animated:(BOOL)a4;
- (void)setCurrentTime:(double)a3 duration:(double)a4 rate:(double)a5 isWaiting:(BOOL)a6 animated:(BOOL)a7;
- (void)setIsPlaying:(BOOL)a3 waiting:(BOOL)a4;
- (void)setNextTrackButtonEnabled:(BOOL)a3;
- (void)setPublisherImage:(id)a3 fallbackName:(id)a4;
- (void)setRate:(double)a3;
- (void)setSkipForwardButtonEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)titleViewTapped:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation NANowPlayingViewController

- (NANowPlayingViewController)initWithBackground:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = NANowPlayingViewController;
  v5 = [(NANowPlayingViewController *)&v53 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(NANowPlayingViewController *)v5 setView:v4];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillLayoutSubviews
{
  v105.receiver = self;
  v105.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v105 viewWillLayoutSubviews];
  v3 = [(NANowPlayingViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  v6 = fmax(v5, 12.0);
  v7 = [(NANowPlayingViewController *)self view];
  [v7 bounds];
  Width = CGRectGetWidth(v106);
  v9 = [(NANowPlayingViewController *)self grabberView];
  [v9 bounds];
  v10 = (Width - CGRectGetWidth(v107)) * 0.5;
  v11 = [(NANowPlayingViewController *)self grabberView];
  [v11 bounds];
  v12 = CGRectGetWidth(v108);
  v13 = [(NANowPlayingViewController *)self grabberView];
  [v13 bounds];
  Height = CGRectGetHeight(v109);
  v15 = [(NANowPlayingViewController *)self grabberView];
  [v15 setFrame:{v10, v6 + 7.0, v12, Height}];

  v16 = [(NANowPlayingViewController *)self view];
  [v16 bounds];
  v17 = CGRectGetWidth(v110);
  v18 = [(NANowPlayingViewController *)self dismissButton];
  [v18 setFrame:{0.0, 0.0, v17, v6 + 32.0}];

  v19 = [(NANowPlayingViewController *)self view];
  [v19 bounds];
  [(NANowPlayingViewController *)self artworkSizeForViewWidth:CGRectGetWidth(v111)];
  v21 = v20;
  v23 = v22;

  v24 = [(NANowPlayingViewController *)self artworkView];
  [v24 setFrame:{24.0, v6 + 44.0, v21, v23}];

  v25 = [(NANowPlayingViewController *)self view];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NANowPlayingViewController *)self artworkView];
  [v34 frame];
  MaxY = CGRectGetMaxY(v112);
  v36 = [(NANowPlayingViewController *)self view];
  v37 = [v36 window];
  [NANowPlayingLayoutSpec artworkBottomMarginInView:v37];
  v39 = MaxY + v38;
  v40 = [(NANowPlayingViewController *)self view];
  [v40 safeAreaInsets];
  v42 = v33 - (v39 + v41 + 15.0);
  v43 = [(NANowPlayingViewController *)self contentView];
  [v43 setFrame:{v27 + 32.0, v29 + v39, v31 + -64.0, v42}];

  v44 = [(NANowPlayingViewController *)self titleView];
  [v44 sizeToFit];

  v45 = [(NANowPlayingViewController *)self titleView];
  [v45 bounds];
  v46 = CGRectGetWidth(v113);
  v47 = [(NANowPlayingViewController *)self titleView];
  [v47 bounds];
  v48 = CGRectGetHeight(v114);
  v49 = [(NANowPlayingViewController *)self titleView];
  [v49 setFrame:{0.0, 0.0, v46, v48}];

  v50 = [(NANowPlayingViewController *)self timeControl];
  v51 = [(NANowPlayingViewController *)self contentView];
  [v51 bounds];
  [v50 systemLayoutSizeFittingSize:{v52, v53}];
  v55 = v54;
  v57 = v56;

  v58 = [(NANowPlayingViewController *)self titleView];
  [v58 frame];
  v59 = CGRectGetMaxY(v115);
  v60 = [(NANowPlayingViewController *)self view];
  v61 = [v60 window];
  [NANowPlayingLayoutSpec titleViewBottomMarginInView:v61];
  v63 = v59 + v62;
  v64 = [(NANowPlayingViewController *)self timeControl];
  [v64 setFrame:{0.0, v63, v55, v57}];

  v65 = [(NANowPlayingViewController *)self bottomControls];
  [v65 sizeToFit];

  v66 = [(NANowPlayingViewController *)self bottomControls];
  [v66 bounds];
  v67 = CGRectGetHeight(v116) + -44.0;

  v68 = [(NANowPlayingViewController *)self view];
  [v68 bounds];
  v69 = CGRectGetHeight(v117);
  v70 = [(NANowPlayingViewController *)self contentView];
  [v70 frame];
  v71 = CGRectGetMaxY(v118);

  v72 = [(NANowPlayingViewController *)self contentView];
  [v72 bounds];
  v73 = CGRectGetHeight(v119) - (fmax(v67 + v71 - v69, 0.0) + 44.0);
  v74 = [(NANowPlayingViewController *)self bottomControls];
  [v74 bounds];
  v75 = CGRectGetWidth(v120);
  v76 = [(NANowPlayingViewController *)self bottomControls];
  [v76 bounds];
  v77 = CGRectGetHeight(v121);
  v78 = [(NANowPlayingViewController *)self bottomControls];
  [v78 setFrame:{0.0, v73, v75, v77}];

  v79 = [(NANowPlayingViewController *)self volumeControl];
  v80 = [(NANowPlayingViewController *)self contentView];
  [v80 bounds];
  [v79 systemLayoutSizeFittingSize:{v81, v82}];
  v84 = v83;
  v86 = v85;

  v87 = [(NANowPlayingViewController *)self bottomControls];
  [v87 frame];
  MinY = CGRectGetMinY(v122);
  v89 = [(NANowPlayingViewController *)self view];
  v90 = [v89 window];
  [NANowPlayingLayoutSpec bottomControlsTopMarginInView:v90];
  v92 = MinY - v91;
  v93 = [(NANowPlayingViewController *)self volumeControl];
  [v93 bounds];
  v94 = v92 - CGRectGetHeight(v123);
  v95 = [(NANowPlayingViewController *)self volumeControl];
  [v95 setFrame:{0.0, v94, v84, v86}];

  v96 = [(NANowPlayingViewController *)self timeControl];
  [v96 frame];
  v97 = CGRectGetMaxY(v124) + 2.0;
  v98 = [(NANowPlayingViewController *)self playbackControls];
  [v98 bounds];
  v99 = CGRectGetWidth(v125);
  v100 = [(NANowPlayingViewController *)self volumeControl];
  [v100 frame];
  v101 = CGRectGetMinY(v126);
  v102 = [(NANowPlayingViewController *)self timeControl];
  [v102 frame];
  v103 = v101 - CGRectGetMaxY(v127);
  v104 = [(NANowPlayingViewController *)self playbackControls];
  [v104 setFrame:{0.0, v97, v99, v103}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"NANowPlayingViewControllerWillDisappearNotification" object:self];

  v5 = [(NANowPlayingViewController *)self bottomControls];
  [v5 dismissAirplayPicker];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NANowPlayingViewController;
  [(NANowPlayingViewController *)&v5 viewDidDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"NANowPlayingViewControllerDidDisappearNotification" object:self];
}

- (void)setCurrentTime:(double)a3 duration:(double)a4 rate:(double)a5 isWaiting:(BOOL)a6 animated:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = [(NANowPlayingViewController *)self timeControl];
  [v12 setCurrentTime:v8 duration:v7 rate:a3 isWaiting:a4 animated:a5];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(NANowPlayingViewController *)self titleView];
  [v5 setTitle:v4];

  v6 = [(NANowPlayingViewController *)self artworkView];
  [v6 setAccessibilityLabel:v4];
}

- (void)setPublisherImage:(id)a3 fallbackName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NANowPlayingViewController *)self titleView];
  [v8 setPublisherImage:v7 fallbackName:v6];
}

- (void)setArtwork:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NANowPlayingViewController *)self artworkView];
  [v7 setTrackImage:v6 animated:v4];

  v8 = [(NANowPlayingViewController *)self artworkView];
  [v8 sizeToFit];
}

- (void)setIsPlaying:(BOOL)a3 waiting:(BOOL)a4
{
  v4 = a3;
  v5 = [(NANowPlayingViewController *)self playbackControls:a3];
  [v5 setIsPlaying:v4];
}

- (void)setRate:(double)a3
{
  v4 = [(NANowPlayingViewController *)self bottomControls];
  [v4 setRate:a3];
}

- (UIButton)ellipsisButton
{
  v2 = [(NANowPlayingViewController *)self titleView];
  v3 = [v2 ellipsisButton];

  return v3;
}

- (void)setSkipForwardButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(NANowPlayingViewController *)self playbackControls];
  [v4 setSkipForwardButtonEnabled:v3];
}

- (void)setNextTrackButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(NANowPlayingViewController *)self playbackControls];
  [v4 setNextTrackButtonEnabled:v3];
}

- (double)publisherLogoHeight
{
  v2 = [(NANowPlayingViewController *)self titleView];
  [v2 publisherLogoHeight];
  v4 = v3;

  return v4;
}

- (CGSize)artworkSizeForViewWidth:(double)a3
{
  v4 = [(NANowPlayingViewController *)self artworkView];
  [v4 artworkSizeForTitleViewWidth:a3 + -48.0];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)dismissButtonTapped:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapDismissButton:self];
}

- (void)artworkTapped:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidRequestNavigateToArticle:self];
}

- (void)titleViewTapped:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidRequestNavigateToArticle:self];
}

- (void)nowPlayingTitleViewDidTapEllipsis:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapEllipsis:self];
}

- (void)nowPlayingPlaybackControlsDidTapRewind:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapRewind:self];
}

- (void)nowPlayingPlaybackControlsDidTapSkipForward:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapSkipForward:self];
}

- (void)nowPlayingPlaybackControlsDidTapPause:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapPause:self];
}

- (void)nowPlayingPlaybackControlsDidTapPlay:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapPlay:self];
}

- (void)nowPlayingPlaybackControlsDidTapNextTrack:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  [v4 nowPlayingViewControllerDidTapNextTrack:self];
}

- (void)seekToPosition:(double)a3
{
  v5 = [(NANowPlayingViewController *)self delegate];
  [v5 nowPlayingViewController:self seekToPosition:a3];
}

- (id)nowPlayingBottomControlsProvidePlaybackRateMenu:(id)a3
{
  v4 = [(NANowPlayingViewController *)self delegate];
  v5 = [v4 nowPlayingViewControllerProvidePlaybackRateMenu:self];

  return v5;
}

- (void)applicationWillEnterForeground
{
  v2 = [(NANowPlayingViewController *)self titleView];
  [v2 setMarqueeRunning:1];
}

- (NANowPlayingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)playPausePointSize
{
  v2 = [(NANowPlayingViewController *)self view];
  v3 = [v2 window];
  [NANowPlayingLayoutSpec playPausePointSizeInView:v3];
  v5 = v4;

  return v5;
}

- (double)nextTrackAndRewindButtonPointSize
{
  v2 = [(NANowPlayingViewController *)self view];
  v3 = [v2 window];
  [NANowPlayingLayoutSpec nextTrackAndRewindButtonPointSizeInView:v3];
  v5 = v4;

  return v5;
}

- (double)titleLabelFontSize
{
  v2 = [(NANowPlayingViewController *)self view];
  v3 = [v2 window];
  [NANowPlayingLayoutSpec titleLabelFontSizeInView:v3];
  v5 = v4;

  return v5;
}

- (double)publisherLogoBottomMargin
{
  v2 = [(NANowPlayingViewController *)self view];
  v3 = [v2 window];
  [NANowPlayingLayoutSpec publisherLogoBottomMarginInView:v3];
  v5 = v4;

  return v5;
}

@end