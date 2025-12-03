@interface HDMedicationsDemoDataGenerator
- (BOOL)_saveStateWithError:(id *)error;
- (BOOL)loadDemoDataObjectsFrom:(id)from medications:(id)medications schedules:(id)schedules logHistory:(id)history;
- (BOOL)saveMedicationDoseEvents:(id)events error:(id *)error;
- (BOOL)saveMedications:(id)medications schedules:(id)schedules logHistory:(id)history;
- (BOOL)setupOntologyContentIfRequired;
- (HDMedicationsDemoDataGenerator)init;
- (HDMedicationsDemoDataGenerator)initWithCoder:(id)coder;
- (HDProfile)profile;
- (id)_keyValueDomain;
- (id)_scheduleItemsForDate:(id)date;
- (id)asNeededDoseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count doseUnitString:(id)string;
- (id)dailyScheduleForMedicationIdentifier:(id)identifier isAMSchedule:(BOOL)schedule;
- (id)dayBeforeDate:(id)date withHour:(int64_t)hour;
- (id)doseEventWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)startDate status:(int64_t)self0 doseUnitString:(id)self1;
- (id)doseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count logOrigin:(int64_t)origin doseUnitString:(id)string;
- (id)doseEventsForScheduleItems:(id)items withStatus:(int64_t)status;
- (id)medicationWithDetail:(id)detail;
- (id)scheduledDoseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count doseUnitString:(id)string;
- (id)scheduledDoseEventsWithCurrentDate:(id)date;
- (int64_t)dayDifferenceFrom:(id)from to:(id)to;
- (void)generateDemoDataForCurrentDate:(id)date;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateIntitialDemoDataIfRequired;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)overrideMedicationShardCheck;
- (void)restoreState;
- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state;
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
    currentCalendar = [v4 currentCalendar];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = currentCalendar;

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
    selfCopy = self;
    v11 = 1024;
    hk_isUSLocale = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateDemoDataFileName  [NSLocale hk_isUSLocale] %d .", &v9, 0x12u);
  }

  if (([MEMORY[0x277CCDD30] isRunningStoreDemoMode] & 1) != 0 || objc_msgSend(MEMORY[0x277CCDD30], "runningInStoreDemoModeF201"))
  {
    hk_isUSLocale2 = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    v5 = @"medications_store_demo_data_NonUS";
    v6 = @"medications_store_demo_data_US";
  }

  else
  {
    hk_isUSLocale2 = [MEMORY[0x277CBEAF8] hk_isUSLocale];
    v5 = @"medications_demo_data_NonUS";
    v6 = @"medications_demo_data_US";
  }

  if (hk_isUSLocale2)
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
  profile = [(HDMedicationsDemoDataGenerator *)self profile];
  healthMedicationsProfileExtension = [profile healthMedicationsProfileExtension];
  medicationUserDefaults = [healthMedicationsProfileExtension medicationUserDefaults];

  [medicationUserDefaults setBool:1 forKey:*MEMORY[0x277D11490]];
}

- (id)_keyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:3 domainName:@"MedicationsDemoData" profile:WeakRetained];

  return v5;
}

- (BOOL)_saveStateWithError:(id *)error
{
  _keyValueDomain = [(HDMedicationsDemoDataGenerator *)self _keyValueDomain];
  dictionary = [(HDMedicationsDemoDataGeneratorState *)self->_state dictionary];
  LOBYTE(error) = [_keyValueDomain setValuesWithDictionary:dictionary error:error];

  return error;
}

- (void)restoreState
{
  v17 = *MEMORY[0x277D85DE8];
  _keyValueDomain = [(HDMedicationsDemoDataGenerator *)self _keyValueDomain];
  v10 = 0;
  v4 = [_keyValueDomain allValuesWithError:&v10];
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
      selfCopy = self;
      v13 = 2114;
      v14 = _keyValueDomain;
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

- (HDMedicationsDemoDataGenerator)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = HDMedicationsDemoDataGenerator;
  v3 = [(HDMedicationsDemoDataGenerator *)&v9 init];
  v4 = v3;
  if (v3)
  {
    v3->isGeneratingDataOnWatch = 0;
    v5 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    currentCalendar = [v5 currentCalendar];
    currentCalendar = v4->_currentCalendar;
    v4->_currentCalendar = currentCalendar;

    [(HDMedicationsDemoDataGenerator *)v4 restoreState];
    [(HDMedicationsDemoDataGenerator *)v4 updateDemoDataFileName];
    [(HDMedicationsDemoDataGenerator *)v4 overrideMedicationShardCheck];
  }

  return v4;
}

