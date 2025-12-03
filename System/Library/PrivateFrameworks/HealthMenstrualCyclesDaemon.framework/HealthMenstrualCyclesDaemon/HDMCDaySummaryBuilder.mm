@interface HDMCDaySummaryBuilder
- (HDMCDaySummaryBuilder)initWithProfile:(id)profile dayIndex:(int64_t)index orderedWatchSources:(id)sources calendarCache:(id)cache;
- (id)_basalBodyTemperature;
- (id)_endedCycleFactors;
- (id)_startedCycleFactors;
- (id)_wristTemperature;
- (id)createDaySummaryWithDevice:(id)device;
- (int64_t)_bleedingAfterPregnancyFlow;
- (int64_t)_bleedingInPregnancyFlow;
- (int64_t)_cervicalMucusQuality;
- (int64_t)_menstrualFlowWithModificationDay:(int64_t *)day startOfCycleFromCycleTracking:(id *)tracking;
- (int64_t)_ovulationTestResult;
- (int64_t)_pregnancyTestResult;
- (int64_t)_progesteroneTestResult;
- (int64_t)_sexualActivity;
- (unint64_t)_symptoms;
- (void)addCycleTrackingSample:(id)sample;
@end

@implementation HDMCDaySummaryBuilder

- (HDMCDaySummaryBuilder)initWithProfile:(id)profile dayIndex:(int64_t)index orderedWatchSources:(id)sources calendarCache:(id)cache
{
  profileCopy = profile;
  sourcesCopy = sources;
  cacheCopy = cache;
  v18.receiver = self;
  v18.super_class = HDMCDaySummaryBuilder;
  v13 = [(HDMCDaySummaryBuilder *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, profileCopy);
    v14->_dayIndex = index;
    v15 = [sourcesCopy copy];
    orderedWatchSources = v14->_orderedWatchSources;
    v14->_orderedWatchSources = v15;

    objc_storeStrong(&v14->_calendarCache, cache);
  }

  return v14;
}

