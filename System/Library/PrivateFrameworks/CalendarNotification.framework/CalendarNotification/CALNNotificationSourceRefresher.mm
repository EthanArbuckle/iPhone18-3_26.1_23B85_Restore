@interface CALNNotificationSourceRefresher
- (CALNNotificationSourceRefresher)initWithSources:(id)a3 notificationMonitor:(id)a4 notificationManager:(id)a5;
- (void)_refreshNotifications:(id)a3;
- (void)_withdrawExpiredNotificationsForSource:(id)a3;
- (void)handleNotificationsChangedNotification:(id)a3;
- (void)handleNotificationsLoadedNotification;
- (void)refreshNotifications;
@end

@implementation CALNNotificationSourceRefresher

- (CALNNotificationSourceRefresher)initWithSources:(id)a3 notificationMonitor:(id)a4 notificationManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CALNNotificationSourceRefresher;
  v11 = [(CALNNotificationSourceRefresher *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    sources = v11->_sources;
    v11->_sources = v12;

    objc_storeStrong(&v11->_inboxNotificationMonitor, a4);
    objc_storeStrong(&v11->_notificationManager, a5);
    v14 = dispatch_queue_create("com.apple.calendar.notification.NotificationSourceRefresher", 0);
    refreshQueue = v11->_refreshQueue;
    v11->_refreshQueue = v14;

    [v9 addNotificationsChangedObserver:v11 selector:sel_handleNotificationsChangedNotification_];
    [v9 addNotificationsLoadedObserver:v11 selector:sel_handleNotificationsLoadedNotification];
  }

  return v11;
}

- (void)handleNotificationsLoadedNotification
{
  refreshQueue = self->_refreshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CALNNotificationSourceRefresher_handleNotificationsLoadedNotification__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(refreshQueue, block);
}

void __72__CALNNotificationSourceRefresher_handleNotificationsLoadedNotification__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = +[CALNLogSubsystem defaultCategory];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing notifications in response to notifications loaded callback.", buf, 2u);
    }

    [*(a1 + 32) _refreshNotifications:0];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Not refreshing notifications in response to notifications loaded callback because there is no need to do so.", v5, 2u);
    }
  }
}

- (void)handleNotificationsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Received notification changed callback.", buf, 2u);
  }

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CC5B28]];

  if (v7)
  {
    v8 = [v7 valueForKey:@"stringRepresentation"];
    v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  }

  else
  {
    v9 = 0;
  }

  refreshQueue = self->_refreshQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CALNNotificationSourceRefresher_handleNotificationsChangedNotification___block_invoke;
  v12[3] = &unk_278D6F278;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_sync(refreshQueue, v12);
}

- (void)refreshNotifications
{
  refreshQueue = self->_refreshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CALNNotificationSourceRefresher_refreshNotifications__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(refreshQueue, block);
}

- (void)_refreshNotifications:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_refreshQueue);
  v5 = [(CALNInboxNotificationMonitor *)self->_inboxNotificationMonitor eventNotificationReferences];

  if (v5)
  {
    self->_needsRefreshOnNotificationsLoaded = 0;
    v6 = +[CALNLogSubsystem defaultCategory];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        *buf = 138412290;
        v27 = v4;
        v8 = "Refreshing notifications affected by changes to objects %@.";
        v9 = v6;
        v10 = 12;
LABEL_10:
        _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    else if (v7)
    {
      *buf = 0;
      v8 = "Refreshing all notifications.";
      v9 = v6;
      v10 = 2;
      goto LABEL_10;
    }

    [(CALNNotificationSourceRefresher *)self sources];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v24 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          [(CALNNotificationSourceRefresher *)self _withdrawExpiredNotificationsForSource:v17, v21];
          [v17 refreshNotifications:v4];
          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    v19 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Finished refreshing notifications.", buf, 2u);
    }

    goto LABEL_21;
  }

  v11 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Blocking refresh of notifications because event notifications haven't finished loading yet.", buf, 2u);
  }

  self->_needsRefreshOnNotificationsLoaded = 1;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_withdrawExpiredNotificationsForSource:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a3 sourceIdentifier];
  v5 = [(CALNNotificationSourceRefresher *)self notificationManager];
  v6 = [v5 fetchRecordsWithSourceIdentifier:v4];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543618;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 content];
        v15 = [v14 expirationDate];

        if (v15)
        {
          [v15 timeIntervalSinceNow];
          if (v16 <= 0.0)
          {
            v17 = [v13 sourceClientIdentifier];
            v18 = +[CALNLogSubsystem defaultCategory];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v27 = v4;
              v28 = 2114;
              v29 = v17;
              _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "Withdrawing expired notification with sourceIdentifier %{public}@ and sourceClientIdentifier %{public}@", buf, 0x16u);
            }

            v19 = [(CALNNotificationSourceRefresher *)self notificationManager];
            [v19 removeRecordWithSourceIdentifier:v4 sourceClientIdentifier:v17];
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end