@interface HKOverlayRoomStackedContext
+ (id)_generateNamedDataSourceForTemplateDisplayType:(id)type overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar;
+ (id)generateCustomSeriesWithTemplateDisplayType:(id)type sampleType:(id)sampleType applicationItems:(id)items currentTimeScope:(int64_t)scope;
+ (id)generateDisplayTypeForTemplateDisplayType:(id)type sampleType:(id)sampleType overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar;
- (BOOL)_obsoleteDateRange:(id)range overlayController:(id)controller;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type overlayDisplayType:(id)displayType stackedDisplayType:(id)stackedDisplayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type overlayDisplayType:(id)displayType stackedSampleType:(id)sampleType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type templateDisplayType:(id)displayType sampleType:(id)sampleType overlayDisplayType:(id)overlayDisplayType stackedDisplayType:(id)stackedDisplayType stackedTemplateDisplayType:(id)templateDisplayType stackedSampleType:(id)stackedSampleType overlayChartController:(id)self0 currentTimeScope:(int64_t)self1 currentCalendar:(id)self2 applicationItems:(id)self3 isInfoButtonHidden:(BOOL)self4;
- (HKOverlayRoomStackedContext)initWithSampleType:(id)type overlayDisplayType:(id)displayType stackedDisplayType:(id)stackedDisplayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden;
- (HKOverlayRoomStackedContext)initWithSampleType:(id)type overlayDisplayType:(id)displayType stackedSampleType:(id)sampleType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden;
- (id)_buildContextItemWithAttributedValue:(id)value valueContext:(id)context forTimeScope:(int64_t)scope;
- (id)_canonicalUnitOverrideForDisplayType:(id)type;
- (id)_contextItemTitleForDisplayType:(id)type timeScope:(int64_t)scope;
- (id)_generateDisplayTypeForTemplateDisplayType:(id)type sampleType:(id)sampleType overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar;
- (id)_setupContextItemForDisplayType:(id)type timeScope:(int64_t)scope valueContext:(id)context;
- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope;
- (id)contextItemForLastUpdate;
- (void)_setAccessibiltyIdentifier:(id)identifier displayType:(id)type;
- (void)chartPointsForChartPointType:(unint64_t)type dateIntervals:(id)intervals overlayChartController:(id)controller dateIntervalMustMatchView:(BOOL)view timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
- (void)setLastUpdatedItemFromPillValue:(id)value timeScope:(int64_t)scope completion:(id)completion;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKOverlayRoomStackedContext

- (HKOverlayRoomStackedContext)initWithSampleType:(id)type overlayDisplayType:(id)displayType stackedSampleType:(id)sampleType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden
{
  typeCopy = type;
  displayTypeCopy = displayType;
  sampleTypeCopy = sampleType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  v39 = overrideCopy;
  if (overrideCopy)
  {
    hk_gregorianCalendar = overrideCopy;
  }

  else
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = hk_gregorianCalendar;
  timeScopeController = [itemsCopy timeScopeController];
  selectedTimeScope = [timeScopeController selectedTimeScope];

  displayTypeController = [itemsCopy displayTypeController];
  v25 = [displayTypeController displayTypeForObjectType:typeCopy];

  v35 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:typeCopy overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:selectedTimeScope currentCalendar:v21];
  [itemsCopy displayTypeController];
  v26 = typeCopy;
  v27 = v36 = typeCopy;
  [v27 displayTypeForObjectType:sampleTypeCopy];
  v28 = v21;
  selfCopy = self;
  v31 = v30 = sampleTypeCopy;

  v32 = [(HKOverlayRoomStackedContext *)selfCopy _generateDisplayTypeForTemplateDisplayType:v31 sampleType:v30 overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:selectedTimeScope currentCalendar:v28];
  LOBYTE(v34) = hidden;
  v37 = [(HKOverlayRoomStackedContext *)selfCopy initWithDisplayType:v35 templateDisplayType:v25 sampleType:v26 overlayDisplayType:displayTypeCopy stackedDisplayType:v32 stackedTemplateDisplayType:v31 stackedSampleType:v30 overlayChartController:controllerCopy currentTimeScope:selectedTimeScope currentCalendar:v39 applicationItems:itemsCopy isInfoButtonHidden:v34];

  return v37;
}