- (void)addCycleTrackingSample:(id)sample
{
  sampleCopy = sample;
  sampleType = [sampleCopy sampleType];
  code = [sampleType code];

  if (code <= 190)
  {
    if (code > 95)
    {
      if ((code - 157) >= 0xF)
      {
        if (code == 96)
        {
          intermenstrualBleedingSamples = self->_intermenstrualBleedingSamples;
          if (intermenstrualBleedingSamples)
          {
            array = intermenstrualBleedingSamples;
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          v69 = self->_intermenstrualBleedingSamples;
          self->_intermenstrualBleedingSamples = array;

          v12 = self->_intermenstrualBleedingSamples;
          goto LABEL_14;
        }

        if (code == 97)
        {
          sexualActivitySamples = self->_sexualActivitySamples;
          if (sexualActivitySamples)
          {
            array2 = sexualActivitySamples;
          }

          else
          {
            array2 = [MEMORY[0x277CBEB18] array];
          }

          v68 = self->_sexualActivitySamples;
          self->_sexualActivitySamples = array2;

          v12 = self->_sexualActivitySamples;
LABEL_14:
          [(NSMutableArray *)v12 addObject:sampleCopy];
LABEL_15:
          v13 = sampleCopy;
          goto LABEL_16;
        }

        goto LABEL_51;
      }

LABEL_10:
      symptomsSamples = self->_symptomsSamples;
      if (symptomsSamples)
      {
        array3 = symptomsSamples;
      }

      else
      {
        array3 = [MEMORY[0x277CBEB18] array];
      }

      v11 = self->_symptomsSamples;
      self->_symptomsSamples = array3;

      v12 = self->_symptomsSamples;
      goto LABEL_14;
    }

    if (code > 91)
    {
      if (code == 92)
      {
        ovulationTestResultSamples = self->_ovulationTestResultSamples;
        if (ovulationTestResultSamples)
        {
          array4 = ovulationTestResultSamples;
        }

        else
        {
          array4 = [MEMORY[0x277CBEB18] array];
        }

        v62 = self->_ovulationTestResultSamples;
        self->_ovulationTestResultSamples = array4;

        v12 = self->_ovulationTestResultSamples;
        goto LABEL_14;
      }

      if (code == 95)
      {
        menstrualFlowSamples = self->_menstrualFlowSamples;
        if (menstrualFlowSamples)
        {
          array5 = menstrualFlowSamples;
        }

        else
        {
          array5 = [MEMORY[0x277CBEB18] array];
        }

        v60 = self->_menstrualFlowSamples;
        self->_menstrualFlowSamples = array5;

        v12 = self->_menstrualFlowSamples;
        goto LABEL_14;
      }
    }

    else
    {
      if (code == 90)
      {
        basalBodyTemperatureSamples = self->_basalBodyTemperatureSamples;
        if (basalBodyTemperatureSamples)
        {
          array6 = basalBodyTemperatureSamples;
        }

        else
        {
          array6 = [MEMORY[0x277CBEB18] array];
        }

        v61 = self->_basalBodyTemperatureSamples;
        self->_basalBodyTemperatureSamples = array6;

        v12 = self->_basalBodyTemperatureSamples;
        goto LABEL_14;
      }

      if (code == 91)
      {
        cervicalMucusQualitySamples = self->_cervicalMucusQualitySamples;
        if (cervicalMucusQualitySamples)
        {
          array7 = cervicalMucusQualitySamples;
        }

        else
        {
          array7 = [MEMORY[0x277CBEB18] array];
        }

        v59 = self->_cervicalMucusQualitySamples;
        self->_cervicalMucusQualitySamples = array7;

        v12 = self->_cervicalMucusQualitySamples;
        goto LABEL_14;
      }
    }

    goto LABEL_51;
  }

  if (code > 242)
  {
    if (code <= 255)
    {
      if (code == 243)
      {
        pregnancyTestResultSamples = self->_pregnancyTestResultSamples;
        if (pregnancyTestResultSamples)
        {
          array8 = pregnancyTestResultSamples;
        }

        else
        {
          array8 = [MEMORY[0x277CBEB18] array];
        }

        v67 = self->_pregnancyTestResultSamples;
        self->_pregnancyTestResultSamples = array8;

        v12 = self->_pregnancyTestResultSamples;
        goto LABEL_14;
      }

      if (code == 244)
      {
        progesteroneTestResultSamples = self->_progesteroneTestResultSamples;
        if (progesteroneTestResultSamples)
        {
          array9 = progesteroneTestResultSamples;
        }

        else
        {
          array9 = [MEMORY[0x277CBEB18] array];
        }

        v65 = self->_progesteroneTestResultSamples;
        self->_progesteroneTestResultSamples = array9;

        v12 = self->_progesteroneTestResultSamples;
        goto LABEL_14;
      }
    }

    else
    {
      switch(code)
      {
        case 256:
          wristTemperatureSamples = self->_wristTemperatureSamples;
          if (wristTemperatureSamples)
          {
            array10 = wristTemperatureSamples;
          }

          else
          {
            array10 = [MEMORY[0x277CBEB18] array];
          }

          v63 = self->_wristTemperatureSamples;
          self->_wristTemperatureSamples = array10;

          v12 = self->_wristTemperatureSamples;
          goto LABEL_14;
        case 313:
          bleedingInPregnancyFlowSamples = self->_bleedingInPregnancyFlowSamples;
          if (bleedingInPregnancyFlowSamples)
          {
            array11 = bleedingInPregnancyFlowSamples;
          }

          else
          {
            array11 = [MEMORY[0x277CBEB18] array];
          }

          v66 = self->_bleedingInPregnancyFlowSamples;
          self->_bleedingInPregnancyFlowSamples = array11;

          v12 = self->_bleedingInPregnancyFlowSamples;
          goto LABEL_14;
        case 314:
          bleedingAfterPregnancyFlowSamples = self->_bleedingAfterPregnancyFlowSamples;
          if (bleedingAfterPregnancyFlowSamples)
          {
            array12 = bleedingAfterPregnancyFlowSamples;
          }

          else
          {
            array12 = [MEMORY[0x277CBEB18] array];
          }

          v64 = self->_bleedingAfterPregnancyFlowSamples;
          self->_bleedingAfterPregnancyFlowSamples = array12;

          v12 = self->_bleedingAfterPregnancyFlowSamples;
          goto LABEL_14;
      }
    }

    goto LABEL_51;
  }

  if ((code - 229) < 7)
  {
    goto LABEL_10;
  }

  if ((code - 191) >= 3)
  {
LABEL_51:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDMCDaySummaryBuilder.m" lineNumber:144 description:{@"%@: Invalid data type", objc_opt_class()}];
LABEL_69:

    goto LABEL_15;
  }

  calendarCache = self->_calendarCache;
  _timeZone = [sampleCopy _timeZone];
  v27 = [(HKCalendarCache *)calendarCache calendarForTimeZone:_timeZone];
  v28 = [sampleCopy hk_dayIndexRangeWithCalendar:v27];
  v30 = v29;

  dayIndex = self->_dayIndex;
  if (v28 == dayIndex)
  {
    startedCycleFactors = self->_startedCycleFactors;
    if (startedCycleFactors)
    {
      array13 = startedCycleFactors;
    }

    else
    {
      array13 = [MEMORY[0x277CBEB18] array];
    }

    v51 = self->_startedCycleFactors;
    self->_startedCycleFactors = array13;

    v52 = self->_startedCycleFactors;
    v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sampleCopy, "hkmc_cycleFactor")}];
    [(NSMutableArray *)v52 addObject:v53];

    dayIndex = self->_dayIndex;
  }

  v54 = v30 + v28 - 1;
  if (v30 <= 0)
  {
    v54 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = sampleCopy;
  if (v54 == dayIndex)
  {
    endedCycleFactors = self->_endedCycleFactors;
    if (endedCycleFactors)
    {
      array14 = endedCycleFactors;
    }

    else
    {
      array14 = [MEMORY[0x277CBEB18] array];
    }

    v57 = self->_endedCycleFactors;
    self->_endedCycleFactors = array14;

    v58 = self->_endedCycleFactors;
    currentHandler = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sampleCopy, "hkmc_cycleFactor")}];
    [(NSMutableArray *)v58 addObject:currentHandler];
    goto LABEL_69;
  }

