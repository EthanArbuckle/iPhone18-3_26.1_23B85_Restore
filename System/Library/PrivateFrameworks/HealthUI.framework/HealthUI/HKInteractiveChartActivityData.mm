@interface HKInteractiveChartActivityData
- (BOOL)activityPaused;
- (BOOL)activityValueGoalMet;
- (BOOL)hasActivityGoal;
- (NSString)description;
@end

@implementation HKInteractiveChartActivityData

- (BOOL)hasActivityGoal
{
  v3 = [(HKInteractiveChartActivityData *)self activityValue];
  v4 = 0;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          return v4;
        }

        goto LABEL_8;
      }

      goto LABEL_14;
    }

    if (v3 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v3 <= 5)
  {
    if (v3 != 4)
    {
LABEL_8:
      v5 = [(HKInteractiveChartActivityData *)self activitySummaryData];
      v6 = [v5 _hasAppleMoveMinutesGoal];
LABEL_16:
      v4 = v6;

      return v4;
    }

LABEL_14:
    v5 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    v6 = [v5 _hasEnergyBurnedGoal];
    goto LABEL_16;
  }

  if (v3 == 7)
  {
LABEL_15:
    v5 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    v6 = [v5 _hasStandHoursGoal];
    goto LABEL_16;
  }

  if (v3 == 6)
  {
LABEL_13:
    v5 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    v6 = [v5 _hasExerciseGoal];
    goto LABEL_16;
  }

  return v4;
}

- (BOOL)activityValueGoalMet
{
  v4 = [(HKInteractiveChartActivityData *)self activitySummaryData];
  v5 = [v4 _useHourlyGoalComparison];

  v6 = [(HKInteractiveChartActivityData *)self activityValue];
  if (!v5)
  {
    if (v6 > 3)
    {
      if (v6 <= 5)
      {
        if (v6 != 4)
        {
LABEL_11:
          v7 = [(HKInteractiveChartActivityData *)self activitySummaryData];
          [v7 _moveMinutesCompletionPercentage];
LABEL_20:
          v2 = v11 >= 1.0;
          goto LABEL_21;
        }

LABEL_18:
        v7 = [(HKInteractiveChartActivityData *)self activitySummaryData];
        [v7 _activeEnergyCompletionPercentage];
        goto LABEL_20;
      }

      if (v6 != 6)
      {
        if (v6 != 7)
        {
          return v2;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            return v2;
          }

          goto LABEL_11;
        }

        goto LABEL_18;
      }

      if (v6 != 2)
      {
LABEL_17:
        v7 = [(HKInteractiveChartActivityData *)self activitySummaryData];
        [v7 _standHoursCompletionPercentage];
        goto LABEL_20;
      }
    }

    v7 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    [v7 _exerciseTimeCompletionPercentage];
    goto LABEL_20;
  }

  if ((v6 | 4) == 7)
  {
    v7 = [(HKInteractiveChartActivityData *)self activitySummaryData];
    v8 = [v7 appleStandHours];
    v9 = [MEMORY[0x1E696C510] countUnit];
    [v8 doubleValueForUnit:v9];
    v2 = v10 > 0.0;

LABEL_21:
    return v2;
  }

  return 1;
}

- (BOOL)activityPaused
{
  v2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
  v3 = [v2 isPaused];

  return v3;
}

- (NSString)description
{
  v2 = [(HKInteractiveChartActivityData *)self activitySummaryData];
  v3 = [v2 description];

  return v3;
}

@end