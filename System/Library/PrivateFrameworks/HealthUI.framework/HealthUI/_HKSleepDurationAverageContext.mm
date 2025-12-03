@interface _HKSleepDurationAverageContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepDurationAverageContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller useInBedAverage:(BOOL)average contextChangeDelegate:(id)delegate overlayAverageSeries:(id)series averageChartFormatter:(id)formatter;
- (double)_averageValueFromDaySummaries:(id)summaries useInBedAverage:(BOOL)average;
- (id)_attributedDurationStringFromDuration:(double)duration isSelected:(BOOL)selected;
- (id)_attributedTitleOverrideWithDuration:(double)duration;
- (id)_averagePhraseFromAverageValue:(double)value shortForm:(BOOL)form timeScope:(int64_t)scope;
- (id)_contextItemWithDuration:(double)duration timeScope:(int64_t)scope;
- (id)_findSleepDurationSeriesForTimeScope:(int64_t)scope;
- (void)_updateRangeDataWithChartPoints:(id)points useInBedAverage:(BOOL)average isHighlighted:(BOOL)highlighted timeScope:(int64_t)scope;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _HKSleepDurationAverageContext

- (_HKSleepDurationAverageContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller useInBedAverage:(BOOL)average contextChangeDelegate:(id)delegate overlayAverageSeries:(id)series averageChartFormatter:(id)formatter
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  delegateCopy = delegate;
  seriesCopy = series;
  formatterCopy = formatter;
  v32.receiver = self;
  v32.super_class = _HKSleepDurationAverageContext;
  v19 = [(_HKSleepDurationAverageContext *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, type);
    objc_storeStrong(&v20->_overlayDisplayType, displayType);
    objc_storeStrong(&v20->_overlayChartController, controller);
    v20->_useInBedAverage = average;
    objc_storeWeak(&v20->_contextChangeDelegate, delegateCopy);
    objc_storeStrong(&v20->_overlayAverageSeries, series);
    objc_storeStrong(&v20->_averageChartFormatter, formatter);
    v21 = [(_HKSleepDurationAverageContext *)v20 _contextItemWithDuration:5 timeScope:-1.0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v21;

    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    v24 = [HKUIMetricColors defaultContextViewColorsUsingColor:tertiarySystemBackgroundColor];
    metricColors = v20->_metricColors;
    v20->_metricColors = v24;

    v26 = +[HKUIMetricColors sleepColors];
    selectedMetricColors = v20->_selectedMetricColors;
    v20->_selectedMetricColors = v26;
  }

  return v20;
}

- (id)_contextItemWithDuration:(double)duration timeScope:(int64_t)scope
{
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  useInBedAverage = [(_HKSleepDurationAverageContext *)self useInBedAverage];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = v9;
  if (scope == 6)
  {
    if (useInBedAverage)
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
    if (useInBedAverage)
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
  v17 = [(_HKSleepDurationAverageContext *)self _attributedTitleOverrideWithDuration:duration];
  [(HKDisplayTypeContextItem *)v7 setAttributedLabelTextOverride:v17];

  metricColors = [(_HKSleepDurationAverageContext *)self metricColors];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:metricColors];

  selectedMetricColors = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:selectedMetricColors];

  return v7;
}

- (id)_attributedTitleOverrideWithDuration:(double)duration
{
  v5 = [(_HKSleepDurationAverageContext *)self _attributedDurationStringFromDuration:0 isSelected:?];
  v6 = [(_HKSleepDurationAverageContext *)self _attributedDurationStringFromDuration:1 isSelected:duration];
  v7 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v5 selectedText:v6];

  return v7;
}

- (id)_attributedDurationStringFromDuration:(double)duration isSelected:(BOOL)selected
{
  if (selected)
  {
    selectedMetricColors = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
    contextViewPrimaryTextColor = [selectedMetricColors contextViewPrimaryTextColor];

    selectedMetricColors2 = [(_HKSleepDurationAverageContext *)self selectedMetricColors];
    [selectedMetricColors2 contextViewPrimaryTextColor];
  }

  else
  {
    metricColors = [(_HKSleepDurationAverageContext *)self metricColors];
    contextViewPrimaryTextColor = [metricColors contextViewPrimaryTextColor];

    selectedMetricColors2 = [(_HKSleepDurationAverageContext *)self metricColors];
    [selectedMetricColors2 contextViewSecondaryTextColor];
  }
  v10 = ;

  hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v12 = [HKAttributedDurationFormatter formattedValueWithDuration:0 unitsStyle:hk_chartOverlaySectionItemValueAndUnitFont font:contextViewPrimaryTextColor valueColor:v10 unitColor:duration];

  return v12;
}

