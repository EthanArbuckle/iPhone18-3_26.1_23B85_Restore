@interface HKOverlayRoomFactorContext
+ (double)_distanceBetween:(id)between otherDate:(id)date;
+ (id)_alignDate:(id)date timeScope:(int64_t)scope alignment:(int64_t)alignment calendar:(id)calendar;
+ (id)_currentGraphView:(id)view;
+ (id)_currentVisibleDateRange:(id)range;
+ (id)_dateIntervalToValueRange:(id)range;
+ (id)_leadingPredicateForRange:(id)range;
+ (id)_leadingSortDescriptors;
+ (id)_trailingPredicateForRange:(id)range;
+ (id)_trailingSortDescriptors;
+ (id)factorDateIntervalsWithChartPoints:(id)points dateInterval:(id)interval timeScope:(int64_t)scope calendar:(id)calendar intersection:(BOOL)intersection;
+ (id)factorStackHeight;
- (HKOverlayRoomFactorContext)initWithPrimaryDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection;
- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection;
- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)type interactiveChartFactorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode;
- (id)_findFirstGraphSeries:(id)series;
- (id)stackedContextButtonBackground;
- (id)stackedHeight;
- (void)_toggleSeriesLegend:(BOOL)legend chartController:(id)controller;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKOverlayRoomFactorContext

+ (id)factorStackHeight
{
  v2 = [[HKInteractiveChartStackHeight alloc] initWithKind:1 heightValue:50.0];

  return v2;
}

- (HKOverlayRoomFactorContext)initWithPrimaryDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection
{
  typeCopy = type;
  displayTypeCopy = displayType;
  itemsCopy = items;
  overrideCopy = override;
  controllerCopy = controller;
  healthStore = [itemsCopy healthStore];
  v21 = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:typeCopy factorDisplayType:displayTypeCopy healthStore:healthStore];

  objectType = [displayTypeCopy objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryDisplayType:a2 factorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:? allowsDeselection:?];
  }

  sampleType = [typeCopy sampleType];
  sampleType2 = [displayTypeCopy sampleType];
  v30.receiver = self;
  v30.super_class = HKOverlayRoomFactorContext;
  v26 = [(HKOverlayRoomStackedContext *)&v30 initWithSampleType:sampleType overlayDisplayType:0 stackedSampleType:sampleType2 overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy isInfoButtonHidden:!v21];

  if (v26)
  {
    v26->_overlayMode = mode;
    v26->_directPrimaryDisplayType = 0;
    preservedLegendEntries = v26->_preservedLegendEntries;
    v26->_preservedLegendEntries = 0;

    v26->_allowsDeselection = deselection;
  }

  return v26;
}

- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection
{
  displayTypeCopy = displayType;
  itemsCopy = items;
  overrideCopy = override;
  controllerCopy = controller;
  typeCopy = type;
  baseDisplayType = [typeCopy baseDisplayType];
  healthStore = [itemsCopy healthStore];
  v22 = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:baseDisplayType factorDisplayType:displayTypeCopy healthStore:healthStore];

  objectType = [displayTypeCopy objectType];
  objc_opt_class();
  LOBYTE(baseDisplayType) = objc_opt_isKindOfClass();

  if ((baseDisplayType & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryInteractiveChartDisplayType:a2 factorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:? allowsDeselection:?];
  }

  sampleType = [displayTypeCopy sampleType];
  v29.receiver = self;
  v29.super_class = HKOverlayRoomFactorContext;
  v25 = [(HKOverlayRoomStackedContext *)&v29 initWithDisplayType:typeCopy overlayDisplayType:0 stackedSampleType:sampleType overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy isInfoButtonHidden:!v22];

  if (v25)
  {
    v25->_overlayMode = mode;
    v25->_directPrimaryDisplayType = 1;
    preservedLegendEntries = v25->_preservedLegendEntries;
    v25->_preservedLegendEntries = 0;

    v25->_allowsDeselection = deselection;
  }

  return v25;
}

- (HKOverlayRoomFactorContext)initWithPrimaryInteractiveChartDisplayType:(id)type interactiveChartFactorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  objectType = [displayTypeCopy objectType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [HKOverlayRoomFactorContext initWithPrimaryInteractiveChartDisplayType:a2 interactiveChartFactorDisplayType:self overlayChartController:? currentCalendarOverride:? applicationItems:? overlayMode:?];
  }

  v26.receiver = self;
  v26.super_class = HKOverlayRoomFactorContext;
  v22 = [(HKOverlayRoomStackedContext *)&v26 initWithDisplayType:typeCopy overlayDisplayType:0 stackedDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy isInfoButtonHidden:1];
  v23 = v22;
  if (v22)
  {
    v22->_overlayMode = mode;
    v22->_directPrimaryDisplayType = 1;
    preservedLegendEntries = v22->_preservedLegendEntries;
    v22->_preservedLegendEntries = 0;

    v23->_allowsDeselection = 1;
  }

  return v23;
}

