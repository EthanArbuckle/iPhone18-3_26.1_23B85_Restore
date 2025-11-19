@interface HDMedicationsDemoDataGenerator
- (BOOL)_saveStateWithError:(id *)a3;
- (BOOL)loadDemoDataObjectsFrom:(id)a3 medications:(id)a4 schedules:(id)a5 logHistory:(id)a6;
- (BOOL)saveMedicationDoseEvents:(id)a3 error:(id *)a4;
- (BOOL)saveMedications:(id)a3 schedules:(id)a4 logHistory:(id)a5;
- (BOOL)setupOntologyContentIfRequired;
- (HDMedicationsDemoDataGenerator)init;
- (HDMedicationsDemoDataGenerator)initWithCoder:(id)a3;
- (HDProfile)profile;
- (id)_keyValueDomain;
- (id)_scheduleItemsForDate:(id)a3;
- (id)asNeededDoseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 doseUnitString:(id)a6;
- (id)dailyScheduleForMedicationIdentifier:(id)a3 isAMSchedule:(BOOL)a4;
- (id)dayBeforeDate:(id)a3 withHour:(int64_t)a4;
- (id)doseEventWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 medicationIdentifier:(id)a5 scheduledDoseQuantity:(id)a6 doseQuantity:(id)a7 scheduledDate:(id)a8 startDate:(id)a9 status:(int64_t)a10 doseUnitString:(id)a11;
- (id)doseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 logOrigin:(int64_t)a6 doseUnitString:(id)a7;
- (id)doseEventsForScheduleItems:(id)a3 withStatus:(int64_t)a4;
- (id)medicationWithDetail:(id)a3;
- (id)scheduledDoseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 doseUnitString:(id)a6;
- (id)scheduledDoseEventsWithCurrentDate:(id)a3;
- (int64_t)dayDifferenceFrom:(id)a3 to:(id)a4;
- (void)generateDemoDataForCurrentDate:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateIntitialDemoDataIfRequired;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)overrideMedicationShardCheck;
- (void)restoreState;
- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4;
- (void)setupOntologyContentIfRequired;
- (void)updateDemoDataFileName;
@end

@implementation HDMedicationsDemoDataGenerator

- (HDMedicationsDemoDataGenerator)init
{
  v10.receiver = self;
  v10.super_class = HDMedicationsDemoDataGenerator;
  v2 = [(HDMedicationsDemoDataGenerator *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->isGeneratingDataOnWatch = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    v5 = [v4 currentCalendar];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = v5;

    v7 = objc_alloc_init(HDMedicationsDemoDataGeneratorState);
    state = v3->_state;
    v3->_state = v7;

    [(HDMedicationsDemoDataGenerator *)v3 updateDemoDataFileName];
    [(HDMedicationsDemoDataGenerator *)v3 overrideMedicationShardCheck];
  }

  return v3;
}

- (void)updateDemoDataFileName
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 1024;
    v12 = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateDemoDataFileName  [NSLocale hk_isUSLocale] %d .", &v9, 0x12u);
  }

  if (([MEMORY[0x277CCDD30] isRunningStoreDemoMode] & 1) != 0 || objc_msgSend(MEMORY[0x277CCDD30], "runningInStoreDemoModeF201"))
  {
    v4 = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    v5 = @"medications_store_demo_data_NonUS";
    v6 = @"medications_store_demo_data_US";
  }

  else
  {
    v4 = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    v5 = @"medications_demo_data_NonUS";
    v6 = @"medications_demo_data_US";
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  objc_storeStrong(&self->_demoDataFileName, v7);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)overrideMedicationShardCheck
{
  v2 = [(HDMedicationsDemoDataGenerator *)self profile];
  v3 = [v2 healthMedicationsProfileExtension];
  v4 = [v3 medicationUserDefaults];

  [v4 setBool:1 forKey:*MEMORY[0x277D11490]];
}

- (id)_keyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:3 domainName:@"MedicationsDemoData" profile:WeakRetained];

  return v5;
}

- (BOOL)_saveStateWithError:(id *)a3
{
  v5 = [(HDMedicationsDemoDataGenerator *)self _keyValueDomain];
  v6 = [(HDMedicationsDemoDataGeneratorState *)self->_state dictionary];
  LOBYTE(a3) = [v5 setValuesWithDictionary:v6 error:a3];

  return a3;
}

