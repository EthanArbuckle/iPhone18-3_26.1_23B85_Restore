@interface CALNEventInvitationNotificationSource
- (CALNEventInvitationNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4;
- (id)contentForNotificationWithInfo:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotifications:(id)a3;
@end

@implementation CALNEventInvitationNotificationSource

- (CALNEventInvitationNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 dateProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CALNEventInvitationNotificationSource;
  v15 = [(CALNEventInvitationNotificationSource *)&v18 init];
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
  if (categories_onceToken_0 != -1)
  {
    [CALNEventInvitationNotificationSource categories];
  }

  v3 = categories_categories_0;

  return v3;
}

void __51__CALNEventInvitationNotificationSource_categories__block_invoke()
{
  v19[3] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.event.invitation" value:@"Invitation" table:0];
  v16 = [v0 localizedStringForKey:@"EventInvitationNotificationAcceptButton" value:@"Accept" table:0];
  v15 = [v0 localizedStringForKey:@"EventInvitationNotificationDeclineButton" value:@"Decline" table:0];
  v14 = [v0 localizedStringForKey:@"EventInvitationNotificationMaybeButton" value:@"Maybe" table:0];
  v13 = [v0 localizedStringForKey:@"EventInvitationNotificationReportJunkButton" value:@"Report Junk" table:0];
  v2 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationAcceptAction" title:v16 systemImageName:@"checkmark.circle"];
  v3 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeclineAction" title:v15 systemImageName:@"xmark.circle"];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationMaybeAction" title:v14 systemImageName:@"questionmark.circle"];
  v5 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationReportJunkEventAction" title:v13 systemImageName:@"bin.xmark"];
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v18[0] = v5;
  v18[1] = v2;
  v18[2] = v3;
  v18[3] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v8 = [CALNNotificationCategory categoryWithIdentifier:@"EventInvitation.CanRespond" actions:v6 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v9 = [CALNNotificationCategory categoryWithIdentifier:@"EventInvitation.CouldBeJunk" actions:v7 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v17[0] = v8;
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v11 = categories_categories_0;
  categories_categories_0 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNEventInvitationNotificationSource *)self dataSource];
  v6 = [v5 fetchEventInvitationNotificationWithSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNEventInvitationNotificationSource *)self contentForNotificationWithInfo:v6];
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
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventInvitationNotification];
  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 sourceClientIdentifier];
    v8 = [v5 invitedBy];
    v9 = [v5 startDate];
    v10 = [v5 location];
    *buf = 138544642;
    v48 = v7;
    v49 = 2112;
    v50 = v8;
    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v10;
    v55 = 1024;
    v56 = [v5 type];
    v57 = 2112;
    v58 = v5;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_INFO, "Fetching event invitation notification content with sourceClientIdentifier %{public}@. InvitedBy: %@. StartDate: %@. Location: %@. EKCalendarNotificationType: %d. EventInvitationNotification: %@", buf, 0x3Au);
  }

  v11 = +[CALNBundle bundle];
  v12 = [v5 title];
  if (!v12)
  {
    v12 = [v11 localizedStringForKey:@"EventInvitationNotificationDefaultTitle" value:@"Invitation" table:0];
  }

  v41 = v11;
  v42 = v12;
  v43 = 0;
  v13 = [(CALNEventInvitationNotificationSource *)self _notificationBodyForNotificationInfo:v4 contactIdentifier:&v43];
  v40 = v43;
  if ([v5 couldBeJunk])
  {
    v14 = @"EventInvitation.CouldBeJunk";
  }

  else
  {
    v14 = @"EventInvitation.CanRespond";
  }

  v15 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v16 = [(CALNEventInvitationNotificationSource *)self iconIdentifierProvider];
  v17 = [v5 startDate];
  v18 = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = [v16 identifierForIconWithDate:v17 inCalendar:v18];

  v20 = v42;
  v21 = objc_opt_new();
  [v21 setTitle:v42];
  [v21 setBody:v13];
  [v21 setCategoryIdentifier:v14];
  [v21 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  v22 = [v5 startDate];
  [v21 setDate:v22];

  v23 = [v4 expirationDate];
  [v21 setExpirationDate:v23];

  v24 = [v4 launchURL];
  [v21 setDefaultActionURL:v24];

  [v21 setIconIdentifier:v19];
  [v21 setShouldHideTime:{objc_msgSend(v5, "isAllDay")}];
  [v21 setSound:v15];
  if ([v5 cuik_isTimeSensitive])
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [v21 setInterruptionLevel:v25];
  v26 = [v5 calendar];
  v27 = [v26 calendarIdentifier];
  [v21 setFilterCriteria:v27];

  if ([v4 isDelegate])
  {
    v28 = [v4 sourceTitle];
    v29 = [v4 sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v21 forDelegateSourceWithTitle:v28 identifier:v29];

    v20 = v42;
  }

  if (v40)
  {
    v46 = v40;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    [v21 setPeopleIdentifiers:v30];
  }

  v31 = [v4 eventURI];
  v44 = @"entityID";
  v45 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  [v21 setUserInfo:v32];

  v33 = [v4 eventRepresentationDictionary];

  if (v33)
  {
    v34 = [v4 eventRepresentationDictionary];
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v34 onNotificationContent:v21];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:v5 onNotificationContent:v21];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:v5 onNotificationContent:v21];
  v35 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v4 sourceClientIdentifier];
    *buf = 138543618;
    v48 = v36;
    v49 = 2112;
    v50 = v21;
    _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Fetched event invitation notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v37 = [v21 copy];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)refreshNotifications:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNEventInvitationNotificationSource *)self dataSource];
  v24 = v4;
  v6 = [v5 fetchEventInvitationNotificationSourceClientIdentifiers:v4];

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
        v13 = [(CALNEventInvitationNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          v15 = [(CALNEventInvitationNotificationSource *)self sourceIdentifier];
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
      v20 = "Refreshed event invitation notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    *buf = 138543362;
    v32 = v19;
    v20 = "Refreshed event invitation notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  v21 = [(CALNEventInvitationNotificationSource *)self notificationManager];
  v22 = [(CALNEventInvitationNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:v21 withNotificationRecords:v26 forSourceWithIdentifier:v22 filteredBySourceClientIDs:v24];

  v23 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event invitation %{public}@ with actionIdentifier = %{public}@", &v11, 0x16u);
  }

  if (([v5 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    v9 = [(CALNEventInvitationNotificationSource *)self dataSource];
    [v9 clearEventInvitationWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNNotificationAcceptAction"])
  {
    v9 = [(CALNEventInvitationNotificationSource *)self dataSource];
    [v9 acceptEventInvitationWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNNotificationDeclineAction"])
  {
    v9 = [(CALNEventInvitationNotificationSource *)self dataSource];
    [v9 declineEventInvitationWithSourceClientIdentifier:v7];
  }

  else if ([v5 isEqualToString:@"CALNNotificationMaybeAction"])
  {
    v9 = [(CALNEventInvitationNotificationSource *)self dataSource];
    [v9 tentativeAcceptEventInvitationWithSourceClientIdentifier:v7];
  }

  else
  {
    if (![v5 isEqualToString:@"CALNNotificationReportJunkEventAction"])
    {
      goto LABEL_7;
    }

    v9 = [(CALNEventInvitationNotificationSource *)self dataSource];
    [v9 reportEventInvitationAsJunkWithSourceClientIdentifier:v7];
  }

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_notificationBodyForNotificationInfo:(id)a3 contactIdentifier:(id *)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *a4 = 0;
  v40 = v6;
  v7 = [v6 eventInvitationNotification];
  v8 = [v7 type];
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v42 = v8 == 1;
    v43 = 1024;
    v44 = [v7 timeChanged];
    v45 = 1024;
    v46 = [v7 dateChanged];
    v47 = 1024;
    v48 = [v7 titleChanged];
    v49 = 1024;
    v50 = [v7 locationChanged];
    v51 = 1024;
    v52 = [v7 videoConferenceChanged];
    v53 = 1024;
    v54 = [v7 recurrenceChanged];
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Generating Notification Body For Notification Info. isModification: %d. timeChanged: %d, dateChanged: %d, titleChanged: %d, locationChanged: %d, videoConferenceChanged: %d, recurrenceChanged: %d", buf, 0x2Cu);
  }

  v10 = [v7 startDateForNextOccurrence];
  v11 = v10;
  if (!v10)
  {
    v11 = [v7 startDate];
  }

  v12 = [v7 isAllDay];
  v13 = [(CALNEventInvitationNotificationSource *)self dateProvider];
  v14 = [CALNDateStringUtils dateTimeStringForEventDate:v11 alwaysIncludeDate:1 allDayEvent:v12 dateProvider:v13];

  if (!v10)
  {
  }

  v15 = +[CALNBundle bundle];
  v16 = [MEMORY[0x277CBEB18] array];
  if (v8 == 1)
  {
    if ([v7 timeChanged])
    {
      v17 = @"Time changed to %@";
LABEL_14:
      v20 = [v15 localizedStringForKey:v17 value:&stru_28551FB98 table:0];
      v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v20, v14];
      [v16 addObject:v21];
LABEL_15:

LABEL_16:
      v18 = 0;
LABEL_17:
      v22 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ([v7 dateChanged])
    {
      v17 = @"Date changed to %@";
      goto LABEL_14;
    }

    if ([v7 titleChanged])
    {
      v20 = [v7 title];
      v21 = [v15 localizedStringForKey:@"Title changed to %@" value:&stru_28551FB98 table:0];
      v33 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, v20];
      [v16 addObject:v33];

      goto LABEL_15;
    }

    if (![v7 locationChanged])
    {
      if ([v7 videoConferenceChanged])
      {
        v37 = @"Video Call updated";
      }

      else if ([v7 recurrenceChanged])
      {
        v37 = @"Repeat frequency or end date changed";
      }

      else
      {
        v39 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationNotificationSource _notificationBodyForNotificationInfo:v39 contactIdentifier:?];
        }

        v37 = @"Invitation updated";
      }

      v20 = [v15 localizedStringForKey:v37 value:&stru_28551FB98 table:0];
      [v16 addObject:v20];
      goto LABEL_16;
    }

    v20 = [v7 location];
    v34 = [v20 length];
    v35 = [v7 videoConferenceChanged];
    if (v34)
    {
      if (!v35)
      {
        v38 = [v15 localizedStringForKey:@"Location changed to %@" value:&stru_28551FB98 table:0];
        v18 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v38, v20];

LABEL_53:
        [v16 addObject:v18];
        goto LABEL_17;
      }

      v36 = @"Location changed and Video Call updated";
    }

    else if (v35)
    {
      v36 = @"Location removed and Video Call updated";
    }

    else
    {
      v36 = @"Location removed";
    }

    v18 = [v15 localizedStringForKey:v36 value:&stru_28551FB98 table:0];
    goto LABEL_53;
  }

  v18 = [v7 location];
  v19 = [v15 localizedStringForKey:@"Invitation From %@" value:&stru_28551FB98 table:0];
  if ([v7 couldBeJunk])
  {
    [CALNNotificationSourceUtils displayNameForJunkIdentity:v7];
  }

  else
  {
    CUIKDisplayStringForNotificationIdentity();
  }
  v23 = ;
  v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v19, v23];
  [v16 addObject:v22];
  [v16 addObject:v14];
  if ([v18 length])
  {
    [v16 addObject:v18];
  }

  if (v22 && [v7 couldBeJunk])
  {
    v20 = [v15 localizedStringForKey:@"Unknown Sender" value:&stru_28551FB98 table:0];
    [v16 insertObject:v20 atIndex:0];
    goto LABEL_24;
  }

LABEL_25:
  v24 = [v40 conflictDetails];
  if (v24)
  {
    v25 = [MEMORY[0x277CF7CA8] sharedGenerator];
    v26 = [v25 conflictStringForConflictDetails:v24 maxTitleLength:20];

    if ([v26 length])
    {
      [v16 addObject:v26];
    }
  }

  if ([v7 containsBlockedAttendee])
  {
    v27 = [MEMORY[0x277CF7CA8] blockedAttendeeString];
    [v16 addObject:v27];
  }

  v28 = [v16 componentsJoinedByString:@"\n"];
  v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v30 = [v28 stringByTrimmingCharactersInSet:v29];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
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
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get notification info for sourceClientIdentifier (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end