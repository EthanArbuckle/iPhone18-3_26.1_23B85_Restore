@interface HKActivitySummaryAnnotationViewDataSource
- (BOOL)_hasRingView;
- (BOOL)showSeparators;
- (HKActivitySummaryAnnotationViewDataSource)initWithDisplayTypeController:(id)controller unitController:(id)unitController wheelchairUseCharacteristicCache:(id)cache dateCache:(id)dateCache currentValueViewContext:(BOOL)context activityOptions:(unint64_t)options firstWeekday:(int64_t)weekday isChartSharingContext:(BOOL)self0;
- (id)_bodyColor;
- (id)_buildColumnPositionsFromOptions:(unint64_t)options;
- (id)_columnViewWithTitle:(id)title titleColor:(id)color body:(id)body bodyColor:(id)bodyColor alignment:(int64_t)alignment;
- (id)_dateColumnWithDateComponents:(id)components calendar:(id)calendar orientation:(int64_t)orientation;
- (id)_dateTextForDateComponents:(id)components calendar:(id)calendar timeScope:(int64_t)scope;
- (id)_energyColumn;
- (id)_energyColumnAsNumber;
- (id)_energyColumnValueString;
- (id)_exerciseColumn;
- (id)_exerciseColumnAsNumber;
- (id)_exerciseColumnValueString;
- (id)_moveColumn;
- (id)_moveColumnAsNumber;
- (id)_moveColumnValueString;
- (id)_moveTimeColumn;
- (id)_moveTimeColumnAsNumber;
- (id)_moveTimeColumnValueString;
- (id)_pauseColumn;
- (id)_pauseTextColorForTimeScope:(int64_t)scope;
- (id)_pauseTextForTimeScope:(int64_t)scope;
- (id)_pausedActivityDayPeriod;
- (id)_pausedActivityLongPeriod;
- (id)_percentStringWithQuantity:(id)quantity goalQuantity:(id)goalQuantity;
- (id)_ringColumn;
- (id)_standColumn;
- (id)_standColumnAsNumber;
- (id)_standColumnValueString;
- (id)_valueUnitAttributedStringWithValueString:(id)string unitString:(id)unitString;
- (id)_valueWithTitle:(id)title attributedValue:(id)value valueAsNumber:(id)number;
- (id)_weekContainingDateComponents:(id)components calendar:(id)calendar timeScope:(int64_t)scope;
- (id)activityExerciseTitle;
- (id)activityMoveTitle;
- (id)activityStandTitle;
- (id)dateViewWithOrientation:(int64_t)orientation;
- (id)descriptionsForActivitySummary;
- (id)leftMarginViewWithOrientation:(int64_t)orientation;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (id)viewForColumnType:(unint64_t)type;
- (int64_t)numberOfValuesForAnnotationView:(id)view;
- (void)useStandardAnnotationViewDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution healthStore:(id)store viewController:(id)controller;
@end

@implementation HKActivitySummaryAnnotationViewDataSource

- (HKActivitySummaryAnnotationViewDataSource)initWithDisplayTypeController:(id)controller unitController:(id)unitController wheelchairUseCharacteristicCache:(id)cache dateCache:(id)dateCache currentValueViewContext:(BOOL)context activityOptions:(unint64_t)options firstWeekday:(int64_t)weekday isChartSharingContext:(BOOL)self0
{
  controllerCopy = controller;
  unitControllerCopy = unitController;
  cacheCopy = cache;
  dateCacheCopy = dateCache;
  v27.receiver = self;
  v27.super_class = HKActivitySummaryAnnotationViewDataSource;
  v20 = [(HKActivitySummaryAnnotationViewDataSource *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_displayTypeController, controller);
    objc_storeStrong(&v21->_unitController, unitController);
    objc_storeStrong(&v21->_wheelchairUseCharacteristicCache, cache);
    objc_storeStrong(&v21->_dateCache, dateCache);
    v21->_currentValueViewContext = context;
    v21->_firstWeekday = weekday;
    v22 = [(HKActivitySummaryAnnotationViewDataSource *)v21 _buildColumnPositionsFromOptions:options];
    columnsForPosition = v21->_columnsForPosition;
    v21->_columnsForPosition = v22;

    standardAnnotationDataSource = v21->_standardAnnotationDataSource;
    v21->_standardAnnotationDataSource = 0;

    v21->_useStandardAnnotationDataSource = 0;
    v21->_isChartSharingContext = sharingContext;
  }

  return v21;
}

