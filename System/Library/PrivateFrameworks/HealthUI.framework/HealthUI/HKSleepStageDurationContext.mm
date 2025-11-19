@interface HKSleepStageDurationContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (HKSleepStageDurationContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 contextChangeDelegate:(id)a6 sleepValue:(int64_t)a7;
- (double)_computeAverageValueFromChartPoints:(id)a3;
- (id)_attributedDurationStringFromDuration:(double)a3 isSelected:(BOOL)a4;
- (id)_attributedTitleOverrideWithDuration:(double)a3;
- (id)_contextItemWithDuration:(double)a3 timeScope:(int64_t)a4;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation HKSleepStageDurationContext

- (HKSleepStageDurationContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 contextChangeDelegate:(id)a6 sleepValue:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v27.receiver = self;
  v27.super_class = HKSleepStageDurationContext;
  v17 = [(HKSleepStageDurationContext *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_overlayChartController, a5);
    objc_storeStrong(&v18->_baseDisplayType, a3);
    objc_storeStrong(&v18->_overlayDisplayType, a4);
    objc_storeWeak(&v18->_contextChangeDelegate, v16);
    v18->_sleepValue = a7;
    v19 = [(HKSleepStageDurationContext *)v18 _contextItemWithDuration:5 timeScope:-1.0];
    lastUpdatedItem = v18->_lastUpdatedItem;
    v18->_lastUpdatedItem = v19;

    v21 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    v22 = [HKUIMetricColors defaultContextViewColorsUsingColor:v21];
    metricColors = v18->_metricColors;
    v18->_metricColors = v22;

    v24 = [HKUIMetricColors sleepColorsForSleepAnalysis:a7];
    selectedMetricColors = v18->_selectedMetricColors;
    v18->_selectedMetricColors = v24;
  }

  return v18;
}

- (id)_contextItemWithDuration:(double)a3 timeScope:(int64_t)a4
{
  v7 = objc_alloc_init(HKDisplayTypeContextItem);
  v8 = [HKSleepUtilities sleepStageContextTitleForSleepValue:[(HKSleepStageDurationContext *)self sleepValue] timeScope:a4];
  [(HKDisplayTypeContextItem *)v7 setTitle:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(HKDisplayTypeContextItem *)v7 title];
  v11 = [v9 hk_chartOverlayAccessibilityIdentifier:v10];
  [(HKDisplayTypeContextItem *)v7 setAccessibilityIdentifier:v11];

  v12 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:{-[HKSleepStageDurationContext sleepValue](self, "sleepValue")}];
  v13 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle.fill" imageColor:v12];
  [(HKDisplayTypeContextItem *)v7 setTitleAccessory:v13];

  v14 = [MEMORY[0x1E69DC888] hk_sleepPrimaryTextColorForSleepAnalysis:{-[HKSleepStageDurationContext sleepValue](self, "sleepValue")}];
  v15 = [HKDisplayTypeContextItemTitleAccessory titleAccessoryWithImagedNamed:@"circle" imageColor:v14];
  [(HKDisplayTypeContextItem *)v7 setSelectedTitleAccessory:v15];

  [(HKDisplayTypeContextItem *)v7 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v7 setUnit:&stru_1F42FFBE0];
  v16 = [(HKSleepStageDurationContext *)self _attributedTitleOverrideWithDuration:a3];
  [(HKDisplayTypeContextItem *)v7 setAttributedLabelTextOverride:v16];

  v17 = [(HKSleepStageDurationContext *)self metricColors];
  [(HKDisplayTypeContextItem *)v7 setMetricColors:v17];

  v18 = [(HKSleepStageDurationContext *)self selectedMetricColors];
  [(HKDisplayTypeContextItem *)v7 setSelectedMetricColors:v18];

  return v7;
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(HKSleepStageDurationContext *)self contextChangeDelegate:a3];
  [v6 setStageDurationContextSelected:v5];
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(HKSleepStageDurationContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(HKSleepStageDurationContext *)self baseDisplayType];
    v15 = [(HKSleepStageDurationContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__HKSleepStageDurationContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B6E70;
    v19[4] = self;
    v21 = a5;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
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

- (double)_computeAverageValueFromChartPoints:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v26 = self;
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
          v13 = [v12 userInfo];
          v14 = [v13 chartPointInfoProvider];
          v15 = [v14 sleepDaySummaries];

          v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v29 + 1) + 8 * j);
                if ([v20 hasSleepStageData])
                {
                  [v6 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
      v21 = [v6 allObjects];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __67__HKSleepStageDurationContext__computeAverageValueFromChartPoints___block_invoke;
      v28[3] = &unk_1E81BAC18;
      v28[4] = v26;
      v22 = [v21 hk_averageUsingEvaluationBlock:v28];
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

- (id)_attributedTitleOverrideWithDuration:(double)a3
{
  v5 = [(HKSleepStageDurationContext *)self _attributedDurationStringFromDuration:0 isSelected:?];
  v6 = [(HKSleepStageDurationContext *)self _attributedDurationStringFromDuration:1 isSelected:a3];
  v7 = [HKDisplayTypeContextItemAttributedLabelOverride attributedLabelOverrideWithText:v5 selectedText:v6];

  return v7;
}

- (id)_attributedDurationStringFromDuration:(double)a3 isSelected:(BOOL)a4
{
  if (a4)
  {
    v6 = [(HKSleepStageDurationContext *)self selectedMetricColors];
    v7 = [v6 contextViewPrimaryTextColor];

    v8 = [(HKSleepStageDurationContext *)self selectedMetricColors];
    [v8 contextViewPrimaryTextColor];
  }

  else
  {
    v9 = [(HKSleepStageDurationContext *)self metricColors];
    v7 = [v9 contextViewPrimaryTextColor];

    v8 = [(HKSleepStageDurationContext *)self metricColors];
    [v8 contextViewSecondaryTextColor];
  }
  v10 = ;

  v11 = [MEMORY[0x1E69DB878] hk_chartOverlaySectionItemValueAndUnitFont];
  v12 = [HKAttributedDurationFormatter formattedValueWithDuration:0 unitsStyle:v11 font:v7 valueColor:v10 unitColor:a3];

  return v12;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end