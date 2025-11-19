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
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];
  v4 = [v3 count];

  if (v4 != 3)
  {
    [(HDAlarmEvent(Medications) *)a1 isFollowUpNotificationEvent];
  }

  v5 = [a1 eventIdentifier];
  v6 = BoolValueFromIdentifierForKey(v5, @"isFollowUp");

  return v6;
}

- (uint64_t)isCriticalNotificationEvent
{
  v2 = [a1 eventIdentifier];
  v3 = [v2 componentsSeparatedByString:{@", "}];
  v4 = [v3 count];

  if (v4 != 3)
  {
    [(HDAlarmEvent(Medications) *)a1 isCriticalNotificationEvent];
  }

  v5 = [a1 eventIdentifier];
  v6 = BoolValueFromIdentifierForKey(v5, @"isCritical");

  return v6;
}

- (id)scheduleItemIdentifier
{
  v2 = [a1 eventIdentifier];
  v3 = [a1 eventIdentifier];
  if ([v3 containsString:{@", "}])
  {
  }

  else
  {
    v4 = [a1 eventIdentifier];
    [v4 doubleValue];
    v6 = v5;

    if (v6 > 0.0)
    {
      v7 = v2;
      goto LABEL_8;
    }
  }

  v8 = [a1 eventIdentifier];
  v9 = [v8 componentsSeparatedByString:{@", "}];
  v10 = [v9 count];

  if (v10 != 3)
  {
    [(HDAlarmEvent(Medications) *)a1 scheduleItemIdentifier];
  }

  v11 = [v2 componentsSeparatedByString:{@", "}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __KeyValuePairFromIdentifierForKey_block_invoke;
  v15[3] = &unk_2796CE388;
  v16 = @"scheduleItemId";
  v12 = [v11 hk_firstObjectPassingTest:v15];

  v13 = [v12 componentsSeparatedByString:@":"];
  v7 = [v13 lastObject];

LABEL_8:

  return v7;
}

- (void)isFollowUpNotificationEvent
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_6(v2 v3];
}

- (void)isCriticalNotificationEvent
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_6(v2 v3];
}

- (void)scheduleItemIdentifier
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 eventIdentifier];
  [OUTLINED_FUNCTION_0_6(v2 v3];
}

@end