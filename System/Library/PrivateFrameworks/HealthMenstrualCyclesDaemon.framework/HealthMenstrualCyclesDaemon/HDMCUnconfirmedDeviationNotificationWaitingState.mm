@interface HDMCUnconfirmedDeviationNotificationWaitingState
+ (id)notificationStateFromDictionaryRepresentation:(id)representation;
- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex;
@end

@implementation HDMCUnconfirmedDeviationNotificationWaitingState

+ (id)notificationStateFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [self alloc];
  v6 = [representationCopy objectForKeyedSubscript:@"FireDayIndex"];

  v7 = [v5 initWithFireDayIndex:v6];

  return v7;
}

- (id)computeNewStateFromMaxEnd:(int64_t)end dismissalDayIndex:(id)index scheduledFireDayIndex:(int64_t)dayIndex
{
  indexCopy = index;
  fireDayIndex = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
  v10 = fireDayIndex;
  if (indexCopy)
  {

    if (!v10)
    {
      v10 = indexCopy;
      goto LABEL_10;
    }

    intValue = [indexCopy intValue];
    fireDayIndex2 = [(HDMCUnconfirmedDeviationNotificationStateMachineState *)self fireDayIndex];
    intValue2 = [fireDayIndex2 intValue];

    if (intValue <= intValue2)
    {
      v14 = intValue2;
    }

    else
    {
      v14 = intValue;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v14 + 180];
  }

  if (!v10)
  {
    v15 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:dayIndex];
    selfCopy = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v15 initWithFireDayIndex:v10];
    goto LABEL_13;
  }

LABEL_10:
  if ([v10 integerValue] < end)
  {
    v17 = [HDMCUnconfirmedDeviationNotificationScheduledState alloc];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:dayIndex];
    v19 = [(HDMCUnconfirmedDeviationNotificationScheduledState *)v17 initWithFireDayIndex:v18];

    goto LABEL_14;
  }

  selfCopy = self;
LABEL_13:
  v19 = selfCopy;
LABEL_14:

  return v19;
}

@end