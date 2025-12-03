@interface NANowPlayingDockedView
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGSize)artworkSize;
- (NANowPlayingDockedView)initWithBackground:(id)background artworkEnabled:(BOOL)enabled;
- (NANowPlayingDockedViewDelegate)delegate;
- (UIEdgeInsets)_touchInsetsForFrame:(CGRect)frame;
- (double)_computeLabelWidthWithLeadingButton:(id)button;
- (id)_imageForPlayPauseButtonWithSystemName:(id)name;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateTitleAccessibilityLabel;
- (void)closeButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)pauseButtonTapped:(id)tapped;
- (void)playButtonTapped:(id)tapped;
- (void)rewindButtonTapped:(id)tapped;
- (void)setArtwork:(id)artwork;
- (void)setArtwork:(id)artwork animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsPlaying:(BOOL)playing waiting:(BOOL)waiting;
- (void)setMarqueeRunning:(BOOL)running;
- (void)setPublisher:(id)publisher;
- (void)setTitle:(id)title;
@end

@implementation NANowPlayingDockedView

- (NANowPlayingDockedView)initWithBackground:(id)background artworkEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v61[4] = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v60.receiver = self;
  v60.super_class = NANowPlayingDockedView;
  v7 = [(NANowPlayingDockedView *)&v60 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(NANowPlayingDockedView *)v7 setArtworkEnabled:enabledCopy];
    [backgroundCopy setAutoresizingMask:18];
    [(NANowPlayingDockedView *)v8 addSubview:backgroundCopy];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke;
    v58[3] = &unk_1E84EA330;
    v9 = v8;
    v59 = v9;
    v10 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke(v58);
    contentView = v9->_contentView;
    v9->_contentView = v10;

    if (enabledCopy)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_2;
      v56[3] = &unk_1E84EA448;
      v12 = v9;
      v57 = v12;
      v13 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_2(v56);
      artworkView = v12->_artworkView;
      v12->_artworkView = v13;
    }

    v15 = __58__NANowPlayingTitleView_initWithFrame_layoutSpecProvider___block_invoke_3();
    publisherLabel = v9->_publisherLabel;
    v9->_publisherLabel = v15;

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_4;
    v54[3] = &unk_1E84EA2B0;
    v17 = v9;
    v55 = v17;
    v18 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_4(v54);
    publisherMarqueeContainer = v17->_publisherMarqueeContainer;
    v17->_publisherMarqueeContainer = v18;

    v20 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_5();
    titleLabel = v17->_titleLabel;
    v17->_titleLabel = v20;

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_6;
    v52[3] = &unk_1E84EA2B0;
    v22 = v17;
    v53 = v22;
    v23 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_6(v52);
    titleMarqueeContainer = v22->_titleMarqueeContainer;
    v22->_titleMarqueeContainer = v23;

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_7;
    v50[3] = &unk_1E84EA498;
    v25 = v22;
    v51 = v25;
    v26 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_7(v50);
    rewindButton = v25->_rewindButton;
    v25->_rewindButton = v26;

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_8;
    v48[3] = &unk_1E84EA498;
    v28 = v25;
    v49 = v28;
    v29 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_8(v48);
    playPauseButton = v28->_playPauseButton;
    v28->_playPauseButton = v29;

    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_9;
    v46 = &unk_1E84EA498;
    v31 = v28;
    v47 = v31;
    v32 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_9(&v43);
    closeButton = v31->_closeButton;
    v31->_closeButton = v32;

    v31->_changesDisplayWhenHighlighted = 0;
    v34 = NABundle();
    v35 = [v34 localizedStringForKey:@"mini player" value:&stru_1F52B5BC8 table:{0, v43, v44, v45, v46}];
    [(NANowPlayingDockedView *)v31 setAccessibilityLabel:v35];

    [(NANowPlayingDockedView *)v31 setAccessibilityContainerType:4];
    titleLabel = [(NANowPlayingDockedView *)v31 titleLabel];
    v61[0] = titleLabel;
    rewindButton = [(NANowPlayingDockedView *)v31 rewindButton];
    v61[1] = rewindButton;
    playPauseButton = [(NANowPlayingDockedView *)v31 playPauseButton];
    v61[2] = playPauseButton;
    closeButton = [(NANowPlayingDockedView *)v31 closeButton];
    v61[3] = closeButton;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    contentView = [(NANowPlayingDockedView *)v31 contentView];
    [contentView setAccessibilityElements:v40];

    [(NANowPlayingDockedView *)v31 setIsPlaying:0];
    [(NANowPlayingDockedView *)v31 setIsPlaying:[(NANowPlayingDockedView *)v31 isPlaying] waiting:0];
  }

  return v8;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAutoresizingMask:16];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

