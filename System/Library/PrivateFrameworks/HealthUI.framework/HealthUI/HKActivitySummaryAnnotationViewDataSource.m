@interface HKActivitySummaryAnnotationViewDataSource
- (BOOL)_hasRingView;
- (BOOL)showSeparators;
- (HKActivitySummaryAnnotationViewDataSource)initWithDisplayTypeController:(id)a3 unitController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 dateCache:(id)a6 currentValueViewContext:(BOOL)a7 activityOptions:(unint64_t)a8 firstWeekday:(int64_t)a9 isChartSharingContext:(BOOL)a10;
- (id)_bodyColor;
- (id)_buildColumnPositionsFromOptions:(unint64_t)a3;
- (id)_columnViewWithTitle:(id)a3 titleColor:(id)a4 body:(id)a5 bodyColor:(id)a6 alignment:(int64_t)a7;
- (id)_dateColumnWithDateComponents:(id)a3 calendar:(id)a4 orientation:(int64_t)a5;
- (id)_dateTextForDateComponents:(id)a3 calendar:(id)a4 timeScope:(int64_t)a5;
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
- (id)_pauseTextColorForTimeScope:(int64_t)a3;
- (id)_pauseTextForTimeScope:(int64_t)a3;
- (id)_pausedActivityDayPeriod;
- (id)_pausedActivityLongPeriod;
- (id)_percentStringWithQuantity:(id)a3 goalQuantity:(id)a4;
- (id)_ringColumn;
- (id)_standColumn;
- (id)_standColumnAsNumber;
- (id)_standColumnValueString;
- (id)_valueUnitAttributedStringWithValueString:(id)a3 unitString:(id)a4;
- (id)_valueWithTitle:(id)a3 attributedValue:(id)a4 valueAsNumber:(id)a5;
- (id)_weekContainingDateComponents:(id)a3 calendar:(id)a4 timeScope:(int64_t)a5;
- (id)activityExerciseTitle;
- (id)activityMoveTitle;
- (id)activityStandTitle;
- (id)dateViewWithOrientation:(int64_t)a3;
- (id)descriptionsForActivitySummary;
- (id)leftMarginViewWithOrientation:(int64_t)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (id)viewForColumnType:(unint64_t)a3;
- (int64_t)numberOfValuesForAnnotationView:(id)a3;
- (void)useStandardAnnotationViewDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 healthStore:(id)a7 viewController:(id)a8;
@end

@implementation HKActivitySummaryAnnotationViewDataSource

- (HKActivitySummaryAnnotationViewDataSource)initWithDisplayTypeController:(id)a3 unitController:(id)a4 wheelchairUseCharacteristicCache:(id)a5 dateCache:(id)a6 currentValueViewContext:(BOOL)a7 activityOptions:(unint64_t)a8 firstWeekday:(int64_t)a9 isChartSharingContext:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v27.receiver = self;
  v27.super_class = HKActivitySummaryAnnotationViewDataSource;
  v20 = [(HKActivitySummaryAnnotationViewDataSource *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_displayTypeController, a3);
    objc_storeStrong(&v21->_unitController, a4);
    objc_storeStrong(&v21->_wheelchairUseCharacteristicCache, a5);
    objc_storeStrong(&v21->_dateCache, a6);
    v21->_currentValueViewContext = a7;
    v21->_firstWeekday = a9;
    v22 = [(HKActivitySummaryAnnotationViewDataSource *)v21 _buildColumnPositionsFromOptions:a8];
    columnsForPosition = v21->_columnsForPosition;
    v21->_columnsForPosition = v22;

    standardAnnotationDataSource = v21->_standardAnnotationDataSource;
    v21->_standardAnnotationDataSource = 0;

    v21->_useStandardAnnotationDataSource = 0;
    v21->_isChartSharingContext = a10;
  }

  return v21;
}

- (void)useStandardAnnotationViewDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 healthStore:(id)a7 viewController:(id)a8
{
  self->_useStandardAnnotationDataSource = 1;
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
  [v18 updateWithSelectionContext:v17 displayType:v16 timeScope:a5 resolution:a6 healthStore:v15 viewController:v14];
}

