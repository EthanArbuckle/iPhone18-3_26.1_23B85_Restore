@interface HKOverlayRoomStackedContext
+ (id)_generateNamedDataSourceForTemplateDisplayType:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 currentTimeScope:(int64_t)a6 currentCalendar:(id)a7;
+ (id)generateCustomSeriesWithTemplateDisplayType:(id)a3 sampleType:(id)a4 applicationItems:(id)a5 currentTimeScope:(int64_t)a6;
+ (id)generateDisplayTypeForTemplateDisplayType:(id)a3 sampleType:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 currentTimeScope:(int64_t)a7 currentCalendar:(id)a8;
- (BOOL)_obsoleteDateRange:(id)a3 overlayController:(id)a4;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 overlayDisplayType:(id)a4 stackedDisplayType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 overlayDisplayType:(id)a4 stackedSampleType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9;
- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 templateDisplayType:(id)a4 sampleType:(id)a5 overlayDisplayType:(id)a6 stackedDisplayType:(id)a7 stackedTemplateDisplayType:(id)a8 stackedSampleType:(id)a9 overlayChartController:(id)a10 currentTimeScope:(int64_t)a11 currentCalendar:(id)a12 applicationItems:(id)a13 isInfoButtonHidden:(BOOL)a14;
- (HKOverlayRoomStackedContext)initWithSampleType:(id)a3 overlayDisplayType:(id)a4 stackedDisplayType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9;
- (HKOverlayRoomStackedContext)initWithSampleType:(id)a3 overlayDisplayType:(id)a4 stackedSampleType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9;
- (id)_buildContextItemWithAttributedValue:(id)a3 valueContext:(id)a4 forTimeScope:(int64_t)a5;
- (id)_canonicalUnitOverrideForDisplayType:(id)a3;
- (id)_contextItemTitleForDisplayType:(id)a3 timeScope:(int64_t)a4;
- (id)_generateDisplayTypeForTemplateDisplayType:(id)a3 sampleType:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 currentTimeScope:(int64_t)a7 currentCalendar:(id)a8;
- (id)_setupContextItemForDisplayType:(id)a3 timeScope:(int64_t)a4 valueContext:(id)a5;
- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6;
- (id)contextItemForLastUpdate;
- (void)_setAccessibiltyIdentifier:(id)a3 displayType:(id)a4;
- (void)chartPointsForChartPointType:(unint64_t)a3 dateIntervals:(id)a4 overlayChartController:(id)a5 dateIntervalMustMatchView:(BOOL)a6 timeScope:(int64_t)a7 resolution:(int64_t)a8 completion:(id)a9;
- (void)setLastUpdatedItemFromPillValue:(id)a3 timeScope:(int64_t)a4 completion:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKOverlayRoomStackedContext

- (HKOverlayRoomStackedContext)initWithSampleType:(id)a3 overlayDisplayType:(id)a4 stackedSampleType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9
{
  v15 = a3;
  v38 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v39 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = v20;
  v22 = [v19 timeScopeController];
  v23 = [v22 selectedTimeScope];

  v24 = [v19 displayTypeController];
  v25 = [v24 displayTypeForObjectType:v15];

  v35 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:v15 overlayChartController:v17 applicationItems:v19 currentTimeScope:v23 currentCalendar:v21];
  [v19 displayTypeController];
  v26 = v15;
  v27 = v36 = v15;
  [v27 displayTypeForObjectType:v16];
  v28 = v21;
  v29 = self;
  v31 = v30 = v16;

  v32 = [(HKOverlayRoomStackedContext *)v29 _generateDisplayTypeForTemplateDisplayType:v31 sampleType:v30 overlayChartController:v17 applicationItems:v19 currentTimeScope:v23 currentCalendar:v28];
  LOBYTE(v34) = a9;
  v37 = [(HKOverlayRoomStackedContext *)v29 initWithDisplayType:v35 templateDisplayType:v25 sampleType:v26 overlayDisplayType:v38 stackedDisplayType:v32 stackedTemplateDisplayType:v31 stackedSampleType:v30 overlayChartController:v17 currentTimeScope:v23 currentCalendar:v39 applicationItems:v19 isInfoButtonHidden:v34];

  return v37;
}

