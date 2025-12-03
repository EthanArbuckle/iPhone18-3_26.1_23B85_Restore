@interface HKBloodPressureCategoryFactorContext
- (HKBloodPressureCategoryFactorContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager baseDisplayType:(id)type factorDisplayType:(id)displayType categoryData:(id)data;
- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)coordinate originalCoordinate:(id)originalCoordinate;
- (id)stackedSampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKBloodPressureCategoryFactorContext

- (HKBloodPressureCategoryFactorContext)initWithMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller classificationManager:(id)manager baseDisplayType:(id)type factorDisplayType:(id)displayType categoryData:(id)data
{
  itemsCopy = items;
  controllerCopy = controller;
  displayTypeCopy = displayType;
  v26.receiver = self;
  v26.super_class = HKBloodPressureCategoryFactorContext;
  v18 = [(HKBloodPressureCategoryContext *)&v26 initWithMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy classificationManager:manager baseDisplayType:type categoryData:data];
  if (v18)
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    sampleType = [displayTypeCopy sampleType];
    displayTypeController = [itemsCopy displayTypeController];
    v22 = [displayTypeController displayTypeForObjectType:sampleType];

    timeScopeController = [itemsCopy timeScopeController];
    v24 = +[HKOverlayRoomStackedContext generateDisplayTypeForTemplateDisplayType:sampleType:overlayChartController:applicationItems:currentTimeScope:currentCalendar:](HKOverlayRoomStackedContext, "generateDisplayTypeForTemplateDisplayType:sampleType:overlayChartController:applicationItems:currentTimeScope:currentCalendar:", v22, sampleType, controllerCopy, itemsCopy, [timeScopeController selectedTimeScope], hk_gregorianCalendar);
    [(HKBloodPressureCategoryFactorContext *)v18 setStackedDisplayType:v24];
  }

  return v18;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  stackedDisplayType = [(HKBloodPressureCategoryFactorContext *)self stackedDisplayType];
  v16 = [stackedDisplayType graphSeriesForTimeScope:scope];

  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __123__HKBloodPressureCategoryFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v22[3] = &unk_1E81BA7D0;
  objc_copyWeak(v27, &location);
  v19 = intervalCopy;
  v23 = v19;
  v27[1] = scope;
  v20 = controllerCopy;
  v24 = v20;
  v27[2] = resolution;
  v21 = completionCopy;
  selfCopy = self;
  v26 = v21;
  [v20 cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:resolution startDate:startDate endDate:endDate completion:v22];

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
  stackedDisplayType = [(HKBloodPressureCategoryFactorContext *)self stackedDisplayType];
  sampleType = [stackedDisplayType sampleType];

  return sampleType;
}

- (id)highlightedBloodPressureCoordinateWithCoordinate:(id)coordinate originalCoordinate:(id)originalCoordinate
{
  v26 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  originalCoordinateCopy = originalCoordinate;
  userInfo = [coordinateCopy userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dateCoordinateTransform = [(HKBloodPressureCategoryContext *)self dateCoordinateTransform];
    systolicCoordinate = [originalCoordinateCopy systolicCoordinate];
    [systolicCoordinate endXValue];
    v12 = [dateCoordinateTransform valueForCoordinate:?];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    lastFactorDateIntervals = [(HKBloodPressureCategoryFactorContext *)self lastFactorDateIntervals];
    v14 = [lastFactorDateIntervals countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(lastFactorDateIntervals);
          }

          if (![*(*(&v21 + 1) + 8 * i) containsDate:v12])
          {

            v18 = 0;
            goto LABEL_13;
          }
        }

        v15 = [lastFactorDateIntervals countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v18 = [(HKBloodPressureCategoryContext *)&v20 highlightedBloodPressureCoordinateWithCoordinate:coordinateCopy originalCoordinate:originalCoordinateCopy];
LABEL_13:

  return v18;
}

@end