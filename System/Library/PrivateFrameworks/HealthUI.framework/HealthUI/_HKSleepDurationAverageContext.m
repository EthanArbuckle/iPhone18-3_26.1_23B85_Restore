@interface _HKSleepDurationAverageContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepDurationAverageContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 useInBedAverage:(BOOL)a6 contextChangeDelegate:(id)a7 overlayAverageSeries:(id)a8 averageChartFormatter:(id)a9;
- (double)_averageValueFromDaySummaries:(id)a3 useInBedAverage:(BOOL)a4;
- (id)_attributedDurationStringFromDuration:(double)a3 isSelected:(BOOL)a4;
- (id)_attributedTitleOverrideWithDuration:(double)a3;
- (id)_averagePhraseFromAverageValue:(double)a3 shortForm:(BOOL)a4 timeScope:(int64_t)a5;
- (id)_contextItemWithDuration:(double)a3 timeScope:(int64_t)a4;
- (id)_findSleepDurationSeriesForTimeScope:(int64_t)a3;
- (void)_updateRangeDataWithChartPoints:(id)a3 useInBedAverage:(BOOL)a4 isHighlighted:(BOOL)a5 timeScope:(int64_t)a6;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKSleepDurationAverageContext

- (_HKSleepDurationAverageContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 useInBedAverage:(BOOL)a6 contextChangeDelegate:(id)a7 overlayAverageSeries:(id)a8 averageChartFormatter:(id)a9
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v32.receiver = self;
  v32.super_class = _HKSleepDurationAverageContext;
  v19 = [(_HKSleepDurationAverageContext *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, a3);
    objc_storeStrong(&v20->_overlayDisplayType, a4);
    objc_storeStrong(&v20->_overlayChartController, a5);
    v20->_useInBedAverage = a6;
    objc_storeWeak(&v20->_contextChangeDelegate, v16);
    objc_storeStrong(&v20->_overlayAverageSeries, a8);
    objc_storeStrong(&v20->_averageChartFormatter, a9);
    v21 = [(_HKSleepDurationAverageContext *)v20 _contextItemWithDuration:5 timeScope:-1.0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v21;

    v23 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    v24 = [HKUIMetricColors defaultContextViewColorsUsingColor:v23];
    metricColors = v20->_metricColors;
    v20->_metricColors = v24;

    v26 = +[HKUIMetricColors sleepColors];
    selectedMetricColors = v20->_selectedMetricColors;
    v20->_selectedMetricColors = v26;
  }

  return v20;
}

- (id)_contextItemWithDuration:(double)a3 timeScope:(int64_t)a4
{
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  v8 = [(_HKSleepDurationAverageContext *)self useInBedAverage];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = v9;
  if (a4 == 6)
  {
    if (v8)
    {
      v11 = @"TIME_IN_BED";
    }

    else
    {
      v11 = @"TIME_ASLEEP";
    }

    v12 = @"HealthUI-Localizable";
  }

  else
  {
    if (v8)
    {
      v11 = @"SLEEP_AVERAGE_IN_BED";
    }

    else
    {
      v11 = @"SLEEP_AVERAGE_ASLEEP";
    }

    v12 = @"HealthUI-Localizable-Eucalyptus";
  }

  v13 = [v9 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:v12];
  [(HKDisplayTypeContextItem *)v7 setTitle:v13];

  v14 = MEMORY[0x1E696AEC0];
  if ([(_HKSleepDurationAverageContext *)self useInBedAverage])
  {
    v15 = @"TIME_IN_BED";
  }

  else
  {
    v15 = @"TIME_ASLEEP";
  }

  v16 = [v14 hk_chartOverlayAccessibilityIdentifier:v15];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v16];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUnit:&stru_1F42FFBE0];
  v17 = [(_HKSleepDurationAverageContext *)self _attributedTitleOverrideWithDuration:a3];
  [(HKDisplayTypeContextItem *)v7 setAttributedLabelTextOverride:v17];

  v18 = [(_HKSleepDurationAverageContext *)self metricColors];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:v18];

  v19 = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:v19];

  return v7;
}

- (id)_attributedTitleOverrideWithDuration:(double)a3
{
  v5 = [(_HKSleepDurationAverageContext *)self _attributedDurationStringFromDuration:0 isSelected:?];
  v6 = [(_HKSleepDurationAverageContext *)self _attributedDurationStringFromDuration:1 isSelected:a3];
  v7 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v5 selectedText:v6];

  return v7;
}

