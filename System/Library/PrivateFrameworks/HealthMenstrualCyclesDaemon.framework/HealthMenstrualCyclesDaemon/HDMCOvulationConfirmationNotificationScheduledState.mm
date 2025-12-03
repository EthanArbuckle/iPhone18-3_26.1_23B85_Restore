@interface HDMCOvulationConfirmationNotificationScheduledState
+ (id)notificationStateFromDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HDMCOvulationConfirmationNotificationScheduledState)initWithFertileWindowEndDayIndex:(int64_t)index fireDayIndex:(int64_t)dayIndex correlatingPeriodStartDayIndex:(int64_t)startDayIndex daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed daysShiftedForFertileWindow:(int64_t)window;
- (id)computeFiredStateWithCurrentDayIndex:(int64_t)index;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed;
- (id)description;
- (id)dictionaryRepresentation;
- (id)scheduledNotificationDaysShiftedForFertileWindow;
- (id)scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed;
- (id)scheduledNotificationFertileWindowEndDayIndex;
- (id)scheduledNotificationFireDayIndex;
@end

@implementation HDMCOvulationConfirmationNotificationScheduledState

- (id)scheduledNotificationFireDayIndex
{
  v2 = MEMORY[0x277CCABB0];
  fireDayIndex = [(HDMCOvulationConfirmationNotificationScheduledState *)self fireDayIndex];

  return [v2 numberWithInteger:fireDayIndex];
}

- (id)scheduledNotificationFertileWindowEndDayIndex
{
  v2 = MEMORY[0x277CCABB0];
  fertileWindowEndDayIndex = [(HDMCOvulationConfirmationNotificationScheduledState *)self fertileWindowEndDayIndex];

  return [v2 numberWithInteger:fertileWindowEndDayIndex];
}

- (id)scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed
{
  v2 = MEMORY[0x277CCABB0];
  daysWithWristTemp45DaysBeforeOvulationConfirmed = [(HDMCOvulationConfirmationNotificationScheduledState *)self daysWithWristTemp45DaysBeforeOvulationConfirmed];

  return [v2 numberWithInteger:daysWithWristTemp45DaysBeforeOvulationConfirmed];
}

- (id)scheduledNotificationDaysShiftedForFertileWindow
{
  v2 = MEMORY[0x277CCABB0];
  daysShiftedForFertileWindow = [(HDMCOvulationConfirmationNotificationScheduledState *)self daysShiftedForFertileWindow];

  return [v2 numberWithInteger:daysShiftedForFertileWindow];
}

- (HDMCOvulationConfirmationNotificationScheduledState)initWithFertileWindowEndDayIndex:(int64_t)index fireDayIndex:(int64_t)dayIndex correlatingPeriodStartDayIndex:(int64_t)startDayIndex daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed daysShiftedForFertileWindow:(int64_t)window
{
  v13.receiver = self;
  v13.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  result = [(HDMCOvulationConfirmationNotificationScheduledState *)&v13 init];
  if (result)
  {
    result->_fertileWindowEndDayIndex = index;
    result->_fireDayIndex = dayIndex;
    result->_correlatingPeriodStartDayIndex = startDayIndex;
    result->_daysWithWristTemp45DaysBeforeOvulationConfirmed = confirmed;
    result->_daysShiftedForFertileWindow = window;
  }

  return result;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"FertileWindowEndDayIndex"];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [representationCopy objectForKeyedSubscript:@"CorrelatingPeriodStartDayIndex"];
  if (!v9)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [representationCopy objectForKeyedSubscript:@"DaysWithWristTemp45DaysBeforeOvulationConfirmedKey"];
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
  v13 = [representationCopy objectForKeyedSubscript:@"DaysShiftedForFertileWindow"];

  if (v13)
  {
    v26 = [self alloc];
    v14 = [representationCopy objectForKeyedSubscript:@"FertileWindowEndDayIndex"];
    integerValue = [v14 integerValue];
    v16 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];
    integerValue2 = [v16 integerValue];
    v18 = [representationCopy objectForKeyedSubscript:@"CorrelatingPeriodStartDayIndex"];
    integerValue3 = [v18 integerValue];
    v20 = [representationCopy objectForKeyedSubscript:@"DaysWithWristTemp45DaysBeforeOvulationConfirmedKey"];
    integerValue4 = [v20 integerValue];
    v22 = [representationCopy objectForKeyedSubscript:@"DaysShiftedForFertileWindow"];
    v23 = [v26 initWithFertileWindowEndDayIndex:integerValue fireDayIndex:integerValue2 correlatingPeriodStartDayIndex:integerValue3 daysWithWristTemp45DaysBeforeOvulationConfirmed:integerValue4 daysShiftedForFertileWindow:{objc_msgSend(v22, "integerValue")}];

    goto LABEL_13;
  }

