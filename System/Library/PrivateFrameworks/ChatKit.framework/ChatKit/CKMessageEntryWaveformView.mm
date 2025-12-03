@interface CKMessageEntryWaveformView
+ (id)waveformCurveTransform;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKMessageEntryWaveformView)initWithFrame:(CGRect)frame;
- (void)appendPowerLevel:(double)level;
- (void)clearPowerLevels;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setDuration:(double)duration;
- (void)updateWaveform;
@end

@implementation CKMessageEntryWaveformView

+ (id)waveformCurveTransform
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = waveformCurveTransform_sTransform;
  if (!waveformCurveTransform_sTransform)
  {
    memcpy(__dst, &unk_190DCF008, sizeof(__dst));
    memcpy(v6, &unk_190DCFD50, sizeof(v6));
    v3 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:85 vertices:__dst faceCount:64 faces:v6 depthNormalization:*MEMORY[0x1E6979700]];
    v4 = waveformCurveTransform_sTransform;
    waveformCurveTransform_sTransform = v3;

    v2 = waveformCurveTransform_sTransform;
  }

  return v2;
}

- (CKMessageEntryWaveformView)initWithFrame:(CGRect)frame
{
  v65.receiver = self;
  v65.super_class = CKMessageEntryWaveformView;
  v3 = [(CKMessageEntryWaveformView *)&v65 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

      [(CKMessageEntryWaveformView *)v3 setBlurView:v8];
      [(CKMessageEntryWaveformView *)v3 addSubview:v8];
      [(CKMessageEntryWaveformView *)v3 setBlurView:0];
      [v8 removeFromSuperview];
    }

    else
    {
      v17 = +[CKUIBehavior sharedBehaviors];
      [v17 balloonCornerRadius];
      v19 = v18;

      v20 = *MEMORY[0x1E69A6E08];
      v21 = *(MEMORY[0x1E69A6E08] + 8);
      v22 = *(MEMORY[0x1E69A6E08] + 16);
      v23 = *(MEMORY[0x1E69A6E08] + 24);
      memset(v50, 0, sizeof(v50));
      memset(v60, 0, sizeof(v60));
      v63 = 0;
      v64 = 0;
      *&v47 = 0x1000000;
      *(&v47 + 1) = -1;
      v48 = v19;
      v49 = -2;
      v51 = v20;
      v52 = v21;
      v53 = v22;
      v54 = v23;
      v55 = v20;
      v56 = v21;
      v57 = v22;
      v58 = v23;
      v59 = 0;
      v61 = 1;
      memset(v62, 0, sizeof(v62));
      v8 = CKResizableBalloonMask(&v47);
      v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v25 = [v8 imageWithRenderingMode:2];
      v26 = [v24 initWithImage:v25];

      v27 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v27 theme];
      entryFieldAudioRecordingBalloonColor2 = [theme2 entryFieldAudioRecordingBalloonColor];
      [v26 setTintColor:entryFieldAudioRecordingBalloonColor2];

      [(CKMessageEntryWaveformView *)v3 setBalloonImageView:v26];
      [(CKMessageEntryWaveformView *)v3 addSubview:v26];
    }

    v30 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v31 = *MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
    v35 = [v30 initWithFrame:{*MEMORY[0x1E695F058], v32, v33, v34}];
    [v35 setContentMode:8];
    layer4 = [v35 layer];
    v37 = +[CKMessageEntryWaveformView waveformCurveTransform];
    [layer4 setMeshTransform:v37];

    [(CKMessageEntryWaveformView *)v3 addSubview:v35];
    [(CKMessageEntryWaveformView *)v3 setWaveformImageView:v35];
    v38 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v31, v32, v33, v34}];
    v39 = +[CKUIBehavior sharedBehaviors];
    audioBalloonTimeFont = [v39 audioBalloonTimeFont];
    [v38 setFont:audioBalloonTimeFont];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v38 setTextColor:whiteColor];

    v42 = CKLocalizedStringForDuration(0.0);
    [v38 setText:v42];

    [v38 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [(CKMessageEntryWaveformView *)v3 setMinTimeLabelWidth:?];
    [(CKMessageEntryWaveformView *)v3 setTimeLabel:v38];
    [(CKMessageEntryWaveformView *)v3 addSubview:v38];
    v43 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v43 theme];
    entryFieldBorderColor = [theme3 entryFieldBorderColor];
    [v38 setTextColor:entryFieldBorderColor];
  }

  return v3;
}