- (id)doseEventWithLogOrigin:(int64_t)origin scheduleItemIdentifier:(id)identifier medicationIdentifier:(id)medicationIdentifier scheduledDoseQuantity:(id)quantity doseQuantity:(id)doseQuantity scheduledDate:(id)date startDate:(id)startDate status:(int64_t)self0 doseUnitString:(id)self1
{
  v33[2] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277CCD650];
  stringCopy = string;
  startDateCopy = startDate;
  dateCopy = date;
  doseQuantityCopy = doseQuantity;
  quantityCopy = quantity;
  medicationIdentifierCopy = medicationIdentifier;
  identifierCopy = identifier;
  v29 = [v16 syncIdentifierForScheduleItemIdentifier:0 medicationIdentifier:medicationIdentifierCopy];
  v23 = [MEMORY[0x277CCD650] syncVersionForStatus:4];
  v24 = *MEMORY[0x277CCC528];
  v32[0] = *MEMORY[0x277CCC520];
  v32[1] = v24;
  v33[0] = v29;
  v33[1] = v23;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v26 = [MEMORY[0x277CCD650] medicationDoseEventWithLogOrigin:origin scheduleItemIdentifier:identifierCopy medicationIdentifier:medicationIdentifierCopy scheduledDoseQuantity:quantityCopy doseQuantity:doseQuantityCopy scheduledDate:dateCopy startDate:startDateCopy logStatus:status doseUnitString:stringCopy metadata:v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)saveMedicationDoseEvents:(id)events error:(id *)error
{
  eventsCopy = events;
  profile = [(HDMedicationsDemoDataGenerator *)self profile];
  v8 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:profile error:error];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataManager = [WeakRetained dataManager];
    v11 = [dataManager insertDataObjects:eventsCopy sourceEntity:v8 deviceEntity:0 sourceVersion:0 creationDate:error error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)asNeededDoseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count doseUnitString:(id)string
{
  medicationCopy = medication;
  timeCopy = time;
  stringCopy = string;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = timeCopy;
  v20 = v14;
  if (count)
  {
    v15 = 0x800000000;
    v16 = v14;
    do
    {
      v17 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:1 scheduleItemIdentifier:0 medicationIdentifier:medicationCopy scheduledDoseQuantity:0 doseQuantity:&unk_2863C2738 scheduledDate:0 startDate:v16 status:4 doseUnitString:stringCopy];
      [v13 addObject:v17];

      v14 = [v16 dateByAddingTimeInterval:-691200.0];

      v18 = count > v15 >> 32;
      v15 += 0x800000000;
      v16 = v14;
    }

    while (v18);
  }

  return v13;
}

- (id)scheduledDoseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count doseUnitString:(id)string
{
  medicationCopy = medication;
  timeCopy = time;
  stringCopy = string;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = timeCopy;
  v22 = v13;
  if (count)
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
      v20 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:2 scheduleItemIdentifier:v16 medicationIdentifier:medicationCopy scheduledDoseQuantity:&unk_2863C2738 doseQuantity:&unk_2863C2738 scheduledDate:v15 startDate:v19 status:v17 doseUnitString:stringCopy];
      [v12 addObject:v20];

      ++v14;
      v13 = [v15 dateByAddingTimeInterval:-86400.0];

      v15 = v13;
    }

    while (count != v14);
  }

  return v12;
}

- (id)doseEventsForMedication:(id)medication startDateTime:(id)time historyDayCount:(unint64_t)count logOrigin:(int64_t)origin doseUnitString:(id)string
{
  if (origin == 2)
  {
    [(HDMedicationsDemoDataGenerator *)self scheduledDoseEventsForMedication:medication startDateTime:time historyDayCount:count doseUnitString:string];
  }

  else
  {
    [(HDMedicationsDemoDataGenerator *)self asNeededDoseEventsForMedication:medication startDateTime:time historyDayCount:count doseUnitString:string];
  }
  v7 = ;

  return v7;
}