- (void)restoreState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HDMedicationsDemoDataGenerator *)self _keyValueDomain];
  v10 = 0;
  v4 = [v3 allValuesWithError:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [[HDMedicationsDemoDataGeneratorState alloc] initWithDictionary:v4];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v12 = self;
      v13 = 2114;
      v14 = v3;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_25181C000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Could not load HDMedicationsDemoDataGeneratorState from KeyValueDomain %{public}@  Error: %{public}@", buf, 0x20u);
    }

    v6 = objc_alloc_init(HDMedicationsDemoDataGeneratorState);
  }

  state = self->_state;
  self->_state = v6;

  v9 = *MEMORY[0x277D85DE8];
}

- (HDMedicationsDemoDataGenerator)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = HDMedicationsDemoDataGenerator;
  v3 = [(HDMedicationsDemoDataGenerator *)&v9 init];
  v4 = v3;
  if (v3)
  {
    v3->isGeneratingDataOnWatch = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    v6 = [v5 currentCalendar];
    currentCalendar = v4->_currentCalendar;
    v4->_currentCalendar = v6;

    [(HDMedicationsDemoDataGenerator *)v4 restoreState];
    [(HDMedicationsDemoDataGenerator *)v4 updateDemoDataFileName];
    [(HDMedicationsDemoDataGenerator *)v4 overrideMedicationShardCheck];
  }

  return v4;
}

- (id)doseEventWithLogOrigin:(int64_t)a3 scheduleItemIdentifier:(id)a4 medicationIdentifier:(id)a5 scheduledDoseQuantity:(id)a6 doseQuantity:(id)a7 scheduledDate:(id)a8 startDate:(id)a9 status:(int64_t)a10 doseUnitString:(id)a11
{
  v33[2] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCD650];
  v30 = a11;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v29 = [v16 syncIdentifierForScheduleItemIdentifier:0 medicationIdentifier:v21];
  v23 = [MEMORY[0x277CCD650] syncVersionForStatus:4];
  v24 = *MEMORY[0x277CCC528];
  v32[0] = *MEMORY[0x277CCC520];
  v32[1] = v24;
  v33[0] = v29;
  v33[1] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v26 = [MEMORY[0x277CCD650] medicationDoseEventWithLogOrigin:a3 scheduleItemIdentifier:v22 medicationIdentifier:v21 scheduledDoseQuantity:v20 doseQuantity:v19 scheduledDate:v18 startDate:v17 logStatus:a10 doseUnitString:v30 metadata:v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)saveMedicationDoseEvents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMedicationsDemoDataGenerator *)self profile];
  v8 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:v7 error:a4];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = [WeakRetained dataManager];
    v11 = [v10 insertDataObjects:v6 sourceEntity:v8 deviceEntity:0 sourceVersion:0 creationDate:a4 error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)asNeededDoseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 doseUnitString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v11;
  v20 = v14;
  if (a5)
  {
    v15 = 0x800000000;
    v16 = v14;
    do
    {
      v17 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:1 scheduleItemIdentifier:0 medicationIdentifier:v10 scheduledDoseQuantity:0 doseQuantity:&unk_2863C2738 scheduledDate:0 startDate:v16 status:4 doseUnitString:v12];
      [v13 addObject:v17];

      v14 = [v16 dateByAddingTimeInterval:-691200.0];

      v18 = a5 > v15 >> 32;
      v15 += 0x800000000;
      v16 = v14;
    }

    while (v18);
  }

  return v13;
}

- (id)scheduledDoseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 doseUnitString:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = v10;
  v22 = v13;
  if (a5)
  {
    v14 = 0;
    v15 = v13;
    do
    {
      v16 = [MEMORY[0x277D11588] makeStableIdentifierFromScheduledDateTime:v15];
      if ((v14 & 0x7FFFFFF7) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 5;
      }

      if ((v14 & 0x7FFFFFF7) != 0)
      {
        v18 = 300.0;
      }

      else
      {
        v18 = 0.0;
      }

      v19 = [v15 dateByAddingTimeInterval:v18];
      v20 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:2 scheduleItemIdentifier:v16 medicationIdentifier:v23 scheduledDoseQuantity:&unk_2863C2738 doseQuantity:&unk_2863C2738 scheduledDate:v15 startDate:v19 status:v17 doseUnitString:v11];
      [v12 addObject:v20];

      ++v14;
      v13 = [v15 dateByAddingTimeInterval:-86400.0];

      v15 = v13;
    }

    while (a5 != v14);
  }

  return v12;
}