- (void)useStandardAnnotationViewDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution healthStore:(id)store viewController:(id)controller
{
  self->_useStandardAnnotationDataSource = 1;
  controllerCopy = controller;
  storeCopy = store;
  typeCopy = type;
  contextCopy = context;
  standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
  [standardAnnotationDataSource updateWithSelectionContext:contextCopy displayType:typeCopy timeScope:scope resolution:resolution healthStore:storeCopy viewController:controllerCopy];
}

- (id)_buildColumnPositionsFromOptions:(unint64_t)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (optionsCopy)
  {
    if ((optionsCopy & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v4 addObject:&unk_1F43839B8];
    if ((optionsCopy & 2) != 0)
    {
LABEL_3:
      if ((optionsCopy & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [v5 addObject:&unk_1F43839D0];
  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    [v5 addObject:&unk_1F43839E8];
  }

LABEL_5:
  v6 = [v5 copy];

  return v6;
}

- (id)dateViewWithOrientation:(int64_t)orientation
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v6 = [standardAnnotationDataSource dateViewWithOrientation:orientation];
  }

  else
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    _gregorianDateComponents = [standardAnnotationDataSource _gregorianDateComponents];
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _dateColumnWithDateComponents:_gregorianDateComponents calendar:hk_gregorianCalendarWithLocalTimeZone orientation:orientation];
  }

  return v6;
}

- (id)leftMarginViewWithOrientation:(int64_t)orientation
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    _ringColumn = [standardAnnotationDataSource leftMarginViewWithOrientation:orientation];
  }

  else if ([(HKActivitySummaryAnnotationViewDataSource *)self _hasRingView])
  {
    _ringColumn = [(HKActivitySummaryAnnotationViewDataSource *)self _ringColumn];
  }

  else
  {
    _ringColumn = 0;
  }

  return _ringColumn;
}

- (int64_t)numberOfValuesForAnnotationView:(id)view
{
  viewCopy = view;
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v6 = [standardAnnotationDataSource numberOfValuesForAnnotationView:viewCopy];
LABEL_6:
    v9 = v6;

    goto LABEL_7;
  }

  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  isPaused = [activitySummary isPaused];

  if ((isPaused & 1) == 0)
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
    v6 = [standardAnnotationDataSource count];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v8 = [standardAnnotationDataSource valueViewForColumnAtIndex:index orientation:orientation];
  }

  else
  {
    activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    isPaused = [activitySummary isPaused];

    if (isPaused)
    {
      _pauseColumn = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseColumn];
    }

    else if (index < 0 || (-[HKActivitySummaryAnnotationViewDataSource columnsForPosition](self, "columnsForPosition"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13 <= index))
    {
      v17 = objc_alloc(MEMORY[0x1E69DD250]);
      _pauseColumn = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    else
    {
      columnsForPosition = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
      v15 = [columnsForPosition objectAtIndexedSubscript:index];
      intValue = [v15 intValue];

      _pauseColumn = [(HKActivitySummaryAnnotationViewDataSource *)self viewForColumnType:intValue];
    }

    v8 = _pauseColumn;
  }

  return v8;
}

