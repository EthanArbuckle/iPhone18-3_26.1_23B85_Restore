@interface CSSegmentedValue
- (CSSegmentedValue)initWithThresholds:(id)thresholds value:(unint64_t)value;
- (void)updateSegmentAndProgress;
@end

@implementation CSSegmentedValue

- (CSSegmentedValue)initWithThresholds:(id)thresholds value:(unint64_t)value
{
  thresholdsCopy = thresholds;
  v7 = 0;
  do
  {
    ++v7;
  }

  while (v7 < [thresholdsCopy count]);
  v12.receiver = self;
  v12.super_class = CSSegmentedValue;
  v8 = [(CSSegmentedValue *)&v12 init];
  if (v8)
  {
    v9 = [thresholdsCopy copy];
    thresholds = v8->_thresholds;
    v8->_thresholds = v9;

    v8->_value = value;
    [(CSSegmentedValue *)v8 updateSegmentAndProgress];
  }

  return v8;
}

- (void)updateSegmentAndProgress
{
  value = self->_value;
  v4 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (value <= unsignedIntegerValue)
  {
    self->_segment = 0;
  }

  v6 = self->_value;
  v7 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:[(NSArray *)self->_thresholds count]- 2];
  unsignedIntValue = [v7 unsignedIntValue];

  if (v6 >= unsignedIntValue)
  {
    segment = [(NSArray *)self->_thresholds count]- 2;
LABEL_12:
    self->_segment = segment;
  }

  else
  {
    v9 = -1;
    while (1)
    {
      segment = v9 + 1;
      if (v9 + 1 > [(NSArray *)self->_thresholds count]- 3)
      {
        break;
      }

      v11 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:v9 + 1];
      unsignedIntegerValue2 = [v11 unsignedIntegerValue];

      v13 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:v9 + 2];
      unsignedIntValue2 = [v13 unsignedIntValue];

      v15 = self->_value;
      v16 = unsignedIntegerValue2 >= v15 || v15 > unsignedIntValue2;
      v9 = segment;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    segment = self->_segment;
  }

  v17 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:segment];
  unsignedIntValue3 = [v17 unsignedIntValue];

  v19 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:self->_segment + 1];
  unsignedIntValue4 = [v19 unsignedIntValue];

  self->_progressWithinSegment = fmax(fmin((self->_value - unsignedIntValue3) / (unsignedIntValue4 - unsignedIntValue3), 1.0), 0.0);
}

@end