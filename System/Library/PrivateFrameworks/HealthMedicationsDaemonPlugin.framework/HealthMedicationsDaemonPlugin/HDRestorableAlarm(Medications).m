@interface HDRestorableAlarm(Medications)
- (id)medicationNotificationEventWithScheduleItem:()Medications dueDate:isFollowUp:isCritical:medicationsCount:;
@end

@implementation HDRestorableAlarm(Medications)

- (id)medicationNotificationEventWithScheduleItem:()Medications dueDate:isFollowUp:isCritical:medicationsCount:
{
  v12 = a4;
  v13 = [a3 identifier];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a5];
  v15 = [v14 longValue];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  v17 = [v16 longValue];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@%li%@%@%@%li", @"scheduleItemId", @":", v13, @", ", @"isFollowUp", @":", v15, @", ", @"isCritical", @":", v17];

  v19 = [a1 eventWithIdentifier:v18 dueDate:v12 eventOptions:0 clientOptions:a7 > 1];

  return v19;
}

@end