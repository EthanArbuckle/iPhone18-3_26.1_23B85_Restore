@interface CKWaveformProgressView
- (CKWaveformProgressView)initWithFrame:(CGRect)frame;
- (void)prepareForDisplay;
- (void)prepareForDisplayIfNeeded;
- (void)setColor:(char)color;
- (void)setCurrentTime:(double)time;
- (void)setImage:(id)image;
- (void)setNeedsPrepareForDisplay;
- (void)setPlayed:(BOOL)played;
- (void)setPlaying:(BOOL)playing;
- (void)setWaveform:(id)waveform;
@end

@implementation CKWaveformProgressView

- (CKWaveformProgressView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKWaveformProgressView;
  v3 = [(CKBalloonImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  displayUpdater = [(CKWaveformProgressView *)self displayUpdater];
  [displayUpdater updateIfNeeded];
}

- (void)setNeedsPrepareForDisplay
{
  displayUpdater = [(CKWaveformProgressView *)self displayUpdater];
  [displayUpdater setNeedsUpdate];
}

- (void)setWaveform:(id)waveform
{
  waveformCopy = waveform;
  if (self->_waveform != waveformCopy)
  {
    v6 = waveformCopy;
    objc_storeStrong(&self->_waveform, waveform);
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
    waveformCopy = v6;
  }
}

- (void)setCurrentTime:(double)time
{
  if (self->_currentTime != time)
  {
    self->_currentTime = time;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlayed:(BOOL)played
{
  if (self->_played != played)
  {
    self->_played = played;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setColor:(char)color
{
  if (self->_color != color)
  {
    self->_color = color;
    [(CKWaveformProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)prepareForDisplay
{
  color = [(CKWaveformProgressView *)self color];
  [(CKWaveformProgressView *)self duration];
  v5 = v4;
  [(CKWaveformProgressView *)self currentTime];
  v7 = v6;
  waveform = [(CKWaveformProgressView *)self waveform];
  [waveform size];
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
          waveform2 = [(CKWaveformProgressView *)self waveform];
          if (color == -1 && ![(CKWaveformProgressView *)self isPlayed])
          {
            v15 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v12}];
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __43__CKWaveformProgressView_prepareForDisplay__block_invoke;
            v35[3] = &unk_1E72F0EC8;
            v36 = waveform2;
            v37 = v11;
            v38 = v12;
            waveform2 = [v15 imageWithActions:v35];
          }

          [(CKWaveformProgressView *)self setImage:waveform2];
        }

        else
        {
          [CKAudioProgressView progressForTime:v7 duration:v5];
          v17 = v16;
          v18 = +[CKUIBehavior sharedBehaviors];
          waveformPowerLevelWidthIncrement = [v18 waveformPowerLevelWidthIncrement];

          v20 = +[CKUIBehavior sharedBehaviors];
          waveformPowerLevelWidth = [v20 waveformPowerLevelWidth];
          v22 = +[CKUIBehavior sharedBehaviors];
          waveformGapWidth = [v22 waveformGapWidth];

          if (CKMainScreenScale_once_47 != -1)
          {
            [CKWaveformProgressView prepareForDisplay];
          }

          v26 = 1.0;
          *v24.i64 = (1.0 - v17) * (v11 / waveformPowerLevelWidthIncrement);
          *v25.i64 = *v24.i64 - trunc(*v24.i64);
          v27.f64[0] = NAN;
          v27.f64[1] = NAN;
          *v24.i64 = *vbslq_s8(vnegq_f64(v27), v25, v24).i64 * waveformPowerLevelWidth + *v24.i64 * waveformPowerLevelWidthIncrement + waveformGapWidth;
          if (*&CKMainScreenScale_sMainScreenScale_47 != 0.0)
          {
            v26 = *&CKMainScreenScale_sMainScreenScale_47;
          }

          v28 = floor(*v24.i64 * v26) / v26;
          waveform2 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v12}];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __43__CKWaveformProgressView_prepareForDisplay__block_invoke_2;
          v30[3] = &unk_1E72F38B0;
          v32 = v11;
          v33 = v12;
          v34 = v28;
          v31 = waveform;
          v29 = [waveform2 imageWithActions:v30];
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

- (void)setImage:(id)image
{
  v9 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6.receiver = self;
    v6.super_class = CKWaveformProgressView;
    [(CKBalloonImageView *)&v6 setImage:imageCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = imageCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "CKWaveformProgressView: Attempting to setImage to object that is not an image - %@", buf, 0xCu);
      }
    }

    IMLogBacktrace();
  }
}

@end