@interface HDMHDaySummaryEnumerator
- (BOOL)_finishCurrentSummaryBuilder:(id)a3 pendingDailyStateOfMind:(id)a4 pendingDailyStateOfMindDayIndex:(int64_t)a5 clientRequestedStop:(BOOL *)a6 handler:(id)a7;
- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4;
- (HDMHDaySummaryEnumerator)initWithProfile:(id)a3 dayIndexRange:(id)a4 gregorianCalendar:(id)a5 predicate:(id)a6 pendingDailyStateOfMind:(id)a7 ascending:(BOOL)a8;
- (id)_makeStateOfMindSampleEnumerator;
- (id)_queryPredicate;
- (int64_t)_compareDayIndex:(int64_t)a3 withDayIndex:(int64_t)a4;
@end

@implementation HDMHDaySummaryEnumerator

- (HDMHDaySummaryEnumerator)initWithProfile:(id)a3 dayIndexRange:(id)a4 gregorianCalendar:(id)a5 predicate:(id)a6 pendingDailyStateOfMind:(id)a7 ascending:(BOOL)a8
{
  var1 = a4.var1;
  var0 = a4.var0;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = HDMHDaySummaryEnumerator;
  v18 = [(HDMHDaySummaryEnumerator *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, v14);
    v19->_dayIndexRange.start = var0;
    v19->_dayIndexRange.duration = var1;
    objc_storeStrong(&v19->_predicate, a6);
    objc_storeStrong(&v19->_gregorianCalendar, a5);
    objc_storeStrong(&v19->_pendingDailyStateOfMind, a7);
    v19->_ascending = a8;
    pendingDailyStateOfMind = v19->_pendingDailyStateOfMind;
    if (pendingDailyStateOfMind)
    {
      if ([(HKStateOfMind *)pendingDailyStateOfMind reflectiveInterval]!= 2)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC2F0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_FAULT))
        {
          [HDMHDaySummaryEnumerator initWithProfile:v21 dayIndexRange:? gregorianCalendar:? predicate:? pendingDailyStateOfMind:? ascending:?];
        }

        v22 = v19->_pendingDailyStateOfMind;
        v19->_pendingDailyStateOfMind = 0;
      }
    }
  }

  return v19;
}

- (BOOL)enumerateWithError:(id *)a3 handler:(id)a4
{
  v6 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v49 = self->_pendingDailyStateOfMind;
  v7 = [v45[5] startDate];
  v8 = [v7 hk_dayIndexWithCalendar:self->_gregorianCalendar];

  v9 = v45[5];
  if (v9)
  {
    start = self->_dayIndexRange.start;
    v11 = __OFSUB__(v8, start);
    v12 = v8 - start;
    if (v12 < 0 != v11 || v12 >= self->_dayIndexRange.duration)
    {
      v45[5] = 0;
    }
  }

  v14 = [(HDMHDaySummaryEnumerator *)self _makeStateOfMindSampleEnumerator];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __55__HDMHDaySummaryEnumerator_enumerateWithError_handler___block_invoke;
  v27 = &unk_2798AADE8;
  v28 = self;
  v30 = &v38;
  v32 = &v34;
  v33 = v8;
  v31 = &v44;
  v15 = v6;
  v29 = v15;
  v16 = [v14 enumerateWithError:a3 handler:&v24];
  v17 = v35[3] & v16;
  if ((v35[3] & 1) == 0 && ((v16 ^ 1) & 1) == 0)
  {
    v18 = v39[5];
    if (v18)
    {
      v19 = [(HDMHDaySummaryEnumerator *)self _finishCurrentSummaryBuilder:v18 pendingDailyStateOfMind:v45[5] pendingDailyStateOfMindDayIndex:v8 clientRequestedStop:v35 + 3 handler:v15, v24, v25, v26, v27, v28];
      if (v35[3])
      {
LABEL_15:
        v17 = 1;
        goto LABEL_16;
      }

      if (v19)
      {
        v20 = v45[5];
        v45[5] = 0;
      }
    }

    if (v45[5])
    {
      v21 = [[HDMHDaySummaryBuilder alloc] initWithDayIndex:v8 gregorianCalendar:self->_gregorianCalendar];
      [(HDMHDaySummaryBuilder *)v21 addStateOfMind:v45[5]];
      v22 = [(HDMHDaySummaryBuilder *)v21 daySummary];
      (*(v15 + 2))(v15, v22, v35 + 3);
    }

    goto LABEL_15;
  }

LABEL_16:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  return v17 & 1;
}

