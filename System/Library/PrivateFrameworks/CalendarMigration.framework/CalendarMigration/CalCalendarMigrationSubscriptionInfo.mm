@interface CalCalendarMigrationSubscriptionInfo
- (CalCalendarMigrationSubscriptionInfo)initWithCalendarDirectory:(id)directory subscriptionURL:(id)l username:(id)username principalUid:(id)uid;
- (id)_dictionaryForAccountProperties;
- (id)dictionaryForParentAccountProperties;
@end

@implementation CalCalendarMigrationSubscriptionInfo

- (CalCalendarMigrationSubscriptionInfo)initWithCalendarDirectory:(id)directory subscriptionURL:(id)l username:(id)username principalUid:(id)uid
{
  directoryCopy = directory;
  lCopy = l;
  usernameCopy = username;
  uidCopy = uid;
  v23.receiver = self;
  v23.super_class = CalCalendarMigrationSubscriptionInfo;
  v15 = [(CalCalendarMigrationSubscriptionInfo *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_calendarDirectory, directory);
    objc_storeStrong(&v16->_subscriptionURL, l);
    if (usernameCopy)
    {
      v17 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 CDVURLWithUser:usernameCopy];
        absoluteString = [v19 absoluteString];
        subscriptionURLWithUsername = v16->_subscriptionURLWithUsername;
        v16->_subscriptionURLWithUsername = absoluteString;
      }
    }

    if (!v16->_subscriptionURLWithUsername)
    {
      objc_storeStrong(&v16->_subscriptionURLWithUsername, v16->_subscriptionURL);
    }

    objc_storeStrong(&v16->_principalUid, uid);
  }

  return v16;
}

- (id)_dictionaryForAccountProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  subscriptionURL = [(CalCalendarMigrationSubscriptionInfo *)self subscriptionURL];
  [dictionary setObject:subscriptionURL forKeyedSubscript:*MEMORY[0x277CF7AF8]];
  title = [(CalCalendarMigrationSubscriptionInfo *)self title];

  if (title)
  {
    title2 = [(CalCalendarMigrationSubscriptionInfo *)self title];
    [dictionary setObject:title2 forKeyedSubscript:*MEMORY[0x277CF7B00]];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo filterAlarms](self, "filterAlarms")}];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7AC0]];
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7AF0]];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo filterAttachments](self, "filterAttachments")}];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CF7AC8]];

  v9 = MEMORY[0x277CCABB0];
  [(CalCalendarMigrationSubscriptionInfo *)self refreshInterval];
  v11 = [v9 numberWithInt:v10];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CF7AE8]];

  if ([(CalCalendarMigrationSubscriptionInfo *)self isManagedByServer])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7AE0]];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationSubscriptionInfo insecureConnectionApproved](self, "insecureConnectionApproved")}];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CF7AD8]];

  if ([subscriptionURL length] >= 5 && !objc_msgSend(subscriptionURL, "compare:options:range:", @"ftp://", 1, 0, 5))
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7B10]];
  }

  v13 = [subscriptionURL length] >= 8 && objc_msgSend(subscriptionURL, "compare:options:range:", @"https://", 1, 0, 8) == 0;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277CF7938]];

  v15 = MEMORY[0x277CF7840];
  subscriptionURL2 = [(CalCalendarMigrationSubscriptionInfo *)self subscriptionURL];
  v17 = [v15 hostStringFromURLString:subscriptionURL2];

  if (v17)
  {
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CF7928]];
  }

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7B08]];

  return dictionary;
}

- (id)dictionaryForParentAccountProperties
{
  v17 = *MEMORY[0x277D85DE8];
  _dictionaryForAccountProperties = [(CalCalendarMigrationSubscriptionInfo *)self _dictionaryForAccountProperties];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CF7AF8], *MEMORY[0x277CF7B00], *MEMORY[0x277CF7AC0], *MEMORY[0x277CF7AE8], *MEMORY[0x277CF7AC8], 0}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [_dictionaryForAccountProperties allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [_dictionaryForAccountProperties removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return _dictionaryForAccountProperties;
}

@end