@interface CALNSuggestedEventNotificationEKDataSource
- (CALNSuggestedEventNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5;
- (id)_eventForSourceClientIdentifier:(id)a3 eventStore:(id)a4;
- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4;
- (id)fetchSuggestedEventNotificationObjectIDs;
- (id)fetchSuggestedEventNotificationWithObjectID:(id)a3;
- (id)fetchSuggestedEventNotifications;
- (id)fetchSuggestedEventNotificationsWithSourceClientIdentifier:(id)a3;
- (void)_acknowledgeSuggestedEventWithSourceClientIdentifier:(id)a3 accept:(BOOL)a4;
- (void)_clearSuggestedEventNotificationWithObjectID:(id)a3;
- (void)clearSuggestedEventNotificationWithSourceClientIdentifier:(id)a3;
- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:(id)a3;
- (void)fetchSuggestedEventNotificationObjectIDs;
@end

@implementation CALNSuggestedEventNotificationEKDataSource

- (CALNSuggestedEventNotificationEKDataSource)initWithEventStoreProvider:(id)a3 inboxNotificationProvider:(id)a4 notificationReferenceProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CALNSuggestedEventNotificationEKDataSource;
  v12 = [(CALNSuggestedEventNotificationEKDataSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_eventStoreProvider, a3);
    objc_storeStrong(&v13->_inboxNotificationProvider, a4);
    objc_storeStrong(&v13->_notificationReferenceProvider, a5);
  }

  return v13;
}

- (id)fetchSuggestedEventNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
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

        v10 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationWithObjectID:*(*(&v16 + 1) + 8 * i), v16];
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
    v12 = [v4 count];
    *buf = 134217984;
    v21 = v12;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched (%lu) suggested event notifications", buf, 0xCu);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchSuggestedEventNotificationObjectIDs
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [(CALNSuggestedEventNotificationEKDataSource *)self inboxNotificationProvider];
  v3 = [v2 eventNotificationReferences];

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if ([v10 type] == 5)
        {
          v11 = [v10 notification];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 URL];
            if (v13 && [v12 needsAlert])
            {
              if ([v12 type] == 12 || objc_msgSend(v12, "type") == 14)
              {

                goto LABEL_13;
              }

              v15 = [v12 type];

              if (v15 != 13)
              {
LABEL_17:

                goto LABEL_18;
              }

LABEL_13:
              v13 = [v12 objectID];
              v14 = [v13 stringRepresentation];
              [v4 addObject:v14];
            }
          }

          else
          {
            v13 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [(CALNSuggestedEventNotificationEKDataSource *)&v19 fetchSuggestedEventNotificationObjectIDs];
            }
          }

          goto LABEL_17;
        }

LABEL_18:
        ++v9;
      }

      while (v7 != v9);
      v16 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v7 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)fetchSuggestedEventNotificationsWithSourceClientIdentifier:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v29 = v4;
  v28 = [v6 predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:v4];
  v7 = [v6 eventsMatchingPredicate:?];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v36 + 1) + 8 * i) eventIdentifier];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  v15 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationWithObjectID:*(*(&v32 + 1) + 8 * j)];
        if (v22)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __105__CALNSuggestedEventNotificationEKDataSource_fetchSuggestedEventNotificationsWithSourceClientIdentifier___block_invoke;
  v30[3] = &unk_278D6F6D8;
  v31 = v8;
  v23 = v8;
  v24 = [v16 indexesOfObjectsPassingTest:v30];
  v25 = [v16 objectsAtIndexes:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __105__CALNSuggestedEventNotificationEKDataSource_fetchSuggestedEventNotificationsWithSourceClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 suggestionNotification];
  v4 = [v3 eventID];

  v5 = [*(a1 + 32) containsObject:v4];
  return v5;
}

- (id)fetchSuggestedEventNotificationWithObjectID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNSuggestedEventNotificationEKDataSource *)self notificationReferenceProvider];
  v8 = [CALNNotificationDataSourceUtils notificationReferenceOfType:5 withSourceClientIdentifier:v4 inEventStore:v6 withNotificationReferenceProvider:v7];

  if (v8)
  {
    v9 = [v8 notification];
    if (v9)
    {
      v10 = [(CALNSuggestedEventNotificationEKDataSource *)self _notificationInfoFromNotification:v9 inEventStore:v6];
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Fetched suggested event notification with objectID = %{public}@, notification info = %@", &v14, 0x16u);
      }
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
      }

      v10 = 0;
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [(CALNSuggestedEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:v4 eventStore:v6];
  if (v7)
  {
    v11 = 0;
    v8 = [v6 removeEvent:v7 span:2 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource deleteCanceledSuggestedEventWithSourceClientIdentifier:];
      }
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource deleteCanceledSuggestedEventWithSourceClientIdentifier:];
    }
  }
}

