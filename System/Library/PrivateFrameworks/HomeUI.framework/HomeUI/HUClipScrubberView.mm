@interface HUClipScrubberView
- (AVBackgroundView)contentBackgroundView;
- (BOOL)_isDataSourceUpdating;
- (HUClipScrubberPlayheadView)backgroundPlayheadView;
- (HUClipScrubberPlayheadView)playheadView;
- (HUClipScrubberView)initWithFrame:(CGRect)frame;
- (UIButton)playPauseButton;
- (UIButton)rightActionButton;
- (UICollectionView)clipCollectionView;
- (UIView)collectionViewContainer;
- (UIView)contentView;
- (id)_deleteImage;
- (id)_pauseImage;
- (id)_playImage;
- (id)displayModeDescription;
- (id)playOrPauseImageForEngineMode:(unint64_t)mode;
- (void)_addConstraints;
- (void)activateLiveButtonDisplay;
- (void)deactivateLiveButtonDisplay;
- (void)didUpdatePlaybackEngine:(id)engine;
- (void)displayEditInterface;
- (void)hideEditInterface;
- (void)layoutSubviews;
- (void)navigateToLivePosition;
- (void)navigateToOffset:(double)offset;
- (void)updateAccessoryButtonsForPlaybackEngine:(id)engine;
- (void)updateDisplayMode:(unint64_t)mode;
@end

@implementation HUClipScrubberView

- (HUClipScrubberView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUClipScrubberView;
  v3 = [(HUClipScrubberView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUClipScrubberView *)v3 setBackgroundColor:clearColor];

    [(HUClipScrubberView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUClipScrubberView *)v3 contentView];
    [(HUClipScrubberView *)v3 addSubview:contentView];

    playheadView = [(HUClipScrubberView *)v3 playheadView];
    [(HUClipScrubberView *)v3 addSubview:playheadView];

    [(HUClipScrubberView *)v3 _addConstraints];
  }

  return v3;
}

