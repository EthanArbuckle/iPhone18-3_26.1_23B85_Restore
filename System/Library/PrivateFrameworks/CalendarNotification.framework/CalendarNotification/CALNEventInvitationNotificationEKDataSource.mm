@interface CALNEventInvitationNotificationEKDataSource
+ (int64_t)_spanForNewStatusWithEvent:(id)a3;
- (CALNEventInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 remoteMutator:(id)a6 dataSourceEventRepresentationProvider:(id)a7 preferences:(id)a8;
- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4;
- (id)fetchEventInvitationNotificationSourceClientIdentifiers:(id)a3;
- (id)fetchEventInvitationNotificationWithSourceClientIdentifier:(id)a3;
- (id)fetchEventInvitationNotifications;
- (void)_setParticipantStatus:(int64_t)a3 withSourceClientIdentifier:(id)a4;
- (void)clearEventInvitationWithSourceClientIdentifier:(id)a3;
- (void)reportEventInvitationAsJunkWithSourceClientIdentifier:(id)a3;
@end

@implementation CALNEventInvitationNotificationEKDataSource

- (CALNEventInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5 remoteMutator:(id)a6 dataSourceEventRepresentationProvider:(id)a7 preferences:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CALNEventInvitationNotificationEKDataSource;
  v18 = [(CALNEventInvitationNotificationEKDataSource *)&v24 init];
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

- (id)fetchEventInvitationNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNEventInvitationNotificationEKDataSource *)self fetchEventInvitationNotificationSourceClientIdentifiers:0];
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

        v10 = [(CALNEventInvitationNotificationEKDataSource *)self fetchEventInvitationNotificationWithSourceClientIdentifier:*(*(&v16 + 1) + 8 * i), v16];
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

- (id)fetchEventInvitationNotificationSourceClientIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationNotificationEKDataSource *)self preferences];
  v6 = [v5 invitationNotificationsDisabled];

  if (v6)
  {
    v7 = objc_opt_new();
    goto LABEL_23;
  }

  v8 = [(CALNEventInvitationNotificationEKDataSource *)self inboxNotificationProvider];
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
    goto LABEL_22;
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
          if (v20 && ([v19 hiddenFromNotificationCenter] & 1) == 0)
          {
            if ([v19 type])
            {
              v21 = [v19 type];

              if (v21 != 1)
              {
                goto LABEL_19;
              }
            }

            else
            {
            }

            v20 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v19];
            [v7 addObject:v20];
          }

LABEL_19:
          continue;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);
LABEL_22:

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchEventInvitationNotificationWithSourceClientIdentifier:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:0 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [v8 notification];
    if (v9)
    {
      v10 = [(CALNEventInvitationNotificationEKDataSource *)self _notificationInfoFromNotification:v9 inEventStore:v6];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = v4;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched event invitation notification info with sourceClientIdentifier: %{public}@ info: %@", &v26, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CALNEventInvitationNotificationEKDataSource *)v4 fetchEventInvitationNotificationWithSourceClientIdentifier:v11, v18, v19, v20, v21, v22, v23];
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationEKDataSource *)v4 fetchEventInvitationNotificationWithSourceClientIdentifier:v9, v12, v13, v14, v15, v16, v17];
    }

    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearEventInvitationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v7 = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  v5 = [v7 eventStore];
  v6 = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:0 withSourceClientIdentifier:v4 inEventStore:v5 withNotificationReferenceProvider:v6];
}

- (void)reportEventInvitationAsJunkWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    [v8 setIsJunk:1 shouldSave:1];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationEKDataSource *)v4 reportEventInvitationAsJunkWithSourceClientIdentifier:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:v6];
  v8 = [CALNEventInvitationNotificationDataSourceUtils expirationDateForEventInvitation:v6];
  v28 = v7;
  v9 = [CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:v6 inEventStore:v7];
  if (v9)
  {
    [v6 URL];
    v10 = v27 = v8;
    v26 = [v10 absoluteString];

    v25 = CUIKLaunchURLForEventInvitation();
    v11 = [v9 calendar];
    v24 = [v11 source];

    v12 = [v24 isDelegate];
    v23 = [v24 title];
    v21 = [v24 uniqueIdentifier];
    v22 = [v9 scanForConflicts];
    v13 = [(CALNEventInvitationNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    v14 = [v9 startDate];
    v15 = [v9 endDate];
    v16 = [v28 timeZone];
    v17 = [v13 eventRepresentationDictionaryForInvitationNotification:v6 event:v9 date:v14 endDate:v15 timeZone:v16];

    v8 = v27;
    LOBYTE(v20) = v12;
    v18 = [[CALNEventInvitationNotificationInfo alloc] initWithSourceClientIdentifier:v29 launchURL:v25 expirationDate:v27 conflictDetails:v22 eventInvitationNotification:v6 eventRepresentationDictionary:v17 eventURI:v26 isDelegate:v20 sourceTitle:v23 sourceIdentifier:v21];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_setParticipantStatus:(int64_t)a3 withSourceClientIdentifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  v8 = [v7 eventStore];

  v9 = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v10 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:v6 inEventStore:v8 withNotificationReferenceProvider:v9];

  if (v10)
  {
    [v10 setParticipationStatus:a3];
    [v10 setInvitationStatus:0];
    v11 = [objc_opt_class() _spanForNewStatusWithEvent:v10];
    v12 = [(CALNEventInvitationNotificationEKDataSource *)self remoteMutator];
    [v12 setParticipantStatus:a3 span:v11 event:v10];

    v18 = 0;
    LOBYTE(v11) = [v8 saveEvent:v10 span:v11 error:&v18];
    v13 = v18;
    if ((v11 & 1) == 0)
    {
      v14 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [v10 externalURI];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
        *buf = 138543874;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        v23 = 2112;
        v24 = v13;
        _os_log_error_impl(&dword_242909000, v14, OS_LOG_TYPE_ERROR, "Failed to save event (%{public}@) when setting participant status (%{public}@): %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationEKDataSource *)v6 _setParticipantStatus:a3 withSourceClientIdentifier:v13];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_spanForNewStatusWithEvent:(id)a3
{
  v3 = a3;
  if ([v3 responseMustApplyToAll])
  {
    v4 = 4;
  }

  else if ([v3 hasRecurrenceRules])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fetchEventInvitationNotificationWithSourceClientIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "Failed to get notification from notification reference. sourceClientIdentifier = %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchEventInvitationNotificationWithSourceClientIdentifier:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "Failed to get notification reference with sourceClientIdentifier %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportEventInvitationAsJunkWithSourceClientIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "Failed to get event (%{public}@) when attempting to report as junk", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setParticipantStatus:(NSObject *)a3 withSourceClientIdentifier:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Failed to get event (%{public}@) when attempting to set participant status to %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end