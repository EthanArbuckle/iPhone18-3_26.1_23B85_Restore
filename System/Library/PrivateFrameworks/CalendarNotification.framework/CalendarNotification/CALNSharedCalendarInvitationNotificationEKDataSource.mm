@interface CALNSharedCalendarInvitationNotificationEKDataSource
- (CALNSharedCalendarInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 dataAccessExpressConnection:(id)a6 preferences:(id)a7;
- (id)_notificationInfoFromNotification:(id)a3;
- (id)_notificationInfoFromNotificationReference:(id)a3;
- (id)fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchSharedCalendarInvitationNotifications;
- (void)clearSharedCalendarInvitationWithSourceClientIdentifier:(id)a3;
- (void)declineSharedCalendarWithSourceClientIdentifier:(id)a3;
- (void)joinSharedCalendarWithSourceClientIdentifier:(id)a3;
- (void)reportSharedCalendarAsJunkWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNSharedCalendarInvitationNotificationEKDataSource

- (CALNSharedCalendarInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 dataAccessExpressConnection:(id)a6 preferences:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CALNSharedCalendarInvitationNotificationEKDataSource;
  v17 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStoreProvider, a3);
    objc_storeStrong(&v18->_inboxNotificationProvider, a4);
    objc_storeStrong(&v18->_notificationReferenceProvider, a5);
    objc_storeStrong(&v18->_dataAccessExpressConnection, a6);
    objc_storeStrong(&v18->_preferences, a7);
  }

  return v18;
}

- (id)fetchSharedCalendarInvitationNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
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
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self preferences];
  v6 = [v5 sharedCalendarNotificationsDisabled];

  if (v6)
  {
    v7 = objc_opt_new();
  }

  else
  {
    v8 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self inboxNotificationProvider];
    v9 = [v8 eventNotificationReferences];

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 type] == 2)
          {
            if (!v4 || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v4, "containsObject:", v17), v17, v16, v18))
            {
              v19 = [v15 notification];
              v20 = [v19 URL];
              if (v20)
              {
                v21 = v20;
                v22 = [v19 hiddenFromNotificationCenter];

                if ((v22 & 1) == 0)
                {
                  v23 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v19];
                  [v7 addObject:v23];
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
    v6 = [v5 eventStore];

    v7 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:2 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

    if (v8)
    {
      v9 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = v4;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation notification with sourceClientIdentifier = %{public}@. Info = %@", &v13, 0x16u);
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
      [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:v6 inEventStore:?];
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)clearSharedCalendarInvitationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  v7 = [v5 eventStore];

  v6 = [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:v4 inEventStore:v7];

  if (v6)
  {
    [CALNNotificationDataSourceUtils hideCalendarFromNotificationCenter:v6 inEventStore:v7];
  }
}

- (void)joinSharedCalendarWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  v7 = [v5 eventStore];

  v6 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self dataAccessExpressConnection];
  [CALNNotificationDataSourceUtils respondToSharedCalendarInvitationWithSourceClientIdentifier:v4 inEventStore:v7 withDataAccessExpressConnection:v6 accept:1];
}

- (void)declineSharedCalendarWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  v7 = [v5 eventStore];

  v6 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self dataAccessExpressConnection];
  [CALNNotificationDataSourceUtils respondToSharedCalendarInvitationWithSourceClientIdentifier:v4 inEventStore:v7 withDataAccessExpressConnection:v6 accept:0];
}

- (void)reportSharedCalendarAsJunkWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  [CALNNotificationDataSourceUtils reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:v4 inEventStore:v6];
}

- (id)_notificationInfoFromNotificationReference:(id)a3
{
  v4 = [a3 notification];
  if (v4)
  {
    v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self _notificationInfoFromNotification:v4];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNSharedCalendarInvitationNotificationEKDataSource _notificationInfoFromNotificationReference:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_notificationInfoFromNotification:(id)a3
{
  v3 = a3;
  v4 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v3];
  v5 = [v3 source];
  v6 = [v5 isDelegate];
  v7 = [v5 title];
  v8 = [v5 uniqueIdentifier];
  v9 = [[CALNSharedCalendarInvitationNotificationInfo alloc] initWithSourceClientIdentifier:v4 calendarNotification:v3 isDelegate:v6 sourceTitle:v7 sourceIdentifier:v8];

  return v9;
}

@end