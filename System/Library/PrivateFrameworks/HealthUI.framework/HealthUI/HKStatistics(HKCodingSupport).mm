@interface HKStatistics(HKCodingSupport)
+ (id)statisticsWithCodableStatistics:()HKCodingSupport;
- (HKCodableStatistics)codableStatistics;
@end

@implementation HKStatistics(HKCodingSupport)

+ (id)statisticsWithCodableStatistics:()HKCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 hasDataType])
  {
    v4 = [MEMORY[0x1E696C2E0] dataTypeWithCode:{objc_msgSend(v3, "dataType")}];
    if ([v3 hasStartDate])
    {
      [v3 startDate];
      v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v5 = 0;
    }

    if ([v3 hasEndDate])
    {
      [v3 endDate];
      v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v7 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x1E696C4C0]) initWithDataType:v4 startDate:v5 endDate:v7];
    if ([v3 hasAverageQuantity])
    {
      v8 = MEMORY[0x1E696C348];
      averageQuantity = [v3 averageQuantity];
      v10 = [v8 createWithCodableQuantity:averageQuantity];
      [v6 setAverageQuantity:v10];
    }

    if ([v3 hasMinQuantity])
    {
      v11 = MEMORY[0x1E696C348];
      minQuantity = [v3 minQuantity];
      v13 = [v11 createWithCodableQuantity:minQuantity];
      [v6 setMinimumQuantity:v13];
    }

    if ([v3 hasMaxQuantity])
    {
      v14 = MEMORY[0x1E696C348];
      maxQuantity = [v3 maxQuantity];
      v16 = [v14 createWithCodableQuantity:maxQuantity];
      [v6 setMaximumQuantity:v16];
    }

    if ([v3 hasMostRecentQuantity])
    {
      v17 = MEMORY[0x1E696C348];
      mostRecentQuantity = [v3 mostRecentQuantity];
      v19 = [v17 createWithCodableQuantity:mostRecentQuantity];
      [v6 setMostRecentQuantity:v19];
    }

    if ([v3 hasSumQuantity])
    {
      v20 = MEMORY[0x1E696C348];
      sumQuantity = [v3 sumQuantity];
      v22 = [v20 createWithCodableQuantity:sumQuantity];
      [v6 setSumQuantity:v22];
    }

    if ([v3 hasDurationQuantity])
    {
      v23 = MEMORY[0x1E696C348];
      durationQuantity = [v3 durationQuantity];
      v25 = [v23 createWithCodableQuantity:durationQuantity];
      [v6 setDuration:v25];
    }

    if ([v3 hasDataCount])
    {
      [v6 setDataCount:{objc_msgSend(v3, "dataCount")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HKCodableStatistics)codableStatistics
{
  v2 = objc_alloc_init(HKCodableStatistics);
  quantityType = [self quantityType];
  -[HKCodableStatistics setDataType:](v2, "setDataType:", [quantityType code]);

  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v2 setStartDate:?];

  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v2 setEndDate:?];

  averageQuantity = [self averageQuantity];
  codableRepresentation = [averageQuantity codableRepresentation];
  [(HKCodableStatistics *)v2 setAverageQuantity:codableRepresentation];

  minimumQuantity = [self minimumQuantity];
  codableRepresentation2 = [minimumQuantity codableRepresentation];
  [(HKCodableStatistics *)v2 setMinQuantity:codableRepresentation2];

  maximumQuantity = [self maximumQuantity];
  codableRepresentation3 = [maximumQuantity codableRepresentation];
  [(HKCodableStatistics *)v2 setMaxQuantity:codableRepresentation3];

  mostRecentQuantity = [self mostRecentQuantity];
  codableRepresentation4 = [mostRecentQuantity codableRepresentation];
  [(HKCodableStatistics *)v2 setMostRecentQuantity:codableRepresentation4];

  sumQuantity = [self sumQuantity];
  codableRepresentation5 = [sumQuantity codableRepresentation];
  [(HKCodableStatistics *)v2 setSumQuantity:codableRepresentation5];

  duration = [self duration];
  codableRepresentation6 = [duration codableRepresentation];
  [(HKCodableStatistics *)v2 setDurationQuantity:codableRepresentation6];

  -[HKCodableStatistics setDataCount:](v2, "setDataCount:", [self dataCount]);
  baselineRelativeValueState = [self baselineRelativeValueState];
  v19 = baselineRelativeValueState;
  if (baselineRelativeValueState)
  {
    -[HKCodableStatistics setBaselineRelativeValueState:](v2, "setBaselineRelativeValueState:", [baselineRelativeValueState integerValue]);
  }

  return v2;
}

@end