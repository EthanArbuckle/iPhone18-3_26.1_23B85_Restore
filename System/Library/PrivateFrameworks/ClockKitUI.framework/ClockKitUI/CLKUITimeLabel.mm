@interface CLKUITimeLabel
+ (CLKUITimeLabel)labelWithOptions:(unint64_t)a3 forDevice:(id)a4;
- (CGSize)intrinsicSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)styleTransitionCurrentSize;
- (CGSize)styleTransitionEndSize;
- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4;
- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 clockTimer:(id)a5;
- (NSString)text;
- (UIEdgeInsets)opticalInsets;
- (id)_newLabelManager;
- (id)viewForLastBaselineLayout;
- (void)_enumerateUnderlyingLabelsWithBlock:(id)a3;
- (void)_fadeTransitionLabels;
- (void)_resizeIfNecessary;
- (void)_scaleTransitionLabels;
- (void)cleanupAfterStyleTransition;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareToTransitionToStyle:(id)a3;
- (void)setBlinkingPaused:(BOOL)a3;
- (void)setForcedNumberSystem:(unint64_t)a3;
- (void)setHidden:(BOOL)a3;
- (void)setMaxWidth:(double)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setPaused:(BOOL)a3;
- (void)setShowSeconds:(BOOL)a3;
- (void)setShowsDesignator:(BOOL)a3;
- (void)setStringAttributes:(id)a3;
- (void)setStyle:(id)a3;
- (void)setStyleTransitionFraction:(double)a3;
- (void)setTextColor:(id)a3;
- (void)setThreeDigitFont:(id)a3 fourDigitFont:(id)a4 designatorFont:(id)a5;
- (void)setTimeOffset:(double)a3;
- (void)sizeToFit;
- (void)timeFormatterTextDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToTritiumOverrideDate:(id)a3;
@end

@implementation CLKUITimeLabel

- (void)_resizeIfNecessary
{
  [(CLKUITimeLabel *)self bounds];
  [(CLKUITimeLabel *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = v3;
  v6 = v5;
  if ((CLKSizeEqualsSize() & 1) == 0 && v4 >= 0.0 && v6 >= 0.0)
  {
    [(CLKUITimeLabel *)self setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, v6];
    didResizeHandler = self->_didResizeHandler;
    if (didResizeHandler)
    {
      v8 = *(didResizeHandler + 2);

      v8();
    }
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CLKUITimeLabel;
  [(CLKUITimeLabel *)&v8 layoutSubviews];
  [(_CLKUITimeLabelManager *)self->_labelManager sizeViewToFit];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager sizeViewToFit];
  v3 = MEMORY[0x1E691D7B0]([(CLKUITimeLabel *)self bounds]);
  v5 = v4;
  v6 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v6 setCenter:{v3, v5}];

  v7 = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [v7 setCenter:{v3, v5}];
}

+ (CLKUITimeLabel)labelWithOptions:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithTimeLabelOptions:a3 forDevice:v6];

  return v7;
}

- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4
{
  v6 = MEMORY[0x1E695B4E0];
  v7 = a4;
  v8 = [v6 sharedInstance];
  v9 = [(CLKUITimeLabel *)self initWithTimeLabelOptions:a3 forDevice:v7 clockTimer:v8];

  return v9;
}

- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 clockTimer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CLKUITimeLabel;
  v11 = [(CLKUITimeLabel *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v11)
  {
    v12 = v9;
    if (!v9)
    {
      v5 = [MEMORY[0x1E695B530] sharedRenderingContext];
      v12 = [v5 device];
    }

    objc_storeStrong(&v11->_device, v12);
    if (!v9)
    {
    }

    v11->_options = a3;
    v11->_showsDesignator = (a3 & 2) != 0;
    [(CLKUITimeLabel *)v11 setTimer:v10];
    v13 = [objc_alloc(MEMORY[0x1E695B570]) initWithForcesLatinNumbers:0 clockTimer:v10];
    timeFormatter = v11->_timeFormatter;
    v11->_timeFormatter = v13;

    [(CLKTimeFormatter *)v11->_timeFormatter addObserver:v11];
    [(CLKTimeFormatter *)v11->_timeFormatter setDelegate:v11];
    v11->_ignoresWindowPauseReason = (a3 & 0x1000) != 0;
    if ((a3 & 0x1000) == 0)
    {
      [(CLKTimeFormatter *)v11->_timeFormatter setPaused:1 forReason:@"PausedBecauseNotInWindow"];
    }

    v15 = [(CLKUITimeLabel *)v11 _newLabelManager];
    labelManager = v11->_labelManager;
    v11->_labelManager = v15;

    [(_CLKUITimeLabelManager *)v11->_labelManager setAnimationsPaused:0];
    [(_CLKUITimeLabelManager *)v11->_labelManager updateTimeText];
    v17 = [(_CLKUITimeLabelManager *)v11->_labelManager view];
    [(CLKUITimeLabel *)v11 addSubview:v17];

    v11->_showSeconds = 0;
    [(CLKTimeFormatter *)v11->_timeFormatter setShowSeconds:0];
    v11->_forcedNumberSystem = -1;
  }

  return v11;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(CLKUITimeLabel *)self isHidden]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CLKUITimeLabel;
    [(CLKUITimeLabel *)&v5 setHidden:v3];
    [(CLKTimeFormatter *)self->_timeFormatter setPaused:[(CLKUITimeLabel *)self isHidden] forReason:@"PausedBecauseHidden"];
  }
}