- (id)dailyScheduleForMedicationIdentifier:(id)identifier isAMSchedule:(BOOL)schedule
{
  scheduleCopy = schedule;
  v22[1] = *MEMORY[0x277D85DE8];
  currentCalendar = self->_currentCalendar;
  v7 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  date = [v7 date];
  v10 = [(NSCalendar *)currentCalendar startOfDayForDate:date];

  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v12 = v11;
  if (scheduleCopy)
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  timeZone = [(NSCalendar *)self->_currentCalendar timeZone];
  v22[0] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v19 = [v15 initWithUUID:uUID medicationIdentifier:identifierCopy createdUTCOffset:timeZone startDateTime:v10 endDateTime:0 timeIntervals:v18 scheduleType:2 cycleStartDateComponents:0 note:0];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)medicationWithDetail:(id)detail
{
  v51 = *MEMORY[0x277D85DE8];
  detailCopy = detail;
  v5 = [detailCopy objectForKey:@"VisualConfigFileName"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];
  pathExtension = [v5 pathExtension];
  v9 = [v6 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

  v45 = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:0];
  if (self->isGeneratingDataOnWatch)
  {
    goto LABEL_7;
  }

  v11 = [detailCopy objectForKey:@"OntologyCoding"];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [detailCopy objectForKey:@"OntologyCoding"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [detailCopy objectForKey:@"OntologyCoding"];
    v16 = MEMORY[0x277CCDB28];
    v17 = [detailCopy objectForKey:@"NickName"];
    v44 = v10;
    v18 = [v16 propertyCollectionWithUserSpecifiedName:v17 userSpecifiedNotes:0 medicationVisualizationConfig:v10 freeTextProperties:0];
    properties = [v18 properties];

    v20 = MEMORY[0x277D10920];
    v21 = [MEMORY[0x277CCD1D0] identifierWithNumber:v15];
    medicationUserDomainConceptTypeIdentifier = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
    profile = [(HDMedicationsDemoDataGenerator *)self profile];
    v46 = 0;
    v24 = [v20 createAndRefreshOntologyBackedUserDomainConceptWithConceptIdentifier:v21 additionalProperties:properties userDomainConceptTypeIdentifier:medicationUserDomainConceptTypeIdentifier profile:profile error:&v46];
    v25 = v46;

    _HKInitializeLogging();
    v26 = HKLogMedication();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
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
    v15 = [detailCopy objectForKey:@"Strength"];
    if (v15)
    {
      v29 = [detailCopy objectForKey:@"Strength"];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if (v30)
      {
        v31 = [detailCopy objectForKey:@"Strength"];
        v32 = [detailCopy objectForKey:@"isStrengthInMCG"];
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
    v37 = [detailCopy objectForKey:@"Name"];
    v38 = [detailCopy objectForKey:@"DoseFormCode"];
    properties = [v36 userDomainConceptPropertyListWithFreeTextMedicationName:v37 freeTextFormCode:objc_msgSend(v38 freeTextStrengthQuantity:{"intValue"), v15}];

    v39 = objc_alloc(MEMORY[0x277D115B8]);
    v40 = [detailCopy objectForKey:@"NickName"];
    v41 = v39;
    v27 = v28;
    v24 = [v41 initWithOntologyCoding:0 userSpecifiedName:v40 userSpecifiedNotes:0 medicationVisualizationConfig:v28 freeTextProperties:properties];

    _HKInitializeLogging();
    v26 = HKLogMedication();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v49 = 2114;
      v50 = v24;
      _os_log_impl(&dword_25181C000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Medication generated as free text med %{public}@ .", buf, 0x16u);
    }

    v25 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)saveMedications:(id)medications schedules:(id)schedules logHistory:(id)history
{
  medicationsCopy = medications;
  schedulesCopy = schedules;
  historyCopy = history;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  contextForWritingProtectedData = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__HDMedicationsDemoDataGenerator_saveMedications_schedules_logHistory___block_invoke;
  v21[3] = &unk_2796CD5F0;
  v21[4] = self;
  v14 = medicationsCopy;
  v22 = v14;
  v15 = schedulesCopy;
  v23 = v15;
  v16 = historyCopy;
  v24 = v16;
  v17 = [database performTransactionWithContext:contextForWritingProtectedData error:&v25 block:v21 inaccessibilityHandler:0];
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

- (BOOL)loadDemoDataObjectsFrom:(id)from medications:(id)medications schedules:(id)schedules logHistory:(id)history
{
  v49 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  medicationsCopy = medications;
  schedulesCopy = schedules;
  historyCopy = history;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = fromCopy;
  v43 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v43)
  {
    v41 = medicationsCopy;
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
        historyCopy = [(HDMedicationsDemoDataGenerator *)self medicationWithDetail:v14, historyCopy];
        if (!historyCopy)
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

        v16 = historyCopy;
        [medicationsCopy addObject:historyCopy];
        semanticIdentifier = [v16 semanticIdentifier];
        stringValue = [semanticIdentifier stringValue];

        canonicalDoseUnitString = [v16 canonicalDoseUnitString];
        v20 = [v14 objectForKey:@"hasSchedule"];
        bOOLValue = [v20 BOOLValue];

        if (bOOLValue)
        {
          v22 = [v14 objectForKey:@"isAMSchedule"];
          v23 = -[HDMedicationsDemoDataGenerator dailyScheduleForMedicationIdentifier:isAMSchedule:](self, "dailyScheduleForMedicationIdentifier:isAMSchedule:", stringValue, [v22 BOOLValue]);

          [schedulesCopy addObject:v23];
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
          bOOLValue2 = [v25 BOOLValue];

          if (bOOLValue2)
          {
            if (bOOLValue)
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

            date = [MEMORY[0x277CBEAA8] date];
            v30 = [(HDMedicationsDemoDataGenerator *)self dayBeforeDate:date withHour:v28];

            [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:v30];
            v31 = [(HDMedicationsDemoDataGenerator *)self doseEventsForMedication:stringValue startDateTime:v30 historyDayCount:30 logOrigin:v24 doseUnitString:canonicalDoseUnitString];
            if ([v31 count])
            {
              [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:v30];
              [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestTakenLogDate:v30];
            }

            [historyCopy addObjectsFromArray:v31];
          }
        }

        medicationsCopy = v41;
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
  v33 = [v32 listByAddingUserDomainConcepts:medicationsCopy];

  [medicationsCopy addObject:v33];
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
      selfCopy6 = self;
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
        selfCopy6 = self;
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
      selfCopy6 = self;
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
        selfCopy6 = self;
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
        selfCopy6 = self;
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
    selfCopy6 = self;
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
    daemon = [WeakRetained daemon];
    ontologyUpdateCoordinator = [daemon ontologyUpdateCoordinator];
    v11 = *MEMORY[0x277CCC5F0];
    v12 = *MEMORY[0x277CCC630];
    v19 = 0;
    v3 = [ontologyUpdateCoordinator updateOntologyWithShardIdentifier:v11 schemaType:v12 schemaVersion:HKCurrentSchemaVersionForShardIdentifier() localShardURL:v7 shardVersion:27000024 error:&v19];
    v13 = v19;

    _HKInitializeLogging();
    v14 = HKLogMedication();
    v15 = v14;
    if (v3)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
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

- (id)_scheduleItemsForDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HDMedicationScheduleItemPredicateForScheduledDateTime(1);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v21 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__HDMedicationsDemoDataGenerator__scheduleItemsForDate___block_invoke;
  v18[3] = &unk_2796CD5C8;
  v9 = v5;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  v11 = [(HDHealthEntity *)HDMedicationScheduleItemEntity performReadTransactionWithHealthDatabase:database error:&v21 block:v18];
  v12 = v21;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v24 = 2114;
      v25 = dateCopy;
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

- (id)doseEventsForScheduleItems:(id)items withStatus:(int64_t)status
{
  v41 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = itemsCopy;
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
        identifier = [v6 identifier];
        scheduledDateTime = [v6 scheduledDateTime];
        v8 = scheduledDateTime;
        v25 = v5;
        if (status == 4)
        {
          v9 = [scheduledDateTime dateByAddingTimeInterval:300.0];

          v8 = v9;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        doses = [v6 doses];
        v10 = [doses countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                objc_enumerationMutation(doses);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              medicationIdentifier = [v14 medicationIdentifier];
              dose = [v14 dose];
              dose2 = [v14 dose];
              scheduledDateTime2 = [v6 scheduledDateTime];
              v19 = [(HDMedicationsDemoDataGenerator *)self doseEventWithLogOrigin:2 scheduleItemIdentifier:identifier medicationIdentifier:medicationIdentifier scheduledDoseQuantity:dose doseQuantity:dose2 scheduledDate:scheduledDateTime2 startDate:v8 status:status doseUnitString:0];
              [v28 addObject:v19];
            }

            v11 = [doses countByEnumeratingWithState:&v31 objects:v39 count:16];
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

- (id)scheduledDoseEventsWithCurrentDate:(id)date
{
  v4 = [(HDMedicationsDemoDataGenerator *)self dayBeforeDate:date withHour:0];
  if (![(HDMedicationsDemoDataGeneratorState *)self->_state hasScheduledMedications]|| ([(HDMedicationsDemoDataGeneratorState *)self->_state latestLogDate], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, [(HDMedicationsDemoDataGeneratorState *)self->_state latestLogDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 >= v4))
  {
    v11 = 0;
  }

  else
  {
    latestTakenLogDate = [(HDMedicationsDemoDataGeneratorState *)self->_state latestTakenLogDate];
    if (latestTakenLogDate)
    {
      latestTakenLogDate2 = [(HDMedicationsDemoDataGeneratorState *)self->_state latestTakenLogDate];
      if ([(HDMedicationsDemoDataGenerator *)self dayDifferenceFrom:latestTakenLogDate2 to:v4]<= 7)
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
      startDate = [v13 startDate];
      [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestLogDate:startDate];

      if (v10 == 4)
      {
        v15 = [v11 objectAtIndexedSubscript:0];
        startDate2 = [v15 startDate];
        [(HDMedicationsDemoDataGeneratorState *)self->_state setLatestTakenLogDate:startDate2];
      }
    }
  }

  return v11;
}

- (void)generateDemoDataForCurrentDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!self->isGeneratingDataOnWatch)
  {
    v5 = [(HDMedicationsDemoDataGenerator *)self scheduledDoseEventsWithCurrentDate:dateCopy];
    v6 = v5;
    if (v5 && [v5 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      database = [WeakRetained database];
      contextForWritingProtectedData = [MEMORY[0x277D106B8] contextForWritingProtectedData];
      v17 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__HDMedicationsDemoDataGenerator_generateDemoDataForCurrentDate___block_invoke;
      v15[3] = &unk_2796CD5C8;
      v15[4] = self;
      v16 = v6;
      v10 = [database performTransactionWithContext:contextForWritingProtectedData error:&v17 block:v15 inaccessibilityHandler:0];
      v11 = v17;

      _HKInitializeLogging();
      v12 = HKLogMedication();
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v20 = 2114;
          v21 = dateCopy;
          _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, " [%{public}@] Completed dose events generation for current date %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v20 = 2114;
        v21 = dateCopy;
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

- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v6, OS_LOG_TYPE_DEFAULT, " [%{public}@] setDemoDataGenerationContext", &v8, 0xCu);
  }

  objc_storeWeak(&self->_profile, profileCopy);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = HKLogMedication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v23 = 138543618;
    selfCopy = self;
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

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  dateCopy = date;
  [(HDMedicationsDemoDataGenerator *)self restoreState];
  if ([(HDMedicationsDemoDataGeneratorState *)self->_state didSaveIntialData])
  {
    [(HDMedicationsDemoDataGenerator *)self generateDemoDataForCurrentDate:dateCopy];
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

- (int64_t)dayDifferenceFrom:(id)from to:(id)to
{
  currentCalendar = self->_currentCalendar;
  fromCopy = from;
  v8 = [(NSCalendar *)currentCalendar components:16 fromDate:to];
  v9 = [(NSCalendar *)self->_currentCalendar components:16 fromDate:fromCopy];

  v10 = [v8 day];
  v11 = v10 - [v9 day];

  return v11;
}

- (id)dayBeforeDate:(id)date withHour:(int64_t)hour
{
  v6 = [(NSCalendar *)self->_currentCalendar components:28 fromDate:date];
  [v6 setDay:{objc_msgSend(v6, "day") - 1}];
  [v6 setHour:hour];
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