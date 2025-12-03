@interface HKSample(HKCodingSupport)
+ (id)createWithCodableChartData:()HKCodingSupport;
+ (id)createWithCodableNotificationSample:()HKCodingSupport;
- (HKCodableSampleChartData)codableSampleChartData;
@end

@implementation HKSample(HKCodingSupport)

+ (id)createWithCodableChartData:()HKCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E696C3D0] dataTypeWithCode:{objc_msgSend(v3, "dataType")}];
  [v3 startDate];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  [v3 endDate];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  v7 = MEMORY[0x1E695DF20];
  metadataDictionary = [v3 metadataDictionary];
  v9 = [v7 dictionaryWithCodableMetadata:metadataDictionary];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E696BF88];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__HKSample_HKCodingSupport__createWithCodableChartData___block_invoke;
    v18[3] = &unk_1E81BC8E0;
    v19 = v3;
    v11 = [v10 _newSampleFromDatesWithType:v4 startDate:v5 endDate:v6 device:0 metadata:v9 config:v18];
  }

  else if ([v4 code] == 79 || objc_msgSend(v4, "code") == 79)
  {
    v11 = [MEMORY[0x1E696C588] _workoutWithActivityType:objc_msgSend(v3 startDate:"int64Value") endDate:v5 workoutEvents:v6 workoutActivities:0 duration:0 statistics:0 goalType:1.0 goal:0 device:0 metadata:{0, v9}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x1E696C348];
      quantity = [v3 quantity];
      v15 = [v13 createWithCodableQuantity:quantity];

      v11 = [MEMORY[0x1E696C358] quantitySampleWithType:v4 quantity:v15 startDate:v5 endDate:v6 device:0 metadata:v9];
    }

    else
    {
      if ([v4 code] == 287)
      {
        v16 = MEMORY[0x1E696C180];
        v17 = &unk_1F4381EA0;
      }

      else
      {
        if ([v4 code] != 288)
        {
          v11 = 0;
          goto LABEL_8;
        }

        v16 = MEMORY[0x1E696C310];
        v17 = &unk_1F4381EB8;
      }

      v11 = [v16 assessmentWithDate:v5 answers:v17 metadata:v9];
      [v11 _setRisk:{objc_msgSend(v3, "int64Value")}];
    }
  }

LABEL_8:

LABEL_9:

  return v11;
}

+ (id)createWithCodableNotificationSample:()HKCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E696BF90] dataTypeWithCode:{objc_msgSend(v3, "dataType")}];
    v5 = MEMORY[0x1E696BF88];
    categoryValue = [v3 categoryValue];
    [v3 startDate];
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    [v3 endDate];
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v9 = [v5 categorySampleWithType:v4 value:categoryValue startDate:v7 endDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HKCodableSampleChartData)codableSampleChartData
{
  v2 = objc_alloc_init(HKCodableSampleChartData);
  sampleType = [self sampleType];
  -[HKCodableSampleChartData setDataType:](v2, "setDataType:", [sampleType code]);

  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HKCodableSampleChartData *)v2 setStartDate:?];

  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HKCodableSampleChartData *)v2 setEndDate:?];

  -[HKCodableSampleChartData setInt64Value:](v2, "setInt64Value:", [self hk_integerValue]);
  metadata = [self metadata];
  codableMetadata = [metadata codableMetadata];
  [(HKCodableSampleChartData *)v2 setMetadataDictionary:codableMetadata];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quantity = [self quantity];
    codableRepresentation = [quantity codableRepresentation];
    [(HKCodableSampleChartData *)v2 setQuantity:codableRepresentation];
  }

  return v2;
}

@end