- (void)setShowSeconds:(BOOL)a3
{
  if (self->_showSeconds != a3)
  {
    self->_showSeconds = a3;
    [(CLKTimeFormatter *)self->_timeFormatter setShowSeconds:?];
    labelManager = self->_labelManager;
    showSeconds = self->_showSeconds;

    [(_CLKUITimeLabelManager *)labelManager setShowSeconds:showSeconds];
  }
}

- (void)setMaxWidth:(double)a3
{
  [(_CLKUITimeLabelManager *)self->_labelManager setMaxWidth:?];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setMaxWidth:a3];

  [(CLKUITimeLabel *)self _resizeIfNecessary];
}

- (void)setBlinkingPaused:(BOOL)a3
{
  v3 = a3;
  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:?];
  fromLabelManager = self->_fromLabelManager;

  [(_CLKUITimeLabelManager *)fromLabelManager setAnimationsPaused:v3];
}

- (void)setShowsDesignator:(BOOL)a3
{
  if (self->_showsDesignator != a3)
  {
    v4 = a3;
    self->_showsDesignator = a3;
    [(_CLKUITimeLabelManager *)self->_labelManager setShowsDesignator:?];
    fromLabelManager = self->_fromLabelManager;

    [(_CLKUITimeLabelManager *)fromLabelManager setShowsDesignator:v4];
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  self->_paused = a3;
  [CLKTimeFormatter setPaused:"setPaused:forReason:" forReason:?];

  [(CLKUITimeLabel *)self setBlinkingPaused:v3];
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_styleTransitioning)
  {
    [(CLKUITimeLabel *)self _cancelAnimation];
    v4 = v7;
  }

  if (([v4 isEqual:self->_style] & 1) == 0)
  {
    v5 = [v7 copy];
    style = self->_style;
    self->_style = v5;

    [(_CLKUITimeLabelManager *)self->_labelManager setStyle:self->_style];
    [(CLKUITimeLabel *)self _resizeIfNecessary];
  }
}

- (void)setStringAttributes:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(CLKUITimeLabelStyle);
  [(CLKUITimeLabelStyle *)v9 setStringAttributes:v4];

  style = self->_style;
  if (style)
  {
    v6 = [(CLKUITimeLabelStyle *)style threeDigitFont];
    [(CLKUITimeLabelStyle *)v9 setThreeDigitFont:v6];

    v7 = [(CLKUITimeLabelStyle *)self->_style fourDigitFont];
    [(CLKUITimeLabelStyle *)v9 setFourDigitFont:v7];

    v8 = [(CLKUITimeLabelStyle *)self->_style designatorFont];
    [(CLKUITimeLabelStyle *)v9 setDesignatorFont:v8];
  }

  [(CLKUITimeLabel *)self setStyle:v9];
}

- (void)setThreeDigitFont:(id)a3 fourDigitFont:(id)a4 designatorFont:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = objc_alloc_init(CLKUITimeLabelStyle);
  v11 = _FontWithCenteredColons(v10, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setThreeDigitFont:v11];
  v12 = _FontWithCenteredColons(v9, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setFourDigitFont:v12];
  v13 = _FontWithCenteredColons(v8, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setDesignatorFont:v13];
  style = self->_style;
  if (style)
  {
    v15 = [(CLKUITimeLabelStyle *)style stringAttributes];
    [(CLKUITimeLabelStyle *)v16 setStringAttributes:v15];
  }

  [(CLKUITimeLabel *)self setStyle:v16];
}

