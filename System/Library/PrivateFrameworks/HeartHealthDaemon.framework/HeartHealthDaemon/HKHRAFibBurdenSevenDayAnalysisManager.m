@interface HKHRAFibBurdenSevenDayAnalysisManager
- ($0AC6E346AE4835514AAA8AC86D8F4844)_determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:(id)a3;
- (BOOL)_isDayOneDayAfterCalendarWeekWithCurrentDate:(id)a3;
- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)a3 analyzer:(id)a4;
- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)a3 modeDeterminer:(id)a4 analyzer:(id)a5 calendarCache:(id)a6 dateGenerator:(id)a7;
- (id)_createBurdenSampleWithPercentage:(double)a3 burdenPercentageWasClampedToLowerBound:(BOOL)a4 range:(id)a5 shouldSaveSampleToDatabase:(BOOL)a6 error:(id *)a7;
- (id)analyzePreviousCalendarWeekWithFeatureStatus:(id)a3 shouldSaveSampleToDatabase:(BOOL)a4 breadcrumbManager:(id)a5 error:(id *)a6;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisManager

- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)a3 analyzer:(id)a4
{
  v6 = MEMORY[0x277CCD0A0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [[HKHRAFibBurdenSevenDayAnalysisModeDeterminer alloc] initWithProfile:v8 calendarCache:v9];
  v11 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self initWithProfile:v8 modeDeterminer:v10 analyzer:v7 calendarCache:v9 dateGenerator:&__block_literal_global_20];

  return v11;
}

- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)a3 modeDeterminer:(id)a4 analyzer:(id)a5 calendarCache:(id)a6 dateGenerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HKHRAFibBurdenSevenDayAnalysisManager;
  v17 = [(HKHRAFibBurdenSevenDayAnalysisManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, v12);
    objc_storeStrong(&v18->_modeDeterminer, a4);
    objc_storeStrong(&v18->_analyzer, a5);
    objc_storeStrong(&v18->_calendarCache, a6);
    v19 = MEMORY[0x22AACDB50](v16);
    dateGenerator = v18->_dateGenerator;
    v18->_dateGenerator = v19;
  }

  return v18;
}

- (id)analyzePreviousCalendarWeekWithFeatureStatus:(id)a3 shouldSaveSampleToDatabase:(BOOL)a4 breadcrumbManager:(id)a5 error:(id *)a6
{
  v7 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v10 = a5;
  dateGenerator = self->_dateGenerator;
  v12 = dateGenerator[2];
  v13 = a3;
  v14 = v12(dateGenerator);
  v15 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self _determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:v14];
  v17 = v16;
  modeDeterminer = self->_modeDeterminer;
  v54 = 0;
  v19 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)modeDeterminer determineModeForAnalysisWeekRange:v15 featureStatus:v16 error:v13, &v54];

  v20 = v54;
  if (!v19)
  {
    _HKInitializeLogging();
    v26 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenSevenDayAnalysisManager analyzePreviousCalendarWeekWithFeatureStatus:v20 shouldSaveSampleToDatabase:v26 breadcrumbManager:? error:?];
    }

    v20 = v20;
    if (v20)
    {
      if (a6)
      {
        v27 = v20;
        *a6 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v24 = objc_alloc(MEMORY[0x277D12F60]);
    v25 = 1;
    goto LABEL_28;
  }

  v51 = v7;
  v21 = [v19 integerValue];
  _HKInitializeLogging();
  v22 = HKHRAFibBurdenLogForCategory();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21 == 2)
  {
    if (v23)
    {
      *buf = 138543362;
      v56 = self;
      _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mode determination indicated we should not perform analysis, skipping.", buf, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x277D12F60]);
    v25 = 2;
LABEL_28:
    v38 = [v24 initWithResult:v25 sample:0 onboardedWithinAnalysisInterval:0];
    goto LABEL_48;
  }

  v50 = v21;
  if (v23)
  {
    v28 = NSStringFromHKDayIndexRange();
    *buf = 138412546;
    v56 = self;
    v57 = 2112;
    v58 = v28;
    _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Performing analysis for day index range: %@", buf, 0x16u);
  }

  [v10 dropBreadcrumb:3];
  analyzer = self->_analyzer;
  v53 = v20;
  v30 = [(HKHRAFibBurdenAnalyzer *)analyzer generateSevenDayBurdenWithRange:v15 breadcrumbManager:v17 error:v10, &v53];
  v31 = v53;

  [v10 dropBreadcrumb:5];
  if (!v30)
  {
    _HKInitializeLogging();
    v36 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenSevenDayAnalysisManager analyzePreviousCalendarWeekWithFeatureStatus:shouldSaveSampleToDatabase:breadcrumbManager:error:];
    }

    v20 = v31;
    if (v20)
    {
      if (a6)
      {
        v37 = v20;
        *a6 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v38 = [objc_alloc(MEMORY[0x277D12F60]) initWithResult:1 sample:0 onboardedWithinAnalysisInterval:0];
    goto LABEL_47;
  }

  v32 = [v30 unavailabilityReason];
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v33 = 0;
      v34 = 4;
      v20 = v31;
      v35 = @"Not enough days with minimum number tachograms";
      goto LABEL_46;
    }

    if (v32 == 3)
    {
      v33 = 0;
      v34 = 5;
      v20 = v31;
      v35 = @"Not enough segments";
      goto LABEL_46;
    }

