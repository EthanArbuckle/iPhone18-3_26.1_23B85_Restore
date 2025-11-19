@interface CKAudioBalloonView
- (BOOL)isControlHidden;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKAudioBalloonView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)balloonTypePillContentInsets;
- (id)nonVibrantSubViews;
- (int64_t)waveformContentMode;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setControlHidden:(BOOL)a3;
- (void)setDuration:(double)a3;
- (void)setPlayed:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setTime:(double)a3;
- (void)setWaveform:(id)a3;
- (void)setWaveformContentMode:(int64_t)a3;
- (void)updateProgress;
- (void)updateTimeString;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3;
- (void)waveformProgressViewPanning:(id)a3;
@end

@implementation CKAudioBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v18.receiver = self;
  v18.super_class = CKAudioBalloonView;
  v8 = a3;
  [(CKBalloonView *)&v18 configureForMediaObject:v8 previewWidth:v5 orientation:a4];
  v9 = [CKUIBehavior sharedBehaviors:v18.receiver];
  v10 = [v9 theme];
  v11 = v10;
  if (v5 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  v13 = [v10 waveformColorForColorType:v12];

  v14 = [v8 waveformForOrientation:v5];
  v15 = [v14 _flatImageWithColor:v13];
  [(CKAudioBalloonView *)self setWaveform:v15];

  [v8 duration];
  v17 = v16;

  [(CKAudioBalloonView *)self setDuration:v17];
  [(CKAudioBalloonView *)self setPlayed:1];
}

- (void)configureForComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKAudioBalloonView;
  v4 = a3;
  [(CKColoredBalloonView *)&v8 configureForComposition:v4];
  v5 = [v4 mediaObjects];

  v6 = [v5 lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAudioBalloonView *)self configureForMediaObject:v6 previewWidth:1 orientation:?];

  [(CKAudioBalloonView *)self setPlayed:0];
}

