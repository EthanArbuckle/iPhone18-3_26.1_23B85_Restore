@interface _ActivityCurrentValueView
- (BOOL)_summaryOutsideRanges:(id)a3 summary:(id)a4;
- (_ActivityCurrentValueView)initWithDisplayTypeController:(id)a3 unitPreferenceController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 currentValueViewCallbacks:(id)a6 activitySummaryDataProvider:(id)a7 activityOptions:(unint64_t)a8 firstWeekday:(int64_t)a9 isChartSharingContext:(BOOL)a10;
- (id)_computeMultiDayVisibleSummaryForGraphView:(id)a3 timeScope:(int64_t)a4 filterDateIntervals:(id)a5;
- (id)_computeSingleDayVisibleSummaryForGraphView:(id)a3 filterDateIntervals:(id)a4;
- (id)computeVisibleSummaryForGraphView:(id)a3 timeScope:(int64_t)a4 filterDateIntervals:(id)a5;
- (void)layoutSubviews;
- (void)updateWithGraphView:(id)a3 timeScope:(int64_t)a4;
@end

@implementation _ActivityCurrentValueView

- (_ActivityCurrentValueView)initWithDisplayTypeController:(id)a3 unitPreferenceController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 currentValueViewCallbacks:(id)a6 activitySummaryDataProvider:(id)a7 activityOptions:(unint64_t)a8 firstWeekday:(int64_t)a9 isChartSharingContext:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v28.receiver = self;
  v28.super_class = _ActivityCurrentValueView;
  v21 = [(_ActivityCurrentValueView *)&v28 initWithFrame:0.0, 0.0, 320.0, 48.0];
  if (v21)
  {
    v22 = [[HKInteractiveChartAnnotationView alloc] initWithContext:2];
    annotationView = v21->_annotationView;
    v21->_annotationView = v22;

    LOBYTE(v27) = a10;
    v24 = [[_ActivityCurrentValueDataSource alloc] initWithDisplayTypeController:v16 unitController:v17 wheelchairUseCharacteristicCache:v18 currentValueViewContext:1 firstWeekday:a9 activityOptions:a8 currentValueViewCallbacks:v19 isChartSharingContext:v27];
    currentValueDataSource = v21->_currentValueDataSource;
    v21->_currentValueDataSource = v24;

    [(HKInteractiveChartAnnotationView *)v21->_annotationView setDataSource:v21->_currentValueDataSource];
    [(_ActivityCurrentValueView *)v21 addSubview:v21->_annotationView];
    objc_storeStrong(&v21->_activitySummaryDataProvider, a7);
    [(HKInteractiveChartAnnotationView *)v21->_annotationView setTranslatesAutoresizingMaskIntoConstraints:1];
    v21->_isChartSharingContext = a10;
    [(_ActivityCurrentValueView *)v21 setPreservesSuperviewLayoutMargins:1];
  }

  return v21;
}

- (void)updateWithGraphView:(id)a3 timeScope:(int64_t)a4
{
  v12 = [(_ActivityCurrentValueView *)self computeVisibleSummaryForGraphView:a3 timeScope:a4 filterDateIntervals:MEMORY[0x1E695E0F0]];
  v5 = [v12 summaryResult];
  v6 = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [v6 setActivitySummary:v5];

  v7 = [v12 timeScope];
  v8 = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [v8 setTimeScope:v7];

  v9 = [v12 hasNoData];
  v10 = [(_ActivityCurrentValueView *)self currentValueDataSource];
  [v10 setCurrentValueViewHasNoData:v9];

  v11 = [(_ActivityCurrentValueView *)self annotationView];
  [v11 reloadData];

  [(_ActivityCurrentValueView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = _ActivityCurrentValueView;
  [(_ActivityCurrentValueView *)&v14 layoutSubviews];
  [(_ActivityCurrentValueView *)self layoutMargins];
  v4 = v3 + -10.0;
  v5 = [(_ActivityCurrentValueView *)self annotationView];
  [v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  [(_ActivityCurrentValueView *)self bounds];
  v12 = (v11 - v9) * 0.5;
  if (v10 + v4 * -2.0 < v7)
  {
    v7 = v10 + v4 * -2.0;
  }

  v13 = [(_ActivityCurrentValueView *)self annotationView];
  [v13 setFrame:{v4, v12, v7, v9}];
}

- (id)computeVisibleSummaryForGraphView:(id)a3 timeScope:(int64_t)a4 filterDateIntervals:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 < 6)
  {
    v10 = [(_ActivityCurrentValueView *)self _computeMultiDayVisibleSummaryForGraphView:v8 timeScope:a4 filterDateIntervals:v9];
LABEL_3:
    v11 = v10;
    goto LABEL_4;
  }

  if (a4 == 6)
  {
    v10 = [(_ActivityCurrentValueView *)self _computeSingleDayVisibleSummaryForGraphView:v8 filterDateIntervals:v9];
    goto LABEL_3;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (id)_computeMultiDayVisibleSummaryForGraphView:(id)a3 timeScope:(int64_t)a4 filterDateIntervals:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[_ActivityCurrentValueSummary alloc] initWithTimeScope:a4];
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
  v11 = [HKInteractiveChartActivityController firstActivitySeriesForGraphView:v8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102___ActivityCurrentValueView__computeMultiDayVisibleSummaryForGraphView_timeScope_filterDateIntervals___block_invoke;
  v17[3] = &unk_1E81BA680;
  v17[4] = self;
  v12 = v9;
  v18 = v12;
  v20 = v26;
  v13 = v10;
  v19 = v13;
  v21 = &v22;
  [v8 enumerateVisibleCoordinatesForSeries:v11 block:v17];
  [(_ActivityCurrentValueSummary *)v13 finishCollatingSummaryWithGraphView:v8];
  v14 = [_ActivitySummaryForCollection alloc];
  v15 = [(_ActivitySummaryForCollection *)v14 initWithActivitySummary:v13 timeScope:a4 hasNoData:v23[3] == 0];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);

  return v15;
}

- (BOOL)_summaryOutsideRanges:(id)a3 summary:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v8 = [v6 dateComponentsForCalendar:v7];
    v9 = [v7 dateFromComponents:v8];

    v10 = [v7 startOfDayForDate:v9];
    v11 = 1;
    v12 = [v7 hk_startOfDateByAddingDays:1 toDate:v10];
    v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v12];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v5;
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

- (id)_computeSingleDayVisibleSummaryForGraphView:(id)a3 filterDateIntervals:(id)a4
{
  v6 = a4;
  v7 = [a3 effectiveVisibleRangeCadence];
  v8 = [(_ActivityCurrentValueView *)self activitySummaryDataProvider];
  v9 = [v8 activitySummariesForDateRange:v7 timeScope:5];

  v10 = [v9 firstObject];
  if (v10 && ![(_ActivityCurrentValueView *)self _summaryOutsideRanges:v6 summary:v10])
  {
    v14 = 0;
  }

  else
  {
    v11 = [[_ActivityCurrentValueSummary alloc] initWithTimeScope:6];

    v12 = [v7 startDate];
    [(_ActivityCurrentValueSummary *)v11 _setStartDate:v12];

    v13 = [v7 endDate];
    [(_ActivityCurrentValueSummary *)v11 _setEndDate:v13];

    v14 = 1;
    v10 = v11;
  }

  v15 = [[_ActivitySummaryForCollection alloc] initWithActivitySummary:v10 timeScope:6 hasNoData:v14];

  return v15;
}

@end