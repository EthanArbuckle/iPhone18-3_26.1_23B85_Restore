@interface CEKApertureSlider
- (BOOL)isSliderOn;
- (CEKApertureSlider)initWithTickMarkStyle:(unint64_t)style;
- (double)apertureValue;
- (double)markedApertureValue;
- (double)maximumApertureValue;
- (double)minimumApertureValue;
- (id)valueText;
- (void)_updateIndexCount;
- (void)_updateMainTickMarkOffset;
- (void)setApertureValueClosestTo:(double)to animated:(BOOL)animated;
- (void)setIncludesOffState:(BOOL)state;
- (void)setMarkedApertureValueClosestTo:(double)to;
- (void)setMinimumApertureValueClosestTo:(double)to maximumApertureValueClosestTo:(double)closestTo;
- (void)setSliderOn:(BOOL)on;
@end

@implementation CEKApertureSlider

- (CEKApertureSlider)initWithTickMarkStyle:(unint64_t)style
{
  v16.receiver = self;
  v16.super_class = CEKApertureSlider;
  v3 = [(CEKDiscreteSlider *)&v16 initWithTickMarkStyle:style];
  if (v3)
  {
    v4 = +[CEKApertureStops validApertureValues];
    -[CEKDiscreteSlider setIndexCount:](v3, "setIndexCount:", [v4 count]);
    v3->__maximumApertureIndex = [v4 count] - 1;
    v3->__minimumApertureIndex = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    decimalFormatter = v3->__decimalFormatter;
    v3->__decimalFormatter = v5;

    [(NSNumberFormatter *)v3->__decimalFormatter setPositiveFormat:@"0.0"];
    v7 = [(NSNumberFormatter *)v3->__decimalFormatter stringFromNumber:&unk_1F2FDFB18];
    v8 = [v7 isEqualToString:{@"4, 5"}];

    if (v8)
    {
      [(NSNumberFormatter *)v3->__decimalFormatter setDecimalSeparator:@"."];
    }

    v9 = CEKLocalizedFrameworkString(@"DEPTH_SLIDER_VALUE_FORMAT", 0);
    v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, @"0.0"];
    [(NSNumberFormatter *)v3->__decimalFormatter setPositiveFormat:v10];

    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    wholeNumberFormatter = v3->__wholeNumberFormatter;
    v3->__wholeNumberFormatter = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, @"0"];
    [(NSNumberFormatter *)v3->__wholeNumberFormatter setPositiveFormat:v13];

    v14 = CEKLocalizedFrameworkString(@"DEPTH_SLIDER_TITLE", 0);
    [(CEKDiscreteSlider *)v3 setTitleText:v14];

    [(CEKApertureSlider *)v3 _updateMainTickMarkOffset];
    [(CEKDiscreteSlider *)v3 updateValueLabel];
  }

  return v3;
}

- (id)valueText
{
  [(CEKApertureSlider *)self apertureValue];
  v4 = v3;
  if (v3 >= 10.0)
  {
    [(CEKApertureSlider *)self _wholeNumberFormatter];
  }

  else
  {
    [(CEKApertureSlider *)self _decimalFormatter];
  }
  v5 = ;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v7 = [v5 stringFromNumber:v6];

  includesOffState = [(CEKApertureSlider *)self includesOffState];
  if (v4 == 0.0 && includesOffState)
  {
    v9 = CEKLocalizedFrameworkString(@"DEPTH_SLIDER_OFF", 0);

    v7 = v9;
  }

  return v7;
}

- (void)_updateMainTickMarkOffset
{
  _minimumApertureIndex = [(CEKApertureSlider *)self _minimumApertureIndex];
  v4 = _minimumApertureIndex - [CEKApertureStops firstFullStopIndexAfterOrIncludingIndex:_minimumApertureIndex];
  tickMarksConfiguration = [(CEKDiscreteSlider *)self tickMarksConfiguration];
  [tickMarksConfiguration setMainTickMarkOffset:v4];
}

- (void)_updateIndexCount
{
  [(CEKApertureSlider *)self minimumApertureValue];
  v3 = [CEKApertureStops indexOfClosestValidValueForAperture:?];
  [(CEKApertureSlider *)self maximumApertureValue];
  v4 = [CEKApertureStops indexOfClosestValidValueForAperture:?]- v3;
  includesOffState = [(CEKApertureSlider *)self includesOffState];
  v6 = 1;
  if (includesOffState)
  {
    v6 = 2;
  }

  [(CEKDiscreteSlider *)self setIndexCount:v4 + v6];
}

