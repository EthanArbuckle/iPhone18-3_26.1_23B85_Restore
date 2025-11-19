@interface HDMCUnconfirmedDeviationNotificationWaitingState
+ (id)notificationStateFromDictionaryRepresentation:(id)a3;
- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5;
@end

@implementation HDMCUnconfirmedDeviationNotificationWaitingState

+ (id)notificationStateFromDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 objectForKeyedSubscript:@"FireDayIndex"];

  v7 = [v5 initWithFireDayIndex:v6];

  return v7;
}

- (id)computeNewStateFromMaxEnd:(int64_t)a3 dismissalDayIndex:(id)a4 scheduledFireDayIndex:(int64_t)a5
{
  v8 = a4;
  v9 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
  v10 = v9;
  if (v8)
  {

    if (!v10)
    {
      v10 = v8;
      goto LABEL_10;
    }

    v11 = [v8 intValue];
    v12 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
    v13 = [v12 intValue];

    if (v11 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v14 + 180];
  }

  if (!v10)
  {
    v15 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v16 = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v15 initWithFireDayIndex:v10];
    goto LABEL_13;
  }

LABEL_10:
  if ([v10 integerValue] < a3)
  {
    v17 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v19 = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v17 initWithFireDayIndex:v18];

    goto LABEL_14;
  }

  v16 = self;
LABEL_13:
  v19 = v16;
LABEL_14:

  return v19;
}

@end