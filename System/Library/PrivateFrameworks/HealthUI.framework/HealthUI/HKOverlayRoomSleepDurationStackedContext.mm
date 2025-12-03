@interface HKOverlayRoomSleepDurationStackedContext
- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter primaryDisplayType:(id)type uniqueIdentifier:(id)identifier firstWeekdayOverride:(id)override currentCalendarOverride:(id)calendarOverride isInfoButtonHidden:(BOOL)self0;
- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter primarySampleType:(id)type uniqueIdentifier:(id)identifier firstWeekdayOverride:(id)override currentCalendarOverride:(id)calendarOverride isInfoButtonHidden:(BOOL)self0;
- (id)_generateNamedDataSourceWithTemplateDisplayType:(id)type overlayChartController:(id)controller applicationItems:(id)items;
- (id)_generateSleepDurationStackedDisplayTypeWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter;
- (id)_generateSleepSeriesWithTemplateDisplayType:(id)type applicationItems:(id)items;
@end

@implementation HKOverlayRoomSleepDurationStackedContext

- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter primaryDisplayType:(id)type uniqueIdentifier:(id)identifier firstWeekdayOverride:(id)override currentCalendarOverride:(id)calendarOverride isInfoButtonHidden:(BOOL)self0
{
  identifierCopy = identifier;
  overrideCopy = override;
  calendarOverrideCopy = calendarOverride;
  typeCopy = type;
  controllerCopy = controller;
  itemsCopy = items;
  v22 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepDurationStackedDisplayTypeWithApplicationItems:itemsCopy overlayChartController:controllerCopy sleepChartFormatter:formatter];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = identifierCopy;
  v24 = identifierCopy;

  firstWeekdayOverride = self->_firstWeekdayOverride;
  self->_firstWeekdayOverride = overrideCopy;
  v26 = overrideCopy;

  v30.receiver = self;
  v30.super_class = HKOverlayRoomSleepDurationStackedContext;
  v27 = [(HKOverlayRoomStackedContext *)&v30 initWithDisplayType:typeCopy overlayDisplayType:0 stackedDisplayType:v22 overlayChartController:controllerCopy currentCalendarOverride:calendarOverrideCopy applicationItems:itemsCopy isInfoButtonHidden:hidden];

  return v27;
}

- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter primarySampleType:(id)type uniqueIdentifier:(id)identifier firstWeekdayOverride:(id)override currentCalendarOverride:(id)calendarOverride isInfoButtonHidden:(BOOL)self0
{
  identifierCopy = identifier;
  overrideCopy = override;
  calendarOverrideCopy = calendarOverride;
  typeCopy = type;
  controllerCopy = controller;
  itemsCopy = items;
  v22 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepDurationStackedDisplayTypeWithApplicationItems:itemsCopy overlayChartController:controllerCopy sleepChartFormatter:formatter];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = identifierCopy;
  v24 = identifierCopy;

  firstWeekdayOverride = self->_firstWeekdayOverride;
  self->_firstWeekdayOverride = overrideCopy;
  v26 = overrideCopy;

  v30.receiver = self;
  v30.super_class = HKOverlayRoomSleepDurationStackedContext;
  v27 = [(HKOverlayRoomStackedContext *)&v30 initWithSampleType:typeCopy overlayDisplayType:0 stackedDisplayType:v22 overlayChartController:controllerCopy currentCalendarOverride:calendarOverrideCopy applicationItems:itemsCopy isInfoButtonHidden:hidden];

  return v27;
}

- (id)_generateSleepDurationStackedDisplayTypeWithApplicationItems:(id)items overlayChartController:(id)controller sleepChartFormatter:(id)formatter
{
  formatterCopy = formatter;
  controllerCopy = controller;
  itemsCopy = items;
  displayTypeController = [itemsCopy displayTypeController];
  v12 = [displayTypeController displayTypeWithIdentifier:&unk_1F4383E20];

  v13 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepSeriesWithTemplateDisplayType:v12 applicationItems:itemsCopy];
  v14 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateNamedDataSourceWithTemplateDisplayType:v12 overlayChartController:controllerCopy applicationItems:itemsCopy];

  v15 = [HKInteractiveChartDisplayType alloc];
  sampleType = [v12 sampleType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v12, formatterCopy, [sampleType code]);

  v18 = [controllerCopy displayTypeForGraphSeries:v13 namedDataSource:v14 templateDisplayType:v17 timeScope:3 formatter:formatterCopy];

  return v18;
}

- (id)_generateSleepSeriesWithTemplateDisplayType:(id)type applicationItems:(id)items
{
  typeCopy = type;
  unitController = [items unitController];
  v7 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  v8 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:typeCopy unitController:unitController numericAxisConfigurationOverrides:v7 timeScope:3];

  v9 = [HKValueRange valueRangeWithMinValue:&unk_1F4383E38 maxValue:&unk_1F4383E50];
  v10 = [HKValueRange valueRangeWithMinValue:&unk_1F4383E38 maxValue:&unk_1F4383E68];
  v11 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v9 axisBoundsOverrides:0];
  [v11 setNoDataAxisBounds:v10];
  [v8 setAxisScalingRule:v11];
  localization = [typeCopy localization];

  shortenedDisplayName = [localization shortenedDisplayName];
  [HKOverlayContextUtilities setStackedSeriesLegend:v8 title:shortenedDisplayName];

  return v8;
}

- (id)_generateNamedDataSourceWithTemplateDisplayType:(id)type overlayChartController:(id)controller applicationItems:(id)items
{
  v7 = MEMORY[0x1E695DEE8];
  itemsCopy = items;
  typeCopy = type;
  hk_gregorianCalendar = [v7 hk_gregorianCalendar];
  firstWeekdayOverride = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];

  if (firstWeekdayOverride)
  {
    firstWeekdayOverride2 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
    [hk_gregorianCalendar setFirstWeekday:{objc_msgSend(firstWeekdayOverride2, "integerValue")}];
  }

  v13 = MEMORY[0x1E696AEC0];
  uniqueIdentifier = [(HKOverlayRoomSleepDurationStackedContext *)self uniqueIdentifier];
  firstWeekdayOverride3 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
  if (firstWeekdayOverride3)
  {
    firstWeekdayOverride4 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
    stringValue = [firstWeekdayOverride4 stringValue];
    v18 = [v13 stringWithFormat:@"%@%@", uniqueIdentifier, stringValue];
  }

  else
  {
    v18 = [v13 stringWithFormat:@"%@%@", uniqueIdentifier, &stru_1F42FFBE0];
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKSleepQueryCacheIdentifier%@", v18];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKSleepQueryIdentifier%@", v18];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKOverlayRoomStackedContextSleepDuration%@", v18];
  v22 = [HKSleepChartDataSource alloc];
  healthStore = [itemsCopy healthStore];

  v24 = [(HKSleepChartDataSource *)v22 initWithHealthStore:healthStore representativeDisplayType:typeCopy queryOptions:2 cacheIdentifier:v19 queryIdentifier:v20 calendar:hk_gregorianCalendar];
  v25 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v24 named:v21 withContextTitleForTimeScope:0];

  return v25;
}

@end