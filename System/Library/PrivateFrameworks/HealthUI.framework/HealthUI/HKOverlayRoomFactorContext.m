@interface HKOverlayRoomFactorContext
+ (double)_distanceBetween:(id)a3 otherDate:(id)a4;
+ (id)_alignDate:(id)a3 timeScope:(int64_t)a4 alignment:(int64_t)a5 calendar:(id)a6;
+ (id)_currentGraphView:(id)a3;
+ (id)_currentVisibleDateRange:(id)a3;
+ (id)_dateIntervalToValueRange:(id)a3;
+ (id)_leadingPredicateForRange:(id)a3;
+ (id)_leadingSortDescriptors;
+ (id)_trailingPredicateForRange:(id)a3;
+ (id)_trailingSortDescriptors;
+ (id)factorDateIntervalsWithChartPoints:(id)a3 dateInterval:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6 intersection:(BOOL)a7;
+ (id)factorStackHeight;
- (HKOverlayRoomFactorContext)initWithPrimaryDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9;
- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9;
- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)a3 interactiveChartFactorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8;
- (id)_findFirstGraphSeries:(id)a3;
- (id)stackedContextButtonBackground;
- (id)stackedHeight;
- (void)_toggleSeriesLegend:(BOOL)a3 chartController:(id)a4;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKOverlayRoomFactorContext

+ (id)factorStackHeight
{
  v2 = [[HKInteractiveChartStackHeight alloc] initWithKind:1 heightValue:50.0];

  return v2;
}

- (HKOverlayRoomFactorContext)initWithPrimaryDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = [v17 healthStore];
  v21 = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:v15 factorDisplayType:v16 healthStore:v20];

  v22 = [v16 objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryDisplayType:a2 factorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:? allowsDeselection:?];
  }

  v24 = [v15 sampleType];
  v25 = [v16 sampleType];
  v30.receiver = self;
  v30.super_class = HKOverlayRoomFactorContext;
  v26 = [(HKOverlayRoomStackedContext *)&v30 initWithSampleType:v24 overlayDisplayType:0 stackedSampleType:v25 overlayChartController:v19 currentCalendarOverride:v18 applicationItems:v17 isInfoButtonHidden:!v21];

  if (v26)
  {
    v26->_overlayMode = a8;
    v26->_directPrimaryDisplayType = 0;
    preservedLegendEntries = v26->_preservedLegendEntries;
    v26->_preservedLegendEntries = 0;

    v26->_allowsDeselection = a9;
  }

  return v26;
}

- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8 allowsDeselection:(BOOL)a9
{
  v15 = a4;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a3;
  v20 = [v19 baseDisplayType];
  v21 = [v16 healthStore];
  v22 = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:v20 factorDisplayType:v15 healthStore:v21];

  v23 = [v15 objectType];
  objc_opt_class();
  LOBYTE(v20) = objc_opt_isKindOfClass();

  if ((v20 & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryInteractiveChartDisplayType:a2 factorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:? allowsDeselection:?];
  }

  v24 = [v15 sampleType];
  v29.receiver = self;
  v29.super_class = HKOverlayRoomFactorContext;
  v25 = [(HKOverlayRoomStackedContext *)&v29 initWithDisplayType:v19 overlayDisplayType:0 stackedSampleType:v24 overlayChartController:v18 currentCalendarOverride:v17 applicationItems:v16 isInfoButtonHidden:!v22];

  if (v25)
  {
    v25->_overlayMode = a8;
    v25->_directPrimaryDisplayType = 1;
    preservedLegendEntries = v25->_preservedLegendEntries;
    v25->_preservedLegendEntries = 0;

    v25->_allowsDeselection = a9;
  }

  return v25;
}

- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)a3 interactiveChartFactorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [v16 objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryInteractiveChartDisplayType:a2 interactiveChartFactorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:?];
  }

  v26.receiver = self;
  v26.super_class = HKOverlayRoomFactorContext;
  v22 = [(HKOverlayRoomStackedContext *)&v26 initWithDisplayType:v15 overlayDisplayType:0 stackedDisplayType:v16 overlayChartController:v17 currentCalendarOverride:v18 applicationItems:v19 isInfoButtonHidden:1];
  v23 = v22;
  if (v22)
  {
    v22->_overlayMode = a8;
    v22->_directPrimaryDisplayType = 1;
    preservedLegendEntries = v22->_preservedLegendEntries;
    v22->_preservedLegendEntries = 0;

    v23->_allowsDeselection = 1;
  }

  return v23;
}

