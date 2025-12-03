@interface CLKUITimeLabel
+ (CLKUITimeLabel)labelWithOptions:(unint64_t)options forDevice:(id)device;
- (CGSize)intrinsicSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)styleTransitionCurrentSize;
- (CGSize)styleTransitionEndSize;
- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device;
- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device clockTimer:(id)timer;
- (NSString)text;
- (UIEdgeInsets)opticalInsets;
- (id)_newLabelManager;
- (id)viewForLastBaselineLayout;
- (void)_enumerateUnderlyingLabelsWithBlock:(id)block;
- (void)_fadeTransitionLabels;
- (void)_resizeIfNecessary;
- (void)_scaleTransitionLabels;
- (void)cleanupAfterStyleTransition;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareToTransitionToStyle:(id)style;
- (void)setBlinkingPaused:(BOOL)paused;
- (void)setForcedNumberSystem:(unint64_t)system;
- (void)setHidden:(BOOL)hidden;
- (void)setMaxWidth:(double)width;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPaused:(BOOL)paused;
- (void)setShowSeconds:(BOOL)seconds;
- (void)setShowsDesignator:(BOOL)designator;
- (void)setStringAttributes:(id)attributes;
- (void)setStyle:(id)style;
- (void)setStyleTransitionFraction:(double)fraction;
- (void)setTextColor:(id)color;
- (void)setThreeDigitFont:(id)font fourDigitFont:(id)digitFont designatorFont:(id)designatorFont;
- (void)setTimeOffset:(double)offset;
- (void)sizeToFit;
- (void)timeFormatterTextDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToTritiumOverrideDate:(id)date;
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
  view = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view setCenter:{v3, v5}];

  view2 = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [view2 setCenter:{v3, v5}];
}

+ (CLKUITimeLabel)labelWithOptions:(unint64_t)options forDevice:(id)device
{
  deviceCopy = device;
  v7 = [[self alloc] initWithTimeLabelOptions:options forDevice:deviceCopy];

  return v7;
}

- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device
{
  v6 = MEMORY[0x1E695B4E0];
  deviceCopy = device;
  sharedInstance = [v6 sharedInstance];
  v9 = [(CLKUITimeLabel *)self initWithTimeLabelOptions:options forDevice:deviceCopy clockTimer:sharedInstance];

  return v9;
}

- (CLKUITimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  timerCopy = timer;
  v19.receiver = self;
  v19.super_class = CLKUITimeLabel;
  v11 = [(CLKUITimeLabel *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v11)
  {
    device = deviceCopy;
    if (!deviceCopy)
    {
      mEMORY[0x1E695B530] = [MEMORY[0x1E695B530] sharedRenderingContext];
      device = [mEMORY[0x1E695B530] device];
    }

    objc_storeStrong(&v11->_device, device);
    if (!deviceCopy)
    {
    }

    v11->_options = options;
    v11->_showsDesignator = (options & 2) != 0;
    [(CLKUITimeLabel *)v11 setTimer:timerCopy];
    v13 = [objc_alloc(MEMORY[0x1E695B570]) initWithForcesLatinNumbers:0 clockTimer:timerCopy];
    timeFormatter = v11->_timeFormatter;
    v11->_timeFormatter = v13;

    [(CLKTimeFormatter *)v11->_timeFormatter addObserver:v11];
    [(CLKTimeFormatter *)v11->_timeFormatter setDelegate:v11];
    v11->_ignoresWindowPauseReason = (options & 0x1000) != 0;
    if ((options & 0x1000) == 0)
    {
      [(CLKTimeFormatter *)v11->_timeFormatter setPaused:1 forReason:@"PausedBecauseNotInWindow"];
    }

    _newLabelManager = [(CLKUITimeLabel *)v11 _newLabelManager];
    labelManager = v11->_labelManager;
    v11->_labelManager = _newLabelManager;

    [(_CLKUITimeLabelManager *)v11->_labelManager setAnimationsPaused:0];
    [(_CLKUITimeLabelManager *)v11->_labelManager updateTimeText];
    view = [(_CLKUITimeLabelManager *)v11->_labelManager view];
    [(CLKUITimeLabel *)v11 addSubview:view];

    v11->_showSeconds = 0;
    [(CLKTimeFormatter *)v11->_timeFormatter setShowSeconds:0];
    v11->_forcedNumberSystem = -1;
  }

  return v11;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(CLKUITimeLabel *)self isHidden]!= hidden)
  {
    v5.receiver = self;
    v5.super_class = CLKUITimeLabel;
    [(CLKUITimeLabel *)&v5 setHidden:hiddenCopy];
    [(CLKTimeFormatter *)self->_timeFormatter setPaused:[(CLKUITimeLabel *)self isHidden] forReason:@"PausedBecauseHidden"];
  }
}

