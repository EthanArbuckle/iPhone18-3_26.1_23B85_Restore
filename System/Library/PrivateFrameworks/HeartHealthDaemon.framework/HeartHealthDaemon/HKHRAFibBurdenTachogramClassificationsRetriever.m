@interface HKHRAFibBurdenTachogramClassificationsRetriever
- (BOOL)_shouldAnalyzeSample:(id)a3;
- (HKHRAFibBurdenTachogramClassificationsRetriever)initWithProfile:(id)a3 dateGenerator:(id)a4 calendarCache:(id)a5;
- (id)_tachogramClassificationsWithPredicate:(id)a3 tachogramClassifier:(id)a4 error:(id *)a5 dayIndexBlock:(id)a6 filterBlock:(id)a7;
- (id)_totalDatePredicateForStartDayIndex:(int64_t)a3 endDayIndex:(int64_t)a4;
- (id)tachogramClassificationsDayIndexRange:(id)a3 tachogramClassifier:(id)a4 error:(id *)a5;
- (id)tachogramClassificationsForLastSixWeeksOfHoursFrom:(int64_t)a3 to:(int64_t)a4 julianDayToMajorityTimeZone:(id)a5 tachogramClassifier:(id)a6 error:(id *)a7;
- (id)tachogramClassificationsForLastSixWeeksOfWeekday:(int64_t)a3 tachogramClassifier:(id)a4 error:(id *)a5;
@end

@implementation HKHRAFibBurdenTachogramClassificationsRetriever

- (HKHRAFibBurdenTachogramClassificationsRetriever)initWithProfile:(id)a3 dateGenerator:(id)a4 calendarCache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HKHRAFibBurdenTachogramClassificationsRetriever;
  v11 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    v13 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    seriesType = v12->_seriesType;
    v12->_seriesType = v13;

    objc_storeStrong(&v12->_calendarCache, a5);
    v15 = MEMORY[0x22AACDB50](v9);
    dateGenerator = v12->_dateGenerator;
    v12->_dateGenerator = v15;
  }

  return v12;
}

- (id)tachogramClassificationsDayIndexRange:(id)a3 tachogramClassifier:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)self _totalDatePredicateForStartDayIndex:var0 endDayIndex:var0 + var1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __115__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsDayIndexRange_tachogramClassifier_error___block_invoke;
  v14[3] = &unk_278660600;
  v14[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __115__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsDayIndexRange_tachogramClassifier_error___block_invoke_2;
  v13[3] = &__block_descriptor_48_e40_q32__0__HKHeartbeatSeriesSample_8q16__24l;
  v13[4] = var0;
  v13[5] = var1;
  v11 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)self _tachogramClassificationsWithPredicate:v10 tachogramClassifier:v9 error:a5 dayIndexBlock:v14 filterBlock:v13];

  return v11;
}

uint64_t __115__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsDayIndexRange_tachogramClassifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 _timeZone];
  v5 = [v2 calendarForTimeZone:v4];

  v6 = [v3 aFibBurden_dateForAFibBurdenClassification];

  v7 = [v6 hk_dayIndexWithCalendar:v5];
  return v7;
}

uint64_t __115__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsDayIndexRange_tachogramClassifier_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 - v3 >= *(a1 + 40) || a3 < v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)tachogramClassificationsForLastSixWeeksOfWeekday:(int64_t)a3 tachogramClassifier:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CBEAB8];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  [v9 setWeekday:a3];
  v10 = (*(self->_dateGenerator + 2))();
  v11 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v12 = [v11 startOfDayForDate:v10];

  v13 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v14 = [v13 dateByAddingUnit:16 value:-42 toDate:v12 options:0];

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke;
  v29[3] = &unk_278660648;
  v30 = v14;
  v31 = self;
  v18 = v15;
  v32 = v18;
  v33 = v16;
  v19 = v16;
  v20 = v14;
  [v17 enumerateDatesStartingAfterDate:v10 matchingComponents:v9 options:1028 usingBlock:v29];

  v21 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v19];
  v27 = v18;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke_2;
  v28[3] = &unk_278660600;
  v28[4] = self;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke_3;
  v26[3] = &unk_278660670;
  v22 = v18;
  v23 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)self _tachogramClassificationsWithPredicate:v21 tachogramClassifier:v8 error:a5 dayIndexBlock:v28 filterBlock:v26];

  return v23;
}