- (id)doseEventsForMedication:(id)a3 startDateTime:(id)a4 historyDayCount:(unint64_t)a5 logOrigin:(int64_t)a6 doseUnitString:(id)a7
{
  if (a6 == 2)
  {
    [(HDMedicationsDemoDataGenerator *)self scheduledDoseEventsForMedication:a3 startDateTime:a4 historyDayCount:a5 doseUnitString:a7];
  }

  else
  {
    [(HDMedicationsDemoDataGenerator *)self asNeededDoseEventsForMedication:a3 startDateTime:a4 historyDayCount:a5 doseUnitString:a7];
  }
  v7 = ;

  return v7;
}

- (id)dailyScheduleForMedicationIdentifier:(id)a3 isAMSchedule:(BOOL)a4
{
  v4 = a4;
  v22[1] = *MEMORY[0x277D85DE8];
  currentCalendar = self->_currentCalendar;
  v7 = MEMORY[0x277CBEAA8];
  v8 = a3;
  v9 = [v7 date];
  v10 = [(NSCalendar *)currentCalendar startOfDayForDate:v9];

  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v12 = v11;
  if (v4)
  {
    v13 = 8;
  }

  else
  {
    v13 = 20;
  }

  [v11 setHour:v13];
  v14 = [objc_alloc(MEMORY[0x277D11580]) initWithStartTimeComponent:v12 daysOfWeek:0 cycleIndex:0 cycleIntervalDays:0 dose:&unk_2863C2738];
  v15 = objc_alloc(MEMORY[0x277D11570]);
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [(NSCalendar *)self->_currentCalendar timeZone];
  v22[0] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = [v15 initWithUUID:v16 medicationIdentifier:v8 createdUTCOffset:v17 startDateTime:v10 endDateTime:0 timeIntervals:v18 scheduleType:2 cycleStartDateComponents:0 note:0];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)medicationWithDetail:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"VisualConfigFileName"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 stringByDeletingPathExtension];
  v8 = [v5 pathExtension];
  v9 = [v6 pathForResource:v7 ofType:v8];

  v45 = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:0];
  if (self->isGeneratingDataOnWatch)
  {
    goto LABEL_7;
  }

  v11 = [v4 objectForKey:@"OntologyCoding"];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [v4 objectForKey:@"OntologyCoding"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v4 objectForKey:@"OntologyCoding"];
    v16 = MEMORY[0x277CCDB28];
    v17 = [v4 objectForKey:@"NickName"];
    v44 = v10;
    v18 = [v16 propertyCollectionWithUserSpecifiedName:v17 userSpecifiedNotes:0 medicationVisualizationConfig:v10 freeTextProperties:0];
    v19 = [v18 properties];

    v20 = MEMORY[0x277D10920];
    v21 = [MEMORY[0x277CCD1D0] identifierWithNumber:v15];
    v22 = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
    v23 = [(HDMedicationsDemoDataGenerator *)self profile];
    v46 = 0;
    v24 = [v20 createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:v21 additionalProperties:v19 userDomainConceptTypeIdentifier:v22 profile:v23 error:&v46];
    v25 = v46;

    _HKInitializeLogging();
    v26 = HKLogMedication();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = self;
      v49 = 2114;
      v50 = v24;
      _os_log_impl(&dword_25181C000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Medication generated from ontology code %{public}@ .", buf, 0x16u);
    }

    v27 = v44;
  }

  else
  {
LABEL_7:
    v28 = v10;
    v15 = [v4 objectForKey:@"Strength"];
    if (v15)
    {
      v29 = [v4 objectForKey:@"Strength"];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v31 = [v4 objectForKey:@"Strength"];
        v32 = [v4 objectForKey:@"isStrengthInMCG"];
        if ([v32 BOOLValue])
        {
          v33 = 3;
        }

        else
        {
          v33 = 4;
        }

        v34 = MEMORY[0x277CCD7E8];
        v35 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:v33];
        [v31 doubleValue];
        v15 = [v34 quantityWithUnit:v35 doubleValue:?];
      }

      else
      {
        v15 = 0;
      }
    }

    v36 = MEMORY[0x277CCDB28];
    v37 = [v4 objectForKey:@"Name"];
    v38 = [v4 objectForKey:@"DoseFormCode"];
    v19 = [v36 userDomainConceptPropertyListWithFreeTextMedicationName:v37 freeTextFormCode:objc_msgSend(v38 freeTextStrengthQuantity:{"intValue"), v15}];

    v39 = objc_alloc(MEMORY[0x277D115B8]);
    v40 = [v4 objectForKey:@"NickName"];
    v41 = v39;
    v27 = v28;
    v24 = [v41 initWithOntologyCoding:0 userSpecifiedName:v40 userSpecifiedNotes:0 medicationVisualizationConfig:v28 freeTextProperties:v19];

    _HKInitializeLogging();
    v26 = HKLogMedication();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v48 = self;
      v49 = 2114;
      v50 = v24;
      _os_log_impl(&dword_25181C000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Medication generated as free text med %{public}@ .", buf, 0x16u);
    }

    v25 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)saveMedications:(id)a3 schedules:(id)a4 logHistory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained database];
  v13 = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__HDMedicationsDemoDataGenerator_saveMedications_schedules_logHistory___block_invoke;
  v21[3] = &unk_2796CD5F0;
  v21[4] = self;
  v14 = v8;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  v16 = v10;
  v24 = v16;
  v17 = [v12 performTransactionWithContext:v13 error:&v25 block:v21 inaccessibilityHandler:0];
  v18 = v25;

  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = HKLogMedication();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationsDemoDataGenerator saveMedications:schedules:logHistory:];
    }
  }

  return v17;
}

