@interface HKBloodPressureOverlayDataSourceDelegate
- (HKBloodPressureOverlayDataSourceDelegate)initWithClassificationCategoryData:(id)a3 healthStore:(id)a4 baseDisplayType:(id)a5;
- (id)_makeChartPointForDateInterval:(id)a3 statisticsInterval:(id)a4 overlayMode:(unint64_t)a5;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation HKBloodPressureOverlayDataSourceDelegate

- (HKBloodPressureOverlayDataSourceDelegate)initWithClassificationCategoryData:(id)a3 healthStore:(id)a4 baseDisplayType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HKBloodPressureOverlayDataSourceDelegate;
  v12 = [(HKBloodPressureOverlayDataSourceDelegate *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_categoryData, a3);
    objc_storeStrong(&v13->_healthStore, a4);
    objc_storeStrong(&v13->_baseDisplayType, a5);
    v14 = [MEMORY[0x1E696C510] millimeterOfMercuryUnit];
    unit = v13->_unit;
    v13->_unit = v14;
  }

  return v13;
}

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
  v8 = [v7 seriesPointIntervalComponentsAtResolution:0];
  v9 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v6 startDate];
  v12 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:v11];

  v13 = [v6 endDate];

  v14 = [v9 hk_dateByShiftingFromGregorianCalendarWithUTCTimeZone:v13];

  v15 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 endDate:v14];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__HKBloodPressureOverlayDataSourceDelegate_dataForDateRange_timeScope___block_invoke;
  v21[3] = &unk_1E81B73C8;
  v16 = v10;
  v22 = v16;
  v23 = self;
  v24 = v8;
  v17 = v8;
  [v9 hk_enumerateDateInterval:v15 byDateComponents:v17 block:v21];

  v18 = v24;
  v19 = v16;

  return v16;
}

void __71__HKBloodPressureOverlayDataSourceDelegate_dataForDateRange_timeScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v4 _makeChartPointForDateInterval:v6 statisticsInterval:v5 overlayMode:1];
  [v3 addObject:v7];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) _makeChartPointForDateInterval:v6 statisticsInterval:*(a1 + 48) overlayMode:2];

  [v8 addObject:v9];
}

- (id)_makeChartPointForDateInterval:(id)a3 statisticsInterval:(id)a4 overlayMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 2)
  {
    v18 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
    [v18 diastolicUpperBound];
    v11 = v19;

    v20 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
    [v20 diastolicLowerBound];
    v10 = v21;

    if (!HKUIEqualDoubles(v11, 1.79769313e308))
    {
      goto LABEL_8;
    }

    v16 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
    [v16 systolicLowerBound];
    v11 = v22;
    goto LABEL_7;
  }

  v10 = 0.0;
  v11 = 0.0;
  if (a5 == 1)
  {
    v12 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
    [v12 systolicUpperBound];
    v11 = v13;

    v14 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
    [v14 systolicLowerBound];
    v10 = v15;

    if (HKUIEqualDoubles(v10, -1.79769313e308))
    {
      v16 = [(HKBloodPressureOverlayDataSourceDelegate *)self categoryData];
      [v16 diastolicUpperBound];
      v10 = v17;
LABEL_7:
    }
  }

LABEL_8:
  if (HKUIEqualDoubles(v11, 1.79769313e308))
  {
    v11 = v10;
  }

  else if (HKUIEqualDoubles(v10, -1.79769313e308))
  {
    v10 = v11;
  }

  v23 = objc_alloc_init(HKInteractiveChartBloodPressureOverlayData);
  [(HKInteractiveChartSinglePointData *)v23 setUnit:self->_unit];
  [(HKInteractiveChartSinglePointData *)v23 setRepresentsRange:1];
  [(HKInteractiveChartSinglePointData *)v23 setStatisticsInterval:v9];
  [(HKInteractiveChartSinglePointData *)v23 setRecordCount:1];
  [(HKInteractiveChartSinglePointData *)v23 setMaxValue:v11];
  [(HKInteractiveChartSinglePointData *)v23 setMinValue:v10];
  [(HKInteractiveChartBloodPressureOverlayData *)v23 setOverlayMode:a5];
  v24 = objc_alloc_init(HKQuantityTypeDataSourceValue);
  v25 = [MEMORY[0x1E696C348] quantityWithUnit:self->_unit doubleValue:v11];
  [(HKQuantityTypeDataSourceValue *)v24 setMaxQuantity:v25];

  v26 = [MEMORY[0x1E696C348] quantityWithUnit:self->_unit doubleValue:v10];
  [(HKQuantityTypeDataSourceValue *)v24 setMinQuantity:v26];

  v27 = [v8 startDate];
  [(HKQuantityTypeDataSourceValue *)v24 setStartDate:v27];

  v28 = [v8 endDate];
  [(HKQuantityTypeDataSourceValue *)v24 setEndDate:v28];

  v29 = [[HKHealthChartPoint alloc] initWithDataSourceValue:v24 options:12 unit:self->_unit displayType:self->_baseDisplayType];
  [(HKHealthChartPoint *)v29 setUserInfo:v23];

  return v29;
}

@end