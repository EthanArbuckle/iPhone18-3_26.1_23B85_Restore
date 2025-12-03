@interface HDMCOvulationConfirmationNotificationFiredState
+ (id)notificationStateFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HDMCOvulationConfirmationNotificationFiredState)initWithFireDayIndex:(int64_t)index;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation HDMCOvulationConfirmationNotificationFiredState

- (HDMCOvulationConfirmationNotificationFiredState)initWithFireDayIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = HDMCOvulationConfirmationNotificationFiredState;
  result = [(HDMCOvulationConfirmationNotificationFiredState *)&v5 init];
  if (result)
  {
    result->_fireDayIndex = index;
  }

  return result;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];

  if (v5)
  {
    v6 = [self alloc];
    v7 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];
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

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed
{
  if ([(HDMCOvulationConfirmationNotificationFiredState *)self fireDayIndex]<= index)
  {
    v15.receiver = self;
    v15.super_class = HDMCOvulationConfirmationNotificationFiredState;
    selfCopy = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v15 computeNewStateFromCorrelatingPeriodStartDayIndex:index fertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex daysShiftedForFertileWindow:window daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v8.receiver = self;
  v8.super_class = HDMCOvulationConfirmationNotificationFiredState;
  dictionaryRepresentation = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v8 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationFiredState fireDayIndex](self, "fireDayIndex")}];
  [v4 setObject:v5 forKeyedSubscript:@"FireDayIndex"];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = HDMCOvulationConfirmationNotificationFiredState;
  if ([(HDMCOvulationConfirmationNotificationStateMachineState *)&v7 isEqual:equalCopy])
  {
    v5 = self->_fireDayIndex == equalCopy[1];
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