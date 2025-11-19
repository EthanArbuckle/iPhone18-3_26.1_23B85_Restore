@interface CALNTriggeredEventNotificationSource
+ (id)_conferenceURLForNotification:(id)a3;
+ (id)_mailtoURLForNotification:(id)a3;
+ (id)_mapItemURLForNotification:(id)a3;
+ (id)_mergeDataFromUnprotectedStore:(id)a3 withDataInProtectedStore:(id)a4;
- (BOOL)_isNotificationMetaDataExpired:(id)a3 eventID:(id)a4;
- (BOOL)_itemWithEventID:(id)a3 affectedByChangesToObjects:(id)a4;
- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)a3;
- (BOOL)_notificationWithSourceClientIdentifier:(id)a3 affectedByChangesToObjects:(id)a4;
- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)a3;
- (BOOL)_shouldRemoveNotificationMetaData:(id)a3 eventID:(id)a4;
- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4;
- (BOOL)_sourceClientIdentifier:(id)a3 matchesEventForSourceClientIdentifier:(id)a4;
- (BOOL)migrateToStorage:(id)a3;
- (CALNNotificationManager)notificationManager;
- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6 triggerHelper:(id)a7 transitionProvider:(id)a8 bodyDescriptionProvider:(id)a9 travelAdvisoryTimelinessAuthority:(id)a10 dateProvider:(id)a11 notificationDataStorage:(id)a12 urlHandler:(id)a13 mapItemURLProvider:(id)a14 timeToLeaveRefreshStorage:(id)a15 snoozeUpdateTimer:(id)a16;
- (NSArray)categories;
- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)a3 hypothesisMessage:(id)a4;
- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)a3;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)a3;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)a3 existingRecords:(id)a4;
- (id)_launchURLForResponse:(id)a3;
- (id)_notificationDataForSourceNotificationInfo:(id)a3 existingNotificationData:(id)a4 transition:(unint64_t)a5 now:(id)a6;
- (id)_notificationResponseDataForRecord:(id)a3;
- (id)_notificationResponseDataForSourceNotificationInfo:(id)a3;
- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)a3 oldSourceClientIdentifier:(id)a4;
- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)a3;
- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)a3;
- (id)_updatedSourceNotificationInfoForContentCreation:(id)a3;
- (id)contentForNotificationWithSourceClientIdentifier:(id)a3;
- (id)contentForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 isProtectedDataAvailable:(BOOL)a5;
- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)a3;
- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)a3;
- (void)_addEventURL:(id)a3 mappingToEventObjectID:(id)a4;
- (void)_addNotificationData:(id)a3 forSourceClientIdentifier:(id)a4;
- (void)_addNotificationDataForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 transition:(unint64_t)a6 now:(id)a7;
- (void)_addRecord:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 trigger:(unint64_t)a6 transition:(unint64_t)a7 now:(id)a8;
- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)a3;
- (void)_clearTravelAdvisoryHypotheses;
- (void)_commonHandleResponse:(id)a3;
- (void)_didReceiveResponse:(id)a3;
- (void)_handleConferenceCallActionWithResponse:(id)a3;
- (void)_handleDirectionsActionWithResponse:(id)a3;
- (void)_handleMailOrganizerActionWithResponse:(id)a3;
- (void)_notificationAddedWithSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 trigger:(unint64_t)a5;
- (void)_refreshNotification:(id)a3;
- (void)_refreshNotificationMetaData:(id)a3 eventID:(id)a4;
- (void)_refreshNotificationMetaDataWithObjectIDs:(id)a3;
- (void)_refreshNotificationRecordsWithObjectIDs:(id)a3;
- (void)_refreshNotifications:(id)a3;
- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4;
- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)a3;
- (void)_removeStoredNotificationDataForEventWithEventID:(id)a3;
- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)a3;
- (void)_setNotificationResponseData:(id)a3 onNotificationContent:(id)a4;
- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)a3;
- (void)_triggeredWithSourceClientIdentifier:(id)a3 triggerData:(id)a4;
- (void)_updateSnoozeOptionsForEvents:(id)a3;
- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 transition:(unint64_t)a6 now:(id)a7;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3 hypothesis:(id)a4 allowsLocationAlerts:(BOOL)a5 travelAdvisoryDisabled:(BOOL)a6;
- (void)dataSource:(id)a3 travelAdvisoryAuthorizationChanged:(BOOL)a4;
- (void)dataSource:(id)a3 travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)a4;
- (void)dataSource:(id)a3 triggeredWithSourceClientIdentifier:(id)a4 triggerData:(id)a5;
- (void)didReceiveResponse:(id)a3;
- (void)refreshNotification:(id)a3;
- (void)refreshNotifications:(id)a3;
- (void)snoozeTimerFiredForEvents:(id)a3;
- (void)updateSnoozeOptionsForPostedNotifications;
- (void)willPostNotification:(id)a3;
@end

@implementation CALNTriggeredEventNotificationSource

- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)a3 notificationManager:(id)a4 iconIdentifierProvider:(id)a5 sourceEventRepresentationProvider:(id)a6 triggerHelper:(id)a7 transitionProvider:(id)a8 bodyDescriptionProvider:(id)a9 travelAdvisoryTimelinessAuthority:(id)a10 dateProvider:(id)a11 notificationDataStorage:(id)a12 urlHandler:(id)a13 mapItemURLProvider:(id)a14 timeToLeaveRefreshStorage:(id)a15 snoozeUpdateTimer:(id)a16
{
  v51 = a3;
  v21 = a4;
  v50 = a5;
  v49 = a6;
  v48 = a7;
  v47 = a8;
  v46 = a9;
  v45 = a10;
  v44 = a11;
  v43 = a12;
  v42 = a13;
  v41 = a14;
  v40 = a15;
  v22 = a16;
  v52.receiver = self;
  v52.super_class = CALNTriggeredEventNotificationSource;
  v23 = [(CALNTriggeredEventNotificationSource *)&v52 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_dataSource, a3);
    objc_storeWeak(&v24->_notificationManager, v21);
    objc_storeStrong(&v24->_iconIdentifierProvider, a5);
    objc_storeStrong(&v24->_sourceEventRepresentationProvider, a6);
    objc_storeStrong(&v24->_triggerHelper, a7);
    objc_storeStrong(&v24->_transitionProvider, a8);
    objc_storeStrong(&v24->_bodyDescriptionProvider, a9);
    objc_storeStrong(&v24->_travelAdvisoryTimelinessAuthority, a10);
    objc_storeStrong(&v24->_dateProvider, a11);
    objc_storeStrong(&v24->_notificationDataStorage, a12);
    objc_storeStrong(&v24->_urlHandler, a13);
    objc_storeStrong(&v24->_mapItemURLProvider, a14);
    objc_storeStrong(&v24->_timeToLeaveRefreshStorage, a15);
    objc_opt_class();
    v25 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v26 = v22;
    v27 = v21;
    v28 = [v25 UTF8String];

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = v28;
    v21 = v27;
    v22 = v26;
    v31 = dispatch_queue_create(v30, v29);
    workQueue = v24->_workQueue;
    v24->_workQueue = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventURLToObjectIDMap = v24->_eventURLToObjectIDMap;
    v24->_eventURLToObjectIDMap = v33;

    objc_storeStrong(&v24->_snoozeUpdateTimer, a16);
    v35 = [(CALNTriggeredEventNotificationSource *)v24 dataSource];
    [v35 setDelegate:v24];

    v36 = [(CALNTriggeredEventNotificationSource *)v24 snoozeUpdateTimer];
    [v36 setDelegate:v24];
  }

  return v24;
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CALNTriggeredEventNotificationSource_contentForNotificationWithSourceClientIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __89__CALNTriggeredEventNotificationSource_contentForNotificationWithSourceClientIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentForNotificationWithSourceClientIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)contentForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 isProtectedDataAvailable:(BOOL)a5
{
  v5 = a5;
  v100 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = v8;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Getting content for source client identifier = %{public}@", buf, 0xCu);
  }

  v11 = +[CALNBundle bundle];
  v12 = [v9 title];
  v75 = v11;
  if ([v12 length])
  {
    v82 = v12;
  }

  else
  {
    v82 = [v11 localizedStringForKey:@"Event" value:&stru_28551FB98 table:0];

    if (v5)
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:];
      }
    }
  }

  v14 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v15 = [v9 eventID];
  v16 = [v9 alarmID];
  v81 = [v14 notificationExpirationDateForEventID:v15 alarmID:v16];

  v80 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  v17 = [(CALNTriggeredEventNotificationSource *)self iconIdentifierProvider];
  v18 = [v9 startDate];
  v19 = [MEMORY[0x277CBEA80] currentCalendar];
  v79 = [v17 identifierForIconWithDate:v18 inCalendar:v19];

  v20 = @"com.apple.calendar.notifications.TriggeredEvent";
  v21 = [v9 alarmID];
  v22 = [v9 mapItemURL];
  v23 = [v9 conferenceURL];
  v24 = [v9 mapItemURL];

  v83 = [v9 mailtoURL];

  v77 = v22;
  v78 = v21;
  v76 = v23;
  v73 = v24;
  if (v21 && !v24 && !v23 && !v83)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Snooze;
