@interface CALNCalendarAppBadgeUpdater
- (CALNCalendarAppBadgeUpdater)initWithInboxNotificationMonitor:(id)a3;
- (void)handleNotificationsChangedNotification:(id)a3;
@end

@implementation CALNCalendarAppBadgeUpdater

- (CALNCalendarAppBadgeUpdater)initWithInboxNotificationMonitor:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CALNCalendarAppBadgeUpdater;
  v6 = [(CALNCalendarAppBadgeUpdater *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inboxNotificationMonitor, a3);
    v8 = objc_alloc(MEMORY[0x277D77740]);
    v9 = [v8 initWithBundleIdentifier:*MEMORY[0x277CF78A0]];
    applicationState = v7->_applicationState;
    v7->_applicationState = v9;

    [v5 addNotificationsChangedObserver:v7 selector:sel_handleNotificationsChangedNotification_];
  }

  return v7;
}

- (void)handleNotificationsChangedNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(CALNCalendarAppBadgeUpdater *)self inboxNotificationMonitor];
  v5 = [v4 eventNotificationCount];

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67240192;
    v10[1] = v5;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Update calendar app badge count to %{public}d", v10, 8u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [(CALNCalendarAppBadgeUpdater *)self applicationState];
  [v8 setBadgeValue:v7];

  v9 = *MEMORY[0x277D85DE8];
}

@end