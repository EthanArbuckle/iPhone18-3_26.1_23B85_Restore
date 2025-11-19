@interface NANowPlayingDockedView
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGSize)artworkSize;
- (NANowPlayingDockedView)initWithBackground:(id)a3 artworkEnabled:(BOOL)a4;
- (NANowPlayingDockedViewDelegate)delegate;
- (UIEdgeInsets)_touchInsetsForFrame:(CGRect)a3;
- (double)_computeLabelWidthWithLeadingButton:(id)a3;
- (id)_imageForPlayPauseButtonWithSystemName:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateTitleAccessibilityLabel;
- (void)closeButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)pauseButtonTapped:(id)a3;
- (void)playButtonTapped:(id)a3;
- (void)rewindButtonTapped:(id)a3;
- (void)setArtwork:(id)a3;
- (void)setArtwork:(id)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsPlaying:(BOOL)a3 waiting:(BOOL)a4;
- (void)setMarqueeRunning:(BOOL)a3;
- (void)setPublisher:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation NANowPlayingDockedView

- (NANowPlayingDockedView)initWithBackground:(id)a3 artworkEnabled:(BOOL)a4
{
  v4 = a4;
  v61[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v60.receiver = self;
  v60.super_class = NANowPlayingDockedView;
  v7 = [(NANowPlayingDockedView *)&v60 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(NANowPlayingDockedView *)v7 setArtworkEnabled:v4];
    [v6 setAutoresizingMask:18];
    [(NANowPlayingDockedView *)v8 addSubview:v6];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke;
    v58[3] = &unk_1E84EA330;
    v9 = v8;
    v59 = v9;
    v10 = __60__NANowPlayingDockedView_initWithBackground_artworkEnabled___block_invoke(v58);
    contentView = v9->_contentView;
    v9->_contentView = v10;

    if (v4)
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
    v36 = [(NANowPlayingDockedView *)v31 titleLabel];
    v61[0] = v36;
    v37 = [(NANowPlayingDockedView *)v31 rewindButton];
    v61[1] = v37;
    v38 = [(NANowPlayingDockedView *)v31 playPauseButton];
    v61[2] = v38;
    v39 = [(NANowPlayingDockedView *)v31 closeButton];
    v61[3] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    v41 = [(NANowPlayingDockedView *)v31 contentView];
    [v41 setAccessibilityElements:v40];

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
  v2 = [(NANowPlayingDockedView *)self artworkView];
  [v2 artworkSizeForTitleViewWidth:30.0];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NANowPlayingDockedView;
  [(NANowPlayingDockedView *)&v7 setHighlighted:a3];
  v4 = [(NANowPlayingDockedView *)self isHighlighted];
  v5 = 1.0;
  if (v4)
  {
    v6 = [(NANowPlayingDockedView *)self changesDisplayWhenHighlighted];
    v5 = 0.8;
    if (!v6)
    {
      v5 = 1.0;
    }
  }

  [(NANowPlayingDockedView *)self setAlpha:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = NANowPlayingDockedView;
  v5 = [(NANowPlayingDockedView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = self;
    }

    v7 = v6;
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
  v15 = [(NANowPlayingDockedView *)self contentView];
  [v15 setFrame:{v8, v10, v12, v14}];

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    [(NANowPlayingDockedView *)self artworkSize];
    v17 = v16;
    [(NANowPlayingDockedView *)self artworkSize];
    v19 = v18;
    v20 = [(NANowPlayingDockedView *)self artworkView];
    [v20 setFrame:{0.0, 0.0, v17, v19}];

    v21 = [(NANowPlayingDockedView *)self artworkView];
    [v21 frame];
    MaxX = CGRectGetMaxX(v150);
    v23 = [(NANowPlayingDockedView *)self publisherLabel];
    [v23 bounds];
    Width = CGRectGetWidth(v151);
    v25 = [(NANowPlayingDockedView *)self publisherLabel];
    [v25 bounds];
    Height = CGRectGetHeight(v152);
    v27 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [v27 setFrame:{MaxX, 0.0, Width, Height}];

    v28 = [(NANowPlayingDockedView *)self artworkView];
    [v28 frame];
    v29 = CGRectGetMaxX(v153);
    v30 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [v30 frame];
    v31 = CGRectGetMaxY(v154) + 1.0;
    v32 = [(NANowPlayingDockedView *)self titleLabel];
    [v32 bounds];
    v33 = CGRectGetWidth(v155);
    v34 = [(NANowPlayingDockedView *)self titleLabel];
    [v34 bounds];
    v35 = CGRectGetHeight(v156);
    v36 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
    [v36 setFrame:{v29, v31, v33, v35}];
  }

  else
  {
    v37 = [(NANowPlayingDockedView *)self publisherLabel];
    [v37 bounds];
    v38 = CGRectGetWidth(v157);
    v39 = [(NANowPlayingDockedView *)self publisherLabel];
    [v39 bounds];
    v40 = CGRectGetHeight(v158);
    v41 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [v41 setFrame:{0.0, 0.0, v38, v40}];

    v28 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
    [v28 frame];
    v42 = CGRectGetMaxY(v159) + 1.0 + 3.5;
    v30 = [(NANowPlayingDockedView *)self titleLabel];
    [v30 bounds];
    v43 = CGRectGetWidth(v160);
    v32 = [(NANowPlayingDockedView *)self titleLabel];
    [v32 bounds];
    v44 = CGRectGetHeight(v161);
    v34 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
    [v34 setFrame:{0.0, v42, v43, v44}];
  }

  v45 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v45 frame];
  MaxY = CGRectGetMaxY(v162);
  v47 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v47 frame];
  v48 = (MaxY - CGRectGetMinY(v163)) * 0.5;

  v49 = [(NANowPlayingDockedView *)self contentView];
  [v49 bounds];
  v50 = CGRectGetWidth(v164);
  v51 = [(NANowPlayingDockedView *)self closeButton];
  [v51 bounds];
  v52 = v50 - CGRectGetWidth(v165);
  v53 = [(NANowPlayingDockedView *)self closeButton];
  [v53 bounds];
  v54 = v48 - CGRectGetHeight(v166) * 0.5;
  v55 = [(NANowPlayingDockedView *)self closeButton];
  [v55 bounds];
  v56 = CGRectGetWidth(v167);
  v57 = [(NANowPlayingDockedView *)self closeButton];
  [v57 bounds];
  v58 = CGRectGetHeight(v168);
  v59 = [(NANowPlayingDockedView *)self closeButton];
  [v59 setFrame:{v52, v54, v56, v58}];

  v60 = [(NANowPlayingDockedView *)self closeButton];
  [v60 frame];
  v62 = v61;
  v63 = [(NANowPlayingDockedView *)self playPauseButton];
  [v63 bounds];
  v64 = v62 - (CGRectGetWidth(v169) + 22.0);
  v65 = [(NANowPlayingDockedView *)self playPauseButton];
  [v65 bounds];
  v66 = v48 - CGRectGetHeight(v170) * 0.5;
  v67 = [(NANowPlayingDockedView *)self playPauseButton];
  [v67 bounds];
  v68 = CGRectGetWidth(v171);
  v69 = [(NANowPlayingDockedView *)self playPauseButton];
  [v69 bounds];
  v70 = CGRectGetHeight(v172);
  v71 = [(NANowPlayingDockedView *)self playPauseButton];
  [v71 setFrame:{v64, v66, v68, v70}];

  v72 = [(NANowPlayingDockedView *)self playPauseButton];
  [v72 frame];
  v74 = v73;
  v75 = [(NANowPlayingDockedView *)self rewindButton];
  [v75 bounds];
  v76 = v74 - (CGRectGetWidth(v173) + 22.0);
  v77 = [(NANowPlayingDockedView *)self rewindButton];
  [v77 bounds];
  v78 = v48 - CGRectGetHeight(v174) * 0.5;
  v79 = [(NANowPlayingDockedView *)self rewindButton];
  [v79 bounds];
  v80 = CGRectGetWidth(v175);
  v81 = [(NANowPlayingDockedView *)self rewindButton];
  [v81 bounds];
  v82 = CGRectGetHeight(v176);
  v83 = [(NANowPlayingDockedView *)self rewindButton];
  [v83 setFrame:{v76, v78, v80, v82}];

  v84 = [(NANowPlayingDockedView *)self rewindButton];
  [(NANowPlayingDockedView *)self _computeLabelWidthWithLeadingButton:v84];
  v86 = v85;

  if (v86 < 100.0 && [(NANowPlayingDockedView *)self artworkEnabled])
  {
    v87 = [(NANowPlayingDockedView *)self closeButton];
    [v87 frame];
    v88 = CGRectGetMaxX(v177);
    v89 = [(NANowPlayingDockedView *)self playPauseButton];
    [v89 frame];
    v90 = v88 - CGRectGetWidth(v178);
    v91 = [(NANowPlayingDockedView *)self playPauseButton];
    [v91 frame];
    v93 = v92;
    v94 = [(NANowPlayingDockedView *)self playPauseButton];
    [v94 frame];
    v95 = CGRectGetWidth(v179);
    v96 = [(NANowPlayingDockedView *)self playPauseButton];
    [v96 frame];
    v97 = CGRectGetHeight(v180);
    v98 = [(NANowPlayingDockedView *)self playPauseButton];
    [v98 setFrame:{v90, v93, v95, v97}];

    v99 = [(NANowPlayingDockedView *)self rewindButton];
    LOBYTE(v89) = [v99 isHidden];

    if ((v89 & 1) == 0)
    {
      v100 = [(NANowPlayingDockedView *)self rewindButton];
      [v100 setHidden:1];
    }

    v101 = [(NANowPlayingDockedView *)self closeButton];
    v102 = [v101 isHidden];

    if ((v102 & 1) == 0)
    {
      v103 = [(NANowPlayingDockedView *)self closeButton];
      [v103 setHidden:1];
    }

    v104 = [(NANowPlayingDockedView *)self playPauseButton];
    [(NANowPlayingDockedView *)self _computeLabelWidthWithLeadingButton:v104];
    v86 = v105;
    goto LABEL_27;
  }

  v106 = [(NANowPlayingDockedView *)self rewindButton];
  v107 = [v106 isHidden];

  if (v107)
  {
    v108 = [(NANowPlayingDockedView *)self rewindButton];
    [v108 setHidden:0];
  }

  v109 = [(NANowPlayingDockedView *)self closeButton];
  v110 = [v109 isHidden];

  if (v110)
  {
    v104 = [(NANowPlayingDockedView *)self closeButton];
    [v104 setHidden:0];
LABEL_27:
  }

  v111 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v111 frame];
  MinX = CGRectGetMinX(v181);
  v113 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v113 frame];
  MinY = CGRectGetMinY(v182);
  v115 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v115 frame];
  v116 = CGRectGetHeight(v183);
  v117 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v117 setFrame:{MinX, MinY, v86, v116}];

  v118 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v118 frame];
  v119 = CGRectGetMinX(v184);
  v120 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v120 frame];
  v121 = CGRectGetMinY(v185);
  v122 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v122 frame];
  v123 = CGRectGetHeight(v186);
  v124 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v124 setFrame:{v119, v121, v86, v123}];

  v125 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v125 frame];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v134 frame];
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

  v143 = [(NANowPlayingDockedView *)self contentView];
  v189.origin.x = x;
  v189.origin.y = y;
  v189.size.width = v141;
  v189.size.height = v142;
  v190 = UIAccessibilityConvertFrameToScreenCoordinates(v189, v143);
  v144 = v190.origin.x;
  v145 = v190.origin.y;
  v146 = v190.size.width;
  v147 = v190.size.height;
  v148 = [(NANowPlayingDockedView *)self titleLabel];
  [v148 setAccessibilityFrame:{v144, v145, v146, v147}];
}