- (HKOverlayRoomStackedContext)initWithSampleType:(id)type overlayDisplayType:(id)displayType stackedDisplayType:(id)stackedDisplayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden
{
  typeCopy = type;
  displayTypeCopy = displayType;
  stackedDisplayTypeCopy = stackedDisplayType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  v38 = overrideCopy;
  if (overrideCopy)
  {
    hk_gregorianCalendar = overrideCopy;
  }

  else
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = hk_gregorianCalendar;
  v37 = hk_gregorianCalendar;
  timeScopeController = [itemsCopy timeScopeController];
  selectedTimeScope = [timeScopeController selectedTimeScope];

  displayTypeController = [itemsCopy displayTypeController];
  v25 = [displayTypeController displayTypeForObjectType:typeCopy];

  v35 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:typeCopy overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:selectedTimeScope currentCalendar:v21];
  [itemsCopy displayTypeController];
  v27 = v26 = self;
  sampleType = [stackedDisplayTypeCopy sampleType];
  v29 = [v27 displayTypeForObjectType:sampleType];
  sampleType2 = [stackedDisplayTypeCopy sampleType];
  v31 = typeCopy;
  v36 = typeCopy;
  v32 = sampleType2;
  LOBYTE(v34) = hidden;
  v39 = [HKOverlayRoomStackedContext initWithDisplayType:v26 templateDisplayType:"initWithDisplayType:templateDisplayType:sampleType:overlayDisplayType:stackedDisplayType:stackedTemplateDisplayType:stackedSampleType:overlayChartController:currentTimeScope:currentCalendar:applicationItems:isInfoButtonHidden:" sampleType:v35 overlayDisplayType:v25 stackedDisplayType:v31 stackedTemplateDisplayType:displayTypeCopy stackedSampleType:sampleType2 overlayChartController:controllerCopy currentTimeScope:selectedTimeScope currentCalendar:v38 applicationItems:itemsCopy isInfoButtonHidden:v34];

  return v39;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type overlayDisplayType:(id)displayType stackedDisplayType:(id)stackedDisplayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden
{
  typeCopy = type;
  displayTypeCopy = displayType;
  stackedDisplayTypeCopy = stackedDisplayType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  v33 = overrideCopy;
  if (overrideCopy)
  {
    hk_gregorianCalendar = overrideCopy;
  }

  else
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v32 = hk_gregorianCalendar;
  timeScopeController = [itemsCopy timeScopeController];
  selectedTimeScope = [timeScopeController selectedTimeScope];

  sampleType = [typeCopy sampleType];
  displayTypeController = [itemsCopy displayTypeController];
  sampleType2 = [stackedDisplayTypeCopy sampleType];
  v25 = [displayTypeController displayTypeForObjectType:sampleType2];
  sampleType3 = [stackedDisplayTypeCopy sampleType];
  v27 = typeCopy;
  v31 = typeCopy;
  v28 = sampleType3;
  LOBYTE(v30) = hidden;
  v35 = [(HKOverlayRoomStackedContext *)self initWithDisplayType:v27 templateDisplayType:0 sampleType:sampleType overlayDisplayType:displayTypeCopy stackedDisplayType:stackedDisplayTypeCopy stackedTemplateDisplayType:v25 stackedSampleType:sampleType3 overlayChartController:controllerCopy currentTimeScope:selectedTimeScope currentCalendar:v32 applicationItems:itemsCopy isInfoButtonHidden:v30];

  return v35;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type overlayDisplayType:(id)displayType stackedSampleType:(id)sampleType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items isInfoButtonHidden:(BOOL)hidden
{
  typeCopy = type;
  displayTypeCopy = displayType;
  sampleTypeCopy = sampleType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  v33 = overrideCopy;
  if (overrideCopy)
  {
    hk_gregorianCalendar = overrideCopy;
  }

  else
  {
    hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = hk_gregorianCalendar;
  timeScopeController = [itemsCopy timeScopeController];
  selectedTimeScope = [timeScopeController selectedTimeScope];

  displayTypeController = [itemsCopy displayTypeController];
  v25 = [displayTypeController displayTypeForObjectType:sampleTypeCopy];

  v26 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:sampleTypeCopy overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:selectedTimeScope currentCalendar:v21];
  sampleType = [typeCopy sampleType];
  selfCopy = self;
  v29 = sampleType;
  LOBYTE(v32) = hidden;
  v30 = [(HKOverlayRoomStackedContext *)selfCopy initWithDisplayType:typeCopy templateDisplayType:0 sampleType:sampleType overlayDisplayType:displayTypeCopy stackedDisplayType:v26 stackedTemplateDisplayType:v25 stackedSampleType:sampleTypeCopy overlayChartController:controllerCopy currentTimeScope:selectedTimeScope currentCalendar:v21 applicationItems:itemsCopy isInfoButtonHidden:v32];

  return v30;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)type templateDisplayType:(id)displayType sampleType:(id)sampleType overlayDisplayType:(id)overlayDisplayType stackedDisplayType:(id)stackedDisplayType stackedTemplateDisplayType:(id)templateDisplayType stackedSampleType:(id)stackedSampleType overlayChartController:(id)self0 currentTimeScope:(int64_t)self1 currentCalendar:(id)self2 applicationItems:(id)self3 isInfoButtonHidden:(BOOL)self4
{
  typeCopy = type;
  displayTypeCopy = displayType;
  sampleTypeCopy = sampleType;
  overlayDisplayTypeCopy = overlayDisplayType;
  obj = stackedDisplayType;
  stackedDisplayTypeCopy = stackedDisplayType;
  templateDisplayTypeCopy = templateDisplayType;
  stackedSampleTypeCopy = stackedSampleType;
  calendarCopy = calendar;
  itemsCopy = items;
  v22 = [(HKOverlayRoomStackedContext *)self init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_applicationItems, items);
    objc_storeStrong(&v23->_currentCalendar, calendar);
    objc_storeStrong(&v23->_sampleType, sampleType);
    objc_storeStrong(&v23->_templateDisplayType, displayType);
    objc_storeStrong(&v23->_displayType, type);
    objc_storeStrong(&v23->_overlayDisplayType, overlayDisplayType);
    objc_storeStrong(&v23->_stackedSampleType, stackedSampleType);
    objc_storeStrong(&v23->_stackedTemplateDisplayType, templateDisplayType);
    objc_storeStrong(&v23->_stackedBaseDisplayType, obj);
    lastUpdatedItem = v23->_lastUpdatedItem;
    v23->_lastUpdatedItem = 0;

    v23->_currentTimeScope = scope;
    v23->_isInfoButtonHidden = hidden;
  }

  return v23;
}

