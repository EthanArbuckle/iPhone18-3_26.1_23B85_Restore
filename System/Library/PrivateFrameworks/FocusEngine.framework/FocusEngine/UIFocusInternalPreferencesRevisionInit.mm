@interface UIFocusInternalPreferencesRevisionInit
@end

@implementation UIFocusInternalPreferencesRevisionInit

void _UIFocusInternalPreferencesRevisionInit_block_invoke()
{
  if (os_variant_has_internal_diagnostics())
  {
    obj = _UIFocusPreferencesOnce();
    v0 = [obj objectForKey:@"InternalPreferencesEnabled"];
    v1 = v0;
    if (v0 && ![v0 BOOLValue])
    {
      _UIFocusInternalPreferencesRevisionVar = -1;
    }

    else
    {
      objc_storeStrong(&_revisionDefaults, obj);
      _UIFocusInternalPreferencesRevisionVar = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, notificationHandler, @"com.apple.FocusEngine.InternalPreferences", 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }
}

@end