NANowPlayingArtworkView *__60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [NANowPlayingArtworkView alloc];
  v3 = [(NANowPlayingArtworkView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(NANowPlayingArtworkView *)v3 setAutoresizingMask:2];
  v4 = [*(a1 + 32) contentView];
  [v4 addSubview:v3];

  return v3;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69AD990]);
  [v2 setMarqueeEnabled:1];
  [v2 setFadeEdgeInsets:{0.0, 8.0, 0.0, 36.0}];
  [v2 setContentGap:32.0];
  v3 = [v2 contentView];
  v4 = [*(a1 + 32) publisherLabel];
  [v3 addSubview:v4];

  v5 = [*(a1 + 32) publisherLabel];
  [v2 setViewForContentSize:v5];

  v6 = [*(a1 + 32) contentView];
  [v6 addSubview:v2];

  return v2;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_5()
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v2 = NABundle();
  v3 = [v2 localizedStringForKey:@"Double tap to expand the mini player" value:&stru_1F52B5BC8 table:0];
  [v1 setAccessibilityHint:v3];

  [v1 setAdjustsFontForContentSizeCategory:1];

  return v1;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_6(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69AD990]);
  [v2 setMarqueeEnabled:1];
  [v2 setFadeEdgeInsets:{0.0, 8.0, 0.0, 36.0}];
  [v2 setContentGap:32.0];
  v3 = [v2 contentView];
  v4 = [*(a1 + 32) titleLabel];
  [v3 addSubview:v4];

  v5 = [*(a1 + 32) publisherMarqueeContainer];
  [v2 addCoordinatedMarqueeView:v5];

  v6 = [*(a1 + 32) titleLabel];
  [v2 setViewForContentSize:v6];

  v7 = [*(a1 + 32) contentView];
  [v7 addSubview:v2];

  return v2;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_7(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D88E0] buttonWithType:0];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gobackward.15"];
  v4 = MEMORY[0x1E69DCAD8];
  if ([*(a1 + 32) artworkEnabled])
  {
    v5 = 7;
  }

  else
  {
    v5 = 4;
  }

  v6 = [v4 configurationWithWeight:v5];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
  v8 = [v6 configurationByApplyingConfiguration:v7];
  v9 = [v3 imageWithConfiguration:v8];
  [v2 setImage:v9 forState:0];

  if ([*(a1 + 32) artworkEnabled])
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v10 = ;
  [v2 setTintColor:v10];

  v11 = NABundle();
  v12 = [v11 localizedStringForKey:@"rewind value:15 seconds" table:{&stru_1F52B5BC8, 0}];
  [v2 setAccessibilityLabel:v12];

  [v2 addTarget:*(a1 + 32) action:sel_rewindButtonTapped_ forControlEvents:64];
  [v2 sizeToFit];
  if ([*(a1 + 32) artworkEnabled])
  {
    v13 = *(a1 + 32);
    [v2 bounds];
    [v13 _touchInsetsForFrame:?];
  }

  else
  {
    [v2 bounds];
    v14 = NAInsetsToMinimumTapTargetForFrame(v15, v16, v17, v18);
  }

  [v2 setTouchInsets:v14];
  v19 = [*(a1 + 32) contentView];
  [v19 addSubview:v2];

  return v2;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D88E0] buttonWithType:0];
  v3 = [*(a1 + 32) _imageForPlayPauseButtonWithSystemName:@"pause.fill"];
  [v2 setImage:v3 forState:0];

  if ([*(a1 + 32) artworkEnabled])
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v4 = ;
  [v2 setTintColor:v4];

  v5 = NABundle();
  v6 = [v5 localizedStringForKey:@"pause" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v6];

  [v2 addTarget:*(a1 + 32) action:sel_pauseButtonTapped_ forControlEvents:64];
  [v2 sizeToFit];
  if ([*(a1 + 32) artworkEnabled])
  {
    v7 = *(a1 + 32);
    [v2 bounds];
    [v7 _touchInsetsForFrame:?];
  }

  else
  {
    [v2 bounds];
    v8 = NAInsetsToMinimumTapTargetForFrame(v9, v10, v11, v12);
  }

  [v2 setTouchInsets:v8];
  v13 = [*(a1 + 32) contentView];
  [v13 addSubview:v2];

  return v2;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_9(uint64_t a1)
{
  v2 = [MEMORY[0x1E69D88E0] buttonWithType:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_10;
  v17[3] = &unk_1E84EA4C0;
  v18 = *(a1 + 32);
  v3 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_10(v17);
  if ([*(a1 + 32) artworkEnabled])
  {
    v4 = @"xmark";
  }

  else
  {
    v4 = @"xmark.circle.fill";
  }

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
  v6 = [v5 imageWithConfiguration:v3];
  [v2 setImage:v6 forState:0];

  v7 = NABundle();
  v8 = [v7 localizedStringForKey:@"close" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v8];

  [v2 addTarget:*(a1 + 32) action:sel_closeButtonTapped_ forControlEvents:64];
  [v2 sizeToFit];
  if ([*(a1 + 32) artworkEnabled])
  {
    v9 = *(a1 + 32);
    [v2 bounds];
    [v9 _touchInsetsForFrame:?];
  }

  else
  {
    [v2 bounds];
    v10 = NAInsetsToMinimumTapTargetForFrame(v11, v12, v13, v14);
  }

  [v2 setTouchInsets:v10];
  v15 = [*(a1 + 32) contentView];
  [v15 addSubview:v2];

  return v2;
}

id __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke_10(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) artworkEnabled])
  {
    v1 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v2 = [MEMORY[0x1E69DCAD8] configurationWithScale:-1];
    v3 = [v1 configurationByApplyingConfiguration:v2];
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [MEMORY[0x1E69DC888] labelColor];
    v12[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v7 = [v4 configurationWithPaletteColors:v6];
    v8 = [v3 configurationByApplyingConfiguration:v7];
  }

  else
  {
    v1 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:33.0];
    v9 = MEMORY[0x1E69DCAD8];
    v2 = [MEMORY[0x1E69DC888] whiteColor];
    v3 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    v11[1] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v6 = [v9 configurationWithPaletteColors:v5];
    v8 = [v1 configurationByApplyingConfiguration:v6];
  }

  return v8;
}