- (id)_pauseColumn
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseTextForTimeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];
  [v3 setText:v4];

  hk_chartActivityValueFont = [MEMORY[0x1E69DB878] hk_chartActivityValueFont];
  [v3 setFont:hk_chartActivityValueFont];

  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseTextColorForTimeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];
  [v3 setTextColor:v6];

  [v3 setNumberOfLines:0];
  [v3 setAdjustsFontSizeToFitWidth:1];
  widthAnchor = [v3 widthAnchor];
  v8 = [widthAnchor constraintLessThanOrEqualToConstant:175.0];
  [v8 setActive:1];

  heightAnchor = [v3 heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:50.0];
  [v10 setActive:1];

  v11 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"Paused"];
  [v3 setAccessibilityIdentifier:v11];

  return v3;
}

- (id)_pauseTextForTimeScope:(int64_t)scope
{
  currentValueViewContext = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  if (currentValueViewContext)
  {
    if (scope >= 6)
    {
      if ((scope - 6) >= 3)
      {
        goto LABEL_9;
      }

LABEL_6:
      currentValueViewContext = [(HKActivitySummaryAnnotationViewDataSource *)self _pausedActivityDayPeriod];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((scope - 4) < 5)
  {
    goto LABEL_6;
  }

  if (scope <= 3)
  {
LABEL_8:
    currentValueViewContext = [(HKActivitySummaryAnnotationViewDataSource *)self _pausedActivityLongPeriod];
  }

LABEL_9:

  return currentValueViewContext;
}

- (id)_pausedActivityLongPeriod
{
  isChartSharingContext = [(HKActivitySummaryAnnotationViewDataSource *)self isChartSharingContext];
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  _isStandalonePhoneSummary = [activitySummary _isStandalonePhoneSummary];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = v6;
  v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_LONG";
  if (_isStandalonePhoneSummary)
  {
    v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_LONG_VEGA";
  }

  v9 = @"ACTIVITY_PAUSED_SELECTION_LONG_VEGA";
  if (!_isStandalonePhoneSummary)
  {
    v9 = @"ACTIVITY_PAUSED_SELECTION_LONG";
  }

  if (isChartSharingContext)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v11;
}

- (id)_pausedActivityDayPeriod
{
  isChartSharingContext = [(HKActivitySummaryAnnotationViewDataSource *)self isChartSharingContext];
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  _isStandalonePhoneSummary = [activitySummary _isStandalonePhoneSummary];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = v6;
  v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_DAY";
  if (_isStandalonePhoneSummary)
  {
    v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_DAY_VEGA";
  }

  v9 = @"ACTIVITY_PAUSED_SELECTION_DAY_VEGA";
  if (!_isStandalonePhoneSummary)
  {
    v9 = @"ACTIVITY_PAUSED_SELECTION_DAY";
  }

  if (isChartSharingContext)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v11;
}

- (id)_pauseTextColorForTimeScope:(int64_t)scope
{
  if (scope >= 6)
  {
    if ((scope - 6) >= 3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ([(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext])
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
LABEL_5:
    self = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_7;
  }

  self = [MEMORY[0x1E69DC888] whiteColor];
LABEL_7:

  return self;
}

- (id)viewForColumnType:(unint64_t)type
{
  if (type == 2)
  {
    _standColumn = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumn];
  }

  else if (type == 1)
  {
    _standColumn = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumn];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    _standColumn = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumn];
  }

  a2 = _standColumn;
LABEL_8:

  return a2;
}

- (BOOL)showSeparators
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    showSeparators = [standardAnnotationDataSource showSeparators];
  }

  else
  {
    standardAnnotationDataSource = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
    showSeparators = [standardAnnotationDataSource count] > 1;
  }

  return showSeparators;
}

