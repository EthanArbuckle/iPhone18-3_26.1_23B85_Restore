@interface HKSleepComparisonDayChartPoint
+ (id)chartPointsForInformationProviders:(id)providers context:(id)context;
- (NSString)description;
- (id)allYValues;
@end

@implementation HKSleepComparisonDayChartPoint

- (id)allYValues
{
  v7[2] = *MEMORY[0x1E69E9840];
  minYValue = [(HKSleepComparisonDayChartPoint *)self minYValue];
  v7[0] = minYValue;
  maxYValue = [(HKSleepComparisonDayChartPoint *)self maxYValue];
  v7[1] = maxYValue;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKSleepComparisonDayChartPoint;
  v4 = [(HKSleepComparisonDayChartPoint *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { %@->%@ %@ }", v4, self->_startDate, self->_endDate, self->_yValue];

  return v5;
}

+ (id)chartPointsForInformationProviders:(id)providers context:(id)context
{
  v52 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = providersCopy;
  v29 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v29)
  {
    v28 = *v46;
    do
    {
      v7 = 0;
      do
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v7;
        v8 = *(*(&v45 + 1) + 8 * v7);
        sleepDaySummaries = [v8 sleepDaySummaries];
        firstObject = [sleepDaySummaries firstObject];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v30 = firstObject;
        periods = [firstObject periods];
        v34 = [periods countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v34)
        {
          v33 = *v42;
          do
          {
            v11 = 0;
            do
            {
              if (*v42 != v33)
              {
                objc_enumerationMutation(periods);
              }

              v35 = v11;
              v12 = *(*(&v41 + 1) + 8 * v11);
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              segments = [v12 segments];
              v14 = [segments countByEnumeratingWithState:&v37 objects:v49 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v38;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v38 != v16)
                    {
                      objc_enumerationMutation(segments);
                    }

                    v18 = *(*(&v37 + 1) + 8 * i);
                    if ([v18 category] != 2)
                    {
                      v19 = objc_alloc_init(HKSleepComparisonDayChartPoint);
                      dateInterval = [v18 dateInterval];
                      startDate = [dateInterval startDate];
                      [(HKSleepComparisonDayChartPoint *)v19 setStartDate:startDate];

                      dateInterval2 = [v18 dateInterval];
                      endDate = [dateInterval2 endDate];
                      [(HKSleepComparisonDayChartPoint *)v19 setEndDate:endDate];

                      v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "category")}];
                      [(HKSleepComparisonDayChartPoint *)v19 setYValue:v24];

                      v25 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [contextCopy chartType], v8);
                      [(HKSleepComparisonDayChartPoint *)v19 setUserInfo:v25];

                      [v36 addObject:v19];
                    }
                  }

                  v15 = [segments countByEnumeratingWithState:&v37 objects:v49 count:16];
                }

                while (v15);
              }

              v11 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [periods countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v34);
        }

        v7 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v29);
  }

  return v36;
}

@end