- (void)_addConstraints
{
  v134[32] = *MEMORY[0x277D85DE8];
  contentView = [(HUClipScrubberView *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v131 = [heightAnchor constraintEqualToConstant:94.0];
  v134[0] = v131;
  contentView2 = [(HUClipScrubberView *)self contentView];
  leftAnchor = [contentView2 leftAnchor];
  leftAnchor2 = [(HUClipScrubberView *)self leftAnchor];
  v127 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v134[1] = v127;
  contentView3 = [(HUClipScrubberView *)self contentView];
  rightAnchor = [contentView3 rightAnchor];
  rightAnchor2 = [(HUClipScrubberView *)self rightAnchor];
  v123 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v134[2] = v123;
  contentView4 = [(HUClipScrubberView *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  bottomAnchor2 = [(HUClipScrubberView *)self bottomAnchor];
  v119 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v134[3] = v119;
  contentBackgroundView = [(HUClipScrubberView *)self contentBackgroundView];
  heightAnchor2 = [contentBackgroundView heightAnchor];
  v116 = [heightAnchor2 constraintEqualToConstant:47.0];
  v134[4] = v116;
  contentBackgroundView2 = [(HUClipScrubberView *)self contentBackgroundView];
  leftAnchor3 = [contentBackgroundView2 leftAnchor];
  contentView5 = [(HUClipScrubberView *)self contentView];
  leftAnchor4 = [contentView5 leftAnchor];
  v111 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v134[5] = v111;
  contentBackgroundView3 = [(HUClipScrubberView *)self contentBackgroundView];
  rightAnchor3 = [contentBackgroundView3 rightAnchor];
  contentView6 = [(HUClipScrubberView *)self contentView];
  rightAnchor4 = [contentView6 rightAnchor];
  v106 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v134[6] = v106;
  contentBackgroundView4 = [(HUClipScrubberView *)self contentBackgroundView];
  bottomAnchor3 = [contentBackgroundView4 bottomAnchor];
  contentView7 = [(HUClipScrubberView *)self contentView];
  bottomAnchor4 = [contentView7 bottomAnchor];
  v101 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v134[7] = v101;
  collectionViewContainer = [(HUClipScrubberView *)self collectionViewContainer];
  heightAnchor3 = [collectionViewContainer heightAnchor];
  v98 = [heightAnchor3 constraintEqualToConstant:94.0];
  v134[8] = v98;
  collectionViewContainer2 = [(HUClipScrubberView *)self collectionViewContainer];
  leftAnchor5 = [collectionViewContainer2 leftAnchor];
  contentView8 = [(HUClipScrubberView *)self contentView];
  leftAnchor6 = [contentView8 leftAnchor];
  v93 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:54.0];
  v134[9] = v93;
  collectionViewContainer3 = [(HUClipScrubberView *)self collectionViewContainer];
  rightAnchor5 = [collectionViewContainer3 rightAnchor];
  contentView9 = [(HUClipScrubberView *)self contentView];
  rightAnchor6 = [contentView9 rightAnchor];
  v88 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6 constant:-54.0];
  v134[10] = v88;
  collectionViewContainer4 = [(HUClipScrubberView *)self collectionViewContainer];
  bottomAnchor5 = [collectionViewContainer4 bottomAnchor];
  bottomAnchor6 = [(HUClipScrubberView *)self bottomAnchor];
  v84 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v134[11] = v84;
  backgroundPlayheadView = [(HUClipScrubberView *)self backgroundPlayheadView];
  bottomAnchor7 = [backgroundPlayheadView bottomAnchor];
  collectionViewContainer5 = [(HUClipScrubberView *)self collectionViewContainer];
  bottomAnchor8 = [collectionViewContainer5 bottomAnchor];
  v79 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v134[12] = v79;
  backgroundPlayheadView2 = [(HUClipScrubberView *)self backgroundPlayheadView];
  centerXAnchor = [backgroundPlayheadView2 centerXAnchor];
  collectionViewContainer6 = [(HUClipScrubberView *)self collectionViewContainer];
  centerXAnchor2 = [collectionViewContainer6 centerXAnchor];
  v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v134[13] = v74;
  backgroundPlayheadView3 = [(HUClipScrubberView *)self backgroundPlayheadView];
  widthAnchor = [backgroundPlayheadView3 widthAnchor];
  v71 = [widthAnchor constraintEqualToConstant:24.0];
  v134[14] = v71;
  backgroundPlayheadView4 = [(HUClipScrubberView *)self backgroundPlayheadView];
  heightAnchor4 = [backgroundPlayheadView4 heightAnchor];
  v68 = [heightAnchor4 constraintEqualToConstant:55.0];
  v134[15] = v68;
  playheadView = [(HUClipScrubberView *)self playheadView];
  bottomAnchor9 = [playheadView bottomAnchor];
  bottomAnchor10 = [(HUClipScrubberView *)self bottomAnchor];
  v64 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v134[16] = v64;
  playheadView2 = [(HUClipScrubberView *)self playheadView];
  centerXAnchor3 = [playheadView2 centerXAnchor];
  centerXAnchor4 = [(HUClipScrubberView *)self centerXAnchor];
  v60 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v134[17] = v60;
  playheadView3 = [(HUClipScrubberView *)self playheadView];
  widthAnchor2 = [playheadView3 widthAnchor];
  v56 = [widthAnchor2 constraintEqualToConstant:24.0];
  v134[18] = v56;
  playheadView4 = [(HUClipScrubberView *)self playheadView];
  heightAnchor5 = [playheadView4 heightAnchor];
  v53 = [heightAnchor5 constraintEqualToConstant:55.0];
  v134[19] = v53;
  playPauseButton = [(HUClipScrubberView *)self playPauseButton];
  widthAnchor3 = [playPauseButton widthAnchor];
  v50 = [widthAnchor3 constraintEqualToConstant:54.0];
  v134[20] = v50;
  playPauseButton2 = [(HUClipScrubberView *)self playPauseButton];
  leftAnchor7 = [playPauseButton2 leftAnchor];
  contentView10 = [(HUClipScrubberView *)self contentView];
  leftAnchor8 = [contentView10 leftAnchor];
  v45 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8];
  v134[21] = v45;
  playPauseButton3 = [(HUClipScrubberView *)self playPauseButton];
  bottomAnchor11 = [playPauseButton3 bottomAnchor];
  contentView11 = [(HUClipScrubberView *)self contentView];
  bottomAnchor12 = [contentView11 bottomAnchor];
  v40 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  v134[22] = v40;
  playPauseButton4 = [(HUClipScrubberView *)self playPauseButton];
  heightAnchor6 = [playPauseButton4 heightAnchor];
  v37 = [heightAnchor6 constraintEqualToConstant:47.0];
  v134[23] = v37;
  clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
  leftAnchor9 = [clipCollectionView leftAnchor];
  collectionViewContainer7 = [(HUClipScrubberView *)self collectionViewContainer];
  leftAnchor10 = [collectionViewContainer7 leftAnchor];
  v32 = [leftAnchor9 constraintEqualToAnchor:leftAnchor10];
  v134[24] = v32;
  clipCollectionView2 = [(HUClipScrubberView *)self clipCollectionView];
  bottomAnchor13 = [clipCollectionView2 bottomAnchor];
  collectionViewContainer8 = [(HUClipScrubberView *)self collectionViewContainer];
  bottomAnchor14 = [collectionViewContainer8 bottomAnchor];
  v27 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
  v134[25] = v27;
  clipCollectionView3 = [(HUClipScrubberView *)self clipCollectionView];
  heightAnchor7 = [clipCollectionView3 heightAnchor];
  v24 = [heightAnchor7 constraintEqualToConstant:47.0];
  v134[26] = v24;
  clipCollectionView4 = [(HUClipScrubberView *)self clipCollectionView];
  rightAnchor7 = [clipCollectionView4 rightAnchor];
  collectionViewContainer9 = [(HUClipScrubberView *)self collectionViewContainer];
  rightAnchor8 = [collectionViewContainer9 rightAnchor];
  v19 = [rightAnchor7 constraintEqualToAnchor:rightAnchor8];
  v134[27] = v19;
  rightActionButton = [(HUClipScrubberView *)self rightActionButton];
  widthAnchor4 = [rightActionButton widthAnchor];
  v16 = [widthAnchor4 constraintEqualToConstant:54.0];
  v134[28] = v16;
  rightActionButton2 = [(HUClipScrubberView *)self rightActionButton];
  rightAnchor9 = [rightActionButton2 rightAnchor];
  contentView12 = [(HUClipScrubberView *)self contentView];
  rightAnchor10 = [contentView12 rightAnchor];
  v4 = [rightAnchor9 constraintEqualToAnchor:rightAnchor10];
  v134[29] = v4;
  rightActionButton3 = [(HUClipScrubberView *)self rightActionButton];
  bottomAnchor15 = [rightActionButton3 bottomAnchor];
  contentView13 = [(HUClipScrubberView *)self contentView];
  bottomAnchor16 = [contentView13 bottomAnchor];
  v9 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
  v134[30] = v9;
  rightActionButton4 = [(HUClipScrubberView *)self rightActionButton];
  heightAnchor8 = [rightActionButton4 heightAnchor];
  v12 = [heightAnchor8 constraintEqualToConstant:47.0];
  v134[31] = v12;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:32];

  [MEMORY[0x277CCAAD0] activateConstraints:v57];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUClipScrubberView;
  [(HUClipScrubberView *)&v5 layoutSubviews];
  clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
  collectionViewLayout = [clipCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)playOrPauseImageForEngineMode:(unint64_t)mode
{
  if (mode && [(HUClipScrubberView *)self isPlayingMedia])
  {
    _pauseImage = [(HUClipScrubberView *)self _pauseImage];
  }

  else
  {
    _pauseImage = [(HUClipScrubberView *)self _playImage];
  }

  return _pauseImage;
}

- (void)activateLiveButtonDisplay
{
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  rightActionButton = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton setBackgroundColor:systemOrangeColor];

  systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  rightActionButton2 = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton2 setTintColor:systemBlackColor];
}

