@interface HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer
- (HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4;
- (id)_totalDatePredicateForStartDayIndex:(int64_t)a3 endDayIndex:(int64_t)a4;
- (id)determineJulianDayToMajorityTimeZoneForRange:(id)a3 error:(id *)a4;
@end

@implementation HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer

- (HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer)initWithProfile:(id)a3 calendarCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer;
  v8 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    v10 = [MEMORY[0x277CCD920] heartbeatSeriesType];
    seriesType = v9->_seriesType;
    v9->_seriesType = v10;

    objc_storeStrong(&v9->_calendarCache, a4);
  }

  return v9;
}

- (id)determineJulianDayToMajorityTimeZoneForRange:(id)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277D10848];
  seriesType = self->_seriesType;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [v9 entityEnumeratorWithType:seriesType profile:WeakRetained];

  v13 = [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)self _totalDatePredicateForStartDayIndex:var0 endDayIndex:var0 + var1];
  [v12 setPredicate:v13];

  [v12 setEncodingOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D10400]];
  v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v37[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v12 setOrderingTerms:v15];

  v36 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke;
  v32[3] = &unk_278660178;
  v32[4] = self;
  v34 = var0;
  v35 = var1;
  v16 = v8;
  v33 = v16;
  LOBYTE(v8) = [v12 enumerateWithError:&v36 handler:v32];
  v17 = v36;
  if (v8)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__2;
    v30 = __Block_byref_object_dispose__2;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke_322;
    v25[3] = &unk_2786601C8;
    v25[4] = &v26;
    [v16 enumerateKeysAndObjectsUsingBlock:v25];
    v18 = v27[5];
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer *)self determineJulianDayToMajorityTimeZoneForRange:v17 error:v19];
    }

    v20 = v17;
    v21 = v20;
    if (v20)
    {
      if (a4)
      {
        v22 = v20;
        *a4 = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _timeZone];
  v5 = *(a1[4] + 24);
  v6 = [v3 _timeZone];
  v7 = [v5 calendarForTimeZone:v6];

  v8 = [v3 aFibBurden_dateForAFibBurdenClassification];
  v9 = [v8 hk_dayIndexWithCalendar:v7];

  v10 = a1[6];
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v12 < 0 == v11 && v12 < a1[7])
  {
    v14 = a1[5];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v16 = [v14 objectForKey:v15];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v19 = v18;

    v20 = [v19 objectForKey:v4];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = objc_alloc_init(HKHRJulianDayTimeZoneState);
    }

    v23 = v22;

    [(HKHRJulianDayTimeZoneState *)v23 setCount:[(HKHRJulianDayTimeZoneState *)v23 count]+ 1];
    v24 = [v3 aFibBurden_dateForAFibBurdenClassification];
    [(HKHRJulianDayTimeZoneState *)v23 setLastSampleDate:v24];

    [v19 setObject:v23 forKey:v4];
    v25 = a1[5];
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    [v25 setObject:v19 forKey:v26];
  }

  return 1;
}

void __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke_322(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__2;
  v9[4] = __Block_byref_object_dispose__2;
  v10 = [MEMORY[0x277CBEAA8] distantPast];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = -1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke_2;
  v7[3] = &unk_2786601A0;
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = &v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v12[5] forKey:v5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
}

void __104__HKHRAFibBurdenJulianDayMajorityTimeZoneDeterminer_determineJulianDayToMajorityTimeZoneForRange_error___block_invoke_2(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  if ([v6 count] > *(*(a1[4] + 8) + 24) || objc_msgSend(v6, "count") == *(*(a1[4] + 8) + 24) && (objc_msgSend(v6, "lastSampleDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:", *(*(a1[5] + 8) + 40)), v10, v11 == 1))
  {
    *(*(a1[4] + 8) + 24) = [v6 count];
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v7 = [v6 lastSampleDate];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
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

- (void)determineJulianDayToMajorityTimeZoneForRange:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%@] Failed to enumerate across samples, received error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end