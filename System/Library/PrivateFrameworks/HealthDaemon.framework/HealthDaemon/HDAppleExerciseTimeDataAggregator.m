@interface HDAppleExerciseTimeDataAggregator
- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4;
@end

@implementation HDAppleExerciseTimeDataAggregator

- (id)dataObjectsFromSensorDatum:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 quantity];
  if (!v8)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"HDAppleExerciseTimeDataAggregator.m" lineNumber:37 description:@"Expected a quantity"];
  }

  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC920]];
  v10 = [v9 canonicalUnit];
  v11 = [v8 isCompatibleWithUnit:v10];

  if (v11)
  {
    v39 = v8;
    v12 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    v13 = [v7 dateInterval];
    v14 = [v13 startDate];
    v15 = [v12 hk_startOfMinuteForDate:v14 moduloMinutes:0 addingModuloCount:0];

    v16 = [v7 dateInterval];
    v17 = [v16 startDate];
    v40 = v7;
    v18 = [v7 dateInterval];
    v19 = [v18 endDate];
    v20 = [v12 components:64 fromDate:v17 toDate:v19 options:0];

    v38 = v20;
    v21 = [v20 minute];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = MEMORY[0x277CCD7E8];
    v24 = [MEMORY[0x277CCDAB0] minuteUnit];
    v25 = [v23 quantityWithUnit:v24 doubleValue:1.0];

    if (v21 >= 1)
    {
      v26 = 0;
      do
      {
        v27 = [v12 dateByAddingUnit:64 value:v26 toDate:v15 options:0];
        v28 = [v12 dateByAddingUnit:64 value:++v26 toDate:v15 options:0];
        v29 = [MEMORY[0x277CCD800] quantitySampleWithType:v9 quantity:v25 startDate:v27 endDate:v28];
        [v22 addObject:v29];
      }

      while (v21 != v26);
    }

    v8 = v39;
    v7 = v40;
  }

  else
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = [v9 canonicalUnit];
    [v30 hk_assignError:a4 code:3 format:{@"Invalid quantity type %@ (expected compatibility with %@)", v8, v31}];

    _HKInitializeLogging();
    v32 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v35 = v32;
      v36 = [v9 canonicalUnit];
      *buf = 138478083;
      v42 = v8;
      v43 = 2114;
      v44 = v36;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Rejecting datum of unexpected quantity type %{private}@ (expected compatibility with %{public}@)", buf, 0x16u);
    }

    v22 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v22;
}

@end