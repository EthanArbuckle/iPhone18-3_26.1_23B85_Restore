@interface CALNEventCanceledNotificationEKDataSource
- (CALNEventCanceledNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 remoteMutator:(id)a6 dataSourceEventRepresentationProvider:(id)a7 preferences:(id)a8;
- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4;
- (id)fetchEventCanceledNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchEventCanceledNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchEventCanceledNotifications;
- (void)clearCanceledEventNotificationWithSourceClientIdentifier:(id)a3;
- (void)deleteCanceledEventWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNEventCanceledNotificationEKDataSource

- (CALNEventCanceledNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 remoteMutator:(id)a6 dataSourceEventRepresentationProvider:(id)a7 preferences:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CALNEventCanceledNotificationEKDataSource;
  v18 = [(CALNEventCanceledNotificationEKDataSource *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventStoreProvider, a3);
    objc_storeStrong(&v19->_inboxNotificationProvider, a4);
    objc_storeStrong(&v19->_notificationReferenceProvider, a5);
    objc_storeStrong(&v19->_remoteMutator, a6);
    objc_storeStrong(&v19->_dataSourceEventRepresentationProvider, a7);
    objc_storeStrong(&v19->_preferences, a8);
  }

  return v19;
}

- (id)fetchEventCanceledNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNEventCanceledNotificationEKDataSource *)self fetchEventCanceledNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNEventCanceledNotificationEKDataSource *)self fetchEventCanceledNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
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
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event canceled notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchEventCanceledNotificationSourceClientIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventCanceledNotificationEKDataSource *)self preferences];
  v6 = [v5 invitationNotificationsDisabled];

  if (v6)
  {
    v7 = objc_opt_new();
    goto LABEL_20;
  }

  v8 = [(CALNEventCanceledNotificationEKDataSource *)self inboxNotificationProvider];
  v9 = [v8 eventNotificationReferences];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v25;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      if (![v15 type])
      {
        if (!v4 || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v4, "containsObject:", v17), v17, v16, v18))
        {
          v19 = [v15 notification];
          v20 = [v19 URL];
          if (!v20 || ([v19 hiddenFromNotificationCenter] & 1) != 0)
          {
LABEL_15:
          }

          else
          {
            v21 = [v19 type];

            if (v21 == 2)
            {
              v20 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v19];
              [v7 addObject:v20];
              goto LABEL_15;
            }
          }

          continue;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);
LABEL_19:

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchEventCanceledNotificationWithSourceClientIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:0 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [v8 notification];
    if (v9)
    {
      v10 = [(CALNEventCanceledNotificationEKDataSource *)self _notificationInfoFromNotification:v9 inEventStore:v6];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event canceled notification info with sourceClientIdentifier: %{public}@ info: %@", &v14, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CALNEventCanceledNotificationEKDataSource fetchEventCanceledNotificationWithSourceClientIdentifier:];
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNEventCanceledNotificationEKDataSource fetchEventCanceledNotificationWithSourceClientIdentifier:];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearCanceledEventNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v7 = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  v5 = [v7 eventStore];
  v6 = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:0 withSourceClientIdentifier:v4 inEventStore:v5 withNotificationReferenceProvider:v6];
}

- (void)deleteCanceledEventWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [(CALNEventCanceledNotificationEKDataSource *)self remoteMutator];
    v13 = 0;
    v10 = [CALNRemoteMutatorShared deleteEvent:v8 inEventStore:v6 withSpan:2 usingRemoteMutator:v9 error:&v13];
    v11 = v13;

    if (!v10)
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNEventCanceledNotificationEKDataSource deleteCanceledEventWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNEventCanceledNotificationEKDataSource deleteCanceledEventWithSourceClientIdentifier:];
    }
  }
}

- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v6];
  v9 = [CALNEventInvitationNotificationDataSourceUtils expirationDateForEventInvitation:v6];
  v10 = [CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:v6 inEventStore:v7];
  if (v10)
  {
    v11 = [v6 source];
    v24 = [v11 isDelegate];
    v23 = [v11 title];
    v22 = [v11 uniqueIdentifier];
    v21 = CUIKLaunchURLForEventInvitation();
    v12 = [(CALNEventCanceledNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    v13 = [v10 startDate];
    [v10 endDate];
    v15 = v14 = v9;
    [v7 timeZone];
    v17 = v16 = v8;
    [v12 eventRepresentationDictionaryForInvitationNotification:v6 event:v10 date:v13 endDate:v15 timeZone:v17];
    v18 = v25 = v7;

    v8 = v16;
    v9 = v14;

    v19 = [[CALNEventCanceledNotificationInfo alloc] initWithSourceClientIdentifier:v16 launchURL:v21 expirationDate:v14 eventInvitationNotification:v6 eventRepresentationDictionary:v18 isDelegate:v24 sourceTitle:v23 sourceIdentifier:v22];
    v7 = v25;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)fetchEventCanceledNotificationWithSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification from notification reference. sourceClientIdentifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchEventCanceledNotificationWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification reference with sourceClientIdentifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteCanceledEventWithSourceClientIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Failed to delete canceled event (%{public}@): %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deleteCanceledEventWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get canceled event (%{public}@) when trying to delete it", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end