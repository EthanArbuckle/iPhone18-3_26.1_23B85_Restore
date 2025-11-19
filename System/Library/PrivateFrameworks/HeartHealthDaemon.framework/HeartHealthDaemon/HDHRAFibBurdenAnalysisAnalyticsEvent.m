@interface HDHRAFibBurdenAnalysisAnalyticsEvent
- (HDHRAFibBurdenAnalysisAnalyticsEvent)initWithResult:(id)a3 calculationType:(int64_t)a4 calculationTypeDetails:(id)a5 numberOfTachograms:(int64_t)a6 additionalPayloadFromAlgorithm:(id)a7;
- (id)_calculationTypeStringFromCalculationType:(int64_t)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_bucketNumberOfTachogramsFrom:(int64_t)a3;
@end

@implementation HDHRAFibBurdenAnalysisAnalyticsEvent

- (HDHRAFibBurdenAnalysisAnalyticsEvent)initWithResult:(id)a3 calculationType:(int64_t)a4 calculationTypeDetails:(id)a5 numberOfTachograms:(int64_t)a6 additionalPayloadFromAlgorithm:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HDHRAFibBurdenAnalysisAnalyticsEvent;
  v16 = [(HDHRAFibBurdenAnalysisAnalyticsEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_result, a3);
    v17->_calculationType = a4;
    objc_storeStrong(&v17->_calculationTypeDetails, a5);
    v17->_numberOfTachograms = a6;
    objc_storeStrong(&v17->_additionalPayloadFromAlgorithm, a7);
  }

  return v17;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = v7;
  if (self->_result)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"success"];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[HKHRAFibBurdenAnalysisResult unavailabilityReason](self->_result, "unavailabilityReason") == 0}];
    [v8 setObject:v9 forKeyedSubscript:@"sufficientData"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKHRAFibBurdenAnalysisResult burdenPercentageWasClampedToLowerBound](self->_result, "burdenPercentageWasClampedToLowerBound")}];
    [v8 setObject:v10 forKeyedSubscript:@"wasClamped"];
  }

  else
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  }

  v11 = [v6 environmentDataSource];
  v12 = [v11 activePairedDeviceProductType];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenAnalysisAnalyticsEvent _bucketNumberOfTachogramsFrom:](self, "_bucketNumberOfTachogramsFrom:", self->_numberOfTachograms)}];
  [v8 setObject:v13 forKeyedSubscript:@"numberOfAvailableTachograms"];

  v14 = [v6 environmentDataSource];
  v15 = [v14 calendarCache];
  v16 = [v15 currentCalendar];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v6 environmentDataSource];
  v19 = [v18 currentDate];
  v20 = [v17 numberWithInteger:{objc_msgSend(v16, "component:fromDate:", 32, v19)}];
  [v8 setObject:v20 forKeyedSubscript:@"hourOfDay"];

  v21 = MEMORY[0x277CCABB0];
  v22 = [v6 environmentDataSource];

  v23 = [v22 currentDate];
  v24 = [v21 numberWithInteger:{objc_msgSend(v16, "component:fromDate:", 512, v23)}];
  [v8 setObject:v24 forKeyedSubscript:@"dayOfWeek"];

  v25 = [(HDHRAFibBurdenAnalysisAnalyticsEvent *)self _calculationTypeStringFromCalculationType:self->_calculationType];
  [v8 setObject:v25 forKeyedSubscript:@"calculationType"];

  calculationTypeDetails = self->_calculationTypeDetails;
  if (calculationTypeDetails)
  {
    [v8 setObject:calculationTypeDetails forKeyedSubscript:@"calculationTypeDetails"];
  }

  if (self->_additionalPayloadFromAlgorithm)
  {
    [v8 addEntriesFromDictionary:?];
  }

  v27 = [v8 copy];

  return v27;
}

- (int64_t)_bucketNumberOfTachogramsFrom:(int64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 11)
  {
    return 1;
  }

  if (a3 < 0x15)
  {
    return 11;
  }

  if (a3 < 0x1F)
  {
    return 21;
  }

  if (a3 < 0x29)
  {
    return 31;
  }

  if (a3 < 0x33)
  {
    return 41;
  }

  if (a3 < 0x4C)
  {
    return 51;
  }

  if (a3 < 0x65)
  {
    return 76;
  }

  if (a3 < 0x97)
  {
    return 101;
  }

  if (a3 < 0xC9)
  {
    return 151;
  }

  if (a3 < 0xFB)
  {
    return 201;
  }

  if (a3 < 0x12D)
  {
    return 251;
  }

  if (a3 < 0x191)
  {
    return 301;
  }

  if (a3 < 0x1F5)
  {
    return 401;
  }

  if (a3 < 0x259)
  {
    return 501;
  }

  if (a3 >= 0x2BD)
  {
    return 701;
  }

  return 601;
}

- (id)_calculationTypeStringFromCalculationType:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_27865FB38[a3];
  }
}

@end