uint64_t __71__HDMedicationsDemoDataGenerator_saveMedications_schedules_logHistory___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v6 = [WeakRetained userDomainConceptManager];
  v7 = [v6 updateUserDomainConcepts:*(a1 + 40) error:a3];

  if (!v7)
  {
    return 0;
  }

  v8 = [*(a1 + 32) profile];
  v9 = [v8 healthMedicationsProfileExtension];
  v10 = [v9 medicationScheduleManager];

  if ([v10 insertMedicationSchedules:*(a1 + 48) error:a3] && objc_msgSend(*(a1 + 32), "saveMedicationDoseEvents:error:", *(a1 + 56), a3))
  {
    [*(*(a1 + 32) + 16) setDidSaveIntialData:1];
    v11 = [*(a1 + 32) _saveStateWithError:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)loadDemoDataObjectsFrom:(id)a3 medications:(id)a4 schedules:(id)a5 logHistory:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v39 = a5;
  v38 = a6;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v10;
  v43 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v43)
  {
    v41 = v11;
    v42 = *v45;
    obj = v12;
    while (2)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [(HDMedicationsDemoDataGenerator *)self medicationWithDetail:v14, v38];
        if (!v15)
        {
          _HKInitializeLogging();
          v35 = HKLogMedication();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [HDMedicationsDemoDataGenerator loadDemoDataObjectsFrom:medications:schedules:logHistory:];
          }

          v34 = 0;
          v12 = obj;
          v33 = obj;
          goto LABEL_27;
        }

        v16 = v15;
        [v11 addObject:v15];
        v17 = [v16 semanticIdentifier];
        v18 = [v17 stringValue];

        v19 = [v16 canonicalDoseUnitString];
        v20 = [v14 objectForKey:@"hasSchedule"];
        v21 = [v20 BOOLValue];

        if (v21)
        {
          v22 = [v14 objectForKey:@"isAMSchedule"];
          v23 = -[HDMedicationsDemoDataGenerator dailyScheduleForMedicationIdentifier:isAMSchedule:](self, "dailyScheduleForMedicationIdentifier:isAMSchedule:", v18, [v22 BOOLValue]);

          [v39 addObject:v23];
          [(HDMedicationsDemoDataGeneratorState *)self->_state setHasScheduledMedications:1];

          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        if (!self->isGeneratingDataOnWatch)
        {
          v25 = [v14 objectForKey:@"shouldGenerateLogHistory"];
          v26 = [v25 BOOLValue];

          if (v26)
          {
            if (v21)
            {
              v27 = [v14 objectForKey:@"isAMSchedule"];
              if ([v27 BOOLValue])
              {
                v28 = 8;
              }

              else
              {
                v28 = 20;
              }
            }

            else
            {
              v28 = 15;
            }

            v29 = [MEMORY[0x277CBEAA8] date];
            v30 = [(HDMedicationsDemoDataGenerator *)self dayBeforeDate:v29 withHour:v28];

            [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:v30];
            v31 = [(HDMedicationsDemoDataGenerator *)self doseEventsForMedication:v18 startDateTime:v30 historyDayCount:30 logOrigin:v24 doseUnitString:v19];
            if ([v31 count])
            {
              [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:v30];
              [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestTakenLogDate:v30];
            }

            [v38 addObjectsFromArray:v31];
          }
        }

        v11 = v41;
      }

      v12 = obj;
      v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  v32 = [objc_alloc(MEMORY[0x277CCD580]) initWithListType:2 listName:@"Active Medications"];
  v33 = [v32 listByAddingUserDomainConcepts:v11];

  [v11 addObject:v33];
  v34 = 1;
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)generateIntitialDemoDataIfRequired
{
  v29 = *MEMORY[0x277D85DE8];
  if (![(HDMedicationsDemoDataGeneratorState *)self->_state didSaveIntialData])
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 pathForResource:self->_demoDataFileName ofType:@"json"];

    _HKInitializeLogging();
    v5 = HKLogMedication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] generateDemoData JSON path %{public}@", &v21, 0x16u);
    }

    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
    v8 = v7;
    if (!v7 || ![v7 count])
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v3;
        _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not decode JSON file %{public}@", &v21, 0x16u);
      }

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] generateDemoData medicationDetails from JSON %{public}@", &v21, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([(HDMedicationsDemoDataGenerator *)self loadDemoDataObjectsFrom:v8 medications:v10 schedules:v11 logHistory:v12])
    {
      if (![(HDMedicationsDemoDataGenerator *)self saveMedications:v10 schedules:v11 logHistory:v12])
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      _HKInitializeLogging();
      v13 = HKLogMedication();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v10 count];
        v15 = [v11 count];
        v16 = [v12 count];
        v21 = 138544130;
        v22 = self;
        v23 = 2048;
        v24 = v14;
        v25 = 2048;
        v26 = v15;
        v27 = 2048;
        v28 = v16;
        v17 = "[%{public}@] Complete generateDemoData UDC Count %lu schdule count %lu logHistory count %lu";
        v18 = v13;
        v19 = 42;
