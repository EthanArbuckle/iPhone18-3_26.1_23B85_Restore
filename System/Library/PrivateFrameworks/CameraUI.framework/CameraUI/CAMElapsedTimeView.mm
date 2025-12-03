@interface CAMElapsedTimeView
+ (id)elapsedTimeFormatter;
- (CAMElapsedTimeView)initWithFrame:(CGRect)frame;
- (CAMElapsedTimeView)initWithLayoutStyle:(int64_t)style;
- (CAMElapsedTimeViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (void)_commonCAMElapsedTimeViewInitializationWithLayoutStyle:(int64_t)style;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_setStartTime:(id)time;
- (void)_startPausedAnimation;
- (void)_stopPausedAnimation;
- (void)_updateBackgroundViewAnimated:(BOOL)animated;
- (void)_updateFont;
- (void)_updateText;
- (void)dealloc;
- (void)endTimer;
- (void)layoutSubviews;
- (void)resetTimer;
- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated;
- (void)setLayoutStyle:(int64_t)style;
- (void)setTimerPaused:(BOOL)paused;
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

- (void)_commonCAMElapsedTimeViewInitializationWithLayoutStyle:(int64_t)style
{
  v18[1] = *MEMORY[0x1E69E9840];
  self->_layoutStyle = style;
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  timeLabel = self->__timeLabel;
  self->__timeLabel = v5;

  v7 = self->__timeLabel;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v7 setTextColor:whiteColor];

  [(UILabel *)self->__timeLabel setTextAlignment:1];
  v9 = self->__timeLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v9 setBackgroundColor:clearColor];

  [(CAMElapsedTimeView *)self _updateFont];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  backgroundView = self->__backgroundView;
  self->__backgroundView = v11;

  layer = [(UIView *)self->__backgroundView layer];
  [layer setCornerRadius:5.0];

  v14 = *MEMORY[0x1E69796E8];
  layer2 = [(UIView *)self->__backgroundView layer];
  [layer2 setCornerCurve:v14];

  [(CAMElapsedTimeView *)self _updateBackgroundViewAnimated:0];
  [(CAMElapsedTimeView *)self addSubview:self->__backgroundView];
  [(CAMElapsedTimeView *)self addSubview:self->__timeLabel];
  [(CAMElapsedTimeView *)self _updateText];
  v18[0] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = [(CAMElapsedTimeView *)self registerForTraitChanges:v16 withAction:sel__preferredContentSizeCategoryDidChange];
}

- (CAMElapsedTimeView)initWithFrame:(CGRect)frame
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  return [(CAMElapsedTimeView *)self initWithLayoutStyle:cam_initialLayoutStyle];
}

- (CAMElapsedTimeView)initWithLayoutStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = CAMElapsedTimeView;
  v4 = [(CAMElapsedTimeView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(CAMElapsedTimeView *)v4 _commonCAMElapsedTimeViewInitializationWithLayoutStyle:style];
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

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
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
  _timeLabel = [(CAMElapsedTimeView *)self _timeLabel];
  [_timeLabel setFrame:{v4, v6, v8, v10}];

  _backgroundView = [(CAMElapsedTimeView *)self _backgroundView];
  [_backgroundView setFrame:{v4, v6, v8, v10}];
}

- (void)_updateFont
{
  traitCollection = [(CAMElapsedTimeView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = [CAMFont cameraTimerFontForContentSize:preferredContentSizeCategory layoutStyle:[(CAMElapsedTimeView *)self layoutStyle]];
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
  elapsedTimeFormatter = [objc_opt_class() elapsedTimeFormatter];
  v9 = [elapsedTimeFormatter stringFromTimeInterval:v4];

  text = [(UILabel *)self->__timeLabel text];
  v7 = [text isEqualToString:v9];

  if ((v7 & 1) == 0)
  {
    [(UILabel *)self->__timeLabel setText:v9];
    delegate = [(CAMElapsedTimeView *)self delegate];
    [delegate elapasedTimeViewTextChanged:self];
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
      pausedTime = [(CAMElapsedTimeView *)self pausedTime];
      [v4 timeIntervalSinceDate:pausedTime];
      v7 = v6;

      startTime = [(CAMElapsedTimeView *)self startTime];
      v9 = [startTime dateByAddingTimeInterval:v7];
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

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:self->__updateTimer forMode:*MEMORY[0x1E695D918]];

  currentRunLoop2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop2 addTimer:self->__updateTimer forMode:*MEMORY[0x1E69DE760]];
}

- (void)_setStartTime:(id)time
{
  objc_storeStrong(&self->_startTime, time);

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

- (void)setTimerPaused:(BOOL)paused
{
  pausedCopy = paused;
  if ([(CAMElapsedTimeView *)self isTimerPaused]!= paused)
  {
    if (pausedCopy)
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
  _backgroundView = [(CAMElapsedTimeView *)self _backgroundView];
  layer = [_backgroundView layer];

  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v3 setFromValue:&unk_1F16C8AC8];
  [v3 setToValue:&unk_1F16C8AD8];
  [v3 setDuration:1.0];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v3 setTimingFunction:v4];

  [v3 setAutoreverses:1];
  LODWORD(v5) = 2139095040;
  [v3 setRepeatCount:v5];
  [layer addAnimation:v3 forKey:@"opacity"];
}

- (void)_stopPausedAnimation
{
  _backgroundView = [(CAMElapsedTimeView *)self _backgroundView];
  layer = [_backgroundView layer];

  v3 = [layer animationForKey:@"opacity"];

  if (v3)
  {
    presentationLayer = [layer presentationLayer];
    if (presentationLayer)
    {
      v5 = presentationLayer;
    }

    else
    {
      v5 = layer;
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

    [layer removeAnimationForKey:@"opacity"];
    [layer addAnimation:v7 forKey:@"opacity"];
  }
}

- (void)setBackgroundStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    [(CAMElapsedTimeView *)self _updateBackgroundViewAnimated:animated];
  }
}

- (void)_updateBackgroundViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  backgroundStyle = [(CAMElapsedTimeView *)self backgroundStyle];
  systemDarkGrayColor = 0;
  if (backgroundStyle > 1)
  {
    if (backgroundStyle == 2)
    {
      systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
    }

    else if (backgroundStyle == 3)
    {
      systemDarkGrayColor = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
    }
  }

  else if (backgroundStyle)
  {
    if (backgroundStyle == 1)
    {
      systemDarkGrayColor = CAMRedColor();
    }
  }

  else
  {
    systemDarkGrayColor = [MEMORY[0x1E69DC888] clearColor];
  }

  v9[1] = 3221225472;
  v9[0] = MEMORY[0x1E69E9820];
  v9[2] = __52__CAMElapsedTimeView__updateBackgroundViewAnimated___block_invoke;
  v9[3] = &unk_1E76F7960;
  if (animatedCopy)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = 0.0;
  }

  v9[4] = self;
  v10 = systemDarkGrayColor;
  v8 = systemDarkGrayColor;
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