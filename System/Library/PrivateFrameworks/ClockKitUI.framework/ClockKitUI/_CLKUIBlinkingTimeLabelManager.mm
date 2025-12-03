@interface _CLKUIBlinkingTimeLabelManager
- (CGSize)intrinsicSize;
- (CGSize)sizeThatFits;
- (UIEdgeInsets)opticalInsets;
- (_CLKUIBlinkingTimeLabelManager)initWithForDevice:(id)device timeFormatter:(id)formatter options:(unint64_t)options timer:(id)timer labelFactory:(id)factory;
- (void)_startBlinking;
- (void)_startOrStopBlinking;
- (void)_stopBlinking;
- (void)_updateBlinkerAlphaForSecondFraction:(double)fraction;
- (void)dealloc;
- (void)enumerateUnderlyingLabelsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)setMaxWidth:(double)width;
- (void)setShowSeconds:(BOOL)seconds;
- (void)setShowsDesignator:(BOOL)designator;
- (void)setStyle:(id)style;
- (void)setTextColor:(id)color;
- (void)sizeViewToFit;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTimeText;
@end

@implementation _CLKUIBlinkingTimeLabelManager

- (void)_startOrStopBlinking
{
  if (self->_animationsPaused || ![(CLKTimeFormatter *)self->_timeFormatter reportingLiveTime])
  {

    [(_CLKUIBlinkingTimeLabelManager *)self _stopBlinking];
  }

  else
  {

    [(_CLKUIBlinkingTimeLabelManager *)self _startBlinking];
  }
}

- (void)_stopBlinking
{
  if (self->_blinkTimerToken)
  {
    [(CLKClockTimer *)self->_blinkTimer stopUpdatesForToken:?];
    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = 0;

    if (self->_usesIsolatedBlinkerLabel)
    {
      [(UILabel *)self->_minutesBlinkerLabel setAlpha:1.0];
      secondsBlinkerLabel = self->_secondsBlinkerLabel;

      [(UILabel *)secondsBlinkerLabel setAlpha:1.0];
    }

    else
    {
      view = [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager view];
      [view setAlpha:1.0];
    }
  }
}

- (void)_startBlinking
{
  if (!self->_blinkTimerToken)
  {
    objc_initWeak(&location, self);
    blinkTimer = self->_blinkTimer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48___CLKUIBlinkingTimeLabelManager__startBlinking__block_invoke;
    v8[3] = &unk_1E87627D8;
    objc_copyWeak(&v9, &location);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48___CLKUIBlinkingTimeLabelManager__startBlinking__block_invoke_139;
    v6[3] = &unk_1E8762B48;
    objc_copyWeak(&v7, &location);
    v4 = [(CLKClockTimer *)blinkTimer startUpdatesWithUpdateFrequency:2 withHandler:v8 identificationLog:v6];
    blinkTimerToken = self->_blinkTimerToken;
    self->_blinkTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)updateTimeText
{
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager updateTimeText];
  if (self->_usesIsolatedBlinkerLabel)
  {
    minutesDesignatorAttributedText = [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager minutesDesignatorAttributedText];
    secondsDesignatorAttributedText = [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager secondsDesignatorAttributedText];
    [(UILabel *)self->_minutesBlinkerLabel setAttributedText:minutesDesignatorAttributedText];
    [(UILabel *)self->_secondsBlinkerLabel setAttributedText:secondsDesignatorAttributedText];
    [(UILabel *)self->_minutesBlinkerLabel sizeToFit];
    [(UILabel *)self->_secondsBlinkerLabel sizeToFit];
  }

  else
  {
    blinkerLabelManager = self->_blinkerLabelManager;

    [(_CLKUIBasicTimeLabelManager *)blinkerLabelManager updateTimeText];
  }
}

