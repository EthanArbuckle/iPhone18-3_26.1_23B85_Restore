@interface HDMedicationDoseEventDailyAnalytics
+ (id)_countOfDoseEventsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_doseEventCountLoggedSinceDate:(id)a3 transaction:(id)a4;
+ (id)_predicateForDoseEventsBetweenDate:(id)a3 andDate:(id)a4;
+ (id)_predicateForDoseEventsLoggedSinceDate:(id)a3;
- (HDMedicationDoseEventDailyAnalytics)initWithProfile:(id)a3 calendar:(id)a4 currentDate:(id)a5;
- (NSString)eventName;
- (id)_hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:(id)a3;
- (id)_hasLoggedMedsInPastPayloadWithTransaction:(id)a3;
- (id)_weeksSinceFirstLoggedMedPayload;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (void)_weeksSinceFirstLoggedMedPayload;
@end

@implementation HDMedicationDoseEventDailyAnalytics

- (HDMedicationDoseEventDailyAnalytics)initWithProfile:(id)a3 calendar:(id)a4 currentDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDMedicationDoseEventDailyAnalytics;
  v11 = [(HDMedicationDoseEventDailyAnalytics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_calendar, a4);
    objc_storeStrong(&v12->_currentDate, a5);
  }

  return v12;
}

- (NSString)eventName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277D10768];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v16 = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HDMedicationDoseEventDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v14[3] = &unk_2796CD5C8;
  v15 = v5;
  v9 = v5;
  LODWORD(v5) = [v6 performReadTransactionWithHealthDatabase:v8 error:&v17 block:v14];
  v10 = v17;

  if (v5)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __88__HDMedicationDoseEventDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _weeksSinceFirstLoggedMedPayload];
  [v1 hk_addEntriesFromNonNilDictionary:v2];

  return 1;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277D10768];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v16 = self;
  v17 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDMedicationDoseEventDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke;
  v14[3] = &unk_2796CD5C8;
  v15 = v5;
  v9 = v5;
  LODWORD(v5) = [v6 performReadTransactionWithHealthDatabase:v8 error:&v17 block:v14];
  v10 = v17;

  if (v5)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __84__HDMedicationDoseEventDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasLoggedMedsInPastPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:v5];

  [v7 hk_addEntriesFromNonNilDictionary:v8];
  return 1;
}

- (id)_hasLoggedMedsInPastPayloadWithTransaction:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-1 toDate:self->_currentDate];
  v7 = [objc_opt_class() _doseEventCountLoggedSinceDate:v6 transaction:v4];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPast24hrs"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
      [v5 setObject:v9 forKeyedSubscript:@"hasMedsHistory"];
      v10 = v5;
      goto LABEL_30;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPast24hrs"];
  }

  v11 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-7 toDate:self->_currentDate];
  v12 = [objc_opt_class() _doseEventCountLoggedSinceDate:v11 transaction:v4];
  v13 = v12;
  if (!v12)
  {
LABEL_9:
    v16 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-30 toDate:self->_currentDate];
    v17 = [objc_opt_class() _doseEventCountLoggedSinceDate:v16 transaction:v4];
    v18 = v17;
    if (v17)
    {
      if ([v17 integerValue] >= 1)
      {
        v19 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
        [v5 setObject:v19 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
        [v5 setObject:v19 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v19 forKeyedSubscript:@"hasMedsHistory"];
        v20 = v5;
LABEL_28:

        goto LABEL_29;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
    }

    v54 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-180 toDate:self->_currentDate];
    v21 = [objc_opt_class() _doseEventCountLoggedSinceDate:v54 transaction:v4];
    v22 = v21;
    if (v21)
    {
      if ([v21 integerValue] >= 1)
      {
        v23 = v22;
        v24 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
        [v5 setObject:v24 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v24 forKeyedSubscript:@"hasMedsHistory"];
        v25 = v5;
LABEL_27:

        goto LABEL_28;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
    }

    v51 = v18;
    v52 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-365 toDate:self->_currentDate];
    v26 = [objc_opt_class() _doseEventCountLoggedSinceDate:v52 transaction:v4];
    v53 = v22;
    v50 = v26;
    if (v26)
    {
      if ([v26 integerValue] >= 1)
      {
        v27 = MEMORY[0x277CBEC38];
        [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastYear"];
        [v5 setObject:v27 forKeyedSubscript:@"hasMedsHistory"];
        v28 = v5;
LABEL_26:

        v23 = v53;
        goto LABEL_27;
      }

      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastYear"];
    }

    v45 = v16;
    v29 = [MEMORY[0x277CCD658] medicationDoseEventType];
    v57[0] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v31 = HDSampleEntityPredicateForDataTypes();

    v32 = HDMedicationDoseEventEntityPredicateForStatuses();
    v33 = MEMORY[0x277D10B20];
    v48 = v32;
    v49 = v31;
    v56[0] = v31;
    v56[1] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v35 = [v33 predicateMatchingAllPredicates:v34];

    v36 = objc_opt_class();
    v37 = [v4 protectedDatabase];
    v55 = 0;
    v47 = v35;
    v38 = [v36 anyInDatabase:v37 predicate:v35 error:&v55];
    v44 = v55;

    v46 = v38;
    if (v38)
    {
      v39 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [v5 setObject:v39 forKeyedSubscript:@"hasMedsHistory"];
      v40 = v44;
      v16 = v45;
      v18 = v51;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogMedication();
      v18 = v51;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v44;
        [HDMedicationDoseEventDailyAnalytics _hasLoggedMedsInPastPayloadWithTransaction:];
        v16 = v45;
      }

      else
      {
        v40 = v44;
        v16 = v45;
      }
    }

    v41 = v5;
    goto LABEL_26;
  }

  if ([v12 integerValue] < 1)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasLoggedMedsInPastWeek"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPastMonth"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPast6Months"];
  [v5 setObject:v14 forKeyedSubscript:@"hasLoggedMedsInPastYear"];
  [v5 setObject:v14 forKeyedSubscript:@"hasMedsHistory"];
  v15 = v5;