- (void)setShowSeconds:(BOOL)seconds
{
  if (self->_showSeconds != seconds)
  {
    self->_showSeconds = seconds;
    [(CLKTimeFormatter *)self->_timeFormatter setShowSeconds:?];
    labelManager = self->_labelManager;
    showSeconds = self->_showSeconds;

    [(_CLKUITimeLabelManager *)labelManager setShowSeconds:showSeconds];
  }
}

- (void)setMaxWidth:(double)width
{
  [(_CLKUITimeLabelManager *)self->_labelManager setMaxWidth:?];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setMaxWidth:width];

  [(CLKUITimeLabel *)self _resizeIfNecessary];
}

- (void)setBlinkingPaused:(BOOL)paused
{
  pausedCopy = paused;
  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:?];
  fromLabelManager = self->_fromLabelManager;

  [(_CLKUITimeLabelManager *)fromLabelManager setAnimationsPaused:pausedCopy];
}

- (void)setShowsDesignator:(BOOL)designator
{
  if (self->_showsDesignator != designator)
  {
    designatorCopy = designator;
    self->_showsDesignator = designator;
    [(_CLKUITimeLabelManager *)self->_labelManager setShowsDesignator:?];
    fromLabelManager = self->_fromLabelManager;

    [(_CLKUITimeLabelManager *)fromLabelManager setShowsDesignator:designatorCopy];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  self->_paused = paused;
  [CLKTimeFormatter setPaused:"setPaused:forReason:" forReason:?];

  [(CLKUITimeLabel *)self setBlinkingPaused:pausedCopy];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  v7 = styleCopy;
  if (self->_styleTransitioning)
  {
    [(CLKUITimeLabel *)self _cancelAnimation];
    styleCopy = v7;
  }

  if (([styleCopy isEqual:self->_style] & 1) == 0)
  {
    v5 = [v7 copy];
    style = self->_style;
    self->_style = v5;

    [(_CLKUITimeLabelManager *)self->_labelManager setStyle:self->_style];
    [(CLKUITimeLabel *)self _resizeIfNecessary];
  }
}

- (void)setStringAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9 = objc_alloc_init(CLKUITimeLabelStyle);
  [(CLKUITimeLabelStyle *)v9 setStringAttributes:attributesCopy];

  style = self->_style;
  if (style)
  {
    threeDigitFont = [(CLKUITimeLabelStyle *)style threeDigitFont];
    [(CLKUITimeLabelStyle *)v9 setThreeDigitFont:threeDigitFont];

    fourDigitFont = [(CLKUITimeLabelStyle *)self->_style fourDigitFont];
    [(CLKUITimeLabelStyle *)v9 setFourDigitFont:fourDigitFont];

    designatorFont = [(CLKUITimeLabelStyle *)self->_style designatorFont];
    [(CLKUITimeLabelStyle *)v9 setDesignatorFont:designatorFont];
  }

  [(CLKUITimeLabel *)self setStyle:v9];
}

