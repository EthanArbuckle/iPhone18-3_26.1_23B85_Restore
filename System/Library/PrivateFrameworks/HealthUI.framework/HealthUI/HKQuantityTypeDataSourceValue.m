@interface HKQuantityTypeDataSourceValue
+ (id)quantityTypeDataSourceValueWithCodableStatistics:(id)a3 sourceTimeZone:(id)a4;
- (id)codableStatistics;
- (id)maxYValue;
- (id)minYValue;
- (void)setBaselineRelativeValueState:(id)a3;
@end

@implementation HKQuantityTypeDataSourceValue

- (void)setBaselineRelativeValueState:(id)a3
{
  v12 = a3;
  objc_storeStrong(&self->_baselineRelativeValueState, a3);
  if (v12)
  {
    minQuantity = self->_minQuantity;
    if (minQuantity)
    {
      self->_minQuantity = 0;
    }

    maxQuantity = self->_maxQuantity;
    if (maxQuantity)
    {
      self->_maxQuantity = 0;
    }

    if ([v12 integerValue] != 3)
    {
      averageQuantity = self->_averageQuantity;
      if (averageQuantity)
      {
        v8 = MEMORY[0x1E696C348];
        v9 = [(HKQuantity *)averageQuantity _unit];
        v10 = [v8 quantityWithUnit:v9 doubleValue:0.0];
        v11 = self->_averageQuantity;
        self->_averageQuantity = v10;
      }
    }
  }
}

- (id)minYValue
{
  v2 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_minQuantity _value];

  return [v2 numberWithDouble:?];
}

- (id)maxYValue
{
  v2 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_maxQuantity _value];

  return [v2 numberWithDouble:?];
}

