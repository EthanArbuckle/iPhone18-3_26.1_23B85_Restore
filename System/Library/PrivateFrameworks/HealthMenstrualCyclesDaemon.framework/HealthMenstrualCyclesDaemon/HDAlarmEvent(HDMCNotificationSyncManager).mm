@interface HDAlarmEvent(HDMCNotificationSyncManager)
- (id)hdmc_notificationHoldInstruction;
@end

@implementation HDAlarmEvent(HDMCNotificationSyncManager)

- (id)hdmc_notificationHoldInstruction
{
  hdmc_categoryIdentifier = [self hdmc_categoryIdentifier];
  currentDueDate = [self currentDueDate];
  v4 = [currentDueDate dateByAddingTimeInterval:86400.0];

  v5 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:2 categoryIdentifier:hdmc_categoryIdentifier expirationDate:v4];

  return v5;
}

@end