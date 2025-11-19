@interface CALNSharedCalendarInvitationResponseNotificationSource
- (CALNNotificationManager)notificationManager;
- (CALNSharedCalendarInvitationResponseNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6;
- (NSArray)categories;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNSharedCalendarInvitationResponseNotificationSource

- (CALNSharedCalendarInvitationResponseNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNSharedCalendarInvitationResponseNotificationSource;
  v15 = [(CALNSharedCalendarInvitationResponseNotificationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, a3);
    objc_storeWeak(&v16->_notificationManager, v12);
    objc_storeStrong(&v16->_iconIdentifierProvider, a5);
    objc_storeStrong(&v16->_sourceEventRepresentationProvider, a6);
  }

  return v16;
}

- (NSArray)categories
{
  if (categories_onceToken != -1)
  {
    [CALNSharedCalendarInvitationResponseNotificationSource categories];
  }

  v3 = categories_categories;

  return v3;
}

void __68__CALNSharedCalendarInvitationResponseNotificationSource_categories__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.calendar.invitationResponse" value:@"Invitation Response" table:0];
  v2 = [CALNNotificationCategory categoryWithIdentifier:@"CALNSharedInvitationResponseCategoryIdentifier" actions:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v1 options:0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = categories_categories;
  categories_categories = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchSharedCalendarInvitationResponseNotificationSourceClientIdentifiers:v4];

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
        v13 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          v15 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceIdentifier];
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
      v20 = "Refreshed shared calendar invitation response notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed shared calendar invitation response notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  v21 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self notificationManager];
  v22 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
  v6 = [v5 fetchSharedCalendarInvitationResponseNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNSharedCalendarInvitationResponseNotificationSource *)v4 contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNBundle bundle];
  v6 = [v4 calendarNotification];
  v7 = [v6 title];
  if (!v7)
  {
    v7 = [v5 localizedStringForKey:@"Shared Calendar Invitation" value:&stru_28551FB98 table:0];
  }

  v27 = v5;
  v8 = CUIKMessageStringForNotification();
  v9 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  v10 = objc_opt_new();
  [v10 setTitle:v7];
  [v10 setBody:v8];
  [v10 setCategoryIdentifier:@"CALNSharedInvitationResponseCategoryIdentifier"];
  [v10 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.Responses"];
  v26 = v9;
  [v10 setSound:v9];
  v11 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self iconIdentifierProvider];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [v11 identifierForIconWithDate:v12 inCalendar:v13];
  [v10 setIconIdentifier:v14];

  [v10 setInterruptionLevel:1];
  v15 = [v6 calendar];
  v16 = [v15 calendarIdentifier];
  [v10 setFilterCriteria:v16];

  if ([v4 isDelegate])
  {
    v17 = [v4 sourceTitle];
    v18 = [v4 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v10 forDelegateSourceWithTitle:v17 identifier:v18];
  }

  v19 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self sourceEventRepresentationProvider];
  v20 = [v19 eventRepresentationDictionaryForResponseNotificationWithTitle:v7 message:v8];

  if (v20)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v20 onNotificationContent:v10];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v6 onNotificationContent:v10];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v6 onNotificationContent:v10];
  v21 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v29 = v22;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation response notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v23 = [v10 copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for shared calendar invitation response %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNSharedCalendarInvitationResponseNotificationSource *)self dataSource];
    [v9 clearSharedCalendarInvitationResponseWithSourceClientIdentifier:v7];
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
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get content for shared calendar invitation notification with sourceClientIdentifier = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end