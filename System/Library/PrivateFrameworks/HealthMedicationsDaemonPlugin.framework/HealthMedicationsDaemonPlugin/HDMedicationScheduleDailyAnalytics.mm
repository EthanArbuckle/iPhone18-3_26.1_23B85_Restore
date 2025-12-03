@interface HDMedicationScheduleDailyAnalytics
+ (id)_allActiveMedicationSchedulesWithProfile:(id)profile error:(id *)error;
+ (id)_medicationCountForSchedulesWithProfile:(id)profile error:(id *)error;
+ (id)_medicationCountForUnavailableSchedulesWithProfile:(id)profile error:(id *)error;
- (HDMedicationScheduleDailyAnalytics)initWithProfile:(id)profile;
- (NSString)eventName;
- (id)_makeHasUnavailableSchedulesPayloadForSchedulesWithProfile:(id)profile;
- (id)_makeMedicationCountPayloadForSchedulesWithProfile:(id)profile;
- (id)_makeMedicationPayloadForNewScheduleTypesWithProfile:(id)profile;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int)_countOfSchedulesInList:(id)list matchingScheduleType:(int64_t)type;
@end

@implementation HDMedicationScheduleDailyAnalytics

- (HDMedicationScheduleDailyAnalytics)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDMedicationScheduleDailyAnalytics;
  v5 = [(HDMedicationScheduleDailyAnalytics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (NSString)eventName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [(HDMedicationScheduleDailyAnalytics *)self _makeHasUnavailableSchedulesPayloadForSchedulesWithProfile:WeakRetained];
  [v5 hk_addEntriesFromNonNilDictionary:v7];

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [(HDMedicationScheduleDailyAnalytics *)self _makeMedicationCountPayloadForSchedulesWithProfile:WeakRetained];
  [v5 hk_addEntriesFromNonNilDictionary:v7];

  v8 = objc_loadWeakRetained(&self->_profile);
  v9 = [(HDMedicationScheduleDailyAnalytics *)self _makeMedicationPayloadForNewScheduleTypesWithProfile:v8];
  [v5 hk_addEntriesFromNonNilDictionary:v9];

  return v5;
}

- (id)_makeHasUnavailableSchedulesPayloadForSchedulesWithProfile:(id)profile
{
  v3 = MEMORY[0x277CBEB38];
  profileCopy = profile;
  v5 = objc_alloc_init(v3);
  v13 = 0;
  v6 = [objc_opt_class() _medicationCountForUnavailableSchedulesWithProfile:profileCopy error:&v13];

  v7 = v13;
  if (v6)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "integerValue") > 0}];
    [v5 setObject:v8 forKeyedSubscript:@"hasUnavailableMedSchedules"];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationScheduleDailyAnalytics _makeHasUnavailableSchedulesPayloadForSchedulesWithProfile:];
    }
  }

  allKeys = [v5 allKeys];
  if ([allKeys count])
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (id)_makeMedicationCountPayloadForSchedulesWithProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0;
  v5 = [objc_opt_class() _medicationCountForSchedulesWithProfile:profileCopy error:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "integerValue") > 0}];
    [v4 setObject:v7 forKeyedSubscript:@"hasMedsScheduled"];

    v8 = HDMedicationDailyAnalyticsBucketForCount(v5);
    [v4 setObject:v8 forKeyedSubscript:@"numberOfMedsScheduled"];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationScheduleDailyAnalytics _makeMedicationCountPayloadForSchedulesWithProfile:];
    }
  }

  v16 = v6;
  v9 = [objc_opt_class() _medicationCountForUnavailableSchedulesWithProfile:profileCopy error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = HDMedicationDailyAnalyticsBucketForCount(v9);
    [v4 setObject:v11 forKeyedSubscript:@"numberOfUnavailableMedSchedules"];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationScheduleDailyAnalytics _makeMedicationCountPayloadForSchedulesWithProfile:];
    }
  }

  allKeys = [v4 allKeys];
  if ([allKeys count])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)_makeMedicationPayloadForNewScheduleTypesWithProfile:(id)profile
{
  v4 = MEMORY[0x277CBEB38];
  profileCopy = profile;
  v6 = objc_alloc_init(v4);
  v47 = 0;
  v7 = [HDMedicationScheduleDailyAnalytics _allActiveMedicationSchedulesWithProfile:profileCopy error:&v47];

  v8 = v47;
  if (v7)
  {
    v9 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:2];
    v44 = v8;
    v10 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:7];
    v11 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:8];
    v12 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:3];
    v13 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:1];
    v40 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:4];
    v41 = [(HDMedicationScheduleDailyAnalytics *)self _countOfSchedulesInList:v7 matchingScheduleType:5];
    [v7 hk_sumUsingEvaluationBlock:&__block_literal_global_18];
    v43 = v14;
    v15 = [MEMORY[0x277CBEAA8] now];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __91__HDMedicationScheduleDailyAnalytics__makeMedicationPayloadForNewScheduleTypesWithProfile___block_invoke_2;
    v45[3] = &unk_2796CE790;
    v46 = v15;
    v16 = v15;
    [v7 hk_sumUsingEvaluationBlock:v45];
    v42 = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v19 = HDMedicationDailyAnalyticsBucketForCount(v18);
    [v6 setObject:v19 forKeyedSubscript:@"numMedsWithEveryDaySchedule"];

    v20 = [MEMORY[0x277CCABB0] numberWithInt:(v11 + v10)];
    v21 = HDMedicationDailyAnalyticsBucketForCount(v20);
    [v6 setObject:v21 forKeyedSubscript:@"numMedsWithCyclicalSchedule"];

    v22 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v23 = HDMedicationDailyAnalyticsBucketForCount(v22);
    [v6 setObject:v23 forKeyedSubscript:@"numMedsWithDailyCyclicalSchedule"];

    v24 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    v25 = HDMedicationDailyAnalyticsBucketForCount(v24);
    [v6 setObject:v25 forKeyedSubscript:@"numMedsWithWeeklyCyclicalSchedule"];

    v26 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v27 = HDMedicationDailyAnalyticsBucketForCount(v26);
    [v6 setObject:v27 forKeyedSubscript:@"numMedsWithDayOfWeekSchedule"];

    v28 = [MEMORY[0x277CCABB0] numberWithInt:v13];
    v29 = HDMedicationDailyAnalyticsBucketForCount(v28);
    [v6 setObject:v29 forKeyedSubscript:@"numMedsWithEveryFewDaysSchedule"];

    v30 = [MEMORY[0x277CCABB0] numberWithInt:v40];
    v31 = HDMedicationDailyAnalyticsBucketForCount(v30);
    [v6 setObject:v31 forKeyedSubscript:@"numMedsWithAsNeededSchedule"];

    v32 = [MEMORY[0x277CCABB0] numberWithInt:v41];
    v33 = HDMedicationDailyAnalyticsBucketForCount(v32);
    [v6 setObject:v33 forKeyedSubscript:@"numMedsWithDifferentDosesDayOfWeekSchedule"];

    v34 = [MEMORY[0x277CCABB0] numberWithInt:v43];
    v35 = HDMedicationDailyAnalyticsBucketForCount(v34);
    [v6 setObject:v35 forKeyedSubscript:@"numMedsWithScheduledEndDate"];

    v36 = [MEMORY[0x277CCABB0] numberWithInt:v42];
    v37 = HDMedicationDailyAnalyticsBucketForCount(v36);
    [v6 setObject:v37 forKeyedSubscript:@"numMedsWithScheduleEnded"];

    v8 = v44;
    v38 = v6;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationScheduleDailyAnalytics _makeMedicationPayloadForNewScheduleTypesWithProfile:];
    }

    v38 = 0;
  }

  return v38;
}

