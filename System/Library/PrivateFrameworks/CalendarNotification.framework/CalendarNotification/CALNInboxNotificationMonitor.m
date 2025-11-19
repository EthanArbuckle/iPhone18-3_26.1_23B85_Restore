@interface CALNInboxNotificationMonitor
- (CALNInboxNotificationMonitor)initWithEventStoreProvider:(id)a3;
- (NSArray)eventNotificationReferences;
- (unint64_t)eventNotificationCount;
- (void)activate;
- (void)addNotificationCountChangedObserver:(id)a3 selector:(SEL)a4;
- (void)addNotificationsChangedObserver:(id)a3 selector:(SEL)a4;
- (void)addNotificationsLoadedObserver:(id)a3 selector:(SEL)a4;
- (void)deactivate;
- (void)receivedNotificationNamed:(id)a3;
- (void)removeNotificationCountChangedObserver:(id)a3 selector:(SEL)a4;
- (void)removeNotificationsChangedObserver:(id)a3;
- (void)removeNotificationsLoadedObserver:(id)a3 selector:(SEL)a4;
@end

@implementation CALNInboxNotificationMonitor

- (CALNInboxNotificationMonitor)initWithEventStoreProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CALNInboxNotificationMonitor;
  v5 = [(CALNInboxNotificationMonitor *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CC5B18]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__CALNInboxNotificationMonitor_initWithEventStoreProvider___block_invoke;
    v12[3] = &unk_278D6F4C0;
    v13 = v4;
    v7 = [v6 initWithOptions:54 eventStoreGetter:v12];
    notificationMonitor = v5->_notificationMonitor;
    v5->_notificationMonitor = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.calendar.notification.InboxNotificationMonitorCallback", v9);
    [(_EKNotificationMonitor *)v5->_notificationMonitor setCallbackNotificationQueue:v10];
  }

  return v5;
}

- (void)addNotificationsChangedObserver:(id)a3 selector:(SEL)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v10 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B38];
  v9 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v10 addObserver:v7 selector:a4 name:v8 object:v9];
}

- (void)removeNotificationsChangedObserver:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v8 = [v4 defaultCenter];
  v6 = *MEMORY[0x277CC5B38];
  v7 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v8 removeObserver:v5 name:v6 object:v7];
}

- (void)addNotificationCountChangedObserver:(id)a3 selector:(SEL)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v10 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B30];
  v9 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v10 addObserver:v7 selector:a4 name:v8 object:v9];
}

- (void)removeNotificationCountChangedObserver:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v9 = [v5 defaultCenter];
  v7 = *MEMORY[0x277CC5B30];
  v8 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v9 removeObserver:v6 name:v7 object:v8];
}

- (void)addNotificationsLoadedObserver:(id)a3 selector:(SEL)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v10 = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B40];
  v9 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v10 addObserver:v7 selector:a4 name:v8 object:v9];
}

- (void)removeNotificationsLoadedObserver:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v9 = [v5 defaultCenter];
  v7 = *MEMORY[0x277CC5B40];
  v8 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v9 removeObserver:v6 name:v7 object:v8];
}

- (NSArray)eventNotificationReferences
{
  v2 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  v3 = [v2 notificationReferences];

  return v3;
}

- (unint64_t)eventNotificationCount
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC59F0] unselectedCalendarIdentifiersForFocusMode];
  v4 = [v3 count];

  v5 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 notificationReferences];

    if ([v7 count])
    {
      v28 = v7;
      v8 = [v7 firstObject];
      v9 = [v8 eventStore];

      v10 = [MEMORY[0x277CC59F0] unselectedCalendarsForFocusModeInEventStore:v9];
      v11 = MEMORY[0x277CC59D0];
      v12 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
      v13 = [v12 notificationReferences];
      v14 = [v11 batchLoadNotifications:v13];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            if ([v21 cuik_shouldShowNotificationWithUnselectedCalendarsForFocus:v10])
            {
              ++v18;
            }

            else
            {
              v22 = +[CALNLogSubsystem calendar];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = [v21 objectID];
                *buf = 138543362;
                v34 = v23;
                _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_INFO, "Notification with objectID %{public}@ has a calendar that is hidden by focus. Not including in the badge count", buf, 0xCu);
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v7 = v28;
    }

    else
    {
      v18 = 0;
    }

    v27 = *MEMORY[0x277D85DE8];
    return v18;
  }

  else
  {
    v24 = [v5 notificationCount];

    v25 = *MEMORY[0x277D85DE8];
    return v24;
  }
}

- (void)activate
{
  v3 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v3 start];

  [(CALNInboxNotificationMonitor *)self setActive:1];
}

- (void)deactivate
{
  [(CALNInboxNotificationMonitor *)self setActive:0];
  v3 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [v3 stop];
}

- (void)receivedNotificationNamed:(id)a3
{
  v4 = a3;
  if ([(CALNInboxNotificationMonitor *)self isActive])
  {
    v5 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
    [v5 handleDarwinNotification:v4];

    v6 = [MEMORY[0x277CC59F0] focusModeConfigurationChangedName];
    v7 = [v4 isEqualToString:v6];

    if (v7)
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = *MEMORY[0x277CC5B38];
      v10 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
      [v8 postNotificationName:v9 object:v10];
    }
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CALNInboxNotificationMonitor *)v4 receivedNotificationNamed:v11];
    }
  }
}

- (void)receivedNotificationNamed:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Received notification but inbox notification monitor is not active. notification name = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end