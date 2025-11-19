@interface CSSegmentedValue
- (CSSegmentedValue)initWithThresholds:(id)a3 value:(unint64_t)a4;
- (void)updateSegmentAndProgress;
@end

@implementation CSSegmentedValue

- (CSSegmentedValue)initWithThresholds:(id)a3 value:(unint64_t)a4
{
  v6 = a3;
  v7 = 0;
  do
  {
    ++v7;
  }

  while (v7 < [v6 count]);
  v12.receiver = self;
  v12.super_class = CSSegmentedValue;
  v8 = [(CSSegmentedValue *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    thresholds = v8->_thresholds;
    v8->_thresholds = v9;

    v8->_value = a4;
    [(CSSegmentedValue *)v8 updateSegmentAndProgress];
  }

  return v8;
}

- (void)updateSegmentAndProgress
{
  value = self->_value;
  v4 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:0];
  v5 = [v4 unsignedIntegerValue];

  if (value <= v5)
  {
    self->_segment = 0;
  }

  v6 = self->_value;
  v7 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:[(NSArray *)self->_thresholds count]- 2];
  v8 = [v7 unsignedIntValue];

  if (v6 >= v8)
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
      v12 = [v11 unsignedIntegerValue];

      v13 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:v9 + 2];
      v14 = [v13 unsignedIntValue];

      v15 = self->_value;
      v16 = v12 >= v15 || v15 > v14;
      v9 = segment;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    segment = self->_segment;
  }

  v17 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:segment];
  v18 = [v17 unsignedIntValue];

  v19 = [(NSArray *)self->_thresholds objectAtIndexedSubscript:self->_segment + 1];
  v20 = [v19 unsignedIntValue];

  self->_progressWithinSegment = fmax(fmin((self->_value - v18) / (v20 - v18), 1.0), 0.0);
}

@end