@interface HKSleepStageChartPoint
+ (BOOL)_segment:(id)_segment isAdjacentToSegment:(id)segment;
+ (id)chartPointsForInformationProviders:(id)providers context:(id)context;
- (id)allYValues;
- (id)yValuesForSleepAnalysis:(int64_t)analysis;
@end

@implementation HKSleepStageChartPoint

- (id)yValuesForSleepAnalysis:(int64_t)analysis
{
  v3 = MEMORY[0x1E695E0F0];
  if (analysis > 2)
  {
    switch(analysis)
    {
      case 3:
        asleepCoreOffsets = [(HKSleepStageChartPoint *)self asleepCoreOffsets];
        break;
      case 4:
        asleepCoreOffsets = [(HKSleepStageChartPoint *)self asleepDeepOffsets];
        break;
      case 5:
        asleepCoreOffsets = [(HKSleepStageChartPoint *)self asleepRemOffsets];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (analysis)
  {
    if (analysis == 1)
    {
      asleepCoreOffsets = [(HKSleepStageChartPoint *)self asleepUnspecifiedOffsets];
    }

    else
    {
      if (analysis != 2)
      {
        goto LABEL_15;
      }

      asleepCoreOffsets = [(HKSleepStageChartPoint *)self awakeOffsets];
    }
  }

  else
  {
    asleepCoreOffsets = [(HKSleepPeriodChartPoint *)self inBedOffsets];
  }

  v3 = asleepCoreOffsets;
LABEL_15:
  v5 = [v3 hk_map:&__block_literal_global_554];

  return v5;
}

- (id)allYValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  asleepUnspecifiedOffsets = [(HKSleepStageChartPoint *)self asleepUnspecifiedOffsets];
  [array addObjectsFromArray:asleepUnspecifiedOffsets];

  asleepDeepOffsets = [(HKSleepStageChartPoint *)self asleepDeepOffsets];
  [array addObjectsFromArray:asleepDeepOffsets];

  asleepCoreOffsets = [(HKSleepStageChartPoint *)self asleepCoreOffsets];
  [array addObjectsFromArray:asleepCoreOffsets];

  asleepRemOffsets = [(HKSleepStageChartPoint *)self asleepRemOffsets];
  [array addObjectsFromArray:asleepRemOffsets];

  awakeOffsets = [(HKSleepStageChartPoint *)self awakeOffsets];
  [array addObjectsFromArray:awakeOffsets];

  inBedOffsets = [(HKSleepPeriodChartPoint *)self inBedOffsets];
  [array addObjectsFromArray:inBedOffsets];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"value" ascending:0];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [array sortUsingDescriptors:v11];

  v12 = [array hk_map:&__block_literal_global_556];

  return v12;
}