- (id)_generateDisplayTypeForTemplateDisplayType:(id)type sampleType:(id)sampleType overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar
{
  calendarCopy = calendar;
  itemsCopy = items;
  controllerCopy = controller;
  sampleTypeCopy = sampleType;
  typeCopy = type;
  v18 = [objc_opt_class() generateDisplayTypeForTemplateDisplayType:typeCopy sampleType:sampleTypeCopy overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:scope currentCalendar:calendarCopy];

  return v18;
}

+ (id)generateDisplayTypeForTemplateDisplayType:(id)type sampleType:(id)sampleType overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar
{
  calendarCopy = calendar;
  itemsCopy = items;
  controllerCopy = controller;
  sampleTypeCopy = sampleType;
  typeCopy = type;
  v19 = [typeCopy hk_interactiveChartsFormatterForTimeScope:scope];
  v20 = [HKOverlayRoomStackedContext generateCustomSeriesWithTemplateDisplayType:typeCopy sampleType:sampleTypeCopy applicationItems:itemsCopy currentTimeScope:scope];

  v21 = [self _generateNamedDataSourceForTemplateDisplayType:typeCopy overlayChartController:controllerCopy applicationItems:itemsCopy currentTimeScope:scope currentCalendar:calendarCopy];

  v22 = [HKInteractiveChartDisplayType alloc];
  sampleType = [typeCopy sampleType];
  v24 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v22, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v20, typeCopy, v19, [sampleType code]);

  v25 = [controllerCopy displayTypeForGraphSeries:v20 namedDataSource:v21 templateDisplayType:v24 timeScope:scope formatter:v19];

  return v25;
}