- (void)setPublisher:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = NANowPlayingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v4;
    _os_log_impl(&dword_1D7987000, v5, OS_LOG_TYPE_DEFAULT, "Docked View setting publisher to %{public}@", buf, 0xCu);
  }

  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v6 = *MEMORY[0x1E69DDD08];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    v8 = [v7 fontDescriptor];
    v28 = *MEMORY[0x1E69DB8F0];
    v26 = *MEMORY[0x1E69DB990];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
    v27 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v29 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v12 = [v8 fontDescriptorByAddingAttributes:v11];

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
  v19 = [(NANowPlayingDockedView *)self publisherLabel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__NANowPlayingDockedView_setPublisher___block_invoke;
  v22[3] = &unk_1E84EA2D8;
  v23 = v4;
  v24 = v17;
  v25 = self;
  v20 = v17;
  v21 = v4;
  [v18 transitionWithView:v19 duration:5242880 options:v22 animations:0 completion:0.25];

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

- (void)setTitle:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = NANowPlayingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v4;
    _os_log_impl(&dword_1D7987000, v5, OS_LOG_TYPE_DEFAULT, "Docked View setting title to %{public}@", buf, 0xCu);
  }

  v6 = [(NANowPlayingDockedView *)self artworkEnabled];
  v7 = MEMORY[0x1E69DB878];
  if (v6)
  {
    v8 = *MEMORY[0x1E69DDD28];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v10 = [v9 fontDescriptor];
    v37 = *MEMORY[0x1E69DB8F0];
    v35 = *MEMORY[0x1E69DB990];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
    v36 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v38 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v14 = [v10 fontDescriptorByAddingAttributes:v13];

    v15 = MEMORY[0x1E69DB878];
    v16 = [v14 fontDescriptorWithSymbolicTraits:32770];
    v17 = [v15 fontWithDescriptor:v16 size:0.0];

    v18 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v8];
    v19 = [v18 scaledFontForFont:v17 maximumPointSize:15.0];
  }

  else
  {
    v20 = [MEMORY[0x1E69DB878] systemFontOfSize:17.5 weight:*MEMORY[0x1E69DB980]];
    v21 = [v20 fontDescriptor];
    v22 = [v21 fontDescriptorWithSymbolicTraits:64];
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
  v27 = [(NANowPlayingDockedView *)self titleLabel];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__NANowPlayingDockedView_setTitle___block_invoke;
  v30[3] = &unk_1E84EA2D8;
  v30[4] = self;
  v31 = v4;
  v32 = v25;
  v28 = v25;
  v29 = v4;
  [v26 transitionWithView:v27 duration:5242880 options:v30 animations:0 completion:0.25];

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

- (void)setMarqueeRunning:(BOOL)a3
{
  v3 = a3;
  v5 = [(NANowPlayingDockedView *)self publisherMarqueeContainer];
  [v5 setMarqueeEnabled:v3];

  v6 = [(NANowPlayingDockedView *)self titleMarqueeContainer];
  [v6 setMarqueeEnabled:v3];
}

- (void)setIsPlaying:(BOOL)a3 waiting:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(NANowPlayingDockedView *)self setWaiting:a4];
  if (v4)
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
    v8 = [(NANowPlayingDockedView *)self rewindButton];
    [v8 setEnabled:1];
  }

  if ([(NANowPlayingDockedView *)self isPlaying]!= v5)
  {
    [(NANowPlayingDockedView *)self setIsPlaying:v5];
    if (v5)
    {
      v9 = @"pause.fill";
    }

    else
    {
      v9 = @"play.fill";
    }

    if (v5)
    {
      v10 = @"pause";
    }

    else
    {
      v10 = @"play";
    }

    if (v5)
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

    v15 = [(NANowPlayingDockedView *)self playPauseButton];
    [v15 setImage:v12 forState:0];

    v16 = [(NANowPlayingDockedView *)self playPauseButton];
    [v16 setAccessibilityLabel:v14];

    v17 = [(NANowPlayingDockedView *)self playPauseButton];
    [v17 removeTarget:self action:0 forControlEvents:64];

    v18 = [(NANowPlayingDockedView *)self playPauseButton];
    [v18 addTarget:self action:*v11 forControlEvents:64];

    v19 = [(NANowPlayingDockedView *)self playPauseButton];
    [v19 setNeedsLayout];
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

- (void)setArtwork:(id)a3
{
  v4 = a3;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    [(NANowPlayingDockedView *)self setArtwork:v4 animated:1];
  }
}

