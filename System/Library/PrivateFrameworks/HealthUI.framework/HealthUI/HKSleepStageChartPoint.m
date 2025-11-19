@interface HKSleepStageChartPoint
+ (BOOL)_segment:(id)a3 isAdjacentToSegment:(id)a4;
+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4;
- (id)allYValues;
- (id)yValuesForSleepAnalysis:(int64_t)a3;
@end

@implementation HKSleepStageChartPoint

- (id)yValuesForSleepAnalysis:(int64_t)a3
{
  v3 = MEMORY[0x1E695E0F0];
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = [(HKSleepStageChartPoint *)self asleepCoreOffsets];
        break;
      case 4:
        v4 = [(HKSleepStageChartPoint *)self asleepDeepOffsets];
        break;
      case 5:
        v4 = [(HKSleepStageChartPoint *)self asleepRemOffsets];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(HKSleepStageChartPoint *)self asleepUnspecifiedOffsets];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v4 = [(HKSleepStageChartPoint *)self awakeOffsets];
    }
  }

  else
  {
    v4 = [(HKSleepPeriodChartPoint *)self inBedOffsets];
  }

  v3 = v4;
LABEL_15:
  v5 = [v3 hk_map:&__block_literal_global_554];

  return v5;
}

- (id)allYValues
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HKSleepStageChartPoint *)self asleepUnspecifiedOffsets];
  [v3 addObjectsFromArray:v4];

  v5 = [(HKSleepStageChartPoint *)self asleepDeepOffsets];
  [v3 addObjectsFromArray:v5];

  v6 = [(HKSleepStageChartPoint *)self asleepCoreOffsets];
  [v3 addObjectsFromArray:v6];

  v7 = [(HKSleepStageChartPoint *)self asleepRemOffsets];
  [v3 addObjectsFromArray:v7];

  v8 = [(HKSleepStageChartPoint *)self awakeOffsets];
  [v3 addObjectsFromArray:v8];

  v9 = [(HKSleepPeriodChartPoint *)self inBedOffsets];
  [v3 addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"value" ascending:0];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v3 sortUsingDescriptors:v11];

  v12 = [v3 hk_map:&__block_literal_global_556];

  return v12;
}