LABEL_16:
  sampleType2 = [v13 sampleType];
  if ([sampleType2 hkmc_requiresMultipleReplaceConfirmation])
  {
    sampleCountByType = self->_sampleCountByType;
    if (sampleCountByType)
    {
      v16 = sampleCountByType;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v17 = self->_sampleCountByType;
    self->_sampleCountByType = v16;

    v18 = MEMORY[0x277CCABB0];
    v19 = [(NSMutableDictionary *)self->_sampleCountByType objectForKeyedSubscript:sampleType2];
    v20 = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_sampleCountByType setObject:v20 forKeyedSubscript:sampleType2];
  }
}

- (int64_t)_menstrualFlowWithModificationDay:(int64_t *)day startOfCycleFromCycleTracking:(id *)tracking
{
  [(NSMutableArray *)self->_menstrualFlowSamples sortUsingComparator:&__block_literal_global_6];
  lastObject = [(NSMutableArray *)self->_menstrualFlowSamples lastObject];
  v8 = lastObject;
  if (lastObject)
  {
    _creationDate = [lastObject _creationDate];
    calendarCache = self->_calendarCache;
    _timeZone = [v8 _timeZone];
    v12 = [(HKCalendarCache *)calendarCache calendarForTimeZone:_timeZone];
    *day = [_creationDate hk_dayIndexWithCalendar:v12];

    if ([v8 hkmc_wasEnteredFromCycleTracking])
    {
      metadata = [v8 metadata];
      v14 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4F0]];
      bOOLValue = [v14 BOOLValue];

      *tracking = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    }
  }

  hkmc_daySummaryMenstrualFlow = [v8 hkmc_daySummaryMenstrualFlow];

  return hkmc_daySummaryMenstrualFlow;
}

uint64_t __89__HDMCDaySummaryBuilder__menstrualFlowWithModificationDay_startOfCycleFromCycleTracking___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryMenstrualFlow")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryMenstrualFlow];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_bleedingInPregnancyFlow
{
  [(NSMutableArray *)self->_bleedingInPregnancyFlowSamples sortUsingComparator:&__block_literal_global_306];
  lastObject = [(NSMutableArray *)self->_bleedingInPregnancyFlowSamples lastObject];
  hkmc_daySummaryBleedingInPregnancyFlow = [lastObject hkmc_daySummaryBleedingInPregnancyFlow];

  return hkmc_daySummaryBleedingInPregnancyFlow;
}

