@interface CKMessageEntryRecordedAudioView
- (BOOL)isPlaying;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKMessageEntryRecordedAudioView)initWithFrame:(CGRect)frame;
- (CKMessageEntryRecordedAudioViewDelegate)delegate;
- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing;
- (void)audioController:(id)controller mediaObjectProgressDidChange:(id)change currentTime:(double)time duration:(double)duration;
- (void)audioControllerDidPause:(id)pause;
- (void)audioControllerDidStop:(id)stop;
- (void)dealloc;
- (void)handlePlayPauseDelete:(id)delete;
- (void)layoutSubviews;
- (void)pause;
- (void)play;
- (void)setAudioMediaObject:(id)object;
- (void)setFrame:(CGRect)frame;
- (void)stop;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePlayPauseDeleteButton;
- (void)updateProgress;
- (void)updateTimeString;
@end

@implementation CKMessageEntryRecordedAudioView

- (CKMessageEntryRecordedAudioView)initWithFrame:(CGRect)frame
{
  v60.receiver = self;
  v60.super_class = CKMessageEntryRecordedAudioView;
  v3 = [(CKMessageEntryRecordedAudioView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    entryFieldShouldUseBackdropView = [v4 entryFieldShouldUseBackdropView];

    if (entryFieldShouldUseBackdropView)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD298]);
      v7 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      v8 = [v6 initWithEffect:v7];

      contentView = [v8 contentView];
      layer = [contentView layer];
      v11 = +[CKUIBehavior sharedBehaviors];
      theme = [v11 theme];
      entryFieldAudioRecordingBalloonColor = [theme entryFieldAudioRecordingBalloonColor];
      [layer setBackgroundColor:{objc_msgSend(entryFieldAudioRecordingBalloonColor, "CGColor")}];

      contentView2 = [v8 contentView];
      layer2 = [contentView2 layer];
      [layer2 setCompositingFilter:*MEMORY[0x1E6979CA0]];

      layer3 = [v8 layer];
      [layer3 setMasksToBounds:1];

      [(CKMessageEntryRecordedAudioView *)v3 setBlurView:v8];
      [(CKMessageEntryRecordedAudioView *)v3 addSubview:v8];
      [(CKMessageEntryRecordedAudioView *)v3 setBlurView:0];
      [v8 removeFromSuperview];
    }

    else
    {
      v17 = *MEMORY[0x1E69A6E08];
      v18 = *(MEMORY[0x1E69A6E08] + 8);
      v19 = *(MEMORY[0x1E69A6E08] + 16);
      v20 = *(MEMORY[0x1E69A6E08] + 24);
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 balloonCornerRadius];
      v23 = v22;

      memset(v45, 0, sizeof(v45));
      memset(v55, 0, sizeof(v55));
      v58 = 0;
      v59 = 0;
      *&v42 = 0x1000000;
      *(&v42 + 1) = -1;
      v43 = v23;
      v44 = -2;
      v46 = v17;
      v47 = v18;
      v48 = v19;
      v49 = v20;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      v53 = v20;
      v54 = 0;
      v56 = 1;
      memset(v57, 0, sizeof(v57));
      v8 = CKResizableBalloonMask(&v42);
      v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v25 = [v8 imageWithRenderingMode:2];
      v26 = [v24 initWithImage:v25];

      v27 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v27 theme];
      entryFieldAudioRecordingBalloonColor2 = [theme2 entryFieldAudioRecordingBalloonColor];
      [v26 setTintColor:entryFieldAudioRecordingBalloonColor2];

      [(CKMessageEntryRecordedAudioView *)v3 setBalloonImageView:v26];
      [(CKMessageEntryRecordedAudioView *)v3 addSubview:v26];
    }

    [(CKMessageEntryRecordedAudioView *)v3 updatePlayPauseDeleteButton];
    v30 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v31 = *MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
    v35 = [v30 initWithFrame:{*MEMORY[0x1E695F058], v32, v33, v34}];
    [v35 setContentMode:8];
    [v35 setClipsToBounds:1];
    [(CKMessageEntryRecordedAudioView *)v3 addSubview:v35];
    [(CKMessageEntryRecordedAudioView *)v3 setWaveformImageView:v35];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v31, v32, v33, v34}];
    v37 = +[CKUIBehavior sharedBehaviors];
    audioBalloonTimeFont = [v37 audioBalloonTimeFont];
    [v36 setFont:audioBalloonTimeFont];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v36 setTextColor:whiteColor];

    v40 = CKLocalizedStringForDuration(0.0);
    [v36 setText:v40];

    [(CKMessageEntryRecordedAudioView *)v3 setTimeLabel:v36];
    [(CKMessageEntryRecordedAudioView *)v3 addSubview:v36];
    [(CKMessageEntryRecordedAudioView *)v3 setTimeLabel:0];
    [v36 removeFromSuperview];
  }

  return v3;
}

