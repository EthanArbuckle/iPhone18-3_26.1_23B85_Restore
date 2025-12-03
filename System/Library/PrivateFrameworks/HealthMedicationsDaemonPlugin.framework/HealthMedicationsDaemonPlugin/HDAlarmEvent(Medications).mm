@interface HDAlarmEvent(Medications)
- (id)scheduleItemIdentifier;
- (uint64_t)isCriticalNotificationEvent;
- (uint64_t)isFollowUpNotificationEvent;
- (void)isCriticalNotificationEvent;
- (void)isFollowUpNotificationEvent;
- (void)scheduleItemIdentifier;
@end

@implementation HDAlarmEvent(Medications)

- (uint64_t)isFollowUpNotificationEvent
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v4 = [v3 count];

  if (v4 != 3)
  {
    [(HDAlarmEvent(Medications) *)self isFollowUpNotificationEvent];
  }

  eventIdentifier2 = [self eventIdentifier];
  v6 = BoolValueFromIdentifierForKey(eventIdentifier2, @"isFollowUp");

  return v6;
}

- (uint64_t)isCriticalNotificationEvent
{
  eventIdentifier = [self eventIdentifier];
  v3 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v4 = [v3 count];

  if (v4 != 3)
  {
    [(HDAlarmEvent(Medications) *)self isCriticalNotificationEvent];
  }

  eventIdentifier2 = [self eventIdentifier];
  v6 = BoolValueFromIdentifierForKey(eventIdentifier2, @"isCritical");

  return v6;
}

- (id)scheduleItemIdentifier
{
  eventIdentifier = [self eventIdentifier];
  eventIdentifier2 = [self eventIdentifier];
  if ([eventIdentifier2 containsString:{@", "}])
  {
  }

  else
  {
    eventIdentifier3 = [self eventIdentifier];
    [eventIdentifier3 doubleValue];
    v6 = v5;

    if (v6 > 0.0)
    {
      lastObject = eventIdentifier;
      goto LABEL_8;
    }
  }

  eventIdentifier4 = [self eventIdentifier];
  v9 = [eventIdentifier4 componentsSeparatedByString:{@", "}];
  v10 = [v9 count];

  if (v10 != 3)
  {
    [(HDAlarmEvent(Medications) *)self scheduleItemIdentifier];
  }

  v11 = [eventIdentifier componentsSeparatedByString:{@", "}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __KeyValuePairFromIdentifierForKey_block_invoke;
  v15[3] = &unk_2796CE388;
  v16 = @"scheduleItemId";
  v12 = [v11 hk_firstObjectPassingTest:v15];

  v13 = [v12 componentsSeparatedByString:@":"];
  lastObject = [v13 lastObject];

LABEL_8:

  return lastObject;
}

- (void)isFollowUpNotificationEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

- (void)isCriticalNotificationEvent
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

- (void)scheduleItemIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  eventIdentifier = [self eventIdentifier];
  [OUTLINED_FUNCTION_0_6(eventIdentifier v3];
}

@end