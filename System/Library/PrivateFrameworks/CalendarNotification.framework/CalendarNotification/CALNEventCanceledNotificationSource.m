@interface CALNEventCanceledNotificationSource
- (CALNEventCanceledNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNEventCanceledNotificationSource

- (CALNEventCanceledNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNEventCanceledNotificationSource;
  v15 = [(CALNEventCanceledNotificationSource *)&v18 init];
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

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventCanceledNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchEventCanceledNotificationSourceClientIdentifiers:v4];

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
          v15 = [(CALNEventCanceledNotificationSource *)self sourceIdentifier];
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

  v21 = [(CALNEventCanceledNotificationSource *)self notificationManager];
  v22 = [(CALNEventCanceledNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNEventCanceledNotificationSource *)self dataSource];
  v6 = [v5 fetchEventCanceledNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNEventCanceledNotificationSource *)self contentForNotificationWithInfo:v6];
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
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNBundle bundle];
  v6 = [v4 eventInvitationNotification];
  v7 = [v6 title];
  if (!v7)
  {
    v7 = [v5 localizedStringForKey:@"EventInvitationNotificationDefaultTitle" value:@"Invitation" table:0];
  }

  v33 = v5;
  v34 = v7;
  v35 = 0;
  v8 = [(CALNEventCanceledNotificationSource *)self _notificationBodyForNotificationInfo:v4 contactIdentifier:&v35];
  v32 = v35;
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v10 = [(CALNEventCanceledNotificationSource *)self iconIdentifierProvider];
  v11 = [v6 startDate];
  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v10 identifierForIconWithDate:v11 inCalendar:v12];

  v14 = v34;
  v15 = objc_opt_new();
  [v15 setTitle:v34];
  [v15 setBody:v8];
  v16 = [(CALNEventCanceledNotificationSource *)self _categoryIdentifier];
  [v15 setCategoryIdentifier:v16];

  [v15 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v17 = [v6 startDate];
  [v15 setDate:v17];

  v18 = [v4 expirationDate];
  [v15 setExpirationDate:v18];

  v19 = [v4 launchURL];
  [v15 setDefaultActionURL:v19];

  [v15 setIconIdentifier:v13];
  [v15 setShouldHideTime:{objc_msgSend(v6, "isAllDay")}];
  [v15 setSound:v9];
  if ([v6 cuik_isTimeSensitive])
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v15 setInterruptionLevel:v20];
  v21 = [v6 calendar];
  v22 = [v21 calendarIdentifier];
  [v15 setFilterCriteria:v22];

  if ([v4 isDelegate])
  {
    v23 = [v4 sourceTitle];
    v24 = [v4 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v15 forDelegateSourceWithTitle:v23 identifier:v24];

    v14 = v34;
  }

  if (v32)
  {
    v40[0] = v32;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [v15 setPeopleIdentifiers:v25];
  }

  v26 = [v4 eventRepresentationDictionary];
  if (v26)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v26 onNotificationContent:v15];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v6 onNotificationContent:v15];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v6 onNotificationContent:v15];
  v27 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v37 = v28;
    v38 = 2112;
    v39 = v15;
    _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Fetched event canceled notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v29 = [v15 copy];
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event canceled %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNEventCanceledNotificationSource *)self dataSource];
    [v9 clearCanceledEventNotificationWithSourceClientIdentifier:v7];
  }

  else
  {
    if (![v5 isEqualToString:@"CALNNotificationDeleteActionIdentifier"])
    {
      goto LABEL_7;
    }

    v9 = [(CALNEventCanceledNotificationSource *)self dataSource];
    [v9 deleteCanceledEventWithSourceClientIdentifier:v7];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4
{
  *a4 = 0;
  v5 = [a3 eventInvitationNotification];
  v6 = [v5 startDate];
  v7 = [v5 isAllDay];
  v8 = [(CALNEventCanceledNotificationSource *)self dateProvider];
  v9 = [CALNDateStringUtils dateTimeStringForEventDate:v6 alwaysIncludeDate:1 allDayEvent:v7 dateProvider:v8];

  v10 = +[CALNBundle bundle];
  v11 = [v10 localizedStringForKey:@"Canceled by %@" value:&stru_28551FB98 table:0];
  if ([v5 couldBeJunk])
  {
    v12 = [v5 owner];
    v13 = [CALNNotificationSourceUtils displayNameForJunkIdentity:v12];
  }

  else
  {
    v13 = CUIKDisplayStringForNotificationIdentity();
  }

  v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, v13];
  v15 = [MEMORY[0x277CBEB18] array];
  [v15 addObject:v14];
  [v15 addObject:v9];
  if (v14 && [v5 couldBeJunk])
  {
    v16 = [v10 localizedStringForKey:@"Unknown Sender" value:&stru_28551FB98 table:0];

    [v15 insertObject:v16 atIndex:0];
    v13 = v16;
  }

  v17 = [v15 componentsJoinedByString:@"\n"];
  v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v19 = [v17 stringByTrimmingCharactersInSet:v18];

  return v19;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

@end