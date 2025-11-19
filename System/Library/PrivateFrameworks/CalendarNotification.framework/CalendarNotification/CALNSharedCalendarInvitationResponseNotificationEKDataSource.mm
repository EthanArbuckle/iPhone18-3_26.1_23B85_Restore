@interface CALNSharedCalendarInvitationResponseNotificationEKDataSource
- (CALNSharedCalendarInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 preferences:(id)a6;
- (id)_notificationInfoFromNotification:(id)a3;
- (id)_notificationInfoFromNotificationReference:(id)a3;
- (id)fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchSharedCalendarInvitationResponseNotifications;
- (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationEKDataSource

- (CALNSharedCalendarInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 preferences:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNSharedCalendarInvitationResponseNotificationEKDataSource;
  v15 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)&v18 init];
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

- (id)fetchSharedCalendarInvitationResponseNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
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
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation response notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self preferences];
  v6 = [v5 sharedCalendarNotificationsDisabled];

  if (v6)
  {
    v28 = objc_opt_new();
  }

  else
  {
    v7 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self inboxNotificationProvider];
    v8 = [v7 eventNotificationReferences];

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v9 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
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
          if ([v16 type] == 3)
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
                  v24 = [v20 inviteReplyNotificationFromEventStore:v10];
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

- (id)fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
    v6 = [v5 eventStore];

    v7 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:3 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

    if (v8)
    {
      v9 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = v4;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation response notification with sourceClientIdentifier = %{public}@. Info = %@", &v13, 0x16u);
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

- (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  [CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:v4 inEventStore:v6];
}

- (id)_notificationInfoFromNotificationReference:(id)a3
{
  v4 = [a3 notification];
  if (v4)
  {
    v5 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotification:v4];
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
  v9 = [[CALNSharedCalendarInvitationResponseNotificationInfo alloc] initWithSourceClientIdentifier:v4 calendarNotification:v3 isDelegate:v6 sourceTitle:v7 sourceIdentifier:v8];

  return v9;
}

@end