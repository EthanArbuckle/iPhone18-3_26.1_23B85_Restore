@interface BRKRegisterForLockedStatusChange
@end

@implementation BRKRegisterForLockedStatusChange

void ___BRKRegisterForLockedStatusChange_block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"BRKDeviceLockStateChangedNotification" object:0];
}

@end