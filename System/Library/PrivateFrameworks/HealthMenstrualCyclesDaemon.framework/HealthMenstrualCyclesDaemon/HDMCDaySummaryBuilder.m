@interface HDMCDaySummaryBuilder
- (HDMCDaySummaryBuilder)initWithProfile:(id)a3 dayIndex:(int64_t)a4 orderedWatchSources:(id)a5 calendarCache:(id)a6;
- (id)_basalBodyTemperature;
- (id)_endedCycleFactors;
- (id)_startedCycleFactors;
- (id)_wristTemperature;
- (id)createDaySummaryWithDevice:(id)a3;
- (int64_t)_bleedingAfterPregnancyFlow;
- (int64_t)_bleedingInPregnancyFlow;
- (int64_t)_cervicalMucusQuality;
- (int64_t)_menstrualFlowWithModificationDay:(int64_t *)a3 startOfCycleFromCycleTracking:(id *)a4;
- (int64_t)_ovulationTestResult;
- (int64_t)_pregnancyTestResult;
- (int64_t)_progesteroneTestResult;
- (int64_t)_sexualActivity;
- (unint64_t)_symptoms;
- (void)addCycleTrackingSample:(id)a3;
@end

@implementation HDMCDaySummaryBuilder

- (HDMCDaySummaryBuilder)initWithProfile:(id)a3 dayIndex:(int64_t)a4 orderedWatchSources:(id)a5 calendarCache:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HDMCDaySummaryBuilder;
  v13 = [(HDMCDaySummaryBuilder *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_profile, v10);
    v14->_dayIndex = a4;
    v15 = [v11 copy];
    orderedWatchSources = v14->_orderedWatchSources;
    v14->_orderedWatchSources = v15;

    objc_storeStrong(&v14->_calendarCache, a6);
  }

  return v14;
}

