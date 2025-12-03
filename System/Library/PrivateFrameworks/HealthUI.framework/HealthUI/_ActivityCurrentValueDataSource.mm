@interface _ActivityCurrentValueDataSource
- (HKInteractiveChartCurrentValueViewCallbacks)currentValueViewCallbacks;
- (_ActivityCurrentValueDataSource)initWithDisplayTypeController:(id)controller unitController:(id)unitController wheelchairUseCharacteristicCache:(id)cache currentValueViewContext:(BOOL)context firstWeekday:(int64_t)weekday activityOptions:(unint64_t)options currentValueViewCallbacks:(id)callbacks isChartSharingContext:(BOOL)self0;
- (id)_buildNoDataView;
- (id)_dateRangeFromComponents;
- (id)_dateRangeFromStartDate:(id)date endDate:(id)endDate;
- (id)_localizedCurrentValueViewDateRange;
- (id)dateViewWithOrientation:(int64_t)orientation;
- (id)leftMarginViewWithOrientation:(int64_t)orientation;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (int64_t)numberOfValuesForAnnotationView:(id)view;
@end

@implementation _ActivityCurrentValueDataSource

- (_ActivityCurrentValueDataSource)initWithDisplayTypeController:(id)controller unitController:(id)unitController wheelchairUseCharacteristicCache:(id)cache currentValueViewContext:(BOOL)context firstWeekday:(int64_t)weekday activityOptions:(unint64_t)options currentValueViewCallbacks:(id)callbacks isChartSharingContext:(BOOL)self0
{
  contextCopy = context;
  callbacksCopy = callbacks;
  v24.receiver = self;
  v24.super_class = _ActivityCurrentValueDataSource;
  v18 = [(HKActivitySummaryAnnotationViewDataSource *)&v24 initWithDisplayTypeController:controller unitController:unitController wheelchairUseCharacteristicCache:cache dateCache:0 currentValueViewContext:contextCopy activityOptions:options firstWeekday:weekday isChartSharingContext:sharingContext];
  v19 = v18;
  if (v18)
  {
    [(_ActivityCurrentValueDataSource *)v18 setCurrentValueViewCallbacks:callbacksCopy];
    _buildNoDataView = [(_ActivityCurrentValueDataSource *)v19 _buildNoDataView];
    noDataView = v19->_noDataView;
    v19->_noDataView = _buildNoDataView;
  }

  return v19;
}

- (id)leftMarginViewWithOrientation:(int64_t)orientation
{
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _ActivityCurrentValueDataSource;
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)&v7 leftMarginViewWithOrientation:orientation];
  }

  return v5;
}

- (int64_t)numberOfValuesForAnnotationView:(id)view
{
  viewCopy = view;
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _ActivityCurrentValueDataSource;
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)&v7 numberOfValuesForAnnotationView:viewCopy];
  }

  return v5;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    noDataView = [(_ActivityCurrentValueDataSource *)self noDataView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _ActivityCurrentValueDataSource;
    noDataView = [(HKActivitySummaryAnnotationViewDataSource *)&v9 valueViewForColumnAtIndex:index orientation:orientation];
  }

  return noDataView;
}

- (id)dateViewWithOrientation:(int64_t)orientation
{
  _localizedCurrentValueViewDateRange = [(_ActivityCurrentValueDataSource *)self _localizedCurrentValueViewDateRange];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  hk_chartCurrentValueDateFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  [v4 setFont:hk_chartCurrentValueDateFont];

  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  [v4 setTextColor:hk_chartLollipopLabelColor];

  [v4 setText:_localizedCurrentValueViewDateRange];
  [v4 setAdjustsFontSizeToFitWidth:1];

  return v4;
}

- (id)_buildNoDataView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
  [v2 setFont:hk_chartCurrentValueValueFont];

  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  [v2 setTextColor:hk_chartLollipopValueColor];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"CHART_NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v2 setText:v6];

  return v2;
}

- (id)_localizedCurrentValueViewDateRange
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  _startDate = [activitySummary _startDate];
  if (_startDate)
  {
    v5 = _startDate;
    activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    _endDate = [activitySummary2 _endDate];

    if (_endDate)
    {
      activitySummary3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
      _startDate2 = [activitySummary3 _startDate];
      activitySummary4 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
      _endDate2 = [activitySummary4 _endDate];
      _dateRangeFromComponents = [(_ActivityCurrentValueDataSource *)self _dateRangeFromStartDate:_startDate2 endDate:_endDate2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  _dateRangeFromComponents = [(_ActivityCurrentValueDataSource *)self _dateRangeFromComponents];
LABEL_6:

  return _dateRangeFromComponents;
}

- (id)_dateRangeFromStartDate:(id)date endDate:(id)endDate
{
  v5 = [HKValueRange valueRangeWithMinValue:date maxValue:endDate];
  currentValueViewCallbacks = [(_ActivityCurrentValueDataSource *)self currentValueViewCallbacks];
  v7 = [currentValueViewCallbacks stringForValueRange:v5 timeScope:{-[HKActivitySummaryAnnotationViewDataSource timeScope](self, "timeScope")}];

  return v7;
}

- (id)_dateRangeFromComponents
{
  hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  _gregorianDateComponents = [activitySummary _gregorianDateComponents];
  v6 = [hk_gregorianCalendarWithLocalTimeZone dateFromComponents:_gregorianDateComponents];

  timeScope = [(HKActivitySummaryAnnotationViewDataSource *)self timeScope];
  v8 = @"Unknown Date";
  if (timeScope > 3)
  {
    if (timeScope > 5)
    {
      if (timeScope == 6)
      {
        v9 = hk_gregorianCalendarWithLocalTimeZone;
        v10 = 16;
      }

      else
      {
        if (timeScope != 7)
        {
          goto LABEL_20;
        }

        v9 = hk_gregorianCalendarWithLocalTimeZone;
        v10 = 32;
      }
    }

    else
    {
      v9 = hk_gregorianCalendarWithLocalTimeZone;
      v10 = 8;
    }

LABEL_17:
    v11 = 1;
    goto LABEL_18;
  }

  if (timeScope > 1)
  {
    if (timeScope != 2)
    {
      v9 = hk_gregorianCalendarWithLocalTimeZone;
      v10 = 0x2000;
      v11 = 26;
      goto LABEL_18;
    }

    v9 = hk_gregorianCalendarWithLocalTimeZone;
    v10 = 4;
    goto LABEL_17;
  }

  if (timeScope)
  {
    if (timeScope != 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [hk_gregorianCalendarWithLocalTimeZone dateByAddingUnit:4 value:10 toDate:v6 options:0];
  }

  v9 = hk_gregorianCalendarWithLocalTimeZone;
  v10 = 4;
  v11 = 5;
LABEL_18:
  v12 = [v9 dateByAddingUnit:v10 value:v11 toDate:v6 options:0];
  if (v12)
  {
    v8 = [(_ActivityCurrentValueDataSource *)self _dateRangeFromStartDate:v6 endDate:v12];
  }

LABEL_20:

  return v8;
}

- (HKInteractiveChartCurrentValueViewCallbacks)currentValueViewCallbacks
{
  WeakRetained = objc_loadWeakRetained(&self->_currentValueViewCallbacks);

  return WeakRetained;
}

@end