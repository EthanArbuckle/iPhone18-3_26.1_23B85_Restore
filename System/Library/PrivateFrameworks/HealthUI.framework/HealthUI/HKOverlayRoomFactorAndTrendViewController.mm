@interface HKOverlayRoomFactorAndTrendViewController
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)a3 trendModel:(id)a4 factorDisplayTypes:(id)a5 displayDate:(id)a6 applicationItems:(id)a7 mode:(int64_t)a8 timeScopeRanges:(id)a9 initialTimeScope:(int64_t)a10 wrappedOverlay:(id)a11 overrideFirstWeekday:(int64_t)a12 overrideCalendar:(id)a13 additionalChartOptions:(unint64_t)a14;
- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)a3 trendModel:(id)a4 factorDisplayTypes:(id)a5 displayDate:(id)a6 applicationItems:(id)a7 mode:(int64_t)a8 timeScopeRanges:(id)a9 initialTimeScope:(int64_t)a10 wrappedOverlay:(id)a11 overrideFirstWeekday:(int64_t)a12 overrideCalendar:(id)a13 additionalChartOptions:(unint64_t)a14 activityMoveMode:(int64_t)a15 activityOptions:(unint64_t)a16;
- (id)_buildFullModeSectionContainerWithOverlayController:(id)a3 applicationItems:(id)a4;
- (id)_primarySectionForApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)_primaryTrendContextForApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
@end

@implementation HKOverlayRoomFactorAndTrendViewController

- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)a3 trendModel:(id)a4 factorDisplayTypes:(id)a5 displayDate:(id)a6 applicationItems:(id)a7 mode:(int64_t)a8 timeScopeRanges:(id)a9 initialTimeScope:(int64_t)a10 wrappedOverlay:(id)a11 overrideFirstWeekday:(int64_t)a12 overrideCalendar:(id)a13 additionalChartOptions:(unint64_t)a14
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a9;
  v24 = a11;
  v25 = a13;
  if ([v18 displayTypeIdentifier] == 100)
  {
    [HKOverlayRoomFactorAndTrendViewController initWithBaseChartDisplayType:a2 trendModel:self factorDisplayTypes:? displayDate:? applicationItems:? mode:? timeScopeRanges:? initialTimeScope:? wrappedOverlay:? overrideFirstWeekday:? overrideCalendar:? additionalChartOptions:?];
  }

  v26 = [(HKOverlayRoomFactorAndTrendViewController *)self initWithBaseChartDisplayType:v18 trendModel:v19 factorDisplayTypes:v20 displayDate:v21 applicationItems:v22 mode:a8 timeScopeRanges:v23 initialTimeScope:a10 wrappedOverlay:v24 overrideFirstWeekday:a12 overrideCalendar:v25 additionalChartOptions:a14 activityMoveMode:1 activityOptions:0];

  return v26;
}

- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)a3 trendModel:(id)a4 factorDisplayTypes:(id)a5 displayDate:(id)a6 applicationItems:(id)a7 mode:(int64_t)a8 timeScopeRanges:(id)a9 initialTimeScope:(int64_t)a10 wrappedOverlay:(id)a11 overrideFirstWeekday:(int64_t)a12 overrideCalendar:(id)a13 additionalChartOptions:(unint64_t)a14 activityMoveMode:(int64_t)a15 activityOptions:(unint64_t)a16
{
  v40 = a3;
  obj = a4;
  v22 = a4;
  v23 = a6;
  v38 = a9;
  v37 = a11;
  v24 = a13;
  v25 = a7;
  v26 = a5;
  v27 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:v22];
  v28 = v27;
  v39 = v23;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29;

  v41.receiver = self;
  v41.super_class = HKOverlayRoomFactorAndTrendViewController;
  v31 = [(HKOverlayRoomViewController *)&v41 initWithDisplayDate:v30 applicationItems:v25 factorDisplayTypes:v26 mode:a8];

  if (v31)
  {
    objc_storeStrong(&v31->_baseChartDisplayType, a3);
    objc_storeStrong(&v31->_trendModel, obj);
    v32 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:v22];
    if (v32 != 8)
    {
      a10 = v32;
    }

    v31->_startingTimeScope = a10;
    objc_storeStrong(&v31->_timeScopeRanges, a9);
    objc_storeStrong(&v31->_wrappedOverlayViewController, a11);
    -[HKOverlayRoomViewController setShouldSelectInitialOverlay:](v31, "setShouldSelectInitialOverlay:", [v22 selectTrendInitially]);
    v31->_overrideFirstWeekday = a12;
    objc_storeStrong(&v31->_overrideCalendar, a13);
    [(HKOverlayRoomViewController *)v31 setAdditionalChartOptions:a14 | 0x10000];
    v31->_activityMoveMode = a15;
    v31->_activityOptions = a16;
  }

  return v31;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  v4 = [v3 localization];
  v5 = [v4 displayName];

  return v5;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3 == 3)
  {
    v13 = [(HKOverlayRoomFactorAndTrendViewController *)self _buildFullModeSectionContainerWithOverlayController:v9 applicationItems:v8];
  }

  else if (a3 == 1)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomFactorAndTrendViewController *)self _primarySectionForApplicationItems:v8 overlayChartController:v9];
    v12 = [(HKOverlayContextSectionContainer *)v10 initWithContainerTitle:0 overlayContextSections:v11];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  wrappedOverlayViewController = self->_wrappedOverlayViewController;
  if (wrappedOverlayViewController)
  {
    v8 = a5;
    v9 = [(HKOverlayRoomViewController *)wrappedOverlayViewController createViewControllerForMode:a3 displayDate:a4 applicationItems:v8];
  }

  else
  {
    v21 = a5;
    v20 = [HKOverlayRoomFactorAndTrendViewController alloc];
    v8 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
    v19 = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
    v18 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v17 = [(HKOverlayRoomViewController *)self displayDate];
    v11 = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];
    v12 = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
    v13 = [(HKOverlayRoomFactorAndTrendViewController *)self wrappedOverlayViewController];
    v14 = [(HKOverlayRoomFactorAndTrendViewController *)self overrideFirstWeekday];
    v15 = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];
    v9 = [(HKOverlayRoomFactorAndTrendViewController *)v20 initWithBaseChartDisplayType:v8 trendModel:v19 factorDisplayTypes:v18 displayDate:v17 applicationItems:v21 mode:a3 timeScopeRanges:v11 initialTimeScope:v12 wrappedOverlay:v13 overrideFirstWeekday:v14 overrideCalendar:v15 additionalChartOptions:[(HKOverlayRoomViewController *)self additionalChartOptions] activityMoveMode:[(HKOverlayRoomFactorAndTrendViewController *)self activityMoveMode] activityOptions:[(HKOverlayRoomFactorAndTrendViewController *)self activityOptions]];
  }

  return v9;
}

- (BOOL)supportsShowAllFilters
{
  v3 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  if (v3)
  {
    v4 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return [(HKOverlayRoomViewController *)self controllerMode]!= 3 && (self->_wrappedOverlayViewController != 0 || v5);
}

- (id)createChartOverlayViewController
{
  v3 = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];

  if (v3)
  {
    v52 = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];
    if ([(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope]== 8)
    {
      v4 = 4;
    }

    else
    {
      v4 = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
    }

    v19 = [(HKOverlayRoomViewController *)self applicationItems];
    v20 = [v19 timeScopeController];
    [v20 setSelectedTimeScope:v4];

    v21 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v22 = [v21 hk_interactiveChartOptions];

    if ([(HKOverlayRoomViewController *)self shouldSelectInitialOverlay])
    {
      v23 = 663552;
    }

    else
    {
      v23 = 655360;
    }

    v41 = v23 | v22 | [(HKOverlayRoomViewController *)self additionalChartOptions];
    v39 = [HKInteractiveChartOverlayViewController alloc];
    v47 = [(HKOverlayRoomViewController *)self applicationItems];
    v51 = [v47 healthStore];
    v49 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v45 = [(HKOverlayRoomViewController *)self applicationItems];
    v37 = [v45 unitController];
    v43 = [(HKOverlayRoomViewController *)self applicationItems];
    v24 = [v43 dateCache];
    v38 = [(HKOverlayRoomViewController *)self applicationItems];
    v25 = [v38 chartDataCacheController];
    v26 = [(HKOverlayRoomViewController *)self applicationItems];
    v27 = [v26 timeScopeController];
    v28 = [(HKOverlayRoomViewController *)self applicationItems];
    v29 = [v28 sampleDateRangeController];
    v30 = [(HKOverlayRoomViewController *)self displayDate];
    v31 = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];
    v18 = [(HKInteractiveChartOverlayViewController *)v39 initWithTimeScopeRanges:v52 healthStore:v51 primaryDisplayType:v49 unitPreferenceController:v37 dateCache:v24 chartDataCacheController:v25 selectedTimeScopeController:v27 sampleTypeDateRangeController:v29 initialXValue:v30 currentCalendarOverride:v31 options:v41];

    v32 = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];

    if (!v32)
    {
      [(HKInteractiveChartViewController *)v18 setAnnotationDataSourceFirstWeekday:[(HKOverlayRoomFactorAndTrendViewController *)self overrideFirstWeekday]];
    }
  }

  else
  {
    v5 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
    v6 = [v5 isActivitySummary];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E696C678]);
      v8 = [(HKOverlayRoomViewController *)self applicationItems];
      v9 = [v8 healthStore];
      v10 = [v7 initWithHealthStore:v9];

      v11 = [HKInteractiveChartActivityController alloc];
      v53 = [(HKOverlayRoomViewController *)self applicationItems];
      v12 = [v53 healthStore];
      v50 = [(HKOverlayRoomViewController *)self applicationItems];
      v44 = [v50 unitController];
      v48 = [(HKOverlayRoomViewController *)self applicationItems];
      v40 = [v48 dateCache];
      v46 = [(HKOverlayRoomViewController *)self applicationItems];
      v13 = [v46 chartDataCacheController];
      v42 = [(HKOverlayRoomViewController *)self applicationItems];
      v14 = [v42 timeScopeController];
      v15 = [(HKOverlayRoomViewController *)self applicationItems];
      v16 = [v15 sampleDateRangeController];
      v17 = [(HKOverlayRoomViewController *)self displayDate];
      v18 = [(HKInteractiveChartActivityController *)v11 initWithHealthStore:v12 unitPreferenceController:v44 dateCache:v40 chartDataCacheController:v13 selectedTimeScopeController:v14 sampleTypeDateRangeController:v16 wheelchairUseCharacteristicCache:v10 initialXValue:v17 activityMoveMode:[(HKOverlayRoomFactorAndTrendViewController *)self activityMoveMode] activityOptions:[(HKOverlayRoomFactorAndTrendViewController *)self activityOptions] chartSharableModel:0];
    }

    else
    {
      if ([(HKOverlayRoomViewController *)self shouldSelectInitialOverlay]&& [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope]!= 8)
      {
        v33 = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
        v34 = [(HKOverlayRoomViewController *)self applicationItems];
        v35 = [v34 timeScopeController];
        [v35 setSelectedTimeScope:v33];
      }

      v54.receiver = self;
      v54.super_class = HKOverlayRoomFactorAndTrendViewController;
      v18 = [(HKOverlayRoomViewController *)&v54 createChartOverlayViewController];
    }
  }

  return v18;
}