- (BOOL)_hasRingView
{
  currentValueViewContext = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  timeScope = [(HKActivitySummaryAnnotationViewDataSource *)self timeScope];
  if (!currentValueViewContext)
  {
    return timeScope == 5 || [(HKActivitySummaryAnnotationViewDataSource *)self timeScope]== 4;
  }

  if (timeScope == 6)
  {
    return [MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)activityStandTitle
{
  v2 = MEMORY[0x1E696C1C0];
  wheelchairUseCharacteristicCache = [(HKActivitySummaryAnnotationViewDataSource *)self wheelchairUseCharacteristicCache];
  v4 = [v2 localizationStringSuffixForWheelchairUser:{objc_msgSend(wheelchairUseCharacteristicCache, "isWheelchairUser")}];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [@"STAND_CHART_TITLE" stringByAppendingString:v4];
  v7 = [v5 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v7;
}

- (id)_standColumnValueString
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleStandHours = [activitySummary appleStandHours];
  activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  standHoursGoal = [activitySummary2 standHoursGoal];
  v7 = HKLocalizedDisplayStringForAppleStandHours(appleStandHours, standHoursGoal, 1, 1);

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 localizedStringWithFormat:v10];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v11];

  return v12;
}

- (id)_standColumnAsNumber
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleStandHours = [activitySummary appleStandHours];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  [appleStandHours doubleValueForUnit:countUnit];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_standColumn
{
  _standColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnValueString];
  activityStandTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityStandTitle];
  hk_activityStandGoalLineColor = [MEMORY[0x1E69DC888] hk_activityStandGoalLineColor];
  _bodyColor = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:activityStandTitle titleColor:hk_activityStandGoalLineColor body:_standColumnValueString bodyColor:_bodyColor alignment:4];

  return v7;
}

- (id)activityExerciseTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"EXERCISE_CHART_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_exerciseColumnValueString
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleExerciseTime = [activitySummary appleExerciseTime];
  activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  exerciseTimeGoal = [activitySummary2 exerciseTimeGoal];
  v7 = HKLocalizedDisplayStringForAppleExerciseTime(appleExerciseTime, exerciseTimeGoal, 1, 1);

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"MINUTES_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 localizedStringWithFormat:v10];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v11];

  return v12;
}

- (id)_exerciseColumnAsNumber
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleExerciseTime = [activitySummary appleExerciseTime];
  minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
  [appleExerciseTime doubleValueForUnit:minuteUnit];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_exerciseColumn
{
  _exerciseColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnValueString];
  activityExerciseTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityExerciseTitle];
  hk_activityExerciseGoalLineColor = [MEMORY[0x1E69DC888] hk_activityExerciseGoalLineColor];
  _bodyColor = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:activityExerciseTitle titleColor:hk_activityExerciseGoalLineColor body:_exerciseColumnValueString bodyColor:_bodyColor alignment:4];

  return v7;
}

- (id)activityMoveTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"MOVE_CHART_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_energyColumnValueString
{
  displayTypeController = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v4 = [displayTypeController displayTypeWithIdentifier:&unk_1F4383A00];

  unitController = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v6 = [unitController unitForDisplayType:v4];

  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  activeEnergyBurned = [activitySummary activeEnergyBurned];
  v9 = HKLocalizedStringWithEnergy();

  unitController2 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v11 = MEMORY[0x1E696AD98];
  activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  activeEnergyBurned2 = [activitySummary2 activeEnergyBurned];
  [activeEnergyBurned2 doubleValueForUnit:v6];
  v14 = [v11 numberWithDouble:?];
  v15 = [unitController2 localizedDisplayNameForDisplayType:v4 value:v14];

  v16 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v9 unitString:v15];

  return v16;
}

- (id)_energyColumnAsNumber
{
  displayTypeController = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v4 = [displayTypeController displayTypeWithIdentifier:&unk_1F4383A00];

  unitController = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v6 = [unitController unitForDisplayType:v4];

  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  activeEnergyBurned = [activitySummary activeEnergyBurned];
  [activeEnergyBurned doubleValueForUnit:v6];
  v10 = v9;

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];

  return v11;
}

- (id)_energyColumn
{
  _energyColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _energyColumnValueString];
  activityMoveTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  hk_activityMoveGoalLineColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalLineColor];
  _bodyColor = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:activityMoveTitle titleColor:hk_activityMoveGoalLineColor body:_energyColumnValueString bodyColor:_bodyColor alignment:4];

  return v7;
}

