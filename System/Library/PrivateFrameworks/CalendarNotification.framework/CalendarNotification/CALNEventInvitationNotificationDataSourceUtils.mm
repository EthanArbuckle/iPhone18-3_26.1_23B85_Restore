@interface CALNEventInvitationNotificationDataSourceUtils
+ (id)eventForEventInvitation:(id)invitation inEventStore:(id)store;
+ (id)expirationDateForEventInvitation:(id)invitation;
@end

@implementation CALNEventInvitationNotificationDataSourceUtils

+ (id)eventForEventInvitation:(id)invitation inEventStore:(id)store
{
  storeCopy = store;
  v6 = [invitation URL];
  v7 = [storeCopy _eventWithURI:v6 checkValid:1];

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

+ (id)expirationDateForEventInvitation:(id)invitation
{
  v24 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  if ([invitationCopy hasRecurrenceRules])
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    endDate = [invitationCopy endDate];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    attendees = [invitationCopy attendees];
    v8 = [attendees countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(attendees);
          }

          proposedStartDate = [*(*(&v19 + 1) + 8 * i) proposedStartDate];
          if ([proposedStartDate isAfterDate:endDate])
          {
            v13 = proposedStartDate;

            endDate = v13;
          }
        }

        v9 = [attendees countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [endDate timeIntervalSinceDate:calSimulatedDateForNow];
    v15 = v14;
    date = [MEMORY[0x277CBEAA8] date];
    distantFuture = [date dateByAddingTimeInterval:v15];
  }

  v17 = *MEMORY[0x277D85DE8];

  return distantFuture;
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