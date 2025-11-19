@interface CKRegisterForAccountRegistrationFailureNotifications
@end

@implementation CKRegisterForAccountRegistrationFailureNotifications

void ___CKRegisterForAccountRegistrationFailureNotifications_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKRegistrationFailureHandleDependentValueChanged, *MEMORY[0x1E69A7DF0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(LocalCenter, 0, _CKRegistrationFailureHandleDependentValueChanged, *MEMORY[0x1E69DE360], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v1 = *MEMORY[0x1E69DDBC0];

  CFNotificationCenterAddObserver(LocalCenter, 0, _CKRegistrationFailureHandleDependentValueChanged, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end