- (HKOverlayRoomStackedContext)initWithSampleType:(id)a3 overlayDisplayType:(id)a4 stackedDisplayType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9
{
  v15 = a3;
  v40 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v38 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = v20;
  v37 = v20;
  v22 = [v19 timeScopeController];
  v23 = [v22 selectedTimeScope];

  v24 = [v19 displayTypeController];
  v25 = [v24 displayTypeForObjectType:v15];

  v35 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:v15 overlayChartController:v17 applicationItems:v19 currentTimeScope:v23 currentCalendar:v21];
  [v19 displayTypeController];
  v27 = v26 = self;
  v28 = [v16 sampleType];
  v29 = [v27 displayTypeForObjectType:v28];
  v30 = [v16 sampleType];
  v31 = v15;
  v36 = v15;
  v32 = v30;
  LOBYTE(v34) = a9;
  v39 = [HKOverlayRoomStackedContext initWithDisplayType:v26 templateDisplayType:"initWithDisplayType:templateDisplayType:sampleType:overlayDisplayType:stackedDisplayType:stackedTemplateDisplayType:stackedSampleType:overlayChartController:currentTimeScope:currentCalendar:applicationItems:isInfoButtonHidden:" sampleType:v35 overlayDisplayType:v25 stackedDisplayType:v31 stackedTemplateDisplayType:v40 stackedSampleType:v30 overlayChartController:v17 currentTimeScope:v23 currentCalendar:v38 applicationItems:v19 isInfoButtonHidden:v34];

  return v39;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 overlayDisplayType:(id)a4 stackedDisplayType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9
{
  v14 = a3;
  v36 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v33 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v32 = v19;
  v20 = [v18 timeScopeController];
  v21 = [v20 selectedTimeScope];

  v22 = [v14 sampleType];
  v23 = [v18 displayTypeController];
  v24 = [v15 sampleType];
  v25 = [v23 displayTypeForObjectType:v24];
  v26 = [v15 sampleType];
  v27 = v14;
  v31 = v14;
  v28 = v26;
  LOBYTE(v30) = a9;
  v35 = [(HKOverlayRoomStackedContext *)self initWithDisplayType:v27 templateDisplayType:0 sampleType:v22 overlayDisplayType:v36 stackedDisplayType:v15 stackedTemplateDisplayType:v25 stackedSampleType:v26 overlayChartController:v16 currentTimeScope:v21 currentCalendar:v32 applicationItems:v18 isInfoButtonHidden:v30];

  return v35;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 overlayDisplayType:(id)a4 stackedSampleType:(id)a5 overlayChartController:(id)a6 currentCalendarOverride:(id)a7 applicationItems:(id)a8 isInfoButtonHidden:(BOOL)a9
{
  v15 = a3;
  v34 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v33 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  }

  v21 = v20;
  v22 = [v19 timeScopeController];
  v23 = [v22 selectedTimeScope];

  v24 = [v19 displayTypeController];
  v25 = [v24 displayTypeForObjectType:v16];

  v26 = [(HKOverlayRoomStackedContext *)self _generateDisplayTypeForTemplateDisplayType:v25 sampleType:v16 overlayChartController:v17 applicationItems:v19 currentTimeScope:v23 currentCalendar:v21];
  v27 = [v15 sampleType];
  v28 = self;
  v29 = v27;
  LOBYTE(v32) = a9;
  v30 = [(HKOverlayRoomStackedContext *)v28 initWithDisplayType:v15 templateDisplayType:0 sampleType:v27 overlayDisplayType:v34 stackedDisplayType:v26 stackedTemplateDisplayType:v25 stackedSampleType:v16 overlayChartController:v17 currentTimeScope:v23 currentCalendar:v21 applicationItems:v19 isInfoButtonHidden:v32];

  return v30;
}

