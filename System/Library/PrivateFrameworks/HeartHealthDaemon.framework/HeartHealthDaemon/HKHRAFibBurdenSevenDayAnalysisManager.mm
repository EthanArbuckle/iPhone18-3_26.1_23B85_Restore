@interface HKHRAFibBurdenSevenDayAnalysisManager
- ($0AC6E346AE4835514AAA8AC86D8F4844)_determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:(id)date;
- (BOOL)_isDayOneDayAfterCalendarWeekWithCurrentDate:(id)date;
- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)profile analyzer:(id)analyzer;
- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)profile modeDeterminer:(id)determiner analyzer:(id)analyzer calendarCache:(id)cache dateGenerator:(id)generator;
- (id)_createBurdenSampleWithPercentage:(double)percentage burdenPercentageWasClampedToLowerBound:(BOOL)bound range:(id)range shouldSaveSampleToDatabase:(BOOL)database error:(id *)error;
- (id)analyzePreviousCalendarWeekWithFeatureStatus:(id)status shouldSaveSampleToDatabase:(BOOL)database breadcrumbManager:(id)manager error:(id *)error;
@end

@implementation HKHRAFibBurdenSevenDayAnalysisManager

- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)profile analyzer:(id)analyzer
{
  v6 = MEMORY[0x277CCD0A0];
  analyzerCopy = analyzer;
  profileCopy = profile;
  v9 = objc_alloc_init(v6);
  v10 = [[HKHRAFibBurdenSevenDayAnalysisModeDeterminer alloc] initWithProfile:profileCopy calendarCache:v9];
  v11 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self initWithProfile:profileCopy modeDeterminer:v10 analyzer:analyzerCopy calendarCache:v9 dateGenerator:&__block_literal_global_20];

  return v11;
}

