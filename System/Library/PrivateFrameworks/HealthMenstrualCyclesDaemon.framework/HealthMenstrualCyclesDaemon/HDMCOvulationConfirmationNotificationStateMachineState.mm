@interface HDMCOvulationConfirmationNotificationStateMachineState
+ (id)stateFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)computeNewStateFromAnalysis:(id)analysis currentDate:(id)date fertileWindowNotificationTimeOfDay:(id)day fertilityNotificationsEnabled:(BOOL)enabled daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed;
- (id)computeNewStateFromFertilityNotificationsEnabled:(BOOL)enabled isOvulationConfirmed:(BOOL)confirmed correlatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)ovulationConfirmed;
- (id)dictionaryRepresentation;
- (int64_t)stateType;
@end

@implementation HDMCOvulationConfirmationNotificationStateMachineState

+ (id)stateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"StateType"];
  integerValue = [v4 integerValue];

  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      v6 = HDMCOvulationConfirmationNotificationScheduledState;
      goto LABEL_10;
    }

    if (integerValue == 3)
    {
      v6 = HDMCOvulationConfirmationNotificationFiredState;
      goto LABEL_10;
    }
  }

  else
  {
    if (!integerValue)
    {
      v7 = objc_alloc_init(HDMCOvulationConfirmationNotificationFeatureOffState);
      goto LABEL_11;
    }

    if (integerValue == 1)
    {
      v6 = HDMCOvulationConfirmationNotificationWaitingState;
LABEL_10:
      v7 = [(__objc2_class *)v6 notificationStateFromDictionaryRepresentation:representationCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stateType = [(HDMCOvulationConfirmationNotificationStateMachineState *)self stateType];
      stateType2 = [(HDMCOvulationConfirmationNotificationStateMachineState *)v5 stateType];

      v8 = stateType == stateType2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)computeNewStateFromAnalysis:(id)analysis currentDate:(id)date fertileWindowNotificationTimeOfDay:(id)day fertilityNotificationsEnabled:(BOOL)enabled daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed
{
  enabledCopy = enabled;
  dayCopy = day;
  dateCopy = date;
  analysisCopy = analysis;
  fertileWindowProjections = [analysisCopy fertileWindowProjections];
  firstObject = [fertileWindowProjections firstObject];
  v15 = [firstObject predictionPrimarySource] == 3;

  fertileWindowProjections2 = [analysisCopy fertileWindowProjections];
  firstObject2 = [fertileWindowProjections2 firstObject];
  allDays = [firstObject2 allDays];
  if (v19 <= 0)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v19 + allDays - 1;
  }

  cycles = [analysisCopy cycles];
  firstObject3 = [cycles firstObject];
  menstruationSegment = [firstObject3 menstruationSegment];
  days = [menstruationSegment days];

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v26 = [hk_gregorianCalendar hkmc_nextDateAfterDate:dateCopy matchingHourComponents:dayCopy];

  v27 = [v26 hk_dayIndexWithCalendar:hk_gregorianCalendar];
  fertileWindowProjections3 = [analysisCopy fertileWindowProjections];

  firstObject4 = [fertileWindowProjections3 firstObject];
  daysOffsetFromCalendarMethod = [firstObject4 daysOffsetFromCalendarMethod];

  v31 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self computeNewStateFromFertilityNotificationsEnabled:enabledCopy isOvulationConfirmed:v15 correlatingPeriodStartDayIndex:days fertileWindowEndDayIndex:v20 fireDayIndex:v27 daysShiftedForFertileWindow:daysOffsetFromCalendarMethod daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed];

  return v31;
}

- (id)computeNewStateFromFertilityNotificationsEnabled:(BOOL)enabled isOvulationConfirmed:(BOOL)confirmed correlatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)ovulationConfirmed
{
  if (!enabled)
  {
    v10 = objc_alloc_init(HDMCOvulationConfirmationNotificationFeatureOffState);
    goto LABEL_5;
  }

  if (confirmed)
  {
    v10 = [(HDMCOvulationConfirmationNotificationStateMachineState *)self computeNewStateFromCorrelatingPeriodStartDayIndex:index fertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex daysShiftedForFertileWindow:window daysWithWristTemp45DaysBeforeOvulationConfirmed:ovulationConfirmed];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v12 = [HDMCOvulationConfirmationNotificationWaitingState alloc];
  firedDayIndex = [(HDMCOvulationConfirmationNotificationStateMachineState *)self firedDayIndex];
  v11 = [(HDMCOvulationConfirmationNotificationWaitingState *)v12 initWithFiredDayIndex:firedDayIndex];

LABEL_7:

  return v11;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed
{
  v7 = [[HDMCOvulationConfirmationNotificationScheduledState alloc] initWithFertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex correlatingPeriodStartDayIndex:index daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed daysShiftedForFertileWindow:window];

  return v7;
}

- (int64_t)stateType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end