LABEL_29:

LABEL_30:
  v42 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_weeksSinceFirstLoggedMedPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSCalendar *)self->_calendar startOfDayForDate:self->_currentDate];
  v5 = HDMedicationDoseEventEntityPredicateForStatuses();
  v6 = [MEMORY[0x277CCD658] medicationDoseEventType];
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = 0;
  v9 = [v7 oldestSampleWithType:v6 profile:WeakRetained encodingOptions:0 predicate:v5 error:&v17];
  v10 = v17;

  if (v9)
  {
    calendar = self->_calendar;
    v12 = [v9 _creationDate];
    v13 = [(NSCalendar *)calendar startOfDayForDate:v12];

    v14 = self->_calendar;
    v15 = HKMedicationAnalyticsWeeksBetweenDates();
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"weeksSinceFirstLoggedMed"];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDoseEventDailyAnalytics _weeksSinceFirstLoggedMedPayload];
    }
  }

  return v3;
}

- (id)_hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:-1 toDate:self->_currentDate options:0];
  v7 = [(NSCalendar *)self->_calendar startOfDayForDate:v6];

  v8 = [(NSCalendar *)self->_calendar dateByAddingUnit:16 value:1 toDate:v7 options:0];
  v9 = [(NSCalendar *)self->_calendar startOfDayForDate:v8];

  v35 = v9;
  v36 = v7;
  v10 = [objc_opt_class() _predicateForDoseEventsBetweenDate:v7 andDate:v9];
  v11 = HDMedicationDoseEventEntityPredicateForLogOrigin();
  v12 = MEMORY[0x277D10B20];
  v37 = v11;
  v38 = v10;
  v44[0] = v10;
  v44[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v14 = [v12 predicateMatchingAllPredicates:v13];

  v15 = objc_opt_class();
  v16 = *MEMORY[0x277D10420];
  v17 = [v4 databaseForEntityClass:v15];
  v40 = 0;
  v34 = v14;
  v18 = [v15 countValueForProperty:v16 predicate:v14 database:v17 error:&v40];
  v19 = v40;

  if (v18)
  {
    if ([v18 integerValue] <= 0)
    {
      _HKInitializeLogging();
      v20 = HKLogMedication();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = self;
        _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] No scheduled dose events found for yesterday", buf, 0xCu);
      }
    }

    else
    {
      v33 = v5;
      v20 = HDMedicationDoseEventEntityPredicateForStatuses();
      v21 = v4;
      v22 = MEMORY[0x277D10B20];
      v41[0] = v38;
      v41[1] = v37;
      v41[2] = v20;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
      v24 = v22;
      v4 = v21;
      v25 = [v24 predicateMatchingAllPredicates:v23];

      v26 = [v21 databaseForEntityClass:v15];
      v39 = 0;
      v27 = [v15 countValueForProperty:v16 predicate:v25 database:v26 error:&v39];
      v19 = v39;

      if (v27)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v18, "integerValue") == objc_msgSend(v27, "integerValue")}];
        v5 = v33;
        [v33 setObject:v28 forKeyedSubscript:@"hasLoggedAllScheduledMedsInPreviousDay"];

        v29 = v33;
        goto LABEL_13;
      }

      _HKInitializeLogging();
      v30 = HKLogMedication();
      v5 = v33;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationDoseEventDailyAnalytics _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogMedication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDoseEventDailyAnalytics _hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:];
    }
  }

  v29 = 0;
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_doseEventCountLoggedSinceDate:(id)a3 transaction:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _predicateForDoseEventsLoggedSinceDate:v6];
  v15 = 0;
  v9 = [objc_opt_class() _countOfDoseEventsWithPredicate:v8 transaction:v7 error:&v15];

  v10 = v15;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = a1;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error when determining if logged medications since date: %{public}@, continuing daily analytics submission: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_countOfDoseEventsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D10420];
  v11 = [v7 protectedDatabase];

  v12 = [v9 countDistinctForProperty:v10 predicate:v8 database:v11 error:a5];

  return v12;
}

+ (id)_predicateForDoseEventsLoggedSinceDate:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD658];
  v4 = a3;
  v5 = [v3 medicationDoseEventType];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v7 = HDSampleEntityPredicateForDataTypes();

  v8 = HDDataEntityPredicateForCreationDate();

  v9 = HDMedicationDoseEventEntityPredicateForStatuses();
  v10 = MEMORY[0x277D10B20];
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v12 = [v10 predicateMatchingAllPredicates:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_predicateForDoseEventsBetweenDate:(id)a3 andDate:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCD658];
  v6 = a4;
  v7 = a3;
  v8 = [v5 medicationDoseEventType];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = HDSampleEntityPredicateForDataTypes();

  v11 = HDSampleEntityPredicateForStartDate();

  v12 = HDSampleEntityPredicateForStartDate();

  v13 = MEMORY[0x277D10B20];
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [v13 predicateMatchingAllPredicates:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_hasLoggedMedsInPastPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error when determining if user has any dose events in the database, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_weeksSinceFirstLoggedMedPayload
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error loading oldest logged dose event, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_hasLoggedAllScheduledMedsInPreviousDayPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error loading scheduled logged dose event count for yesterday, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end