- (CGSize)artworkSize
{
  artworkView = [(NANowPlayingDockedView *)self artworkView];
  [artworkView artworkSizeForTitleViewWidth:30.0];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = NANowPlayingDockedView;
  [(NANowPlayingDockedView *)&v7 setHighlighted:highlighted];
  isHighlighted = [(NANowPlayingDockedView *)self isHighlighted];
  v5 = 1.0;
  if (isHighlighted)
  {
    changesDisplayWhenHighlighted = [(NANowPlayingDockedView *)self changesDisplayWhenHighlighted];
    v5 = 0.8;
    if (!changesDisplayWhenHighlighted)
    {
      v5 = 1.0;
    }
  }

  [(NANowPlayingDockedView *)self setAlpha:v5];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = NANowPlayingDockedView;
  v5 = [(NANowPlayingDockedView *)&v9 hitTest:event withEvent:test.x, test.y];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = v5;
    }

    else
    {
      selfCopy = self;
    }

    v7 = selfCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)layoutSubviews
{
  v149.receiver = self;
  v149.super_class = NANowPlayingDockedView;
  [(NANowPlayingDockedView *)&v149 layoutSubviews];
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v3 = 9.0;
  }

  else
  {
    v3 = 16.0;
  }

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 14.0;
  }

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 18.0;
  }

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 29.0;
  }

  [(NANowPlayingDockedView *)self bounds];
  v8 = v4 + v7;
  v10 = v3 + v9;
  v12 = v11 - (v4 + v6);
  v14 = v13 - (v3 + v5);
  contentView = [(NANowPlayingDockedView *)self contentView];
  [contentView setFrame:{v8, v10, v12, v14}];

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    [(NANowPlayingDockedView *)self artworkSize];
    v17 = v16;
    [(NANowPlayingDockedView *)self artworkSize];
    v19 = v18;
    artworkView = [(NANowPlayingDockedView *)self artworkView];
    [artworkView setFrame:{0.0, 0.0, v17, v19}];

    artworkView2 = [(NANowPlayingDockedView *)self artworkView];
    [artworkView2 frame];
    MaxX = CGRectGetMaxX(v150);
    publisherLabel = [(NANowPlayingDockedView *)self publisherLabel];
    [publisherLabel bounds];
    Width = CGRectGetWidth(v151);
    publisherLabel2 = [(NANowPlayingDockedView *)self publisherLabel];
    [publisherLabel2 bounds];
    Height = CGRectGetHeight(v152);
    publisherMarqueeContainer = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [publisherMarqueeContainer setFrame:{MaxX, 0.0, Width, Height}];

    artworkView3 = [(NANowPlayingDockedView *)self artworkView];
    [artworkView3 frame];
    v29 = CGRectGetMaxX(v153);
    publisherMarqueeContainer2 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [publisherMarqueeContainer2 frame];
    v31 = CGRectGetMaxY(v154) + 1.0;
    titleLabel = [(NANowPlayingDockedView *)self titleLabel];
    [titleLabel bounds];
    v33 = CGRectGetWidth(v155);
    titleLabel2 = [(NANowPlayingDockedView *)self titleLabel];
    [titleLabel2 bounds];
    v35 = CGRectGetHeight(v156);
    titleMarqueeContainer = [(NANowPlayingDockedView *)self titleMarqueeContainer];
    [titleMarqueeContainer setFrame:{v29, v31, v33, v35}];
  }

  else
  {
    publisherLabel3 = [(NANowPlayingDockedView *)self publisherLabel];
    [publisherLabel3 bounds];
    v38 = CGRectGetWidth(v157);
    publisherLabel4 = [(NANowPlayingDockedView *)self publisherLabel];
    [publisherLabel4 bounds];
    v40 = CGRectGetHeight(v158);
    publisherMarqueeContainer3 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [publisherMarqueeContainer3 setFrame:{0.0, 0.0, v38, v40}];

    artworkView3 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [artworkView3 frame];
    v42 = CGRectGetMaxY(v159) + 1.0 + 3.5;
    publisherMarqueeContainer2 = [(NANowPlayingDockedView *)self titleLabel];
    [publisherMarqueeContainer2 bounds];
    v43 = CGRectGetWidth(v160);
    titleLabel = [(NANowPlayingDockedView *)self titleLabel];
    [titleLabel bounds];
    v44 = CGRectGetHeight(v161);
    titleLabel2 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
    [titleLabel2 setFrame:{0.0, v42, v43, v44}];
  }

  titleMarqueeContainer2 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer2 frame];
  MaxY = CGRectGetMaxY(v162);
  publisherMarqueeContainer4 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer4 frame];
  v48 = (MaxY - CGRectGetMinY(v163)) * 0.5;

  contentView2 = [(NANowPlayingDockedView *)self contentView];
  [contentView2 bounds];
  v50 = CGRectGetWidth(v164);
  closeButton = [(NANowPlayingDockedView *)self closeButton];
  [closeButton bounds];
  v52 = v50 - CGRectGetWidth(v165);
  closeButton2 = [(NANowPlayingDockedView *)self closeButton];
  [closeButton2 bounds];
  v54 = v48 - CGRectGetHeight(v166) * 0.5;
  closeButton3 = [(NANowPlayingDockedView *)self closeButton];
  [closeButton3 bounds];
  v56 = CGRectGetWidth(v167);
  closeButton4 = [(NANowPlayingDockedView *)self closeButton];
  [closeButton4 bounds];
  v58 = CGRectGetHeight(v168);
  closeButton5 = [(NANowPlayingDockedView *)self closeButton];
  [closeButton5 setFrame:{v52, v54, v56, v58}];

  closeButton6 = [(NANowPlayingDockedView *)self closeButton];
  [closeButton6 frame];
  v62 = v61;
  playPauseButton = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton bounds];
  v64 = v62 - (CGRectGetWidth(v169) + 22.0);
  playPauseButton2 = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton2 bounds];
  v66 = v48 - CGRectGetHeight(v170) * 0.5;
  playPauseButton3 = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton3 bounds];
  v68 = CGRectGetWidth(v171);
  playPauseButton4 = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton4 bounds];
  v70 = CGRectGetHeight(v172);
  playPauseButton5 = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton5 setFrame:{v64, v66, v68, v70}];

  playPauseButton6 = [(NANowPlayingDockedView *)self playPauseButton];
  [playPauseButton6 frame];
  v74 = v73;
  rewindButton = [(NANowPlayingDockedView *)self rewindButton];
  [rewindButton bounds];
  v76 = v74 - (CGRectGetWidth(v173) + 22.0);
  rewindButton2 = [(NANowPlayingDockedView *)self rewindButton];
  [rewindButton2 bounds];
  v78 = v48 - CGRectGetHeight(v174) * 0.5;
  rewindButton3 = [(NANowPlayingDockedView *)self rewindButton];
  [rewindButton3 bounds];
  v80 = CGRectGetWidth(v175);
  rewindButton4 = [(NANowPlayingDockedView *)self rewindButton];
  [rewindButton4 bounds];
  v82 = CGRectGetHeight(v176);
  rewindButton5 = [(NANowPlayingDockedView *)self rewindButton];
  [rewindButton5 setFrame:{v76, v78, v80, v82}];

  rewindButton6 = [(NANowPlayingDockedView *)self rewindButton];
  [(NANowPlayingDockedView *)self _computeLabelWidthWithLeadingButton:rewindButton6];
  v86 = v85;

  if (v86 < 100.0 && [(NANowPlayingDockedView *)self artworkEnabled])
  {
    closeButton7 = [(NANowPlayingDockedView *)self closeButton];
    [closeButton7 frame];
    v88 = CGRectGetMaxX(v177);
    playPauseButton7 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton7 frame];
    v90 = v88 - CGRectGetWidth(v178);
    playPauseButton8 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton8 frame];
    v93 = v92;
    playPauseButton9 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton9 frame];
    v95 = CGRectGetWidth(v179);
    playPauseButton10 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton10 frame];
    v97 = CGRectGetHeight(v180);
    playPauseButton11 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton11 setFrame:{v90, v93, v95, v97}];

    rewindButton7 = [(NANowPlayingDockedView *)self rewindButton];
    LOBYTE(playPauseButton7) = [rewindButton7 isHidden];

    if ((playPauseButton7 & 1) == 0)
    {
      rewindButton8 = [(NANowPlayingDockedView *)self rewindButton];
      [rewindButton8 setHidden:1];
    }

    closeButton8 = [(NANowPlayingDockedView *)self closeButton];
    isHidden = [closeButton8 isHidden];

    if ((isHidden & 1) == 0)
    {
      closeButton9 = [(NANowPlayingDockedView *)self closeButton];
      [closeButton9 setHidden:1];
    }

    playPauseButton12 = [(NANowPlayingDockedView *)self playPauseButton];
    [(NANowPlayingDockedView *)self _computeLabelWidthWithLeadingButton:playPauseButton12];
    v86 = v105;
    goto LABEL_27;
  }

  rewindButton9 = [(NANowPlayingDockedView *)self rewindButton];
  isHidden2 = [rewindButton9 isHidden];

  if (isHidden2)
  {
    rewindButton10 = [(NANowPlayingDockedView *)self rewindButton];
    [rewindButton10 setHidden:0];
  }

  closeButton10 = [(NANowPlayingDockedView *)self closeButton];
  isHidden3 = [closeButton10 isHidden];

  if (isHidden3)
  {
    playPauseButton12 = [(NANowPlayingDockedView *)self closeButton];
    [playPauseButton12 setHidden:0];
LABEL_27:
  }

  publisherMarqueeContainer5 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer5 frame];
  MinX = CGRectGetMinX(v181);
  publisherMarqueeContainer6 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer6 frame];
  MinY = CGRectGetMinY(v182);
  publisherMarqueeContainer7 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer7 frame];
  v116 = CGRectGetHeight(v183);
  publisherMarqueeContainer8 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer8 setFrame:{MinX, MinY, v86, v116}];

  titleMarqueeContainer3 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer3 frame];
  v119 = CGRectGetMinX(v184);
  titleMarqueeContainer4 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer4 frame];
  v121 = CGRectGetMinY(v185);
  titleMarqueeContainer5 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer5 frame];
  v123 = CGRectGetHeight(v186);
  titleMarqueeContainer6 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer6 setFrame:{v119, v121, v86, v123}];

  publisherMarqueeContainer9 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer9 frame];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  titleMarqueeContainer7 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer7 frame];
  v191.origin.x = v135;
  v191.origin.y = v136;
  v191.size.width = v137;
  v191.size.height = v138;
  v187.origin.x = v127;
  v187.origin.y = v129;
  v187.size.width = v131;
  v187.size.height = v133;
  v188 = CGRectUnion(v187, v191);
  x = v188.origin.x;
  y = v188.origin.y;
  v141 = v188.size.width;
  v142 = v188.size.height;

  contentView3 = [(NANowPlayingDockedView *)self contentView];
  v189.origin.x = x;
  v189.origin.y = y;
  v189.size.width = v141;
  v189.size.height = v142;
  v190 = UIAccessibilityConvertFrameToScreenCoordinates(v189, contentView3);
  v144 = v190.origin.x;
  v145 = v190.origin.y;
  v146 = v190.size.width;
  v147 = v190.size.height;
  titleLabel3 = [(NANowPlayingDockedView *)self titleLabel];
  [titleLabel3 setAccessibilityFrame:{v144, v145, v146, v147}];
}

