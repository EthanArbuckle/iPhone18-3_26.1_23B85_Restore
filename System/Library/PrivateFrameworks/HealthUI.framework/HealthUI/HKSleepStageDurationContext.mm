@interface HKSleepStageDurationContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (HKSleepStageDurationContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller contextChangeDelegate:(id)delegate sleepValue:(int64_t)value;
- (double)_computeAverageValueFromChartPoints:(id)points;
- (id)_attributedDurationStringFromDuration:(double)duration isSelected:(BOOL)selected;
- (id)_attributedTitleOverrideWithDuration:(double)duration;
- (id)_contextItemWithDuration:(double)duration timeScope:(int64_t)scope;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation HKSleepStageDurationContext

- (HKSleepStageDurationContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller contextChangeDelegate:(id)delegate sleepValue:(int64_t)value
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = HKSleepStageDurationContext;
  v17 = [(HKSleepStageDurationContext *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_overlayChartController, controller);
    objc_storeStrong(&v18->_baseDisplayType, type);
    objc_storeStrong(&v18->_overlayDisplayType, displayType);
    objc_storeWeak(&v18->_contextChangeDelegate, delegateCopy);
    v18->_sleepValue = value;
    v19 = [(HKSleepStageDurationContext *)v18 _contextItemWithDuration:5 timeScope:-1.0];
    lastUpdatedItem = v18->_lastUpdatedItem;
    v18->_lastUpdatedItem = v19;

    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    v22 = [HKUIMetricColors defaultContextViewColorsUsingColor:tertiarySystemBackgroundColor];
    metricColors = v18->_metricColors;
    v18->_metricColors = v22;

    v24 = [HKUIMetricColors sleepColorsForSleepAnalysis:value];
    selectedMetricColors = v18->_selectedMetricColors;
    v18->_selectedMetricColors = v24;
  }

  return v18;
}

- (id)_contextItemWithDuration:(double)duration timeScope:(int64_t)scope
{
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  v8 = [HKSleepUtilities sleepStageContextTitleForSleepValue:[(HKSleepStageDurationContext *)self sleepValue] timeScope:scope];
  [(HKDisplayTypeContextItem *)v7 setTitle:v8];

  v9 = MEMORY[0x1E696AEC0];
  title = [(HKDisplayTypeContextItem *)v7 title];
  v11 = [v9 hk_chartOverlayAccessibilityIdentifier:title];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v11];

  v12 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:{-[HKSleepStageDurationContext sleepValue](self, "sleepValue")}];
  v13 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle.fill" imageColor:v12];
  [(HKDisplayTypeContextItem *)v7 setTitleAccessory:v13];

  v14 = [MEMORY[0x1E69DC888] hk_sleepPrimaryTextColorForSleepAnalysis:{-[HKSleepStageDurationContext sleepValue](self, "sleepValue")}];
  v15 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle" imageColor:v14];
  [(HKDisplayTypeContextItem *)v7 setSelectedTitleAccessory:v15];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUnit:&stru_1F42FFBE0];
  v16 = [(HKSleepStageDurationContext *)self _attributedTitleOverrideWithDuration:duration];
  [(HKDisplayTypeContextItem *)v7 setAttributedLabelTextOverride:v16];

  metricColors = [(HKSleepStageDurationContext *)self metricColors];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:metricColors];

  selectedMetricColors = [(HKSleepStageDurationContext *)self selectedMetricColors];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:selectedMetricColors];

  return v7;
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(HKSleepStageDurationContext *)self contextChangeDelegate:change];
  [v6 setStageDurationContextSelected:changeCopy];
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  baseDisplayType = [(HKSleepStageDurationContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    baseDisplayType2 = [(HKSleepStageDurationContext *)self baseDisplayType];
    overlayChartController = [(HKSleepStageDurationContext *)self overlayChartController];
    v16 = [baseDisplayType2 graphSeriesForTimeScope:scope];
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__HKSleepStageDurationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    scopeCopy = scope;
    v20 = completionCopy;
    [overlayChartController cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

uint64_t __114__HKSleepStageDurationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _computeAverageValueFromChartPoints:a2];
    v4 = [*(a1 + 32) _contextItemWithDuration:*(a1 + 48) timeScope:?];
    [*(a1 + 32) setLastUpdatedItem:v4];

    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (double)_computeAverageValueFromChartPoints:(id)points
{
  v39 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v5 = pointsCopy;
  if (pointsCopy && [pointsCopy count])
  {
    selfCopy = self;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          userInfo = [v12 userInfo];
          chartPointInfoProvider = [userInfo chartPointInfoProvider];
          sleepDaySummaries = [chartPointInfoProvider sleepDaySummaries];

          v16 = [sleepDaySummaries countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(sleepDaySummaries);
                }

                v20 = *(*(&v29 + 1) + 8 * j);
                if ([v20 hasSleepStageData])
                {
                  [v6 addObject:v20];
                }
              }

              v17 = [sleepDaySummaries countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v17);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      allObjects = [v6 allObjects];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__HKSleepStageDurationContext__computeAverageValueFromChartPoints___block_invoke;
      v28[3] = &unk_1E81BAC18;
      v28[4] = selfCopy;
      v22 = [allObjects hk_averageUsingEvaluationBlock:v28];
      [v22 doubleValue];
      v24 = v23;
    }

    else
    {
      v24 = -1.0;
    }

    v5 = v27;
  }

  else
  {
    v24 = -1.0;
  }

  return v24;
}

double __67__HKSleepStageDurationContext__computeAverageValueFromChartPoints___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 hkui_durationForSleepCategoryValue:{objc_msgSend(v2, "sleepValue")}];
  v5 = v4;

  return v5;
}

- (id)_attributedTitleOverrideWithDuration:(double)duration
{
  v5 = [(HKSleepStageDurationContext *)self _attributedDurationStringFromDuration:0 isSelected:?];
  v6 = [(HKSleepStageDurationContext *)self _attributedDurationStringFromDuration:1 isSelected:duration];
  v7 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v5 selectedText:v6];

  return v7;
}

- (id)_attributedDurationStringFromDuration:(double)duration isSelected:(BOOL)selected
{
  if (selected)
  {
    selectedMetricColors = [(HKSleepStageDurationContext *)self selectedMetricColors];
    contextViewPrimaryTextColor = [selectedMetricColors contextViewPrimaryTextColor];

    selectedMetricColors2 = [(HKSleepStageDurationContext *)self selectedMetricColors];
    [selectedMetricColors2 contextViewPrimaryTextColor];
  }

  else
  {
    metricColors = [(HKSleepStageDurationContext *)self metricColors];
    contextViewPrimaryTextColor = [metricColors contextViewPrimaryTextColor];

    selectedMetricColors2 = [(HKSleepStageDurationContext *)self metricColors];
    [selectedMetricColors2 contextViewSecondaryTextColor];
  }
  v10 = ;

  hk_chartOverlaySectionItemValueAndUnitFont = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v12 = [HKAttributedDurationFormatter formattedValueWithDuration:0 unitsStyle:hk_chartOverlaySectionItemValueAndUnitFont font:contextViewPrimaryTextColor valueColor:v10 unitColor:duration];

  return v12;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end