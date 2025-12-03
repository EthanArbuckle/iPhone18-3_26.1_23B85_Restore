@interface HKSleepPeriodChartPoint
+ (id)chartPointsForInformationProviders:(id)providers context:(id)context;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
@end

@implementation HKSleepPeriodChartPoint

- (id)minYValue
{
  allYValues = [(HKSleepPeriodChartPoint *)self allYValues];
  lastObject = [allYValues lastObject];

  if (lastObject)
  {
    [lastObject doubleValue];
    if (v4 > 1.79769313e308)
    {
      v4 = 1.79769313e308;
    }
  }

  else
  {
    v4 = 1.79769313e308;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];

  return v5;
}

- (id)maxYValue
{
  allYValues = [(HKSleepPeriodChartPoint *)self allYValues];
  firstObject = [allYValues firstObject];

  if (firstObject)
  {
    [firstObject doubleValue];
    v5 = fmax(v4, -1.79769313e308);
  }

  else
  {
    v5 = -1.79769313e308;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5];

  return v6;
}

- (id)allYValues
{
  v8[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inBedOffsets];
  [array addObjectsFromArray:self->_asleepOffsets];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"value" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [array sortUsingDescriptors:v5];

  v6 = [array hk_map:&__block_literal_global_46];

  return v6;
}

+ (id)chartPointsForInformationProviders:(id)providers context:(id)context
{
  v109 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  v7 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = providersCopy;
  v81 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v81)
  {
    v8 = 0x1E81B2000uLL;
    v80 = *v101;
    v76 = contextCopy;
    v77 = v7;
    do
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v101 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v100 + 1) + 8 * i);
        v11 = objc_alloc_init(*(v8 + 3672));
        if ([v10 isAveraged])
        {
          sleepStartOffset = [v10 sleepStartOffset];

          if (sleepStartOffset)
          {
            v13 = i;
            v14 = MEMORY[0x1E696AD98];
            sleepStartOffset2 = [v10 sleepStartOffset];
            [sleepStartOffset2 doubleValue];
            v16 = [v14 numberWithDouble:?];
            v17 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v16 continuation:0];
            v105[0] = v17;
            v18 = MEMORY[0x1E696AD98];
            [v10 sleepEndOffset];
            v20 = v19 = v11;
            [v20 doubleValue];
            v21 = [v18 numberWithDouble:?];
            v22 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v21 continuation:0];
            v105[1] = v22;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
            v24 = v23 = v10;
            [v19 setAsleepOffsets:v24];

            v10 = v23;
            i = v13;
            contextCopy = v76;

            v11 = v19;
            v7 = v77;

            v8 = 0x1E81B2000;
          }

          if (([v10 hasSleepStageData] & 1) == 0)
          {
            inBedStartOffset = [v10 inBedStartOffset];

            if (inBedStartOffset)
            {
              v26 = MEMORY[0x1E696AD98];
              [v10 inBedStartOffset];
              v27 = contextCopy;
              firstObject = v28 = v10;
              [firstObject doubleValue];
              v30 = [v26 numberWithDouble:?];
              v31 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v30 continuation:0];
              v104[0] = v31;
              v32 = MEMORY[0x1E696AD98];
              v82 = v28;
              v33 = v28;
              contextCopy = v27;
              inBedEndOffset = [v33 inBedEndOffset];
              [inBedEndOffset doubleValue];
              v35 = [v32 numberWithDouble:?];
              v36 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v35 continuation:0];
              v104[1] = v36;
              v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
              [v11 setInBedOffsets:v37];

              v38 = v31;
              v8 = 0x1E81B2000;

              v7 = v77;
              goto LABEL_32;
            }
          }

          goto LABEL_33;
        }

        v78 = v11;
        v79 = i;
        v82 = v10;
        sleepDaySummaries = [v10 sleepDaySummaries];
        firstObject = [sleepDaySummaries firstObject];

        v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        periods = [firstObject periods];
        v85 = [periods countByEnumeratingWithState:&v96 objects:v107 count:16];
        if (!v85)
        {
          goto LABEL_31;
        }

        v84 = *v97;
        do
        {
          v40 = 0;
          do
          {
            if (*v97 != v84)
            {
              objc_enumerationMutation(periods);
            }

            v86 = v40;
            v41 = *(*(&v96 + 1) + 8 * v40);
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            segments = [v41 segments];
            v91 = [segments countByEnumeratingWithState:&v92 objects:v106 count:16];
            if (v91)
            {
              v90 = *v93;
              do
              {
                for (j = 0; j != v91; ++j)
                {
                  if (*v93 != v90)
                  {
                    objc_enumerationMutation(segments);
                  }

                  v43 = *(*(&v92 + 1) + 8 * j);
                  dateInterval = [v43 dateInterval];
                  startDate = [dateInterval startDate];
                  dateInterval2 = [firstObject dateInterval];
                  startDate2 = [dateInterval2 startDate];
                  v48 = [startDate hk_isBeforeDate:startDate2];

                  dateInterval3 = [v43 dateInterval];
                  endDate = [dateInterval3 endDate];
                  dateInterval4 = [firstObject dateInterval];
                  endDate2 = [dateInterval4 endDate];
                  v53 = [endDate hk_isAfterDate:endDate2];

                  dateInterval5 = [firstObject dateInterval];
                  dateInterval6 = [v43 dateInterval];
                  v56 = [dateInterval5 intersectionWithDateInterval:dateInterval6];

                  startDate3 = [v56 startDate];
                  dateInterval7 = [firstObject dateInterval];
                  startDate4 = [dateInterval7 startDate];
                  [startDate3 timeIntervalSinceDate:startDate4];
                  v61 = v60;

                  [v56 duration];
                  v63 = v61 + v62;
                  v64 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                  v65 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v64 continuation:v48];

                  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
                  v67 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v66 continuation:v53];

                  category = [v43 category];
                  if ((category - 3) < 3)
                  {
                    goto LABEL_25;
                  }

                  v69 = v87;
                  if (category)
                  {
                    if (category != 1)
                    {
                      goto LABEL_27;
                    }

LABEL_25:
                    v69 = v89;
                  }

                  [v69 addObject:v65];
                  [v69 addObject:v67];
LABEL_27:
                }

                v91 = [segments countByEnumeratingWithState:&v92 objects:v106 count:16];
              }

              while (v91);
            }

            v40 = v86 + 1;
          }

          while (v86 + 1 != v85);
          v85 = [periods countByEnumeratingWithState:&v96 objects:v107 count:16];
        }

        while (v85);
LABEL_31:

        v11 = v78;
        v30 = v89;
        [v78 setAsleepOffsets:v89];
        v38 = v87;
        [v78 setInBedOffsets:v87];
        contextCopy = v76;
        v7 = v77;
        v8 = 0x1E81B2000;
        i = v79;
LABEL_32:

        v10 = v82;
LABEL_33:
        v70 = [HKSleepUtilities noonAlignedXValueForChartPointInfoProvider:v10];
        [v11 setXValue:v70];

        [v11 setHighlighted:0];
        scheduledBedtimeValue = [v10 scheduledBedtimeValue];
        [v11 setLowerGoal:scheduledBedtimeValue];

        scheduledWakeTimeValue = [v10 scheduledWakeTimeValue];
        [v11 setUpperGoal:scheduledWakeTimeValue];

        v73 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [contextCopy chartType], v10);
        [v11 setUserInfo:v73];

        [v7 addObject:v11];
      }

      v81 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
    }

    while (v81);
  }

  return v7;
}

@end