- (id)_moveTimeColumnValueString
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleMoveTime = [activitySummary appleMoveTime];
  activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleMoveTimeGoal = [activitySummary2 appleMoveTimeGoal];
  v7 = HKLocalizedDisplayStringForAppleMoveTime(appleMoveTime, appleMoveTimeGoal, 1, 1);

  displayTypeController = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v9 = [displayTypeController displayTypeWithIdentifier:&unk_1F4383A18];

  unitController = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v11 = [unitController unitForDisplayType:v9];

  unitController2 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v13 = MEMORY[0x1E696AD98];
  activitySummary3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleMoveTime2 = [activitySummary3 appleMoveTime];
  [appleMoveTime2 doubleValueForUnit:v11];
  v16 = [v13 numberWithDouble:?];
  v17 = [unitController2 localizedDisplayNameForUnit:v11 value:v16];

  v18 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v17];

  return v18;
}

- (id)_moveTimeColumnAsNumber
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  appleMoveTime = [activitySummary appleMoveTime];
  minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
  [appleMoveTime doubleValueForUnit:minuteUnit];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_moveTimeColumn
{
  _moveTimeColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _moveTimeColumnValueString];
  activityMoveTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  energyColors = [MEMORY[0x1E6989B18] energyColors];
  nonGradientTextColor = [energyColors nonGradientTextColor];
  _bodyColor = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v8 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:activityMoveTitle titleColor:nonGradientTextColor body:_moveTimeColumnValueString bodyColor:_bodyColor alignment:4];

  return v8;
}

- (id)_moveColumn
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([activitySummary activityMoveMode] == 2)
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _moveTimeColumn];
  }

  else
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _energyColumn];
  }
  v4 = ;

  return v4;
}

- (id)_moveColumnValueString
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([activitySummary activityMoveMode] == 2)
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _moveTimeColumnValueString];
  }

  else
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _energyColumnValueString];
  }
  v4 = ;

  return v4;
}

- (id)_moveColumnAsNumber
{
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([activitySummary activityMoveMode] == 2)
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _moveTimeColumnAsNumber];
  }

  else
  {
    [(HKActivitySummaryAnnotationViewDataSource *)self _energyColumnAsNumber];
  }
  v4 = ;

  return v4;
}