- (void)setForcedNumberSystem:(unint64_t)a3
{
  self->_forcedNumberSystem = a3;
  v4 = [(CLKUITimeLabel *)self timeFormatter];
  [v4 setForcedNumberSystem:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKUITimeLabel;
  v4 = a3;
  [(CLKUITimeLabel *)&v5 traitCollectionDidChange:v4];
  [(_CLKUITimeLabelManager *)self->_labelManager traitCollectionDidChange:v4, v5.receiver, v5.super_class];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager traitCollectionDidChange:v4];

  [(CLKUITimeLabel *)self _resizeIfNecessary];
}

- (void)prepareToTransitionToStyle:(id)a3
{
  v4 = a3;
  if (self->_styleTransitioning)
  {
    [(CLKUITimeLabel *)self cleanupAfterStyleTransition];
  }

  v19 = [(_CLKUITimeLabelManager *)self->_labelManager textColor];
  objc_storeStrong(&self->_fromStyle, self->_style);
  objc_storeStrong(&self->_fromLabelManager, self->_labelManager);
  style = self->_style;
  self->_style = v4;
  v6 = v4;

  v7 = [(CLKUITimeLabel *)self _newLabelManager];
  labelManager = self->_labelManager;
  self->_labelManager = v7;

  [(_CLKUITimeLabelManager *)self->_labelManager setStyle:self->_style];
  [(_CLKUITimeLabelManager *)self->_labelManager setTextColor:v19];
  [(_CLKUITimeLabelManager *)self->_labelManager updateTimeText];
  [(_CLKUITimeLabelManager *)self->_labelManager sizeViewToFit];
  v9 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [(CLKUITimeLabel *)self addSubview:v9];

  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:1];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setAnimationsPaused:1];
  v10 = [(_CLKUITimeLabelManager *)self->_fromLabelManager effectiveFont];
  v11 = [(_CLKUITimeLabelManager *)self->_labelManager effectiveFont];

  [v10 pointSize];
  v13 = v12;
  [v11 pointSize];
  v15 = &OBJC_IVAR___CLKUITimeLabel__fadeEnd;
  if (v13 >= v14)
  {
    v16 = &OBJC_IVAR___CLKUITimeLabel__fadeEnd;
  }

  else
  {
    v16 = &OBJC_IVAR___CLKUITimeLabel__fadeStart;
  }

  if (v13 >= v14)
  {
    v15 = &OBJC_IVAR___CLKUITimeLabel__fadeStart;
  }

  v17 = qword_1E4A0AA40[v13 < v14];
  *(&self->super.super.super.isa + *v16) = qword_1E4A0AA30[v13 < v14];
  *(&self->super.super.super.isa + *v15) = v17;
  v18 = *(MEMORY[0x1E695F050] + 16);
  self->_styleTransitionEndFrame.origin = *MEMORY[0x1E695F050];
  self->_styleTransitionEndFrame.size = v18;
  self->_styleTransitioning = 1;
  [(CLKUITimeLabel *)self setStyleTransitionFraction:0.0];
}

- (void)setStyleTransitionFraction:(double)a3
{
  self->_styleTransitionFraction = a3;
  [(CLKUITimeLabel *)self _scaleTransitionLabels];

  [(CLKUITimeLabel *)self _fadeTransitionLabels];
}

- (void)cleanupAfterStyleTransition
{
  v3 = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [v3 removeFromSuperview];

  fromLabelManager = self->_fromLabelManager;
  self->_fromLabelManager = 0;

  self->_styleTransitioning = 0;
  [(CLKUITimeLabel *)self _resizeIfNecessary];
  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:0];
  v5 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v5 setAlpha:1.0];

  v6 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v7;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v6 setTransform:v8];

  if (!CGRectIsNull(self->_styleTransitionEndFrame))
  {
    [(CLKUITimeLabel *)self setFrame:self->_styleTransitionEndFrame.origin.x, self->_styleTransitionEndFrame.origin.y, self->_styleTransitionEndFrame.size.width, self->_styleTransitionEndFrame.size.height];
  }
}

- (CGSize)styleTransitionEndSize
{
  v2 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)styleTransitionCurrentSize
{
  v2 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_enumerateUnderlyingLabelsWithBlock:(id)a3
{
  labelManager = self->_labelManager;
  v5 = a3;
  [(_CLKUITimeLabelManager *)labelManager enumerateUnderlyingLabelsWithBlock:v5];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager enumerateUnderlyingLabelsWithBlock:v5];
}

- (void)sizeToFit
{
  v3.receiver = self;
  v3.super_class = CLKUITimeLabel;
  [(CLKUITimeLabel *)&v3 sizeToFit];
  [(CLKUITimeLabel *)self layoutIfNeeded];
}

