@interface HKRemoteNotificationLevelCategoryDataSource
- (HKRemoteNotificationLevelCategoryDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)_chartPointsWithSamples:(id)a3 sourceTimeZone:(id)a4;
- (id)chartPointsFromNotificationQueryData:(id)a3 sourceTimeZoneFromModel:(id)a4;
@end

@implementation HKRemoteNotificationLevelCategoryDataSource

- (HKRemoteNotificationLevelCategoryDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = HKRemoteNotificationLevelCategoryDataSource;
  v7 = [(HKHealthQueryChartCacheDataSource *)&v13 initWithDisplayType:v6 healthStore:a4];
  v8 = v7;
  if (v7)
  {
    [(HKLevelCategoryDataSource *)v7 setUserInfoCreationBlock:&__block_literal_global_87];
  }

  v9 = [v6 objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v6 objectType];
    [(HKLevelCategoryDataSource *)v8 setSampleType:v11];
  }

  return v8;
}

HKInteractiveChartCategoryValueData *__79__HKRemoteNotificationLevelCategoryDataSource_initWithDisplayType_healthStore___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartCategoryValueData);
  [(HKInteractiveChartCategoryValueData *)v8 setValue:a2];
  [(HKInteractiveChartCategoryValueData *)v8 setStartDate:v7];

  [(HKInteractiveChartCategoryValueData *)v8 setEndDate:v6];

  return v8;
}

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
        v14 = [v12 startDate];
        v15 = [v14 hk_dateFromSourceTimeZone:v7];
        [(HKLevelCategoryChartPoint *)v13 setStartDate:v15];

        v16 = [v12 endDate];
        v17 = [v16 hk_dateFromSourceTimeZone:v7];
        [(HKLevelCategoryChartPoint *)v13 setEndDate:v17];

        v18 = [v12 hk_integerValue];
        v19 = [(HKLevelCategoryDataSource *)self valueOrder];

        v20 = *(v10 + 3480);
        if (v19)
        {
          v21 = [(HKLevelCategoryDataSource *)self valueOrder];
          v22 = [*(v10 + 3480) numberWithInteger:v18];
          v23 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "indexOfObject:", v22)}];
          [(HKLevelCategoryChartPoint *)v13 setYValue:v23];
        }

        else
        {
          v21 = [*(v10 + 3480) numberWithInteger:v18];
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
        v29 = (v26)[2](v26, v18, v27, v28, 0);
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

- (id)chartPointsFromNotificationQueryData:(id)a3 sourceTimeZoneFromModel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKCodableNotificationDataSourceQueryData alloc];
  v9 = [v7 data];

  v10 = [(HKCodableNotificationDataSourceQueryData *)v8 initWithData:v9];
  v11 = [(HKCodableNotificationDataSourceQueryData *)v10 samples];
  v12 = [v11 hk_map:&__block_literal_global_301];
  v13 = [v12 copy];

  v14 = [(HKRemoteNotificationLevelCategoryDataSource *)self _chartPointsWithSamples:v13 sourceTimeZone:v6];

  return v14;
}

@end