- (void)addCycleTrackingSample:(id)a3
{
  v70 = a3;
  v5 = [v70 sampleType];
  v6 = [v5 code];

  if (v6 <= 190)
  {
    if (v6 > 95)
    {
      if ((v6 - 157) >= 0xF)
      {
        if (v6 == 96)
        {
          intermenstrualBleedingSamples = self->_intermenstrualBleedingSamples;
          if (intermenstrualBleedingSamples)
          {
            v50 = intermenstrualBleedingSamples;
          }

          else
          {
            v50 = [MEMORY[0x277CBEB18] array];
          }

          v69 = self->_intermenstrualBleedingSamples;
          self->_intermenstrualBleedingSamples = v50;

          v12 = self->_intermenstrualBleedingSamples;
          goto LABEL_14;
        }

        if (v6 == 97)
        {
          sexualActivitySamples = self->_sexualActivitySamples;
          if (sexualActivitySamples)
          {
            v8 = sexualActivitySamples;
          }

          else
          {
            v8 = [MEMORY[0x277CBEB18] array];
          }

          v68 = self->_sexualActivitySamples;
          self->_sexualActivitySamples = v8;

          v12 = self->_sexualActivitySamples;
LABEL_14:
          [(NSMutableArray *)v12 addObject:v70];
LABEL_15:
          v13 = v70;
          goto LABEL_16;
        }

        goto LABEL_51;
      }

LABEL_10:
      symptomsSamples = self->_symptomsSamples;
      if (symptomsSamples)
      {
        v10 = symptomsSamples;
      }

      else
      {
        v10 = [MEMORY[0x277CBEB18] array];
      }

      v11 = self->_symptomsSamples;
      self->_symptomsSamples = v10;

      v12 = self->_symptomsSamples;
      goto LABEL_14;
    }

    if (v6 > 91)
    {
      if (v6 == 92)
      {
        ovulationTestResultSamples = self->_ovulationTestResultSamples;
        if (ovulationTestResultSamples)
        {
          v41 = ovulationTestResultSamples;
        }

        else
        {
          v41 = [MEMORY[0x277CBEB18] array];
        }

        v62 = self->_ovulationTestResultSamples;
        self->_ovulationTestResultSamples = v41;

        v12 = self->_ovulationTestResultSamples;
        goto LABEL_14;
      }

      if (v6 == 95)
      {
        menstrualFlowSamples = self->_menstrualFlowSamples;
        if (menstrualFlowSamples)
        {
          v35 = menstrualFlowSamples;
        }

        else
        {
          v35 = [MEMORY[0x277CBEB18] array];
        }

        v60 = self->_menstrualFlowSamples;
        self->_menstrualFlowSamples = v35;

        v12 = self->_menstrualFlowSamples;
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 == 90)
      {
        basalBodyTemperatureSamples = self->_basalBodyTemperatureSamples;
        if (basalBodyTemperatureSamples)
        {
          v39 = basalBodyTemperatureSamples;
        }

        else
        {
          v39 = [MEMORY[0x277CBEB18] array];
        }

        v61 = self->_basalBodyTemperatureSamples;
        self->_basalBodyTemperatureSamples = v39;

        v12 = self->_basalBodyTemperatureSamples;
        goto LABEL_14;
      }

      if (v6 == 91)
      {
        cervicalMucusQualitySamples = self->_cervicalMucusQualitySamples;
        if (cervicalMucusQualitySamples)
        {
          v22 = cervicalMucusQualitySamples;
        }

        else
        {
          v22 = [MEMORY[0x277CBEB18] array];
        }

        v59 = self->_cervicalMucusQualitySamples;
        self->_cervicalMucusQualitySamples = v22;

        v12 = self->_cervicalMucusQualitySamples;
        goto LABEL_14;
      }
    }

    goto LABEL_51;
  }

  if (v6 > 242)
  {
    if (v6 <= 255)
    {
      if (v6 == 243)
      {
        pregnancyTestResultSamples = self->_pregnancyTestResultSamples;
        if (pregnancyTestResultSamples)
        {
          v48 = pregnancyTestResultSamples;
        }

        else
        {
          v48 = [MEMORY[0x277CBEB18] array];
        }

        v67 = self->_pregnancyTestResultSamples;
        self->_pregnancyTestResultSamples = v48;

        v12 = self->_pregnancyTestResultSamples;
        goto LABEL_14;
      }

      if (v6 == 244)
      {
        progesteroneTestResultSamples = self->_progesteroneTestResultSamples;
        if (progesteroneTestResultSamples)
        {
          v37 = progesteroneTestResultSamples;
        }

        else
        {
          v37 = [MEMORY[0x277CBEB18] array];
        }

        v65 = self->_progesteroneTestResultSamples;
        self->_progesteroneTestResultSamples = v37;

        v12 = self->_progesteroneTestResultSamples;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v6)
      {
        case 256:
          wristTemperatureSamples = self->_wristTemperatureSamples;
          if (wristTemperatureSamples)
          {
            v44 = wristTemperatureSamples;
          }

          else
          {
            v44 = [MEMORY[0x277CBEB18] array];
          }

          v63 = self->_wristTemperatureSamples;
          self->_wristTemperatureSamples = v44;

          v12 = self->_wristTemperatureSamples;
          goto LABEL_14;
        case 313:
          bleedingInPregnancyFlowSamples = self->_bleedingInPregnancyFlowSamples;
          if (bleedingInPregnancyFlowSamples)
          {
            v46 = bleedingInPregnancyFlowSamples;
          }

          else
          {
            v46 = [MEMORY[0x277CBEB18] array];
          }

          v66 = self->_bleedingInPregnancyFlowSamples;
          self->_bleedingInPregnancyFlowSamples = v46;

          v12 = self->_bleedingInPregnancyFlowSamples;
          goto LABEL_14;
        case 314:
          bleedingAfterPregnancyFlowSamples = self->_bleedingAfterPregnancyFlowSamples;
          if (bleedingAfterPregnancyFlowSamples)
          {
            v24 = bleedingAfterPregnancyFlowSamples;
          }

          else
          {
            v24 = [MEMORY[0x277CBEB18] array];
          }

          v64 = self->_bleedingAfterPregnancyFlowSamples;
          self->_bleedingAfterPregnancyFlowSamples = v24;

          v12 = self->_bleedingAfterPregnancyFlowSamples;
          goto LABEL_14;
      }
    }

    goto LABEL_51;
  }

  if ((v6 - 229) < 7)
  {
    goto LABEL_10;
  }

  if ((v6 - 191) >= 3)
  {
LABEL_51:
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"HDMCDaySummaryBuilder.m" lineNumber:144 description:{@"%@: Invalid data type", objc_opt_class()}];
LABEL_69:

    goto LABEL_15;
  }

  calendarCache = self->_calendarCache;
  v26 = [v70 _timeZone];
  v27 = [(HKCalendarCache *)calendarCache calendarForTimeZone:v26];
  v28 = [v70 hk_dayIndexRangeWithCalendar:v27];
  v30 = v29;

  dayIndex = self->_dayIndex;
  if (v28 == dayIndex)
  {
    startedCycleFactors = self->_startedCycleFactors;
    if (startedCycleFactors)
    {
      v33 = startedCycleFactors;
    }

    else
    {
      v33 = [MEMORY[0x277CBEB18] array];
    }

    v51 = self->_startedCycleFactors;
    self->_startedCycleFactors = v33;

    v52 = self->_startedCycleFactors;
    v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v70, "hkmc_cycleFactor")}];
    [(NSMutableArray *)v52 addObject:v53];

    dayIndex = self->_dayIndex;
  }

  v54 = v30 + v28 - 1;
  if (v30 <= 0)
  {
    v54 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v70;
  if (v54 == dayIndex)
  {
    endedCycleFactors = self->_endedCycleFactors;
    if (endedCycleFactors)
    {
      v56 = endedCycleFactors;
    }

    else
    {
      v56 = [MEMORY[0x277CBEB18] array];
    }

    v57 = self->_endedCycleFactors;
    self->_endedCycleFactors = v56;

    v58 = self->_endedCycleFactors;
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v70, "hkmc_cycleFactor")}];
    [(NSMutableArray *)v58 addObject:v42];
    goto LABEL_69;
  }