+ (id)generateCustomSeriesWithTemplateDisplayType:(id)type sampleType:(id)sampleType applicationItems:(id)items currentTimeScope:(int64_t)scope
{
  typeCopy = type;
  itemsCopy = items;
  displayCategory = [typeCopy displayCategory];
  unitController = [itemsCopy unitController];
  chartDataCacheController = [itemsCopy chartDataCacheController];

  v13 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  v14 = [typeCopy hk_standardSeriesForTimeScope:scope displayCategory:displayCategory unitController:unitController dataCacheController:chartDataCacheController numericAxisConfigurationOverrides:v13 chartSizeClass:1];

  yAxis = [v14 yAxis];
  if (yAxis)
  {
    localization = [typeCopy localization];
    shortenedDisplayName = [localization shortenedDisplayName];
    [HKOverlayContextUtilities setStackedSeriesLegend:v14 title:shortenedDisplayName];
  }

  else
  {
    _HKInitializeLogging();
    v18 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [HKOverlayRoomStackedContext generateCustomSeriesWithTemplateDisplayType:v18 sampleType:? applicationItems:? currentTimeScope:?];
    }
  }

  return v14;
}

+ (id)_generateNamedDataSourceForTemplateDisplayType:(id)type overlayChartController:(id)controller applicationItems:(id)items currentTimeScope:(int64_t)scope currentCalendar:(id)calendar
{
  calendarCopy = calendar;
  itemsCopy = items;
  typeCopy = type;
  healthStore = [itemsCopy healthStore];
  unitController = [itemsCopy unitController];

  v15 = [typeCopy hk_healthQueryChartCacheDataSourceForTimeScope:scope healthStore:healthStore unitController:unitController];

  [v15 setCalendarOverride:calendarCopy];
  v16 = MEMORY[0x1E696AEC0];
  sampleType = [typeCopy sampleType];

  v18 = [v16 stringWithFormat:@"HKOverlayRoomStackedContext_%ld", objc_msgSend(sampleType, "code")];

  v19 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v15 named:v18 withContextTitleForTimeScope:0];

  return v19;
}

