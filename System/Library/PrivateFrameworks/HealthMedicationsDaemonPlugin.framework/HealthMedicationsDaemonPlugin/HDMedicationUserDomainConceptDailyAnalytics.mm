@interface HDMedicationUserDomainConceptDailyAnalytics
+ (id)_countOfUserDomainConceptsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error;
+ (id)_medicationsAddedCountSinceDate:(id)date transaction:(id)transaction;
+ (id)_predicateForMedicationsSinceDate:(id)date;
- (BOOL)isEventSubmissionIHAGated;
- (HDMedicationUserDomainConceptDailyAnalytics)initWithProfile:(id)profile medicationsKeyValueDomain:(id)domain calendar:(id)calendar currentDate:(id)date;
- (NSString)eventName;
- (id)_archivedMedsCountPayloadWithTransaction:(id)transaction;
- (id)_hasAddedMedsInPastIHAGatedPayloadWithTransaction:(id)transaction;
- (id)_hasAddedMedsInPastUnrestrictedPayloadWithTransaction:(id)transaction;
- (id)_hasAnyLifestyleFactorEnabledPayload;
- (id)_hasMedsListPayloadWithTransaction:(id)transaction;
- (id)_medsCountPayloadWithTransaction:(id)transaction;
- (id)_medsInteractionsPayloadWithTransaction:(id)transaction;
- (id)_weeksSinceFirstAddedMedPayloadWithTransaction:(id)transaction;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDMedicationUserDomainConceptDailyAnalytics

- (HDMedicationUserDomainConceptDailyAnalytics)initWithProfile:(id)profile medicationsKeyValueDomain:(id)domain calendar:(id)calendar currentDate:(id)date
{
  profileCopy = profile;
  domainCopy = domain;
  calendarCopy = calendar;
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = HDMedicationUserDomainConceptDailyAnalytics;
  v14 = [(HDMedicationUserDomainConceptDailyAnalytics *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    objc_storeStrong(&v15->_medicationsKeyValueDomain, domain);
    objc_storeStrong(&v15->_calendar, calendar);
    objc_storeStrong(&v15->_currentDate, date);
  }

  return v15;
}

- (BOOL)isEventSubmissionIHAGated
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 1;
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
  database = [WeakRetained database];
  selfCopy = self;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDMedicationUserDomainConceptDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke;
  v13[3] = &unk_2796CD5C8;
  v14 = v5;
  v8 = v5;
  LODWORD(v5) = [(HDHealthEntity *)HDMedicationUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:&v16 block:v13];
  v9 = v16;

  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t __96__HDMedicationUserDomainConceptDailyAnalytics_makeUnrestrictedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasAddedMedsInPastUnrestrictedPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _hasMedsListPayloadWithTransaction:v5];
  [v7 hk_addEntriesFromNonNilDictionary:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _hasAnyLifestyleFactorEnabledPayload];
  [v9 hk_addEntriesFromNonNilDictionary:v10];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) _weeksSinceFirstAddedMedPayloadWithTransaction:v5];

  [v11 hk_addEntriesFromNonNilDictionary:v12];
  return 1;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  selfCopy = self;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__HDMedicationUserDomainConceptDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke;
  v13[3] = &unk_2796CD5C8;
  v14 = v5;
  v8 = v5;
  LODWORD(v5) = [(HDHealthEntity *)HDMedicationUserDomainConceptEntity performReadTransactionWithHealthDatabase:database error:&v16 block:v13];
  v9 = v16;

  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

uint64_t __92__HDMedicationUserDomainConceptDailyAnalytics_makeIHAGatedEventPayloadWithDataSource_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 _hasAddedMedsInPastIHAGatedPayloadWithTransaction:v5];
  [v3 hk_addEntriesFromNonNilDictionary:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) _medsCountPayloadWithTransaction:v5];
  [v7 hk_addEntriesFromNonNilDictionary:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _archivedMedsCountPayloadWithTransaction:v5];
  [v9 hk_addEntriesFromNonNilDictionary:v10];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) _medsInteractionsPayloadWithTransaction:v5];

  [v11 hk_addEntriesFromNonNilDictionary:v12];
  return 1;
}

