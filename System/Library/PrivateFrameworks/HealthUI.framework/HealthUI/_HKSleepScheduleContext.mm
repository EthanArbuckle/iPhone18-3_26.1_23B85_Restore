@interface _HKSleepScheduleContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepScheduleContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context contextChangeDelegate:(id)delegate;
- (id)_scheduleContextItemWithPhrase:(id)phrase;
- (id)_schedulePhraseFromChartPoints:(id)points;
- (id)_schedulePhraseFromUpperGoal:(id)goal lowerGoal:(id)lowerGoal;
- (id)_stringFromGoalOffset:(id)offset;
- (id)baseDisplayTypeForOverlay:(int64_t)overlay;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _HKSleepScheduleContext

- (_HKSleepScheduleContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context contextChangeDelegate:(id)delegate
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = _HKSleepScheduleContext;
  v19 = [(_HKSleepScheduleContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, type);
    objc_storeStrong(&v20->_overlayDisplayType, displayType);
    objc_storeStrong(&v20->_overlayChartController, controller);
    v20->_overlayMode = mode;
    v20->_isPrimaryContext = context;
    sleepScheduleType = [MEMORY[0x1E696C2E0] sleepScheduleType];
    monitoringSampleType = v20->_monitoringSampleType;
    v20->_monitoringSampleType = sleepScheduleType;

    objc_storeWeak(&v20->_contextChangeDelegate, delegateCopy);
    v23 = [(_HKSleepScheduleContext *)v20 _scheduleContextItemWithPhrase:&stru_1F42FFBE0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v23;
  }

  return v20;
}

- (id)baseDisplayTypeForOverlay:(int64_t)overlay
{
  if ([(_HKSleepScheduleContext *)self isPrimaryContext])
  {
    baseDisplayType = 0;
  }

  else
  {
    baseDisplayType = [(_HKSleepScheduleContext *)self baseDisplayType];
  }

  return baseDisplayType;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  baseDisplayType = [(_HKSleepScheduleContext *)self baseDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    baseDisplayType2 = [(_HKSleepScheduleContext *)self baseDisplayType];
    overlayChartController = [(_HKSleepScheduleContext *)self overlayChartController];
    v16 = [baseDisplayType2 graphSeriesForTimeScope:scope];
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __110___HKSleepScheduleContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = completionCopy;
    [overlayChartController cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(_HKSleepScheduleContext *)self contextChangeDelegate:change];
  [v6 setScheduleContextSelected:changeCopy];
}

- (id)_schedulePhraseFromChartPoints:(id)points
{
  v32 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v5 = pointsCopy;
  if (!pointsCopy || ![pointsCopy count])
  {
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    anyObject = [v19 localizedStringForKey:@"SLEEP_NO_SCHEDULE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
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
          upperGoal = [v12 upperGoal];
          if (upperGoal)
          {
            v14 = upperGoal;
            lowerGoal = [v12 lowerGoal];

            if (lowerGoal)
            {
              upperGoal2 = [v12 upperGoal];
              lowerGoal2 = [v12 lowerGoal];
              v18 = [(_HKSleepScheduleContext *)self _schedulePhraseFromUpperGoal:upperGoal2 lowerGoal:lowerGoal2];

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
      anyObject = [v26 anyObject];
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

  anyObject = [v20 localizedStringForKey:v22 value:&stru_1F42FFBE0 table:{@"HealthUI-Localizable-Eucalyptus", v5}];

LABEL_24:
  v5 = v25;
LABEL_25:

  return anyObject;
}

- (id)_scheduleContextItemWithPhrase:(id)phrase
{
  phraseCopy = phrase;
  v5 = objc_alloc_init(HKDisplayTypeContextItem);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_SCHEDULE_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  [(HKDisplayTypeContextItem *)v5 setTitle:v7];

  v8 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SLEEP_SCHEDULE_CONTEXT"];
  [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v8];

  [(HKDisplayTypeContextItem *)v5 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v5 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v5 setValue:phraseCopy];

  if ([(_HKSleepScheduleContext *)self overlayMode]== 3)
  {
    contextChangeDelegate = [(_HKSleepScheduleContext *)self contextChangeDelegate];
    if ([contextChangeDelegate shouldHighlightBaseDisplayContext])
    {
      contextChangeDelegate2 = [(_HKSleepScheduleContext *)self contextChangeDelegate];
      baseDisplayIsSchedule = [contextChangeDelegate2 baseDisplayIsSchedule];

      if (baseDisplayIsSchedule)
      {
        hk_sleepOverlayTintColor = [MEMORY[0x1E69DC888] hk_sleepOverlayTintColor];
        goto LABEL_8;
      }
    }

    else
    {
    }

    hk_sleepOverlayTintColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
  }

  else
  {
    hk_sleepOverlayTintColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

LABEL_8:
  v13 = hk_sleepOverlayTintColor;
  v14 = [HKUIMetricColors defaultContextViewColorsUsingColor:hk_sleepOverlayTintColor];
  [(HKDisplayTypeContextItem *)v5 setMetricColors:v14];

  v15 = +[HKUIMetricColors sleepColors];
  [(HKDisplayTypeContextItem *)v5 setSelectedMetricColors:v15];

  return v5;
}

- (id)_schedulePhraseFromUpperGoal:(id)goal lowerGoal:(id)lowerGoal
{
  goalCopy = goal;
  v7 = [(_HKSleepScheduleContext *)self _stringFromGoalOffset:lowerGoal];
  v8 = [(_HKSleepScheduleContext *)self _stringFromGoalOffset:goalCopy];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"SLEEP_SCHEDULE_PHRASE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v12 = [v9 stringWithFormat:v11, v7, v8];

  return v12;
}

- (id)_stringFromGoalOffset:(id)offset
{
  v3 = MEMORY[0x1E695DEE8];
  offsetCopy = offset;
  currentCalendar = [v3 currentCalendar];
  v6 = HKCalendarDateTransformPreceding6PM();
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v8 = (v6)[2](v6, currentCalendar, v7);

  [offsetCopy doubleValue];
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