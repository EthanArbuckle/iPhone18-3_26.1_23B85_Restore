@interface CALNEventInvitationResponseNotificationEKDataSource
- (CALNEventInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 dataSourceEventRepresentationProvider:(id)a6 preferences:(id)a7;
- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4;
- (id)fetchEventInvitationResponseNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchEventInvitationResponseNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchEventInvitationResponseNotifications;
- (void)acceptEventInvitationResponseWithSourceClientIdentifier:(id)a3;
- (void)clearEventInvitationResponseWithSourceClientIdentifier:(id)a3;
- (void)declineEventInvitationResponseWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNEventInvitationResponseNotificationEKDataSource

- (CALNEventInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 dataSourceEventRepresentationProvider:(id)a6 preferences:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CALNEventInvitationResponseNotificationEKDataSource;
  v17 = [(CALNEventInvitationResponseNotificationEKDataSource *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStoreProvider, a3);
    objc_storeStrong(&v18->_inboxNotificationProvider, a4);
    objc_storeStrong(&v18->_notificationReferenceProvider, a5);
    objc_storeStrong(&v18->_dataSourceEventRepresentationProvider, a6);
    objc_storeStrong(&v18->_preferences, a7);
  }

  return v18;
}

- (id)fetchEventInvitationResponseNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
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
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event invitation notification infos. Found %{public}@ notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchEventInvitationResponseNotificationSourceClientIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationEKDataSource *)self preferences];
  v6 = [v5 invitationNotificationsDisabled];

  if (v6)
  {
    v7 = objc_opt_new();
    goto LABEL_20;
  }

  v8 = [(CALNEventInvitationResponseNotificationEKDataSource *)self inboxNotificationProvider];
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
      if ([v15 type] == 1)
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

            if (v21 == 3)
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

- (id)fetchEventInvitationResponseNotificationWithSourceClientIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:1 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [v8 notification];
    if (v9)
    {
      v10 = [(CALNEventInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotification:v9 inEventStore:v6];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event invitation response notification info with sourceClientIdentifier: %{public}@ info: %@", &v14, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearEventInvitationResponseWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v7 = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  v5 = [v7 eventStore];
  v6 = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:1 withSourceClientIdentifier:v4 inEventStore:v5 withNotificationReferenceProvider:v6];
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:1 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:v4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 eventInvitationNotification];
      v12 = CUIKNewTimeProposerForNotification();

      if (v12)
      {
        v26 = v10;
        v27 = v6;
        v28 = v4;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v8 attendees];
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              v19 = [v12 URL];
              v20 = [v18 URL];
              v21 = [v19 isEqual:v20];

              if (v21)
              {
                [v8 acceptProposedTimeNotificationFromAttendee:v18];
              }

              else if ([v18 hasProposedStartDate])
              {
                [v8 declineProposedTimeNotificationFromAttendee:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v15);
        }

        v29 = 0;
        v6 = v27;
        v22 = [v27 saveEvent:v8 span:0 error:&v29];
        v23 = v29;
        if (v22)
        {
          v4 = v28;
        }

        else
        {
          v24 = +[CALNLogSubsystem calendar];
          v4 = v28;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
          }
        }

        v10 = v26;
      }

      else
      {
        v23 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNEventInvitationResponseNotificationEKDataSource acceptEventInvitationResponseWithSourceClientIdentifier:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:1 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [(CALNEventInvitationResponseNotificationEKDataSource *)self fetchEventInvitationResponseNotificationWithSourceClientIdentifier:v4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 eventInvitationNotification];
      v12 = CUIKNewTimeProposerForNotification();

      if (v12)
      {
        v27 = v6;
        v28 = v4;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v8 attendees];
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          v26 = v8;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              v19 = [v12 URL];
              v20 = [v18 URL];
              v21 = [v19 isEqual:v20];

              if (v21)
              {
                v8 = v26;
                [v26 declineProposedTimeNotificationFromAttendee:v18];
                goto LABEL_18;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
            v8 = v26;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:

        v29 = 0;
        v6 = v27;
        v22 = [v27 saveEvent:v8 span:0 error:&v29];
        v23 = v29;
        if (v22)
        {
          v4 = v28;
        }

        else
        {
          v24 = +[CALNLogSubsystem calendar];
          v4 = v28;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
          }
        }
      }

      else
      {
        v23 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNEventInvitationResponseNotificationEKDataSource declineEventInvitationResponseWithSourceClientIdentifier:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
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
    v12 = [(CALNEventInvitationResponseNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    v13 = [v10 startDate];
    [v10 endDate];
    v15 = v14 = v9;
    [v7 timeZone];
    v17 = v16 = v8;
    [v12 eventRepresentationDictionaryForInvitationNotification:v6 event:v10 date:v13 endDate:v15 timeZone:v17];
    v18 = v25 = v7;

    v8 = v16;
    v9 = v14;

    v19 = [[CALNEventInvitationResponseNotificationInfo alloc] initWithSourceClientIdentifier:v16 launchURL:v21 expirationDate:v14 eventInvitationNotification:v6 eventRepresentationDictionary:v18 isDelegate:v24 sourceTitle:v23 sourceIdentifier:v22];
    v7 = v25;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Error saving event store after accepting proposed new time for sourceClientIdentifier (%{public}@), error = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get a proposer when attempting to accept and invitation response notification that should have been a proposed new time notification (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification info for sourceClientIdentifier (%{public}@) when attempting to accept invitation response", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acceptEventInvitationResponseWithSourceClientIdentifier:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get event (%{public}@) when attempting to accept invitation response", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Error saving event store after declining proposed new time for sourceClientIdentifier (%{public}@), error = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get a proposer when attempting to decline an invitation response notification that should have been a proposed new time notification (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification info for sourceClientIdentifier (%{public}@) when attempting to decline invitation response", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)declineEventInvitationResponseWithSourceClientIdentifier:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get event (%{public}@) when attempting to decline invitation response", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end