- (id)_weeksSinceFirstAddedMedPayloadWithTransaction:(id)transaction
{
  v33[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v7 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10500] entityClass:objc_opt_class() ascending:1];
  v33[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userDomainConceptManager = [WeakRetained userDomainConceptManager];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HDMedicationUserDomainConceptDailyAnalytics__weeksSinceFirstAddedMedPayloadWithTransaction___block_invoke;
  v23[3] = &unk_2796CE488;
  v23[4] = &v25;
  v24 = 0;
  v12 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v7 limit:1 orderingTerms:v9 error:&v24 enumerationHandler:v23];
  v13 = v24;

  if (v12)
  {
    if (v26[5])
    {
      v14 = [(NSCalendar *)self->_calendar startOfDayForDate:self->_currentDate];
      calendar = self->_calendar;
      creationDate = [v26[5] creationDate];
      v17 = [(NSCalendar *)calendar startOfDayForDate:creationDate];

      v18 = self->_calendar;
      v19 = HKMedicationAnalyticsWeeksBetweenDates();
      [v5 setObject:v19 forKeyedSubscript:@"weeksSinceFirstAddedMed"];

      v20 = v5;
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] No error when fetching oldest medications added, but also no value", buf, 0xCu);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _weeksSinceFirstAddedMedPayloadWithTransaction:];
    }
  }

  v20 = 0;
LABEL_9:

  _Block_object_dispose(&v25, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_hasAnyLifestyleFactorEnabledPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11418]])
  {
    [v4 addObject:&unk_2863C2A98];
  }

  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11450]])
  {
    [v4 addObject:&unk_2863C2AB0];
  }

  if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D114C0]])
  {
    [v4 addObject:&unk_2863C2AC8];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "count") != 0}];
  [v3 setObject:v5 forKeyedSubscript:@"hasAnyLifestyleFactorEnabled"];

  return v3;
}

