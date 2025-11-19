@interface CALNEventInvitationResponseNotificationSource
- (CALNEventInvitationResponseNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNEventInvitationResponseNotificationSource

- (CALNEventInvitationResponseNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNEventInvitationResponseNotificationSource;
  v15 = [(CALNEventInvitationResponseNotificationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, a3);
    objc_storeWeak(&v16->_notificationManager, v12);
    objc_storeStrong(&v16->_iconIdentifierProvider, a5);
    objc_storeStrong(&v16->_dateProvider, a6);
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

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchEventInvitationResponseNotificationSourceClientIdentifiers:v4];

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
          v15 = [(CALNEventInvitationResponseNotificationSource *)self sourceIdentifier];
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

  v21 = [(CALNEventInvitationResponseNotificationSource *)self notificationManager];
  v22 = [(CALNEventInvitationResponseNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
  v6 = [v5 fetchEventInvitationResponseNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNEventInvitationResponseNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationSource *)v4 contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNBundle bundle];
  v6 = [v4 eventInvitationNotification];
  v7 = [v6 title];
  if (!v7)
  {
    v7 = [v5 localizedStringForKey:@"EventNotificationDefaultTitleAttendeeReply" value:@"Attendee Response" table:0];
  }

  v33 = v5;
  v34 = 0;
  v8 = [(CALNEventInvitationResponseNotificationSource *)self _notificationBodyForNotificationInfo:v4 contactIdentifier:&v34];
  v32 = v34;
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  v10 = [(CALNEventInvitationResponseNotificationSource *)self iconIdentifierProvider];
  v11 = [v6 startDate];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v10 identifierForIconWithDate:v11 inCalendar:v12];

  v14 = objc_opt_new();
  [v14 setTitle:v7];
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
  v17 = [v6 startDate];
  [v14 setDate:v17];

  v18 = [v4 expirationDate];
  [v14 setExpirationDate:v18];

  v19 = [v4 launchURL];
  [v14 setDefaultActionURL:v19];

  [v14 setIconIdentifier:v13];
  [v14 setShouldHideTime:{objc_msgSend(v6, "isAllDay")}];
  [v14 setSound:v9];
  if ([v6 cuik_isTimeSensitive])
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v14 setInterruptionLevel:v20];
  v21 = [v6 calendar];
  v22 = [v21 calendarIdentifier];
  [v14 setFilterCriteria:v22];

  if ([v4 isDelegate])
  {
    v23 = [v4 sourceTitle];
    v24 = [v4 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v14 forDelegateSourceWithTitle:v23 identifier:v24];
  }

  if (v32)
  {
    v39[0] = v32;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v14 setPeopleIdentifiers:v25];
  }

  v26 = [v4 eventRepresentationDictionary];
  if (v26)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v26 onNotificationContent:v14];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v6 onNotificationContent:v14];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v6 onNotificationContent:v14];
  v27 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v36 = v28;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Fetched event invitation response notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v29 = [v14 copy];
  v30 = *MEMORY[0x277D85DE8];

  return v29;
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event invitation response %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [v9 clearEventInvitationResponseWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNNotificationAcceptAction"])
  {
    v9 = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [v9 acceptEventInvitationResponseWithSourceClientIdentifier:v7];
  }

  else
  {
    if (![v5 isEqualToString:@"CALNNotificationDeclineAction"])
    {
      goto LABEL_7;
    }

    v9 = [(CALNEventInvitationResponseNotificationSource *)self dataSource];
    [v9 declineEventInvitationResponseWithSourceClientIdentifier:v7];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4
{
  v5 = [a3 eventInvitationNotification];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 startDate];
  v8 = [v5 isAllDay];
  v9 = [(CALNEventInvitationResponseNotificationSource *)self dateProvider];
  v10 = [CALNDateStringUtils dateTimeStringForEventDate:v7 alwaysIncludeDate:1 allDayEvent:v8 dateProvider:v9];

  [v6 addObject:v10];
  v11 = CUIKMessageStringForEventInvitationNotification();
  if (v11)
  {
    [v6 addObject:v11];
  }

  v12 = [v6 componentsJoinedByString:@"\n"];
  v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  return v14;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

@end