@interface CAFMeasurementRange
- (BOOL)valueIsInRange:(id)range;
- (CAFMeasurementRange)initWithMetaData:(id)data unit:(id)unit;
- (NSMeasurement)maximumValue;
- (NSMeasurement)minimumValue;
- (NSMeasurement)stepValue;
- (id)limitedValueForValue:(id)value;
- (id)rangeDescription;
- (id)valueRoundedToNearestStepValue:(id)value;
@end

@implementation CAFMeasurementRange

- (CAFMeasurementRange)initWithMetaData:(id)data unit:(id)unit
{
  unitCopy = unit;
  v11.receiver = self;
  v11.super_class = CAFMeasurementRange;
  v8 = [(CAFRange *)&v11 initWithMetaData:data];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_unit, unit);
  }

  return v9;
}

- (NSMeasurement)minimumValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  minimum = [(CAFRange *)self minimum];
  [minimum doubleValue];
  v6 = v5;
  unit = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:unit unit:v6];

  return v8;
}

- (NSMeasurement)maximumValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  maximum = [(CAFRange *)self maximum];
  [maximum doubleValue];
  v6 = v5;
  unit = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:unit unit:v6];

  return v8;
}

- (NSMeasurement)stepValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  step = [(CAFRange *)self step];
  [step doubleValue];
  v6 = v5;
  unit = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:unit unit:v6];

  return v8;
}

- (id)rangeDescription
{
  minimumValue = [(CAFMeasurementRange *)self minimumValue];
  v4 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:minimumValue];

  maximumValue = [(CAFMeasurementRange *)self maximumValue];
  v6 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:maximumValue];

  stepValue = [(CAFMeasurementRange *)self stepValue];
  v8 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:stepValue];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@..%@]x%@", v4, v6, v8];

  return v9;
}

- (BOOL)valueIsInRange:(id)range
{
  v4 = MEMORY[0x277CCABB0];
  rangeCopy = range;
  unit = [(CAFMeasurementRange *)self unit];
  v7 = [rangeCopy measurementByConvertingToUnit:unit];

  [v7 doubleValue];
  v8 = [v4 numberWithDouble:?];
  LOBYTE(self) = [(CAFRange *)self isInRange:v8];

  return self;
}

- (id)valueRoundedToNearestStepValue:(id)value
{
  valueCopy = value;
  floatRange = [(CAFRange *)self floatRange];
  unit = [(CAFMeasurementRange *)self unit];
  v7 = [valueCopy measurementByConvertingToUnit:unit];

  [v7 doubleValue];
  *&v8 = v8;
  [floatRange valueRoundedToNearestStepValue:v8];
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CCAB10]);
  unit2 = [(CAFMeasurementRange *)self unit];
  v13 = [v11 initWithDoubleValue:unit2 unit:v10];

  return v13;
}

- (id)limitedValueForValue:(id)value
{
  valueCopy = value;
  unit = [(CAFMeasurementRange *)self unit];
  v6 = [valueCopy measurementByConvertingToUnit:unit];

  numberValue = [v6 numberValue];
  v8 = [(CAFRange *)self limitedToRange:numberValue];

  v9 = objc_alloc(MEMORY[0x277CCAB10]);
  unit2 = [(CAFMeasurementRange *)self unit];
  v11 = [v9 initWithNumberValue:v8 unit:unit2];

  return v11;
}

@end