@interface HKOverlayRoomSleepDurationStackedContext
- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5 primaryDisplayType:(id)a6 uniqueIdentifier:(id)a7 firstWeekdayOverride:(id)a8 currentCalendarOverride:(id)a9 isInfoButtonHidden:(BOOL)a10;
- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5 primarySampleType:(id)a6 uniqueIdentifier:(id)a7 firstWeekdayOverride:(id)a8 currentCalendarOverride:(id)a9 isInfoButtonHidden:(BOOL)a10;
- (id)_generateNamedDataSourceWithTemplateDisplayType:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5;
- (id)_generateSleepDurationStackedDisplayTypeWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5;
- (id)_generateSleepSeriesWithTemplateDisplayType:(id)a3 applicationItems:(id)a4;
@end

@implementation HKOverlayRoomSleepDurationStackedContext

- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5 primaryDisplayType:(id)a6 uniqueIdentifier:(id)a7 firstWeekdayOverride:(id)a8 currentCalendarOverride:(id)a9 isInfoButtonHidden:(BOOL)a10
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a6;
  v20 = a4;
  v21 = a3;
  v22 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepDurationStackedDisplayTypeWithApplicationItems:v21 overlayChartController:v20 sleepChartFormatter:a5];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v16;
  v24 = v16;

  firstWeekdayOverride = self->_firstWeekdayOverride;
  self->_firstWeekdayOverride = v17;
  v26 = v17;

  v30.receiver = self;
  v30.super_class = HKOverlayRoomSleepDurationStackedContext;
  v27 = [(HKOverlayRoomStackedContext *)&v30 initWithDisplayType:v19 overlayDisplayType:0 stackedDisplayType:v22 overlayChartController:v20 currentCalendarOverride:v18 applicationItems:v21 isInfoButtonHidden:a10];

  return v27;
}

- (HKOverlayRoomSleepDurationStackedContext)initWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5 primarySampleType:(id)a6 uniqueIdentifier:(id)a7 firstWeekdayOverride:(id)a8 currentCalendarOverride:(id)a9 isInfoButtonHidden:(BOOL)a10
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a6;
  v20 = a4;
  v21 = a3;
  v22 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepDurationStackedDisplayTypeWithApplicationItems:v21 overlayChartController:v20 sleepChartFormatter:a5];
  uniqueIdentifier = self->_uniqueIdentifier;
  self->_uniqueIdentifier = v16;
  v24 = v16;

  firstWeekdayOverride = self->_firstWeekdayOverride;
  self->_firstWeekdayOverride = v17;
  v26 = v17;

  v30.receiver = self;
  v30.super_class = HKOverlayRoomSleepDurationStackedContext;
  v27 = [(HKOverlayRoomStackedContext *)&v30 initWithSampleType:v19 overlayDisplayType:0 stackedDisplayType:v22 overlayChartController:v20 currentCalendarOverride:v18 applicationItems:v21 isInfoButtonHidden:a10];

  return v27;
}

- (id)_generateSleepDurationStackedDisplayTypeWithApplicationItems:(id)a3 overlayChartController:(id)a4 sleepChartFormatter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 displayTypeController];
  v12 = [v11 displayTypeWithIdentifier:&unk_1F4383E20];

  v13 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateSleepSeriesWithTemplateDisplayType:v12 applicationItems:v10];
  v14 = [(HKOverlayRoomSleepDurationStackedContext *)self _generateNamedDataSourceWithTemplateDisplayType:v12 overlayChartController:v9 applicationItems:v10];

  v15 = [HKInteractiveChartDisplayType alloc];
  v16 = [v12 sampleType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v12, v8, [v16 code]);

  v18 = [v9 displayTypeForGraphSeries:v13 namedDataSource:v14 templateDisplayType:v17 timeScope:3 formatter:v8];

  return v18;
}

- (id)_generateSleepSeriesWithTemplateDisplayType:(id)a3 applicationItems:(id)a4
{
  v5 = a3;
  v6 = [a4 unitController];
  v7 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  v8 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:v5 unitController:v6 numericAxisConfigurationOverrides:v7 timeScope:3];

  v9 = [HKValueRange valueRangeWithMinValue:&unk_1F4383E38 maxValue:&unk_1F4383E50];
  v10 = [HKValueRange valueRangeWithMinValue:&unk_1F4383E38 maxValue:&unk_1F4383E68];
  v11 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v9 axisBoundsOverrides:0];
  [v11 setNoDataAxisBounds:v10];
  [v8 setAxisScalingRule:v11];
  v12 = [v5 localization];

  v13 = [v12 shortenedDisplayName];
  [HKOverlayContextUtilities setStackedSeriesLegend:v8 title:v13];

  return v8;
}

- (id)_generateNamedDataSourceWithTemplateDisplayType:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5
{
  v7 = MEMORY[0x1E695DEE8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 hk_gregorianCalendar];
  v11 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];

  if (v11)
  {
    v12 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
    [v10 setFirstWeekday:{objc_msgSend(v12, "integerValue")}];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(HKOverlayRoomSleepDurationStackedContext *)self uniqueIdentifier];
  v15 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
  if (v15)
  {
    v16 = [(HKOverlayRoomSleepDurationStackedContext *)self firstWeekdayOverride];
    v17 = [v16 stringValue];
    v18 = [v13 stringWithFormat:@"%@%@", v14, v17];
  }

  else
  {
    v18 = [v13 stringWithFormat:@"%@%@", v14, &stru_1F42FFBE0];
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKSleepQueryCacheIdentifier%@", v18];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKSleepQueryIdentifier%@", v18];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKOverlayRoomStackedContextSleepDuration%@", v18];
  v22 = [HKSleepChartDataSource alloc];
  v23 = [v8 healthStore];

  v24 = [(HKSleepChartDataSource *)v22 initWithHealthStore:v23 representativeDisplayType:v9 queryOptions:2 cacheIdentifier:v19 queryIdentifier:v20 calendar:v10];
  v25 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v24 named:v21 withContextTitleForTimeScope:0];

  return v25;
}

@end