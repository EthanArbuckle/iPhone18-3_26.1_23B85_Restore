@interface CALNEventInvitationNotificationDataSourceUtils
+ (id)eventForEventInvitation:(id)a3 inEventStore:(id)a4;
+ (id)expirationDateForEventInvitation:(id)a3;
@end

@implementation CALNEventInvitationNotificationDataSourceUtils

+ (id)eventForEventInvitation:(id)a3 inEventStore:(id)a4
{
  v5 = a4;
  v6 = [a3 URL];
  v7 = [v5 _eventWithURI:v6 checkValid:1];

  if (!v7)
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CALNEventInvitationNotificationDataSourceUtils eventForEventInvitation:inEventStore:];
    }
  }

  return v7;
}

+ (id)expirationDateForEventInvitation:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasRecurrenceRules])
  {
    v4 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    v6 = [v3 endDate];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v3 attendees];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) proposedStartDate];
          if ([v12 isAfterDate:v6])
          {
            v13 = v12;

            v6 = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v6 timeIntervalSinceDate:v5];
    v15 = v14;
    v16 = [MEMORY[0x277CBEAA8] date];
    v4 = [v16 dateByAddingTimeInterval:v15];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification from notification reference. sourceClientIdentifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)eventForNotificationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification reference with sourceClientIdentifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)eventForEventInvitation:inEventStore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to find event for notification using url (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)clearEventInvitationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Failed to clear invitation status for event (%{public}@): %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)clearEventInvitationOfType:withSourceClientIdentifier:inEventStore:withNotificationReferenceProvider:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get event (%{public}@) when attempting to clear invitation notification", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end