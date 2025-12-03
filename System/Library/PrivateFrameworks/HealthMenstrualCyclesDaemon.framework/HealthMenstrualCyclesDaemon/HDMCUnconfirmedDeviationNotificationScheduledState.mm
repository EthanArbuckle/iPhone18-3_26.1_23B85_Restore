@interface HDMCUnconfirmedDeviationNotificationScheduledState
+ (id)notificationStateFromDictionaryRepresentation:(id)representation;
- (HDMCUnconfirmedDeviationNotificationScheduledState)initWithFireDayIndex:(id)index;
- (id)computeFiredStateWithCurrentDayIndex:(int64_t)index;
- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex;
@end

@implementation HDMCUnconfirmedDeviationNotificationScheduledState

- (HDMCUnconfirmedDeviationNotificationScheduledState)initWithFireDayIndex:(id)index
{
  indexCopy = index;
  if (!indexCopy)
  {
    [(HDMCUnconfirmedDeviationNotificationScheduledState *)a2 initWithFireDayIndex:?];
  }

  v8.receiver = self;
  v8.super_class = HDMCUnconfirmedDeviationNotificationScheduledState;
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)&v8 initWithFireDayIndex:indexCopy];

  return v6;
}

+ (id)notificationStateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];

  if (v5)
  {
    v6 = [self alloc];
    v7 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];
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

- (id)computeFiredStateWithCurrentDayIndex:(int64_t)index
{
  v4 = [HDMCUnconfirmedDeviationNotificationWaitingState alloc];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v6 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)v4 initWithFireDayIndex:v5];

  return v6;
}

- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex
{
  indexCopy = index;
  v9 = indexCopy;
  if (indexCopy && [indexCopy integerValue] <= dayIndex && objc_msgSend(v9, "integerValue") >= end)
  {
    selfCopy = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)[HDMCUnconfirmedDeviationNotificationWaitingState alloc] initWithFireDayIndex:0];
  }

  else
  {
    selfCopy = self;
  }

  v11 = selfCopy;

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