+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v5;
  v94 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
  if (v94)
  {
    v93 = *v115;
    v89 = v6;
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
          v11 = [v9 sleepStartOffset];

          if (v11)
          {
            v12 = i;
            v13 = MEMORY[0x1E696AD98];
            v14 = [v9 sleepStartOffset];
            [v14 doubleValue];
            v15 = [v13 numberWithDouble:?];
            v16 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v15 continuation:0];
            v119[0] = v16;
            v17 = MEMORY[0x1E696AD98];
            v18 = [v9 sleepEndOffset];
            [v18 doubleValue];
            v19 = [v17 numberWithDouble:?];
            v20 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v19 continuation:0];
            v119[1] = v20;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
            v22 = v21 = v10;
            [(HKSleepStageChartPoint *)v21 setAsleepUnspecifiedOffsets:v22];

            v10 = v21;
            v6 = v89;

            i = v12;
            v7 = v90;
          }

          if (([v9 hasSleepStageData] & 1) == 0)
          {
            v23 = [v9 inBedStartOffset];

            if (v23)
            {
              v24 = v6;
              v25 = v9;
              v26 = MEMORY[0x1E696AD98];
              v107 = [v9 inBedStartOffset];
              [v107 doubleValue];
              v27 = [v26 numberWithDouble:?];
              v28 = [HKSleepPeriodChartPointOffset chartPointOffsetWithValue:v27 continuation:0];
              v118[0] = v28;
              v29 = MEMORY[0x1E696AD98];
              v95 = v25;
              v30 = v25;
              v6 = v24;
              v31 = [v30 inBedEndOffset];
              [v31 doubleValue];
              v32 = v29;
              v33 = v31;
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
        v36 = [v9 sleepDaySummaries];
        v37 = [v36 firstObject];

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
        v107 = v37;
        v96 = [v37 periods];
        v98 = [v96 countByEnumeratingWithState:&v110 objects:v121 count:16];
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
              objc_enumerationMutation(v96);
            }

            v99 = v38;
            v39 = *(*(&v110 + 1) + 8 * v38);
            v40 = [v39 segments];
            v41 = [v40 count];

            if (v41)
            {
              v42 = 0;
              do
              {
                v43 = [v39 segments];
                v44 = [v43 objectAtIndexedSubscript:v42];

                v45 = v42 + 1;
                v46 = [v39 segments];
                if ([v46 count] <= v42 + 1)
                {
                  v109 = 0;
                }

                else
                {
                  v47 = [v39 segments];
                  v109 = [v47 objectAtIndexedSubscript:v42 + 1];
                }

                if (v42)
                {
                  v48 = v42 - 1;
                  v49 = [v39 segments];
                  v50 = [v49 objectAtIndexedSubscript:v48];
                }

                else
                {
                  v50 = 0;
                }

                v51 = [v44 dateInterval];
                v52 = [v51 startDate];
                v53 = [v107 dateInterval];
                v54 = [v53 startDate];
                v108 = v50;
                if ([v52 hk_isBeforeDate:v54])
                {
                  v55 = 1;
                }

                else
                {
                  v55 = [a1 _segment:v44 isAdjacentToSegment:v50];
                }

                v56 = [v44 dateInterval];
                v57 = [v56 endDate];
                v58 = [v107 dateInterval];
                v59 = [v58 endDate];
                if ([v57 hk_isAfterDate:v59])
                {
                  v60 = 1;
                }

                else
                {
                  v60 = [a1 _segment:v44 isAdjacentToSegment:v109];
                }

                v61 = [v107 dateInterval];
                v62 = [v44 dateInterval];
                v63 = [v61 intersectionWithDateInterval:v62];

                v64 = [v63 startDate];
                v65 = [v107 dateInterval];
                v66 = [v65 startDate];
                [v64 timeIntervalSinceDate:v66];
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

                v76 = [v44 category];
                if (v76 > 2)
                {
                  v78 = v105;
                  v77 = v108;
                  if (v76 != 3)
                  {
                    v78 = v103;
                    if (v76 != 4)
                    {
                      v78 = v102;
                      if (v76 != 5)
                      {
                        goto LABEL_41;
                      }
                    }
                  }
                }

                else
                {
                  v77 = v108;
                  if (v76)
                  {
                    v78 = v104;
                    if (v76 != 1)
                    {
                      if (v76 != 2)
                      {
                        goto LABEL_41;
                      }

                      v79 = [v107 hasSleepStageData];
                      v78 = v100;
                      if ((v79 & 1) == 0)
                      {
                        goto LABEL_41;
                      }
                    }
                  }

                  else
                  {
                    v82 = [v107 hasSleepStageData];
                    v78 = v101;
                    if (v82)
                    {
                      goto LABEL_41;
                    }
                  }
                }

                [v78 addObjectsFromArray:v75];
LABEL_41:

                v80 = [v39 segments];
                v81 = [v80 count];

                v42 = v45;
              }

              while (v81 > v45);
            }

            v38 = v99 + 1;
          }

          while (v99 + 1 != v98);
          v98 = [v96 countByEnumeratingWithState:&v110 objects:v121 count:16];
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
        v6 = v89;
        v7 = v90;
        i = v92;
LABEL_48:
        [(HKSleepPeriodChartPoint *)v10 setInBedOffsets:v101];

        v9 = v95;
LABEL_49:
        v83 = [HKSleepUtilities noonAlignedXValueForChartPointInfoProvider:v9];
        [(HKSleepPeriodChartPoint *)v10 setXValue:v83];

        [(HKSleepPeriodChartPoint *)v10 setHighlighted:0];
        v84 = [v9 scheduledBedtimeValue];
        [(HKSleepPeriodChartPoint *)v10 setLowerGoal:v84];

        v85 = [v9 scheduledWakeTimeValue];
        [(HKSleepPeriodChartPoint *)v10 setUpperGoal:v85];

        v86 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [v6 chartType], v9);
        [(HKSleepPeriodChartPoint *)v10 setUserInfo:v86];

        [v7 addObject:v10];
      }

      v94 = [obj countByEnumeratingWithState:&v114 objects:v122 count:16];
    }

    while (v94);
  }

  return v7;
}

+ (BOOL)_segment:(id)a3 isAdjacentToSegment:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 category] && objc_msgSend(v7, "category"))
    {
      v9 = [v5 dateInterval];
      v10 = [v9 endDate];
      v11 = [v7 dateInterval];
      v12 = [v11 startDate];
      if ([v10 isEqualToDate:v12])
      {
        v8 = 1;
      }

      else
      {
        v17 = [v5 dateInterval];
        v13 = [v17 startDate];
        v14 = [v7 dateInterval];
        v15 = [v14 endDate];
        v8 = [v13 isEqualToDate:v15];
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