- (CGSize)intrinsicSize
{
  if (self->_styleTransitioning)
  {
    v2 = &OBJC_IVAR___CLKUITimeLabel__fromLabelManager;
  }

  else
  {
    v2 = &OBJC_IVAR___CLKUITimeLabel__labelManager;
  }

  [*(&self->super.super.super.isa + *v2) intrinsicSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_styleTransitioning)
  {
    v3 = &OBJC_IVAR___CLKUITimeLabel__fromLabelManager;
  }

  else
  {
    v3 = &OBJC_IVAR___CLKUITimeLabel__labelManager;
  }

  [*(&self->super.super.super.isa + *v3) sizeThatFits];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CLKUITimeLabel;
  [(CLKUITimeLabel *)&v4 didMoveToWindow];
  if (!self->_ignoresWindowPauseReason)
  {
    v3 = [(CLKUITimeLabel *)self window];
    [(CLKTimeFormatter *)self->_timeFormatter setPaused:v3 == 0 forReason:@"PausedBecauseNotInWindow"];
    if (!v3)
    {
      [(CLKUITimeLabel *)self _cancelAnimation];
    }
  }
}

- (NSString)text
{
  v2 = [(_CLKUITimeLabelManager *)self->_labelManager effectiveAttributedText];
  v3 = [v2 string];

  return v3;
}

- (void)setTextColor:(id)a3
{
  labelManager = self->_labelManager;
  v5 = a3;
  [(_CLKUITimeLabelManager *)labelManager setTextColor:v5];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setTextColor:v5];
}

- (UIEdgeInsets)opticalInsets
{
  [(_CLKUITimeLabelManager *)self->_labelManager opticalInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)viewForLastBaselineLayout
{
  v2 = self;
  v3 = [(_CLKUITimeLabelManager *)self->_labelManager viewForLastBaselineLayout];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (void)transitionToTritiumOverrideDate:(id)a3
{
  [(CLKUITimeLabel *)self setOverrideDate:a3 duration:0.0];

  [(CLKUITimeLabel *)self setNeedsLayout];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v5 = a3;
  v6 = [(CLKUITimeLabel *)self timeFormatter];
  [v6 setOverrideDate:v5];
}

- (void)setTimeOffset:(double)a3
{
  v4 = [(CLKUITimeLabel *)self timeFormatter];
  [v4 setTimeOffset:a3];
}

- (void)timeFormatterTextDidChange:(id)a3
{
  [(_CLKUITimeLabelManager *)self->_labelManager updateTimeText];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager updateTimeText];

  [(CLKUITimeLabel *)self _resizeIfNecessary];
}

- (id)_newLabelManager
{
  [(CLKUITimeLabel *)self blinkingSeparatorEnabled];
  v3 = objc_alloc(objc_opt_class());
  device = self->_device;
  timeFormatter = self->_timeFormatter;
  options = self->_options;
  timer = self->_timer;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__CLKUITimeLabel__newLabelManager__block_invoke;
  v10[3] = &unk_1E8762B70;
  v10[4] = self;
  v8 = [v3 initWithForDevice:device timeFormatter:timeFormatter options:options timer:timer labelFactory:v10];
  [v8 setShowsDesignator:self->_showsDesignator];
  return v8;
}

id __34__CLKUITimeLabel__newLabelManager__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _newUnderlyingLabel:a2];

  return v2;
}

- (void)_scaleTransitionLabels
{
  v3 = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  v4 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  [v4 bounds];
  styleTransitionFraction = self->_styleTransitionFraction;
  v12 = (v9 / v6 + -1.0) * styleTransitionFraction + 1.0;
  v13 = (v10 / v8 + -1.0) * styleTransitionFraction + 1.0;
  v14 = v6 / v9 + (1.0 - v6 / v9) * styleTransitionFraction;
  v15 = v8 / v10 + (1.0 - v8 / v10) * styleTransitionFraction;
  CGAffineTransformMakeScale(&v19, v12, v13);
  [v3 setTransform:&v19];
  CGAffineTransformMakeScale(&v19, v14, v15);
  [v4 setTransform:&v19];
  v16 = MEMORY[0x1E691D7B0]([(CLKUITimeLabel *)self bounds]);
  v18 = v17;
  [v3 setCenter:?];
  [v4 setCenter:{v16, v18}];
}

- (void)_fadeTransitionLabels
{
  v3 = fmin(fmax((self->_styleTransitionFraction - self->_fadeStart) / (self->_fadeEnd - self->_fadeStart), 0.0), 1.0);
  v4 = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [v4 setAlpha:1.0 - v3];

  v5 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [v5 setAlpha:v3];
}

@end