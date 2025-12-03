@interface _HKSleepComparisonFactorContext
- (_HKSleepComparisonFactorContext)initWithStackedFactorDisplayType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items contextChangeDelegate:(id)delegate primarySleepDisplayType:(id)displayType sleepChartFormatter:(id)formatter;
- (void)_setContextItem:(id)item timeScope:(int64_t)scope completion:(id)completion;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _HKSleepComparisonFactorContext

- (_HKSleepComparisonFactorContext)initWithStackedFactorDisplayType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items contextChangeDelegate:(id)delegate primarySleepDisplayType:(id)displayType sleepChartFormatter:(id)formatter
{
  formatterCopy = formatter;
  displayTypeCopy = displayType;
  delegateCopy = delegate;
  itemsCopy = items;
  controllerCopy = controller;
  overrideCopy = override;
  objectType = [type objectType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = objectType;
  }

  else
  {
    v23 = 0;
  }

  v26.receiver = self;
  v26.super_class = _HKSleepComparisonFactorContext;
  v24 = [(_HKSleepComparisonContext *)&v26 initWithStackedSampleType:v23 currentCalendarOverride:overrideCopy overlayChartController:controllerCopy applicationItems:itemsCopy contextChangeDelegate:delegateCopy primarySleepDisplayType:displayTypeCopy];

  if (v24)
  {
    objc_storeStrong(&v24->_sleepChartFormatter, formatter);
  }

  return v24;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v26[0] = intervalCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __118___HKSleepComparisonFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v19[3] = &unk_1E81BACB0;
  objc_copyWeak(v24, &location);
  v16 = controllerCopy;
  v20 = v16;
  v17 = intervalCopy;
  v24[1] = scope;
  v24[2] = resolution;
  v21 = v17;
  selfCopy = self;
  v18 = completionCopy;
  v23 = v18;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:scope resolution:resolution completion:v19];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)_setContextItem:(id)item timeScope:(int64_t)scope completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v10 = [HKOverlayPillValue alloc];
  string = [itemCopy string];

  v12 = [(HKOverlayPillValue *)v10 initWithValueString:string unitString:&stru_1F42FFBE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___HKSleepComparisonFactorContext__setContextItem_timeScope_completion___block_invoke;
  v14[3] = &unk_1E81B77A0;
  v15 = completionCopy;
  v13 = completionCopy;
  [(HKOverlayRoomStackedContext *)self setLastUpdatedItemFromPillValue:v12 timeScope:scope completion:v14];
}

@end