- (id)stackedContextButtonBackground
{
  overlayMode = [(HKOverlayRoomFactorContext *)self overlayMode];
  if (overlayMode >= 3)
  {
    if (overlayMode == 3)
    {
      overlayMode = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }
  }

  else
  {
    overlayMode = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  return overlayMode;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = intervalCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __113__HKOverlayRoomFactorContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
  v19[3] = &unk_1E81B8FA0;
  objc_copyWeak(v23, &location);
  v16 = controllerCopy;
  v20 = v16;
  v17 = intervalCopy;
  v21 = v17;
  v23[1] = scope;
  v18 = completionCopy;
  v22 = v18;
  v23[2] = resolution;
  [(HKOverlayRoomStackedContext *)self chartPointsForChartPointType:1 dateIntervals:v15 overlayChartController:v16 dateIntervalMustMatchView:1 timeScope:scope resolution:resolution completion:v19];

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

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  controllerCopy = controller;
  if ([(HKOverlayRoomFactorContext *)self directPrimaryDisplayType])
  {
    [(HKOverlayRoomFactorContext *)self _toggleSeriesLegend:changeCopy chartController:controllerCopy];
  }
}

- (void)_toggleSeriesLegend:(BOOL)legend chartController:(id)controller
{
  legendCopy = legend;
  v6 = [(HKOverlayRoomFactorContext *)self _findFirstGraphSeries:controller];
  if (v6)
  {
    v12 = v6;
    if (legendCopy)
    {
      titleLegendEntries = [v6 titleLegendEntries];
      [(HKOverlayRoomFactorContext *)self setPreservedLegendEntries:titleLegendEntries];

      displayType = [(HKOverlayRoomStackedContext *)self displayType];
      baseDisplayType = [displayType baseDisplayType];

      localization = [baseDisplayType localization];
      shortenedDisplayName = [localization shortenedDisplayName];
      [HKOverlayContextUtilities setStackedSeriesLegend:v12 title:shortenedDisplayName];
    }

    else
    {
      baseDisplayType = [(HKOverlayRoomFactorContext *)self preservedLegendEntries];
      [v12 setTitleLegendEntries:baseDisplayType];
    }

    v6 = v12;
  }
}

- (id)_findFirstGraphSeries:(id)series
{
  primaryGraphViewController = [series primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  if (graphView)
  {
    allSeries = [graphView allSeries];
    firstObject = [allSeries firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)factorDateIntervalsWithChartPoints:(id)points dateInterval:(id)interval timeScope:(int64_t)scope calendar:(id)calendar intersection:(BOOL)intersection
{
  v39 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  intervalCopy = interval;
  calendarCopy = calendar;
  v15 = [MEMORY[0x1E695DF00] now];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __110__HKOverlayRoomFactorContext_factorDateIntervalsWithChartPoints_dateInterval_timeScope_calendar_intersection___block_invoke;
  v31[3] = &unk_1E81B8FC8;
  v16 = v15;
  v32 = v16;
  intersectionCopy = intersection;
  v17 = intervalCopy;
  v33 = v17;
  selfCopy = self;
  scopeCopy = scope;
  v18 = calendarCopy;
  v34 = v18;
  mergedIntervals = [pointsCopy hk_map:v31];
  if ([mergedIntervals count] >= 2)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696C0A8]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = mergedIntervals;
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

    mergedIntervals = [v20 mergedIntervals];
  }

  return mergedIntervals;
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

+ (id)_alignDate:(id)date timeScope:(int64_t)scope alignment:(int64_t)alignment calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v11 = +[HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:](HKGraphZoomLevelConfiguration, "chartVisibleRangeForTimeScope:anchorDate:alignment:dataRange:calendar:firstWeekday:cadence:level:", scope, dateCopy, alignment, 0, calendarCopy, [calendarCopy firstWeekday], 0, 0);

  v12 = dateCopy;
  v13 = v12;
  if (alignment == 2)
  {
    endDate = [v11 endDate];
  }

  else
  {
    v14 = v12;
    if (alignment)
    {
      goto LABEL_6;
    }

    endDate = [v11 startDate];
  }

  v14 = endDate;

LABEL_6:

  return v14;
}

+ (id)_leadingPredicateForRange:(id)range
{
  endDate = [range endDate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@", endDate];

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

+ (id)_trailingPredicateForRange:(id)range
{
  startDate = [range startDate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"endDate >= %@", startDate];

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

+ (double)_distanceBetween:(id)between otherDate:(id)date
{
  if (!date)
  {
    return 1.79769313e308;
  }

  dateCopy = date;
  [between timeIntervalSinceReferenceDate];
  v7 = v6;
  [dateCopy timeIntervalSinceReferenceDate];
  v9 = v8;

  return vabdd_f64(v7, v9);
}

+ (id)_dateIntervalToValueRange:(id)range
{
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  v6 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

  return v6;
}

+ (id)_currentGraphView:(id)view
{
  primaryGraphViewController = [view primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  return graphView;
}

+ (id)_currentVisibleDateRange:(id)range
{
  v3 = [self _currentGraphView:range];
  v4 = v3;
  if (v3)
  {
    actualVisibleRange = [v3 actualVisibleRange];
    if (actualVisibleRange)
    {
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      startDate = [actualVisibleRange startDate];
      endDate = [actualVisibleRange endDate];
      v9 = [v6 initWithStartDate:startDate endDate:endDate];
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