- (void)deactivateLiveButtonDisplay
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  rightActionButton = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton setBackgroundColor:clearColor];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  rightActionButton2 = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton2 setTintColor:systemWhiteColor];
}

- (void)didUpdatePlaybackEngine:(id)engine
{
  v17 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  timeControlStatus = [engineCopy timeControlStatus];
  engineMode = [engineCopy engineMode];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    timeControlStatusDescription = [engineCopy timeControlStatusDescription];
    displayModeDescription = [(HUClipScrubberView *)self displayModeDescription];
    engineModeDescription = [engineCopy engineModeDescription];
    v11 = 138412802;
    v12 = timeControlStatusDescription;
    v13 = 2112;
    v14 = displayModeDescription;
    v15 = 2112;
    v16 = engineModeDescription;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Scrubber didUpdate timeControlStatus:%@  displayMode:%@ engineMode:%@.", &v11, 0x20u);
  }

  switch(timeControlStatus)
  {
    case 0:
      [(HUClipScrubberView *)self setIsPlayingMedia:0];
      [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
      break;
    case 2:
      if (engineMode)
      {
        [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
      }

      else
      {
        [(HUClipScrubberView *)self activateLiveButtonDisplay];
      }

      goto LABEL_12;
    case 1:
      [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
      if (engineMode == 1)
      {
LABEL_12:
        [(HUClipScrubberView *)self setIsPlayingMedia:1];
      }

      break;
  }

  [(HUClipScrubberView *)self updateAccessoryButtonsForPlaybackEngine:engineCopy];
}

- (void)updateAccessoryButtonsForPlaybackEngine:(id)engine
{
  engineCopy = engine;
  if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
  {
    if ([engineCopy engineMode])
    {
      [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
    }

    else
    {
      [(HUClipScrubberView *)self activateLiveButtonDisplay];
    }
  }

  v4 = [engineCopy timelineState] == 2;
  playPauseButton = [(HUClipScrubberView *)self playPauseButton];
  [playPauseButton setEnabled:v4];

  if ([engineCopy timelineState] == 2)
  {
    -[HUClipScrubberView playOrPauseImageForEngineMode:](self, "playOrPauseImageForEngineMode:", [engineCopy engineMode]);
  }

  else
  {
    [(HUClipScrubberView *)self _playImage];
  }
  v6 = ;
  playPauseButton2 = [(HUClipScrubberView *)self playPauseButton];
  [playPauseButton2 setImage:v6 forState:0];
}

- (BOOL)_isDataSourceUpdating
{
  objc_opt_class();
  clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
  dataSource = [clipCollectionView dataSource];
  if (objc_opt_isKindOfClass())
  {
    v5 = dataSource;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  isUpdating = [v6 isUpdating];
  return isUpdating;
}

- (void)navigateToLivePosition
{
  if (![(HUClipScrubberView *)self _isDataSourceUpdating])
  {
    clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView contentOffset];
    v5 = v4;

    clipCollectionView2 = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView2 contentSize];
    v8 = v7;
    clipCollectionView3 = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView3 bounds];
    v11 = v8 - v10;

    clipCollectionView4 = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView4 setContentOffset:{v11, v5}];
  }
}