- (void)setPublisher:(id)publisher
{
  v32 = *MEMORY[0x1E69E9840];
  publisherCopy = publisher;
  v5 = NANowPlayingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = publisherCopy;
    _os_log_impl(&dword_1D7987000, v5, OS_LOG_TYPE_DEFAULT, "Docked View setting publisher to %{public}@", buf, 0xCu);
  }

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v6 = *MEMORY[0x1E69DDD08];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    fontDescriptor = [v7 fontDescriptor];
    v28 = *MEMORY[0x1E69DB8F0];
    v26 = *MEMORY[0x1E69DB990];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
    v27 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v29 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = [fontDescriptor fontDescriptorByAddingAttributes:v11];

    v13 = MEMORY[0x1E69DB878];
    v14 = [v12 fontDescriptorWithSymbolicTraits:0x8000];
    v15 = [v13 fontWithDescriptor:v14 size:0.0];

    v16 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v6];
    v17 = [v16 scaledFontForFont:v15 maximumPointSize:15.0];
  }

  else
  {
    v15 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
    v7 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD10]];
    v17 = [v7 scaledFontForFont:v15 maximumPointSize:17.0];
  }

  v18 = MEMORY[0x1E69DD250];
  publisherLabel = [(NANowPlayingDockedView *)self publisherLabel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__NANowPlayingDockedView_setPublisher___block_invoke;
  v22[3] = &unk_1E84EA2D8;
  v23 = publisherCopy;
  v24 = v17;
  selfCopy = self;
  v20 = v17;
  v21 = publisherCopy;
  [v18 transitionWithView:publisherLabel duration:5242880 options:v22 animations:0 completion:0.25];

  [(NANowPlayingDockedView *)self _updateTitleAccessibilityLabel];
}

