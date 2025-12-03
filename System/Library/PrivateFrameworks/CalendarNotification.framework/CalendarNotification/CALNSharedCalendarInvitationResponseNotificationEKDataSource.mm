@interface CALNSharedCalendarInvitationResponseNotificationEKDataSource
- (CALNSharedCalendarInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification;
- (id)_notificationInfoFromNotificationReference:(id)reference;
- (id)fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchSharedCalendarInvitationResponseNotifications;
- (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationEKDataSource

- (CALNSharedCalendarInvitationResponseNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  preferencesCopy = preferences;
  v18.receiver = self;
  v18.super_class = CALNSharedCalendarInvitationResponseNotificationEKDataSource;
  v15 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_eventStoreProvider, provider);
    objc_storeStrong(&v16->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v16->_notificationReferenceProvider, referenceProvider);
    objc_storeStrong(&v16->_preferences, preferences);
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

- (id)fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self preferences];
  sharedCalendarNotificationsDisabled = [preferences sharedCalendarNotificationsDisabled];

  if (sharedCalendarNotificationsDisabled)
  {
    v28 = objc_opt_new();
  }

  else
  {
    inboxNotificationProvider = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self inboxNotificationProvider];
    eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
    eventStoreProvider = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = eventNotificationReferences;
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
            if (!identifiersCopy || ([v16 objectID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "stringRepresentation"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(identifiersCopy, "containsObject:", v18), v18, v17, v19))
            {
              notification = [v16 notification];
              v21 = [notification URL];
              if (v21)
              {
                v22 = v21;
                hiddenFromNotificationCenter = [notification hiddenFromNotificationCenter];

                if ((hiddenFromNotificationCenter & 1) == 0)
                {
                  v24 = [notification inviteReplyNotificationFromEventStore:eventStore];
                  if (([v24 alerted] & 1) == 0)
                  {
                    v25 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
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

- (id)fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    eventStoreProvider = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    notificationReferenceProvider = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:3 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

    if (v8)
    {
      v9 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = identifierCopy;
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
    eventStore = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(eventStore, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:eventStore inEventStore:?];
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  [CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:identifierCopy inEventStore:eventStore];
}

- (id)_notificationInfoFromNotificationReference:(id)reference
{
  notification = [reference notification];
  if (notification)
  {
    v5 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)self _notificationInfoFromNotification:notification];
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

- (id)_notificationInfoFromNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notificationCopy];
  source = [notificationCopy source];
  isDelegate = [source isDelegate];
  title = [source title];
  uniqueIdentifier = [source uniqueIdentifier];
  v9 = [[CALNSharedCalendarInvitationResponseNotificationInfo alloc] initWithSourceClientIdentifier:v4 calendarNotification:notificationCopy isDelegate:isDelegate sourceTitle:title sourceIdentifier:uniqueIdentifier];

  return v9;
}

@end