- (CKAudioBalloonView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = CKAudioBalloonView;
  v3 = [(CKColoredBalloonView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v14 = [(CKAudioBalloonView *)self progressView];
  [v14 frame];
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
  [v14 setFrame:{v20, v22, v16, v18}];
  v23 = [(CKAudioBalloonView *)self timeLabel];
  [v23 sizeThatFits:{v10, v12}];
  rect = v16;
  v25 = v24;

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MaxX = CGRectGetMaxX(v41);
  [v13 audioBalloonTimeInset];
  v28 = MaxX - (v25 + v27);
  v29 = [(CKAudioBalloonView *)self timeLabel];
  [v29 setFrame:{v28, v8, v25, v12}];

  v30 = [(CKAudioBalloonView *)self waveformProgressView];
  [v30 frame];
  [v30 sizeThatFits:{v39, v38}];
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

  [v30 setFrame:?];
  [v30 setClipsToBounds:v28 - v36 - (v33 + 6.0) != v32];
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v7 = [(CKAudioBalloonView *)self layer];
  v5 = [(CKAudioBalloonView *)self timeLabel];
  v6 = [v5 layer];
  [v7 insertSublayer:v4 below:v6];
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

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
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
  v19 = [(CKAudioBalloonView *)self progressView];
  [v19 sizeThatFits:{v16, v18}];
  v21 = v20;

  v22 = [(CKAudioBalloonView *)self waveformProgressView];
  [v22 sizeThatFits:{v16, v18}];
  v24 = v23;
  v57 = v25;

  v26 = [(CKAudioBalloonView *)self timeLabel];
  [v26 sizeThatFits:{v16, v18}];
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
    v42 = [v10 waveformPowerLevelWidthIncrement];
    v37 = v55 + v42 - (v56 + (v55 % v42));
  }

  if (![v10 isAccessibilityPreferredContentSizeCategory])
  {
    [(CKColoredBalloonView *)self balloonDescriptor];
    [v10 balloonMaskSizeWithBalloonDescriptor:v62];
    v43 = v44;
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v43 = fmax(v30, v57 + 25.0);
  if (a4)
  {
LABEL_7:
    a4->top = v61;
    a4->left = v60;
    a4->bottom = v59;
    a4->right = v58;
  }

LABEL_8:
  v45 = v38 - v37;
  if (a5)
  {
    [(CKBalloonView *)self tailInsetsForViewSize:width, height];
    a5->top = v46;
    a5->left = v47;
    a5->bottom = v48;
    a5->right = v49;
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
  v3 = [(CKBalloonView *)self color];
  v4 = [(CKAudioBalloonView *)self timeLabel];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 balloonTextColorForColorType:v3];
  [v4 setTextColor:v7];

  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 audioBalloonTimeFont];
  [v4 setFont:v9];

  v10 = [(CKAudioBalloonView *)self progressView];
  [v10 setColor:{-[CKBalloonView color](self, "color")}];

  v11 = [(CKAudioBalloonView *)self waveformProgressView];
  [v11 setColor:{-[CKBalloonView color](self, "color")}];

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
  v3 = [(CKAudioBalloonView *)self nonVibrantSubViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)setTime:(double)a3
{
  if (self->_time != a3)
  {
    self->_time = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    v5 = [(CKAudioBalloonView *)self waveformProgressView];
    [v5 setDuration:a3];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setWaveform:(id)a3
{
  v4 = a3;
  v5 = [(CKAudioBalloonView *)self waveformProgressView];
  [v5 setWaveform:v4];
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    v4 = a3;
    self->_playing = a3;
    v6 = [(CKAudioBalloonView *)self waveformProgressView];
    [v6 setPlaying:v4];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlayed:(BOOL)a3
{
  if (self->_played != a3)
  {
    v4 = a3;
    self->_played = a3;
    v6 = [(CKAudioBalloonView *)self waveformProgressView];
    [v6 setPlayed:v4];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setControlHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKAudioBalloonView *)self progressView];
  [v4 setHidden:v3];
}

- (BOOL)isControlHidden
{
  v2 = [(CKAudioBalloonView *)self progressView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setWaveformContentMode:(int64_t)a3
{
  v4 = [(CKAudioBalloonView *)self waveformProgressView];
  [v4 setContentMode:a3];
}

- (int64_t)waveformContentMode
{
  v2 = [(CKAudioBalloonView *)self waveformProgressView];
  v3 = [v2 contentMode];

  return v3;
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

  v6 = [(CKAudioBalloonView *)self timeLabel];
  v7 = CKLocalizedStringForDuration(v4);
  [v6 setText:v7];

  [(CKAudioBalloonView *)self setNeedsLayout];
}

- (void)updateProgress
{
  v9 = [(CKAudioBalloonView *)self progressView];
  [(CKAudioBalloonView *)self time];
  v4 = v3;
  [(CKAudioBalloonView *)self duration];
  [CKAudioProgressView progressForTime:v4 duration:v5];
  [v9 setProgress:?];
  v6 = [(CKAudioBalloonView *)self isPlaying];
  if ([(CKAudioBalloonView *)self isPlayed])
  {
    v7 = [(CKBalloonView *)self orientation]== 0;
  }

  else
  {
    v7 = 0;
  }

  [v9 setPlayed:v7];
  [v9 setPlaying:v6];
  [v9 prepareForDisplayIfNeeded];
  v8 = [(CKAudioBalloonView *)self waveformProgressView];
  [v8 setCurrentTime:v4];
  [v8 prepareForDisplayIfNeeded];
}

- (id)nonVibrantSubViews
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [(CKAudioBalloonView *)self timeLabel];
  v4 = [(CKAudioBalloonView *)self progressView];
  v8[1] = v4;
  v5 = [(CKAudioBalloonView *)self waveformProgressView];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setUserInteractionEnabled:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)waveformProgressViewPanning:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
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
  v12 = [(CKBalloonView *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CKBalloonView *)self delegate];
    [v14 audioBalloonScrubberDidChangeValue:v11];
  }
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKAudioBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:v4];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 previewMaxWidth];
  v7 = v6;

  v8 = [v4 mediaObject];
  -[CKAudioBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", v8, [v4 balloonOrientation], v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CKAudioBalloonView setPlayed:](self, "setPlayed:", [v4 isPlayed]);
  }
}

@end