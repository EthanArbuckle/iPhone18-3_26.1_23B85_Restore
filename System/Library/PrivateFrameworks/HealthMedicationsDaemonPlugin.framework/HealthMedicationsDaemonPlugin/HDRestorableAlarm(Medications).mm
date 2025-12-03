@interface HDRestorableAlarm(Medications)
- (id)medicationNotificationEventWithScheduleItem:()Medications dueDate:isFollowUp:isCritical:medicationsCount:;
@end

@implementation HDRestorableAlarm(Medications)

- (id)medicationNotificationEventWithScheduleItem:()Medications dueDate:isFollowUp:isCritical:medicationsCount:
{
  v12 = a4;
  identifier = [a3 identifier];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a5];
  longValue = [v14 longValue];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  longValue2 = [v16 longValue];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@%li%@%@%@%li", @"scheduleItemId", @":", identifier, @", ", @"isFollowUp", @":", longValue, @", ", @"isCritical", @":", longValue2];

  v19 = [self eventWithIdentifier:v18 dueDate:v12 eventOptions:0 clientOptions:a7 > 1];

  return v19;
}

@end