uint64_t __39__NANowPlayingDockedView_setPublisher___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E6965A88];
    v13[0] = *MEMORY[0x1E69DB648];
    v13[1] = v2;
    v3 = *(a1 + 48);
    v14[0] = *(a1 + 40);
    v14[1] = &unk_1F52DE0D8;
    v13[2] = *MEMORY[0x1E69DB650];
    if ([v3 artworkEnabled])
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithRed:0.76 green:0.76 blue:0.78 alpha:1.0];
    }
    v5 = ;
    v14[2] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [*(a1 + 32) uppercaseString];
    v9 = [v7 initWithString:v8 attributes:v6];
    v10 = [*(a1 + 48) publisherLabel];
    [v10 setAttributedText:v9];
  }

  else
  {
    v4 = [*(a1 + 48) publisherLabel];
    [v4 setText:0];
  }

  v11 = [*(a1 + 48) publisherLabel];
  [v11 sizeToFit];

  return [*(a1 + 48) setNeedsLayout];
}

- (void)setTitle:(id)title
{
  v41 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v5 = NANowPlayingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = titleCopy;
    _os_log_impl(&dword_1D7987000, v5, OS_LOG_TYPE_DEFAULT, "Docked View setting title to %{public}@", buf, 0xCu);
  }

  artworkEnabled = [(NANowPlayingDockedView *)self artworkEnabled];
  v7 = MEMORY[0x1E69DB878];
  if (artworkEnabled)
  {
    v8 = *MEMORY[0x1E69DDD28];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    fontDescriptor = [v9 fontDescriptor];
    v37 = *MEMORY[0x1E69DB8F0];
    v35 = *MEMORY[0x1E69DB990];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
    v36 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v38 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v14 = [fontDescriptor fontDescriptorByAddingAttributes:v13];

    v15 = MEMORY[0x1E69DB878];
    v16 = [v14 fontDescriptorWithSymbolicTraits:32770];
    v17 = [v15 fontWithDescriptor:v16 size:0.0];

    v18 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v8];
    v19 = [v18 scaledFontForFont:v17 maximumPointSize:15.0];
  }

  else
  {
    v20 = [MEMORY[0x1E69DB878] systemFontOfSize:17.5 weight:*MEMORY[0x1E69DB980]];
    fontDescriptor2 = [v20 fontDescriptor];
    v22 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:64];
    v17 = [v7 fontWithDescriptor:v22 size:0.0];

    v9 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD28]];
    v19 = [v9 scaledFontForFont:v17 maximumPointSize:21.0];
  }

  v23 = *MEMORY[0x1E6965A88];
  v33[0] = *MEMORY[0x1E69DB648];
  v33[1] = v23;
  v34[0] = v19;
  v34[1] = &unk_1F52DE0E8;
  v33[2] = *MEMORY[0x1E69DB650];
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v24 = ;
  v34[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v26 = MEMORY[0x1E69DD250];
  titleLabel = [(NANowPlayingDockedView *)self titleLabel];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__NANowPlayingDockedView_setTitle___block_invoke;
  v30[3] = &unk_1E84EA2D8;
  v30[4] = self;
  v31 = titleCopy;
  v32 = v25;
  v28 = v25;
  v29 = titleCopy;
  [v26 transitionWithView:titleLabel duration:5242880 options:v30 animations:0 completion:0.25];

  [(NANowPlayingDockedView *)self _updateTitleAccessibilityLabel];
}

