@interface CALNEventCanceledNotificationSource
- (CALNEventCanceledNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier;
- (id)contentForNotificationWithInfo:(id)info;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNEventCanceledNotificationSource

- (CALNEventCanceledNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  v18.receiver = self;
  v18.super_class = CALNEventCanceledNotificationSource;
  v15 = [(CALNEventCanceledNotificationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeWeak(&v16->_notificationManager, managerCopy);
    objc_storeStrong(&v16->_iconIdentifierProvider, provider);
    objc_storeStrong(&v16->_dateProvider, dateProvider);
  }

  return v16;
}

- (NSArray)categories
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CALNEventCanceledNotificationSource_categories__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  if (categories_onceToken_2 != -1)
  {
    dispatch_once(&categories_onceToken_2, block);
  }

  return categories_categories_2;
}

void __49__CALNEventCanceledNotificationSource_categories__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = +[CALNBundle bundle];
  v3 = [v2 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.event.invitation" value:@"Invitation" table:0];
  v4 = [v2 localizedStringForKey:@"EventCanceledDeleteButton" value:@"Delete" table:0];
  v5 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeleteActionIdentifier" title:v4 systemImageName:@"trash"];
  v6 = [*(a1 + 32) _categoryIdentifier];
  v13[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [CALNNotificationCategory categoryWithIdentifier:v6 actions:v7 hiddenPreviewsBodyPlaceholder:v3 options:0];

  v12 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v10 = categories_categories_2;
  categories_categories_2 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)refreshNotifications:(id)notifications
{
  v34 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNEventCanceledNotificationSource *)self dataSource];
  v24 = notificationsCopy;
  v6 = [dataSource fetchEventCanceledNotificationSourceClientIdentifiers:notificationsCopy];

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
        v13 = [(CALNEventCanceledNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          sourceIdentifier = [(CALNEventCanceledNotificationSource *)self sourceIdentifier];
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
      v20 = "Refreshed event canceled notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed event canceled notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  notificationManager = [(CALNEventCanceledNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNEventCanceledNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v26 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CALNEventCanceledNotificationSource *)self dataSource];
  v6 = [dataSource fetchEventCanceledNotificationWithSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [(CALNEventCanceledNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationSource *)identifierCopy contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)info
{
  v40[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[CALNBundle bundle];
  eventInvitationNotification = [infoCopy eventInvitationNotification];
  title = [eventInvitationNotification title];
  if (!title)
  {
    title = [v5 localizedStringForKey:@"EventInvitationNotificationDefaultTitle" value:@"Invitation" table:0];
  }

  v33 = v5;
  v34 = title;
  v35 = 0;
  v8 = [(CALNEventCanceledNotificationSource *)self _notificationBodyForNotificationInfo:infoCopy contactIdentifier:&v35];
  v32 = v35;
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  iconIdentifierProvider = [(CALNEventCanceledNotificationSource *)self iconIdentifierProvider];
  startDate = [eventInvitationNotification startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [iconIdentifierProvider identifierForIconWithDate:startDate inCalendar:currentCalendar];

  v14 = v34;
  v15 = objc_opt_new();
  [v15 setTitle:v34];
  [v15 setBody:v8];
  _categoryIdentifier = [(CALNEventCanceledNotificationSource *)self _categoryIdentifier];
  [v15 setCategoryIdentifier:_categoryIdentifier];

  [v15 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  startDate2 = [eventInvitationNotification startDate];
  [v15 setDate:startDate2];

  expirationDate = [infoCopy expirationDate];
  [v15 setExpirationDate:expirationDate];

  launchURL = [infoCopy launchURL];
  [v15 setDefaultActionURL:launchURL];

  [v15 setIconIdentifier:v13];
  [v15 setShouldHideTime:{objc_msgSend(eventInvitationNotification, "isAllDay")}];
  [v15 setSound:v9];
  if ([eventInvitationNotification cuik_isTimeSensitive])
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v15 setInterruptionLevel:v20];
  calendar = [eventInvitationNotification calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v15 setFilterCriteria:calendarIdentifier];

  if ([infoCopy isDelegate])
  {
    sourceTitle = [infoCopy sourceTitle];
    sourceIdentifier = [infoCopy sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v15 forDelegateSourceWithTitle:sourceTitle identifier:sourceIdentifier];

    v14 = v34;
  }

  if (v32)
  {
    v40[0] = v32;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [v15 setPeopleIdentifiers:v25];
  }

  eventRepresentationDictionary = [infoCopy eventRepresentationDictionary];
  if (eventRepresentationDictionary)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:eventRepresentationDictionary onNotificationContent:v15];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:eventInvitationNotification onNotificationContent:v15];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:eventInvitationNotification onNotificationContent:v15];
  v27 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    sourceClientIdentifier = [infoCopy sourceClientIdentifier];
    *buf = 138543618;
    v37 = sourceClientIdentifier;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Fetched event canceled notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v29 = [v15 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event canceled %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNEventCanceledNotificationSource *)self dataSource];
    [dataSource clearCanceledEventNotificationWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else
  {
    if (![actionIdentifier isEqualToString:@"CALNNotificationDeleteActionIdentifier"])
    {
      goto LABEL_7;
    }

    dataSource = [(CALNEventCanceledNotificationSource *)self dataSource];
    [dataSource deleteCanceledEventWithSourceClientIdentifier:sourceClientIdentifier];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier
{
  *identifier = 0;
  eventInvitationNotification = [info eventInvitationNotification];
  startDate = [eventInvitationNotification startDate];
  isAllDay = [eventInvitationNotification isAllDay];
  dateProvider = [(CALNEventCanceledNotificationSource *)self dateProvider];
  v9 = [CALNDateStringUtils dateTimeStringForEventDate:startDate alwaysIncludeDate:1 allDayEvent:isAllDay dateProvider:dateProvider];

  v10 = +[CALNBundle bundle];
  v11 = [v10 localizedStringForKey:@"Canceled by %@" value:&stru_28551FB98 table:0];
  if ([eventInvitationNotification couldBeJunk])
  {
    owner = [eventInvitationNotification owner];
    v13 = [CALNNotificationSourceUtils displayNameForJunkIdentity:owner];
  }

  else
  {
    v13 = CUIKDisplayStringForNotificationIdentity();
  }

  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, v13];
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:v14];
  [array addObject:v9];
  if (v14 && [eventInvitationNotification couldBeJunk])
  {
    v16 = [v10 localizedStringForKey:@"Unknown Sender" value:&stru_28551FB98 table:0];

    [array insertObject:v16 atIndex:0];
    v13 = v16;
  }

  v17 = [array componentsJoinedByString:@"\n"];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v19;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

@end