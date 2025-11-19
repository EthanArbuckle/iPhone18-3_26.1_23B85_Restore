@interface HKBloodPressureCategoryFactorContext
- (HKBloodPressureCategoryFactorContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6 baseDisplayType:(id)a7 factorDisplayType:(id)a8 categoryData:(id)a9;
- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)a3 originalCoordinate:(id)a4;
- (id)stackedSampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKBloodPressureCategoryFactorContext

- (HKBloodPressureCategoryFactorContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 classificationManager:(id)a6 baseDisplayType:(id)a7 factorDisplayType:(id)a8 categoryData:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = HKBloodPressureCategoryFactorContext;
  v18 = [(HKBloodPressureCategoryContext *)&v26 initWithMode:a3 applicationItems:v15 overlayChartController:v16 classificationManager:a6 baseDisplayType:a7 categoryData:a9];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    v20 = [v17 sampleType];
    v21 = [v15 displayTypeController];
    v22 = [v21 displayTypeForObjectType:v20];

    v23 = [v15 timeScopeController];
    v24 = +[HKOverlayRoomStackedContext generateDisplayTypeForTemplateDisplayType:sampleType:overlayChartController:applicationItems:currentTimeScope:currentCalendar:](HKOverlayRoomStackedContext, "generateDisplayTypeForTemplateDisplayType:sampleType:overlayChartController:applicationItems:currentTimeScope:currentCalendar:", v22, v20, v16, v15, [v23 selectedTimeScope], v19);
    [(HKBloodPressureCategoryFactorContext *)v18 setStackedDisplayType:v24];
  }

  return v18;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self);
  v15 = [(HKBloodPressureCategoryFactorContext *)self stackedDisplayType];
  v16 = [v15 graphSeriesForTimeScope:a5];

  v17 = [v12 startDate];
  v18 = [v12 endDate];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __123__HKBloodPressureCategoryFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v22[3] = &unk_1E81BA7D0;
  objc_copyWeak(v27, &location);
  v19 = v12;
  v23 = v19;
  v27[1] = a5;
  v20 = v13;
  v24 = v20;
  v27[2] = a6;
  v21 = v14;
  v25 = self;
  v26 = v21;
  [v20 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:a6 startDate:v17 endDate:v18 completion:v22];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __123__HKBloodPressureCategoryFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!a3)
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) currentCalendar];
  v13 = [HKOverlayRoomFactorContext factorDateIntervalsWithChartPoints:v7 dateInterval:v11 timeScope:v10 calendar:v12 intersection:0];

  [WeakRetained setLastFactorDateIntervals:v13];
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) currentCalendar];
  v17 = [HKOverlayRoomFactorContext factorDateIntervalsWithChartPoints:v7 dateInterval:v15 timeScope:v14 calendar:v16 intersection:1];

  if (![v17 count])
  {
    v24 = [WeakRetained categoryData];
    v25 = [v24 identifier];
    v26 = [WeakRetained _bloodPressureContextItemWithCategory:v25 count:0 unitString:&stru_1F42FFBE0];
    [WeakRetained setLastUpdatedItem:v26];

LABEL_5:
    (*(*(a1 + 56) + 16))();
    goto LABEL_6;
  }

  v18 = *(a1 + 48);
  v19 = [v17 firstObject];
  v20 = *(a1 + 40);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v23 = *(a1 + 56);
  v27.receiver = v18;
  v27.super_class = HKBloodPressureCategoryFactorContext;
  objc_msgSendSuper2(&v27, sel_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion_, v19, v20, v21, v22, v23);

LABEL_6:
}

- (id)stackedSampleTypeForDateRangeUpdates
{
  v2 = [(HKBloodPressureCategoryFactorContext *)self stackedDisplayType];
  v3 = [v2 sampleType];

  return v3;
}

- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)a3 originalCoordinate:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(HKBloodPressureCategoryContext *)self dateCoordinateTransform];
    v11 = [v7 systolicCoordinate];
    [v11 endXValue];
    v12 = [v10 valueForCoordinate:?];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [(HKBloodPressureCategoryFactorContext *)self lastFactorDateIntervals];
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (![*(*(&v21 + 1) + 8 * i) containsDate:v12])
          {

            v18 = 0;
            goto LABEL_13;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v20.receiver = self;
  v20.super_class = HKBloodPressureCategoryFactorContext;
  v18 = [(HKBloodPressureCategoryContext *)&v20 highlightedBloodPressureCoordinateWithCoordinate:v6 originalCoordinate:v7];
LABEL_13:

  return v18;
}

@end