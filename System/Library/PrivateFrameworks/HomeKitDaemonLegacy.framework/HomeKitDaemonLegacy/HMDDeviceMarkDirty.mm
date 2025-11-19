@interface HMDDeviceMarkDirty
@end

@implementation HMDDeviceMarkDirty

void ____HMDDeviceMarkDirty_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDirty])
  {
    [*(a1 + 32) setDirty:0];
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"HMDDeviceUpdatedNotification" object:*(a1 + 32)];
  }
}

@end