- (void)clearSuggestedEventNotificationWithSourceClientIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Clearing suggested event notification with source client identifier = %{public}@", buf, 0xCu);
  }

  v6 = [(CALNSuggestedEventNotificationEKDataSource *)self fetchSuggestedEventNotificationObjectIDs];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CALNSuggestedEventNotificationEKDataSource *)self _clearSuggestedEventNotificationWithObjectID:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_clearSuggestedEventNotificationWithObjectID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Clearing suggested event notification with object ID = %{public}@", buf, 0xCu);
  }

  v6 = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  v7 = [v6 eventStore];

  v8 = [(CALNSuggestedEventNotificationEKDataSource *)self notificationReferenceProvider];
  v9 = [CALNNotificationDataSourceUtils notificationReferenceOfType:5 withSourceClientIdentifier:v4 inEventStore:v7 withNotificationReferenceProvider:v8];

  if (v9)
  {
    v10 = [v9 notification];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 resourceChangeFromEventStore:v7];
      if (v12)
      {
        v19 = 0;
        v13 = [v7 markResourceChangeAlertedAndSave:v12 error:&v19];
        v14 = v19;
        v15 = +[CALNLogSubsystem calendar];
        v16 = v15;
        if (v13)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v11 objectID];
            *buf = 138543362;
            v21 = v17;
            _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Cleared suggested event notification with objectID %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:v11];
        }
      }

      else
      {
        v14 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:v11];
        }
      }
    }

    else
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CALNSuggestedEventNotificationEKDataSource _clearSuggestedEventNotificationWithObjectID:];
      }
    }
  }

  else
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource fetchSuggestedEventNotificationWithObjectID:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_acknowledgeSuggestedEventWithSourceClientIdentifier:(id)a3 accept:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CALNSuggestedEventNotificationEKDataSource *)self eventStoreProvider];
  v8 = [v7 eventStore];

  v9 = [(CALNSuggestedEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:v6 eventStore:v8];
  v10 = v9;
  if (v9)
  {
    if (v4)
    {
      [v8 acceptSuggestedEvent:v9];
      v11 = MEMORY[0x277CF7870];
      v12 = [v10 suggestionInfo];
      v13 = [v12 uniqueKey];
      [v11 logEventConfirmedNotificationWithUniqueKey:v13];
    }

    else
    {
      v15 = MEMORY[0x277CF7870];
      v16 = [v9 suggestionInfo];
      v17 = [v16 uniqueKey];
      [v15 logEventRejectedNotificationWithUniqueKey:v17];

      [v8 deleteSuggestedEvent:v10];
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _acknowledgeSuggestedEventWithSourceClientIdentifier:accept:];
    }
  }
}

- (id)_eventForSourceClientIdentifier:(id)a3 eventStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 predicateForEventsCreatedFromSuggestionWithExtractionGroupIdentifier:v5];
  v8 = [v6 eventsMatchingPredicate:v7];

  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  if ([v10 count] >= 2)
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _eventForSourceClientIdentifier:v5 eventStore:v10];
    }
  }

  v12 = [v10 firstObject];

  return v12;
}

- (id)_notificationInfoFromNotification:(id)a3 inEventStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 suggestedEvent];
  v8 = [v7 origin];
  v9 = [v8 externalKey];

  if (v9)
  {
    v10 = [CALNResourceChangedNotificationDataSourceUtils expirationDateForNotification:v5];
    v11 = [CALNResourceChangedNotificationDataSourceUtils launchURLForNotification:v5 inEventStore:v6];
    v12 = [[CALNSuggestedEventNotificationInfo alloc] initWithSourceClientIdentifier:v9 launchURL:v11 expirationDate:v10 suggestionNotification:v5];
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CALNSuggestedEventNotificationEKDataSource _notificationInfoFromNotification:v5 inEventStore:?];
    }

    v12 = 0;
  }

  return v12;
}

- (void)fetchSuggestedEventNotificationObjectIDs
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Failed to get notification from notification reference.", buf, 2u);
}

- (void)fetchSuggestedEventNotificationWithObjectID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get suggested event notification from notification reference. objectID = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSuggestedEventNotificationWithObjectID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get suggested event notification reference with objectID %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Error deleting canceled suggested event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteCanceledSuggestedEventWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get event. Cannot delete suggested event for source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearSuggestedEventNotificationWithObjectID:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearSuggestedEventNotificationWithObjectID:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearSuggestedEventNotificationWithObjectID:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [0 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_acknowledgeSuggestedEventWithSourceClientIdentifier:accept:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get event. Cannot acknowledge event for source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_eventForSourceClientIdentifier:(uint64_t)a1 eventStore:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 count];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notificationInfoFromNotification:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectID];
  v2 = [v1 stringRepresentation];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end