- (void)setThreeDigitFont:(id)font fourDigitFont:(id)digitFont designatorFont:(id)designatorFont
{
  designatorFontCopy = designatorFont;
  digitFontCopy = digitFont;
  fontCopy = font;
  v16 = objc_alloc_init(CLKUITimeLabelStyle);
  v11 = _FontWithCenteredColons(fontCopy, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setThreeDigitFont:v11];
  v12 = _FontWithCenteredColons(digitFontCopy, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setFourDigitFont:v12];
  v13 = _FontWithCenteredColons(designatorFontCopy, [(CLKTimeFormatter *)self->_timeFormatter forcedNumberSystem]);

  [(CLKUITimeLabelStyle *)v16 setDesignatorFont:v13];
  style = self->_style;
  if (style)
  {
    stringAttributes = [(CLKUITimeLabelStyle *)style stringAttributes];
    [(CLKUITimeLabelStyle *)v16 setStringAttributes:stringAttributes];
  }

  [(CLKUITimeLabel *)self setStyle:v16];
}

- (void)setForcedNumberSystem:(unint64_t)system
{
  self->_forcedNumberSystem = system;
  timeFormatter = [(CLKUITimeLabel *)self timeFormatter];
  [timeFormatter setForcedNumberSystem:system];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CLKUITimeLabel;
  changeCopy = change;
  [(CLKUITimeLabel *)&v5 traitCollectionDidChange:changeCopy];
  [(_CLKUITimeLabelManager *)self->_labelManager traitCollectionDidChange:changeCopy, v5.receiver, v5.super_class];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager traitCollectionDidChange:changeCopy];

  [(CLKUITimeLabel *)self _resizeIfNecessary];
}

- (void)prepareToTransitionToStyle:(id)style
{
  styleCopy = style;
  if (self->_styleTransitioning)
  {
    [(CLKUITimeLabel *)self cleanupAfterStyleTransition];
  }

  textColor = [(_CLKUITimeLabelManager *)self->_labelManager textColor];
  objc_storeStrong(&self->_fromStyle, self->_style);
  objc_storeStrong(&self->_fromLabelManager, self->_labelManager);
  style = self->_style;
  self->_style = styleCopy;
  v6 = styleCopy;

  _newLabelManager = [(CLKUITimeLabel *)self _newLabelManager];
  labelManager = self->_labelManager;
  self->_labelManager = _newLabelManager;

  [(_CLKUITimeLabelManager *)self->_labelManager setStyle:self->_style];
  [(_CLKUITimeLabelManager *)self->_labelManager setTextColor:textColor];
  [(_CLKUITimeLabelManager *)self->_labelManager updateTimeText];
  [(_CLKUITimeLabelManager *)self->_labelManager sizeViewToFit];
  view = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [(CLKUITimeLabel *)self addSubview:view];

  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:1];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setAnimationsPaused:1];
  effectiveFont = [(_CLKUITimeLabelManager *)self->_fromLabelManager effectiveFont];
  effectiveFont2 = [(_CLKUITimeLabelManager *)self->_labelManager effectiveFont];

  [effectiveFont pointSize];
  v13 = v12;
  [effectiveFont2 pointSize];
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

- (void)setStyleTransitionFraction:(double)fraction
{
  self->_styleTransitionFraction = fraction;
  [(CLKUITimeLabel *)self _scaleTransitionLabels];

  [(CLKUITimeLabel *)self _fadeTransitionLabels];
}

- (void)cleanupAfterStyleTransition
{
  view = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [view removeFromSuperview];

  fromLabelManager = self->_fromLabelManager;
  self->_fromLabelManager = 0;

  self->_styleTransitioning = 0;
  [(CLKUITimeLabel *)self _resizeIfNecessary];
  [(_CLKUITimeLabelManager *)self->_labelManager setAnimationsPaused:0];
  view2 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view2 setAlpha:1.0];

  view3 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v7;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [view3 setTransform:v8];

  if (!CGRectIsNull(self->_styleTransitionEndFrame))
  {
    [(CLKUITimeLabel *)self setFrame:self->_styleTransitionEndFrame.origin.x, self->_styleTransitionEndFrame.origin.y, self->_styleTransitionEndFrame.size.width, self->_styleTransitionEndFrame.size.height];
  }
}

