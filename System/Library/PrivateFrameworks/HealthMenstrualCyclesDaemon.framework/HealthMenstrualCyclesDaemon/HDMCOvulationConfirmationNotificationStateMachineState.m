@interface HDMCOvulationConfirmationNotificationStateMachineState
+ (id)stateFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)computeNewStateFromAnalysis:(id)a3 currentDate:(id)a4 fertileWindowNotificationTimeOfDay:(id)a5 fertilityNotificationsEnabled:(BOOL)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7;
- (id)computeNewStateFromFertilityNotificationsEnabled:(BOOL)a3 isOvulationConfirmed:(BOOL)a4 correlatingPeriodStartDayIndex:(int64_t)a5 fertileWindowEndDayIndex:(int64_t)a6 fireDayIndex:(int64_t)a7 daysShiftedForFertileWindow:(int64_t)a8 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a9;
- (id)dictionaryRepresentation;
- (int64_t)stateType;
@end

@implementation HDMCOvulationConfirmationNotificationStateMachineState

+ (id)stateFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"StateType"];
  v5 = [v4 integerValue];

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = HDMCOvulationConfirmationNotificationScheduledState;
      goto LABEL_10;
    }

    if (v5 == 3)
    {
      v6 = HDMCOvulationConfirmationNotificationFiredState;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      v7 = objc_alloc_init(HDMCOvulationConfirmationNotificationFeatureOffState);
      goto LABEL_11;
    }

    if (v5 == 1)
    {
      v6 = HDMCOvulationConfirmationNotificationWaitingState;
LABEL_10:
      v7 = [(__objc2_class *)v6 notificationStateFromDictionaryRepresentation:v3];
LABEL_11:
      v8 = v7;
      if (v7)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = objc_alloc_init(HDMCOvulationConfirmationNotificationFeatureOffState);
LABEL_13:

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationStateMachineState stateType](self, "stateType")}];
  [v3 setObject:v4 forKeyedSubscript:@"StateType"];

  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self stateType];
      v7 = [(HDMCOvulationConfirmationNotificationStateMachineState *)v5 stateType];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)computeNewStateFromAnalysis:(id)a3 currentDate:(id)a4 fertileWindowNotificationTimeOfDay:(id)a5 fertilityNotificationsEnabled:(BOOL)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7
{
  v34 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 fertileWindowProjections];
  v14 = [v13 firstObject];
  v15 = [v14 predictionPrimarySource] == 3;

  v16 = [v12 fertileWindowProjections];
  v17 = [v16 firstObject];
  v18 = [v17 allDays];
  if (v19 <= 0)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v19 + v18 - 1;
  }

  v21 = [v12 cycles];
  v22 = [v21 firstObject];
  v23 = [v22 menstruationSegment];
  v24 = [v23 days];

  v25 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v26 = [v25 hkmc_nextDateAfterDate:v11 matchingHourComponents:v10];

  v27 = [v26 hk_dayIndexWithCalendar:v25];
  v28 = [v12 fertileWindowProjections];

  v29 = [v28 firstObject];
  v30 = [v29 daysOffsetFromCalendarMethod];

  v31 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self computeNewStateFromFertilityNotificationsEnabled:v34 isOvulationConfirmed:v15 correlatingPeriodStartDayIndex:v24 fertileWindowEndDayIndex:v20 fireDayIndex:v27 daysShiftedForFertileWindow:v30 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7];

  return v31;
}

- (id)computeNewStateFromFertilityNotificationsEnabled:(BOOL)a3 isOvulationConfirmed:(BOOL)a4 correlatingPeriodStartDayIndex:(int64_t)a5 fertileWindowEndDayIndex:(int64_t)a6 fireDayIndex:(int64_t)a7 daysShiftedForFertileWindow:(int64_t)a8 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a9
{
  if (!a3)
  {
    v10 = objc_alloc_init(HDMCOvulationConfirmationNotificationFeatureOffState);
    goto LABEL_5;
  }

  if (a4)
  {
    v10 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self computeNewStateFromCorrelatingPeriodStartDayIndex:a5 fertileWindowEndDayIndex:a6 fireDayIndex:a7 daysShiftedForFertileWindow:a8 daysWithWristTemp45DaysBeforeOvulationConfirmed:a9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v12 = [HDMCOvulationConfirmationNotificationWaitingState alloc];
  v13 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self firedDayIndex];
  v11 = [(HDMCOvulationConfirmationNotificationWaitingState *)v12 initWithFiredDayIndex:v13];

LABEL_7:

  return v11;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7
{
  v7 = [[HDMCOvulationConfirmationNotificationScheduledState alloc] initWithFertileWindowEndDayIndex:a4 fireDayIndex:a5 correlatingPeriodStartDayIndex:a3 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7 daysShiftedForFertileWindow:a6];

  return v7;
}

- (int64_t)stateType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end