LABEL_18:
        _os_log_impl(&dword_25181C000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
      }
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogMedication();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = self;
        v23 = 2114;
        v24 = v8;
        v17 = "[%{public}@] Could not create objects from Medication details %{public}@";
        v18 = v13;
        v19 = 22;
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = self;
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initial Medications Demo Data is already setup.", &v21, 0xCu);
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)setupOntologyContentIfRequired
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->isGeneratingDataOnWatch && [MEMORY[0x277D11538] supportsOntologyBackedMedications] && !-[HDMedicationsDemoDataGeneratorState didSetupOntologyData](self->_state, "didSetupOntologyData"))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"MedsDemoData-MercuryZipTSV-002-27000024" withExtension:@"zip"];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v9 = [WeakRetained daemon];
    v10 = [v9 ontologyUpdateCoordinator];
    v11 = *MEMORY[0x277CCC5F0];
    v12 = *MEMORY[0x277CCC630];
    v19 = 0;
    v3 = [v10 updateOntologyWithShardIdentifier:v11 schemaType:v12 schemaVersion:HKCurrentSchemaVersionForShardIdentifier() localShardURL:v7 shardVersion:27000024 error:&v19];
    v13 = v19;

    _HKInitializeLogging();
    v14 = HKLogMedication();
    v15 = v14;
    if (v3)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = self;
        _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully updated ontology shard.", buf, 0xCu);
      }

      [(HDMedicationsDemoDataGeneratorState *)self->_state setDidSetupOntologyData:1];
      v18 = v13;
      v16 = [(HDMedicationsDemoDataGenerator *)self _saveStateWithError:&v18];
      v17 = v18;

      if (v16)
      {
        goto LABEL_16;
      }

      _HKInitializeLogging();
      v15 = HKLogMedication();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationsDemoDataGenerator setupOntologyContentIfRequired];
      }

      v13 = v17;
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationsDemoDataGenerator setupOntologyContentIfRequired];
    }

    v17 = v13;
