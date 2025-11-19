@interface ReceiveNotificationResponseCallback
@end

@implementation ReceiveNotificationResponseCallback

void ___ReceiveNotificationResponseCallback_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  (*(a1[4] + 16))();
  v4 = a1[5];

  CFRelease(v4);
}

@end