@interface HDMCOvulationConfirmationNotificationScheduledState
+ (id)notificationStateFromDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HDMCOvulationConfirmationNotificationScheduledState)initWithFertileWindowEndDayIndex:(int64_t)a3 fireDayIndex:(int64_t)a4 correlatingPeriodStartDayIndex:(int64_t)a5 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a6 daysShiftedForFertileWindow:(int64_t)a7;
- (id)computeFiredStateWithCurrentDayIndex:(int64_t)a3;
- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7;
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
  v3 = [(HDMCOvulationConfirmationNotificationScheduledState *)self fireDayIndex];

  return [v2 numberWithInteger:v3];
}

- (id)scheduledNotificationFertileWindowEndDayIndex
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HDMCOvulationConfirmationNotificationScheduledState *)self fertileWindowEndDayIndex];

  return [v2 numberWithInteger:v3];
}

- (id)scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HDMCOvulationConfirmationNotificationScheduledState *)self daysWithWristTemp45DaysBeforeOvulationConfirmed];

  return [v2 numberWithInteger:v3];
}

- (id)scheduledNotificationDaysShiftedForFertileWindow
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HDMCOvulationConfirmationNotificationScheduledState *)self daysShiftedForFertileWindow];

  return [v2 numberWithInteger:v3];
}

- (HDMCOvulationConfirmationNotificationScheduledState)initWithFertileWindowEndDayIndex:(int64_t)a3 fireDayIndex:(int64_t)a4 correlatingPeriodStartDayIndex:(int64_t)a5 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a6 daysShiftedForFertileWindow:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  result = [(HDMCOvulationConfirmationNotificationScheduledState *)&v13 init];
  if (result)
  {
    result->_fertileWindowEndDayIndex = a3;
    result->_fireDayIndex = a4;
    result->_correlatingPeriodStartDayIndex = a5;
    result->_daysWithWristTemp45DaysBeforeOvulationConfirmed = a6;
    result->_daysShiftedForFertileWindow = a7;
  }

  return result;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FertileWindowEndDayIndex"];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"FireDayIndex"];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v4 objectForKeyedSubscript:@"CorrelatingPeriodStartDayIndex"];
  if (!v9)
  {
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"DaysWithWristTemp45DaysBeforeOvulationConfirmedKey"];
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v4 objectForKeyedSubscript:@"DaysShiftedForFertileWindow"];

  if (v13)
  {
    v26 = [a1 alloc];
    v14 = [v4 objectForKeyedSubscript:@"FertileWindowEndDayIndex"];
    v15 = [v14 integerValue];
    v16 = [v4 objectForKeyedSubscript:@"FireDayIndex"];
    v17 = [v16 integerValue];
    v18 = [v4 objectForKeyedSubscript:@"CorrelatingPeriodStartDayIndex"];
    v19 = [v18 integerValue];
    v20 = [v4 objectForKeyedSubscript:@"DaysWithWristTemp45DaysBeforeOvulationConfirmedKey"];
    v21 = [v20 integerValue];
    v22 = [v4 objectForKeyedSubscript:@"DaysShiftedForFertileWindow"];
    v23 = [v26 initWithFertileWindowEndDayIndex:v15 fireDayIndex:v17 correlatingPeriodStartDayIndex:v19 daysWithWristTemp45DaysBeforeOvulationConfirmed:v21 daysShiftedForFertileWindow:{objc_msgSend(v22, "integerValue")}];

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

- (id)computeFiredStateWithCurrentDayIndex:(int64_t)a3
{
  v3 = [[HDMCOvulationConfirmationNotificationFiredState alloc] initWithFireDayIndex:a3];

  return v3;
}

- (id)computeNewStateFromCorrelatingPeriodStartDayIndex:(int64_t)a3 fertileWindowEndDayIndex:(int64_t)a4 fireDayIndex:(int64_t)a5 daysShiftedForFertileWindow:(int64_t)a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:(int64_t)a7
{
  if ([(HDMCOvulationConfirmationNotificationScheduledState *)self fireDayIndex]<= a3 || [(HDMCOvulationConfirmationNotificationScheduledState *)self fertileWindowEndDayIndex]== a4)
  {
    v15.receiver = self;
    v15.super_class = HDMCOvulationConfirmationNotificationScheduledState;
    v13 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v15 computeNewStateFromCorrelatingPeriodStartDayIndex:a3 fertileWindowEndDayIndex:a4 fireDayIndex:a5 daysShiftedForFertileWindow:a6 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7];
  }

  else
  {
    v13 = [(HDMCOvulationConfirmationNotificationScheduledState *)self initWithFertileWindowEndDayIndex:a4 fireDayIndex:a5 correlatingPeriodStartDayIndex:a3 daysWithWristTemp45DaysBeforeOvulationConfirmed:a7 daysShiftedForFertileWindow:a6];
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  v3 = [(HDMCOvulationConfirmationNotificationStateMachineState *)&v11 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDMCOvulationConfirmationNotificationScheduledState;
  if ([(HDMCOvulationConfirmationNotificationStateMachineState *)&v8 isEqual:v4])
  {
    v5 = v4;
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