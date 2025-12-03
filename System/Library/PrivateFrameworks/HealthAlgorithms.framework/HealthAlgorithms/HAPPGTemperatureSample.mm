@interface HAPPGTemperatureSample
- (HAPPGTemperatureSample)initWithDegreesCelsius:(float)celsius;
@end

@implementation HAPPGTemperatureSample

- (HAPPGTemperatureSample)initWithDegreesCelsius:(float)celsius
{
  v5.receiver = self;
  v5.super_class = HAPPGTemperatureSample;
  result = [(HAPPGTemperatureSample *)&v5 init];
  result->_degreesCelsius = celsius;
  return result;
}

@end