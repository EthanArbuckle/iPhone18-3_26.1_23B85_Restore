@interface CalCalendarMigrationSubscriptionInfo
- (CalCalendarMigrationSubscriptionInfo)initWithCalendarDirectory:(id)a3 subscriptionURL:(id)a4 username:(id)a5 principalUid:(id)a6;
- (id)_dictionaryForAccountProperties;
- (id)dictionaryForParentAccountProperties;
@end

@implementation CalCalendarMigrationSubscriptionInfo

- (CalCalendarMigrationSubscriptionInfo)initWithCalendarDirectory:(id)a3 subscriptionURL:(id)a4 username:(id)a5 principalUid:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = CalCalendarMigrationSubscriptionInfo;
  v15 = [(CalCalendarMigrationSubscriptionInfo *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_calendarDirectory, a3);
    objc_storeStrong(&v16->_subscriptionURL, a4);
    if (v13)
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v12];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 CDVURLWithUser:v13];
        v20 = [v19 absoluteString];
        subscriptionURLWithUsername = v16->_subscriptionURLWithUsername;
        v16->_subscriptionURLWithUsername = v20;
      }
    }

    if (!v16->_subscriptionURLWithUsername)
    {
      objc_storeStrong(&v16->_subscriptionURLWithUsername, v16->_subscriptionURL);
    }

    objc_storeStrong(&v16->_principalUid, a6);
  }

  return v16;
}

- (id)_dictionaryForAccountProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(CalCalendarMigrationSubscriptionInfo *)self subscriptionURL];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CF7AF8]];
  v5 = [(CalCalendarMigrationSubscriptionInfo *)self title];

  if (v5)
  {
    v6 = [(CalCalendarMigrationSubscriptionInfo *)self title];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CF7B00]];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo filterAlarms](self, "filterAlarms")}];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7AC0]];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7AF0]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo filterAttachments](self, "filterAttachments")}];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CF7AC8]];

  v9 = MEMORY[0x277CCABB0];
  [(CalCalendarMigrationSubscriptionInfo *)self refreshInterval];
  v11 = [v9 numberWithInt:v10];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277CF7AE8]];

  if ([(CalCalendarMigrationSubscriptionInfo *)self isManagedByServer])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7AE0]];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo insecureConnectionApproved](self, "insecureConnectionApproved")}];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277CF7AD8]];

  if ([v4 length] >= 5 && !objc_msgSend(v4, "compare:options:range:", @"ftp://", 1, 0, 5))
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7B10]];
  }

  v13 = [v4 length] >= 8 && objc_msgSend(v4, "compare:options:range:", @"https://", 1, 0, 8) == 0;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277CF7938]];

  v15 = MEMORY[0x277CF7840];
  v16 = [(CalCalendarMigrationSubscriptionInfo *)self subscriptionURL];
  v17 = [v15 hostStringFromURLString:v16];

  if (v17)
  {
    [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277CF7928]];
  }

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7B08]];

  return v3;
}

- (id)dictionaryForParentAccountProperties
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(CalCalendarMigrationSubscriptionInfo *)self _dictionaryForAccountProperties];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CF7AF8], *MEMORY[0x277CF7B00], *MEMORY[0x277CF7AC0], *MEMORY[0x277CF7AE8], *MEMORY[0x277CF7AC8], 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v2 removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end