- (id)stackedContextButtonBackground
{
  v2 = [(HKOverlayRoomFactorContext *)self overlayMode];
  if (v2 >= 3)
  {
    if (v2 == 3)
    {
      v2 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  return v2;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self);
  v25[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v19[3] = &unk_1E81B8FA0;
  objc_copyWeak(v23, &location);
  v16 = v13;
  v20 = v16;
  v17 = v12;
  v21 = v17;
  v23[1] = a5;
  v18 = v14;
  v22 = v18;
  v23[2] = a6;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:a5 resolution:a6 completion:v19];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = WeakRetained;
  if (a4)
  {
    v14 = [WeakRetained displayType];
    v15 = [*(a1 + 32) selectedRangeFormatter];
    v29 = [HKOverlayPillValueProvidingFactory overlayPillValueProviderForDisplayType:v14 selectedRangeFormatter:v15 interfaceLayout:[HKOverlayPillValueProvidingFactory interfaceLayoutForController:*(a1 + 32)]];

    v16 = *(a1 + 64);
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) currentCalendar];
    v19 = [HKOverlayRoomFactorContext factorDateIntervalsWithChartPoints:v9 dateInterval:v17 timeScope:v16 calendar:v18 intersection:1];

    if ([v19 count])
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 64);
      v22 = *(a1 + 72);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_3;
      v30[3] = &unk_1E81B8F78;
      v31 = v29;
      v32 = v13;
      v34 = *(a1 + 64);
      v33 = *(a1 + 48);
      [v13 chartPointsForChartPointType:0 dateIntervals:v19 overlayChartController:v20 dateIntervalMustMatchView:0 timeScope:v21 resolution:v22 completion:v30];

      v23 = v31;
    }

    else
    {
      v24 = [v13 displayType];
      v25 = *(a1 + 64);
      v26 = [v13 applicationItems];
      v27 = [v26 unitController];
      v23 = [v29 valueFromChartPoints:MEMORY[0x1E695E0F0] unit:v10 displayType:v24 timeScope:v25 unitPreferenceController:v27];

      v28 = *(a1 + 64);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_2;
      v35[3] = &unk_1E81B77A0;
      v36 = *(a1 + 48);
      [v13 setLastUpdatedItemFromPillValue:v23 timeScope:v28 completion:v35];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) displayType];
    v11 = *(a1 + 56);
    v12 = [*(a1 + 40) applicationItems];
    v13 = [v12 unitController];
    v14 = [v9 valueFromChartPoints:v7 unit:v8 displayType:v10 timeScope:v11 unitPreferenceController:v13];

    v15 = *(a1 + 56);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke_4;
    v17[3] = &unk_1E81B77A0;
    v16 = *(a1 + 40);
    v18 = *(a1 + 48);
    [v16 setLastUpdatedItemFromPillValue:v14 timeScope:v15 completion:v17];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v7 = a5;
  if ([(HKOverlayRoomFactorContext *)self directPrimaryDisplayType])
  {
    [(HKOverlayRoomFactorContext *)self _toggleSeriesLegend:v5 chartController:v7];
  }
}

- (void)_toggleSeriesLegend:(BOOL)a3 chartController:(id)a4
{
  v4 = a3;
  v6 = [(HKOverlayRoomFactorContext *)self _findFirstGraphSeries:a4];
  if (v6)
  {
    v12 = v6;
    if (v4)
    {
      v7 = [v6 titleLegendEntries];
      [(HKOverlayRoomFactorContext *)self setPreservedLegendEntries:v7];

      v8 = [(HKOverlayRoomStackedContext *)self displayType];
      v9 = [v8 baseDisplayType];

      v10 = [v9 localization];
      v11 = [v10 shortenedDisplayName];
      [HKOverlayContextUtilities setStackedSeriesLegend:v12 title:v11];
    }

    else
    {
      v9 = [(HKOverlayRoomFactorContext *)self preservedLegendEntries];
      [v12 setTitleLegendEntries:v9];
    }

    v6 = v12;
  }
}

- (id)_findFirstGraphSeries:(id)a3
{
  v3 = [a3 primaryGraphViewController];
  v4 = [v3 graphView];

  if (v4)
  {
    v5 = [v4 allSeries];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)factorDateIntervalsWithChartPoints:(id)a3 dateInterval:(id)a4 timeScope:(int64_t)a5 calendar:(id)a6 intersection:(BOOL)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [MEMORY[0x1E695DF00] now];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __110__HKOverlayRoomFactorContext_factorDateIntervalsWithChartPoints_dateInterval_timeScope_calendar_intersection___block_invoke;
  v31[3] = &unk_1E81B8FC8;
  v16 = v15;
  v32 = v16;
  v37 = a7;
  v17 = v13;
  v33 = v17;
  v35 = a1;
  v36 = a5;
  v18 = v14;
  v34 = v18;
  v19 = [v12 hk_map:v31];
  if ([v19 count] >= 2)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696C0A8]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v20 insertInterval:{*(*(&v27 + 1) + 8 * i), v27}];
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v23);
    }

    v19 = [v20 mergedIntervals];
  }

  return v19;
}

