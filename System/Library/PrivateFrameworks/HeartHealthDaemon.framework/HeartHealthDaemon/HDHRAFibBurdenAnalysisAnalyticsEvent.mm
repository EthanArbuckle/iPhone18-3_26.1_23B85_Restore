@interface HDHRAFibBurdenAnalysisAnalyticsEvent
- (HDHRAFibBurdenAnalysisAnalyticsEvent)initWithResult:(id)result calculationType:(int64_t)type calculationTypeDetails:(id)details numberOfTachograms:(int64_t)tachograms additionalPayloadFromAlgorithm:(id)algorithm;
- (id)_calculationTypeStringFromCalculationType:(int64_t)type;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketNumberOfTachogramsFrom:(int64_t)from;
@end

@implementation HDHRAFibBurdenAnalysisAnalyticsEvent

- (HDHRAFibBurdenAnalysisAnalyticsEvent)initWithResult:(id)result calculationType:(int64_t)type calculationTypeDetails:(id)details numberOfTachograms:(int64_t)tachograms additionalPayloadFromAlgorithm:(id)algorithm
{
  resultCopy = result;
  detailsCopy = details;
  algorithmCopy = algorithm;
  v19.receiver = self;
  v19.super_class = HDHRAFibBurdenAnalysisAnalyticsEvent;
  v16 = [(HDHRAFibBurdenAnalysisAnalyticsEvent *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_result, result);
    v17->_calculationType = type;
    objc_storeStrong(&v17->_calculationTypeDetails, details);
    v17->_numberOfTachograms = tachograms;
    objc_storeStrong(&v17->_additionalPayloadFromAlgorithm, algorithm);
  }

  return v17;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
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

  environmentDataSource = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource activePairedDeviceProductType];
  [v8 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDHRAFibBurdenAnalysisAnalyticsEvent _bucketNumberOfTachogramsFrom:](self, "_bucketNumberOfTachogramsFrom:", self->_numberOfTachograms)}];
  [v8 setObject:v13 forKeyedSubscript:@"numberOfAvailableTachograms"];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v17 = MEMORY[0x277CCABB0];
  environmentDataSource3 = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource3 currentDate];
  v20 = [v17 numberWithInteger:{objc_msgSend(currentCalendar, "component:fromDate:", 32, currentDate)}];
  [v8 setObject:v20 forKeyedSubscript:@"hourOfDay"];

  v21 = MEMORY[0x277CCABB0];
  environmentDataSource4 = [sourceCopy environmentDataSource];

  currentDate2 = [environmentDataSource4 currentDate];
  v24 = [v21 numberWithInteger:{objc_msgSend(currentCalendar, "component:fromDate:", 512, currentDate2)}];
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

- (int64_t)_bucketNumberOfTachogramsFrom:(int64_t)from
{
  if (!from)
  {
    return 0;
  }

  if (from < 11)
  {
    return 1;
  }

  if (from < 0x15)
  {
    return 11;
  }

  if (from < 0x1F)
  {
    return 21;
  }

  if (from < 0x29)
  {
    return 31;
  }

  if (from < 0x33)
  {
    return 41;
  }

  if (from < 0x4C)
  {
    return 51;
  }

  if (from < 0x65)
  {
    return 76;
  }

  if (from < 0x97)
  {
    return 101;
  }

  if (from < 0xC9)
  {
    return 151;
  }

  if (from < 0xFB)
  {
    return 201;
  }

  if (from < 0x12D)
  {
    return 251;
  }

  if (from < 0x191)
  {
    return 301;
  }

  if (from < 0x1F5)
  {
    return 401;
  }

  if (from < 0x259)
  {
    return 501;
  }

  if (from >= 0x2BD)
  {
    return 701;
  }

  return 601;
}

- (id)_calculationTypeStringFromCalculationType:(int64_t)type
{
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_27865FB38[type];
  }
}

@end