- (void)navigateToOffset:(double)offset
{
  if (![(HUClipScrubberView *)self _isDataSourceUpdating])
  {
    clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView contentOffset];
    v7 = v6;

    clipCollectionView2 = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView2 bounds];
    v10 = offset + v9 * -0.5;

    clipCollectionView3 = [(HUClipScrubberView *)self clipCollectionView];
    [clipCollectionView3 setContentOffset:{v10, v7}];
  }
}

- (void)updateDisplayMode:(unint64_t)mode
{
  if ([(HUClipScrubberView *)self displayMode]!= mode)
  {
    if (mode == 1)
    {
      [(HUClipScrubberView *)self displayEditInterface];
    }

    else if (!mode)
    {
      [(HUClipScrubberView *)self hideEditInterface];
    }
  }

  [(HUClipScrubberView *)self setDisplayMode:mode];
}

- (void)displayEditInterface
{
  rightActionButton = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton setTitle:0 forState:0];

  rightActionButton2 = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton2 setAttributedTitle:0 forState:0];

  rightActionButton3 = [(HUClipScrubberView *)self rightActionButton];
  _deleteImage = [(HUClipScrubberView *)self _deleteImage];
  [rightActionButton3 setImage:_deleteImage forState:0];

  [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
  playheadView = [(HUClipScrubberView *)self playheadView];
  [playheadView setEditing:1];
}

- (void)hideEditInterface
{
  rightActionButton = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton setImage:0 forState:0];

  rightActionButton2 = [(HUClipScrubberView *)self rightActionButton];
  [rightActionButton2 setContentEdgeInsets:{0.0, 4.0, 0.0, 4.0}];

  rightActionButton3 = [(HUClipScrubberView *)self rightActionButton];
  v6 = _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
  [rightActionButton3 setTitle:v6 forState:0];

  [(HUClipScrubberView *)self deactivateLiveButtonDisplay];
  traitCollection = [(HUClipScrubberView *)self traitCollection];
  LODWORD(v6) = [traitCollection hu_hasExtendedWidth];

  if (v6)
  {
    leftBlendedSeparator = [(HUClipScrubberView *)self leftBlendedSeparator];
    [leftBlendedSeparator setHidden:0];

    rightBlendedSeparator = [(HUClipScrubberView *)self rightBlendedSeparator];
    [rightBlendedSeparator setHidden:0];
  }

  playheadView = [(HUClipScrubberView *)self playheadView];
  [playheadView setEditing:0];
}