uint64_t __49__HDMCDaySummaryBuilder__bleedingInPregnancyFlow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryBleedingInPregnancyFlow")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryBleedingInPregnancyFlow];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_bleedingAfterPregnancyFlow
{
  [(NSMutableArray *)self->_bleedingAfterPregnancyFlowSamples sortUsingComparator:&__block_literal_global_308];
  lastObject = [(NSMutableArray *)self->_bleedingAfterPregnancyFlowSamples lastObject];
  hkmc_daySummaryBleedingAfterPregnancyFlow = [lastObject hkmc_daySummaryBleedingAfterPregnancyFlow];

  return hkmc_daySummaryBleedingAfterPregnancyFlow;
}

uint64_t __52__HDMCDaySummaryBuilder__bleedingAfterPregnancyFlow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryBleedingAfterPregnancyFlow")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryBleedingAfterPregnancyFlow];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (unint64_t)_symptoms
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_symptomsSamples;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) hkmc_daySummarySymptom];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)_sexualActivity
{
  [(NSMutableArray *)self->_sexualActivitySamples sortUsingComparator:&__block_literal_global_310];
  lastObject = [(NSMutableArray *)self->_sexualActivitySamples lastObject];
  hkmc_daySummarySexualActivity = [lastObject hkmc_daySummarySexualActivity];

  return hkmc_daySummarySexualActivity;
}

uint64_t __40__HDMCDaySummaryBuilder__sexualActivity__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummarySexualActivity")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummarySexualActivity];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_ovulationTestResult
{
  [(NSMutableArray *)self->_ovulationTestResultSamples sortUsingComparator:&__block_literal_global_312];
  lastObject = [(NSMutableArray *)self->_ovulationTestResultSamples lastObject];
  hkmc_daySummaryOvulationTestResult = [lastObject hkmc_daySummaryOvulationTestResult];

  return hkmc_daySummaryOvulationTestResult;
}

uint64_t __45__HDMCDaySummaryBuilder__ovulationTestResult__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryOvulationTestResult")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryOvulationTestResult];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_pregnancyTestResult
{
  [(NSMutableArray *)self->_pregnancyTestResultSamples sortUsingComparator:&__block_literal_global_314];
  lastObject = [(NSMutableArray *)self->_pregnancyTestResultSamples lastObject];
  hkmc_daySummaryPregnancyTestResult = [lastObject hkmc_daySummaryPregnancyTestResult];

  return hkmc_daySummaryPregnancyTestResult;
}

uint64_t __45__HDMCDaySummaryBuilder__pregnancyTestResult__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryPregnancyTestResult")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryPregnancyTestResult];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_progesteroneTestResult
{
  [(NSMutableArray *)self->_progesteroneTestResultSamples sortUsingComparator:&__block_literal_global_316];
  lastObject = [(NSMutableArray *)self->_progesteroneTestResultSamples lastObject];
  hkmc_daySummaryProgesteroneTestResult = [lastObject hkmc_daySummaryProgesteroneTestResult];

  return hkmc_daySummaryProgesteroneTestResult;
}

uint64_t __48__HDMCDaySummaryBuilder__progesteroneTestResult__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryProgesteroneTestResult")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryProgesteroneTestResult];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (int64_t)_cervicalMucusQuality
{
  [(NSMutableArray *)self->_cervicalMucusQualitySamples sortUsingComparator:&__block_literal_global_318];
  lastObject = [(NSMutableArray *)self->_cervicalMucusQualitySamples lastObject];
  hkmc_daySummaryCervicalMucusQuality = [lastObject hkmc_daySummaryCervicalMucusQuality];

  return hkmc_daySummaryCervicalMucusQuality;
}

uint64_t __46__HDMCDaySummaryBuilder__cervicalMucusQuality__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "hkmc_daySummaryCervicalMucusQuality")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 hkmc_daySummaryCervicalMucusQuality];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)_basalBodyTemperature
{
  [(NSMutableArray *)self->_basalBodyTemperatureSamples sortUsingComparator:&__block_literal_global_321];
  lastObject = [(NSMutableArray *)self->_basalBodyTemperatureSamples lastObject];
  quantity = [lastObject quantity];

  return quantity;
}

