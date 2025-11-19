@interface AttachSharedCacheValuesObserverIfNeeded
@end

@implementation AttachSharedCacheValuesObserverIfNeeded

void ___AttachSharedCacheValuesObserverIfNeeded_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _SharedCacheValuesChangedHandler_0, @"com.apple.passkit.sharedcachechanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end