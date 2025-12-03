@interface CALNEventCanceledNotificationEKDataSource
- (CALNEventCanceledNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store;
- (id)fetchEventCanceledNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchEventCanceledNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchEventCanceledNotifications;
- (void)clearCanceledEventNotificationWithSourceClientIdentifier:(id)identifier;
- (void)deleteCanceledEventWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNEventCanceledNotificationEKDataSource

- (CALNEventCanceledNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  mutatorCopy = mutator;
  representationProviderCopy = representationProvider;
  preferencesCopy = preferences;
  v24.receiver = self;
  v24.super_class = CALNEventCanceledNotificationEKDataSource;
  v18 = [(CALNEventCanceledNotificationEKDataSource *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventStoreProvider, provider);
    objc_storeStrong(&v19->_inboxNotificationProvider, notificationProvider);
    objc_storeStrong(&v19->_notificationReferenceProvider, referenceProvider);
    objc_storeStrong(&v19->_remoteMutator, mutator);
    objc_storeStrong(&v19->_dataSourceEventRepresentationProvider, representationProvider);
    objc_storeStrong(&v19->_preferences, preferences);
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

- (id)fetchEventCanceledNotificationSourceClientIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNEventCanceledNotificationEKDataSource *)self preferences];
  invitationNotificationsDisabled = [preferences invitationNotificationsDisabled];

  if (invitationNotificationsDisabled)
  {
    v7 = objc_opt_new();
    goto LABEL_20;
  }

  inboxNotificationProvider = [(CALNEventCanceledNotificationEKDataSource *)self inboxNotificationProvider];
  eventNotificationReferences = [inboxNotificationProvider eventNotificationReferences];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventNotificationReferences, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = eventNotificationReferences;
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
        if (!identifiersCopy || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersCopy, "containsObject:", v17), v17, v16, v18))
        {
          notification = [v15 notification];
          v20 = [notification URL];
          if (!v20 || ([notification hiddenFromNotificationCenter] & 1) != 0)
          {
LABEL_15:
          }

          else
          {
            type = [notification type];

            if (type == 2)
            {
              v20 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
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

- (id)fetchEventCanceledNotificationWithSourceClientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    notification = [v8 notification];
    if (notification)
    {
      v10 = [(CALNEventCanceledNotificationEKDataSource *)self _notificationInfoFromNotification:notification inEventStore:eventStore];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = identifierCopy;
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
    notification = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notification, OS_LOG_TYPE_ERROR))
    {
      [CALNEventCanceledNotificationEKDataSource fetchEventCanceledNotificationWithSourceClientIdentifier:];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearCanceledEventNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];
  notificationReferenceProvider = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];
}

- (void)deleteCanceledEventWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventCanceledNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventCanceledNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    remoteMutator = [(CALNEventCanceledNotificationEKDataSource *)self remoteMutator];
    v13 = 0;
    v10 = [CALNRemoteMutatorShared deleteEvent:v8 inEventStore:eventStore withSpan:2 usingRemoteMutator:remoteMutator error:&v13];
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

- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  v8 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notificationCopy];
  v9 = [CALNEventInvitationNotificationDataSourceUtils expirationDateForEventInvitation:notificationCopy];
  v10 = [CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:notificationCopy inEventStore:storeCopy];
  if (v10)
  {
    source = [notificationCopy source];
    isDelegate = [source isDelegate];
    title = [source title];
    uniqueIdentifier = [source uniqueIdentifier];
    v21 = CUIKLaunchURLForEventInvitation();
    dataSourceEventRepresentationProvider = [(CALNEventCanceledNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    startDate = [v10 startDate];
    [v10 endDate];
    v15 = v14 = v9;
    [storeCopy timeZone];
    v17 = v16 = v8;
    [dataSourceEventRepresentationProvider eventRepresentationDictionaryForInvitationNotification:notificationCopy event:v10 date:startDate endDate:v15 timeZone:v17];
    v18 = v25 = storeCopy;

    v8 = v16;
    v9 = v14;

    v19 = [[CALNEventCanceledNotificationInfo alloc] initWithSourceClientIdentifier:v16 launchURL:v21 expirationDate:v14 eventInvitationNotification:notificationCopy eventRepresentationDictionary:v18 isDelegate:isDelegate sourceTitle:title sourceIdentifier:uniqueIdentifier];
    storeCopy = v25;
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