LABEL_14:
    v72 = v8;
    v26 = *v25;

LABEL_15:
    v27 = [v9 startDate];
    v28 = [v9 endDate];
    v29 = [v9 isAllDay];
    v30 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v31 = [v30 now];
    v32 = [CALNSnoozeCategory snoozeCategoryForEventWithStartDate:v27 endDate:v28 now:v31 isAllDay:v29];

    v33 = [v32 suffix];
    v34 = [(__CFString *)v26 stringByAppendingString:v33];

    v85 = [v32 expirationDateForEventWithStartDate:v27 endDate:v28 isAllDay:v29];
    [v32 leeway];
    v36 = v35;

    v20 = v27;
    v8 = v72;
    v22 = v77;
    v21 = v78;
    v23 = v76;
LABEL_32:

    goto LABEL_33;
  }

  v37 = v24 == 0;
  if (v24 && !v21 && !v23 && !v83)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions;
LABEL_31:
    v34 = *v38;
    v85 = 0;
    v36 = 0.0;
    goto LABEL_32;
  }

  v39 = v23 == 0;
  if (v23 && !v21 && !v24 && !v83)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall;
    goto LABEL_31;
  }

  v40 = v83 == 0;
  if (v83 && !v21 && !v24 && !v23)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer;
    goto LABEL_31;
  }

  if (v21 != 0 && v24 != 0 && !v23 && !v83)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_Snooze;
    goto LABEL_14;
  }

  if (v21 != 0 && v23 != 0 && !v24 && !v83)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (v21 != 0 && v83 != 0 && !v24 && !v23)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v69 = v39 || v37;
  if (v23 != 0 && v24 != 0 && !v21 && !v83)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall;
    goto LABEL_31;
  }

  v70 = v37 || v40;
  if (!v70 && !v21 && !v23)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer;
    goto LABEL_31;
  }

  v71 = v39 || v40;
  if (!v71 && !v21 && !v24)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!(v69 & 1 | (v21 == 0)) && !v83)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (!(v69 & 1 | (v83 == 0)) && !v21)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!v70 && v21 != 0 && !v23)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (!v71 && v21 != 0 && !v24)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v72 = v8;
  if ((v69 | (v21 == 0) | v40) != 1)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (v21)
  {
    v26 = v20;
    goto LABEL_15;
  }

  v85 = 0;
  v36 = 0.0;
  v34 = v20;
LABEL_33:
  v41 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v87 = v34;
    v88 = 1024;
    v89 = v21 != 0;
    v90 = 1024;
    v91 = v73 != 0;
    v92 = 1024;
    v93 = v23 != 0;
    v94 = 1024;
    v95 = v83 != 0;
    v96 = 2112;
    v97 = v8;
    v98 = 2114;
    v99 = v85;
    _os_log_impl(&dword_242909000, v41, OS_LOG_TYPE_DEFAULT, "Category identifier for content = %{public}@, should include snooze action = (%{BOOL}d), should include directions action = (%{BOOL}d), should include conference call action = (%{BOOL}d), should include mail organizer action = (%{BOOL}d), source client identifier = %@, snoozeCategoryExpirationDate = %{public}@", buf, 0x38u);
  }

  v84 = v34;

  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = [v9 eventID];
  if (v43)
  {
    [v42 setObject:v43 forKeyedSubscript:@"entityID"];
  }

  v74 = v43;
  if (v21)
  {
    [v42 setObject:v21 forKeyedSubscript:@"AlarmID"];
  }

  if (v22)
  {
    v44 = [v22 absoluteString];
    [v42 setObject:v44 forKeyedSubscript:@"MapItemURL"];
  }

  if (v23)
  {
    v45 = [v23 absoluteString];
    [v42 setObject:v45 forKeyedSubscript:@"ConferenceURL"];
  }

  v46 = [v9 mailtoURL];

  if (v46)
  {
    v47 = [v9 mailtoURL];
    v48 = [v47 absoluteString];
    [v42 setObject:v48 forKeyedSubscript:@"mailto"];
  }

  if (v85)
  {
    [v42 setObject:v85 forKeyedSubscript:@"snoozeCategoryExpirationDate"];
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    [v42 setObject:v49 forKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  }

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isAllDay")}];
  [v42 setObject:v50 forKeyedSubscript:@"allDay"];

  v51 = [v9 endDate];
  [v42 setObject:v51 forKeyedSubscript:@"endDate"];

  buf[0] = 0;
  v52 = [(CALNTriggeredEventNotificationSource *)self bodyDescriptionProvider];
  v53 = [v52 bodyForSourceClientIdentifier:v8 sourceNotificationInfo:v9 bodyContainsTravelAdvice:buf];

  v54 = objc_alloc_init(CALNMutableNotificationContent);
  [(CALNMutableNotificationContent *)v54 setTitle:v82];
  [(CALNMutableNotificationContent *)v54 setBody:v53];
  [(CALNMutableNotificationContent *)v54 setCategoryIdentifier:v84];
  [(CALNMutableNotificationContent *)v54 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  v55 = [v9 startDate];
  [(CALNMutableNotificationContent *)v54 setDate:v55];

  [(CALNMutableNotificationContent *)v54 setExpirationDate:v81];
  v56 = [v9 launchURL];
  [(CALNMutableNotificationContent *)v54 setDefaultActionURL:v56];

  [(CALNMutableNotificationContent *)v54 setIconIdentifier:v79];
  -[CALNMutableNotificationContent setShouldHideTime:](v54, "setShouldHideTime:", [v9 isAllDay]);
  [(CALNMutableNotificationContent *)v54 setShouldSuppressSyncDismissalWhenRemoved:0];
  [(CALNMutableNotificationContent *)v54 setSound:v80];
  [(CALNMutableNotificationContent *)v54 setThreadIdentifier:@"upcomingEventsThread"];
  [(CALNMutableNotificationContent *)v54 setUserInfo:v42];
  if ([v9 isTimeSensitive])
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  [(CALNMutableNotificationContent *)v54 setInterruptionLevel:v57];
  v58 = [v9 calendarIdentifier];
  [(CALNMutableNotificationContent *)v54 setFilterCriteria:v58];

  v59 = v8;
  if (buf[0] == 1)
  {
    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

  v61 = self;
  v62 = [(CALNTriggeredEventNotificationSource *)self _eventRepresentationDictionaryWithSourceNotificationInfo:v9 hypothesisMessage:v60];
  if (v62)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v62 onNotificationContent:v54];
  }

  v63 = [v9 legacyIdentifier];

  if (v63)
  {
    v64 = [v9 legacyIdentifier];
    [CALNLegacyIdentifierUtils setLegacyIdentifier:v64 onNotificationContent:v54];
  }

  v65 = [(CALNTriggeredEventNotificationSource *)v61 _notificationResponseDataForSourceNotificationInfo:v9];
  [(CALNTriggeredEventNotificationSource *)v61 _setNotificationResponseData:v65 onNotificationContent:v54];
  v66 = [(CALNMutableNotificationContent *)v54 copy];

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

- (void)willPostNotification:(id)a3
{
  v4 = a3;
  v11 = [v4 sourceClientIdentifier];
  v5 = [v4 content];

  v6 = [v5 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"AlarmID"];
  v8 = [v6 objectForKeyedSubscript:@"snoozeCategoryExpirationDate"];
  v9 = [v6 objectForKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  if (v7)
  {
    v10 = [(CALNTriggeredEventNotificationSource *)self snoozeUpdateTimer];
    [v10 setFireDate:v8 leeway:v11 forEventWithIdentifier:{objc_msgSend(v9, "integerValue")}];
  }
}

- (void)refreshNotifications:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CALNTriggeredEventNotificationSource_refreshNotifications___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)didReceiveResponse:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CALNTriggeredEventNotificationSource_didReceiveResponse___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_didReceiveResponse:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 actionIdentifier];
  v7 = [v4 notificationRecord];
  v8 = [v7 sourceClientIdentifier];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Received notification response with action identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v10 = [v6 isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"];
  if ((v10 & 1) != 0 || [v6 isEqualToString:@"com.apple.CALNNotificationDismissActionIdentifier"])
  {
    v11 = [v4 notificationRecord];
    v12 = [v11 content];
    v13 = [v12 userInfo];

    v14 = [v13 objectForKeyedSubscript:@"IsLocation"];
    LODWORD(v12) = [v14 BOOLValue];

    v15 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v15 acknowledgeEventWithSourceClientIdentifier:v8 shouldMarkAsHavingReceivedLocation:v10 & v12];
  }

  else if ([v6 isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleDirectionsActionWithResponse:v4];
  }

  else if ([v6 isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleConferenceCallActionWithResponse:v4];
  }

  else if ([v6 isEqualToString:@"Mail_identifier"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleMailOrganizerActionWithResponse:v4];
  }

  else
  {
    v22[0] = @"CALNTriggeredEventNotificationSnoozeActionIdentifier";
    v22[1] = @"CALNTriggeredEventNotificationSnooze5MinutesActionIdentifier";
    v23[0] = &unk_2855308D8;
    v23[1] = &unk_2855308F0;
    v22[2] = @"CALNTriggeredEventNotificationSnooze15MinutesActionIdentifier";
    v22[3] = @"CALNTriggeredEventNotificationSnooze30MinutesActionIdentifier";
    v23[2] = &unk_285530908;
    v23[3] = &unk_285530920;
    v22[4] = @"CALNTriggeredEventNotificationSnooze1HourActionIdentifier";
    v22[5] = @"CALNTriggeredEventNotificationSnoozeUntil30MinutesBeforeActionIdentifier";
    v23[4] = &unk_285530938;
    v23[5] = &unk_285530950;
    v22[6] = @"CALNTriggeredEventNotificationSnoozeUntil15MinutesBeforeActionIdentifier";
    v22[7] = @"CALNTriggeredEventNotificationSnoozeUntil5MinutesBeforeActionIdentifier";
    v23[6] = &unk_285530968;
    v23[7] = &unk_285530980;
    v22[8] = @"CALNTriggeredEventNotificationSnoozeUntilStartActionIdentifier";
    v22[9] = @"CALNTriggeredEventNotificationSnoozeUntilEndActionIdentifier";
    v23[8] = &unk_285530998;
    v23[9] = &unk_2855309B0;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:10];
    v20 = [v19 objectForKeyedSubscript:v6];
    if (v20)
    {
      v21 = [(CALNTriggeredEventNotificationSource *)self dataSource];
      [v21 snoozeEventWithSourceClientIdentifier:v8 snoozeType:{objc_msgSend(v20, "unsignedIntegerValue")}];
    }
  }

  if ([(CALNTriggeredEventNotificationSource *)self _shouldCeaseRouteMonitoringEventForSourceClientIdentifier:v8])
  {
    v16 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v16 ceaseRouteMonitoringEventForSourceClientIdentifier:v8];

    [(CALNTriggeredEventNotificationSource *)self _clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:v8];
    v17 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v17 removeTimeToLeaveRefreshTimerForSourceClientIdentifier:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSArray)categories
{
  if (categories_onceToken_4 != -1)
  {
    [CALNTriggeredEventNotificationSource categories];
  }

  v3 = categories_categories_4;

  return v3;
}

