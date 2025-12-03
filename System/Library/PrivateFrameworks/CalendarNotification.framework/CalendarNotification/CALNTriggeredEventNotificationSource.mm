@interface CALNTriggeredEventNotificationSource
+ (id)_conferenceURLForNotification:(id)notification;
+ (id)_mailtoURLForNotification:(id)notification;
+ (id)_mapItemURLForNotification:(id)notification;
+ (id)_mergeDataFromUnprotectedStore:(id)store withDataInProtectedStore:(id)protectedStore;
- (BOOL)_isNotificationMetaDataExpired:(id)expired eventID:(id)d;
- (BOOL)_itemWithEventID:(id)d affectedByChangesToObjects:(id)objects;
- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)data;
- (BOOL)_notificationWithSourceClientIdentifier:(id)identifier affectedByChangesToObjects:(id)objects;
- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier;
- (BOOL)_shouldRemoveNotificationMetaData:(id)data eventID:(id)d;
- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d;
- (BOOL)_sourceClientIdentifier:(id)identifier matchesEventForSourceClientIdentifier:(id)clientIdentifier;
- (BOOL)migrateToStorage:(id)storage;
- (CALNNotificationManager)notificationManager;
- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider triggerHelper:(id)helper transitionProvider:(id)transitionProvider bodyDescriptionProvider:(id)descriptionProvider travelAdvisoryTimelinessAuthority:(id)self0 dateProvider:(id)self1 notificationDataStorage:(id)self2 urlHandler:(id)self3 mapItemURLProvider:(id)self4 timeToLeaveRefreshStorage:(id)self5 snoozeUpdateTimer:(id)self6;
- (NSArray)categories;
- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)info hypothesisMessage:(id)message;
- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)identifier;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier existingRecords:(id)records;
- (id)_launchURLForResponse:(id)response;
- (id)_notificationDataForSourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (id)_notificationResponseDataForRecord:(id)record;
- (id)_notificationResponseDataForSourceNotificationInfo:(id)info;
- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)identifier oldSourceClientIdentifier:(id)clientIdentifier;
- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)time;
- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)state;
- (id)_updatedSourceNotificationInfoForContentCreation:(id)creation;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (id)contentForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info isProtectedDataAvailable:(BOOL)available;
- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)period;
- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)hypothesis;
- (void)_addEventURL:(id)l mappingToEventObjectID:(id)d;
- (void)_addNotificationData:(id)data forSourceClientIdentifier:(id)identifier;
- (void)_addNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (void)_addRecord:(id)record sourceNotificationInfo:(id)info existingNotificationData:(id)data trigger:(unint64_t)trigger transition:(unint64_t)transition now:(id)now;
- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)identifier;
- (void)_clearTravelAdvisoryHypotheses;
- (void)_commonHandleResponse:(id)response;
- (void)_didReceiveResponse:(id)response;
- (void)_handleConferenceCallActionWithResponse:(id)response;
- (void)_handleDirectionsActionWithResponse:(id)response;
- (void)_handleMailOrganizerActionWithResponse:(id)response;
- (void)_notificationAddedWithSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info trigger:(unint64_t)trigger;
- (void)_refreshNotification:(id)notification;
- (void)_refreshNotificationMetaData:(id)data eventID:(id)d;
- (void)_refreshNotificationMetaDataWithObjectIDs:(id)ds;
- (void)_refreshNotificationRecordsWithObjectIDs:(id)ds;
- (void)_refreshNotifications:(id)notifications;
- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d;
- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)ds;
- (void)_removeStoredNotificationDataForEventWithEventID:(id)d;
- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)identifier;
- (void)_setNotificationResponseData:(id)data onNotificationContent:(id)content;
- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier;
- (void)_triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data;
- (void)_updateSnoozeOptionsForEvents:(id)events;
- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis allowsLocationAlerts:(BOOL)alerts travelAdvisoryDisabled:(BOOL)disabled;
- (void)dataSource:(id)source travelAdvisoryAuthorizationChanged:(BOOL)changed;
- (void)dataSource:(id)source travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier;
- (void)dataSource:(id)source triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotification:(id)notification;
- (void)refreshNotifications:(id)notifications;
- (void)snoozeTimerFiredForEvents:(id)events;
- (void)updateSnoozeOptionsForPostedNotifications;
- (void)willPostNotification:(id)notification;
@end

@implementation CALNTriggeredEventNotificationSource

- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider triggerHelper:(id)helper transitionProvider:(id)transitionProvider bodyDescriptionProvider:(id)descriptionProvider travelAdvisoryTimelinessAuthority:(id)self0 dateProvider:(id)self1 notificationDataStorage:(id)self2 urlHandler:(id)self3 mapItemURLProvider:(id)self4 timeToLeaveRefreshStorage:(id)self5 snoozeUpdateTimer:(id)self6
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
  helperCopy = helper;
  transitionProviderCopy = transitionProvider;
  descriptionProviderCopy = descriptionProvider;
  authorityCopy = authority;
  dateProviderCopy = dateProvider;
  storageCopy = storage;
  handlerCopy = handler;
  lProviderCopy = lProvider;
  refreshStorageCopy = refreshStorage;
  timerCopy = timer;
  v52.receiver = self;
  v52.super_class = CALNTriggeredEventNotificationSource;
  v23 = [(CALNTriggeredEventNotificationSource *)&v52 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_dataSource, source);
    objc_storeWeak(&v24->_notificationManager, managerCopy);
    objc_storeStrong(&v24->_iconIdentifierProvider, provider);
    objc_storeStrong(&v24->_sourceEventRepresentationProvider, representationProvider);
    objc_storeStrong(&v24->_triggerHelper, helper);
    objc_storeStrong(&v24->_transitionProvider, transitionProvider);
    objc_storeStrong(&v24->_bodyDescriptionProvider, descriptionProvider);
    objc_storeStrong(&v24->_travelAdvisoryTimelinessAuthority, authority);
    objc_storeStrong(&v24->_dateProvider, dateProvider);
    objc_storeStrong(&v24->_notificationDataStorage, storage);
    objc_storeStrong(&v24->_urlHandler, handler);
    objc_storeStrong(&v24->_mapItemURLProvider, lProvider);
    objc_storeStrong(&v24->_timeToLeaveRefreshStorage, refreshStorage);
    objc_opt_class();
    v25 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v26 = timerCopy;
    v27 = managerCopy;
    uTF8String = [v25 UTF8String];

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = uTF8String;
    managerCopy = v27;
    timerCopy = v26;
    v31 = dispatch_queue_create(v30, v29);
    workQueue = v24->_workQueue;
    v24->_workQueue = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventURLToObjectIDMap = v24->_eventURLToObjectIDMap;
    v24->_eventURLToObjectIDMap = v33;

    objc_storeStrong(&v24->_snoozeUpdateTimer, timer);
    dataSource = [(CALNTriggeredEventNotificationSource *)v24 dataSource];
    [dataSource setDelegate:v24];

    snoozeUpdateTimer = [(CALNTriggeredEventNotificationSource *)v24 snoozeUpdateTimer];
    [snoozeUpdateTimer setDelegate:v24];
  }

  return v24;
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CALNTriggeredEventNotificationSource_contentForNotificationWithSourceClientIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);

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

