@interface CKAudioBalloonView
- (BOOL)isControlHidden;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKAudioBalloonView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)nonVibrantSubViews;
- (int64_t)waveformContentMode;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation;
- (void)configureForMessagePart:(id)part;
- (void)insertHighlightOverlayLayer:(id)layer;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setControlHidden:(BOOL)hidden;
- (void)setDuration:(double)duration;
- (void)setPlayed:(BOOL)played;
- (void)setPlaying:(BOOL)playing;
- (void)setTime:(double)time;
- (void)setWaveform:(id)waveform;
- (void)setWaveformContentMode:(int64_t)mode;
- (void)updateProgress;
- (void)updateTimeString;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews;
- (void)waveformProgressViewPanning:(id)panning;
@end

@implementation CKAudioBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v18.receiver = self;
  v18.super_class = CKAudioBalloonView;
  objectCopy = object;
  [(CKBalloonView *)&v18 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:width];
  v9 = [CKUIBehavior sharedBehaviors:v18.receiver];
  theme = [v9 theme];
  v11 = theme;
  if (orientationCopy == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = [theme waveformColorForColorType:v12];

  v14 = [objectCopy waveformForOrientation:orientationCopy];
  v15 = [v14 _flatImageWithColor:v13];
  [(CKAudioBalloonView *)self setWaveform:v15];

  [objectCopy duration];
  v17 = v16;

  [(CKAudioBalloonView *)self setDuration:v17];
  [(CKAudioBalloonView *)self setPlayed:1];
}

- (void)configureForComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = CKAudioBalloonView;
  compositionCopy = composition;
  [(CKColoredBalloonView *)&v8 configureForComposition:compositionCopy];
  mediaObjects = [compositionCopy mediaObjects];

  lastObject = [mediaObjects lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAudioBalloonView *)self configureForMediaObject:lastObject previewWidth:1 orientation:?];

  [(CKAudioBalloonView *)self setPlayed:0];
}

- (CKAudioBalloonView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = CKAudioBalloonView;
  v3 = [(CKColoredBalloonView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(CKAudioBalloonView *)v3 setTimeLabel:v9];
    [(CKAudioBalloonView *)v3 addSubview:v9];
    v10 = [[CKAudioProgressView alloc] initWithFrame:v5, v6, v7, v8];
    [(CKAudioProgressView *)v10 setColor:[(CKBalloonView *)v3 color]];
    [(CKAudioProgressView *)v10 sizeToFit];
    [(CKAudioBalloonView *)v3 setProgressView:v10];
    [(CKAudioBalloonView *)v3 addSubview:v10];
    v11 = [[CKWaveformProgressView alloc] initWithFrame:v5, v6, v7, v8];
    [(CKWaveformProgressView *)v11 setColor:[(CKBalloonView *)v3 color]];
    [(CKAudioBalloonView *)v3 addSubview:v11];
    [(CKAudioBalloonView *)v3 setWaveformProgressView:v11];
    v12 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_waveformProgressViewPanning_];
    [(CKWaveformProgressView *)v11 addGestureRecognizer:v12];
  }

  return v3;
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = CKAudioBalloonView;
  [(CKColoredBalloonView *)&v40 layoutSubviews];
  [(CKAudioBalloonView *)self bounds];
  v38 = v4;
  v39 = v3;
  [(CKAudioBalloonView *)self alignmentRectForFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = +[CKUIBehavior sharedBehaviors];
  progressView = [(CKAudioBalloonView *)self progressView];
  [progressView frame];
  v16 = v15;
  v18 = v17;
  [v13 audioBalloonProgressInset];
  v20 = v6 + v19;
  if (CKMainScreenScale_once_52 != -1)
  {
    [CKAudioBalloonView layoutSubviews];
  }

  v21 = *&CKMainScreenScale_sMainScreenScale_52;
  if (*&CKMainScreenScale_sMainScreenScale_52 == 0.0)
  {
    v21 = 1.0;
  }

  v22 = floor((v8 + (v12 - v18) * 0.5) * v21) / v21;
  [progressView setFrame:{v20, v22, v16, v18}];
  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  [timeLabel sizeThatFits:{v10, v12}];
  rect = v16;
  v25 = v24;

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MaxX = CGRectGetMaxX(v41);
  [v13 audioBalloonTimeInset];
  v28 = MaxX - (v25 + v27);
  timeLabel2 = [(CKAudioBalloonView *)self timeLabel];
  [timeLabel2 setFrame:{v28, v8, v25, v12}];

  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView frame];
  [waveformProgressView sizeThatFits:{v39, v38}];
  v32 = v31;
  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = rect;
  v42.size.height = v18;
  v33 = CGRectGetMaxX(v42);
  v34 = +[CKUIBehavior sharedBehaviors];
  [v34 audioBalloonWaveformTimeSpace];
  v36 = v35;

  if (CKMainScreenScale_once_52 != -1)
  {
    [CKAudioBalloonView layoutSubviews];
  }

  [waveformProgressView setFrame:?];
  [waveformProgressView setClipsToBounds:v28 - v36 - (v33 + 6.0) != v32];
}