- (HKOverlayRoomStackedContext)initWithDisplayType:(id)a3 templateDisplayType:(id)a4 sampleType:(id)a5 overlayDisplayType:(id)a6 stackedDisplayType:(id)a7 stackedTemplateDisplayType:(id)a8 stackedSampleType:(id)a9 overlayChartController:(id)a10 currentTimeScope:(int64_t)a11 currentCalendar:(id)a12 applicationItems:(id)a13 isInfoButtonHidden:(BOOL)a14
{
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  obj = a7;
  v30 = a7;
  v29 = a8;
  v28 = a9;
  v27 = a12;
  v21 = a13;
  v22 = [(HKOverlayRoomStackedContext *)self init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_applicationItems, a13);
    objc_storeStrong(&v23->_currentCalendar, a12);
    objc_storeStrong(&v23->_sampleType, a5);
    objc_storeStrong(&v23->_templateDisplayType, a4);
    objc_storeStrong(&v23->_displayType, a3);
    objc_storeStrong(&v23->_overlayDisplayType, a6);
    objc_storeStrong(&v23->_stackedSampleType, a9);
    objc_storeStrong(&v23->_stackedTemplateDisplayType, a8);
    objc_storeStrong(&v23->_stackedBaseDisplayType, obj);
    lastUpdatedItem = v23->_lastUpdatedItem;
    v23->_lastUpdatedItem = 0;

    v23->_currentTimeScope = a11;
    v23->_isInfoButtonHidden = a14;
  }

  return v23;
}

- (id)_generateDisplayTypeForTemplateDisplayType:(id)a3 sampleType:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 currentTimeScope:(int64_t)a7 currentCalendar:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [objc_opt_class() generateDisplayTypeForTemplateDisplayType:v17 sampleType:v16 overlayChartController:v15 applicationItems:v14 currentTimeScope:a7 currentCalendar:v13];

  return v18;
}

+ (id)generateDisplayTypeForTemplateDisplayType:(id)a3 sampleType:(id)a4 overlayChartController:(id)a5 applicationItems:(id)a6 currentTimeScope:(int64_t)a7 currentCalendar:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v18 hk_interactiveChartsFormatterForTimeScope:a7];
  v20 = [HKOverlayRoomStackedContext generateCustomSeriesWithTemplateDisplayType:v18 sampleType:v17 applicationItems:v15 currentTimeScope:a7];

  v21 = [a1 _generateNamedDataSourceForTemplateDisplayType:v18 overlayChartController:v16 applicationItems:v15 currentTimeScope:a7 currentCalendar:v14];

  v22 = [HKInteractiveChartDisplayType alloc];
  v23 = [v18 sampleType];
  v24 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v22, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v20, v18, v19, [v23 code]);

  v25 = [v16 displayTypeForGraphSeries:v20 namedDataSource:v21 templateDisplayType:v24 timeScope:a7 formatter:v19];

  return v25;
}

+ (id)generateCustomSeriesWithTemplateDisplayType:(id)a3 sampleType:(id)a4 applicationItems:(id)a5 currentTimeScope:(int64_t)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 displayCategory];
  v11 = [v9 unitController];
  v12 = [v9 chartDataCacheController];

  v13 = +[HKOverlayContextUtilities stackedAxisConfiguration];
  v14 = [v8 hk_standardSeriesForTimeScope:a6 displayCategory:v10 unitController:v11 dataCacheController:v12 numericAxisConfigurationOverrides:v13 chartSizeClass:1];

  v15 = [v14 yAxis];
  if (v15)
  {
    v16 = [v8 localization];
    v17 = [v16 shortenedDisplayName];
    [HKOverlayContextUtilities setStackedSeriesLegend:v14 title:v17];
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

+ (id)_generateNamedDataSourceForTemplateDisplayType:(id)a3 overlayChartController:(id)a4 applicationItems:(id)a5 currentTimeScope:(int64_t)a6 currentCalendar:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = a3;
  v13 = [v11 healthStore];
  v14 = [v11 unitController];

  v15 = [v12 hk_healthQueryChartCacheDataSourceForTimeScope:a6 healthStore:v13 unitController:v14];

  [v15 setCalendarOverride:v10];
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v12 sampleType];

  v18 = [v16 stringWithFormat:@"HKOverlayRoomStackedContext_%ld", objc_msgSend(v17, "code")];

  v19 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v15 named:v18 withContextTitleForTimeScope:0];

  return v19;
}