- (void)updatePlayPauseDeleteButton
{
  if (!self->_playPauseDeleteButton)
  {
    v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
    playPauseDeleteButton = self->_playPauseDeleteButton;
    self->_playPauseDeleteButton = v3;

    v5 = self->_playPauseDeleteButton;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v5 setTintColor:whiteColor];

    v7 = self->_playPauseDeleteButton;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)v7 setTintColor:secondaryLabelColor];

    [(UIButton *)self->_playPauseDeleteButton setOpaque:0];
    [(UIButton *)self->_playPauseDeleteButton addTarget:self action:sel_handlePlayPauseDelete_ forEvents:64];
    [(CKMessageEntryRecordedAudioView *)self addSubview:self->_playPauseDeleteButton];
  }

  if (CKIsRunningInMacCatalyst())
  {
    if ([(CKMessageEntryRecordedAudioView *)self isPlaying])
    {
      v9 = @"AudioPause";
    }

    else
    {
      v9 = @"AudioPlay";
    }

    v10 = [MEMORY[0x1E69DCAB8] ckImageNamed:v9];
    v16 = [v10 imageWithRenderingMode:2];

    isPlaying = [(CKMessageEntryRecordedAudioView *)self isPlaying];
    v12 = @"pauseAudioRecordingButton";
    if (isPlaying)
    {
      v12 = @"playAudioRecordingButton";
    }

    v13 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
    v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"xmark"];
    v16 = [v15 imageWithSymbolConfiguration:v14];

    v13 = @"deleteAudioRecordingButton";
  }

  [(UIButton *)self->_playPauseDeleteButton setImage:v16 forState:0];
  [(UIButton *)self->_playPauseDeleteButton accessibilitySetIdentification:v13];
  [(CKMessageEntryRecordedAudioView *)self setNeedsLayout];
}

- (void)handlePlayPauseDelete:(id)delete
{
  if (CKIsRunningInMacCatalyst())
  {
    isPlaying = [(CKMessageEntryRecordedAudioView *)self isPlaying];
    delegate = [(CKMessageEntryRecordedAudioView *)self delegate];
    delegate2 = delegate;
    if (isPlaying)
    {
      [delegate messageEntryRecordedAudioViewPressedPause:self];
    }

    else
    {
      [delegate messageEntryRecordedAudioViewPressedPlay:self];
    }
  }

  else
  {
    delegate2 = [(CKMessageEntryRecordedAudioView *)self delegate];
    [delegate2 messageEntryRecordedAudioViewPressedDelete:self];
  }
}

- (void)dealloc
{
  [(CKAudioController *)self->_audioController setDelegate:0];
  [(CKAudioController *)self->_audioController stop];
  v3.receiver = self;
  v3.super_class = CKMessageEntryRecordedAudioView;
  [(CKMessageEntryRecordedAudioView *)&v3 dealloc];
}

