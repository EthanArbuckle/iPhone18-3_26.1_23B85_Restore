@interface CAMElapsedTimeView
+ (id)elapsedTimeFormatter;
- (CAMElapsedTimeView)initWithFrame:(CGRect)a3;
- (CAMElapsedTimeView)initWithLayoutStyle:(int64_t)a3;
- (CAMElapsedTimeViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (void)_commonCAMElapsedTimeViewInitializationWithLayoutStyle:(int64_t)a3;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_setStartTime:(id)a3;
- (void)_startPausedAnimation;
- (void)_stopPausedAnimation;
- (void)_updateBackgroundViewAnimated:(BOOL)a3;
- (void)_updateFont;
- (void)_updateText;
- (void)dealloc;
- (void)endTimer;
- (void)layoutSubviews;
- (void)resetTimer;
- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setTimerPaused:(BOOL)a3;
- (void)startTimer;
@end

@implementation CAMElapsedTimeView

+ (id)elapsedTimeFormatter
{
  if (elapsedTimeFormatter_onceToken != -1)
  {
    +[CAMElapsedTimeView elapsedTimeFormatter];
  }

  v3 = elapsedTimeFormatter_formatter;

  return v3;
}

uint64_t __42__CAMElapsedTimeView_elapsedTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = elapsedTimeFormatter_formatter;
  elapsedTimeFormatter_formatter = v0;

  [elapsedTimeFormatter_formatter setUnitsStyle:0];
  [elapsedTimeFormatter_formatter setZeroFormattingBehavior:0x10000];
  v2 = elapsedTimeFormatter_formatter;

  return [v2 setAllowedUnits:224];
}

- (void)_commonCAMElapsedTimeViewInitializationWithLayoutStyle:(int64_t)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  self->_layoutStyle = a3;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  timeLabel = self->__timeLabel;
  self->__timeLabel = v5;

  v7 = self->__timeLabel;
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v7 setTextColor:v8];

  [(UILabel *)self->__timeLabel setTextAlignment:1];
  v9 = self->__timeLabel;
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v9 setBackgroundColor:v10];

  [(CAMElapsedTimeView *)self _updateFont];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  backgroundView = self->__backgroundView;
  self->__backgroundView = v11;

  v13 = [(UIView *)self->__backgroundView layer];
  [v13 setCornerRadius:5.0];

  v14 = *MEMORY[0x1E69796E8];
  v15 = [(UIView *)self->__backgroundView layer];
  [v15 setCornerCurve:v14];

  [(CAMElapsedTimeView *)self _updateBackgroundViewAnimated:0];
  [(CAMElapsedTimeView *)self addSubview:self->__backgroundView];
  [(CAMElapsedTimeView *)self addSubview:self->__timeLabel];
  [(CAMElapsedTimeView *)self _updateText];
  v18[0] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = [(CAMElapsedTimeView *)self registerForTraitChanges:v16 withAction:sel__preferredContentSizeCategoryDidChange];
}

- (CAMElapsedTimeView)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  return [(CAMElapsedTimeView *)self initWithLayoutStyle:v5];
}

- (CAMElapsedTimeView)initWithLayoutStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMElapsedTimeView;
  v4 = [(CAMElapsedTimeView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMElapsedTimeView *)v4 _commonCAMElapsedTimeViewInitializationWithLayoutStyle:a3];
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->__updateTimer invalidate];
  updateTimer = self->__updateTimer;
  self->__updateTimer = 0;

  v4.receiver = self;
  v4.super_class = CAMElapsedTimeView;
  [(CAMElapsedTimeView *)&v4 dealloc];
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMElapsedTimeView *)self _updateFont];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->__timeLabel intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  [MEMORY[0x1E6993830] _defaultTextInsets];
  UICeilToViewScale();
  v7 = v3 + v6;
  UICeilToViewScale();
  v9 = v5 + v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CAMElapsedTimeView;
  [(CAMElapsedTimeView *)&v13 layoutSubviews];
  [(CAMElapsedTimeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMElapsedTimeView *)self _timeLabel];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CAMElapsedTimeView *)self _backgroundView];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)_updateFont
{
  v3 = [(CAMElapsedTimeView *)self traitCollection];
  v5 = [v3 preferredContentSizeCategory];

  v4 = [CAMFont cameraTimerFontForContentSize:v5 layoutStyle:[(CAMElapsedTimeView *)self layoutStyle]];
  [(UILabel *)self->__timeLabel setFont:v4];
}

- (void)_preferredContentSizeCategoryDidChange
{
  [(CAMElapsedTimeView *)self _updateFont];
  [(CAMElapsedTimeView *)self invalidateIntrinsicContentSize];

  [(CAMElapsedTimeView *)self setNeedsLayout];
}

- (void)_updateText
{
  [(NSDate *)self->_startTime timeIntervalSinceNow];
  v4 = 0.0 - v3;
  v5 = [objc_opt_class() elapsedTimeFormatter];
  v9 = [v5 stringFromTimeInterval:v4];

  v6 = [(UILabel *)self->__timeLabel text];
  v7 = [v6 isEqualToString:v9];

  if ((v7 & 1) == 0)
  {
    [(UILabel *)self->__timeLabel setText:v9];
    v8 = [(CAMElapsedTimeView *)self delegate];
    [v8 elapasedTimeViewTextChanged:self];
  }
}