- (id)contextItemForLastUpdate
{
  v3 = [(HKOverlayRoomStackedContext *)self lastUpdatedItem];

  if (!v3)
  {
    v4 = [(HKOverlayRoomStackedContext *)self applicationItems];
    v5 = [v4 timeScopeController];
    v6 = [v5 selectedTimeScope];

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v9 = [(HKOverlayRoomStackedContext *)self buildContextItemWithValue:v8 unit:0 valueContext:0 forTimeScope:v6];
    [(HKOverlayRoomStackedContext *)self setLastUpdatedItem:v9];
  }

  return [(HKOverlayRoomStackedContext *)self lastUpdatedItem];
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self);
  v23[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __114__HKOverlayRoomStackedContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v18[3] = &unk_1E81B7A38;
  objc_copyWeak(v21, &location);
  v16 = v13;
  v19 = v16;
  v21[1] = a5;
  v17 = v14;
  v20 = v17;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:a5 resolution:a6 completion:v18];

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

- (void)chartPointsForChartPointType:(unint64_t)a3 dateIntervals:(id)a4 overlayChartController:(id)a5 dateIntervalMustMatchView:(BOOL)a6 timeScope:(int64_t)a7 resolution:(int64_t)a8 completion:(id)a9
{
  v12 = a4;
  v13 = a5;
  v14 = a9;
  objc_initWeak(location, self);
  if (a3 == 1)
  {
    v15 = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
    goto LABEL_5;
  }

  if (!a3)
  {
    v15 = [(HKOverlayRoomStackedContext *)self displayType];
LABEL_5:
    v16 = v15;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
  v27 = [v16 graphSeriesForTimeScope:a7];
  v17 = [(HKOverlayRoomStackedContext *)self _canonicalUnitOverrideForDisplayType:v16];
  if (!v17)
  {
    v18 = [(HKOverlayRoomStackedContext *)self applicationItems];
    v19 = [v18 unitController];
    v17 = [v19 unitForChartingDisplayType:v16];
  }

  if ([v12 count])
  {
    v20 = [v12 firstObject];
    v26 = v14;
    v21 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
    v22 = [v20 startDate];
    v23 = [v20 endDate];
    objc_copyWeak(v33, location);
    v34 = a6;
    v29 = v20;
    v30 = v13;
    v32 = v26;
    v33[1] = a3;
    v31 = v21;
    v33[2] = a7;
    v33[3] = a8;
    [v30 cachedDataForCustomGraphSeries:v27 timeScope:? resolution:? startDate:? endDate:? completion:?];

    objc_destroyWeak(v33);
    v14 = v26;
  }

  else
  {
    (*(v14 + 2))(v14, MEMORY[0x1E695E0F0], v17, 1, 0);
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

- (void)setLastUpdatedItemFromPillValue:(id)a3 timeScope:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__HKOverlayRoomStackedContext_setLastUpdatedItemFromPillValue_timeScope_completion___block_invoke;
  v12[3] = &unk_1E81B7AB0;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v16 = a4;
  v10 = v9;
  v11 = v8;
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

- (BOOL)_obsoleteDateRange:(id)a3 overlayController:(id)a4
{
  v5 = a3;
  v6 = [a4 primaryGraphViewController];
  v7 = [v6 graphView];
  v8 = [v7 effectiveVisibleRangeActive];

  v9 = [v8 startDate];
  v10 = [v8 endDate];
  v11 = [v5 startDate];
  v12 = [v5 endDate];

  v13 = [v9 compare:v11] || objc_msgSend(v10, "compare:", v12);
  return v13;
}

- (id)buildContextItemWithValue:(id)a3 unit:(id)a4 valueContext:(id)a5 forTimeScope:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
  v14 = [(HKOverlayRoomStackedContext *)self _setupContextItemForDisplayType:v13 timeScope:a6 valueContext:v10];

  [v14 setUnit:v11];
  [v14 setValue:v12];

  [(HKOverlayRoomStackedContext *)self _setAccessibiltyIdentifier:v14 displayType:v13];

  return v14;
}

- (id)_buildContextItemWithAttributedValue:(id)a3 valueContext:(id)a4 forTimeScope:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKOverlayRoomStackedContext *)self stackedBaseDisplayType];
  v11 = [(HKOverlayRoomStackedContext *)self _setupContextItemForDisplayType:v10 timeScope:a5 valueContext:v8];

  v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v9];
  v13 = *MEMORY[0x1E69DB650];
  v14 = [v11 selectedMetricColors];
  v15 = [v14 contextViewPrimaryTextColor];
  [v12 addAttribute:v13 value:v15 range:{0, objc_msgSend(v9, "length")}];

  v16 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v9 selectedText:v12];

  [v11 setAttributedLabelTextOverride:v16];
  [(HKOverlayRoomStackedContext *)self _setAccessibiltyIdentifier:v11 displayType:v10];

  return v11;
}

