@interface CALNCalendarResourceChangedNotificationSource
- (CALNCalendarResourceChangedNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6 dateProvider:(id)a7;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNCalendarResourceChangedNotificationSource

- (CALNCalendarResourceChangedNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6 dateProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = CALNCalendarResourceChangedNotificationSource;
  v18 = [(CALNCalendarResourceChangedNotificationSource *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSource, a3);
    objc_storeWeak(&v19->_notificationManager, v14);
    objc_storeStrong(&v19->_iconIdentifierProvider, a5);
    objc_storeStrong(&v19->_sourceEventRepresentationProvider, a6);
    objc_storeStrong(&v19->_dateProvider, a7);
  }

  return v19;
}

- (NSArray)categories
{
  if (categories_onceToken_6 != -1)
  {
    [CALNCalendarResourceChangedNotificationSource categories];
  }

  v3 = categories_categories_6;

  return v3;
}

void __59__CALNCalendarResourceChangedNotificationSource_categories__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.resourceChange" value:@"Shared Event Change" table:0];
  v2 = [CALNNotificationCategory categoryWithIdentifier:@"CALNResourceChangedCategoryIdentifier" actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v1 options:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = categories_categories_6;
  categories_categories_6 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchCalendarResourceChangedNotificationSourceClientIdentifiers:v4];

  v26 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(CALNCalendarResourceChangedNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          v15 = [(CALNCalendarResourceChangedNotificationSource *)self sourceIdentifier];
          v16 = [(CALNNotificationRecord *)v14 initWithSourceIdentifier:v15 sourceClientIdentifier:v11 content:v13];

          [v26 addObject:v16];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v17 = +[CALNLogSubsystem calendar];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
      *buf = 138543362;
      v32 = v19;
      v20 = "Refreshed calendar resource changed notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed calendar resource changed notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  v21 = [(CALNCalendarResourceChangedNotificationSource *)self notificationManager];
  v22 = [(CALNCalendarResourceChangedNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
  v6 = [v5 fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNCalendarResourceChangedNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationSource *)v4 contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNBundle bundle];
  v36 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.resourceChanges"];
  v6 = objc_opt_new();
  v7 = [v4 calendarNotification];
  v38 = [v7 title];
  if (!v38)
  {
    v38 = [v5 localizedStringForKey:@"Shared Calendar Change" value:&stru_28551FB98 table:0];
  }

  v37 = [v4 date];
  if (!v37)
  {
    v37 = [MEMORY[0x277CBEAA8] date];
  }

  v8 = [v4 date];
  v9 = [v4 allDay];
  v10 = [(CALNCalendarResourceChangedNotificationSource *)self dateProvider];
  v11 = [CALNDateStringUtils dateTimeStringForEventDate:v8 alwaysIncludeDate:1 allDayEvent:v9 dateProvider:v10];

  v12 = CUIKMessageStringForNotification();
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (v11 && [v11 length])
  {
    [v13 appendString:v11];
  }

  if (v12 && [v12 length])
  {
    if ([v13 length])
    {
      [v13 appendString:@"\n"];
    }

    [v13 appendString:v12];
  }

  v34 = v12;
  v35 = v11;
  [v6 setTitle:v38];
  [v6 setBody:v13];
  [v6 setCategoryIdentifier:@"CALNResourceChangedCategoryIdentifier"];
  [v6 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.resourceChanges"];
  v14 = [v4 launchURL];
  [v6 setDefaultActionURL:v14];

  [v6 setSound:v36];
  v15 = [(CALNCalendarResourceChangedNotificationSource *)self iconIdentifierProvider];
  v16 = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [v15 identifierForIconWithDate:v37 inCalendar:v16];
  [v6 setIconIdentifier:v17];

  [v6 setInterruptionLevel:1];
  v18 = [v7 calendar];
  v19 = [v18 calendarIdentifier];
  [v6 setFilterCriteria:v19];

  if ([v4 isDelegate])
  {
    v20 = [v4 sourceTitle];
    v21 = [v4 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v6 forDelegateSourceWithTitle:v20 identifier:v21];
  }

  v22 = v5;
  if ([v4 changeType] != 3)
  {
    v23 = [v4 date];
    [v6 setDate:v23];
  }

  [v6 setShouldHideTime:{objc_msgSend(v4, "allDay")}];
  v24 = [(CALNCalendarResourceChangedNotificationSource *)self sourceEventRepresentationProvider];
  v25 = [v7 startDate];
  v26 = [v7 endDate];
  v27 = [v4 timeZone];
  v28 = [v24 eventRepresentationDictionaryForResourceChangeNotification:v7 message:v13 date:v25 endDate:v26 timeZone:v27];

  if (v28)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v28 onNotificationContent:v6];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v7 onNotificationContent:v6];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v7 onNotificationContent:v6];
  if ([v4 changeType] != 3)
  {
    [CALNResourceChangedLaunchUtils setResourceChangedEventURLForCalendarNotification:v7 onNotificationContent:v6];
  }

  v29 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v40 = v30;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v31 = [v6 copy];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)didReceiveResponse:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 actionIdentifier];
  v6 = [v4 notificationRecord];

  v7 = [v6 sourceClientIdentifier];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for calendar resource changed %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
    [v9 clearCalendarResourceChangedNotificationWithSourceClientIdentifier:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
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
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get content for calendar resource changed notification with sourceClientIdentifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end