- (void)insertHighlightOverlayLayer:(id)layer
{
  layerCopy = layer;
  layer = [(CKAudioBalloonView *)self layer];
  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  layer2 = [timeLabel layer];
  [layer insertSublayer:layerCopy below:layer2];
}

- (UIEdgeInsets)balloonTypePillContentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 audioBalloonAlignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v10 = +[CKUIBehavior sharedBehaviors];
  [(CKColoredBalloonView *)self alignmentRectInsetsForBoundsSize:width, height];
  v60 = v12;
  v61 = v11;
  v58 = v14;
  v59 = v13;
  v15 = v12 + v14;
  v16 = width - (v12 + v14);
  v17 = v11 + v13;
  v18 = height - (v11 + v13);
  progressView = [(CKAudioBalloonView *)self progressView];
  [progressView sizeThatFits:{v16, v18}];
  v21 = v20;

  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView sizeThatFits:{v16, v18}];
  v24 = v23;
  v57 = v25;

  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  [timeLabel sizeThatFits:{v16, v18}];
  v28 = v27;
  v30 = v29;

  [v10 audioBalloonProgressInset];
  v32 = v24 + v21 + v31 + 6.0;
  [v10 audioBalloonWaveformTimeSpace];
  v34 = v28 + v33 + v32;
  [v10 audioBalloonTimeInset];
  v36 = v35 + v34;
  v37 = 0.0;
  [(UIView *)self __ck_frameSizeForAlignmentRectSize:v36, 0.0];
  v38 = *v39.i64;
  *v39.i64 = *v39.i64 - width;
  if (*v39.i64 > 0.0)
  {
    v40 = v39;
    v55 = *v39.i64;
    *v39.i64 = *v39.i64 - trunc(*v39.i64);
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v56 = *vbslq_s8(vnegq_f64(v41), v39, v40).i64;
    waveformPowerLevelWidthIncrement = [v10 waveformPowerLevelWidthIncrement];
    v37 = v55 + waveformPowerLevelWidthIncrement - (v56 + (v55 % waveformPowerLevelWidthIncrement));
  }

  if (![v10 isAccessibilityPreferredContentSizeCategory])
  {
    [(CKColoredBalloonView *)self balloonDescriptor];
    [v10 balloonMaskSizeWithBalloonDescriptor:v62];
    v43 = v44;
    if (!insets)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v43 = fmax(v30, v57 + 25.0);
  if (insets)
  {
LABEL_7:
    insets->top = v61;
    insets->left = v60;
    insets->bottom = v59;
    insets->right = v58;
  }

LABEL_8:
  v45 = v38 - v37;
  if (tailInsets)
  {
    [(CKBalloonView *)self tailInsetsForViewSize:width, height];
    tailInsets->top = v46;
    tailInsets->left = v47;
    tailInsets->bottom = v48;
    tailInsets->right = v49;
  }

  v50 = v15 + v45;
  v51 = v17 + v43;
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v50 = v50 + 0.0;
    v51 = v51 + v52;
  }

  v53 = v50;
  v54 = v51;
  result.height = v54;
  result.width = v53;
  return result;
}

- (void)prepareForDisplay
{
  v12.receiver = self;
  v12.super_class = CKAudioBalloonView;
  [(CKColoredBalloonView *)&v12 prepareForDisplay];
  color = [(CKBalloonView *)self color];
  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme balloonTextColorForColorType:color];
  [timeLabel setTextColor:v7];

  v8 = +[CKUIBehavior sharedBehaviors];
  audioBalloonTimeFont = [v8 audioBalloonTimeFont];
  [timeLabel setFont:audioBalloonTimeFont];

  progressView = [(CKAudioBalloonView *)self progressView];
  [progressView setColor:{-[CKBalloonView color](self, "color")}];

  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView setColor:{-[CKBalloonView color](self, "color")}];

  [(CKAudioBalloonView *)self updateTimeString];
  [(CKAudioBalloonView *)self updateProgress];
}