- (id)contextItemForLastUpdate
{
  lastUpdatedItem = [(HKOverlayRoomStackedContext *)self lastUpdatedItem];

  if (!lastUpdatedItem)
  {
    applicationItems = [(HKOverlayRoomStackedContext *)self applicationItems];
    timeScopeController = [applicationItems timeScopeController];
    selectedTimeScope = [timeScopeController selectedTimeScope];

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [(HKOverlayRoomStackedContext *)self buildContextItemWithValue:v8 unit:0 valueContext:0 forTimeScope:selectedTimeScope];
    [(HKOverlayRoomStackedContext *)self setLastUpdatedItem:v9];
  }

  return [(HKOverlayRoomStackedContext *)self lastUpdatedItem];
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v23[0] = intervalCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __114__HKOverlayRoomStackedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v18[3] = &unk_1E81B7A38;
  objc_copyWeak(v21, &location);
  v16 = controllerCopy;
  v19 = v16;
  v21[1] = scope;
  v17 = completionCopy;
  v20 = v17;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:scope resolution:resolution completion:v18];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __114__HKOverlayRoomStackedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = WeakRetained;
  if (a4)
  {
    v14 = [WeakRetained stackedBaseDisplayType];
    v15 = [HKOverlayPillValueProvidingFactory overlayPillValueProviderForDisplayType:v14 selectedRangeFormatter:0 interfaceLayout:[HKOverlayPillValueProvidingFactory interfaceLayoutForController:*(a1 + 32)]];

    v16 = [v13 stackedBaseDisplayType];
    v17 = *(a1 + 56);
    v18 = [v13 applicationItems];
    v19 = [v18 unitController];
    v20 = [v15 valueFromChartPoints:v9 unit:v10 displayType:v16 timeScope:v17 unitPreferenceController:v19];

    v21 = *(a1 + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __114__HKOverlayRoomStackedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
    v22[3] = &unk_1E81B77A0;
    v23 = *(a1 + 40);
    [v13 setLastUpdatedItemFromPillValue:v20 timeScope:v21 completion:v22];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)chartPointsForChartPointType:(unint64_t)type dateIntervals:(id)intervals overlayChartController:(id)controller dateIntervalMustMatchView:(BOOL)view timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalsCopy = intervals;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(location, self);
  if (type == 1)
  {
    stackedBaseDisplayType = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
    goto LABEL_5;
  }

  if (!type)
  {
    stackedBaseDisplayType = [(HKOverlayRoomStackedContext *)self displayType];
LABEL_5:
    v16 = stackedBaseDisplayType;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
  v27 = [v16 graphSeriesForTimeScope:scope];
  v17 = [(HKOverlayRoomStackedContext *)self _canonicalUnitOverrideForDisplayType:v16];
  if (!v17)
  {
    applicationItems = [(HKOverlayRoomStackedContext *)self applicationItems];
    unitController = [applicationItems unitController];
    v17 = [unitController unitForChartingDisplayType:v16];
  }

  if ([intervalsCopy count])
  {
    firstObject = [intervalsCopy firstObject];
    v26 = completionCopy;
    v21 = [intervalsCopy subarrayWithRange:{1, objc_msgSend(intervalsCopy, "count") - 1}];
    startDate = [firstObject startDate];
    endDate = [firstObject endDate];
    objc_copyWeak(v33, location);
    viewCopy = view;
    v29 = firstObject;
    v30 = controllerCopy;
    v32 = v26;
    v33[1] = type;
    v31 = v21;
    v33[2] = scope;
    v33[3] = resolution;
    [v30 cachedDataForCustomGraphSeries:v27 timeScope:? resolution:? startDate:? endDate:? completion:?];

    objc_destroyWeak(v33);
    completionCopy = v26;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], v17, 1, 0);
  }

  objc_destroyWeak(location);
}

void __155__HKOverlayRoomStackedContext_chartPointsForChartPointType_dateIntervals_overlayChartController_dateIntervalMustMatchView_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v10 = WeakRetained;
  if (!a3)
  {
    v23 = *(*(a1 + 64) + 16);
LABEL_7:
    v23();
    goto LABEL_8;
  }

  if (*(a1 + 104) == 1)
  {
    if ([WeakRetained _obsoleteDateRange:*(a1 + 32) overlayController:*(a1 + 40)])
    {
      v11 = [*(a1 + 48) lastUpdatedItem];
      v12 = [v11 value];
      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v14 = [v13 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v15 = [v12 isEqualToString:v14];

      if ((v15 & 1) == 0)
      {
        v23 = *(*(a1 + 64) + 16);
        goto LABEL_7;
      }
    }
  }

  v16 = *(a1 + 48);
  v24 = *(a1 + 40);
  v25 = *(a1 + 56);
  v17 = *(a1 + 104);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v20 = v8;
  v21 = *(a1 + 96);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __155__HKOverlayRoomStackedContext_chartPointsForChartPointType_dateIntervals_overlayChartController_dateIntervalMustMatchView_timeScope_resolution_completion___block_invoke_2;
  v26[3] = &unk_1E81B7A60;
  v27 = v7;
  v28 = *(a1 + 64);
  v22 = v21;
  v8 = v20;
  [v16 chartPointsForChartPointType:v18 dateIntervals:v25 overlayChartController:v24 dateIntervalMustMatchView:v17 timeScope:v19 resolution:v22 completion:v26];

LABEL_8:
}