id __110__HKOverlayRoomFactorContext_factorDateIntervalsWithChartPoints_dateInterval_timeScope_calendar_intersection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 minXValueAsGenericType];
  v5 = [v3 maxXValueAsGenericType];

  if ([v5 hk_isAfterDate:*(a1 + 32)])
  {
    v6 = *(a1 + 32);

    v5 = v6;
  }

  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 40) startDate];
    v8 = [v7 hk_isAfterDate:v4];

    if (v8)
    {
      v9 = [*(a1 + 40) startDate];

      v4 = v9;
    }

    v10 = [*(a1 + 40) endDate];
    v11 = [v10 hk_isBeforeDate:v5];

    if (v11)
    {
      v12 = [*(a1 + 40) endDate];

      v5 = v12;
    }
  }

  v13 = [v4 dateByAddingTimeInterval:0.01];
  v14 = [v5 dateByAddingTimeInterval:-0.01];
  v15 = [*(a1 + 56) _alignDate:v13 timeScope:*(a1 + 64) alignment:0 calendar:*(a1 + 48)];
  v16 = [*(a1 + 56) _alignDate:v14 timeScope:*(a1 + 64) alignment:2 calendar:*(a1 + 48)];
  v17 = 0;
  if ([v15 hk_isBeforeDate:v16])
  {
    v17 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v15 endDate:v16];
  }

  return v17;
}

+ (id)_alignDate:(id)a3 timeScope:(int64_t)a4 alignment:(int64_t)a5 calendar:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = +[HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:](HKGraphZoomLevelConfiguration, "chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:", a4, v9, a5, 0, v10, [v10 firstWeekday], 0, 0);

  v12 = v9;
  v13 = v12;
  if (a5 == 2)
  {
    v15 = [v11 endDate];
  }

  else
  {
    v14 = v12;
    if (a5)
    {
      goto LABEL_6;
    }

    v15 = [v11 startDate];
  }

  v14 = v15;

LABEL_6:

  return v14;
}

+ (id)_leadingPredicateForRange:(id)a3
{
  v3 = [a3 endDate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@", v3];

  return v4;
}

+ (id)_leadingSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE30] ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)_trailingPredicateForRange:(id)a3
{
  v3 = [a3 startDate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"endDate >= %@", v3];

  return v4;
}

+ (id)_trailingSortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (double)_distanceBetween:(id)a3 otherDate:(id)a4
{
  if (!a4)
  {
    return 1.79769313e308;
  }

  v5 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;

  return vabdd_f64(v7, v9);
}

+ (id)_dateIntervalToValueRange:(id)a3
{
  v3 = a3;
  v4 = [v3 startDate];
  v5 = [v3 endDate];

  v6 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v5];

  return v6;
}

+ (id)_currentGraphView:(id)a3
{
  v3 = [a3 primaryGraphViewController];
  v4 = [v3 graphView];

  return v4;
}

+ (id)_currentVisibleDateRange:(id)a3
{
  v3 = [a1 _currentGraphView:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 actualVisibleRange];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      v7 = [v5 startDate];
      v8 = [v5 endDate];
      v9 = [v6 initWithStartDate:v7 endDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stackedHeight
{
  v2 = [[HKInteractiveChartStackHeight alloc] initWithKind:1 heightValue:50.0];

  return v2;
}

- (void)initWithPrimaryDisplayType:(uint64_t)a1 factorDisplayType:(uint64_t)a2 overlayChartController:currentCalendarOverride:applicationItems:overlayMode:allowsDeselection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomFactorContext.m" lineNumber:48 description:@"HKOverlayRoomFactorContext: only category types are supported."];
}

- (void)initWithPrimaryInteractiveChartDisplayType:(uint64_t)a1 factorDisplayType:(uint64_t)a2 overlayChartController:currentCalendarOverride:applicationItems:overlayMode:allowsDeselection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomFactorContext.m" lineNumber:77 description:@"HKOverlayRoomFactorContext: only category types are supported."];
}

- (void)initWithPrimaryInteractiveChartDisplayType:(uint64_t)a1 interactiveChartFactorDisplayType:(uint64_t)a2 overlayChartController:currentCalendarOverride:applicationItems:overlayMode:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomFactorContext.m" lineNumber:100 description:@"HKOverlayRoomFactorContext: only category types are supported."];
}

@end