- (void)prepareForReuse
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CKAudioBalloonView;
  [(CKColoredBalloonView *)&v12 prepareForReuse];
  [(CKAudioBalloonView *)self setControlHidden:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  nonVibrantSubViews = [(CKAudioBalloonView *)self nonVibrantSubViews];
  v4 = [nonVibrantSubViews countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(nonVibrantSubViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:1];
      }

      while (v5 != v7);
      v5 = [nonVibrantSubViews countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setTime:(double)time
{
  if (self->_time != time)
  {
    self->_time = time;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
    [waveformProgressView setDuration:duration];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setWaveform:(id)waveform
{
  waveformCopy = waveform;
  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView setWaveform:waveformCopy];
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    playingCopy = playing;
    self->_playing = playing;
    waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
    [waveformProgressView setPlaying:playingCopy];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlayed:(BOOL)played
{
  if (self->_played != played)
  {
    playedCopy = played;
    self->_played = played;
    waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
    [waveformProgressView setPlayed:playedCopy];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setControlHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  progressView = [(CKAudioBalloonView *)self progressView];
  [progressView setHidden:hiddenCopy];
}

- (BOOL)isControlHidden
{
  progressView = [(CKAudioBalloonView *)self progressView];
  isHidden = [progressView isHidden];

  return isHidden;
}

- (void)setWaveformContentMode:(int64_t)mode
{
  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView setContentMode:mode];
}

- (int64_t)waveformContentMode
{
  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  contentMode = [waveformProgressView contentMode];

  return contentMode;
}

- (void)updateTimeString
{
  [(CKAudioBalloonView *)self time];
  v4 = v3;
  if (v3 == 0.0 && ![(CKAudioBalloonView *)self isPlaying])
  {
    [(CKAudioBalloonView *)self duration];
    v4 = v5;
  }

  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  v7 = CKLocalizedStringForDuration(v4);
  [timeLabel setText:v7];

  [(CKAudioBalloonView *)self setNeedsLayout];
}

- (void)updateProgress
{
  progressView = [(CKAudioBalloonView *)self progressView];
  [(CKAudioBalloonView *)self time];
  v4 = v3;
  [(CKAudioBalloonView *)self duration];
  [CKAudioProgressView progressForTime:v4 duration:v5];
  [progressView setProgress:?];
  isPlaying = [(CKAudioBalloonView *)self isPlaying];
  if ([(CKAudioBalloonView *)self isPlayed])
  {
    v7 = [(CKBalloonView *)self orientation]== 0;
  }

  else
  {
    v7 = 0;
  }

  [progressView setPlayed:v7];
  [progressView setPlaying:isPlaying];
  [progressView prepareForDisplayIfNeeded];
  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  [waveformProgressView setCurrentTime:v4];
  [waveformProgressView prepareForDisplayIfNeeded];
}

- (id)nonVibrantSubViews
{
  v8[3] = *MEMORY[0x1E69E9840];
  timeLabel = [(CKAudioBalloonView *)self timeLabel];
  progressView = [(CKAudioBalloonView *)self progressView];
  v8[1] = progressView;
  waveformProgressView = [(CKAudioBalloonView *)self waveformProgressView];
  v8[2] = waveformProgressView;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews
{
  v13 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(subviewsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:0];
      }

      while (v5 != v7);
      v5 = [subviewsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)waveformProgressViewPanning:(id)panning
{
  panningCopy = panning;
  view = [panningCopy view];
  [panningCopy locationInView:view];
  v7 = v6;

  [(CKWaveformProgressView *)self->_waveformProgressView frame];
  v9 = v7 / v8;

  duration = self->_duration;
  v11 = v9 * duration;
  if (v11 <= duration)
  {
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = duration + -0.01;
  }

  self->_time = v11;
  delegate = [(CKBalloonView *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    [delegate2 audioBalloonScrubberDidChangeValue:v11];
  }
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = CKAudioBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:partCopy];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 previewMaxWidth];
  v7 = v6;

  mediaObject = [partCopy mediaObject];
  -[CKAudioBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CKAudioBalloonView setPlayed:](self, "setPlayed:", [partCopy isPlayed]);
  }
}

@end