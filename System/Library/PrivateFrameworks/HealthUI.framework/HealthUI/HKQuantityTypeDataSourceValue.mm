@interface HKQuantityTypeDataSourceValue
+ (id)quantityTypeDataSourceValueWithCodableStatistics:(id)statistics sourceTimeZone:(id)zone;
- (id)codableStatistics;
- (id)maxYValue;
- (id)minYValue;
- (void)setBaselineRelativeValueState:(id)state;
@end

@implementation HKQuantityTypeDataSourceValue

- (void)setBaselineRelativeValueState:(id)state
{
  stateCopy = state;
  objc_storeStrong(&self->_baselineRelativeValueState, state);
  if (stateCopy)
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

    if ([stateCopy integerValue] != 3)
    {
      averageQuantity = self->_averageQuantity;
      if (averageQuantity)
      {
        v8 = MEMORY[0x1E696C348];
        _unit = [(HKQuantity *)averageQuantity _unit];
        v10 = [v8 quantityWithUnit:_unit doubleValue:0.0];
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

+ (id)quantityTypeDataSourceValueWithCodableStatistics:(id)statistics sourceTimeZone:(id)zone
{
  statisticsCopy = statistics;
  zoneCopy = zone;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(HKQuantityTypeDataSourceValue);
    if ([statisticsCopy hasDataType])
    {
      v8 = [MEMORY[0x1E696C2E0] dataTypeWithCode:{objc_msgSend(statisticsCopy, "dataType")}];
      [(HKQuantityTypeDataSourceValue *)v7 setQuantityType:v8];
    }

    if ([statisticsCopy hasStartDate])
    {
      [statisticsCopy startDate];
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      v10 = [v9 hk_dateFromSourceTimeZone:zoneCopy];
      [(HKQuantityTypeDataSourceValue *)v7 setStartDate:v10];
    }

    if ([statisticsCopy hasEndDate])
    {
      [statisticsCopy endDate];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      v12 = [v11 hk_dateFromSourceTimeZone:zoneCopy];
      [(HKQuantityTypeDataSourceValue *)v7 setEndDate:v12];
    }

    if ([statisticsCopy hasAverageQuantity])
    {
      v13 = MEMORY[0x1E696C348];
      averageQuantity = [statisticsCopy averageQuantity];
      v15 = [v13 createWithCodableQuantity:averageQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setAverageQuantity:v15];
    }

    if ([statisticsCopy hasMinQuantity])
    {
      v16 = MEMORY[0x1E696C348];
      minQuantity = [statisticsCopy minQuantity];
      v18 = [v16 createWithCodableQuantity:minQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setMinQuantity:v18];
    }

    if ([statisticsCopy hasMaxQuantity])
    {
      v19 = MEMORY[0x1E696C348];
      maxQuantity = [statisticsCopy maxQuantity];
      v21 = [v19 createWithCodableQuantity:maxQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setMaxQuantity:v21];
    }

    if ([statisticsCopy hasMostRecentQuantity])
    {
      v22 = MEMORY[0x1E696C348];
      mostRecentQuantity = [statisticsCopy mostRecentQuantity];
      v24 = [v22 createWithCodableQuantity:mostRecentQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setMostRecentQuantity:v24];
    }

    if ([statisticsCopy hasSumQuantity])
    {
      v25 = MEMORY[0x1E696C348];
      sumQuantity = [statisticsCopy sumQuantity];
      v27 = [v25 createWithCodableQuantity:sumQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setSumQuantity:v27];
    }

    if ([statisticsCopy hasDurationQuantity])
    {
      v28 = MEMORY[0x1E696C348];
      durationQuantity = [statisticsCopy durationQuantity];
      v30 = [v28 createWithCodableQuantity:durationQuantity];
      [(HKQuantityTypeDataSourceValue *)v7 setDurationQuantity:v30];
    }

    if ([statisticsCopy hasDataCount])
    {
      -[HKQuantityTypeDataSourceValue setRecordCount:](v7, "setRecordCount:", [statisticsCopy dataCount]);
    }

    if ([statisticsCopy hasStatisticsInterval])
    {
      v31 = MEMORY[0x1E695DF10];
      statisticsInterval = [statisticsCopy statisticsInterval];
      v33 = [v31 hkui_dateComponentsWithCodableDateComponents:statisticsInterval];
      [(HKQuantityTypeDataSourceValue *)v7 setStatisticsInterval:v33];
    }

    if ([statisticsCopy hasBaselineRelativeValueState])
    {
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(statisticsCopy, "baselineRelativeValueState")}];
      [(HKQuantityTypeDataSourceValue *)v7 setBaselineRelativeValueState:v34];
    }

    if ([statisticsCopy hasMetadata])
    {
      v35 = MEMORY[0x1E695DF20];
      metadata = [statisticsCopy metadata];
      v37 = [v35 dictionaryWithCodableMetadata:metadata];
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
  quantityType = [(HKQuantityTypeDataSourceValue *)self quantityType];
  -[HKCodableStatistics setDataType:](v3, "setDataType:", [quantityType code]);

  startDate = [(HKQuantityTypeDataSourceValue *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v3 setStartDate:?];

  endDate = [(HKQuantityTypeDataSourceValue *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HKCodableStatistics *)v3 setEndDate:?];

  averageQuantity = [(HKQuantityTypeDataSourceValue *)self averageQuantity];
  codableRepresentation = [averageQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setAverageQuantity:codableRepresentation];

  minQuantity = [(HKQuantityTypeDataSourceValue *)self minQuantity];
  codableRepresentation2 = [minQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setMinQuantity:codableRepresentation2];

  maxQuantity = [(HKQuantityTypeDataSourceValue *)self maxQuantity];
  codableRepresentation3 = [maxQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setMaxQuantity:codableRepresentation3];

  mostRecentQuantity = [(HKQuantityTypeDataSourceValue *)self mostRecentQuantity];
  codableRepresentation4 = [mostRecentQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setMostRecentQuantity:codableRepresentation4];

  sumQuantity = [(HKQuantityTypeDataSourceValue *)self sumQuantity];
  codableRepresentation5 = [sumQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setSumQuantity:codableRepresentation5];

  durationQuantity = [(HKQuantityTypeDataSourceValue *)self durationQuantity];
  codableRepresentation6 = [durationQuantity codableRepresentation];
  [(HKCodableStatistics *)v3 setDurationQuantity:codableRepresentation6];

  [(HKCodableStatistics *)v3 setDataCount:[(HKQuantityTypeDataSourceValue *)self recordCount]];
  statisticsInterval = [(HKQuantityTypeDataSourceValue *)self statisticsInterval];
  hkui_codableDateComponents = [statisticsInterval hkui_codableDateComponents];
  [(HKCodableStatistics *)v3 setStatisticsInterval:hkui_codableDateComponents];

  baselineRelativeValueState = [(HKQuantityTypeDataSourceValue *)self baselineRelativeValueState];
  v22 = baselineRelativeValueState;
  if (baselineRelativeValueState)
  {
    -[HKCodableStatistics setBaselineRelativeValueState:](v3, "setBaselineRelativeValueState:", [baselineRelativeValueState integerValue]);
  }

  metadata = [(HKQuantityTypeDataSourceValue *)self metadata];

  if (metadata)
  {
    v24 = objc_alloc_init(HKCodableMetadataDictionary);
    [(HKCodableStatistics *)v3 setMetadata:v24];

    metadata2 = [(HKQuantityTypeDataSourceValue *)self metadata];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__HKQuantityTypeDataSourceValue_HKCodingSupport__codableStatistics__block_invoke;
    v27[3] = &unk_1E81BC930;
    v28 = v3;
    [metadata2 enumerateKeysAndObjectsUsingBlock:v27];
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