- (id)contentForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info isProtectedDataAvailable:(BOOL)available
{
  availableCopy = available;
  v100 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v87 = identifierCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Getting content for source client identifier = %{public}@", buf, 0xCu);
  }

  v11 = +[CALNBundle bundle];
  title = [infoCopy title];
  v75 = v11;
  if ([title length])
  {
    v82 = title;
  }

  else
  {
    v82 = [v11 localizedStringForKey:@"Event" value:&stru_28551FB98 table:0];

    if (availableCopy)
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:];
      }
    }
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  eventID = [infoCopy eventID];
  alarmID = [infoCopy alarmID];
  v81 = [dataSource notificationExpirationDateForEventID:eventID alarmID:alarmID];

  v80 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  iconIdentifierProvider = [(CALNTriggeredEventNotificationSource *)self iconIdentifierProvider];
  startDate = [infoCopy startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v79 = [iconIdentifierProvider identifierForIconWithDate:startDate inCalendar:currentCalendar];

  v20 = @"com.apple.calendar.notifications.TriggeredEvent";
  alarmID2 = [infoCopy alarmID];
  mapItemURL = [infoCopy mapItemURL];
  conferenceURL = [infoCopy conferenceURL];
  mapItemURL2 = [infoCopy mapItemURL];

  mailtoURL = [infoCopy mailtoURL];

  v77 = mapItemURL;
  v78 = alarmID2;
  v76 = conferenceURL;
  v73 = mapItemURL2;
  if (alarmID2 && !mapItemURL2 && !conferenceURL && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Snooze;
LABEL_14:
    v72 = identifierCopy;
    v26 = *v25;

LABEL_15:
    startDate2 = [infoCopy startDate];
    endDate = [infoCopy endDate];
    isAllDay = [infoCopy isAllDay];
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v31 = [dateProvider now];
    v32 = [CALNSnoozeCategory snoozeCategoryForEventWithStartDate:startDate2 endDate:endDate now:v31 isAllDay:isAllDay];

    suffix = [v32 suffix];
    v34 = [(__CFString *)v26 stringByAppendingString:suffix];

    v85 = [v32 expirationDateForEventWithStartDate:startDate2 endDate:endDate isAllDay:isAllDay];
    [v32 leeway];
    v36 = v35;

    v20 = startDate2;
    identifierCopy = v72;
    mapItemURL = v77;
    alarmID2 = v78;
    conferenceURL = v76;
LABEL_32:

    goto LABEL_33;
  }

  v37 = mapItemURL2 == 0;
  if (mapItemURL2 && !alarmID2 && !conferenceURL && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions;
LABEL_31:
    v34 = *v38;
    v85 = 0;
    v36 = 0.0;
    goto LABEL_32;
  }

  v39 = conferenceURL == 0;
  if (conferenceURL && !alarmID2 && !mapItemURL2 && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall;
    goto LABEL_31;
  }

  v40 = mailtoURL == 0;
  if (mailtoURL && !alarmID2 && !mapItemURL2 && !conferenceURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer;
    goto LABEL_31;
  }

  if (alarmID2 != 0 && mapItemURL2 != 0 && !conferenceURL && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_Snooze;
    goto LABEL_14;
  }

  if (alarmID2 != 0 && conferenceURL != 0 && !mapItemURL2 && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (alarmID2 != 0 && mailtoURL != 0 && !mapItemURL2 && !conferenceURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v69 = v39 || v37;
  if (conferenceURL != 0 && mapItemURL2 != 0 && !alarmID2 && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall;
    goto LABEL_31;
  }

  v70 = v37 || v40;
  if (!v70 && !alarmID2 && !conferenceURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer;
    goto LABEL_31;
  }

  v71 = v39 || v40;
  if (!v71 && !alarmID2 && !mapItemURL2)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!(v69 & 1 | (alarmID2 == 0)) && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (!(v69 & 1 | (mailtoURL == 0)) && !alarmID2)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!v70 && alarmID2 != 0 && !conferenceURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (!v71 && alarmID2 != 0 && !mapItemURL2)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v72 = identifierCopy;
  if ((v69 | (alarmID2 == 0) | v40) != 1)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (alarmID2)
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
    v89 = alarmID2 != 0;
    v90 = 1024;
    v91 = v73 != 0;
    v92 = 1024;
    v93 = conferenceURL != 0;
    v94 = 1024;
    v95 = mailtoURL != 0;
    v96 = 2112;
    v97 = identifierCopy;
    v98 = 2114;
    v99 = v85;
    _os_log_impl(&dword_242909000, v41, OS_LOG_TYPE_DEFAULT, "Category identifier for content = %{public}@, should include snooze action = (%{BOOL}d), should include directions action = (%{BOOL}d), should include conference call action = (%{BOOL}d), should include mail organizer action = (%{BOOL}d), source client identifier = %@, snoozeCategoryExpirationDate = %{public}@", buf, 0x38u);
  }

  v84 = v34;

  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  eventID2 = [infoCopy eventID];
  if (eventID2)
  {
    [v42 setObject:eventID2 forKeyedSubscript:@"entityID"];
  }

  v74 = eventID2;
  if (alarmID2)
  {
    [v42 setObject:alarmID2 forKeyedSubscript:@"AlarmID"];
  }

  if (mapItemURL)
  {
    absoluteString = [mapItemURL absoluteString];
    [v42 setObject:absoluteString forKeyedSubscript:@"MapItemURL"];
  }

  if (conferenceURL)
  {
    absoluteString2 = [conferenceURL absoluteString];
    [v42 setObject:absoluteString2 forKeyedSubscript:@"ConferenceURL"];
  }

  mailtoURL2 = [infoCopy mailtoURL];

  if (mailtoURL2)
  {
    mailtoURL3 = [infoCopy mailtoURL];
    absoluteString3 = [mailtoURL3 absoluteString];
    [v42 setObject:absoluteString3 forKeyedSubscript:@"mailto"];
  }

  if (v85)
  {
    [v42 setObject:v85 forKeyedSubscript:@"snoozeCategoryExpirationDate"];
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    [v42 setObject:v49 forKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  }

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "isAllDay")}];
  [v42 setObject:v50 forKeyedSubscript:@"allDay"];

  endDate2 = [infoCopy endDate];
  [v42 setObject:endDate2 forKeyedSubscript:@"endDate"];

  buf[0] = 0;
  bodyDescriptionProvider = [(CALNTriggeredEventNotificationSource *)self bodyDescriptionProvider];
  v53 = [bodyDescriptionProvider bodyForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy bodyContainsTravelAdvice:buf];

  v54 = objc_alloc_init(CALNMutableNotificationContent);
  [(CALNMutableNotificationContent *)v54 setTitle:v82];
  [(CALNMutableNotificationContent *)v54 setBody:v53];
  [(CALNMutableNotificationContent *)v54 setCategoryIdentifier:v84];
  [(CALNMutableNotificationContent *)v54 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  startDate3 = [infoCopy startDate];
  [(CALNMutableNotificationContent *)v54 setDate:startDate3];

  [(CALNMutableNotificationContent *)v54 setExpirationDate:v81];
  launchURL = [infoCopy launchURL];
  [(CALNMutableNotificationContent *)v54 setDefaultActionURL:launchURL];

  [(CALNMutableNotificationContent *)v54 setIconIdentifier:v79];
  -[CALNMutableNotificationContent setShouldHideTime:](v54, "setShouldHideTime:", [infoCopy isAllDay]);
  [(CALNMutableNotificationContent *)v54 setShouldSuppressSyncDismissalWhenRemoved:0];
  [(CALNMutableNotificationContent *)v54 setSound:v80];
  [(CALNMutableNotificationContent *)v54 setThreadIdentifier:@"upcomingEventsThread"];
  [(CALNMutableNotificationContent *)v54 setUserInfo:v42];
  if ([infoCopy isTimeSensitive])
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  [(CALNMutableNotificationContent *)v54 setInterruptionLevel:v57];
  calendarIdentifier = [infoCopy calendarIdentifier];
  [(CALNMutableNotificationContent *)v54 setFilterCriteria:calendarIdentifier];

  v59 = identifierCopy;
  if (buf[0] == 1)
  {
    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

  selfCopy = self;
  v62 = [(CALNTriggeredEventNotificationSource *)self _eventRepresentationDictionaryWithSourceNotificationInfo:infoCopy hypothesisMessage:v60];
  if (v62)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v62 onNotificationContent:v54];
  }

  legacyIdentifier = [infoCopy legacyIdentifier];

  if (legacyIdentifier)
  {
    legacyIdentifier2 = [infoCopy legacyIdentifier];
    [CALNLegacyIdentifierUtils setLegacyIdentifier:legacyIdentifier2 onNotificationContent:v54];
  }

  v65 = [(CALNTriggeredEventNotificationSource *)selfCopy _notificationResponseDataForSourceNotificationInfo:infoCopy];
  [(CALNTriggeredEventNotificationSource *)selfCopy _setNotificationResponseData:v65 onNotificationContent:v54];
  v66 = [(CALNMutableNotificationContent *)v54 copy];

  v67 = *MEMORY[0x277D85DE8];

  return v66;
}

