@interface HKInteractiveChartActivityData
- (BOOL)activityPaused;
- (BOOL)activityValueGoalMet;
- (BOOL)hasActivityGoal;
- (NSString)description;
@end

@implementation HKInteractiveChartActivityData

- (BOOL)hasActivityGoal
{
  activityValue = [(HKInteractiveChartActivityData *)self activityValue];
  v4 = 0;
  if (activityValue <= 3)
  {
    if (activityValue <= 1)
    {
      if (activityValue)
      {
        if (activityValue != 1)
        {
          return v4;
        }

        goto LABEL_8;
      }

      goto LABEL_14;
    }

    if (activityValue != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (activityValue <= 5)
  {
    if (activityValue != 4)
    {
LABEL_8:
      activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
      _hasAppleMoveMinutesGoal = [activitySummaryData _hasAppleMoveMinutesGoal];
LABEL_16:
      v4 = _hasAppleMoveMinutesGoal;

      return v4;
    }

LABEL_14:
    activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
    _hasAppleMoveMinutesGoal = [activitySummaryData _hasEnergyBurnedGoal];
    goto LABEL_16;
  }

  if (activityValue == 7)
  {
LABEL_15:
    activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
    _hasAppleMoveMinutesGoal = [activitySummaryData _hasStandHoursGoal];
    goto LABEL_16;
  }

  if (activityValue == 6)
  {
LABEL_13:
    activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
    _hasAppleMoveMinutesGoal = [activitySummaryData _hasExerciseGoal];
    goto LABEL_16;
  }

  return v4;
}

- (BOOL)activityValueGoalMet
{
  activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
  _useHourlyGoalComparison = [activitySummaryData _useHourlyGoalComparison];

  activityValue = [(HKInteractiveChartActivityData *)self activityValue];
  if (!_useHourlyGoalComparison)
  {
    if (activityValue > 3)
    {
      if (activityValue <= 5)
      {
        if (activityValue != 4)
        {
LABEL_11:
          activitySummaryData2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
          [activitySummaryData2 _moveMinutesCompletionPercentage];
LABEL_20:
          v2 = v11 >= 1.0;
          goto LABEL_21;
        }

LABEL_18:
        activitySummaryData2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
        [activitySummaryData2 _activeEnergyCompletionPercentage];
        goto LABEL_20;
      }

      if (activityValue != 6)
      {
        if (activityValue != 7)
        {
          return v2;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (activityValue <= 1)
      {
        if (activityValue)
        {
          if (activityValue != 1)
          {
            return v2;
          }

          goto LABEL_11;
        }

        goto LABEL_18;
      }

      if (activityValue != 2)
      {
LABEL_17:
        activitySummaryData2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
        [activitySummaryData2 _standHoursCompletionPercentage];
        goto LABEL_20;
      }
    }

    activitySummaryData2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    [activitySummaryData2 _exerciseTimeCompletionPercentage];
    goto LABEL_20;
  }

  if ((activityValue | 4) == 7)
  {
    activitySummaryData2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    appleStandHours = [activitySummaryData2 appleStandHours];
    countUnit = [MEMORY[0x1E696C510] countUnit];
    [appleStandHours doubleValueForUnit:countUnit];
    v2 = v10 > 0.0;

LABEL_21:
    return v2;
  }

  return 1;
}

- (BOOL)activityPaused
{
  activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
  isPaused = [activitySummaryData isPaused];

  return isPaused;
}

- (NSString)description
{
  activitySummaryData = [(HKInteractiveChartActivityData *)self activitySummaryData];
  v3 = [activitySummaryData description];

  return v3;
}

@end