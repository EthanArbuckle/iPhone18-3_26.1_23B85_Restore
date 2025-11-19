@interface CALNSharedCalendarInvitationNotificationSource
- (CALNNotificationManager)notificationManager;
- (CALNSharedCalendarInvitationNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6;
- (NSArray)categories;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNSharedCalendarInvitationNotificationSource

- (CALNSharedCalendarInvitationNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNSharedCalendarInvitationNotificationSource;
  v15 = [(CALNSharedCalendarInvitationNotificationSource *)&v18 init];
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
  if (categories_onceToken_1 != -1)
  {
    [CALNSharedCalendarInvitationNotificationSource categories];
  }

  v3 = categories_categories_1;

  return v3;
}

void __60__CALNSharedCalendarInvitationNotificationSource_categories__block_invoke()
{
  v17[2] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.calendar.invitation" value:@"Invitation" table:0];
  v14 = [v0 localizedStringForKey:@"SharedCalendarInvitationJoinButton" value:@"Join" table:0];
  v13 = [v0 localizedStringForKey:@"SharedCalendarInvitationDeclineButton" value:@"Decline" table:0];
  v12 = [v0 localizedStringForKey:@"SharedCalendarInvitationReportJunkButton" value:@"Report Junk" table:0];
  v2 = [CALNNotificationAction actionWithIdentifier:@"CALNSharedCalendarInvitationJoinActionIdentifier" title:v14 systemImageName:@"checkmark.circle"];
  v3 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeclineAction" title:v13 systemImageName:@"xmark.circle"];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationReportJunkCalendarAction" title:v12 systemImageName:@"bin.xmark"];
  v17[0] = v2;
  v17[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v6 = [CALNNotificationCategory categoryWithIdentifier:@"CALNSharedCalendarInvitationDefaultCategory" actions:v5 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v8 = [CALNNotificationCategory categoryWithIdentifier:@"CALNSharedCalendarInvitationCouldBeJunkCategory" actions:v7 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v15[0] = v8;
  v15[1] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = categories_categories_1;
  categories_categories_1 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchSharedCalendarInvitationNotificationSourceClientIdentifiers:v4];

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
        v13 = [(CALNSharedCalendarInvitationNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          v15 = [(CALNSharedCalendarInvitationNotificationSource *)self sourceIdentifier];
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
      v20 = "Refreshed shared calendar invitation notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed shared calendar invitation notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  v21 = [(CALNSharedCalendarInvitationNotificationSource *)self notificationManager];
  v22 = [(CALNSharedCalendarInvitationNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
  v6 = [v5 fetchSharedCalendarInvitationNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNSharedCalendarInvitationNotificationSource *)self contentForNotificationWithInfo:v6];
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
  v43[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CALNBundle bundle];
  v5 = [v3 calendarNotification];
  v38 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v6 = [v5 couldBeJunk];
  v7 = @"CALNSharedCalendarInvitationDefaultCategory";
  if (v6)
  {
    v7 = @"CALNSharedCalendarInvitationCouldBeJunkCategory";
  }

  v8 = v7;
  v9 = objc_opt_new();
  v10 = [v5 title];
  if (!v10)
  {
    v10 = [v4 localizedStringForKey:@"Shared Calendar Invitation" value:&stru_28551FB98 table:0];
  }

  v11 = [v4 localizedStringForKey:@"Invitation to share a calendar with %@." value:&stru_28551FB98 table:0];
  v35 = v11;
  v36 = v4;
  if ([v5 couldBeJunk])
  {
    v12 = [v4 localizedStringForKey:@"Unknown Sender" value:&stru_28551FB98 table:0];
    v13 = [CALNNotificationSourceUtils displayNameForJunkIdentity:v5];
    v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, v13];
    v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@\n%@", v12, v14];

    v16 = 0;
  }

  else
  {
    v17 = CUIKDisplayStringForNotificationIdentity();
    v16 = 0;
    v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, v17];
  }

  [v9 setTitle:v10];
  [v9 setBody:v15];
  [v9 setCategoryIdentifier:v8];

  [v9 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v18 = CUIKLaunchURLForInbox();
  [v9 setDefaultActionURL:v18];

  [v9 setSound:v38];
  v19 = [(CALNSharedCalendarInvitationNotificationSource *)self iconIdentifierProvider];
  v20 = [MEMORY[0x277CBEAA8] date];
  v21 = [MEMORY[0x277CBEA80] currentCalendar];
  v22 = [v19 identifierForIconWithDate:v20 inCalendar:v21];
  [v9 setIconIdentifier:v22];

  [v9 setInterruptionLevel:1];
  v23 = [v5 calendar];
  v24 = [v23 calendarIdentifier];
  [v9 setFilterCriteria:v24];

  if ([v3 isDelegate])
  {
    v25 = [v3 sourceTitle];
    v26 = [v3 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v9 forDelegateSourceWithTitle:v25 identifier:v26];
  }

  if (v16)
  {
    v43[0] = v16;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
    [v9 setPeopleIdentifiers:v27];
  }

  v28 = [(CALNSharedCalendarInvitationNotificationSource *)self sourceEventRepresentationProvider];
  v29 = [v28 eventRepresentationDictionaryForSharedCalendarInvitationNotificationWithTitle:v10 message:v15];

  if (v29)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v29 onNotificationContent:v9];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v5 onNotificationContent:v9];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v5 onNotificationContent:v9];
  v30 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v3 sourceClientIdentifier];
    *buf = 138543618;
    v40 = v31;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_242909000, v30, OS_LOG_TYPE_DEFAULT, "Fetched shared calendar invitation notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v32 = [v9 copy];
  v33 = *MEMORY[0x277D85DE8];

  return v32;
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for shared calendar invitation %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
    [v9 clearSharedCalendarInvitationWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNSharedCalendarInvitationJoinActionIdentifier"])
  {
    v9 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
    [v9 joinSharedCalendarWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNNotificationDeclineAction"])
  {
    v9 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
    [v9 declineSharedCalendarWithSourceClientIdentifier:v7];
  }

  else
  {
    if (![v5 isEqualToString:@"CALNNotificationReportJunkCalendarAction"])
    {
      goto LABEL_7;
    }

    v9 = [(CALNSharedCalendarInvitationNotificationSource *)self dataSource];
    [v9 reportSharedCalendarAsJunkWithSourceClientIdentifier:v7];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

@end