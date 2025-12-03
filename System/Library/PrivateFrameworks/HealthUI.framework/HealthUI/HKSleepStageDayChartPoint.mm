@interface HKSleepStageDayChartPoint
+ (id)chartPointsForInformationProviders:(id)providers context:(id)context;
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

+ (id)chartPointsForInformationProviders:(id)providers context:(id)context
{
  v96 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:6];
  [v6 canonicalSize];
  v8 = v7;

  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = providersCopy;
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
        sleepDaySummaries = [v76 sleepDaySummaries];
        firstObject = [sleepDaySummaries firstObject];

        v12 = MEMORY[0x1E695DF00];
        morningIndex = [firstObject morningIndex];
        calendar = [firstObject calendar];
        v15 = [v12 hk_dateOnDayIndex:morningIndex atHour:0 calendar:calendar];

        v78 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 duration:v8];
        hkui_somnogramChartDateInterval = [firstObject hkui_somnogramChartDateInterval];
        v16 = objc_alloc(MEMORY[0x1E695DF70]);
        v17 = HKCategoryValueSleepAnalysisAsleepValues();
        allObjects = [v17 allObjects];
        v19 = [v16 initWithArray:allObjects];

        [v19 addObject:&unk_1F4383BE0];
        v20 = [firstObject firstStartDateMatchingSleepValues:v19];
        v74 = firstObject;
        v21 = [firstObject lastEndDateMatchingSleepValues:v19];
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
        periods = [firstObject periods];
        v69 = [periods countByEnumeratingWithState:&v85 objects:v94 count:16];
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
                objc_enumerationMutation(periods);
              }

              v70 = v23;
              v24 = *(*(&v85 + 1) + 8 * v23);
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              segments = [v24 segments];
              v80 = [segments countByEnumeratingWithState:&v81 objects:v93 count:16];
              if (v80)
              {
                v79 = *v82;
                do
                {
                  for (i = 0; i != v80; ++i)
                  {
                    if (*v82 != v79)
                    {
                      objc_enumerationMutation(segments);
                    }

                    v26 = *(*(&v81 + 1) + 8 * i);
                    v27 = objc_alloc_init(HKSleepStageDayChartPoint);
                    dateInterval = [v26 dateInterval];
                    startDate = [dateInterval startDate];
                    v30 = [startDate hkui_dateNormalizedFromDateInterval:hkui_somnogramChartDateInterval toDateInterval:v78];
                    [(HKSleepStageDayChartPoint *)v27 setStartDate:v30];

                    dateInterval2 = [v26 dateInterval];
                    endDate = [dateInterval2 endDate];
                    v33 = [endDate hkui_dateNormalizedFromDateInterval:hkui_somnogramChartDateInterval toDateInterval:v78];
                    [(HKSleepStageDayChartPoint *)v27 setEndDate:v33];

                    v34 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [contextCopy chartType], v76);
                    [(HKSleepStageDayChartPoint *)v27 setUserInfo:v34];

                    v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v26, "category")}];
                    v36 = HKSleepChartPointFormatterOptionsForSleepAnalysis(v35);
                    userInfo = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [userInfo setAnnotationOptions:v36];

                    v38 = MEMORY[0x1E696AD98];
                    dateInterval3 = [v26 dateInterval];
                    [dateInterval3 duration];
                    v40 = [v38 numberWithDouble:?];
                    userInfo2 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [userInfo2 setAnnotationOverrideDuration:v40];

                    dateInterval4 = [v26 dateInterval];
                    startDate2 = [dateInterval4 startDate];
                    dateInterval5 = [v26 dateInterval];
                    endDate2 = [dateInterval5 endDate];
                    v46 = [HKValueRange valueRangeWithMinValue:startDate2 maxValue:endDate2];
                    userInfo3 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [userInfo3 setAnnotationOverrideDateRange:v46];

                    userInfo4 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [userInfo4 setAnnotationOptions:{objc_msgSend(userInfo4, "annotationOptions") | 0x40}];

                    userInfo5 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                    [userInfo5 setCurrentValueViewOptions:{objc_msgSend(userInfo5, "currentValueViewOptions") | 0x40}];

                    v50 = [MEMORY[0x1E696AD98] numberWithInteger:{HKSleepSomnogramStageForSleepAnalysis(objc_msgSend(v26, "category"))}];
                    [(HKSleepStageDayChartPoint *)v27 setYValue:v50];

                    category = [v26 category];
                    if (!category)
                    {
                      if ([v74 hasSleepStageData])
                      {
                        goto LABEL_30;
                      }

                      v52 = 2;
LABEL_28:
                      userInfo6 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [userInfo6 setAnnotationOverrideDuration:0];

                      userInfo7 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [userInfo7 setAnnotationOverrideDateRange:v71];

                      userInfo8 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [userInfo8 setAnnotationOptions:{objc_msgSend(userInfo8, "annotationOptions") | v52}];

                      userInfo9 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [userInfo9 setAnnotationOptions:{objc_msgSend(userInfo9, "annotationOptions") & 0xFFFFFFFFFFFFFFBFLL}];

                      userInfo10 = [(HKSleepStageDayChartPoint *)v27 userInfo];
                      [userInfo10 setCurrentValueViewOptions:{objc_msgSend(userInfo10, "currentValueViewOptions") & 0xFFFFFFFFFFFFFFBFLL}];

LABEL_29:
                      [v73 addObject:v27];
                      goto LABEL_30;
                    }

                    if (category == 1)
                    {
                      if (([v74 hasSleepStageData] & 1) == 0)
                      {
                        v52 = 1;
                        goto LABEL_28;
                      }

                      goto LABEL_29;
                    }

                    if (category != 2 || ([v74 hasSleepStageData] & 1) != 0)
                    {
                      goto LABEL_29;
                    }

LABEL_30:
                  }

                  v80 = [segments countByEnumeratingWithState:&v81 objects:v93 count:16];
                }

                while (v80);
              }

              v23 = v70 + 1;
            }

            while (v70 + 1 != v69);
            v69 = [periods countByEnumeratingWithState:&v85 objects:v94 count:16];
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