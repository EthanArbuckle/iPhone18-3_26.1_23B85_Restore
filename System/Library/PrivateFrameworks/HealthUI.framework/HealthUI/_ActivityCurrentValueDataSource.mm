@interface _ActivityCurrentValueDataSource
- (HKInteractiveChartCurrentValueViewCallbacks)currentValueViewCallbacks;
- (_ActivityCurrentValueDataSource)initWithDisplayTypeController:(id)a3 unitController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 currentValueViewContext:(BOOL)a6 firstWeekday:(int64_t)a7 activityOptions:(unint64_t)a8 currentValueViewCallbacks:(id)a9 isChartSharingContext:(BOOL)a10;
- (id)_buildNoDataView;
- (id)_dateRangeFromComponents;
- (id)_dateRangeFromStartDate:(id)a3 endDate:(id)a4;
- (id)_localizedCurrentValueViewDateRange;
- (id)dateViewWithOrientation:(int64_t)a3;
- (id)leftMarginViewWithOrientation:(int64_t)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (int64_t)numberOfValuesForAnnotationView:(id)a3;
@end

@implementation _ActivityCurrentValueDataSource

- (_ActivityCurrentValueDataSource)initWithDisplayTypeController:(id)a3 unitController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 currentValueViewContext:(BOOL)a6 firstWeekday:(int64_t)a7 activityOptions:(unint64_t)a8 currentValueViewCallbacks:(id)a9 isChartSharingContext:(BOOL)a10
{
  v12 = a6;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = _ActivityCurrentValueDataSource;
  v18 = [(HKActivitySummaryAnnotationViewDataSource *)&v24 initWithDisplayTypeController:a3 unitController:a4 wheelchairUseCharacteristicCache:a5 dateCache:0 currentValueViewContext:v12 activityOptions:a8 firstWeekday:a7 isChartSharingContext:a10];
  v19 = v18;
  if (v18)
  {
    [(_ActivityCurrentValueDataSource *)v18 setCurrentValueViewCallbacks:v17];
    v20 = [(_ActivityCurrentValueDataSource *)v19 _buildNoDataView];
    noDataView = v19->_noDataView;
    v19->_noDataView = v20;
  }

  return v19;
}

- (id)leftMarginViewWithOrientation:(int64_t)a3
{
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _ActivityCurrentValueDataSource;
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)&v7 leftMarginViewWithOrientation:a3];
  }

  return v5;
}

- (int64_t)numberOfValuesForAnnotationView:(id)a3
{
  v4 = a3;
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _ActivityCurrentValueDataSource;
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)&v7 numberOfValuesForAnnotationView:v4];
  }

  return v5;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  if ([(_ActivityCurrentValueDataSource *)self currentValueViewHasNoData])
  {
    v7 = [(_ActivityCurrentValueDataSource *)self noDataView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _ActivityCurrentValueDataSource;
    v7 = [(HKActivitySummaryAnnotationViewDataSource *)&v9 valueViewForColumnAtIndex:a3 orientation:a4];
  }

  return v7;
}

- (id)dateViewWithOrientation:(int64_t)a3
{
  v3 = [(_ActivityCurrentValueDataSource *)self _localizedCurrentValueViewDateRange];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v5 = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  [v4 setFont:v5];

  v6 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  [v4 setTextColor:v6];

  [v4 setText:v3];
  [v4 setAdjustsFontSizeToFitWidth:1];

  return v4;
}

- (id)_buildNoDataView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
  [v2 setFont:v3];

  v4 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  [v2 setTextColor:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"CHART_NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [v2 setText:v6];

  return v2;
}

- (id)_localizedCurrentValueViewDateRange
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v4 = [v3 _startDate];
  if (v4)
  {
    v5 = v4;
    v6 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    v7 = [v6 _endDate];

    if (v7)
    {
      v8 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
      v9 = [v8 _startDate];
      v10 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
      v11 = [v10 _endDate];
      v12 = [(_ActivityCurrentValueDataSource *)self _dateRangeFromStartDate:v9 endDate:v11];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [(_ActivityCurrentValueDataSource *)self _dateRangeFromComponents];
LABEL_6:

  return v12;
}

- (id)_dateRangeFromStartDate:(id)a3 endDate:(id)a4
{
  v5 = [HKValueRange valueRangeWithMinValue:a3 maxValue:a4];
  v6 = [(_ActivityCurrentValueDataSource *)self currentValueViewCallbacks];
  v7 = [v6 stringForValueRange:v5 timeScope:{-[HKActivitySummaryAnnotationViewDataSource timeScope](self, "timeScope")}];

  return v7;
}

- (id)_dateRangeFromComponents
{
  v3 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v5 = [v4 _gregorianDateComponents];
  v6 = [v3 dateFromComponents:v5];

  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self timeScope];
  v8 = @"Unknown Date";
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        v9 = v3;
        v10 = 16;
      }

      else
      {
        if (v7 != 7)
        {
          goto LABEL_20;
        }

        v9 = v3;
        v10 = 32;
      }
    }

    else
    {
      v9 = v3;
      v10 = 8;
    }

LABEL_17:
    v11 = 1;
    goto LABEL_18;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v9 = v3;
      v10 = 0x2000;
      v11 = 26;
      goto LABEL_18;
    }

    v9 = v3;
    v10 = 4;
    goto LABEL_17;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [v3 dateByAddingUnit:4 value:10 toDate:v6 options:0];
  }

  v9 = v3;
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