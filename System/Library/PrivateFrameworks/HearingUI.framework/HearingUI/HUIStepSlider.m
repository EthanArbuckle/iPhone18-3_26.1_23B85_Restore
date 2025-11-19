@interface HUIStepSlider
- (HUIStepSlider)initWithFrame:(CGRect)a3;
- (id)_copyConfig:(id)a3 withNumberOfTicks:(int64_t)a4;
- (unint64_t)numberOfTicks;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
- (void)setDrawsEndTicks:(BOOL)a3;
- (void)setRestrictsValuesToTicks:(BOOL)a3;
- (void)setSegmentCount:(unint64_t)a3;
@end

@implementation HUIStepSlider

- (HUIStepSlider)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HUIStepSlider;
  v3 = [(HUIStepSlider *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75A38] configurationWithNumberOfTicks:0];
    [(HUIStepSlider *)v3 setTrackConfiguration:v4];
    v5 = [MEMORY[0x277D75348] systemLightGrayColor];
    [(HUIStepSlider *)v3 setTickColor:v5];

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

- (void)setSegmentCount:(unint64_t)a3
{
  if (self->_segmentCount != a3)
  {
    self->_segmentCount = a3;
    v5 = [(HUIStepSlider *)self trackConfiguration];
    v6 = [(HUIStepSlider *)self _copyConfig:v5 withNumberOfTicks:[(HUIStepSlider *)self numberOfTicks]];

    [v6 setAllowsTickValuesOnly:{-[HUIStepSlider _shouldOnlyAllowTickValues](self, "_shouldOnlyAllowTickValues")}];
    [(HUIStepSlider *)self setTrackConfiguration:v6];
  }
}

- (void)setRestrictsValuesToTicks:(BOOL)a3
{
  if (self->_restrictsValuesToTicks != a3)
  {
    self->_restrictsValuesToTicks = a3;
    v5 = [(HUIStepSlider *)self trackConfiguration];
    [v5 setAllowsTickValuesOnly:{-[HUIStepSlider _shouldOnlyAllowTickValues](self, "_shouldOnlyAllowTickValues")}];
    [(HUIStepSlider *)self setTrackConfiguration:v5];
    if (!self->_restrictsValuesToTicks)
    {
      v4 = [MEMORY[0x277D75348] systemLightGrayColor];
      [(HUIStepSlider *)self setMinimumTrackTintColor:v4];
      [(HUIStepSlider *)self setMaximumTrackTintColor:v4];
    }
  }
}

- (void)setDrawsEndTicks:(BOOL)a3
{
  if (self->_drawsEndTicks != a3)
  {
    self->_drawsEndTicks = a3;
    v5 = [(HUIStepSlider *)self trackConfiguration];
    v6 = [(HUIStepSlider *)self _copyConfig:v5 withNumberOfTicks:[(HUIStepSlider *)self numberOfTicks]];

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

- (id)_copyConfig:(id)a3 withNumberOfTicks:(int64_t)a4
{
  v5 = MEMORY[0x277D75A38];
  v6 = a3;
  v7 = [v5 configurationWithNumberOfTicks:a4];
  [v7 setAllowsTickValuesOnly:{objc_msgSend(v6, "allowsTickValuesOnly")}];
  [v6 neutralValue];
  [v7 setNeutralValue:?];
  [v6 minimumEnabledValue];
  [v7 setMinimumEnabledValue:?];
  [v6 maximumEnabledValue];
  v9 = v8;

  LODWORD(v10) = v9;
  [v7 setMaximumEnabledValue:v10];
  return v7;
}

@end