LABEL_10:
  _HKInitializeLogging();
  v24 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
  {
    [HDMCOvulationConfirmationNotificationScheduledState notificationStateFromDictionaryRepresentation:v24];
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (id)computeFiredStateWithCurrentDayIndex:(int64_t)index
{
  v3 = [[HDMCOvulationConfirmationNotificationFiredState alloc] initWithFireDayIndex:index];

  return v3;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)index fertileWindowEndDayIndex:(int64_t)dayIndex fireDayIndex:(int64_t)fireDayIndex daysShiftedForFertileWindow:(int64_t)window daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)confirmed
{
  if ([(HDMCOvulationConfirmationNotificationScheduledState *)self fireDayIndex]<= index || [(HDMCOvulationConfirmationNotificationScheduledState *)self fertileWindowEndDayIndex]== dayIndex)
  {
    v15.receiver = self;
    v15.super_class = HDMCOvulationConfirmationNotificationScheduledState;
    v13 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v15 computeNewStateFromCorrelatingPeriodStartDayIndex:index fertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex daysShiftedForFertileWindow:window daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed];
  }

  else
  {
    v13 = [(HDMCOvulationConfirmationNotificationScheduledState *)self initWithFertileWindowEndDayIndex:dayIndex fireDayIndex:fireDayIndex correlatingPeriodStartDayIndex:index daysWithWristTemp45DaysBeforeOvulationConfirmed:confirmed daysShiftedForFertileWindow:window];
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  dictionaryRepresentation = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationScheduledState fertileWindowEndDayIndex](self, "fertileWindowEndDayIndex")}];
  [v4 setObject:v5 forKeyedSubscript:@"FertileWindowEndDayIndex"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationScheduledState fireDayIndex](self, "fireDayIndex")}];
  [v4 setObject:v6 forKeyedSubscript:@"FireDayIndex"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationScheduledState correlatingPeriodStartDayIndex](self, "correlatingPeriodStartDayIndex")}];
  [v4 setObject:v7 forKeyedSubscript:@"CorrelatingPeriodStartDayIndex"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationScheduledState daysWithWristTemp45DaysBeforeOvulationConfirmed](self, "daysWithWristTemp45DaysBeforeOvulationConfirmed")}];
  [v4 setObject:v8 forKeyedSubscript:@"DaysWithWristTemp45DaysBeforeOvulationConfirmedKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCOvulationConfirmationNotificationScheduledState daysShiftedForFertileWindow](self, "daysShiftedForFertileWindow")}];
  [v4 setObject:v9 forKeyedSubscript:@"DaysShiftedForFertileWindow"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  if ([(HDMCOvulationConfirmationNotificationStateMachineState *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = self->_fertileWindowEndDayIndex == v5[1] && self->_fireDayIndex == v5[2] && self->_correlatingPeriodStartDayIndex == v5[3] && self->_daysWithWristTemp45DaysBeforeOvulationConfirmed == v5[4] && self->_daysShiftedForFertileWindow == v5[5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fertileWindowEndDayIndex];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fireDayIndex];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_correlatingPeriodStartDayIndex];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysWithWristTemp45DaysBeforeOvulationConfirmed];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_daysShiftedForFertileWindow];
  v10 = [v3 stringWithFormat:@"<%@:%p fertileWindowEndDayIndex: %@ fireDayIndex:%@ correlatingPeriodStartDayIndex: %@ daysWithWristTemp45DaysBeforeOvulationConfirmed:%@ daysShiftedForFertileWindow:%@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

+ (void)notificationStateFromDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Cannot retrieve full state from dictionary: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end