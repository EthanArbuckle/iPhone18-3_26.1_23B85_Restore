@interface HKHRAFibBurdenAnalyzer
- (HKHRAFibBurdenAnalyzer)initWithClassificationRetriever:(id)a3 burdenDeterminer:(id)a4 tachogramClassifierFactory:(id)a5 majorityTimeZoneDeterminer:(id)a6 calendarCache:(id)a7 dateGenerator:(id)a8;
- (HKHRAFibBurdenAnalyzer)initWithProfile:(id)a3;
- (id)_generateDayOfWeekHistogramWithTachogramClassifier:(id)a3 error:(id *)a4;
- (id)_generateTimeOfDayHistogramWithTachogramClassifier:(id)a3 error:(id *)a4;
- (id)_julianDayToTimeZoneMappingForPastSixWeeksWithError:(id *)a3;
- (id)_logDayNameForWeekday:(int64_t)a3;
- (id)generateSevenDayBurdenWithRange:(id)a3 breadcrumbManager:(id)a4 error:(id *)a5;
- (id)generateSixWeekBurdenHistogramsWithError:(id *)a3;
@end

@implementation HKHRAFibBurdenAnalyzer

- (HKHRAFibBurdenAnalyzer)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CCCFE8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = HKHRAFibBurdenLogForCategory();
  v8 = [v6 initWithLoggingCategory:v7 healthDataSource:v5];

  v9 = [[BerylliumBurdenDeterminer alloc] initWithAnalyticsEventSubmissionManager:v8];
  v10 = objc_alloc_init(MEMORY[0x277CCD0A0]);
  v11 = [[HKHRAFibBurdenTachogramClassificationsRetriever alloc] initWithProfile:v5 calendarCache:v10];
  v12 = objc_alloc_init(HKHRAFibBurdenTachogramClassifierFactory);
  v13 = [[HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer alloc] initWithProfile:v5 calendarCache:v10];

  v14 = [(HKHRAFibBurdenAnalyzer *)self initWithClassificationRetriever:v11 burdenDeterminer:v9 tachogramClassifierFactory:v12 majorityTimeZoneDeterminer:v13 calendarCache:v10 dateGenerator:&__block_literal_global];
  return v14;
}

- (HKHRAFibBurdenAnalyzer)initWithClassificationRetriever:(id)a3 burdenDeterminer:(id)a4 tachogramClassifierFactory:(id)a5 majorityTimeZoneDeterminer:(id)a6 calendarCache:(id)a7 dateGenerator:(id)a8
{
  v25 = a3;
  v24 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = HKHRAFibBurdenAnalyzer;
  v19 = [(HKHRAFibBurdenAnalyzer *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_classificationRetriever, a3);
    objc_storeStrong(&v20->_burdenDeterminer, a4);
    objc_storeStrong(&v20->_tachogramClassifierFactory, a5);
    objc_storeStrong(&v20->_majorityTimeZoneDeterminer, a6);
    objc_storeStrong(&v20->_calendarCache, a7);
    v21 = MEMORY[0x22AACDB50](v18);
    dateGenerator = v20->_dateGenerator;
    v20->_dateGenerator = v21;
  }

  return v20;
}

- (id)generateSevenDayBurdenWithRange:(id)a3 breadcrumbManager:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [(HKHRAFibBurdenTachogramClassifierFactory *)self->_tachogramClassifierFactory createTachogramClassifier];
  classificationRetriever = self->_classificationRetriever;
  v20 = 0;
  v12 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)classificationRetriever tachogramClassificationsDayIndexRange:var0 tachogramClassifier:var1 error:v10, &v20];
  v13 = v20;
  if (v12)
  {
    [v9 dropBreadcrumb:4];
    v14 = [(HKHRAFibBurdenDeterminer *)self->_burdenDeterminer burdenForTachogramClassifications:v12 calculationType:0 calculationTypeContext:0 error:a5];
    if (v14)
    {
      goto LABEL_12;
    }

    v15 = @"Error determining burden";
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenAnalyzer generateSevenDayBurdenWithRange:breadcrumbManager:error:];
    }

    v17 = v13;
    if (v17)
    {
      if (a5)
      {
        v18 = v17;
        *a5 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
    v15 = @"Error classifying tachograms";
  }

  [v9 dropAnalysisResultBreadcrumbWithContext:v15];
LABEL_12:

  return v14;
}