- (id)_setupContextItemForDisplayType:(id)a3 timeScope:(int64_t)a4 valueContext:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(HKDisplayTypeContextItem);
  v11 = [(HKSampleType *)self->_stackedSampleType identifier];
  [(HKDisplayTypeContextItem *)v10 setAnalyticsIdentifier:v11];

  v12 = [(HKOverlayRoomStackedContext *)self _contextItemTitleForDisplayType:v9 timeScope:a4];
  [(HKDisplayTypeContextItem *)v10 setTitle:v12];

  [(HKDisplayTypeContextItem *)v10 setInfoHidden:self->_isInfoButtonHidden];
  v13 = [v9 contextItemShouldUseTightSpacingBetweenValueAndUnit];

  [(HKDisplayTypeContextItem *)v10 setUseTightSpacingBetweenValueAndUnit:v13];
  v14 = [(HKOverlayRoomStackedContext *)self stackedContextButtonBackground];
  v15 = [HKUIMetricColors defaultContextViewColorsUsingColor:v14];
  [(HKDisplayTypeContextItem *)v10 setMetricColors:v15];

  v16 = [(HKOverlayRoomStackedContext *)self stackedSampleType];
  v17 = [(HKOverlayRoomStackedContext *)self stackedTemplateDisplayType];
  v18 = [HKOverlayContextUtilities stackedChartMetricColorsForSampleType:v16 templateType:v17];
  [(HKDisplayTypeContextItem *)v10 setSelectedMetricColors:v18];

  [(HKDisplayTypeContextItem *)v10 setValueContext:v8];

  return v10;
}

- (void)_setAccessibiltyIdentifier:(id)a3 displayType:(id)a4
{
  v11 = a4;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v8 = [v11 localization];
    v9 = [v8 displayName];
    v10 = [v7 hk_chartOverlayAccessibilityIdentifier:v9];
    [v5 setAccessibilityIdentifier:v10];

    v5 = v10;
  }

  else
  {
    v8 = [v11 displayTypeIdentifierString];
    v9 = [v7 hk_chartOverlayAccessibilityIdentifier:v8];
    [v5 setAccessibilityIdentifier:v9];
  }
}

- (id)_contextItemTitleForDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 behavior];
  v7 = [v6 chartsRelativeData];

  if (a4 == 6 || !v7)
  {
    v9 = [v5 localization];
    v13 = [v9 shortenedDisplayName];
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v9 localizedStringForKey:@"OVERLAY_AVERAGE_DATA_TYPE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v11 = [v5 localization];
    v12 = [v11 embeddedDisplayName];
    v13 = [v8 stringWithFormat:v10, v12];
  }

  return v13;
}

- (id)_canonicalUnitOverrideForDisplayType:(id)a3
{
  v3 = [a3 objectType];
  v4 = [v3 identifier];
  v5 = *MEMORY[0x1E696B648];

  if (v4 == v5)
  {
    v6 = [MEMORY[0x1E696C510] secondUnit];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end