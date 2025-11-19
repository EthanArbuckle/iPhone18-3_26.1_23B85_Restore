@interface HAPPGTemperatureSample
- (HAPPGTemperatureSample)initWithDegreesCelsius:(float)a3;
@end

@implementation HAPPGTemperatureSample

- (HAPPGTemperatureSample)initWithDegreesCelsius:(float)a3
{
  v5.receiver = self;
  v5.super_class = HAPPGTemperatureSample;
  result = [(HAPPGTemperatureSample *)&v5 init];
  result->_degreesCelsius = a3;
  return result;
}

@end