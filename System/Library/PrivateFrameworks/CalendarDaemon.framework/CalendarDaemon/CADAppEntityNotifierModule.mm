@interface CADAppEntityNotifierModule
- (CADAppEntityNotifierModule)initWithAppEntityNotifier:(id)notifier;
- (void)receivedNotificationNamed:(id)named;
@end

@implementation CADAppEntityNotifierModule

- (CADAppEntityNotifierModule)initWithAppEntityNotifier:(id)notifier
{
  notifierCopy = notifier;
  v9.receiver = self;
  v9.super_class = CADAppEntityNotifierModule;
  v6 = [(CADAppEntityNotifierModule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notifier, notifier);
  }

  return v7;
}

- (void)receivedNotificationNamed:(id)named
{
  namedCopy = named;
  v5 = namedCopy;
  if (self->_isActive)
  {
    if ([namedCopy isEqualToString:*MEMORY[0x277CF7908]])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because of SignificantTimeChangeNotification";
LABEL_26:
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:@"com.apple.mobilecal.timezonechanged"])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because the timeZone or timeZoneOverride changed";
        goto LABEL_26;
      }

LABEL_27:
      [(CalAppEntityNotifier *)self->_notifier notifyObservers];
      goto LABEL_28;
    }

    if ([v5 isEqualToString:@"com.apple.mobilecal.preference.notification.overlayCalendarID"])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because the alternate calendar (overlay calendar) changed";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:@"com.apple.mobilecal.preference.notification.weekStart"])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because of change in weekStart preference";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:@"com.apple.eventkit.preference.notification.UnselectedCalendarIdentifiersForFocusMode"])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because focus configuration changed";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:@"com.apple.accessibility.prefers.horizontal.text"])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because AXSPrefersHorizontalTextLayout changed";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:*MEMORY[0x277CEBE48]])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because AppProtection hidden apps changed";
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([v5 isEqualToString:*MEMORY[0x277CEBE58]])
    {
      v6 = CADAppEntityHandle;
      if (os_log_type_enabled(CADAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        v7 = "Notifying app entity observers because AppProtection locked apps changed";
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

LABEL_28:
}

@end