void __50__CALNTriggeredEventNotificationSource_categories__block_invoke()
{
  v84[1] = *MEMORY[0x277D85DE8];
  v61 = +[CALNBundle bundle];
  v59 = [v61 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.upcomingEvent" value:@"Upcoming Event" table:0];
  v58 = [v61 localizedStringForKey:@"%u more upcoming events" value:&stru_28551FB98 table:0];
  v0 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v84[0] = v0;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];

  v83[0] = v60;
  v82[0] = @"com.apple.calendar.notifications.TriggeredEvent";
  v82[1] = @"com.apple.calendar.notifications.TriggeredEvent.Snooze";
  v57 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v81 = v57;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v83[1] = v56;
  v82[2] = @"com.apple.calendar.notifications.TriggeredEvent.Directions";
  v55 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v80 = v55;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v83[2] = v54;
  v82[3] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall";
  v53 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v79 = v53;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v83[3] = v52;
  v82[4] = @"com.apple.calendar.notifications.TriggeredEvent.MailOrganizer";
  v51 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v78 = v51;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v83[4] = v50;
  v82[5] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.Snooze";
  v49 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v77[0] = v49;
  v48 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v77[1] = v48;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v83[5] = v47;
  v82[6] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.Snooze";
  v46 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v76[0] = v46;
  v45 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v76[1] = v45;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v83[6] = v44;
  v82[7] = @"com.apple.calendar.notifications.TriggeredEvent.MailOrganizer.Snooze";
  v43 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v75[0] = v43;
  v42 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v75[1] = v42;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v83[7] = v41;
  v82[8] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall";
  v40 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v74[0] = v40;
  v39 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v74[1] = v39;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v83[8] = v38;
  v82[9] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.MailOrganizer";
  v37 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v73[0] = v37;
  v36 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v73[1] = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v83[9] = v35;
  v82[10] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.MailOrganizer";
  v34 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v72[0] = v34;
  v33 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v72[1] = v33;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v83[10] = v32;
  v82[11] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.Snooze";
  v31 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v71[0] = v31;
  v30 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v71[1] = v30;
  v29 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v71[2] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
  v83[11] = v28;
  v82[12] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.MailOrganizer";
  v27 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v70[0] = v27;
  v26 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v70[1] = v26;
  v25 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v70[2] = v25;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];
  v83[12] = v23;
  v82[13] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.MailOrganizer.Snooze";
  v22 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v69[0] = v22;
  v21 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v69[1] = v21;
  v20 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v69[2] = v20;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  v83[13] = v1;
  v82[14] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.MailOrganizer.Snooze";
  v2 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v68[0] = v2;
  v3 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v68[1] = v3;
  v4 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v68[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  v83[14] = v5;
  v82[15] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.MailOrganizer.Snooze";
  v6 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v67[0] = v6;
  v7 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v67[1] = v7;
  v8 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v67[2] = v8;
  v9 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v67[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  v83[15] = v10;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:16];

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v12 = +[CALNSnoozeCategory snoozeCategories];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __50__CALNTriggeredEventNotificationSource_categories__block_invoke_2;
  v62[3] = &unk_278D6F7B8;
  v63 = v12;
  v64 = v59;
  v65 = v58;
  v66 = v11;
  v13 = v11;
  v14 = v58;
  v15 = v59;
  v16 = v12;
  [v24 enumerateKeysAndObjectsUsingBlock:v62];
  v17 = [v13 copy];
  v18 = categories_categories_4;
  categories_categories_4 = v17;

  v19 = *MEMORY[0x277D85DE8];
}