- (HKHRAFibBurdenSevenDayAnalysisManager)initWithProfile:(id)profile modeDeterminer:(id)determiner analyzer:(id)analyzer calendarCache:(id)cache dateGenerator:(id)generator
{
  profileCopy = profile;
  determinerCopy = determiner;
  analyzerCopy = analyzer;
  cacheCopy = cache;
  generatorCopy = generator;
  v22.receiver = self;
  v22.super_class = HKHRAFibBurdenSevenDayAnalysisManager;
  v17 = [(HKHRAFibBurdenSevenDayAnalysisManager *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    objc_storeStrong(&v18->_modeDeterminer, determiner);
    objc_storeStrong(&v18->_analyzer, analyzer);
    objc_storeStrong(&v18->_calendarCache, cache);
    v19 = MEMORY[0x22AACDB50](generatorCopy);
    dateGenerator = v18->_dateGenerator;
    v18->_dateGenerator = v19;
  }

  return v18;
}

- (id)analyzePreviousCalendarWeekWithFeatureStatus:(id)status shouldSaveSampleToDatabase:(BOOL)database breadcrumbManager:(id)manager error:(id *)error
{
  databaseCopy = database;
  v59 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dateGenerator = self->_dateGenerator;
  v12 = dateGenerator[2];
  statusCopy = status;
  v14 = v12(dateGenerator);
  v15 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self _determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:v14];
  v17 = v16;
  modeDeterminer = self->_modeDeterminer;
  v54 = 0;
  v19 = [(HKHRAFibBurdenSevenDayAnalysisModeDeterminer *)modeDeterminer determineModeForAnalysisWeekRange:v15 featureStatus:v16 error:statusCopy, &v54];

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
      if (error)
      {
        v27 = v20;
        *error = v20;
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

  v51 = databaseCopy;
  integerValue = [v19 integerValue];
  _HKInitializeLogging();
  v22 = HKHRAFibBurdenLogForCategory();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (integerValue == 2)
  {
    if (v23)
    {
      *buf = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Mode determination indicated we should not perform analysis, skipping.", buf, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x277D12F60]);
    v25 = 2;
LABEL_28:
    v38 = [v24 initWithResult:v25 sample:0 onboardedWithinAnalysisInterval:0];
    goto LABEL_48;
  }

  v50 = integerValue;
  if (v23)
  {
    v28 = NSStringFromHKDayIndexRange();
    *buf = 138412546;
    selfCopy4 = self;
    v57 = 2112;
    v58 = v28;
    _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Performing analysis for day index range: %@", buf, 0x16u);
  }

  [managerCopy dropBreadcrumb:3];
  analyzer = self->_analyzer;
  v53 = v20;
  v30 = [(HKHRAFibBurdenAnalyzer *)analyzer generateSevenDayBurdenWithRange:v15 breadcrumbManager:v17 error:managerCopy, &v53];
  v31 = v53;

  [managerCopy dropBreadcrumb:5];
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
      if (error)
      {
        v37 = v20;
        *error = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v38 = [objc_alloc(MEMORY[0x277D12F60]) initWithResult:1 sample:0 onboardedWithinAnalysisInterval:0];
    goto LABEL_47;
  }

  unavailabilityReason = [v30 unavailabilityReason];
  if (unavailabilityReason > 1)
  {
    if (unavailabilityReason == 2)
    {
      v33 = 0;
      v34 = 4;
      v20 = v31;
      v35 = @"Not enough days with minimum number tachograms";
      goto LABEL_46;
    }

    if (unavailabilityReason == 3)
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

  if (!unavailabilityReason)
  {
    burdenPercentage = [v30 burdenPercentage];
    [burdenPercentage doubleValue];
    v41 = v40;
    burdenPercentageWasClampedToLowerBound = [v30 burdenPercentageWasClampedToLowerBound];
    v52 = v31;
    v33 = [(HKHRAFibBurdenSevenDayAnalysisManager *)self _createBurdenSampleWithPercentage:burdenPercentageWasClampedToLowerBound burdenPercentageWasClampedToLowerBound:v15 range:v17 shouldSaveSampleToDatabase:v51 error:&v52, v41];
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
        selfCopy4 = self;
        v46 = "[%@] Saved sample to HealthKit";
LABEL_44:
        _os_log_impl(&dword_229486000, v44, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
      }
    }

    else if (v45)
    {
      *buf = 138412290;
      selfCopy4 = self;
      v46 = "[%@] Sample created but not saved";
      goto LABEL_44;
    }

    v34 = 0;
    v35 = @"Sample created";
    goto LABEL_46;
  }

  if (unavailabilityReason != 1)
  {
    goto LABEL_29;
  }

  v33 = 0;
  v34 = 3;
  v20 = v31;
  v35 = @"Not enough total tachograms";
LABEL_46:
  [managerCopy dropAnalysisResultBreadcrumbWithContext:v35];
  v38 = [objc_alloc(MEMORY[0x277D12F60]) initWithResult:v34 sample:v33 onboardedWithinAnalysisInterval:v50 == 1];

LABEL_47:
LABEL_48:

  v47 = *MEMORY[0x277D85DE8];

  return v38;
}

- (BOOL)_isDayOneDayAfterCalendarWeekWithCurrentDate:(id)date
{
  calendarCache = self->_calendarCache;
  dateCopy = date;
  currentCalendar = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = [currentCalendar component:512 fromDate:dateCopy];

  LOBYTE(dateCopy) = v6 == *MEMORY[0x277D12EC0];
  return dateCopy;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_determineDayIndexRangeForPreviousCalendarWeekWithCurrentDate:(id)date
{
  calendarCache = self->_calendarCache;
  dateCopy = date;
  currentCalendar = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = HKHRAFibBurdenPreviousWeekDayIndexRange();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (id)_createBurdenSampleWithPercentage:(double)percentage burdenPercentageWasClampedToLowerBound:(BOOL)bound range:(id)range shouldSaveSampleToDatabase:(BOOL)database error:(id *)error
{
  databaseCopy = database;
  var1 = range.var1;
  var0 = range.var0;
  v48[1] = *MEMORY[0x277D85DE8];
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v13 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:var0 atHour:0 calendar:currentCalendar];
  v14 = var0 + var1;
  v15 = v13;
  v16 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v14 atHour:0 calendar:currentCalendar];
  v17 = MEMORY[0x277CCD7E8];
  percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
  v19 = v17;
  errorCopy = error;
  v21 = [v19 quantityWithUnit:percentUnit doubleValue:percentage];

  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v23 = HKHRAFibBurdenSevenDayAnalysisMetadataWithTimeZoneAndWasClamped();

  v24 = MEMORY[0x277CCD800];
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  localDevice = [MEMORY[0x277CCD2E8] localDevice];
  v47 = v21;
  v27 = [v24 quantitySampleWithType:v25 quantity:v21 startDate:v15 endDate:v16 device:localDevice metadata:v23];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceManager = [WeakRetained deviceManager];
  v30 = [deviceManager currentDeviceEntityWithError:errorCopy];

  if (v30)
  {
    v45 = v16;
    v31 = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [v31 dataProvenanceManager];
    v33 = [dataProvenanceManager defaultLocalDataProvenanceWithDeviceEntity:v30];

    v34 = v27;
    if (databaseCopy)
    {
      v35 = objc_loadWeakRetained(&self->_profile);
      dataManager = [v35 dataManager];
      v48[0] = v27;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
      v38 = [dataManager insertDataObjects:v37 withProvenance:v33 creationDate:errorCopy error:CFAbsoluteTimeGetCurrent()];
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