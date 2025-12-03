@interface CALNNotificationDataSourceUtils
+ (id)calendarWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (id)eventWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (id)objectIDWithSourceClientIdentifier:(id)identifier;
+ (id)sourceClientIdentifierForNotification:(id)notification;
+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (void)hideCalendarFromNotificationCenter:(id)center inEventStore:(id)store;
+ (void)reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:(id)identifier inEventStore:(id)store;
+ (void)respondToSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier inEventStore:(id)store withDataAccessExpressConnection:(id)connection accept:(BOOL)accept;
@end

@implementation CALNNotificationDataSourceUtils

+ (id)objectIDWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
  if (v4)
  {
    v5 = [MEMORY[0x277CC5A60] objectIDWithURL:v4];
    if (v5)
    {
      goto LABEL_9;
    }

    v6 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils objectIDWithSourceClientIdentifier:];
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils objectIDWithSourceClientIdentifier:];
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

+ (id)sourceClientIdentifierForNotification:(id)notification
{
  notificationCopy = notification;
  type = [notificationCopy type];
  if (type > 0xE)
  {
    v6 = 0;
  }

  else
  {
    if (((1 << type) & 0x7EF0) != 0)
    {
      objectID = [notificationCopy objectID];
      [objectID stringRepresentation];
    }

    else
    {
      objectID = [notificationCopy URL];
      [objectID absoluteString];
    }
    v6 = ;
  }

  return v6;
}

+ (id)eventWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
  if (v7)
  {
    v8 = [storeCopy _eventWithURI:v7 checkValid:0];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CALNNotificationDataSourceUtils eventWithSourceClientIdentifier:inEventStore:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)calendarWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  if (identifierCopy)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
    if (v7)
    {
      v8 = [storeCopy calendarWithExternalURI:v7];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v10 = v9;
      }

      else
      {
        v11 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:inEventStore:];
        }

        v10 = 0;
      }
    }

    else
    {
      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:inEventStore:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationDataSourceUtils calendarWithSourceClientIdentifier:v7 inEventStore:?];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)respondToSharedCalendarInvitationWithSourceClientIdentifier:(id)identifier inEventStore:(id)store withDataAccessExpressConnection:(id)connection accept:(BOOL)accept
{
  acceptCopy = accept;
  storeCopy = store;
  connectionCopy = connection;
  v11 = [self calendarWithSourceClientIdentifier:identifier inEventStore:storeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = acceptCopy ? 1 : 2;
    calendarIdentifier = [v11 calendarIdentifier];
    source = [v12 source];
    externalID = [source externalID];
    [connectionCopy respondToSharedCalendarInvite:v13 forCalendarWithID:calendarIdentifier accountID:externalID queue:MEMORY[0x277D85CD0] completionBlock:0];

    if (acceptCopy)
    {
      [self hideCalendarFromNotificationCenter:v12 inEventStore:storeCopy];
      v17 = MEMORY[0x277CC5A78];
      sharedOwnerName = [v12 sharedOwnerName];
      sharedOwnerEmail = [v12 sharedOwnerEmail];
      sharedOwnerPhoneNumber = [v12 sharedOwnerPhoneNumber];
      [v17 recordRecentForContactWithName:sharedOwnerName emailAddress:sharedOwnerEmail phoneNumber:sharedOwnerPhoneNumber];
    }
  }
}

+ (void)reportSharedCalendarInvitationAsJunkWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  v4 = [self calendarWithSourceClientIdentifier:identifier inEventStore:store];
  if (v4)
  {
    v5 = v4;
    [v4 setIsJunk:1];
    v4 = v5;
  }
}

+ (void)hideCalendarFromNotificationCenter:(id)center inEventStore:(id)store
{
  v14[1] = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v14[0] = centerCopy;
  v6 = MEMORY[0x277CBEA60];
  storeCopy = store;
  v8 = [v6 arrayWithObjects:v14 count:1];
  v13 = 0;
  v9 = [storeCopy hideCalendarsFromNotificationCenter:v8 error:&v13];

  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNNotificationDataSourceUtils hideCalendarFromNotificationCenter:centerCopy inEventStore:?];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(id)identifier inEventStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v8 = [self objectIDWithSourceClientIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 entityType] == 16)
    {
      v10 = [storeCopy publicObjectWithObjectID:v9];
      if (v10)
      {
        v14 = 0;
        v11 = [storeCopy removeInviteReplyNotification:v10 error:&v14];
        v12 = v14;
        if ((v11 & 1) == 0)
        {
          v13 = +[CALNLogSubsystem defaultCategory];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:];
          }
        }
      }

      else
      {
        v12 = +[CALNLogSubsystem defaultCategory];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:];
        }
      }
    }

    else
    {
      v10 = +[CALNLogSubsystem defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNNotificationDataSourceUtils clearSharedCalendarInvitationResponseWithSourceClientIdentifier:v9 inEventStore:?];
      }
    }
  }
}

+ (void)objectIDWithSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to construct objectID from sourceClientIdentifier (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)objectIDWithSourceClientIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to construct URL from sourceClientIdentifier (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)notificationReferenceOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to construct calendarURI for shared calendar invitation with sourceClientIdentifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)notificationReferenceOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to load notification reference for sourceClientIdentifier (%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)notificationReferenceOfType:(os_log_t)log withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.3(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_242909000, log, OS_LOG_TYPE_ERROR, "Failed to get objectID for notification of type %d with sourceClientIdentifier %{public}@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)eventWithSourceClientIdentifier:inEventStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to construct eventURI with sourceClientIdentifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)calendarWithSourceClientIdentifier:inEventStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get calendar for sourceClientIdentifier (%{public}@).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)calendarWithSourceClientIdentifier:inEventStore:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to construct calendarURI for sourceClientIdentifier (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)hideCalendarFromNotificationCenter:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_242909000, v2, v3, "Failed to hide calendar (%{public}@) from notification center: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:(void *)a1 inEventStore:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "entityType")}];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0(&dword_242909000, v2, v3, "Unexpected entity type %{public}@ when trying to get EKInviteReplyNotification with sourceClientIdentifier %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Failed to remove invite reply notification with sourceClientIdentifier %{public}@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)clearSharedCalendarInvitationResponseWithSourceClientIdentifier:inEventStore:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get invite reply notification with sourceClientIdentifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end