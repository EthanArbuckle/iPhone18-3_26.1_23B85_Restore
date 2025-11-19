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
      v9 = [v3 averageQuantity];
      v10 = [v8 createWithCodableQuantity:v9];
      [v6 setAverageQuantity:v10];
    }

    if ([v3 hasMinQuantity])
    {
      v11 = MEMORY[0x1E696C348];
      v12 = [v3 minQuantity];
      v13 = [v11 createWithCodableQuantity:v12];
      [v6 setMinimumQuantity:v13];
    }

    if ([v3 hasMaxQuantity])
    {
      v14 = MEMORY[0x1E696C348];
      v15 = [v3 maxQuantity];
      v16 = [v14 createWithCodableQuantity:v15];
      [v6 setMaximumQuantity:v16];
    }

    if ([v3 hasMostRecentQuantity])
    {
      v17 = MEMORY[0x1E696C348];
      v18 = [v3 mostRecentQuantity];
      v19 = [v17 createWithCodableQuantity:v18];
      [v6 setMostRecentQuantity:v19];
    }

    if ([v3 hasSumQuantity])
    {
      v20 = MEMORY[0x1E696C348];
      v21 = [v3 sumQuantity];
      v22 = [v20 createWithCodableQuantity:v21];
      [v6 setSumQuantity:v22];
    }

    if ([v3 hasDurationQuantity])
    {
      v23 = MEMORY[0x1E696C348];
      v24 = [v3 durationQuantity];
      v25 = [v23 createWithCodableQuantity:v24];
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
  v3 = [a1 quantityType];
  -[HKCodableStatistics setDataType:](v2, "setDataType:", [v3 code]);

  v4 = [a1 startDate];
  [v4 timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v2 setStartDate:?];

  v5 = [a1 endDate];
  [v5 timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v2 setEndDate:?];

  v6 = [a1 averageQuantity];
  v7 = [v6 codableRepresentation];
  [(HKCodableStatistics *)v2 setAverageQuantity:v7];

  v8 = [a1 minimumQuantity];
  v9 = [v8 codableRepresentation];
  [(HKCodableStatistics *)v2 setMinQuantity:v9];

  v10 = [a1 maximumQuantity];
  v11 = [v10 codableRepresentation];
  [(HKCodableStatistics *)v2 setMaxQuantity:v11];

  v12 = [a1 mostRecentQuantity];
  v13 = [v12 codableRepresentation];
  [(HKCodableStatistics *)v2 setMostRecentQuantity:v13];

  v14 = [a1 sumQuantity];
  v15 = [v14 codableRepresentation];
  [(HKCodableStatistics *)v2 setSumQuantity:v15];

  v16 = [a1 duration];
  v17 = [v16 codableRepresentation];
  [(HKCodableStatistics *)v2 setDurationQuantity:v17];

  -[HKCodableStatistics setDataCount:](v2, "setDataCount:", [a1 dataCount]);
  v18 = [a1 baselineRelativeValueState];
  v19 = v18;
  if (v18)
  {
    -[HKCodableStatistics setBaselineRelativeValueState:](v2, "setBaselineRelativeValueState:", [v18 integerValue]);
  }

  return v2;
}

@end