- (void)setAudioMediaObject:(id)object
{
  v11[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (self->_audioMediaObject != objectCopy)
  {
    objc_storeStrong(&self->_audioMediaObject, object);
    audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
    [audioController stop];

    if (objectCopy)
    {
      v7 = [CKAudioController alloc];
      audioMediaObject = [(CKMessageEntryRecordedAudioView *)self audioMediaObject];
      v11[0] = audioMediaObject;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      v10 = [(CKAudioController *)v7 initWithMediaObjects:v9 conversation:0];

      [(CKAudioController *)v10 setDelegate:self];
      [(CKMessageEntryRecordedAudioView *)self setAudioController:v10];
    }

    else
    {
      [(CKMessageEntryRecordedAudioView *)self setAudioController:0];
    }

    [(CKMessageEntryRecordedAudioView *)self setWaveformImage:0];
    self->_cachedWaveFormImageIsValid = 0;
    [(CKMessageEntryRecordedAudioView *)self updateTimeString];
    [(CKMessageEntryRecordedAudioView *)self updateProgress];
    [(CKMessageEntryRecordedAudioView *)self setNeedsLayout];
  }
}

- (void)updateTimeString
{
  [(CKMessageEntryRecordedAudioView *)self time];
  v4 = v3;
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  isPlaying = [audioController isPlaying];

  if ((isPlaying & 1) == 0)
  {
    audioMediaObject = [(CKMessageEntryRecordedAudioView *)self audioMediaObject];
    [audioMediaObject duration];
    v4 = v8;
  }

  timeLabel = [(CKMessageEntryRecordedAudioView *)self timeLabel];
  v9 = CKLocalizedStringForDuration(v4);
  [timeLabel setText:v9];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CKMessageEntryRecordedAudioView *)self frame];
  if (v9 != width || v8 != height)
  {
    [(CKMessageEntryRecordedAudioView *)self setWaveformImage:0];
  }

  v11.receiver = self;
  v11.super_class = CKMessageEntryRecordedAudioView;
  [(CKMessageEntryRecordedAudioView *)&v11 setFrame:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x1E69A6E08];
  v4 = *(MEMORY[0x1E69A6E08] + 8);
  v5 = *(MEMORY[0x1E69A6E08] + 16);
  v6 = *(MEMORY[0x1E69A6E08] + 24);
  v7 = [CKUIBehavior sharedBehaviors:fits.width];
  [v7 balloonCornerRadius];
  v9 = v8;

  memset(v20, 0, sizeof(v20));
  memset(v30, 0, sizeof(v30));
  v33 = 0;
  v34 = 0;
  *&v17 = 0x1000000;
  *(&v17 + 1) = -1;
  v18 = v9;
  v19 = -2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = 0;
  v31 = 1;
  memset(v32, 0, sizeof(v32));
  v10 = CKResizableBalloonMask(&v17);
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  waveformImage = [(CKMessageEntryRecordedAudioView *)self waveformImage];
  if (waveformImage)
  {
    v5 = waveformImage;
    waveformImage2 = [(CKMessageEntryRecordedAudioView *)self waveformImage];
    traitCollection = [waveformImage2 traitCollection];
    v8 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

    if (v8)
    {
      self->_cachedWaveFormImageIsValid = 0;
      [(CKMessageEntryRecordedAudioView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKMessageEntryRecordedAudioView;
  [(CGSize *)&rect.size layoutSubviews];
  [(CKMessageEntryRecordedAudioView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  blurView = [(CKMessageEntryRecordedAudioView *)self blurView];
  layer = [blurView layer];
  [layer setCornerRadius:v10 * 0.5];

  v13 = v8;
  if (!CKIsRunningInMacCatalyst())
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 balloonMaskTailSizeForTailShape:1];
    v13 = v8 - v15;
  }

  blurView2 = [(CKMessageEntryRecordedAudioView *)self blurView];
  [blurView2 setFrame:{v4, v6, v13, v10}];

  balloonImageView = [(CKMessageEntryRecordedAudioView *)self balloonImageView];
  [balloonImageView setFrame:{v4, v6, v8, v10}];

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 entryViewLeftInsetForRecordedAudioCancelButton];
  v20 = v19;

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 sendButtonSize];
  v23 = v22;
  v24 = +[CKUIBehavior sharedBehaviors];
  [v24 entryViewSendButtonCoverSpace];
  v26 = v23 + v25;

  v27 = v4 + v20;
  v28 = v6 + 0.0;
  rect.origin.y = v8 - (v20 + v26);
  playPauseDeleteButton = [(CKMessageEntryRecordedAudioView *)self playPauseDeleteButton];
  [playPauseDeleteButton sizeToFit];
  [playPauseDeleteButton frame];
  v31 = v30;
  v33 = v32;
  v34 = CKIsRunningInMacCatalyst();
  if (v34)
  {
    v35 = v10 + -6.0;
  }

  else
  {
    v35 = v31;
  }

  if (v34)
  {
    v33 = v10 + -6.0;
  }

  if (CKMainScreenScale_once_41 != -1)
  {
    [CKMessageEntryRecordedAudioView layoutSubviews];
  }

  v36 = *&CKMainScreenScale_sMainScreenScale_41;
  if (*&CKMainScreenScale_sMainScreenScale_41 == 0.0)
  {
    v36 = 1.0;
  }

  v37 = floor((v28 + (v10 - v33) * 0.5) * v36) / v36;
  [playPauseDeleteButton setFrame:{v27 + 3.0, v37, v35, v33}];
  timeLabel = [(CKMessageEntryRecordedAudioView *)self timeLabel];
  rect.origin.x = v27 + 3.0;
  [timeLabel sizeThatFits:{rect.origin.y, v10}];
  v40 = v39;

  v64.origin.x = v27;
  v64.size.width = rect.origin.y;
  v41 = v6 + 0.0;
  v64.origin.y = v41;
  v64.size.height = v10;
  v42 = CGRectGetMaxX(v64) - v40;
  v43 = +[CKUIBehavior sharedBehaviors];
  [v43 audioBalloonTimeInset];
  v45 = v42 - v44;

  timeLabel2 = [(CKMessageEntryRecordedAudioView *)self timeLabel];
  [timeLabel2 setFrame:{v45, v28, v40, v10}];

  waveformImageView = [(CKMessageEntryRecordedAudioView *)self waveformImageView];
  v65.origin.x = rect.origin.x;
  v65.origin.y = v37;
  v65.size.width = v35;
  v65.size.height = v33;
  v48 = CGRectGetMaxX(v65) + 6.0;
  v66.origin.x = v45;
  v66.origin.y = v41;
  v66.size.width = v40;
  v66.size.height = v10;
  MinX = CGRectGetMinX(v66);
  v50 = +[CKUIBehavior sharedBehaviors];
  [v50 audioBalloonWaveformTimeSpace];
  v52 = MinX - v51;

  v53 = v52 - v48;
  if (!self->_cachedWaveFormImageIsValid)
  {
    v54 = +[CKUIBehavior sharedBehaviors];
    theme = [v54 theme];
    entryFieldBorderColor = [theme entryFieldBorderColor];

    audioMediaObject = [(CKMessageEntryRecordedAudioView *)self audioMediaObject];
    v58 = [audioMediaObject composeWaveformForWidth:1 orientation:entryFieldBorderColor withColor:v52 - v48];

    [(CKMessageEntryRecordedAudioView *)self setWaveformImage:v58];
    waveformImageView2 = [(CKMessageEntryRecordedAudioView *)self waveformImageView];
    [waveformImageView2 setImage:v58];

    self->_cachedWaveFormImageIsValid = 1;
  }

  [waveformImageView frame];
  [waveformImageView sizeThatFits:{rect.origin.y, v10}];
  v61 = v60;
  if (CKMainScreenScale_once_41 != -1)
  {
    [CKMessageEntryRecordedAudioView layoutSubviews];
  }

  v62 = *&CKMainScreenScale_sMainScreenScale_41;
  if (*&CKMainScreenScale_sMainScreenScale_41 == 0.0)
  {
    v62 = 1.0;
  }

  [waveformImageView setFrame:{v48, floor((v41 + (v10 - v61) * 0.5) * v62) / v62, v53, v61}];
}

- (void)updateProgress
{
  audioMediaObject = [(CKMessageEntryRecordedAudioView *)self audioMediaObject];
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  [(CKMessageEntryRecordedAudioView *)self time];
  v6 = v5;
  [audioMediaObject duration];
  v8 = v7;
  [CKAudioProgressView progressForTime:v6 duration:v7];
  v10 = v9;
  isPlaying = [audioController isPlaying];
  delegate = [(CKMessageEntryRecordedAudioView *)self delegate];
  [delegate messageEntryRecordedAudioViewPlaybackProgressDidChange:v6];

  if (v6 == v8 || !((v6 != 0.0) | isPlaying & 1))
  {
    self->_cachedWaveFormImageIsValid = 0;
    [(CKMessageEntryRecordedAudioView *)self setNeedsLayout];
  }

  else
  {
    waveformImage = [(CKMessageEntryRecordedAudioView *)self waveformImage];
    [waveformImage size];
    if (v15 != 0.0)
    {
      v16 = v14;
      if (v14 != 0.0)
      {
        v17 = v15;
        v18 = +[CKUIBehavior sharedBehaviors];
        waveformPowerLevelWidthIncrement = [v18 waveformPowerLevelWidthIncrement];

        v20 = +[CKUIBehavior sharedBehaviors];
        waveformPowerLevelWidth = [v20 waveformPowerLevelWidth];
        v22 = +[CKUIBehavior sharedBehaviors];
        waveformGapWidth = [v22 waveformGapWidth];

        if (CKMainScreenScale_once_41 != -1)
        {
          [CKMessageEntryRecordedAudioView updateProgress];
        }

        v26 = 1.0;
        *v24.i64 = (1.0 - v10) * (v16 / waveformPowerLevelWidthIncrement);
        *v25.i64 = *v24.i64 - trunc(*v24.i64);
        v27.f64[0] = NAN;
        v27.f64[1] = NAN;
        *v24.i64 = *vbslq_s8(vnegq_f64(v27), v25, v24).i64 * waveformPowerLevelWidth + *v24.i64 * waveformPowerLevelWidthIncrement + waveformGapWidth;
        if (*&CKMainScreenScale_sMainScreenScale_41 != 0.0)
        {
          v26 = *&CKMainScreenScale_sMainScreenScale_41;
        }

        v28 = floor(*v24.i64 * v26) / v26;
        v29 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v16, v17}];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __49__CKMessageEntryRecordedAudioView_updateProgress__block_invoke;
        v32[3] = &unk_1E72F3100;
        v37 = 1;
        v33 = waveformImage;
        v34 = v16;
        v35 = v17;
        v36 = v28;
        v30 = [v29 imageWithActions:v32];
        waveformImageView = [(CKMessageEntryRecordedAudioView *)self waveformImageView];
        [waveformImageView setImage:v30];
      }
    }
  }
}

