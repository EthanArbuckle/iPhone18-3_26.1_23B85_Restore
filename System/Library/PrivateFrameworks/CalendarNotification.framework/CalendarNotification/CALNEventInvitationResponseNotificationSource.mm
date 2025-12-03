@interface CALNEventInvitationResponseNotificationSource
- (CALNEventInvitationResponseNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier;
- (id)contentForNotificationWithInfo:(id)info;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNEventInvitationResponseNotificationSource

- (CALNEventInvitationResponseNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  v18.receiver = self;
  v18.super_class = CALNEventInvitationResponseNotificationSource;
  v15 = [(CALNEventInvitationResponseNotificationSource *)&v18 init];
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
  if (categories_onceToken_7 != -1)
  {
    [CALNEventInvitationResponseNotificationSource categories];
  }

  v3 = categories_categories_7;

  return v3;
}

void __59__CALNEventInvitationResponseNotificationSource_categories__block_invoke()
{
  v13[2] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.event.invitationResponse" value:@"Invitation Response" table:0];
  v2 = [v0 localizedStringForKey:@"EventInvitationResponseNotificationAcceptButton" value:@"Accept" table:0];
  v3 = [v0 localizedStringForKey:@"EventInvitationResponseNotificationDeclineButton" value:@"Decline" table:0];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationAcceptAction" title:v2 systemImageName:@"checkmark.circle"];
  v5 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeclineAction" title:v3 systemImageName:@"xmark.circle"];
  v13[0] = v4;
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [CALNNotificationCategory categoryWithIdentifier:@"com.apple.calendar.notifications.EventInvitationResponse" actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v1 options:0];
  v8 = [CALNNotificationCategory categoryWithIdentifier:@"EventInvitationResponse.ProposedTime" actions:v6 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = categories_categories_7;
  categories_categories_7 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)refreshNotifications:(id)notifications
{
  v34 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
  v24 = notificationsCopy;
  v6 = [dataSource fetchEventInvitationResponseNotificationSourceClientIdentifiers:notificationsCopy];

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
        v13 = [(CALNEventInvitationResponseNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          sourceIdentifier = [(CALNEventInvitationResponseNotificationSource *)self sourceIdentifier];
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
      v20 = "Refreshed event invitation response notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed event invitation response notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  notificationManager = [(CALNEventInvitationResponseNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNEventInvitationResponseNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v26 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
  v6 = [dataSource fetchEventInvitationResponseNotificationWithSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [(CALNEventInvitationResponseNotificationSource *)self contentForNotificationWithInfo:v6];
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
  v39[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[CALNBundle bundle];
  eventInvitationNotification = [infoCopy eventInvitationNotification];
  title = [eventInvitationNotification title];
  if (!title)
  {
    title = [v5 localizedStringForKey:@"EventNotificationDefaultTitleAttendeeReply" value:@"Attendee Response" table:0];
  }

  v33 = v5;
  v34 = 0;
  v8 = [(CALNEventInvitationResponseNotificationSource *)self _notificationBodyForNotificationInfo:infoCopy contactIdentifier:&v34];
  v32 = v34;
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  iconIdentifierProvider = [(CALNEventInvitationResponseNotificationSource *)self iconIdentifierProvider];
  startDate = [eventInvitationNotification startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [iconIdentifierProvider identifierForIconWithDate:startDate inCalendar:currentCalendar];

  v14 = objc_opt_new();
  [v14 setTitle:title];
  [v14 setBody:v8];
  v15 = CUIKNewTimeProposerForNotification();

  if (v15)
  {
    v16 = @"EventInvitationResponse.ProposedTime";
  }

  else
  {
    v16 = @"com.apple.calendar.notifications.EventInvitationResponse";
  }

  [v14 setCategoryIdentifier:v16];
  [v14 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  startDate2 = [eventInvitationNotification startDate];
  [v14 setDate:startDate2];

  expirationDate = [infoCopy expirationDate];
  [v14 setExpirationDate:expirationDate];

  launchURL = [infoCopy launchURL];
  [v14 setDefaultActionURL:launchURL];

  [v14 setIconIdentifier:v13];
  [v14 setShouldHideTime:{objc_msgSend(eventInvitationNotification, "isAllDay")}];
  [v14 setSound:v9];
  if ([eventInvitationNotification cuik_isTimeSensitive])
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v14 setInterruptionLevel:v20];
  calendar = [eventInvitationNotification calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v14 setFilterCriteria:calendarIdentifier];

  if ([infoCopy isDelegate])
  {
    sourceTitle = [infoCopy sourceTitle];
    sourceIdentifier = [infoCopy sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v14 forDelegateSourceWithTitle:sourceTitle identifier:sourceIdentifier];
  }

  if (v32)
  {
    v39[0] = v32;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v14 setPeopleIdentifiers:v25];
  }

  eventRepresentationDictionary = [infoCopy eventRepresentationDictionary];
  if (eventRepresentationDictionary)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:eventRepresentationDictionary onNotificationContent:v14];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:eventInvitationNotification onNotificationContent:v14];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:eventInvitationNotification onNotificationContent:v14];
  v27 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    sourceClientIdentifier = [infoCopy sourceClientIdentifier];
    *buf = 138543618;
    v36 = sourceClientIdentifier;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Fetched event invitation response notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v29 = [v14 copy];
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event invitation response %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [dataSource clearEventInvitationResponseWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationAcceptAction"])
  {
    dataSource = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [dataSource acceptEventInvitationResponseWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else
  {
    if (![actionIdentifier isEqualToString:@"CALNNotificationDeclineAction"])
    {
      goto LABEL_7;
    }

    dataSource = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [dataSource declineEventInvitationResponseWithSourceClientIdentifier:sourceClientIdentifier];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier
{
  eventInvitationNotification = [info eventInvitationNotification];
  array = [MEMORY[0x277CBEB18] array];
  startDate = [eventInvitationNotification startDate];
  isAllDay = [eventInvitationNotification isAllDay];
  dateProvider = [(CALNEventInvitationResponseNotificationSource *)self dateProvider];
  v10 = [CALNDateStringUtils dateTimeStringForEventDate:startDate alwaysIncludeDate:1 allDayEvent:isAllDay dateProvider:dateProvider];

  [array addObject:v10];
  v11 = CUIKMessageStringForEventInvitationNotification();
  if (v11)
  {
    [array addObject:v11];
  }

  v12 = [array componentsJoinedByString:@"\n"];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v14;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

@end