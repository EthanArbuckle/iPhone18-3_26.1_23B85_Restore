@interface HKNotificationInstruction
@end

@implementation HKNotificationInstruction

id __98__HKNotificationInstruction_BloodPressureJournal__notificationIdentifiersFromCategoryIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"BPJAlarmEventID-"])
  {
    v4 = [*(a1 + 32) notificationIdentifierFromCategoryIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end