uint64_t __35__NANowPlayingDockedView_setTitle___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:*(a1 + 40) attributes:*(a1 + 48)];
  v3 = [*(a1 + 32) titleLabel];
  [v3 setAttributedText:v2];

  v4 = [*(a1 + 32) titleLabel];
  [v4 sizeToFit];

  v5 = *(a1 + 32);

  return [v5 setNeedsLayout];
}

- (void)setMarqueeRunning:(BOOL)running
{
  runningCopy = running;
  publisherMarqueeContainer = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [publisherMarqueeContainer setMarqueeEnabled:runningCopy];

  titleMarqueeContainer = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [titleMarqueeContainer setMarqueeEnabled:runningCopy];
}

- (void)setIsPlaying:(BOOL)playing waiting:(BOOL)waiting
{
  waitingCopy = waiting;
  playingCopy = playing;
  [(NANowPlayingDockedView *)self setWaiting:waiting];
  if (waitingCopy)
  {
    v7 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__NANowPlayingDockedView_setIsPlaying_waiting___block_invoke;
    block[3] = &unk_1E84EA4E8;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    rewindButton = [(NANowPlayingDockedView *)self rewindButton];
    [rewindButton setEnabled:1];
  }

  if ([(NANowPlayingDockedView *)self isPlaying]!= playingCopy)
  {
    [(NANowPlayingDockedView *)self setIsPlaying:playingCopy];
    if (playingCopy)
    {
      v9 = @"pause.fill";
    }

    else
    {
      v9 = @"play.fill";
    }

    if (playingCopy)
    {
      v10 = @"pause";
    }

    else
    {
      v10 = @"play";
    }

    if (playingCopy)
    {
      v11 = &selRef_pauseButtonTapped_;
    }

    else
    {
      v11 = &selRef_playButtonTapped_;
    }

    v12 = [(NANowPlayingDockedView *)self _imageForPlayPauseButtonWithSystemName:v9];
    v13 = NABundle();
    v14 = [v13 localizedStringForKey:v10 value:&stru_1F52B5BC8 table:0];

    playPauseButton = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton setImage:v12 forState:0];

    playPauseButton2 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton2 setAccessibilityLabel:v14];

    playPauseButton3 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton3 removeTarget:self action:0 forControlEvents:64];

    playPauseButton4 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton4 addTarget:self action:*v11 forControlEvents:64];

    playPauseButton5 = [(NANowPlayingDockedView *)self playPauseButton];
    [playPauseButton5 setNeedsLayout];
  }
}

