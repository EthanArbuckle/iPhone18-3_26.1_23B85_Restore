@interface CKWaveformProgressView
- (CKWaveformProgressView)initWithFrame:(CGRect)a3;
- (void)prepareForDisplay;
- (void)prepareForDisplayIfNeeded;
- (void)setColor:(char)a3;
- (void)setCurrentTime:(double)a3;
- (void)setImage:(id)a3;
- (void)setNeedsPrepareForDisplay;
- (void)setPlayed:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setWaveform:(id)a3;
@end

@implementation CKWaveformProgressView

- (CKWaveformProgressView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKWaveformProgressView;
  v3 = [(CKBalloonImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKWaveformProgressView *)v3 setContentMode:4];
    v5 = [objc_alloc(MEMORY[0x1E69A60F8]) initWithTarget:v4 action:sel_prepareForDisplay];
    [(CKWaveformProgressView *)v4 setDisplayUpdater:v5];
  }

  return v4;
}

- (void)prepareForDisplayIfNeeded
{
  v2 = [(CKWaveformProgressView *)self displayUpdater];
  [v2 updateIfNeeded];
}

- (void)setNeedsPrepareForDisplay
{
  v2 = [(CKWaveformProgressView *)self displayUpdater];
  [v2 setNeedsUpdate];
}

- (void)setWaveform:(id)a3
{
  v5 = a3;
  if (self->_waveform != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_waveform, a3);
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
    v5 = v6;
  }
}

- (void)setCurrentTime:(double)a3
{
  if (self->_currentTime != a3)
  {
    self->_currentTime = a3;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlayed:(BOOL)a3
{
  if (self->_played != a3)
  {
    self->_played = a3;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setColor:(char)a3
{
  if (self->_color != a3)
  {
    self->_color = a3;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)prepareForDisplay
{
  v3 = [(CKWaveformProgressView *)self color];
  [(CKWaveformProgressView *)self duration];
  v5 = v4;
  [(CKWaveformProgressView *)self currentTime];
  v7 = v6;
  v8 = [(CKWaveformProgressView *)self waveform];
  [v8 size];
  if (v10 != 0.0)
  {
    v11 = v9;
    if (v9 != 0.0)
    {
      v12 = v10;
      if (v9 != *MEMORY[0x1E695F060] || v10 != *(MEMORY[0x1E695F060] + 8))
      {
        if (v7 == v5 || v7 == 0.0 && ![(CKWaveformProgressView *)self isPlaying])
        {
          v14 = [(CKWaveformProgressView *)self waveform];
          if (v3 == -1 && ![(CKWaveformProgressView *)self isPlayed])
          {
            v15 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v12}];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __43__CKWaveformProgressView_prepareForDisplay__block_invoke;
            v35[3] = &unk_1E72F0EC8;
            v36 = v14;
            v37 = v11;
            v38 = v12;
            v14 = [v15 imageWithActions:v35];
          }

          [(CKWaveformProgressView *)self setImage:v14];
        }

        else
        {
          [CKAudioProgressView progressForTime:v7 duration:v5];
          v17 = v16;
          v18 = +[CKUIBehavior sharedBehaviors];
          v19 = [v18 waveformPowerLevelWidthIncrement];

          v20 = +[CKUIBehavior sharedBehaviors];
          v21 = [v20 waveformPowerLevelWidth];
          v22 = +[CKUIBehavior sharedBehaviors];
          v23 = [v22 waveformGapWidth];

          if (CKMainScreenScale_once_47 != -1)
          {
            [CKWaveformProgressView prepareForDisplay];
          }

          v26 = 1.0;
          *v24.i64 = (1.0 - v17) * (v11 / v19);
          *v25.i64 = *v24.i64 - trunc(*v24.i64);
          v27.f64[0] = NAN;
          v27.f64[1] = NAN;
          *v24.i64 = *vbslq_s8(vnegq_f64(v27), v25, v24).i64 * v21 + *v24.i64 * v19 + v23;
          if (*&CKMainScreenScale_sMainScreenScale_47 != 0.0)
          {
            v26 = *&CKMainScreenScale_sMainScreenScale_47;
          }

          v28 = floor(*v24.i64 * v26) / v26;
          v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v12}];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __43__CKWaveformProgressView_prepareForDisplay__block_invoke_2;
          v30[3] = &unk_1E72F38B0;
          v32 = v11;
          v33 = v12;
          v34 = v28;
          v31 = v8;
          v29 = [v14 imageWithActions:v30];
          [(CKWaveformProgressView *)self setImage:v29];
        }
      }
    }
  }
}

void __43__CKWaveformProgressView_prepareForDisplay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 waveformUnplayedColor];
  [v4 set];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = 0;
  v8 = 0;

  UIRectFillUsingBlendMode(*&v7, kCGBlendModeSourceIn);
}

uint64_t __43__CKWaveformProgressView_prepareForDisplay__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 set];

  v8.size.height = *(a1 + 48);
  v8.size.width = *(a1 + 40) - *(a1 + 56);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  UIRectFill(v8);
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [*(a1 + 32) drawAtPoint:18 blendMode:*MEMORY[0x1E695EFF8] alpha:{v4, 1.0}];
  v5 = *(a1 + 32);

  return [v5 drawAtPoint:0 blendMode:v3 alpha:{v4, 0.33}];
}

- (void)setImage:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6.receiver = self;
    v6.super_class = CKWaveformProgressView;
    [(CKBalloonImageView *)&v6 setImage:v4];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v4;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKWaveformProgressView: Attempting to setImage to object that is not an image - %@", buf, 0xCu);
      }
    }

    IMLogBacktrace();
  }
}

@end