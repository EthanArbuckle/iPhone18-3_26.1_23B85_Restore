@interface _ActivityCurrentValueView
- (BOOL)_summaryOutsideRanges:(id)ranges summary:(id)summary;
- (_ActivityCurrentValueView)initWithDisplayTypeController:(id)controller unitPreferenceController:(id)preferenceController wheelchairUseCharacteristicCache:(id)cache currentValueViewCallbacks:(id)callbacks activitySummaryDataProvider:(id)provider activityOptions:(unint64_t)options firstWeekday:(int64_t)weekday isChartSharingContext:(BOOL)self0;
- (id)_computeMultiDayVisibleSummaryForGraphView:(id)view timeScope:(int64_t)scope filterDateIntervals:(id)intervals;
- (id)_computeSingleDayVisibleSummaryForGraphView:(id)view filterDateIntervals:(id)intervals;
- (id)computeVisibleSummaryForGraphView:(id)view timeScope:(int64_t)scope filterDateIntervals:(id)intervals;
- (void)layoutSubviews;
- (void)updateWithGraphView:(id)view timeScope:(int64_t)scope;
@end

@implementation _ActivityCurrentValueView

- (_ActivityCurrentValueView)initWithDisplayTypeController:(id)controller unitPreferenceController:(id)preferenceController wheelchairUseCharacteristicCache:(id)cache currentValueViewCallbacks:(id)callbacks activitySummaryDataProvider:(id)provider activityOptions:(unint64_t)options firstWeekday:(int64_t)weekday isChartSharingContext:(BOOL)self0
{
  controllerCopy = controller;
  preferenceControllerCopy = preferenceController;
  cacheCopy = cache;
  callbacksCopy = callbacks;
  providerCopy = provider;
  v28.receiver = self;
  v28.super_class = _ActivityCurrentValueView;
  v21 = [(_ActivityCurrentValueView *)&v28 initWithFrame:0.0, 0.0, 320.0, 48.0];
  if (v21)
  {
    v22 = [[HKInteractiveChartAnnotationView alloc] initWithContext:2];
    annotationView = v21->_annotationView;
    v21->_annotationView = v22;

    LOBYTE(v27) = context;
    v24 = [[_ActivityCurrentValueDataSource alloc] initWithDisplayTypeController:controllerCopy unitController:preferenceControllerCopy wheelchairUseCharacteristicCache:cacheCopy currentValueViewContext:1 firstWeekday:weekday activityOptions:options currentValueViewCallbacks:callbacksCopy isChartSharingContext:v27];
    currentValueDataSource = v21->_currentValueDataSource;
    v21->_currentValueDataSource = v24;

    [(HKInteractiveChartAnnotationView *)v21->_annotationView setDataSource:v21->_currentValueDataSource];
    [(_ActivityCurrentValueView *)v21 addSubview:v21->_annotationView];
    objc_storeStrong(&v21->_activitySummaryDataProvider, provider);
    [(HKInteractiveChartAnnotationView *)v21->_annotationView setTranslatesAutoresizingMaskIntoConstraints:1];
    v21->_isChartSharingContext = context;
    [(_ActivityCurrentValueView *)v21 setPreservesSuperviewLayoutMargins:1];
  }

  return v21;
}