- (UICollectionView)clipCollectionView
{
  clipCollectionView = self->_clipCollectionView;
  if (!clipCollectionView)
  {
    [(UIView *)self->_contentView bounds];
    v5 = v4 + -108.0;
    v6 = objc_alloc_init(MEMORY[0x277D752F0]);
    [v6 setScrollDirection:1];
    v7 = [objc_alloc(MEMORY[0x277D752A0]) initWithFrame:v6 collectionViewLayout:{54.0, 0.0, v5, 47.0}];
    v8 = _HULocalizedStringWithDefaultValue(@"HUClipScrubberCollectionViewAccessibilityLabel", @"HUClipScrubberCollectionViewAccessibilityLabel", 1);
    [(UICollectionView *)v7 setAccessibilityLabel:v8];

    [(UICollectionView *)v7 setSemanticContentAttribute:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UICollectionView *)v7 setBackgroundColor:clearColor];

    [(UICollectionView *)v7 setClipsToBounds:0];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HUCameraEventRecordingCellIdentifier"];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HUCameraEventReachabilityCellIdentifier"];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"HUCameraEventSpacerCellIdentifier"];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"header"];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"footer"];
    [(UICollectionView *)v7 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"liveSpacer"];
    [(UICollectionView *)v7 setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = self->_clipCollectionView;
    self->_clipCollectionView = v7;

    clipCollectionView = self->_clipCollectionView;
  }

  return clipCollectionView;
}

- (UIView)collectionViewContainer
{
  collectionViewContainer = self->_collectionViewContainer;
  if (!collectionViewContainer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 setClipsToBounds:1];
    backgroundPlayheadView = [(HUClipScrubberView *)self backgroundPlayheadView];
    [(UIView *)v4 addSubview:backgroundPlayheadView];

    clipCollectionView = [(HUClipScrubberView *)self clipCollectionView];
    [(UIView *)v4 addSubview:clipCollectionView];

    v7 = self->_collectionViewContainer;
    self->_collectionViewContainer = v4;

    collectionViewContainer = self->_collectionViewContainer;
  }

  return collectionViewContainer;
}

- (AVBackgroundView)contentBackgroundView
{
  contentBackgroundView = self->_contentBackgroundView;
  if (!contentBackgroundView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8590]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_contentBackgroundView;
    self->_contentBackgroundView = v4;

    contentBackgroundView = self->_contentBackgroundView;
  }

  return contentBackgroundView;
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentBackgroundView = [(HUClipScrubberView *)self contentBackgroundView];
    [(UIView *)v5 addSubview:contentBackgroundView];

    collectionViewContainer = [(HUClipScrubberView *)self collectionViewContainer];
    [(UIView *)v5 addSubview:collectionViewContainer];

    playPauseButton = [(HUClipScrubberView *)self playPauseButton];
    [(UIView *)v5 addSubview:playPauseButton];

    rightActionButton = [(HUClipScrubberView *)self rightActionButton];
    [(UIView *)v5 addSubview:rightActionButton];

    v10 = self->_contentView;
    self->_contentView = v5;

    contentView = self->_contentView;
  }

  return contentView;
}

