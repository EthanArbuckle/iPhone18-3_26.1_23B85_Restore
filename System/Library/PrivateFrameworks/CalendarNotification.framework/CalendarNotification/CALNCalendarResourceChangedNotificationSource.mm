@interface CALNCalendarResourceChangedNotificationSource
- (CALNCalendarResourceChangedNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider dateProvider:(id)dateProvider;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)contentForNotificationWithInfo:(id)info;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNCalendarResourceChangedNotificationSource

- (CALNCalendarResourceChangedNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider dateProvider:(id)dateProvider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
  dateProviderCopy = dateProvider;
  v21.receiver = self;
  v21.super_class = CALNCalendarResourceChangedNotificationSource;
  v18 = [(CALNCalendarResourceChangedNotificationSource *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSource, source);
    objc_storeWeak(&v19->_notificationManager, managerCopy);
    objc_storeStrong(&v19->_iconIdentifierProvider, provider);
    objc_storeStrong(&v19->_sourceEventRepresentationProvider, representationProvider);
    objc_storeStrong(&v19->_dateProvider, dateProvider);
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

- (void)refreshNotifications:(id)notifications
{
  v34 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
  v24 = notificationsCopy;
  v6 = [dataSource fetchCalendarResourceChangedNotificationSourceClientIdentifiers:notificationsCopy];

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
          sourceIdentifier = [(CALNCalendarResourceChangedNotificationSource *)self sourceIdentifier];
          v16 = [(CALNNotificationRecord *)v14 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:v11 content:v13];

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

  notificationManager = [(CALNCalendarResourceChangedNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNCalendarResourceChangedNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v26 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
  v6 = [dataSource fetchCalendarResourceChangedNotificationWithSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [(CALNCalendarResourceChangedNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNCalendarResourceChangedNotificationSource *)identifierCopy contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)info
{
  v43 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[CALNBundle bundle];
  v36 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.resourceChanges"];
  v6 = objc_opt_new();
  calendarNotification = [infoCopy calendarNotification];
  title = [calendarNotification title];
  if (!title)
  {
    title = [v5 localizedStringForKey:@"Shared Calendar Change" value:&stru_28551FB98 table:0];
  }

  date = [infoCopy date];
  if (!date)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  date2 = [infoCopy date];
  allDay = [infoCopy allDay];
  dateProvider = [(CALNCalendarResourceChangedNotificationSource *)self dateProvider];
  v11 = [CALNDateStringUtils dateTimeStringForEventDate:date2 alwaysIncludeDate:1 allDayEvent:allDay dateProvider:dateProvider];

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
  [v6 setTitle:title];
  [v6 setBody:v13];
  [v6 setCategoryIdentifier:@"CALNResourceChangedCategoryIdentifier"];
  [v6 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.resourceChanges"];
  launchURL = [infoCopy launchURL];
  [v6 setDefaultActionURL:launchURL];

  [v6 setSound:v36];
  iconIdentifierProvider = [(CALNCalendarResourceChangedNotificationSource *)self iconIdentifierProvider];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [iconIdentifierProvider identifierForIconWithDate:date inCalendar:currentCalendar];
  [v6 setIconIdentifier:v17];

  [v6 setInterruptionLevel:1];
  calendar = [calendarNotification calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v6 setFilterCriteria:calendarIdentifier];

  if ([infoCopy isDelegate])
  {
    sourceTitle = [infoCopy sourceTitle];
    sourceIdentifier = [infoCopy sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v6 forDelegateSourceWithTitle:sourceTitle identifier:sourceIdentifier];
  }

  v22 = v5;
  if ([infoCopy changeType] != 3)
  {
    date3 = [infoCopy date];
    [v6 setDate:date3];
  }

  [v6 setShouldHideTime:{objc_msgSend(infoCopy, "allDay")}];
  sourceEventRepresentationProvider = [(CALNCalendarResourceChangedNotificationSource *)self sourceEventRepresentationProvider];
  startDate = [calendarNotification startDate];
  endDate = [calendarNotification endDate];
  timeZone = [infoCopy timeZone];
  v28 = [sourceEventRepresentationProvider eventRepresentationDictionaryForResourceChangeNotification:calendarNotification message:v13 date:startDate endDate:endDate timeZone:timeZone];

  if (v28)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v28 onNotificationContent:v6];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:calendarNotification onNotificationContent:v6];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:calendarNotification onNotificationContent:v6];
  if ([infoCopy changeType] != 3)
  {
    [CALNResourceChangedLaunchUtils setResourceChangedEventURLForCalendarNotification:calendarNotification onNotificationContent:v6];
  }

  v29 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    sourceClientIdentifier = [infoCopy sourceClientIdentifier];
    *buf = 138543618;
    v40 = sourceClientIdentifier;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Fetched calendar resource changed notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v31 = [v6 copy];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)didReceiveResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = sourceClientIdentifier;
    v13 = 2114;
    v14 = actionIdentifier;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for calendar resource changed %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNCalendarResourceChangedNotificationSource *)self dataSource];
    [dataSource clearCalendarResourceChangedNotificationWithSourceClientIdentifier:sourceClientIdentifier];
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