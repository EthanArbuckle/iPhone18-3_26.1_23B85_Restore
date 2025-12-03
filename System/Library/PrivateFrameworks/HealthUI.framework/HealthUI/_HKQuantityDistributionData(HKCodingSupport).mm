@interface _HKQuantityDistributionData(HKCodingSupport)
+ (id)quantityDistributionDataWithCodableQuantityDistributionData:()HKCodingSupport sourceTimeZone:preferredUnit:;
- (HKCodableQuantityDistributionData)codableQuantityDistributionData;
@end

@implementation _HKQuantityDistributionData(HKCodingSupport)

+ (id)quantityDistributionDataWithCodableQuantityDistributionData:()HKCodingSupport sourceTimeZone:preferredUnit:
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696C348] quantityWithUnit:a5 doubleValue:0.0];
  v10 = MEMORY[0x1E696C348];
  secondUnit = [MEMORY[0x1E696C510] secondUnit];
  v12 = [v10 quantityWithUnit:secondUnit doubleValue:0.0];

  if ([v7 hasStartDate])
  {
    [v7 startDate];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v39 = [v13 hk_dateFromSourceTimeZone:v8];
  }

  else
  {
    v39 = [MEMORY[0x1E695DF00] now];
  }

  if ([v7 hasEndDate])
  {
    [v7 endDate];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v38 = [v14 hk_dateFromSourceTimeZone:v8];
  }

  else
  {
    v38 = [MEMORY[0x1E695DF00] now];
  }

  if ([v7 hasMinimumBucketValue])
  {
    v15 = MEMORY[0x1E696C348];
    minimumBucketValue = [v7 minimumBucketValue];
    v37 = [v15 createWithCodableQuantity:minimumBucketValue];
  }

  else
  {
    v37 = v9;
  }

  if ([v7 hasMinimumValue])
  {
    v17 = MEMORY[0x1E696C348];
    minimumValue = [v7 minimumValue];
    v36 = [v17 createWithCodableQuantity:minimumValue];
  }

  else
  {
    v36 = v9;
  }

  if ([v7 hasMaximumValue])
  {
    v19 = MEMORY[0x1E696C348];
    maximumValue = [v7 maximumValue];
    v35 = [v19 createWithCodableQuantity:maximumValue];
  }

  else
  {
    v35 = v9;
  }

  if ([v7 hasAverageValue])
  {
    v21 = MEMORY[0x1E696C348];
    averageValue = [v7 averageValue];
    v34 = [v21 createWithCodableQuantity:averageValue];
  }

  else
  {
    v34 = v9;
  }

  v41 = v8;
  v40 = v9;
  if ([v7 hasDuration])
  {
    v23 = MEMORY[0x1E696C348];
    duration = [v7 duration];
    v25 = [v23 createWithCodableQuantity:duration];
  }

  else
  {
    v25 = v12;
  }

  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "histogramCountsCount")}];
  contextIdentifiers = [v7 contextIdentifiers];
  v28 = [contextIdentifiers hk_map:&__block_literal_global_358_0];

  if ([v7 histogramCountsCount])
  {
    v29 = 0;
    do
    {
      v30 = MEMORY[0x1E696AD98];
      [v7 histogramCountsAtIndex:v29];
      v31 = [v30 numberWithDouble:?];
      [v26 addObject:v31];

      ++v29;
    }

    while (v29 < [v7 histogramCountsCount]);
  }

  v33 = [objc_alloc(MEMORY[0x1E696C650]) initWithStartDate:v39 endDate:v38 minimumBucketValue:v37 minimumValue:v36 maximumValue:v35 averageValue:v34 duration:v25 histogramCounts:v26 contextIdentifiers:v28];

  return v33;
}

- (HKCodableQuantityDistributionData)codableQuantityDistributionData
{
  v2 = objc_alloc_init(HKCodableQuantityDistributionData);
  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HKCodableQuantityDistributionData *)v2 setStartDate:?];

  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HKCodableQuantityDistributionData *)v2 setEndDate:?];

  minimumBucketValue = [self minimumBucketValue];
  codableRepresentation = [minimumBucketValue codableRepresentation];
  [(HKCodableQuantityDistributionData *)v2 setMinimumBucketValue:codableRepresentation];

  minimumValue = [self minimumValue];
  codableRepresentation2 = [minimumValue codableRepresentation];
  [(HKCodableQuantityDistributionData *)v2 setMinimumValue:codableRepresentation2];

  maximumValue = [self maximumValue];
  codableRepresentation3 = [maximumValue codableRepresentation];
  [(HKCodableQuantityDistributionData *)v2 setMaximumValue:codableRepresentation3];

  averageValue = [self averageValue];
  if (averageValue)
  {
    averageValue2 = [self averageValue];
    codableRepresentation4 = [averageValue2 codableRepresentation];
    [(HKCodableQuantityDistributionData *)v2 setAverageValue:codableRepresentation4];
  }

  else
  {
    [(HKCodableQuantityDistributionData *)v2 setAverageValue:0];
  }

  duration = [self duration];
  if (duration)
  {
    duration2 = [self duration];
    codableRepresentation5 = [duration2 codableRepresentation];
    [(HKCodableQuantityDistributionData *)v2 setDuration:codableRepresentation5];
  }

  else
  {
    [(HKCodableQuantityDistributionData *)v2 setDuration:0];
  }

  histogramCounts = [self histogramCounts];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79___HKQuantityDistributionData_HKCodingSupport__codableQuantityDistributionData__block_invoke;
  v26[3] = &unk_1E81B58B0;
  v18 = v2;
  v27 = v18;
  [histogramCounts enumerateObjectsUsingBlock:v26];

  contextIdentifiers = [self contextIdentifiers];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79___HKQuantityDistributionData_HKCodingSupport__codableQuantityDistributionData__block_invoke_2;
  v24[3] = &unk_1E81BC9B8;
  v20 = v18;
  v25 = v20;
  [contextIdentifiers enumerateObjectsUsingBlock:v24];

  v21 = v25;
  v22 = v20;

  return v20;
}

@end