LABEL_16:

    goto LABEL_5;
  }

  v3 = 1;
LABEL_5:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_scheduleItemsForDate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HDMedicationScheduleItemPredicateForScheduledDateTime(1);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v21 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__HDMedicationsDemoDataGenerator__scheduleItemsForDate___block_invoke;
  v18[3] = &unk_2796CD5C8;
  v9 = v5;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  v11 = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:v8 error:&v21 block:v18];
  v12 = v21;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Could not read schedule items for %{public}@ Error: %{public}@", buf, 0x20u);
    }
  }

  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __56__HDMedicationsDemoDataGenerator__scheduleItemsForDate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDMedicationsDemoDataGenerator__scheduleItemsForDate___block_invoke_2;
  v8[3] = &unk_2796CD618;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v5 orderingTerms:0 transaction:a2 error:a3 enumerationHandler:v8];

  return v6;
}

- (id)doseEventsForScheduleItems:(id)a3 withStatus:(int64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v24)
  {
    v23 = *v36;
    do
    {
      v5 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * v5);
        v30 = [v6 identifier];
        v7 = [v6 scheduledDateTime];
        v8 = v7;
        v25 = v5;
        if (a4 == 4)
        {
          v9 = [v7 dateByAddingTimeInterval:300.0];

          v8 = v9;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v26 = [v6 doses];
        v10 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v26);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              v15 = [v14 medicationIdentifier];
              v16 = [v14 dose];
              v17 = [v14 dose];
              v18 = [v6 scheduledDateTime];
              v19 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:2 scheduleItemIdentifier:v30 medicationIdentifier:v15 scheduledDoseQuantity:v16 doseQuantity:v17 scheduledDate:v18 startDate:v8 status:a4 doseUnitString:0];
              [v28 addObject:v19];
            }

            v11 = [v26 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v11);
        }

        v5 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)scheduledDoseEventsWithCurrentDate:(id)a3
{
  v4 = [(HDMedicationsDemoDataGenerator *)self dayBeforeDate:a3 withHour:0];
  if (![(HDMedicationsDemoDataGeneratorState *)self->_state hasScheduledMedications]|| ([(HDMedicationsDemoDataGeneratorState *)self->_state latestLogDate], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, [(HDMedicationsDemoDataGeneratorState *)self->_state latestLogDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 >= v4))
  {
    v11 = 0;
  }

  else
  {
    v8 = [(HDMedicationsDemoDataGeneratorState *)self->_state latestTakenLogDate];
    if (v8)
    {
      v9 = [(HDMedicationsDemoDataGeneratorState *)self->_state latestTakenLogDate];
      if ([(HDMedicationsDemoDataGenerator *)self dayDifferenceFrom:v9 to:v4]<= 7)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }
    }

    else
    {
      v10 = 4;
    }

    v12 = [(HDMedicationsDemoDataGenerator *)self _scheduleItemsForDate:v4];
    v11 = [(HDMedicationsDemoDataGenerator *)self doseEventsForScheduleItems:v12 withStatus:v10];
    if ([v11 count])
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      v14 = [v13 startDate];
      [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:v14];

      if (v10 == 4)
      {
        v15 = [v11 objectAtIndexedSubscript:0];
        v16 = [v15 startDate];
        [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestTakenLogDate:v16];
      }
    }
  }

  return v11;
}

- (void)generateDemoDataForCurrentDate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->isGeneratingDataOnWatch)
  {
    v5 = [(HDMedicationsDemoDataGenerator *)self scheduledDoseEventsWithCurrentDate:v4];
    v6 = v5;
    if (v5 && [v5 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v8 = [WeakRetained database];
      v9 = [MEMORY[0x277D106B8] contextForWritingProtectedData];
      v17 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__HDMedicationsDemoDataGenerator_generateDemoDataForCurrentDate___block_invoke;
      v15[3] = &unk_2796CD5C8;
      v15[4] = self;
      v16 = v6;
      v10 = [v8 performTransactionWithContext:v9 error:&v17 block:v15 inaccessibilityHandler:0];
      v11 = v17;

      _HKInitializeLogging();
      v12 = HKLogMedication();
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v19 = self;
          v20 = 2114;
          v21 = v4;
          _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, " [%{public}@] Completed dose events generation for current date %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v19 = self;
        v20 = 2114;
        v21 = v4;
        v22 = 2114;
        v23 = v11;
        _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Could not Demodata for Date  %{public}@ Error: %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HDMedicationsDemoDataGenerator_generateDemoDataForCurrentDate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) saveMedicationDoseEvents:*(a1 + 40) error:a3];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 _saveStateWithError:a3];
  }

  return result;
}

