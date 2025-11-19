@interface CMSUtility
@end

@implementation CMSUtility

void __CMSUtility_PostInterruptionCommandNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"Interruption");
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
}

@end