@interface FVIOKit
@end

@implementation FVIOKit

void __FVIOKit_StopVibrator_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

@end