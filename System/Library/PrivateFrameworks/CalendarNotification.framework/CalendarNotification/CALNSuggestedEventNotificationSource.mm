@interface CALNSuggestedEventNotificationSource
+ (id)_bundle;
- (CALNNotificationManager)notificationManager;
- (CALNSuggestedEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider;
- (NSArray)categories;
- (id)_sourceClientIdentifiersForObjectIDs:(id)ds;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNSuggestedEventNotificationSource

- (CALNSuggestedEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = CALNSuggestedEventNotificationSource;
  v12 = [(CALNSuggestedEventNotificationSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeWeak(&v13->_notificationManager, managerCopy);
    objc_storeStrong(&v13->_iconIdentifierProvider, provider);
  }

  return v13;
}

- (NSArray)categories
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CALNSuggestedEventNotificationSource_categories__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  if (categories_onceToken_3 != -1)
  {
    dispatch_once(&categories_onceToken_3, block);
  }

  return categories_categories_3;
}

void __50__CALNSuggestedEventNotificationSource_categories__block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _bundle];
  v22 = [v3 localizedStringForKey:@"Add to calendar button for a suggested event" value:@"Add to Calendar" table:0];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _bundle];
  v21 = [v5 localizedStringForKey:@"Ignore button for a suggested event" value:@"Ignore" table:0];

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() _bundle];
  v20 = [v7 localizedStringForKey:@"Delete button for a canceled suggested event" value:@"Delete" table:0];

  v8 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationConfirmAction" title:v22 systemImageName:@"checkmark.circle"];
  v9 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationIgnoreAction" title:v21 systemImageName:@"xmark.circle"];
  v10 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeleteAction" title:v20 systemImageName:@"trash"];
  v25[0] = v8;
  v25[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v12 = [MEMORY[0x277CF7CC8] brandedOriginDescriptionStringWithAppName:0];
  v13 = [CALNNotificationCategory categoryWithIdentifier:@"SuggestedEvent.Default" actions:v11 hiddenPreviewsBodyPlaceholder:v12 options:0];
  v14 = [CALNNotificationCategory categoryWithIdentifier:@"SuggestedEvent.Coalesced" actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v12 options:0];
  v24 = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v16 = [CALNNotificationCategory categoryWithIdentifier:@"SuggestedEvent.Canceled" actions:v15 hiddenPreviewsBodyPlaceholder:v12 options:0];

  v23[0] = v13;
  v23[1] = v14;
  v23[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v18 = categories_categories_3;
  categories_categories_3 = v17;

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)_bundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CALNSuggestedEventNotificationSource__bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundle_onceToken != -1)
  {
    dispatch_once(&_bundle_onceToken, block);
  }

  v2 = _bundle_bundle;

  return v2;
}