- (id)_percentStringWithQuantity:(id)quantity goalQuantity:(id)goalQuantity
{
  goalQuantityCopy = goalQuantity;
  quantityCopy = quantity;
  _unit = [quantityCopy _unit];
  [quantityCopy doubleValueForUnit:_unit];
  v9 = v8;

  [goalQuantityCopy doubleValueForUnit:_unit];
  v11 = v10;

  v12 = v9 / v11;
  if (((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE)
  {
    hk_percentNumberFormatter = [MEMORY[0x1E696ADA0] hk_percentNumberFormatter];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v14 = [hk_percentNumberFormatter stringFromNumber:v15];
  }

  else
  {
    hk_percentNumberFormatter = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [hk_percentNumberFormatter localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v14;
}

- (id)_valueUnitAttributedStringWithValueString:(id)string unitString:(id)unitString
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DB878];
  unitStringCopy = unitString;
  stringCopy = string;
  hk_chartActivityValueFont = [v6 hk_chartActivityValueFont];
  hk_chartCurrentValueUnitFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
  array = [MEMORY[0x1E695DF70] array];
  currentValueViewContext = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  v11 = *MEMORY[0x1E69DB648];
  if (currentValueViewContext)
  {
    v33[0] = hk_chartActivityValueFont;
    v12 = *MEMORY[0x1E69DB650];
    v32[0] = v11;
    v32[1] = v12;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v33[1] = labelColor;
    v14 = MEMORY[0x1E695DF20];
    v15 = v33;
    v16 = v32;
  }

  else
  {
    v31[0] = hk_chartActivityValueFont;
    v12 = *MEMORY[0x1E69DB650];
    v30[0] = v11;
    v30[1] = v12;
    labelColor = [MEMORY[0x1E69DC888] whiteColor];
    v31[1] = labelColor;
    v14 = MEMORY[0x1E695DF20];
    v15 = v31;
    v16 = v30;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{2, unitStringCopy}];

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v17];
  [array addObject:v18];
  if ([(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext])
  {
    [MEMORY[0x1E69DC888] systemDarkMidGrayColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemMidGrayColor];
  }
  v19 = ;
  v28[0] = v11;
  v28[1] = v12;
  v29[0] = hk_chartCurrentValueUnitFont;
  v29[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v20];
  [array addObject:v21];
  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v26 attributes:v20];

  [array addObject:v22];
  v23 = HKUIJoinAttributedStringsForLocale(array);

  return v23;
}

- (id)_ringColumn
{
  ringContainer = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];

  if (!ringContainer)
  {
    v4 = [objc_alloc(MEMORY[0x1E696C938]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(HKActivitySummaryAnnotationViewDataSource *)self setRingView:v4];

    ringView = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
    [ringView setAutoresizingMask:40];

    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(HKActivitySummaryAnnotationViewDataSource *)self setRingContainer:v6];

    ringContainer2 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];
    ringView2 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
    [ringContainer2 addSubview:ringView2];

    ringContainer3 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];
    [ringContainer3 setAutoresizingMask:16];
  }

  ringView3 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
  activitySummary = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  [ringView3 setActivitySummary:activitySummary animated:{-[HKActivitySummaryAnnotationViewDataSource currentValueViewContext](self, "currentValueViewContext")}];

  activitySummary2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([activitySummary2 isPaused])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v13 = ;

  ringView4 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
  [ringView4 _setActivityRingViewBackgroundColor:v13];

  ringContainer4 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];

  return ringContainer4;
}

- (id)_dateColumnWithDateComponents:(id)components calendar:(id)calendar orientation:(int64_t)orientation
{
  v7 = MEMORY[0x1E69DCC10];
  calendarCopy = calendar;
  componentsCopy = components;
  v10 = objc_alloc_init(v7);
  hk_chartCurrentValueDateFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  [v10 setFont:hk_chartCurrentValueDateFont];

  systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  [v10 setTextColor:systemMidGrayColor];

  v13 = [(HKActivitySummaryAnnotationViewDataSource *)self _dateTextForDateComponents:componentsCopy calendar:calendarCopy timeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];

  [v10 setText:v13];
  [v10 setAdjustsFontSizeToFitWidth:1];
  [v10 setBaselineAdjustment:1];
  [v10 sizeToFit];

  return v10;
}

- (id)_dateTextForDateComponents:(id)components calendar:(id)calendar timeScope:(int64_t)scope
{
  componentsCopy = components;
  calendarCopy = calendar;
  if (scope <= 8)
  {
    if (scope == 3)
    {
      [(HKActivitySummaryAnnotationViewDataSource *)self _weekContainingDateComponents:componentsCopy calendar:calendarCopy timeScope:3];
    }

    else
    {
      HKCombinedStringForAnnotationDateWithTimeScope(componentsCopy, calendarCopy, scope, 0);
    }
    scope = ;
  }

  return scope;
}

