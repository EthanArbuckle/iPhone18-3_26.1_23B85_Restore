@interface _HKSleepDurationGoalContext
- (HKOverlaySleepRoomContextChangeDelegate)contextChangeDelegate;
- (_HKSleepDurationGoalContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context contextChangeDelegate:(id)delegate;
- (id)_durationContextItemWithGoal:(id)goal;
- (id)_goalGivenChartPoints:(id)points;
- (id)baseDisplayTypeForOverlay:(int64_t)overlay;
- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation _HKSleepDurationGoalContext

- (_HKSleepDurationGoalContext)initWithBaseDisplayType:(id)type overlayDisplayType:(id)displayType overlayChartController:(id)controller overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context contextChangeDelegate:(id)delegate
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = _HKSleepDurationGoalContext;
  v19 = [(_HKSleepDurationGoalContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_baseDisplayType, type);
    objc_storeStrong(&v20->_overlayChartController, controller);
    objc_storeStrong(&v20->_overlayDisplayType, displayType);
    v20->_overlayMode = mode;
    v20->_isPrimaryContext = context;
    v21 = [(_HKSleepDurationGoalContext *)v20 _durationContextItemWithGoal:&stru_1F42FFBE0];
    lastUpdatedItem = v20->_lastUpdatedItem;
    v20->_lastUpdatedItem = v21;

    v23 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696C6B8]];
    monitoringSampleType = v20->_monitoringSampleType;
    v20->_monitoringSampleType = v23;

    objc_storeWeak(&v20->_contextChangeDelegate, delegateCopy);
  }

  return v20;
}

- (id)baseDisplayTypeForOverlay:(int64_t)overlay
{
  if ([(_HKSleepDurationGoalContext *)self isPrimaryContext])
  {
    baseDisplayType = 0;
  }

  else
  {
    baseDisplayType = [(_HKSleepDurationGoalContext *)self baseDisplayType];
  }

  return baseDisplayType;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  overlayDisplayType = [(_HKSleepDurationGoalContext *)self overlayDisplayType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    overlayDisplayType2 = [(_HKSleepDurationGoalContext *)self overlayDisplayType];
    overlayChartController = [(_HKSleepDurationGoalContext *)self overlayChartController];
    v16 = [overlayDisplayType2 graphSeriesForTimeScope:scope];
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114___HKSleepDurationGoalContext_updateContextItemForDateInterval_overlayController_timeScope_resolution_completion___block_invoke;
    v19[3] = &unk_1E81B62D8;
    v19[4] = self;
    v20 = completionCopy;
    [overlayChartController cachedDataForCustomGraphSeries:v16 timeScope:scope resolution:0 startDate:startDate endDate:endDate completion:v19];
  }
}

- (void)overlayStateWillChange:(BOOL)change contextItem:(id)item chartController:(id)controller
{
  changeCopy = change;
  v6 = [(_HKSleepDurationGoalContext *)self contextChangeDelegate:change];
  [v6 setDurationContextSelected:changeCopy];
}

- (id)_durationContextItemWithGoal:(id)goal
{
  goalCopy = goal;
  v5 = objc_alloc_init(HKDisplayTypeContextItem);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_GOAL_CONTEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  [(HKDisplayTypeContextItem *)v5 setTitle:v7];

  v8 = [MEMORY[0x1E696AEC0] hk_chartOverlayAccessibilityIdentifier:@"SLEEP_GOAL_CONTEXT"];
  [(HKDisplayTypeContextItem *)v5 setAccessibilityIdentifier:v8];

  [(HKDisplayTypeContextItem *)v5 setInfoHidden:1];
  [(HKDisplayTypeContextItem *)v5 setUnit:&stru_1F42FFBE0];
  [(HKDisplayTypeContextItem *)v5 setValue:goalCopy];

  if ([(_HKSleepDurationGoalContext *)self overlayMode]== 3)
  {
    contextChangeDelegate = [(_HKSleepDurationGoalContext *)self contextChangeDelegate];
    if ([contextChangeDelegate shouldHighlightBaseDisplayContext])
    {
      contextChangeDelegate2 = [(_HKSleepDurationGoalContext *)self contextChangeDelegate];
      baseDisplayIsSchedule = [contextChangeDelegate2 baseDisplayIsSchedule];

      if ((baseDisplayIsSchedule & 1) == 0)
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

- (id)_goalGivenChartPoints:(id)points
{
  v24 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = pointsCopy;
  if (!pointsCopy || ![pointsCopy count])
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
          goalValue = [v11 goalValue];
          if (goalValue)
          {
            [v5 addObject:goalValue];
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
      anyObject = [v5 anyObject];
      v17 = HKTimePeriodString(anyObject, 12);
      goto LABEL_21;
    }

    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    anyObject = v13;
    v15 = @"SLEEP_MULTIPLE_GOAL_CONTEXT";
  }

  else
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    anyObject = v13;
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