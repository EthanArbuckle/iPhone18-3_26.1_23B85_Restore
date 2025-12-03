@interface CALNSharedCalendarInvitationNotificationEKDataSource
- (CALNSharedCalendarInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider dataAccessExpressConnection:(id)connection preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification;
- (id)_notificationInfoFromNotificationReference:(id)reference;
- (id)fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchSharedCalendarInvitationNotifications;
- (void)clearSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier;
- (void)declineSharedCalendarWithSourceClientIdentifier:(id)identifier;
- (void)joinSharedCalendarWithSourceClientIdentifier:(id)identifier;
- (void)reportSharedCalendarAsJunkWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNSharedCalendarInvitationNotificationEKDataSource

- (CALNSharedCalendarInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider dataAccessExpressConnection:(id)connection preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  connectionCopy = connection;
  preferencesCopy = preferences;
  v21.receiver = self;
  v21.super_class = CALNSharedCalendarInvitationNotificationEKDataSource;
  v17 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_eventStoreProvider, provider);
    objc_storeStrong(&v18->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v18->_notificationReferenceProvider, referenceProvider);
    objc_storeStrong(&v18->_dataAccessExpressConnection, connection);
    objc_storeStrong(&v18->_preferences, preferences);
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

- (id)fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self preferences];
  sharedCalendarNotificationsDisabled = [preferences sharedCalendarNotificationsDisabled];

  if (sharedCalendarNotificationsDisabled)
  {
    v7 = objc_opt_new();
  }

  else
  {
    inboxNotificationProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self inboxNotificationProvider];
    eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = eventNotificationReferences;
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
            if (!identifiersCopy || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersCopy, "containsObject:", v17), v17, v16, v18))
            {
              notification = [v15 notification];
              v20 = [notification URL];
              if (v20)
              {
                v21 = v20;
                hiddenFromNotificationCenter = [notification hiddenFromNotificationCenter];

                if ((hiddenFromNotificationCenter & 1) == 0)
                {
                  v23 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
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

- (id)fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    eventStoreProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    notificationReferenceProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self notificationReferenceProvider];
    v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:2 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

    if (v8)
    {
      v9 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self _notificationInfoFromNotificationReference:v8];
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = identifierCopy;
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

- (void)clearSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v6 = [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:identifierCopy inEventStore:eventStore];

  if (v6)
  {
    [CALNNotificationDataSourceUtils hideCalendarFromNotificationCenter:v6 inEventStore:eventStore];
  }
}

- (void)joinSharedCalendarWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  dataAccessExpressConnection = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self dataAccessExpressConnection];
  [CALNNotificationDataSourceUtils respondToSharedCalendarInvitationWithSourceClientIdentifier:identifierCopy inEventStore:eventStore withDataAccessExpressConnection:dataAccessExpressConnection accept:1];
}

- (void)declineSharedCalendarWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  dataAccessExpressConnection = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self dataAccessExpressConnection];
  [CALNNotificationDataSourceUtils respondToSharedCalendarInvitationWithSourceClientIdentifier:identifierCopy inEventStore:eventStore withDataAccessExpressConnection:dataAccessExpressConnection accept:0];
}

- (void)reportSharedCalendarAsJunkWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  [CALNNotificationDataSourceUtils reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:identifierCopy inEventStore:eventStore];
}

- (id)_notificationInfoFromNotificationReference:(id)reference
{
  notification = [reference notification];
  if (notification)
  {
    v5 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)self _notificationInfoFromNotification:notification];
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
  v9 = [[CALNSharedCalendarInvitationNotificationInfo alloc] initWithSourceClientIdentifier:v4 calendarNotification:notificationCopy isDelegate:isDelegate sourceTitle:title sourceIdentifier:uniqueIdentifier];

  return v9;
}

@end