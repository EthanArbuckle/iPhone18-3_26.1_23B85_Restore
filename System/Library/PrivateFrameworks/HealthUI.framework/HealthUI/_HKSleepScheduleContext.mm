@interface _HKSleepScheduleContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepScheduleContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 overlayMode:(int64_t)a6 isPrimaryContext:(BOOL)a7 contextChangeDelegate:(id)a8;
- (id)_scheduleContextItemWithPhrase:(id)a3;
- (id)_schedulePhraseFromChartPoints:(id)a3;
- (id)_schedulePhraseFromUpperGoal:(id)a3 lowerGoal:(id)a4;
- (id)_stringFromGoalOffset:(id)a3;
- (id)baseDisplayTypeForOverlay:(int64_t)a3;
- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKSleepScheduleContext

- (_HKSleepScheduleContext)initWithBaseDisplayType:(id)a3 overlayDisplayType:(id)a4 overlayChartController:(id)a5 overlayMode:(int64_t)a6 isPrimaryContext:(BOOL)a7 contextChangeDelegate:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = _HKSleepScheduleContext;
  v19 = [(_HKSleepScheduleContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, a3);
    objc_storeStrong(&v20->_overlayDisplayType, a4);
    objc_storeStrong(&v20->_overlayChartController, a5);
    v20->_overlayMode = a6;
    v20->_isPrimaryContext = a7;
    v21 = [MEMORY[0x1E696C2E0] sleepScheduleType];
    monitoringSampleType = v20->_monitoringSampleType;
    v20->_monitoringSampleType = v21;

    objc_storeWeak(&v20->_contextChangeDelegate, v18);
    v23 = [(_HKSleepScheduleContext *)v20 _scheduleContextItemWithPhrase:&stru_1F42FFBE0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v23;
  }

  return v20;
}

- (id)baseDisplayTypeForOverlay:(int64_t)a3
{
  if ([(_HKSleepScheduleContext *)self isPrimaryContext])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_HKSleepScheduleContext *)self baseDisplayType];
  }

  return v4;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a7;
  v12 = [(_HKSleepScheduleContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(_HKSleepScheduleContext *)self baseDisplayType];
    v15 = [(_HKSleepScheduleContext *)self overlayChartController];
    v16 = [v14 graphSeriesForTimeScope:a5];
    v17 = [v10 startDate];
    v18 = [v10 endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110___HKSleepScheduleContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = v11;
    [v15 cachedDataForCustomGraphSeries:v16 timeScope:a5 resolution:0 startDate:v17 endDate:v18 completion:v19];
  }
}

- (void)overlayStateWillChange:(BOOL)a3 contextItem:(id)a4 chartController:(id)a5
{
  v5 = a3;
  v6 = [(_HKSleepScheduleContext *)self contextChangeDelegate:a3];
  [v6 setScheduleContextSelected:v5];
}

- (id)_schedulePhraseFromChartPoints:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v19 localizedStringForKey:@"SLEEP_NO_SCHEDULE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    goto LABEL_25;
  }

  v25 = v5;
  v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 upperGoal];
          if (v13)
          {
            v14 = v13;
            v15 = [v12 lowerGoal];

            if (v15)
            {
              v16 = [v12 upperGoal];
              v17 = [v12 lowerGoal];
              v18 = [(_HKSleepScheduleContext *)self _schedulePhraseFromUpperGoal:v16 lowerGoal:v17];

              if (v18)
              {
                [v26 addObject:v18];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v19 = v26;
  if ([v26 count])
  {
    if ([v26 count] < 2)
    {
      v23 = [v26 anyObject];
      goto LABEL_24;
    }

    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = v20;
    v22 = @"SLEEP_MULTIPLE_SCHEDULES";
  }

  else
  {
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v21 = v20;
    v22 = @"SLEEP_NO_SCHEDULE";
  }

  v23 = [v20 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:{@"HealthUI-Localizable-Eucalyptus", v5}];

LABEL_24:
  v5 = v25;
LABEL_25:

  return v23;
}

- (id)_scheduleContextItemWithPhrase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKDisplayTypeContextItem);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_SCHEDULE_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  [(HKDisplayTypeContextItem *)v5 setTitle:v7];

  v8 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SLEEP_SCHEDULE_CONTEXT"];
  [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v8];

  [(HKDisplayTypeContextItem *)v5 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v5 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v5 setValue:v4];

  if ([(_HKSleepScheduleContext *)self overlayMode]== 3)
  {
    v9 = [(_HKSleepScheduleContext *)self contextChangeDelegate];
    if ([v9 shouldHighlightBaseDisplayContext])
    {
      v10 = [(_HKSleepScheduleContext *)self contextChangeDelegate];
      v11 = [v10 baseDisplayIsSchedule];

      if (v11)
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

- (id)_schedulePhraseFromUpperGoal:(id)a3 lowerGoal:(id)a4
{
  v6 = a3;
  v7 = [(_HKSleepScheduleContext *)self _stringFromGoalOffset:a4];
  v8 = [(_HKSleepScheduleContext *)self _stringFromGoalOffset:v6];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"SLEEP_SCHEDULE_PHRASE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v12 = [v9 stringWithFormat:v11, v7, v8];

  return v12;
}

- (id)_stringFromGoalOffset:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = HKCalendarDateTransformPreceding6PM();
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v8 = (v6)[2](v6, v5, v7);

  [v4 doubleValue];
  v10 = v9;

  v11 = [v8 dateByAddingTimeInterval:v10];
  v12 = HKLocalizedStringForDateAndTemplate(v11, 27);

  return v12;
}

- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextChangeDelegate);

  return WeakRetained;
}

@end