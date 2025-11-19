@interface _HKSleepDurationGoalContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepDurationGoalContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 overlayMode:(int64_t)a6 isPrimaryContext:(BOOL)a7 contextChangeDelegate:(id)a8;
- (id)_durationContextItemWithGoal:(id)a3;
- (id)_goalGivenChartPoints:(id)a3;
- (id)baseDisplayTypeForOverlay:(int64_t)a3;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKSleepDurationGoalContext

- (_HKSleepDurationGoalContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 overlayMode:(int64_t)a6 isPrimaryContext:(BOOL)a7 contextChangeDelegate:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = _HKSleepDurationGoalContext;
  v19 = [(_HKSleepDurationGoalContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, a3);
    objc_storeStrong(&v20->_overlayChartController, a5);
    objc_storeStrong(&v20->_overlayDisplayType, a4);
    v20->_overlayMode = a6;
    v20->_isPrimaryContext = a7;
    v21 = [(_HKSleepDurationGoalContext *)v20 _durationContextItemWithGoal:&stru_1F42FFBE0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v21;

    v23 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696C6B8]];
    monitoringSampleType = v20->_monitoringSampleType;
    v20->_monitoringSampleType = v23;

    objc_storeWeak(&v20->_contextChangeDelegate, v18);
  }

  return v20;
}

- (id)baseDisplayTypeForOverlay:(int64_t)a3
{
  if ([(_HKSleepDurationGoalContext *)self isPrimaryContext])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_HKSleepDurationGoalContext *)self baseDisplayType];
  }

  return v4;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(_HKSleepDurationGoalContext *)self overlayDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(_HKSleepDurationGoalContext *)self overlayDisplayType];
    v15 = [(_HKSleepDurationGoalContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114___HKSleepDurationGoalContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(_HKSleepDurationGoalContext *)self contextChangeDelegate:a3];
  [v6 setDurationContextSelected:v5];
}

- (id)_durationContextItemWithGoal:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKDisplayTypeContextItem);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_GOAL_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  [(HKDisplayTypeContextItem *)v5 setTitle:v7];

  v8 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SLEEP_GOAL_CONTEXT"];
  [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v8];

  [(HKDisplayTypeContextItem *)v5 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v5 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v5 setValue:v4];

  if ([(_HKSleepDurationGoalContext *)self overlayMode]== 3)
  {
    v9 = [(_HKSleepDurationGoalContext *)self contextChangeDelegate];
    if ([v9 shouldHighlightBaseDisplayContext])
    {
      v10 = [(_HKSleepDurationGoalContext *)self contextChangeDelegate];
      v11 = [v10 baseDisplayIsSchedule];

      if ((v11 & 1) == 0)
      {
        v12 = [MEMORY[0x1E69DC888] hk_sleepOverlayTintColor];
        goto LABEL_8;
      }
    }

    else
    {
    }

    v12 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

LABEL_8:
  v13 = v12;
  v14 = [HKUIMetricColors defaultContextViewColorsUsingColor:v12];
  [(HKDisplayTypeContextItem *)v5 setMetricColors:v14];

  v15 = +[HKUIMetricColors sleepColors];
  [(HKDisplayTypeContextItem *)v5 setSelectedMetricColors:v15];

  return v5;
}

- (id)_goalGivenChartPoints:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v5 localizedStringForKey:@"SLEEP_NO_GOAL_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    goto LABEL_22;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 goalValue];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    if ([v5 count] < 2)
    {
      v14 = [v5 anyObject];
      v17 = HKTimePeriodString(v14, 12);
      goto LABEL_21;
    }

    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = v13;
    v15 = @"SLEEP_MULTIPLE_GOAL_CONTEXT";
  }

  else
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = v13;
    v15 = @"SLEEP_NO_GOAL_CONTEXT";
  }

  v17 = [v13 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:{@"HealthUI-Localizable-Eucalyptus", v19}];
LABEL_21:
  v16 = v17;

LABEL_22:

  return v16;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end