- (id)_primarySectionForApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];

  if (v9)
  {
    v10 = [(HKOverlayRoomFactorAndTrendViewController *)self _primaryTrendContextForApplicationItems:v6 overlayChartController:v7];
    v11 = [(HKOverlayRoomViewController *)self chartController];
    [v11 setTrendAccessibilityDelegate:v10];

    [v8 addObject:v10];
  }

  v12 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v8];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_primaryTrendContextForApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKOverlayRoomTrendContext alloc];
  v9 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  v10 = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
  v11 = [(HKOverlayRoomTrendContext *)v8 initWithBaseDisplayType:v9 trendModel:v10 overlayChartController:v6 applicationItems:v7 overlayMode:[(HKOverlayRoomViewController *)self controllerMode]];

  return v11;
}

- (id)_buildFullModeSectionContainerWithOverlayController:(id)a3 applicationItems:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(HKOverlayRoomFactorAndTrendViewController *)self _primarySectionForApplicationItems:v7 overlayChartController:v8];

  [v9 addObjectsFromArray:v10];
  v11 = [(HKOverlayRoomViewController *)self buildFactorContextSectionForChartController];
  if (v11)
  {
    [v9 addObject:v11];
  }

  v12 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v9];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  if ([v20 isActivitySummary])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [v17 buildFactorContextForDisplayType:v15 factorDisplayType:v16 overlayChartController:v17 currentCalendarOverride:v18 applicationItems:v19 overlayMode:a8];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v25.receiver = self;
  v25.super_class = HKOverlayRoomFactorAndTrendViewController;
  v22 = [(HKOverlayRoomViewController *)&v25 buildFactorContextForDisplayType:v15 factorDisplayType:v16 overlayChartController:v17 currentCalendarOverride:v18 applicationItems:v19 overlayMode:a8 allowsDeselection:a9];
LABEL_6:
  v23 = v22;

  return v23;
}

- (void)initWithBaseChartDisplayType:(uint64_t)a1 trendModel:(uint64_t)a2 factorDisplayTypes:displayDate:applicationItems:mode:timeScopeRanges:initialTimeScope:wrappedOverlay:overrideFirstWeekday:overrideCalendar:additionalChartOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomFactorAndTrendViewController.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"baseChartDisplayType.displayTypeIdentifier != HKDisplayTypeIdentifierActivitySummary"}];
}

@end