- (id)_attributedDurationStringFromDuration:(double)a3 isSelected:(BOOL)a4
{
  if (a4)
  {
    v6 = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
    v7 = [v6 contextViewPrimaryTextColor];

    v8 = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
    [v8 contextViewPrimaryTextColor];
  }

  else
  {
    v9 = [(_HKSleepDurationAverageContext *)self metricColors];
    v7 = [v9 contextViewPrimaryTextColor];

    v8 = [(_HKSleepDurationAverageContext *)self metricColors];
    [v8 contextViewSecondaryTextColor];
  }
  v10 = ;

  v11 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v12 = [HKAttributedDurationFormatter formattedValueWithDuration:0 unitsStyle:v11 font:v7 valueColor:v10 unitColor:a3];

  return v12;
}

- (double)_averageValueFromDaySummaries:(id)a3 useInBedAverage:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x1E696C478] sleepMetricsForDaySummaries:v6];
    v8 = v7;
    if (a4)
    {
      [v7 averageInBedDuration];
    }

    else
    {
      [v7 averageSleepDuration];
    }
    v10 = ;
    [v10 _value];
    v9 = v11;

    if (v9 == 0.0)
    {
      v9 = -1.0;
    }
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

- (id)_averagePhraseFromAverageValue:(double)a3 shortForm:(BOOL)a4 timeScope:(int64_t)a5
{
  if (a3 == -1.0)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", a5}];
    v6 = [v5 localizedStringForKey:@"SLEEP_DURATION_NO_DATA_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  }

  else
  {
    if (a4)
    {
      v7 = 8;
    }

    else
    {
      v7 = 12;
    }

    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v6 = HKTimePeriodString(v5, v7);
  }

  v8 = v6;

  return v8;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(_HKSleepDurationAverageContext *)self overlayDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(_HKSleepDurationAverageContext *)self overlayDisplayType];
    v15 = [(_HKSleepDurationAverageContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __117___HKSleepDurationAverageContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    v21 = a5;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

- (void)_updateRangeDataWithChartPoints:(id)a3 useInBedAverage:(BOOL)a4 isHighlighted:(BOOL)a5 timeScope:(int64_t)a6
{
  v25 = a6;
  v26 = a5;
  v6 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v27 + 1) + 8 * v14) userInfo];
        v16 = [v15 chartPointInfoProvider];
        v17 = [v16 sleepDaySummaries];
        [v9 addObjectsFromArray:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v18 = [v9 count];
  [(_HKSleepDurationAverageContext *)self _averageValueFromDaySummaries:v9 useInBedAverage:v6];
  v20 = v19;
  if (v19 >= 0.0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(_HKSleepDurationAverageContext *)self averageChartFormatter];
  [v22 setCurrentVisibleAverageNumber:v21 isTimeInBed:v6 isHighlighted:v26 useAverageCopy:v18 > 1];

  if (v26)
  {
    v23 = [(_HKSleepDurationAverageContext *)self overlayAverageSeries];
    [v23 setAverageValue:v20];

    v24 = [(_HKSleepDurationAverageContext *)self _contextItemWithDuration:v25 timeScope:v20];
    [(_HKSleepDurationAverageContext *)self setLastUpdatedItem:v24];
  }
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v7 = a5;
  v8 = [(_HKSleepDurationAverageContext *)self contextChangeDelegate];
  [v8 setDurationContextSelected:v5];

  v9 = [v7 selectedTimeScopeController];

  v10 = [v9 selectedTimeScope];
  v11 = [(_HKSleepDurationAverageContext *)self _findSleepDurationSeriesForTimeScope:v10];
  if (v11)
  {
    v12 = v11;
    if ([(_HKSleepDurationAverageContext *)self useInBedAverage])
    {
      [v12 setHideAsleepData:v5];
    }

    else
    {
      [v12 setHideInBedData:v5];
    }

    v11 = v12;
  }
}

- (id)_findSleepDurationSeriesForTimeScope:(int64_t)a3
{
  v5 = [(_HKSleepDurationAverageContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(_HKSleepDurationAverageContext *)self baseDisplayType];
    v8 = [v7 graphSeriesForTimeScope:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end