- (id)_buildColumnPositionsFromOptions:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v4 addObject:&unk_1F43839B8];
    if ((v3 & 2) != 0)
    {
LABEL_3:
      if ((v3 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  [v5 addObject:&unk_1F43839D0];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    [v5 addObject:&unk_1F43839E8];
  }

LABEL_5:
  v6 = [v5 copy];

  return v6;
}

- (id)dateViewWithOrientation:(int64_t)a3
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v6 = [v5 dateViewWithOrientation:a3];
  }

  else
  {
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    v7 = [v5 _gregorianDateComponents];
    v8 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _dateColumnWithDateComponents:v7 calendar:v8 orientation:a3];
  }

  return v6;
}

- (id)leftMarginViewWithOrientation:(int64_t)a3
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v6 = [v5 leftMarginViewWithOrientation:a3];
  }

  else if ([(HKActivitySummaryAnnotationViewDataSource *)self _hasRingView])
  {
    v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _ringColumn];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)numberOfValuesForAnnotationView:(id)a3
{
  v4 = a3;
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v6 = [v5 numberOfValuesForAnnotationView:v4];
LABEL_6:
    v9 = v6;

    goto LABEL_7;
  }

  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v8 = [v7 isPaused];

  if ((v8 & 1) == 0)
  {
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
    v6 = [v5 count];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    v7 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v8 = [v7 valueViewForColumnAtIndex:a3 orientation:a4];
  }

  else
  {
    v9 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
    v10 = [v9 isPaused];

    if (v10)
    {
      v11 = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseColumn];
    }

    else if (a3 < 0 || (-[HKActivitySummaryAnnotationViewDataSource columnsForPosition](self, "columnsForPosition"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13 <= a3))
    {
      v17 = objc_alloc(MEMORY[0x1E69DD250]);
      v11 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    else
    {
      v14 = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
      v15 = [v14 objectAtIndexedSubscript:a3];
      v16 = [v15 intValue];

      v11 = [(HKActivitySummaryAnnotationViewDataSource *)self viewForColumnType:v16];
    }

    v8 = v11;
  }

  return v8;
}

- (id)_pauseColumn
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseTextForTimeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];
  [v3 setText:v4];

  v5 = [MEMORY[0x1E69DB878] hk_chartActivityValueFont];
  [v3 setFont:v5];

  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _pauseTextColorForTimeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];
  [v3 setTextColor:v6];

  [v3 setNumberOfLines:0];
  [v3 setAdjustsFontSizeToFitWidth:1];
  v7 = [v3 widthAnchor];
  v8 = [v7 constraintLessThanOrEqualToConstant:175.0];
  [v8 setActive:1];

  v9 = [v3 heightAnchor];
  v10 = [v9 constraintEqualToConstant:50.0];
  [v10 setActive:1];

  v11 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"Paused"];
  [v3 setAccessibilityIdentifier:v11];

  return v3;
}

- (id)_pauseTextForTimeScope:(int64_t)a3
{
  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  if (v5)
  {
    if (a3 >= 6)
    {
      if ((a3 - 6) >= 3)
      {
        goto LABEL_9;
      }

LABEL_6:
      v5 = [(HKActivitySummaryAnnotationViewDataSource *)self _pausedActivityDayPeriod];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((a3 - 4) < 5)
  {
    goto LABEL_6;
  }

  if (a3 <= 3)
  {
LABEL_8:
    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self _pausedActivityLongPeriod];
  }

LABEL_9:

  return v5;
}

- (id)_pausedActivityLongPeriod
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self isChartSharingContext];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v5 = [v4 _isStandalonePhoneSummary];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = v6;
  v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_LONG";
  if (v5)
  {
    v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_LONG_VEGA";
  }

  v9 = @"ACTIVITY_PAUSED_SELECTION_LONG_VEGA";
  if (!v5)
  {
    v9 = @"ACTIVITY_PAUSED_SELECTION_LONG";
  }

  if (v3)
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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self isChartSharingContext];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v5 = [v4 _isStandalonePhoneSummary];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = v6;
  v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_DAY";
  if (v5)
  {
    v8 = @"ACTIVITY_PAUSED_SELECTION_SHARED_DAY_VEGA";
  }

  v9 = @"ACTIVITY_PAUSED_SELECTION_DAY_VEGA";
  if (!v5)
  {
    v9 = @"ACTIVITY_PAUSED_SELECTION_DAY";
  }

  if (v3)
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