- (void)didMoveToWindow
{
  window = [(CKMessageEntryWaveformView *)self window];
  if (window)
  {
    v8 = window;
    [window bounds];
    if (v4 >= v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = +[CKUIBehavior sharedBehaviors];
    -[CKMessageEntryWaveformView setMaxPowerLevelsCount:](self, "setMaxPowerLevelsCount:", vcvtpd_u64_f64(v6 / [v7 waveformPowerLevelWidthIncrement]));

    window = v8;
  }
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CKMessageEntryWaveformView;
  [(CKMessageEntryWaveformView *)&v43 layoutSubviews];
  [(CKMessageEntryWaveformView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  blurView = [(CKMessageEntryWaveformView *)self blurView];
  layer = [blurView layer];
  [layer setCornerRadius:v10 * 0.5];

  v13 = v8;
  if (!CKIsRunningInMacCatalyst())
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 balloonMaskTailSizeForTailShape:1];
    v13 = v8 - v15;
  }

  blurView2 = [(CKMessageEntryWaveformView *)self blurView];
  [blurView2 setFrame:{v4, v6, v13, v10}];

  balloonImageView = [(CKMessageEntryWaveformView *)self balloonImageView];
  [balloonImageView setFrame:{v4, v6, v8, v10}];

  v18 = CKIsRunningInMacCatalyst();
  v19 = 0.0;
  if (!v18)
  {
    v20 = +[CKUIBehavior sharedBehaviors];
    [v20 balloonMaskTailSizeForTailShape:1];
    v22 = v21;

    v19 = v22 + 0.0;
  }

  v23 = v4 + 0.0;
  v24 = v6 + 0.0;
  v25 = v8 - v19;
  timeLabel = [(CKMessageEntryWaveformView *)self timeLabel];
  [timeLabel sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v28 = v27;

  [(CKMessageEntryWaveformView *)self minTimeLabelWidth];
  if (v28 >= v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v44.origin.x = v23;
  v44.origin.y = v24;
  v44.size.width = v25;
  v44.size.height = v10;
  MaxX = CGRectGetMaxX(v44);
  v32 = +[CKUIBehavior sharedBehaviors];
  [v32 audioBalloonTimeInset];
  v34 = MaxX - (v30 + v33);

  timeLabel2 = [(CKMessageEntryWaveformView *)self timeLabel];
  [timeLabel2 setFrame:{v34, v24, v30, v10}];

  waveformImageView = [(CKMessageEntryWaveformView *)self waveformImageView];
  [waveformImageView frame];
  [waveformImageView sizeThatFits:{v25, v10}];
  v38 = v37;
  v39 = +[CKUIBehavior sharedBehaviors];
  [v39 audioBalloonWaveformTimeSpace];
  v41 = v40;

  if (CKMainScreenScale_once_18 != -1)
  {
    [CKMessageEntryWaveformView layoutSubviews];
  }

  v42 = *&CKMainScreenScale_sMainScreenScale_18;
  if (*&CKMainScreenScale_sMainScreenScale_18 == 0.0)
  {
    v42 = 1.0;
  }

  [waveformImageView setFrame:{0.0, floor((v24 + (v10 - v38) * 0.5) * v42) / v42, v34 - v41, v38}];
  [(CKMessageEntryWaveformView *)self updateWaveform];
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

- (void)setDuration:(double)duration
{
  duration = self->_duration;
  if (duration != duration)
  {
    v9 = 0uLL;
    v8 = 0uLL;
    CKTimeIntervalComponents(&v9 + 1, &v9, 0, duration);
    CKTimeIntervalComponents(&v8 + 1, &v8, 0, duration);
    self->_duration = duration;
    if (v9 != v8)
    {
      v6 = CKLocalizedStringForDuration(duration);
      timeLabel = [(CKMessageEntryWaveformView *)self timeLabel];
      [timeLabel setText:v6];
    }
  }
}

- (void)appendPowerLevel:(double)level
{
  powerLevels = [(CKMessageEntryWaveformView *)self powerLevels];
  if (!powerLevels)
  {
    powerLevels = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CKMessageEntryWaveformView *)self setPowerLevels:?];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:level];
  [powerLevels addObject:v5];

  [(CKMessageEntryWaveformView *)self setNeedsLayout];
}

- (void)clearPowerLevels
{
  [(CKMessageEntryWaveformView *)self setPowerLevels:0];

  [(CKMessageEntryWaveformView *)self setNeedsLayout];
}

- (void)updateWaveform
{
  v32[1] = *MEMORY[0x1E69E9840];
  powerLevels = [(CKMessageEntryWaveformView *)self powerLevels];
  waveformImageView = [(CKMessageEntryWaveformView *)self waveformImageView];
  if ([powerLevels count])
  {
    v5 = [powerLevels count];
    [waveformImageView bounds];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = ceil(v7 / [v8 waveformPowerLevelWidthIncrement]);

    v11 = v5;
    if (v9 <= v5)
    {
      v11 = v9;
    }

    v12 = v11;
    MEMORY[0x1EEE9AC00](v10);
    v14 = (v32 - v13);
    bzero(v32 - v13, v15);
    v16 = [powerLevels count];
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 waveformMinDbPowerLevel];
    v19 = CKLinearForDbPowerLevel(v18) * 32767.0;

    v20 = log(32767.0 - v19);
    if (v12)
    {
      v21 = v20;
      v22 = v16 - v12;
      v23 = v14;
      v24 = v12;
      do
      {
        v25 = [powerLevels objectAtIndex:v22];
        [v25 floatValue];
        v27 = v26;

        v20 = fmax(log(v27 - v19), 0.0) / v21;
        *v23++ = v20;
        ++v22;
        --v24;
      }

      while (v24);
    }

    v28 = +[CKUIBehavior sharedBehaviors];
    theme = [v28 theme];
    entryFieldBorderColor = [theme entryFieldBorderColor];
    v31 = CKWaveformWithPowerLevels(v14, v12, entryFieldBorderColor);
  }

  else
  {
    v31 = 0;
  }

  [waveformImageView setImage:v31];
}

@end