- (void)setApertureValueClosestTo:(double)to animated:(BOOL)animated
{
  v6 = [(CEKApertureSlider *)self _discreteIndexForValidApertureIndex:CEKClamp([CEKApertureStops indexOfClosestValidValueForAperture:to], [(CEKApertureSlider *)self _minimumApertureIndex], [(CEKApertureSlider *)self _maximumApertureIndex])];
  if (animated)
  {
    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [(CEKDiscreteSlider *)self setSelectedIndex:v6 animatedDuration:v7 animatedCurve:0 completion:0.25];
  }

  else
  {

    [(CEKDiscreteSlider *)self setSelectedIndex:v6];
  }
}

- (void)setMinimumApertureValueClosestTo:(double)to maximumApertureValueClosestTo:(double)closestTo
{
  [(CEKApertureSlider *)self minimumApertureValue];
  v8 = v7;
  [(CEKApertureSlider *)self maximumApertureValue];
  if (v8 != to || v9 != closestTo)
  {
    [(CEKApertureSlider *)self apertureValue];
    v12 = v11;
    [(CEKApertureSlider *)self markedApertureValue];
    v14 = v13;
    v15 = [CEKApertureStops indexOfClosestValidValueForAperture:to];
    v16 = [CEKApertureStops indexOfClosestValidValueForAperture:closestTo];
    self->__minimumApertureIndex = v15;
    self->__maximumApertureIndex = v16;
    [(CEKApertureSlider *)self _updateIndexCount];
    [(CEKApertureSlider *)self setApertureValueClosestTo:v12];
    [(CEKApertureSlider *)self setMarkedApertureValueClosestTo:v14];
    [(CEKApertureSlider *)self _updateMainTickMarkOffset];
    [(CEKDiscreteSlider *)self updateValueLabel];

    [(CEKApertureSlider *)self setNeedsLayout];
  }
}

- (double)minimumApertureValue
{
  v3 = +[CEKApertureStops validApertureValues];
  v4 = [v3 objectAtIndexedSubscript:{-[CEKApertureSlider _minimumApertureIndex](self, "_minimumApertureIndex")}];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maximumApertureValue
{
  v3 = +[CEKApertureStops validApertureValues];
  v4 = [v3 objectAtIndexedSubscript:{-[CEKApertureSlider _maximumApertureIndex](self, "_maximumApertureIndex")}];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)apertureValue
{
  if ([(CEKApertureSlider *)self includesOffState])
  {
    selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
    if (selectedIndex >= [(CEKDiscreteSlider *)self indexCount]- 1)
    {
      return 0.0;
    }
  }

  v4 = +[CEKApertureStops validApertureValues];
  v5 = [v4 objectAtIndexedSubscript:{-[CEKApertureSlider _validApertureIndexForDiscreteIndex:](self, "_validApertureIndexForDiscreteIndex:", -[CEKDiscreteSlider selectedIndex](self, "selectedIndex"))}];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (double)markedApertureValue
{
  indexCount = [(CEKDiscreteSlider *)self indexCount];
  v4 = indexCount - [(CEKApertureSlider *)self includesOffState];
  if ([(CEKDiscreteSlider *)self markedIndex]>= v4)
  {
    return 0.0;
  }

  v5 = +[CEKApertureStops validApertureValues];
  v6 = [v5 objectAtIndexedSubscript:{-[CEKApertureSlider _validApertureIndexForDiscreteIndex:](self, "_validApertureIndexForDiscreteIndex:", -[CEKDiscreteSlider markedIndex](self, "markedIndex"))}];
  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setMarkedApertureValueClosestTo:(double)to
{
  v4 = [(CEKApertureSlider *)self _discreteIndexForValidApertureIndex:[CEKApertureStops indexOfClosestValidValueForAperture:to]];

  [(CEKDiscreteSlider *)self setMarkedIndex:v4];
}

- (void)setIncludesOffState:(BOOL)state
{
  if (self->_includesOffState != state)
  {
    self->_includesOffState = state;
    [(CEKApertureSlider *)self _updateIndexCount];
  }
}

- (BOOL)isSliderOn
{
  if (![(CEKApertureSlider *)self includesOffState])
  {
    return 1;
  }

  selectedIndex = [(CEKDiscreteSlider *)self selectedIndex];
  return selectedIndex < [(CEKDiscreteSlider *)self indexCount]- 1;
}

- (void)setSliderOn:(BOOL)on
{
  onCopy = on;
  if ([(CEKApertureSlider *)self includesOffState]&& [(CEKApertureSlider *)self isSliderOn]!= onCopy)
  {
    if (onCopy)
    {
      [(CEKApertureSlider *)self markedApertureValue];
      if (v5 == 0.0)
      {
        [(CEKApertureSlider *)self maximumApertureValue];
      }

      [(CEKApertureSlider *)self setApertureValueClosestTo:?];
    }

    else
    {
      v6 = [(CEKDiscreteSlider *)self indexCount]- 1;

      [(CEKDiscreteSlider *)self setSelectedIndex:v6];
    }
  }
}

@end