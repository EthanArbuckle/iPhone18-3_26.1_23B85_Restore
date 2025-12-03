@interface CALNEventInvitationNotificationEKDataSource
+ (int64_t)_spanForNewStatusWithEvent:(id)event;
- (CALNEventInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences;
- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store;
- (id)fetchEventInvitationNotificationSourceClientIdentifiers:(id)identifiers;
- (id)fetchEventInvitationNotificationWithSourceClientIdentifier:(id)identifier;
- (id)fetchEventInvitationNotifications;
- (void)_setParticipantStatus:(int64_t)status withSourceClientIdentifier:(id)identifier;
- (void)clearEventInvitationWithSourceClientIdentifier:(id)identifier;
- (void)reportEventInvitationAsJunkWithSourceClientIdentifier:(id)identifier;
@end

@implementation CALNEventInvitationNotificationEKDataSource

- (CALNEventInvitationNotificationEKDataSource)initWithEventStoreProvider:(id)provider inboxNotificationProvider:(id)notificationProvider notificationReferenceProvider:(id)referenceProvider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider preferences:(id)preferences
{
  providerCopy = provider;
  notificationProviderCopy = notificationProvider;
  referenceProviderCopy = referenceProvider;
  mutatorCopy = mutator;
  representationProviderCopy = representationProvider;
  preferencesCopy = preferences;
  v24.receiver = self;
  v24.super_class = CALNEventInvitationNotificationEKDataSource;
  v18 = [(CALNEventInvitationNotificationEKDataSource *)&v24 init];
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

- (id)fetchEventInvitationNotificationSourceClientIdentifiers:(id)identifiers
{
  v29 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  preferences = [(CALNEventInvitationNotificationEKDataSource *)self preferences];
  invitationNotificationsDisabled = [preferences invitationNotificationsDisabled];

  if (invitationNotificationsDisabled)
  {
    v7 = objc_opt_new();
    goto LABEL_23;
  }

  inboxNotificationProvider = [(CALNEventInvitationNotificationEKDataSource *)self inboxNotificationProvider];
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
        if (!identifiersCopy || ([v15 objectID], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "stringRepresentation"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersCopy, "containsObject:", v17), v17, v16, v18))
        {
          notification = [v15 notification];
          v20 = [notification URL];
          if (v20 && ([notification hiddenFromNotificationCenter] & 1) == 0)
          {
            if ([notification type])
            {
              type = [notification type];

              if (type != 1)
              {
                goto LABEL_19;
              }
            }

            else
            {
            }

            v20 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notification];
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

- (id)fetchEventInvitationNotificationWithSourceClientIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    notification = [v8 notification];
    if (notification)
    {
      v10 = [(CALNEventInvitationNotificationEKDataSource *)self _notificationInfoFromNotification:notification inEventStore:eventStore];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = identifierCopy;
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
        [(CALNEventInvitationNotificationEKDataSource *)identifierCopy fetchEventInvitationNotificationWithSourceClientIdentifier:v11, v18, v19, v20, v21, v22, v23];
      }

      v10 = 0;
    }
  }

  else
  {
    notification = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notification, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationEKDataSource *)identifierCopy fetchEventInvitationNotificationWithSourceClientIdentifier:notification, v12, v13, v14, v15, v16, v17];
    }

    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)clearEventInvitationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];
  notificationReferenceProvider = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  [CALNEventInvitationNotificationDataSourceUtils clearEventInvitationOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];
}

- (void)reportEventInvitationAsJunkWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v8)
  {
    [v8 setIsJunk:1 shouldSave:1];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationEKDataSource *)identifierCopy reportEventInvitationAsJunkWithSourceClientIdentifier:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

- (id)_notificationInfoFromNotification:(id)notification inEventStore:(id)store
{
  notificationCopy = notification;
  storeCopy = store;
  v29 = [CALNNotificationDataSourceUtils sourceClientIdentifierForNotification:notificationCopy];
  v8 = [CALNEventInvitationNotificationDataSourceUtils expirationDateForEventInvitation:notificationCopy];
  v28 = storeCopy;
  v9 = [CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:notificationCopy inEventStore:storeCopy];
  if (v9)
  {
    [notificationCopy URL];
    v10 = v27 = v8;
    absoluteString = [v10 absoluteString];

    v25 = CUIKLaunchURLForEventInvitation();
    calendar = [v9 calendar];
    source = [calendar source];

    isDelegate = [source isDelegate];
    title = [source title];
    uniqueIdentifier = [source uniqueIdentifier];
    scanForConflicts = [v9 scanForConflicts];
    dataSourceEventRepresentationProvider = [(CALNEventInvitationNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
    startDate = [v9 startDate];
    endDate = [v9 endDate];
    timeZone = [v28 timeZone];
    v17 = [dataSourceEventRepresentationProvider eventRepresentationDictionaryForInvitationNotification:notificationCopy event:v9 date:startDate endDate:endDate timeZone:timeZone];

    v8 = v27;
    LOBYTE(v20) = isDelegate;
    v18 = [[CALNEventInvitationNotificationInfo alloc] initWithSourceClientIdentifier:v29 launchURL:v25 expirationDate:v27 conflictDetails:scanForConflicts eventInvitationNotification:notificationCopy eventRepresentationDictionary:v17 eventURI:absoluteString isDelegate:v20 sourceTitle:title sourceIdentifier:uniqueIdentifier];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_setParticipantStatus:(int64_t)status withSourceClientIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventStoreProvider = [(CALNEventInvitationNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  notificationReferenceProvider = [(CALNEventInvitationNotificationEKDataSource *)self notificationReferenceProvider];
  v10 = [CALNEventInvitationNotificationDataSourceUtils eventForNotificationOfType:0 withSourceClientIdentifier:identifierCopy inEventStore:eventStore withNotificationReferenceProvider:notificationReferenceProvider];

  if (v10)
  {
    [v10 setParticipationStatus:status];
    [v10 setInvitationStatus:0];
    v11 = [objc_opt_class() _spanForNewStatusWithEvent:v10];
    remoteMutator = [(CALNEventInvitationNotificationEKDataSource *)self remoteMutator];
    [remoteMutator setParticipantStatus:status span:v11 event:v10];

    v18 = 0;
    LOBYTE(v11) = [eventStore saveEvent:v10 span:v11 error:&v18];
    v13 = v18;
    if ((v11 & 1) == 0)
    {
      v14 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        externalURI = [v10 externalURI];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:status];
        *buf = 138543874;
        v20 = externalURI;
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
      [(CALNEventInvitationNotificationEKDataSource *)identifierCopy _setParticipantStatus:status withSourceClientIdentifier:v13];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_spanForNewStatusWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy responseMustApplyToAll])
  {
    v4 = 4;
  }

  else if ([eventCopy hasRecurrenceRules])
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