- (void)willPostNotification:(id)notification
{
  notificationCopy = notification;
  sourceClientIdentifier = [notificationCopy sourceClientIdentifier];
  content = [notificationCopy content];

  userInfo = [content userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"AlarmID"];
  v8 = [userInfo objectForKeyedSubscript:@"snoozeCategoryExpirationDate"];
  v9 = [userInfo objectForKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  if (v7)
  {
    snoozeUpdateTimer = [(CALNTriggeredEventNotificationSource *)self snoozeUpdateTimer];
    [snoozeUpdateTimer setFireDate:v8 leeway:sourceClientIdentifier forEventWithIdentifier:{objc_msgSend(v9, "integerValue")}];
  }
}

- (void)refreshNotifications:(id)notifications
{
  notificationsCopy = notifications;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CALNTriggeredEventNotificationSource_refreshNotifications___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_sync(workQueue, v7);
}

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CALNTriggeredEventNotificationSource_didReceiveResponse___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_didReceiveResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord = [responseCopy notificationRecord];
  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = actionIdentifier;
    v26 = 2114;
    v27 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Received notification response with action identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v10 = [actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"];
  if ((v10 & 1) != 0 || [actionIdentifier isEqualToString:@"com.apple.CALNNotificationDismissActionIdentifier"])
  {
    notificationRecord2 = [responseCopy notificationRecord];
    content = [notificationRecord2 content];
    userInfo = [content userInfo];

    v14 = [userInfo objectForKeyedSubscript:@"IsLocation"];
    LODWORD(content) = [v14 BOOLValue];

    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource acknowledgeEventWithSourceClientIdentifier:sourceClientIdentifier shouldMarkAsHavingReceivedLocation:v10 & content];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleDirectionsActionWithResponse:responseCopy];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleConferenceCallActionWithResponse:responseCopy];
  }

  else if ([actionIdentifier isEqualToString:@"Mail_identifier"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleMailOrganizerActionWithResponse:responseCopy];
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
    v20 = [v19 objectForKeyedSubscript:actionIdentifier];
    if (v20)
    {
      dataSource2 = [(CALNTriggeredEventNotificationSource *)self dataSource];
      [dataSource2 snoozeEventWithSourceClientIdentifier:sourceClientIdentifier snoozeType:{objc_msgSend(v20, "unsignedIntegerValue")}];
    }
  }

  if ([(CALNTriggeredEventNotificationSource *)self _shouldCeaseRouteMonitoringEventForSourceClientIdentifier:sourceClientIdentifier])
  {
    dataSource3 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource3 ceaseRouteMonitoringEventForSourceClientIdentifier:sourceClientIdentifier];

    [(CALNTriggeredEventNotificationSource *)self _clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:sourceClientIdentifier];
    dataSource4 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource4 removeTimeToLeaveRefreshTimerForSourceClientIdentifier:sourceClientIdentifier];
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

- (void)dataSource:(id)source triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CALNTriggeredEventNotificationSource_dataSource_triggeredWithSourceClientIdentifier_triggerData___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v13 = identifierCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = identifierCopy;
  dispatch_sync(workQueue, block);
}

- (void)dataSource:(id)source travelAdvisoryAuthorizationChanged:(BOOL)changed
{
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__CALNTriggeredEventNotificationSource_dataSource_travelAdvisoryAuthorizationChanged___block_invoke;
  v7[3] = &unk_278D6F7E0;
  v7[4] = self;
  changedCopy = changed;
  dispatch_sync(workQueue, v7);
}

- (void)dataSource:(id)source travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__CALNTriggeredEventNotificationSource_dataSource_travelEngineEventSignificantlyChangedWithSourceClientIdentifier___block_invoke;
  v8[3] = &unk_278D6F278;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_sync(workQueue, v8);
}

