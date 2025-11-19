@interface CAFMeasurementRange
- (BOOL)valueIsInRange:(id)a3;
- (CAFMeasurementRange)initWithMetaData:(id)a3 unit:(id)a4;
- (NSMeasurement)maximumValue;
- (NSMeasurement)minimumValue;
- (NSMeasurement)stepValue;
- (id)limitedValueForValue:(id)a3;
- (id)rangeDescription;
- (id)valueRoundedToNearestStepValue:(id)a3;
@end

@implementation CAFMeasurementRange

- (CAFMeasurementRange)initWithMetaData:(id)a3 unit:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CAFMeasurementRange;
  v8 = [(CAFRange *)&v11 initWithMetaData:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_unit, a4);
  }

  return v9;
}

- (NSMeasurement)minimumValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  v4 = [(CAFRange *)self minimum];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:v7 unit:v6];

  return v8;
}

- (NSMeasurement)maximumValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  v4 = [(CAFRange *)self maximum];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:v7 unit:v6];

  return v8;
}

- (NSMeasurement)stepValue
{
  v3 = objc_alloc(MEMORY[0x277CCAB10]);
  v4 = [(CAFRange *)self step];
  [v4 doubleValue];
  v6 = v5;
  v7 = [(CAFMeasurementRange *)self unit];
  v8 = [v3 initWithDoubleValue:v7 unit:v6];

  return v8;
}

- (id)rangeDescription
{
  v3 = [(CAFMeasurementRange *)self minimumValue];
  v4 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:v3];

  v5 = [(CAFMeasurementRange *)self maximumValue];
  v6 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:v5];

  v7 = [(CAFMeasurementRange *)self stepValue];
  v8 = [CAFMeasurementCharacteristic _sharedStringFromMeasurement:v7];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@..%@]x%@", v4, v6, v8];

  return v9;
}

- (BOOL)valueIsInRange:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [(CAFMeasurementRange *)self unit];
  v7 = [v5 measurementByConvertingToUnit:v6];

  [v7 doubleValue];
  v8 = [v4 numberWithDouble:?];
  LOBYTE(self) = [(CAFRange *)self isInRange:v8];

  return self;
}

- (id)valueRoundedToNearestStepValue:(id)a3
{
  v4 = a3;
  v5 = [(CAFRange *)self floatRange];
  v6 = [(CAFMeasurementRange *)self unit];
  v7 = [v4 measurementByConvertingToUnit:v6];

  [v7 doubleValue];
  *&v8 = v8;
  [v5 valueRoundedToNearestStepValue:v8];
  v10 = v9;
  v11 = objc_alloc(MEMORY[0x277CCAB10]);
  v12 = [(CAFMeasurementRange *)self unit];
  v13 = [v11 initWithDoubleValue:v12 unit:v10];

  return v13;
}

- (id)limitedValueForValue:(id)a3
{
  v4 = a3;
  v5 = [(CAFMeasurementRange *)self unit];
  v6 = [v4 measurementByConvertingToUnit:v5];

  v7 = [v6 numberValue];
  v8 = [(CAFRange *)self limitedToRange:v7];

  v9 = objc_alloc(MEMORY[0x277CCAB10]);
  v10 = [(CAFMeasurementRange *)self unit];
  v11 = [v9 initWithNumberValue:v8 unit:v10];

  return v11;
}

@end