- (id)_pauseTextColorForTimeScope:(int64_t)a3
{
  if (a3 >= 6)
  {
    if ((a3 - 6) >= 3)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ([(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext])
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
LABEL_5:
    self = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_7;
  }

  self = [MEMORY[0x1E69DC888] whiteColor];
LABEL_7:

  return self;
}

- (id)viewForColumnType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumn];
  }

  else if (a3 == 1)
  {
    v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumn];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumn];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (BOOL)showSeparators
{
  if ([(HKActivitySummaryAnnotationViewDataSource *)self useStandardAnnotationDataSource])
  {
    v3 = [(HKActivitySummaryAnnotationViewDataSource *)self standardAnnotationDataSource];
    v4 = [v3 showSeparators];
  }

  else
  {
    v3 = [(HKActivitySummaryAnnotationViewDataSource *)self columnsForPosition];
    v4 = [v3 count] > 1;
  }

  return v4;
}

- (BOOL)_hasRingView
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self timeScope];
  if (!v3)
  {
    return v4 == 5 || [(HKActivitySummaryAnnotationViewDataSource *)self timeScope]== 4;
  }

  if (v4 == 6)
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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self wheelchairUseCharacteristicCache];
  v4 = [v2 localizationStringSuffixForWheelchairUser:{objc_msgSend(v3, "isWheelchairUser")}];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [@"STAND_CHART_TITLE" stringByAppendingString:v4];
  v7 = [v5 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v7;
}

- (id)_standColumnValueString
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v4 = [v3 appleStandHours];
  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v6 = [v5 standHoursGoal];
  v7 = HKLocalizedDisplayStringForAppleStandHours(v4, v6, 1, 1);

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"HOURS_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 localizedStringWithFormat:v10];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v11];

  return v12;
}

- (id)_standColumnAsNumber
{
  v2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v3 = [v2 appleStandHours];
  v4 = [MEMORY[0x1E696C510] countUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_standColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnValueString];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activityStandTitle];
  v5 = [MEMORY[0x1E69DC888] hk_activityStandGoalLineColor];
  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:v4 titleColor:v5 body:v3 bodyColor:v6 alignment:4];

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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v4 = [v3 appleExerciseTime];
  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v6 = [v5 exerciseTimeGoal];
  v7 = HKLocalizedDisplayStringForAppleExerciseTime(v4, v6, 1, 1);

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"MINUTES_MEDIUM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 localizedStringWithFormat:v10];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v11];

  return v12;
}

- (id)_exerciseColumnAsNumber
{
  v2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v3 = [v2 appleExerciseTime];
  v4 = [MEMORY[0x1E696C510] minuteUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_exerciseColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnValueString];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activityExerciseTitle];
  v5 = [MEMORY[0x1E69DC888] hk_activityExerciseGoalLineColor];
  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:v4 titleColor:v5 body:v3 bodyColor:v6 alignment:4];

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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v4 = [v3 displayTypeWithIdentifier:&unk_1F4383A00];

  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v6 = [v5 unitForDisplayType:v4];

  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v8 = [v7 activeEnergyBurned];
  v9 = HKLocalizedStringWithEnergy();

  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v11 = MEMORY[0x1E696AD98];
  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v13 = [v12 activeEnergyBurned];
  [v13 doubleValueForUnit:v6];
  v14 = [v11 numberWithDouble:?];
  v15 = [v10 localizedDisplayNameForDisplayType:v4 value:v14];

  v16 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v9 unitString:v15];

  return v16;
}

- (id)_energyColumnAsNumber
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v4 = [v3 displayTypeWithIdentifier:&unk_1F4383A00];

  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v6 = [v5 unitForDisplayType:v4];

  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v8 = [v7 activeEnergyBurned];
  [v8 doubleValueForUnit:v6];
  v10 = v9;

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];

  return v11;
}

- (id)_energyColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _energyColumnValueString];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  v5 = [MEMORY[0x1E69DC888] hk_activityMoveGoalLineColor];
  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:v4 titleColor:v5 body:v3 bodyColor:v6 alignment:4];

  return v7;
}