- (void)snoozeTimerFiredForEvents:(id)events
{
  eventsCopy = events;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CALNTriggeredEventNotificationSource_snoozeTimerFiredForEvents___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data
{
  v82 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v77 = identifierCopy;
    v78 = 2114;
    v79 = dataCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Triggered with source client identifier = %{public}@, trigger data = %{public}@", buf, 0x16u);
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v12 = [dataSource fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:identifierCopy isProtectedDataAvailable:{objc_msgSend(notificationManager, "isProtectedDataAvailable")}];

  if (v12)
  {
    notificationManager2 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
    v75 = [notificationManager2 fetchRecordsWithSourceIdentifier:sourceIdentifier];

    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v77 = v75;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_INFO, "Existing records = %@.", buf, 0xCu);
    }

    v16 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy existingRecords:v75];
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      sourceClientIdentifier = [v16 sourceClientIdentifier];
      *buf = 138543874;
      v77 = identifierCopy;
      v78 = 2114;
      v79 = sourceClientIdentifier;
      v80 = 2112;
      v81 = v16;
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", buf, 0x20u);
    }

    v19 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v77 = identifierCopy;
      v78 = 2112;
      v79 = v19;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Existing notification data for source client identifier = %{public}@, existing notification data = %@", buf, 0x16u);
    }

    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v73 = [dateProvider now];

    trigger = [dataCopy trigger];
    hypothesis = [dataCopy hypothesis];
    v25 = trigger == 1 && hypothesis == 0;
    LOBYTE(v64) = 0;
    v72 = hypothesis;
    v26 = -[CALNTriggeredEventNotificationSource _sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:](self, "_sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:", identifierCopy, v12, v19, hypothesis, v25, [dataCopy isOffsetFromTravelTimeStart], v64);
    triggerHelper = [(CALNTriggeredEventNotificationSource *)self triggerHelper];
    v74 = v26;
    v28 = [triggerHelper shouldTriggerForSourceClientIdentifier:identifierCopy trigger:trigger sourceNotificationInfo:v26 oldNotificationData:v19];

    v29 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CCABB0] numberWithBool:v28];
      v31 = v30 = v12;
      *buf = 138543618;
      v77 = v31;
      v78 = 2114;
      v79 = identifierCopy;
      _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Determined that notification should trigger = %{public}@. source client identifier = %{public}@", buf, 0x16u);

      v12 = v30;
    }

    if ((v28 & 1) == 0)
    {
      v50 = v74;
      hypothesis2 = [v74 hypothesis];
      -[CALNTriggeredEventNotificationSource _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:](self, "_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:", identifierCopy, hypothesis2, [v74 allowsLocationAlerts], objc_msgSend(v74, "travelAdvisoryDisabled"));
LABEL_50:

      goto LABEL_51;
    }

    v32 = [(CALNTriggeredEventNotificationSource *)self _updatedSourceNotificationInfoForContentCreation:v74];
    notificationManager3 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v71 = v32;
    v34 = -[CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:](self, "contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:", identifierCopy, v32, [notificationManager3 isProtectedDataAvailable]);

    if (!v34)
    {
      v51 = +[CALNLogSubsystem calendar];
      v50 = v74;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }

      hypothesis2 = v71;
      goto LABEL_49;
    }

    transitionProvider = [(CALNTriggeredEventNotificationSource *)self transitionProvider];
    v36 = [transitionProvider transitionForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v74 oldNotificationData:v19 trigger:trigger];

    v70 = [CALNTriggeredEventNotificationTransitionUtilities descriptionForTransition:v36];
    v37 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v77 = v70;
      v78 = 2114;
      v79 = identifierCopy;
      _os_log_impl(&dword_242909000, v37, OS_LOG_TYPE_DEFAULT, "Transition = %{public}@, source client identifier = %{public}@", buf, 0x16u);
    }

    v69 = v16;
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        hypothesis2 = v71;
        if (v36 != 3)
        {
          goto LABEL_46;
        }

        notificationManager4 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        sourceIdentifier2 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
        [notificationManager4 removeRecordWithSourceIdentifier:sourceIdentifier2 sourceClientIdentifier:identifierCopy];

LABEL_45:
        goto LABEL_46;
      }

      if (v16)
      {
        v53 = [v16 mutableCopy];
        [v53 setContent:v34];
        notificationManager5 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        v55 = dataCopy;
        v56 = v34;
        v57 = v12;
        v58 = [v53 copy];
        [notificationManager5 updateRecord:v58];

        v12 = v57;
        v34 = v56;
        dataCopy = v55;
        notificationManager4 = v53;
      }

      else
      {
        notificationManager4 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(notificationManager4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v77 = identifierCopy;
          _os_log_impl(&dword_242909000, notificationManager4, OS_LOG_TYPE_DEFAULT, "No existing delivered notification to perform replace transition, source client identifier = %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v36)
      {
        hypothesis2 = v71;
        if (v36 == 1)
        {
          v68 = v12;
          sourceClientIdentifier2 = [v16 sourceClientIdentifier];
          v40 = [(CALNTriggeredEventNotificationSource *)self _resolvedSourceClientIdentifierForNewSourceClientIdentifier:identifierCopy oldSourceClientIdentifier:sourceClientIdentifier2];

          v41 = [CALNNotificationRecord alloc];
          sourceIdentifier3 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
          v67 = v40;
          v43 = [(CALNNotificationRecord *)v41 initWithSourceIdentifier:sourceIdentifier3 sourceClientIdentifier:v40 content:v34];

          sourceClientIdentifier3 = [(CALNNotificationRecord *)v43 sourceClientIdentifier];
          v45 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:sourceClientIdentifier3 existingRecords:v75];

          if (v45)
          {
            sourceClientIdentifier4 = [v45 sourceClientIdentifier];
            if (sourceClientIdentifier4)
            {
              v47 = sourceClientIdentifier4;
              notificationManager6 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
              [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
              v48 = v65 = v45;
              [notificationManager6 removeRecordWithSourceIdentifier:v48 sourceClientIdentifier:v47];

              v45 = v65;
            }
          }

          -[CALNTriggeredEventNotificationSource _addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:](self, "_addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:", v43, v74, v19, [dataCopy trigger], 1, v73);

          notificationManager4 = v67;
          v12 = v68;
          goto LABEL_45;
        }

LABEL_46:
        if ([(CALNTriggeredEventNotificationSource *)self _shouldUpdateStoredNotificationDataGivenTransition:v36])
        {
          [(CALNTriggeredEventNotificationSource *)self _updateStoredNotificationDataForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v74 existingNotificationData:v19 transition:v36 now:v73];
        }

        hypothesis3 = [v74 hypothesis];
        allowsLocationAlerts = [v74 allowsLocationAlerts];
        travelAdvisoryDisabled = [v74 travelAdvisoryDisabled];
        v62 = allowsLocationAlerts;
        v50 = v74;
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy hypothesis:hypothesis3 allowsLocationAlerts:v62 travelAdvisoryDisabled:travelAdvisoryDisabled];

        v16 = v69;
        v51 = v70;
LABEL_49:

        goto LABEL_50;
      }

      notificationManager4 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(notificationManager4, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }
    }

    hypothesis2 = v71;
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

- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Travel engine event changed significantly. Will reset 'Time to Leave' display state for existing record if it exists. source client identifier = %{public}@", &v10, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy];
  if (v7)
  {
    [(CALNTriggeredEventNotificationSource *)self _resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:identifierCopy];
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
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Clearing travel advisory hypotheses", buf, 2u);
  }

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

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
        sourceClientIdentifier = [v14 sourceClientIdentifier];
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:sourceClientIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier
{
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifier];
  v7 = v4 && ([v4 hypothesis], v6 = v5 = v4;

  return v7;
}

- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)data
{
  hypothesis = [data hypothesis];
  if (hypothesis)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v6 = [dateProvider now];

    conservativeDepartureDate = [hypothesis conservativeDepartureDate];
    v8 = [v6 CalIsBeforeOrSameAsDate:conservativeDepartureDate];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  travelAdvisoryTimelinessAuthority = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
  v6 = [travelAdvisoryTimelinessAuthority periodForHypothesis:hypothesisCopy];

  return [(CALNTriggeredEventNotificationSource *)self _calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:v6];
}

- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)period
{
  if (period < 3)
  {
    return period + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:?];
  v5 = v4;
  if (v4)
  {
    hypothesis = [v4 hypothesis];
  }

  else
  {
    hypothesis = 0;
  }

  [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy hypothesis:hypothesis allowsLocationAlerts:1 travelAdvisoryDisabled:0];
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis allowsLocationAlerts:(BOOL)alerts travelAdvisoryDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138543362;
    *&v28[4] = identifierCopy;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Updating refresh timer for source client identifier = %{public}@", v28, 0xCu);
  }

  if (!alerts)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543362;
      *&v28[4] = identifierCopy;
      v15 = "Location alerts are not allowed. Will remove the associated refresh timer for source client identifier = %{public}@";
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource removeTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy];
    goto LABEL_12;
  }

  if (disabledCopy)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543362;
      *&v28[4] = identifierCopy;
      v15 = "Time to Leave alarm removed on the event. Will remove the associated refresh timer for source client identifier = %{public}@";
LABEL_9:
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, v15, v28, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!hypothesisCopy)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v28 = 138543362;
    *&v28[4] = identifierCopy;
    v15 = "There is no hypothesis. Will remove the associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  if ([hypothesisCopy travelState] == 5)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v28 = 138543362;
    *&v28[4] = identifierCopy;
    v15 = "Hypothesis indicates user has arrived. Will remove associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  v18 = [(CALNTriggeredEventNotificationSource *)self _travelAdvisoryTimelinessPeriodForHypothesis:hypothesisCopy];
  if (v18 == 2)
  {
    travelAdvisoryTimelinessAuthority = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    dataSource = [travelAdvisoryTimelinessAuthority startOfRunningLatePeriodForHypothesis:hypothesisCopy];

    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138543618;
      *&v28[4] = dataSource;
      *&v28[12] = 2114;
      *&v28[14] = identifierCopy;
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

    travelAdvisoryTimelinessAuthority2 = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    dataSource = [travelAdvisoryTimelinessAuthority2 startOfLeaveNowPeriodForHypothesis:hypothesisCopy];

    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138412802;
      *&v28[4] = dataSource;
      *&v28[12] = 2114;
      *&v28[14] = dataSource;
      v29 = 2114;
      v30 = identifierCopy;
      v21 = "Will refresh at date: [%@] when the user needs to 'Leave Now' at %{public}@, source client identifier = %{public}@";
      v22 = v20;
      v23 = 32;
LABEL_26:
      _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, v21, v28, v23);
    }
  }

  if (!dataSource)
  {
    goto LABEL_13;
  }

  dateBySubtractingCalSimulatedOffset = [dataSource dateBySubtractingCalSimulatedOffset];
  v26 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 138543618;
    *&v28[4] = dateBySubtractingCalSimulatedOffset;
    *&v28[12] = 2114;
    *&v28[14] = identifierCopy;
    _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Will set up a refresh timer with an adjusted refresh date of %{public}@. source client identifier = %{public}@", v28, 0x16u);
  }

  dataSource2 = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource2 setUpTimeToLeaveRefreshTimerWithTriggerDate:dateBySubtractingCalSimulatedOffset sourceClientIdentifier:identifierCopy];

LABEL_12:
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateSnoozeOptionsForEvents:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

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
        sourceClientIdentifier = [v13 sourceClientIdentifier];
        if ([eventsCopy containsObject:sourceClientIdentifier])
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
    workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__CALNTriggeredEventNotificationSource_updateSnoozeOptionsForPostedNotifications__block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_async(workQueue, block);
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

- (void)_refreshNotifications:(id)notifications
{
  notificationsCopy = notifications;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationMetaDataWithObjectIDs:notificationsCopy];
  [(CALNTriggeredEventNotificationSource *)self _refreshTimeToLeaveRefreshTimersWithObjectIDs:notificationsCopy];
  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationRecordsWithObjectIDs:notificationsCopy];
}

- (void)_refreshNotificationRecordsWithObjectIDs:(id)ds
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

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
        sourceClientIdentifier = [v14 sourceClientIdentifier];
        if (!dsCopy || [(CALNTriggeredEventNotificationSource *)self _notificationWithSourceClientIdentifier:sourceClientIdentifier affectedByChangesToObjects:dsCopy])
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

- (void)_refreshNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sourceClientIdentifier = [notificationCopy sourceClientIdentifier];
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Refreshing notification with source client identifier = %{public}@", &v13, 0xCu);
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [dataSource shouldWithdrawNotificationWithSourceClientIdentifier:sourceClientIdentifier];

  if (v9)
  {
    notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    sourceIdentifier = [notificationCopy sourceIdentifier];
    [notificationManager removeRecordWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];
  }

  else
  {
    [(CALNTriggeredEventNotificationSource *)self _updateNotification:notificationCopy shouldClearHypothesis:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_refreshNotificationMetaDataWithObjectIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  notificationData = [notificationDataStorage notificationData];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__CALNTriggeredEventNotificationSource__refreshNotificationMetaDataWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F808;
  v10 = dsCopy;
  selfCopy = self;
  v8 = dsCopy;
  [notificationData enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)_refreshNotificationMetaData:(id)data eventID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveNotificationMetaData:dataCopy eventID:dCopy];
  if (workQueue)
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = dCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Removing notification meta data due to refresh for eventID = %{public}@", &v12, 0xCu);
    }

    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource ceaseRouteMonitoringEventWithEventID:dCopy];

    [(CALNTriggeredEventNotificationSource *)self _removeStoredNotificationDataForEventWithEventID:dCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRemoveNotificationMetaData:(id)data eventID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _isNotificationMetaDataExpired:dataCopy eventID:dCopy];
  if (workQueue)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = dCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Notification meta data is expired for eventID = %{public}@. Should remove notification meta data.", &v14, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v10 = [dataSource shouldRemoveNotificationMetaDataWithEventID:dCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isNotificationMetaDataExpired:(id)expired eventID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  alarmID = [expired alarmID];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [dataSource notificationExpirationDateForEventID:dCopy alarmID:alarmID];

  if (v9)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v11 = [dateProvider now];

    [v9 timeIntervalSinceDate:v11];
    v13 = v12 <= 0.0;
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Could not get an expiration date for notification meta data for eventID = %{public}@. Treating notification meta data as expired.", &v17, 0xCu);
    }

    v13 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timeToLeaveRefreshStorage = [(CALNTriggeredEventNotificationSource *)self timeToLeaveRefreshStorage];
  refreshDates = [timeToLeaveRefreshStorage refreshDates];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CALNTriggeredEventNotificationSource__refreshTimeToLeaveRefreshTimersWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F830;
  v10 = dsCopy;
  selfCopy = self;
  v8 = dsCopy;
  [refreshDates enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d
{
  dCopy = d;
  dateCopy = date;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:dateCopy eventID:dCopy];
  if (workQueue)
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource removeTimeToLeaveRefreshTimerForEventID:dCopy];
  }
}

- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
  v10 = [dateProvider now];

  [dateCopy timeIntervalSinceDate:v10];
  if (v11 <= 0.0)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Time to leave refresh date is expired for eventID = %{public}@. Should remove time to leave refresh timer.", &v17, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v13 = [dataSource shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:dateCopy eventID:dCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_notificationWithSourceClientIdentifier:(id)identifier affectedByChangesToObjects:(id)objects
{
  objectsCopy = objects;
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = 0;
  v14 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:identifierCopy];

  v9 = v14;
  v10 = v13;
  if (v10 && ([objectsCopy containsObject:v10] & 1) != 0)
  {
    v11 = 1;
  }

  else if (v9)
  {
    v11 = [(CALNTriggeredEventNotificationSource *)self _itemWithEventID:v9 affectedByChangesToObjects:objectsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_itemWithEventID:(id)d affectedByChangesToObjects:(id)objects
{
  dCopy = d;
  objectsCopy = objects;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [(NSMutableDictionary *)self->_eventURLToObjectIDMap objectForKeyedSubscript:dCopy];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
    if (!v9 || (-[CALNTriggeredEventNotificationSource dataSource](self, "dataSource"), v11 = objc_claimAutoreleasedReturnValue(), [v11 eventObjectIDForEventID:v9], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
    {
      v10 = 1;
      goto LABEL_7;
    }

    [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:v12 forKeyedSubscript:dCopy];

    v9 = v12;
  }

  v10 = [objectsCopy containsObject:v9];
LABEL_7:

  return v10;
}

- (id)_updatedSourceNotificationInfoForContentCreation:(id)creation
{
  creationCopy = creation;
  v45 = -[CALNTriggeredEventNotificationSource _updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:](self, "_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:", [creationCopy isOffsetFromTravelTimeStart]);
  v36 = [CALNTriggeredEventNotificationSourceNotificationInfo alloc];
  title = [creationCopy title];
  location = [creationCopy location];
  locationWithoutPrediction = [creationCopy locationWithoutPrediction];
  preferredLocation = [creationCopy preferredLocation];
  startDate = [creationCopy startDate];
  endDate = [creationCopy endDate];
  isAllDay = [creationCopy isAllDay];
  isTimeSensitive = [creationCopy isTimeSensitive];
  launchURL = [creationCopy launchURL];
  isLocationEvent = [creationCopy isLocationEvent];
  eventID = [creationCopy eventID];
  eventObjectID = [creationCopy eventObjectID];
  organizerPhoneNumber = [creationCopy organizerPhoneNumber];
  organizerEmailAddress = [creationCopy organizerEmailAddress];
  calendarIdentifier = [creationCopy calendarIdentifier];
  eventRepresentationDictionary = [creationCopy eventRepresentationDictionary];
  legacyIdentifier = [creationCopy legacyIdentifier];
  mapItemURL = [creationCopy mapItemURL];
  conferenceURL = [creationCopy conferenceURL];
  conferenceURLIsBroadcast = [creationCopy conferenceURLIsBroadcast];
  mailtoURL = [creationCopy mailtoURL];
  hasSuggestedLocation = [creationCopy hasSuggestedLocation];
  eventHasAlarms = [creationCopy eventHasAlarms];
  alarmID = [creationCopy alarmID];
  isOffsetFromTravelTimeStart = [creationCopy isOffsetFromTravelTimeStart];
  allowsLocationAlerts = [creationCopy allowsLocationAlerts];
  hypothesis = [creationCopy hypothesis];
  travelAdvisoryTimelinessPeriod = [creationCopy travelAdvisoryTimelinessPeriod];
  forceDisplayOfNewTravelAdvisoryHypotheses = [creationCopy forceDisplayOfNewTravelAdvisoryHypotheses];
  travelAdvisoryDisabled = [creationCopy travelAdvisoryDisabled];

  BYTE1(v19) = travelAdvisoryDisabled;
  LOBYTE(v19) = forceDisplayOfNewTravelAdvisoryHypotheses;
  LOBYTE(v18) = allowsLocationAlerts;
  LOBYTE(v17) = isOffsetFromTravelTimeStart;
  BYTE1(v16) = eventHasAlarms;
  LOBYTE(v16) = hasSuggestedLocation;
  LOBYTE(v15) = conferenceURLIsBroadcast;
  LOBYTE(v14) = isLocationEvent;
  BYTE1(v13) = isTimeSensitive;
  LOBYTE(v13) = isAllDay;
  v37 = [CALNTriggeredEventNotificationSourceNotificationInfo initWithTitle:v36 location:"initWithTitle:location:locationWithoutPrediction:preferredLocation:startDate:endDate:isAllDay:isTimeSensitive:launchURL:isLocationEvent:eventID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:mapItemURL:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:alarmID:isOffsetFromTravelTimeStart:lastFireTimeOfAlertOffsetFromTravelTime:allowsLocationAlerts:hypothesis:travelAdvisoryTimelinessPeriod:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:title preferredLocation:location startDate:locationWithoutPrediction endDate:preferredLocation isAllDay:startDate isTimeSensitive:endDate launchURL:v13 isLocationEvent:launchURL eventID:v14 eventObjectID:eventID organizerPhoneNumber:eventObjectID organizerEmailAddress:organizerPhoneNumber calendarIdentifier:organizerEmailAddress eventRepresentationDictionary:calendarIdentifier legacyIdentifier:eventRepresentationDictionary mapItemURL:legacyIdentifier conferenceURL:mapItemURL conferenceURLIsBroadcast:conferenceURL mailtoURL:v15 hasSuggestedLocation:mailtoURL eventHasAlarms:v16 alarmID:alarmID isOffsetFromTravelTimeStart:v17 lastFireTimeOfAlertOffsetFromTravelTime:v45 allowsLocationAlerts:v18 hypothesis:hypothesis travelAdvisoryTimelinessPeriod:travelAdvisoryTimelinessPeriod forceDisplayOfNewTravelAdvisoryHypotheses:v19 travelAdvisoryDisabled:?];

  return v37;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Existing records = %@.", &v15, 0xCu);
  }

  v10 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy existingRecords:v8];
  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    sourceClientIdentifier = [v10 sourceClientIdentifier];
    v15 = 138543874;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = sourceClientIdentifier;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier existingRecords:(id)records
{
  identifierCopy = identifier;
  recordsCopy = records;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __110__CALNTriggeredEventNotificationSource__existingRecordMatchingEventForSourceClientIdentifier_existingRecords___block_invoke;
  v15 = &unk_278D6F340;
  selfCopy = self;
  v17 = identifierCopy;
  v8 = identifierCopy;
  v9 = [recordsCopy indexOfObjectPassingTest:&v12];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [recordsCopy objectAtIndexedSubscript:{v9, v12, v13, v14, v15, selfCopy, v17}];
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

- (void)_addRecord:(id)record sourceNotificationInfo:(id)info existingNotificationData:(id)data trigger:(unint64_t)trigger transition:(unint64_t)transition now:(id)now
{
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  recordCopy = record;
  eventID = [infoCopy eventID];
  eventObjectID = [infoCopy eventObjectID];
  [(CALNTriggeredEventNotificationSource *)self _addEventURL:eventID mappingToEventObjectID:eventObjectID];

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  [notificationManager addRecord:recordCopy];

  sourceClientIdentifier = [recordCopy sourceClientIdentifier];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationDataForSourceClientIdentifier:sourceClientIdentifier sourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];

  [(CALNTriggeredEventNotificationSource *)self _notificationAddedWithSourceClientIdentifier:sourceClientIdentifier2 sourceNotificationInfo:infoCopy trigger:trigger];
}

- (void)_notificationAddedWithSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info trigger:(unint64_t)trigger
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:trigger];
    v16 = 138543618;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Notification added with source client identifier = %{public}@, trigger = %{public}@", &v16, 0x16u);
  }

  if (trigger == 2)
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:identifierCopy];
    goto LABEL_7;
  }

  if (trigger == 1)
  {
    dataSource = [infoCopy hypothesis];
    travelAdvisoryTimelinessPeriod = [infoCopy travelAdvisoryTimelinessPeriod];
    dataSource2 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource2 sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:identifierCopy hypothesis:dataSource travelAdvisoryTimelinessPeriod:travelAdvisoryTimelinessPeriod];