- (void)updateWithGraphView:(id)view timeScope:(int64_t)scope
{
  v12 = [(_ActivityCurrentValueView *)self computeVisibleSummaryForGraphView:view timeScope:scope filterDateIntervals:MEMORY[0x1E695E0F0]];
  summaryResult = [v12 summaryResult];
  currentValueDataSource = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [currentValueDataSource setActivitySummary:summaryResult];

  timeScope = [v12 timeScope];
  currentValueDataSource2 = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [currentValueDataSource2 setTimeScope:timeScope];

  hasNoData = [v12 hasNoData];
  currentValueDataSource3 = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [currentValueDataSource3 setCurrentValueViewHasNoData:hasNoData];

  annotationView = [(_ActivityCurrentValueView *)self annotationView];
  [annotationView reloadData];

  [(_ActivityCurrentValueView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = _ActivityCurrentValueView;
  [(_ActivityCurrentValueView *)&v14 layoutSubviews];
  [(_ActivityCurrentValueView *)self layoutMargins];
  v4 = v3 + -10.0;
  annotationView = [(_ActivityCurrentValueView *)self annotationView];
  [annotationView intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  [(_ActivityCurrentValueView *)self bounds];
  v12 = (v11 - v9) * 0.5;
  if (v10 + v4 * -2.0 < v7)
  {
    v7 = v10 + v4 * -2.0;
  }

  annotationView2 = [(_ActivityCurrentValueView *)self annotationView];
  [annotationView2 setFrame:{v4, v12, v7, v9}];
}

- (id)computeVisibleSummaryForGraphView:(id)view timeScope:(int64_t)scope filterDateIntervals:(id)intervals
{
  viewCopy = view;
  intervalsCopy = intervals;
  if (scope < 6)
  {
    v10 = [(_ActivityCurrentValueView *)self _computeMultiDayVisibleSummaryForGraphView:viewCopy timeScope:scope filterDateIntervals:intervalsCopy];
LABEL_3:
    v11 = v10;
    goto LABEL_4;
  }

  if (scope == 6)
  {
    v10 = [(_ActivityCurrentValueView *)self _computeSingleDayVisibleSummaryForGraphView:viewCopy filterDateIntervals:intervalsCopy];
    goto LABEL_3;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (id)_computeMultiDayVisibleSummaryForGraphView:(id)view timeScope:(int64_t)scope filterDateIntervals:(id)intervals
{
  viewCopy = view;
  intervalsCopy = intervals;
  v10 = [[_ActivityCurrentValueSummary alloc] initWithTimeScope:scope];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__19;
  v26[4] = __Block_byref_object_dispose__19;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [HKInteractiveChartActivityController firstActivitySeriesForGraphView:viewCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102___ActivityCurrentValueView__computeMultiDayVisibleSummaryForGraphView_timeScope_filterDateIntervals___block_invoke;
  v17[3] = &unk_1E81BA680;
  v17[4] = self;
  v12 = intervalsCopy;
  v18 = v12;
  v20 = v26;
  v13 = v10;
  v19 = v13;
  v21 = &v22;
  [viewCopy enumerateVisibleCoordinatesForSeries:v11 block:v17];
  [(_ActivityCurrentValueSummary *)v13 finishCollatingSummaryWithGraphView:viewCopy];
  v14 = [_ActivitySummaryForCollection alloc];
  v15 = [(_ActivitySummaryForCollection *)v14 initWithActivitySummary:v13 timeScope:scope hasNoData:v23[3] == 0];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);

  return v15;
}

- (BOOL)_summaryOutsideRanges:(id)ranges summary:(id)summary
{
  v26 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  summaryCopy = summary;
  if ([rangesCopy count])
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v8 = [summaryCopy dateComponentsForCalendar:hk_gregorianCalendarWithLocalTimeZone];
    v9 = [hk_gregorianCalendarWithLocalTimeZone dateFromComponents:v8];

    v10 = [hk_gregorianCalendarWithLocalTimeZone startOfDayForDate:v9];
    v11 = 1;
    v12 = [hk_gregorianCalendarWithLocalTimeZone hk_startOfDateByAddingDays:1 toDate:v10];
    v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v12];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = rangesCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v20 = v10;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v21 + 1) + 8 * i) intersectsDateInterval:v13])
          {
            v11 = 0;
            goto LABEL_12;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v11 = 1;
LABEL_12:
      v10 = v20;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_computeSingleDayVisibleSummaryForGraphView:(id)view filterDateIntervals:(id)intervals
{
  intervalsCopy = intervals;
  effectiveVisibleRangeCadence = [view effectiveVisibleRangeCadence];
  activitySummaryDataProvider = [(_ActivityCurrentValueView *)self activitySummaryDataProvider];
  v9 = [activitySummaryDataProvider activitySummariesForDateRange:effectiveVisibleRangeCadence timeScope:5];

  firstObject = [v9 firstObject];
  if (firstObject && ![(_ActivityCurrentValueView *)self _summaryOutsideRanges:intervalsCopy summary:firstObject])
  {
    v14 = 0;
  }

  else
  {
    v11 = [[_ActivityCurrentValueSummary alloc] initWithTimeScope:6];

    startDate = [effectiveVisibleRangeCadence startDate];
    [(_ActivityCurrentValueSummary *)v11 _setStartDate:startDate];

    endDate = [effectiveVisibleRangeCadence endDate];
    [(_ActivityCurrentValueSummary *)v11 _setEndDate:endDate];

    v14 = 1;
    firstObject = v11;
  }

  v15 = [[_ActivitySummaryForCollection alloc] initWithActivitySummary:firstObject timeScope:6 hasNoData:v14];

  return v15;
}

@end