- (id)_medsInteractionsPayloadWithTransaction:(id)transaction
{
  v74[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v48 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  appleOntologySystem = [MEMORY[0x277CCD5D0] appleOntologySystem];
  v47 = HDUserDomainConceptEntityPredicateForMedicalCodingSystem();

  v46 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v5 = MEMORY[0x277D10B20];
  v74[0] = v48;
  v74[1] = v46;
  v74[2] = v47;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
  v45 = [v5 predicateMatchingAllPredicates:v6];

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__10;
  v70 = __Block_byref_object_dispose__10;
  v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userDomainConceptManager = [WeakRetained userDomainConceptManager];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __87__HDMedicationUserDomainConceptDailyAnalytics__medsInteractionsPayloadWithTransaction___block_invoke;
  v64[3] = &unk_2796CE4B0;
  v64[4] = &v66;
  v65 = 0;
  v9 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v45 error:&v65 enumerationHandler:v64];
  v51 = v65;

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11418]])
    {
      [v10 addObject:&unk_2863C2A98];
    }

    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D11450]])
    {
      [v10 addObject:&unk_2863C2AB0];
    }

    if ([(HDKeyValueDomain *)self->_medicationsKeyValueDomain hdmd_numberValueAsBoolForKey:*MEMORY[0x277D114C0]])
    {
      [v10 addObject:&unk_2863C2AC8];
    }

    v43 = v10;

    v11 = v67[5];
    v12 = objc_loadWeakRetained(&self->_profile);
    v63 = 0;
    v42 = [HDDrugInteractionEngine interactionResultsForMedications:v11 lifestyleFactors:v43 profile:v12 error:&v63];
    v51 = v63;

    if (v42)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v42;
      v13 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v13)
      {
        v53 = *v60;
        do
        {
          v54 = v13;
          for (i = 0; i != v54; ++i)
          {
            if (*v60 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v59 + 1) + 8 * i);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            interactions = [v18 interactions];
            v20 = [interactions countByEnumeratingWithState:&v55 objects:v72 count:16];
            if (v20)
            {
              v21 = *v56;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v56 != v21)
                  {
                    objc_enumerationMutation(interactions);
                  }

                  severity = [*(*(&v55 + 1) + 8 * j) severity];
                  severityLevel = [severity severityLevel];

                  switch(severityLevel)
                  {
                    case 1:
                      ++v14;
                      break;
                    case 2:
                      ++v15;
                      break;
                    case 3:
                      ++v16;
                      break;
                  }
                }

                v20 = [interactions countByEnumeratingWithState:&v55 objects:v72 count:16];
              }

              while (v20);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v13);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:v15 + v14 + v16];
      v26 = HDMedicationDailyAnalyticsBucketForCount(v25);
      [v50 setObject:v26 forKeyedSubscript:@"numberOfMedsInteractions"];

      v27 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v28 = HDMedicationDailyAnalyticsBucketForCount(v27);
      [v50 setObject:v28 forKeyedSubscript:@"numberOfSevereMedsInteractions"];

      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v30 = HDMedicationDailyAnalyticsBucketForCount(v29);
      [v50 setObject:v30 forKeyedSubscript:@"numberOfCriticalMedsInteractions"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      v32 = HDMedicationDailyAnalyticsBucketForCount(v31);
      [v50 setObject:v32 forKeyedSubscript:@"numberOfMajorMedsInteractions"];

      v33 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      v34 = HDMedicationDailyAnalyticsBucketForCount(v33);
      [v50 setObject:v34 forKeyedSubscript:@"numberOfSeriousMedsInteractions"];

      v35 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      v36 = HDMedicationDailyAnalyticsBucketForCount(v35);
      [v50 setObject:v36 forKeyedSubscript:@"numberOfModerateMedsInteractions"];

      v37 = v50;
    }

    else
    {
      _HKInitializeLogging();
      v39 = HKLogMedication();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationUserDomainConceptDailyAnalytics _medsInteractionsPayloadWithTransaction:];
      }

      v37 = 0;
    }

    v38 = v43;
  }

  else
  {
    _HKInitializeLogging();
    v38 = HKLogMedication();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsInteractionsPayloadWithTransaction:];
    }

    v37 = 0;
  }

  _Block_object_dispose(&v66, 8);
  v40 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)_hasAddedMedsInPastIHAGatedPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-1 toDate:self->_currentDate];
  v7 = [objc_opt_class() _medicationsAddedCountSinceDate:v6 transaction:transactionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPast24hrs"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastWeek"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastYear"];
      goto LABEL_11;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPast24hrs"];
  }

  v10 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-7 toDate:self->_currentDate];
  v11 = [objc_opt_class() _medicationsAddedCountSinceDate:v10 transaction:transactionCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 integerValue] < 1)
    {
      v16 = MEMORY[0x277CBEC28];
      v14 = @"hasAddedMedsInPastWeek";
      v15 = v5;
    }

    else
    {
      v13 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPastWeek"];
      [v5 setObject:v13 forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v13 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      v14 = @"hasAddedMedsInPastYear";
      v15 = v5;
      v16 = v13;
    }

    [v15 setObject:v16 forKeyedSubscript:v14];
  }

LABEL_11:

  return v5;
}

- (id)_hasAddedMedsInPastUnrestrictedPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-30 toDate:self->_currentDate];
  v7 = [objc_opt_class() _medicationsAddedCountSinceDate:v6 transaction:transactionCopy];
  v8 = v7;
  if (v7)
  {
    if ([v7 integerValue] >= 1)
    {
      v9 = MEMORY[0x277CBEC38];
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPastMonth"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPast6Months"];
      [v5 setObject:v9 forKeyedSubscript:@"hasAddedMedsInPastYear"];
      v10 = v5;
      goto LABEL_13;
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPastMonth"];
  }

  v11 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-180 toDate:self->_currentDate];
  v12 = [objc_opt_class() _medicationsAddedCountSinceDate:v11 transaction:transactionCopy];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  if ([v12 integerValue] < 1)
  {
    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasAddedMedsInPast6Months"];
LABEL_9:
    v16 = [(NSCalendar *)self->_calendar hk_dateByAddingDays:-365 toDate:self->_currentDate];
    v17 = [objc_opt_class() _medicationsAddedCountSinceDate:v16 transaction:transactionCopy];
    v18 = v17;
    if (v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "integerValue") > 0}];
      [v5 setObject:v19 forKeyedSubscript:@"hasAddedMedsInPastYear"];
    }

    v20 = v5;

    goto LABEL_12;
  }

  v14 = MEMORY[0x277CBEC38];
  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasAddedMedsInPast6Months"];
  [v5 setObject:v14 forKeyedSubscript:@"hasAddedMedsInPastYear"];
  v15 = v5;