- (id)generateSixWeekBurdenHistogramsWithError:(id *)a3
{
  v5 = [(HKHRAFibBurdenTachogramClassifierFactory *)self->_tachogramClassifierFactory createTachogramClassifier];
  v6 = [(HKHRAFibBurdenAnalyzer *)self _generateDayOfWeekHistogramWithTachogramClassifier:v5 error:a3];
  if (v6)
  {
    v7 = [(HKHRAFibBurdenAnalyzer *)self _generateTimeOfDayHistogramWithTachogramClassifier:v5 error:a3];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277D12F48]) initWithDayOfWeekHistogram:v6 timeOfDayHistogram:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_generateDayOfWeekHistogramWithTachogramClassifier:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v6 = HKHRAFibBurdenDayOfWeekHistogramOverride();
  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = self;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Using override for day of week histogram", buf, 0xCu);
    }

    v8 = v6;
    goto LABEL_47;
  }

  v32 = a4;
  v9 = 0;
  v33 = 0;
  v34 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v38 = 0;
  for (i = 1; i != 8; ++i)
  {
    v11 = objc_autoreleasePoolPush();
    classificationRetriever = self->_classificationRetriever;
    v42 = v9;
    v13 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)classificationRetriever tachogramClassificationsForLastSixWeeksOfWeekday:i tachogramClassifier:v37 error:&v42];
    v14 = v42;

    if (!v13)
    {
      _HKInitializeLogging();
      v13 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v30 = [(HKHRAFibBurdenAnalyzer *)self _logDayNameForWeekday:i];
        *buf = 138412802;
        v44 = self;
        v45 = 2112;
        v46 = v30;
        v47 = 2112;
        v48 = v14;
        _os_log_error_impl(&dword_229486000, v13, OS_LOG_TYPE_ERROR, "[%@] Error received while classifying tachograms for %@, aborting day of week histogram burden analysis: %@", buf, 0x20u);
      }

      v9 = v14;
LABEL_35:

      objc_autoreleasePoolPop(v11);
      if (v9)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }

    burdenDeterminer = self->_burdenDeterminer;
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    v41 = v14;
    v17 = [(HKHRAFibBurdenDeterminer *)burdenDeterminer burdenForTachogramClassifications:v13 calculationType:2 calculationTypeContext:v16 error:&v41];
    v9 = v41;

    if (!v17)
    {
      _HKInitializeLogging();
      v26 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v31 = [(HKHRAFibBurdenAnalyzer *)self _logDayNameForWeekday:i];
        *buf = 138412802;
        v44 = self;
        v45 = 2112;
        v46 = v31;
        v47 = 2112;
        v48 = v9;
        _os_log_error_impl(&dword_229486000, v26, OS_LOG_TYPE_ERROR, "[%@] Error received while determining burden for %@, aborting day of week histogram burden analysis: %@", buf, 0x20u);
      }

      goto LABEL_35;
    }

    if (i <= 3)
    {
      if (i == 1)
      {
        v18 = v34;
        v19 = v38;
        v20 = v39;
        v21 = v40;
        v34 = v17;
        goto LABEL_24;
      }

      if (i == 2)
      {
        v18 = v33;
        v19 = v38;
        v20 = v39;
        v21 = v40;
        v33 = v17;
        goto LABEL_24;
      }

      v20 = v39;
      v18 = v40;
      v19 = v38;
      v21 = v17;
      if (i == 3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (i <= 5)
      {
        if (i != 4)
        {
          v19 = v38;
          v18 = v39;
          v20 = v17;
          v21 = v40;
LABEL_24:
          v22 = v17;

          v38 = v19;
          v39 = v20;
          v40 = v21;
          goto LABEL_25;
        }

        v18 = v36;
        v19 = v38;
        v20 = v39;
        v36 = v17;
LABEL_22:
        v21 = v40;
        goto LABEL_24;
      }

      if (i == 6)
      {
        v18 = v35;
        v19 = v38;
        v20 = v39;
        v35 = v17;
        goto LABEL_22;
      }

      v18 = v38;
      v20 = v39;
      v19 = v17;
      v21 = v40;
      if (i == 7)
      {
        goto LABEL_24;
      }
    }

LABEL_25:

    objc_autoreleasePoolPop(v11);
  }

  if (v9)
  {
LABEL_27:
    v24 = v33;
    v23 = v34;
    if (v32)
    {
      v25 = v9;
      v8 = 0;
      *v32 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }

    goto LABEL_45;
  }