uint64_t __55__HDMHDaySummaryEnumerator_enumerateWithError_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v4 hk_dayIndexWithCalendar:*(*(a1 + 32) + 40)];

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (!v6)
  {
LABEL_7:
    v11 = [[HDMHDaySummaryBuilder alloc] initWithDayIndex:v5 gregorianCalendar:*(*(a1 + 32) + 40)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    goto LABEL_8;
  }

  if ([v6 dayIndex] == v5)
  {
LABEL_8:
    [*(*(*(a1 + 48) + 8) + 40) addStateOfMind:v3];
    v8 = 1;
    goto LABEL_9;
  }

  v7 = [*(a1 + 32) _finishCurrentSummaryBuilder:*(*(*(a1 + 48) + 8) + 40) pendingDailyStateOfMind:*(*(*(a1 + 56) + 8) + 40) pendingDailyStateOfMindDayIndex:*(a1 + 72) clientRequestedStop:*(*(a1 + 64) + 8) + 24 handler:*(a1 + 40)];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (v7)
    {
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = 0;
    }

    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)_finishCurrentSummaryBuilder:(id)a3 pendingDailyStateOfMind:(id)a4 pendingDailyStateOfMindDayIndex:(int64_t)a5 clientRequestedStop:(BOOL *)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (v12 && v13)
  {
    v15 = -[HDMHDaySummaryEnumerator _compareDayIndex:withDayIndex:](self, "_compareDayIndex:withDayIndex:", a5, [v12 dayIndex]);
    if (v15)
    {
      if (v15 == -1)
      {
        v16 = [[HDMHDaySummaryBuilder alloc] initWithDayIndex:a5 gregorianCalendar:self->_gregorianCalendar];
        [(HDMHDaySummaryBuilder *)v16 addStateOfMind:v13];
        v17 = [(HDMHDaySummaryBuilder *)v16 daySummary];
        v14[2](v14, v17, a6);

        LOBYTE(v17) = *a6;
        v18 = 1;
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      [v12 addStateOfMind:v13];
      v18 = 1;
    }
  }

  else
  {
    v18 = v13 == 0;
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v19 = [v12 daySummary];
  v14[2](v14, v19, a6);

LABEL_12:
  return v18;
}

- (int64_t)_compareDayIndex:(int64_t)a3 withDayIndex:(int64_t)a4
{
  if (a3 == a4)
  {
    return 0;
  }

  v5 = 1;
  if (a3 >= a4)
  {
    v5 = -1;
  }

  v6 = -1;
  if (a3 >= a4)
  {
    v6 = 1;
  }

  if (self->_ascending)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (id)_makeStateOfMindSampleEnumerator
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD8D8] stateOfMindType];
  v4 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 entityEnumeratorWithType:v3 profile:WeakRetained];

  v7 = [(HDMHDaySummaryEnumerator *)self _queryPredicate];
  [v6 setPredicate:v7];

  v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104B0] entityClass:objc_opt_class() ascending:self->_ascending];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v6 setOrderingTerms:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_queryPredicate
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (self->_dayIndexRange.start == *MEMORY[0x277CCBBF8] && self->_dayIndexRange.duration == *(MEMORY[0x277CCBBF8] + 8))
  {
    v14 = self->_predicate;
  }

  else
  {
    gregorianCalendar = self->_gregorianCalendar;
    v5 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:? atHour:? calendar:?];
    duration = self->_dayIndexRange.duration;
    if (duration <= 0)
    {
      v7 = 0x8000000000000000;
    }

    else
    {
      v7 = duration + self->_dayIndexRange.start;
    }

    v8 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v7 atHour:0 calendar:self->_gregorianCalendar];
    v9 = HDSampleEntityPredicateForStartDate();
    v10 = HDSampleEntityPredicateForEndDate();
    v11 = MEMORY[0x277CBEB18];
    v17[0] = v9;
    v17[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v13 = [v11 arrayWithArray:v12];

    if (self->_predicate)
    {
      [v13 addObject:?];
    }

    v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v13];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end