void __50__CALNTriggeredEventNotificationSource_categories__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 actions];
          v15 = [v6 arrayByAddingObjectsFromArray:v14];

          v16 = [v13 suffix];
          v17 = [v5 stringByAppendingString:v16];

          v18 = [CALNNotificationCategory categoryWithIdentifier:v17 actions:v15 hiddenPreviewsBodyPlaceholder:*(a1 + 40) options:2 categorySummaryFormat:*(a1 + 48)];
          [*(a1 + 56) addObject:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v19 = [CALNNotificationCategory categoryWithIdentifier:v5 actions:v6 hiddenPreviewsBodyPlaceholder:*(a1 + 40) options:2 categorySummaryFormat:*(a1 + 48)];
    [*(a1 + 56) addObject:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dataSource:(id)a3 triggeredWithSourceClientIdentifier:(id)a4 triggerData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CALNTriggeredEventNotificationSource_dataSource_triggeredWithSourceClientIdentifier_triggerData___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);
}

- (void)dataSource:(id)a3 travelAdvisoryAuthorizationChanged:(BOOL)a4
{
  v6 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__CALNTriggeredEventNotificationSource_dataSource_travelAdvisoryAuthorizationChanged___block_invoke;
  v7[3] = &unk_278D6F7E0;
  v7[4] = self;
  v8 = a4;
  dispatch_sync(v6, v7);
}

- (void)dataSource:(id)a3 travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__CALNTriggeredEventNotificationSource_dataSource_travelEngineEventSignificantlyChangedWithSourceClientIdentifier___block_invoke;
  v8[3] = &unk_278D6F278;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

- (void)snoozeTimerFiredForEvents:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CALNTriggeredEventNotificationSource_snoozeTimerFiredForEvents___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_triggeredWithSourceClientIdentifier:(id)a3 triggerData:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v77 = v6;
    v78 = 2114;
    v79 = v7;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Triggered with source client identifier = %{public}@, trigger data = %{public}@", buf, 0x16u);
  }

  v10 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v11 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v12 = [v10 fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:v6 isProtectedDataAvailable:{objc_msgSend(v11, "isProtectedDataAvailable")}];

  if (v12)
  {
    v13 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v14 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
    v75 = [v13 fetchRecordsWithSourceIdentifier:v14];

    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v75;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_INFO, "Existing records = %@.", buf, 0xCu);
    }

    v16 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:v6 existingRecords:v75];
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v16 sourceClientIdentifier];
      *buf = 138543874;
      v77 = v6;
      v78 = 2114;
      v79 = v18;
      v80 = 2112;
      v81 = v16;
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", buf, 0x20u);
    }

    v19 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:v6];
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v77 = v6;
      v78 = 2112;
      v79 = v19;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Existing notification data for source client identifier = %{public}@, existing notification data = %@", buf, 0x16u);
    }

    v21 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v73 = [v21 now];

    v22 = [v7 trigger];
    v23 = [v7 hypothesis];
    v25 = v22 == 1 && v23 == 0;
    LOBYTE(v64) = 0;
    v72 = v23;
    v26 = -[CALNTriggeredEventNotificationSource _sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:](self, "_sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:", v6, v12, v19, v23, v25, [v7 isOffsetFromTravelTimeStart], v64);
    v27 = [(CALNTriggeredEventNotificationSource *)self triggerHelper];
    v74 = v26;
    v28 = [v27 shouldTriggerForSourceClientIdentifier:v6 trigger:v22 sourceNotificationInfo:v26 oldNotificationData:v19];

    v29 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CCABB0] numberWithBool:v28];
      v31 = v30 = v12;
      *buf = 138543618;
      v77 = v31;
      v78 = 2114;
      v79 = v6;
      _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Determined that notification should trigger = %{public}@. source client identifier = %{public}@", buf, 0x16u);

      v12 = v30;
    }

    if ((v28 & 1) == 0)
    {
      v50 = v74;
      v38 = [v74 hypothesis];
      -[CALNTriggeredEventNotificationSource _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:](self, "_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:", v6, v38, [v74 allowsLocationAlerts], objc_msgSend(v74, "travelAdvisoryDisabled"));
LABEL_50:

      goto LABEL_51;
    }

    v32 = [(CALNTriggeredEventNotificationSource *)self _updatedSourceNotificationInfoForContentCreation:v74];
    v33 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v71 = v32;
    v34 = -[CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:](self, "contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:", v6, v32, [v33 isProtectedDataAvailable]);

    if (!v34)
    {
      v51 = +[CALNLogSubsystem calendar];
      v50 = v74;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }

      v38 = v71;
      goto LABEL_49;
    }

    v35 = [(CALNTriggeredEventNotificationSource *)self transitionProvider];
    v36 = [v35 transitionForSourceClientIdentifier:v6 sourceNotificationInfo:v74 oldNotificationData:v19 trigger:v22];

    v70 = [CALNTriggeredEventNotificationTransitionUtilities descriptionForTransition:v36];
    v37 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v77 = v70;
      v78 = 2114;
      v79 = v6;
      _os_log_impl(&dword_242909000, v37, OS_LOG_TYPE_DEFAULT, "Transition = %{public}@, source client identifier = %{public}@", buf, 0x16u);
    }

    v69 = v16;
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        v38 = v71;
        if (v36 != 3)
        {
          goto LABEL_46;
        }

        v49 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        v52 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
        [v49 removeRecordWithSourceIdentifier:v52 sourceClientIdentifier:v6];

LABEL_45:
        goto LABEL_46;
      }

      if (v16)
      {
        v53 = [v16 mutableCopy];
        [v53 setContent:v34];
        v54 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        v55 = v7;
        v56 = v34;
        v57 = v12;
        v58 = [v53 copy];
        [v54 updateRecord:v58];

        v12 = v57;
        v34 = v56;
        v7 = v55;
        v49 = v53;
      }

      else
      {
        v49 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v77 = v6;
          _os_log_impl(&dword_242909000, v49, OS_LOG_TYPE_DEFAULT, "No existing delivered notification to perform replace transition, source client identifier = %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v36)
      {
        v38 = v71;
        if (v36 == 1)
        {
          v68 = v12;
          v39 = [v16 sourceClientIdentifier];
          v40 = [(CALNTriggeredEventNotificationSource *)self _resolvedSourceClientIdentifierForNewSourceClientIdentifier:v6 oldSourceClientIdentifier:v39];

          v41 = [CALNNotificationRecord alloc];
          v42 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
          v67 = v40;
          v43 = [(CALNNotificationRecord *)v41 initWithSourceIdentifier:v42 sourceClientIdentifier:v40 content:v34];

          v44 = [(CALNNotificationRecord *)v43 sourceClientIdentifier];
          v45 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:v44 existingRecords:v75];

          if (v45)
          {
            v46 = [v45 sourceClientIdentifier];
            if (v46)
            {
              v47 = v46;
              v66 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
              [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
              v48 = v65 = v45;
              [v66 removeRecordWithSourceIdentifier:v48 sourceClientIdentifier:v47];

              v45 = v65;
            }
          }

          -[CALNTriggeredEventNotificationSource _addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:](self, "_addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:", v43, v74, v19, [v7 trigger], 1, v73);

          v49 = v67;
          v12 = v68;
          goto LABEL_45;
        }

LABEL_46:
        if ([(CALNTriggeredEventNotificationSource *)self _shouldUpdateStoredNotificationDataGivenTransition:v36])
        {
          [(CALNTriggeredEventNotificationSource *)self _updateStoredNotificationDataForSourceClientIdentifier:v6 sourceNotificationInfo:v74 existingNotificationData:v19 transition:v36 now:v73];
        }

        v59 = [v74 hypothesis];
        v60 = [v74 allowsLocationAlerts];
        v61 = [v74 travelAdvisoryDisabled];
        v62 = v60;
        v50 = v74;
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:v6 hypothesis:v59 allowsLocationAlerts:v62 travelAdvisoryDisabled:v61];

        v16 = v69;
        v51 = v70;
LABEL_49:

        goto LABEL_50;
      }

      v49 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }
    }

    v38 = v71;
    goto LABEL_45;
  }

  v75 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
  }