uint64_t __47__CALNSuggestedEventNotificationSource__bundle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _bundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  v60 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
  v6 = [dataSource fetchSuggestedEventNotificationsWithSourceClientIdentifier:identifierCopy];

  if ([v6 count])
  {
    v45 = identifierCopy;
    if ([v6 count] < 2)
    {
      if ([v6 count] == 1)
      {
        v25 = [v6 objectAtIndexedSubscript:0];
        suggestionNotification = [v25 suggestionNotification];
        title = [suggestionNotification title];
        v27 = [suggestionNotification allDescriptionStringsWithOptions:1];
        descriptionText = [v27 componentsJoinedByString:@"\n"];

        launchURL = [v25 launchURL];
        type = [suggestionNotification type];
        v29 = 0;
        if ((type - 12) <= 2)
        {
          v29 = off_278D6F4E0[type - 12];
        }

        v44 = v29;
        startDate = [suggestionNotification startDate];
        expirationDate = [v25 expirationDate];
        originAppName = [suggestionNotification originAppName];
        calendar = [suggestionNotification calendar];
        calendarIdentifier = [calendar calendarIdentifier];
      }

      else
      {
        calendarIdentifier = 0;
        expirationDate = 0;
        originAppName = 0;
        launchURL = 0;
        v44 = 0;
        startDate = 0;
        descriptionText = 0;
        title = 0;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v52;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v51 + 1) + 8 * i);
            suggestionNotification2 = [v14 suggestionNotification];
            [v7 addObject:suggestionNotification2];
            expirationDate2 = [v14 expirationDate];
            [v8 addObject:expirationDate2];
          }

          v11 = [v9 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v11);
      }

      [v8 sortUsingSelector:sel_compare_];
      v17 = MEMORY[0x277CF7CC8];
      v18 = [v7 copy];
      v19 = [v17 coalescedInfoForSuggestionNotifications:v18];

      title = [v19 title];
      descriptionText = [v19 descriptionText];
      launchURL = CUIKLaunchURLForInbox();
      v21 = [v7 objectAtIndexedSubscript:0];
      originAppName = [v21 originAppName];
      calendar2 = [v21 calendar];
      calendarIdentifier = [calendar2 calendarIdentifier];

      expirationDate = [v8 lastObject];

      startDate = 0;
      v44 = @"SuggestedEvent.Coalesced";
    }

    v31 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.suggestions"];
    v32 = startDate;
    date = v32;
    if (!v32)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    iconIdentifierProvider = [(CALNSuggestedEventNotificationSource *)self iconIdentifierProvider];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v36 = [iconIdentifierProvider identifierForIconWithDate:date inCalendar:currentCalendar];

    v37 = MEMORY[0x277CCACA8];
    sourceIdentifier = [(CALNSuggestedEventNotificationSource *)self sourceIdentifier];
    v39 = [v37 stringWithFormat:@"%@.%@", sourceIdentifier, originAppName];

    v40 = objc_opt_new();
    [v40 setTitle:title];
    [v40 setBody:descriptionText];
    [v40 setCategoryIdentifier:v44];
    [v40 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.suggestions"];
    [v40 setDate:v32];
    [v40 setExpirationDate:expirationDate];
    [v40 setDefaultActionURL:launchURL];
    [v40 setIconIdentifier:v36];
    [v40 setSound:v31];
    [v40 setThreadIdentifier:v39];
    [v40 setInterruptionLevel:1];
    [v40 setFilterCriteria:calendarIdentifier];
    v41 = +[CALNLogSubsystem calendar];
    identifierCopy = v45;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v56 = v45;
      v57 = 2112;
      v58 = v40;
      _os_log_impl(&dword_242909000, v41, OS_LOG_TYPE_DEFAULT, "Fetched suggested event notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
    }

    v24 = [v40 copy];
  }

  else
  {
    title = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(title, OS_LOG_TYPE_ERROR))
    {
      [(CALNSuggestedEventNotificationSource *)identifierCopy contentForNotificationWithSourceClientIdentifier:title];
    }

    v24 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)refreshNotifications:(id)notifications
{
  v36 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
  fetchSuggestedEventNotificationObjectIDs = [dataSource fetchSuggestedEventNotificationObjectIDs];

  v28 = objc_opt_new();
  v25 = fetchSuggestedEventNotificationObjectIDs;
  [(CALNSuggestedEventNotificationSource *)self _sourceClientIdentifiersForObjectIDs:fetchSuggestedEventNotificationObjectIDs];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [(CALNSuggestedEventNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v10];
        if (v12)
        {
          v13 = [CALNNotificationRecord alloc];
          sourceIdentifier = [(CALNSuggestedEventNotificationSource *)self sourceIdentifier];
          v15 = [(CALNNotificationRecord *)v13 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:v10 content:v12];

          [v28 addObject:v15];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v16 = +[CALNLogSubsystem calendar];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (notificationsCopy)
  {
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    *buf = 138543362;
    v34 = v18;
    v19 = "Refreshed suggested event notifications in response to database change. Found %{public}@ notifications for changed objects.";
  }

  else
  {
    if (!v17)
    {
      goto LABEL_16;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    *buf = 138543362;
    v34 = v18;
    v19 = "Refreshed suggested event notifications. Found %{public}@ notifications.";
  }

  _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);

LABEL_16:
  v20 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    *buf = 138543362;
    v34 = v21;
    _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Refreshed suggested event notifications. Found %{public}@ notifications.", buf, 0xCu);
  }

  notificationManager = [(CALNSuggestedEventNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNSuggestedEventNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v28 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_sourceClientIdentifiersForObjectIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
        v13 = [dataSource fetchSuggestedEventNotificationWithObjectID:v11];

        if (v13)
        {
          sourceClientIdentifier = [v13 sourceClientIdentifier];
          [v5 addObject:sourceClientIdentifier];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (void)didReceiveResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  notificationRecord = [responseCopy notificationRecord];
  content = [notificationRecord content];
  categoryIdentifier = [content categoryIdentifier];

  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord2 = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord2 sourceClientIdentifier];

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = sourceClientIdentifier;
    v16 = 2114;
    v17 = actionIdentifier;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Received notification response for suggested event notification with source client identifier = %{public}@, actionIdentifier = %{public}@", &v14, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
    [dataSource clearSuggestedEventNotificationWithSourceClientIdentifier:sourceClientIdentifier];
LABEL_6:

    goto LABEL_7;
  }

  if ([categoryIdentifier isEqualToString:@"SuggestedEvent.Default"])
  {
    if ([actionIdentifier isEqualToString:@"CALNNotificationConfirmAction"])
    {
      dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
      [dataSource confirmSuggestedEventWithSourceClientIdentifier:sourceClientIdentifier];
    }

    else
    {
      if (![actionIdentifier isEqualToString:@"CALNNotificationIgnoreAction"])
      {
        goto LABEL_7;
      }

      dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
      [dataSource ignoreSuggestedEventWithSourceClientIdentifier:sourceClientIdentifier];
    }

    goto LABEL_6;
  }

  if ([categoryIdentifier isEqualToString:@"SuggestedEvent.Canceled"] && objc_msgSend(actionIdentifier, "isEqualToString:", @"CALNNotificationDeleteAction"))
  {
    dataSource = [(CALNSuggestedEventNotificationSource *)self dataSource];
    [dataSource deleteCanceledSuggestedEventWithSourceClientIdentifier:sourceClientIdentifier];
    goto LABEL_6;
  }

LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

- (void)contentForNotificationWithSourceClientIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get notification infos for sourceClientIdentifier (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end