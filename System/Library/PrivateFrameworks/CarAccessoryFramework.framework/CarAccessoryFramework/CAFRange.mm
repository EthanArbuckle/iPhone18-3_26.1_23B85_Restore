@interface CAFRange
- (BOOL)isInRange:(id)a3;
- (CAFFloatRange)floatRange;
- (CAFInt16Range)int16Range;
- (CAFInt32Range)int32Range;
- (CAFInt64Range)int64Range;
- (CAFInt8Range)int8Range;
- (CAFRange)initWithMetaData:(id)a3;
- (CAFUInt16Range)uInt16Range;
- (CAFUInt32Range)uInt32Range;
- (CAFUInt64Range)uInt64Range;
- (CAFUInt8Range)uInt8Range;
- (NSArray)validValues;
- (NSNumber)maximum;
- (NSNumber)minimum;
- (NSNumber)step;
- (NSString)description;
- (id)currentDescriptionForCache:(id)a3;
- (id)limitedToRange:(id)a3;
- (id)measurementRangeWithUnit:(id)a3;
- (id)valueRoundedToNearestStepValue:(id)a3;
@end

@implementation CAFRange

- (CAFRange)initWithMetaData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CAFRange;
  v6 = [(CAFRange *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metaData, a3);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7 lazyRefreshDescription:1];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

- (NSNumber)minimum
{
  v3 = [(CAFRange *)self metaData];
  v4 = [v3 minimumValue];

  if (v4)
  {
    v5 = [(CAFRange *)self metaData];
    v6 = [v5 minimumValue];
  }

  else
  {
    v6 = [objc_opt_class() minimum];
  }

  return v6;
}

- (NSNumber)maximum
{
  v3 = [(CAFRange *)self metaData];
  v4 = [v3 maximumValue];

  if (v4)
  {
    v5 = [(CAFRange *)self metaData];
    v6 = [v5 maximumValue];
  }

  else
  {
    v6 = [objc_opt_class() maximum];
  }

  return v6;
}

- (NSNumber)step
{
  v3 = [(CAFRange *)self metaData];
  v4 = [v3 stepValue];

  if (v4)
  {
    v5 = [(CAFRange *)self metaData];
    v6 = [v5 stepValue];
  }

  else
  {
    v6 = [objc_opt_class() step];
  }

  return v6;
}

- (NSArray)validValues
{
  v2 = [(CAFRange *)self metaData];
  v3 = [v2 validValues];

  return v3;
}

- (BOOL)isInRange:(id)a3
{
  v4 = a3;
  v5 = [(CAFRange *)self validValues];

  if (v5)
  {
    v6 = [(CAFRange *)self validValues];
    v7 = [v6 containsObject:v4];

    return v7;
  }

  else
  {
    v9 = [(CAFRange *)self minimum];
    v10 = [v4 compare:v9];

    v11 = [(CAFRange *)self maximum];
    v12 = [v4 compare:v11];

    return v10 < 2 && (v12 + 1) < 2;
  }
}

- (id)valueRoundedToNearestStepValue:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCA988]) initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = MEMORY[0x277CCA980];
  v7 = [(CAFRange *)self minimum];
  v8 = v7;
  if (v7)
  {
    [v7 decimalValue];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v9 = [v6 decimalNumberWithDecimal:&v21];

  v10 = MEMORY[0x277CCA980];
  v11 = [(CAFRange *)self step];
  v12 = v11;
  if (v11)
  {
    [v11 decimalValue];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v13 = [v10 decimalNumberWithDecimal:&v21];

  v14 = MEMORY[0x277CCA980];
  if (v4)
  {
    [v4 decimalValue];
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

- (id)limitedToRange:(id)a3
{
  v4 = a3;
  v5 = [(CAFRange *)self minimum];
  v6 = [v4 compare:v5];

  v7 = [(CAFRange *)self maximum];
  v8 = [v4 compare:v7];

  if (v6 == -1)
  {
    v9 = [(CAFRange *)self minimum];
  }

  else if (v8 == 1)
  {
    v9 = [(CAFRange *)self maximum];
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (NSString)description
{
  v2 = [(CAFRange *)self cachedDescription];
  v3 = [v2 description];

  return v3;
}

- (id)currentDescriptionForCache:(id)a3
{
  v4 = [(CAFRange *)self validValues];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(CAFRange *)self validValues];
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [v5 stringWithFormat:@"[%@]", v7];
  }

  else
  {
    v8 = &stru_284626CA8;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(CAFRange *)self minimum];
  v11 = [(CAFRange *)self maximum];
  v12 = [(CAFRange *)self step];
  v13 = [v9 stringWithFormat:@"%@[%@..%@]x%@", v8, v10, v11, v12];

  return v13;
}

- (CAFFloatRange)floatRange
{
  v3 = [CAFFloatRange alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFInt8Range)int8Range
{
  v3 = [CAFInt8Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFInt16Range)int16Range
{
  v3 = [CAFInt16Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFInt32Range)int32Range
{
  v3 = [CAFInt32Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFInt64Range)int64Range
{
  v3 = [CAFInt64Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFUInt8Range)uInt8Range
{
  v3 = [CAFUInt8Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFUInt16Range)uInt16Range
{
  v3 = [CAFUInt16Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFUInt32Range)uInt32Range
{
  v3 = [CAFUInt32Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (CAFUInt64Range)uInt64Range
{
  v3 = [CAFUInt64Range alloc];
  v4 = [(CAFRange *)self metaData];
  v5 = [(CAFRange *)v3 initWithMetaData:v4];

  return v5;
}

- (id)measurementRangeWithUnit:(id)a3
{
  v4 = a3;
  v5 = [CAFMeasurementRange alloc];
  v6 = [(CAFRange *)self metaData];
  v7 = [(CAFMeasurementRange *)v5 initWithMetaData:v6 unit:v4];

  return v7;
}

@end