@interface HDSleepIntervalSummaryBuilder
- (id)_sampleForSleepAnalysisValue:(uint64_t)value averageInfo:(uint64_t)info sleepDayInterval:(void *)interval;
- (id)_samplesForSleepAnalysisValue:(uint64_t)value dateIntervalTreesByMorningIndex:(void *)index sleepDayInterval:;
- (id)sleepAnalysisSamples;
- (void)_computeSleepIntervalAveragesFromSamples:(void *)samples;
@end

@implementation HDSleepIntervalSummaryBuilder

- (id)sleepAnalysisSamples
{
  v84 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = HDSleepIntervalSummaryBuilder;
  sleepAnalysisSamples = [(HDSleepDaySummaryBuilder *)&v72 sleepAnalysisSamples];
  if (([(HDSleepDaySummaryBuilder *)self options]& 1) != 0)
  {
    v61 = sleepAnalysisSamples;
    if (self)
    {
      calendar = [(HDSleepDaySummaryBuilder *)self calendar];
      memset(v78, 0, sizeof(v78));
      v77 = 0u;
      [(HDSleepIntervalSummaryBuilder *)&v77 _computeSleepIntervalAveragesFromSamples:v61];
      obja = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v61, "count")}];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v64 = v61;
      v29 = [v64 countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (v29)
      {
        v70 = *v80;
        v30 = *(v78 + 1);
        v66 = *(&v78[1] + 1);
        v31 = *&v77;
        v32 = *&v78[0];
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v80 != v70)
            {
              objc_enumerationMutation(v64);
            }

            v34 = *(*(&v79 + 1) + 8 * i);
            value = [v34 value];
            v36 = v66;
            if (value)
            {
              v37 = v30;
            }

            else
            {
              v36 = v32;
              v37 = v31;
            }

            v38 = v36;
            startDate = [v34 startDate];
            v40 = [startDate hk_morningIndexWithCalendar:calendar];

            v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
            v42 = [v38 objectForKeyedSubscript:v41];
            [v42 doubleValue];
            v44 = v43;

            endDate = [v34 endDate];
            startDate2 = [v34 startDate];
            [endDate timeIntervalSinceDate:startDate2];
            v48 = v47;

            startDate3 = [v34 startDate];
            v50 = [startDate3 dateByAddingTimeInterval:v37 - v44];

            v51 = [v50 dateByAddingTimeInterval:v48];
            v52 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v50 endDate:v51];
            v53 = [v52 hk_dateIntervalByMappingToSleepDayWithMorningIndex:-[HDSleepDaySummaryBuilder morningIndex](self calendar:{"morningIndex"), calendar}];

            startDate4 = [v53 startDate];
            [v34 _setStartDate:startDate4];

            endDate2 = [v53 endDate];
            [v34 _setEndDate:endDate2];

            [obja addObject:v34];
          }

          v29 = [v64 countByEnumeratingWithState:&v79 objects:v83 count:16];
        }

        while (v29);
      }

      [obja sortUsingComparator:&__block_literal_global_301];
    }

    else
    {
      obja = 0;
    }
  }

  else
  {
    v59 = sleepAnalysisSamples;
    if (self)
    {
      calendar2 = [(HDSleepDaySummaryBuilder *)self calendar];
      v58 = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
      v63 = [MEMORY[0x277CCA970] hk_sleepDayIntervalForMorningIndex:-[HDSleepDaySummaryBuilder morningIndex](self calendar:{"morningIndex"), calendar2}];
      v65 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[HDSleepDaySummaryBuilder numberOfDays](self, "numberOfDays")}];
      v69 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[HDSleepDaySummaryBuilder numberOfDays](self, "numberOfDays")}];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = v59;
      v2 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (!v2)
      {
        goto LABEL_23;
      }

      v3 = *v80;
      while (1)
      {
        v4 = 0;
        do
        {
          if (*v80 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v79 + 1) + 8 * v4);
          value2 = [v5 value];
          v7 = (value2 - 3) < 3 || value2 == 1;
          v8 = v69;
          if (!v7)
          {
            if (value2 == 2)
            {
              goto LABEL_16;
            }

            if (value2)
            {
              v8 = v69;
            }

            else
            {
              v8 = v65;
            }
          }

          calendar3 = [(HDSleepDaySummaryBuilder *)self calendar];
          startDate5 = [v5 startDate];
          v11 = [startDate5 hk_morningIndexWithCalendar:calendar3];

          v12 = objc_alloc(MEMORY[0x277CCA970]);
          startDate6 = [v5 startDate];
          endDate3 = [v5 endDate];
          v15 = [v12 initWithStartDate:startDate6 endDate:endDate3];

          v16 = v8;
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          v18 = [v16 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CCD2D8]);
          }

          [v18 insertInterval:v15];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          [v16 setObject:v18 forKeyedSubscript:v19];

