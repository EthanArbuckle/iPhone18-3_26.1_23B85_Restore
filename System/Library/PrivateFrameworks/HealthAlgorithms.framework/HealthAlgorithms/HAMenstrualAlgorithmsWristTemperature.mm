@interface HAMenstrualAlgorithmsWristTemperature
- (HAMenstrualAlgorithmsWristTemperature)initWithCoder:(id)coder;
- (HAMenstrualAlgorithmsWristTemperature)initWithTemperature:(double)temperature forWatchIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsWristTemperature

- (HAMenstrualAlgorithmsWristTemperature)initWithTemperature:(double)temperature forWatchIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HAMenstrualAlgorithmsWristTemperature;
  v8 = [(HAMenstrualAlgorithmsWristTemperature *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_temperatureCelsius = temperature;
    objc_storeStrong(&v8->_watchIdentifier, identifier);
    v10 = v9;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  temperatureCelsius = self->_temperatureCelsius;
  v5 = NSStringFromSelector(sel_temperatureCelsius);
  [coderCopy encodeDouble:v5 forKey:temperatureCelsius];

  watchIdentifier = self->_watchIdentifier;
  v7 = NSStringFromSelector(sel_watchIdentifier);
  [coderCopy encodeObject:watchIdentifier forKey:v7];
}

- (HAMenstrualAlgorithmsWristTemperature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HAMenstrualAlgorithmsWristTemperature *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_temperatureCelsius);
    [coderCopy decodeDoubleForKey:v6];
    v5->_temperatureCelsius = v7;

    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_watchIdentifier);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    watchIdentifier = v5->_watchIdentifier;
    v5->_watchIdentifier = v10;

    v12 = v5;
  }

  return v5;
}

@end