- (CGSize)styleTransitionEndSize
{
  view = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view bounds];
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
  view = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_enumerateUnderlyingLabelsWithBlock:(id)block
{
  labelManager = self->_labelManager;
  blockCopy = block;
  [(_CLKUITimeLabelManager *)labelManager enumerateUnderlyingLabelsWithBlock:blockCopy];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager enumerateUnderlyingLabelsWithBlock:blockCopy];
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

- (CGSize)sizeThatFits:(CGSize)fits
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
    window = [(CLKUITimeLabel *)self window];
    [(CLKTimeFormatter *)self->_timeFormatter setPaused:window == 0 forReason:@"PausedBecauseNotInWindow"];
    if (!window)
    {
      [(CLKUITimeLabel *)self _cancelAnimation];
    }
  }
}

- (NSString)text
{
  effectiveAttributedText = [(_CLKUITimeLabelManager *)self->_labelManager effectiveAttributedText];
  string = [effectiveAttributedText string];

  return string;
}

- (void)setTextColor:(id)color
{
  labelManager = self->_labelManager;
  colorCopy = color;
  [(_CLKUITimeLabelManager *)labelManager setTextColor:colorCopy];
  [(_CLKUITimeLabelManager *)self->_fromLabelManager setTextColor:colorCopy];
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
  selfCopy = self;
  viewForLastBaselineLayout = [(_CLKUITimeLabelManager *)self->_labelManager viewForLastBaselineLayout];
  v4 = viewForLastBaselineLayout;
  if (viewForLastBaselineLayout)
  {
    selfCopy = viewForLastBaselineLayout;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (void)transitionToTritiumOverrideDate:(id)date
{
  [(CLKUITimeLabel *)self setOverrideDate:date duration:0.0];

  [(CLKUITimeLabel *)self setNeedsLayout];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  timeFormatter = [(CLKUITimeLabel *)self timeFormatter];
  [timeFormatter setOverrideDate:dateCopy];
}

- (void)setTimeOffset:(double)offset
{
  timeFormatter = [(CLKUITimeLabel *)self timeFormatter];
  [timeFormatter setTimeOffset:offset];
}

- (void)timeFormatterTextDidChange:(id)change
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
  view = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  view2 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  [view2 bounds];
  styleTransitionFraction = self->_styleTransitionFraction;
  v12 = (v9 / v6 + -1.0) * styleTransitionFraction + 1.0;
  v13 = (v10 / v8 + -1.0) * styleTransitionFraction + 1.0;
  v14 = v6 / v9 + (1.0 - v6 / v9) * styleTransitionFraction;
  v15 = v8 / v10 + (1.0 - v8 / v10) * styleTransitionFraction;
  CGAffineTransformMakeScale(&v19, v12, v13);
  [view setTransform:&v19];
  CGAffineTransformMakeScale(&v19, v14, v15);
  [view2 setTransform:&v19];
  v16 = MEMORY[0x1E691D7B0]([(CLKUITimeLabel *)self bounds]);
  v18 = v17;
  [view setCenter:?];
  [view2 setCenter:{v16, v18}];
}

- (void)_fadeTransitionLabels
{
  v3 = fmin(fmax((self->_styleTransitionFraction - self->_fadeStart) / (self->_fadeEnd - self->_fadeStart), 0.0), 1.0);
  view = [(_CLKUITimeLabelManager *)self->_fromLabelManager view];
  [view setAlpha:1.0 - v3];

  view2 = [(_CLKUITimeLabelManager *)self->_labelManager view];
  [view2 setAlpha:v3];
}

@end