@interface PassKitApiInit
@end

@implementation PassKitApiInit

void ___PassKitApiInit_block_invoke()
{
  if (!kPKDarwinNotificationEventInAppPresented)
  {
    v0 = MEMORY[0x193AF5ED0]("PKDarwinNotificationEventInAppPresented", @"PassKitCore");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&kPKDarwinNotificationEventInAppPresented, v1);
  }

  if (!kPKDarwinNotificationEventInAppDismissed)
  {
    v2 = MEMORY[0x193AF5ED0]("PKDarwinNotificationEventInAppDismissed", @"PassKitCore");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&kPKDarwinNotificationEventInAppDismissed, v3);
  }
}

@end