uint64_t __46__HDMCDaySummaryBuilder__basalBodyTemperature__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_wristTemperature
{
  wristTemperatureSamples = self->_wristTemperatureSamples;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HDMCDaySummaryBuilder__wristTemperature__block_invoke;
  v9[3] = &unk_27865B480;
  v9[4] = self;
  [(NSMutableArray *)wristTemperatureSamples sortUsingComparator:v9];
  firstObject = [(NSMutableArray *)self->_wristTemperatureSamples firstObject];

  if (firstObject)
  {
    v5 = MEMORY[0x277D11A08];
    firstObject2 = [(NSMutableArray *)self->_wristTemperatureSamples firstObject];
    v7 = [v5 wristTemperatureFromWristTemperatureSample:firstObject2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __42__HDMCDaySummaryBuilder__wristTemperature__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v8 = [v5 sourceRevision];
  v9 = [v8 source];
  v10 = [v7 indexOfObject:v9];

  v11 = *(*(a1 + 32) + 24);
  v12 = [v6 sourceRevision];
  v13 = [v12 source];
  v14 = [v11 indexOfObject:v13];

  if (v10 >= v14)
  {
    if (v10 > v14)
    {
      v15 = 1;
    }

    else
    {
      v16 = [v6 startDate];
      v17 = [v5 startDate];
      v15 = [v16 compare:v17];
    }
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (id)_startedCycleFactors
{
  v3 = [(NSMutableArray *)self->_startedCycleFactors count];
  if (v3)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_startedCycleFactors];
  }

  return v3;
}

- (id)_endedCycleFactors
{
  v3 = [(NSMutableArray *)self->_endedCycleFactors count];
  if (v3)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_endedCycleFactors];
  }

  return v3;
}

- (id)createDaySummaryWithDevice:(id)device
{
  v24 = 0;
  v25 = 0;
  v23 = [(HDMCDaySummaryBuilder *)self _menstrualFlowWithModificationDay:&v25 startOfCycleFromCycleTracking:&v24];
  v18 = v24;
  dayIndex = self->_dayIndex;
  v22 = MEMORY[0x277D11988];
  _bleedingInPregnancyFlow = [(HDMCDaySummaryBuilder *)self _bleedingInPregnancyFlow];
  _bleedingAfterPregnancyFlow = [(HDMCDaySummaryBuilder *)self _bleedingAfterPregnancyFlow];
  _intermenstrualBleeding = [(HDMCDaySummaryBuilder *)self _intermenstrualBleeding];
  _symptoms = [(HDMCDaySummaryBuilder *)self _symptoms];
  _sexualActivity = [(HDMCDaySummaryBuilder *)self _sexualActivity];
  _ovulationTestResult = [(HDMCDaySummaryBuilder *)self _ovulationTestResult];
  _pregnancyTestResult = [(HDMCDaySummaryBuilder *)self _pregnancyTestResult];
  _progesteroneTestResult = [(HDMCDaySummaryBuilder *)self _progesteroneTestResult];
  _cervicalMucusQuality = [(HDMCDaySummaryBuilder *)self _cervicalMucusQuality];
  _basalBodyTemperature = [(HDMCDaySummaryBuilder *)self _basalBodyTemperature];
  _wristTemperature = [(HDMCDaySummaryBuilder *)self _wristTemperature];
  v10 = v25;
  _startedCycleFactors = [(HDMCDaySummaryBuilder *)self _startedCycleFactors];
  _endedCycleFactors = [(HDMCDaySummaryBuilder *)self _endedCycleFactors];
  v13 = [v22 daySummaryWithDayIndex:dayIndex menstrualFlow:v23 bleedingInPregnancyFlow:_bleedingInPregnancyFlow bleedingAfterPregnancyFlow:_bleedingAfterPregnancyFlow intermenstrualBleeding:_intermenstrualBleeding symptoms:_symptoms sexualActivity:_sexualActivity ovulationTestResult:_ovulationTestResult pregnancyTestResult:_pregnancyTestResult progesteroneTestResult:_progesteroneTestResult cervicalMucusQuality:_cervicalMucusQuality basalBodyTemperature:_basalBodyTemperature wristTemperature:_wristTemperature menstrualFlowModificationDayIndex:v10 startOfCycleFromCycleTracking:v18 startedCycleFactors:_startedCycleFactors endedCycleFactors:_endedCycleFactors sampleCountByType:self->_sampleCountByType];

  return v13;
}

@end