void __49__CKMessageEntryRecordedAudioView_updateProgress__block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 255)
  {
    [*(a1 + 32) drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 theme];
    v11 = [v10 waveformUnplayedColor];
    [v11 set];

    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 theme];
    v14 = [v13 waveformUnplayedColorNewAudioMessagesFlow];
    [v14 set];

    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    v17 = *(a1 + 40) - v15;
    v18 = 0;

    UIRectFillUsingBlendMode(*&v17, kCGBlendModeSourceIn);
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] blackColor];
    [v2 set];

    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 theme];
    v5 = [v4 entryFieldBorderColor];
    [v5 set];

    v20.size.height = *(a1 + 48);
    v20.size.width = *(a1 + 40) - *(a1 + 56);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    UIRectFill(v20);
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    [*(a1 + 32) drawAtPoint:18 blendMode:*MEMORY[0x1E695EFF8] alpha:{v7, 1.0}];
    v8 = *(a1 + 32);

    [v8 drawAtPoint:0 blendMode:v6 alpha:{v7, 0.33}];
  }
}

- (void)play
{
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  [audioController play];
}

- (void)pause
{
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  [audioController pause];
}

- (void)stop
{
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  [audioController stop];
}

- (BOOL)isPlaying
{
  audioController = [(CKMessageEntryRecordedAudioView *)self audioController];
  isPlaying = [audioController isPlaying];

  return isPlaying;
}