LABEL_51:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Travel engine event changed significantly. Will reset 'Time to Leave' display state for existing record if it exists. source client identifier = %{public}@", &v10, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:v4];
  if (v7)
  {
    [(CALNTriggeredEventNotificationSource *)self _resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:v4];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _travelEngineEventSignificantlyChangedWithSourceClientIdentifier:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearTravelAdvisoryHypotheses
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Clearing travel advisory hypotheses", buf, 2u);
  }

  v5 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v6 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [v5 fetchRecordsWithSourceIdentifier:v6];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_INFO, "Existing records = %@.", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [(CALNTriggeredEventNotificationSource *)self _updateNotification:v14 shouldClearHypothesis:1, v17];
        v15 = [v14 sourceClientIdentifier];
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)a3
{
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:a3];
  v7 = v4 && ([v4 hypothesis], v6 = v5 = v4;

  return v7;
}

- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)a3
{
  v4 = [a3 hypothesis];
  if (v4)
  {
    v5 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v6 = [v5 now];

    v7 = [v4 conservativeDepartureDate];
    v8 = [v6 CalIsBeforeOrSameAsDate:v7];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
  v6 = [v5 periodForHypothesis:v4];

  return [(CALNTriggeredEventNotificationSource *)self _calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:v6];
}

- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hypothesis];
  }

  else
  {
    v6 = 0;
  }

  [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:v7 hypothesis:v6 allowsLocationAlerts:1 travelAdvisoryDisabled:0];
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3 hypothesis:(id)a4 allowsLocationAlerts:(BOOL)a5 travelAdvisoryDisabled:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138543362;
    *&v28[4] = v10;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Updating refresh timer for source client identifier = %{public}@", v28, 0xCu);
  }

  if (!a5)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543362;
      *&v28[4] = v10;
      v15 = "Location alerts are not allowed. Will remove the associated refresh timer for source client identifier = %{public}@";
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v16 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v16 removeTimeToLeaveRefreshTimerForSourceClientIdentifier:v10];
    goto LABEL_12;
  }

  if (v6)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543362;
      *&v28[4] = v10;
      v15 = "Time to Leave alarm removed on the event. Will remove the associated refresh timer for source client identifier = %{public}@";
LABEL_9:
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, v15, v28, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v28 = 138543362;
    *&v28[4] = v10;
    v15 = "There is no hypothesis. Will remove the associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  if ([v11 travelState] == 5)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v28 = 138543362;
    *&v28[4] = v10;
    v15 = "Hypothesis indicates user has arrived. Will remove associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  v18 = [(CALNTriggeredEventNotificationSource *)self _travelAdvisoryTimelinessPeriodForHypothesis:v11];
  if (v18 == 2)
  {
    v24 = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    v16 = [v24 startOfRunningLatePeriodForHypothesis:v11];

    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543618;
      *&v28[4] = v16;
      *&v28[12] = 2114;
      *&v28[14] = v10;
      v21 = "Will refresh when the user will become late at %{public}@, source client identifier = %{public}@";
      v22 = v20;
      v23 = 22;
      goto LABEL_26;
    }
  }

  else
  {
    if (v18 != 1)
    {
      goto LABEL_11;
    }

    v19 = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    v16 = [v19 startOfLeaveNowPeriodForHypothesis:v11];

    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138412802;
      *&v28[4] = v16;
      *&v28[12] = 2114;
      *&v28[14] = v16;
      v29 = 2114;
      v30 = v10;
      v21 = "Will refresh at date: [%@] when the user needs to 'Leave Now' at %{public}@, source client identifier = %{public}@";
      v22 = v20;
      v23 = 32;
LABEL_26:
      _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, v21, v28, v23);
    }
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  v25 = [v16 dateBySubtractingCalSimulatedOffset];
  v26 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138543618;
    *&v28[4] = v25;
    *&v28[12] = 2114;
    *&v28[14] = v10;
    _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Will set up a refresh timer with an adjusted refresh date of %{public}@. source client identifier = %{public}@", v28, 0x16u);
  }

  v27 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [v27 setUpTimeToLeaveRefreshTimerWithTriggerDate:v25 sourceClientIdentifier:v10];

LABEL_12:
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateSnoozeOptionsForEvents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v6 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [v5 fetchRecordsWithSourceIdentifier:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 sourceClientIdentifier];
        if ([v4 containsObject:v14])
        {
          [(CALNTriggeredEventNotificationSource *)self _refreshNotification:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateSnoozeOptionsForPostedNotifications
{
  v3 = +[CALNSnoozeCategory snoozeCategories];
  v4 = [v3 count];

  if (v4 > 1)
  {
    v6 = [(CALNTriggeredEventNotificationSource *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__CALNTriggeredEventNotificationSource_updateSnoozeOptionsForPostedNotifications__block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    v5 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_INFO, "Not updating snooze options because there's only one option", buf, 2u);
    }
  }
}

void __81__CALNTriggeredEventNotificationSource_updateSnoozeOptionsForPostedNotifications__block_invoke(uint64_t a1)
{
  v1 = a1;
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dateProvider];
  v41 = [v2 now];

  v3 = [*(v1 + 32) notificationManager];
  v4 = [*(v1 + 32) sourceIdentifier];
  v5 = [v3 fetchRecordsWithSourceIdentifier:v4];

  v6 = 0x278D6E000uLL;
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = [v5 count];
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Checking snooze options for %lu posted notifications", buf, 0xCu);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v45 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v45)
  {
    v9 = *v51;
    *&v8 = 138543874;
    v39 = v8;
    v43 = *v51;
    v40 = v1;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [v11 content];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKeyedSubscript:@"AlarmID"];
        v15 = v14;
        if (v14)
        {
          v46 = v14;
          v16 = [v13 objectForKeyedSubscript:@"allDay"];
          v17 = [v16 BOOLValue];
          v18 = [v12 categoryIdentifier];
          v49 = [v12 date];
          v19 = [v13 objectForKeyedSubscript:@"endDate"];
          v47 = v18;
          v48 = v19;
          if (v16)
          {
            v20 = v19 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_25;
          }

          v42 = v17;
          v21 = [CALNSnoozeCategory snoozeCategoryForEventWithStartDate:v49 endDate:v19 now:v41 isAllDay:v17];
          v22 = [v21 suffix];
          if (![v18 hasSuffix:v22])
          {
            goto LABEL_21;
          }

          v23 = [v18 length];
          v24 = [@"Snooze" length];
          v25 = [v22 length] + v24;
          if (v23 > v25)
          {
            v26 = [v47 compare:@"Snooze" options:0 range:{objc_msgSend(v47, "length") - v25, v24}];

            v1 = v40;
            if (!v26)
            {
              v27 = +[CALNLogSubsystem calendar];
              v9 = v43;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [v11 sourceClientIdentifier];
                *buf = 138543362;
                v55 = v28;
                _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_INFO, "Notification %{public}@ already has the correct snooze options.", buf, 0xCu);
              }

              v29 = [0 expirationDateForEventWithStartDate:v49 endDate:v48 isAllDay:v42];
              v30 = [*(v40 + 32) snoozeUpdateTimer];
              [0 leeway];
              v32 = v31;
              v33 = [v11 sourceClientIdentifier];
              [v30 setFireDate:v29 leeway:v33 forEventWithIdentifier:v32];

              v6 = 0x278D6E000;
              goto LABEL_29;
            }
          }

          else
          {
LABEL_21:

            v1 = v40;
          }

          v6 = 0x278D6E000uLL;
          v9 = v43;
          if (!v22)
          {
LABEL_25:
            v35 = [*(v6 + 2344) calendar];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v11 sourceClientIdentifier];
              *buf = 138543362;
              v55 = v37;
              _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Refreshing notification %{public}@ because there's not enough information to determine if its snooze category is correct.", buf, 0xCu);
            }

            v22 = 0;
          }

          else
          {
            v35 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v11 sourceClientIdentifier];
              *buf = v39;
              v55 = v36;
              v56 = 2114;
              v57 = v22;
              v58 = 2114;
              v59 = v47;
              _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Refreshing notification %{public}@ because it should have snooze category %{public}@ but has category %{public}@.", buf, 0x20u);

              v6 = 0x278D6E000;
            }
          }

          [*(v1 + 32) _refreshNotification:v11];