- (void)setArtwork:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v6 = [(NANowPlayingDockedView *)self artworkView];
    [v6 setTrackImage:v8 animated:v4];

    v7 = [(NANowPlayingDockedView *)self artworkView];
    [v7 sizeToFit];
  }
}

- (void)_updateTitleAccessibilityLabel
{
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v3 = [(NANowPlayingDockedView *)self publisherLabel];
  v4 = [v3 text];

  v5 = [(NANowPlayingDockedView *)self titleLabel];
  v6 = [v5 text];

  if ([v4 length])
  {
    [v9 addObject:v4];
  }

  if ([v6 length])
  {
    [v9 addObject:v6];
  }

  if ([v9 count])
  {
    v7 = [v9 componentsJoinedByString:@"\n"];
    v8 = [(NANowPlayingDockedView *)self titleLabel];
    [v8 setAccessibilityLabel:v7];
  }

  else
  {
    v7 = [(NANowPlayingDockedView *)self titleLabel];
    [v7 setAccessibilityLabel:0];
  }
}

- (id)_imageForPlayPauseButtonWithSystemName:(id)a3
{
  v4 = a3;
  v5 = [(NANowPlayingDockedView *)self artworkEnabled];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];

  if (v5)
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

- (UIEdgeInsets)_touchInsetsForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = fmin((CGRectGetWidth(a3) + -32.0) * 0.5, 0.0);
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