LABEL_12:

LABEL_13:

  return v5;
}

- (id)_medsCountPayloadWithTransaction:(id)transaction
{
  v3 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = 0;
  v7 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v6 options:0 transaction:transactionCopy error:&v11];

  v8 = v11;
  if (v7)
  {
    v9 = HDMedicationDailyAnalyticsBucketForCount(v7);
    [v5 setObject:v9 forKeyedSubscript:@"numberOfMedsInList"];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsCountPayloadWithTransaction:];
    }
  }

  return v5;
}

- (id)_archivedMedsCountPayloadWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0;
  v5 = [objc_opt_class() _countOfUserDomainConceptsWithPredicate:0 transaction:transactionCopy error:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = objc_opt_class();
    v8 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
    v16 = v6;
    v9 = [v7 _countOfUserDomainConceptsWithPredicate:v8 transaction:transactionCopy error:&v16];
    v10 = v16;

    if (v9)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue") - -[NSObject intValue](v9, "intValue")}];
      v12 = HDMedicationDailyAnalyticsBucketForCount(v11);
      [v4 setObject:v12 forKeyedSubscript:@"numberOfArchivedMeds"];

      v13 = v4;
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationUserDomainConceptDailyAnalytics _archivedMedsCountPayloadWithTransaction:];
      }

      v13 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _archivedMedsCountPayloadWithTransaction:];
    }

    v13 = 0;
    v10 = v6;
  }

  return v13;
}

- (id)_hasMedsListPayloadWithTransaction:(id)transaction
{
  v3 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D10938] predicateForElementsOfListType:2];
  v11 = 0;
  v7 = [MEMORY[0x277D10938] countOfUserDomainConceptsMatchingPredicate:v6 options:0 transaction:transactionCopy error:&v11];

  v8 = v11;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "integerValue") > 0}];
    [v5 setObject:v9 forKeyedSubscript:@"hasMedsList"];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationUserDomainConceptDailyAnalytics _medsCountPayloadWithTransaction:];
    }
  }

  return v5;
}

+ (id)_medicationsAddedCountSinceDate:(id)date transaction:(id)transaction
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  transactionCopy = transaction;
  v8 = [objc_opt_class() _predicateForMedicationsSinceDate:dateCopy];
  v15 = 0;
  v9 = [objc_opt_class() _countOfUserDomainConceptsWithPredicate:v8 transaction:transactionCopy error:&v15];

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
      selfCopy = self;
      v18 = 2114;
      v19 = dateCopy;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error when determining if user added medications since date: %{public}@, continuing daily analytics submission: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_countOfUserDomainConceptsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  predicateCopy = predicate;
  v9 = objc_opt_class();
  v10 = *MEMORY[0x277D10560];
  protectedDatabase = [transactionCopy protectedDatabase];

  v12 = [v9 countDistinctForProperty:v10 predicate:predicateCopy database:protectedDatabase error:error];

  return v12;
}

+ (id)_predicateForMedicationsSinceDate:(id)date
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCDB50];
  dateCopy = date;
  medicationUserDomainConceptTypeIdentifier = [v3 medicationUserDomainConceptTypeIdentifier];
  v6 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier();
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10500] greaterThanValue:dateCopy];

  v8 = MEMORY[0x277D10B20];
  v13[0] = v6;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v8 predicateMatchingAllPredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_weeksSinceFirstAddedMedPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error fetching oldest medication while determening weeks since first med added, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_medsInteractionsPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error fetching medications while determining interactions, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_medsInteractionsPayloadWithTransaction:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error fetching interaction results, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_medsCountPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error when determining if user has active medications in the database, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_archivedMedsCountPayloadWithTransaction:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Failed to get active medications with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_archivedMedsCountPayloadWithTransaction:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Failed to get all medications with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end