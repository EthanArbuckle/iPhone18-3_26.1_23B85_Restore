@interface CAFRange
- (BOOL)isInRange:(id)range;
- (CAFFloatRange)floatRange;
- (CAFInt16Range)int16Range;
- (CAFInt32Range)int32Range;
- (CAFInt64Range)int64Range;
- (CAFInt8Range)int8Range;
- (CAFRange)initWithMetaData:(id)data;
- (CAFUInt16Range)uInt16Range;
- (CAFUInt32Range)uInt32Range;
- (CAFUInt64Range)uInt64Range;
- (CAFUInt8Range)uInt8Range;
- (NSArray)validValues;
- (NSNumber)maximum;
- (NSNumber)minimum;
- (NSNumber)step;
- (NSString)description;
- (id)currentDescriptionForCache:(id)cache;
- (id)limitedToRange:(id)range;
- (id)measurementRangeWithUnit:(id)unit;
- (id)valueRoundedToNearestStepValue:(id)value;
@end

@implementation CAFRange

- (CAFRange)initWithMetaData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CAFRange;
  v6 = [(CAFRange *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metaData, data);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7 lazyRefreshDescription:1];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

- (NSNumber)minimum
{
  metaData = [(CAFRange *)self metaData];
  minimumValue = [metaData minimumValue];

  if (minimumValue)
  {
    metaData2 = [(CAFRange *)self metaData];
    minimumValue2 = [metaData2 minimumValue];
  }

  else
  {
    minimumValue2 = [objc_opt_class() minimum];
  }

  return minimumValue2;
}

- (NSNumber)maximum
{
  metaData = [(CAFRange *)self metaData];
  maximumValue = [metaData maximumValue];

  if (maximumValue)
  {
    metaData2 = [(CAFRange *)self metaData];
    maximumValue2 = [metaData2 maximumValue];
  }

  else
  {
    maximumValue2 = [objc_opt_class() maximum];
  }

  return maximumValue2;
}

- (NSNumber)step
{
  metaData = [(CAFRange *)self metaData];
  stepValue = [metaData stepValue];

  if (stepValue)
  {
    metaData2 = [(CAFRange *)self metaData];
    stepValue2 = [metaData2 stepValue];
  }

  else
  {
    stepValue2 = [objc_opt_class() step];
  }

  return stepValue2;
}

- (NSArray)validValues
{
  metaData = [(CAFRange *)self metaData];
  validValues = [metaData validValues];

  return validValues;
}

- (BOOL)isInRange:(id)range
{
  rangeCopy = range;
  validValues = [(CAFRange *)self validValues];

  if (validValues)
  {
    validValues2 = [(CAFRange *)self validValues];
    v7 = [validValues2 containsObject:rangeCopy];

    return v7;
  }

  else
  {
    minimum = [(CAFRange *)self minimum];
    v10 = [rangeCopy compare:minimum];

    maximum = [(CAFRange *)self maximum];
    v12 = [rangeCopy compare:maximum];

    return v10 < 2 && (v12 + 1) < 2;
  }
}

- (id)valueRoundedToNearestStepValue:(id)value
{
  valueCopy = value;
  v5 = [objc_alloc(MEMORY[0x277CCA988]) initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = MEMORY[0x277CCA980];
  minimum = [(CAFRange *)self minimum];
  v8 = minimum;
  if (minimum)
  {
    [minimum decimalValue];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v9 = [v6 decimalNumberWithDecimal:&v21];

  v10 = MEMORY[0x277CCA980];
  step = [(CAFRange *)self step];
  v12 = step;
  if (step)
  {
    [step decimalValue];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v13 = [v10 decimalNumberWithDecimal:&v21];

  v14 = MEMORY[0x277CCA980];
  if (valueCopy)
  {
    [valueCopy decimalValue];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v15 = [v14 decimalNumberWithDecimal:&v21];
  v16 = [v15 decimalNumberBySubtracting:v9];
  v17 = [v16 decimalNumberByDividingBy:v13 withBehavior:v5];

  v18 = [v17 decimalNumberByMultiplyingBy:v13];
  v19 = [v9 decimalNumberByAdding:v18];

  return v19;
}

- (id)limitedToRange:(id)range
{
  rangeCopy = range;
  minimum = [(CAFRange *)self minimum];
  v6 = [rangeCopy compare:minimum];

  maximum = [(CAFRange *)self maximum];
  v8 = [rangeCopy compare:maximum];

  if (v6 == -1)
  {
    minimum2 = [(CAFRange *)self minimum];
  }

  else if (v8 == 1)
  {
    minimum2 = [(CAFRange *)self maximum];
  }

  else
  {
    minimum2 = rangeCopy;
  }

  v10 = minimum2;

  return v10;
}

- (NSString)description
{
  cachedDescription = [(CAFRange *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (id)currentDescriptionForCache:(id)cache
{
  validValues = [(CAFRange *)self validValues];

  if (validValues)
  {
    v5 = MEMORY[0x277CCACA8];
    validValues2 = [(CAFRange *)self validValues];
    v7 = [validValues2 componentsJoinedByString:{@", "}];
    v8 = [v5 stringWithFormat:@"[%@]", v7];
  }

  else
  {
    v8 = &stru_284626CA8;
  }

  v9 = MEMORY[0x277CCACA8];
  minimum = [(CAFRange *)self minimum];
  maximum = [(CAFRange *)self maximum];
  step = [(CAFRange *)self step];
  v13 = [v9 stringWithFormat:@"%@[%@..%@]x%@", v8, minimum, maximum, step];

  return v13;
}

- (CAFFloatRange)floatRange
{
  v3 = [CAFFloatRange alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFInt8Range)int8Range
{
  v3 = [CAFInt8Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFInt16Range)int16Range
{
  v3 = [CAFInt16Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFInt32Range)int32Range
{
  v3 = [CAFInt32Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFInt64Range)int64Range
{
  v3 = [CAFInt64Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFUInt8Range)uInt8Range
{
  v3 = [CAFUInt8Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFUInt16Range)uInt16Range
{
  v3 = [CAFUInt16Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFUInt32Range)uInt32Range
{
  v3 = [CAFUInt32Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (CAFUInt64Range)uInt64Range
{
  v3 = [CAFUInt64Range alloc];
  metaData = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:metaData];

  return v5;
}

- (id)measurementRangeWithUnit:(id)unit
{
  unitCopy = unit;
  v5 = [CAFMeasurementRange alloc];
  metaData = [(CAFRange *)self metaData];
  v7 = [(CAFMeasurementRange *)v5 initWithMetaData:metaData unit:unitCopy];

  return v7;
}

@end