void __47__NANowPlayingDockedView_setIsPlaying_waiting___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) waiting])
  {
    v2 = [*(a1 + 32) rewindButton];
    [v2 setEnabled:0];
  }
}

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    [(NANowPlayingDockedView *)self setArtwork:artworkCopy animated:1];
  }
}

- (void)setArtwork:(id)artwork animated:(BOOL)animated
{
  animatedCopy = animated;
  artworkCopy = artwork;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    artworkView = [(NANowPlayingDockedView *)self artworkView];
    [artworkView setTrackImage:artworkCopy animated:animatedCopy];

    artworkView2 = [(NANowPlayingDockedView *)self artworkView];
    [artworkView2 sizeToFit];
  }
}

- (void)_updateTitleAccessibilityLabel
{
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  publisherLabel = [(NANowPlayingDockedView *)self publisherLabel];
  text = [publisherLabel text];

  titleLabel = [(NANowPlayingDockedView *)self titleLabel];
  text2 = [titleLabel text];

  if ([text length])
  {
    [v9 addObject:text];
  }

  if ([text2 length])
  {
    [v9 addObject:text2];
  }

  if ([v9 count])
  {
    titleLabel3 = [v9 componentsJoinedByString:@"\n"];
    titleLabel2 = [(NANowPlayingDockedView *)self titleLabel];
    [titleLabel2 setAccessibilityLabel:titleLabel3];
  }

  else
  {
    titleLabel3 = [(NANowPlayingDockedView *)self titleLabel];
    [titleLabel3 setAccessibilityLabel:0];
  }
}

