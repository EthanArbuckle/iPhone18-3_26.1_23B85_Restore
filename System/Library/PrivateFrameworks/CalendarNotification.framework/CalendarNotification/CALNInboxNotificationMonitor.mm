@interface CALNInboxNotificationMonitor
- (CALNInboxNotificationMonitor)initWithEventStoreProvider:(id)provider;
- (NSArray)eventNotificationReferences;
- (unint64_t)eventNotificationCount;
- (void)activate;
- (void)addNotificationCountChangedObserver:(id)observer selector:(SEL)selector;
- (void)addNotificationsChangedObserver:(id)observer selector:(SEL)selector;
- (void)addNotificationsLoadedObserver:(id)observer selector:(SEL)selector;
- (void)deactivate;
- (void)receivedNotificationNamed:(id)named;
- (void)removeNotificationCountChangedObserver:(id)observer selector:(SEL)selector;
- (void)removeNotificationsChangedObserver:(id)observer;
- (void)removeNotificationsLoadedObserver:(id)observer selector:(SEL)selector;
@end

@implementation CALNInboxNotificationMonitor

- (CALNInboxNotificationMonitor)initWithEventStoreProvider:(id)provider
{
  providerCopy = provider;
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
    v13 = providerCopy;
    v7 = [v6 initWithOptions:54 eventStoreGetter:v12];
    notificationMonitor = v5->_notificationMonitor;
    v5->_notificationMonitor = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.calendar.notification.InboxNotificationMonitorCallback", v9);
    [(_EKNotificationMonitor *)v5->_notificationMonitor setCallbackNotificationQueue:v10];
  }

  return v5;
}

- (void)addNotificationsChangedObserver:(id)observer selector:(SEL)selector
{
  v6 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B38];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter addObserver:observerCopy selector:selector name:v8 object:notificationMonitor];
}

- (void)removeNotificationsChangedObserver:(id)observer
{
  v4 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v4 defaultCenter];
  v6 = *MEMORY[0x277CC5B38];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter removeObserver:observerCopy name:v6 object:notificationMonitor];
}

- (void)addNotificationCountChangedObserver:(id)observer selector:(SEL)selector
{
  v6 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B30];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter addObserver:observerCopy selector:selector name:v8 object:notificationMonitor];
}

- (void)removeNotificationCountChangedObserver:(id)observer selector:(SEL)selector
{
  v5 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v5 defaultCenter];
  v7 = *MEMORY[0x277CC5B30];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter removeObserver:observerCopy name:v7 object:notificationMonitor];
}

- (void)addNotificationsLoadedObserver:(id)observer selector:(SEL)selector
{
  v6 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  v8 = *MEMORY[0x277CC5B40];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter addObserver:observerCopy selector:selector name:v8 object:notificationMonitor];
}

- (void)removeNotificationsLoadedObserver:(id)observer selector:(SEL)selector
{
  v5 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v5 defaultCenter];
  v7 = *MEMORY[0x277CC5B40];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [defaultCenter removeObserver:observerCopy name:v7 object:notificationMonitor];
}

- (NSArray)eventNotificationReferences
{
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  notificationReferences = [notificationMonitor notificationReferences];

  return notificationReferences;
}

- (unint64_t)eventNotificationCount
{
  v36 = *MEMORY[0x277D85DE8];
  unselectedCalendarIdentifiersForFocusMode = [MEMORY[0x277CC59F0] unselectedCalendarIdentifiersForFocusMode];
  v4 = [unselectedCalendarIdentifiersForFocusMode count];

  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  v6 = notificationMonitor;
  if (v4)
  {
    notificationReferences = [notificationMonitor notificationReferences];

    if ([notificationReferences count])
    {
      v28 = notificationReferences;
      firstObject = [notificationReferences firstObject];
      eventStore = [firstObject eventStore];

      v10 = [MEMORY[0x277CC59F0] unselectedCalendarsForFocusModeInEventStore:eventStore];
      v11 = MEMORY[0x277CC59D0];
      notificationMonitor2 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
      notificationReferences2 = [notificationMonitor2 notificationReferences];
      v14 = [v11 batchLoadNotifications:notificationReferences2];

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
                objectID = [v21 objectID];
                *buf = 138543362;
                v34 = objectID;
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

      notificationReferences = v28;
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
    notificationCount = [notificationMonitor notificationCount];

    v25 = *MEMORY[0x277D85DE8];
    return notificationCount;
  }
}

- (void)activate
{
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [notificationMonitor start];

  [(CALNInboxNotificationMonitor *)self setActive:1];
}

- (void)deactivate
{
  [(CALNInboxNotificationMonitor *)self setActive:0];
  notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
  [notificationMonitor stop];
}

- (void)receivedNotificationNamed:(id)named
{
  namedCopy = named;
  if ([(CALNInboxNotificationMonitor *)self isActive])
  {
    notificationMonitor = [(CALNInboxNotificationMonitor *)self notificationMonitor];
    [notificationMonitor handleDarwinNotification:namedCopy];

    focusModeConfigurationChangedName = [MEMORY[0x277CC59F0] focusModeConfigurationChangedName];
    v7 = [namedCopy isEqualToString:focusModeConfigurationChangedName];

    if (v7)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v9 = *MEMORY[0x277CC5B38];
      notificationMonitor2 = [(CALNInboxNotificationMonitor *)self notificationMonitor];
      [defaultCenter postNotificationName:v9 object:notificationMonitor2];
    }
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CALNInboxNotificationMonitor *)namedCopy receivedNotificationNamed:v11];
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