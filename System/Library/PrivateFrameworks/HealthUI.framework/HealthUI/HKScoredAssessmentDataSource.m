@interface HKScoredAssessmentDataSource
- (id)_chartPointsWithSamples:(id)a3 sourceTimeZone:(id)a4;
@end

@implementation HKScoredAssessmentDataSource

- (id)_chartPointsWithSamples:(id)a3 sourceTimeZone:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
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
        v14 = [v12 hk_integerValue];
        v15 = [v12 startDate];
        v16 = [v15 hk_dateFromSourceTimeZone:v7];
        [(HKLevelCategoryChartPoint *)v13 setStartDate:v16];

        v17 = [v12 endDate];
        v18 = [v17 hk_dateFromSourceTimeZone:v7];
        [(HKLevelCategoryChartPoint *)v13 setEndDate:v18];

        v19 = [(HKLevelCategoryDataSource *)self valueOrder];

        v20 = *(v10 + 3480);
        if (v19)
        {
          v21 = [(HKLevelCategoryDataSource *)self valueOrder];
          v22 = [*(v10 + 3480) numberWithInteger:v14];
          v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "indexOfObject:", v22)}];
          [(HKLevelCategoryChartPoint *)v13 setYValue:v23];
        }

        else
        {
          v21 = [*(v10 + 3480) numberWithInteger:v14];
          [(HKLevelCategoryChartPoint *)v13 setYValue:v21];
        }

        [(HKLevelCategoryChartPoint *)v13 setPointStyle:0];
        v24 = [(HKLevelCategoryDataSource *)self pointStyleBlock];

        if (v24)
        {
          v25 = [(HKLevelCategoryDataSource *)self pointStyleBlock];
          [(HKLevelCategoryChartPoint *)v13 setPointStyle:(v25)[2](v25, v12)];
        }

        v26 = [(HKLevelCategoryDataSource *)self userInfoCreationBlock];
        v27 = [v12 startDate];
        v28 = [v12 endDate];
        v29 = (v26)[2](v26, v14, v27, v28, 0);
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