LABEL_16:
  v14 = [v13 sampleType];
  if ([v14 hkmc_requiresMultipleReplaceConfirmation])
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
    v19 = [(NSMutableDictionary *)self->_sampleCountByType objectForKeyedSubscript:v14];
    v20 = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_sampleCountByType setObject:v20 forKeyedSubscript:v14];
  }
}

- (int64_t)_menstrualFlowWithModificationDay:(int64_t *)a3 startOfCycleFromCycleTracking:(id *)a4
{
  [(NSMutableArray *)self->_menstrualFlowSamples sortUsingComparator:&__block_literal_global_6];
  v7 = [(NSMutableArray *)self->_menstrualFlowSamples lastObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _creationDate];
    calendarCache = self->_calendarCache;
    v11 = [v8 _timeZone];
    v12 = [(HKCalendarCache *)calendarCache calendarForTimeZone:v11];
    *a3 = [v9 hk_dayIndexWithCalendar:v12];

    if ([v8 hkmc_wasEnteredFromCycleTracking])
    {
      v13 = [v8 metadata];
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCC4F0]];
      v15 = [v14 BOOLValue];

      *a4 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    }
  }

  v16 = [v8 hkmc_daySummaryMenstrualFlow];

  return v16;
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
  v3 = [(NSMutableArray *)self->_bleedingInPregnancyFlowSamples lastObject];
  v4 = [v3 hkmc_daySummaryBleedingInPregnancyFlow];

  return v4;
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
  v3 = [(NSMutableArray *)self->_bleedingAfterPregnancyFlowSamples lastObject];
  v4 = [v3 hkmc_daySummaryBleedingAfterPregnancyFlow];

  return v4;
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
  v3 = [(NSMutableArray *)self->_sexualActivitySamples lastObject];
  v4 = [v3 hkmc_daySummarySexualActivity];

  return v4;
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
  v3 = [(NSMutableArray *)self->_ovulationTestResultSamples lastObject];
  v4 = [v3 hkmc_daySummaryOvulationTestResult];

  return v4;
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
  v3 = [(NSMutableArray *)self->_pregnancyTestResultSamples lastObject];
  v4 = [v3 hkmc_daySummaryPregnancyTestResult];

  return v4;
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
  v3 = [(NSMutableArray *)self->_progesteroneTestResultSamples lastObject];
  v4 = [v3 hkmc_daySummaryProgesteroneTestResult];

  return v4;
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
  v3 = [(NSMutableArray *)self->_cervicalMucusQualitySamples lastObject];
  v4 = [v3 hkmc_daySummaryCervicalMucusQuality];

  return v4;
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
  v3 = [(NSMutableArray *)self->_basalBodyTemperatureSamples lastObject];
  v4 = [v3 quantity];

  return v4;
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
  v4 = [(NSMutableArray *)self->_wristTemperatureSamples firstObject];

  if (v4)
  {
    v5 = MEMORY[0x277D11A08];
    v6 = [(NSMutableArray *)self->_wristTemperatureSamples firstObject];
    v7 = [v5 wristTemperatureFromWristTemperatureSample:v6];
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

- (id)createDaySummaryWithDevice:(id)a3
{
  v24 = 0;
  v25 = 0;
  v23 = [(HDMCDaySummaryBuilder *)self _menstrualFlowWithModificationDay:&v25 startOfCycleFromCycleTracking:&v24];
  v18 = v24;
  dayIndex = self->_dayIndex;
  v22 = MEMORY[0x277D11988];
  v20 = [(HDMCDaySummaryBuilder *)self _bleedingInPregnancyFlow];
  v19 = [(HDMCDaySummaryBuilder *)self _bleedingAfterPregnancyFlow];
  v17 = [(HDMCDaySummaryBuilder *)self _intermenstrualBleeding];
  v16 = [(HDMCDaySummaryBuilder *)self _symptoms];
  v15 = [(HDMCDaySummaryBuilder *)self _sexualActivity];
  v4 = [(HDMCDaySummaryBuilder *)self _ovulationTestResult];
  v5 = [(HDMCDaySummaryBuilder *)self _pregnancyTestResult];
  v6 = [(HDMCDaySummaryBuilder *)self _progesteroneTestResult];
  v7 = [(HDMCDaySummaryBuilder *)self _cervicalMucusQuality];
  v8 = [(HDMCDaySummaryBuilder *)self _basalBodyTemperature];
  v9 = [(HDMCDaySummaryBuilder *)self _wristTemperature];
  v10 = v25;
  v11 = [(HDMCDaySummaryBuilder *)self _startedCycleFactors];
  v12 = [(HDMCDaySummaryBuilder *)self _endedCycleFactors];
  v13 = [v22 daySummaryWithDayIndex:dayIndex menstrualFlow:v23 bleedingInPregnancyFlow:v20 bleedingAfterPregnancyFlow:v19 intermenstrualBleeding:v17 symptoms:v16 sexualActivity:v15 ovulationTestResult:v4 pregnancyTestResult:v5 progesteroneTestResult:v6 cervicalMucusQuality:v7 basalBodyTemperature:v8 wristTemperature:v9 menstrualFlowModificationDayIndex:v10 startOfCycleFromCycleTracking:v18 startedCycleFactors:v11 endedCycleFactors:v12 sampleCountByType:self->_sampleCountByType];

  return v13;
}

@end