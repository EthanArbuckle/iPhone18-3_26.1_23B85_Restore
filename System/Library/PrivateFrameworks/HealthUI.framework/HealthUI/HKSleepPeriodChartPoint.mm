@interface HKSleepPeriodChartPoint
+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4;
- (id)allYValues;
- (id)maxYValue;
- (id)minYValue;
@end

@implementation HKSleepPeriodChartPoint

- (id)minYValue
{
  v2 = [(HKSleepPeriodChartPoint *)self allYValues];
  v3 = [v2 lastObject];

  if (v3)
  {
    [v3 doubleValue];
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
  v2 = [(HKSleepPeriodChartPoint *)self allYValues];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 doubleValue];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObjectsFromArray:self->_inBedOffsets];
  [v3 addObjectsFromArray:self->_asleepOffsets];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"value" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 sortUsingDescriptors:v5];

  v6 = [v3 hk_map:&__block_literal_global_46];

  return v6;
}

+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v5;
  v81 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v81)
  {
    v8 = 0x1E81B2000uLL;
    v80 = *v101;
    v76 = v6;
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
          v12 = [v10 sleepStartOffset];

          if (v12)
          {
            v13 = i;
            v14 = MEMORY[0x1E696AD98];
            v15 = [v10 sleepStartOffset];
            [v15 doubleValue];
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
            v6 = v76;

            v11 = v19;
            v7 = v77;

            v8 = 0x1E81B2000;
          }

          if (([v10 hasSleepStageData] & 1) == 0)
          {
            v25 = [v10 inBedStartOffset];

            if (v25)
            {
              v26 = MEMORY[0x1E696AD98];
              [v10 inBedStartOffset];
              v27 = v6;
              v29 = v28 = v10;
              [v29 doubleValue];
              v30 = [v26 numberWithDouble:?];
              v31 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v30 continuation:0];
              v104[0] = v31;
              v32 = MEMORY[0x1E696AD98];
              v82 = v28;
              v33 = v28;
              v6 = v27;
              v34 = [v33 inBedEndOffset];
              [v34 doubleValue];
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
        v39 = [v10 sleepDaySummaries];
        v29 = [v39 firstObject];

        v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v83 = [v29 periods];
        v85 = [v83 countByEnumeratingWithState:&v96 objects:v107 count:16];
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
              objc_enumerationMutation(v83);
            }

            v86 = v40;
            v41 = *(*(&v96 + 1) + 8 * v40);
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v88 = [v41 segments];
            v91 = [v88 countByEnumeratingWithState:&v92 objects:v106 count:16];
            if (v91)
            {
              v90 = *v93;
              do
              {
                for (j = 0; j != v91; ++j)
                {
                  if (*v93 != v90)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v43 = *(*(&v92 + 1) + 8 * j);
                  v44 = [v43 dateInterval];
                  v45 = [v44 startDate];
                  v46 = [v29 dateInterval];
                  v47 = [v46 startDate];
                  v48 = [v45 hk_isBeforeDate:v47];

                  v49 = [v43 dateInterval];
                  v50 = [v49 endDate];
                  v51 = [v29 dateInterval];
                  v52 = [v51 endDate];
                  v53 = [v50 hk_isAfterDate:v52];

                  v54 = [v29 dateInterval];
                  v55 = [v43 dateInterval];
                  v56 = [v54 intersectionWithDateInterval:v55];

                  v57 = [v56 startDate];
                  v58 = [v29 dateInterval];
                  v59 = [v58 startDate];
                  [v57 timeIntervalSinceDate:v59];
                  v61 = v60;

                  [v56 duration];
                  v63 = v61 + v62;
                  v64 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                  v65 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v64 continuation:v48];

                  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
                  v67 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v66 continuation:v53];

                  v68 = [v43 category];
                  if ((v68 - 3) < 3)
                  {
                    goto LABEL_25;
                  }

                  v69 = v87;
                  if (v68)
                  {
                    if (v68 != 1)
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

                v91 = [v88 countByEnumeratingWithState:&v92 objects:v106 count:16];
              }

              while (v91);
            }

            v40 = v86 + 1;
          }

          while (v86 + 1 != v85);
          v85 = [v83 countByEnumeratingWithState:&v96 objects:v107 count:16];
        }

        while (v85);
LABEL_31:

        v11 = v78;
        v30 = v89;
        [v78 setAsleepOffsets:v89];
        v38 = v87;
        [v78 setInBedOffsets:v87];
        v6 = v76;
        v7 = v77;
        v8 = 0x1E81B2000;
        i = v79;
LABEL_32:

        v10 = v82;
LABEL_33:
        v70 = [HKSleepUtilities noonAlignedXValueForChartPointInfoProvider:v10];
        [v11 setXValue:v70];

        [v11 setHighlighted:0];
        v71 = [v10 scheduledBedtimeValue];
        [v11 setLowerGoal:v71];

        v72 = [v10 scheduledWakeTimeValue];
        [v11 setUpperGoal:v72];

        v73 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [v6 chartType], v10);
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