- (id)_weekContainingDateComponents:(id)components calendar:(id)calendar timeScope:(int64_t)scope
{
  calendarCopy = calendar;
  componentsCopy = components;
  dateCache = [(HKActivitySummaryAnnotationViewDataSource *)self dateCache];

  if (dateCache)
  {
    v11 = [calendarCopy dateFromComponents:componentsCopy];

    v12 = [MEMORY[0x1E696AB80] hk_dateIntervalForDayFromDate:v11 calendar:calendarCopy];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [currentLocale objectForKey:*MEMORY[0x1E695D958]];

    if ([(HKActivitySummaryAnnotationViewDataSource *)self firstWeekday]== -1)
    {
      selfCopy = v14;
    }

    else
    {
      selfCopy = self;
    }

    v16 = [calendarCopy hk_weeksContainingInterval:v12 firstWeekday:{-[HKActivitySummaryAnnotationViewDataSource firstWeekday](selfCopy, "firstWeekday")}];
    dateCache2 = [(HKActivitySummaryAnnotationViewDataSource *)self dateCache];
    v18 = HKLastUpdatedIntervalText(v16, scope, dateCache2, 1);

    componentsCopy = v11;
  }

  else
  {
    v18 = HKCombinedStringForAnnotationDateWithTimeScope(componentsCopy, calendarCopy, scope, 0);
  }

  return v18;
}

- (id)_columnViewWithTitle:(id)title titleColor:(id)color body:(id)body bodyColor:(id)bodyColor alignment:(int64_t)alignment
{
  v29[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69DCC10];
  bodyColorCopy = bodyColor;
  bodyCopy = body;
  colorCopy = color;
  titleCopy = title;
  v16 = objc_alloc_init(v11);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setTextColor:colorCopy];

  [v16 setText:titleCopy];
  hk_chartCurrentValueKindFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueKindFont];
  [v16 setFont:hk_chartCurrentValueKindFont];

  [v16 setTextAlignment:alignment];
  [v16 setAdjustsFontSizeToFitWidth:1];
  v18 = MEMORY[0x1E696AEC0];
  titleCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.Title", titleCopy];
  v20 = [v18 hk_chartLollipopAccessibilityIdentifier:titleCopy];
  [v16 setAccessibilityIdentifier:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setTextColor:bodyColorCopy];

  [v21 setTextAlignment:alignment];
  [v21 setAttributedText:bodyCopy];

  [v21 setAdjustsFontSizeToFitWidth:1];
  v22 = MEMORY[0x1E696AEC0];
  titleCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.Body", titleCopy];

  v24 = [v22 hk_chartLollipopAccessibilityIdentifier:titleCopy2];
  [v21 setAccessibilityIdentifier:v24];

  v25 = objc_alloc(MEMORY[0x1E69DCF90]);
  v29[0] = v16;
  v29[1] = v21;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v27 = [v25 initWithArrangedSubviews:v26];

  [v27 setAxis:1];

  return v27;
}

- (id)_bodyColor
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext])
  {
    [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (id)descriptionsForActivitySummary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  activityMoveTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  _moveColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumnValueString];
  _moveColumnAsNumber = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumnAsNumber];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:activityMoveTitle attributedValue:_moveColumnValueString valueAsNumber:_moveColumnAsNumber];
  [v3 addObject:v7];

  activityExerciseTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityExerciseTitle];
  _exerciseColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnValueString];
  _exerciseColumnAsNumber = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnAsNumber];
  v11 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:activityExerciseTitle attributedValue:_exerciseColumnValueString valueAsNumber:_exerciseColumnAsNumber];
  [v3 addObject:v11];

  activityStandTitle = [(HKActivitySummaryAnnotationViewDataSource *)self activityStandTitle];
  _standColumnValueString = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnValueString];
  _standColumnAsNumber = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnAsNumber];
  v15 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:activityStandTitle attributedValue:_standColumnValueString valueAsNumber:_standColumnAsNumber];
  [v3 addObject:v15];

  return v3;
}

- (id)_valueWithTitle:(id)title attributedValue:(id)value valueAsNumber:(id)number
{
  numberCopy = number;
  valueCopy = value;
  titleCopy = title;
  v10 = [HKAccessibilityValue alloc];
  string = [valueCopy string];

  v12 = [(HKAccessibilityValue *)v10 initWithValueTitle:titleCopy valueType:&stru_1F42FFBE0 valueDescription:string valueAsNumber:numberCopy];

  return v12;
}

@end