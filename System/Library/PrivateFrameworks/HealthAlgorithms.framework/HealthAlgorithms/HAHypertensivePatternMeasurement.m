@interface HAHypertensivePatternMeasurement
- (HAHypertensivePatternMeasurement)initWithDate:(id)a3 value:(double)a4;
@end

@implementation HAHypertensivePatternMeasurement

- (HAHypertensivePatternMeasurement)initWithDate:(id)a3 value:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HAHypertensivePatternMeasurement;
  v8 = [(HAHypertensivePatternMeasurement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_date, a3);
    v9->_value = a4;
    v10 = v9;
  }

  return v9;
}

@end