- (void)setDemoDataGenerationContextWithProfile:(id)a3 generatorState:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_25181C000, v6, OS_LOG_TYPE_DEFAULT, " [%{public}@] setDemoDataGenerationContext", &v8, 0xCu);
  }

  objc_storeWeak(&self->_profile, v5);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = HKLogMedication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v23 = 138543618;
    v24 = self;
    v25 = 2114;
    v26 = WeakRetained;
    _os_log_impl(&dword_25181C000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] generateFirstRunObjectsForDemoPerson _profile %{public}@", &v23, 0x16u);
  }

  v8 = objc_loadWeakRetained(&self->_profile);
  if (!v8)
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationsDemoDataGenerator *)self generateFirstRunObjectsForDemoPerson:v9 firstDate:v10 objectCollection:v11, v12, v13, v14, v15];
    }

    goto LABEL_10;
  }

  [(HDMedicationsDemoDataGenerator *)self restoreState];
  if (![(HDMedicationsDemoDataGenerator *)self setupOntologyContentIfRequired])
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationsDemoDataGenerator *)self generateFirstRunObjectsForDemoPerson:v9 firstDate:v16 objectCollection:v17, v18, v19, v20, v21];
    }

LABEL_10:

    goto LABEL_11;
  }

  [(HDMedicationsDemoDataGenerator *)self generateIntitialDemoDataIfRequired];
LABEL_11:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v8 = a6;
  [(HDMedicationsDemoDataGenerator *)self restoreState];
  if ([(HDMedicationsDemoDataGeneratorState *)self->_state didSaveIntialData])
  {
    [(HDMedicationsDemoDataGenerator *)self generateDemoDataForCurrentDate:v8];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HDMedicationsDemoDataGenerator *)self generateObjectsForDemoPerson:v9 fromTime:v10 toTime:v11 currentDate:v12 objectCollection:v13, v14, v15];
    }
  }
}

- (int64_t)dayDifferenceFrom:(id)a3 to:(id)a4
{
  currentCalendar = self->_currentCalendar;
  v7 = a3;
  v8 = [(NSCalendar *)currentCalendar components:16 fromDate:a4];
  v9 = [(NSCalendar *)self->_currentCalendar components:16 fromDate:v7];

  v10 = [v8 day];
  v11 = v10 - [v9 day];

  return v11;
}

- (id)dayBeforeDate:(id)a3 withHour:(int64_t)a4
{
  v6 = [(NSCalendar *)self->_currentCalendar components:28 fromDate:a3];
  [v6 setDay:{objc_msgSend(v6, "day") - 1}];
  [v6 setHour:a4];
  v7 = [(NSCalendar *)self->_currentCalendar dateFromComponents:v6];

  return v7;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)saveMedications:schedules:logHistory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@]: Could not save Medication Initial Date Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadDemoDataObjectsFrom:medications:schedules:logHistory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not create medication with detail : %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setupOntologyContentIfRequired
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Could not save state after ontology shard update Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)generateFirstRunObjectsForDemoPerson:(uint64_t)a3 firstDate:(uint64_t)a4 objectCollection:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25181C000, a2, a3, "[%{public}@]: Ontology content is required. Can't proceed.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateFirstRunObjectsForDemoPerson:(uint64_t)a3 firstDate:(uint64_t)a4 objectCollection:(uint64_t)a5 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25181C000, a2, a3, "[%{public}@]: Profile not set. Can't proceed.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(uint64_t)a3 fromTime:(uint64_t)a4 toTime:(uint64_t)a5 currentDate:(uint64_t)a6 objectCollection:(uint64_t)a7 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25181C000, a2, a3, "[%{public}@] Does not have initial setup for Medications Demo data. So skipping Dose event sample generation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end