- (HUClipScrubberPlayheadView)playheadView
{
  playheadView = self->_playheadView;
  if (!playheadView)
  {
    v4 = objc_alloc_init(HUClipScrubberPlayheadView);
    [(HUClipScrubberPlayheadView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_playheadView;
    self->_playheadView = v4;

    playheadView = self->_playheadView;
  }

  return playheadView;
}

- (HUClipScrubberPlayheadView)backgroundPlayheadView
{
  backgroundPlayheadView = self->_backgroundPlayheadView;
  if (!backgroundPlayheadView)
  {
    v4 = objc_alloc_init(HUClipScrubberPlayheadView);
    [(HUClipScrubberPlayheadView *)v4 setDrawsUpperContent:1];
    [(HUClipScrubberPlayheadView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_backgroundPlayheadView;
    self->_backgroundPlayheadView = v4;

    backgroundPlayheadView = self->_backgroundPlayheadView;
  }

  return backgroundPlayheadView;
}

- (UIButton)playPauseButton
{
  v24[4] = *MEMORY[0x277D85DE8];
  playPauseButton = self->_playPauseButton;
  if (!playPauseButton)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v4 setTintColor:systemWhiteColor];

    [(UIButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    _playImage = [(HUClipScrubberView *)self _playImage];
    [(UIButton *)v4 setImage:_playImage forState:0];

    imageView = [(UIButton *)v4 imageView];
    [imageView setContentMode:4];

    v8 = [HUBlendedSeparatorView alloc];
    v9 = [(HUBlendedSeparatorView *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(HUClipScrubberView *)self setLeftBlendedSeparator:v9];
    [(HUBlendedSeparatorView *)v9 setOpaque:0];
    [(HUBlendedSeparatorView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v4 addSubview:v9];
    topAnchor = [(HUBlendedSeparatorView *)v9 topAnchor];
    topAnchor2 = [(UIButton *)v4 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v24[0] = v21;
    bottomAnchor = [(HUBlendedSeparatorView *)v9 bottomAnchor];
    bottomAnchor2 = [(UIButton *)v4 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[1] = v10;
    widthAnchor = [(HUBlendedSeparatorView *)v9 widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:1.0];
    v24[2] = v12;
    rightAnchor = [(HUBlendedSeparatorView *)v9 rightAnchor];
    rightAnchor2 = [(UIButton *)v4 rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v16];
    v17 = self->_playPauseButton;
    self->_playPauseButton = v4;

    playPauseButton = self->_playPauseButton;
  }

  return playPauseButton;
}

- (UIButton)rightActionButton
{
  v23[4] = *MEMORY[0x277D85DE8];
  rightActionButton = self->_rightActionButton;
  if (!rightActionButton)
  {
    hu_clipScrubberLiveButton = [MEMORY[0x277D75220] hu_clipScrubberLiveButton];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIButton *)hu_clipScrubberLiveButton setBackgroundColor:clearColor];

    [(UIButton *)hu_clipScrubberLiveButton _setContinuousCornerRadius:16.0];
    layer = [(UIButton *)hu_clipScrubberLiveButton layer];
    [layer setMaskedCorners:10];

    [(UIButton *)hu_clipScrubberLiveButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [HUBlendedSeparatorView alloc];
    v8 = [(HUBlendedSeparatorView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(HUClipScrubberView *)self setRightBlendedSeparator:v8];
    [(HUBlendedSeparatorView *)v8 setOpaque:0];
    [(HUBlendedSeparatorView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)hu_clipScrubberLiveButton addSubview:v8];
    topAnchor = [(HUBlendedSeparatorView *)v8 topAnchor];
    topAnchor2 = [(UIButton *)hu_clipScrubberLiveButton topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v23[0] = v20;
    bottomAnchor = [(HUBlendedSeparatorView *)v8 bottomAnchor];
    bottomAnchor2 = [(UIButton *)hu_clipScrubberLiveButton bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[1] = v9;
    widthAnchor = [(HUBlendedSeparatorView *)v8 widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:1.0];
    v23[2] = v11;
    leftAnchor = [(HUBlendedSeparatorView *)v8 leftAnchor];
    leftAnchor2 = [(UIButton *)hu_clipScrubberLiveButton leftAnchor];
    v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    v23[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
    v16 = self->_rightActionButton;
    self->_rightActionButton = hu_clipScrubberLiveButton;

    rightActionButton = self->_rightActionButton;
  }

  return rightActionButton;
}

- (id)_playImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"play.fill"];
  hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:hu_standardSymbolConfiguration];

  return v4;
}

- (id)_pauseImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"pause.fill"];
  hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:hu_standardSymbolConfiguration];

  return v4;
}

- (id)_deleteImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"trash"];
  hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:hu_standardSymbolConfiguration];

  return v4;
}

- (id)displayModeDescription
{
  if ([(HUClipScrubberView *)self displayMode])
  {
    return @"Editing";
  }

  else
  {
    return @"Default";
  }
}

@end