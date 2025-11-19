@interface NgtMenstrualAlgorithmsWristTemperature
- (NgtMenstrualAlgorithmsWristTemperature)initWithCoder:(id)a3;
- (NgtMenstrualAlgorithmsWristTemperature)initWithTemperature:(double)a3 forWatchIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsWristTemperature

- (NgtMenstrualAlgorithmsWristTemperature)initWithTemperature:(double)a3 forWatchIdentifier:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NgtMenstrualAlgorithmsWristTemperature;
  v8 = [(NgtMenstrualAlgorithmsWristTemperature *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_temperatureCelsius = a3;
    objc_storeStrong(&v8->_watchIdentifier, a4);
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  temperatureCelsius = self->_temperatureCelsius;
  v5 = NSStringFromSelector(sel_temperatureCelsius);
  [v8 encodeDouble:v5 forKey:temperatureCelsius];

  watchIdentifier = self->_watchIdentifier;
  v7 = NSStringFromSelector(sel_watchIdentifier);
  [v8 encodeObject:watchIdentifier forKey:v7];
}

- (NgtMenstrualAlgorithmsWristTemperature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NgtMenstrualAlgorithmsWristTemperature *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_temperatureCelsius);
    [v4 decodeDoubleForKey:v6];
    v5->_temperatureCelsius = v7;

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_watchIdentifier);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    watchIdentifier = v5->_watchIdentifier;
    v5->_watchIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

@end