void __155__HKOverlayRoomStackedContext_chartPointsForChartPointType_dateIntervals_overlayChartController_dateIntervalMustMatchView_timeScope_resolution_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = a3;
  if (a4)
  {
    v7 = [*(a1 + 32) arrayByAddingObjectsFromArray:a2];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setLastUpdatedItemFromPillValue:(id)value timeScope:(int64_t)scope completion:(id)completion
{
  valueCopy = value;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__HKOverlayRoomStackedContext_setLastUpdatedItemFromPillValue_timeScope_completion___block_invoke;
  v12[3] = &unk_1E81B7AB0;
  v13 = valueCopy;
  selfCopy = self;
  v15 = completionCopy;
  scopeCopy = scope;
  v10 = completionCopy;
  v11 = valueCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __84__HKOverlayRoomStackedContext_setLastUpdatedItemFromPillValue_timeScope_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueString];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) valueString];
    v5 = [*(a1 + 32) unitString];
    v6 = [v3 buildContextItemWithValue:v4 unit:v5 valueContext:0 forTimeScope:*(a1 + 56)];
    [*(a1 + 40) setLastUpdatedItem:v6];

LABEL_5:
    return (*(*(a1 + 48) + 16))();
  }

  v7 = [*(a1 + 32) attributedValue];

  if (v7)
  {
    v8 = *(a1 + 40);
    v4 = [*(a1 + 32) attributedValue];
    v9 = [v8 _buildContextItemWithAttributedValue:v4 valueContext:0 forTimeScope:*(a1 + 56)];
    [*(a1 + 40) setLastUpdatedItem:v9];

    goto LABEL_5;
  }

  _HKInitializeLogging();
  v11 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __84__HKOverlayRoomStackedContext_setLastUpdatedItemFromPillValue_timeScope_completion___block_invoke_cold_1(v11);
  }

  return (*(*(a1 + 48) + 16))();
}

- (BOOL)_obsoleteDateRange:(id)range overlayController:(id)controller
{
  rangeCopy = range;
  primaryGraphViewController = [controller primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];

  startDate = [effectiveVisibleRangeActive startDate];
  endDate = [effectiveVisibleRangeActive endDate];
  startDate2 = [rangeCopy startDate];
  endDate2 = [rangeCopy endDate];

  v13 = [startDate compare:startDate2] || objc_msgSend(endDate, "compare:", endDate2);
  return v13;
}

- (id)buildContextItemWithValue:(id)value unit:(id)unit valueContext:(id)context forTimeScope:(int64_t)scope
{
  contextCopy = context;
  unitCopy = unit;
  valueCopy = value;
  stackedBaseDisplayType = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
  v14 = [(HKOverlayRoomStackedContext *)self _setupContextItemForDisplayType:stackedBaseDisplayType timeScope:scope valueContext:contextCopy];

  [v14 setUnit:unitCopy];
  [v14 setValue:valueCopy];

  [(HKOverlayRoomStackedContext *)self _setAccessibiltyIdentifier:v14 displayType:stackedBaseDisplayType];

  return v14;
}

- (id)_buildContextItemWithAttributedValue:(id)value valueContext:(id)context forTimeScope:(int64_t)scope
{
  contextCopy = context;
  valueCopy = value;
  stackedBaseDisplayType = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
  v11 = [(HKOverlayRoomStackedContext *)self _setupContextItemForDisplayType:stackedBaseDisplayType timeScope:scope valueContext:contextCopy];

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:valueCopy];
  v13 = *MEMORY[0x1E69DB650];
  selectedMetricColors = [v11 selectedMetricColors];
  contextViewPrimaryTextColor = [selectedMetricColors contextViewPrimaryTextColor];
  [v12 addAttribute:v13 value:contextViewPrimaryTextColor range:{0, objc_msgSend(valueCopy, "length")}];

  v16 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:valueCopy selectedText:v12];

  [v11 setAttributedLabelTextOverride:v16];
  [(HKOverlayRoomStackedContext *)self _setAccessibiltyIdentifier:v11 displayType:stackedBaseDisplayType];

  return v11;
}