- (id)_imageForPlayPauseButtonWithSystemName:(id)name
{
  nameCopy = name;
  artworkEnabled = [(NANowPlayingDockedView *)self artworkEnabled];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy];

  if (artworkEnabled)
  {
    v7 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v8 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v9 = [v7 configurationByApplyingConfiguration:v8];
    v10 = [v6 imageWithConfiguration:v9];
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:26.0];
    v10 = [v6 imageWithConfiguration:v7];
  }

  return v10;
}

- (UIEdgeInsets)_touchInsetsForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = fmin((CGRectGetWidth(frame) + -32.0) * 0.5, 0.0);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = fmin((CGRectGetHeight(v12) + -32.0) * 0.5, 0.0);
  v9 = v7;
  v10 = v8;
  v11 = v7;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (double)_computeLabelWidthWithLeadingButton:(id)button
{
  [button frame];
  MinX = CGRectGetMinX(v8);
  MaxX = 0.0;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    artworkView = [(NANowPlayingDockedView *)self artworkView];
    [artworkView frame];
    MaxX = CGRectGetMaxX(v9);
  }

  return MinX + -20.0 - MaxX;
}

- (void)closeButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Close button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingDockedView *)self delegate];
  [delegate nowPlayingDockedViewDidTapClose:self];
}

- (void)pauseButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Pause button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingDockedView *)self delegate];
  [delegate nowPlayingDockedViewDidTapPause:self];
}

- (void)playButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Play button tapped", v6, 2u);
  }

  delegate = [(NANowPlayingDockedView *)self delegate];
  [delegate nowPlayingDockedViewDidTapPlay:self];
}

- (void)rewindButtonTapped:(id)tapped
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Rewind tapped", v6, 2u);
  }

  delegate = [(NANowPlayingDockedView *)self delegate];
  [delegate nowPlayingDockedViewDidTapRewind:self];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(NANowPlayingDockedView *)self menu:interaction];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__NANowPlayingDockedView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v8[3] = &unk_1E84EA510;
    v8[4] = self;
    v6 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  v12.receiver = self;
  v12.super_class = NANowPlayingDockedView;
  [(NANowPlayingDockedView *)&v12 menuAttachmentPointForConfiguration:configuration];
  v5 = v4;
  v7 = v6;
  [(NANowPlayingDockedView *)self safeAreaInsets];
  if (v8 == 0.0)
  {
    v9 = 10.0;
  }

  else
  {
    [(NANowPlayingDockedView *)self safeAreaInsets];
  }

  v10 = v7 + v9 + -4.0;
  v11 = v5;
  result.y = v10;
  result.x = v11;
  return result;
}

- (NANowPlayingDockedViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end