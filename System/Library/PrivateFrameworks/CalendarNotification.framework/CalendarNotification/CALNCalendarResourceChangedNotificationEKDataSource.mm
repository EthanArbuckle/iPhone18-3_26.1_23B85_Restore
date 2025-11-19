@interface CALNCalendarResourceChangedNotificationEKDataSource
- (CALNCalendarResourceChangedNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 preferences:(id)a6;
- (id)_notificationInfoFromNotification:(id)a3;
- (id)_notificationInfoFromNotificationReference:(id)a3;
- (id)fetchCalendarResourceChangedNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchCalendarResourceChangedNotifications;
- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNCalendarResourceChangedNotificationEKDataSource

- (CALNCalendarResourceChangedNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 preferences:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNCalendarResourceChangedNotificationEKDataSource;
  v15 = [(CALNCalendarResourceChangedNotificationEKDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventStoreProvider, a3);
    objc_storeStrong(&v16->_inboxNotificationProvider, a4);
    objc_storeStrong(&v16->_notificationReferenceProvider, a5);
    objc_storeStrong(&v16->_preferences, a6);
  }

  return v16;
}

- (id)fetchCalendarResourceChangedNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self fetchCalendarResourceChangedNotificationSourceClientIdentifiers:0];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchCalendarResourceChangedNotificationSourceClientIdentifiers:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self preferences];
  v6 = [v5 sharedCalendarNotificationsDisabled];

  if (v6)
  {
    v28 = objc_opt_new();
  }

  else
  {
    v7 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self inboxNotificationProvider];
    v8 = [v7 eventNotificationReferences];

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v9 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
    v10 = [v9 eventStore];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 type] == 4)
          {
            if (!v4 || ([v16 objectID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "stringRepresentation"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v4, "containsObject:", v18), v18, v17, v19))
            {
              v20 = [v16 notification];
              v21 = [v20 URL];
              if (v21)
              {
                v22 = v21;
                v23 = [v20 hiddenFromNotificationCenter];

                if ((v23 & 1) == 0)
                {
                  v24 = [v20 resourceChangeFromEventStore:v10];
                  if (([v24 alerted] & 1) == 0)
                  {
                    v25 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v20];
                    [v28 addObject:v25];
                  }
                }
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
    v6 = [v5 eventStore];

    v7 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:4 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

    if (v8)
    {
      v9 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543618;
        v21 = v4;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification with sourceClientIdentifier = %{public}@. Info = %@", &v20, 0x16u);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationEKDataSource *)v6 fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:v11, v12, v13, v14, v15, v16, v17];
    }

    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:4 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [v8 notification];
    v10 = v9;
    if (v9)
    {
      v21 = 0;
      v11 = [v9 acknowledgeWithEventStore:v6 error:&v21];
      v12 = v21;
      if ((v11 & 1) == 0)
      {
        v13 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(CALNCalendarResourceChangedNotificationEKDataSource *)v10 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v4, v13];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CALNCalendarResourceChangedNotificationEKDataSource *)v12 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }
}

- (id)_notificationInfoFromNotificationReference:(id)a3
{
  v4 = [a3 notification];
  if (v4)
  {
    v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self _notificationInfoFromNotification:v4];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationEKDataSource *)v6 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v7, v8, v9, v10, v11, v12, v13];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_notificationInfoFromNotification:(id)a3
{
  v4 = a3;
  v21 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v4];
  v20 = [CALNResourceChangedNotificationDataSourceUtils expirationDateForNotification:v4];
  v5 = [(CALNCalendarResourceChangedNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v19 = [CALNResourceChangedNotificationDataSourceUtils launchURLForNotification:v4 inEventStore:v6];
  v7 = [v4 source];
  v18 = [v7 isDelegate];
  v17 = [v7 title];
  v8 = [v7 uniqueIdentifier];
  v9 = [CALNCalendarResourceChangedNotificationInfo alloc];
  v10 = [v4 changeType];
  v11 = [v4 startDate];
  v12 = [v4 allDay];
  v13 = [v6 timeZone];
  LOBYTE(v16) = v18;
  v14 = [(CALNCalendarResourceChangedNotificationInfo *)v9 initWithSourceClientIdentifier:v21 calendarNotification:v4 changeType:v10 date:v11 allDay:v12 timeZone:v13 expirationDate:v20 launchURL:v19 isDelegate:v16 sourceTitle:v17 sourceIdentifier:v8];

  return v14;
}

- (void)clearCalendarResourceChangedNotificationWithSourceClientIdentifier:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectID];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Failed to acknowledge resource change (%{public}@) for notification with sourceClientIdentifier %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end