- (id)_setupContextItemForDisplayType:(id)type timeScope:(int64_t)scope valueContext:(id)context
{
  contextCopy = context;
  typeCopy = type;
  v10 = objc_alloc_init(HKDisplayTypeContextItem);
  identifier = [(HKSampleType *)self->_stackedSampleType identifier];
  [(HKDisplayTypeContextItem *)v10 setAnalyticsIdentifier:identifier];

  v12 = [(HKOverlayRoomStackedContext *)self _contextItemTitleForDisplayType:typeCopy timeScope:scope];
  [(HKDisplayTypeContextItem *)v10 setTitle:v12];

  [(HKDisplayTypeContextItem *)v10 setInfoHidden:self->_isInfoButtonHidden];
  contextItemShouldUseTightSpacingBetweenValueAndUnit = [typeCopy contextItemShouldUseTightSpacingBetweenValueAndUnit];

  [(HKDisplayTypeContextItem *)v10 setUseTightSpacingBetweenValueAndUnit:contextItemShouldUseTightSpacingBetweenValueAndUnit];
  stackedContextButtonBackground = [(HKOverlayRoomStackedContext *)self stackedContextButtonBackground];
  v15 = [HKUIMetricColors defaultContextViewColorsUsingColor:stackedContextButtonBackground];
  [(HKDisplayTypeContextItem *)v10 setMetricColors:v15];

  stackedSampleType = [(HKOverlayRoomStackedContext *)self stackedSampleType];
  stackedTemplateDisplayType = [(HKOverlayRoomStackedContext *)self stackedTemplateDisplayType];
  v18 = [HKOverlayContextUtilities stackedChartMetricColorsForSampleType:stackedSampleType templateType:stackedTemplateDisplayType];
  [(HKDisplayTypeContextItem *)v10 setSelectedMetricColors:v18];

  [(HKDisplayTypeContextItem *)v10 setValueContext:contextCopy];

  return v10;
}

- (void)_setAccessibiltyIdentifier:(id)identifier displayType:(id)type
{
  typeCopy = type;
  identifierCopy = identifier;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    localization = [typeCopy localization];
    displayName = [localization displayName];
    v10 = [v7 hk_chartOverlayAccessibilityIdentifier:displayName];
    [identifierCopy setAccessibilityIdentifier:v10];

    identifierCopy = v10;
  }

  else
  {
    localization = [typeCopy displayTypeIdentifierString];
    displayName = [v7 hk_chartOverlayAccessibilityIdentifier:localization];
    [identifierCopy setAccessibilityIdentifier:displayName];
  }
}

- (id)_contextItemTitleForDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  behavior = [typeCopy behavior];
  chartsRelativeData = [behavior chartsRelativeData];

  if (scope == 6 || !chartsRelativeData)
  {
    localization = [typeCopy localization];
    shortenedDisplayName = [localization shortenedDisplayName];
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    localization = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [localization localizedStringForKey:@"OVERLAY_AVERAGE_DATA_TYPE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    localization2 = [typeCopy localization];
    embeddedDisplayName = [localization2 embeddedDisplayName];
    shortenedDisplayName = [v8 stringWithFormat:v10, embeddedDisplayName];
  }

  return shortenedDisplayName;
}

- (id)_canonicalUnitOverrideForDisplayType:(id)type
{
  objectType = [type objectType];
  identifier = [objectType identifier];
  v5 = *MEMORY[0x1E696B648];

  if (identifier == v5)
  {
    secondUnit = [MEMORY[0x1E696C510] secondUnit];
  }

  else
  {
    secondUnit = 0;
  }

  return secondUnit;
}

@end