- (double)_computeLabelWidthWithLeadingButton:(id)a3
{
  [a3 frame];
  MinX = CGRectGetMinX(v8);
  MaxX = 0.0;
  if ([(NANowPlayingDockedView *)self artworkEnabled])
  {
    v6 = [(NANowPlayingDockedView *)self artworkView];
    [v6 frame];
    MaxX = CGRectGetMaxX(v9);
  }

  return MinX + -20.0 - MaxX;
}

- (void)closeButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Close button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingDockedView *)self delegate];
  [v5 nowPlayingDockedViewDidTapClose:self];
}

- (void)pauseButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Pause button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingDockedView *)self delegate];
  [v5 nowPlayingDockedViewDidTapPause:self];
}

- (void)playButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Play button tapped", v6, 2u);
  }

  v5 = [(NANowPlayingDockedView *)self delegate];
  [v5 nowPlayingDockedViewDidTapPlay:self];
}

- (void)rewindButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "Docked View Rewind tapped", v6, 2u);
  }

  v5 = [(NANowPlayingDockedView *)self delegate];
  [v5 nowPlayingDockedViewDidTapRewind:self];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = [(NANowPlayingDockedView *)self menu:a3];

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

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v12.receiver = self;
  v12.super_class = NANowPlayingDockedView;
  [(NANowPlayingDockedView *)&v12 menuAttachmentPointForConfiguration:a3];
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