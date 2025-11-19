@interface _HKSleepComparisonFactorContext
- (_HKSleepComparisonFactorContext)initWithStackedFactorDisplayType:(id)a3 currentCalendarOverride:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 contextChangeDelegate:(id)a7 primarySleepDisplayType:(id)a8 sleepChartFormatter:(id)a9;
- (void)_setContextItem:(id)a3 timeScope:(int64_t)a4 completion:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKSleepComparisonFactorContext

- (_HKSleepComparisonFactorContext)initWithStackedFactorDisplayType:(id)a3 currentCalendarOverride:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 contextChangeDelegate:(id)a7 primarySleepDisplayType:(id)a8 sleepChartFormatter:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [a3 objectType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v26.receiver = self;
  v26.super_class = _HKSleepComparisonFactorContext;
  v24 = [(_HKSleepComparisonContext *)&v26 initWithStackedSampleType:v23 currentCalendarOverride:v21 overlayChartController:v20 applicationItems:v19 contextChangeDelegate:v18 primarySleepDisplayType:v17];

  if (v24)
  {
    objc_storeStrong(&v24->_sleepChartFormatter, a9);
  }

  return v24;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self);
  v26[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v19[3] = &unk_1E81BACB0;
  objc_copyWeak(v24, &location);
  v16 = v13;
  v20 = v16;
  v17 = v12;
  v24[1] = a5;
  v24[2] = a6;
  v21 = v17;
  v22 = self;
  v18 = v14;
  v23 = v18;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:a5 resolution:a6 completion:v19];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_setContextItem:(id)a3 timeScope:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [HKOverlayPillValue alloc];
  v11 = [v9 string];

  v12 = [(HKOverlayPillValue *)v10 initWithValueString:v11 unitString:&stru_1F42FFBE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___HKSleepComparisonFactorContext__setContextItem_timeScope_completion___block_invoke;
  v14[3] = &unk_1E81B77A0;
  v15 = v8;
  v13 = v8;
  [(HKOverlayRoomStackedContext *)self setLastUpdatedItemFromPillValue:v12 timeScope:a4 completion:v14];
}

@end