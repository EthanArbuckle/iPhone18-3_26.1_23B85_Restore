@interface HKScoredAssessmentDataSource
- (id)_chartPointsWithSamples:(id)samples sourceTimeZone:(id)zone;
@end

@implementation HKScoredAssessmentDataSource

- (id)_chartPointsWithSamples:(id)samples sourceTimeZone:(id)zone
{
  v40 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  zoneCopy = zone;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = samplesCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v33 = *v36;
    v10 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = objc_alloc_init(HKLevelCategoryChartPoint);
        hk_integerValue = [v12 hk_integerValue];
        startDate = [v12 startDate];
        v16 = [startDate hk_dateFromSourceTimeZone:zoneCopy];
        [(HKLevelCategoryChartPoint *)v13 setStartDate:v16];

        endDate = [v12 endDate];
        v18 = [endDate hk_dateFromSourceTimeZone:zoneCopy];
        [(HKLevelCategoryChartPoint *)v13 setEndDate:v18];

        valueOrder = [(HKLevelCategoryDataSource *)self valueOrder];

        v20 = *(v10 + 3480);
        if (valueOrder)
        {
          valueOrder2 = [(HKLevelCategoryDataSource *)self valueOrder];
          v22 = [*(v10 + 3480) numberWithInteger:hk_integerValue];
          v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(valueOrder2, "indexOfObject:", v22)}];
          [(HKLevelCategoryChartPoint *)v13 setYValue:v23];
        }

        else
        {
          valueOrder2 = [*(v10 + 3480) numberWithInteger:hk_integerValue];
          [(HKLevelCategoryChartPoint *)v13 setYValue:valueOrder2];
        }

        [(HKLevelCategoryChartPoint *)v13 setPointStyle:0];
        pointStyleBlock = [(HKLevelCategoryDataSource *)self pointStyleBlock];

        if (pointStyleBlock)
        {
          pointStyleBlock2 = [(HKLevelCategoryDataSource *)self pointStyleBlock];
          [(HKLevelCategoryChartPoint *)v13 setPointStyle:(pointStyleBlock2)[2](pointStyleBlock2, v12)];
        }

        userInfoCreationBlock = [(HKLevelCategoryDataSource *)self userInfoCreationBlock];
        startDate2 = [v12 startDate];
        endDate2 = [v12 endDate];
        v29 = (userInfoCreationBlock)[2](userInfoCreationBlock, hk_integerValue, startDate2, endDate2, 0);
        [(HKLevelCategoryChartPoint *)v13 setUserInfo:v29];

        [v34 addObject:v13];
        v10 = 0x1E696A000;
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  v30 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v30 setChartPoints:v34];

  return v30;
}

@end