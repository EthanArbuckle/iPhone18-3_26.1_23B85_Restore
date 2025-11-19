@interface HKSleepStageDayChartPoint
+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4;
- (NSString)description;
- (id)allYValues;
@end

@implementation HKSleepStageDayChartPoint

- (id)allYValues
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_yValue)
  {
    v4[0] = self->_yValue;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKSleepStageDayChartPoint;
  v4 = [(HKSleepStageDayChartPoint *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { %@->%@ %@ }", v4, self->_startDate, self->_endDate, self->_yValue];

  return v5;
}

+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v75 = a4;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  [v6 canonicalSize];
  v8 = v7;

  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v5;
  v61 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v61)
  {
    v60 = *v90;
    do
    {
      v9 = 0;
      do
      {
        if (*v90 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v89 + 1) + 8 * v9);
        v10 = [v76 sleepDaySummaries];
        v11 = [v10 firstObject];

        v12 = MEMORY[0x1E695DF00];
        v13 = [v11 morningIndex];
        v14 = [v11 calendar];
        v15 = [v12 hk_dateOnDayIndex:v13 atHour:0 calendar:v14];

        v78 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 duration:v8];
        v77 = [v11 hkui_somnogramChartDateInterval];
        v16 = objc_alloc(MEMORY[0x1E695DF70]);
        v17 = HKCategoryValueSleepAnalysisAsleepValues();
        v18 = [v17 allObjects];
        v19 = [v16 initWithArray:v18];

        [v19 addObject:&unk_1F4383BE0];
        v20 = [v11 firstStartDateMatchingSleepValues:v19];
        v74 = v11;
        v21 = [v11 lastEndDateMatchingSleepValues:v19];
        v22 = v21;
        v71 = 0;
        v65 = v15;
        v66 = v9;
        v64 = v19;
        if (v20 && v21)
        {
          v71 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v21];
        }

        v62 = v22;
        v63 = v20;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v67 = [v11 periods];
        v69 = [v67 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v69)
        {
          v68 = *v86;
          do
          {
            v23 = 0;
            do
            {
              if (*v86 != v68)
              {
                objc_enumerationMutation(v67);
              }

              v70 = v23;
              v24 = *(*(&v85 + 1) + 8 * v23);
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v72 = [v24 segments];
              v80 = [v72 countByEnumeratingWithState:&v81 objects:v93 count:16];
              if (v80)
              {
                v79 = *v82;
                do
                {
                  for (i = 0; i != v80; ++i)
                  {
                    if (*v82 != v79)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v26 = *(*(&v81 + 1) + 8 * i);
                    v27 = objc_alloc_init(HKSleepStageDayChartPoint);
                    v28 = [v26 dateInterval];
                    v29 = [v28 startDate];
                    v30 = [v29 hkui_dateNormalizedFromDateInterval:v77 toDateInterval:v78];
                    [(HKSleepStageDayChartPoint *)v27 setStartDate:v30];

                    v31 = [v26 dateInterval];
                    v32 = [v31 endDate];
                    v33 = [v32 hkui_dateNormalizedFromDateInterval:v77 toDateInterval:v78];
                    [(HKSleepStageDayChartPoint *)v27 setEndDate:v33];

                    v34 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [v75 chartType], v76);
                    [(HKSleepStageDayChartPoint *)v27 setUserInfo:v34];

                    v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v26, "category")}];
                    v36 = HKSleepChartPointFormatterOptionsForSleepAnalysis(v35);
                    v37 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [v37 setAnnotationOptions:v36];

                    v38 = MEMORY[0x1E696AD98];
                    v39 = [v26 dateInterval];
                    [v39 duration];
                    v40 = [v38 numberWithDouble:?];
                    v41 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [v41 setAnnotationOverrideDuration:v40];

                    v42 = [v26 dateInterval];
                    v43 = [v42 startDate];
                    v44 = [v26 dateInterval];
                    v45 = [v44 endDate];
                    v46 = [HKValueRange valueRangeWithMinValue:v43 maxValue:v45];
                    v47 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [v47 setAnnotationOverrideDateRange:v46];

                    v48 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [v48 setAnnotationOptions:{objc_msgSend(v48, "annotationOptions") | 0x40}];

                    v49 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [v49 setCurrentValueViewOptions:{objc_msgSend(v49, "currentValueViewOptions") | 0x40}];

                    v50 = [MEMORY[0x1E696AD98] numberWithInteger:{HKSleepSomnogramStageForSleepAnalysis(objc_msgSend(v26, "category"))}];
                    [(HKSleepStageDayChartPoint *)v27 setYValue:v50];

                    v51 = [v26 category];
                    if (!v51)
                    {
                      if ([v74 hasSleepStageData])
                      {
                        goto LABEL_30;
                      }

                      v52 = 2;
LABEL_28:
                      v53 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [v53 setAnnotationOverrideDuration:0];

                      v54 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [v54 setAnnotationOverrideDateRange:v71];

                      v55 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [v55 setAnnotationOptions:{objc_msgSend(v55, "annotationOptions") | v52}];

                      v56 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [v56 setAnnotationOptions:{objc_msgSend(v56, "annotationOptions") & 0xFFFFFFFFFFFFFFBFLL}];

                      v57 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [v57 setCurrentValueViewOptions:{objc_msgSend(v57, "currentValueViewOptions") & 0xFFFFFFFFFFFFFFBFLL}];

LABEL_29:
                      [v73 addObject:v27];
                      goto LABEL_30;
                    }

                    if (v51 == 1)
                    {
                      if (([v74 hasSleepStageData] & 1) == 0)
                      {
                        v52 = 1;
                        goto LABEL_28;
                      }

                      goto LABEL_29;
                    }

                    if (v51 != 2 || ([v74 hasSleepStageData] & 1) != 0)
                    {
                      goto LABEL_29;
                    }

LABEL_30:
                  }

                  v80 = [v72 countByEnumeratingWithState:&v81 objects:v93 count:16];
                }

                while (v80);
              }

              v23 = v70 + 1;
            }

            while (v70 + 1 != v69);
            v69 = [v67 countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v69);
        }

        v9 = v66 + 1;
      }

      while (v66 + 1 != v61);
      v61 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v61);
  }

  return v73;
}

@end