LABEL_16:
          ++v4;
        }

        while (v2 != v4);
        v20 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
        v2 = v20;
        if (!v20)
        {
LABEL_23:

          v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v22 = [HDSleepIntervalSummaryBuilder _samplesForSleepAnalysisValue:v65 dateIntervalTreesByMorningIndex:? sleepDayInterval:?];
          [v21 addObjectsFromArray:v22];

          v23 = [HDSleepIntervalSummaryBuilder _samplesForSleepAnalysisValue:v58 dateIntervalTreesByMorningIndex:v69 sleepDayInterval:?];
          [v21 addObjectsFromArray:v23];

          [v21 sortUsingComparator:&__block_literal_global_26];
          memset(v78, 0, sizeof(v78));
          v77 = 0u;
          [(HDSleepIntervalSummaryBuilder *)&v77 _computeSleepIntervalAveragesFromSamples:v21];
          obja = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
          v75 = v77;
          v24 = *&v78[0];
          v76 = v24;
          v25 = [HDSleepIntervalSummaryBuilder _sampleForSleepAnalysisValue:&v75 averageInfo:v63 sleepDayInterval:?];
          [obja hk_addNonNilObject:v25];

          v73 = *(v78 + 8);
          v26 = *(&v78[1] + 1);
          v74 = v26;
          v27 = [HDSleepIntervalSummaryBuilder _sampleForSleepAnalysisValue:v58 averageInfo:&v73 sleepDayInterval:v63];
          [obja hk_addNonNilObject:v27];

          goto LABEL_24;
        }
      }
    }

    obja = 0;
LABEL_24:
  }

  v56 = *MEMORY[0x277D85DE8];

  return obja;
}

- (void)_computeSleepIntervalAveragesFromSamples:(void *)samples
{
  v72 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  morningIndex = [a2 morningIndex];
  calendar = [a2 calendar];
  v6 = morningIndex - 1;
  v67 = 0;
  v68 = morningIndex - 1;
  v65 = 0;
  v66 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v63 = morningIndex - 1;
  v64 = v7;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v59 = v8;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = samplesCopy;
  v50 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (!v50)
  {
    v38 = 0;
    v34 = 0;
    v39 = 0;
    v40 = 0;
    v36 = 0;
    v35 = morningIndex - 1;
    v37 = 0;
    goto LABEL_17;
  }

  v49 = *v56;
  do
  {
    for (i = 0; i != v50; ++i)
    {
      if (*v56 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v55 + 1) + 8 * i);
      [v10 value];
      if (_HKCategoryValueSleepAnalysisIsAsleep())
      {
        v54 = &v63;
        v11 = &v59;
        v53 = &v60;
        v52 = &v61;
        v12 = &v62;
      }

      else
      {
        if ([v10 value])
        {
          continue;
        }

        v54 = &v68;
        v11 = &v64;
        v53 = &v65;
        v52 = &v66;
        v12 = &v67;
      }

      v51 = v12;
      v13 = v10;
      v14 = calendar;
      startDate = [v13 startDate];
      v16 = [startDate hk_morningIndexWithCalendar:v14];

      v17 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:v16 calendar:v14];
      v18 = *v54;
      v19 = *v51;
      v20 = *v52;
      v21 = *v53;
      v22 = *v11;
      v23 = [v22 mutableCopy];

      if (v18 != v16)
      {
        startDate2 = [v13 startDate];
        [startDate2 timeIntervalSinceDate:v17];
        v26 = v25;

        v27 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
        [v23 setObject:v27 forKeyedSubscript:v28];

        v20 = v20 + v26;
        ++v19;
      }

      endDate = [v13 endDate];
      startDate3 = [v13 startDate];
      [endDate timeIntervalSinceDate:startDate3];
      v32 = v31;

      *v54 = v16;
      *v51 = v19;
      *v52 = v20;
      *v53 = v21 + v32;
      v33 = *v11;
      *v11 = v23;
    }

    v50 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
  }

  while (v50);
  v6 = v63;
  v7 = v64;
  v8 = v59;
  v34 = v67;
  v35 = v68;
  v36 = v65;
  v37 = v66;
  v38 = v62;
  v39 = v60;
  v40 = v61;
LABEL_17:

  v41 = v7;
  v42 = v8;
  self[1] = 0u;
  self[2] = 0u;
  *self = 0u;
  v70[0] = v35;
  v70[1] = v34;
  v70[2] = v37;
  v70[3] = v36;
  v43 = v41;
  v70[4] = v43;
  _HDMakeSleepIntervalAverageInfo(self, v70);
  v69[0] = v6;
  v69[1] = v38;
  v69[2] = v40;
  v69[3] = v39;
  v44 = v42;
  v69[4] = v44;
  _HDMakeSleepIntervalAverageInfo(self + 24, v69);

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_samplesForSleepAnalysisValue:(uint64_t)value dateIntervalTreesByMorningIndex:(void *)index sleepDayInterval:
{
  v30 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = indexCopy;
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [obj objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * i), v16}];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v19 = v7;
        mergedIntervals = [v7 mergedIntervals];
        v9 = [mergedIntervals countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(mergedIntervals);
              }

              v13 = [MEMORY[0x277CCD0B0] categorySampleWithType:v4 value:value clampedInterval:*(*(&v20 + 1) + 8 * j)];
              [v5 addObject:v13];
            }

            v10 = [mergedIntervals countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __91__HDSleepIntervalSummaryBuilder__sleepConsistencySamplesAdjustedForAggregationFromSamples___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_sampleForSleepAnalysisValue:(uint64_t)value averageInfo:(uint64_t)info sleepDayInterval:(void *)interval
{
  intervalCopy = interval;
  if (*(info + 8) <= 2.22507386e-308)
  {
    v10 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
    startDate = [intervalCopy startDate];
    v8 = [startDate dateByAddingTimeInterval:*info];

    v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 duration:*(info + 8)];
    v10 = [MEMORY[0x277CCD0B0] categorySampleWithType:v6 value:value clampedInterval:v9];
  }

  return v10;
}

uint64_t __85__HDSleepIntervalSummaryBuilder__sleepStageSamplesAdjustedForAggregationFromSamples___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

@end