uint64_t __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6)
  {
    v18 = v6;
    if ([*(a1 + 32) compare:v6] == -1)
    {
      v7 = [*(*(a1 + 40) + 24) currentCalendar];
      v8 = [v18 hk_dayIndexWithCalendar:v7];

      v9 = *(a1 + 48);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v9 addObject:v10];

      v11 = objc_alloc(MEMORY[0x277CCA970]);
      v12 = [MEMORY[0x277CBEAA8] hk_earliestPossibleDateWithDayIndex:v8];
      v13 = [MEMORY[0x277CBEAA8] hk_latestPossibleDateWithDayIndex:v8];
      v14 = [v11 initWithStartDate:v12 endDate:v13];

      v15 = *(*(a1 + 40) + 16);
      v16 = HDSampleEntityPredicateForDateInterval();
      [*(a1 + 56) addObject:v16];
    }

    else
    {
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 _timeZone];
  v5 = [v2 calendarForTimeZone:v4];

  v6 = [v3 aFibBurden_dateForAFibBurdenClassification];

  v7 = [v6 hk_dayIndexWithCalendar:v5];
  return v7;
}

uint64_t __126__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfWeekday_tachogramClassifier_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  if ([v1 containsObject:v2])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)tachogramClassificationsForLastSixWeeksOfHoursFrom:(int64_t)a3 to:(int64_t)a4 julianDayToMajorityTimeZone:(id)a5 tachogramClassifier:(id)a6 error:(id *)a7
{
  v12 = a5;
  calendarCache = self->_calendarCache;
  v14 = a6;
  v15 = [(HKCalendarCache *)calendarCache currentCalendar];
  v16 = (*(self->_dateGenerator + 2))();
  v17 = [v15 startOfDayForDate:v16];

  v18 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v19 = [v17 hk_dayIndexWithCalendar:v18];

  v20 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)self _totalDatePredicateForStartDayIndex:v19 - 42 endDayIndex:v19];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke;
  v31[3] = &unk_278660600;
  v31[4] = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke_2;
  v24[3] = &unk_278660698;
  v27 = v19 - 42;
  v28 = v19;
  v25 = v12;
  v26 = self;
  v29 = a3;
  v30 = a4;
  v21 = v12;
  v22 = [(HKHRAFibBurdenTachogramClassificationsRetriever *)self _tachogramClassificationsWithPredicate:v20 tachogramClassifier:v14 error:a7 dayIndexBlock:v31 filterBlock:v24];

  return v22;
}

uint64_t __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  v4 = [v3 _timeZone];
  v5 = [v2 calendarForTimeZone:v4];

  v6 = [v3 aFibBurden_dateForAFibBurdenClassification];

  v7 = [v6 hk_dayIndexWithCalendar:v5];
  return v7;
}

uint64_t __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1[6] > a3 || a1[7] <= a3)
  {
    v12 = 2;
  }

  else
  {
    v6 = a1[4];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v9 = [*(a1[5] + 24) calendarForTimeZone:v8];
      v10 = [v5 aFibBurden_dateForAFibBurdenClassification];
      v11 = [v9 component:32 fromDate:v10];

      if (v11 >= a1[8])
      {
        if (v11 < a1[9])
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke_2_cold_1(a1, v13);
      }

      v12 = 2;
    }
  }

  return v12;
}