- (void)startTimer
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v16 = v3;
  if (self->_startTime)
  {
    if (self->_pausedTime)
    {
      v4 = [MEMORY[0x1E695DF00] now];
      v5 = [(CAMElapsedTimeView *)self pausedTime];
      [v4 timeIntervalSinceDate:v5];
      v7 = v6;

      v8 = [(CAMElapsedTimeView *)self startTime];
      v9 = [v8 dateByAddingTimeInterval:v7];
      [(CAMElapsedTimeView *)self _setStartTime:v9];

      pausedTime = self->_pausedTime;
      self->_pausedTime = 0;

      [(CAMElapsedTimeView *)self _stopPausedAnimation];
    }
  }

  else
  {
    [(CAMElapsedTimeView *)self _setStartTime:v3];
  }

  [(NSTimer *)self->__updateTimer invalidate];
  updateTimer = self->__updateTimer;
  self->__updateTimer = 0;

  v12 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:v16 interval:self target:sel__updateForTimer_ selector:0 userInfo:1 repeats:0.2];
  v13 = self->__updateTimer;
  self->__updateTimer = v12;

  v14 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v14 addTimer:self->__updateTimer forMode:*MEMORY[0x1E695D918]];

  v15 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v15 addTimer:self->__updateTimer forMode:*MEMORY[0x1E69DE760]];
}

- (void)_setStartTime:(id)a3
{
  objc_storeStrong(&self->_startTime, a3);

  [(CAMElapsedTimeView *)self _updateText];
}

- (void)endTimer
{
  [(NSTimer *)self->__updateTimer invalidate];
  updateTimer = self->__updateTimer;
  self->__updateTimer = 0;

  [(CAMElapsedTimeView *)self _setStartTime:0];
  pausedTime = self->_pausedTime;
  self->_pausedTime = 0;

  [(CAMElapsedTimeView *)self _stopPausedAnimation];
}

- (void)resetTimer
{
  [(CAMElapsedTimeView *)self endTimer];
  [(CAMElapsedTimeView *)self _updateText];

  [(CAMElapsedTimeView *)self startTimer];
}

- (void)setTimerPaused:(BOOL)a3
{
  v3 = a3;
  if ([(CAMElapsedTimeView *)self isTimerPaused]!= a3)
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E695DF00] now];
      pausedTime = self->_pausedTime;
      self->_pausedTime = v5;

      [(CAMElapsedTimeView *)self _updateText];
      [(NSTimer *)self->__updateTimer invalidate];
      updateTimer = self->__updateTimer;
      self->__updateTimer = 0;

      [(CAMElapsedTimeView *)self _startPausedAnimation];
    }

    else
    {

      [(CAMElapsedTimeView *)self startTimer];
    }
  }
}

- (void)_startPausedAnimation
{
  v2 = [(CAMElapsedTimeView *)self _backgroundView];
  v6 = [v2 layer];

  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v3 setFromValue:&unk_1F16C8AC8];
  [v3 setToValue:&unk_1F16C8AD8];
  [v3 setDuration:1.0];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v3 setTimingFunction:v4];

  [v3 setAutoreverses:1];
  LODWORD(v5) = 2139095040;
  [v3 setRepeatCount:v5];
  [v6 addAnimation:v3 forKey:@"opacity"];
}

- (void)_stopPausedAnimation
{
  v2 = [(CAMElapsedTimeView *)self _backgroundView];
  v11 = [v2 layer];

  v3 = [v11 animationForKey:@"opacity"];

  if (v3)
  {
    v4 = [v11 presentationLayer];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v11;
    }

    v6 = v5;

    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v8 = MEMORY[0x1E696AD98];
    [v6 opacity];
    v9 = [v8 numberWithFloat:?];
    [v7 setFromValue:v9];

    [v7 setToValue:&unk_1F16C8AC8];
    [v7 setDuration:0.4];
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v7 setTimingFunction:v10];

    [v11 removeAnimationForKey:@"opacity"];
    [v11 addAnimation:v7 forKey:@"opacity"];
  }
}

- (void)setBackgroundStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    [(CAMElapsedTimeView *)self _updateBackgroundViewAnimated:a4];
  }
}

- (void)_updateBackgroundViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMElapsedTimeView *)self backgroundStyle];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
    }

    else if (v5 == 3)
    {
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v6 = CAMRedColor();
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
  }

  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __52__CAMElapsedTimeView__updateBackgroundViewAnimated___block_invoke;
  v9[3] = &unk_1E76F7960;
  if (v3)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = 0.0;
  }

  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [CAMView animateIfNeededWithDuration:0 usingSpringWithDamping:v9 initialSpringVelocity:0 options:v7 animations:1.0 completion:0.0];
}

void __52__CAMElapsedTimeView__updateBackgroundViewAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _backgroundView];
  [v2 setBackgroundColor:v1];
}

- (CAMElapsedTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end