- (id)_moveTimeColumnValueString
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v4 = [v3 appleMoveTime];
  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v6 = [v5 appleMoveTimeGoal];
  v7 = HKLocalizedDisplayStringForAppleMoveTime(v4, v6, 1, 1);

  v8 = [(HKActivitySummaryAnnotationViewDataSource *)self displayTypeController];
  v9 = [v8 displayTypeWithIdentifier:&unk_1F4383A18];

  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v11 = [v10 unitForDisplayType:v9];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self unitController];
  v13 = MEMORY[0x1E696AD98];
  v14 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v15 = [v14 appleMoveTime];
  [v15 doubleValueForUnit:v11];
  v16 = [v13 numberWithDouble:?];
  v17 = [v12 localizedDisplayNameForUnit:v11 value:v16];

  v18 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueUnitAttributedStringWithValueString:v7 unitString:v17];

  return v18;
}

- (id)_moveTimeColumnAsNumber
{
  v2 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  v3 = [v2 appleMoveTime];
  v4 = [MEMORY[0x1E696C510] minuteUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithDouble:v6];
}

- (id)_moveTimeColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self _moveTimeColumnValueString];
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  v5 = [MEMORY[0x1E6989B18] energyColors];
  v6 = [v5 nonGradientTextColor];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _bodyColor];
  v8 = [(HKActivitySummaryAnnotationViewDataSource *)self _columnViewWithTitle:v4 titleColor:v6 body:v3 bodyColor:v7 alignment:4];

  return v8;
}

- (id)_moveColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([v3 activityMoveMode] == 2)
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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([v3 activityMoveMode] == 2)
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
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([v3 activityMoveMode] == 2)
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

- (id)_percentStringWithQuantity:(id)a3 goalQuantity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 _unit];
  [v6 doubleValueForUnit:v7];
  v9 = v8;

  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = v9 / v11;
  if (((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE)
  {
    v13 = [MEMORY[0x1E696ADA0] hk_percentNumberFormatter];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v14 = [v13 stringFromNumber:v15];
  }

  else
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v14;
}

- (id)_valueUnitAttributedStringWithValueString:(id)a3 unitString:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DB878];
  v25 = a4;
  v7 = a3;
  v8 = [v6 hk_chartActivityValueFont];
  v27 = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self currentValueViewContext];
  v11 = *MEMORY[0x1E69DB648];
  if (v10)
  {
    v33[0] = v8;
    v12 = *MEMORY[0x1E69DB650];
    v32[0] = v11;
    v32[1] = v12;
    v13 = [MEMORY[0x1E69DC888] labelColor];
    v33[1] = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = v33;
    v16 = v32;
  }

  else
  {
    v31[0] = v8;
    v12 = *MEMORY[0x1E69DB650];
    v30[0] = v11;
    v30[1] = v12;
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v31[1] = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = v31;
    v16 = v30;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{2, v25}];

  v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v17];
  [v9 addObject:v18];
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
  v29[0] = v27;
  v29[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v20];
  [v9 addObject:v21];
  v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v26 attributes:v20];

  [v9 addObject:v22];
  v23 = HKUIJoinAttributedStringsForLocale(v9);

  return v23;
}

- (id)_ringColumn
{
  v3 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696C938]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(HKActivitySummaryAnnotationViewDataSource *)self setRingView:v4];

    v5 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
    [v5 setAutoresizingMask:40];

    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 48.0, 48.0}];
    [(HKActivitySummaryAnnotationViewDataSource *)self setRingContainer:v6];

    v7 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];
    v8 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
    [v7 addSubview:v8];

    v9 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];
    [v9 setAutoresizingMask:16];
  }

  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
  v11 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  [v10 setActivitySummary:v11 animated:{-[HKActivitySummaryAnnotationViewDataSource currentValueViewContext](self, "currentValueViewContext")}];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self activitySummary];
  if ([v12 isPaused])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v13 = ;

  v14 = [(HKActivitySummaryAnnotationViewDataSource *)self ringView];
  [v14 _setActivityRingViewBackgroundColor:v13];

  v15 = [(HKActivitySummaryAnnotationViewDataSource *)self ringContainer];

  return v15;
}

- (id)_dateColumnWithDateComponents:(id)a3 calendar:(id)a4 orientation:(int64_t)a5
{
  v7 = MEMORY[0x1E69DCC10];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [MEMORY[0x1E69DB878] hk_chartCurrentValueDateFont];
  [v10 setFont:v11];

  v12 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  [v10 setTextColor:v12];

  v13 = [(HKActivitySummaryAnnotationViewDataSource *)self _dateTextForDateComponents:v9 calendar:v8 timeScope:[(HKActivitySummaryAnnotationViewDataSource *)self timeScope]];

  [v10 setText:v13];
  [v10 setAdjustsFontSizeToFitWidth:1];
  [v10 setBaselineAdjustment:1];
  [v10 sizeToFit];

  return v10;
}