LABEL_29:
    _HKInitializeLogging();
    v39 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      [HKHRAFibBurdenSevenDayAnalysisManager analyzePreviousCalendarWeekWithFeatureStatus:v30 shouldSaveSampleToDatabase:v39 breadcrumbManager:? error:?];
    }

    v33 = 0;
    v34 = 1;
    v20 = v31;
    v35 = @"Received unexpected unavailability reason";
    goto LABEL_46;
  }

  if (!v32)
  {
    v49 = [v30 burdenPercentage];
    [v49 doubleValue];
    v41 = v40;
    v42 = [v30 burdenPercentageWasClampedToLowerBound];
    v52 = v31;
    v33 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self _createBurdenSampleWithPercentage:v42 burdenPercentageWasClampedToLowerBound:v15 range:v17 shouldSaveSampleToDatabase:v51 error:&v52, v41];
    v20 = v52;

    _HKInitializeLogging();
    v43 = HKHRAFibBurdenLogForCategory();
    v44 = v43;
    if (!v33)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [HKHRAFibBurdenSevenDayAnalysisManager analyzePreviousCalendarWeekWithFeatureStatus:shouldSaveSampleToDatabase:breadcrumbManager:error:];
      }

      v33 = 0;
      v35 = @"Error saving sample to HealthKit";
      v34 = 1;
      goto LABEL_46;
    }

    v45 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      if (v45)
      {
        *buf = 138412290;
        v56 = self;
        v46 = "[%@] Saved sample to HealthKit";
LABEL_44:
        _os_log_impl(&dword_229486000, v44, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
      }
    }

    else if (v45)
    {
      *buf = 138412290;
      v56 = self;
      v46 = "[%@] Sample created but not saved";
      goto LABEL_44;
    }

    v34 = 0;
    v35 = @"Sample created";
    goto LABEL_46;
  }

  if (v32 != 1)
  {
    goto LABEL_29;
  }

  v33 = 0;
  v34 = 3;
  v20 = v31;
  v35 = @"Not enough total tachograms";
LABEL_46:
  [v10 dropAnalysisResultBreadcrumbWithContext:v35];
  v38 = [objc_alloc(MEMORY[0x277D12F60]) initWithResult:v34 sample:v33 onboardedWithinAnalysisInterval:v50 == 1];

LABEL_47:
LABEL_48:

  v47 = *MEMORY[0x277D85DE8];

  return v38;
}

- (BOOL)_isDayOneDayAfterCalendarWeekWithCurrentDate:(id)a3
{
  calendarCache = self->_calendarCache;
  v4 = a3;
  v5 = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = [v5 component:512 fromDate:v4];

  LOBYTE(v4) = v6 == *MEMORY[0x277D12EC0];
  return v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:(id)a3
{
  calendarCache = self->_calendarCache;
  v4 = a3;
  v5 = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = HKHRAFibBurdenPreviousWeekDayIndexRange();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)_createBurdenSampleWithPercentage:(double)a3 burdenPercentageWasClampedToLowerBound:(BOOL)a4 range:(id)a5 shouldSaveSampleToDatabase:(BOOL)a6 error:(id *)a7
{
  v46 = a6;
  var1 = a5.var1;
  var0 = a5.var0;
  v48[1] = *MEMORY[0x277D85DE8];
  v12 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v13 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:var0 atHour:0 calendar:v12];
  v14 = var0 + var1;
  v15 = v13;
  v16 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v14 atHour:0 calendar:v12];
  v17 = MEMORY[0x277CCD7E8];
  v18 = [MEMORY[0x277CCDAB0] percentUnit];
  v19 = v17;
  v20 = a7;
  v21 = [v19 quantityWithUnit:v18 doubleValue:a3];

  v22 = [MEMORY[0x277CBEBB0] localTimeZone];
  v23 = HKHRAFibBurdenSevenDayAnalysisMetadataWithTimeZoneAndWasClamped();

  v24 = MEMORY[0x277CCD800];
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v26 = [MEMORY[0x277CCD2E8] localDevice];
  v47 = v21;
  v27 = [v24 quantitySampleWithType:v25 quantity:v21 startDate:v15 endDate:v16 device:v26 metadata:v23];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v29 = [WeakRetained deviceManager];
  v30 = [v29 currentDeviceEntityWithError:v20];

  if (v30)
  {
    v45 = v16;
    v31 = objc_loadWeakRetained(&self->_profile);
    v32 = [v31 dataProvenanceManager];
    v33 = [v32 defaultLocalDataProvenanceWithDeviceEntity:v30];

    v34 = v27;
    if (v46)
    {
      v35 = objc_loadWeakRetained(&self->_profile);
      v36 = [v35 dataManager];
      v48[0] = v27;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      v38 = [v36 insertDataObjects:v37 withProvenance:v33 creationDate:v20 error:CFAbsoluteTimeGetCurrent()];
      v39 = v15;
      v40 = v38;

      v41 = v40 == 0;
      v15 = v39;
      if (v41)
      {
        v34 = 0;
      }

      else
      {
        v34 = v27;
      }
    }

    v42 = v34;

    v16 = v45;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)analyzePreviousCalendarWeekWithFeatureStatus:shouldSaveSampleToDatabase:breadcrumbManager:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error saving sample to HealthKit: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)analyzePreviousCalendarWeekWithFeatureStatus:(NSObject *)a3 shouldSaveSampleToDatabase:breadcrumbManager:error:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 unavailabilityReason];
  _os_log_fault_impl(&dword_229486000, a3, OS_LOG_TYPE_FAULT, "[%@] Received unexpected unavailability reason: %ld", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)analyzePreviousCalendarWeekWithFeatureStatus:shouldSaveSampleToDatabase:breadcrumbManager:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error received when performing burden analysis: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)analyzePreviousCalendarWeekWithFeatureStatus:(NSObject *)a3 shouldSaveSampleToDatabase:breadcrumbManager:error:.cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%{public}@] Error received when determining analysis mode: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end