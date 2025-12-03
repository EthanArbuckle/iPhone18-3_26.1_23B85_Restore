@interface HDAppleExerciseTimeDataAggregator
- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error;
@end

@implementation HDAppleExerciseTimeDataAggregator

- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  quantity = [datumCopy quantity];
  if (!quantity)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAppleExerciseTimeDataAggregator.m" lineNumber:37 description:@"Expected a quantity"];
  }

  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC920]];
  canonicalUnit = [v9 canonicalUnit];
  v11 = [quantity isCompatibleWithUnit:canonicalUnit];

  if (v11)
  {
    v39 = quantity;
    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    dateInterval = [datumCopy dateInterval];
    startDate = [dateInterval startDate];
    v15 = [hk_gregorianCalendarWithUTCTimeZone hk_startOfMinuteForDate:startDate moduloMinutes:0 addingModuloCount:0];

    dateInterval2 = [datumCopy dateInterval];
    startDate2 = [dateInterval2 startDate];
    v40 = datumCopy;
    dateInterval3 = [datumCopy dateInterval];
    endDate = [dateInterval3 endDate];
    v20 = [hk_gregorianCalendarWithUTCTimeZone components:64 fromDate:startDate2 toDate:endDate options:0];

    v38 = v20;
    minute = [v20 minute];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = MEMORY[0x277CCD7E8];
    minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
    v25 = [v23 quantityWithUnit:minuteUnit doubleValue:1.0];

    if (minute >= 1)
    {
      v26 = 0;
      do
      {
        v27 = [hk_gregorianCalendarWithUTCTimeZone dateByAddingUnit:64 value:v26 toDate:v15 options:0];
        v28 = [hk_gregorianCalendarWithUTCTimeZone dateByAddingUnit:64 value:++v26 toDate:v15 options:0];
        v29 = [MEMORY[0x277CCD800] quantitySampleWithType:v9 quantity:v25 startDate:v27 endDate:v28];
        [v22 addObject:v29];
      }

      while (minute != v26);
    }

    quantity = v39;
    datumCopy = v40;
  }

  else
  {
    v30 = MEMORY[0x277CCA9B8];
    canonicalUnit2 = [v9 canonicalUnit];
    [v30 hk_assignError:error code:3 format:{@"Invalid quantity type %@ (expected compatibility with %@)", quantity, canonicalUnit2}];

    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v35 = v32;
      canonicalUnit3 = [v9 canonicalUnit];
      *buf = 138478083;
      v42 = quantity;
      v43 = 2114;
      v44 = canonicalUnit3;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Rejecting datum of unexpected quantity type %{private}@ (expected compatibility with %{public}@)", buf, 0x16u);
    }

    v22 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v22;
}

@end