+ (id)chartPointsForInformationProviders:(id)providers context:(id)context
{
  v123 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  v7 = objc_opt_new();
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = providersCopy;
  v94 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
  if (v94)
  {
    v93 = *v115;
    v89 = contextCopy;
    v90 = v7;
    do
    {
      for (i = 0; i != v94; ++i)
      {
        if (*v115 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v114 + 1) + 8 * i);
        v10 = objc_alloc_init(HKSleepStageChartPoint);
        if ([v9 isAveraged])
        {
          sleepStartOffset = [v9 sleepStartOffset];

          if (sleepStartOffset)
          {
            v12 = i;
            v13 = MEMORY[0x1E696AD98];
            sleepStartOffset2 = [v9 sleepStartOffset];
            [sleepStartOffset2 doubleValue];
            v15 = [v13 numberWithDouble:?];
            v16 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v15 continuation:0];
            v119[0] = v16;
            v17 = MEMORY[0x1E696AD98];
            sleepEndOffset = [v9 sleepEndOffset];
            [sleepEndOffset doubleValue];
            v19 = [v17 numberWithDouble:?];
            v20 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v19 continuation:0];
            v119[1] = v20;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
            v22 = v21 = v10;
            [(HKSleepStageChartPoint *)v21 setAsleepUnspecifiedOffsets:v22];

            v10 = v21;
            contextCopy = v89;

            i = v12;
            v7 = v90;
          }

          if (([v9 hasSleepStageData] & 1) == 0)
          {
            inBedStartOffset = [v9 inBedStartOffset];

            if (inBedStartOffset)
            {
              v24 = contextCopy;
              v25 = v9;
              v26 = MEMORY[0x1E696AD98];
              inBedStartOffset2 = [v9 inBedStartOffset];
              [inBedStartOffset2 doubleValue];
              v27 = [v26 numberWithDouble:?];
              v28 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v27 continuation:0];
              v118[0] = v28;
              v29 = MEMORY[0x1E696AD98];
              v95 = v25;
              v30 = v25;
              contextCopy = v24;
              inBedEndOffset = [v30 inBedEndOffset];
              [inBedEndOffset doubleValue];
              v32 = v29;
              v33 = inBedEndOffset;
              v34 = [v32 numberWithDouble:?];
              v35 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v34 continuation:0];
              v118[1] = v35;
              v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
              goto LABEL_48;
            }
          }

          goto LABEL_49;
        }

        v91 = v10;
        v92 = i;
        v95 = v9;
        sleepDaySummaries = [v9 sleepDaySummaries];
        firstObject = [sleepDaySummaries firstObject];

        v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        inBedStartOffset2 = firstObject;
        periods = [firstObject periods];
        v98 = [periods countByEnumeratingWithState:&v110 objects:v121 count:16];
        if (!v98)
        {
          goto LABEL_47;
        }

        v97 = *v111;
        do
        {
          v38 = 0;
          do
          {
            if (*v111 != v97)
            {
              objc_enumerationMutation(periods);
            }

            v99 = v38;
            v39 = *(*(&v110 + 1) + 8 * v38);
            segments = [v39 segments];
            v41 = [segments count];

            if (v41)
            {
              v42 = 0;
              do
              {
                segments2 = [v39 segments];
                v44 = [segments2 objectAtIndexedSubscript:v42];

                v45 = v42 + 1;
                segments3 = [v39 segments];
                if ([segments3 count] <= v42 + 1)
                {
                  v109 = 0;
                }

                else
                {
                  segments4 = [v39 segments];
                  v109 = [segments4 objectAtIndexedSubscript:v42 + 1];
                }

                if (v42)
                {
                  v48 = v42 - 1;
                  segments5 = [v39 segments];
                  v50 = [segments5 objectAtIndexedSubscript:v48];
                }

                else
                {
                  v50 = 0;
                }

                dateInterval = [v44 dateInterval];
                startDate = [dateInterval startDate];
                dateInterval2 = [inBedStartOffset2 dateInterval];
                startDate2 = [dateInterval2 startDate];
                v108 = v50;
                if ([startDate hk_isBeforeDate:startDate2])
                {
                  v55 = 1;
                }

                else
                {
                  v55 = [self _segment:v44 isAdjacentToSegment:v50];
                }

                dateInterval3 = [v44 dateInterval];
                endDate = [dateInterval3 endDate];
                dateInterval4 = [inBedStartOffset2 dateInterval];
                endDate2 = [dateInterval4 endDate];
                if ([endDate hk_isAfterDate:endDate2])
                {
                  v60 = 1;
                }

                else
                {
                  v60 = [self _segment:v44 isAdjacentToSegment:v109];
                }

                dateInterval5 = [inBedStartOffset2 dateInterval];
                dateInterval6 = [v44 dateInterval];
                v63 = [dateInterval5 intersectionWithDateInterval:dateInterval6];

                startDate3 = [v63 startDate];
                dateInterval7 = [inBedStartOffset2 dateInterval];
                startDate4 = [dateInterval7 startDate];
                [startDate3 timeIntervalSinceDate:startDate4];
                v68 = v67;

                [v63 duration];
                v70 = v68 + v69;
                v71 = [MEMORY[0x1E696AD98] numberWithDouble:v68];
                v72 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v71 continuation:v55];
                v120[0] = v72;
                v73 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
                v74 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v73 continuation:v60];
                v120[1] = v74;
                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];

                category = [v44 category];
                if (category > 2)
                {
                  v78 = v105;
                  v77 = v108;
                  if (category != 3)
                  {
                    v78 = v103;
                    if (category != 4)
                    {
                      v78 = v102;
                      if (category != 5)
                      {
                        goto LABEL_41;
                      }
                    }
                  }
                }

                else
                {
                  v77 = v108;
                  if (category)
                  {
                    v78 = v104;
                    if (category != 1)
                    {
                      if (category != 2)
                      {
                        goto LABEL_41;
                      }

                      hasSleepStageData = [inBedStartOffset2 hasSleepStageData];
                      v78 = v100;
                      if ((hasSleepStageData & 1) == 0)
                      {
                        goto LABEL_41;
                      }
                    }
                  }

                  else
                  {
                    hasSleepStageData2 = [inBedStartOffset2 hasSleepStageData];
                    v78 = v101;
                    if (hasSleepStageData2)
                    {
                      goto LABEL_41;
                    }
                  }
                }

                [v78 addObjectsFromArray:v75];
LABEL_41:

                segments6 = [v39 segments];
                v81 = [segments6 count];

                v42 = v45;
              }

              while (v81 > v45);
            }

            v38 = v99 + 1;
          }

          while (v99 + 1 != v98);
          v98 = [periods countByEnumeratingWithState:&v110 objects:v121 count:16];
        }

        while (v98);
