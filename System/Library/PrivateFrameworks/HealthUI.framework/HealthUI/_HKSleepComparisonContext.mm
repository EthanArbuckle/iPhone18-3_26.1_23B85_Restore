@interface _HKSleepComparisonContext
- (BOOL)_sampleTypeShouldUseSleepQuantityDistribution:(id)distribution;
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepComparisonContext)initWithStackedSampleType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items contextChangeDelegate:(id)delegate primarySleepDisplayType:(id)displayType;
- (id)_defaultStackedInteractiveChartDisplayTypeForSampleType:(id)type overlayChartController:(id)controller applicationItems:(id)items formatterTimeScope:(int64_t)scope;
- (id)_generateSleepDistributionDisplayTypeForStackedSampleType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)stackedOverlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
@end

@implementation _HKSleepComparisonContext

- (_HKSleepComparisonContext)initWithStackedSampleType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items contextChangeDelegate:(id)delegate primarySleepDisplayType:(id)displayType
{
  delegateCopy = delegate;
  displayTypeCopy = displayType;
  itemsCopy = items;
  controllerCopy = controller;
  overrideCopy = override;
  typeCopy = type;
  if ([(_HKSleepComparisonContext *)self _sampleTypeShouldUseSleepQuantityDistribution:typeCopy])
  {
    [(_HKSleepComparisonContext *)self _generateSleepDistributionDisplayTypeForStackedSampleType:typeCopy currentCalendarOverride:overrideCopy overlayChartController:controllerCopy applicationItems:itemsCopy];
  }

  else
  {
    [(_HKSleepComparisonContext *)self _defaultStackedInteractiveChartDisplayTypeForSampleType:typeCopy overlayChartController:controllerCopy applicationItems:itemsCopy formatterTimeScope:5];
  }
  v20 = ;

  v24.receiver = self;
  v24.super_class = _HKSleepComparisonContext;
  v23 = 1;
  v21 = [(HKOverlayRoomStackedContext *)&v24 initWithDisplayType:displayTypeCopy overlayDisplayType:0 stackedDisplayType:v20 overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy isInfoButtonHidden:v23];

  if (v21)
  {
    objc_storeWeak(&v21->_contextChangeDelegate, delegateCopy);
  }

  return v21;
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(_HKSleepComparisonContext *)self contextChangeDelegate:change];
  [v6 setComparisonContextSelected:changeCopy];
}

- (void)stackedOverlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(_HKSleepComparisonContext *)self contextChangeDelegate:change];
  [v6 setComparisonContextSelected:changeCopy];
}

- (id)_generateSleepDistributionDisplayTypeForStackedSampleType:(id)type currentCalendarOverride:(id)override overlayChartController:(id)controller applicationItems:(id)items
{
  itemsCopy = items;
  controllerCopy = controller;
  typeCopy = type;
  timeScopeController = [itemsCopy timeScopeController];
  selectedTimeScope = [timeScopeController selectedTimeScope];

  displayTypeController = [itemsCopy displayTypeController];
  v14 = [displayTypeController displayTypeForObjectType:typeCopy];

  v15 = [v14 hk_interactiveChartsFormatterForTimeScope:selectedTimeScope];
  v16 = [HKOverlayRoomStackedContext generateCustomSeriesWithTemplateDisplayType:v14 sampleType:typeCopy applicationItems:itemsCopy currentTimeScope:selectedTimeScope];

  v17 = [HKQuantityDistributionDataSource alloc];
  unitPreferenceController = [controllerCopy unitPreferenceController];
  healthStore = [controllerCopy healthStore];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __151___HKSleepComparisonContext__generateSleepDistributionDisplayTypeForStackedSampleType_currentCalendarOverride_overlayChartController_applicationItems___block_invoke;
  v30[3] = &__block_descriptor_40_e48__24__0___HKQuantityDistributionData_8__HKUnit_16l;
  v30[4] = 0;
  v20 = [(HKQuantityDistributionDataSource *)v17 initWithQuantityType:typeCopy unitController:unitPreferenceController healthStore:healthStore contextStyle:6 predicate:0 options:0 baseDisplayType:v14 specificStartDate:0 specificEndDate:0 userInfoCreationBlock:v30];

  [(HKHealthQueryChartCacheDataSource *)v20 setQueryAlignment:1];
  v21 = MEMORY[0x1E696AEC0];
  code = [typeCopy code];

  v23 = [v21 stringWithFormat:@"_HKSleepComparisonContext_%ld", code];
  v24 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v20 named:v23 withContextTitleForTimeScope:0];
  v25 = [HKInteractiveChartDisplayType alloc];
  sampleType = [v14 sampleType];
  v27 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v25, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v16, v14, v15, [sampleType code]);

  v28 = [controllerCopy displayTypeForGraphSeries:v16 namedDataSource:v24 templateDisplayType:v27 timeScope:selectedTimeScope formatter:v15];

  return v28;
}

- (id)_defaultStackedInteractiveChartDisplayTypeForSampleType:(id)type overlayChartController:(id)controller applicationItems:(id)items formatterTimeScope:(int64_t)scope
{
  v32[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  itemsCopy = items;
  displayTypeController = [itemsCopy displayTypeController];
  v11 = [displayTypeController displayTypeForObjectType:typeCopy];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __144___HKSleepComparisonContext__defaultStackedInteractiveChartDisplayTypeForSampleType_overlayChartController_applicationItems_formatterTimeScope___block_invoke;
  v27 = &unk_1E81BAC60;
  v28 = v11;
  v29 = typeCopy;
  v30 = itemsCopy;
  v12 = itemsCopy;
  v13 = typeCopy;
  v14 = v11;
  v15 = _Block_copy(&v24);
  v31[0] = &unk_1F4384570;
  v16 = v15[2](v15, 6);
  v32[0] = v16;
  v31[1] = &unk_1F4384588;
  v17 = v15[2](v15, 5);
  v32[1] = v17;
  v31[2] = &unk_1F43845A0;
  v18 = v15[2](v15, 4);
  v32[2] = v18;
  v31[3] = &unk_1F43845B8;
  v19 = v15[2](v15, 3);
  v32[3] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:{4, v24, v25, v26, v27}];

  v21 = [v14 hk_interactiveChartsFormatterForTimeScope:scope];
  v22 = -[HKInteractiveChartDisplayType initWithBaseDisplayType:valueFormatter:dataTypeCode:seriesForTimeScopeMapping:]([HKInteractiveChartDisplayType alloc], "initWithBaseDisplayType:valueFormatter:dataTypeCode:seriesForTimeScopeMapping:", v14, v21, [v13 code], v20);

  return v22;
}

- (BOOL)_sampleTypeShouldUseSleepQuantityDistribution:(id)distribution
{
  distributionCopy = distribution;
  identifier = [distributionCopy identifier];
  if (identifier == *MEMORY[0x1E696BD70])
  {
    v6 = 1;
  }

  else
  {
    identifier2 = [distributionCopy identifier];
    v6 = identifier2 == *MEMORY[0x1E696BD30];
  }

  return v6;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end