- (CGSize)sizeThatFits
{
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager sizeThatFits];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)sizeViewToFit
{
  [(_CLKUIBlinkingTimeLabelManager *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_CLKUIBlinkingTimeLabelManager *)self sizeThatFits];
  [(_CLKUIBlinkingTimeLabelManager *)self setBounds:v4, v6, v7, v8];

  [(_CLKUIBlinkingTimeLabelManager *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = _CLKUIBlinkingTimeLabelManager;
  [(_CLKUIBlinkingTimeLabelManager *)&v19 layoutSubviews];
  [(_CLKUIBlinkingTimeLabelManager *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager view];
  [view setFrame:{v4, v6, v8, v10}];

  if (self->_usesIsolatedBlinkerLabel)
  {
    [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager _boundingRectOfMinutesBlinker];
    [(UILabel *)self->_minutesBlinkerLabel setFrame:?];
    [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager _boundingRectOfSecondsBlinker];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    secondsBlinkerLabel = self->_secondsBlinkerLabel;
    MidX = CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    [(UILabel *)secondsBlinkerLabel setCenter:MidX, CGRectGetMidY(v21)];
  }

  else
  {
    view2 = [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager view];
    [view2 setFrame:{v4, v6, v8, v10}];
  }
}

- (_CLKUIBlinkingTimeLabelManager)initWithForDevice:(id)device timeFormatter:(id)formatter options:(unint64_t)options timer:(id)timer labelFactory:(id)factory
{
  deviceCopy = device;
  formatterCopy = formatter;
  timerCopy = timer;
  factoryCopy = factory;
  v29.receiver = self;
  v29.super_class = _CLKUIBlinkingTimeLabelManager;
  v16 = [(_CLKUIBlinkingTimeLabelManager *)&v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_timeFormatter, formatter);
    [(CLKTimeFormatter *)v17->_timeFormatter addObserver:v17];
    objc_storeStrong(&v17->_blinkTimer, timer);
    v18 = [[_CLKUIBasicTimeLabelManager alloc] _initForDevice:deviceCopy primary:1 withTimeFormatter:formatterCopy options:options labelFactory:factoryCopy];
    numbersLabelManager = v17->_numbersLabelManager;
    v17->_numbersLabelManager = v18;

    [(_CLKUIBasicTimeLabelManager *)v17->_numbersLabelManager setShowsBlinker:0];
    view = [(_CLKUIBasicTimeLabelManager *)v17->_numbersLabelManager view];
    [(_CLKUIBlinkingTimeLabelManager *)v17 addSubview:view];

    v17->_usesIsolatedBlinkerLabel = (options & 8) != 0;
    if ((options & 8) != 0)
    {
      v24 = factoryCopy[2](factoryCopy, 0);
      minutesBlinkerLabel = v17->_minutesBlinkerLabel;
      v17->_minutesBlinkerLabel = v24;

      v26 = factoryCopy[2](factoryCopy, 0);
      secondsBlinkerLabel = v17->_secondsBlinkerLabel;
      v17->_secondsBlinkerLabel = v26;

      [(_CLKUIBlinkingTimeLabelManager *)v17 addSubview:v17->_minutesBlinkerLabel];
      [(_CLKUIBlinkingTimeLabelManager *)v17 addSubview:v17->_secondsBlinkerLabel];
    }

    else
    {
      v21 = [[_CLKUIBasicTimeLabelManager alloc] _initForDevice:deviceCopy primary:0 withTimeFormatter:formatterCopy options:options labelFactory:factoryCopy];
      blinkerLabelManager = v17->_blinkerLabelManager;
      v17->_blinkerLabelManager = v21;

      [(_CLKUIBasicTimeLabelManager *)v17->_blinkerLabelManager setShowsNumbers:0];
      view2 = [(_CLKUIBasicTimeLabelManager *)v17->_blinkerLabelManager view];
      [(_CLKUIBlinkingTimeLabelManager *)v17 addSubview:view2];
    }

    [(_CLKUIBlinkingTimeLabelManager *)v17 _startOrStopBlinking];
  }

  return v17;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = _CLKUIBlinkingTimeLabelManager;
  [(_CLKUIBlinkingTimeLabelManager *)&v3 dealloc];
}

- (CGSize)intrinsicSize
{
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager intrinsicSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  numbersLabelManager = self->_numbersLabelManager;
  changeCopy = change;
  [(_CLKUIBasicTimeLabelManager *)numbersLabelManager traitCollectionDidChange:changeCopy];
  [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager traitCollectionDidChange:changeCopy];
}

- (UIEdgeInsets)opticalInsets
{
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager opticalInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setMaxWidth:(double)width
{
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager setMaxWidth:?];
  if (!self->_usesIsolatedBlinkerLabel)
  {
    blinkerLabelManager = self->_blinkerLabelManager;

    [(_CLKUIBasicTimeLabelManager *)blinkerLabelManager setMaxWidth:width];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager setStyle:?];
  if (!self->_usesIsolatedBlinkerLabel)
  {
    [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager setStyle:styleCopy];
  }

  [(_CLKUIBlinkingTimeLabelManager *)self updateTimeText];
}

- (void)setShowsDesignator:(BOOL)designator
{
  designatorCopy = designator;
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager setShowsDesignator:?];
  if (!self->_usesIsolatedBlinkerLabel)
  {
    blinkerLabelManager = self->_blinkerLabelManager;

    [(_CLKUIBasicTimeLabelManager *)blinkerLabelManager setShowsDesignator:designatorCopy];
  }
}

- (void)setShowSeconds:(BOOL)seconds
{
  secondsCopy = seconds;
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager setShowSeconds:?];
  if (!self->_usesIsolatedBlinkerLabel)
  {
    blinkerLabelManager = self->_blinkerLabelManager;

    [(_CLKUIBasicTimeLabelManager *)blinkerLabelManager setShowSeconds:secondsCopy];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager setTextColor:?];
  if (self->_usesIsolatedBlinkerLabel)
  {
    [(UILabel *)self->_minutesBlinkerLabel setTextColor:colorCopy];
    minutesBlinkerLabel = self->_minutesBlinkerLabel;
    minutesDesignatorAttributedText = [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager minutesDesignatorAttributedText];
    [(UILabel *)minutesBlinkerLabel setAttributedText:minutesDesignatorAttributedText];

    [(UILabel *)self->_secondsBlinkerLabel setTextColor:colorCopy];
    secondsBlinkerLabel = self->_secondsBlinkerLabel;
    secondsDesignatorAttributedText = [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager secondsDesignatorAttributedText];
    [(UILabel *)secondsBlinkerLabel setAttributedText:secondsDesignatorAttributedText];
  }

  else
  {
    [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager setTextColor:colorCopy];
  }
}

- (void)enumerateUnderlyingLabelsWithBlock:(id)block
{
  blockCopy = block;
  [(_CLKUIBasicTimeLabelManager *)self->_numbersLabelManager enumerateUnderlyingLabelsWithBlock:?];
  if (self->_usesIsolatedBlinkerLabel)
  {
    blockCopy[2](blockCopy, self->_minutesBlinkerLabel, 0);
    blockCopy[2](blockCopy, self->_secondsBlinkerLabel, 0);
  }

  else
  {
    [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager enumerateUnderlyingLabelsWithBlock:blockCopy];
  }
}

- (void)_updateBlinkerAlphaForSecondFraction:(double)fraction
{
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4;
  if (self->_usesIsolatedBlinkerLabel)
  {
    [(UILabel *)self->_minutesBlinkerLabel setAlpha:v4];
    secondsBlinkerLabel = self->_secondsBlinkerLabel;

    [(UILabel *)secondsBlinkerLabel setAlpha:v5];
  }

  else
  {
    view = [(_CLKUIBasicTimeLabelManager *)self->_blinkerLabelManager view];
    [view setAlpha:v5];
  }
}

@end