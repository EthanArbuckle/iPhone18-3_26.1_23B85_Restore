@interface HKNumericAxisZeroOnly
- (HKNumericAxisZeroOnly)initWithZeroLabel:(id)label axisConfiguration:(id)configuration;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation HKNumericAxisZeroOnly

- (HKNumericAxisZeroOnly)initWithZeroLabel:(id)label axisConfiguration:(id)configuration
{
  labelCopy = label;
  configurationCopy = configuration;
  [configurationCopy setOverrideNoTopBaseline:1];
  v12.receiver = self;
  v12.super_class = HKNumericAxisZeroOnly;
  v8 = [(HKNumericAxis *)&v12 initWithConfiguration:configurationCopy];

  if (v8)
  {
    v9 = [labelCopy copy];
    zeroLabel = v8->_zeroLabel;
    v8->_zeroLabel = v9;
  }

  return v8;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  v17[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v6 = rangeCopy;
  if (rangeCopy)
  {
    minValue = [rangeCopy minValue];
    [minValue doubleValue];
    v9 = v8;

    maxValue = [v6 maxValue];
    [maxValue doubleValue];
    v12 = v11;

    v13 = 0;
    if (v9 <= 0.0 && v12 >= 0.0)
    {
      zeroLabel = [(HKNumericAxisZeroOnly *)self zeroLabel];
      if (!zeroLabel)
      {
        zeroLabel = [(HKNumericAxis *)self stringFromNumber:&unk_1F4384450];
      }

      v15 = objc_alloc_init(HKAxisLabel);
      [(HKAxisLabel *)v15 setText:zeroLabel];
      [(HKAxisLabel *)v15 setLocation:&unk_1F4384450];
      [(HKAxisLabel *)v15 setLabelType:1];
      v17[0] = v15;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end