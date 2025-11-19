@interface HDMCUnconfirmedDeviationNotificationScheduledState
+ (id)notificationStateFromDictionaryRepresentation:(id)a3;
- (HDMCUnconfirmedDeviationNotificationScheduledState)initWithFireDayIndex:(id)a3;
- (id)computeFiredStateWithCurrentDayIndex:(int64_t)a3;
- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5;
@end

@implementation HDMCUnconfirmedDeviationNotificationScheduledState

- (HDMCUnconfirmedDeviationNotificationScheduledState)initWithFireDayIndex:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HDMCUnconfirmedDeviationNotificationScheduledState *)a2 initWithFireDayIndex:?];
  }

  v8.receiver = self;
  v8.super_class = HDMCUnconfirmedDeviationNotificationScheduledState;
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)&v8 initWithFireDayIndex:v5];

  return v6;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"FireDayIndex"];

  if (v5)
  {
    v6 = [a1 alloc];
    v7 = [v4 objectForKeyedSubscript:@"FireDayIndex"];
    v8 = [v6 initWithFireDayIndex:v7];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [HDMCUnconfirmedDeviationNotificationScheduledState notificationStateFromDictionaryRepresentation:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)computeFiredStateWithCurrentDayIndex:(int64_t)a3
{
  v4 = [HDMCUnconfirmedDeviationNotificationWaitingState alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)v4 initWithFireDayIndex:v5];

  return v6;
}

- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5
{
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 integerValue] <= a5 && objc_msgSend(v9, "integerValue") >= a3)
  {
    v10 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)[HDMCUnconfirmedDeviationNotificationWaitingState alloc] initWithFireDayIndex:0];
  }

  else
  {
    v10 = self;
  }

  v11 = v10;

  return v11;
}

- (void)initWithFireDayIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMCUnconfirmedDeviationNotificationStateMachineState.m" lineNumber:152 description:@"You cannot enter a scheduled state without a fire day associated with it"];
}

+ (void)notificationStateFromDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = v2;
  v4 = HKSensitiveLogItem();
  v6 = 138543618;
  v7 = v2;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_2293D1000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot retrieve full state from dictionary: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end