LABEL_36:
  v24 = v33;
  v23 = v34;
  if (v34 && v33 && v40 && v36 && v39 && v35 && v38)
  {
    v8 = [objc_alloc(MEMORY[0x277D12F30]) initWithSundayBurden:v34 mondayBurden:v33 tuesdayBurden:v40 wednesdayBurden:v36 thursdayBurden:v39 fridayBurden:v35 saturdayBurden:v38];
LABEL_45:
    v6 = 0;
    goto LABEL_46;
  }

  _HKInitializeLogging();
  v29 = HKHRAFibBurdenLogForCategory();
  v6 = 0;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    [HKHRAFibBurdenAnalyzer _generateDayOfWeekHistogramWithTachogramClassifier:v29 error:?];
  }

  v8 = 0;
LABEL_46:

LABEL_47:
  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_generateTimeOfDayHistogramWithTachogramClassifier:(id)a3 error:(id *)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v6 = HKHRAFibBurdenTimeOfDayHistogramOverride();
  if (!v6)
  {
    v65 = 0;
    v9 = [(HKHRAFibBurdenAnalyzer *)self _julianDayToTimeZoneMappingForPastSixWeeksWithError:&v65];
    v10 = v65;
    v11 = v10;
    v55 = v9;
    if (v9)
    {
      v61 = 0;
      v62 = v10;
      v54 = a4;
      v12 = 0;
      v13 = 0;
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v14 = 0;
      while (1)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v14 + 4;
        classificationRetriever = self->_classificationRetriever;
        v64 = v62;
        v18 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)classificationRetriever tachogramClassificationsForLastSixWeeksOfHoursFrom:v14 to:v14 + 4 julianDayToMajorityTimeZone:v55 tachogramClassifier:v56 error:&v64];
        v19 = v64;

        if (!v18)
        {
          break;
        }

        v20 = v14;
        v21 = v13;
        v22 = self;
        burdenDeterminer = self->_burdenDeterminer;
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
        v63 = v19;
        v25 = [(HKHRAFibBurdenDeterminer *)burdenDeterminer burdenForTachogramClassifications:v18 calculationType:1 calculationTypeContext:v24 error:&v63];
        v62 = v63;

        if (!v25)
        {
          _HKInitializeLogging();
          v43 = HKHRAFibBurdenLogForCategory();
          self = v22;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v67 = v22;
            v68 = 2048;
            v69 = v20;
            v70 = 2048;
            v71 = v20 + 4;
            v72 = 2112;
            v73 = v62;
            _os_log_error_impl(&dword_229486000, v43, OS_LOG_TYPE_ERROR, "[%@] Error received while determining burden between hours %ld and %ld, aborting day of week histogram burden analysis: %@", buf, 0x2Au);
          }

          v13 = v21;
          goto LABEL_57;
        }

        v26 = v25;
        v27 = v26;
        v29 = v57;
        v28 = v58;
        if (v12 == 4)
        {
          v30 = v58;
        }

        else
        {
          v30 = v57;
        }

        if (v12 == 4)
        {
          v31 = v57;
        }

        else
        {
          v31 = v26;
        }

        if (v12 == 4)
        {
          v32 = v26;
        }

        else
        {
          v32 = v58;
        }

        v34 = v59;
        v33 = v60;
        if (v12 == 3)
        {
          v30 = v59;
          v31 = v57;
          v32 = v58;
          v35 = v26;
        }

        else
        {
          v35 = v59;
        }

        v36 = v61;
        if (v12 == 1)
        {
          v37 = v61;
        }

        else
        {
          v37 = v60;
        }

        if (v12 == 1)
        {
          v38 = v60;
        }

        else
        {
          v38 = v27;
        }

        if (v12 == 1)
        {
          v39 = v27;
        }

        else
        {
          v39 = v61;
        }

        if (v12)
        {
          v40 = v21;
        }

        else
        {
          v37 = v21;
          v38 = v60;
          v39 = v61;
          v40 = v27;
        }

        if (v12 > 2)
        {
          v29 = v31;
          v28 = v32;
        }

        else
        {
          v30 = v37;
        }

        v57 = v29;
        v58 = v28;
        if (v12 <= 2)
        {
          v33 = v38;
        }

        else
        {
          v34 = v35;
        }

        v59 = v34;
        v60 = v33;
        if (v12 <= 2)
        {
          v36 = v39;
        }

        v61 = v36;
        if (v12 <= 2)
        {
          v13 = v40;
        }

        else
        {
          v13 = v21;
        }

        objc_autoreleasePoolPop(v15);
        ++v12;
        self = v22;
        v14 = v16;
        if ((v16 - 4) >= 0x14)
        {
          goto LABEL_58;
        }
      }

      _HKInitializeLogging();
      v18 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v67 = self;
        v68 = 2048;
        v69 = v14;
        v70 = 2048;
        v71 = v14 + 4;
        v72 = 2112;
        v73 = v19;
        _os_log_error_impl(&dword_229486000, v18, OS_LOG_TYPE_ERROR, "[%@] Error received while classifying tachograms between hours %ld and %ld, aborting time of day histogram burden analysis: %@", buf, 0x2Au);
      }

      v62 = v19;