LABEL_29:

          v15 = v46;
          goto LABEL_30;
        }

        v16 = [*(v6 + 2344) calendar];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v34 = [v11 sourceClientIdentifier];
          *buf = 138543362;
          v55 = v34;
          _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_INFO, "Notification %{public}@ can't be snoozed so it doesn't need refreshing.", buf, 0xCu);

          v9 = v43;
        }

LABEL_30:
      }

      v45 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v45);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_refreshNotifications:(id)a3
{
  v5 = a3;
  v4 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationMetaDataWithObjectIDs:v5];
  [(CALNTriggeredEventNotificationSource *)self _refreshTimeToLeaveRefreshTimersWithObjectIDs:v5];
  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationRecordsWithObjectIDs:v5];
}

- (void)_refreshNotificationRecordsWithObjectIDs:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v7 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [v6 fetchRecordsWithSourceIdentifier:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [v14 sourceClientIdentifier];
        if (!v4 || [(CALNTriggeredEventNotificationSource *)self _notificationWithSourceClientIdentifier:v16 affectedByChangesToObjects:v4])
        {
          [(CALNTriggeredEventNotificationSource *)self _refreshNotification:v14];
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_refreshNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 sourceClientIdentifier];
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Refreshing notification with source client identifier = %{public}@", &v13, 0xCu);
  }

  v8 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [v8 shouldWithdrawNotificationWithSourceClientIdentifier:v6];

  if (v9)
  {
    v10 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v11 = [v4 sourceIdentifier];
    [v10 removeRecordWithSourceIdentifier:v11 sourceClientIdentifier:v6];
  }

  else
  {
    [(CALNTriggeredEventNotificationSource *)self _updateNotification:v4 shouldClearHypothesis:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_refreshNotificationMetaDataWithObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  v7 = [v6 notificationData];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__CALNTriggeredEventNotificationSource__refreshNotificationMetaDataWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F808;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __82__CALNTriggeredEventNotificationSource__refreshNotificationMetaDataWithObjectIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!*(a1 + 32) || [*(a1 + 40) _itemWithEventID:v6 affectedByChangesToObjects:?])
  {
    [*(a1 + 40) _refreshNotificationMetaData:v5 eventID:v6];
  }
}

- (void)_refreshNotificationMetaData:(id)a3 eventID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  LODWORD(v8) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveNotificationMetaData:v7 eventID:v6];
  if (v8)
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Removing notification meta data due to refresh for eventID = %{public}@", &v12, 0xCu);
    }

    v10 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v10 ceaseRouteMonitoringEventWithEventID:v6];

    [(CALNTriggeredEventNotificationSource *)self _removeStoredNotificationDataForEventWithEventID:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRemoveNotificationMetaData:(id)a3 eventID:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  LODWORD(v8) = [(CALNTriggeredEventNotificationSource *)self _isNotificationMetaDataExpired:v7 eventID:v6];
  if (v8)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Notification meta data is expired for eventID = %{public}@. Should remove notification meta data.", &v14, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    v11 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v10 = [v11 shouldRemoveNotificationMetaDataWithEventID:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isNotificationMetaDataExpired:(id)a3 eventID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 alarmID];
  v8 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [v8 notificationExpirationDateForEventID:v6 alarmID:v7];

  if (v9)
  {
    v10 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v11 = [v10 now];

    [v9 timeIntervalSinceDate:v11];
    v13 = v12 <= 0.0;
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v6;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Could not get an expiration date for notification meta data for eventID = %{public}@. Treating notification meta data as expired.", &v17, 0xCu);
    }

    v13 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNTriggeredEventNotificationSource *)self timeToLeaveRefreshStorage];
  v7 = [v6 refreshDates];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CALNTriggeredEventNotificationSource__refreshTimeToLeaveRefreshTimersWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F830;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __86__CALNTriggeredEventNotificationSource__refreshTimeToLeaveRefreshTimersWithObjectIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!*(a1 + 32) || [*(a1 + 40) _itemWithEventID:v6 affectedByChangesToObjects:?])
  {
    [*(a1 + 40) _refreshTimeToLeaveRefreshTimerWithRefreshDate:v5 eventID:v6];
  }
}

- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v7);

  LODWORD(v7) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:v6 eventID:v9];
  if (v7)
  {
    v8 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v8 removeTimeToLeaveRefreshTimerForEventID:v9];
  }
}

- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
  v10 = [v9 now];

  [v6 timeIntervalSinceDate:v10];
  if (v11 <= 0.0)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Time to leave refresh date is expired for eventID = %{public}@. Should remove time to leave refresh timer.", &v17, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    v12 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v13 = [v12 shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:v6 eventID:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_notificationWithSourceClientIdentifier:(id)a3 affectedByChangesToObjects:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v13 = 0;
  v14 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:v7];

  v9 = v14;
  v10 = v13;
  if (v10 && ([v6 containsObject:v10] & 1) != 0)
  {
    v11 = 1;
  }

  else if (v9)
  {
    v11 = [(CALNTriggeredEventNotificationSource *)self _itemWithEventID:v9 affectedByChangesToObjects:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_itemWithEventID:(id)a3 affectedByChangesToObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(NSMutableDictionary *)self->_eventURLToObjectIDMap objectForKeyedSubscript:v6];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (!v9 || (-[CALNTriggeredEventNotificationSource dataSource](self, "dataSource"), v11 = objc_claimAutoreleasedReturnValue(), [v11 eventObjectIDForEventID:v9], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
    {
      v10 = 1;
      goto LABEL_7;
    }

    [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:v12 forKeyedSubscript:v6];

    v9 = v12;
  }

  v10 = [v7 containsObject:v9];
LABEL_7:

  return v10;
}

- (id)_updatedSourceNotificationInfoForContentCreation:(id)a3
{
  v4 = a3;
  v45 = -[CALNTriggeredEventNotificationSource _updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:](self, "_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:", [v4 isOffsetFromTravelTimeStart]);
  v36 = [CALNTriggeredEventNotificationSourceNotificationInfo alloc];
  v44 = [v4 title];
  v43 = [v4 location];
  v42 = [v4 locationWithoutPrediction];
  v41 = [v4 preferredLocation];
  v40 = [v4 startDate];
  v35 = [v4 endDate];
  v34 = [v4 isAllDay];
  v33 = [v4 isTimeSensitive];
  v39 = [v4 launchURL];
  v32 = [v4 isLocationEvent];
  v31 = [v4 eventID];
  v38 = [v4 eventObjectID];
  v30 = [v4 organizerPhoneNumber];
  v29 = [v4 organizerEmailAddress];
  v21 = [v4 calendarIdentifier];
  v28 = [v4 eventRepresentationDictionary];
  v27 = [v4 legacyIdentifier];
  v26 = [v4 mapItemURL];
  v25 = [v4 conferenceURL];
  v24 = [v4 conferenceURLIsBroadcast];
  v23 = [v4 mailtoURL];
  v22 = [v4 hasSuggestedLocation];
  v5 = [v4 eventHasAlarms];
  v20 = [v4 alarmID];
  v6 = [v4 isOffsetFromTravelTimeStart];
  v7 = [v4 allowsLocationAlerts];
  v8 = [v4 hypothesis];
  v9 = [v4 travelAdvisoryTimelinessPeriod];
  v10 = [v4 forceDisplayOfNewTravelAdvisoryHypotheses];
  v11 = [v4 travelAdvisoryDisabled];

  BYTE1(v19) = v11;
  LOBYTE(v19) = v10;
  LOBYTE(v18) = v7;
  LOBYTE(v17) = v6;
  BYTE1(v16) = v5;
  LOBYTE(v16) = v22;
  LOBYTE(v15) = v24;
  LOBYTE(v14) = v32;
  BYTE1(v13) = v33;
  LOBYTE(v13) = v34;
  v37 = [CALNTriggeredEventNotificationSourceNotificationInfo initWithTitle:v36 location:"initWithTitle:location:locationWithoutPrediction:preferredLocation:startDate:endDate:isAllDay:isTimeSensitive:launchURL:isLocationEvent:eventID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:mapItemURL:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:alarmID:isOffsetFromTravelTimeStart:lastFireTimeOfAlertOffsetFromTravelTime:allowsLocationAlerts:hypothesis:travelAdvisoryTimelinessPeriod:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:v44 preferredLocation:v43 startDate:v42 endDate:v41 isAllDay:v40 isTimeSensitive:v35 launchURL:v13 isLocationEvent:v39 eventID:v14 eventObjectID:v31 organizerPhoneNumber:v38 organizerEmailAddress:v30 calendarIdentifier:v29 eventRepresentationDictionary:v21 legacyIdentifier:v28 mapItemURL:v27 conferenceURL:v26 conferenceURLIsBroadcast:v25 mailtoURL:v15 hasSuggestedLocation:v23 eventHasAlarms:v16 alarmID:v20 isOffsetFromTravelTimeStart:v17 lastFireTimeOfAlertOffsetFromTravelTime:v45 allowsLocationAlerts:v18 hypothesis:v8 travelAdvisoryTimelinessPeriod:v9 forceDisplayOfNewTravelAdvisoryHypotheses:v19 travelAdvisoryDisabled:?];

  return v37;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v7 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [v6 fetchRecordsWithSourceIdentifier:v7];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Existing records = %@.", &v15, 0xCu);
  }

  v10 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:v4 existingRecords:v8];
  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 sourceClientIdentifier];
    v15 = 138543874;
    v16 = v4;
    v17 = 2114;
    v18 = v12;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)a3 existingRecords:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __110__CALNTriggeredEventNotificationSource__existingRecordMatchingEventForSourceClientIdentifier_existingRecords___block_invoke;
  v15 = &unk_278D6F340;
  v16 = self;
  v17 = v6;
  v8 = v6;
  v9 = [v7 indexOfObjectPassingTest:&v12];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:{v9, v12, v13, v14, v15, v16, v17}];
  }

  return v10;
}

