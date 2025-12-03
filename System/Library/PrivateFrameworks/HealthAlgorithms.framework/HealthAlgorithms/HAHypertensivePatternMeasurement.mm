@interface HAHypertensivePatternMeasurement
- (HAHypertensivePatternMeasurement)initWithDate:(id)date value:(double)value;
@end

@implementation HAHypertensivePatternMeasurement

- (HAHypertensivePatternMeasurement)initWithDate:(id)date value:(double)value
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HAHypertensivePatternMeasurement;
  v8 = [(HAHypertensivePatternMeasurement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, date);
    v9->_value = value;
    v10 = v9;
  }

  return v9;
}

@end