LABEL_47:

        v10 = v91;
        v27 = v100;
        [(HKSleepStageChartPoint *)v91 setAwakeOffsets:v100];
        v28 = v104;
        [(HKSleepStageChartPoint *)v91 setAsleepUnspecifiedOffsets:v104];
        v33 = v103;
        [(HKSleepStageChartPoint *)v91 setAsleepDeepOffsets:v103];
        v34 = v105;
        [(HKSleepStageChartPoint *)v91 setAsleepCoreOffsets:v105];
        v35 = v102;
        [(HKSleepStageChartPoint *)v91 setAsleepRemOffsets:v102];
        contextCopy = v89;
        v7 = v90;
        i = v92;
LABEL_48:
        [(HKSleepPeriodChartPoint *)v10 setInBedOffsets:v101];

        v9 = v95;
LABEL_49:
        v83 = [HKSleepUtilities noonAlignedXValueForChartPointInfoProvider:v9];
        [(HKSleepPeriodChartPoint *)v10 setXValue:v83];

        [(HKSleepPeriodChartPoint *)v10 setHighlighted:0];
        scheduledBedtimeValue = [v9 scheduledBedtimeValue];
        [(HKSleepPeriodChartPoint *)v10 setLowerGoal:scheduledBedtimeValue];

        scheduledWakeTimeValue = [v9 scheduledWakeTimeValue];
        [(HKSleepPeriodChartPoint *)v10 setUpperGoal:scheduledWakeTimeValue];

        v86 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [contextCopy chartType], v9);
        [(HKSleepPeriodChartPoint *)v10 setUserInfo:v86];

        [v7 addObject:v10];
      }

      v94 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
    }

    while (v94);
  }

  return v7;
}

+ (BOOL)_segment:(id)_segment isAdjacentToSegment:(id)segment
{
  _segmentCopy = _segment;
  segmentCopy = segment;
  v7 = segmentCopy;
  v8 = 0;
  if (_segmentCopy && segmentCopy)
  {
    if ([_segmentCopy category] && objc_msgSend(v7, "category"))
    {
      dateInterval = [_segmentCopy dateInterval];
      endDate = [dateInterval endDate];
      dateInterval2 = [v7 dateInterval];
      startDate = [dateInterval2 startDate];
      if ([endDate isEqualToDate:startDate])
      {
        v8 = 1;
      }

      else
      {
        dateInterval3 = [_segmentCopy dateInterval];
        startDate2 = [dateInterval3 startDate];
        dateInterval4 = [v7 dateInterval];
        endDate2 = [dateInterval4 endDate];
        v8 = [startDate2 isEqualToDate:endDate2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end