uint64_t __110__CALNTriggeredEventNotificationSource__existingRecordMatchingEventForSourceClientIdentifier_existingRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 sourceClientIdentifier];
  v5 = [v3 _sourceClientIdentifier:v4 matchesEventForSourceClientIdentifier:*(a1 + 40)];

  return v5;
}

- (void)_addRecord:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 trigger:(unint64_t)a6 transition:(unint64_t)a7 now:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v16 eventID];
  v19 = [v16 eventObjectID];
  [(CALNTriggeredEventNotificationSource *)self _addEventURL:v18 mappingToEventObjectID:v19];

  v20 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  [v20 addRecord:v17];

  v21 = [v17 sourceClientIdentifier];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationDataForSourceClientIdentifier:v21 sourceNotificationInfo:v16 existingNotificationData:v15 transition:a7 now:v14];

  v22 = [v17 sourceClientIdentifier];

  [(CALNTriggeredEventNotificationSource *)self _notificationAddedWithSourceClientIdentifier:v22 sourceNotificationInfo:v16 trigger:a6];
}

- (void)_notificationAddedWithSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 trigger:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v16 = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Notification added with source client identifier = %{public}@, trigger = %{public}@", &v16, 0x16u);
  }

  if (a5 == 2)
  {
    v12 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v12 sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:v8];
    goto LABEL_7;
  }

  if (a5 == 1)
  {
    v12 = [v9 hypothesis];
    v13 = [v9 travelAdvisoryTimelinessPeriod];
    v14 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [v14 sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:v8 hypothesis:v12 travelAdvisoryTimelinessPeriod:v13];

LABEL_7:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addEventURL:(id)a3 mappingToEventObjectID:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:a4 forKeyedSubscript:a3];
    }
  }
}

- (void)_commonHandleResponse:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self _launchURLForResponse:v4];
  if (v5)
  {
    v6 = [(CALNTriggeredEventNotificationSource *)self urlHandler];
    [v6 openURL:v5 response:v4];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _commonHandleResponse:v4];
    }
  }
}

- (void)_handleDirectionsActionWithResponse:(id)a3
{
  v4 = a3;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:v4];
  v10 = [v4 notificationRecord];

  v5 = [v10 sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:v10];
  v7 = [v6 hypothesis];
  v8 = [v6 lastFireTimeOfAlertOffsetFromTravelTime];
  v9 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [v9 handleDirectionsActionWithSourceClientIdentifier:v5 hypothesis:v7 lastFireTimeOfAlertOffsetFromTravelTime:v8];
}

- (void)_handleConferenceCallActionWithResponse:(id)a3
{
  v4 = a3;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:v4];
  v7 = [v4 notificationRecord];

  v5 = [v7 sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [v6 handleConferenceCallActionWithSourceClientIdentifier:v5];
}

- (void)_handleMailOrganizerActionWithResponse:(id)a3
{
  v4 = a3;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:v4];
  v9 = [v4 notificationRecord];

  v5 = [v9 sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:v9];
  v7 = [v6 hypothesis];
  v8 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [v8 handleMailOrganizerActionWithSourceClientIdentifier:v5 hypothesis:v7];
}

- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v4];

  if (v6)
  {
    v7 = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    v8 = [v7 notificationDataWithIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_notificationDataForSourceNotificationInfo:(id)a3 existingNotificationData:(id)a4 transition:(unint64_t)a5 now:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [v11 hasDisplayedLeaveByMessage];
  v13 = [v11 hasDisplayedLeaveNowMessage];
  v14 = [v11 hasDisplayedRunningLateMessage];
  v15 = [v11 lastFireTimeOfAlertOffsetFromTravelTime];
  v16 = [v11 lastTimeNotificationAdded];

  if (a5 - 1 <= 1)
  {
    v17 = [v9 travelAdvisoryTimelinessPeriod];
    if (v17 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
    }

    if (v17 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13;
    }

    if (v17 == 2)
    {
      v18 = v12;
    }

    if (v17 == 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = v14;
    }

    if (v17 == 3)
    {
      v13 = v13;
    }

    else
    {
      v13 = v19;
    }

    if (v17 == 3)
    {
      v12 = v12;
    }

    else
    {
      v12 = v18;
    }

    if ([v9 isOffsetFromTravelTimeStart])
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    v20 = v10;

    v16 = v20;
  }

  v21 = objc_alloc_init(CALNMutableTriggeredEventNotificationData);
  v22 = [v9 alarmID];
  [(CALNMutableTriggeredEventNotificationData *)v21 setAlarmID:v22];

  -[CALNMutableTriggeredEventNotificationData setIsOffsetFromTravelTimeStart:](v21, "setIsOffsetFromTravelTimeStart:", [v9 isOffsetFromTravelTimeStart]);
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastFireTimeOfAlertOffsetFromTravelTime:v15];
  v23 = [v9 hypothesis];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHypothesis:v23];

  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveByMessage:v12];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveNowMessage:v13];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedRunningLateMessage:v14];
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastTimeNotificationAdded:v16];
  v24 = [(CALNMutableTriggeredEventNotificationData *)v21 copy];

  return v24;
}

- (void)_removeStoredNotificationDataForEventWithEventID:(id)a3
{
  v5 = a3;
  v4 = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  [v4 removeNotificationDataWithIdentifier:v5];

  [(NSMutableDictionary *)self->_eventURLToObjectIDMap removeObjectForKey:v5];
}

- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 transition:(unint64_t)a6 now:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v22 = 138543618;
    v23 = v12;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Updating stored notification data for source client identifier = %{public}@, transition = %{public}@", &v22, 0x16u);
  }

  v19 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:v15 existingNotificationData:v14 transition:a6 now:v13];

  if (v19)
  {
    [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v19 forSourceClientIdentifier:v12];
  }

  else
  {
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Could not get notification data for source client identifier = %{public}@", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationDataForSourceClientIdentifier:(id)a3 sourceNotificationInfo:(id)a4 existingNotificationData:(id)a5 transition:(unint64_t)a6 now:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    v20 = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Adding notification data for source notification info. source client identifier = %{public}@, transition = %{public}@", &v20, 0x16u);
  }

  v18 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:v15 existingNotificationData:v14 transition:a6 now:v13];

  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v18 forSourceClientIdentifier:v12];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationData:(id)a3 forSourceClientIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v7];
  if (v8)
  {
    v9 = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    [v9 addNotificationData:v6 withIdentifier:v8];

    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v11 = "Added notification data, source client identifier = %{public}@, event ID = %{public}@, notification data = %@";
      v12 = v10;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, v11, &v15, v13);
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v7;
      v11 = "No event ID to add notification data for source client identifier = %{public}@";
      v12 = v10;
      v13 = 12;
      goto LABEL_6;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Resetting stored notification data time to leave display state for source client identifier = %{public}@", &v10, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:v4];
  v8 = [(CALNTriggeredEventNotificationSource *)self _updatedNotificationDataResettingTimeToLeaveDisplayState:v7];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:v4];
  v7 = [v6 mutableCopy];
  [v7 setHypothesis:0];
  v8 = [v7 copy];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:v4];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Cleared travel advisory from notification meta data for source client identifier = %{public}@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setHasDisplayedLeaveByMessage:0];
  [v3 setHasDisplayedLeaveNowMessage:0];
  [v3 setHasDisplayedRunningLateMessage:0];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)migrateToStorage:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CALNTriggeredEventNotificationSource_migrateToStorage___block_invoke;
  block[3] = &unk_278D6F858;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __57__CALNTriggeredEventNotificationSource_migrateToStorage___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  if (v3 == v2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Storage migration: new storage is the same as existing storage; no work to be done", buf, 2u);
    }
  }

  else
  {
    v4 = [v3 notificationData];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v19;
      *&v6 = 138412290;
      v17 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v4 objectForKeyedSubscript:v10, v17];
          v12 = [*(a1 + 40) notificationDataWithIdentifier:v10];
          if (v12)
          {
            v13 = *(a1 + 32);
            v14 = [objc_opt_class() _mergeDataFromUnprotectedStore:v11 withDataInProtectedStore:v12];
            [*(a1 + 40) addNotificationData:v14 withIdentifier:v10];
            v15 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v23 = v10;
              v24 = 2112;
              v25 = v14;
              _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Storage migration: key %@ had existing data; adding merged data: %@", buf, 0x16u);
            }
          }

          else
          {
            [*(a1 + 40) addNotificationData:v11 withIdentifier:v10];
            v14 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = v10;
              _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Storage migration: copying data for key %@", buf, 0xCu);
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)_mergeDataFromUnprotectedStore:(id)a3 withDataInProtectedStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 alarmID];
  [v7 setAlarmID:v8];

  v9 = [v5 hypothesis];
  [v7 setHypothesis:v9];

  [v7 setHasDisplayedLeaveByMessage:{objc_msgSend(v5, "hasDisplayedLeaveByMessage")}];
  [v7 setHasDisplayedLeaveNowMessage:{objc_msgSend(v5, "hasDisplayedLeaveNowMessage")}];
  [v7 setHasDisplayedRunningLateMessage:{objc_msgSend(v5, "hasDisplayedRunningLateMessage")}];
  [v7 setIsOffsetFromTravelTimeStart:{objc_msgSend(v6, "isOffsetFromTravelTimeStart")}];
  v10 = [v6 lastFireTimeOfAlertOffsetFromTravelTime];
  v11 = [v5 lastFireTimeOfAlertOffsetFromTravelTime];
  v12 = _laterOfTwoPossiblyNilDates(v10, v11);
  [v7 setLastFireTimeOfAlertOffsetFromTravelTime:v12];

  v13 = [v6 lastTimeNotificationAdded];

  v14 = [v5 lastTimeNotificationAdded];

  v15 = _laterOfTwoPossiblyNilDates(v13, v14);
  [v7 setLastTimeNotificationAdded:v15];

  return v7;
}

- (id)_notificationResponseDataForRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 content];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInfo];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
      if (v8)
      {
        v9 = [CALNTriggeredEventNotificationResponseDataPayloadMapper notificationResponseDataForPayload:v8];
LABEL_14:

        goto LABEL_15;
      }

      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:v3];
      }
    }

    else
    {
      v8 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:v3];
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:v3];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)_notificationResponseDataForSourceNotificationInfo:(id)a3
{
  v3 = a3;
  v4 = [CALNTriggeredEventNotificationResponseData alloc];
  v5 = [v3 hypothesis];
  v6 = [v3 lastFireTimeOfAlertOffsetFromTravelTime];

  v7 = [(CALNTriggeredEventNotificationResponseData *)v4 initWithHypothesis:v5 lastFireTimeOfAlertOffsetFromTravelTime:v6];

  return v7;
}

- (void)_setNotificationResponseData:(id)a3 onNotificationContent:(id)a4
{
  v5 = a4;
  v6 = [CALNTriggeredEventNotificationResponseDataPayloadMapper payloadForNotificationResponseData:a3];
  [v5 setUserInfoValue:v6 forKey:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
}

- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)a3 hypothesisMessage:(id)a4
{
  v6 = a4;
  v7 = [a3 eventRepresentationDictionary];
  if (v7 && v6)
  {
    v8 = [(CALNTriggeredEventNotificationSource *)self sourceEventRepresentationProvider];
    v9 = [v8 updateEventRepresentationDictionary:v7 withHypothesisMessage:v6];

    v7 = v9;
  }

  return v7;
}

- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)a3 oldSourceClientIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:v5];
    v7 = v16;
    v8 = v15;
    v13 = 0;
    v14 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:v6];
    v9 = v14;
    if (v13)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }

    if (v8)
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (BOOL)_sourceClientIdentifier:(id)a3 matchesEventForSourceClientIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0;
  v18 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v18 andAlarmID:&v17 fromSourceClientIdentifier:v5];
  v7 = v18;
  v8 = v17;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:v6];
    v9 = v16;
    v10 = v15;
    if (v9)
    {
      v11 = [v7 isEqualToString:v9];
      v12 = +[CALNLogSubsystem calendar];
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          [CALNTriggeredEventNotificationSource _sourceClientIdentifier:matchesEventForSourceClientIdentifier:];
        }
      }

      else if (v13)
      {
        [CALNTriggeredEventNotificationSource _sourceClientIdentifier:matchesEventForSourceClientIdentifier:];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_launchURLForResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 notificationRecord];
  v5 = [v3 actionIdentifier];

  if ([v5 isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    v6 = [objc_opt_class() _mapItemURLForNotification:v4];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    v6 = [objc_opt_class() _conferenceURLForNotification:v4];
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"Mail_identifier"])
  {
    v6 = [objc_opt_class() _mailtoURLForNotification:v4];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)_mapItemURLForNotification:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"MapItemURL"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_conferenceURLForNotification:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"ConferenceURL"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_mailtoURLForNotification:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 userInfo];

  v5 = [v4 objectForKeyedSubscript:@"mailto"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)a3
{
  if (a3)
  {
    v3 = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v4 = [v3 now];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

- (void)refreshNotification:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CALNTriggeredEventNotificationSource_UnitTesting__refreshNotification___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Using default title for notification content despite protected data being available, source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_triggeredWithSourceClientIdentifier:triggerData:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Notification that should trigger cannot because we could not compute the transition type. source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_triggeredWithSourceClientIdentifier:triggerData:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Could not get notification content. source client identifier = %{public}@, source notification info = %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_triggeredWithSourceClientIdentifier:triggerData:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get notification info for event (%{public}@).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get existing record for source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_contentForNotificationWithSourceClientIdentifier:shouldClearHypothesis:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get source notification info. source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sourceNotificationInfoForSourceClientIdentifier:shouldClearHypothesis:isForContentCreation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Failed to get notification info for event (%{public}@). Returning nil content", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_commonHandleResponse:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 notificationRecord];
  v3 = [v2 sourceClientIdentifier];
  v10 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_sourceClientIdentifier:matchesEventForSourceClientIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Source client identifiers do not refer to the same event. Source client identifier: %{public}@. Other source client identifier: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sourceClientIdentifier:matchesEventForSourceClientIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_3(&dword_242909000, v0, v1, "Source client identifiers refer to the same event. Source client identifier: %{public}@. Other source client identifier: %{public}@.");
  v2 = *MEMORY[0x277D85DE8];
}

@end