double __91__HDMedicationScheduleDailyAnalytics__makeMedicationPayloadForNewScheduleTypesWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 endDateTime];
  if (v2)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

double __91__HDMedicationScheduleDailyAnalytics__makeMedicationPayloadForNewScheduleTypesWithProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endDateTime];
  if (v4)
  {
    v5 = [v3 endDateTime];
    v6 = [v5 hk_isBeforeDate:*(a1 + 32)];
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (int)_countOfSchedulesInList:(id)list matchingScheduleType:(int64_t)type
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HDMedicationScheduleDailyAnalytics__countOfSchedulesInList_matchingScheduleType___block_invoke;
  v6[3] = &__block_descriptor_40_e30_d16__0__HKMedicationSchedule_8l;
  v6[4] = type;
  [list hk_sumUsingEvaluationBlock:v6];
  return v4;
}

double __83__HDMedicationScheduleDailyAnalytics__countOfSchedulesInList_matchingScheduleType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 scheduleType];
  result = 0.0;
  if (v3 == *(a1 + 32))
  {
    return 1.0;
  }

  return result;
}

+ (id)_medicationCountForSchedulesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v6 = objc_opt_class();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  database = [profileCopy database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDMedicationScheduleDailyAnalytics__medicationCountForSchedulesWithProfile_error___block_invoke;
  v11[3] = &unk_2796CE7D8;
  v11[4] = &v12;
  v11[5] = v6;
  LODWORD(error) = [v6 performReadTransactionWithHealthDatabase:database error:error block:v11];

  if (error)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

BOOL __84__HDMedicationScheduleDailyAnalytics__medicationCountForSchedulesWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D10B18];
  v6 = a2;
  v7 = [v5 predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
  v8 = *(a1 + 40);
  v9 = [v6 protectedDatabase];

  v10 = [v8 countDistinctForProperty:@"medication_uuid" predicate:v7 database:v9 error:a3];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return v13;
}