LABEL_57:

      objc_autoreleasePoolPop(v15);
LABEL_58:
      v44 = v62;
      if (v62)
      {
        v46 = v57;
        v45 = v58;
        if (v54)
        {
          v47 = v62;
          v8 = 0;
          *v54 = v62;
        }

        else
        {
          _HKLogDroppedError();
          v8 = 0;
        }

        v6 = 0;
        v49 = v60;
        v48 = v61;
        v50 = v59;
      }

      else
      {
        v49 = v60;
        v48 = v61;
        v45 = v58;
        v50 = v59;
        v46 = v57;
        if (v13 && v61 && v60 && v59 && v58 && v57)
        {
          v8 = [objc_alloc(MEMORY[0x277D12F68]) initWithMidnightToFourAMBurden:v13 fourAMtoEightAMBurden:v61 eightAMToNoonBurden:v60 noonToFourPMBurden:v59 fourPMToEightPMBurden:v58 eightPMToMidnightBurden:v57];
          v6 = 0;
        }

        else
        {
          _HKInitializeLogging();
          v51 = HKHRAFibBurdenLogForCategory();
          v6 = 0;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            [HKHRAFibBurdenAnalyzer _generateDayOfWeekHistogramWithTachogramClassifier:v51 error:?];
          }

          v8 = 0;
        }
      }

      goto LABEL_77;
    }

    _HKInitializeLogging();
    v41 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenAnalyzer _generateTimeOfDayHistogramWithTachogramClassifier:error:];
    }

    v13 = v11;
    if (v13)
    {
      if (a4)
      {
        v42 = v13;
        v8 = 0;
        *a4 = v13;
LABEL_76:
        v44 = v13;
LABEL_77:

        goto LABEL_78;
      }

      _HKLogDroppedError();
    }

    v8 = 0;
    goto LABEL_76;
  }

  _HKInitializeLogging();
  v7 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = self;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Using override for time of day histogram", buf, 0xCu);
  }

  v8 = v6;
LABEL_78:

  v52 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_julianDayToTimeZoneMappingForPastSixWeeksWithError:(id *)a3
{
  v5 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v6 = (*(self->_dateGenerator + 2))();
  v7 = [v5 startOfDayForDate:v6];

  v8 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v9 = [v7 hk_dayIndexWithCalendar:v8];

  v10 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)self->_majorityTimeZoneDeterminer determineJulianDayToMajorityTimeZoneForRange:v9 - 42 error:42, a3];

  return v10;
}

- (id)_logDayNameForWeekday:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return @"Unknownday";
  }

  else
  {
    return off_27865F988[a3 - 1];
  }
}

- (void)generateSevenDayBurdenWithRange:breadcrumbManager:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error received while classifying tachograms, aborting seven day burden analysis: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_generateDayOfWeekHistogramWithTachogramClassifier:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%@] Expected to have all buckets filled in, at least one missing!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_generateTimeOfDayHistogramWithTachogramClassifier:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%@] Error received while determining julian day to majority time zone, aborting time of day histogram burden analysis: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end