- (void)audioController:(id)controller mediaObjectDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  [(CKMessageEntryRecordedAudioView *)self setTime:0.0];
  [(CKMessageEntryRecordedAudioView *)self updateTimeString];
  [(CKMessageEntryRecordedAudioView *)self updateProgress];
  delegate = [(CKMessageEntryRecordedAudioView *)self delegate];
  [delegate messageEntryRecordedAudioView:self mediaObjectDidFinishPlaying:playingCopy];
}

- (void)audioController:(id)controller mediaObjectProgressDidChange:(id)change currentTime:(double)time duration:(double)duration
{
  [(CKMessageEntryRecordedAudioView *)self setTime:controller, change, time, duration];
  [(CKMessageEntryRecordedAudioView *)self updateTimeString];

  [(CKMessageEntryRecordedAudioView *)self updateProgress];
}

- (void)audioControllerDidPause:(id)pause
{
  [(CKMessageEntryRecordedAudioView *)self updateTimeString];

  [(CKMessageEntryRecordedAudioView *)self updateProgress];
}

- (void)audioControllerDidStop:(id)stop
{
  [(CKMessageEntryRecordedAudioView *)self setTime:stop, 0.0];
  [(CKMessageEntryRecordedAudioView *)self updateTimeString];
  [(CKMessageEntryRecordedAudioView *)self updateProgress];
  delegate = [(CKMessageEntryRecordedAudioView *)self delegate];
  [delegate messageEntryRecordedAudioViewPlaybackDidStop];
}

- (CKMessageEntryRecordedAudioViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end