+ (id)quantityTypeDataSourceValueWithCodableStatistics:(id)a3 sourceTimeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(HKQuantityTypeDataSourceValue);
    if ([v5 hasDataType])
    {
      v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:{objc_msgSend(v5, "dataType")}];
      [(HKQuantityTypeDataSourceValue *)v7 setQuantityType:v8];
    }

    if ([v5 hasStartDate])
    {
      [v5 startDate];
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      v10 = [v9 hk_dateFromSourceTimeZone:v6];
      [(HKQuantityTypeDataSourceValue *)v7 setStartDate:v10];
    }

    if ([v5 hasEndDate])
    {
      [v5 endDate];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      v12 = [v11 hk_dateFromSourceTimeZone:v6];
      [(HKQuantityTypeDataSourceValue *)v7 setEndDate:v12];
    }

    if ([v5 hasAverageQuantity])
    {
      v13 = MEMORY[0x1E696C348];
      v14 = [v5 averageQuantity];
      v15 = [v13 createWithCodableQuantity:v14];
      [(HKQuantityTypeDataSourceValue *)v7 setAverageQuantity:v15];
    }

    if ([v5 hasMinQuantity])
    {
      v16 = MEMORY[0x1E696C348];
      v17 = [v5 minQuantity];
      v18 = [v16 createWithCodableQuantity:v17];
      [(HKQuantityTypeDataSourceValue *)v7 setMinQuantity:v18];
    }

    if ([v5 hasMaxQuantity])
    {
      v19 = MEMORY[0x1E696C348];
      v20 = [v5 maxQuantity];
      v21 = [v19 createWithCodableQuantity:v20];
      [(HKQuantityTypeDataSourceValue *)v7 setMaxQuantity:v21];
    }

    if ([v5 hasMostRecentQuantity])
    {
      v22 = MEMORY[0x1E696C348];
      v23 = [v5 mostRecentQuantity];
      v24 = [v22 createWithCodableQuantity:v23];
      [(HKQuantityTypeDataSourceValue *)v7 setMostRecentQuantity:v24];
    }

    if ([v5 hasSumQuantity])
    {
      v25 = MEMORY[0x1E696C348];
      v26 = [v5 sumQuantity];
      v27 = [v25 createWithCodableQuantity:v26];
      [(HKQuantityTypeDataSourceValue *)v7 setSumQuantity:v27];
    }

    if ([v5 hasDurationQuantity])
    {
      v28 = MEMORY[0x1E696C348];
      v29 = [v5 durationQuantity];
      v30 = [v28 createWithCodableQuantity:v29];
      [(HKQuantityTypeDataSourceValue *)v7 setDurationQuantity:v30];
    }

    if ([v5 hasDataCount])
    {
      -[HKQuantityTypeDataSourceValue setRecordCount:](v7, "setRecordCount:", [v5 dataCount]);
    }

    if ([v5 hasStatisticsInterval])
    {
      v31 = MEMORY[0x1E695DF10];
      v32 = [v5 statisticsInterval];
      v33 = [v31 hkui_dateComponentsWithCodableDateComponents:v32];
      [(HKQuantityTypeDataSourceValue *)v7 setStatisticsInterval:v33];
    }

    if ([v5 hasBaselineRelativeValueState])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "baselineRelativeValueState")}];
      [(HKQuantityTypeDataSourceValue *)v7 setBaselineRelativeValueState:v34];
    }

    if ([v5 hasMetadata])
    {
      v35 = MEMORY[0x1E695DF20];
      v36 = [v5 metadata];
      v37 = [v35 dictionaryWithCodableMetadata:v36];
      [(HKQuantityTypeDataSourceValue *)v7 setMetadata:v37];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)codableStatistics
{
  v3 = objc_alloc_init(HKCodableStatistics);
  v4 = [(HKQuantityTypeDataSourceValue *)self quantityType];
  -[HKCodableStatistics setDataType:](v3, "setDataType:", [v4 code]);

  v5 = [(HKQuantityTypeDataSourceValue *)self startDate];
  [v5 timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v3 setStartDate:?];

  v6 = [(HKQuantityTypeDataSourceValue *)self endDate];
  [v6 timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v3 setEndDate:?];

  v7 = [(HKQuantityTypeDataSourceValue *)self averageQuantity];
  v8 = [v7 codableRepresentation];
  [(HKCodableStatistics *)v3 setAverageQuantity:v8];

  v9 = [(HKQuantityTypeDataSourceValue *)self minQuantity];
  v10 = [v9 codableRepresentation];
  [(HKCodableStatistics *)v3 setMinQuantity:v10];

  v11 = [(HKQuantityTypeDataSourceValue *)self maxQuantity];
  v12 = [v11 codableRepresentation];
  [(HKCodableStatistics *)v3 setMaxQuantity:v12];

  v13 = [(HKQuantityTypeDataSourceValue *)self mostRecentQuantity];
  v14 = [v13 codableRepresentation];
  [(HKCodableStatistics *)v3 setMostRecentQuantity:v14];

  v15 = [(HKQuantityTypeDataSourceValue *)self sumQuantity];
  v16 = [v15 codableRepresentation];
  [(HKCodableStatistics *)v3 setSumQuantity:v16];

  v17 = [(HKQuantityTypeDataSourceValue *)self durationQuantity];
  v18 = [v17 codableRepresentation];
  [(HKCodableStatistics *)v3 setDurationQuantity:v18];

  [(HKCodableStatistics *)v3 setDataCount:[(HKQuantityTypeDataSourceValue *)self recordCount]];
  v19 = [(HKQuantityTypeDataSourceValue *)self statisticsInterval];
  v20 = [v19 hkui_codableDateComponents];
  [(HKCodableStatistics *)v3 setStatisticsInterval:v20];

  v21 = [(HKQuantityTypeDataSourceValue *)self baselineRelativeValueState];
  v22 = v21;
  if (v21)
  {
    -[HKCodableStatistics setBaselineRelativeValueState:](v3, "setBaselineRelativeValueState:", [v21 integerValue]);
  }

  v23 = [(HKQuantityTypeDataSourceValue *)self metadata];

  if (v23)
  {
    v24 = objc_alloc_init(HKCodableMetadataDictionary);
    [(HKCodableStatistics *)v3 setMetadata:v24];

    v25 = [(HKQuantityTypeDataSourceValue *)self metadata];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__HKQuantityTypeDataSourceValue_HKCodingSupport__codableStatistics__block_invoke;
    v27[3] = &unk_1E81BC930;
    v28 = v3;
    [v25 enumerateKeysAndObjectsUsingBlock:v27];
  }

  return v3;
}

void __67__HKQuantityTypeDataSourceValue_HKCodingSupport__codableStatistics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKCodableMetadataKeyValuePair);
  [(HKCodableMetadataKeyValuePair *)v6 setKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HKCodableMetadataKeyValuePair *)v6 setStringValue:v8];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    -[HKCodableMetadataKeyValuePair setNumberIntValue:](v6, "setNumberIntValue:", [v8 intValue]);
  }

  v7 = [*(a1 + 32) metadata];
  [v7 addKeyValuePairs:v6];

LABEL_6:
}

@end