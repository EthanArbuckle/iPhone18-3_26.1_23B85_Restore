@interface HDMCOvulationConfirmationNotificationFiredState
+ (id)notificationStateFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDMCOvulationConfirmationNotificationFiredState)initWithFireDayIndex:(int64_t)a3;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation HDMCOvulationConfirmationNotificationFiredState

- (HDMCOvulationConfirmationNotificationFiredState)initWithFireDayIndex:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HDMCOvulationConfirmationNotificationFiredState;
  result = [(HDMCOvulationConfirmationNotificationFiredState *)&v5 init];
  if (result)
  {
    result->_fireDayIndex = a3;
  }

  return result;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FireDayIndex"];

  if (v5)
  {
    v6 = [a1 alloc];
    v7 = [v4 objectForKeyedSubscript:@"FireDayIndex"];
    v8 = [v6 initWithFireDayIndex:{objc_msgSend(v7, "integerValue")}];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCOvulationConfirmationNotificationScheduledState notificationStateFromDictionaryRepresentation:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7
{
  if ([(HDMCOvulationConfirmationNotificationFiredState *)self fireDayIndex]<= a3)
  {
    v15.receiver = self;
    v15.super_class = HDMCOvulationConfirmationNotificationFiredState;
    v13 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v15 computeNewStateFromCorrelatingPeriodStartDayIndex:a3 fertileWindowEndDayIndex:a4 fireDayIndex:a5 daysShiftedForFertileWindow:a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7];
  }

  else
  {
    v13 = self;
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = HDMCOvulationConfirmationNotificationFiredState;
  v3 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v8 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationFiredState fireDayIndex](self, "fireDayIndex")}];
  [v4 setObject:v5 forKeyedSubscript:@"FireDayIndex"];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HDMCOvulationConfirmationNotificationFiredState;
  if ([(HDMCOvulationConfirmationNotificationStateMachineState *)&v7 isEqual:v4])
  {
    v5 = self->_fireDayIndex == v4[1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fireDayIndex];
  v6 = [v3 stringWithFormat:@"<%@:%p fireDayIndex:%@>", v4, self, v5];

  return v6;
}

@end