- (id)_tachogramClassificationsWithPredicate:(id)a3 tachogramClassifier:(id)a4 error:(id *)a5 dayIndexBlock:(id)a6 filterBlock:(id)a7
{
  v40[1] = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x277D10848];
  seriesType = self->_seriesType;
  v16 = a4;
  v17 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [v14 entityEnumeratorWithType:seriesType profile:WeakRetained];

  [v19 setPredicate:v17];
  [v19 setEncodingOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D10400]];
  v20 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v40[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v19 setOrderingTerms:v21];

  v22 = [HKHRAFibBurdenTachogramClassificationsBuilder alloc];
  v23 = objc_loadWeakRetained(&self->_profile);
  v24 = [(HKHRAFibBurdenTachogramClassificationsBuilder *)v22 initWithProfile:v23 classifier:v16];

  v39 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __142__HKHRAFibBurdenTachogramClassificationsRetriever__tachogramClassificationsWithPredicate_tachogramClassifier_error_dayIndexBlock_filterBlock___block_invoke;
  v35[3] = &unk_2786606C0;
  v25 = v12;
  v37 = v25;
  v35[4] = self;
  v26 = v13;
  v38 = v26;
  v27 = v24;
  v36 = v27;
  LOBYTE(v23) = [v19 enumerateWithError:&v39 handler:v35];
  v28 = v39;
  if (v23)
  {
    v29 = [(HKHRAFibBurdenTachogramClassificationsBuilder *)v27 buildClassifications];
  }

  else
  {
    _HKInitializeLogging();
    v30 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [HKHRAFibBurdenTachogramClassificationsRetriever _tachogramClassificationsWithPredicate:v28 tachogramClassifier:v30 error:? dayIndexBlock:? filterBlock:?];
    }

    v31 = v28;
    if (v31)
    {
      if (a5)
      {
        v32 = v31;
        *a5 = v31;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v29 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __142__HKHRAFibBurdenTachogramClassificationsRetriever__tachogramClassificationsWithPredicate_tachogramClassifier_error_dayIndexBlock_filterBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 48) + 16))();
  v5 = (a1 + 32);
  if ([*(a1 + 32) _shouldAnalyzeSample:v3])
  {
    v6 = (*(*(a1 + 56) + 16))();
    v7 = 0;
    if (v6)
    {
      if (v6 == 1)
      {
        [*(a1 + 40) addSampleToClassify:v3 dayIndex:v4];
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __142__HKHRAFibBurdenTachogramClassificationsRetriever__tachogramClassificationsWithPredicate_tachogramClassifier_error_dayIndexBlock_filterBlock___block_invoke_cold_1(v5, v7, v8);
      }
    }
  }

  return 1;
}

- (id)_totalDatePredicateForStartDayIndex:(int64_t)a3 endDayIndex:(int64_t)a4
{
  v7 = objc_alloc(MEMORY[0x277CCA970]);
  v8 = [MEMORY[0x277CBEAA8] hk_earliestPossibleDateWithDayIndex:a3];
  v9 = [MEMORY[0x277CBEAA8] hk_latestPossibleDateWithDayIndex:a4];
  v10 = [v7 initWithStartDate:v8 endDate:v9];

  seriesType = self->_seriesType;
  v12 = HDSampleEntityPredicateForDateInterval();

  return v12;
}

- (BOOL)_shouldAnalyzeSample:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCE050]];

  if (v6 && ![v6 integerValue])
  {
    v11 = [v4 metadata];
    v9 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCDFA0]];

    if (v9 && [v9 integerValue]== 2)
    {
      v10 = 1;
LABEL_15:

      goto LABEL_16;
    }

    _HKInitializeLogging();
    v12 = HKHRAFibBurdenLogForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

    if (v13)
    {
      v14 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = self;
        _os_log_impl(&dword_229486000, v14, OS_LOG_TYPE_INFO, "[%@] Ignoring sample from incompatible tachogram version", &v17, 0xCu);
      }
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  _HKInitializeLogging();
  v7 = HKHRAFibBurdenLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_INFO, "[%@] Ignoring sample from non-background context", &v17, 0xCu);
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

void __159__HKHRAFibBurdenTachogramClassificationsRetriever_tachogramClassificationsForLastSixWeeksOfHoursFrom_to_julianDayToMajorityTimeZone_tachogramClassifier_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%@] Unable to determine majority time zone for sample, even though majority time zone should have considered all samples.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_tachogramClassificationsWithPredicate:(NSObject *)a3 tachogramClassifier:error:dayIndexBlock:filterBlock:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%@] Failed to enumerate across samples, received error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __142__HKHRAFibBurdenTachogramClassificationsRetriever__tachogramClassificationsWithPredicate_tachogramClassifier_error_dayIndexBlock_filterBlock___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_229486000, a2, a3, "[%@] Error while filtering samples: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end