- (double)_averageValueFromDaySummaries:(id)summaries useInBedAverage:(BOOL)average
{
  summariesCopy = summaries;
  v6 = summariesCopy;
  if (summariesCopy && [summariesCopy count])
  {
    v7 = [MEMORY[0x1E696C478] sleepMetricsForDaySummaries:v6];
    v8 = v7;
    if (average)
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

- (id)_averagePhraseFromAverageValue:(double)value shortForm:(BOOL)form timeScope:(int64_t)scope
{
  if (value == -1.0)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.HealthUI", scope}];
    v6 = [v5 localizedStringForKey:@"SLEEP_DURATION_NO_DATA_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  }

  else
  {
    if (form)
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

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  overlayDisplayType = [(_HKSleepDurationAverageContext *)self overlayDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    overlayDisplayType2 = [(_HKSleepDurationAverageContext *)self overlayDisplayType];
    overlayChartController = [(_HKSleepDurationAverageContext *)self overlayChartController];
    v16 = [overlayDisplayType2 graphSeriesForTimeScope:scope];
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __117___HKSleepDurationAverageContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    scopeCopy = scope;
    v20 = completionCopy;
    [overlayChartController cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

- (void)_updateRangeDataWithChartPoints:(id)points useInBedAverage:(BOOL)average isHighlighted:(BOOL)highlighted timeScope:(int64_t)scope
{
  scopeCopy = scope;
  highlightedCopy = highlighted;
  averageCopy = average;
  v32 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = pointsCopy;
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

        userInfo = [*(*(&v27 + 1) + 8 * v14) userInfo];
        chartPointInfoProvider = [userInfo chartPointInfoProvider];
        sleepDaySummaries = [chartPointInfoProvider sleepDaySummaries];
        [v9 addObjectsFromArray:sleepDaySummaries];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v18 = [v9 count];
  [(_HKSleepDurationAverageContext *)self _averageValueFromDaySummaries:v9 useInBedAverage:averageCopy];
  v20 = v19;
  if (v19 >= 0.0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  }

  else
  {
    v21 = 0;
  }

  averageChartFormatter = [(_HKSleepDurationAverageContext *)self averageChartFormatter];
  [averageChartFormatter setCurrentVisibleAverageNumber:v21 isTimeInBed:averageCopy isHighlighted:highlightedCopy useAverageCopy:v18 > 1];

  if (highlightedCopy)
  {
    overlayAverageSeries = [(_HKSleepDurationAverageContext *)self overlayAverageSeries];
    [overlayAverageSeries setAverageValue:v20];

    v24 = [(_HKSleepDurationAverageContext *)self _contextItemWithDuration:scopeCopy timeScope:v20];
    [(_HKSleepDurationAverageContext *)self setLastUpdatedItem:v24];
  }
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  controllerCopy = controller;
  contextChangeDelegate = [(_HKSleepDurationAverageContext *)self contextChangeDelegate];
  [contextChangeDelegate setDurationContextSelected:changeCopy];

  selectedTimeScopeController = [controllerCopy selectedTimeScopeController];

  selectedTimeScope = [selectedTimeScopeController selectedTimeScope];
  v11 = [(_HKSleepDurationAverageContext *)self _findSleepDurationSeriesForTimeScope:selectedTimeScope];
  if (v11)
  {
    v12 = v11;
    if ([(_HKSleepDurationAverageContext *)self useInBedAverage])
    {
      [v12 setHideAsleepData:changeCopy];
    }

    else
    {
      [v12 setHideInBedData:changeCopy];
    }

    v11 = v12;
  }
}

- (id)_findSleepDurationSeriesForTimeScope:(int64_t)scope
{
  baseDisplayType = [(_HKSleepDurationAverageContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    baseDisplayType2 = [(_HKSleepDurationAverageContext *)self baseDisplayType];
    v8 = [baseDisplayType2 graphSeriesForTimeScope:scope];
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