- (id)_dateTextForDateComponents:(id)a3 calendar:(id)a4 timeScope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 <= 8)
  {
    if (a5 == 3)
    {
      [(HKActivitySummaryAnnotationViewDataSource *)self _weekContainingDateComponents:v8 calendar:v9 timeScope:3];
    }

    else
    {
      HKCombinedStringForAnnotationDateWithTimeScope(v8, v9, a5, 0);
    }
    a5 = ;
  }

  return a5;
}

- (id)_weekContainingDateComponents:(id)a3 calendar:(id)a4 timeScope:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self dateCache];

  if (v10)
  {
    v11 = [v8 dateFromComponents:v9];

    v12 = [MEMORY[0x1E696AB80] hk_dateIntervalForDayFromDate:v11 calendar:v8];
    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v13 objectForKey:*MEMORY[0x1E695D958]];

    if ([(HKActivitySummaryAnnotationViewDataSource *)self firstWeekday]== -1)
    {
      v15 = v14;
    }

    else
    {
      v15 = self;
    }

    v16 = [v8 hk_weeksContainingInterval:v12 firstWeekday:{-[HKActivitySummaryAnnotationViewDataSource firstWeekday](v15, "firstWeekday")}];
    v17 = [(HKActivitySummaryAnnotationViewDataSource *)self dateCache];
    v18 = HKLastUpdatedIntervalText(v16, a5, v17, 1);

    v9 = v11;
  }

  else
  {
    v18 = HKCombinedStringForAnnotationDateWithTimeScope(v9, v8, a5, 0);
  }

  return v18;
}

- (id)_columnViewWithTitle:(id)a3 titleColor:(id)a4 body:(id)a5 bodyColor:(id)a6 alignment:(int64_t)a7
{
  v29[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69DCC10];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(v11);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setTextColor:v14];

  [v16 setText:v15];
  v17 = [MEMORY[0x1E69DB878] hk_chartCurrentValueKindFont];
  [v16 setFont:v17];

  [v16 setTextAlignment:a7];
  [v16 setAdjustsFontSizeToFitWidth:1];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.Title", v15];
  v20 = [v18 hk_chartLollipopAccessibilityIdentifier:v19];
  [v16 setAccessibilityIdentifier:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setTextColor:v12];

  [v21 setTextAlignment:a7];
  [v21 setAttributedText:v13];

  [v21 setAdjustsFontSizeToFitWidth:1];
  v22 = MEMORY[0x1E696AEC0];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.Body", v15];

  v24 = [v22 hk_chartLollipopAccessibilityIdentifier:v23];
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
  v4 = [(HKActivitySummaryAnnotationViewDataSource *)self activityMoveTitle];
  v5 = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumnValueString];
  v6 = [(HKActivitySummaryAnnotationViewDataSource *)self _moveColumnAsNumber];
  v7 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:v4 attributedValue:v5 valueAsNumber:v6];
  [v3 addObject:v7];

  v8 = [(HKActivitySummaryAnnotationViewDataSource *)self activityExerciseTitle];
  v9 = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnValueString];
  v10 = [(HKActivitySummaryAnnotationViewDataSource *)self _exerciseColumnAsNumber];
  v11 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:v8 attributedValue:v9 valueAsNumber:v10];
  [v3 addObject:v11];

  v12 = [(HKActivitySummaryAnnotationViewDataSource *)self activityStandTitle];
  v13 = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnValueString];
  v14 = [(HKActivitySummaryAnnotationViewDataSource *)self _standColumnAsNumber];
  v15 = [(HKActivitySummaryAnnotationViewDataSource *)self _valueWithTitle:v12 attributedValue:v13 valueAsNumber:v14];
  [v3 addObject:v15];

  return v3;
}

- (id)_valueWithTitle:(id)a3 attributedValue:(id)a4 valueAsNumber:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [HKAccessibilityValue alloc];
  v11 = [v8 string];

  v12 = [(HKAccessibilityValue *)v10 initWithValueTitle:v9 valueType:&stru_1F42FFBE0 valueDescription:v11 valueAsNumber:v7];

  return v12;
}

@end