+ (id)_medicationCountForUnavailableSchedulesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v6 = objc_opt_class();
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  database = [profileCopy database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__HDMedicationScheduleDailyAnalytics__medicationCountForUnavailableSchedulesWithProfile_error___block_invoke;
  v11[3] = &unk_2796CE7D8;
  v11[4] = &v12;
  v11[5] = v6;
  LODWORD(error) = [v6 performReadTransactionWithHealthDatabase:database error:error block:v11];

  if (error)
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

BOOL __95__HDMedicationScheduleDailyAnalytics__medicationCountForUnavailableSchedulesWithProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D10B20];
  v6 = a2;
  v7 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  v8 = [v5 negatedPredicate:v7];

  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
  v10 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v8 otherPredicate:v9];
  v11 = *(a1 + 40);
  v12 = [v6 protectedDatabase];

  v13 = [v11 countDistinctForProperty:@"medication_uuid" predicate:v10 database:v12 error:a3];
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 32) + 8) + 40) != 0;
  return v16;
}

+ (id)_allActiveMedicationSchedulesWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  database = [profileCopy database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__HDMedicationScheduleDailyAnalytics__allActiveMedicationSchedulesWithProfile_error___block_invoke;
  v10[3] = &unk_2796CE800;
  v10[4] = &v11;
  LODWORD(error) = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:database error:error block:v10];

  if (error)
  {
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __85__HDMedicationScheduleDailyAnalytics__allActiveMedicationSchedulesWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationScheduleEntity allActiveMedicationSchedulesWithTransaction:a2 error:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)_makeHasUnavailableSchedulesPayloadForSchedulesWithProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error loading a count of unavailable scheduled medications with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_makeMedicationCountPayloadForSchedulesWithProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error loading a count of scheduled medications, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_makeMedicationCountPayloadForSchedulesWithProfile:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error loading a count of unavailable scheduled medications, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_makeMedicationPayloadForNewScheduleTypesWithProfile:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "%{public}@ Fetching all non-deleted schedules failed with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end