LABEL_7:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addEventURL:(id)l mappingToEventObjectID:(id)d
{
  if (l)
  {
    if (d)
    {
      [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:d forKeyedSubscript:l];
    }
  }
}

- (void)_commonHandleResponse:(id)response
{
  responseCopy = response;
  v5 = [(CALNTriggeredEventNotificationSource *)self _launchURLForResponse:responseCopy];
  if (v5)
  {
    urlHandler = [(CALNTriggeredEventNotificationSource *)self urlHandler];
    [urlHandler openURL:v5 response:responseCopy];
  }

  else
  {
    urlHandler = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(urlHandler, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _commonHandleResponse:responseCopy];
    }
  }
}

- (void)_handleDirectionsActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:notificationRecord];
  hypothesis = [v6 hypothesis];
  lastFireTimeOfAlertOffsetFromTravelTime = [v6 lastFireTimeOfAlertOffsetFromTravelTime];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleDirectionsActionWithSourceClientIdentifier:sourceClientIdentifier hypothesis:hypothesis lastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];
}

- (void)_handleConferenceCallActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleConferenceCallActionWithSourceClientIdentifier:sourceClientIdentifier];
}

- (void)_handleMailOrganizerActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:notificationRecord];
  hypothesis = [v6 hypothesis];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleMailOrganizerActionWithSourceClientIdentifier:sourceClientIdentifier hypothesis:hypothesis];
}

- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    v8 = [notificationDataStorage notificationDataWithIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_notificationDataForSourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  infoCopy = info;
  nowCopy = now;
  dataCopy = data;
  hasDisplayedLeaveByMessage = [dataCopy hasDisplayedLeaveByMessage];
  hasDisplayedLeaveNowMessage = [dataCopy hasDisplayedLeaveNowMessage];
  hasDisplayedRunningLateMessage = [dataCopy hasDisplayedRunningLateMessage];
  lastFireTimeOfAlertOffsetFromTravelTime = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];
  lastTimeNotificationAdded = [dataCopy lastTimeNotificationAdded];

  if (transition - 1 <= 1)
  {
    travelAdvisoryTimelinessPeriod = [infoCopy travelAdvisoryTimelinessPeriod];
    if (travelAdvisoryTimelinessPeriod == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = hasDisplayedLeaveByMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = hasDisplayedLeaveNowMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 2)
    {
      v18 = hasDisplayedLeaveByMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedRunningLateMessage = 1;
    }

    else
    {
      hasDisplayedRunningLateMessage = hasDisplayedRunningLateMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedLeaveNowMessage = hasDisplayedLeaveNowMessage;
    }

    else
    {
      hasDisplayedLeaveNowMessage = v19;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedLeaveByMessage = hasDisplayedLeaveByMessage;
    }

    else
    {
      hasDisplayedLeaveByMessage = v18;
    }

    if ([infoCopy isOffsetFromTravelTimeStart])
    {
      lastFireTimeOfAlertOffsetFromTravelTime = nowCopy;
    }

    else
    {
      lastFireTimeOfAlertOffsetFromTravelTime = 0;
    }

    v20 = nowCopy;

    lastTimeNotificationAdded = v20;
  }

  v21 = objc_alloc_init(CALNMutableTriggeredEventNotificationData);
  alarmID = [infoCopy alarmID];
  [(CALNMutableTriggeredEventNotificationData *)v21 setAlarmID:alarmID];

  -[CALNMutableTriggeredEventNotificationData setIsOffsetFromTravelTimeStart:](v21, "setIsOffsetFromTravelTimeStart:", [infoCopy isOffsetFromTravelTimeStart]);
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];
  hypothesis = [infoCopy hypothesis];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHypothesis:hypothesis];

  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveByMessage:hasDisplayedLeaveByMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveNowMessage:hasDisplayedLeaveNowMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedRunningLateMessage:hasDisplayedRunningLateMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastTimeNotificationAdded:lastTimeNotificationAdded];
  v24 = [(CALNMutableTriggeredEventNotificationData *)v21 copy];

  return v24;
}

- (void)_removeStoredNotificationDataForEventWithEventID:(id)d
{
  dCopy = d;
  notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  [notificationDataStorage removeNotificationDataWithIdentifier:dCopy];

  [(NSMutableDictionary *)self->_eventURLToObjectIDMap removeObjectForKey:dCopy];
}

- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transition];
    v22 = 138543618;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Updating stored notification data for source client identifier = %{public}@, transition = %{public}@", &v22, 0x16u);
  }

  v19 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  if (v19)
  {
    [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v19 forSourceClientIdentifier:identifierCopy];
  }

  else
  {
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = identifierCopy;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Could not get notification data for source client identifier = %{public}@", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  v16 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transition];
    v20 = 138543618;
    v21 = identifierCopy;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Adding notification data for source notification info. source client identifier = %{public}@, transition = %{public}@", &v20, 0x16u);
  }

  v18 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v18 forSourceClientIdentifier:identifierCopy];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationData:(id)data forSourceClientIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v8)
  {
    notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    [notificationDataStorage addNotificationData:dataCopy withIdentifier:v8];

    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = dataCopy;
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
      v16 = identifierCopy;
      v11 = "No event ID to add notification data for source client identifier = %{public}@";
      v12 = v10;
      v13 = 12;
      goto LABEL_6;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Resetting stored notification data time to leave display state for source client identifier = %{public}@", &v10, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
  v8 = [(CALNTriggeredEventNotificationSource *)self _updatedNotificationDataResettingTimeToLeaveDisplayState:v7];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:identifierCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
  v7 = [v6 mutableCopy];
  [v7 setHypothesis:0];
  v8 = [v7 copy];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:identifierCopy];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = identifierCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Cleared travel advisory from notification meta data for source client identifier = %{public}@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)state
{
  v3 = [state mutableCopy];
  [v3 setHasDisplayedLeaveByMessage:0];
  [v3 setHasDisplayedLeaveNowMessage:0];
  [v3 setHasDisplayedRunningLateMessage:0];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)migrateToStorage:(id)storage
{
  storageCopy = storage;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CALNTriggeredEventNotificationSource_migrateToStorage___block_invoke;
  block[3] = &unk_278D6F858;
  block[4] = self;
  v9 = storageCopy;
  v10 = &v11;
  v6 = storageCopy;
  dispatch_sync(workQueue, block);

  LOBYTE(storageCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return storageCopy;
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

+ (id)_mergeDataFromUnprotectedStore:(id)store withDataInProtectedStore:(id)protectedStore
{
  protectedStoreCopy = protectedStore;
  storeCopy = store;
  v7 = objc_opt_new();
  alarmID = [storeCopy alarmID];
  [v7 setAlarmID:alarmID];

  hypothesis = [protectedStoreCopy hypothesis];
  [v7 setHypothesis:hypothesis];

  [v7 setHasDisplayedLeaveByMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedLeaveByMessage")}];
  [v7 setHasDisplayedLeaveNowMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedLeaveNowMessage")}];
  [v7 setHasDisplayedRunningLateMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedRunningLateMessage")}];
  [v7 setIsOffsetFromTravelTimeStart:{objc_msgSend(storeCopy, "isOffsetFromTravelTimeStart")}];
  lastFireTimeOfAlertOffsetFromTravelTime = [storeCopy lastFireTimeOfAlertOffsetFromTravelTime];
  lastFireTimeOfAlertOffsetFromTravelTime2 = [protectedStoreCopy lastFireTimeOfAlertOffsetFromTravelTime];
  v12 = _laterOfTwoPossiblyNilDates(lastFireTimeOfAlertOffsetFromTravelTime, lastFireTimeOfAlertOffsetFromTravelTime2);
  [v7 setLastFireTimeOfAlertOffsetFromTravelTime:v12];

  lastTimeNotificationAdded = [storeCopy lastTimeNotificationAdded];

  lastTimeNotificationAdded2 = [protectedStoreCopy lastTimeNotificationAdded];

  v15 = _laterOfTwoPossiblyNilDates(lastTimeNotificationAdded, lastTimeNotificationAdded2);
  [v7 setLastTimeNotificationAdded:v15];

  return v7;
}

- (id)_notificationResponseDataForRecord:(id)record
{
  recordCopy = record;
  content = [recordCopy content];
  v5 = content;
  if (content)
  {
    userInfo = [content userInfo];
    v7 = userInfo;
    if (userInfo)
    {
      v8 = [userInfo objectForKeyedSubscript:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
      if (v8)
      {
        v9 = [CALNTriggeredEventNotificationResponseDataPayloadMapper notificationResponseDataForPayload:v8];
LABEL_14:

        goto LABEL_15;
      }

      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
      }
    }

    else
    {
      v8 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)_notificationResponseDataForSourceNotificationInfo:(id)info
{
  infoCopy = info;
  v4 = [CALNTriggeredEventNotificationResponseData alloc];
  hypothesis = [infoCopy hypothesis];
  lastFireTimeOfAlertOffsetFromTravelTime = [infoCopy lastFireTimeOfAlertOffsetFromTravelTime];

  v7 = [(CALNTriggeredEventNotificationResponseData *)v4 initWithHypothesis:hypothesis lastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];

  return v7;
}

- (void)_setNotificationResponseData:(id)data onNotificationContent:(id)content
{
  contentCopy = content;
  v6 = [CALNTriggeredEventNotificationResponseDataPayloadMapper payloadForNotificationResponseData:data];
  [contentCopy setUserInfoValue:v6 forKey:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
}

- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)info hypothesisMessage:(id)message
{
  messageCopy = message;
  eventRepresentationDictionary = [info eventRepresentationDictionary];
  if (eventRepresentationDictionary && messageCopy)
  {
    sourceEventRepresentationProvider = [(CALNTriggeredEventNotificationSource *)self sourceEventRepresentationProvider];
    v9 = [sourceEventRepresentationProvider updateEventRepresentationDictionary:eventRepresentationDictionary withHypothesisMessage:messageCopy];

    eventRepresentationDictionary = v9;
  }

  return eventRepresentationDictionary;
}

- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)identifier oldSourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  if (clientIdentifierCopy)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:identifierCopy];
    v7 = v16;
    v8 = v15;
    v13 = 0;
    v14 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:clientIdentifierCopy];
    v9 = v14;
    if (v13)
    {
      v10 = clientIdentifierCopy;
    }

    else
    {
      v10 = identifierCopy;
    }

    if (v8)
    {
      v10 = identifierCopy;
    }

    v11 = v10;
  }

  else
  {
    v11 = identifierCopy;
  }

  return v11;
}

- (BOOL)_sourceClientIdentifier:(id)identifier matchesEventForSourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v17 = 0;
  v18 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v18 andAlarmID:&v17 fromSourceClientIdentifier:identifierCopy];
  v7 = v18;
  v8 = v17;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:clientIdentifierCopy];
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

- (id)_launchURLForResponse:(id)response
{
  responseCopy = response;
  notificationRecord = [responseCopy notificationRecord];
  actionIdentifier = [responseCopy actionIdentifier];

  if ([actionIdentifier isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    v6 = [objc_opt_class() _mapItemURLForNotification:notificationRecord];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ([actionIdentifier isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    v6 = [objc_opt_class() _conferenceURLForNotification:notificationRecord];
    goto LABEL_7;
  }

  if ([actionIdentifier isEqualToString:@"Mail_identifier"])
  {
    v6 = [objc_opt_class() _mailtoURLForNotification:notificationRecord];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)_mapItemURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"MapItemURL"];
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

+ (id)_conferenceURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"ConferenceURL"];
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

+ (id)_mailtoURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"mailto"];
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

- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)time
{
  if (time)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v4 = [dateProvider now];
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

- (void)refreshNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CALNTriggeredEventNotificationSource_UnitTesting__refreshNotification___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
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