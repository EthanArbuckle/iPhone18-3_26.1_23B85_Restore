@interface HUIStepSlider
- (HUIStepSlider)initWithFrame:(CGRect)frame;
- (id)_copyConfig:(id)config withNumberOfTicks:(int64_t)ticks;
- (unint64_t)numberOfTicks;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setDrawsEndTicks:(BOOL)ticks;
- (void)setRestrictsValuesToTicks:(BOOL)ticks;
- (void)setSegmentCount:(unint64_t)count;
@end

@implementation HUIStepSlider

- (HUIStepSlider)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUIStepSlider;
  v3 = [(HUIStepSlider *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75A38] configurationWithNumberOfTicks:0];
    [(HUIStepSlider *)v3 setTrackConfiguration:v4];
    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    [(HUIStepSlider *)v3 setTickColor:systemLightGrayColor];

    [(HUIStepSlider *)v3 setRestrictsValuesToTicks:1];
    [(HUIStepSlider *)v3 setSupportsVibrancy:0];
    [(HUIStepSlider *)v3 setDrawsEndTicks:1];
  }

  return v3;
}

- (unint64_t)numberOfTicks
{
  segmentCount = self->_segmentCount;
  if (segmentCount)
  {
    v4 = (segmentCount + 1);
  }

  else
  {
    [(HUIStepSlider *)self maximumValue];
    v6 = v5;
    [(HUIStepSlider *)self minimumValue];
    v4 = (v6 - v7) + 1.0;
  }

  v8 = 2;
  if (self->_drawsEndTicks)
  {
    v8 = 0;
  }

  if (v8 >= v4)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)setSegmentCount:(unint64_t)count
{
  if (self->_segmentCount != count)
  {
    self->_segmentCount = count;
    trackConfiguration = [(HUIStepSlider *)self trackConfiguration];
    v6 = [(HUIStepSlider *)self _copyConfig:trackConfiguration withNumberOfTicks:[(HUIStepSlider *)self numberOfTicks]];

    [v6 setAllowsTickValuesOnly:{-[HUIStepSlider _shouldOnlyAllowTickValues](self, "_shouldOnlyAllowTickValues")}];
    [(HUIStepSlider *)self setTrackConfiguration:v6];
  }
}

- (void)setRestrictsValuesToTicks:(BOOL)ticks
{
  if (self->_restrictsValuesToTicks != ticks)
  {
    self->_restrictsValuesToTicks = ticks;
    trackConfiguration = [(HUIStepSlider *)self trackConfiguration];
    [trackConfiguration setAllowsTickValuesOnly:{-[HUIStepSlider _shouldOnlyAllowTickValues](self, "_shouldOnlyAllowTickValues")}];
    [(HUIStepSlider *)self setTrackConfiguration:trackConfiguration];
    if (!self->_restrictsValuesToTicks)
    {
      systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
      [(HUIStepSlider *)self setMinimumTrackTintColor:systemLightGrayColor];
      [(HUIStepSlider *)self setMaximumTrackTintColor:systemLightGrayColor];
    }
  }
}

- (void)setDrawsEndTicks:(BOOL)ticks
{
  if (self->_drawsEndTicks != ticks)
  {
    self->_drawsEndTicks = ticks;
    trackConfiguration = [(HUIStepSlider *)self trackConfiguration];
    v6 = [(HUIStepSlider *)self _copyConfig:trackConfiguration withNumberOfTicks:[(HUIStepSlider *)self numberOfTicks]];

    [(HUIStepSlider *)self setTrackConfiguration:v6];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUIStepSlider;
  [(HUIStepSlider *)&v3 layoutSubviews];
  if ([(HUIStepSlider *)self supportsVibrancy])
  {
    [(HUIStepSlider *)self _setOverrideVibrancyTrait:1];
  }
}

- (void)accessibilityIncrement
{
  if ([(HUIStepSlider *)self _shouldOnlyAllowTickValues])
  {
    segmentCount = self->_segmentCount;
    [(HUIStepSlider *)self value];
    v5 = ((segmentCount * v4) + 1) / segmentCount;
    *&v5 = v5;
    [(HUIStepSlider *)self setValue:1 animated:v5];

    [(HUIStepSlider *)self sendActionsForControlEvents:4096];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUIStepSlider;
    [(HUIStepSlider *)&v6 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  if ([(HUIStepSlider *)self _shouldOnlyAllowTickValues])
  {
    segmentCount = self->_segmentCount;
    [(HUIStepSlider *)self value];
    v5 = ((segmentCount * v4) - 1) / segmentCount;
    *&v5 = v5;
    [(HUIStepSlider *)self setValue:1 animated:v5];

    [(HUIStepSlider *)self sendActionsForControlEvents:4096];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUIStepSlider;
    [(HUIStepSlider *)&v6 accessibilityDecrement];
  }
}

- (id)_copyConfig:(id)config withNumberOfTicks:(int64_t)ticks
{
  v5 = MEMORY[0x277D75A38];
  configCopy = config;
  v7 = [v5 configurationWithNumberOfTicks:ticks];
  [v7 setAllowsTickValuesOnly:{objc_msgSend(configCopy, "allowsTickValuesOnly")}];
  [configCopy neutralValue];
  [v7 setNeutralValue:?];
  [configCopy minimumEnabledValue];
  [v7 setMinimumEnabledValue:?];
  [configCopy maximumEnabledValue];
  v9 = v8;

  LODWORD(v10) = v9;
  [v7 setMaximumEnabledValue:v10];
  return v7;
}

@end